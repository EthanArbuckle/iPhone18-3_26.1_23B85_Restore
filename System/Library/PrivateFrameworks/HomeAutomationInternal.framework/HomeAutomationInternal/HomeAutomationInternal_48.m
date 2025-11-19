void *sub_252CAF154@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncUnreachableResponseHandler();
  swift_allocObject();
  result = sub_252D46D94();
  *a1 = result;
  return result;
}

BOOL sub_252CAF190()
{
  v0 = sub_252B4F670();
  v1 = sub_252C285CC();
  if (v1 >> 62)
  {
    if (sub_252E378C4())
    {
      v2 = sub_252E378C4();
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:

  v3 = sub_252C2895C();
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == v4;
}

uint64_t sub_252CAF274(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252CAE074(a1, a2);
}

uint64_t sub_252CAF32C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252CAEC20(v2, v3);
}

uint64_t sub_252CAF3C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B28, &unk_252E59A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CB0778();
  sub_252E37F84();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_252E37CF4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_252E37CF4();
    v17 = v3[4];
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252984B28(&qword_27F540B18);
    sub_252E37D54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252CAF5DC()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x4449656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252CAF640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252CAFCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252CAF668(uint64_t a1)
{
  v2 = sub_252CB0778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CAF6A4(uint64_t a1)
{
  v2 = sub_252CB0778();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252CAF6E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_252CAFDF4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_252CAF740(uint64_t a1, void *a2)
{
  v4 = *aFaileddevices;
  v5 = *&aFaileddevices[8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = a2;
  sub_252B51484(v4, v5, sub_252CB06DC, v6);
}

uint64_t sub_252CAF7F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;

  return sub_252E37614();
}

void sub_252CAF868(unint64_t a1)
{
  *&v35 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v8 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

LABEL_17:
  v2 = sub_252E378C4();
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (sub_252DA3CC8())
    {
      sub_252E37A94();
      v7 = *(v35 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v3;
  }

  while (v6 != v2);
  v8 = v35;
  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if ((v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

  for (i = *(v8 + 16); i; i = sub_252E378C4())
  {
    v10 = v8 & 0xC000000000000001;
    v32 = MEMORY[0x277D84F90];
    v11 = 0;
    if ((v8 & 0xC000000000000001) != 0)
    {
LABEL_36:
      v12 = MEMORY[0x2530ADF00](v11, v8);
      goto LABEL_27;
    }

    while (v11 < *(v8 + 16))
    {
      v12 = *(v8 + 8 * v11 + 32);
LABEL_27:
      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        break;
      }

      v15 = [v12 entity];
      if (v15 && (v16 = v15, v17 = [v15 entityIdentifier], v16, v17))
      {
        v18 = sub_252E36F34();
        v20 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2529F7A80(0, *(v32 + 2) + 1, 1, v32);
        }

        v22 = *(v32 + 2);
        v21 = *(v32 + 3);
        if (v22 >= v21 >> 1)
        {
          v32 = sub_2529F7A80((v21 > 1), v22 + 1, 1, v32);
        }

        *(v32 + 2) = v22 + 1;
        v23 = &v32[16 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
        if (v14 == i)
        {
          goto LABEL_41;
        }

        v11 = v14;
        if (v10)
        {
          goto LABEL_36;
        }
      }

      else
      {

        ++v11;
        if (v14 == i)
        {
          goto LABEL_41;
        }

        if (v10)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_39:
    ;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_41:

  v35 = xmmword_27F544B00;
  strcpy(v36, "failedDevices");
  v36[7] = unk_27F544B1E;
  v37 = v32;

  sub_252DBBCA0(&v35);

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544D60);

  oslog = sub_252E36AC4();
  v25 = sub_252E374C4();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    v28 = MEMORY[0x2530AD730](v32, MEMORY[0x277D837D0]);
    v30 = v29;

    v31 = sub_252BE2CE0(v28, v30, &v34);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_252917000, oslog, v25, "Storing the failed device ids: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2530AED00](v27, -1, -1);
    MEMORY[0x2530AED00](v26, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_252CAFCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_252CAFDF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B38, &qword_252E59A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CB0778();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_252E37C04();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_252E37C04();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v22 = 2;
  sub_252984B28(&qword_27F540920);
  sub_252E37C64();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v20;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v18;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

uint64_t sub_252CB008C()
{
  v45 = sub_252E36C84();
  v43 = *(v45 - 8);
  v0 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = (&v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_252E36D54();
  v42 = *(v44 - 8);
  v2 = *(v42 + 64);
  v3 = MEMORY[0x28223BE20](v44);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v35 - v5;
  v6 = sub_252E36CA4();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36D04();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252E36CB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = dispatch_semaphore_create(0);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84F90];
  v40 = v20 + 16;
  sub_252936DF8();
  (*(v15 + 104))(v18, *MEMORY[0x277D851C0], v14);
  v21 = sub_252E375A4();
  (*(v15 + 8))(v18, v14);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;
  aBlock[4] = sub_252CB06BC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_19;
  v23 = _Block_copy(aBlock);

  v24 = v19;
  sub_252E36CD4();
  v46 = MEMORY[0x277D84F90];
  sub_252990E98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v13, v9, v23);
  _Block_release(v23);

  (*(v37 + 8))(v9, v6);
  (*(v35 + 8))(v13, v36);

  v25 = v38;
  sub_252E36D14();
  v26 = v41;
  *v41 = 200;
  v27 = v43;
  v28 = v45;
  (*(v43 + 104))(v26, *MEMORY[0x277D85178], v45);
  v29 = v39;
  sub_252E36D24();
  (*(v27 + 8))(v26, v28);
  v30 = *(v42 + 8);
  v31 = v44;
  v30(v25, v44);
  sub_252E375F4();
  v30(v29, v31);
  if (sub_252E36C94())
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v32 = sub_252E36AD4();
    __swift_project_value_buffer(v32, qword_27F544D60);
    sub_252CC4050(0xD000000000000035, 0x8000000252E916D0, 0xD000000000000080, 0x8000000252E91710, 0xD00000000000001CLL, 0x8000000252E917A0, 77);
  }

  swift_beginAccess();
  v33 = *(v20 + 16);

  return v33;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252CB06F4(uint64_t a1)
{
  *(a1 + 8) = sub_252B5C008();
  result = sub_252CB0724();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252CB0724()
{
  result = qword_27F544B20;
  if (!qword_27F544B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544B20);
  }

  return result;
}

unint64_t sub_252CB0778()
{
  result = qword_27F544B30;
  if (!qword_27F544B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544B30);
  }

  return result;
}

unint64_t sub_252CB07E0()
{
  result = qword_27F544B40;
  if (!qword_27F544B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544B40);
  }

  return result;
}

unint64_t sub_252CB0838()
{
  result = qword_27F544B48;
  if (!qword_27F544B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544B48);
  }

  return result;
}

unint64_t sub_252CB0890()
{
  result = qword_27F544B50;
  if (!qword_27F544B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544B50);
  }

  return result;
}

uint64_t sub_252CB08E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        sub_252B44CD8();

        sub_252E37A94();
        v7 = *(v8 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v2 != v4);
      return v8;
    }
  }

  return result;
}

id sub_252CB09F0()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252A864D4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 filters];
  if (v5)
  {
    v6 = v5;
    sub_252CB0B64();
    v7 = sub_252E37264();

    v8 = sub_252CB08E4(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v1 time];
  v10 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v10 setUserTask_];
  if (v8)
  {
    type metadata accessor for HomeFilter();
    v11 = sub_252E37254();
  }

  else
  {
    v11 = 0;
  }

  [v10 setFilters_];

  [v10 setTime_];
  return v10;
}

unint64_t sub_252CB0B64()
{
  result = qword_27F540898;
  if (!qword_27F540898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540898);
  }

  return result;
}

uint64_t sub_252CB0BB0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_252E378C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v15 = v7;
        a1(&v14, &v15);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v14)
        {
          MEMORY[0x2530AD700](v9);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v11 = v16;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252CB0D6C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x2530AD700]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_252CB0F18(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v28 = a1;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v15 = i;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, a3);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v27[0] = v8;
      v28(&v23, v27);
      if (v3)
      {

        return v7;
      }

      if (*(&v23 + 1))
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2529F90FC(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_2529F90FC((v10 > 1), v11 + 1, 1, v7);
        }

        v17 = v21;
        v18 = v22;
        v12 = v19;
        v16 = v20;
        *(v7 + 2) = v11 + 1;
        v13 = &v7[64 * v11];
        *(v13 + 4) = v17;
        *(v13 + 5) = v18;
        *(v13 + 2) = v12;
        *(v13 + 3) = v16;
        i = v15;
      }

      else
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        sub_25293847C(&v19, &qword_27F541B80, &unk_252E4E7B0);
      }

      ++v6;
      if (v9 == i)
      {
        return v7;
      }
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v8 = *(a3 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_252CB1138(const void *a1)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v4 = *(v3 + 22);

  v1[2] = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v6 = *(v5 + 23);

  v1[3] = v6;
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 136), (v1 + 4));

  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), (v1 + 9));

  v9 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v1[17] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[18] = &off_2864BA730;
  v1[14] = v9;
  memcpy(v1 + 19, a1, 0x1F8uLL);
  return v1;
}

uint64_t sub_252CB1250(uint64_t a1, uint64_t a2)
{
  v3[451] = v2;
  v3[450] = a2;
  v3[449] = a1;
  v4 = type metadata accessor for AutomationSnippetModel();
  v3[452] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[453] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90) - 8) + 64) + 15;
  v3[454] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970) - 8) + 64) + 15;
  v3[455] = swift_task_alloc();
  v8 = type metadata accessor for IconConfiguration();
  v3[456] = v8;
  v9 = *(v8 - 8);
  v3[457] = v9;
  v10 = *(v9 + 64) + 15;
  v3[458] = swift_task_alloc();
  v3[459] = swift_task_alloc();
  v3[460] = swift_task_alloc();
  v3[461] = swift_task_alloc();
  v11 = type metadata accessor for HomeAutomationScheduleFutureActionParameters(0);
  v3[462] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[463] = swift_task_alloc();
  v13 = sub_252E34014();
  v3[464] = v13;
  v14 = *(v13 - 8);
  v3[465] = v14;
  v15 = *(v14 + 64) + 15;
  v3[466] = swift_task_alloc();
  v3[467] = swift_task_alloc();
  v3[468] = swift_task_alloc();
  v16 = type metadata accessor for HomeAutomationScheduleFutureSceneParameters(0);
  v3[469] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[470] = swift_task_alloc();
  v18 = sub_252E32E84();
  v3[471] = v18;
  v19 = *(v18 - 8);
  v3[472] = v19;
  v20 = *(v19 + 64) + 15;
  v3[473] = swift_task_alloc();
  v3[474] = swift_task_alloc();
  v3[475] = swift_task_alloc();
  v3[476] = swift_task_alloc();
  v3[477] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB153C, 0, 0);
}

uint64_t sub_252CB153C()
{
  v148 = v0;
  v1 = v0;
  v2 = *(v0 + 3600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B68, &qword_252E59D58);
  v3 = sub_252E33F24();
  *(v1 + 3824) = v3;
  v145 = sub_252E33F04();
  *(v1 + 3832) = v145;
  v4 = [v3 automatableTask];
  if (!v4)
  {
LABEL_6:
    if (qword_27F53F500 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  v5 = v4;
  type metadata accessor for ControlAutomateHomeIntent();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    goto LABEL_6;
  }

  v7 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v8 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v9 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v10 = v7;

  v11 = [v9 init];
  *(v1 + 3840) = v11;
  v12 = v11;
  [v12 setUserTask_];
  *(v1 + 3848) = type metadata accessor for HomeFilter();
  v13 = sub_252E37254();

  [v12 setFilters_];

  [v12 setTime_];
  v136 = v3;
  v14 = [v3 trigger];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252DEDE18();
  }

  else
  {
    v16 = 0;
  }

  v135 = v16;
  *(v1 + 4148) = v16 & 1;
  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v23 + 288), v1 + 3040);

  v24 = *(v1 + 3064);
  v25 = *(v1 + 3072);
  __swift_project_boxed_opaque_existential_1((v1 + 3040), v24);
  v26 = (*(v25 + 160))(v24, v25);
  __swift_destroy_boxed_opaque_existential_1((v1 + 3040));
  if ((v26 & 1) == 0)
  {
    v27 = v136;
    goto LABEL_24;
  }

  sub_252E35F84();
  v27 = v136;
  if (sub_252E35F54())
  {
    sub_252E35F14();

    sub_252E335F4();

    if (*(v1 + 3384))
    {
      sub_252927BEC((v1 + 3360), v1 + 3320);
      v28 = [v12 filters];
      if (v28)
      {
        v29 = v28;
        v30 = sub_252E37264();

        v31 = sub_252DD5A58(v30);
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
      }

      v74 = sub_252C758E0(v31);

      v75 = sub_252DD6238(v74);

      if (v75)
      {
        v76 = *(v1 + 3816);
        v77 = *(v1 + 3808);
        v78 = *(v1 + 3776);
        v79 = *(v1 + 3768);
        v80 = *(v78 + 16);
        v80(v77, v75 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v79);

        (*(v78 + 32))(v76, v77, v79);
        v81 = [v145 automationIdentifier];
        if (v81)
        {
          v82 = *(v1 + 3800);
          v83 = v81;
          sub_252E32E64();

          v84 = sub_252B680FC();
          swift_beginAccess();
          v85 = *(v84 + 16);
          v86 = *(v85 + 16);
          v87 = *(v1 + 3816);
          v88 = *(v1 + 3800);
          if (v86)
          {
            v89 = *(v1 + 3816);
            v138 = v89;
            v90 = *(v1 + 3792);
            v132 = *(v1 + 3784);
            v134 = v12;
            v91 = *(v1 + 3776);
            v92 = *(v1 + 3768);
            memcpy((v1 + 1024), (v85 + 504 * v86 - 472), 0x1F8uLL);
            sub_2529353AC(v1 + 1024, v1 + 520);

            v141 = *(v1 + 3344);
            __swift_project_boxed_opaque_existential_1((v1 + 3320), v141);
            memcpy(__dst, (v1 + 1024), 0x1F8uLL);
            v80(v90, v88, v92);
            v80(v132, v89, v92);
            v93 = type metadata accessor for AutomateHomeCorrectionFlow(0);
            v94 = *(v93 + 48);
            v95 = *(v93 + 52);
            swift_allocObject();
            sub_2529353AC(v1 + 1024, v1 + 1528);
            v96 = sub_252BE1038(__dst, v90, v132);
            *(v1 + 3464) = v93;
            *(v1 + 3472) = sub_252CBD7C8(&qword_27F543D80, 255, type metadata accessor for AutomateHomeCorrectionFlow);
            *(v1 + 3440) = v96;
            sub_252E335E4();
            sub_252935408(v1 + 1024);
            v97 = *(v91 + 8);
            v97(v88, v92);
            v97(v138, v92);
            v12 = v134;
            __swift_destroy_boxed_opaque_existential_1((v1 + 3440));
            __swift_destroy_boxed_opaque_existential_1((v1 + 3320));
            v27 = v136;
            goto LABEL_24;
          }

          v98 = *(v1 + 3776);
          v99 = *(v1 + 3768);

          v100 = *(v98 + 8);
          v100(v88, v99);
          v100(v87, v99);
        }

        else
        {
          (*(*(v1 + 3776) + 8))(*(v1 + 3816), *(v1 + 3768));
        }

        __swift_destroy_boxed_opaque_existential_1((v1 + 3320));
        v27 = v136;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 3320));
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(v1 + 3392) = 0;
    *(v1 + 3360) = 0u;
    *(v1 + 3376) = 0u;
  }

  sub_25293847C(v1 + 3360, &qword_27F541E30, &qword_252E42880);
LABEL_19:
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544E68);
  v33 = sub_252E36AC4();
  v34 = sub_252E374D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_252917000, v33, v34, "Failed to register correction client", v35, 2u);
    MEMORY[0x2530AED00](v35, -1, -1);
  }

