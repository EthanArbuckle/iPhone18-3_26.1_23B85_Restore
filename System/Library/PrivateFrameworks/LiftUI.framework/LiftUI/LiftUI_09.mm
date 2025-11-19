uint64_t sub_255DE935C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84D0, &unk_255E55A18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_255DE9718();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    LOBYTE(v19[0]) = 0;
    sub_255D7B658();
    sub_255E3ABA8();
    v9 = v21;
    if (v21)
    {
      v10 = *(v21 + 16);
      if (v10)
      {
        v16 = v4;
        v17 = v3;
        v20 = MEMORY[0x277D84F90];
        sub_255DE5EF0(0, v10, 0);
        v8 = v20;
        v15 = v9;
        v11 = v9 + 32;
        do
        {
          sub_255D7B730(v11, v18);
          sub_255D34630(v18, v19);
          v20 = v8;
          v13 = *(v8 + 16);
          v12 = *(v8 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_255DE5EF0((v12 > 1), v13 + 1, 1);
            v8 = v20;
          }

          *(v8 + 16) = v13 + 1;
          sub_255D34630(v19, v8 + 40 * v13 + 32);
          v11 += 40;
          --v10;
        }

        while (v10);

        v4 = v16;
        v3 = v17;
      }

      else
      {

        v8 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = 0;
    }

    LOBYTE(v19[0]) = 1;
    sub_255E3AB88();
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v8;
}

uint64_t sub_255DE9654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8148, &qword_255E53910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DE96C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_255DE9718()
{
  result = qword_27F7E84D8;
  if (!qword_27F7E84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E84D8);
  }

  return result;
}

unint64_t sub_255DE976C()
{
  result = qword_27F7E84E8;
  if (!qword_27F7E84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E84E8);
  }

  return result;
}

unint64_t sub_255DE97E4()
{
  result = qword_27F7E84F0;
  if (!qword_27F7E84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E84F0);
  }

  return result;
}

unint64_t sub_255DE983C()
{
  result = qword_27F7E84F8;
  if (!qword_27F7E84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E84F8);
  }

  return result;
}

unint64_t sub_255DE9894()
{
  result = qword_27F7E8500;
  if (!qword_27F7E8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8500);
  }

  return result;
}

unint64_t sub_255DE98EC()
{
  result = qword_27F7E8508;
  if (!qword_27F7E8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8508);
  }

  return result;
}

unint64_t sub_255DE9944()
{
  result = qword_27F7E8510;
  if (!qword_27F7E8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8510);
  }

  return result;
}

unint64_t sub_255DE999C()
{
  result = qword_27F7E8518;
  if (!qword_27F7E8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8518);
  }

  return result;
}

uint64_t sub_255DE99F0()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_255DE9A3C(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for BasicLiftUIDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_255E3A4C8();
  v5 = [v3 objectForInfoDictionaryKey_];

  if (v5)
  {
    sub_255E3A8D8();
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
      sub_255E383D8();
    }
  }

  else
  {
    sub_255D395E4(v8, &qword_27F7E7C08, &qword_255E4EF88);
  }

  sub_255E383D8();
}

uint64_t LiftUIDataSource.request(for:)(uint64_t a1)
{
  v2 = sub_255E38588();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E383B8();
}

uint64_t BasicLiftUIDataSource.data(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255DD8034;

  return sub_255DEA664(a1);
}

uint64_t BasicLiftUIDataSource.request(for:)(uint64_t a1)
{
  v2 = sub_255E38588();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E383B8();
}

uint64_t sub_255DE9EC0(uint64_t a1)
{
  v2 = sub_255E38588();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E383B8();
}

uint64_t sub_255DE9FA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255DEB140;

  return sub_255DEA664(a1);
}

void static RemoteLoader.requestWithLiftUIHeaders(request:reloadType:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_255E38408();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = v5;
  sub_255DE9A3C(&v7);
}

uint64_t sub_255DEA0CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for AnyWeakDataSource();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_255E398D8();
}

uint64_t EnvironmentValues.liftUIDataSource.getter()
{
  sub_255D397C4();
  sub_255E38D58();
  return v1;
}

uint64_t _s7SwiftUI4ViewP04LiftB0E14liftUIDelegateyQrAD0dF0_pF_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for AnyWeakDelegate();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_255E398D8();
}

uint64_t EnvironmentValues.liftUIDelegate.getter()
{
  sub_255D39770();
  sub_255E38D58();
  return v1;
}

uint64_t sub_255DEA354()
{
  type metadata accessor for BasicLiftUIDataSource();
  result = swift_allocObject();
  *&xmmword_27F7E8520 = result;
  *(&xmmword_27F7E8520 + 1) = &protocol witness table for BasicLiftUIDataSource;
  return result;
}

uint64_t sub_255DEA38C@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27F7E5E78 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27F7E8520;

  return swift_unknownObjectRetain();
}

void (*EnvironmentValues.liftUIDataSource.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_255D397C4();
  sub_255E38D58();
  *v4 = v4[1];
  return sub_255DEA4A4;
}

void sub_255DEA4A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  *(*a1 + 1) = **a1;
  v3 = v2[4];
  v4 = v2[5];
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_255E38D68();
    v5 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v2[5];
    sub_255E38D68();
  }

  free(v2);
}

void (*EnvironmentValues.liftUIDelegate.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_255D39770();
  sub_255E38D58();
  *v4 = v4[1];
  return sub_255DEA5D0;
}

void sub_255DEA5D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  *(*a1 + 1) = **a1;
  v3 = v2[4];
  v4 = v2[5];
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_255E38D68();
    v5 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v2[5];
    sub_255E38D68();
  }

  free(v2);
}

uint64_t sub_255DEA664(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_255E38588();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255DEA75C, 0, 0);
}

uint64_t sub_255DEA75C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_255E383C8();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_255D395E4(v0[3], &qword_27F7E6B28, &unk_255E48060);
LABEL_6:
    v0[7] = [objc_opt_self() sharedSession];
    v6 = *(MEMORY[0x277CC9D18] + 4);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_255DEA9B0;
    v8 = v0[2];

    return MEMORY[0x28211ECF8](v8, 0);
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  if ((sub_255E38548() & 1) == 0)
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    goto LABEL_6;
  }

  v5 = sub_255E38598();
  v10 = v9;
  (*(v0[5] + 8))(v0[6], v0[4]);
  v11 = v0[6];
  v12 = v0[3];

  v13 = v0[1];

  return v13(v5, v10);
}

uint64_t sub_255DEA9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 64);
  v9 = *v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 96) = v3;

  if (v3)
  {
    v7 = sub_255DEACAC;
  }

  else
  {

    v7 = sub_255DEAAD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_255DEAAD0()
{
  v1 = v0[11];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[11];
  if (!v2)
  {
LABEL_4:

    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[6];
    v9 = v0[3];

    v10 = v0[1];

    return v10(v6, v7);
  }

  v4 = v2;
  v5 = v3;
  if ([v4 statusCode] - 200 <= 0x63)
  {
    v3 = v0[11];

    goto LABEL_4;
  }

  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[9];
  v15 = v0[2];
  type metadata accessor for RemoteLoaderError(0);
  sub_255DEB0DC();
  swift_allocError();
  v17 = v16;
  v18 = sub_255E38408();
  (*(*(v18 - 8) + 16))(v17, v15, v18);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_255D37E60(v14, v12);
  v19 = v0[6];
  v20 = v0[3];

  v21 = v0[1];

  return v21();
}

uint64_t sub_255DEACAC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t dispatch thunk of LiftUIDataSource.data(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_255DEAE74;

  return v11(a1, a2, a3);
}

uint64_t sub_255DEAE74(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy04LiftB00J12UIDataSource_pGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_255E38AE8();
  sub_255DEB068(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_255DEB068(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_255DEB0DC()
{
  result = qword_27F7E73D8;
  if (!qword_27F7E73D8)
  {
    type metadata accessor for RemoteLoaderError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E73D8);
  }

  return result;
}

uint64_t sub_255DEB154()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DEB1D8()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DEB234@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255DEB2D4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DEB32C(uint64_t a1)
{
  v2 = sub_255DEB96C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DEB368(uint64_t a1)
{
  v2 = sub_255DEB96C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DEB3A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8560, &qword_255E560E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DEB96C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DEB524@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8548, &qword_255E560D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - v10;
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v22 = *v3;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  sub_255D3E5A8(v22, v12, v13, v14);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
  }

  sub_255D38060(v22, v23, v24, v25);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_255DEB854();
  if (v16 <= 1)
  {
    if (v16)
    {
      sub_255E39128();
    }

    else
    {
      sub_255E39148();
    }

    goto LABEL_12;
  }

  if (v16 == 2)
  {
    sub_255E39138();
    goto LABEL_12;
  }

  if (v16 == 3)
  {
    sub_255E39158();
LABEL_12:
    v18 = sub_255E39168();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
    goto LABEL_13;
  }

  v17 = sub_255E39168();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8550, &qword_255E560D8);
  a3[3] = sub_255E38AE8();
  v19 = sub_255DEB8A0();
  v21[0] = v15;
  v21[1] = v19;
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39A88();
  return sub_255DEB904(v11);
}

unint64_t sub_255DEB7D8(uint64_t a1)
{
  result = sub_255DEB800();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DEB800()
{
  result = qword_27F7E8540;
  if (!qword_27F7E8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8540);
  }

  return result;
}

uint64_t sub_255DEB854()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255DEB8A0()
{
  result = qword_27F7E8558;
  if (!qword_27F7E8558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8550, &qword_255E560D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8558);
  }

  return result;
}

uint64_t sub_255DEB904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8548, &qword_255E560D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DEB96C()
{
  result = qword_27F7E8568;
  if (!qword_27F7E8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8568);
  }

  return result;
}

unint64_t sub_255DEB9D4()
{
  result = qword_27F7E8570;
  if (!qword_27F7E8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8570);
  }

  return result;
}

unint64_t sub_255DEBA2C()
{
  result = qword_27F7E8578;
  if (!qword_27F7E8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8578);
  }

  return result;
}

unint64_t sub_255DEBA84()
{
  result = qword_27F7E8580;
  if (!qword_27F7E8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8580);
  }

  return result;
}

void *sub_255DEBAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(a3 + 16))(v20);
  if (!v4)
  {
    v21 = a1;
    v10 = (*(a3 + 24))(a2, a3);
    result = sub_255D3CE1C(v20, a4);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v10 + 32;
      while (v12 < *(v10 + 16))
      {
        sub_255D3CE1C(v13, v17);
        v14 = v18;
        v15 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v15 + 16))(v16, a4, v21, v14, v15);
        ++v12;
        __swift_destroy_boxed_opaque_existential_1Tm(a4);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        result = sub_255D34630(v16, a4);
        v13 += 40;
        if (v11 == v12)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }
  }

  return result;
}

uint64_t sub_255DEBC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265696669646F6DLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DEBD00(uint64_t a1)
{
  v2 = sub_255DED428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DEBD3C(uint64_t a1)
{
  v2 = sub_255DED428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DEBD78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E85B8, &qword_255E56460);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v48 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v14 = sub_255E3AAE8();
  v15 = __swift_project_value_buffer(v14, qword_27F8152F0);
  if (!*(v13 + 16) || (v16 = sub_255D3CA98(v15), (v17 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v13 + 56) + 32 * v16, &v64);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError();
    sub_255DED5C4(&qword_27F7E61A0, type metadata accessor for ContentRegistryError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v55 = v7;
  v54 = v4;
  v56 = v8;
  v18 = *&v63[0];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v53 = v18;
  v22 = v71;
  v23 = sub_255E3ABD8();
  if (!*(v23 + 16))
  {

    type metadata accessor for DynamicKeyError();
    sub_255DED5C4(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
    swift_allocError();
    sub_255E3AB68();
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v56 + 8))(v11, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = *(v23 + 40);
  v51 = *(v23 + 32);
  v25 = *(v23 + 48);
  LODWORD(v52) = *(v23 + 56);
  swift_bridgeObjectRetain_n();

  v26 = sub_255E3AB68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
  v27 = v25;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 56) = &type metadata for DynamicKey;
  *(inited + 64) = v20;
  v29 = v52;
  v30 = swift_allocObject();
  *(inited + 32) = v30;
  v31 = v51;
  *(v30 + 16) = v51;
  *(v30 + 24) = v24;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  *&v64 = v26;

  sub_255D3CDA0(inited);
  v32 = sub_255E0AAE8(v31, v24);
  v50 = v33;
  v34 = v32;

  v59 = v31;
  v60 = v24;
  v61 = v27;
  v62 = v29;
  sub_255E3AB78();
  v49 = v27;
  v66 = v34;
  v35 = v50;
  v67 = v50;
  __swift_allocate_boxed_opaque_existential_1(&v64);
  v36 = *(v35 + 8);
  sub_255E3A7B8();
  sub_255D34630(&v64, v68);
  *&v64 = v31;
  *(&v64 + 1) = v24;
  v65 = v49;
  LOBYTE(v66) = v52;
  sub_255DED428();
  v37 = v55;
  sub_255E3AB58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E85C8, &qword_255E56468);
  sub_255DED47C();
  v38 = v54;
  sub_255E3ABA8();
  if (v64)
  {
    v39 = v64;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v40 = *(v39 + 16);
  if (v40)
  {
    v59 = MEMORY[0x277D84F90];
    sub_255DE5FF0(0, v40, 0);
    v41 = v59;
    v52 = v39;
    v42 = v39 + 32;
    do
    {
      sub_255DED554(v42, v63);
      sub_255D34630(v63, &v64);
      v59 = v41;
      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v51 = v44 + 1;
        sub_255DE5FF0((v43 > 1), v44 + 1, 1);
        v45 = v51;
        v41 = v59;
      }

      *(v41 + 16) = v45;
      sub_255D34630(&v64, v41 + 40 * v44 + 32);
      v42 += 40;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v46 = v69;
  v47 = v70;
  __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  (*(v47 + 32))(v41, v46, v47);

  (*(v58 + 8))(v37, v38);
  (*(v56 + 8))(v11, v71);
  sub_255DED58C(v68, v57);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255DB0548(v68);
}

uint64_t sub_255DEC6D0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v12 = sub_255E3AAE8();
  v13 = __swift_project_value_buffer(v12, qword_27F8152F0);
  if (!*(v11 + 16) || (v14 = sub_255D3CA98(v13), (v15 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v11 + 56) + 32 * v14, &v48);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError();
    sub_255DED5C4(&qword_27F7E61A0, type metadata accessor for ContentRegistryError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v42 = v5;
  v53 = v6;
  v41 = a2;
  v16 = v47;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v40 = v16;
    v20 = v42;
    v21 = sub_255E3ABD8();
    if (*(v21 + 16))
    {
      v22 = *(v21 + 32);
      v23 = *(v21 + 40);
      v38 = *(v21 + 48);
      v39 = *(v21 + 56);
      swift_bridgeObjectRetain_n();

      v24 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v18;
      v26 = swift_allocObject();
      *(inited + 32) = v26;
      *(v26 + 16) = v22;
      *(v26 + 24) = v23;
      v27 = v38;
      *(v26 + 32) = v38;
      *(v26 + 40) = v39;
      *&v48 = v24;

      sub_255D3CDA0(inited);
      v28 = v22;
      v29 = sub_255E0AE3C(v22, v23);
      v30 = v53;
      v37 = v31;
      v36 = v29;

      v43 = v28;
      v44 = v23;
      v45 = v27;
      v46 = v39;
      sub_255E3AB78();

      v32 = v37;
      v49 = v36;
      v50 = v37;
      __swift_allocate_boxed_opaque_existential_1(&v48);
      v33 = *(v32 + 8);
      sub_255E3A7B8();
      (*(v30 + 8))(v9, v20);

      sub_255D34630(&v48, v51);
      v34 = v51[1];
      v35 = v41;
      *v41 = v51[0];
      v35[1] = v34;
      *(v35 + 4) = v52;
    }

    else
    {

      type metadata accessor for DynamicKeyError();
      sub_255DED5C4(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v53 + 8))(v9, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DECCC4()
{
  if (*v0)
  {
    result = 0x61696C6169746E61;
  }

  else
  {
    result = 0x6C6C69466F65;
  }

  *v0;
  return result;
}

uint64_t sub_255DECD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C69466F65 && a2 == 0xE600000000000000;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61696C6169746E61 && a2 == 0xEB00000000646573)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255DECDE0(uint64_t a1)
{
  v2 = sub_255DED220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DECE1C(uint64_t a1)
{
  v2 = sub_255DED220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FillStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8588, &unk_255E56240);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DED220();
  sub_255E3AE58();
  v10[15] = 0;
  sub_255E3AC08();
  if (!v1)
  {
    v10[14] = 1;
    sub_255E3AC08();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_255DECFF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DED060(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_255DED030(void *a1)
{
  v2 = *v1;
  v1[1];
  return FillStyle.encode(to:)(a1);
}

uint64_t sub_255DED060(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E85B0, &qword_255E563F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DED220();
  sub_255E3AE28();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13[15] = 0;
  v9 = sub_255E3AB98();
  v13[14] = 1;
  v10 = sub_255E3AB98();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if ((v10 == 2) | v10 & 1)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

unint64_t sub_255DED220()
{
  result = qword_27F7E8590;
  if (!qword_27F7E8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8590);
  }

  return result;
}

unint64_t sub_255DED314()
{
  result = qword_27F7E8598;
  if (!qword_27F7E8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8598);
  }

  return result;
}

unint64_t sub_255DED36C()
{
  result = qword_27F7E85A0;
  if (!qword_27F7E85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85A0);
  }

  return result;
}

unint64_t sub_255DED3C4()
{
  result = qword_27F7E85A8;
  if (!qword_27F7E85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85A8);
  }

  return result;
}

unint64_t sub_255DED428()
{
  result = qword_27F7E85C0;
  if (!qword_27F7E85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85C0);
  }

  return result;
}

unint64_t sub_255DED47C()
{
  result = qword_27F7E85D0;
  if (!qword_27F7E85D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E85C8, &qword_255E56468);
    sub_255DED500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85D0);
  }

  return result;
}

unint64_t sub_255DED500()
{
  result = qword_27F7E85D8;
  if (!qword_27F7E85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85D8);
  }

  return result;
}

uint64_t sub_255DED5C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255DED630()
{
  result = qword_27F7E85E0;
  if (!qword_27F7E85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85E0);
  }

  return result;
}

unint64_t sub_255DED688()
{
  result = qword_27F7E85E8;
  if (!qword_27F7E85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85E8);
  }

  return result;
}

unint64_t sub_255DED6E0()
{
  result = qword_27F7E85F0;
  if (!qword_27F7E85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E85F0);
  }

  return result;
}

