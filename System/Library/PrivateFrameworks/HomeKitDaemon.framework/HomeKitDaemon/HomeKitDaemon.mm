void HMDPthreadHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = +[HMDThreadMonitor sharedInstance];
  [v9 pthreadHookWithEvent:a1];
  v8 = [v9 previousHook];
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }
}

uint64_t sub_22953D984()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_22953DA14(v0);
}

uint64_t sub_22953DA34()
{
  v1 = *(v0 + 16);
  sub_22953DA94();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22953DA94()
{
  v35 = sub_22A4DD26C();
  v1 = *(*(v35 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22A4DB74C();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v28 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v33 = *(v0 + 232);
  v11 = sub_22A4DDDDC();
  v29 = v12;
  v30 = v11;
  v13 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  aBlock = *(v0 + 256);
  sub_22A4DE33C();
  sub_22A4DD9BC();
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&aBlock);
  sub_22A4DBAFC();
  sub_22953EAE4(v10, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_22953ED1C(&aBlock, v0 + 192);
  swift_endAccess();
  v15 = v28;
  sub_22A4DB73C();
  v16 = swift_allocObject();
  swift_weakInit();
  v18 = v31;
  v17 = v32;
  v19 = v15;
  (*(v3 + 16))(v31, v15, v32);
  v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  (*(v3 + 32))(v21 + v20, v18, v17);
  v22 = (v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v30;
  v22[1] = v23;
  AssociatedConformanceWitness = sub_2296EFC84;
  v40 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v37 = sub_22953E640;
  AssociatedTypeWitness = &block_descriptor_19;
  _Block_copy(&aBlock);
  v41 = MEMORY[0x277D84F90];
  sub_22953E188(&qword_281401CF0, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  sub_22A4DE03C();
  v24 = sub_22A4DD2EC();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_22A4DD2DC();

  sub_22A4DDDBC();

  return (*(v3 + 8))(v19, v17);
}

uint64_t sub_22953DF8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22953DFC4()
{
  v1 = sub_22A4DB74C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22953E0B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22953E0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22953E140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22953E188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22953E1D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22953E218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22953E260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_2295404B0(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22953E5DC()
{
  result = qword_281401CB0[0];
  if (!qword_281401CB0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87CEA0, &unk_22A577A40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281401CB0);
  }

  return result;
}

uint64_t sub_22953E640(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22953E6BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22953E774(a1, v5);
}

uint64_t sub_22953E774(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22953ED8C;

  return v7(a1);
}

uint64_t sub_22953E86C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v0[17]);
  v6 = v0[30];
  v7 = v0[31];
  sub_22A4DD9BC();
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  v11[3] = swift_getAssociatedTypeWitness();
  v11[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v11);

  sub_22A4DBAFC();

  sub_22953EAE4(v4, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_22953ED1C(v11, (v0 + 19));
  return swift_endAccess();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22953EAE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_destroy_helper_24(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_22953ED1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA00, &qword_22A579B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22953ED8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t validateEntitlementForConnection(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && (([v4 valueForEntitlement:v3], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v7 = 0) : (v7 = v6), v8 = v7, v6, v8))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __HMDProcessInfoBoolForEntitlement(void *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v2 = [a1 valueForEntitlement:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

id *__HMDApplicationRegistryApplicationForBundleURL(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[2] allObjects];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____HMDApplicationRegistryApplicationForBundleURL_block_invoke;
    v6[3] = &unk_27867CEF0;
    v7 = v3;
    a1 = [v4 hmf_objectPassingTest:v6];
  }

  return a1;
}

void sub_22953F748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22953FB24(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22A4DB21C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22953FC68(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD07C();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DD2FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v2;
  v19 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_22A4DD31C();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    v27 = sub_22A4DE0EC();
    if (v27)
    {
      goto LABEL_9;
    }

LABEL_27:
  }

  v21 = sub_22A4DB20C();
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;
  v45 = sub_22A4DD5EC();
  v46 = v23;
  sub_22A4DE18C();
  if (!*(v22 + 16) || (v24 = sub_2295402E8(v47), (v25 & 1) == 0))
  {

    sub_22954045C(v47);
LABEL_18:
    v48 = 0u;
    v49 = 0u;
    goto LABEL_19;
  }

  sub_2295404B0(*(v22 + 56) + 32 * v24, &v48);
  sub_22954045C(v47);

  if (!*(&v49 + 1))
  {
LABEL_19:
    sub_22953EAE4(&v48, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_20;
  }

  sub_229562F68(0, &unk_281401BB0, off_2786662F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_229541CB0(ObjectType, &off_283CE4470);
    (*(v6 + 16))(v9, a1, v5);
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCFC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47[0] = v37;
      *v36 = 136315138;
      *&v48 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v38 = sub_22A4DD64C();
      v40 = v39;
      (*(v6 + 8))(v9, v5);
      v41 = sub_2295A3E30(v38, v40, v47);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_229538000, v34, v35, "Process info state changed notification user info did not contain a HMDProcessInfo: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return (*(v43 + 8))(v13, v44);
  }

  v6 = v47[0];
  v26 = [*(v42 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_xpcTransport) connections];
  sub_229562F68(0, &unk_281401910, off_278666388);
  v13 = sub_22A4DD83C();

  if (v13 >> 62)
  {
    goto LABEL_26;
  }

  v27 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_9:
  result = sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  if (v27 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x22AAD13F0](i, v13);
      }

      else
      {
        v30 = *(v13 + 8 * i + 32);
      }

      v31 = v30;
      v32 = [v30 processInfo];
      v33 = sub_22A4DDEDC();

      if (v33)
      {
        sub_229541DF0(v31);
      }
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t sub_2295402E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22A4DE16C();

  return sub_22954032C(a1, v5);
}

unint64_t sub_22954032C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2295403F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAD1350](v9, a1);
      sub_22954045C(v9);
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

uint64_t sub_2295404B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22954106C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880D50, &qword_22A582C68);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_22954159C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD07C();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - v15;
  v16 = sub_22A4DD2FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_22A4DD31C();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v23 = sub_22A4DB20C();
  if (!v23)
  {
    v54 = 0u;
    v55 = 0u;
    v26 = v5;
    goto LABEL_14;
  }

  v24 = v23;
  v51 = sub_22A4DD5EC();
  v52 = v25;
  sub_22A4DE18C();
  v26 = v5;
  if (!*(v24 + 16) || (v27 = sub_2295402E8(v53), (v28 & 1) == 0))
  {

    sub_22954045C(v53);
    v54 = 0u;
    v55 = 0u;
    goto LABEL_14;
  }

  sub_2295404B0(*(v24 + 56) + 32 * v27, &v54);
  sub_22954045C(v53);

  if (!*(&v55 + 1))
  {
LABEL_14:
    sub_22953EAE4(&v54, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_15;
  }

  sub_229562F68(0, &unk_281401910, off_278666388);
  if (swift_dynamicCast())
  {
    v29 = v53[0];
    if ([v53[0] principalClass] && (swift_getObjCClassMetadata(), sub_229562F68(0, &unk_281401BE8, 0x277CD1A90), swift_dynamicCastMetatype()))
    {
      v30 = v47;
      sub_229541CB0(ObjectType, &off_283CE4470);
      v31 = v29;
      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCCC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&dword_229538000, v32, v33, "Setting initial home manager policy parameters on connection: %@", v34, 0xCu);
        sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v35, -1, -1);
        MEMORY[0x22AAD4E50](v34, -1, -1);
      }

      (*(v49 + 8))(v30, v50);
      v37 = [objc_allocWithZone(HMDHomeManagerXPCMessageSendPolicyParameters) initWithEntitlements:objc_msgSend(v31 options:{sel_entitlements), objc_msgSend(v31, sel_homeManagerOptions)}];
      [v31 updateSendPolicyParameters_];
      [v31 notifyOfExternallyManagedActivation];
      sub_229541DF0(v31);
    }

    else
    {
    }

    return;
  }

LABEL_15:
  sub_229541CB0(ObjectType, &off_283CE4470);
  (*(v6 + 16))(v9, a1, v26);
  v38 = sub_22A4DD05C();
  v39 = sub_22A4DDCFC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53[0] = v41;
    *v40 = 136315138;
    *&v54 = sub_22A4DB20C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
    v42 = sub_22A4DD64C();
    v44 = v43;
    (*(v6 + 8))(v9, v26);
    v45 = sub_2295A3E30(v42, v44, v53);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_229538000, v38, v39, "XPC connection did activate notification user info did not contain a HMDXPCClientConnection: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AAD4E50](v41, -1, -1);
    MEMORY[0x22AAD4E50](v40, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v26);
  }

  (*(v49 + 8))(v14, v50);
}

uint64_t sub_229541CB0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  (*(a2 + 16))(a1, a2);

  return sub_22A4DD06C();
}