LABEL_24:
  if (sub_252C4D664(5))
  {
    *(v1 + 3856) = sub_252C4E214();
    *(v1 + 3864) = v36;
    if (v36)
    {
      v37 = *(v1 + 3760);
      v38 = *(v1 + 3752);
      v39 = *(v1 + 3608);
      type metadata accessor for HomeAutomationAutomation.Builder();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      v41 = v27;
      *(v40 + 16) = sub_252DF1700([v41 trigger]);
      v42 = sub_252E1DFD0(v40);
      *(v1 + 3872) = v42;

      v43 = *__swift_project_boxed_opaque_existential_1((v39 + 112), *(v39 + 136));
      v44 = sub_252E36324();
      v45 = *(*(v44 - 8) + 56);
      v46 = v12;

      v45(v37, 1, 1, v44);
      v45(v37 + v38[9], 1, 1, v44);
      v45(v37 + v38[10], 1, 1, v44);
      v45(v37 + v38[11], 1, 1, v44);
      *(v37 + v38[5]) = 0;
      *(v37 + v38[6]) = 0;
      *(v37 + v38[7]) = 0;
      *(v37 + v38[8]) = v135 & 1;
      sub_252CB5208(v37, v46, v42, v39);
      v47 = sub_252C09084();
      *(v1 + 3880) = v47;
      v48 = *(MEMORY[0x277D55BE8] + 4);
      v146 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v49 = swift_task_alloc();
      *(v1 + 3888) = v49;
      *v49 = v1;
      v49[1] = sub_252CB24F8;
      v50 = 0x8000000252E91A50;
      v51 = 0xD000000000000022;
      v52 = v47;
LABEL_76:

      return v146(v51, v50, v52);
    }
  }

  type metadata accessor for HomeStore();
  v53 = static HomeStore.shared.getter();
  v54 = sub_2529D9D50();
  v55 = sub_2529D70E4(v54);

  __dst[0] = MEMORY[0x277D84F90];
  if (v55 >> 62)
  {
    v56 = sub_252E378C4();
    v133 = v12;
    if (v56)
    {
      goto LABEL_29;
    }

LABEL_57:
    v73 = MEMORY[0x277D84F90];
LABEL_58:
    *(v1 + 3952) = v73;

    type metadata accessor for HomeAutomationAutomation.Builder();
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v102 = v27;
    *(v101 + 16) = sub_252DF1700([v102 trigger]);
    v103 = sub_252E1DFD0(v101);
    *(v1 + 3960) = v103;

    *(v1 + 3968) = type metadata accessor for HomeAutomationEntityResponses();
    v104 = v102;

    v105 = sub_252DE9FF0(v104, v73);
    *(v1 + 3584) = v105;
    v106 = *(v105 + 24);
    v144 = v103;
    if (v106 >> 62)
    {
      v119 = v105;
      v120 = sub_252E378C4();
      v105 = v119;
      if (v120)
      {
        goto LABEL_75;
      }
    }

    else if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_75:
      *(v1 + 3976) = v105;
      v121 = *(v1 + 3704);
      v122 = *(v1 + 3696);
      v123 = *(v1 + 3608);
      v124 = *__swift_project_boxed_opaque_existential_1((v123 + 112), *(v123 + 136));
      v125 = sub_252E36324();
      v126 = *(*(v125 - 8) + 56);
      v127 = v133;

      v126(v121, 1, 1, v125);
      v126(v121 + v122[11], 1, 1, v125);
      *(v121 + v122[5]) = 0;
      *(v121 + v122[6]) = 0;
      *(v121 + v122[7]) = 0;
      *(v121 + v122[8]) = v135 & 1;
      *(v121 + v122[9]) = 0;
      *(v121 + v122[10]) = 0;
      sub_252CB56C8(v121, v144, (v1 + 3584), v127, v123);
      v128 = sub_252C08C10();
      *(v1 + 3984) = v128;
      v129 = *(MEMORY[0x277D55BE8] + 4);
      v146 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v130 = swift_task_alloc();
      *(v1 + 3992) = v130;
      *v130 = v1;
      v130[1] = sub_252CB30FC;
      v51 = 0xD000000000000023;
      v50 = 0x8000000252E91A20;
      v52 = v128;
      goto LABEL_76;
    }

    v142 = v105;
    v107 = static HomeStore.shared.getter();
    v108 = v107[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v108 != 2 && (v108 & 1) == 0 || (v109 = [v133 filters]) == 0)
    {

LABEL_74:
      v105 = v142;
      goto LABEL_75;
    }

    v110 = v109;
    v111 = sub_252E37264();

    v112 = [v133 userTask];
    v113 = HomeStore.accessories(matching:supporting:)(v111, v112);
    v115 = v114;

    if (v115)
    {
      v116 = v113;
      v117 = 1;
LABEL_73:
      sub_252929F10(v116, v117);
      goto LABEL_74;
    }

    if (v113 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_68;
      }
    }

    else if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_68:
      v118 = sub_252DEE1E8(v104, v113);

      *(v1 + 3584) = v118;
      v105 = v118;
      goto LABEL_75;
    }

    v116 = v113;
    v117 = 0;
    goto LABEL_73;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v133 = v12;
  if (!v56)
  {
    goto LABEL_57;
  }

LABEL_29:
  v57 = v55;
  v58 = 0;
  v59 = v1;
  v60 = *(v1 + 3776);
  v140 = v57 & 0xFFFFFFFFFFFFFF8;
  v143 = v57 & 0xC000000000000001;
  v131 = v57;
  v137 = v56;
  v139 = v57 + 32;
  while (v143)
  {
    MEMORY[0x2530ADF00](v58, v131);
    v62 = __OFADD__(v58++, 1);
    if (v62)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      v73 = __dst[0];
      v1 = v59;
      v27 = v136;
      goto LABEL_58;
    }

LABEL_35:
    v63 = [v145 automatedEntityIdentifiers];
    if (v63)
    {
      v64 = *(v59 + 3768);
      v65 = v63;
      v66 = sub_252E37264();

      v67 = 0;
      v68 = *(v66 + 16);
      while (v68 != v67)
      {
        v69 = *(v59 + 3768);
        v70 = v67 + 1;
        v1 = v66 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v67;
        sub_252CBD7C8(&qword_27F540D48, 255, MEMORY[0x277CC95F0]);
        v71 = sub_252E36EF4();
        v67 = v70;
        if (v71)
        {

          sub_252E37A94();
          v72 = *(__dst[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v56 = v137;
          goto LABEL_31;
        }
      }

      v56 = v137;
    }

    else
    {
    }

LABEL_31:
    if (v58 == v56)
    {
      goto LABEL_44;
    }
  }

  if (v58 < *(v140 + 16))
  {
    v61 = *(v139 + 8 * v58);

    v62 = __OFADD__(v58++, 1);
    if (v62)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_55:
  swift_once();
LABEL_7:
  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544DA8);
  sub_252CC4050(0xD000000000000042, 0x8000000252E6E6B0, 0xD000000000000088, 0x8000000252E91830, 0xD000000000000025, 0x8000000252E919F0, 41);
  v18 = swift_task_alloc();
  *(v1 + 4128) = v18;
  *v18 = v1;
  v18[1] = sub_252CB4968;
  v19 = *(v1 + 3608);
  v20 = *(v1 + 3600);
  v21 = *(v1 + 3592);

  return sub_252CB5A54(v21, v20);
}

uint64_t sub_252CB24F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3888);
  v6 = *v2;
  *(v4 + 3896) = a1;
  *(v4 + 3904) = v1;

  v7 = *(v3 + 3880);

  if (v1)
  {
    v8 = sub_252CB2894;
  }

  else
  {
    v8 = sub_252CB2638;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252CB2638()
{
  v1 = *(v0 + 3872);
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3608);
  sub_252CBD6D4(*(v0 + 3760), type metadata accessor for HomeAutomationScheduleFutureSceneParameters);

  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 288), v0 + 3200);

  v5 = *(v0 + 3224);
  v6 = *(v0 + 3232);
  __swift_project_boxed_opaque_existential_1((v0 + 3200), v5);
  LOBYTE(v1) = (*(v6 + 120))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 3200));
  if (v1)
  {
    v7 = *(v0 + 3864);
    v8 = swift_task_alloc();
    *(v0 + 3912) = v8;
    *v8 = v0;
    v8[1] = sub_252CB2A50;
    v9 = *(v0 + 3896);
    v10 = *(v0 + 3872);
    v11 = *(v0 + 3856);
    v12 = *(v0 + 4148);
    v13 = *(v0 + 3840);
    v14 = *(v0 + 3608);

    return sub_252CB8BD0(v0 + 3280, v13, v11, v7, v10, v12, v9);
  }

  else
  {
    v16 = *(v0 + 3896);
    v17 = *(v0 + 3864);
    v18 = *(v0 + 3744);
    v19 = *(v0 + 3608);

    v20 = *(v19 + 56);
    __swift_project_boxed_opaque_existential_1((v19 + 32), v20);
    v21 = swift_task_alloc();
    *(v0 + 3928) = v21;
    *(v21 + 16) = v16;
    sub_252AD7CC4();
    v22 = swift_task_alloc();
    *(v0 + 3936) = v22;
    *v22 = v0;
    v22[1] = sub_252CB2D94;
    v23 = *(v0 + 3744);

    return sub_252BDB88C(v0 + 3240, &unk_252E59E18, v21, v23, 0, 0, 0, v20);
  }
}

uint64_t sub_252CB2894()
{
  v1 = v0[484];
  v2 = v0[483];
  v3 = v0[480];
  v4 = v0[479];
  v5 = v0[478];
  v6 = v0[451];
  sub_252CBD6D4(v0[470], type metadata accessor for HomeAutomationScheduleFutureSceneParameters);

  v26 = v0[488];
  v7 = v0[477];
  v8 = v0[476];
  v9 = v0[475];
  v10 = v0[474];
  v11 = v0[473];
  v12 = v0[470];
  v13 = v0[468];
  v14 = v0[467];
  v15 = v0[466];
  v16 = v0[463];
  v19 = v0[461];
  v20 = v0[460];
  v21 = v0[459];
  v22 = v0[458];
  v23 = v0[455];
  v24 = v0[454];
  v25 = v0[453];

  v17 = v0[1];

  return v17();
}

uint64_t sub_252CB2A50()
{
  v2 = *v1;
  v3 = *(*v1 + 3912);
  v4 = *v1;
  *(*v1 + 3920) = v0;

  v5 = *(v2 + 3864);

  if (v0)
  {
    v6 = sub_252CB4D4C;
  }

  else
  {
    v6 = sub_252CB2B84;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252CB2B84()
{
  v1 = v0[480];
  v2 = v0[451];
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = [v1 filters];
  if (v5)
  {
    v6 = v0[481];
    v7 = v5;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = v0[487];
  v10 = v0[484];
  v11 = v0[480];
  v12 = v0[479];
  v13 = v0[478];
  v14 = v0[449];
  (*(v4 + 112))(v8, v0 + 410, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 410);
  v15 = v0[477];
  v16 = v0[476];
  v17 = v0[475];
  v18 = v0[474];
  v19 = v0[473];
  v20 = v0[470];
  v21 = v0[468];
  v22 = v0[467];
  v23 = v0[466];
  v24 = v0[463];
  v27 = v0[461];
  v28 = v0[460];
  v29 = v0[459];
  v30 = v0[458];
  v31 = v0[455];
  v32 = v0[454];
  v33 = v0[453];

  v25 = v0[1];

  return v25();
}

uint64_t sub_252CB2D94()
{
  v2 = *v1;
  v3 = *(*v1 + 3936);
  v7 = *v1;
  *(*v1 + 3944) = v0;

  if (v0)
  {
    (*(v2[465] + 8))(v2[468], v2[464]);
    v4 = sub_252CB4ED4;
  }

  else
  {
    v5 = v2[491];
    (*(v2[465] + 8))(v2[468], v2[464]);

    v4 = sub_252CB2EEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB2EEC()
{
  v1 = v0[480];
  v2 = v0[451];
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = [v1 filters];
  if (v5)
  {
    v6 = v0[481];
    v7 = v5;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = v0[487];
  v10 = v0[484];
  v11 = v0[480];
  v12 = v0[479];
  v13 = v0[478];
  v14 = v0[449];
  (*(v4 + 112))(v8, v0 + 405, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 405);
  v15 = v0[477];
  v16 = v0[476];
  v17 = v0[475];
  v18 = v0[474];
  v19 = v0[473];
  v20 = v0[470];
  v21 = v0[468];
  v22 = v0[467];
  v23 = v0[466];
  v24 = v0[463];
  v27 = v0[461];
  v28 = v0[460];
  v29 = v0[459];
  v30 = v0[458];
  v31 = v0[455];
  v32 = v0[454];
  v33 = v0[453];

  v25 = v0[1];

  return v25();
}

uint64_t sub_252CB30FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3992);
  v6 = *v2;
  *(v4 + 4000) = a1;
  *(v4 + 4008) = v1;

  v7 = *(v3 + 3984);

  if (v1)
  {
    v8 = sub_252CB3890;
  }

  else
  {
    v8 = sub_252CB323C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252CB323C()
{
  v58 = v0;
  v1 = *(v0 + 3960);
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3608);
  sub_252CBD6D4(*(v0 + 3704), type metadata accessor for HomeAutomationScheduleFutureActionParameters);

  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 288), v0 + 3400);

  v5 = *(v0 + 3424);
  v6 = *(v0 + 3432);
  __swift_project_boxed_opaque_existential_1((v0 + 3400), v5);
  LOBYTE(v1) = (*(v6 + 120))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 3400));
  if (v1)
  {
    v7 = *(v0 + 3952);
    sub_252CBCAD0(v7, *(v0 + 3840));
    v9 = v8;
    if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
    {
      v38 = sub_252E378C4();
      v39 = *(v0 + 3952);

      if (v38)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *(*(v0 + 3952) + 16);

      if (v10)
      {
LABEL_5:
        *(v0 + 4016) = v9;
        v11 = *(v0 + 3976);
        v12 = *(v0 + 3968);
        v13 = *(v0 + 3960);
        v14 = *(v0 + 4148);
        v15 = *(v0 + 3840);
        v16 = *(v0 + 3608);
        v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        swift_beginAccess();
        *(v0 + 4024) = *(v17 + 23);

        memcpy((v0 + 16), (v16 + 152), 0x1F8uLL);
        memcpy((v0 + 2536), (v16 + 152), 0x1F8uLL);
        GEOLocationCoordinate2DMake(v0 + 2536);
        memcpy(__dst, (v0 + 2536), 0x1F8uLL);
        v18 = v15;
        sub_2529353AC(v0 + 16, v0 + 2032);
        v19 = sub_252953488(v15, __dst, 0);
        *(v0 + 4032) = v19;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
        v20 = swift_allocObject();
        *(v0 + 4040) = v20;
        *(v20 + 16) = xmmword_252E3EF90;
        *(v20 + 32) = 0x6974616D6F747561;
        *(v20 + 40) = 0xEA00000000006E6FLL;
        v21 = type metadata accessor for HomeAutomationAutomation();
        *(v20 + 48) = v13;
        *(v20 + 72) = v21;
        *(v20 + 80) = 0x65736E6F70736572;
        *(v20 + 88) = 0xE900000000000073;
        *(v20 + 96) = v11;
        *(v20 + 120) = v12;
        strcpy((v20 + 128), "intentContext");
        *(v20 + 142) = -4864;
        v22 = type metadata accessor for HomeAutomationIntentContext(0);
        *(v20 + 144) = v19;
        *(v20 + 168) = v22;
        *(v20 + 176) = 0xD00000000000001ALL;
        *(v20 + 184) = 0x8000000252E8A330;
        v23 = MEMORY[0x277D839B0];
        *(v20 + 192) = v14;
        *(v20 + 216) = v23;
        *(v20 + 224) = 0xD000000000000012;
        *(v20 + 232) = 0x8000000252E91930;
        *(v20 + 264) = v23;
        *(v20 + 240) = 0;
        v24 = *(MEMORY[0x277D55C68] + 4);
        v61 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

        v25 = swift_task_alloc();
        *(v0 + 4048) = v25;
        v26 = sub_252CBC424();
        *v25 = v0;
        v25[1] = sub_252CB3A58;
        v27 = v61;

        return v27(0xD00000000000002CLL, 0x8000000252E91900, v20, &type metadata for HomeAutomationCATsSimple.SchedulerFutureActionUILabelsDialogIds, v26);
      }
    }

    v40 = [*(v0 + 3840) userTask];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 attribute];

      if (v42 == 67)
      {
        v43 = *(v0 + 3840);
        v44 = *(v0 + 3656);
        v45 = *(v0 + 3648);
        v46 = *(v0 + 3640);
        v47 = *(v0 + 3632);
        type metadata accessor for AccessoriesCollectionDecorator();
        swift_allocObject();
        v48 = v43;
        v49 = sub_252C2436C(v48);
        v50 = type metadata accessor for DirectInvocationConfig();
        (*(*(v50 - 8) + 56))(v47, 1, 1, v50);
        sub_252A307E8(v48, v49, v47, v46);

        sub_25293847C(v47, &qword_27F540068, &qword_252E3BC90);
        if ((*(v44 + 48))(v46, 1, v45) == 1)
        {
          sub_25293847C(*(v0 + 3640), &qword_27F541B50, &unk_252E47970);
        }

        else
        {
          v52 = *(v0 + 3688);
          v53 = *(v0 + 3656);
          v54 = *(v0 + 3640);

          sub_252B42FDC(v54, v52);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541710, &unk_252E59D20);
          v55 = *(v53 + 72);
          v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_252E3C290;
          sub_252B42FDC(v52, v9 + v56);
        }
      }
    }

    else
    {
      v51 = *(v0 + 3840);
      sub_252C515AC();
    }

    goto LABEL_5;
  }

  v29 = *(v0 + 4000);
  v30 = *(v0 + 3952);
  v31 = *(v0 + 3728);
  v32 = *(v0 + 3608);

  v33 = v32[7];
  v34 = v32[8];
  __swift_project_boxed_opaque_existential_1(v32 + 4, v33);
  v35 = swift_task_alloc();
  *(v0 + 4104) = v35;
  *(v35 + 16) = v29;
  sub_252AD7CC4();
  v36 = swift_task_alloc();
  *(v0 + 4112) = v36;
  *v36 = v0;
  v36[1] = sub_252CB45F0;
  v37 = *(v0 + 3728);
  v60 = v34;

  return sub_252BDB88C(v0 + 3120, &unk_252E59DE8, v35, v37, 0, 0, 0, v33);
}