uint64_t sub_255DED764(void (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  a1();
  return v5;
}

uint64_t RemoteStateStore.set(reference:value:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (*(a1 + 24) != 1)
  {
    sub_255D5C33C();
    swift_allocError();
    v21 = v20;
    *(v20 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v22 = swift_allocObject();
    *v21 = v22;
    *(v22 + 16) = v4;
    *(v22 + 24) = v5;
    *(v22 + 32) = v6;
    *(v22 + 40) = 0;
    *(v21 + 32) = 2;
    swift_willThrow();
  }

  v7 = *a2;
  if (!*(v2 + qword_27F7E85F8))
  {
    return sub_255DEF304(v2, v7, v4, v5, v6, 1);
  }

  v8 = v3;
  v9 = qword_27F7E8600;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *(v10 + 16);

  if (!v11 || (v12 = sub_255D3CA20(v4, v5), (v13 & 1) == 0))
  {
    swift_endAccess();

    return sub_255DEF304(v2, v7, v4, v5, v6, 1);
  }

  v14 = *(v10 + 56) + 32 * v12;
  v16 = *v14;
  v15 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  swift_endAccess();
  sub_255D5C258(v16, v15, v17, v18);
  sub_255DEE318(v6, v16, v15, v17, v18, v27);
  if (v8)
  {

    return sub_255D4DE84(v16, v15, v17, v18);
  }

  else
  {
    v23 = v27[0];
    v24 = v27[1];
    v26 = v27[2];
    v25 = v28;
    v29 = v7;
    RemoteStateStore.set(reference:value:)(v27, &v29);
    sub_255D4DE84(v16, v15, v17, v18);

    return sub_255D4DE84(v23, v24, v26, v25);
  }
}

uint64_t RemoteStateStore.__allocating_init(parent:initialSet:referenceKeyMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(a1, a2, a3);
}

uint64_t LocalStateStore.getScrollViewProxy(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s6LiftUI15LocalStateStoreCyypSgSScig_0(a1, a2, &v8);
  if (v9)
  {
    v4 = sub_255E38B18();
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a3, v5 ^ 1u, 1, v4);
  }

  else
  {
    sub_255D395E4(&v8, &qword_27F7E7C08, &qword_255E4EF88);
    v7 = sub_255E38B18();
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

void sub_255DEDB88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEE4FC(v9, a4, &v18);
      sub_255D2F870(a4);
      v9 = v18;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76A8, &unk_255E567B0);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    sub_255D348B4(a2, a3, a4, 0);
  }
}

uint64_t sub_255DEDD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEE74C(v9, a4, &v19);
      sub_255D2F870(a4);
      v9 = v19;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    return sub_255D3E5D8(a2, a3, a4, 0);
  }
}

void sub_255DEDF50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEE99C(v9, a4, &v18);
      sub_255D2F870(a4);
      v9 = v18;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    sub_255D348B4(a2, a3, a4, 0);
  }
}

void sub_255DEE134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEEBEC(v9, a4, &v18);
      sub_255D2F870(a4);
      v9 = v18;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E86C0, &unk_255E567C0);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    sub_255D348B4(a2, a3, a4, 0);
  }
}

uint64_t sub_255DEE318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEEE3C(v9, a4, &v19);
      sub_255D2F870(a4);
      v9 = v19;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    return sub_255D5C258(a2, a3, a4, 0);
  }
}

void sub_255DEE4FC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEE4FC(&v19, a1, v16);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEE4FC(&v19, a1, v9);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEE74C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEE74C(&v19, a1, v16);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEE74C(&v19, a1, v9);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEE99C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEE99C(&v19, a1, v16);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEE99C(&v19, a1, v9);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEEBEC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEEBEC(&v19, a1, v16);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEEBEC(&v19, a1, v9);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEEE3C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEEE3C(&v19, a1, v16);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEEE3C(&v19, a1, v9);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

uint64_t RemoteStateStore.binding<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = v4;
  v9[7] = a1;
  v9[8] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = v4;
  v10[7] = a1;
  v10[8] = a2;
  sub_255E3A8A8();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return sub_255E3A068();
}

uint64_t RemoteStateStore.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + qword_27F7E85F8);
  if (v6)
  {
    v7 = a3;
    v8 = qword_27F7E8600;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = *(v9 + 16);

    if (v10)
    {
      v11 = sub_255D3CA20(a1, a2);
      if (v12)
      {
        v13 = *(v9 + 56) + 32 * v11;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        swift_endAccess();
        sub_255D5C258(v14, v15, v16, v17);
        sub_255DDEBF8(v19, v6, v14, v15, v16, v17);

        result = sub_255D4DE84(v14, v15, v16, v17);
        *v7 = v19[0];
        return result;
      }
    }

    swift_endAccess();

    a3 = v7;
  }

  return sub_255DE3530(a1, a2, a3);
}

uint64_t sub_255DEF304(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a5;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
  }

  RemoteStateStore.subscript.getter(a3, a4, &v23);
  v12 = v23;
  if ((~v23 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v23);
    sub_255D5C33C();
    swift_allocError();
    *v13 = a3;
    *(v13 + 8) = a4;
    *(v13 + 16) = &type metadata for DecodableState;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  sub_255D5C324(v12);
  if ((v12 >> 61) >= 4)
  {
    if (v12 >> 61 == 4)
    {
      if ((~a5 & 0xF000000000000007) != 0)
      {
        v18 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        sub_255D5C30C(v12);
        sub_255D34858(a5);

        sub_255DF0CC0(v19, a5, a2, a1, &v23);

        if (v6)
        {
          sub_255D5C324(v12);
          sub_255D2F870(a5);
          return sub_255D5C324(v12);
        }

        v22 = v23;

        sub_255DF2888(v22, a3, a4);
        sub_255D2F870(a5);

LABEL_18:
        sub_255D5C324(v12);
        return sub_255D5C324(v12);
      }
    }

    else if ((~a5 & 0xF000000000000007) != 0)
    {
      v20 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_255D5C30C(v12);

      sub_255D34858(a5);
      sub_255DEFC30(v20, a5, a2, a1, &v23);
      if (v6)
      {

        v21 = 0xF000000000000007;
      }

      else
      {

        v21 = v23;
      }

      sub_255DF2888(v21, a3, a4);
      sub_255D2F870(a5);
      sub_255D5C324(v21);
      goto LABEL_18;
    }

    sub_255D5C30C(v12);

    sub_255DF2888(a2, a3, a4);
    goto LABEL_18;
  }

  sub_255DF2888(a2, a3, a4);
  return sub_255D5C324(v12);
}

uint64_t sub_255DEF60C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a5;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
  }

  RemoteStateStore.subscript.getter(a3, a4, &v86);
  v11 = v86;
  if ((~v86 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v86);
    sub_255D5C33C();
    swift_allocError();
    v13 = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    *v13 = a3;
    *(v13 + 8) = a4;
    *(v13 + 16) = v14;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  sub_255D5C324(v11);
  if (v11 >> 61 != 5)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v40 = v11;
    v40[1] = v39;
    return swift_willThrow();
  }

  v82 = a4;
  v83 = a5;
  v84 = a2;
  v81 = a1;
  v19 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v20 = result;
  v21 = 0;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 64);
  v25 = (v22 + 63) >> 6;
  for (i = result + 64; v24; result = )
  {
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_16:
    v30 = v27 | (v21 << 6);
    v31 = (*(v19 + 48) + 16 * v30);
    v32 = *(*(v19 + 56) + 8 * v30);
    v33 = *v31;
    v34 = v31[1];
    *(i + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v20 + 48) + 16 * v30);
    *v35 = v33;
    v35[1] = v34;
    *(*(v20 + 56) + 8 * v30) = v32;
    v36 = *(v20 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    *(v20 + 16) = v38;
  }

  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v21 >= v25)
    {
      break;
    }

    v29 = *(v19 + 64 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v24 = (v29 - 1) & v29;
      goto LABEL_16;
    }
  }

  sub_255D5C324(v11);
  result = sub_255E3AB08();
  v41 = result;
  v42 = 0;
  v43 = 1 << *(v20 + 32);
  v44 = *(v20 + 64);
  v45 = -1;
  if (v43 < 64)
  {
    v45 = ~(-1 << v43);
  }

  v46 = v45 & v44;
  v47 = (v43 + 63) >> 6;
  v48 = result + 64;
  if ((v45 & v44) == 0)
  {
LABEL_24:
    v50 = v42;
    while (1)
    {
      v42 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_51;
      }

      if (v42 >= v47)
      {

        if ((~v83 & 0xF000000000000007) != 0)
        {

          sub_255D34858(v83);
          sub_255DF03DC(v41, v83, v84, v81, &v86);
          if (v85)
          {

            v79 = 0xF000000000000007;
          }

          else
          {

            v79 = v86;
          }

          sub_255DF2888(v79, a3, v82);
          sub_255D2F870(v83);
          sub_255D5C324(v79);
        }

        result = sub_255E3AB08();
        v60 = result;
        v61 = 0;
        v62 = *(v84 + 64);
        v63 = 1 << *(v84 + 32);
        v64 = -1;
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        v65 = v64 & v62;
        v66 = (v63 + 63) >> 6;
        v67 = result + 64;
        if ((v64 & v62) == 0)
        {
LABEL_37:
          v69 = v61;
          while (1)
          {
            v61 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_52;
            }

            if (v61 >= v66)
            {
              v80 = swift_allocObject();
              *(v80 + 16) = v60;

              sub_255DF2888(v80 | 0xA000000000000000, a3, v82);
            }

            v70 = *(v84 + 64 + 8 * v61);
            ++v69;
            if (v70)
            {
              v68 = __clz(__rbit64(v70));
              v65 = (v70 - 1) & v70;
              goto LABEL_42;
            }
          }
        }

        while (1)
        {
          v68 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
LABEL_42:
          v71 = v68 | (v61 << 6);
          v72 = (*(v84 + 48) + 16 * v71);
          v73 = *(*(v84 + 56) + 8 * v71);
          v74 = *v72;
          v75 = v72[1];
          *(v67 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
          v76 = (v60[6] + 16 * v71);
          *v76 = v74;
          v76[1] = v75;
          *(v60[7] + 8 * v71) = v73;
          v77 = v60[2];
          v37 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v37)
          {
            goto LABEL_55;
          }

          v60[2] = v78;

          if (!v65)
          {
            goto LABEL_37;
          }
        }
      }

      v51 = *(i + 8 * v42);
      ++v50;
      if (v51)
      {
        v49 = __clz(__rbit64(v51));
        v46 = (v51 - 1) & v51;
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v49 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
LABEL_29:
    v52 = v49 | (v42 << 6);
    v53 = (*(v20 + 48) + 16 * v52);
    v54 = *(*(v20 + 56) + 8 * v52);
    v55 = *v53;
    v56 = v53[1];
    *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v57 = (v41[6] + 16 * v52);
    *v57 = v55;
    v57[1] = v56;
    *(v41[7] + 8 * v52) = v54;
    v58 = v41[2];
    v37 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v37)
    {
      break;
    }

    v41[2] = v59;

    if (!v46)
    {
      goto LABEL_24;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_255DEFC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v74 = *(a2 + 16);
    v75 = v9;
    v76 = v10;

    v12 = StringResolvable.resolved(with:)(a4);
    if (v5)
    {
    }

    v20 = v12;
    v21 = v13;
    if ((~v11 & 0xF000000000000007) == 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74 = a1;
      sub_255D82054(a3, v20, v21, isUniquelyReferenced_nonNull_native);

      goto LABEL_10;
    }

    v45 = *(a1 + 16);

    if (v45 && (v46 = sub_255D3CA20(v20, v21), (v47 & 1) != 0))
    {
      v48 = *(*(a1 + 56) + 8 * v46);
      v49 = v48 >> 61 == 4;
      if ((v48 >> 61) >= 4)
      {
        v64 = v48 & 0x1FFFFFFFFFFFFFFFLL;
        if (v49)
        {
          v65 = *(v64 + 16);
          swift_retain_n();

          sub_255DF0CC0(v66, v11, a3, a4, &v74);

          v69 = v74;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v77 = a1;
          sub_255D82054(v69, v20, v21, v70);
          sub_255D2F870(v11);

          v23 = v77;
          goto LABEL_11;
        }

        v67 = *(v64 + 16);
        swift_retain_n();

        sub_255DEFC30(&v74, v68, v11, a3, a4);

        v71 = v74;

        v72 = swift_isUniquelyReferenced_nonNull_native();
        *&v74 = a1;
        sub_255D82054(v71, v20, v21, v72);
        sub_255D2F870(v11);

LABEL_10:
        v23 = v74;
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        v24 = sub_255E3AB08();
        v25 = v24;
        v26 = 0;
        v27 = 1 << *(v23 + 32);
        v28 = -1;
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        v29 = v28 & *(v23 + 64);
        v30 = (v27 + 63) >> 6;
        v31 = v24 + 64;
        if (v29)
        {
          while (1)
          {
            v32 = __clz(__rbit64(v29));
            v29 &= v29 - 1;
LABEL_20:
            v35 = v32 | (v26 << 6);
            v36 = (*(v23 + 48) + 16 * v35);
            v37 = *(*(v23 + 56) + 8 * v35);
            v38 = *v36;
            v39 = v36[1];
            *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
            v40 = (v25[6] + 16 * v35);
            *v40 = v38;
            v40[1] = v39;
            *(v25[7] + 8 * v35) = v37;
            v41 = v25[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              break;
            }

            v25[2] = v43;

            if (!v29)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v33 = v26;
          while (1)
          {
            v26 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v26 >= v30)
            {
              v44 = swift_allocObject();

              *(v44 + 16) = v25;
              *a5 = v44 | 0xA000000000000000;
              return result;
            }

            v34 = *(v23 + 64 + 8 * v26);
            ++v33;
            if (v34)
            {
              v32 = __clz(__rbit64(v34));
              v29 = (v34 - 1) & v34;
              goto LABEL_20;
            }
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_43;
      }

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v50 = sub_255E386A8();
      __swift_project_value_buffer(v50, qword_27F8152D8);
      v51 = sub_255E38688();
      v52 = sub_255E3A868();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_255D2E000, v51, v52, "Referenceable.updatedDict: Have a subreference but next structure is a value", v53, 2u);
        MEMORY[0x259C4F9E0](v53, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v54 = 3;
      *(v54 + 8) = 0;
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      *(v54 + 32) = 5;
      swift_willThrow();
    }

    else
    {

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v55 = sub_255E386A8();
      __swift_project_value_buffer(v55, qword_27F8152D8);

      v56 = sub_255E38688();
      v57 = sub_255E3A868();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v74 = v59;
        *v58 = 136315394;
        *(v58 + 4) = sub_255D378C0(v20, v21, &v74);
        *(v58 + 12) = 2080;
        v60 = sub_255E3A418();
        v62 = sub_255D378C0(v60, v61, &v74);

        *(v58 + 14) = v62;
        _os_log_impl(&dword_255D2E000, v56, v57, "Referenceable.updatedDict: key not found %s dict: %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C4F9E0](v59, -1, -1);
        MEMORY[0x259C4F9E0](v58, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v63 = v20;
      *(v63 + 8) = v21;
      *(v63 + 32) = 4;
      swift_willThrow();
    }

    return sub_255D2F870(v11);
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_43:
    swift_once();
  }

  v15 = sub_255E386A8();
  __swift_project_value_buffer(v15, qword_27F8152D8);
  v16 = sub_255E38688();
  v17 = sub_255E3A868();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_255D2E000, v16, v17, "Referenceable.updatedDict: trying to modify a dictionary using an index subreference", v18, 2u);
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v19 = 5;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DF03DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v96 = *(a2 + 16);
    v97 = v9;
    v98 = v10;

    v12 = StringResolvable.resolved(with:)(a4);
    if (v5)
    {
    }

    v20 = v13;
    if ((~v11 & 0xF000000000000007) == 0)
    {
      v93 = v12;
      v94 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v21 = sub_255E3AB08();
      v22 = v21;
      v23 = 0;
      v24 = 1 << *(a3 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(a3 + 64);
      v27 = (v24 + 63) >> 6;
      v28 = v21 + 64;
      while (v26)
      {
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_18:
        v32 = v29 | (v23 << 6);
        v33 = (*(a3 + 48) + 16 * v32);
        v34 = *(*(a3 + 56) + 8 * v32);
        v35 = *v33;
        v36 = v33[1];
        *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v37 = (v22[6] + 16 * v32);
        *v37 = v35;
        v37[1] = v36;
        *(v22[7] + 8 * v32) = v34;
        v38 = v22[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_56;
        }

        v22[2] = v40;
      }

      v30 = v23;
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_54;
        }

        if (v23 >= v27)
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v96 = a1;
          sub_255D82054(v52 | 0xA000000000000000, v93, v94, isUniquelyReferenced_nonNull_native);

          goto LABEL_30;
        }

        v31 = *(a3 + 64 + 8 * v23);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v26 = (v31 - 1) & v31;
          goto LABEL_18;
        }
      }
    }

    v41 = v12;
    v42 = *(a1 + 16);

    if (v42 && (v43 = sub_255D3CA20(v41, v20), (v44 & 1) != 0))
    {
      v45 = *(*(a1 + 56) + 8 * v43);
      v46 = v45 >> 61 == 4;
      if ((v45 >> 61) >= 4)
      {
        v84 = v45 & 0x1FFFFFFFFFFFFFFFLL;
        if (v46)
        {
          v85 = *(v84 + 16);
          swift_retain_n();

          sub_255DF1378(v86, v11, a3, a4, &v96);

          v89 = v96;
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v99 = a1;
          sub_255D82054(v89, v41, v20, v90);
          sub_255D2F870(v11);

          v54 = v99;
        }

        else
        {
          v87 = *(v84 + 16);
          swift_retain_n();

          sub_255DF03DC(&v96, v88, v11, a3, a4);

          v91 = v96;

          v92 = swift_isUniquelyReferenced_nonNull_native();
          *&v96 = a1;
          sub_255D82054(v91, v41, v20, v92);
          sub_255D2F870(v11);

LABEL_30:
          v54 = v96;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        v55 = sub_255E3AB08();
        v56 = v55;
        v57 = 0;
        v58 = 1 << *(v54 + 32);
        v59 = -1;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        v60 = v59 & *(v54 + 64);
        v61 = (v58 + 63) >> 6;
        v62 = v55 + 64;
        while (v60)
        {
          v63 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
LABEL_40:
          v66 = v63 | (v57 << 6);
          v67 = (*(v54 + 48) + 16 * v66);
          v68 = *(*(v54 + 56) + 8 * v66);
          v69 = *v67;
          v70 = v67[1];
          *(v62 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
          v71 = (v56[6] + 16 * v66);
          *v71 = v69;
          v71[1] = v70;
          *(v56[7] + 8 * v66) = v68;
          v72 = v56[2];
          v39 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v39)
          {
            goto LABEL_55;
          }

          v56[2] = v73;
        }

        v64 = v57;
        while (1)
        {
          v57 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          if (v57 >= v61)
          {
            v74 = swift_allocObject();

            *(v74 + 16) = v56;
            *a5 = v74 | 0xA000000000000000;
            return result;
          }

          v65 = *(v54 + 64 + 8 * v57);
          ++v64;
          if (v65)
          {
            v63 = __clz(__rbit64(v65));
            v60 = (v65 - 1) & v65;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v47 = sub_255E386A8();
      __swift_project_value_buffer(v47, qword_27F8152D8);
      v48 = sub_255E38688();
      v49 = sub_255E3A868();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_255D2E000, v48, v49, "Referenceable.updatedDict: Have a subreference but next structure is a value", v50, 2u);
        MEMORY[0x259C4F9E0](v50, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v51 = 3;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      *(v51 + 32) = 5;
      swift_willThrow();
    }

    else
    {

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v75 = sub_255E386A8();
      __swift_project_value_buffer(v75, qword_27F8152D8);

      v76 = sub_255E38688();
      v77 = sub_255E3A868();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v96 = v79;
        *v78 = 136315394;
        *(v78 + 4) = sub_255D378C0(v41, v20, &v96);
        *(v78 + 12) = 2080;
        v80 = sub_255E3A418();
        v82 = sub_255D378C0(v80, v81, &v96);

        *(v78 + 14) = v82;
        _os_log_impl(&dword_255D2E000, v76, v77, "Referenceable.updatedDict: key not found %s dict: %s", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C4F9E0](v79, -1, -1);
        MEMORY[0x259C4F9E0](v78, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v83 = v41;
      *(v83 + 8) = v20;
      *(v83 + 32) = 4;
      swift_willThrow();
    }

    return sub_255D2F870(v11);
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_57:
    swift_once();
  }

  v15 = sub_255E386A8();
  __swift_project_value_buffer(v15, qword_27F8152D8);
  v16 = sub_255E38688();
  v17 = sub_255E3A868();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_255D2E000, v16, v17, "Referenceable.updatedDict: trying to modify a dictionary using an index subreference", v18, 2u);
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v19 = 5;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DF0CC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v6 = sub_255E386A8();
    __swift_project_value_buffer(v6, qword_27F8152D8);
    v7 = sub_255E38688();
    v8 = sub_255E3A868();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_255D2E000, v7, v8, "Referenceable.updatedArray: trying to modify an array using an key subreference", v9, 2u);
      MEMORY[0x259C4F9E0](v9, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 4;
LABEL_13:
    *v10 = v11;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v25 = 5;
LABEL_14:
    *(v10 + 32) = v25;
    return swift_willThrow();
  }

  v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v17 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v18 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v51 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v52 = v16;
  v53 = v17;

  v19 = sub_255D8F9E4(a4);
  if (v20)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v21 = sub_255E386A8();
    __swift_project_value_buffer(v21, qword_27F8152D8);
    v22 = sub_255E38688();
    v23 = sub_255E3A848();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_255D2E000, v22, v23, "SubReference to update array, unable to resolve index", v24, 2u);
      MEMORY[0x259C4F9E0](v24, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 2;
    goto LABEL_13;
  }

  v27 = v19;
  if (v19 < 0 || v19 >= *(a1 + 2))
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v30 = sub_255E386A8();
    __swift_project_value_buffer(v30, qword_27F8152D8);

    v31 = sub_255E38688();
    v32 = sub_255E3A868();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v51 = v34;
      *v33 = 134218242;
      *(v33 + 4) = v27;
      *(v33 + 12) = 2080;
      v35 = MEMORY[0x259C4E9D0](a1, &type metadata for DecodableState);
      v37 = sub_255D378C0(v35, v36, &v51);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_255D2E000, v31, v32, "Referenceable.updatedArray: index out of range idx: %ld array: %s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x259C4F9E0](v34, -1, -1);
      MEMORY[0x259C4F9E0](v33, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    *v10 = v27;
    v25 = 3;
    goto LABEL_14;
  }

  if ((~v18 & 0xF000000000000007) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    if (v27 < *(a1 + 2))
    {
      v28 = &a1[8 * v27];
      v29 = *(v28 + 4);
      *(v28 + 4) = a3;
LABEL_22:

      sub_255DCB4C0(a1, a5);
    }

    __break(1u);
    goto LABEL_46;
  }

  v38 = *&a1[8 * v19 + 32];
  if ((v38 >> 61) >= 4)
  {
    v44 = v38 & 0x1FFFFFFFFFFFFFFFLL;
    if (v38 >> 61 == 4)
    {
      v45 = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_255D34858(v18);

      sub_255DF0CC0(&v51, v46, v18, a3, a4);
      if (v5)
      {
LABEL_40:
        sub_255D2F870(v18);
      }

      a3 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_255DF5ECC(a1);
      }

      sub_255D2F870(v18);
      if (v27 < *(a1 + 2))
      {
LABEL_44:
        v49 = &a1[8 * v27];
        v50 = *(v49 + 4);
        *(v49 + 4) = a3;

        goto LABEL_22;
      }

      __break(1u);
    }

    v47 = *(v44 + 16);
    sub_255D34858(v18);

    sub_255DEFC30(&v51, v48, v18, a3, a4);
    if (v5)
    {
      goto LABEL_40;
    }

    a3 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    result = sub_255D2F870(v18);
    if (v27 >= *(a1 + 2))
    {
      __break(1u);
      return result;
    }

    goto LABEL_44;
  }

  sub_255D34858(v18);

  if (qword_27F7E5E80 != -1)
  {
LABEL_46:
    swift_once();
  }

  v39 = sub_255E386A8();
  __swift_project_value_buffer(v39, qword_27F8152D8);
  v40 = sub_255E38688();
  v41 = sub_255E3A868();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_255D2E000, v40, v41, "Referenceable.updatedArray: Have a subreference but next structure is a value", v42, 2u);
    MEMORY[0x259C4F9E0](v42, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v43 = 3;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 5;
  swift_willThrow();

  return sub_255D2F870(v18);
}