void sub_229541DF0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD2FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_22A4DD31C();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    sub_22A4DE39C();
    __break(1u);
    return;
  }

  v16 = [a1 sendPolicyParameters];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = [a1 inactiveUpdatingLevel];
    v20 = [a1 processInfo];
    v21 = [v20 shouldMonitor];

    if (v21)
    {
      v22 = [a1 processInfo];
      v23 = [v22 isForegrounded];

      if (v23)
      {
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = 2;
      }
    }

    else if (v19 <= 1)
    {
      v19 = 1;
    }

    v30 = v1 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
    v31 = *(v30 + 16);
    if (*(v31 + 16) && (v32 = *(v30 + 16), v33 = sub_2296DC034(a1), (v34 & 1) != 0))
    {
      v35 = *(*(*(v31 + 56) + 8 * v33) + 16);
      os_unfair_lock_unlock(v30);
      if (v35)
      {
LABEL_17:
        v36 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      os_unfair_lock_unlock(v30);
    }

    if (v19 == 2)
    {
      [a1 deactivate];
      if ([v18 isActive])
      {
        v36 = 0;
        goto LABEL_24;
      }

LABEL_29:

      return;
    }

    v36 = 0;
LABEL_23:
    [a1 activate];
    if (v36 != [v18 isActive])
    {
LABEL_24:
      v37 = [a1 sendPolicyParameters];
      [v37 mutableCopy];

      sub_22A4DE01C();
      swift_unknownObjectRelease();
      sub_229562F68(0, &unk_2814017F0, off_2786662A0);
      if (swift_dynamicCast())
      {
        v38 = v40;
        [v40 setActive_];
        [a1 updateSendPolicyParameters_];
        if (v36)
        {
          sub_229542698(a1);
        }

        else
        {
          sub_229794238(a1);
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_229541CB0(ObjectType, &off_283CE4470);
  v24 = a1;
  v25 = sub_22A4DD05C();
  v26 = sub_22A4DDCEC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = [v24 sendPolicyParameters];
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_229538000, v25, v26, "Connection's send policy parameters were not of type HMDHomeManagerXPCMessageSendPolicyParameters: %@", v27, 0xCu);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

void sub_229542698(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v63 = sub_22A4DD07C();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v63);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  v12 = sub_22A4DD2FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_22A4DD31C();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v19 = v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
  v20 = a1;
  v21 = sub_229542CF8(&v66, v20);

  if ((v21 & 1) == 0)
  {
    os_unfair_lock_unlock(v19);
    return;
  }

  v22 = *(v19 + 8);
  if ((v22 & 0xC000000000000001) != 0)
  {
    if (v22 < 0)
    {
      v23 = *(v19 + 8);
    }

    v24 = sub_22A4DE0EC();
    if (*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = *(v22 + 16);
    if (*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  v25 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_accessoryBrowser);
  v26 = v9;
  v27 = ObjectType;
  v28 = v5;
  v29 = v24;
  v30 = sub_22A4DD5AC();
  v31 = [v25 beginActiveAssertionWithReason_];

  v24 = v29;
  v5 = v28;
  ObjectType = v27;
  v9 = v26;
  v32 = *(v19 + 24);
  *(v19 + 24) = v31;
  swift_unknownObjectRelease();
LABEL_8:
  os_unfair_lock_unlock(v19);
  sub_229541CB0(ObjectType, &off_283CE4470);
  v33 = v20;
  v34 = sub_22A4DD05C();
  v35 = sub_22A4DDD0C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v62 = v9;
    v37 = ObjectType;
    v38 = v5;
    v39 = v24;
    v40 = v36;
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v33;
    *v41 = v33;
    v42 = v33;
    _os_log_impl(&dword_229538000, v34, v35, "Adding active connection: %@", v40, 0xCu);
    sub_22953EAE4(v41, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v41, -1, -1);
    v43 = v40;
    v24 = v39;
    v5 = v38;
    ObjectType = v37;
    v9 = v62;
    MEMORY[0x22AAD4E50](v43, -1, -1);
  }

  v44 = *(v5 + 8);
  v44(v11, v63);
  [v33 initiateRefresh];
  v45 = [objc_allocWithZone(HMDActiveXPCConnectionLogEvent) initWithXPCConnection:v33 added:1];
  [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_logEventSubmitter) submitLogEvent_];
  [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter) postNotificationName:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:v33];

  if (v24 == 1)
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDD0C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_229538000, v46, v47, "Posting notification because first home manager connection has become active", v48, 2u);
      MEMORY[0x22AAD4E50](v48, -1, -1);
    }

    v44(v9, v63);
    v49 = MEMORY[0x277D84F98];
    v68 = MEMORY[0x277D84F98];
    v50 = sub_22A4DD5EC();
    v52 = v51;
    v53 = [v33 clientIdentifier];
    if (v53)
    {
      v54 = v53;
      v55 = sub_22A4DD5EC();
      v57 = v56;

      v67 = MEMORY[0x277D837D0];
      *&v66 = v55;
      *(&v66 + 1) = v57;
      sub_229543C58(&v66, v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v49;
      sub_229543C6C(v65, v50, v52, isUniquelyReferenced_nonNull_native);

      v59 = v64;
    }

    else
    {
      sub_2297FD000(v50, v52, &v66);

      sub_22953EAE4(&v66, &unk_27D87DE60, &unk_22A57A960);
      v59 = v68;
    }

    v60 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter);
    sub_229543F58(v59);

    v61 = sub_22A4DD47C();

    [v60 postNotificationName:@"HMDHomeManagerFirstProcessDidBecomeActiveNotification" object:v2 userInfo:v61];
  }
}

BOOL isWatch()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 5;

  return v1;
}

BOOL isiOSDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 2;

  return v1;
}

uint64_t isDemoModeV2Active()
{
  v0 = getDemoModeV2Type();
  if (v0)
  {
    if (demoModeV2Types_onceToken != -1)
    {
      dispatch_once(&demoModeV2Types_onceToken, &__block_literal_global_888);
    }

    v1 = [demoModeV2Types_demoModeV2Types containsObject:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id getDemoModeV2Type()
{
  v0 = CFPreferencesCopyValue(@"demoModeTypeV2", @"com.apple.homed", @"mobile", *MEMORY[0x277CBF030]);

  return v0;
}

_OWORD *sub_229543C5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_229543C6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_229543DBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_229897D48();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22989355C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_229543DBC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22A4DE67C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_229543C58(a1, v23);
  }

  else
  {
    sub_229543EEC(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_229543DBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22A4DE77C();
  sub_22A4DD6BC();
  v6 = sub_22A4DE7BC();

  return sub_229543E34(a1, a2, v6);
}

unint64_t sub_229543E34(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22A4DE60C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_229543EEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_229543C58(a4, a5[7] + 32 * a1);
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

uint64_t sub_229543F58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE00, &unk_22A577C80);
    v2 = sub_22A4DE40C();
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
    sub_2295404B0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_229543C5C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_229543C5C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_229543C5C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22A4DE16C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_229543C5C(v33, (*(v2 + 56) + 32 * v10));
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

void sub_229544908(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDXPCCounterTypeAsString(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"XPCSentNotifications";
      goto LABEL_7;
    case 1:
      v1 = @"XPCErroredRequests";
      goto LABEL_7;
    case 0:
      v1 = @"XPCAcceptedRequests";
LABEL_7:
      v2 = v1;
      goto LABEL_9;
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown counter type:%lu", a1];
LABEL_9:

  return v1;
}

id propertyIMP(void *a1, const char *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = NSStringFromSelector(a2);
  if ([v3 propertyIsAvailable:v5])
  {
    v6 = [objc_opt_class() properties];
    v7 = [v6 objectForKey:v5];

    if (v7)
    {
      v8 = [v3[1] objectForKey:v5];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v8)
        {

          objc_autoreleasePoolPop(v4);
          goto LABEL_14;
        }

        v18 = [v7 defaultValue];
        goto LABEL_13;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v3;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v21 = 138543874;
        v22 = v17;
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ from %@, does not appear defined.", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v8 = 0;
    }

    v18 = 0;
LABEL_13:

    objc_autoreleasePoolPop(v4);
    v8 = v18;
    goto LABEL_14;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v3;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = +[HMDBackingStoreSingleton dataVersion];
    v21 = 138544130;
    v22 = v12;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ from %@, unavailable in homed data version %@ (returning nil).", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  objc_autoreleasePoolPop(v4);
  v8 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

BOOL isDeviceLocked()
{
  v14 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v0 = MKBGetDeviceLockState();
    v1 = objc_autoreleasePoolPush();
    v2 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v3;
      v12 = 2048;
      v13 = v0;
      _os_log_impl(&dword_229538000, v2, OS_LOG_TYPE_INFO, "%{public}@Device lock state (locked): %ld", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v1);
    result = v0 != 3 && v0 != 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device does not support device lock (locked).", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

NSCopying *__keyNameForEntity(void *a1)
{
  v1 = a1;
  v2 = __collectUserInfoKeyForEntity(v1);
  v3 = v2;
  v4 = @"modelID";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  objc_opt_class();
  v6 = objc_opt_isKindOfClass() & 1;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  v9 = [v1 attributesByName];
  v10 = [v9 objectForKey:v5];

  if (!v10)
  {
LABEL_12:
    v12 = _HMFPreconditionFailure();
    return __collectUserInfoKeyForEntity(v12);
  }

  return v5;
}

NSCopying *__collectUserInfoKeyForEntity(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 userInfo];
    v4 = [v3 objectForKey:@"keyAttribute"];

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [v2 superentity];

      if (v5)
      {
        v6 = [v2 superentity];
        v5 = __collectUserInfoKeyForEntity();
      }
    }

    return v5;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return [(HMDAccountHandle *)v8 backingModelKey];
  }
}

uint64_t ____updateDevices_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Resolved by updateDevices", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if (*(a1 + 40) == 1)
  {
    v8 = [*(a1 + 32) notificationCenter];
    [v8 postNotificationName:@"HMDAppleAccountManagerResolved" object:*(a1 + 32)];
  }

  v9 = [*(a1 + 32) deviceAccountSettledPromise];
  [v9 fulfillWithNoValue];

  v10 = [*(a1 + 32) idsDevicesUpdatedPromise];
  [v10 fulfillWithNoValue];

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Posted HMDAppleAccountManagerResolved and fulfilled futures.", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

id __findModelObjectOfType(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v37 = 0;
  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = &v37;
  }

  v14 = +[HMCContext currentContext];
  v15 = v14;
  if (!v10)
  {
    v17 = 0;
LABEL_8:
    proto = v9;
    v20 = __managedObjectClassFromProtocol(v9);
    v35 = v11;
    v21 = [v11 predicateWithSubstitutionVariables:v12];
    v22 = [(objc_class *)v20 fetchRequest];
    [v22 setPredicate:v21];
    v23 = [v15 managedObjectContext];
    v24 = [v23 executeFetchRequest:v22 error:v13];

    if (!v24)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        NSStringFromProtocol(proto);
        v29 = v34 = v27;
        v30 = *v13;
        *buf = 138544130;
        v39 = v33;
        v40 = 2112;
        v41 = v29;
        v42 = 2112;
        v43 = v21;
        v44 = 2112;
        v45 = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Fetch of models of %@.%@ failed: %@", buf, 0x2Au);

        v27 = v34;
      }

      objc_autoreleasePoolPop(v27);
      v25 = 0;
      goto LABEL_17;
    }

    if ([v24 count] >= 2)
    {
      _HMFPreconditionFailure();
    }

    else
    {
      v25 = [v24 firstObject];
      if (!v25)
      {
LABEL_13:

LABEL_17:
        v11 = v35;
        v9 = proto;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        goto LABEL_13;
      }
    }

    _HMFPreconditionFailure();
  }

  v16 = [v14 managedObjectContext];
  v17 = [v16 existingObjectWithID:v10 error:v13];

  if (v17)
  {
    v18 = [v12 mutableCopy];
    [v18 setValue:v17 forKey:@"PARENT"];
    v19 = [v18 copy];

    v12 = v19;
    goto LABEL_8;
  }

  v25 = 0;
LABEL_19:

  v31 = *MEMORY[0x277D85DE8];

  return v25;
}