uint64_t sub_252CB3890()
{
  v1 = v0[497];
  v2 = v0[495];
  v3 = v0[494];
  v4 = v0[480];
  v5 = v0[479];
  v6 = v0[478];
  v7 = v0[451];
  sub_252CBD6D4(v0[463], type metadata accessor for HomeAutomationScheduleFutureActionParameters);

  v27 = v0[501];
  v8 = v0[477];
  v9 = v0[476];
  v10 = v0[475];
  v11 = v0[474];
  v12 = v0[473];
  v13 = v0[470];
  v14 = v0[468];
  v15 = v0[467];
  v16 = v0[466];
  v17 = v0[463];
  v20 = v0[461];
  v21 = v0[460];
  v22 = v0[459];
  v23 = v0[458];
  v24 = v0[455];
  v25 = v0[454];
  v26 = v0[453];

  v18 = v0[1];

  return v18();
}

uint64_t sub_252CB3A58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 4048);
  v10 = *v2;
  v3[507] = a1;
  v3[508] = v1;

  if (v1)
  {
    v5 = sub_252CB4008;
  }

  else
  {
    v6 = v3[505];
    v7 = v3[504];
    v8 = v3[503];

    v5 = sub_252CB3B90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB3B90()
{
  v1 = *(v0 + 4056);
  v25 = *(v0 + 4016);
  v2 = *(v0 + 3960);
  v33 = *(v0 + 4000);
  v34 = *(v0 + 3736);
  v3 = *(v0 + 3680);
  v4 = *(v0 + 3672);
  v30 = *(v0 + 3664);
  v31 = *(v0 + 3648);
  v5 = *(v0 + 3624);
  v6 = *(v0 + 3616);
  v32 = *(v0 + 3608);
  *(v0 + 4144) = 2;
  v7 = sub_252E36374();
  v9 = v8;
  sub_252CBA95C(v2, v3);
  *(v0 + 4145) = 1;
  v10 = sub_252E36374();
  v28 = v11;
  v29 = v10;
  *(v0 + 4146) = 0;
  v12 = sub_252E36374();
  v26 = v13;
  v27 = v12;
  *(v0 + 3528) = v7;
  *(v0 + 3536) = v9;
  sub_252E330C4();
  v14 = v6[5];
  *(v0 + 3576) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252E330C4();
  sub_252BA6E60(v3, v4, type metadata accessor for IconConfiguration);
  v15 = v6[6];
  sub_252BA6E60(v4, v30, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252CBD6D4(v4, type metadata accessor for IconConfiguration);
  v16 = v6[7];
  *(v0 + 3560) = v29;
  *(v0 + 3568) = v28;
  sub_252E330C4();
  v17 = v6[8];
  *(v0 + 3544) = v27;
  *(v0 + 3552) = v26;
  sub_252E330C4();
  v18 = v6[9];
  *(v0 + 4147) = 0;
  sub_252E330C4();
  sub_252CBD6D4(v3, type metadata accessor for IconConfiguration);
  v19 = v32[8];
  __swift_project_boxed_opaque_existential_1(v32 + 4, v32[7]);
  v20 = swift_task_alloc();
  *(v0 + 4072) = v20;
  *(v20 + 16) = v33;
  v21 = swift_task_alloc();
  *(v0 + 4080) = v21;
  *(v21 + 16) = v5;
  sub_252B03B94();
  v22 = swift_task_alloc();
  *(v0 + 4088) = v22;
  *v22 = v0;
  v22[1] = sub_252CB3E9C;
  v23 = *(v0 + 3736);

  return sub_252A199A8(v0 + 3160, &unk_252E59DF8, v20, &unk_252E59E08, v21, v23, 0, 0);
}

uint64_t sub_252CB3E9C()
{
  v2 = *v1;
  v3 = *(*v1 + 4088);
  v8 = *v1;
  *(*v1 + 4096) = v0;

  if (v0)
  {
    (*(v2[465] + 8))(v2[467], v2[464]);
    v4 = sub_252CB441C;
  }

  else
  {
    v5 = v2[510];
    v6 = v2[509];
    (*(v2[465] + 8))(v2[467], v2[464]);

    v4 = sub_252CB41C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB4008()
{
  v1 = *(v0 + 4040);
  v2 = *(v0 + 4032);
  v3 = *(v0 + 4024);
  v4 = *(v0 + 4016);

  v29 = *(v0 + 4064);
  v5 = *(v0 + 4000);
  v6 = *(v0 + 3976);
  v7 = *(v0 + 3960);
  v8 = *(v0 + 3840);
  v9 = *(v0 + 3832);

  v10 = *(v0 + 3816);
  v11 = *(v0 + 3808);
  v12 = *(v0 + 3800);
  v13 = *(v0 + 3792);
  v14 = *(v0 + 3784);
  v15 = *(v0 + 3760);
  v16 = *(v0 + 3744);
  v17 = *(v0 + 3736);
  v18 = *(v0 + 3728);
  v19 = *(v0 + 3704);
  v22 = *(v0 + 3688);
  v23 = *(v0 + 3680);
  v24 = *(v0 + 3672);
  v25 = *(v0 + 3664);
  v26 = *(v0 + 3640);
  v27 = *(v0 + 3632);
  v28 = *(v0 + 3624);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_252CB41C8()
{
  v1 = *(v0 + 4056);
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3624);
  v4 = *(v0 + 3608);

  sub_252927BEC((v0 + 3160), v0 + 3080);
  sub_252CBD6D4(v3, type metadata accessor for AutomationSnippetModel);
  v5 = v4[7];
  v6 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v5);
  v7 = [v2 filters];
  if (v7)
  {
    v8 = *(v0 + 3848);
    v9 = v7;
    v10 = sub_252E37264();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 4000);
  v35 = *(v0 + 3976);
  v12 = *(v0 + 3960);
  v13 = *(v0 + 3840);
  v14 = *(v0 + 3832);
  v15 = *(v0 + 3824);
  v16 = *(v0 + 3592);
  (*(v6 + 112))(v10, v0 + 3080, v5, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + 3080));

  v17 = *(v0 + 3816);
  v18 = *(v0 + 3808);
  v19 = *(v0 + 3800);
  v20 = *(v0 + 3792);
  v21 = *(v0 + 3784);
  v22 = *(v0 + 3760);
  v23 = *(v0 + 3744);
  v24 = *(v0 + 3736);
  v25 = *(v0 + 3728);
  v26 = *(v0 + 3704);
  v29 = *(v0 + 3688);
  v30 = *(v0 + 3680);
  v31 = *(v0 + 3672);
  v32 = *(v0 + 3664);
  v33 = *(v0 + 3640);
  v34 = *(v0 + 3632);
  v36 = *(v0 + 3624);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_252CB441C()
{
  v1 = *(v0 + 4080);
  v2 = *(v0 + 4072);
  v3 = *(v0 + 4056);
  v4 = *(v0 + 3624);

  sub_252CBD6D4(v4, type metadata accessor for AutomationSnippetModel);
  v29 = *(v0 + 4096);
  v5 = *(v0 + 4000);
  v6 = *(v0 + 3976);
  v7 = *(v0 + 3960);
  v8 = *(v0 + 3840);
  v9 = *(v0 + 3832);

  v10 = *(v0 + 3816);
  v11 = *(v0 + 3808);
  v12 = *(v0 + 3800);
  v13 = *(v0 + 3792);
  v14 = *(v0 + 3784);
  v15 = *(v0 + 3760);
  v16 = *(v0 + 3744);
  v17 = *(v0 + 3736);
  v18 = *(v0 + 3728);
  v19 = *(v0 + 3704);
  v22 = *(v0 + 3688);
  v23 = *(v0 + 3680);
  v24 = *(v0 + 3672);
  v25 = *(v0 + 3664);
  v26 = *(v0 + 3640);
  v27 = *(v0 + 3632);
  v28 = *(v0 + 3624);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_252CB45F0()
{
  v2 = *v1;
  v3 = *(*v1 + 4112);
  v7 = *v1;
  *(*v1 + 4120) = v0;

  if (v0)
  {
    (*(v2[465] + 8))(v2[466], v2[464]);
    v4 = sub_252CB5068;
  }

  else
  {
    v5 = v2[513];
    (*(v2[465] + 8))(v2[466], v2[464]);

    v4 = sub_252CB4748;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB4748()
{
  v1 = v0[480];
  v2 = v0[451];
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = [v1 filters];
  if (v5)
  {
    v6 = v0[481];
    v7 = v5;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = v0[500];
  v33 = v0[497];
  v10 = v0[495];
  v11 = v0[480];
  v12 = v0[479];
  v13 = v0[478];
  v14 = v0[449];
  (*(v4 + 112))(v8, v0 + 390, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 390);

  v15 = v0[477];
  v16 = v0[476];
  v17 = v0[475];
  v18 = v0[474];
  v19 = v0[473];
  v20 = v0[470];
  v21 = v0[468];
  v22 = v0[467];
  v23 = v0[466];
  v24 = v0[463];
  v27 = v0[461];
  v28 = v0[460];
  v29 = v0[459];
  v30 = v0[458];
  v31 = v0[455];
  v32 = v0[454];
  v34 = v0[453];

  v25 = v0[1];

  return v25();
}

uint64_t sub_252CB4968()
{
  v2 = *(*v1 + 4128);
  v5 = *v1;
  *(*v1 + 4136) = v0;

  if (v0)
  {
    v3 = sub_252CB4BE0;
  }

  else
  {
    v3 = sub_252CB4A7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB4A7C()
{
  v1 = *(v0 + 3824);

  v2 = *(v0 + 3816);
  v3 = *(v0 + 3808);
  v4 = *(v0 + 3800);
  v5 = *(v0 + 3792);
  v6 = *(v0 + 3784);
  v7 = *(v0 + 3760);
  v8 = *(v0 + 3744);
  v9 = *(v0 + 3736);
  v10 = *(v0 + 3728);
  v11 = *(v0 + 3704);
  v14 = *(v0 + 3688);
  v15 = *(v0 + 3680);
  v16 = *(v0 + 3672);
  v17 = *(v0 + 3664);
  v18 = *(v0 + 3640);
  v19 = *(v0 + 3632);
  v20 = *(v0 + 3624);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252CB4BE0()
{
  v1 = *(v0 + 3824);

  v21 = *(v0 + 4136);
  v2 = *(v0 + 3816);
  v3 = *(v0 + 3808);
  v4 = *(v0 + 3800);
  v5 = *(v0 + 3792);
  v6 = *(v0 + 3784);
  v7 = *(v0 + 3760);
  v8 = *(v0 + 3744);
  v9 = *(v0 + 3736);
  v10 = *(v0 + 3728);
  v11 = *(v0 + 3704);
  v14 = *(v0 + 3688);
  v15 = *(v0 + 3680);
  v16 = *(v0 + 3672);
  v17 = *(v0 + 3664);
  v18 = *(v0 + 3640);
  v19 = *(v0 + 3632);
  v20 = *(v0 + 3624);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252CB4D4C()
{
  v1 = *(v0 + 3896);
  v2 = *(v0 + 3872);
  v3 = *(v0 + 3840);
  v4 = *(v0 + 3832);

  v24 = *(v0 + 3920);
  v5 = *(v0 + 3816);
  v6 = *(v0 + 3808);
  v7 = *(v0 + 3800);
  v8 = *(v0 + 3792);
  v9 = *(v0 + 3784);
  v10 = *(v0 + 3760);
  v11 = *(v0 + 3744);
  v12 = *(v0 + 3736);
  v13 = *(v0 + 3728);
  v14 = *(v0 + 3704);
  v17 = *(v0 + 3688);
  v18 = *(v0 + 3680);
  v19 = *(v0 + 3672);
  v20 = *(v0 + 3664);
  v21 = *(v0 + 3640);
  v22 = *(v0 + 3632);
  v23 = *(v0 + 3624);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252CB4ED4()
{
  v1 = *(v0 + 3928);
  v2 = *(v0 + 3896);
  v3 = *(v0 + 3872);
  v4 = *(v0 + 3840);
  v5 = *(v0 + 3832);

  v25 = *(v0 + 3944);
  v6 = *(v0 + 3816);
  v7 = *(v0 + 3808);
  v8 = *(v0 + 3800);
  v9 = *(v0 + 3792);
  v10 = *(v0 + 3784);
  v11 = *(v0 + 3760);
  v12 = *(v0 + 3744);
  v13 = *(v0 + 3736);
  v14 = *(v0 + 3728);
  v15 = *(v0 + 3704);
  v18 = *(v0 + 3688);
  v19 = *(v0 + 3680);
  v20 = *(v0 + 3672);
  v21 = *(v0 + 3664);
  v22 = *(v0 + 3640);
  v23 = *(v0 + 3632);
  v24 = *(v0 + 3624);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252CB5068()
{
  v1 = *(v0 + 4104);
  v2 = *(v0 + 4000);
  v3 = *(v0 + 3976);
  v4 = *(v0 + 3960);
  v5 = *(v0 + 3840);
  v6 = *(v0 + 3832);

  v26 = *(v0 + 4120);
  v7 = *(v0 + 3816);
  v8 = *(v0 + 3808);
  v9 = *(v0 + 3800);
  v10 = *(v0 + 3792);
  v11 = *(v0 + 3784);
  v12 = *(v0 + 3760);
  v13 = *(v0 + 3744);
  v14 = *(v0 + 3736);
  v15 = *(v0 + 3728);
  v16 = *(v0 + 3704);
  v19 = *(v0 + 3688);
  v20 = *(v0 + 3680);
  v21 = *(v0 + 3672);
  v22 = *(v0 + 3664);
  v23 = *(v0 + 3640);
  v24 = *(v0 + 3632);
  v25 = *(v0 + 3624);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252CB5208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v53[63] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v47 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  sub_252C4E214();
  if (v17)
  {
    sub_252E37024();

    v18 = sub_252E36324();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v18 = sub_252E36324();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  v19 = type metadata accessor for HomeAutomationScheduleFutureSceneParameters(0);
  sub_252956C98(v16, a1 + *(v19 + 36));
  v49 = v19;
  v20 = *(v19 + 20);
  v21 = *(a1 + v20);

  *(a1 + v20) = a3;
  sub_252E37024();
  sub_252E36324();
  v22 = *(*(v18 - 8) + 56);
  v23 = 1;
  v22(v14, 0, 1, v18);
  sub_252956C98(v14, a1);
  v24 = sub_25294833C(0, 0, 0);
  if (v24)
  {
    v25 = v24;
    v26 = [v24 dictionary];
    if (v26)
    {
      v27 = v26;
      v28 = objc_opt_self();
      v53[0] = 0;
      v29 = [v28 dataWithPropertyList:v27 format:200 options:0 error:v53];
      v30 = v53[0];
      if (v29)
      {
        v31 = sub_252E32D34();
        v48 = v32;

        v33 = v48;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v31, v33);
        v23 = 0;
      }

      else
      {
        v34 = v30;
        v35 = sub_252E32C54();

        swift_willThrow();
        v23 = 1;
      }
    }

    else
    {
    }
  }

  v36 = v52;
  v22(v52, v23, 1, v18);
  v37 = v49;
  sub_252956C98(v36, a1 + *(v49 + 44));
  sub_252E37024();
  v22(v14, 0, 1, v18);
  sub_252956C98(v14, a1);
  memcpy(v53, (v50 + 152), 0x1F8uLL);
  v38 = sub_252A0EA50();
  v39 = sub_252C75D58(v38);

  if (*(v39 + 16) != 1)
  {

    goto LABEL_14;
  }

  v40 = sub_252DB4F48(v39);
  v42 = v41;

  if (v42)
  {
LABEL_14:
    v43 = 0;
    goto LABEL_15;
  }

  v43 = v40;
LABEL_15:
  sub_252B9C8C8(v43);
  v44 = v51;
  sub_252E37024();

  v22(v44, 0, 1, v18);
  result = sub_252956C98(v44, a1 + *(v37 + 40));
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252CB56C8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for HomeAutomationScheduleFutureActionParameters(0);
  v17 = v16[5];
  v18 = *(a1 + v17);

  *(a1 + v17) = a2;
  v19 = *a3;
  v20 = v16[10];
  v21 = *(a1 + v20);

  *(a1 + v20) = v19;
  v22 = *a3;
  v23 = v16[9];
  v24 = *(a1 + v23);

  *(a1 + v23) = v22;
  memcpy(v53, (a5 + 152), sizeof(v53));
  memcpy(v54, (a5 + 152), sizeof(v54));
  GEOLocationCoordinate2DMake(v54);
  memcpy(v52, v54, sizeof(v52));
  v25 = a4;
  sub_2529353AC(v53, &v51);
  v26 = sub_252953488(a4, v52, 0);

  v27 = v16[7];
  v28 = *(a1 + v27);

  *(a1 + v27) = v26;
  sub_252E37024();
  v29 = sub_252E36324();
  v30 = *(*(v29 - 8) + 56);
  v31 = 1;
  v30(v15, 0, 1, v29);
  sub_252956C98(v15, a1);
  v32 = sub_25294833C(0, 0, 0);
  if (!v32)
  {
    goto LABEL_7;
  }

  v33 = v32;
  v34 = [v32 dictionary];
  if (!v34)
  {

LABEL_7:
    v42 = v50;
    goto LABEL_8;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v52[0] = 0;
  v37 = [v36 dataWithPropertyList:v35 format:200 options:0 error:v52];
  v38 = v52[0];
  if (!v37)
  {
    v44 = v38;
    v45 = sub_252E32C54();

    swift_willThrow();
    v31 = 1;
    goto LABEL_7;
  }

  v39 = sub_252E32D34();
  v49 = v30;
  v41 = v40;

  sub_252E32D24();
  v42 = v50;
  sub_252E362F4();

  v43 = v41;
  v30 = v49;
  sub_25296464C(v39, v43);
  v31 = 0;
LABEL_8:
  v30(v42, v31, 1, v29);
  result = sub_252956C98(v42, a1 + v16[11]);
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252CB5A54(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  v4 = sub_252E34014();
  v3[53] = v4;
  v5 = *(v4 - 8);
  v3[54] = v5;
  v6 = *(v5 + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB5B54, 0, 0);
}

uint64_t sub_252CB5B54()
{
  v1 = v0[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B68, &qword_252E59D58);
  v2 = sub_252E33F24();
  v0[61] = v2;
  v3 = sub_252E33F04();
  v0[62] = v3;
  v4 = [v2 automatableTask];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ControlAutomateHomeIntent();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v0[63] = v6;
  v7 = [v2 automatableTask];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  type metadata accessor for ControlAutomateHomeIntent();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_12:
    v33 = v0[52];
    v34 = v0[50];
    sub_2529515FC(3, 6, 0xD000000000000021, 0x8000000252E91950);
    v35 = v33[7];
    v36 = v33[8];
    __swift_project_boxed_opaque_existential_1(v33 + 4, v35);
    v37 = v33[2];

    sub_252943BD0(sub_2529A1790, v37, 1, v35, v36);

    v39 = v0[59];
    v38 = v0[60];
    v41 = v0[57];
    v40 = v0[58];
    v43 = v0[55];
    v42 = v0[56];

    v44 = v0[1];

    return v44();
  }

  v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v11 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v12 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v13 = v10;

  v14 = [v12 init];
  v0[64] = v14;
  v15 = v14;
  [v15 setUserTask_];
  type metadata accessor for HomeFilter();
  v16 = sub_252E37254();

  [v15 setFilters_];

  [v15 setTime_];
  v17 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  v18 = *&v3[v17];
  v19 = v0[52];
  if (v18 == 101)
  {
    v46 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v46 + 288), (v0 + 27));

    v47 = v0[30];
    v48 = v0[31];
    __swift_project_boxed_opaque_existential_1(v0 + 27, v47);
    v49 = (*(v48 + 120))(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
    v24 = *(v19 + 56);
    __swift_project_boxed_opaque_existential_1((v19 + 32), v24);
    if (v49)
    {
      v50 = v0[58];
      sub_252B03B94();
      v51 = swift_task_alloc();
      v0[70] = v51;
      *v51 = v0;
      v51[1] = sub_252CB671C;
      v28 = v0[58];
      v32 = v0[52];
      v30 = &unk_252E59DA0;
      v31 = &unk_252E59DA8;
      v29 = (v0 + 37);
      goto LABEL_19;
    }

    v64 = v0[57];
    sub_252AD7CC4();
    v65 = swift_task_alloc();
    v0[72] = v65;
    *v65 = v0;
    v65[1] = sub_252CB6A04;
    v60 = v0[57];
    v63 = v0[52];
    v62 = &unk_252E59D90;
    v61 = (v0 + 32);
  }

  else if (v18 == 100)
  {
    v20 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v20 + 288), (v0 + 42));

    v21 = v0[45];
    v22 = v0[46];
    __swift_project_boxed_opaque_existential_1(v0 + 42, v21);
    v23 = (*(v22 + 120))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
    v24 = *(v19 + 56);
    __swift_project_boxed_opaque_existential_1((v19 + 32), v24);
    v25 = swift_task_alloc();
    v0[65] = v25;
    *(v25 + 16) = v19;
    *(v25 + 24) = v15;
    if (v23)
    {
      v26 = v0[60];
      sub_252B03B94();
      v27 = swift_task_alloc();
      v0[66] = v27;
      *v27 = v0;
      v27[1] = sub_252CB63C0;
      v28 = v0[60];
      v29 = v0[50];
      v30 = &unk_252E59DC8;
      v31 = &unk_252E59DD0;
      v32 = v25;
LABEL_19:

      return sub_252A199A8(v29, v30, v32, v31, 0, v28, 0, 0);
    }

    v58 = v0[59];
    sub_252AD7CC4();
    v59 = swift_task_alloc();
    v0[68] = v59;
    *v59 = v0;
    v59[1] = sub_252CB65CC;
    v60 = v0[59];
    v61 = v0[50];
    v62 = &unk_252E59DB8;
    v63 = v25;
  }

  else
  {
    sub_2529515FC(3, 8, 0xD000000000000030, 0x8000000252E91980);
    v52 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v52 + 288), (v0 + 7));

    v53 = v0[10];
    v54 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v53);
    v55 = (*(v54 + 120))(v53, v54);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v24 = *(v19 + 56);
    __swift_project_boxed_opaque_existential_1((v19 + 32), v24);
    if (v55)
    {
      v56 = v0[56];
      sub_252B03B94();
      v57 = swift_task_alloc();
      v0[74] = v57;
      *v57 = v0;
      v57[1] = sub_252CB6CEC;
      v28 = v0[56];
      v32 = v0[52];
      v30 = &unk_252E59D78;
      v31 = &unk_252E59D80;
      v29 = (v0 + 17);
      goto LABEL_19;
    }

    v66 = v0[55];
    sub_252AD7CC4();
    v67 = swift_task_alloc();
    v0[76] = v67;
    *v67 = v0;
    v67[1] = sub_252CB6FD4;
    v60 = v0[55];
    v63 = v0[52];
    v62 = &unk_252E59D68;
    v61 = (v0 + 12);
  }

  return sub_252BDB88C(v61, v62, v63, v60, 0, 0, 0, v24);
}

uint64_t sub_252CB63C0()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v7 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    (*(v2[54] + 8))(v2[60], v2[53]);
    v4 = sub_252CB72BC;
  }

  else
  {
    v5 = v2[65];
    (*(v2[54] + 8))(v2[60], v2[53]);

    v4 = sub_252CB6510;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB6510()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v9 = *(v0 + 440);
  v8 = *(v0 + 448);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252CB65CC()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    (*(v2[54] + 8))(v2[59], v2[53]);
    v4 = sub_252CB7384;
  }

  else
  {
    v5 = v2[65];
    (*(v2[54] + 8))(v2[59], v2[53]);

    v4 = sub_252CBD83C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB671C()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[54] + 8))(v2[58], v2[53]);
  if (v0)
  {
    v5 = sub_252CB744C;
  }

  else
  {
    v5 = sub_252CB6884;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB6884()
{
  sub_252927BEC((v0 + 296), v0 + 176);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v21 = *(v0 + 512);
    v22 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = v3[7];
    v6 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
    v7 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];
    v8 = *(v6 + 112);

    v8(v9, v0 + 176, v5, v6);

    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  else
  {
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 400);

    sub_252927BEC((v0 + 176), v12);
  }

  v14 = *(v0 + 472);
  v13 = *(v0 + 480);
  v16 = *(v0 + 456);
  v15 = *(v0 + 464);
  v18 = *(v0 + 440);
  v17 = *(v0 + 448);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252CB6A04()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[54] + 8))(v2[57], v2[53]);
  if (v0)
  {
    v5 = sub_252CB7508;
  }

  else
  {
    v5 = sub_252CB6B6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB6B6C()
{
  sub_252927BEC((v0 + 256), v0 + 176);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v21 = *(v0 + 512);
    v22 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = v3[7];
    v6 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
    v7 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];
    v8 = *(v6 + 112);

    v8(v9, v0 + 176, v5, v6);

    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  else
  {
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 400);

    sub_252927BEC((v0 + 176), v12);
  }

  v14 = *(v0 + 472);
  v13 = *(v0 + 480);
  v16 = *(v0 + 456);
  v15 = *(v0 + 464);
  v18 = *(v0 + 440);
  v17 = *(v0 + 448);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252CB6CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  (*(v2[54] + 8))(v2[56], v2[53]);
  if (v0)
  {
    v5 = sub_252CB75C4;
  }

  else
  {
    v5 = sub_252CB6E54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB6E54()
{
  sub_252927BEC((v0 + 136), v0 + 16);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v21 = *(v0 + 512);
    v22 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = v3[7];
    v6 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
    v7 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];
    v8 = *(v6 + 112);

    v8(v9, v0 + 16, v5, v6);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 400);

    sub_252927BEC((v0 + 16), v12);
  }

  v14 = *(v0 + 472);
  v13 = *(v0 + 480);
  v16 = *(v0 + 456);
  v15 = *(v0 + 464);
  v18 = *(v0 + 440);
  v17 = *(v0 + 448);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252CB6FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  (*(v2[54] + 8))(v2[55], v2[53]);
  if (v0)
  {
    v5 = sub_252CB7680;
  }

  else
  {
    v5 = sub_252CB713C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB713C()
{
  sub_252927BEC((v0 + 96), v0 + 16);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v21 = *(v0 + 512);
    v22 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = v3[7];
    v6 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
    v7 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];
    v8 = *(v6 + 112);

    v8(v9, v0 + 16, v5, v6);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 400);

    sub_252927BEC((v0 + 16), v12);
  }

  v14 = *(v0 + 472);
  v13 = *(v0 + 480);
  v16 = *(v0 + 456);
  v15 = *(v0 + 464);
  v18 = *(v0 + 440);
  v17 = *(v0 + 448);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252CB72BC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);

  v5 = *(v0 + 536);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  v11 = *(v0 + 440);
  v10 = *(v0 + 448);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252CB7384()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);

  v5 = *(v0 + 552);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  v11 = *(v0 + 440);
  v10 = *(v0 + 448);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252CB744C()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 568);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v10 = *(v0 + 440);
  v9 = *(v0 + 448);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB7508()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 584);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v10 = *(v0 + 440);
  v9 = *(v0 + 448);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB75C4()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 600);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v10 = *(v0 + 440);
  v9 = *(v0 + 448);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB7680()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 616);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v10 = *(v0 + 440);
  v9 = *(v0 + 448);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB773C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB77E4, 0, 0);
}