uint64_t sub_255DF1378@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (qword_27F7E5E80 != -1)
    {
LABEL_56:
      swift_once();
    }

    v6 = sub_255E386A8();
    __swift_project_value_buffer(v6, qword_27F8152D8);
    v7 = sub_255E38688();
    v8 = sub_255E3A868();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_255D2E000, v7, v8, "Referenceable.updatedArray: trying to modify an array using an key subreference", v9, 2u);
      MEMORY[0x259C4F9E0](v9, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 4;
    goto LABEL_12;
  }

  v76 = a5;
  v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v17 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v73 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v74 = v15;
  v75 = v16;

  v18 = sub_255D8F9E4(a4);
  if (v19)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v20 = sub_255E386A8();
    __swift_project_value_buffer(v20, qword_27F8152D8);
    v21 = sub_255E38688();
    v22 = sub_255E3A848();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_255D2E000, v21, v22, "SubReference to update array, unable to resolve index", v23, 2u);
      MEMORY[0x259C4F9E0](v23, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 2;
LABEL_12:
    *v10 = v11;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v24 = 5;
LABEL_13:
    *(v10 + 32) = v24;
    return swift_willThrow();
  }

  v26 = v18;
  if (v18 < 0 || v18 >= *(a1 + 2))
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v48 = sub_255E386A8();
    __swift_project_value_buffer(v48, qword_27F8152D8);

    v49 = sub_255E38688();
    v50 = sub_255E3A868();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v73 = v52;
      *v51 = 134218242;
      *(v51 + 4) = v26;
      *(v51 + 12) = 2080;
      v53 = MEMORY[0x259C4E9D0](a1, &type metadata for DecodableState);
      v55 = sub_255D378C0(v53, v54, &v73);

      *(v51 + 14) = v55;
      _os_log_impl(&dword_255D2E000, v49, v50, "Referenceable.updatedArray: index out of range idx: %ld array: %s", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x259C4F9E0](v52, -1, -1);
      MEMORY[0x259C4F9E0](v51, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    *v10 = v26;
    v24 = 3;
    goto LABEL_13;
  }

  if ((~v17 & 0xF000000000000007) == 0)
  {
    v72 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
    v27 = sub_255E3AB08();
    v28 = a3;
    v29 = v27;
    v30 = 0;
    v17 = a3 + 64;
    v31 = 1 << *(a3 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(a3 + 64);
    v34 = (v31 + 63) >> 6;
    v35 = v27 + 64;
    if (v33)
    {
      while (1)
      {
        v36 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
LABEL_26:
        v39 = v36 | (v30 << 6);
        v40 = (*(v28 + 48) + 16 * v39);
        v41 = *(*(v28 + 56) + 8 * v39);
        v42 = *v40;
        v43 = v40[1];
        *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
        v44 = (v29[6] + 16 * v39);
        *v44 = v42;
        v44[1] = v43;
        *(v29[7] + 8 * v39) = v41;
        v45 = v29[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          break;
        }

        v29[2] = v47;

        v28 = a3;
        if (!v33)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_58:
      a1 = sub_255DF5ECC(a1);
    }

    else
    {
LABEL_21:
      v37 = v30;
      while (1)
      {
        v30 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_56;
        }

        if (v30 >= v34)
        {
          break;
        }

        v38 = *(v17 + 8 * v30);
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v33 = (v38 - 1) & v38;
          goto LABEL_26;
        }
      }

      v17 = swift_allocObject();
      *(v17 + 16) = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    if (v72 < *(a1 + 2))
    {
      v62 = &a1[8 * v72];
      v63 = *(v62 + 4);
      *(v62 + 4) = v17 | 0xA000000000000000;
LABEL_42:

      sub_255DCB4C0(a1, v76);
    }

    __break(1u);
    goto LABEL_60;
  }

  v56 = *&a1[8 * v18 + 32];
  if ((v56 >> 61) >= 4)
  {
    v64 = v56 & 0x1FFFFFFFFFFFFFFFLL;
    if (v56 >> 61 == 4)
    {
      v65 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_255D34858(v17);

      sub_255DF1378(&v73, v66, v17, a3, a4);
      if (v5)
      {
LABEL_50:
        sub_255D2F870(v17);
      }

      v67 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_255DF5ECC(a1);
      }

      sub_255D2F870(v17);
      if (v26 < *(a1 + 2))
      {
LABEL_54:
        v70 = &a1[8 * v26];
        v71 = *(v70 + 4);
        *(v70 + 4) = v67;

        goto LABEL_42;
      }

      __break(1u);
    }

    v68 = *(v64 + 16);
    sub_255D34858(v17);

    sub_255DF03DC(&v73, v69, v17, a3, a4);
    if (v5)
    {
      goto LABEL_50;
    }

    v67 = v73;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    result = sub_255D2F870(v17);
    if (v26 >= *(a1 + 2))
    {
      __break(1u);
      return result;
    }

    goto LABEL_54;
  }

  sub_255D34858(v17);

  if (qword_27F7E5E80 != -1)
  {
LABEL_60:
    swift_once();
  }

  v57 = sub_255E386A8();
  __swift_project_value_buffer(v57, qword_27F8152D8);
  v58 = sub_255E38688();
  v59 = sub_255E3A868();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_255D2E000, v58, v59, "Referenceable.updatedArray: Have a subreference but next structure is a value", v60, 2u);
    MEMORY[0x259C4F9E0](v60, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v61 = 3;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = 5;
  swift_willThrow();

  return sub_255D2F870(v17);
}

uint64_t RemoteStateStore.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - v4;
  v6 = qword_27F7E8600;
  v7 = MEMORY[0x277D84F90];
  *(v0 + v6) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v0 + qword_27F7E85F8) = 0;
  v8 = *(*v0 + 104);
  v11[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v2 + 32))(v0 + v8, v5, v1);
  v9 = *(*v0 + 112);
  *(v0 + v9) = sub_255DC513C(v7);
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  return v0;
}

char *StateDict.init(parent:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  sub_255E3A6F8();
  v6 = sub_255E38748();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = v4[13];
  v12 = sub_255E3A6A8();
  v13 = v4[10];
  v14 = v4[12];
  v27 = v12;
  v15 = sub_255E3A6F8();
  sub_255DF5B34(&v27, v15);
  (*(v7 + 32))(&v2[v11], v10, v6);
  v16 = *(*v2 + 112);
  v17 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v18 = sub_255E3A6A8();
  v19 = sub_255DF5EF8(v18, v13, v17, v14);

  *&v2[v16] = v19;
  *&v2[*(*v2 + 128)] = 0;
  *&v2[*(*v2 + 120)] = a1;
  if (a1)
  {
    type metadata accessor for StateDict();

    swift_getWitnessTable();
    v27 = sub_255E386D8();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v13;
    v21[3] = v5;
    v21[4] = v14;
    v21[5] = v20;
    sub_255E386F8();
    v22 = sub_255E38758();
  }

  else
  {
    v22 = 0;
  }

  v23 = *(*v2 + 128);
  v24 = *&v2[v23];
  *&v2[v23] = v22;

  return v2;
}

uint64_t RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_27F7E8600;
  *(v3 + v6) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v3 + qword_27F7E85F8) = a1;
  v7 = swift_retain_n();
  v8 = sub_255DC3628(v7);
  v9 = v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a2 + 64);
  v77 = *(*v8 + 112);
  v14 = (v11 + 63) >> 6;

  v78 = a2;

  v16 = 0;
  v74 = v14;
  v75 = a2 + 64;
  v76 = v9;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v14)
        {

          v68 = qword_27F7E8600;
          swift_beginAccess();
          v69 = *(v9 + v68);
          *(v9 + v68) = a3;

          return v9;
        }

        v13 = *(v10 + 8 * v17);
        ++v16;
        if (v13)
        {
          v16 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_12:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = (*(v78 + 48) + 16 * v18);
    v20 = v19[1];
    v81 = *v19;
    v21 = *(*(v78 + 56) + 8 * v18);
    MEMORY[0x28223BE20](v15);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    v79 = v21;

    v80 = v20;

    v9 = v76;
    v23 = sub_255E38718();
    v25 = v24;
    v26 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_255DE55B4(0, *(v26 + 2) + 1, 1, v26);
      *v25 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_255DE55B4((v28 > 1), v29 + 1, 1, v26);
      *v25 = v26;
    }

    *(v26 + 2) = v29 + 1;
    *&v26[8 * v29 + 32] = v79;

    v23(v83, 0);

    MEMORY[0x28223BE20](v30);
    v31 = swift_getKeyPath();
    MEMORY[0x28223BE20](v31);
    swift_getKeyPath();
    sub_255E38728();

    v32 = *(v83[0] + 16);

    swift_beginAccess();
    v33 = *(v76 + v77);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v76 + v77);
    *(v76 + v77) = 0x8000000000000000;
    v36 = sub_255D3CA20(v81, v80);
    v37 = *(v82 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_45;
    }

    v40 = v35;
    if (*(v82 + 24) >= v39)
    {
      break;
    }

    sub_255D80CA0(v39, v34);
    v41 = v82;
    v42 = v80;
    v43 = sub_255D3CA20(v81, v80);
    if ((v40 & 1) != (v44 & 1))
    {
      goto LABEL_48;
    }

    v36 = v43;
    v45 = v32 - 1;
    if (v40)
    {
LABEL_5:
      *(*(v41 + 56) + 8 * v36) = v45;
      goto LABEL_6;
    }

LABEL_24:
    *(v41 + 8 * (v36 >> 6) + 64) |= 1 << v36;
    v46 = (*(v41 + 48) + 16 * v36);
    *v46 = v81;
    v46[1] = v42;
    *(*(v41 + 56) + 8 * v36) = v45;
    v47 = *(v41 + 16);
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_46;
    }

    *(v41 + 16) = v49;

LABEL_6:
    v13 &= v13 - 1;
    *(v76 + v77) = v41;
    swift_endAccess();

    v14 = v74;
    v10 = v75;
  }

  if (v34)
  {
    v41 = v82;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
  v50 = sub_255E3AB08();
  v41 = v50;
  if (!*(v82 + 16))
  {
LABEL_42:

LABEL_23:
    v42 = v80;
    v45 = v32 - 1;
    if (v40)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  v51 = (v50 + 64);
  v52 = (v82 + 64);
  v53 = ((1 << *(v41 + 32)) + 63) >> 6;
  if (v41 != v82 || v51 >= &v52[8 * v53])
  {
    memmove(v51, v52, 8 * v53);
  }

  v54 = 0;
  *(v41 + 16) = *(v82 + 16);
  v55 = 1 << *(v82 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v82 + 64);
  v58 = (v55 + 63) >> 6;
  v71 = v58;
  if (v57)
  {
    do
    {
      v59 = __clz(__rbit64(v57));
      v72 = (v57 - 1) & v57;
LABEL_40:
      v62 = v59 | (v54 << 6);
      v63 = (*(v82 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      v66 = *(*(v82 + 56) + 8 * v62);
      v67 = (*(v41 + 48) + 16 * v62);
      *v67 = v65;
      v67[1] = v64;
      *(*(v41 + 56) + 8 * v62) = v66;

      v58 = v71;
      v57 = v72;
    }

    while (v72);
  }

  v60 = v54;
  while (1)
  {
    v54 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v54 >= v58)
    {
      goto LABEL_42;
    }

    v61 = *(v82 + 64 + 8 * v54);
    ++v60;
    if (v61)
    {
      v59 = __clz(__rbit64(v61));
      v72 = (v61 - 1) & v61;
      goto LABEL_40;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

uint64_t sub_255DF26AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 112);
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = *(v5 + 80);
  v10 = *(v5 + 96);

  sub_255E3A458();

  if (v14)
  {
    v11 = *(v2 + *(*v2 + 120));
    if (v11)
    {
      return (*(*v11 + 248))(a1);
    }

    else
    {
      return (*(*(*(v6 + 88) - 8) + 56))(a2, 1, 1, *(v6 + 88));
    }
  }

  else
  {
    sub_255DF3B58();
    v13 = *(v6 + 88);
    sub_255E3A728();

    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }
}

uint64_t sub_255DF2888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v8 = *(*v3 + 112);
    swift_beginAccess();
    v9 = *(v3 + v8);
    if (*(v9 + 16))
    {

      v10 = sub_255D3CA20(a2, a3);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        MEMORY[0x28223BE20](v13);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        swift_getKeyPath();
        v15 = sub_255E38718();
        v17 = v16;
        v18 = *v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v17 = v18;
        if (result)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          result = sub_255DF5ECC(v18);
          v18 = result;
          *v17 = result;
          if ((v12 & 0x8000000000000000) == 0)
          {
LABEL_9:
            if (v12 < *(v18 + 16))
            {
              v19 = v18 + 8 * v12;
              v20 = *(v19 + 32);
              *(v19 + 32) = a1;

              v15(v23, 0);

              goto LABEL_14;
            }

LABEL_19:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = *(v3 + *(*v3 + 120));
    if (!v21)
    {
      sub_255DD5C54(a2, a3, a1);
      sub_255D5C324(a1);
    }

    v23[0] = a1;
    v22 = *(*v21 + 256);
    sub_255D5C30C(a1);

    v22(v23, v24);
LABEL_14:

    return sub_255D5C324(a1);
  }
}

uint64_t sub_255DF2B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  sub_255DF6210(a1, &v21);
  if (!v22)
  {
    sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);

    return sub_255D395E4(&v21, &qword_27F7E7C08, &qword_255E4EF88);
  }

  sub_255D8B0B0(&v21, v23);
  v7 = *(*v3 + 112);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_255D3CA20(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      MEMORY[0x28223BE20](v12);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      swift_getKeyPath();
      v14 = sub_255E38718();
      v16 = v15;
      v17 = *v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v17;
      if (result)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_255DF5EE0(v17);
        v17 = result;
        *v16 = result;
        if ((v11 & 0x8000000000000000) == 0)
        {
LABEL_6:
          if (v11 < *(v17 + 16))
          {
            __swift_assign_boxed_opaque_existential_0((v17 + 32 * v11 + 32), v23);
            v14(&v21, 0);

LABEL_12:

            sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
            return __swift_destroy_boxed_opaque_existential_1Tm(v23);
          }

          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }
  }

  v19 = *(v3 + *(*v3 + 120));
  if (v19)
  {
    sub_255D3951C(v23, &v21);
    v20 = *(*v19 + 256);

    v20(&v21, v24);
    goto LABEL_12;
  }

  sub_255DD5EE0(a2, a3, v23);
  sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_255DF2E88(uint64_t a1, uint64_t a2)
{
  v52 = *v2;
  v53 = a2;
  v4 = *(v52 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v50 = &v45 - v7;
  v9 = *(v8 + 88);
  v10 = sub_255E3A8A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = *(v9 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v45 - v20;
  (*(v11 + 16))(v17, a1, v10);
  if ((*(v18 + 48))(v17, 1, v9) == 1)
  {
    (*(v5 + 8))(v53, v4);
    v22 = *(v11 + 8);
    v22(a1, v10);
    return (v22)(v17, v10);
  }

  v51 = v10;
  v47 = v5;
  v48 = a1;
  (*(v18 + 32))(v21, v17, v9);
  v24 = v4;
  v25 = *(*v2 + 112);
  swift_beginAccess();
  v26 = *(v2 + v25);
  v27 = *(v52 + 96);

  v28 = v53;
  sub_255E3A458();

  v30 = v21;
  if (v55)
  {
    v31 = *(v2 + *(*v2 + 120));
    v32 = v51;
    if (v31)
    {
      v33 = v30;
      v46 = v30;
      v34 = v47;
      v35 = v50;
      (*(v47 + 16))(v50, v28, v24);
      v36 = v49;
      (*(v18 + 16))(v49, v33, v9);
      (*(v18 + 56))(v36, 0, 1, v9);
      v52 = *v31 + 256;
      v37 = *v52;

      v37(v36, v35);

      (*(v34 + 8))(v28, v24);
      (*(v11 + 8))(v48, v51);
      return (*(v18 + 8))(v46, v9);
    }

    sub_255DF4050(v28);
    (*(v47 + 8))(v28, v24);
    (*(v11 + 8))(v48, v32);
  }

  else
  {
    v38 = v54;
    MEMORY[0x28223BE20](v29);
    *(&v45 - 4) = v24;
    *(&v45 - 3) = v9;
    *(&v45 - 2) = v27;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v45 - 4) = v24;
    *(&v45 - 3) = v9;
    *(&v45 - 2) = v27;
    swift_getKeyPath();
    v52 = sub_255E38718();
    v41 = v40;
    sub_255E3A6F8();
    sub_255E3A698();
    sub_255DF5E78(v38, *v41);
    v42 = *v41;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v44 = v42 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v44 = v42;
    }

    (*(v18 + 24))(v44 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v38, v21, v9);
    (v52)(&v54, 0);

    (*(v47 + 8))(v53, v24);
    (*(v11 + 8))(v48, v51);
  }

  return (*(v18 + 8))(v30, v9);
}

uint64_t (*RemoteStateStore.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  RemoteStateStore.subscript.getter(a2, a3, a1);
  return sub_255DF350C;
}

uint64_t sub_255DF350C(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = *a1;

  v6 = a1[3];
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_255DF2888(v5, v7, v4);
  }

  sub_255D5C30C(v5);
  sub_255DF2888(v5, v7, v4);

  return sub_255D5C324(v5);
}

uint64_t sub_255DF35AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  RemoteStateStore.subscript.getter(a1, a2, &v12);
  v8 = v12;
  if ((~v12 & 0xF000000000000007) != 0)
  {

    sub_255D5C324(v8);
    sub_255D7D8D8(a3, a4);

    v9 = 0;
  }

  else
  {
    sub_255D5C324(v12);
    v9 = 1;
  }

  v10 = *(*(a3 - 8) + 56);

  return v10(a5, v9, 1, a3);
}