objc_class *__managedObjectClassFromProtocol(void *a1)
{
  v1 = a1;
  if (__managedObjectClassFromProtocol__hmf_once_t7 != -1)
  {
    dispatch_once(&__managedObjectClassFromProtocol__hmf_once_t7, &__block_literal_global_376);
  }

  v2 = __managedObjectClassFromProtocol__hmf_once_v8;
  os_unfair_lock_lock_with_options();
  v3 = [v2 objectForKey:v1];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = NSStringFromProtocol(v1);
    v6 = [@"_" stringByAppendingString:v5];

    v7 = NSClassFromString(v6);
    v8 = v7;
    if (!v7 || ![(objc_class *)v7 conformsToProtocol:v1]|| ([(objc_class *)v8 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      result = _HMFPreconditionFailure();
      __break(1u);
      return result;
    }

    [v2 setObject:v8 forKey:v1];
    v4 = v8;
  }

  os_unfair_lock_unlock(&__managedObjectClassFromProtocol_cacheLock);

  return v4;
}

uint64_t HMDCurrentQOSWithFloor()
{
  v0 = [MEMORY[0x277CCACC8] currentThread];
  v1 = [v0 qualityOfService];

  if (v1 <= 17)
  {
    return 17;
  }

  else
  {
    return v1;
  }
}

uint64_t __updateCurrentDevice(void *a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = __createCurrentDevice(v6);
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      v55 = v9;
      v12 = [v9 identifier];
      v13 = [v4 deviceForIdentifier:v12];

      v54 = v3;
      v53 = v11;
      v52 = v13;
      if (v13)
      {
        v14 = v64;
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v15 = ____updateCurrentDevice_block_invoke;
        v16 = v6;
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v16 = v6;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v23;
          *&buf[12] = 2112;
          *&buf[14] = v55;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Adding current device: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v14 = v63;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v15 = ____updateCurrentDevice_block_invoke_640;
        v13 = v4;
      }

      v14[2] = v15;
      v14[3] = &unk_278688D58;
      v14[4] = v16;
      v14[5] = v55;
      v14[6] = v13;
      v24 = v6;
      v25 = v55;
      v26 = v14;
      v27 = objc_autoreleasePoolPush();
      v28 = v24;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Updating device rapport identity on current device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v31 = objc_alloc_init(MEMORY[0x277D44150]);
      [v31 setDispatchQueue:v28[2]];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice_block_invoke;
      v67 = &unk_2786884C8;
      v68 = v31;
      v69 = v28;
      v70 = v25;
      v71 = v26;
      v32 = v31;
      v33 = v28;
      v34 = v26;
      v35 = v25;
      v36 = v33;
      v37 = v35;
      [v32 getIdentitiesWithFlags:1 completion:buf];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v38 = [v33 account];
      v39 = [v38 devices];

      v40 = [v39 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v60;
        v56 = v33;
        v57 = v4;
        v58 = v39;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v60 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v59 + 1) + 8 * i);
            if (([v44 isEqual:{v37, v52}] & 1) == 0 && objc_msgSend(v44, "isRelatedToDevice:", v37))
            {
              v45 = objc_autoreleasePoolPush();
              v46 = v36;
              v47 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = HMFGetLogIdentifier();
                v49 = [v44 shortDescription];
                *buf = 138543618;
                *&buf[4] = v48;
                *&buf[12] = 2112;
                *&buf[14] = v49;
                _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Removing stale device: %@", buf, 0x16u);

                v36 = v56;
                v4 = v57;
              }

              objc_autoreleasePoolPop(v45);
              [v4 removeDevice:v44];
              v39 = v58;
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v41);
      }

      __handleUpdatedDevice_164015(v36, v37);
      v3 = v54;
      v10 = v55;
      v11 = v53;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Failed to create current device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v11 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v11;
}

HMDDevice *__createCurrentDevice(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isServiceActive])
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
    if (v3)
    {
      v4 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v3];
      v5 = [[HMDDeviceHandle alloc] initWithInternal:v4];
      [v2 addObject:v5];
    }

    v6 = [v1 pushConnection];
    v7 = [v6 publicToken];

    if (!v7)
    {
      v18 = [v1 service];
      v19 = [v18 iCloudAccount];

      v20 = [v19 pushToken];
      v7 = v20;
      if (!v20 || [v20 hmf_isZeroed])
      {

        goto LABEL_16;
      }
    }

    v8 = [v1 service];
    v9 = [v8 hmd_preferredHandle];

    v10 = [[_HMDGlobalDeviceHandle alloc] initWithPushToken:v7 accountHandle:v9];
    v11 = [[HMDDeviceHandle alloc] initWithInternal:v10];
    if (v11)
    {
      [v2 addObject:v11];
      v12 = [(HMDDeviceHandle *)v11 identifier];
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v21 = [HMDDevice alloc];
      v22 = [MEMORY[0x277D0F910] systemInfo];
      v23 = [v22 name];
      v24 = [MEMORY[0x277D0F8E8] productInfo];
      v25 = +[HMDHomeKitVersion currentVersion];
      v26 = +[HMDDeviceCapabilities deviceCapabilities];
      v27 = [(HMDDevice *)v21 initWithIdentifier:v12 handles:v2 name:v23 productInfo:v24 version:v25 capabilities:v26];

      v28 = v1[2];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = ____createCurrentDevice_block_invoke;
      v37[3] = &unk_27868A750;
      v38 = v1;
      v29 = v27;
      v39 = v29;
      dispatch_async(v28, v37);
      v30 = v39;
      v17 = v29;

LABEL_19:
      goto LABEL_20;
    }

LABEL_16:
    v31 = objc_autoreleasePoolPush();
    v32 = v1;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    v17 = 0;
    goto LABEL_19;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = v1;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Cannot create current device; Service is not active", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = 0;
LABEL_20:

  v35 = *MEMORY[0x277D85DE8];

  return v17;
}

id __HMDAppleMediaAccessoryGetDeviceController(void *a1)
{
  v1 = a1;
  os_unfair_recursive_lock_lock_with_options();
  v2 = v1[61];
  os_unfair_recursive_lock_unlock();

  return v2;
}

BOOL sub_22954A3D4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22954A42C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22954A46C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22A4DD5EC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_22954A4C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22954A4EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_22954A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22A4DC86C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22954A6C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22A4DC86C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22954A778(uint64_t a1, uint64_t a2)
{
  v4 = _s21EventMetadataInternalVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22954A7E4(uint64_t a1, uint64_t a2)
{
  v4 = _s21EventMetadataInternalVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22954A85C()
{
  v1 = (type metadata accessor for HindsightDigestController.TaskConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 24);

  v12 = *(v0 + 48);

  v13 = v0 + v1[9];
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 8))(v13 + v3, v14);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_22954A9E4()
{
  v1 = (type metadata accessor for HindsightDigestController.TaskConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v1[9];
  v7 = sub_22A4DD9DC();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22954AACC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD30, &qword_22A577A60) + 16);
  sub_22A4DDF6C();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD38, &qword_22A577A68) + 16);
  sub_22A4DDF6C();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954AB44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954AB84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22954ABCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954AC08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954AC44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954AC84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954ACBC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954ACFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954AD70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954ADB8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954ADF0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22954AF3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22954AF94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954AFCC()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22954B070()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_22954B140()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22954B1D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954B2A4()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22954B360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s21EventMetadataInternalVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22954B41C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s21EventMetadataInternalVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_22954B4DC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject services];
      sub_229562F68(0, &unk_27D87D360, off_278666310);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_22A4DE0EC();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_229590C00(&qword_27D87D528, &qword_27D87D520, &qword_22A578828);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D520, &qword_22A578828);
              v20 = sub_22958C03C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22954B870(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject hapAccessories];
      sub_229562F68(0, &qword_281401B70, off_278666148);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_22A4DE0EC();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_229590C00(&qword_27D87D568, &qword_27D87D398, &qword_22A578518);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D398, &qword_22A578518);
              v20 = sub_22958C03C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22954BC04()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954BC3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_22954BC9C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_22954BCAC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_22954BCBC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22954BD04()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954BDC8()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22954BEC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954BF00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 242, 7);
}

uint64_t sub_22954BF38()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22954C008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954C048()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22954C0F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22954C1A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954C1E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954C220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22954C2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22954C39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22954C460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22954C520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22954C5E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22954C6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22954C764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22954C820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22954C8E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22954C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22954CA68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22954CD80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954CDC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22A4DD07C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22954CE74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22A4DD07C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22954CF78()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22954CFC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22954D008()
{
  v1 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() <= 0x17)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_22954D114()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954D14C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8);
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