uint64_t sub_252CB77E4()
{
  v1 = v0[3];
  v2 = *(v0[2] + 24);
  sub_252C51E70();
  v3 = v0[3];
  if (!v4)
  {
    sub_252C51FFC();
    v6 = v0[3];
    if (v7)
    {

      sub_252C51FFC();
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = v0[3];

      sub_252C4BEAC();
      if (!v11)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v0[5];
    sub_252E37024();

    v13 = 0;
    goto LABEL_11;
  }

  sub_252C51E70();
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = 1;
LABEL_11:
  v14 = v0[5];
  v15 = v0[3];
  v16 = sub_252E36324();
  v17 = *(*(v16 - 8) + 56);
  v18 = 1;
  v17(v14, v13, 1, v16);
  sub_252C4BEAC();
  if (v19)
  {
    v20 = v0[4];
    sub_252E37024();

    v18 = 0;
  }

  v21 = v0[3];
  v22 = 1;
  v17(v0[4], v18, 1, v16);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v23 = v0[3];
    v22 = sub_252C4B680(0x29);
  }

  v24 = swift_task_alloc();
  v0[6] = v24;
  *v24 = v0;
  v24[1] = sub_252CB79C8;
  v25 = v0[4];
  v26 = v0[5];

  return sub_252D28554(v26, v25, v22 & 1);
}

uint64_t sub_252CB79C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  v7 = *(v4 + 40);
  sub_25293847C(*(v4 + 32), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252CB7B88, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252CB7B88()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_252CB7BF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CB7C14, 0, 0);
}

uint64_t sub_252CB7C14()
{
  v1 = *(v0 + 24);
  v2 = __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  if (sub_252C4B680(0x24))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v3 = sub_252C4B680(0x29);
  }

  v5 = *v2;
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_2529C4D04;
  v8 = *(v0 + 24);

  return sub_252C16070(0, v3 & 1, v5, v8);
}

uint64_t sub_252CB7D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  sub_252C51E70();
  if (!v9)
  {
    sub_252C51FFC();
    if (v11)
    {

      sub_252C51FFC();
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v13)
      {
        goto LABEL_10;
      }

      sub_252C4BEAC();
      if (!v14)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    sub_252E37024();

    v15 = sub_252E36324();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    goto LABEL_11;
  }

  sub_252C51E70();
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v16 = sub_252E36324();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
LABEL_11:
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  sub_252956C98(v8, a1 + *(found + 36));
  sub_252C4BEAC();
  if (v18)
  {
    sub_252E37024();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_252E36324();
  (*(*(v20 - 8) + 56))(v6, v19, 1, v20);
  return sub_252956C98(v6, a1 + *(found + 28));
}

uint64_t sub_252CB7F48()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x277D55C70] + 4);
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_252CB8014;
  v4 = MEMORY[0x277D84F90];

  return v6(0xD000000000000025, 0x8000000252E919C0, v4);
}

uint64_t sub_252CB8014(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_252CB8114(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationHomeKitAutomationErrorParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB81E0, 0, 0);
}

uint64_t sub_252CB81E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0x3FF0000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v8 = sub_252C07CC4();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252CB838C;

  return v12(0xD000000000000025, 0x8000000252E919C0, v8);
}

uint64_t sub_252CB838C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252CB856C;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252CB84D8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252CB84D8()
{
  v1 = v0[3];
  sub_252CBD6D4(v0[5], type metadata accessor for HomeAutomationHomeKitAutomationErrorParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252CB856C()
{
  v1 = v0[3];
  sub_252CBD6D4(v0[5], type metadata accessor for HomeAutomationHomeKitAutomationErrorParameters);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252CB861C()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x277D55C70] + 4);
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_252CBD840;
  v4 = MEMORY[0x277D84F90];

  return v6(0xD000000000000025, 0x8000000252E6DE10, v4);
}

uint64_t sub_252CB86E8(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationGenericAutomationErrorParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB87B4, 0, 0);
}

uint64_t sub_252CB87B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0x3FF0000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v8 = sub_252C07760();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252CB8960;

  return v12(0xD000000000000025, 0x8000000252E6DE10, v8);
}

uint64_t sub_252CB8960(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252CB8B40;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252CB8AAC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252CB8AAC()
{
  v1 = v0[3];
  sub_252CBD6D4(v0[5], type metadata accessor for HomeAutomationGenericAutomationErrorParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252CB8B40()
{
  v1 = v0[3];
  sub_252CBD6D4(v0[5], type metadata accessor for HomeAutomationGenericAutomationErrorParameters);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252CB8BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 2104) = v7;
  *(v8 + 2096) = a7;
  *(v8 + 2336) = a6;
  *(v8 + 2088) = a5;
  *(v8 + 2080) = a4;
  *(v8 + 2072) = a3;
  *(v8 + 2064) = a2;
  *(v8 + 2056) = a1;
  v9 = sub_252E34014();
  *(v8 + 2112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 2120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 2128) = swift_task_alloc();
  v12 = type metadata accessor for AutomationSnippetModel();
  *(v8 + 2136) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 2144) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90) - 8) + 64) + 15;
  *(v8 + 2152) = swift_task_alloc();
  v15 = type metadata accessor for IconConfiguration();
  *(v8 + 2160) = v15;
  v16 = *(v15 - 8);
  *(v8 + 2168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 2176) = swift_task_alloc();
  *(v8 + 2184) = swift_task_alloc();
  *(v8 + 2192) = swift_task_alloc();
  *(v8 + 2200) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v8 + 2208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB8DCC, 0, 0);
}