uint64_t sub_255DF36B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_255E3A8A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, a1, v13);
  v18 = *(a7 - 8);
  if ((*(v18 + 48))(v17, 1, a7) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v19 = 0xF000000000000007;
  }

  else
  {
    (*(a8 + 8))(&v22, a7, a8);
    v19 = v22;
    (*(v18 + 8))(v17, a7);
  }

  return sub_255DF2888(v19, a5, a6);
}

uint64_t sub_255DF38D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*v2 + 104);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = *(v2 + *(*v2 + 112));

  v6 = *(v2 + *(*v2 + 128));

  v7 = *(*v2 + 120);
  v8 = *(v2 + v7);
  *(v2 + v7) = 0;

  if (v8)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v9 = *(v8 + *(*v8 + 120));
      swift_retain_n();

      v8 = v9;
    }

    while (v9);
  }

  return v2;
}

uint64_t StateDict.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  sub_255E3A6F8();
  v3 = sub_255E38748();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 112));

  v5 = *(v0 + *(*v0 + 128));

  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  *(v0 + v6) = 0;

  if (v7)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v8 = *(v7 + *(*v7 + 120));
      swift_retain_n();

      v7 = v8;
    }

    while (v8);
  }

  return v0;
}

uint64_t sub_255DF3B58()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255E38728();

  return v5;
}

uint64_t sub_255DF3C30()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_255E38738();
}

uint64_t sub_255DF3D04()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  if (*(v0 + *(*v0 + 120)))
  {
    swift_beginAccess();
    v3 = *(v0 + v2);
    v4 = *(v1 + 80);
    v5 = *(v1 + 96);
    sub_255E3A428();

    swift_getWitnessTable();
    v6 = sub_255E3A718();
    sub_255DF3D04(v6);
    sub_255E3A978();
    swift_getWitnessTable();
    sub_255E3A718();
    sub_255E3A688();

    sub_255E3A6F8();
    swift_getWitnessTable();
    v7 = sub_255E3A988();

    return v7;
  }

  else
  {
    swift_beginAccess();
    v9 = *(v0 + v2);
    v10 = *(v1 + 80);
    v11 = *(v1 + 96);
    sub_255E3A428();

    swift_getWitnessTable();
    return sub_255E3A988();
  }
}

uint64_t (*sub_255DF3F64(void *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  v4 = *a2;
  v5 = a2[1];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  RemoteStateStore.subscript.getter(v4, v5, a1);
  return sub_255DF3FB4;
}

uint64_t sub_255DF3FB4(uint64_t *a1, char a2)
{
  v4 = a1[3];
  v5 = *a1;

  v8 = a1 + 1;
  v6 = a1[1];
  v7 = v8[1];
  if ((a2 & 1) == 0)
  {
    return sub_255DF2888(v5, v7, v4);
  }

  sub_255D5C30C(v5);
  sub_255DF2888(v5, v7, v4);

  return sub_255D5C324(v5);
}

uint64_t sub_255DF4050(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = *v1;
  v4 = v3[10];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v19 - v8;
  v10 = v3[11];
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v13 + 16))(&v19 - v12);
  v24 = v4;
  v25 = v10;
  v14 = v3[12];
  v26 = v14;
  swift_getKeyPath();
  v21 = v4;
  v22 = v10;
  v19 = v14;
  v23 = v14;
  swift_getKeyPath();
  v15 = sub_255E38718();
  sub_255E3A6F8();
  sub_255E3A6D8();
  v15(v29, 0);

  (*(v5 + 16))(v9, v20, v4);
  sub_255DF3B58();
  v16 = sub_255E3A6C8();

  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = v16 - 1;
    v28 = 0;
    v18 = *(*v2 + 112);
    swift_beginAccess();
    sub_255E3A448();
    sub_255E3A468();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_255DF4308(uint64_t a1)
{
  v3 = a1;
  v1 = sub_255E3A6F8();
  return sub_255DF5B34(&v3, v1);
}

uint64_t StateDict.__allocating_init(parent:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  StateDict.init(parent:)(a1);
  return v5;
}

uint64_t sub_255DF4390()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for StateDict();
    swift_getWitnessTable();
    sub_255E386D8();

    sub_255E386E8();
  }

  return result;
}

uint64_t sub_255DF444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v9 = sub_255E3A8A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v15 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v20 - v16;
  (*(v18 + 16))(&v20 - v16, a3, v8);
  (*(v10 + 16))(v14, a1, v9);
  return (*(**a2 + 256))(v14, v17);
}

void (*sub_255DF45F0(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *v2;
  v9 = *(*v2 + 88);
  v10 = sub_255E3A8A8();
  v7[1] = v10;
  v11 = *(v10 - 8);
  v7[2] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[3] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v7[4] = v13;
  v15 = *(v8 + 80);
  v7[5] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v7[6] = v16;
  v18 = *(v16 + 64);
  if (v5)
  {
    v7[7] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v7[7] = malloc(*(v16 + 64));
    v19 = malloc(v18);
  }

  v7[8] = v19;
  (*(v17 + 16))();
  sub_255DF26AC(a2, v14);
  return sub_255DF47F0;
}

void sub_255DF47F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    v11 = *v2;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    sub_255DF2E88(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    v12 = *v2;
    sub_255DF2E88(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t StateDict.__deallocating_deinit()
{
  StateDict.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_255DF494C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  type metadata accessor for StateDict();
  result = sub_255E386D8();
  *a2 = result;
  return result;
}

uint64_t StateDict.makeIterator()()
{
  v1 = v0;
  v2 = *v0;
  sub_255DF3D04();
  v3 = sub_255E3AAB8();

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x2821FCFD8](sub_255DF6208, v4, TupleTypeMetadata2);
}

uint64_t sub_255DF4A6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_255E3A8A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_255E3A958();
  v11 = *(v4 + 88);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_255DF4E90(sub_255DF6774, a1, MEMORY[0x277D84A98], TupleTypeMetadata2, v13, a2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_255DF4BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = sub_255E3A8A8();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - v14;
  (*(v5 + 248))(a1);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v21 + 8))(v11, v7);
    result = sub_255E3AAF8();
    __break(1u);
  }

  else
  {
    v16 = *(v12 + 32);
    v16(v15, v11, v6);
    v17 = *(v5 + 80);
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v17 - 8) + 16))(a3, a1, v17);
    return (v16)(a3 + v18, v15, v6);
  }

  return result;
}

uint64_t sub_255DF4E90@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_255DF5138@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = StateDict.makeIterator()();

  *a1 = v4;
  return result;
}

uint64_t sub_255DF5188(void *a1)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  type metadata accessor for StateDict();
  v5 = sub_255DF5EF4();
  v6 = *v1;

  return v5;
}

void sub_255DF51D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[10];
  v5 = a4[11];
  v6 = a4[12];
  type metadata accessor for StateDict();

  JUMPOUT(0x259C4E980);
}

uint64_t sub_255DF5248(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[10];
  v5 = a4[11];
  v6 = a4[12];
  type metadata accessor for StateDict();
  return sub_255E3A638();
}

uint64_t LocalStateStore.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - v4;
  v6 = qword_27F7E8608;
  v7 = MEMORY[0x277D84F90];
  *(v0 + v6) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v0 + qword_27F7E8610) = 0;
  v8 = *(*v0 + 104);
  v11[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v2 + 32))(v0 + v8, v5, v1);
  v9 = *(*v0 + 112);
  *(v0 + v9) = sub_255DC513C(v7);
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  return v0;
}

uint64_t LocalStateStore.__allocating_init(parent:initialSet:referenceKeyMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return LocalStateStore.init(parent:initialSet:referenceKeyMap:)(a1, a2, a3);
}

uint64_t LocalStateStore.init(parent:initialSet:referenceKeyMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_27F7E8608;
  *(v3 + v6) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v3 + qword_27F7E8610) = a1;
  v7 = swift_retain_n();
  v8 = sub_255DC38A8(v7);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_255D395E4(v23, &qword_27F7E8618, &qword_255E56670))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    sub_255D3951C(*(a2 + 56) + 32 * v17, v24);
    v23[0] = v19;
    v23[1] = v20;

    sub_255DD5EE0(v19, v20, v24);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v21 = *(v8 + qword_27F7E8608);
      *(v8 + qword_27F7E8608) = a3;

      return v8;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t LocalStateStore.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255DF6210(a1, v7);
  sub_255DF2B68(v7, a2, a3);
  return sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
}

void (*LocalStateStore.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  *a1 = v7;
  *(v7 + 104) = a3;
  *(v7 + 112) = v3;
  *(v7 + 96) = a2;
  _s6LiftUI15LocalStateStoreCyypSgSScig_0(a2, a3, v7);
  return sub_255DF5754;
}

void sub_255DF5754(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 104);
  v3 = *(*a1 + 112);
  v5 = *(*a1 + 96);
  if (a2)
  {
    sub_255DF6210(*a1, v2 + 32);
    sub_255DF6210(v2 + 32, v2 + 64);

    sub_255DF2B68(v2 + 64, v5, v4);
    sub_255D395E4(v2 + 32, &qword_27F7E7C08, &qword_255E4EF88);
  }

  else
  {
    sub_255DF6210(*a1, v2 + 32);

    sub_255DF2B68(v2 + 32, v5, v4);
  }

  sub_255D395E4(v2, &qword_27F7E7C08, &qword_255E4EF88);

  free(v2);
}

uint64_t sub_255DF5884(void *a1, void *a2)
{
  v4 = *(v2 + *a1);

  v5 = *(v2 + *a2);
  *(v2 + *a2) = 0;

  if (v5)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v6 = *(v5 + *a2);
      swift_retain_n();

      v5 = v6;
    }

    while (v6);
  }
}

uint64_t sub_255DF5940(uint64_t *a1, uint64_t *a2, void *a3, void *a4)
{
  v6 = sub_255DF38D8(a1, a2);
  v7 = *(v6 + *a3);

  v8 = *(v6 + *a4);
  *(v6 + *a4) = 0;

  if (v8)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v9 = *(v8 + *a4);
      swift_retain_n();

      v8 = v9;
    }

    while (v9);
  }

  return v6;
}