uint64_t sub_22954D224()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954D264()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954D344()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954D388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD8, &qword_22A57A0C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954D420()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA8, &qword_22A57A160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954D4F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954D528()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22954D684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD30, &qword_22A577A60);
  sub_229568FC8(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCC0, &qword_22A57A400);
  sub_229568FC8(v2);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954D6F8()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v0 + 40);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22954D7F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954D838()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954D870()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22954D8B8()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
  (*(*(v8 - 8) + 8))(&v0[v3], v8);
  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
  (*(*(v10 - 8) + 8))(&v0[v3 + v9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22954DA1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954DA54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954DA8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22954DAEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22954DB94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954DC28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF18, &qword_22A57A998);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22954DCD8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954DD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DC29C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22954DE20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DC29C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22954DEE8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22954DF20()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22954DF60()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954DFA0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E208, &qword_22A57B430);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22954DFD0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22954E004()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954E03C()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954E088()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954E0C0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954E10C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954E14C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954E190()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E290, &qword_22A57B628);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22954E1C0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22954E21C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22954E290()
{
  v1 = sub_22A4DB74C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954E334()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954E36C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954E3A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22954E3EC()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954E468()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E3F0, "FQ\b");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22954E498()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954E4D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E410, &qword_22A57C000);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954E564()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22954E5A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22954E604()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E538, &qword_22A57C188);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954E6D4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E600, &qword_22A57C1F8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22954E704()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954E73C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22954E77C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = _s21EventMetadataInternalVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBF0, &qword_22A577898);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D100, &unk_22A583B00);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_22954E8E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = _s21EventMetadataInternalVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBF0, &qword_22A577898);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D100, &unk_22A583B00);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22954EA60(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = _s13PresenceStateOMa();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22954EB0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s13PresenceStateOMa();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22954EBB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E820, &qword_22A57C880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954EC88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22954ECC0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954ED1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954ED60(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22A4DCDFC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_22A4DC77C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_22954EED8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_22A4DCDFC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_22A4DC77C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22954F050()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954F088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22954F16C()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22954F234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22954F2AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22954F33C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22954F3F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22954F4A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954F4E4()
{
  v1 = sub_22A4DB7DC();
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

uint64_t sub_22954F5D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22954F620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22954F698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22954F71C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22A4DC29C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22954F84C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22A4DC29C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22954F97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DC29C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22954FA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22A4DC29C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22954FB80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22A4DC29C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22954FCB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22A4DC29C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22954FDE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22A4DC29C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22954FF10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22A4DC29C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_229550050()
{
  v1 = (type metadata accessor for NetworkDetectAccessory() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  v7 = sub_22A4DB7DC();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[7], v7);
  v9 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_229550178()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2295501B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_229550270(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22955032C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229550374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_229550440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2295504FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229550534()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229550580()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2295505C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EF58, &qword_22A57E0A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_229550694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EF58, &qword_22A57E0A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22955075C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229550794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_22A4DD9DC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22955080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_22A4DD9DC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_229550888()
{
  v1 = sub_22A4DB74C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22955091C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
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

uint64_t sub_229550994(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_229550A20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229550A68()
{
  v1 = (type metadata accessor for ThermostatSuggestedPreset.Current(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v1[8];
  v7 = sub_22A4DB74C();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_229550B70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229550BB8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229550BF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229550C44()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229550C8C()
{
  _Block_release(*(v0 + 48));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_229550CE4()
{
  _Block_release(*(v0 + 56));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_229550D3C()
{
  _Block_release(*(v0 + 48));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_229550D8C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229550DD4()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229550EA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229550F18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229550F50()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  v7 = v0[5];

  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v1[9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  (*(*(v11 - 8) + 8))(&v8[v10], v11);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2295511C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBF0, &qword_22A577898);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2295512F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBF0, &qword_22A577898);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22955141C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F8A0, &unk_22A57FCD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = _s21EventMetadataInternalV4HomeVMa(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v15 = _s21EventMetadataInternalV6DeviceVMa(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_229551690(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F8A0, &unk_22A57FCD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = _s21EventMetadataInternalV4HomeVMa(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v15 = _s21EventMetadataInternalV6DeviceVMa(0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2295519AC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E600, &qword_22A57C1F8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2295519DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229551A1C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22A4DB74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_229551AC0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_22A4DB74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_229551B60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22A4DB74C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_229551C04(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_22A4DB74C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_229551CA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_229551CE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229551D28()
{
  MEMORY[0x22AAD4F90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229551D60()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229551DB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229551E08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229551E48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229551E80()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229551EC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229551F10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229551F48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_229551F98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229552028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22955217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_229552240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_229552300(void *a1)
{
  [v1 setDispatchQueue_];
}

uint64_t sub_22955235C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229552398()
{
  MEMORY[0x22AAD4F90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2295523D4()
{
  MEMORY[0x22AAD4F90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22955240C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22955244C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229552490()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2295524E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD30, &qword_22A577A60);
  sub_229568FC8(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8801A0, &qword_22A580E90);
  sub_229568FC8(v2);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229552554()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229552590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2295525FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229552644()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229552684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_229552780()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2295527C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2295528D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229552914()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22955295C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229552994()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880358, &qword_22A581340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_229552A78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_229552B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DC70C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_229552BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DC70C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_229552C60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229552CA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_229552CF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229552D88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229552DC0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229552E14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229552E54()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229552EA4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229552EF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229552F44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229552F9C()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_229553074()
{
  v1 = sub_22A4DB7DC();
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

uint64_t sub_229553140()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229553180()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2295531EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229553224()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229553264()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2295532A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2295532EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229553324()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229553364()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22955339C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2295533E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s21EventMetadataInternalVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2295534A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s21EventMetadataInternalVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_229553564()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2295535B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229553604()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_229553654()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22955368C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2295536D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22955370C()
{
  v1 = sub_22A4DDE2C();
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

uint64_t sub_2295537D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229553824()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880BE0, &qword_22A5827A0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_229553854()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2295539C4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880BD0, &qword_22A582838);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2295539F4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880BD8, &qword_22A582840);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_229553A24()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880BE0, &qword_22A5827A0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_229553A68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229553AA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229553B78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229553C0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C90, &qword_22A582A20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229553CE0()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_229553DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229553E80()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229553EC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD30, &qword_22A577A60);
  sub_229568FC8(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D88, &unk_22A582E00);
  sub_229568FC8(v2);

  return MEMORY[0x2821FE8E8](v0, 21, 7);
}

uint64_t sub_229553F34()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229553F7C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229553FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_22A4DDA5C();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = sub_22A4DDA2C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2295540E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_22A4DDA5C();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = sub_22A4DDA2C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 28);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2295541FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229554244()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22955428C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2295542C4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  v7 = v0[5];

  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v1[9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  (*(*(v11 - 8) + 8))(&v8[v10], v11);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_229554424()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881078, qword_22A5831E8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22955449C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2295544E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22955451C()
{
  MEMORY[0x22AAD4F90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229554554()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B0, &qword_22A583238);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A0, &qword_22A583228);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2295546D0()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_2295798D4(*(v0 + 24), v1);
  }

  v2 = *(v0 + 48);
  if (v2 >> 60 != 15)
  {
    sub_2295798D4(*(v0 + 40), v2);
  }

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_229554750()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_229554838()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22955488C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2295548D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229554914()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

BOOL sub_22955495C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_2295549A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HomePassData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_229554A50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HomePassData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_229554AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_229554BB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_229554C80(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_229554CA8()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + ((v6 + 19) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 75) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = *(v0 + v6);

  v10(v0 + v7, v1);
  sub_2295798D4(*(v0 + v8), *(v0 + v8 + 8));
  sub_2295798D4(*(v0 + v8 + 16), *(v0 + v8 + 24));
  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_2295798D4(*(v0 + v8 + 32), *(v0 + v8 + 40));

  v13 = *(v0 + v12 + 8);
  if (v13 >> 60 != 15)
  {
    sub_2295798D4(*(v0 + v12), v13);
  }

  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14 + 8);

  return MEMORY[0x2821FE8E8](v0, v14 + 17, v3 | 7);
}

uint64_t sub_229554E48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229554E8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229554ED8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229554F28()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229554F70()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229554FD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229555018()
{
  v1 = sub_22A4DB74C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2295550A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2295550D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229555120()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_229555174()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2295551AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_229555204()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229555260()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22955529C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2295552F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22955535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_229555428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DB7DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2295554E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22955551C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22955555C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2295555B4()
{
  v1 = *(v0 + 32);

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22955560C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229555654()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2295556A4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2295556F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229555744()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2295557B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2295557F8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229555840()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229555880()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22955599C()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_229555A90()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_229555AD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229555B18()
{
  v20 = sub_22A4DCD0C();
  v1 = *(v20 - 8);
  v24 = *(v1 + 80);
  v2 = (v24 + 72) & ~v24;
  v3 = *(v1 + 64);
  v4 = sub_22A4DCA9C();
  v5 = *(v4 - 8);
  v23 = *(v5 + 80);
  v6 = (v2 + v3 + v23) & ~v23;
  v7 = (v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8) - 8);
  v22 = *(v8 + 80);
  v9 = (v7 + v22 + 16) & ~v22;
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0) - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v21 = *(v11 + 64);
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  (*(v1 + 8))(v0 + v2, v20);
  (*(v5 + 8))(v0 + v6, v4);

  v15 = sub_22A4DCB1C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v9, 1, v15))
  {
    (*(v16 + 8))(v0 + v9, v15);
  }

  v17 = sub_22A4DCA3C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v13, 1, v17))
  {
    (*(v18 + 8))(v0 + v13, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v13 + v21, v24 | v23 | v22 | v12 | 7);
}

uint64_t sub_229555E70()
{
  MEMORY[0x22AAD4F90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229555EA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_229556024()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22955607C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2295560BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_229556184(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_229556234()
{
  v1 = (type metadata accessor for HomePassState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[14];
  v7 = type metadata accessor for HomePassData(0);
  v8 = v7[5];
  v9 = sub_22A4DB7DC();
  v10 = *(*(v9 - 8) + 8);
  v10(v6 + v8, v9);
  v10(v6 + v7[6], v9);
  v10(v6 + v7[7], v9);
  v11 = v6 + v7[8];
  sub_2295798D4(*v11, *(v11 + 8));
  sub_2295798D4(*(v11 + 16), *(v11 + 24));
  sub_2295798D4(*(v11 + 32), *(v11 + 40));
  v12 = *(v6 + v7[9] + 8);

  v13 = *(v6 + v7[14] + 8);

  sub_2295798D4(*(v6 + v7[15]), *(v6 + v7[15] + 8));
  v14 = *(v6 + v7[16]);

  v15 = (v6 + v7[21]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_2295798D4(*v15, v16);
  }

  v17 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v6 + v7[22] + 8);

  v19 = *(v0 + v17 + 8);

  sub_22985B144(*(v0 + v17 + 16), *(v0 + v17 + 24), *(v0 + v17 + 32));

  return MEMORY[0x2821FE8E8](v0, v17 + 52, v2 | 7);
}

uint64_t sub_229556430()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[22];

  v11 = v0[24];

  v12 = v0[26];

  v13 = v0[28];

  v14 = v0[30];

  v15 = v0[33];

  v16 = v0[35];

  v17 = v0[37];

  v18 = v0[41];

  v19 = v0[42];

  v20 = v0[43];

  v21 = v0[44];

  v22 = v0[46];

  v23 = v0[49];

  v24 = v0[52];

  v25 = v0[54];

  v26 = v0[56];

  return MEMORY[0x2821FE8E8](v0, 456, 7);
}

uint64_t sub_229556530()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229556590()
{
  _Block_release(*(v0 + 48));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2295565EC()
{
  _Block_release(*(v0 + 56));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22955663C()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22955668C()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2295566CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22955670C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2295567B8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881CB8, &qword_22A586490);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2295567E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229556848()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229556880()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2295568CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229556914()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22955694C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2295569A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2295569E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229556A28()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_229556A78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_229556AC0()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v13 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v13 | 7);
}

uint64_t sub_229556C70()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v14 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v14 | 7);
}

uint64_t sub_229556E94()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_229556ECC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_229557148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_229562C94(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_229557188(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2295571A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t _s13HomeKitDaemon27RestrictedGuestInfoLogEventC12ScheduleTypeO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitDaemon23ExpectedUpdatePassErrorO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_229557298@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13HomeKitDaemon27RestrictedGuestInfoLogEventC12ScheduleTypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2295572C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for ClimateBulletinBuilder.AlvaradoContent(0);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22955738C, 0, 0);
}

uint64_t sub_22955738C()
{
  v1 = sub_22955BC18(*(v0 + 24));

  if (v1 && (v2 = sub_22955C3AC(v1), , v2 != 2))
  {
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    v12 = *(v0 + 32);
    v25 = *(v0 + 16);
    *v7 = sub_22955C810();
    v7[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22A576180;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_229562E8C();
    *(v14 + 32) = v12;
    *(v14 + 40) = v10;
    swift_bridgeObjectRetain_n();
    v15 = v11;
    v16 = v9;
    v17 = sub_22A4DD5AC();
    v18 = HMDLocalizedStringForKey(v17);

    sub_22A4DD5EC();
    v19 = sub_22A4DD5BC();
    v21 = v20;

    v7[2] = v19;
    v7[3] = v21;
    sub_2295575D8(v15, v16, v7 + *(v8 + 24));

    sub_229562FD0(v7, v25, type metadata accessor for ClimateBulletinBuilder.AlvaradoContent);
    v6 = 0;
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 40);

    v6 = 1;
  }

  v22 = *(v0 + 80);
  (*(*(v0 + 72) + 56))(*(v0 + 16), v6, 1, *(v0 + 64));

  v23 = *(v0 + 8);

  return v23();
}

void sub_2295575D8(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22A4DB76C();
  v11 = *(v6 + 8);
  v11(v9, v5);
  v12 = objc_allocWithZone(MEMORY[0x277CD1878]);
  v13 = sub_22A4DD5AC();

  v14 = [v12 initWithQueryType:1 uuidString:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576190;
  v16 = [a2 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22A4DB76C();
  v11(v9, v5);
  v17 = objc_allocWithZone(MEMORY[0x277CD1878]);
  v18 = sub_22A4DD5AC();

  v19 = [v17 initWithQueryType:0 uuidString:v18];

  *(inited + 32) = v19;
  sub_2296721A4(inited);
  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  sub_229562F68(0, &qword_27D87CEE0, 0x277CD1878);
  sub_229562CCC();
  v21 = sub_22A4DDB5C();

  v22 = generateURLForHomeKitObject();

  if (v22)
  {
    sub_22A4DB51C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_229557898()
{
  v0 = [objc_opt_self() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2295579D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C368, &qword_22A576E50) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v8 = sub_22A4DCA0C();
  v6[17] = v8;
  v9 = *(v8 - 8);
  v6[18] = v9;
  v10 = *(v9 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v11 = type metadata accessor for ClimateBulletinBuilder.ValenciaContent(0);
  v6[21] = v11;
  v12 = *(v11 - 8);
  v6[22] = v12;
  v13 = *(v12 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229557B38, 0, 0);
}

uint64_t sub_229557B38()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_229558328(*(v0 + 88), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v0 + 88);

    sub_22953EAE4(v4, &qword_27D87C368, &qword_22A576E50);
    v9 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    (*(*(v0 + 176) + 56))(*(v0 + 80), 1, 1, *(v0 + 168));

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 88);
  (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
  v16 = sub_22A4DD5EC();
  v18 = *(v15 + 16);
  v19 = *(v0 + 88);
  if (v18)
  {
    v20 = sub_229543DBC(v16, v17);
    v22 = v21;

    if (v22)
    {
      sub_2295404B0(*(*(v0 + 88) + 56) + 32 * v20, v0 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        v23 = *(v0 + 72);
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_12:
  *(v0 + 192) = v23;
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 136);
  v27 = *(v0 + 144);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 104);
  v31 = *(v27 + 16);
  *(v0 + 200) = v31;
  *(v0 + 208) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v24, v25, v26);

  v32 = v29;
  v33 = v28;

  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  *v34 = v0;
  v34[1] = sub_229557DFC;
  v35 = *(v0 + 152);
  v36 = *(v0 + 112);
  v37 = *(v0 + 120);
  v38 = *(v0 + 96);
  v39 = *(v0 + 104);

  return sub_22955E790(v35, v23, v38, v39, v36, v37);
}

uint64_t sub_229557DFC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v6 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return MEMORY[0x2822009F8](sub_229557EFC, 0, 0);
}

uint64_t sub_229557EFC()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 208);
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 104);
    (*(v0 + 200))(*(v0 + 152), *(v0 + 160), *(v0 + 136));

    v5 = v3;
    v6 = v2;
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_229558094;
    v8 = *(v0 + 192);
    v9 = *(v0 + 152);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);

    return sub_22955FB20(v9, v8, v12, v13, v10, v11);
  }

  else
  {
    v15 = *(v0 + 192);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 104);
    (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));

    v19 = *(v0 + 184);
    v20 = *(v0 + 160);
    v21 = *(v0 + 152);
    v22 = *(v0 + 128);
    (*(*(v0 + 176) + 56))(*(v0 + 80), 1, 1, *(v0 + 168));

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_229558094(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[6] = v2;
  v4[7] = a1;
  v4[8] = a2;
  v5 = v3[30];
  v7 = *v2;
  v4[31] = a2;

  return MEMORY[0x2822009F8](sub_22955819C, 0, 0);
}

uint64_t sub_22955819C()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 184);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 104);
    v11 = *(v0 + 80);
    *v3 = *(v0 + 224);
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    sub_2295575D8(v9, v8, v3 + *(v4 + 24));

    (*(v7 + 8))(v5, v6);
    sub_229562FD0(v3, v11, type metadata accessor for ClimateBulletinBuilder.ValenciaContent);
    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 232);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = *(v0 + 104);
    (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));

    v12 = 1;
  }

  v17 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 152);
  v20 = *(v0 + 128);
  (*(*(v0 + 176) + 56))(*(v0 + 80), v12, 1, *(v0 + 168));

  v21 = *(v0 + 8);

  return v21();
}

void sub_229558328(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v87 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v87 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v87 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v87 - v18;
  v20 = sub_22A4DC75C();
  v92 = *(v20 - 8);
  v21 = *(v92 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22A4DCC4C();
  v93 = *(v24 - 8);
  v25 = *(v93 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22A4DD5EC();
  if (!a1[2])
  {

LABEL_14:
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();

    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v97 = a1;
      v98[0] = v54;
      *v53 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v55 = sub_22A4DBA6C();
      v57 = sub_2295A3E30(v55, v56, v98);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_229538000, v51, v52, "Ignoring report missing clusterID: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v95 + 8))(v11, v94);
    goto LABEL_17;
  }

  v90 = v19;
  v91 = v17;
  v89 = v8;
  v30 = sub_229543DBC(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2295404B0(a1[7] + 32 * v30, v98);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v88 = v97;
  v33 = sub_22A4DD5EC();
  if (!a1[2])
  {

    goto LABEL_20;
  }

  v35 = sub_229543DBC(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0 || (sub_2295404B0(a1[7] + 32 * v35, v98), (swift_dynamicCast() & 1) == 0))
  {
LABEL_20:
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();

    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCEC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v97 = a1;
      v98[0] = v63;
      *v62 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v64 = sub_22A4DBA6C();
      v66 = sub_2295A3E30(v64, v65, v98);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_229538000, v60, v61, "Ignoring report missing eventID: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    else
    {
    }

    (*(v95 + 8))(v14, v94);
LABEL_17:
    v58 = v96;
    v59 = sub_22A4DCA0C();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    return;
  }

  v38 = v97;
  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  sub_22A4DCB6C();
  sub_22A4DCC3C();
  (*(v93 + 8))(v27, v24);
  v39 = sub_22A4DE7DC();
  v40 = v88;
  v41 = sub_22A4DDEDC();

  if (v41 & 1) != 0 && (sub_22A4DC72C(), sub_22A4DC74C(), (*(v92 + 8))(v23, v20), v42 = sub_22A4DE7DC(), v43 = sub_22A4DDEDC(), v42, (v43))
  {
    v44 = sub_22A4DD5EC();
    v46 = v96;
    if (a1[2])
    {
      v47 = sub_229543DBC(v44, v45);
      v49 = v48;

      v50 = v90;
      if (v49)
      {
        sub_2295404B0(a1[7] + 32 * v47, v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
        if (swift_dynamicCast())
        {
          sub_22A4DC9FC();
          v86 = sub_22A4DCA0C();
          (*(*(v86 - 8) + 56))(v46, 0, 1, v86);

          return;
        }
      }
    }

    else
    {

      v50 = v90;
    }

    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();

    v78 = sub_22A4DD05C();
    v79 = sub_22A4DDCEC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v97 = a1;
      v98[0] = v81;
      *v80 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v82 = sub_22A4DBA6C();
      v84 = sub_2295A3E30(v82, v83, v98);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_229538000, v78, v79, "Ignoring report missing dictionary: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AAD4E50](v81, -1, -1);
      MEMORY[0x22AAD4E50](v80, -1, -1);
    }

    else
    {
    }

    (*(v95 + 8))(v50, v94);
    v85 = sub_22A4DCA0C();
    (*(*(v85 - 8) + 56))(v46, 1, 1, v85);
  }

  else
  {
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    v67 = v91;
    sub_229557898();

    v68 = sub_22A4DD05C();
    v69 = sub_22A4DDCEC();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v96;
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v97 = a1;
      v98[0] = v73;
      *v72 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v74 = sub_22A4DBA6C();
      v76 = sub_2295A3E30(v74, v75, v98);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_229538000, v68, v69, "Ignoring report with incorrect clusterID or eventID: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AAD4E50](v73, -1, -1);
      MEMORY[0x22AAD4E50](v72, -1, -1);
    }

    else
    {
    }

    (*(v95 + 8))(v67, v94);
    v77 = sub_22A4DCA0C();
    (*(*(v77 - 8) + 56))(v71, 1, 1, v77);
  }
}

uint64_t sub_229558F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v5 = sub_22A4DD07C();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_22A4DB7DC();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[18] = v11;
  *v11 = v4;
  v11[1] = sub_229559080;

  return sub_2297D361C();
}

uint64_t sub_229559080(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 144);
  v8 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v6 = sub_229559798;
  }

  else
  {
    v6 = sub_229559198;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_229559198()
{
  v69 = v0;
  v1 = v0[20];
  if (v0[19] == 2)
  {
    if (v1 && *(v1 + 16))
    {
      v2 = v0[21];
      v3 = v0[17];
      v4 = v0[9];
      (*(v0[16] + 16))(v3, v1 + ((*(v0[16] + 80) + 32) & ~*(v0[16] + 80)), v0[15]);
      v5 = [v4 rooms];
      sub_229562F68(0, &unk_2814017A0, off_278666308);
      v6 = sub_22A4DD83C();

      v7 = swift_task_alloc();
      *(v7 + 16) = v3;
      v8 = sub_22968FFF0(sub_229562EF4, v7, v6);

      if (v8)
      {
        v10 = v0[16];
        v9 = v0[17];
        v11 = v0[15];

        v12 = [v8 name];
        v13 = sub_22A4DD5EC();
        v15 = v14;

        (*(v10 + 8))(v9, v11);
        v16 = 2;
        goto LABEL_15;
      }

      v33 = v0[14];
      v34 = v0[8];
      v35 = v0[9];
      v36 = v0[7];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();

      v37 = v34;
      v38 = v35;
      v39 = sub_22A4DD05C();
      v40 = sub_22A4DDCEC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v0[20];
        v65 = v0[10];
        v67 = v0[14];
        v63 = v0[9];
        v64 = v0[11];
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v68[0] = v43;
        *v42 = 136315394;
        v0[4] = 2;
        v0[5] = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3C0, &qword_22A576EA0);
        v44 = sub_22A4DBA6C();
        v46 = v45;

        v47 = sub_2295A3E30(v44, v46, v68);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        v48 = [v63 rooms];
        v49 = sub_22A4DD83C();

        v0[6] = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D0, &qword_22A576EA8);
        v50 = sub_22A4DBA6C();
        v52 = v51;

        v53 = sub_2295A3E30(v50, v52, v68);

        *(v42 + 14) = v53;
        _os_log_impl(&dword_229538000, v39, v40, "Found localPresence setting with unknown room: %s, homeRooms: %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v43, -1, -1);
        MEMORY[0x22AAD4E50](v42, -1, -1);

        (*(v64 + 8))(v67, v65);
      }

      else
      {
        v54 = v0[14];
        v55 = v0[10];
        v56 = v0[11];

        (*(v56 + 8))(v54, v55);
      }

      (*(v0[16] + 8))(v0[17], v0[15]);
    }

    else
    {
      v18 = v0[13];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();

      v19 = sub_22A4DD05C();
      v20 = sub_22A4DDCEC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v0[20];
        v66 = v0[13];
        v23 = v0[10];
        v22 = v0[11];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v68[0] = v25;
        *v24 = 136315138;
        v0[2] = 2;
        v0[3] = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3C0, &qword_22A576EA0);
        v26 = sub_22A4DBA6C();
        v28 = v27;

        v29 = sub_2295A3E30(v26, v28, v68);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_229538000, v19, v20, "Found localPresence setting with no associated room: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x22AAD4E50](v25, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);

        (*(v22 + 8))(v66, v23);
      }

      else
      {
        v30 = v0[13];
        v31 = v0[10];
        v32 = v0[11];

        (*(v32 + 8))(v30, v31);
      }
    }

    v16 = 0;
    v13 = 0;
    v15 = 1;
  }

  else
  {
    v17 = v0[20];

    v13 = 0;
    v15 = 0;
    v16 = v0[19];
  }

LABEL_15:
  v57 = v0[17];
  v59 = v0[13];
  v58 = v0[14];
  v60 = v0[12];

  v61 = v0[1];

  return v61(v16, v13, v15);
}

uint64_t sub_229559798()
{
  v1 = v0[21];
  v2 = v0[12];
  sub_229562F68(0, &unk_27D87C380, off_278666068);
  sub_229557898();
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Failed to fetch adaptive temperature driver settings: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v12 = v0[17];
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[12];

  v16 = v0[1];

  return v16(0, 0, 1);
}

void sub_229559964(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a4 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22A4DB76C();
  (*(v6 + 8))(v9, v5);
  v11 = objc_allocWithZone(MEMORY[0x277CD1878]);
  v12 = sub_22A4DD5AC();

  v13 = [v11 initWithQueryType:0 uuidString:v12];

  sub_2296721A4(MEMORY[0x277D84F90]);
  sub_229562F68(0, &qword_27D87CEE0, 0x277CD1878);
  sub_229562CCC();
  v14 = sub_22A4DDB5C();

  v15 = generateURLForHomeKitObject();

  if (v15)
  {
    sub_22A4DB51C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_229559B30(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t variable initialization expression of DiscoveryController.queue()
{
  v0 = sub_22A4DDD7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DDD5C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22A4DD29C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_229562F68(0, &qword_281401980, 0x277D85C78);
  sub_22A4DD28C();
  v10[1] = MEMORY[0x277D84F90];
  sub_22955AFD0(&qword_281401990, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_22955A264();
  sub_22A4DE03C();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  return sub_22A4DDDCC();
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

unint64_t sub_22955A264()
{
  result = qword_281401CA0;
  if (!qword_281401CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87BAF0, &unk_22A5761E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401CA0);
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

uint64_t variable initialization expression of DiscoveryController.logger()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_22955A3AC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a3;
  return result;
}

uint64_t variable initialization expression of NetworkInfoController.logger()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_22955A718(uint64_t a1, int a2)
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

uint64_t sub_22955A738(uint64_t result, int a2, int a3)
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

uint64_t sub_22955A790(uint64_t a1)
{
  v2 = sub_22955AFD0(&qword_27D87C190, type metadata accessor for HMError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22955A7FC(uint64_t a1)
{
  v2 = sub_22955AFD0(&qword_27D87C190, type metadata accessor for HMError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22955A86C(uint64_t a1)
{
  v2 = sub_22955AFD0(&qword_27D87D7C0, type metadata accessor for HMError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22955A8D8(uint64_t a1, id *a2)
{
  result = sub_22A4DD5CC();
  *a2 = 0;
  return result;
}

uint64_t sub_22955A950(uint64_t a1, id *a2)
{
  v3 = sub_22A4DD5DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22955A9D0@<X0>(uint64_t *a1@<X8>)
{
  sub_22A4DD5EC();
  v2 = sub_22A4DD5AC();

  *a1 = v2;
  return result;
}

uint64_t sub_22955AA14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22A4DD5AC();

  *a2 = v5;
  return result;
}

uint64_t sub_22955AA5C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22A4DBDDC();
}

uint64_t sub_22955AAA8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22A4DBDCC();
}

uint64_t sub_22955AB00()
{
  sub_22A4DE77C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_22A4DBDCC();
  return sub_22A4DE7BC();
}

uint64_t sub_22955AB68()
{
  v1 = *v0;
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](v1);
  return sub_22A4DE7BC();
}

uint64_t sub_22955ABDC()
{
  v1 = *v0;
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](v1);
  return sub_22A4DE7BC();
}

uint64_t sub_22955AC30(uint64_t a1)
{
  v2 = sub_22955AFD0(&qword_27D87D7C0, type metadata accessor for HMError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22955AC9C(uint64_t a1)
{
  v2 = sub_22955AFD0(&qword_27D87D7C0, type metadata accessor for HMError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22955AD08(void *a1, uint64_t a2)
{
  v4 = sub_22955AFD0(&qword_27D87D7C0, type metadata accessor for HMError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22955ADBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22955AFD0(&qword_27D87D7C0, type metadata accessor for HMError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22955AE38()
{
  v2 = *v0;
  sub_22A4DE77C();
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_22955AE98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_22955AF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22955AFD0(&qword_27D87D7C0, type metadata accessor for HMError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22955AFD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22955B554()
{
  result = qword_27D87C1B8;
  if (!qword_27D87C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C1B8);
  }

  return result;
}

uint64_t sub_22955B638(uint64_t a1)
{
  v2 = sub_22955AFD0(&qword_27D87C7A0, type metadata accessor for HMFMessageName);
  v3 = sub_22955AFD0(&qword_27D87C7A8, type metadata accessor for HMFMessageName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22955B6F4(uint64_t a1)
{
  v2 = sub_22955AFD0(&qword_27D87C790, type metadata accessor for Name);
  v3 = sub_22955AFD0(&qword_27D87C798, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22955B7B0()
{
  v1 = *v0;
  v2 = sub_22A4DD5EC();
  v3 = MEMORY[0x22AAD0940](v2);

  return v3;
}

uint64_t sub_22955B7EC()
{
  v1 = *v0;
  sub_22A4DD5EC();
  sub_22A4DD6BC();
}

uint64_t sub_22955B840()
{
  v1 = *v0;
  sub_22A4DD5EC();
  sub_22A4DE77C();
  sub_22A4DD6BC();
  v2 = sub_22A4DE7BC();

  return v2;
}

uint64_t sub_22955B8B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22A4DD5EC();
  v6 = v5;
  if (v4 == sub_22A4DD5EC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();
  }

  return v9 & 1;
}

uint64_t sub_22955B93C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22A4DD5AC();
  v7 = HMDLocalizedStringForKey(v6);

  sub_22A4DD5EC();
  v8 = sub_22A4DD5BC();

  if ([a3 isThisDeviceDesignatedFMFDevice])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22A576180;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_229562E8C();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
  }

  else
  {
    v10 = [a3 fmfDeviceName];
    if (!v10)
    {

      v21 = objc_opt_self();
      v22 = sub_22A4DD5AC();
      [v21 hmErrorWithCode:2 description:0 reason:v22 suggestion:0];

      swift_willThrow();
      swift_unknownObjectRelease();
      return v8;
    }

    v11 = v10;
    v12 = sub_22A4DD5EC();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22A5761A0;
    v16 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v17 = sub_229562E8C();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 64) = v17;
    *(v15 + 72) = a1;
    *(v15 + 80) = a2;
  }

  v18 = sub_22A4DD5AC();
  v19 = HMDLocalizedStringForKey(v18);

  sub_22A4DD5EC();
  sub_22A4DD5BC();

  swift_unknownObjectRelease();

  return v8;
}

void *sub_22955BC18(void *a1)
{
  v2 = sub_22A4DD07C();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v61 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v61 - v10;
  v12 = sub_22A4DC75C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22A4DCC4C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22A4DD5EC();
  if (!a1[2])
  {

LABEL_11:
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();

    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCEC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v68 = a1;
      v69[0] = v41;
      *v40 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v42 = sub_22A4DBA6C();
      v44 = sub_2295A3E30(v42, v43, v69);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_229538000, v38, v39, "Invalid payload, missing clusterID: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);
    }

    (*(v66 + 8))(v6, v67);
    return 0;
  }

  v64 = v11;
  v65 = v18;
  v63 = v13;
  v24 = sub_229543DBC(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(a1[7] + 32 * v24, v69);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v62 = v68;
  v27 = sub_22A4DD5EC();
  if (!a1[2])
  {

    goto LABEL_17;
  }

  v29 = sub_229543DBC(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0 || (sub_2295404B0(a1[7] + 32 * v29, v69), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();

    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCEC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68 = a1;
      v69[0] = v49;
      *v48 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v50 = sub_22A4DBA6C();
      v52 = sub_2295A3E30(v50, v51, v69);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_229538000, v46, v47, "Invalid payload, missing eventID: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);
    }

    else
    {
    }

    (*(v66 + 8))(v9, v67);
    return 0;
  }

  v32 = v68;
  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  sub_22A4DCC0C();
  sub_22A4DCC3C();
  (*(v65 + 8))(v21, v17);
  v33 = sub_22A4DE7DC();
  v34 = v62;
  v35 = sub_22A4DDEDC();

  if ((v35 & 1) == 0 || (sub_22A4DC73C(), sub_22A4DC74C(), (*(v63 + 8))(v16, v12), v36 = sub_22A4DE7DC(), v37 = sub_22A4DDEDC(), v36, (v37 & 1) == 0))
  {
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    v53 = v64;
    sub_229557898();

    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDCEC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v68 = a1;
      v69[0] = v57;
      *v56 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v58 = sub_22A4DBA6C();
      v60 = sub_2295A3E30(v58, v59, v69);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_229538000, v54, v55, "Invalid payload, incorrect clusterID or eventID: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      MEMORY[0x22AAD4E50](v56, -1, -1);
    }

    else
    {
    }

    (*(v66 + 8))(v53, v67);
    return 0;
  }

  return a1;
}

uint64_t sub_22955C3AC(void *a1)
{
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_22A4DD5EC();
  if (!a1[2])
  {

LABEL_9:
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();

    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = a1;
      v40[0] = v27;
      *v26 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      v28 = sub_22A4DBA6C();
      v30 = sub_2295A3E30(v28, v29, v40);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_229538000, v24, v25, "Ignoring payload missing required custom fields dictionary: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 2;
  }

  v12 = sub_229543DBC(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2295404B0(a1[7] + 32 * v12, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = v39;
  v16 = sub_22A4DD5EC();
  if (v15[2])
  {
    v18 = sub_229543DBC(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_2295404B0(v15[7] + 32 * v18, v40);

      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v21 = v39;
        v22 = [v39 BOOLValue];

        return v22;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_16:
  sub_229562F68(0, &unk_27D87C380, off_278666068);
  sub_229557898();

  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCEC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = a1;
    v40[0] = v34;
    *v33 = 136315138;
    v35 = sub_22A4DBA6C();
    v37 = sub_2295A3E30(v35, v36, v40);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_229538000, v31, v32, "Ignoring payload missing home energy cost context: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AAD4E50](v34, -1, -1);
    MEMORY[0x22AAD4E50](v33, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  return 2;
}

uint64_t sub_22955C810()
{
  v0 = sub_22A4DD5AC();
  v1 = HMDLocalizedStringForKey(v0);

  sub_22A4DD5EC();
  v2 = sub_22A4DD5BC();

  return v2;
}

uint64_t sub_22955C8C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22A4DD07C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22A4DB91C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_22A4DB74C();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = swift_task_alloc();
  v2[13] = v12;
  *v12 = v2;
  v12[1] = sub_22955CA6C;

  return sub_2297D39D4();
}

uint64_t sub_22955CA6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_22955CE44;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_22955CB94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_22955CB94()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[2];
  v3 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x277CD1F18]);
  sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
  v6 = sub_22A4DD81C();

  v7 = [v5 initWithScheduleRules_];

  v8 = [objc_msgSend(v4 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();
  v9 = [v3 timeZone];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = v0[9];

  sub_22A4DB8FC();
  v12 = [v7 scheduleRules];
  v13 = sub_22A4DD83C();

  if (v13 >> 62)
  {
    v14 = sub_22A4DE0EC();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 != 1)
  {
    v21 = 0;
    goto LABEL_10;
  }

  v15 = [v7 scheduleRules];
  v16 = sub_22A4DD83C();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x22AAD13F0](0, v16);
    goto LABEL_8;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v17 = *(v16 + 32);
LABEL_8:
  v18 = v17;
  v19 = v0[12];
  v20 = v0[9];

  v21 = sub_22965A44C(v19, v20);

  v7 = v18;
LABEL_10:
  v23 = v0[8];
  v22 = v0[9];
  v24 = v0[7];

  (*(v23 + 8))(v22, v24);
  v25 = v0[9];
  v26 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v27 = v0[1];

  v27(v21 & 1);
}

uint64_t sub_22955CE44()
{
  v1 = v0[14];
  v2 = v0[6];
  sub_229562F68(0, &unk_27D87C380, off_278666068);
  sub_229557898();
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Failed to fetch sleep schedule rules: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[12];
  v13 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_22955D004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  v8 = sub_22A4DCA0C();
  v7[31] = v8;
  v9 = *(v8 - 8);
  v7[32] = v9;
  v10 = *(v9 + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[40] = v11;
  v12 = *(v11 - 8);
  v7[41] = v12;
  v13 = *(v12 + 64) + 15;
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70) - 8) + 64) + 15;
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v15 = sub_22A4DC8EC();
  v7[51] = v15;
  v16 = *(v15 - 8);
  v7[52] = v16;
  v17 = *(v16 + 64) + 15;
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22955D274, 0, 0);
}

uint64_t sub_22955D274()
{
  v196 = v0;
  v1 = v0;
  v2 = v0[55];
  v3 = v0[52];
  v4 = v1[51];
  v5 = v1[24];
  sub_22A4DC9CC();
  v6 = (*(v3 + 88))(v2, v4);
  *(v1 + 114) = v6;
  if (v6 == *MEMORY[0x277D172E0])
  {
    v7 = v1[28];
    if (v7)
    {
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          v8 = v1[25];
          if (v8 && *(v8 + 16) && (v9 = sub_229543DBC(0xD000000000000017, 0x800000022A589450), (v10 & 1) != 0) && (sub_2295404B0(*(v8 + 56) + 32 * v9, (v1 + 2)), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) != 0))
          {
            v11 = v1[50];
            v12 = *(v1 + 462);
            sub_22A4DC8CC();
          }

          else
          {
            (*(v1[52] + 56))(v1[50], 1, 1, v1[51]);
          }

          v76 = swift_task_alloc();
          v1[56] = v76;
          *v76 = v1;
          v76[1] = sub_22955E2BC;
          v77 = v1[27];
          v78 = v1[26];

          return sub_22955C8C4(v78, v77);
        }

        v63 = v1[46];
        v64 = v1[37];
        v65 = v1[31];
        v66 = v1[32];
        v67 = v1[30];
        v68 = v1[24];
        sub_229562F68(0, &unk_27D87C380, off_278666068);
        sub_229557898();
        (*(v66 + 16))(v64, v68, v65);

        v47 = sub_22A4DD05C();
        v48 = sub_22A4DDCEC();

        v69 = os_log_type_enabled(v47, v48);
        v50 = v1[46];
        v52 = v1[40];
        v51 = v1[41];
        v53 = v1[37];
        v55 = v1[31];
        v54 = v1[32];
        if (v69)
        {
          v179 = v1[30];
          v174 = *(v1 + 14);
          v194 = v1[40];
          v56 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v195 = v186;
          *v56 = 136315394;
          v70 = v1;
          v71 = sub_22A4DBA6C();
          v191 = v50;
          v73 = v72;
          (*(v54 + 8))(v53, v55);
          v74 = v71;
          v1 = v70;
          v75 = sub_2295A3E30(v74, v73, &v195);

          *(v56 + 4) = v75;
          *(v56 + 12) = 2080;
          *(v70 + 15) = v174;
          v70[17] = v179;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C400, &qword_22A576ED0);
LABEL_37:
          v116 = sub_22A4DBA6C();
          v118 = sub_2295A3E30(v116, v117, &v195);

          *(v56 + 14) = v118;
          v102 = "Ignoring event with unhandled occupancy driver: %s, %s";
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      v40 = v1[30];
      if (v40)
      {
        goto LABEL_30;
      }

      v132 = v1[48];
      v133 = v1[39];
      v134 = v1[31];
      v135 = v1[32];
      v136 = v1[24];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      (*(v135 + 16))(v133, v136, v134);
      v137 = sub_22A4DD05C();
      v138 = sub_22A4DDCEC();
      v139 = os_log_type_enabled(v137, v138);
      v140 = v1[48];
      v141 = v1[40];
      v51 = v1[41];
      v142 = v1[39];
      v144 = v1[31];
      v143 = v1[32];
      if (v139)
      {
        v183 = v1[29];
        v194 = v1[40];
        v145 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v195 = v188;
        *v145 = 136315394;
        v146 = v1;
        v147 = sub_22A4DBA6C();
        v191 = v140;
        v149 = v148;
        (*(v143 + 8))(v142, v144);
        v150 = v147;
        v1 = v146;
        v151 = sub_2295A3E30(v150, v149, &v195);

        *(v145 + 4) = v151;
        *(v145 + 12) = 2080;
        v146[21] = 2;
        v146[22] = v183;
        v146[23] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C400, &qword_22A576ED0);
LABEL_50:
        v164 = sub_22A4DBA6C();
        v166 = sub_2295A3E30(v164, v165, &v195);

        *(v145 + 14) = v166;
        _os_log_impl(&dword_229538000, v137, v138, "Ignoring event with invalid local occupancy settings: %s, %s", v145, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v188, -1, -1);
        MEMORY[0x22AAD4E50](v145, -1, -1);

        goto LABEL_39;
      }

      goto LABEL_51;
    }

    v41 = v1[47];
    v42 = v1[38];
    v43 = v1[31];
    v44 = v1[32];
    v45 = v1[30];
    v46 = v1[24];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v44 + 16))(v42, v46, v43);

    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCEC();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v1[47];
    v52 = v1[40];
    v51 = v1[41];
    v53 = v1[38];
    v55 = v1[31];
    v54 = v1[32];
    if (!v49)
    {
      goto LABEL_40;
    }

    v178 = v1[30];
    v173 = v1[29];
    v194 = v1[40];
    v56 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v195 = v186;
    *v56 = 136315394;
    v57 = v1;
    v58 = sub_22A4DBA6C();
    v191 = v50;
    v60 = v59;
    (*(v54 + 8))(v53, v55);
    v61 = v58;
    v1 = v57;
    v62 = sub_2295A3E30(v61, v60, &v195);

    *(v56 + 4) = v62;
    *(v56 + 12) = 2080;
    v57[18] = 0;
    v57[19] = v173;
    v57[20] = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C400, &qword_22A576ED0);
LABEL_34:
    v99 = sub_22A4DBA6C();
    v101 = sub_2295A3E30(v99, v100, &v195);

    *(v56 + 14) = v101;
    v102 = "Ignoring event with unknown occupancy driver: %s, %s";
LABEL_38:
    _os_log_impl(&dword_229538000, v47, v48, v102, v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v186, -1, -1);
    MEMORY[0x22AAD4E50](v56, -1, -1);

LABEL_39:
    (*(v51 + 8))(v191, v194);
LABEL_42:
    v189 = 0;
    v192 = 0;
    goto LABEL_43;
  }

  if (v6 != *MEMORY[0x277D172B8])
  {
    v18 = v1[42];
    v20 = v1[32];
    v19 = v1[33];
    v21 = v1[31];
    v22 = v1[24];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v1[41];
    v26 = v1[42];
    v28 = v1[40];
    v29 = v1[32];
    v30 = v1[33];
    v31 = v1[31];
    if (v25)
    {
      v185 = v24;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v195 = v33;
      *v32 = 136315138;
      v190 = v26;
      v193 = v28;
      v34 = v1;
      v35 = sub_22A4DBA6C();
      v37 = v36;
      (*(v29 + 8))(v30, v31);
      v38 = v35;
      v1 = v34;
      v39 = sub_2295A3E30(v38, v37, &v195);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_229538000, v23, v185, "Ignoring event with invalid occupancy scenario: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      (*(v27 + 8))(v190, v193);
    }

    else
    {

      (*(v29 + 8))(v30, v31);
      (*(v27 + 8))(v26, v28);
    }

    (*(v1[52] + 8))(v1[55], v1[51]);
    goto LABEL_42;
  }

  v13 = v1[28];
  if (!v13)
  {
    v86 = v1[44];
    v87 = v1[35];
    v88 = v1[31];
    v89 = v1[32];
    v90 = v1[30];
    v91 = v1[24];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v89 + 16))(v87, v91, v88);

    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCEC();

    v92 = os_log_type_enabled(v47, v48);
    v50 = v1[44];
    v52 = v1[40];
    v51 = v1[41];
    v53 = v1[35];
    v55 = v1[31];
    v54 = v1[32];
    if (!v92)
    {
      goto LABEL_40;
    }

    v180 = v1[30];
    v175 = v1[29];
    v194 = v1[40];
    v56 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v195 = v186;
    *v56 = 136315394;
    v93 = v1;
    v94 = sub_22A4DBA6C();
    v191 = v50;
    v96 = v95;
    (*(v54 + 8))(v53, v55);
    v97 = v94;
    v1 = v93;
    v98 = sub_2295A3E30(v97, v96, &v195);

    *(v56 + 4) = v98;
    *(v56 + 12) = 2080;
    v93[9] = 0;
    v93[10] = v175;
    v93[11] = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C400, &qword_22A576ED0);
    goto LABEL_34;
  }

  if (v13 == 2)
  {
    v40 = v1[30];
    if (v40)
    {
LABEL_30:
      v80 = v1[29];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_22A576180;
      *(v81 + 56) = MEMORY[0x277D837D0];
      *(v81 + 64) = sub_229562E8C();
      *(v81 + 32) = v80;
      *(v81 + 40) = v40;

      v82 = sub_22A4DD5AC();
      v83 = HMDLocalizedStringForKey(v82);

      sub_22A4DD5EC();
      v84 = sub_22A4DD5BC();
      v189 = v85;
      v192 = v84;

      goto LABEL_31;
    }

    v152 = v1[45];
    v153 = v1[36];
    v154 = v1[31];
    v155 = v1[32];
    v156 = v1[24];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v155 + 16))(v153, v156, v154);
    v137 = sub_22A4DD05C();
    v138 = sub_22A4DDCEC();
    v157 = os_log_type_enabled(v137, v138);
    v140 = v1[45];
    v141 = v1[40];
    v51 = v1[41];
    v142 = v1[36];
    v144 = v1[31];
    v143 = v1[32];
    if (v157)
    {
      v184 = v1[29];
      v194 = v1[40];
      v145 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v195 = v188;
      *v145 = 136315394;
      v158 = v1;
      v159 = sub_22A4DBA6C();
      v191 = v140;
      v161 = v160;
      (*(v143 + 8))(v142, v144);
      v162 = v159;
      v1 = v158;
      v163 = sub_2295A3E30(v162, v161, &v195);

      *(v145 + 4) = v163;
      *(v145 + 12) = 2080;
      v158[12] = 2;
      v158[13] = v184;
      v158[14] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C400, &qword_22A576ED0);
      goto LABEL_50;
    }

LABEL_51:

    (*(v143 + 8))(v142, v144);
    (*(v51 + 8))(v140, v141);
    goto LABEL_42;
  }

  if (v13 != 1)
  {
    v103 = v1[43];
    v104 = v1[34];
    v105 = v1[31];
    v106 = v1[32];
    v107 = v1[30];
    v108 = v1[24];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v106 + 16))(v104, v108, v105);

    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCDC();

    v109 = os_log_type_enabled(v47, v48);
    v50 = v1[43];
    v52 = v1[40];
    v51 = v1[41];
    v53 = v1[34];
    v55 = v1[31];
    v54 = v1[32];
    if (v109)
    {
      v181 = v1[30];
      v176 = *(v1 + 14);
      v194 = v1[40];
      v56 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v195 = v186;
      *v56 = 136315394;
      v110 = v1;
      v111 = sub_22A4DBA6C();
      v191 = v50;
      v113 = v112;
      (*(v54 + 8))(v53, v55);
      v114 = v111;
      v1 = v110;
      v115 = sub_2295A3E30(v114, v113, &v195);

      *(v56 + 4) = v115;
      *(v56 + 12) = 2080;
      *(v110 + 3) = v176;
      v110[8] = v181;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C400, &qword_22A576ED0);
      goto LABEL_37;
    }

LABEL_40:

    (*(v54 + 8))(v53, v55);
    (*(v51 + 8))(v50, v52);
    goto LABEL_42;
  }

  v14 = sub_22A4DD5AC();
  v15 = HMDLocalizedStringForKey(v14);

  sub_22A4DD5EC();
  v16 = sub_22A4DD5BC();
  v189 = v17;
  v192 = v16;
LABEL_31:

LABEL_43:
  v119 = v1;
  v122 = v1 + 54;
  v121 = v1[54];
  v120 = v122[1];
  v123 = v119[53];
  v125 = v119[49];
  v124 = v119[50];
  v126 = v119[47];
  v127 = v119[48];
  v129 = v119[45];
  v128 = v119[46];
  v130 = v119[44];
  v167 = v119[43];
  v168 = v119[42];
  v169 = v119[39];
  v170 = v119[38];
  v171 = v119[37];
  v172 = v119[36];
  v177 = v119[35];
  v182 = v119[34];
  v187 = v119[33];

  v131 = v119[1];

  return v131(v192, v189);
}