uint64_t sub_252CB8DCC()
{
  v101 = v0;
  v1 = *(v0 + 2064);
  v2 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);
  v9 = 1;
  v8(v5 + v6, 1, 1, v7);
  v8(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
  v8(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v10;
  *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v10;
  sub_252C4E214();
  if (v11)
  {
    v12 = *(v0 + 2208);
    sub_252E37024();

    v9 = 0;
  }

  v13 = *(v0 + 2208);
  v8(v13, v9, 1, v7);
  swift_beginAccess();
  sub_2529D032C(v13, v5 + v6, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
  v14 = type metadata accessor for HomeAutomationEntityResponse(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2529605C0(v5);
  *(v0 + 2216) = v17;
  swift_setDeallocating();
  v18 = *sub_25295E9E4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_deallocClassInstance();
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252E3C130;
  *(v21 + 32) = v17;
  v22 = type metadata accessor for HomeAutomationEntityResponses();
  v23 = swift_allocObject();
  *(v0 + 2224) = v23;
  *(v23 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v23 + 24) = v21;
  type metadata accessor for HomeStore();

  v24 = static HomeStore.shared.getter();
  v25 = sub_2529DA828();

  v97 = v22;
  v99 = v23;
  if (v25 >> 62)
  {
LABEL_25:
    v26 = sub_252E378C4();
    if (v26)
    {
      goto LABEL_5;
    }

LABEL_26:

    v28 = 0;
    goto LABEL_27;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_5:
  v27 = 0;
  v96 = (v0 + 1528);
  while ((v25 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x2530ADF00](v27, v25);
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_18;
    }

LABEL_9:
    v30 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v0 + 2072) && *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v0 + 2080);
    if (v30 || (sub_252E37DB4() & 1) != 0)
    {
      goto LABEL_19;
    }

    ++v27;
    if (v29 == v26)
    {
      goto LABEL_26;
    }
  }

  if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v28 = *(v25 + 8 * v27 + 32);

  v29 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
LABEL_19:

  v31 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);
  type metadata accessor for DefaultHomeDataDecorator();
  swift_allocObject();
  v32 = v31;
  sub_252DD3B64(__dst);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v33 = __dst[3];
  *(v0 + 1560) = __dst[2];
  *(v0 + 1576) = v33;
  v34 = __dst[1];
  *v96 = __dst[0];
  *(v0 + 1544) = v34;
  if (*(v0 + 1536))
  {
    v35 = *(v0 + 1576);
    if (v35)
    {
      v36 = *(v0 + 1552);
      v83 = *(v0 + 1544);
      v85 = *(v0 + 1568);
      v37 = *(v0 + 2200);
      v38 = *(v0 + 2160);
      v39 = *(v0 + 2152);
      v82 = v39;
      v89 = v32;
      v74 = type metadata accessor for DirectInvocationConfig();
      v75 = *(*(v74 - 8) + 56);
      v75(v39, 1, 1, v74);
      v78 = v38[5];
      *(v0 + 2000) = 0;
      *(v0 + 2008) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      sub_252E330C4();
      v77 = v38[6];
      *(v0 + 2322) = 0;
      sub_252E330C4();
      v87 = v38[9];
      *(v0 + 2321) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
      sub_252E330C4();
      v40 = v38[10];
      *(v0 + 1680) = 0;
      *(v0 + 1688) = 0;
      sub_252E330C4();
      v79 = v38[11];
      *(v0 + 2024) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
      sub_252E330C4();
      v76 = v38[12];
      *(v0 + 1936) = 0;
      *(v0 + 1944) = 0;
      sub_252E330C4();
      v91 = v38[13];
      *(v0 + 1920) = 0;
      *(v0 + 1928) = 0;
      sub_252E330C4();
      v93 = v35;
      v41 = v38[14];
      v75(v37 + v41, 1, 1, v74);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
      v43 = *(*(v42 - 8) + 8);
      v43(v37 + v40, v42);
      *(v0 + 1840) = 0;
      *(v0 + 1848) = 0;
      sub_252E330C4();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
      (*(*(v44 - 8) + 8))(v37 + v77, v44);
      *(v0 + 2327) = 0;
      sub_252E330C4();
      sub_2529D032C(v82, v37 + v41, &qword_27F540068, &qword_252E3BC90);
      *(v0 + 1824) = v83;
      *(v0 + 1832) = v36;
      sub_252E330C4();
      v43(v37 + v78, v42);
      *(v0 + 1808) = v85;
      *(v0 + 1816) = v93;
      sub_252E330C4();
      v43(v37 + v76, v42);
      *(v0 + 1712) = 0;
      *(v0 + 1720) = 0;
      sub_252E330C4();
      v43(v37 + v91, v42);
      *(v0 + 1952) = 0;
      *(v0 + 1960) = 0;
      sub_252E330C4();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
      (*(*(v45 - 8) + 8))(v37 + v79, v45);
      *(v0 + 2032) = 0;
      sub_252E330C4();
      v46 = v38[7];
      *(v0 + 2333) = 2;
      sub_252E330C4();
      v47 = v38[8];
      *(v0 + 2334) = 2;
      sub_252E330C4();
      *(v0 + 2335) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
      sub_252E330F4();

      sub_25293847C(v96, &qword_27F541B80, &unk_252E4E7B0);
      sub_25293847C(v82, &qword_27F540068, &qword_252E3BC90);
      goto LABEL_28;
    }

    sub_25293847C(v96, &qword_27F541B80, &unk_252E4E7B0);
  }

LABEL_27:
  v48 = *(v0 + 2200);
  v49 = *(v0 + 2160);
  v50 = *(v0 + 2152);
  v92 = v50;
  v80 = type metadata accessor for DirectInvocationConfig();
  v81 = *(*(v80 - 8) + 56);
  v81(v50, 1, 1, v80);
  v90 = v49[5];
  *(v0 + 1792) = 0;
  *(v0 + 1800) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v86 = v49[6];
  *(v0 + 2332) = 0;
  sub_252E330C4();
  v95 = v49[9];
  *(v0 + 2331) = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v51 = v49[10];
  *(v0 + 1904) = 0;
  *(v0 + 1912) = 0;
  sub_252E330C4();
  v94 = v49[11];
  *(v0 + 2048) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v84 = v49[12];
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 0;
  sub_252E330C4();
  v88 = v49[13];
  *(v0 + 1856) = 0;
  *(v0 + 1864) = 0;
  sub_252E330C4();
  v52 = v49[14];
  v81(v48 + v52, 1, 1, v80);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v54 = *(*(v53 - 8) + 8);
  v54(v48 + v51, v53);
  *(v0 + 1888) = 0;
  *(v0 + 1896) = 0;
  sub_252E330C4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  (*(*(v55 - 8) + 8))(v48 + v86, v55);
  *(v0 + 2330) = 0;
  sub_252E330C4();
  sub_2529D032C(v92, v48 + v52, &qword_27F540068, &qword_252E3BC90);
  *(v0 + 1728) = 0x69662E6573756F68;
  *(v0 + 1736) = 0xEA00000000006C6CLL;
  sub_252E330C4();
  v54(v48 + v90, v53);
  *(v0 + 1744) = xmmword_252E41BB0;
  sub_252E330C4();
  v54(v48 + v84, v53);
  *(v0 + 1760) = 0;
  *(v0 + 1768) = 0;
  sub_252E330C4();
  v54(v48 + v88, v53);
  *(v0 + 1776) = 0;
  *(v0 + 1784) = 0;
  sub_252E330C4();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  (*(*(v56 - 8) + 8))(v48 + v94, v56);
  *(v0 + 2040) = 0;
  sub_252E330C4();
  v57 = v49[7];
  *(v0 + 2329) = 2;
  sub_252E330C4();
  v58 = v49[8];
  *(v0 + 2328) = 2;
  sub_252E330C4();
  *(v0 + 2326) = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  sub_25293847C(v92, &qword_27F540068, &qword_252E3BC90);
LABEL_28:
  *(v0 + 2232) = v28;
  v59 = *(v0 + 2104);
  v60 = *(v0 + 2336);
  v61 = *(v0 + 2088);
  v62 = *(v0 + 2064);
  v63 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  *(v0 + 2240) = *(v63 + 23);

  memcpy((v0 + 1024), (v59 + 152), 0x1F8uLL);
  memcpy((v0 + 16), (v59 + 152), 0x1F8uLL);
  GEOLocationCoordinate2DMake(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);

  sub_2529353AC(v0 + 1024, v0 + 520);
  v64 = v62;
  v65 = sub_252953488(v62, __dst, 0);
  *(v0 + 2248) = v65;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v66 = swift_allocObject();
  *(v0 + 2256) = v66;
  *(v66 + 16) = xmmword_252E3EF90;
  *(v66 + 32) = 0x6974616D6F747561;
  *(v66 + 40) = 0xEA00000000006E6FLL;
  v67 = type metadata accessor for HomeAutomationAutomation();
  *(v66 + 48) = v61;
  *(v66 + 72) = v67;
  *(v66 + 80) = 0x65736E6F70736572;
  *(v66 + 88) = 0xE900000000000073;
  *(v66 + 96) = v99;
  *(v66 + 120) = v97;
  strcpy((v66 + 128), "intentContext");
  *(v66 + 142) = -4864;
  v68 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v66 + 144) = v65;
  *(v66 + 168) = v68;
  *(v66 + 176) = 0xD00000000000001ALL;
  *(v66 + 184) = 0x8000000252E8A330;
  *(v66 + 192) = v60;
  v69 = MEMORY[0x277D839B0];
  *(v66 + 216) = MEMORY[0x277D839B0];
  *(v66 + 224) = 0xD000000000000012;
  *(v66 + 232) = 0x8000000252E91930;
  *(v66 + 264) = v69;
  *(v66 + 240) = 0;
  v70 = *(MEMORY[0x277D55C68] + 4);
  v98 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v71 = swift_task_alloc();
  *(v0 + 2264) = v71;
  v72 = sub_252CBC424();
  *v71 = v0;
  v71[1] = sub_252CB9D90;

  return v98(0xD00000000000002CLL, 0x8000000252E91900, v66, &type metadata for HomeAutomationCATsSimple.SchedulerFutureActionUILabelsDialogIds, v72);
}

uint64_t sub_252CB9D90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2264);
  v11 = *v2;
  v3[284] = a1;
  v3[285] = v1;

  if (v1)
  {
    v5 = sub_252CB9EDC;
  }

  else
  {
    v6 = v3[282];
    v7 = v3[281];
    v8 = v3[280];
    v9 = v3[278];

    v5 = sub_252CBA014;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB9EDC()
{
  v1 = v0[282];
  v2 = v0[281];
  v3 = v0[280];
  v4 = v0[279];
  v5 = v0[278];
  v6 = v0[277];
  v7 = v0[275];

  sub_252CBD6D4(v7, type metadata accessor for IconConfiguration);
  v8 = v0[285];
  v9 = v0[276];
  v10 = v0[275];
  v11 = v0[274];
  v12 = v0[273];
  v13 = v0[272];
  v14 = v0[269];
  v15 = v0[268];
  v16 = v0[266];

  v17 = v0[1];

  return v17();
}

uint64_t sub_252CBA014()
{
  v1 = *(v0 + 2272);
  v2 = *(v0 + 2192);
  v3 = *(v0 + 2184);
  v32 = *(v0 + 2200);
  v34 = *(v0 + 2176);
  v4 = *(v0 + 2168);
  v5 = *(v0 + 2144);
  v6 = *(v0 + 2136);
  v35 = *(v0 + 2160);
  v36 = *(v0 + 2104);
  v37 = *(v0 + 2096);
  v38 = *(v0 + 2128);
  v7 = *(v0 + 2088);
  *(v0 + 2325) = 2;
  v8 = sub_252E36374();
  v28 = v9;
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541710, &unk_252E59D20);
  v10 = *(v4 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252E3C290;
  sub_252BA6E60(v32, v12 + v11, type metadata accessor for IconConfiguration);
  sub_252CBA95C(v7, v2);
  *(v0 + 2324) = 1;
  v13 = sub_252E36374();
  v31 = v14;
  v33 = v13;
  *(v0 + 2320) = 0;
  v30 = sub_252E36374();
  v16 = v15;
  *(v0 + 1968) = v29;
  *(v0 + 1976) = v28;
  sub_252E330C4();
  v17 = v6[5];
  *(v0 + 2016) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252E330C4();
  sub_252BA6E60(v2, v3, type metadata accessor for IconConfiguration);
  v18 = v6[6];
  sub_252BA6E60(v3, v34, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252CBD6D4(v3, type metadata accessor for IconConfiguration);
  v19 = v6[7];
  *(v0 + 1696) = v33;
  *(v0 + 1704) = v31;
  sub_252E330C4();
  v20 = v6[8];
  *(v0 + 1984) = v30;
  *(v0 + 1992) = v16;
  sub_252E330C4();
  v21 = v6[9];
  *(v0 + 2323) = 1;
  sub_252E330C4();
  sub_252CBD6D4(v2, type metadata accessor for IconConfiguration);
  v22 = v36[8];
  __swift_project_boxed_opaque_existential_1(v36 + 4, v36[7]);
  v23 = swift_task_alloc();
  *(v0 + 2288) = v23;
  *(v23 + 16) = v37;
  v24 = swift_task_alloc();
  *(v0 + 2296) = v24;
  *(v24 + 16) = v5;
  sub_252B03B94();
  v25 = swift_task_alloc();
  *(v0 + 2304) = v25;
  *v25 = v0;
  v25[1] = sub_252CBA370;
  v26 = *(v0 + 2128);

  return sub_252A199A8(v0 + 1592, &unk_252E59D38, v23, &unk_252E59D48, v24, v26, 0, 0);
}

uint64_t sub_252CBA370()
{
  v2 = *v1;
  v3 = *(*v1 + 2304);
  v4 = *(*v1 + 2128);
  v5 = *(*v1 + 2120);
  v6 = *(*v1 + 2112);
  v11 = *v1;
  *(*v1 + 2312) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252CBA654;
  }

  else
  {
    v8 = *(v2 + 2296);
    v9 = *(v2 + 2288);

    v7 = sub_252CBA4FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252CBA4FC()
{
  v1 = *(v0 + 2272);
  v2 = *(v0 + 2232);
  v3 = *(v0 + 2224);
  v4 = *(v0 + 2216);
  v5 = *(v0 + 2208);
  v6 = *(v0 + 2200);
  v7 = *(v0 + 2192);
  v8 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v14 = *(v0 + 2152);
  v9 = *(v0 + 2144);
  v15 = *(v0 + 2128);
  v10 = *(v0 + 2056);

  sub_252CBD6D4(v6, type metadata accessor for IconConfiguration);
  sub_252927BEC((v0 + 1592), v10);
  sub_252CBD6D4(v9, type metadata accessor for AutomationSnippetModel);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CBA654()
{
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[284];
  v4 = v0[279];
  v5 = v0[278];
  v6 = v0[277];
  v7 = v0[275];
  v8 = v0[268];

  sub_252CBD6D4(v7, type metadata accessor for IconConfiguration);

  sub_252CBD6D4(v8, type metadata accessor for AutomationSnippetModel);
  v9 = v0[289];
  v10 = v0[276];
  v11 = v0[275];
  v12 = v0[274];
  v13 = v0[273];
  v14 = v0[272];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[266];

  v18 = v0[1];

  return v18();
}

uint64_t sub_252CBA7C8()
{
  v1 = *(v0 + 16);
  v2 = sub_252BE8FD4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_252CBA82C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CBA84C, 0, 0);
}

uint64_t sub_252CBA84C()
{
  v1 = v0[2];
  sub_252BA6E60(v0[3], v1, type metadata accessor for AutomationSnippetModel);
  v2 = type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_252CBA93C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CBD838, 0, 0);
}

uint64_t sub_252CBA95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v3 = type metadata accessor for IconConfiguration();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - v8;
  v73 = &v53 - v8;
  v10 = type metadata accessor for DirectInvocationConfig();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 1, 1, v10);
  v68 = v3[5];
  v76 = 0;
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v67 = v3[6];
  LOBYTE(v76) = 0;
  sub_252E330C4();
  v69 = v3[9];
  LOBYTE(v76) = 48;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v14 = v3[10];
  v76 = 0;
  v77 = 0;
  sub_252E330C4();
  v72 = v3[11];
  v76 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v16 = v3[12];
  v76 = 0;
  v77 = 0;
  sub_252E330C4();
  v66 = v3[13];
  v76 = 0;
  v77 = 0;
  sub_252E330C4();
  v17 = v3[14];
  v71 = v10;
  v74 = v13;
  v75 = v12;
  v12((a2 + v17), 1, 1, v10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v21 = v19 + 8;
  v20(a2 + v14, v18);
  v76 = 0;
  v77 = 0;
  sub_252E330C4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  v23 = *(v22 - 8);
  v62 = *(v23 + 8);
  v63 = v22;
  v61 = v23 + 8;
  v62(a2 + v67);
  LOBYTE(v76) = 0;
  sub_252E330C4();
  v24 = a2 + v17;
  v25 = v73;
  sub_2529D032C(v73, v24, &qword_27F540068, &qword_252E3BC90);
  v76 = 0x69662E6B636F6C63;
  v77 = 0xEA00000000006C6CLL;
  sub_252E330C4();
  v20(a2 + v68, v18);
  v76 = 0;
  v77 = 0;
  sub_252E330C4();
  v20(a2 + v16, v18);
  v76 = 0;
  v77 = 0;
  v26 = v25;
  sub_252E330C4();
  v68 = v21;
  v60 = v20;
  v20(v66 + a2, v18);
  v76 = 0;
  v77 = 0;
  sub_252E330C4();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  v28 = *(v27 - 8);
  v66 = *(v28 + 8);
  v64 = v28 + 8;
  v66(a2 + v72, v27);
  v76 = 0;
  v72 = v15;
  sub_252E330C4();
  v29 = v3[7];
  LOBYTE(v76) = 2;
  sub_252E330C4();
  v30 = v3[8];
  LOBYTE(v76) = 2;
  sub_252E330C4();
  LOBYTE(v76) = 48;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  sub_25293847C(v25, &qword_27F540068, &qword_252E3BC90);
  v31 = sub_252B4E1AC();
  v67 = v27;
  if (v31)
  {
    v58 = 0x8000000252E918E0;
    v32 = v71;
    v75(v26, 1, 1, v71);
    v57 = v3[5];
    v76 = 0;
    v77 = 0;
    v33 = v65;
    sub_252E330C4();
    v54 = v18;
    v34 = v3[6];
    LOBYTE(v76) = 0;
    sub_252E330C4();
    v70 = v3[9];
    LOBYTE(v76) = 48;
    sub_252E330C4();
    v35 = v60;
    v36 = v3[10];
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v59 = v3[11];
    v76 = 0;
    sub_252E330C4();
    v55 = v3[12];
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v56 = v3[13];
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v37 = v3[14];
    v75(v33 + v37, 1, 1, v32);
    v38 = v54;
    v35(v33 + v36, v54);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    (v62)(v33 + v34, v63);
    LOBYTE(v76) = 0;
    sub_252E330C4();
    v39 = v73;
    sub_2529D032C(v73, v33 + v37, &qword_27F540068, &qword_252E3BC90);
    v76 = 0xD000000000000015;
    v77 = v58;
    sub_252E330C4();
    v35(v33 + v57, v38);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v35(v33 + v55, v38);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v35(v33 + v56, v38);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v66(v33 + v59, v67);
    v76 = 0;
    sub_252E330C4();
    v40 = v3[7];
    LOBYTE(v76) = 2;
    sub_252E330C4();
    v41 = v3[8];
    LOBYTE(v76) = 2;
    sub_252E330C4();
    LOBYTE(v76) = 48;
    sub_252E330F4();
    v42 = v39;
  }

  else
  {
    v43 = v75;
    v44 = v71;
    result = sub_252B4DFA4();
    if ((result & 1) == 0)
    {
      return result;
    }

    v58 = 0x8000000252E918C0;
    v43(v25, 1, 1, v44);
    v57 = v3[5];
    v76 = 0;
    v77 = 0;
    v33 = v65;
    sub_252E330C4();
    v46 = v3[6];
    LOBYTE(v76) = 0;
    sub_252E330C4();
    v70 = v3[9];
    LOBYTE(v76) = 48;
    sub_252E330C4();
    v47 = v60;
    v48 = v3[10];
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v59 = v3[11];
    v76 = 0;
    sub_252E330C4();
    v55 = v3[12];
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v56 = v3[13];
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v49 = v3[14];
    v75(v33 + v49, 1, 1, v71);
    v47(v33 + v48, v18);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    (v62)(v33 + v46, v63);
    LOBYTE(v76) = 0;
    sub_252E330C4();
    v50 = v73;
    sub_2529D032C(v73, v33 + v49, &qword_27F540068, &qword_252E3BC90);
    v76 = 0xD000000000000013;
    v77 = v58;
    sub_252E330C4();
    v47(v33 + v57, v18);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v47(v33 + v55, v18);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v47(v33 + v56, v18);
    v76 = 0;
    v77 = 0;
    sub_252E330C4();
    v66(v33 + v59, v67);
    v76 = 0;
    sub_252E330C4();
    v51 = v3[7];
    LOBYTE(v76) = 2;
    sub_252E330C4();
    v52 = v3[8];
    LOBYTE(v76) = 2;
    sub_252E330C4();
    LOBYTE(v76) = 48;
    sub_252E330F4();
    v42 = v50;
  }

  sub_25293847C(v42, &qword_27F540068, &qword_252E3BC90);
  sub_252CBD6D4(a2, type metadata accessor for IconConfiguration);
  return sub_252B42FDC(v33, a2);
}

uint64_t sub_252CBB4A4()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  memcpy(__dst, v0 + 19, sizeof(__dst));
  sub_252935408(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_252CBB540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_252CBB604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_252CBB6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_252CBB78C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252CB1250(a1, a2);
}

uint64_t sub_252CBB838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_252CBB8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_252CBB9C0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252CB5A54(a1, a2);
}