uint64_t sub_255DF59F4(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_255DF5A58(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_255DF6210(a1, v6);
  sub_255DF2B68(v6, v3, v4);
  return sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
}

void (*sub_255DF5ABC(uint64_t **a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = LocalStateStore.subscript.modify(v4, *a2, a2[1]);
  return sub_255D39BAC;
}

uint64_t sub_255DF5B34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_255E38708();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_255DF5C24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[6];
  return sub_255DF35AC(v1[7], v1[8], v1[4], v1[5], a1);
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_255DF5C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_255E3A478();

  return sub_255DF5CF0(a1, v9, a2, a3);
}

unint64_t sub_255DF5CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
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
      v21 = sub_255E3A4B8();
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

uint64_t sub_255DF5E78(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_255DF5EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_255E3A6C8())
  {
    sub_255E3AB38();
    v13 = sub_255E3AB28();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_255E3A6C8();
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
        if (sub_255E3A6B8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_255E3A9B8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_255DF5C94(v12, a2, v27);
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

uint64_t sub_255DF61FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_255DF4390();
}

uint64_t sub_255DF6210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C08, &qword_255E4EF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DF6300(uint64_t a1)
{
  v1 = *(a1 + 88);
  sub_255E3A6F8();
  result = sub_255E38748();
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

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t objectdestroy_52Tm(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if ((~*(v1 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t objectdestroyTm_4(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 41, 7);
}

uint64_t sub_255DF6878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255E394A8();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_255E39E98();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  v16[1] = __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = sub_255DF6B34();
  sub_255DF6870();
  sub_255DF6874();
  v19 = v13;
  v20 = v4;
  v21 = v12;
  v22 = v14;
  a2[3] = swift_getOpaqueTypeMetadata2();
  v19 = v13;
  v20 = v4;
  v21 = v12;
  v22 = v14;
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_255E398E8();
  (*(v18 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v17);
}

unint64_t sub_255DF6AB8(uint64_t a1)
{
  result = sub_255DF6AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DF6AE0()
{
  result = qword_27F7E86C8;
  if (!qword_27F7E86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E86C8);
  }

  return result;
}

unint64_t sub_255DF6B34()
{
  result = qword_27F7E86D0;
  if (!qword_27F7E86D0)
  {
    sub_255E394A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E86D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI16SwiftUIAnimationVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255DF6BC4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_255DF6C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_255DF6C98(unint64_t a1, uint64_t a2)
{
  v29 = a2;
  v5 = sub_255E3A3B8();
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255E3A3D8();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44[9] = *(v2 + 57);
  v13 = v2[3];
  v43 = v2[2];
  *v44 = v13;
  v14 = v2[1];
  v41 = *v2;
  v42 = v14;
  if (v44[24] == 254)
  {
    v15 = 0;
    v27 = v5;
    v28 = v3;
  }

  else
  {
    v16 = v2[2];
    v35 = v2[1];
    v36 = v16;
    v37[0] = v2[3];
    *&v37[1] = *(v2 + 8);
    BYTE8(v37[1]) = v44[24];
    v38[0] = v35;
    v38[1] = v16;
    v38[2] = v37[0];
    v39 = *&v37[1];
    v40 = v44[24];
    sub_255D8DD84(v38, &v32);
    v17 = sub_255D8D5DC(a1);
    if (v3)
    {
      v32 = v35;
      v33 = v36;
      v34[0] = v37[0];
      *(v34 + 9) = *(v37 + 9);
      return sub_255D8DDBC(&v32);
    }

    v15 = v17;
    v27 = v5;
    v28 = 0;
    v32 = v35;
    v33 = v36;
    v34[0] = v37[0];
    *(v34 + 9) = *(v37 + 9);
    sub_255D8DDBC(&v32);
  }

  sub_255DA5ED4();
  v26 = sub_255E3A878();
  v19 = swift_allocObject();
  v20 = v41;
  *(v19 + 40) = v42;
  v21 = *v44;
  *(v19 + 56) = v43;
  *(v19 + 72) = v21;
  *(v19 + 81) = *&v44[9];
  *(v19 + 16) = v15;
  *(v19 + 24) = v20;
  v22 = v29;
  *(v19 + 104) = a1;
  *(v19 + 112) = v22;
  *&v37[0] = sub_255DFAF64;
  *(&v37[0] + 1) = v19;
  *&v35 = MEMORY[0x277D85DD0];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_255D5D0C8;
  *(&v36 + 1) = &block_descriptor_2;
  v23 = _Block_copy(&v35);

  sub_255D5C9C8(&v41, v38);

  sub_255E3A3C8();
  *&v38[0] = MEMORY[0x277D84F90];
  sub_255DFAF8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938);
  v24 = v27;
  sub_255E3A928();
  v25 = v26;
  MEMORY[0x259C4EBE0](0, v12, v8, v23);
  _Block_release(v23);

  (*(v45 + 8))(v8, v24);
  return (*(v30 + 8))(v12, v31);
}

uint64_t sub_255DF7084(uint64_t a1)
{
  if (a1)
  {
  }

  else
  {
    sub_255E3A298();
  }

  sub_255E38978();
}

void sub_255DF711C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *v2;
  v6 = v2[1];
  v387 = a2;
  if (v5)
  {
    v386 = a1;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v376 = qword_27F7E85F8;
    v374 = v6;
    v375 = qword_27F7E8600;
    v11 = (v8 + 63) >> 6;
    v379 = v5;

    v12 = 0;
    v380 = v7;
    v378 = v11;
    while (1)
    {
      if (!v10)
      {
        v19 = v379;
        while (1)
        {
          v20 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v20 >= v11)
          {

            a1 = v386;
            v6 = v374;
            goto LABEL_285;
          }

          v10 = *(v7 + 8 * v20);
          ++v12;
          if (v10)
          {
            v12 = v20;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_298;
      }

      v19 = v379;
LABEL_15:
      v21 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v22 = v21 | (v12 << 6);
      v23 = *(v19 + 56);
      v24 = *(v19 + 48) + 16 * v22;
      v25 = *(v24 + 8);
      v383 = *v24;
      v26 = v23 + 32 * v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      v17 = *(v26 + 16);
      LODWORD(v26) = *(v26 + 24);
      v388 = v27;
      v382 = v26;
      v385 = v28;
      if ((v26 & 1) == 0)
      {
        sub_255D5C258(v27, v28, v17, 0);
        sub_255D5C258(v27, v28, v17, 0);

        v69 = v27;
        v70 = v25;
        v7 = v380;
        v56 = v382;
        goto LABEL_34;
      }

      v381 = v25;
      v384 = v17;
      if ((~v17 & 0xF000000000000007) == 0)
      {
        v29 = v386;
        v30 = *(v386 + v376);
        if (!v30)
        {
          v34 = v388;
          sub_255D5C258(v388, v28, v384, 1);

          goto LABEL_64;
        }

        v31 = v375;
        swift_beginAccess();
        v32 = *(v29 + v31);
        v33 = *(v32 + 16);
        v34 = v388;
        sub_255D5C258(v388, v28, v384, 1);

        v373 = v30;

        if (!v33 || (v35 = sub_255D3CA20(v34, v28), (v36 & 1) == 0))
        {
          swift_endAccess();

          goto LABEL_64;
        }

        v37 = *(v32 + 56) + 32 * v35;
        v39 = *v37;
        v38 = *(v37 + 8);
        v40 = *(v37 + 16);
        v41 = *(v37 + 24);
        swift_endAccess();
        if ((v41 & 1) == 0)
        {
          sub_255D5C258(v39, v38, v40, 0);

          v395[0] = v39;
          v17 = v384;
          v7 = v380;
          v56 = v382;
          v156 = v39;
          goto LABEL_86;
        }

        v371 = v40;
        v372 = v39;
        v42 = (~v40 & 0xF000000000000007) == 0;
        v7 = v380;
        v370 = v38;
        if (!v42)
        {
          v164 = v373;
          if (!*(v373 + qword_27F7E85F8))
          {
            v229 = v371;
            v168 = v372;
            sub_255D5C258(v372, v38, v371, 1);
            sub_255D5D0CC(v229);
            goto LABEL_137;
          }

          v369 = *(v373 + qword_27F7E85F8);
          v165 = qword_27F7E8600;
          swift_beginAccess();
          v166 = *(v164 + v165);
          v167 = *(v166 + 16);
          v168 = v372;
          v169 = v38;
          v170 = v371;
          sub_255D5C258(v372, v169, v371, 1);
          v171 = v170;
          v38 = v370;
          sub_255D5D0CC(v171);

          if (!v167 || (v172 = sub_255D3CA20(v168, v38), (v173 & 1) == 0))
          {
            swift_endAccess();

            goto LABEL_137;
          }

          v174 = *(v166 + 56) + 32 * v172;
          v175 = *v174;
          v368 = *(v174 + 8);
          v176 = *(v174 + 16);
          v177 = *(v174 + 24);
          swift_endAccess();
          if ((v177 & 1) == 0)
          {
            sub_255D5C258(v175, v368, v176, 0);

            v178 = v373;
            goto LABEL_173;
          }

          v367 = v176;
          v42 = (~v176 & 0xF000000000000007) == 0;
          v178 = v373;
          if (!v42)
          {
            if (*(v369 + qword_27F7E85F8))
            {
              v291 = qword_27F7E8600;
              v365 = *(v369 + qword_27F7E85F8);
              swift_beginAccess();
              v292 = *(v369 + v291);
              v364 = *(v292 + 16);
              v366 = v175;
              v293 = v175;
              v294 = v367;
              sub_255D5C258(v293, v368, v367, 1);
              sub_255D5D0CC(v294);
              v295 = v365;

              if (v364)
              {
                v296 = sub_255D3CA20(v366, v368);
                if (v297)
                {
                  v298 = v295;
                  v299 = *(v292 + 56) + 32 * v296;
                  v300 = *v299;
                  v301 = *(v299 + 8);
                  v302 = *(v299 + 16);
                  v303 = *(v299 + 24);
                  swift_endAccess();
                  sub_255D5C258(v300, v301, v302, v303);
                  LODWORD(v364) = v303;
                  sub_255DDEBF8(v298, v300, v301, v302, v303, &v396);
                  if (v4)
                  {

                    sub_255D4DE84(v300, v301, v302, v364);
                    v4 = 0;
                    v11 = v378;
                    v178 = v373;
                    v38 = v370;
                    goto LABEL_222;
                  }

                  sub_255D4DE84(v300, v301, v302, v364);
                  v343 = v396;
                  v11 = v378;
                  v178 = v373;
                  v38 = v370;
                  v175 = v366;
LABEL_260:
                  if ((~v343 & 0xF000000000000007) == 0)
                  {
                    sub_255D5C33C();
                    v377 = swift_allocError();
                    v331 = v368;
                    *v344 = v175;
                    *(v344 + 8) = v331;
                    *(v344 + 16) = &type metadata for DecodableState;
                    *(v344 + 32) = 0;
                    swift_willThrow();

                    v333 = v367;
                    sub_255D2F870(v367);

                    v4 = 0;
                    goto LABEL_264;
                  }

                  sub_255DE08EC(v343, v369, v367, &v391);
                  if (!v4)
                  {
                    sub_255D5C324(v343);
                    v349 = v367;
                    sub_255D2F870(v367);

                    sub_255D4DE84(v175, v368, v349, 1);
                    goto LABEL_172;
                  }

                  sub_255D5C324(v343);
                  v333 = v367;
                  sub_255D2F870(v367);

                  v4 = 0;
                  v331 = v368;
LABEL_264:

                  sub_255D4DE84(v175, v331, v333, 1);
                  v168 = v372;
LABEL_137:
                  v396 = v168;
                  v397 = v38;
                  v178 = v373;
                  v230 = *(*v373 + 112);
                  swift_beginAccess();
                  v231 = *(v178 + v230);
                  if (*(v231 + 16))
                  {

                    v232 = sub_255D3CA20(v372, v38);
                    if (v233)
                    {
                      v234 = *(*(v231 + 56) + 8 * v232);

                      MEMORY[0x28223BE20](v235);
                      *(&v364 - 4) = MEMORY[0x277D837D0];
                      *(&v364 - 3) = &type metadata for DecodableState;
                      *(&v364 - 2) = MEMORY[0x277D837E0];
                      KeyPath = swift_getKeyPath();
                      MEMORY[0x28223BE20](KeyPath);
                      *(&v364 - 4) = MEMORY[0x277D837D0];
                      *(&v364 - 3) = &type metadata for DecodableState;
                      *(&v364 - 2) = MEMORY[0x277D837E0];
                      swift_getKeyPath();
                      sub_255E38728();

                      if ((v234 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_309;
                      }

                      v11 = v378;
                      if (v234 >= *(v391 + 16))
                      {
                        goto LABEL_313;
                      }

                      v391 = *(v391 + 8 * v234 + 32);

                      v7 = v380;
LABEL_172:
                      v175 = v391;
LABEL_173:
                      if ((~v175 & 0xF000000000000007) == 0)
                      {
                        sub_255D5C33C();
                        v260 = swift_allocError();
                        v254 = v372;
                        *v261 = v372;
                        *(v261 + 8) = v38;
                        *(v261 + 16) = &type metadata for DecodableState;
                        *(v261 + 32) = 0;
                        swift_willThrow();

                        v256 = v371;
                        sub_255D2F870(v371);

                        v4 = 0;
                        goto LABEL_177;
                      }

                      v262 = v371;
                      sub_255DE08EC(v175, v178, v371, &v392);
                      if (!v4)
                      {
                        sub_255D5C324(v175);
                        sub_255D2F870(v262);

                        sub_255D4DE84(v372, v38, v262, 1);
                        v156 = v392;
                        v395[0] = v392;
                        v17 = v384;
                        v56 = v382;
                        goto LABEL_86;
                      }

                      sub_255D5C324(v175);
                      sub_255D2F870(v262);

                      v4 = 0;
                      v254 = v372;
                      v256 = v262;
LABEL_177:

                      sub_255D4DE84(v254, v38, v256, 1);
                      v28 = v385;
                      v34 = v388;
LABEL_64:
                      v396 = v34;
                      v397 = v28;
                      v133 = v386;
                      v134 = *(*v386 + 112);
                      swift_beginAccess();
                      v135 = *(v133 + v134);
                      v7 = v380;
                      if (*(v135 + 16))
                      {

                        v136 = sub_255D3CA20(v388, v385);
                        if (v137)
                        {
                          v138 = v382;
                          v139 = *(*(v135 + 56) + 8 * v136);

                          MEMORY[0x28223BE20](v140);
                          v141 = MEMORY[0x277D837D0];
                          *(&v364 - 4) = MEMORY[0x277D837D0];
                          *(&v364 - 3) = &type metadata for DecodableState;
                          *(&v364 - 2) = MEMORY[0x277D837E0];
                          v142 = swift_getKeyPath();
                          MEMORY[0x28223BE20](v142);
                          *(&v364 - 4) = v141;
                          *(&v364 - 3) = &type metadata for DecodableState;
                          *(&v364 - 2) = MEMORY[0x277D837E0];
                          swift_getKeyPath();
                          sub_255E38728();

                          if ((v139 & 0x8000000000000000) != 0)
                          {
                            __break(1u);
LABEL_303:
                            __break(1u);
LABEL_304:
                            __break(1u);
LABEL_305:
                            __break(1u);
LABEL_306:
                            __break(1u);
LABEL_307:
                            __break(1u);
LABEL_308:
                            __break(1u);
LABEL_309:
                            __break(1u);
LABEL_310:
                            __break(1u);
LABEL_311:
                            __break(1u);
LABEL_312:
                            __break(1u);
LABEL_313:
                            __break(1u);
                            return;
                          }

                          v11 = v378;
                          if (v139 >= *(v392 + 16))
                          {
                            goto LABEL_304;
                          }

                          v56 = v138;
                          v395[0] = *(v392 + 8 * v139 + 32);

                          v7 = v380;
                          v17 = v384;
LABEL_85:
                          v156 = v395[0];
LABEL_86:
                          if ((~v156 & 0xF000000000000007) == 0)
                          {
                            sub_255D5C324(v156);
                            sub_255D5C33C();
                            v13 = swift_allocError();
                            v14 = v385;
                            *v15 = v388;
                            *(v15 + 8) = v14;
                            *(v15 + 16) = &type metadata for DecodableState;
                            *(v15 + 32) = 0;
                            swift_willThrow();

                            v16 = v13;
                            v17 = v384;

                            v4 = 0;
                            v18 = v381;
                            goto LABEL_6;
                          }

                          v157 = v156;
                          sub_255D5C30C(v156);
                          sub_255D5C324(v157);
                          v69 = v157;
                          v70 = v381;
                          goto LABEL_34;
                        }
                      }

                      v154 = *(v386 + *(*v386 + 120));
                      if (v154)
                      {
                        (*(*v154 + 248))(v395, &v396);
                      }

                      else
                      {
                        v395[0] = 0xF000000000000007;
                      }

                      v17 = v384;
                      v56 = v382;
                      goto LABEL_85;
                    }
                  }

                  v251 = *(v178 + *(*v178 + 120));
                  if (v251)
                  {
                    (*(*v251 + 248))(&v391, &v396);
                  }

                  else
                  {
                    v391 = 0xF000000000000007;
                  }

                  goto LABEL_172;
                }
              }

              swift_endAccess();

LABEL_222:
              v175 = v366;
            }

            else
            {
              sub_255D5C258(v175, v368, v367, 1);
              sub_255D5D0CC(v367);
            }

            sub_255DE3530(v175, v368, &v396);
            v343 = v396;
            goto LABEL_260;
          }

          if (*(v369 + qword_27F7E85F8))
          {
            v179 = qword_27F7E8600;
            v365 = *(v369 + qword_27F7E85F8);
            swift_beginAccess();
            v180 = *(v369 + v179);
            v366 = *(v180 + 16);
            sub_255D5C258(v175, v368, v367, 1);

            if (v366)
            {
              v181 = sub_255D3CA20(v175, v368);
              if (v182)
              {
                v366 = v175;
                v183 = *(v180 + 56) + 32 * v181;
                v184 = *v183;
                v185 = *(v183 + 8);
                v186 = *(v183 + 16);
                v187 = *(v183 + 24);
                swift_endAccess();
                sub_255D5C258(v184, v185, v186, v187);
                LODWORD(v364) = v187;
                sub_255DDEBF8(v365, v184, v185, v186, v187, &v396);
                if (v4)
                {

                  sub_255D4DE84(v184, v185, v186, v364);
                  v4 = 0;
                  v11 = v378;
                  v178 = v373;
                  v38 = v370;
                  v175 = v366;
                  goto LABEL_235;
                }

                sub_255D4DE84(v184, v185, v186, v364);
                v329 = v396;
                v11 = v378;
                v178 = v373;
                v38 = v370;
                v175 = v366;
LABEL_236:
                if ((~v329 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v329);
                  sub_255D5C33C();
                  v330 = swift_allocError();
                  v331 = v368;
                  *v332 = v175;
                  *(v332 + 8) = v331;
                  *(v332 + 16) = &type metadata for DecodableState;
                  *(v332 + 32) = 0;
                  swift_willThrow();

                  v4 = 0;
                  v333 = v367;
                  goto LABEL_264;
                }

                sub_255D5C30C(v329);
                sub_255D5C324(v329);

                sub_255D4DE84(v175, v368, v367, 1);
                v175 = v329;
                goto LABEL_173;
              }
            }

            swift_endAccess();
          }

          else
          {

            sub_255D5D0CC(v367);
          }

LABEL_235:
          sub_255DE3530(v175, v368, &v390);
          v329 = v390;
          goto LABEL_236;
        }

        v43 = v373;
        v44 = *(v373 + qword_27F7E85F8);
        if (!v44)
        {
          v48 = v370;

          sub_255D5D0CC(v371);
          goto LABEL_124;
        }

        v45 = qword_27F7E8600;
        swift_beginAccess();
        v46 = *(v43 + v45);
        v368 = *(v46 + 16);
        v47 = v372;
        v48 = v370;
        sub_255D5C258(v372, v370, v371, 1);
        v369 = v44;

        if (!v368 || (v49 = sub_255D3CA20(v47, v48), (v50 & 1) == 0))
        {
          swift_endAccess();

          v43 = v373;
          goto LABEL_124;
        }

        v51 = *(v46 + 56) + 32 * v49;
        v52 = *v51;
        v53 = *(v51 + 8);
        v54 = *(v51 + 16);
        v55 = *(v51 + 24);
        swift_endAccess();
        if ((v55 & 1) == 0)
        {
          sub_255D5C258(v52, v53, v54, 0);

          v391 = v52;
          v56 = v382;
          goto LABEL_163;
        }

        v368 = v53;
        v56 = v382;
        v366 = v54;
        if ((~v54 & 0xF000000000000007) == 0)
        {
          v57 = *(v369 + qword_27F7E85F8);
          if (v57)
          {
            v367 = v52;
            v58 = v369;
            v59 = qword_27F7E8600;
            v365 = v57;
            swift_beginAccess();
            v60 = *(v58 + v59);
            v61 = *(v60 + 16);
            sub_255D5C258(v367, v368, v54, 1);

            if (v61)
            {
              v62 = sub_255D3CA20(v367, v368);
              if (v63)
              {
                v64 = *(v60 + 56) + 32 * v62;
                v65 = *v64;
                v66 = *(v64 + 8);
                v67 = *(v64 + 16);
                v68 = *(v64 + 24);
                swift_endAccess();
                sub_255D5C258(v65, v66, v67, v68);
                LODWORD(v364) = v68;
                sub_255DDEBF8(v365, v65, v66, v67, v68, &v396);
                if (v4)
                {

                  sub_255D4DE84(v65, v66, v67, v364);
                  v4 = 0;
                  v11 = v378;
                  v56 = v382;
                  goto LABEL_214;
                }

                sub_255D4DE84(v65, v66, v67, v364);
                v319 = v396;
                v11 = v378;
                v56 = v382;
                v43 = v373;
                v52 = v367;
LABEL_226:
                if ((~v319 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v319);
                  sub_255D5C33C();
                  v320 = swift_allocError();
                  v321 = v368;
                  *v322 = v52;
                  *(v322 + 8) = v321;
                  *(v322 + 16) = &type metadata for DecodableState;
                  *(v322 + 32) = 0;
                  swift_willThrow();

                  v4 = 0;
                  v323 = v366;
                  goto LABEL_250;
                }

                sub_255D5C30C(v319);
                sub_255D5C324(v319);

                sub_255D4DE84(v52, v368, v366, 1);
                v391 = v319;
                v52 = v319;
LABEL_163:
                if ((~v52 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v52);
                  sub_255D5C33C();
                  v253 = swift_allocError();
                  v254 = v372;
                  v38 = v370;
                  *v255 = v372;
                  *(v255 + 8) = v38;
                  *(v255 + 16) = &type metadata for DecodableState;
                  *(v255 + 32) = 0;
                  swift_willThrow();

                  v4 = 0;
                  v256 = v371;
                  goto LABEL_177;
                }

                sub_255D5C30C(v52);
                sub_255D5C324(v52);

                sub_255D4DE84(v372, v370, v371, 1);
                v395[0] = v52;
                v156 = v52;
                v17 = v384;
                goto LABEL_86;
              }
            }

            swift_endAccess();

LABEL_214:
            v43 = v373;
            v317 = v368;
            v52 = v367;
          }

          else
          {

            sub_255D5D0CC(v54);
            v317 = v368;
            v43 = v373;
          }

          sub_255DE3530(v52, v317, &v389);
          v319 = v389;
          goto LABEL_226;
        }

        v265 = *(v369 + qword_27F7E85F8);
        if (v265)
        {
          v367 = v52;
          v266 = v369;
          v267 = qword_27F7E8600;
          v365 = v265;
          swift_beginAccess();
          v268 = *(v266 + v267);
          v269 = *(v268 + 16);
          sub_255D5C258(v367, v368, v54, 1);
          sub_255D5D0CC(v54);

          if (v269)
          {
            v270 = sub_255D3CA20(v367, v368);
            if (v271)
            {
              v272 = *(v268 + 56) + 32 * v270;
              v273 = *v272;
              v274 = *(v272 + 8);
              v275 = *(v272 + 16);
              v276 = *(v272 + 24);
              swift_endAccess();
              sub_255D5C258(v273, v274, v275, v276);
              LODWORD(v364) = v276;
              sub_255DDEBF8(v365, v273, v274, v275, v276, &v396);
              if (v4)
              {

                sub_255D4DE84(v273, v274, v275, v364);
                v4 = 0;
                v11 = v378;
                v56 = v382;
                goto LABEL_219;
              }

              sub_255D4DE84(v273, v274, v275, v364);
              v338 = v396;
              v11 = v378;
              v56 = v382;
              v43 = v373;
              v52 = v367;
LABEL_246:
              if ((~v338 & 0xF000000000000007) != 0)
              {
                v377 = v338;
                v323 = v366;
                sub_255DE08EC(v338, v369, v366, &v390);
                if (!v4)
                {
                  sub_255D5C324(v377);
                  sub_255D2F870(v323);

                  sub_255D4DE84(v52, v368, v323, 1);
                  v52 = v390;
                  v391 = v390;
                  goto LABEL_163;
                }

                sub_255D5C324(v377);
                sub_255D2F870(v323);

                v4 = 0;
                v321 = v368;
              }

              else
              {
                sub_255D5C33C();
                v377 = swift_allocError();
                v321 = v368;
                *v339 = v52;
                *(v339 + 8) = v321;
                *(v339 + 16) = &type metadata for DecodableState;
                *(v339 + 32) = 0;
                swift_willThrow();

                v323 = v366;
                sub_255D2F870(v366);

                v4 = 0;
              }

LABEL_250:

              sub_255D4DE84(v52, v321, v323, 1);
              v48 = v370;
LABEL_124:
              v396 = v372;
              v397 = v48;
              v212 = *(*v43 + 112);
              swift_beginAccess();
              v213 = *(v43 + v212);
              if (*(v213 + 16))
              {

                v214 = sub_255D3CA20(v372, v370);
                if (v215)
                {
                  v216 = *(*(v213 + 56) + 8 * v214);

                  MEMORY[0x28223BE20](v217);
                  v218 = MEMORY[0x277D837D0];
                  *(&v364 - 4) = MEMORY[0x277D837D0];
                  *(&v364 - 3) = &type metadata for DecodableState;
                  *(&v364 - 2) = MEMORY[0x277D837E0];
                  v219 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v219);
                  *(&v364 - 4) = v218;
                  *(&v364 - 3) = &type metadata for DecodableState;
                  *(&v364 - 2) = MEMORY[0x277D837E0];
                  swift_getKeyPath();
                  sub_255E38728();

                  if ((v216 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_306;
                  }

                  v11 = v378;
                  v56 = v382;
                  if (v216 >= *(v390 + 16))
                  {
                    goto LABEL_310;
                  }

                  v391 = *(v390 + 8 * v216 + 32);

                  v7 = v380;
                  goto LABEL_162;
                }
              }

              v249 = *(v43 + *(*v43 + 120));
              if (v249)
              {
                (*(*v249 + 248))(&v391, &v396);
              }

              else
              {
                v391 = 0xF000000000000007;
              }

              v56 = v382;
LABEL_162:
              v52 = v391;
              goto LABEL_163;
            }
          }

          swift_endAccess();

LABEL_219:
          v43 = v373;
          v318 = v368;
          v52 = v367;
        }

        else
        {
          sub_255D5C258(v52, v368, v54, 1);
          sub_255D5D0CC(v54);
          v318 = v368;
          v43 = v373;
        }

        sub_255DE3530(v52, v318, &v396);
        v338 = v396;
        goto LABEL_246;
      }

      v91 = v386;
      v92 = *(v386 + v376);
      if (!v92)
      {
        v96 = v388;
        v143 = v384;
        sub_255D5C258(v388, v28, v384, 1);

        sub_255D5D0CC(v143);
        goto LABEL_70;
      }

      v93 = v375;
      swift_beginAccess();
      v94 = *(v91 + v93);
      v95 = *(v94 + 16);
      v96 = v388;
      v373 = v92;
      v97 = v384;
      sub_255D5C258(v388, v28, v384, 1);

      v98 = v97;
      v99 = v373;
      sub_255D5D0CC(v98);

      if (!v95 || (v100 = sub_255D3CA20(v96, v28), (v101 & 1) == 0))
      {
        swift_endAccess();

        goto LABEL_70;
      }

      v377 = v4;
      v102 = *(v94 + 56) + 32 * v100;
      v103 = *v102;
      v104 = *(v102 + 8);
      v105 = *(v102 + 16);
      v106 = *(v102 + 24);
      swift_endAccess();
      if ((v106 & 1) == 0)
      {
        sub_255D5C258(v103, v104, v105, 0);

        v147 = v382;
        v7 = v380;
        v158 = v103;
        v4 = v377;
        v11 = v378;
        goto LABEL_90;
      }

      v370 = v103;
      v371 = v104;
      v372 = v105;
      v42 = (~v105 & 0xF000000000000007) == 0;
      v7 = v380;
      if (v42)
      {
        v107 = *(v99 + qword_27F7E85F8);
        v108 = v370;
        v4 = v377;
        if (v107)
        {
          v109 = qword_27F7E8600;
          swift_beginAccess();
          v110 = *(v99 + v109);
          v111 = *(v110 + 16);
          v112 = v371;
          sub_255D5C258(v108, v371, v372, 1);

          if (v111)
          {
            v113 = sub_255D3CA20(v108, v112);
            if (v114)
            {
              v369 = v107;
              v115 = *(v110 + 56) + 32 * v113;
              v116 = *v115;
              v117 = *(v115 + 8);
              v118 = *(v115 + 16);
              v119 = *(v115 + 24);
              swift_endAccess();
              if ((v119 & 1) == 0)
              {
                sub_255D5C258(v116, v117, v118, 0);

                v392 = v116;
                v112 = v371;
                v120 = v108;
                goto LABEL_168;
              }

              v367 = v118;
              v368 = v117;
              v120 = v108;
              if ((~v118 & 0xF000000000000007) == 0)
              {
                v121 = v369;
                v122 = *(v369 + qword_27F7E85F8);
                if (v122)
                {
                  v366 = qword_27F7E8600;
                  swift_beginAccess();
                  v364 = *(v121 + v366);
                  v365 = *(v364 + 16);
                  v123 = v368;
                  sub_255D5C258(v116, v368, v118, 1);
                  v366 = v122;

                  if (v365)
                  {
                    v124 = sub_255D3CA20(v116, v123);
                    if (v125)
                    {
                      v126 = *(v364 + 56) + 32 * v124;
                      v128 = *v126;
                      v127 = *(v126 + 8);
                      v129 = *(v126 + 16);
                      v130 = *(v126 + 24);
                      swift_endAccess();
                      sub_255D5C258(v128, v127, v129, v130);
                      v364 = v128;
                      LODWORD(v365) = v130;
                      sub_255DDEBF8(v366, v128, v127, v129, v130, &v396);
                      if (v4)
                      {

                        sub_255D4DE84(v364, v127, v129, v365);
                        v4 = 0;
                        v7 = v380;
                        v120 = v370;
                        v123 = v368;
                        goto LABEL_230;
                      }

                      sub_255D4DE84(v364, v127, v129, v365);
                      v324 = v396;
                      v7 = v380;
                      v120 = v370;
LABEL_231:
                      v112 = v371;
                      if ((~v324 & 0xF000000000000007) == 0)
                      {
                        sub_255D5C324(v324);
                        sub_255D5C33C();
                        v325 = swift_allocError();
                        v326 = v368;
                        *v327 = v116;
                        *(v327 + 8) = v326;
                        *(v327 + 16) = &type metadata for DecodableState;
                        *(v327 + 32) = 0;
                        swift_willThrow();

                        v4 = 0;
                        v328 = v367;
                        goto LABEL_257;
                      }

                      sub_255D5C30C(v324);
                      sub_255D5C324(v324);

                      sub_255D4DE84(v116, v368, v367, 1);
                      v392 = v324;
                      v116 = v324;
LABEL_168:
                      if ((~v116 & 0xF000000000000007) != 0)
                      {
                        sub_255D5C30C(v116);
                        sub_255D5C324(v116);

                        sub_255D4DE84(v120, v112, v372, 1);
                        v158 = v116;
LABEL_188:
                        v11 = v378;
                        v147 = v382;
                        goto LABEL_90;
                      }

                      v257 = v112;
                      sub_255D5C324(v116);
                      sub_255D5C33C();
                      v258 = swift_allocError();
                      *v259 = v120;
                      *(v259 + 8) = v112;
                      *(v259 + 16) = &type metadata for DecodableState;
                      *(v259 + 32) = 0;
                      swift_willThrow();

                      v4 = 0;
                      v248 = v372;
                      goto LABEL_185;
                    }
                  }

                  swift_endAccess();
                }

                else
                {
                  v123 = v368;

                  sub_255D5D0CC(v118);
                }

LABEL_230:
                sub_255DE3530(v116, v123, &v390);
                v324 = v390;
                goto LABEL_231;
              }

              v277 = v369;
              v278 = *(v369 + qword_27F7E85F8);
              if (v278)
              {
                v279 = qword_27F7E8600;
                swift_beginAccess();
                v364 = *(v277 + v279);
                v365 = *(v364 + 16);
                v281 = v367;
                v280 = v368;
                sub_255D5C258(v116, v368, v367, 1);
                v282 = v281;
                v283 = v280;
                sub_255D5D0CC(v282);
                v366 = v278;

                if (v365)
                {
                  v284 = sub_255D3CA20(v116, v280);
                  if (v285)
                  {
                    v286 = *(v364 + 56) + 32 * v284;
                    v287 = *v286;
                    v288 = *(v286 + 8);
                    v289 = *(v286 + 16);
                    v290 = *(v286 + 24);
                    swift_endAccess();
                    sub_255D5C258(v287, v288, v289, v290);
                    sub_255DDEBF8(v366, v287, v288, v289, v290, &v396);
                    if (v4)
                    {

                      sub_255D4DE84(v287, v288, v289, v290);
                      v4 = 0;
                      v7 = v380;
                      v120 = v370;
                      v283 = v368;
                      goto LABEL_252;
                    }

                    sub_255D4DE84(v287, v288, v289, v290);
                    v341 = v396;
                    v7 = v380;
                    v120 = v370;
LABEL_253:
                    v112 = v371;
                    if ((~v341 & 0xF000000000000007) != 0)
                    {
                      v328 = v367;
                      sub_255DE08EC(v341, v369, v367, &v391);
                      if (!v4)
                      {
                        sub_255D5C324(v341);
                        sub_255D2F870(v328);

                        sub_255D4DE84(v116, v368, v328, 1);
                        v116 = v391;
                        v392 = v391;
                        goto LABEL_168;
                      }

                      sub_255D5C324(v341);
                      sub_255D2F870(v328);

                      v4 = 0;
                      v326 = v368;
                    }

                    else
                    {
                      sub_255D5C33C();
                      v377 = swift_allocError();
                      v326 = v368;
                      *v342 = v116;
                      *(v342 + 8) = v326;
                      *(v342 + 16) = &type metadata for DecodableState;
                      *(v342 + 32) = 0;
                      swift_willThrow();

                      v328 = v367;
                      sub_255D2F870(v367);

                      v4 = 0;
                    }

LABEL_257:

                    sub_255D4DE84(v116, v326, v328, 1);
LABEL_131:
                    v396 = v120;
                    v397 = v112;
                    v220 = v373;
                    v221 = *(*v373 + 112);
                    swift_beginAccess();
                    v222 = *(v220 + v221);
                    if (*(v222 + 16))
                    {

                      v223 = sub_255D3CA20(v120, v112);
                      if (v224)
                      {
                        v225 = *(*(v222 + 56) + 8 * v223);

                        MEMORY[0x28223BE20](v226);
                        v227 = MEMORY[0x277D837D0];
                        *(&v364 - 4) = MEMORY[0x277D837D0];
                        *(&v364 - 3) = &type metadata for DecodableState;
                        *(&v364 - 2) = MEMORY[0x277D837E0];
                        v228 = swift_getKeyPath();
                        v377 = &v364;
                        MEMORY[0x28223BE20](v228);
                        *(&v364 - 4) = v227;
                        *(&v364 - 3) = &type metadata for DecodableState;
                        *(&v364 - 2) = MEMORY[0x277D837E0];
                        swift_getKeyPath();
                        sub_255E38728();

                        if ((v225 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_308;
                        }

                        if (v225 >= *(v391 + 16))
                        {
                          goto LABEL_312;
                        }

                        v392 = *(v391 + 8 * v225 + 32);

                        v7 = v380;
                        goto LABEL_167;
                      }
                    }

                    v250 = *(v373 + *(*v373 + 120));
                    if (v250)
                    {
                      (*(*v250 + 248))(&v392, &v396);
                    }

                    else
                    {
                      v392 = 0xF000000000000007;
                    }

LABEL_167:
                    v116 = v392;
                    goto LABEL_168;
                  }
                }

                swift_endAccess();
              }

              else
              {
                v340 = v367;
                v283 = v368;
                sub_255D5C258(v116, v368, v367, 1);
                sub_255D5D0CC(v340);
              }

LABEL_252:
              sub_255DE3530(v116, v283, &v396);
              v341 = v396;
              goto LABEL_253;
            }
          }

          swift_endAccess();
        }

        else
        {
          v112 = v371;

          sub_255D5D0CC(v372);
        }

        v120 = v108;
        goto LABEL_131;
      }

      v188 = *(v99 + qword_27F7E85F8);
      v189 = v370;
      v4 = v377;
      if (!v188)
      {
        v194 = v371;
        v237 = v372;
        sub_255D5C258(v370, v371, v372, 1);
        sub_255D5D0CC(v237);
        goto LABEL_143;
      }

      v190 = qword_27F7E8600;
      swift_beginAccess();
      v191 = *(v99 + v190);
      v192 = *(v191 + 16);
      v194 = v371;
      v193 = v372;
      sub_255D5C258(v189, v371, v372, 1);
      sub_255D5D0CC(v193);

      v195 = v188;
      if (!v192 || (v196 = sub_255D3CA20(v189, v194), (v197 & 1) == 0))
      {
        swift_endAccess();

        v4 = v377;
        goto LABEL_143;
      }

      v198 = *(v191 + 56) + 32 * v196;
      v200 = *v198;
      v199 = *(v198 + 8);
      v369 = *(v198 + 16);
      v201 = *(v198 + 24);
      swift_endAccess();
      if ((v201 & 1) == 0)
      {
        sub_255D5C258(v200, v199, v369, 0);

        v248 = v372;
        v4 = v377;
        goto LABEL_181;
      }

      v4 = v377;
      if ((~v369 & 0xF000000000000007) == 0)
      {
        v202 = *(v188 + qword_27F7E85F8);
        if (v202)
        {
          v203 = qword_27F7E8600;
          swift_beginAccess();
          v204 = *(v195 + v203);
          v368 = *(v204 + 16);
          sub_255D5C258(v200, v199, v369, 1);

          if (v368)
          {
            v205 = sub_255D3CA20(v200, v199);
            if (v206)
            {
              v367 = v199;
              v368 = v202;
              v207 = *(v204 + 56) + 32 * v205;
              v208 = *v207;
              v209 = *(v207 + 8);
              v210 = *(v207 + 16);
              v211 = *(v207 + 24);
              swift_endAccess();
              sub_255D5C258(v208, v209, v210, v211);
              LODWORD(v366) = v211;
              sub_255DDEBF8(v368, v208, v209, v210, v211, &v396);
              if (v4)
              {

                sub_255D4DE84(v208, v209, v210, v366);
                v4 = 0;
                v7 = v380;
                v199 = v367;
                goto LABEL_240;
              }

              sub_255D4DE84(v208, v209, v210, v366);
              v334 = v396;
              v7 = v380;
              v199 = v367;
LABEL_241:
              if ((~v334 & 0xF000000000000007) == 0)
              {
                sub_255D5C324(v334);
                sub_255D5C33C();
                v335 = swift_allocError();
                *v336 = v200;
                *(v336 + 8) = v199;
                *(v336 + 16) = &type metadata for DecodableState;
                *(v336 + 32) = 0;
                swift_willThrow();

                v337 = v335;
                goto LABEL_271;
              }

              sub_255D5C30C(v334);
              sub_255D5C324(v334);

              sub_255D4DE84(v200, v199, v369, 1);
              v200 = v334;
              v248 = v372;
              goto LABEL_181;
            }
          }

          swift_endAccess();
        }

        else
        {

          sub_255D5D0CC(v369);
        }

LABEL_240:
        sub_255DE3530(v200, v199, &v391);
        v334 = v391;
        goto LABEL_241;
      }

      v304 = *(v188 + qword_27F7E85F8);
      if (v304)
      {
        v305 = qword_27F7E8600;
        v368 = v304;
        swift_beginAccess();
        v306 = *(v195 + v305);
        v307 = v199;
        v367 = *(v306 + 16);
        v308 = v199;
        v309 = v369;
        sub_255D5C258(v200, v308, v369, 1);
        sub_255D5D0CC(v309);

        if (v367 && (v310 = sub_255D3CA20(v200, v307), (v311 & 1) != 0))
        {
          v367 = v307;
          v312 = *(v306 + 56) + 32 * v310;
          v314 = *v312;
          v313 = *(v312 + 8);
          v315 = *(v312 + 16);
          v316 = *(v312 + 24);
          swift_endAccess();
          sub_255D5C258(v314, v313, v315, v316);
          v365 = v314;
          LODWORD(v366) = v316;
          sub_255DDEBF8(v368, v314, v313, v315, v316, &v396);
          if (!v4)
          {

            sub_255D4DE84(v365, v313, v315, v366);
            v346 = v396;
            v7 = v380;
            v199 = v367;
            goto LABEL_267;
          }

          sub_255D4DE84(v365, v313, v315, v366);
          v4 = 0;
          v7 = v380;
          v199 = v367;
        }

        else
        {
          swift_endAccess();

          v199 = v307;
        }
      }

      else
      {
        v345 = v369;
        sub_255D5C258(v200, v199, v369, 1);
        sub_255D5D0CC(v345);
      }

      sub_255DE3530(v200, v199, &v396);
      v346 = v396;
LABEL_267:
      if ((~v346 & 0xF000000000000007) == 0)
      {
        sub_255D5C33C();
        v347 = swift_allocError();
        *v348 = v200;
        *(v348 + 8) = v199;
        *(v348 + 16) = &type metadata for DecodableState;
        *(v348 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(v369);
        v337 = v347;
        goto LABEL_271;
      }

      sub_255DE08EC(v346, v195, v369, &v392);
      if (v4)
      {
        sub_255D5C324(v346);
        sub_255D2F870(v369);
        v337 = v4;
LABEL_271:

        v4 = 0;

        sub_255D4DE84(v200, v199, v369, 1);
        v189 = v370;
        v194 = v371;
LABEL_143:
        v396 = v189;
        v397 = v194;
        v238 = v373;
        v239 = *(*v373 + 112);
        swift_beginAccess();
        v240 = *(v238 + v239);
        if (*(v240 + 16))
        {

          v241 = sub_255D3CA20(v189, v371);
          if (v242)
          {
            v243 = *(*(v240 + 56) + 8 * v241);

            MEMORY[0x28223BE20](v244);
            v245 = MEMORY[0x277D837D0];
            *(&v364 - 4) = MEMORY[0x277D837D0];
            *(&v364 - 3) = &type metadata for DecodableState;
            v246 = MEMORY[0x277D837E0];
            *(&v364 - 2) = MEMORY[0x277D837E0];
            v247 = swift_getKeyPath();
            v377 = &v364;
            MEMORY[0x28223BE20](v247);
            *(&v364 - 4) = v245;
            *(&v364 - 3) = &type metadata for DecodableState;
            *(&v364 - 2) = v246;
            swift_getKeyPath();
            sub_255E38728();

            v248 = v372;
            if ((v243 & 0x8000000000000000) != 0)
            {
              goto LABEL_307;
            }

            if (v243 >= *(v392 + 16))
            {
              goto LABEL_311;
            }

            v392 = *(v392 + 8 * v243 + 32);

            v7 = v380;
            goto LABEL_180;
          }
        }

        v252 = *(v373 + *(*v373 + 120));
        if (v252)
        {
          (*(*v252 + 248))(&v392, &v396);
        }

        else
        {
          v392 = 0xF000000000000007;
        }

        v248 = v372;
LABEL_180:
        v200 = v392;
        goto LABEL_181;
      }

      sub_255D5C324(v346);
      v350 = v369;
      sub_255D2F870(v369);

      sub_255D4DE84(v200, v199, v350, 1);
      v200 = v392;
      v248 = v372;
LABEL_181:
      if ((~v200 & 0xF000000000000007) != 0)
      {
        sub_255DE08EC(v200, v373, v248, v395);
        if (!v4)
        {
          sub_255D5C324(v200);
          sub_255D2F870(v248);

          sub_255D4DE84(v370, v371, v248, 1);
          v158 = v395[0];
          goto LABEL_188;
        }

        sub_255D5C324(v200);
        sub_255D2F870(v248);

        v4 = 0;
        v120 = v370;
        v257 = v371;
      }

      else
      {
        sub_255D5C33C();
        v263 = swift_allocError();
        v120 = v370;
        v257 = v371;
        *v264 = v370;
        *(v264 + 8) = v257;
        *(v264 + 16) = &type metadata for DecodableState;
        *(v264 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(v248);

        v4 = 0;
      }

LABEL_185:

      sub_255D4DE84(v120, v257, v248, 1);
      v28 = v385;
      v96 = v388;
LABEL_70:
      v396 = v96;
      v397 = v28;
      v144 = v386;
      v145 = *(*v386 + 112);
      swift_beginAccess();
      v146 = *(v144 + v145);
      v11 = v378;
      v147 = v382;
      v7 = v380;
      if (*(v146 + 16))
      {

        v148 = sub_255D3CA20(v388, v385);
        if (v149)
        {
          v150 = *(*(v146 + 56) + 8 * v148);

          MEMORY[0x28223BE20](v151);
          v152 = MEMORY[0x277D837D0];
          *(&v364 - 4) = MEMORY[0x277D837D0];
          *(&v364 - 3) = &type metadata for DecodableState;
          *(&v364 - 2) = MEMORY[0x277D837E0];
          v153 = swift_getKeyPath();
          MEMORY[0x28223BE20](v153);
          *(&v364 - 4) = v152;
          *(&v364 - 3) = &type metadata for DecodableState;
          *(&v364 - 2) = MEMORY[0x277D837E0];
          swift_getKeyPath();
          sub_255E38728();

          if ((v150 & 0x8000000000000000) != 0)
          {
            goto LABEL_303;
          }

          v11 = v378;
          v147 = v382;
          if (v150 >= *(v395[0] + 16))
          {
            goto LABEL_305;
          }

          v395[0] = *(v395[0] + 8 * v150 + 32);

          v7 = v380;
          goto LABEL_89;
        }
      }

      v155 = *(v386 + *(*v386 + 120));
      if (v155)
      {
        (*(*v155 + 248))(v395, &v396);
      }

      else
      {
        v395[0] = 0xF000000000000007;
      }

LABEL_89:
      v158 = v395[0];
LABEL_90:
      if ((~v158 & 0xF000000000000007) == 0)
      {
        sub_255D5C33C();
        v159 = swift_allocError();
        v160 = v385;
        *v161 = v388;
        *(v161 + 8) = v160;
        *(v161 + 16) = &type metadata for DecodableState;
        *(v161 + 32) = 0;
        swift_willThrow();

        v162 = v384;
        sub_255D2F870(v384);
        v163 = v159;
        v17 = v162;
        goto LABEL_94;
      }

      v17 = v384;
      sub_255DE08EC(v158, v386, v384, &v393);
      if (v4)
      {
        sub_255D5C324(v158);
        sub_255D2F870(v17);
        v163 = v4;
LABEL_94:

        v4 = 0;
        v18 = v381;
        v56 = v147;
LABEL_6:
        v393 = v383;
        v394 = v18;
        goto LABEL_7;
      }

      sub_255D5C324(v158);
      sub_255D2F870(v17);
      v69 = v393;
      v70 = v381;
      v56 = v147;
LABEL_34:
      v393 = v383;
      v394 = v70;
      if ((~v69 & 0xF000000000000007) != 0)
      {
        v377 = v4;
        v71 = v56;
        v72 = v69;
        v384 = v17;
        v73 = v386;
        v74 = *(*v386 + 112);
        swift_beginAccess();
        v75 = *(v73 + v74);
        v76 = *(v75 + 16);

        if (!v76)
        {
          goto LABEL_61;
        }

        v77 = sub_255D3CA20(v383, v70);
        if (v78)
        {
          v79 = *(*(v75 + 56) + 8 * v77);
          v381 = v70;

          MEMORY[0x28223BE20](v80);
          v81 = MEMORY[0x277D837D0];
          *(&v364 - 4) = MEMORY[0x277D837D0];
          *(&v364 - 3) = &type metadata for DecodableState;
          v82 = MEMORY[0x277D837E0];
          *(&v364 - 2) = MEMORY[0x277D837E0];
          v83 = swift_getKeyPath();
          MEMORY[0x28223BE20](v83);
          *(&v364 - 4) = v81;
          *(&v364 - 3) = &type metadata for DecodableState;
          *(&v364 - 2) = v82;
          swift_getKeyPath();
          v383 = sub_255E38718();
          v85 = v84;
          v86 = *v84;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v85 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v86 = sub_255DF5ECC(v86);
            *v85 = v86;
          }

          v88 = v382;
          v4 = v377;
          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_299;
          }

          if (v79 >= *(v86 + 2))
          {
            goto LABEL_300;
          }

          v89 = &v86[8 * v79];
          v90 = *(v89 + 4);
          *(v89 + 4) = v72;

          v383(&v396, 0);

          sub_255D5C324(v72);

          sub_255D4DE84(v388, v385, v384, v88);
          v7 = v380;
          v11 = v378;
        }

        else
        {

LABEL_61:
          v131 = *(v386 + *(*v386 + 120));
          if (v131)
          {
            v396 = v72;
            v132 = *(*v131 + 256);
            sub_255D5C30C(v72);

            v132(&v396, &v393);
            v7 = v380;

            sub_255D5C324(v72);
          }

          else
          {
            sub_255DD5C54(v383, v70, v72);
            sub_255D5C324(v72);
            swift_bridgeObjectRelease_n();
          }

          sub_255D4DE84(v388, v385, v384, v71);
          v4 = v377;
          v11 = v378;
        }
      }

      else
      {
LABEL_7:

        sub_255D4DE84(v388, v385, v17, v56);
      }
    }
  }

LABEL_285:
  if (v6)
  {
    v351 = *(v6 + 16);
    if (v351)
    {
      v352 = 0;
      v353 = v6 + 32;
      while (v352 < *(v6 + 16))
      {
        sub_255D3CE1C(v353, &v396);
        v354 = v398;
        v355 = v399;
        __swift_project_boxed_opaque_existential_1(&v396, v398);
        (*(v355 + 40))(a1, v387, v354, v355);
        if (v4)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v396);
          if (qword_27F7E5E80 != -1)
          {
            goto LABEL_301;
          }

          goto LABEL_293;
        }

        ++v352;
        __swift_destroy_boxed_opaque_existential_1Tm(&v396);
        v353 += 40;
        if (v351 == v352)
        {
          return;
        }
      }

LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      swift_once();
LABEL_293:
      v356 = sub_255E386A8();
      __swift_project_value_buffer(v356, qword_27F8152D8);
      v357 = v4;
      v358 = sub_255E38688();
      v359 = sub_255E3A848();

      if (os_log_type_enabled(v358, v359))
      {
        v360 = swift_slowAlloc();
        v361 = swift_slowAlloc();
        *v360 = 138412290;
        v362 = v4;
        v363 = _swift_stdlib_bridgeErrorToNSError();
        *(v360 + 4) = v363;
        *v361 = v363;
        _os_log_impl(&dword_255D2E000, v358, v359, "AnimationAction encountered error while animating actions: %@", v360, 0xCu);
        sub_255D395E4(v361, &qword_27F7E6B60, &qword_255E3EF00);
        MEMORY[0x259C4F9E0](v361, -1, -1);
        MEMORY[0x259C4F9E0](v360, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_255DFA0A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6974616D696E61;
  v4 = 0xE90000000000006ELL;
  if (v2 != 1)
  {
    v3 = 0x736E6F69746361;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 2036625250;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6F6974616D696E61;
  v8 = 0xE90000000000006ELL;
  if (*a2 != 1)
  {
    v7 = 0x736E6F69746361;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 2036625250;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DFA1A4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFA244()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DFA2D0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFA36C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DFB208();
  *a2 = result;
  return result;
}

void sub_255DFA39C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE90000000000006ELL;
  v5 = 0x6F6974616D696E61;
  if (v2 != 1)
  {
    v5 = 0x736E6F69746361;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2036625250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DFA3F8()
{
  v1 = 0x6F6974616D696E61;
  if (*v0 != 1)
  {
    v1 = 0x736E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2036625250;
  }
}

uint64_t sub_255DFA450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DFB208();
  *a1 = result;
  return result;
}

uint64_t sub_255DFA478(uint64_t a1)
{
  v2 = sub_255DFB018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFA4B4(uint64_t a1)
{
  v2 = sub_255DFB018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFA4F0@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v80 = *(v5 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E86E8, &qword_255E56C58);
  v78 = *(v9 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_255DFB018();
  sub_255E3AE28();
  if (v2)
  {
LABEL_2:
    v15 = v82;
    goto LABEL_28;
  }

  v74 = v8;
  v81 = v5;
  LOBYTE(v88) = 0;
  v16 = v12;
  v17 = v9;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    v18 = 0;
    v19 = v82;
LABEL_25:
    v93 = 1;
    sub_255DFB06C();
    sub_255E3ABA8();
    if (!v3)
    {
      v97 = v94;
      v98 = v95;
      v99[0] = v96[0];
      *(v99 + 9) = *(v96 + 9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
      LOBYTE(v88) = 2;
      sub_255D7B658();
      sub_255E3ABA8();
      v79 = v18;
      v57 = v92;
      v58 = v78;
      if (v92)
      {
        v59 = *(v92 + 16);
        if (v59)
        {
          v69 = v16;
          v70 = v17;
          v100 = 0;
          v83 = MEMORY[0x277D84F90];
          sub_255DE5EF0(0, v59, 0);
          v60 = v83;
          v61 = v57 + 32;
          do
          {
            sub_255D7B730(v61, &v84);
            sub_255D34630(&v84, &v88);
            v83 = v60;
            v63 = *(v60 + 16);
            v62 = *(v60 + 24);
            if (v63 >= v62 >> 1)
            {
              sub_255DE5EF0((v62 > 1), v63 + 1, 1);
              v60 = v83;
            }

            *(v60 + 16) = v63 + 1;
            sub_255D34630(&v88, v60 + 40 * v63 + 32);
            v61 += 40;
            --v59;
          }

          while (v59);
          (*(v78 + 8))(v69, v70);
        }

        else
        {

          (*(v58 + 8))(v16, v17);
          v60 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        (*(v78 + 8))(v16, v17);
        v60 = 0;
      }

      v64 = v73;
      v65 = v79;
      *&v84 = v79;
      *(&v84 + 1) = v60;
      v86 = v98;
      v87[0] = v99[0];
      *(v87 + 9) = *(v99 + 9);
      v85 = v97;
      v66 = v97;
      v67 = v87[0];
      v68 = v84;
      v73[2] = v98;
      v64[3] = v67;
      *(v64 + 57) = *(v87 + 9);
      *v64 = v68;
      v64[1] = v66;
      sub_255D5C9C8(&v84, &v88);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      *&v88 = v65;
      *(&v88 + 1) = v60;
      v89 = v97;
      v90 = v98;
      v91[0] = v99[0];
      *(v91 + 9) = *(v99 + 9);
      return sub_255DFB0C0(&v88);
    }

    (*(v78 + 8))(v16, v17);
    v15 = v19;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  LOBYTE(v88) = 0;
  sub_255D3CAFC();
  sub_255E3AB58();
  v69 = v12;
  v70 = v9;
  v20 = v81;
  v21 = sub_255E3ABD8();
  v22 = v21;
  v72 = *(v21 + 16);
  if (!v72)
  {
    v18 = MEMORY[0x277D84F98];
    v31 = v80;
LABEL_24:
    (*(v31 + 8))(v74, v20);

    v19 = v82;
    v16 = v69;
    v17 = v70;
    goto LABEL_25;
  }

  v23 = 0;
  v18 = MEMORY[0x277D84F98];
  v24 = (v21 + 56);
  v71 = v21;
  while (v23 < *(v22 + 16))
  {
    v77 = v23;
    v79 = v18;
    v32 = *(v24 - 3);
    v33 = *(v24 - 2);
    v34 = *v24;
    v35 = *(v24 - 1);
    v100 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    *&v84 = v32;
    *(&v84 + 1) = v33;
    *&v85 = v35;
    v36 = v81;
    BYTE8(v85) = v34;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
    swift_bridgeObjectRetain_n();
    v37 = v74;
    v38 = v100;
    sub_255E3ABC8();
    if (v38)
    {

      (*(v80 + 8))(v37, v36);
      (*(v78 + 8))(v69, v70);

      goto LABEL_2;
    }

    v100 = 0;

    v75 = v88;
    v76 = v89;
    v39 = BYTE8(v89);
    v40 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = v40;
    v43 = sub_255D3CA20(v32, v33);
    v44 = v40[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_41;
    }

    v47 = v42;
    if (v40[3] >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v42)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_255D824D4();
        if (v47)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_255D80994(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_255D3CA20(v32, v33);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_43;
      }

      v43 = v48;
      if (v47)
      {
LABEL_8:

        v18 = v84;
        v25 = *(v84 + 56) + 32 * v43;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);
        v30 = *(&v75 + 1);
        *v25 = v75;
        *(v25 + 8) = v30;
        *(v25 + 16) = v76;
        *(v25 + 24) = v39;
        sub_255D4DE84(v26, v27, v28, v29);
        goto LABEL_9;
      }
    }

    v18 = v84;
    *(v84 + 8 * (v43 >> 6) + 64) |= 1 << v43;
    v50 = (v18[6] + 16 * v43);
    *v50 = v32;
    v50[1] = v33;
    v51 = v18[7] + 32 * v43;
    v52 = *(&v75 + 1);
    *v51 = v75;
    *(v51 + 8) = v52;
    *(v51 + 16) = v76;
    *(v51 + 24) = v39;
    v53 = v18[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_42;
    }

    v18[2] = v55;
LABEL_9:
    v23 = v77 + 1;
    v24 += 32;
    v22 = v71;
    v3 = v100;
    v31 = v80;
    v20 = v81;
    if (v72 == v77 + 1)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

uint64_t sub_255DFAD24(unint64_t a1, uint64_t a2)
{
  sub_255DF6C98(a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_255DFAD9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(v4 + 8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_255D48A94(v11);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v12, a2, a3, v9, v10, a4);
}

unint64_t sub_255DFAE6C(uint64_t a1)
{
  result = sub_255DFAE94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DFAE94()
{
  result = qword_27F7E86D8;
  if (!qword_27F7E86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E86D8);
  }

  return result;
}

unint64_t sub_255DFAEE8(uint64_t a1)
{
  result = sub_255DFAF10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DFAF10()
{
  result = qword_27F7E86E0;
  if (!qword_27F7E86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E86E0);
  }

  return result;
}

uint64_t sub_255DFAF64()
{
  v1 = v0[13];
  v2 = v0[14];
  return sub_255DF7084(v0[2]);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_255DFAF8C()
{
  result = qword_27F7E6AE0;
  if (!qword_27F7E6AE0)
  {
    sub_255E3A3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6AE0);
  }

  return result;
}

void sub_255DFAFE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_255DF711C(v1, v2);
}

unint64_t sub_255DFB018()
{
  result = qword_27F7E86F0;
  if (!qword_27F7E86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E86F0);
  }

  return result;
}

unint64_t sub_255DFB06C()
{
  result = qword_27F7E8700;
  if (!qword_27F7E8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8700);
  }

  return result;
}

unint64_t sub_255DFB104()
{
  result = qword_27F7E8708;
  if (!qword_27F7E8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8708);
  }

  return result;
}

unint64_t sub_255DFB15C()
{
  result = qword_27F7E8710;
  if (!qword_27F7E8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8710);
  }

  return result;
}

unint64_t sub_255DFB1B4()
{
  result = qword_27F7E8718;
  if (!qword_27F7E8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8718);
  }

  return result;
}

uint64_t sub_255DFB208()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DFB29C(char *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v224 = a1;
  v213 = sub_255E3A8A8();
  v212 = *(v213 - 8);
  v9 = *(v212 + 64);
  v10 = MEMORY[0x28223BE20](v213);
  v216 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v207 - v13;
  v217 = *(a5 - 8);
  v15 = *(v217 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v211 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v210 = &v207 - v18;
  v225 = a5;
  v19 = type metadata accessor for Referenceable();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v221 = &v207 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v215 = &v207 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v231 = &v207 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v223 = &v207 - v29;
  MEMORY[0x28223BE20](v28);
  v233 = &v207 - v30;
  v31 = sub_255E3A8A8();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x28223BE20](v31);
  v226 = &v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v220 = (&v207 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v227 = &v207 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v207 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v214 = (&v207 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v218 = &v207 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v230 = (&v207 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v235 = &v207 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v222 = (&v207 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v228 = &v207 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v234 = (&v207 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v232 = (&v207 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v238 = &v207 - v60;
  MEMORY[0x28223BE20](v59);
  v61 = *(v20 + 56);
  v250 = &v207 - v62;
  v243 = v61;
  v244 = v20 + 56;
  v61();
  v63 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(a4) & 0xF;
  }

  v258 = a2;
  v64 = (a2 >> 14);
  v252 = a3;
  v253 = (4 * v63);
  v249 = v31;
  v251 = a4;
  v229 = v32;
  if (v64 == (4 * v63))
  {
    v247 = v63 << 16;
    LODWORD(v242) = (a4 >> 60) & ((a3 & 0x800000000000000) == 0);
    v65 = v258;
    goto LABEL_5;
  }

  v208 = v14;
  v209 = v42;
  LOBYTE(v14) = 0;
  v245 = (v32 + 2);
  v241 = (v20 + 48);
  v237 = (v20 + 32);
  v219 = v20;
  v236 = (v20 + 8);
  v242 = (v32 + 1);
  v239 = v19;
  v240 = (v32 + 4);
  v65 = v258;
  v247 = v63;
  do
  {
    if (v14)
    {
      v65 = v258;
    }

    v88 = sub_255E3A5F8();
    v89 = v87;
    if (v88 == 46 && v87 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
    {
      v90 = v65 >> 14;
      if ((v65 >> 14) == v64)
      {
        v31 = v249;
        if (v88 != 91)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v248 = v88;
        v91 = v238;
        v92 = v19;
        v93 = v249;
        (*v245)(v238, v250, v249);
        if ((*v241)(v91, 1, v92) == 1)
        {
          v94 = *v242;
          result = (*v242)(v91, v93);
          if (v64 < v90)
          {
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          v95 = sub_255E3A618();
          v96 = MEMORY[0x259C4E8B0](v95);
          v98 = v97;

          v99 = v250;
          v94(v250, v93);
          v100 = v234;
          *v234 = v96;
          v100[1] = v98;
          v100[2] = 0xF000000000000007;
          v101 = v239;
          swift_storeEnumTagMultiPayload();
          v31 = v93;
          v19 = v101;
        }

        else
        {
          v107 = v233;
          (*v237)(v233, v91, v92);
          result = swift_allocObject();
          if (v64 < v90)
          {
            goto LABEL_95;
          }

          v108 = result;
          v19 = v92;
          v109 = sub_255E3A618();
          v110 = MEMORY[0x259C4E8B0](v109);
          v112 = v111;

          *(v108 + 16) = v110;
          *(v108 + 24) = v112;
          *(v108 + 32) = 0;
          *(v108 + 40) = 0;
          *(v108 + 48) = 0xF000000000000007;
          v254 = v108;
          v100 = v232;
          v113 = v246;
          Referenceable.addingSubReference(subReference:)(&v254, v92, v232);
          if (v113)
          {
            goto LABEL_75;
          }

          v246 = 0;
          sub_255D2F870(v254);
          (*v236)(v107, v92);
          v31 = v249;
          v99 = v250;
          (*v242)(v250, v249);
        }

        (v243)(v100, 0, 1, v19);
        (*v240)(v99, v100, v31);
        v88 = v248;
        if (v248 != 91)
        {
LABEL_37:
          sub_255E3AC68();
          v65 = 0;
          LODWORD(v14) = 1;
          if (v88 == 93 && v89 == 0xE100000000000000)
          {
LABEL_54:

            v65 = 0;
LABEL_55:
            v115 = v251;
            v116 = v252;
            goto LABEL_56;
          }

          goto LABEL_34;
        }
      }

      if (v89 == 0xE100000000000000)
      {
        v65 = 0;
        LODWORD(v14) = 1;
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    v102 = v235;
    if ((v88 != 91 || v89 != 0xE100000000000000) && (sub_255E3AC68() & 1) == 0)
    {
      LODWORD(v14) = 0;
      if (v88 != 93 || v89 != 0xE100000000000000)
      {
        goto LABEL_34;
      }

LABEL_78:
      v173 = v218;
      v253 = *v245;
      v253(v218, v250, v31);
      v248 = *v241;
      v174 = v248(v173, 1, v19);
      v175 = v258 >> 14;
      v176 = v65 >> 14;
      if (v174 == 1)
      {
        v177 = *v242;
        result = (*v242)(v173, v31);
        if (v225 == MEMORY[0x277D83B88])
        {
          if (v175 < v176)
          {
            goto LABEL_103;
          }

          v178 = sub_255E3A618();
          v179 = MEMORY[0x259C4E8B0](v178);
          v181 = v180;

          v254 = sub_255DE5180(v179, v181);
          LOBYTE(v255) = v182 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
          v183 = v208;
          if (swift_dynamicCast())
          {
            v184 = v249;
            v185 = v250;
            v177(v250, v249);
            v186 = v217;
            v187 = MEMORY[0x277D83B88];
            (*(v217 + 56))(v183, 0, 1, MEMORY[0x277D83B88]);
            v188 = *(v186 + 32);
            v189 = v210;
            v188(v210, v183, v187);
            v188(v185, v189, v187);
            v190 = v239;
            swift_storeEnumTagMultiPayload();
            (v243)(v185, 0, 1, v190);
LABEL_90:
            v205 = v209;
            v253(v209, v185, v184);
            if (v248(v205, 1, v190) == 1)
            {
              v177(v205, v184);
              sub_255D5C33C();
              swift_allocError();
              *v206 = 2;
              *(v206 + 8) = 0;
              *(v206 + 16) = 0;
              *(v206 + 24) = 0;
              *(v206 + 32) = 5;
              swift_willThrow();
              v177(v185, v184);
            }

            else
            {
              v177(v185, v184);
              (*v237)(v224, v205, v190);
            }

            return v258;
          }

          (*(v217 + 56))(v183, 1, 1, MEMORY[0x277D83B88]);
          result = (*(v212 + 8))(v183, v213);
        }

        if (v175 < v176)
        {
          goto LABEL_102;
        }

        v200 = sub_255E3A618();
        v201 = MEMORY[0x259C4E8B0](v200);
        v203 = v202;

        v184 = v249;
        v185 = v250;
        v177(v250, v249);
        v204 = v234;
        *v234 = v201;
        v204[1] = v203;
        v204[2] = 0xF000000000000007;
        v190 = v239;
        swift_storeEnumTagMultiPayload();
        (v243)(v204, 0, 1, v190);
        (*v240)(v185, v204, v184);
        goto LABEL_90;
      }

      v191 = v215;
      (*v237)(v215, v173, v19);
      result = swift_allocObject();
      if (v175 < v176)
      {
        goto LABEL_101;
      }

      v192 = result;
      v193 = sub_255E3A618();
      v194 = MEMORY[0x259C4E8B0](v193);
      v196 = v195;

      *(v192 + 16) = v194;
      *(v192 + 24) = v196;
      *(v192 + 32) = 0;
      *(v192 + 40) = 0;
      *(v192 + 48) = 0xF000000000000007;
      v254 = v192;
      v197 = v214;
      v198 = v246;
      Referenceable.addingSubReference(subReference:)(&v254, v19, v214);
      v184 = v249;
      v199 = v242;
      if (v198)
      {
        sub_255D2F870(v254);
        (*v236)(v191, v19);
        (*v199)(v250, v184);
        return v258;
      }

      sub_255D2F870(v254);
      (*v236)(v191, v19);
      v190 = v19;
      v177 = *v199;
      v185 = v250;
      (*v199)(v250, v184);
      (v243)(v197, 0, 1, v190);
      (*v240)(v185, v197, v184);
      goto LABEL_90;
    }

    v248 = v88;
    v103 = v65 >> 14;
    if ((v65 >> 14) == v64)
    {
      v104 = v246;
      v105 = v249;
      v106 = v242;
    }

    else
    {
      v117 = v228;
      v105 = v249;
      (*v245)(v228, v250, v249);
      v118 = v239;
      if ((*v241)(v117, 1, v239) == 1)
      {
        v106 = v242;
        v119 = *v242;
        result = (*v242)(v117, v105);
        if (v64 < v103)
        {
          goto LABEL_97;
        }

        v120 = sub_255E3A618();
        v121 = MEMORY[0x259C4E8B0](v120);
        v123 = v122;

        v124 = v250;
        v119(v250, v105);
        v125 = v234;
        *v234 = v121;
        v125[1] = v123;
        v125[2] = 0xF000000000000007;
        v126 = v239;
        swift_storeEnumTagMultiPayload();
        v104 = v246;
      }

      else
      {
        v107 = v223;
        (*v237)(v223, v117, v118);
        result = swift_allocObject();
        if (v64 < v103)
        {
          goto LABEL_96;
        }

        v127 = result;
        v19 = v118;
        v128 = sub_255E3A618();
        v129 = MEMORY[0x259C4E8B0](v128);
        v131 = v130;

        *(v127 + 16) = v129;
        *(v127 + 24) = v131;
        *(v127 + 32) = 0;
        *(v127 + 40) = 0;
        *(v127 + 48) = 0xF000000000000007;
        v254 = v127;
        v125 = v222;
        v132 = v246;
        Referenceable.addingSubReference(subReference:)(&v254, v118, v222);
        v104 = v132;
        if (v132)
        {
LABEL_75:

          sub_255D2F870(v254);
          (*v236)(v107, v19);
          (*v242)(v250, v249);
          return v258;
        }

        sub_255D2F870(v254);
        (*v236)(v107, v118);
        v106 = v242;
        v124 = v250;
        v126 = v19;
        v105 = v249;
        (*v242)(v250, v249);
      }

      (v243)(v125, 0, 1, v126);
      (*v240)(v124, v125, v105);
      v102 = v235;
    }

    v133 = v251;
    v134 = v252;
    v135 = sub_255E3A588();
    sub_255DE37E8(&v254, v135, v134, v133);
    v258 = v136;
    if (v104)
    {
      (*v106)(v250, v105);

      return v258;
    }

    v137 = v254;
    v14 = v255;
    v138 = v256;
    v139 = v257;
    (*v245)(v102, v250, v105);
    v140 = v239;
    if ((*v241)(v102, 1, v239) == 1)
    {

      v169 = *v242;
      v170 = v102;
      v171 = v249;
      (*v242)(v170, v249);
      sub_255D5C33C();
      swift_allocError();
      *v172 = 2;
      *(v172 + 8) = 0;
      *(v172 + 16) = 0;
      *(v172 + 24) = 0;
      *(v172 + 32) = 5;
      swift_willThrow();
      sub_255D34870(v137, v14, v138, v139);
      v169(v250, v171);
      return v258;
    }

    v141 = v102;
    v142 = v231;
    (*v237)(v231, v141, v140);
    v143 = swift_allocObject();
    *(v143 + 16) = v137;
    *(v143 + 24) = v14;
    *(v143 + 32) = v138;
    *(v143 + 40) = v139;
    *(v143 + 48) = 0xF000000000000007;
    v254 = v143 | 0x8000000000000000;
    sub_255D348B4(v137, v14, v138, v139);
    v144 = v230;
    Referenceable.addingSubReference(subReference:)(&v254, v140, v230);
    v246 = 0;
    sub_255D34870(v137, v14, v138, v139);
    sub_255D2F870(v254);
    (*v236)(v142, v140);
    v146 = v249;
    v145 = v250;
    (*v242)(v250, v249);
    LODWORD(v14) = 1;
    v147 = v140;
    v148 = v140;
    v31 = v146;
    (v243)(v144, 0, 1, v148);
    (*v240)(v145, v144, v146);
    v65 = 0;
    if (v248 == 93)
    {
      v19 = v147;
      if (v89 == 0xE100000000000000)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v19 = v147;
    }

LABEL_34:
    v114 = sub_255E3AC68();

    if (v14)
    {
      goto LABEL_55;
    }

    v115 = v251;
    v116 = v252;
    if (v114)
    {
      goto LABEL_78;
    }

LABEL_56:
    v64 = (v258 >> 14);
    if ((v258 >> 14) != v253)
    {
      v258 = sub_255E3A588();
      v64 = (v258 >> 14);
    }
  }

  while (v64 != v253);
  v247 <<= 16;
  LODWORD(v242) = (v115 >> 60) & ((v116 & 0x800000000000000) == 0);
  if (v14)
  {
    v158 = *v245;
    v245 = v245 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v78 = v250;
    v85 = v219;
    v86 = v229;
    v159 = v226;
    v158(v226, v250, v31);
    goto LABEL_70;
  }

  v20 = v219;
  v32 = v229;
LABEL_5:
  v66 = v32[2];
  v245 = (v32 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v67 = v227;
  v248 = v66;
  v66(v227, v250, v31);
  v68 = v65 >> 14;
  if ((*(v20 + 48))(v67, 1, v19) != 1)
  {
    v149 = v20;
    v150 = v221;
    (*(v20 + 32))(v221, v67, v19);
    result = swift_allocObject();
    if (v253 >= v68)
    {
      v151 = result;
      v152 = sub_255E3A618();
      v153 = MEMORY[0x259C4E8B0](v152);
      v155 = v154;

      *(v151 + 16) = v153;
      *(v151 + 24) = v155;
      *(v151 + 32) = 0;
      *(v151 + 40) = 0;
      *(v151 + 48) = 0xF000000000000007;
      v254 = v151;
      v156 = v220;
      v157 = v246;
      Referenceable.addingSubReference(subReference:)(&v254, v19, v220);
      if (!v157)
      {
        sub_255D2F870(v254);
        v85 = v149;
        (*(v149 + 8))(v150, v19);
        v86 = v229;
        v78 = v250;
        (v229[1])(v250, v31);
        (v243)(v156, 0, 1, v19);
        (v86[4])(v78, v156, v31);
        goto LABEL_69;
      }

      sub_255D2F870(v254);
      (*(v149 + 8))(v150, v19);
      (v229[1])(v250, v31);
      return v258;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v219 = v20;
  v69 = v32[1];
  result = v69(v67, v31);
  if (v225 != MEMORY[0x277D83B88])
  {
    goto LABEL_67;
  }

  if (v253 >= v68)
  {
    v71 = sub_255E3A618();
    v72 = MEMORY[0x259C4E8B0](v71);
    v74 = v73;

    v254 = sub_255DE5180(v72, v74);
    LOBYTE(v255) = v75 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
    v76 = v216;
    if (swift_dynamicCast())
    {
      v77 = v249;
      v78 = v250;
      v69(v250, v249);
      v79 = v77;
      v80 = v217;
      v81 = MEMORY[0x277D83B88];
      (*(v217 + 56))(v76, 0, 1, MEMORY[0x277D83B88]);
      v82 = *(v80 + 32);
      v83 = v211;
      v84 = v76;
      v31 = v79;
      v82(v211, v84, v81);
      v82(v78, v83, v81);
      swift_storeEnumTagMultiPayload();
      (v243)(v78, 0, 1, v19);
      v85 = v219;
      v86 = v229;
LABEL_69:
      v159 = v226;
      v248(v226, v78, v31);
LABEL_70:
      v165 = (*(v85 + 48))(v159, 1, v19);
      v166 = v86[1];
      if (v165 == 1)
      {
        v166(v159, v31);
        sub_255D5C33C();
        swift_allocError();
        *v167 = 5;
        *(v167 + 8) = 0;
        *(v167 + 16) = 0;
        *(v167 + 24) = 0;
        *(v167 + 32) = 5;
        swift_willThrow();
        v166(v78, v31);
      }

      else
      {
        v166(v78, v31);
        (*(v85 + 32))(v224, v159, v19);
        v168 = 7;
        if (v242)
        {
          v168 = 11;
        }

        return v247 | v168;
      }

      return v258;
    }

    (*(v217 + 56))(v76, 1, 1, MEMORY[0x277D83B88]);
    result = (*(v212 + 8))(v76, v213);
LABEL_67:
    if (v253 >= v68)
    {
      v160 = sub_255E3A618();
      v161 = MEMORY[0x259C4E8B0](v160);
      v163 = v162;

      v31 = v249;
      v78 = v250;
      v69(v250, v249);
      v164 = v234;
      *v234 = v161;
      v164[1] = v163;
      v164[2] = 0xF000000000000007;
      swift_storeEnumTagMultiPayload();
      (v243)(v164, 0, 1, v19);
      v86 = v229;
      (v229[4])(v78, v164, v31);
      v85 = v219;
      goto LABEL_69;
    }

LABEL_99:
    __break(1u);
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_5(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if ((~*(v1 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_255DFCE50()
{
  v0 = sub_255E386A8();
  __swift_allocate_value_buffer(v0, qword_27F8152D8);
  __swift_project_value_buffer(v0, qword_27F8152D8);
  return sub_255E38698();
}

uint64_t sub_255DFCEC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 32);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255DFCF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255DFCF80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6874676E656CLL;
  }

  else
  {
    v4 = 0x7365676465;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6874676E656CLL;
  }

  else
  {
    v6 = 0x7365676465;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DFD020()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFD09C()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DFD104()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFD17C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255DFD1DC(uint64_t *a1@<X8>)
{
  v2 = 0x7365676465;
  if (*v1)
  {
    v2 = 0x6874676E656CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DFD214()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x7365676465;
  }

  *v0;
  return result;
}

uint64_t sub_255DFD248@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255DFD2AC(uint64_t a1)
{
  v2 = sub_255DFD7CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFD2E8(uint64_t a1)
{
  v2 = sub_255DFD7CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFD324@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8728, &qword_255E57008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DFD7CC();
  sub_255E3AE28();
  if (!v2)
  {
    v20 = 0;
    sub_255DFD820();
    sub_255E3ABA8();
    if (v17 <= 3u)
    {
      if (v17 > 1u)
      {
        if (v17 == 2)
        {
          v11 = sub_255E39608();
        }

        else
        {
          v11 = sub_255E39628();
        }
      }

      else if (v17)
      {
        v11 = sub_255E39618();
      }

      else
      {
        v11 = sub_255E395F8();
      }

      goto LABEL_16;
    }

    if (v17 > 5u)
    {
      if (v17 == 6)
      {
        v11 = sub_255E39638();
        goto LABEL_16;
      }
    }

    else if (v17 != 4)
    {
      v11 = sub_255E395D8();
LABEL_16:
      v12 = v11;
      v20 = 1;
      sub_255D64774();
      sub_255E3ABA8();
      (*(v6 + 8))(v9, v5);
      v13 = v18;
      v14 = v19;
      v15 = v17;
      *a2 = v12;
      *(a2 + 8) = v15;
      *(a2 + 24) = v13;
      *(a2 + 32) = v14;
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v11 = sub_255E395E8();
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DFD578@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[32];
  if (v6 > 0xFD)
  {
    goto LABEL_3;
  }

  v13 = *(v3 + 1);
  v14 = *(v3 + 2);
  v15 = *(v3 + 3);
  v16 = v3[32];
  v8 = a1;
  sub_255D612A0(v13, v14, v15, v6);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v9;
  sub_255D4CB98(v13, v14, v15, v16);
  a1 = v8;
  if (a2)
  {
LABEL_3:
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = sub_255E38AE8();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  else
  {
    v11 = v8[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = sub_255E38AE8();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  return sub_255E39C58();
}

unint64_t sub_255DFD750(uint64_t a1)
{
  result = sub_255DFD778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DFD778()
{
  result = qword_27F7E8720;
  if (!qword_27F7E8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8720);
  }

  return result;
}

unint64_t sub_255DFD7CC()
{
  result = qword_27F7E8730;
  if (!qword_27F7E8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8730);
  }

  return result;
}

unint64_t sub_255DFD820()
{
  result = qword_27F7E8738;
  if (!qword_27F7E8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8738);
  }

  return result;
}

unint64_t sub_255DFD888()
{
  result = qword_27F7E8740;
  if (!qword_27F7E8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8740);
  }

  return result;
}

unint64_t sub_255DFD8E0()
{
  result = qword_27F7E8748;
  if (!qword_27F7E8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8748);
  }

  return result;
}

unint64_t sub_255DFD938()
{
  result = qword_27F7E8750;
  if (!qword_27F7E8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8750);
  }

  return result;
}

uint64_t type metadata accessor for AccessibilityFocusedModifier()
{
  result = qword_27F7E8758;
  if (!qword_27F7E8758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255DFDA20()
{
  sub_255DFDAEC(319, &qword_27F7E8768, MEMORY[0x277D839D0], type metadata accessor for Referenceable);
  if (v0 <= 0x3F)
  {
    sub_255DFDAEC(319, &qword_27F7E8770, MEMORY[0x277D839C0], MEMORY[0x277CDE1E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}