uint64_t sub_252CBBA6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_252CBC1D8)(a1, a2);
}

uint64_t sub_252CBBB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_252E37834();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

unint64_t sub_252CBBC4C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_252CBD82C(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CBBDB0(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_252CBBEB0(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (!a2)
  {
LABEL_28:
    v36 = *(v3 + 16);
    *result = *v3;
    *(result + 16) = v36;
    *(result + 32) = *(v3 + 32);
    *(result + 48) = *(v3 + 48);
    *(result + 56) = v6;
    *(result + 64) = v5;
    *(result + 72) = v7;
    sub_252CBD82C(v6, v5, v7 & 1);
    return 0;
  }

  v8 = a3;
  v47 = *(v3 + 8);
  if (!a3)
  {
    v37 = result;
    v17 = *(v3 + 8);
    v38 = *(v3 + 16);
    sub_252CBD82C(v6, v47, v7 & 1);
    v39 = v38;
    v40 = v37;
LABEL_32:
    v42 = *(v3 + 16);
    *v40 = *v3;
    *(v40 + 16) = v42;
    *(v40 + 32) = *(v3 + 32);
    *(v40 + 48) = *(v3 + 48);
    *(v40 + 56) = v6;
    *(v40 + 64) = v17;
    *(v40 + 72) = v39;
    return v8;
  }

  if (a3 < 0)
  {
LABEL_41:
    __break(1u);
  }

  else
  {
    v44 = result;
    v9 = *(v3 + 24);
    v10 = *(v3 + 40);
    v49 = *(v3 + 32);
    v11 = *(v3 + 48);
    v3 = *(v3 + 8);
    v12 = v7;
    sub_252CBD82C(v6, v47, v7 & 1);
    v13 = v12;
    result = 0;
    v48 = v10;
    v14 = v12 | v10;
    v45 = v8;
    v15 = 1;
    v16 = v6;
    v17 = v47;
    v46 = v13;
    while ((v14 & 1) == 0)
    {
      if (v17 != v49)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v16 == v9)
      {
        v50[0] = 0;
        v41 = *(v43 + 16);
        *v44 = *v43;
        *(v44 + 16) = v41;
        *(v44 + 32) = *(v43 + 32);
        *(v44 + 48) = *(v43 + 48);
        *(v44 + 56) = v9;
        *(v44 + 64) = v17;
        v8 = result;
        *(v44 + 72) = 0;
        return v8;
      }

      if (v13)
      {
        goto LABEL_43;
      }

      if (v16 < v6)
      {
        goto LABEL_35;
      }

      if (v49 != v3)
      {
        goto LABEL_36;
      }

      if (v16 >= v9)
      {
        goto LABEL_37;
      }

      if (v16 < 0)
      {
        goto LABEL_38;
      }

      v18 = 1 << *(v11 + 32);
      if (v16 >= v18)
      {
        goto LABEL_38;
      }

      v19 = v16 >> 6;
      v20 = *(v11 + 56 + 8 * (v16 >> 6));
      if (((v20 >> v16) & 1) == 0)
      {
        goto LABEL_39;
      }

      if (*(v11 + 36) != v49)
      {
        goto LABEL_40;
      }

      v21 = (*(v11 + 48) + (v16 << 6));
      v23 = v21[2];
      v22 = v21[3];
      v24 = v21[1];
      v51 = *v21;
      v52 = v24;
      v53 = v23;
      v54 = v22;
      v25 = v20 & (-2 << (v16 & 0x3F));
      if (v25)
      {
        v16 = __clz(__rbit64(v25)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v26 = v13;
        sub_252C76A80(&v51, v50);
        v13 = v26;
      }

      else
      {
        v27 = v19 << 6;
        v28 = v19 + 1;
        v29 = (v11 + 64 + 8 * v19);
        while (v28 < (v18 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_252C76A80(&v51, v50);
            sub_252ACBF38(v16, v17, 0);
            v16 = __clz(__rbit64(v30)) + v27;
            goto LABEL_23;
          }
        }

        sub_252C76A80(&v51, v50);
        sub_252ACBF38(v16, v17, 0);
        v16 = v18;
LABEL_23:
        v8 = v45;
        v13 = v46;
        v3 = v47;
      }

      v17 = *(v11 + 36);
      v32 = v51;
      v33 = v52;
      v34 = v54;
      a2[2] = v53;
      a2[3] = v34;
      *a2 = v32;
      a2[1] = v33;
      if (v15 == v8)
      {
        v39 = 0;
        v50[0] = 0;
        v6 = v16;
        v3 = v43;
        v40 = v44;
        goto LABEL_32;
      }

      a2 += 4;
      result = v15;
      v14 = v48;
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_252CBC1D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CBC298, 0, 0);
}

uint64_t sub_252CBC298()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E91800, 0xD000000000000088, 0x8000000252E91830);
  v7 = objc_allocWithZone(type metadata accessor for AutomateHomeIntentHandler());

  [v7 init];
  type metadata accessor for AutomateHomeIntent();
  v8 = v4;
  sub_252E336E4();
  sub_252E33784();
  v9 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

unint64_t sub_252CBC424()
{
  result = qword_27F544B60;
  if (!qword_27F544B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544B60);
  }

  return result;
}

uint64_t sub_252CBC478()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252CBA7A8(v2);
}

uint64_t sub_252CBC50C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CBA82C(a1, v4);
}

uint64_t sub_252CBC5AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB86E8(v0);
}

uint64_t sub_252CBC63C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB85FC(v0);
}

uint64_t sub_252CBC6CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB8114(v0);
}

uint64_t sub_252CBC75C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB7F28(v0);
}

uint64_t sub_252CBC7EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252CB7BF4(v2, v3);
}

uint64_t sub_252CBC884()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252CB773C(v2, v3);
}

uint64_t sub_252CBC91C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252CBC9B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_252E37834();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_252CBBC4C(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_252E37834();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_252CBBB68(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_252CBCAD0(unint64_t a1, char *a2)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v57 - v8;
  v66 = type metadata accessor for IconConfiguration();
  v57 = *(v66 - 8);
  v10 = *(v57 + 64);
  v11 = MEMORY[0x28223BE20](v66);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - v14;

  v15 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v15 + 192), &v85);

  v84 = &v85;
  v16 = sub_252CB0F18(sub_252CBD810, v83, a1);
  v17 = sub_252C76980(v16);

  __swift_destroy_boxed_opaque_existential_1(&v85);
  sub_252CBC9B0(5, v17, &v87);

  v19 = v87;
  v18 = v88;
  v20 = v89;
  v22 = v90;
  v21 = v91;
  v23 = v92;
  v24 = v93;
  v25 = sub_252CBBDB0(v87, v88, v89, v90, v91, v92, v93);
  if (v25)
  {
    v26 = v25;
    v27 = sub_252DFA73C(v25, 0);
    v28 = v20;
    v29 = v23;
    v30 = v21;
    v31 = v22;
    v32 = v27;
    LODWORD(v78) = v28;
    sub_252CBD82C(v19, v18, v28);
    v79 = v31;
    sub_252CBD82C(v31, v30, v29);
    v80 = v24;

    v33 = sub_252CBBEB0(&v85, v32 + 2, v26);
    sub_25293847C(&v85, &unk_27F544B70, &unk_252E59E28);
    if (v33 != v26)
    {
      goto LABEL_27;
    }

    sub_252ACBF38(v19, v18, v78);
    sub_252ACBF38(v79, v30, v29);
  }

  else
  {
    sub_252ACBF38(v19, v18, v20);
    sub_252ACBF38(v22, v21, v23);

    v32 = MEMORY[0x277D84F90];
  }

  v34 = [v81 userTask];
  if (v34)
  {
    v35 = v34;
    v61 = sub_2529C74F8();
  }

  else
  {
    v61 = 0;
  }

  v65 = v32[2];
  if (!v65)
  {
    v64 = MEMORY[0x277D84F90];
LABEL_25:

    return;
  }

  v36 = 0;
  v63 = (v57 + 56);
  v58 = (v57 + 48);
  v37 = v32 + 11;
  v64 = MEMORY[0x277D84F90];
  v60 = v9;
  v59 = v32;
  while (v36 < v32[2])
  {
    v38 = *(v37 - 1);
    if (v38)
    {
      v39 = *(v37 - 6);
      v76 = *(v37 - 7);
      v40 = *(v37 - 4);
      v41 = *v37;
      v81 = v36;
      if (v61)
      {
        v74 = 0xE400000000000000;
        v77 = 2036429415;
      }

      else
      {
        v77 = *(v37 - 2);

        v74 = v38;
      }

      v42 = type metadata accessor for DirectInvocationConfig();
      v68 = *(*(v42 - 8) + 56);
      v68(v82, 1, 1, v42);
      v43 = v66;
      v71 = *(v66 + 20);
      v85 = 0;
      v86 = 0;

      v67 = v39;
      swift_bridgeObjectRetain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v80 = v38;
      sub_252E330C4();
      v69 = v43[6];
      LOBYTE(v85) = 0;
      sub_252E330C4();
      v78 = v43[9];
      LOBYTE(v85) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
      sub_252E330C4();
      v79 = v40;
      v44 = v43[10];
      v85 = 0;
      v86 = 0;
      sub_252E330C4();
      v72 = v43[11];
      v85 = 0;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
      sub_252E330C4();
      v75 = v41;
      v45 = v43[12];
      v85 = 0;
      v86 = 0;
      sub_252E330C4();
      v70 = v43[13];
      v85 = 0;
      v86 = 0;
      sub_252E330C4();
      v46 = v43[14];
      v68(&v13[v46], 1, 1, v42);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
      v48 = *(*(v47 - 8) + 8);
      v48(&v13[v44], v47);
      v85 = 0;
      v86 = 0;
      sub_252E330C4();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
      (*(*(v49 - 8) + 8))(&v13[v69], v49);
      LOBYTE(v85) = 0;
      sub_252E330C4();
      sub_2529D032C(v82, &v13[v46], &qword_27F540068, &qword_252E3BC90);
      v85 = v76;
      v86 = v67;
      sub_252E330C4();
      v48(&v13[v71], v47);
      v85 = v77;
      v86 = v74;
      sub_252E330C4();
      v48(&v13[v45], v47);
      v85 = 0;
      v86 = 0;
      sub_252E330C4();
      v48(&v13[v70], v47);
      v85 = 0;
      v86 = 0;
      sub_252E330C4();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
      (*(*(v50 - 8) + 8))(&v13[v72], v50);
      v85 = 0;
      sub_252E330C4();
      v51 = v43[7];
      LOBYTE(v85) = 2;
      sub_252E330C4();
      v52 = v43[8];
      LOBYTE(v85) = 2;
      sub_252E330C4();
      LOBYTE(v85) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
      sub_252E330F4();
      sub_25293847C(v82, &qword_27F540068, &qword_252E3BC90);
      v9 = v60;
      sub_252B42FDC(v13, v60);
      (*v63)(v9, 0, 1, v43);

      v53 = (*v58)(v9, 1, v43);
      v32 = v59;
      v36 = v81;
      if (v53 != 1)
      {
        sub_252B42FDC(v9, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_2529F9780(0, v64[2] + 1, 1, v64);
        }

        v55 = v64[2];
        v54 = v64[3];
        if (v55 >= v54 >> 1)
        {
          v64 = sub_2529F9780(v54 > 1, v55 + 1, 1, v64);
        }

        v56 = v64;
        v64[2] = v55 + 1;
        sub_252B42FDC(v62, v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v55);
        goto LABEL_12;
      }
    }

    else
    {
      (*v63)(v9, 1, 1, v66);
    }

    sub_25293847C(v9, &qword_27F541B50, &unk_252E47970);
LABEL_12:
    ++v36;
    v37 += 8;
    if (v65 == v36)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_252CBD5A0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252CBA91C(v2);
}

uint64_t sub_252CBD634(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252CBA93C(a1, v4);
}

uint64_t sub_252CBD6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252CBD734()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252CBD7C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_252CBD82C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_252CBD848(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];
  v5 = [a1 label];
  [v4 setConfirmText_];

  v6 = [a1 commands];
  [v4 setConfirmCommands_];

  v7 = [a2 label];
  [v4 setDenyText_];

  v8 = [a2 commands];
  [v4 setDenyCommands_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C3D0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_252CBE3E8();
  v10 = a1;
  v11 = a2;
  v12 = sub_252E37254();

  [v4 setAllConfirmationOptions_];

  return v4;
}

uint64_t sub_252CBD9DC()
{
  v0 = objc_opt_self();
  v1 = sub_252D15950(0);
  v2 = [v0 wrapCommandInStartLocalRequest_];

  v3 = sub_252D15950(1);
  v4 = [v0 wrapCommandInStartLocalRequest_];

  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 136), v29);

  v6 = v30;
  v7 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), v28);

  (*(v7 + 96))(0x4542414C5F534559, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v28, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v9 + 136), v29);

  v10 = v30;
  v11 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v12 + 16), v28);

  (*(v11 + 96))(0x4C4542414C5F4F4ELL, 0xE800000000000000, 0x736C6562614CLL, 0xE600000000000000, v28, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3C130;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252E3C130;
  *(v14 + 32) = v2;
  v15 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v27 = v2;
  v16 = [v15 init];
  v17 = sub_252E36F04();

  [v16 setLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B88, &qword_252E59E38);
  v18 = sub_252E37254();

  [v16 setCommands_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_252E3C130;
  *(v19 + 32) = v4;
  v20 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v21 = v4;
  v22 = [v20 init];
  v23 = sub_252E36F04();

  [v22 setLabel_];

  v24 = sub_252E37254();

  [v22 setCommands_];

  v25 = sub_252CBD848(v16, v22);
  *(v13 + 32) = v25;

  return v13;
}

unint64_t sub_252CBDDD4()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), &v51);

  __swift_project_boxed_opaque_existential_1(&v51, v53);
  v1 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(&v51);
  if ((v1 & 1) == 0)
  {
    v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v7 + 16), &v51);

    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v8 = sub_252E33854();
    __swift_destroy_boxed_opaque_existential_1(&v51);
    if ((v8 & 1) == 0)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v43 = sub_252E36AD4();
      __swift_project_value_buffer(v43, qword_27F544D18);
      v44 = sub_252E36AC4();
      v45 = sub_252E374B4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_252917000, v44, v45, "[ConfirmationViewBuilder] Building views for IOS", v46, 2u);
        MEMORY[0x2530AED00](v46, -1, -1);
      }

      v10 = sub_252CBD9DC();
      if (v10 >> 62)
      {
        goto LABEL_40;
      }

      goto LABEL_12;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D18);
    v3 = sub_252E36AC4();
    v4 = sub_252E374B4();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "[ConfirmationViewBuilder] Building views for CarDND";
    goto LABEL_10;
  }

  if (qword_27F53F4D0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D18);
    v3 = sub_252E36AC4();
    v4 = sub_252E374B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "[ConfirmationViewBuilder] Building views for Watch";
LABEL_10:
      _os_log_impl(&dword_252917000, v3, v4, v6, v5, 2u);
      MEMORY[0x2530AED00](v5, -1, -1);
    }

LABEL_11:

    v10 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_40:
      v11 = sub_252E378C4();
    }

    else
    {
LABEL_12:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x277D84F90];
    if (!v11)
    {
      break;
    }

    v50 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v11 & ~(v11 >> 63), 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v12 = v50;
      v48 = v11;
      v49 = v10 & 0xC000000000000001;
      v47 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v49)
        {
          v15 = MEMORY[0x2530ADF00](v13, v10);
        }

        else
        {
          if (v13 >= *(v47 + 16))
          {
            goto LABEL_42;
          }

          v15 = *(v10 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 encodedClassName];
        if (v17)
        {
          v18 = v17;
          v19 = sub_252E36F34();
          v21 = v20;
        }

        else
        {
          v19 = 0x416E776F6E6B6E55;
          v21 = 0xEE00776569566563;
        }

        v22 = v10;
        v23 = [v16 aceId];
        if (v23)
        {
          v24 = v23;
          v25 = sub_252E36F34();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v51 = v19;
        v52 = v21;
        MEMORY[0x2530AD570](0x3D64496563615BLL, 0xE700000000000000);
        MEMORY[0x2530AD570](v25, v27);

        MEMORY[0x2530AD570](93, 0xE100000000000000);

        v28 = v51;
        v29 = v52;
        v31 = *(v50 + 16);
        v30 = *(v50 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2529AA3A0((v30 > 1), v31 + 1, 1);
        }

        *(v50 + 16) = v31 + 1;
        v32 = v50 + 16 * v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v29;
        ++v13;
        v10 = v22;
        if (v14 == v48)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_30:
  if (qword_27F53F4D0 == -1)
  {
    goto LABEL_31;
  }

LABEL_43:
  swift_once();
LABEL_31:
  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544D18);

  v34 = sub_252E36AC4();
  v35 = sub_252E374B4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v51 = v37;
    *v36 = 136315138;
    v38 = MEMORY[0x2530AD730](v12, MEMORY[0x277D837D0]);
    v40 = v39;

    v41 = sub_252BE2CE0(v38, v40, &v51);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_252917000, v34, v35, "ConfirmationViewBuilder: Built views: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x2530AED00](v37, -1, -1);
    MEMORY[0x2530AED00](v36, -1, -1);
  }

  else
  {
  }

  return v10;
}

unint64_t sub_252CBE3E8()
{
  result = qword_27F544B90;
  if (!qword_27F544B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F544B90);
  }

  return result;
}

uint64_t ShowHomeFlow.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_25293DEE0(__src);
  memcpy((v3 + 16), __src, 0x1F8uLL);
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  v5 = sub_252E34104();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + 520) = 0;
  v6 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);
  *v6 = sub_252CBEAB4;
  v6[1] = 0;
  return v3;
}

HomeAutomationInternal::ShowHomeFlow::State_optional __swiftcall ShowHomeFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ShowHomeFlow.State.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6553746E65746E69;
  v3 = 0x6572506E69676562;
  v4 = 0x456F547964616572;
  if (v1 != 3)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252CBE628()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252CBE734()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252CBE82C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252CBE940(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F697463656CLL;
  v4 = 0x6553746E65746E69;
  v5 = 0xEF737365636F7270;
  v6 = 0x6572506E69676562;
  v7 = 0xEE00657475636578;
  v8 = 0x456F547964616572;
  if (v2 != 3)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000252E67F20;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ShowHomeFlow.init()()
{
  sub_25293DEE0(v5);
  memcpy((v0 + 16), v5, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 520) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);
  *v3 = sub_252CBEAB4;
  v3[1] = 0;
  return v0;
}

uint64_t sub_252CBEAB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_252E34164();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 520) > 1u || *(v1 + 520))
  {
    v12 = sub_252E37DB4();

    if ((v12 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD000000000000076, 0x8000000252E91A80);
      goto LABEL_19;
    }
  }

  else
  {
  }

  v13 = a1;
  v34 = v1;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v14 = sub_252E36804();
  v16 = v15;

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252E3C290;
    *(v17 + 32) = 25705;
    v18 = v17 + 32;
    *(v17 + 72) = MEMORY[0x277D837D0];
    *(v17 + 40) = 0xE200000000000000;
    *(v17 + 48) = v14;
    *(v17 + 56) = v16;
    sub_252CC630C(v17);
    swift_setDeallocating();
    sub_25293847C(v18, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v20 = [objc_opt_self() sharedAnalytics];
  if (v20)
  {
    v21 = v20;

    sub_252CC1408(v22);

    v23 = sub_252E36E24();

    [v21 logEventWithType:6503 context:v23];
  }

  else
  {
  }

  sub_252E340E4();
  sub_252AB3FEC(v11, 0, v37);
  v24 = *(v8 + 8);
  v24(v11, v7);
  memcpy(v38, v37, sizeof(v38));
  memcpy(v39, v37, 0x1F8uLL);
  if (sub_252956B94(v39) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544DA8);
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v24(v11, v7);
    sub_252CC3D90(v37[0], v37[1], 0xD000000000000076, 0x8000000252E91A80);

    sub_2529515FC(1, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
    goto LABEL_19;
  }

  v26 = LOBYTE(v39[26]);
  if (LOBYTE(v39[26]) == 9)
  {
    sub_25293847C(v38, &qword_27F5404C8, &unk_252E3FD60);
LABEL_19:
    v27 = 0;
    return v27 & 1;
  }

  memcpy(v36, v39, sizeof(v36));
  GEOLocationCoordinate2DMake(v36);
  v29 = v34;
  memcpy(v37, (v34 + 16), sizeof(v37));
  memcpy((v34 + 16), v36, 0x1F8uLL);
  sub_2529353AC(v39, &v35);
  sub_25293847C(v37, &qword_27F5404C8, &unk_252E3FD60);
  v30 = sub_252E34104();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v6, v13, v30);
  (*(v31 + 56))(v6, 0, 1, v30);
  v32 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  swift_beginAccess();
  sub_252B7B518(v6, v29 + v32);
  swift_endAccess();
  sub_252B680FC();
  sub_252B6796C();

  swift_unknownObjectRelease();
  if (v26 == 3)
  {

    sub_25293847C(v38, &qword_27F5404C8, &unk_252E3FD60);
    v27 = 1;
  }

  else
  {
    v27 = sub_252E37DB4();

    sub_25293847C(v38, &qword_27F5404C8, &unk_252E3FD60);
  }

  return v27 & 1;
}

uint64_t sub_252CBF2EC(uint64_t a1)
{
  v2[1017] = v1;
  v2[1016] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B8, &qword_252E4E448) - 8) + 64) + 15;
  v2[1018] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437C0, &qword_252E4E450);
  v2[1019] = v4;
  v5 = *(v4 - 8);
  v2[1020] = v5;
  v6 = *(v5 + 64) + 15;
  v2[1021] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[1022] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[1023] = swift_task_alloc();
  v2[1024] = swift_task_alloc();
  v9 = sub_252E34104();
  v2[1025] = v9;
  v10 = *(v9 - 8);
  v2[1026] = v10;
  v11 = *(v10 + 64) + 15;
  v2[1027] = swift_task_alloc();
  v2[1028] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CBF4A4, 0, 0);
}

uint64_t sub_252CBF4A4()
{
  v64 = v0;
  v1 = v0[1026];
  v2 = v0[1025];
  v3 = v0[1024];
  v4 = v0[1017];
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v4 + v5, v3, &qword_27F543798, &unk_252E4E410);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_25293847C(v0[1024], &qword_27F543798, &unk_252E4E410);
LABEL_5:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = v0[1023];
    v8 = v0[1022];
    v9 = v0[1017];
    v10 = v0[1016];
    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E91B00);
    memcpy(v0 + 2, (v9 + 16), 0x1F8uLL);
    memcpy(v0 + 65, (v9 + 16), 0x1F8uLL);
    sub_252938414((v0 + 2), (v0 + 128), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v12 = sub_252E36F94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    sub_252938414(v4 + v5, v7, &qword_27F543798, &unk_252E4E410);
    v13 = sub_252E36F94();
    MEMORY[0x2530AD570](v13);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E91A80);

    sub_252E33B24();
    goto LABEL_8;
  }

  v6 = v0[1017];
  (*(v0[1026] + 32))(v0[1028], v0[1024], v0[1025]);
  memcpy(v0 + 254, (v6 + 16), 0x1F8uLL);
  memcpy(v0 + 191, (v6 + 16), 0x1F8uLL);
  if (sub_252956B94(v0 + 191) == 1)
  {
    (*(v0[1026] + 8))(v0[1028], v0[1025]);
    goto LABEL_5;
  }

  v22 = v0[1017];
  v23 = *(v22 + 520);
  if (v23 <= 1)
  {
    if (*(v22 + 520))
    {
      memcpy(v0 + 695, v0 + 254, 0x1F8uLL);
      sub_2529353AC((v0 + 695), (v0 + 758));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v45 = v0[1028];
      v46 = v0[1027];
      v47 = v0[1026];
      v48 = v0[1025];
      v49 = sub_252E36AD4();
      __swift_project_value_buffer(v49, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD000000000000076, 0x8000000252E91A80);
      memcpy(__dst, v0 + 191, 0x1F8uLL);
      (*(v47 + 16))(v46, v45, v48);
      memcpy(v0 + 632, v0 + 254, 0x1F8uLL);
      sub_2529353AC((v0 + 632), (v0 + 821));
      if (qword_27F53F430 != -1)
      {
        swift_once();
      }

      v50 = qword_27F575A98;
      v51 = qword_27F53F218;

      if (v51 != -1)
      {
        swift_once();
      }

      v52 = qword_27F5753E0;
      v53 = qword_27F53F8A0;

      if (v53 != -1)
      {
        swift_once();
      }

      v54 = qword_27F575DC0;
      v55 = qword_27F53F880;

      if (v55 != -1)
      {
        swift_once();
      }

      v56 = v0[1027];
      v57 = v0[1026];
      v61 = v0[1025];
      v62 = v0[1028];
      v58 = v0[1017];
      v60 = v0[1016];
      v59 = qword_27F575DA0;
      type metadata accessor for IntentSelectionFlow();
      swift_allocObject();

      v0[1014] = sub_252D3FCBC(__dst, v56, v50, v52, v54, v59);
      sub_252CC0998(&qword_27F543808, type metadata accessor for IntentSelectionFlow);

      sub_252E33AC4();

      sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);

      (*(v57 + 8))(v62, v61);
    }

    else
    {
      memcpy(v0 + 884, v0 + 254, 0x1F8uLL);
      sub_2529353AC((v0 + 884), (v0 + 947));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v25 = v0[1028];
      v26 = v0[1026];
      v27 = v0[1025];
      v28 = v0[1017];
      v29 = v0[1016];
      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E91B20, 0xD000000000000076, 0x8000000252E91A80);
      v32 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);
      v31 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier + 8);

      v33 = v32(v28);

      type metadata accessor for HomeStore();
      v34 = static HomeStore.shared.getter();
      sub_2529E0898();

      v0[1015] = v33;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_252CC07AC;
      *(v35 + 24) = v28;
      sub_252E33454();

      sub_252E33AC4();

      sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
      (*(v26 + 8))(v25, v27);
    }

    goto LABEL_8;
  }

  if (v23 == 2)
  {
    v36 = v0[1028];
    v37 = v0[1026];
    v38 = v0[1025];
    v39 = v0[1016];
    *(v22 + 520) = 3;
    sub_252E33AB4();
    (*(v37 + 8))(v36, v38);
LABEL_8:
    v14 = v0[1028];
    v15 = v0[1027];
    v16 = v0[1024];
    v17 = v0[1023];
    v18 = v0[1021];
    v19 = v0[1018];

    v20 = v0[1];

    return v20();
  }

  if (v23 != 3)
  {
    memcpy(v0 + 317, v0 + 254, 0x1F8uLL);
    sub_2529353AC((v0 + 317), (v0 + 380));
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v40 = v0[1028];
    v41 = v0[1026];
    v42 = v0[1025];
    v43 = v0[1016];
    v44 = sub_252E36AD4();
    __swift_project_value_buffer(v44, qword_27F544DA8);
    sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD000000000000076, 0x8000000252E91A80);
    sub_252E33B24();
    sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
    (*(v41 + 8))(v40, v42);
    goto LABEL_8;
  }

  memcpy(v0 + 506, v0 + 191, 0x1F8uLL);
  memcpy(v0 + 443, v0 + 254, 0x1F8uLL);
  sub_2529353AC((v0 + 443), (v0 + 569));
  v24 = swift_task_alloc();
  v0[1029] = v24;
  *v24 = v0;
  v24[1] = sub_252CBFEE0;

  return sub_252976614();
}

uint64_t sub_252CBFEE0(uint64_t a1)
{
  v2 = *(*v1 + 8232);
  v4 = *v1;
  *(*v1 + 8240) = a1;

  return MEMORY[0x2822009F8](sub_252CBFFE0, 0, 0);
}

uint64_t sub_252CBFFE0()
{
  v1 = v0[1017];
  sub_252B798A8();
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = v0[1021];
  v3 = v0[1018];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E82BE0, 0xD000000000000076, 0x8000000252E91A80);
  type metadata accessor for ShowHomeRCHStrategy();
  v0[1013] = swift_allocObject();
  sub_252B791F0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437F8, &unk_252E4E460);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_252E335D4();
  sub_252CC0998(&qword_27F543800, type metadata accessor for ShowHomeRCHStrategy);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v8 = v0[1030];
  v9 = v0[1028];
  v10 = v0[1026];
  v11 = v0[1025];
  v12 = v0[1021];
  v13 = v0[1020];
  v14 = v0[1019];
  v15 = v0[1016];
  sub_252E33A34();
  (*(v13 + 8))(v12, v14);
  sub_252E33B14();

  sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
  (*(v10 + 8))(v9, v11);
  v16 = v0[1028];
  v17 = v0[1027];
  v18 = v0[1024];
  v19 = v0[1023];
  v20 = v0[1021];
  v21 = v0[1018];

  v22 = v0[1];

  return v22();
}

uint64_t sub_252CC0298(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(a2 + 520) = 3;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake(__srca);
  memcpy(v8, (a2 + 16), sizeof(v8));
  memcpy((a2 + 16), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, &v5);
  return sub_25293847C(v8, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CC0340(char a1)
{
  if (a1)
  {
    *(v1 + 520) = 4;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "pdating the flowState to ";
    v4 = 0xD000000000000035;
  }

  else
  {
    *(v1 + 520) = 1;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  v7 = *(v1 + 520);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E91A80);
}

uint64_t ShowHomeFlow.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier + 8);

  return v0;
}

uint64_t ShowHomeFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

void (*sub_252CC0618(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252CC06CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CBF2EC(a1);
}

uint64_t sub_252CC0768()
{
  type metadata accessor for ShowHomeFlow();

  return sub_252E33644();
}

unint64_t sub_252CC07B8()
{
  result = qword_27F544C10;
  if (!qword_27F544C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544C10);
  }

  return result;
}

uint64_t sub_252CC080C(uint64_t a1)
{
  result = sub_252CC0998(&qword_27F544C18, type metadata accessor for ShowHomeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ShowHomeFlow()
{
  result = qword_27F544C28;
  if (!qword_27F544C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CC08B0(uint64_t a1)
{
  result = sub_252CC0998(&qword_27F544C20, type metadata accessor for ShowHomeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252CC0998(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252CC09E8()
{
  sub_252B7D9D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ShowHomeFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t sub_252CC0C40(uint64_t a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 208);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (v7 == 9)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_252A0D524(v7, 3u);
  }

  sub_252E375C4();
  sub_252E36A74();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

uint64_t sub_252CC0DF0()
{
  v0 = sub_252E334A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-1] - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-1] - v9;
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v11 + 288), v23);

  v12 = v24;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v14 = (*(v13 + 176))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v14)
  {
    sub_252E33464();
    (*(v1 + 16))(v8, v10, v0);
    v15 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_2529F90D4(v16 > 1, v17 + 1, 1, v15);
    }

    (*(v1 + 8))(v10, v0);
    v15[2] = v17 + 1;
    (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v8, v0);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_252E33484();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_2529F90D4(0, v15[2] + 1, 1, v15);
  }

  v19 = v15[2];
  v18 = v15[3];
  if (v19 >= v18 >> 1)
  {
    v15 = sub_2529F90D4(v18 > 1, v19 + 1, 1, v15);
  }

  v15[2] = v19 + 1;
  (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v5, v0);
  v20 = sub_252E33144();

  return v20;
}

unint64_t static Log.AFAnalyticsEventContext(with:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = 25705;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_252CC630C(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &unk_27F541F10, &unk_252E42870);
  return v5;
}

void static Log.AFAnalytics(event:with:)(char *a1, uint64_t a2)
{
  v3 = qword_252E5A6F8[*a1];
  v4 = [objc_opt_self() sharedAnalytics];
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    sub_252CC1408(v6);

    v7 = sub_252E36E24();

    [v5 logEventWithType:v3 context:v7];
  }
}

uint64_t sub_252CC1408(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451A8, &qword_252E5A528);
    v2 = sub_252E37B54();
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
    sub_252974E7C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_252A00AF4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_252A00AF4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_252A00AF4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_252E37944();
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
    result = sub_252A00AF4(v33, (*(v2 + 56) + 32 * v10));
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

unint64_t sub_252CC16D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545288, &qword_252E5A608);
    v1 = sub_252E37B54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(a1 + 56) + 88 * v14;
        v19 = *(v18 + 16);
        v43[0] = *v18;
        v43[1] = v19;
        v21 = *(v18 + 48);
        v20 = *(v18 + 64);
        v22 = *(v18 + 32);
        v44 = *(v18 + 80);
        v43[3] = v21;
        v43[4] = v20;
        v43[2] = v22;
        v23 = *(v18 + 48);
        v39 = *(v18 + 32);
        v40 = v23;
        v41 = *(v18 + 64);
        v42 = *(v18 + 80);
        v24 = *(v18 + 16);
        v37 = *v18;
        v38 = v24;
        v32[3] = v40;
        v32[4] = v41;
        v33 = v42;
        v32[0] = v37;
        v32[1] = v24;
        v32[2] = v39;

        sub_252ADFB08(v43, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545290, &qword_252E5A610);
        swift_dynamicCast();
        sub_252CC8B1C(v34, v35);
        sub_252CC8B1C(v35, v36);
        sub_252CC8B1C(v36, v32);
        result = sub_252A44A10(v17, v16);
        if (v25)
        {
          v8 = (v1[6] + 16 * result);
          v9 = v8[1];
          *v8 = v17;
          v8[1] = v16;
          v10 = result;

          v11 = (v1[7] + 48 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_252CC8B1C(v32, v11);
          v7 = v12;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v26 = (v1[6] + 16 * result);
          *v26 = v17;
          v26[1] = v16;
          result = sub_252CC8B1C(v32, (v1[7] + 48 * result));
          v27 = v1[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_21;
          }

          v1[2] = v29;
          v7 = v12;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_252CC2498(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_252E36AD4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_252E36AE4();
}

uint64_t sub_252CC2548@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_252CC2644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  *a4 = result;
  return result;
}

uint64_t sub_252CC2720()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_2814B0A20 = result;
  return result;
}

uint64_t sub_252CC280C()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F20 = result;
  return result;
}

uint64_t sub_252CC2940()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F38 = result;
  return result;
}

uint64_t sub_252CC2A24()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F48 = result;
  return result;
}

uint64_t sub_252CC2AC0()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F50 = result;
  return result;
}

uint64_t sub_252CC2C2C()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F70 = result;
  return result;
}

uint64_t sub_252CC2E80()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FA8 = result;
  return result;
}

uint64_t sub_252CC2F64()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_2814B09F8 = result;
  return result;
}

uint64_t sub_252CC3160()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FC8 = result;
  return result;
}

uint64_t sub_252CC3238()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FD8 = result;
  return result;
}

uint64_t sub_252CC32D4()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FE0 = result;
  return result;
}

uint64_t sub_252CC3370()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FE8 = result;
  return result;
}

id sub_252CC340C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

unint64_t sub_252CC3480()
{
  v16[4] = *MEMORY[0x277D85DE8];
  v0 = sub_252E329C4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_252E329B4();
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  sub_252A67638(&qword_27F545368, &qword_27F545340, 0x277CD1D70);
  v3 = sub_252E329A4();
  v5 = v4;

  v8 = objc_opt_self();
  v9 = sub_252E32D14();
  sub_25296464C(v3, v5);
  v16[0] = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:v16];

  if (v10)
  {
    v11 = v16[0];
    sub_252E377F4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
    if (swift_dynamicCast())
    {
      v12 = v15;
    }

    else
    {
      v12 = sub_252CC630C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v13 = v16[0];
    v14 = sub_252E32C54();

    swift_willThrow();
    v12 = sub_252CC630C(MEMORY[0x277D84F90]);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_252CC3698()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252CC3784()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252CC385C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252CC3944@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252CC8AD0();
  *a2 = result;
  return result;
}

void sub_252CC3974(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000074756FLL;
  v4 = 0x656D695469726973;
  v5 = 0x8000000252E68660;
  v6 = 0x8000000252E68680;
  v7 = 0xD000000000000017;
  if (v2 != 3)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000252E68640;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

HomeAutomationInternal::AFAnalyticsEvent_optional __swiftcall AFAnalyticsEvent.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 6503)
  {
    if (rawValue > 6500)
    {
      if (rawValue == 6501)
      {
        *v1 = 2;
      }

      else if (rawValue == 6502)
      {
        *v1 = 3;
      }

      else
      {
        *v1 = 4;
      }

      return rawValue;
    }

    if (rawValue == 3700)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 6500)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_22:
    *v1 = 10;
    return rawValue;
  }

  if (rawValue > 6505)
  {
    switch(rawValue)
    {
      case 6506:
        *v1 = 7;
        return rawValue;
      case 6507:
        *v1 = 8;
        return rawValue;
      case 6508:
        *v1 = 9;
        return rawValue;
    }

    goto LABEL_22;
  }

  if (rawValue == 6504)
  {
    *v1 = 5;
  }

  else
  {
    *v1 = 6;
  }

  return rawValue;
}

uint64_t sub_252CC3B58()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](qword_252E5A6F8[v1]);
  return sub_252E37F14();
}

uint64_t sub_252CC3BE0()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](qword_252E5A6F8[v1]);
  return sub_252E37F14();
}

unint64_t sub_252CC3C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5450F0, &qword_252E5A470);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_252A44A10(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_252CC3D90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a1;
  v26 = 46;
  v27 = 0xE100000000000000;
  v25 = &v26;
  v7 = sub_252BE9D0C(sub_25296A724, v24, a3, a4);
  if (v8)
  {
    v7 = sub_252E37084();
  }

  v9 = v7;
  v26 = 47;
  v27 = 0xE100000000000000;
  MEMORY[0x28223BE20]();
  v22[2] = &v26;
  sub_252BE9D0C(sub_25296A724, v22, a3, a4);
  v11 = v10;

  v12 = sub_252E36AC4();
  v13 = sub_252E374C4();

  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446466;
LABEL_8:
      v17 = sub_252E37194();
      v18 = MEMORY[0x2530AD4C0](v17);
      v20 = v19;

      v21 = sub_252BE2CE0(v18, v20, &v26);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_252BE2CE0(v23, a2, &v26);
      _os_log_impl(&dword_252917000, v12, v13, "%{public}s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v16, -1, -1);
      MEMORY[0x2530AED00](v15, -1, -1);
    }

LABEL_9:

    return;
  }

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v26 = v16;
  *v15 = 136446466;
  if (v9 >> 14 >= sub_252E37084() >> 14)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_252CC407C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545318, &qword_252E5A6A0);
  v3 = sub_252E37B54();
  memcpy(__dst, a1 + 4, 0x200uLL);
  v4 = __dst[0];
  v5 = sub_252A44B34(__dst[0]);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_252938414(__dst, v13, &qword_27F545320, &qword_252E5A6A8);
    return v3;
  }

  v7 = (a1 + 68);
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + 8 * v5) = v4;
    result = memcpy((v3[7] + 504 * v5), &__dst[1], 0x1F8uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_252938414(__dst, v13, &qword_27F545320, &qword_252E5A6A8);
    memcpy(__dst, v7, 0x200uLL);
    v4 = __dst[0];
    v5 = sub_252A44B34(__dst[0]);
    v7 += 512;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC41F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545308, &qword_252E5A690);
    v3 = sub_252E37B54();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v6 = __dst[63];
      memcpy(__src, v4, 0x1F8uLL);
      sub_252938414(__dst, &v13, &qword_27F545310, &qword_252E5A698);
      result = sub_252A44AB4(__src);
      if (v8)
      {
        break;
      }

      v9 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = memcpy((v3[6] + 504 * result), __src, 0x1F8uLL);
      *(v3[7] + 8 * v9) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_11;
      }

      v3[2] = v12;
      if (!i)
      {

        return v3;
      }

      v4 += 512;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_252CC4370(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(void *))
{
  v38[0] = 47;
  v38[1] = 0xE100000000000000;
  v37 = v38;
  sub_252BE9D0C(a8, v36, a3, a4);
  v15 = v14;

  v16 = sub_252E36AC4();
  v17 = sub_252E374D4();

  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136316162;
      *(v19 + 4) = sub_252BE2CE0(0x65725F7261646172, 0xEF202D2074726F70, v38);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_252BE2CE0(a5, a6, v38);
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_252BE2CE0(a1, a2, v38);
      *(v19 + 32) = 2082;
      v21 = sub_252E37194();
      v22 = MEMORY[0x2530AD4C0](v21);
      v24 = v23;

      v25 = sub_252BE2CE0(v22, v24, v38);

      *(v19 + 34) = v25;
      *(v19 + 42) = 2050;
      *(v19 + 44) = a7;
      _os_log_impl(&dword_252917000, v16, v17, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld", v19, 0x34u);
      swift_arrayDestroy();
      v26 = v20;
LABEL_9:
      MEMORY[0x2530AED00](v26, -1, -1);
      MEMORY[0x2530AED00](v19, -1, -1);
    }

LABEL_10:

    return;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v38[0] = v34;
  *v19 = 136316162;
  *(v19 + 4) = sub_252BE2CE0(0x65725F7261646172, 0xEF202D2074726F70, v38);
  *(v19 + 12) = 2082;
  *(v19 + 14) = sub_252BE2CE0(a5, a6, v38);
  *(v19 + 22) = 2080;
  *(v19 + 24) = sub_252BE2CE0(a1, a2, v38);
  *(v19 + 32) = 2082;
  v27 = sub_252E37084();
  v28 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v28 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v28 >= v27 >> 14)
  {
    v29 = sub_252E37194();
    v30 = MEMORY[0x2530AD4C0](v29);
    v32 = v31;

    v33 = sub_252BE2CE0(v30, v32, v38);

    *(v19 + 34) = v33;
    *(v19 + 42) = 2050;
    *(v19 + 44) = a7;
    _os_log_impl(&dword_252917000, v16, v17, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld", v19, 0x34u);
    swift_arrayDestroy();
    v26 = v34;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_252CC47EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545238, &qword_252E5A5B8);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, &v13, &qword_27F545240, &qword_252E5A5C0);
      v5 = v13;
      v6 = v14;
      result = sub_252A45854(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
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

void *sub_252CC4B00(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  LODWORD(v8) = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v9;
  v15 = (a1 + 72);
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 4 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v10;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 4);
    v10 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CC4C20(uint64_t a1, int a2)
{
  result = sub_252979914();
  if (result)
  {
    v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v5 + 16), v8);

    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_252E338C4();
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    v7 = 1000;
    if (v6)
    {
      v7 = 2000;
    }

    if (v7 < a1)
    {
      return sub_2529515FC(5, a2, 0xD00000000000001BLL, 0x8000000252E91BF0);
    }
  }

  return result;
}

void *sub_252CC4CE8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452E8, &qword_252E5A670);
  v3 = sub_252E37B54();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_252A44B34(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_252A44B34(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC4E24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void *sub_252CC4F48(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v10;
  v15 = a1 + 9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v9;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 2);
    v9 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC507C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545158, &qword_252E5A4D8);
    v3 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_252A44DF4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_252CC5188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545160, &unk_252E5A4E0);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, v11, &qword_27F543770, &unk_252E4DF18);
      v5 = v11[0];
      result = sub_252A44D48(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_252A00AF4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_252CC52B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545150, &qword_252E5A4D0);
    v3 = sub_252E37B54();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_252A4509C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_252CC53C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_252CC54B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545220, &qword_252E5A5A0);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_252A44A10(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_252CC55B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545228, &qword_252E5A5A8);
    v3 = sub_252E37B54();
    for (i = (a1 + 42); ; i += 16)
    {
      v5 = *(i - 10);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = v7 ? 256 : 0;
      result = sub_252A44F0C(*(i - 10), v9 | v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 9) = v7;
      *(v3[7] + result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_13;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252CC56C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545230, &qword_252E5A5B0);
    v3 = sub_252E37B54();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_252A44FAC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + result) = v8;
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

unint64_t sub_252CC5864(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  result = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v22 = v9;
    return v7;
  }

  v13 = a1 + 9;
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 8 * result) = v8;
    v14 = (v7[7] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v13 + 3;
    v8 = *(v13 - 2);
    v19 = *(v13 - 1);
    v10 = *v13;
    v20 = v9;
    result = a4(v8);
    v13 = v18;
    v9 = v19;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC5978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451A8, &qword_252E5A528);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, v13, &qword_27F5451B0, &qword_252E5A530);
      result = sub_252A45058(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_252CC5AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545018, &qword_252E5A398);
    v3 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_252A4509C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_252CC5BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452F0, &qword_252E5A678);
    v3 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_252A450C8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_252CC5CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
    v3 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_252A488EC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_252CC5E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545058, &qword_252E5A3D8);
    v3 = sub_252E37B54();
    for (i = a1 + 32; ; i += 40)
    {
      sub_252938414(i, &v11, &qword_27F545060, &qword_252E5A3E0);
      v5 = v11;
      result = sub_252A488EC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_252A00AF4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_252CC5F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545048, &qword_252E5A3C8);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_252A45390(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_252CC6090(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545040, &qword_252E5A3C0);
  v3 = sub_252E37B54();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_252A488EC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_252A488EC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC6204(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
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

unint64_t sub_252CC630C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, &v13, &unk_27F541F10, &unk_252E42870);
      v5 = v13;
      v6 = v14;
      result = sub_252A44A10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_252CC6490(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v9 = *i;

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
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

unint64_t sub_252CC66A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 16)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_252A488EC(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
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

unint64_t sub_252CC67B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_252E37B54();
  v6 = *(a1 + 32);
  v15 = *(a1 + 40);
  result = sub_252A488EC(v6);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v9 = (a1 + 64);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 16 * result) = v15;
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v13 = (v9 + 24);
    v6 = *(v9 - 1);
    v15 = *v9;

    result = sub_252A488EC(v6);
    v9 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC68E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545188, &qword_252E5A508);
  v3 = sub_252E37B54();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_252A488EC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_252A488EC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC6A08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
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

unint64_t sub_252CC6B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545298, &qword_252E5A618);
  v3 = sub_252E37B54();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_252938414(&v27, v26, &qword_27F5452A0, &qword_252E5A620);
  result = sub_252A44A10(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 48);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_252938414(&v27, v26, &qword_27F5452A0, &qword_252E5A620);
    result = sub_252A44A10(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC6D40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
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