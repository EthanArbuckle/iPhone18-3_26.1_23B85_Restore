uint64_t sub_21692FE94()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_216930134;
  }

  else
  {
    v8 = sub_21692FFD4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21692FFD4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[4];

  v2 = *(*(v1 + 32) + 16);
  sub_217006964();
  sub_217006A94();
  v3 = OUTLINED_FUNCTION_47();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_216913EB0(v0[6]);
    type metadata accessor for PageUpdateMappingCoordinator.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[2], v0[6], v2);
  }

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216930134()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2169301A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_21700EA34();
  v3[8] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_216930240, v5, v4);
}

uint64_t sub_216930240()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_216930334;

    return sub_2169307A8();
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_216930334()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_2169304A8;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_216930438;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216930438()
{
  OUTLINED_FUNCTION_33();

  **(v0 + 40) = *(v0 + 88) == 0;
  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2169304A8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216930510()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v0;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2169305A0, v3, v2);
}

uint64_t sub_2169305A0()
{
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8);
  sub_216930BA8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_99_0(v1);

  return MEMORY[0x282180360](v2);
}

uint64_t sub_216930660()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);

  return MEMORY[0x2822009F8](sub_216930FBC, v7, v8);
}

uint64_t sub_21693076C()
{
  sub_21700F8F4();
  sub_216775848();
  return sub_21700F944();
}

uint64_t sub_2169307A8()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v4 = sub_21700E9B4();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_216930860, v4, v3);
}

uint64_t sub_216930860()
{
  OUTLINED_FUNCTION_33();
  v0[8] = (*(*(*(v0[4] + 88) + 16) + 56))(*(v0[4] + 80));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_99_0(v1);

  return sub_216E58D24();
}

uint64_t sub_21693091C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_216930A7C;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_216930A20;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216930A20()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216930A7C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216930AE4()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_216930B1C()
{
  sub_216930AE4();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_216930B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

unint64_t sub_216930BA8()
{
  result = qword_280E2A108;
  if (!qword_280E2A108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CABCEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A108);
  }

  return result;
}

uint64_t sub_216930C0C(uint64_t a1)
{
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 40) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_5(v5);
  *v6 = v7;
  v6[1] = sub_2166AB4A4;

  return sub_2169301A4(a1, v4, v1 + v3);
}

uint64_t sub_216930D10()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_5(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_99_0(v6);

  return sub_21692F82C(v1, v2, v3, v4);
}

uint64_t sub_216930DCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_5(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_99_0(v5);

  return sub_21692F3EC(v1, v2, v3);
}

uint64_t sub_216930E80()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_5(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_99_0(v2);

  return sub_21692EF94(v0);
}

_BYTE *sub_216930F04(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_21693100C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216932DA0(a1, a3, type metadata accessor for CuratorDetailHeaderComponentModel);
  result = type metadata accessor for CuratorDetailHeaderLockupView();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_216931074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_216931470(v2, a2);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a1 + 16);
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF40);
  v10 = (a2 + *(result + 36));
  *v10 = sub_2169314EC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

void sub_2169311C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  if (*(a1 + *(type metadata accessor for CuratorDetailHeaderLockupView() + 36)))
  {
    sub_216A3FFDC();
    v11 = type metadata accessor for ToolbarConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1 || (sub_216681B04(v10, v7, &qword_27CAB7930), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_216932F6C(v7, type metadata accessor for ToolbarConfiguration), EnumCaseMultiPayload == 3))
    {
      sub_2166997CC(v10, &qword_27CAB7930);
      sub_2169313CC(v4);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
      sub_216A3FFF0();
      return;
    }
  }

  else
  {
    v13 = type metadata accessor for ToolbarConfiguration(0);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v13);
  }

  sub_2166997CC(v10, &qword_27CAB7930);
}

double sub_2169313CC@<D0>(uint64_t a1@<X8>)
{
  sub_216931470(v1, a1);
  v3 = (a1 + *(type metadata accessor for CuratorPageToolbarContentProvider(0) + 20));
  v4 = *(type metadata accessor for ToolbarProperties(0) + 24);
  v5 = *MEMORY[0x277CDDDC0];
  v6 = sub_217009124();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = 0.0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  return result;
}

uint64_t sub_216931470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratorDetailHeaderComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2169314EC()
{
  v1 = *(type metadata accessor for CuratorDetailHeaderLockupView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_2169311C8(v2);
}

uint64_t sub_216931570@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF68);
  return sub_2169315C0(v1, a1 + *(v3 + 44));
}

uint64_t sub_2169315C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_217009314();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2170099D4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF70);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF78);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = v36 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF80);
  MEMORY[0x28223BE20](v47);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v36 - v16;
  v18 = type metadata accessor for Artwork();
  MEMORY[0x28223BE20](v18);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CuratorDetailHeaderComponentModel();
  sub_216681B04(a1 + *(v21 + 32), v17, &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2166997CC(v17, &qword_27CAB6D60);
    return __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
  }

  else
  {
    v23 = sub_216932DA0(v17, v20, type metadata accessor for Artwork);
    v36[3] = v36;
    MEMORY[0x28223BE20](v23);
    MEMORY[0x28223BE20](v24);
    v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF88);
    v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF90);
    v25 = type metadata accessor for ArtworkContentView(255);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCF98);
    v27 = sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView);
    v28 = sub_216932E78();
    v49 = v25;
    v50 = MEMORY[0x277CE1350];
    v51 = v26;
    v52 = v27;
    v53 = MEMORY[0x277CE1340];
    v54 = v28;
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CABCFB8, &qword_27CABCF90);
    sub_217006574();
    sub_2170099A4();
    v29 = sub_2166D9530(&qword_27CABCFC0, &qword_27CABCF70);
    v30 = v39;
    sub_21700A784();
    (*(v41 + 8))(v6, v43);
    (*(v37 + 8))(v8, v30);
    sub_216983738(17);
    v49 = v30;
    v50 = v29;
    swift_getOpaqueTypeConformance2();
    v31 = v42;
    sub_21700A6A4();

    (*(v40 + 8))(v10, v31);
    v32 = v44;
    sub_2170092E4();
    v33 = v38;
    v34 = v47;
    sub_2170089A4();
    (*(v45 + 8))(v32, v46);
    sub_216713A40(v12);
    v35 = v48;
    sub_216713A9C(v33, v48);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v34);
    return sub_216932F6C(v20, type metadata accessor for Artwork);
  }
}

uint64_t sub_216931D0C(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkContentView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700C4B4();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = *(type metadata accessor for Artwork() + 20);
  v7 = v2[5];
  v8 = sub_21700C444();
  (*(*(v8 - 8) + 16))(&v4[v7], a1 + v6, v8);
  v9 = &v4[v2[6]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &v4[v2[7]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF98);
  sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView);
  sub_216932E78();
  sub_21700AB44();
  return sub_216932F6C(v4, type metadata accessor for ArtworkContentView);
}

uint64_t sub_216931F24()
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFB0);
  type metadata accessor for ArtworkContentView(0);
  sub_2166D9530(&qword_27CABCFA8, &qword_27CABCFB0);
  sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView);
  return sub_21700B324();
}

uint64_t sub_216932050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFC8);
  return sub_2169320A8(a1, a2 + *(v4 + 44));
}

uint64_t sub_2169320A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFD0);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFD8);
  MEMORY[0x28223BE20](v50);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_21700C4B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for CuratorDetailHeaderComponentModel();
  sub_216681B04(a1 + *(v21 + 40), v10, &qword_27CAB6D60);
  v22 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6D60);
    v23 = 1;
    v24 = v54;
  }

  else
  {
    v25 = *(v12 + 16);
    v25(v17, v10, v11);
    sub_216932F6C(v10, type metadata accessor for Artwork);
    (*(v12 + 32))(v20, v17, v11);
    v25(v14, v20, v11);
    sub_217007484();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFE0) + 36)] = 256;
    sub_21700ACC4();
    v26 = sub_21700AD04();

    v27 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFE8) + 36)];
    *v27 = v26;
    *(v27 + 8) = xmmword_217029750;
    *(v27 + 3) = 0x4024000000000000;
    v28 = sub_217009CB4();
    sub_217007F24();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFF0) + 36)];
    *v37 = v28;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    v38 = sub_217009CA4();
    sub_217007F24();
    v39 = v51;
    v40 = &v7[*(v50 + 36)];
    *v40 = v38;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_216681B04(v7, v39, &qword_27CABCFD8);
    v45 = v52;
    sub_216681B04(v39, v52, &qword_27CABCFD8);
    v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFF8) + 48);
    *v46 = 0;
    *(v46 + 8) = 1;
    sub_2166997CC(v7, &qword_27CABCFD8);
    (*(v12 + 8))(v20, v11);
    sub_2166997CC(v39, &qword_27CABCFD8);
    v47 = v54;
    sub_216932FC0(v45, v54);
    v23 = 0;
    v24 = v47;
  }

  return __swift_storeEnumTagSinglePayload(v24, v23, 1, v53);
}

uint64_t sub_216932584@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_217007474();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_216681B04(v1, v8, &qword_27CABF770);
  v15 = v1 + *(type metadata accessor for ArtworkContentView(0) + 24);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    sub_21700ED94();
    v26 = v2;
    v17 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v16, 0);
    (*(v3 + 8))(v5, v26);
  }

  sub_2169328F4();
  sub_217007434();
  sub_2170073E4();
  v18 = v28;
  v19 = *(v27 + 8);
  v19(v11, v28);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v20 = v29;
  sub_2170073F4();

  v19(v14, v18);
  v21 = sub_217009CE4();
  v22 = sub_217008A34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD020);
  v24 = v20 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v21;
  return result;
}

double sub_2169328F4()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArtworkContentView(0);
  v6 = v0 + *(v5 + 28);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = *v6;
  }

  else
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v7, 0);
    (*(v2 + 8))(v4, v1);
    v8 = LOBYTE(v19);
  }

  v10 = v0 + *(v5 + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v8 >= 2)
  {
    if (v12)
    {
      v13 = *&v11;
    }

    else
    {

      sub_21700ED94();
      v16 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v11, 0);
      (*(v2 + 8))(v4, v1);
      v13 = v19;
    }

    v15 = 2.28571429;
  }

  else
  {
    if (v12)
    {
      v13 = *&v11;
    }

    else
    {

      sub_21700ED94();
      v14 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v11, 0);
      (*(v2 + 8))(v4, v1);
      v13 = v19;
    }

    v15 = 1.5;
  }

  return v13 / v15;
}

uint64_t sub_216932C0C()
{
  result = type metadata accessor for CuratorDetailHeaderComponentModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CatalogPagePresenter();
    result = sub_21700F164();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_216932CC8()
{
  result = qword_27CABCF58;
  if (!qword_27CABCF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCF40);
    sub_216932E30(&qword_27CABCF60, type metadata accessor for CuratorDetailHeaderContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCF58);
  }

  return result;
}

uint64_t sub_216932DA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216932E30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216932E78()
{
  result = qword_27CABCFA0;
  if (!qword_27CABCFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCF98);
    sub_2166D9530(&qword_27CABCFA8, &qword_27CABCFB0);
    sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCFA0);
  }

  return result;
}

uint64_t sub_216932F6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216932FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216933068()
{
  sub_2166880FC();
  if (v0 <= 0x3F)
  {
    sub_21700C444();
    if (v1 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480);
      if (v2 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_216933158()
{
  result = qword_27CABD028;
  if (!qword_27CABD028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD020);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD028);
  }

  return result;
}

uint64_t sub_216933210@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &__src[-v13 - 8];
  sub_2167ADC3C(v2, __src);
  sub_216934118(a1, v14);
  sub_217006214();
  v15 = sub_2170061F4();
  v17 = v16;
  (*(v7 + 8))(v11, v5);
  v18 = _s6ActionVMa();
  v19 = &a2[*(v18 + 24)];
  *v19 = v15;
  v19[1] = v17;
  memcpy(a2, __src, 0x48uLL);
  return sub_2168D36D4(v14, &a2[*(v18 + 20)]);
}

void sub_216933384(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  if (!*(a3 + 16))
  {
    v39 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
    v19 = (_s6ActionVMa() - 8);
    v38 = a5;
    v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_217013DA0;
    v21 = a3 + v20;
    v22 = sub_216983738(181);
    v35 = v23;
    v36 = v22;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0;
    sub_217006214();
    v37 = a4;
    v24 = sub_2170061F4();
    v25 = a2;
    v27 = v26;
    v28 = *(v13 + 8);
    v28(v18, v39);
    *v21 = v24;
    *(v21 + 8) = v27;
    a2 = v25;
    *(v21 + 16) = v36;
    *(v21 + 24) = v35;
    v29 = v19[7];
    v30 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v21 + v29, 1, 1, v30);
    sub_217006214();
    v31 = sub_2170061F4();
    v33 = v32;
    v28(v18, v39);
    v34 = (v21 + v19[8]);
    *v34 = v31;
    v34[1] = v33;
    a5 = v38;
    a4 = v37;
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

uint64_t sub_2169335B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v25 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v29 = v19;
  v30 = v18;
  v20 = *(v13 + 8);
  v20(v17, v11);
  v26 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v27 = v22;
  v28 = v21;
  v20(v17, v11);
  sub_21700CE04();
  (*(v6 + 16))(v10, a2, v31);
  _s6ActionVMa();
  sub_21693428C(&qword_27CABD040, _s6ActionVMa);
  v23 = sub_21700E944();
  (*(v25 + 8))(a2, v31);
  result = (v20)(v26, v11);
  *a3 = v30;
  a3[1] = v29;
  a3[2] = v23;
  a3[3] = v28;
  a3[4] = v27;
  return result;
}

double sub_216933838@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2169335B0(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_216933880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a2;
  v48 = a3;
  v49 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v45 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  v42 = v40 - v8;
  v9 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v52 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v40[1] = v19;
  MEMORY[0x28223BE20](v20);
  v22 = v40 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v40 - v24;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v29 = *(v17 + 8);
  v46 = v17 + 8;
  v47 = v15;
  v43 = v29;
  v29(v25, v15);
  if (!v28)
  {
    sub_217006214();
    v26 = sub_2170061F4();
    v28 = v30;
    (*(v52 + 8))(v14, v9);
  }

  v40[0] = _s6ActionVMa();
  v31 = v48;
  v32 = &v48[*(v40[0] + 24)];
  *v32 = v26;
  v32[1] = v28;
  sub_21700CE04();
  v33 = v45;
  v52 = a1;
  v34 = *(v45 + 16);
  v35 = v42;
  v36 = v49;
  v37 = v50;
  v34(v42, v50, v49);
  v38 = v44;
  sub_216E13688(v22, v35, __src);
  if (v38)
  {
    (*(v33 + 8))(v37, v36);
    v43(v52, v47);
  }

  else
  {
    memcpy(v31, __src, 0x48uLL);
    v44 = sub_217007F04();
    sub_21700CE04();
    v34(v41, v37, v36);
    sub_21693428C(qword_27CABD048, MEMORY[0x277CDD650]);
    sub_21700D734();
    (*(v33 + 8))(v37, v36);
    return (v43)(v52, v47);
  }
}

uint64_t sub_216933C80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_21700DF14();
}

uint64_t sub_216933CAC()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216933D00(char a1)
{
  if (a1)
  {
    return 0x7463757274736564;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_216933D60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216933CAC();
  *a1 = result;
  return result;
}

uint64_t sub_216933D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216933D00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ButtonRole.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  sub_216933E94();
  sub_21700CCD4();
  if (!v2)
  {
    if (v8)
    {
      sub_217007ED4();
    }

    else
    {
      sub_217007EF4();
    }
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  return (*(v6 + 8))(a1);
}

unint64_t sub_216933E94()
{
  result = qword_27CABD030;
  if (!qword_27CABD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD030);
  }

  return result;
}

_BYTE *_s12JSButtonRoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216933FDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21693401C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216934078()
{
  result = qword_27CABD038;
  if (!qword_27CABD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD038);
  }

  return result;
}

uint64_t _s6ActionVMa()
{
  result = qword_280E2A6A0;
  if (!qword_280E2A6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216934118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2169341B0()
{
  sub_216934234();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216934234()
{
  if (!qword_280E2B500[0])
  {
    sub_217007F04();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, qword_280E2B500);
    }
  }
}

uint64_t sub_21693428C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2169342D4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_216934234();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21693436C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_217007F04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  v17 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v8;
  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_30:
      if ((v12 & 0x80000000) != 0)
      {
        v26 = (a1 + v14 + 16) & ~v14;
        if (v7 == v13)
        {

          return __swift_getEnumTagSinglePayload(v26, v7, v5);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + v15 + v16) & ~v16, v10, v18);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v25 = *(a1 + 1);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_30;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    switch(v19)
    {
      case 2:
        LODWORD(v19) = *a1;
        break;
      case 3:
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v19) = *a1;
        break;
      default:
        LODWORD(v19) = *a1;
        break;
    }
  }

  return v13 + (v19 | v24) + 1;
}

void sub_2169345F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_217007F04();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = (v18 + v19 + ((v17 + 16) & ~v17)) & ~v19;
  v21 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v21;
  }

  v22 = v20 + v21;
  v23 = 8 * (v20 + v21);
  if (a3 > v16)
  {
    if (v22 <= 3)
    {
      v24 = ((a3 - v16 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v24))
      {
        v11 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v11 = v25;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if ((v15 & 0x80000000) != 0)
          {
            v29 = &a1[v17 + 16] & ~v17;
            if (v9 == v16)
            {
              v30 = a2;
              v13 = v9;
              v10 = v7;
            }

            else
            {
              v29 = (v29 + v18 + v19) & ~v19;
              v30 = (a2 + 1);
            }

            __swift_storeEnumTagSinglePayload(v29, v30, v13, v10);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v26 = ~v16 + a2;
    if (v22 < 4)
    {
      v27 = (v26 >> v23) + 1;
      if (v22)
      {
        v28 = v26 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else if (v22 == 2)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v26;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v26;
      v27 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v22] = v27;
        break;
      case 2:
        *&a1[v22] = v27;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v22] = v27;
        break;
      default:
        return;
    }
  }
}

void MusicStackAuthority.push<A>(_:)()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = *(v4 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  v17 = sub_21700D404();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  sub_2167AF90C(v1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, v67);
  if (v67[3])
  {
    v61 = v10;
    v62 = v3;
    swift_getDynamicType();
    sub_21700D414();
    v24 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
    swift_beginAccess();
    v25 = sub_216934EDC(v23, *(v1 + v24));
    if (v25)
    {
      v26 = v25;
      swift_endAccess();
      (*(v19 + 8))(v23, v17);
      *(&v65 + 1) = v5;
      v66 = v62;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v28 = ObjectType;
      v29 = *(ObjectType + 16);
      v29(boxed_opaque_existential_1, v7, v5);
      v30 = (*(*v26 + 80))(&v64);
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
      if (v30)
      {
        v29(v16, v7, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0D0);
        v31 = v30;
        if (swift_dynamicCast())
        {
          __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
          v32 = OUTLINED_FUNCTION_53_0();
          v34 = v33(v32);
          v36 = v35;
          __swift_destroy_boxed_opaque_existential_1Tm(&v64);
        }

        else
        {
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          sub_216697664(&v64, &qword_27CABD0D8);
          v34 = 0;
          v36 = 0xF000000000000000;
        }

        v49 = v1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
        OUTLINED_FUNCTION_76_7();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v50 = *(v49 + 8);
          ObjectType = swift_getObjectType();
          *&v64 = (*(v62 + 16))(v5);
          *(&v64 + 1) = v51;
          *&v65 = v34;
          *(&v65 + 1) = v36;
          v52 = *(v50 + 8);
          v53 = OUTLINED_FUNCTION_53_0();
          sub_21677A3F0(v53, v54);
          v52(v31, &v64, ObjectType, v50);

          swift_unknownObjectRelease();

          v55 = OUTLINED_FUNCTION_53_0();
          sub_21677A510(v55, v56);

          v57 = OUTLINED_FUNCTION_8();
          sub_21677A510(v57, v58);
        }

        else
        {

          v59 = OUTLINED_FUNCTION_53_0();
          sub_21677A510(v59, v60);
        }

        goto LABEL_16;
      }
    }

    else
    {
      swift_endAccess();
      (*(v19 + 8))(v23, v17);
      v28 = ObjectType;
      v29 = *(ObjectType + 16);
    }

    v38 = OUTLINED_FUNCTION_53_0();
    (v29)(v38);
    v39 = sub_217007C84();
    v40 = sub_21700ED84();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v61;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v64 = v44;
      *v43 = 136446210;
      v29(v42, v14, v5);
      sub_21700E594();
      (*(v28 + 8))(v14, v5);
      v45 = OUTLINED_FUNCTION_54_3();
      v48 = sub_2166A85FC(v45, v46, v47);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_216679000, v39, v40, "Failed to push element %{public}s, could not create viewController", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      (*(v28 + 8))(v14, v5);
    }

LABEL_16:
    sub_2167AFA24(v67);
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = sub_217007DD4();
  sub_217008644();
  v37(&v64, 0);

LABEL_17:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216934EDC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_2166B75C8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v2);
}

double sub_216934F28()
{
  OUTLINED_FUNCTION_56_11();
  if (!v2)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v3 = sub_2166AF66C(v0, v1);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v5 = OUTLINED_FUNCTION_39_13(v3);

  sub_2166A6DF8(v5, v6);
  return result;
}

double sub_216934FBC()
{
  OUTLINED_FUNCTION_80_7();
  if (!v1)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v2 = sub_216E68120(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v4 = OUTLINED_FUNCTION_39_13(v2);

  sub_2166A6DF8(v4, v5);
  return result;
}

double sub_216935010()
{
  OUTLINED_FUNCTION_56_11();
  if (v4 && (v5 = v3, v6 = sub_2166AF66C(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;

    sub_216788294(v8, v0);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

uint64_t sub_216935074()
{
  OUTLINED_FUNCTION_80_7();
  if (v0 && (sub_216E68214(), (v1 & 1) != 0))
  {
    v2 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
    OUTLINED_FUNCTION_34();
    sub_21693B574();
    v3 = OUTLINED_FUNCTION_44_3();
    v6 = v2;
  }

  else
  {
    type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
    v3 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_216935118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_216E69548(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v3);
}

uint64_t sub_216935164()
{
  OUTLINED_FUNCTION_56_11();
  if (v4 && (v5 = v3, v6 = sub_216E69548(v1, v2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_217006FE4();
    OUTLINED_FUNCTION_34();
    (*(v11 + 16))(v0, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_44_3();
    v15 = v10;
  }

  else
  {
    sub_217006FE4();
    v12 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_216935208()
{
  OUTLINED_FUNCTION_80_7();
  if (v2 && (v3 = v1, v4 = sub_216E67EE8(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_217006EC4();
    OUTLINED_FUNCTION_34();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_44_3();
    v13 = v8;
  }

  else
  {
    sub_217006EC4();
    v10 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_2169352B0()
{
  OUTLINED_FUNCTION_80_7();
  if (!v1)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v2 = sub_216E68398(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v4 = OUTLINED_FUNCTION_39_13(v2);

  sub_2166A6DF8(v4, v5);
  return result;
}

uint64_t sub_216935344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_56_11();
  if (v6 && (v5(), (v7 & 1) != 0))
  {
    v8 = a4(0);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_71_0();
    sub_21693B574();
    v9 = OUTLINED_FUNCTION_44_3();
    v12 = v8;
  }

  else
  {
    a4(0);
    v9 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_2169353F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_216E68488();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v2);
  return sub_21700DF14();
}

uint64_t sub_21693543C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_216E68424(a1 & 1), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_40_12(v2);
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

void sub_216935484()
{
  OUTLINED_FUNCTION_56_11();
  if (v3 && (v4 = sub_2166AF66C(v1, v2), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_39_13(v4);

    sub_216697C8C(v6, v7);
  }

  else
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
  }
}

uint64_t sub_216935520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v3 = sub_216E69548(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_57_11(v3);
}

void *sub_21693556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2166AF66C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_2169355B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_2166AF66C(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(*(a3 + 56) + 24 * v4 + 16);
    sub_21700DF14();
    v7 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216935620(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_216E68550(a1), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_40_12(v2);
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2169356A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 6;
  }

  v4 = sub_2166AF66C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 6;
  }
}

void sub_2169356F0()
{
  OUTLINED_FUNCTION_56_11();
  if (v4 && (v5 = v3, v6 = sub_216E69548(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + (v6 << 6);

    sub_21693B4B0(v8, v0);
  }

  else
  {
    OUTLINED_FUNCTION_69_10();
    v0[4] = 0;
    v0[5] = 254;
    v0[6] = 0;
    v0[7] = 0;
  }
}

uint64_t sub_216935758(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_216E685D0(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v2);
}

uint64_t sub_2169357A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_2166AF66C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v3);
  return sub_21700DF14();
}

Swift::Void __swiftcall MusicStackAuthority.popToRoot()()
{
  OUTLINED_FUNCTION_75_6();
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, v13);
  if (v13[3])
  {
    v2 = v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
    OUTLINED_FUNCTION_76_7();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 24))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = sub_217007C84();
      v9 = sub_21700ED84();
      if (os_log_type_enabled(v8, v9))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_50_0(&dword_216679000, v10, v11, "Failed to pop to root, could not resolve navigationControllerDelegate");
        OUTLINED_FUNCTION_6();
      }
    }

    sub_2167AFA24(v13);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    sub_217008634();
    v5 = OUTLINED_FUNCTION_7_4();
    v6(v5);
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_71_0();
    v7 = sub_217007DD4();
    sub_2170085E4();
    v7(&v12, 0);
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t MusicStackAuthority.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();
}

void MusicStackAuthority.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_66();
  v28 = sub_217008674();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path;
  sub_217008664();
  v36 = OUTLINED_FUNCTION_108();
  v37(v36);
  sub_217007DA4();
  (*(v30 + 8))(v34, v28);
  (*(v26 + 32))(v20 + v35, v21, v24);
  *(v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v38 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  sub_21700D404();
  type metadata accessor for AbstractBindingBox();
  OUTLINED_FUNCTION_33_19();
  sub_2166B0DF0(v39, v40);
  OUTLINED_FUNCTION_71_0();
  *(v20 + v38) = sub_21700E384();
  OUTLINED_FUNCTION_53_11();
  v41 = v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0;
  OUTLINED_FUNCTION_26();
}

void (*MusicStackAuthority.path.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_227();
  v2[6] = sub_217007DD4();
  return sub_216935DEC;
}

void sub_216935DEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall MusicStackAuthority.pop()()
{
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, v14);
  if (v15)
  {
    v2 = v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
    OUTLINED_FUNCTION_76_7();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = sub_217007C84();
      v10 = sub_21700ED84();
      if (os_log_type_enabled(v9, v10))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_50_0(&dword_216679000, v11, v12, "Failed to pop element, could not resolve navigationControllerDelegate");
        OUTLINED_FUNCTION_6();
      }
    }

    sub_2167AFA24(v14);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    v5 = sub_217008654();
    v6 = OUTLINED_FUNCTION_7_4();
    v7(v6);
    if ((v5 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_71_0();
      v8 = sub_217007DD4();
      sub_2170085E4();
      v8(v13, 0);
    }
  }
}

uint64_t MusicStackAuthority.count.getter()
{
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, &v9);
  if (v10)
  {
    sub_2166A0F18(&v9, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v2 = OUTLINED_FUNCTION_29_20();
    v4 = *(v3(v2) + 16);

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_15();

    v4 = sub_217008634();
    v5 = OUTLINED_FUNCTION_62_6();
    v6(v5);
  }

  return v4;
}

void MusicStackAuthority.featureNames.getter()
{
  OUTLINED_FUNCTION_75_6();
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v22 = MEMORY[0x277D84F90];
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, &v20);
  if (v21)
  {
    sub_2166A0F18(&v20, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v2 = OUTLINED_FUNCTION_29_20();
    v4 = v3(v2);
    v5 = 0;
    v6 = *(v4 + 16);
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v8 = v4 + 32 * v5;
    while (1)
    {
      if (v6 == v5)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        goto LABEL_14;
      }

      if (v5 >= *(v4 + 16))
      {
        break;
      }

      ++v5;
      v9 = (v8 + 32);
      v10 = *(v8 + 40);
      v8 += 32;
      if (v10)
      {
        v11 = *v9;
        sub_21700DF14();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v7 = v14;
        }

        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          sub_21693776C();
          v7 = v15;
        }

        *(v7 + 16) = v12 + 1;
        v13 = v7 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_15();

    MEMORY[0x28223BE20](v16);
    sub_217008624();
    v17 = OUTLINED_FUNCTION_62_6();
    v18(v17);
LABEL_14:
    OUTLINED_FUNCTION_65_2();
  }
}

uint64_t sub_216936424(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC78);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = sub_217008604();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = *(v4 + 44);
  sub_2166B0DF0(&qword_27CABCC60, MEMORY[0x277CDD948]);
  sub_21700EC54();
  v9 = &unk_217029F78;
  while (1)
  {
    sub_21700EC94();
    if (*&v6[v8] == v32[0])
    {
      break;
    }

    v10 = sub_21700ECE4();
    sub_2167B7D58(v11, v35);
    v10(v32, 0);
    sub_21700ECA4();
    sub_2166A0F18(v35, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD258);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD220);
    if (swift_dynamicCast())
    {
      v12 = v9;
      sub_2166A0F18(v29, v32);
      v13 = v33;
      v14 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v15 = (*(v14 + 16))(v13, v14);
      if (v16)
      {
        v17 = v15;
        v18 = v16;
        v19 = v28;
        v20 = *v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v19 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21693776C();
          v20 = v24;
          *v28 = v24;
        }

        v22 = *(v20 + 16);
        if (v22 >= *(v20 + 24) >> 1)
        {
          sub_21693776C();
          v20 = v25;
          *v28 = v25;
        }

        *(v20 + 16) = v22 + 1;
        v23 = v20 + 16 * v22;
        *(v23 + 32) = v17;
        *(v23 + 40) = v18;
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }

      v9 = v12;
    }

    else
    {
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      sub_216697664(v29, &qword_27CABD260);
    }
  }

  return sub_216697664(v6, &qword_27CABCC78);
}

void sub_21693678C()
{
  OUTLINED_FUNCTION_102();
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v1 = OUTLINED_FUNCTION_227();
  v2(v1);
  MusicStackAuthority.path.setter();
}

void MusicStackAuthority.path.setter()
{
  OUTLINED_FUNCTION_75_6();
  v1 = v0;
  v2 = sub_217008674();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_0();
  v6();

  sub_217007DF4();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_65_2();
}

uint64_t MusicStackAuthority.$path.getter()
{
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0);
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_2169369A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return MusicStackAuthority.$path.setter(v5);
}

uint64_t MusicStackAuthority.$path.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_71_0();
  v6();
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0);
  sub_217007DC4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*MusicStackAuthority.$path.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E8);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0);
  sub_217007DB4();
  swift_endAccess();
  return sub_216936CB0;
}

void sub_216936CB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    MusicStackAuthority.$path.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MusicStackAuthority.$path.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_216936D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_216936DC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void (*MusicStackAuthority.navigationControllerDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_120_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_216936EF4;
}

void sub_216936EF4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_216936F7C()
{
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v26 = xmmword_217029BA0;
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, &v24);
  if (v25)
  {
    sub_2166A0F18(&v24, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v2 = OUTLINED_FUNCTION_29_20();
    v4 = v3(v2);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32 * v5;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      sub_21700DF14();
      v9 = OUTLINED_FUNCTION_8();
      sub_21677A3F0(v9, v10);

      v11 = OUTLINED_FUNCTION_8();
      sub_21677A3F0(v11, v12);

      v13 = OUTLINED_FUNCTION_8();
      sub_21677A510(v13, v14);
    }

    else
    {

      v7 = 0;
      v8 = 0xF000000000000000;
    }

    sub_21677A510(0, 0xF000000000000000);
    *&v26 = v7;
    *(&v26 + 1) = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_15();

    MEMORY[0x28223BE20](v15);
    sub_217008624();
    v16 = OUTLINED_FUNCTION_62_6();
    v17(v16);
  }

  v18 = OUTLINED_FUNCTION_8();
  sub_21677A3F0(v18, v19);
  v20 = OUTLINED_FUNCTION_8();
  sub_21677A510(v20, v21);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216937180(uint64_t a1, uint64_t *a2)
{
  result = sub_216E9A414();
  if ((result & 1) == 0)
  {
    v4 = MEMORY[0x21CE99410]();
    v5 = __OFSUB__(v4, 1);
    result = v4 - 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      sub_217008614();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD258);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0D0);
      if (swift_dynamicCast())
      {
        sub_2166A0F18(v12, v14);
        v6 = v15;
        v7 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v8 = (*(v7 + 8))(v6, v7);
        v9 = *a2;
        v10 = a2[1];
        *a2 = v8;
        a2[1] = v11;
        sub_21677A510(v9, v10);
        return __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      else
      {
        v13 = 0;
        memset(v12, 0, sizeof(v12));
        return sub_216697664(v12, &qword_27CABD0D8);
      }
    }
  }

  return result;
}

uint64_t MusicStackAuthority.deinit()
{
  v1 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  sub_216781DA8(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate);
  sub_2167AFA24(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType);

  v3 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_logger;
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t MusicStackAuthority.__deallocating_deinit()
{
  MusicStackAuthority.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21693740C(uint64_t a1)
{
  v2 = *(*v1 + 12);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10[-v4 - 8];
  sub_2167B7D58(v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD220);
  swift_dynamicCast();
  v7 = (v1)[2](v5);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_216937540()
{
  v0 = sub_216937520();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_216937614(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_7_37();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_26_23();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_21693981C(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21693776C()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
    v7 = OUTLINED_FUNCTION_61_8();
    _swift_stdlib_malloc_size_0(v7);
    OUTLINED_FUNCTION_17_30();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216937838()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD188);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size_0(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_2169379AC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
    v7 = OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_13_23(v7);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 72 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216937ABC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    v7 = OUTLINED_FUNCTION_61_8();
    _swift_stdlib_malloc_size_0(v7);
    OUTLINED_FUNCTION_17_30();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[2 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_108();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
    OUTLINED_FUNCTION_108();
    swift_arrayInitWithCopy();
  }
}

void sub_216938194()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2A0);
    v7 = OUTLINED_FUNCTION_64_10();
    _swift_stdlib_malloc_size_0(v7);
    OUTLINED_FUNCTION_17_30();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_216938280()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1B8);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_50_10(v7);
    v7[2] = v3;
    v7[3] = 2 * (v8 / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21693836C()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2F0);
    v7 = OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_13_23(v7);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 112 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2169384A4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7_37();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_26_23();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 16);
  v13 = a5(v12, v9);
  v14 = OUTLINED_FUNCTION_227();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v14) - 8);
  if (a1)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2169398E4(a4 + v16, v12, v13 + v16, a6);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938598()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD290);
    v7 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v7);
    OUTLINED_FUNCTION_49_14();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2169386CC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD148);
    v7 = OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_13_23(v7);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 88 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938800()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2A8);
    v7 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v7);
    OUTLINED_FUNCTION_49_14();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_2169388CC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD308);
    v7 = OUTLINED_FUNCTION_61_8();
    _swift_stdlib_malloc_size_0(v7);
    OUTLINED_FUNCTION_17_30();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[2 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_108();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC98);
    OUTLINED_FUNCTION_108();
    swift_arrayInitWithCopy();
  }
}

void sub_216938ADC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD110);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_50_10(v7);
    v7[2] = v3;
    v7[3] = 2 * (v8 / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v3] <= v9)
    {
      memmove(v9, v10, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938BEC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD280);
    v7 = OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_13_23(v7);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 40 * v2 <= (v3 + 32))
    {
      v9 = OUTLINED_FUNCTION_108();
      memmove(v9, v10, v11);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD288);
    OUTLINED_FUNCTION_108();
    swift_arrayInitWithCopy();
  }
}

void sub_216938D1C()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0F0);
    v7 = OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_13_23(v7);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938E10()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_79_11();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_23();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v5 = v2;
  }

  v8 = v0[2];
  if (v5 <= v8)
  {
    v9 = v0[2];
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_50_10(v10);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v10 != v0 || &v0[5 * v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_54_3();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_227();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_54_3();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_216938F34()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_79_11();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_23();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v5 = v2;
  }

  v8 = v0[2];
  if (v5 <= v8)
  {
    v9 = v0[2];
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    v10 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v10);
    OUTLINED_FUNCTION_49_14();
    v10[2] = v8;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v10 != v0 || &v0[v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_54_3();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_227();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_54_3();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_216939108()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2D8);
    v7 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v7);
    OUTLINED_FUNCTION_49_14();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_2169391D4()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2D0);
    v7 = OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_13_23(v7);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2169392F8()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size_0(v8);
    v8[2] = v2;
    v8[3] = 2 * v9 - 64;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v8 != v0 || &v11[v2] <= v10)
    {
      memmove(v10, v11, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, v2);
  }
}

void sub_2169393C0()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD230);
    v7 = OUTLINED_FUNCTION_61_8();
    _swift_stdlib_malloc_size_0(v7);
    OUTLINED_FUNCTION_17_30();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_21693955C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_2169395C8(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_34_17(result, a3, a2);
  }

  return result;
}

char *sub_2169395FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_2169396E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_2169397C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

void sub_21693981C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_85_8();
  if (v8 && (a4(0), OUTLINED_FUNCTION_34(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_22_28();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_22_28();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_2169398E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_85_8();
  if (v8 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4), OUTLINED_FUNCTION_34(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_22_28();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    OUTLINED_FUNCTION_22_28();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_2169399B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_2170071B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_216E67EE8();
  OUTLINED_FUNCTION_1_63();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A0);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_216E67EE8();
    OUTLINED_FUNCTION_43_17();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_217006EC4();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_26();

    v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_23_22();
    v25(v24);
    v26 = OUTLINED_FUNCTION_25_21();
    sub_21693AED8(v26, v27, v28, v29);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t get_enum_tag_for_layout_string_7MusicUI0A14StackAuthorityC14NavigationTypeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_216939BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_216939C34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_216939C90(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_216939D04()
{
  OUTLINED_FUNCTION_75_6();
  v3 = OUTLINED_FUNCTION_4_38(v1, v2);
  sub_2166AF66C(v3, v4);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v6 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v6, v7);
    OUTLINED_FUNCTION_20_22();
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_67_7();
    v10 = _s7SectionVMa(v9);
    OUTLINED_FUNCTION_36(v10);
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

void sub_216939E2C()
{
  OUTLINED_FUNCTION_75_6();
  v3 = OUTLINED_FUNCTION_4_38(v1, v2);
  sub_2166AF66C(v3, v4);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v6 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v6, v7);
    OUTLINED_FUNCTION_20_22();
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_67_7();
    v9 = type metadata accessor for SectionContent();
    OUTLINED_FUNCTION_36(v9);
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

void sub_216939F54(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_60_8(a1, a2);
  sub_216E68120(v5);
  OUTLINED_FUNCTION_1_63();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1C0);
  if (OUTLINED_FUNCTION_87_8())
  {
    v11 = OUTLINED_FUNCTION_58_11();
    sub_216E68120(v11);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = v12;
  }

  v14 = *v4;
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(v14 + 56) + 32 * v9);
    v15 = OUTLINED_FUNCTION_8();

    sub_2166EF9C4(v15, v16);
  }

  else
  {
    sub_216788294(v3, v17);
    sub_21693AFF8(v9, v17, v2, v14);
  }
}

uint64_t sub_21693A068()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_2_51(v4, v5);
  sub_2166AF66C(v6, v7);
  OUTLINED_FUNCTION_1_63();
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_10_33();
  v9 = sub_21700F554();
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v13, v14);
    OUTLINED_FUNCTION_14_27();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v9, v10, v11, v12, *v0);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_27();
    sub_21693B5D0(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_26();

    return sub_21700DF14();
  }
}

uint64_t sub_21693A140(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_60_8(a1, a2);
  sub_216E68214();
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_10:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8);
  if (OUTLINED_FUNCTION_87_8())
  {
    OUTLINED_FUNCTION_58_11();
    sub_216E68214();
    OUTLINED_FUNCTION_14_27();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    v8 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
    OUTLINED_FUNCTION_36(v8);
    OUTLINED_FUNCTION_32_17();
    return sub_2166CE0B8();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_45_0();
    sub_21693B048(v10, v11, v2, v12);
    return sub_2168387D4(v3, v13);
  }
}

uint64_t sub_21693A228()
{
  OUTLINED_FUNCTION_75_6();
  v4 = OUTLINED_FUNCTION_2_51(v2, v3);
  sub_216E69548(v4, v5);
  OUTLINED_FUNCTION_1_63();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD100);
  OUTLINED_FUNCTION_10_33();
  v7 = sub_21700F554();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_18_24();
    sub_216E69548(v11, v12);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_27();
    sub_21693B0C4(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693A300(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_216E68334();
  OUTLINED_FUNCTION_1_63();
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_21700F824();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED0);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    sub_216E68334();
    OUTLINED_FUNCTION_20_22();
    if (!v14)
    {
      goto LABEL_14;
    }

    v11 = v13;
  }

  v15 = *v4;
  if (v12)
  {
    v16 = v15[7] + 24 * v11;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = a3 & 1;

    sub_21693B50C(v17, v18, v19);
  }

  else
  {
    sub_21693B10C(v11, a4, a1, a2, a3 & 1, v15);

    v20 = a4;
  }
}

void sub_21693A464()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_4_38(v0, v1);
  sub_216E69548(v2, v3);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD200);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v7 = OUTLINED_FUNCTION_45_0();
    sub_216E69548(v7, v8);
    OUTLINED_FUNCTION_20_22();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v6)
  {
    v10 = OUTLINED_FUNCTION_67_7();
    v11 = type metadata accessor for PopoverBubbleTipDismissContext(v10);
    OUTLINED_FUNCTION_36(v11);
    OUTLINED_FUNCTION_31_24();
    sub_2166CE0B8();
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_21693B160(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

void sub_21693A574()
{
  OUTLINED_FUNCTION_75_6();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_2166AF66C(v5, v3);
  OUTLINED_FUNCTION_1_63();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD118);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v10 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v10, v11);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_12;
    }

    v2 = v12;
  }

  v14 = *v0;
  if (v1)
  {
    *(*(v14 + 56) + v2) = v8;
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    sub_21693B1D0(v2, v6, v4, v8, v14);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

uint64_t sub_21693A668()
{
  OUTLINED_FUNCTION_75_6();
  v3 = OUTLINED_FUNCTION_2_51(v1, v2);
  sub_2166AF66C(v3, v4);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD210);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v6 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v6, v7);
    OUTLINED_FUNCTION_14_27();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_65_2();

    return sub_216697EC4(v9, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_27();
    sub_21693B204(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693A748()
{
  OUTLINED_FUNCTION_75_6();
  v3 = OUTLINED_FUNCTION_4_38(v1, v2);
  sub_2166AF66C(v3, v4);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD208);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v6 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v6, v7);
    OUTLINED_FUNCTION_20_22();
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_67_7();
    v9 = type metadata accessor for SocialContactsCoordinator.Contact();
    OUTLINED_FUNCTION_36(v9);
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

uint64_t sub_21693A870()
{
  OUTLINED_FUNCTION_75_6();
  v4 = OUTLINED_FUNCTION_2_51(v2, v3);
  sub_216E69548(v4, v5);
  OUTLINED_FUNCTION_1_63();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD228);
  OUTLINED_FUNCTION_10_33();
  v7 = sub_21700F554();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_18_24();
    sub_216E69548(v11, v12);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_27();
    sub_21693B0C4(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693A948()
{
  OUTLINED_FUNCTION_75_6();
  v4 = OUTLINED_FUNCTION_2_51(v2, v3);
  sub_2166AF66C(v4, v5);
  OUTLINED_FUNCTION_1_63();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1E8);
  OUTLINED_FUNCTION_10_33();
  v7 = sub_21700F554();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v11, v12);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_27();
    sub_21693B0C4(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

unint64_t sub_21693AA20()
{
  OUTLINED_FUNCTION_75_6();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_216E68550(v3);
  OUTLINED_FUNCTION_1_63();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1E0);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    sub_216E68550(v4);
    OUTLINED_FUNCTION_14_27();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    v12 = (*(*v0 + 56) + 16 * v2);
    *v12 = v8;
    v12[1] = v6;
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_65_2();

    return sub_21693B254(v15, v16, v17, v18, v19);
  }
}

uint64_t sub_21693AB38()
{
  OUTLINED_FUNCTION_75_6();
  v3 = OUTLINED_FUNCTION_2_51(v1, v2);
  sub_216E69548(v3, v4);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD238);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v6 = OUTLINED_FUNCTION_18_24();
    sub_216E69548(v6, v7);
    OUTLINED_FUNCTION_14_27();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_65_2();

    return sub_21693B3F8(v9, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_27();
    sub_21693B29C(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693AC2C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_2166ABD84();
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD140);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_2166ABD84();
    OUTLINED_FUNCTION_43_17();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_23_22();
    v6(v5);
    v7 = OUTLINED_FUNCTION_25_21();
    sub_2166B7A4C(v7, v8, v9, v10);
    OUTLINED_FUNCTION_26();
  }
}

void sub_21693AD84()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_2166ABD84();
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    __break(1u);
LABEL_10:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1D8);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_2166ABD84();
    OUTLINED_FUNCTION_43_17();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v0)
  {
    v4 = type metadata accessor for PushNotifications.Subscription(0);
    OUTLINED_FUNCTION_36(v4);
    OUTLINED_FUNCTION_74_9();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_23_22();
    v6(v5);
    v7 = OUTLINED_FUNCTION_25_21();
    sub_21693B308(v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_26();
}

void sub_21693AED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  sub_2170071B4();
  OUTLINED_FUNCTION_34();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  v11 = *(a4 + 56);
  sub_217006EC4();
  OUTLINED_FUNCTION_34();
  (*(v12 + 32))(v11 + *(v12 + 72) * a1, a3);
  OUTLINED_FUNCTION_52_10();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

void sub_21693AFF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71_10(v5, v6, v7, v8);
  *(v10 + 32) = *(v9 + 32);
  sub_2166EF9C4(v13, (*(v11 + 56) + 32 * v12));
  OUTLINED_FUNCTION_52_10();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }
}

void sub_21693B048(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71_10(v5, v6, v7, v8);
  *(v10 + 32) = *(v9 + 32);
  v11 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_32_17();
  sub_2166C6358();
  OUTLINED_FUNCTION_52_10();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

unint64_t sub_21693B0C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_21693B10C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void sub_21693B160(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  v6 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_31_24();
  sub_2166C6358();
  OUTLINED_FUNCTION_52_10();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v7;
  }
}

unint64_t sub_21693B1D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

unint64_t sub_21693B204(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
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

unint64_t sub_21693B254(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

uint64_t sub_21693B29C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21693B454(a4, a5[7] + (a1 << 6));
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

uint64_t sub_21693B308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v7 = *(a4 + 48);
  v8 = sub_217006224();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  type metadata accessor for PushNotifications.Subscription(0);
  result = sub_2166C6358();
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

void sub_21693B50C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21693B574()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

unint64_t sub_21693B5D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_21693B624@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a1;
  v21 = a3;
  OUTLINED_FUNCTION_1_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v28 = a2[2];
  v4 = v28;
  v29 = v5;
  v30 = v6;
  v31 = v7;
  type metadata accessor for SimpleChinViewModifier.SimpleChinView();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  v8 = sub_21700B084();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v26 = v19;
  v27 = v20;
  sub_216E69898();
  sub_21700B074();
  OUTLINED_FUNCTION_0_78();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v11, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_2166C24DC(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

uint64_t sub_21693B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v66 = a6;
  MEMORY[0x28223BE20](a1);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v14;
  v72 = v15;
  v16 = v15;
  v51 = v15;
  v73 = v17;
  v74 = v18;
  v19 = type metadata accessor for SimpleChinViewModifier.SimpleChinView();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v52 = &v51 - v20;
  v21 = sub_2170089F4();
  v64 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v55 = &v51 - v22;
  v61 = sub_2170089F4();
  v65 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v62 = &v51 - v25;
  v71 = a3;
  v72 = v16;
  v73 = a4;
  v74 = a5;
  type metadata accessor for SimpleChinViewModifier();
  swift_getWitnessTable();
  v26 = sub_2170097A4();
  v53 = v26;
  v67 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v58 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v54 = &v51 - v29;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(a1, v26, WitnessTable);
  v30 = *a2;
  v31 = *(a2 + 16);
  v32 = *a2;
  v33 = v56;
  v34 = v31(v32);
  v35 = v60;
  (*(a2 + 32))(v34);
  v36 = v52;
  sub_21693BEF4(v30, v33, v35, a3, v51, v52);
  v50 = swift_getWitnessTable();
  sub_2166BF464();
  v37 = v55;
  sub_21700A9D4();
  (*(v63 + 8))(v36, v19);
  v70[4] = v50;
  v70[5] = MEMORY[0x277CDFC60];
  v38 = swift_getWitnessTable();
  sub_2166BF464();
  v39 = v59;
  sub_21700A9C4();
  (*(v64 + 8))(v37, v21);
  v70[2] = v38;
  v70[3] = MEMORY[0x277CDF678];
  v40 = v61;
  v41 = swift_getWitnessTable();
  v42 = v62;
  sub_2166C24DC(v39, v40, v41);
  v43 = v65;
  v44 = *(v65 + 8);
  v44(v39, v40);
  v45 = v58;
  v46 = v54;
  v47 = v53;
  (*(v67 + 16))(v58, v54, v53);
  v71 = v45;
  (*(v43 + 16))(v39, v42, v40);
  v72 = v39;
  v70[0] = v47;
  v70[1] = v40;
  v68 = WitnessTable;
  v69 = v41;
  sub_216984F84(&v71, 2, v70);
  v44(v42, v40);
  v48 = *(v67 + 8);
  v48(v46, v47);
  v44(v39, v40);
  return (v48)(v45, v47);
}

uint64_t sub_21693BEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for SimpleChinViewModifier.SimpleChinView();
  (*(*(a4 - 8) + 32))(&a6[*(v11 + 52)], a2, a4);
  return (*(*(a5 - 8) + 32))(&a6[*(v11 + 56)], a3, a5);
}

uint64_t sub_21693BFC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 8) = a7;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

void sub_21693C018(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420);
  *&v33 = a1[2];
  sub_217009564();
  v3 = sub_21693D4B8();
  v4 = a1[4];
  v59 = v3;
  v60 = v4;
  WitnessTable = swift_getWitnessTable();
  v35 = sub_217009534();
  v5 = sub_2170089F4();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  v8 = sub_2170089F4();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - v9;
  v11 = a1[5];
  v31 = a1[3];
  v10 = v31;
  v12 = v11;
  v30 = v11;
  v41 = sub_217008BC4();
  v13 = sub_2170089F4();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v36 = &v29 - v14;
  v15 = sub_2170089F4();
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v37 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v40 = &v29 - v18;
  v58 = sub_21700ACD4();
  sub_21700B394();
  *&v19 = v33;
  *(&v19 + 1) = v10;
  v33 = v19;
  *&v20 = v4;
  *(&v20 + 1) = v12;
  v29 = v20;
  v49 = v19;
  v50 = v20;
  v21 = v38;
  v51 = v38;
  v22 = MEMORY[0x277CE0F70];
  sub_21700A2D4();

  v23 = swift_getWitnessTable();
  v56 = v22;
  v57 = v23;
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_4();
  v25 = v32;
  sub_21700AA64();
  (*(v39 + 8))(v7, v5);
  v47 = v29;
  v46 = v33;
  v48 = v21;
  v26 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210);
  v54 = v24;
  v55 = v26;
  v27 = swift_getWitnessTable();
  sub_2166BF464();
  sub_21700AA94();
  (*(v42 + 8))(v25, v8);
  v28 = swift_getWitnessTable();
  v52 = v27;
  v53 = v28;
  swift_getWitnessTable();
  sub_216BFAEC8();
}

uint64_t sub_21693C5C0()
{
  (*(*(v5 - 328) + 8))(v4, v2);
  v6 = MEMORY[0x277CE03D0];
  *(v5 - 176) = v0;
  *(v5 - 168) = v6;
  WitnessTable = swift_getWitnessTable();
  v8 = *(v5 - 352);
  sub_2166C24DC(v3, v1, WitnessTable);
  v9 = *(*(v5 - 320) + 8);
  v9(v3, v1);
  sub_2166C24DC(v8, v1, WitnessTable);
  return (v9)(v8, v1);
}

uint64_t sub_21693C688@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v40 = a4;
  v36 = a3;
  v41 = a6;
  v8 = sub_21700ADC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420);
  v19 = sub_217009564();
  v39 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  if (*a1)
  {
    v22 = *a1;
    sub_21700ADA4();
    (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
    v23 = sub_21700AE04();

    (*(v9 + 8))(v11, v8);
    sub_21700B564();
    v25 = v24;
    v27 = v26;
    LOBYTE(__dst[0]) = 1;
    sub_21700ACC4();
    v28 = sub_21700AD04();

    v29 = sub_217009C84();
    __src[0] = v23;
    __src[1] = 0;
    LOWORD(__src[2]) = 257;
    *&__src[3] = xmmword_21702A070;
    __src[5] = v25;
    __src[6] = v27;
    *&__src[7] = xmmword_21702A080;
    LOBYTE(__src[9]) = 1;
    __src[10] = v28;
    LOBYTE(__src[11]) = v29;
    sub_21693D4B8();
    v30 = v40;
    sub_2166C2718();

    memcpy(__dst, __src, 0x59uLL);
    sub_21669987C(__dst, &qword_27CABD420);
  }

  else
  {
    __dst[0] = a2;
    __dst[1] = v36;
    v30 = v40;
    __dst[2] = v40;
    __dst[3] = v37;
    v31 = type metadata accessor for SimpleChinViewModifier.SimpleChinView();
    sub_2166C24DC(a1 + *(v31 + 52), a2, v30);
    sub_2166C24DC(v18, a2, v30);
    sub_21693D4B8();
    sub_2166C2CB0();
    v32 = *(v12 + 8);
    v32(v15, a2);
    v32(v18, a2);
  }

  __dst[12] = sub_21693D4B8();
  __dst[13] = v30;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v21, v19, WitnessTable);
  return (*(v39 + 8))(v21, v19);
}

uint64_t sub_21693CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for SimpleChinViewModifier.SimpleChinView();
  sub_2166C24DC(a1 + *(v15 + 56), a3, a5);
  sub_2166C24DC(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t sub_21693CC1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[5] = a5;
  v15 = a1;
  v14[0] = a1;
  *&v14[1] = a7;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v11 = a1;

  v12 = type metadata accessor for SimpleChinViewModifier();
  MEMORY[0x21CE9B900](v14, a6, v12, a10);
  sub_21669987C(&v15, qword_27CABD310);
}

uint64_t sub_21693CD14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21693CD50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21693CD90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21693CE1C()
{
  sub_21693D3D0();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21693CEC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if (v10 > 0x7FFFFFFE)
      {
        v25 = (a1 + v11 + 8) & ~v11;
        if (v7 != v14)
        {
          v25 = (v25 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v25, v7, v5);
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        if ((v24 + 1) >= 2)
        {
          return v24;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_21693D0E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v13 > 0x7FFFFFFE)
          {
            v28 = &a1[v15 + 8] & ~v15;
            if (v9 != v14)
            {
              v28 = (v28 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            __swift_storeEnumTagSinglePayload(v28, a2, v9, v7);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *a1 = a2;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v18] = v24;
        break;
      case 2:
        *&a1[v18] = v24;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v18] = v24;
        break;
      default:
        return;
    }
  }
}

void sub_21693D3D0()
{
  if (!qword_27CABD418)
  {
    sub_21693D428();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CABD418);
    }
  }
}

unint64_t sub_21693D428()
{
  result = qword_280E29B40;
  if (!qword_280E29B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B40);
  }

  return result;
}

unint64_t sub_21693D4B8()
{
  result = qword_27CABD428;
  if (!qword_27CABD428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420);
    sub_21693D570();
    sub_2166D9530(&qword_27CABD460, &qword_27CABD468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD428);
  }

  return result;
}

unint64_t sub_21693D570()
{
  result = qword_27CABD430;
  if (!qword_27CABD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD438);
    sub_21693D5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD430);
  }

  return result;
}

unint64_t sub_21693D5FC()
{
  result = qword_27CABD440;
  if (!qword_27CABD440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD448);
    sub_21693D688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD440);
  }

  return result;
}

unint64_t sub_21693D688()
{
  result = qword_27CABD450;
  if (!qword_27CABD450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD458);
    sub_216875080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD450);
  }

  return result;
}

uint64_t sub_21693D75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_217005C64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_21693DA88(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_21693DAF8(a1);
    sub_21693DAF8(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v12 = sub_21700A164();
    sub_21693DAF8(a1);
    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_21693D94C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  v5 = sub_217005CC4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_21700DF14();
  sub_217005CB4();
  result = sub_217005C74();
  if (v4 != 2)
  {
    if (a3)
    {
      sub_21700AD34();
    }

    else
    {
      sub_21700AD14();
    }

    sub_21693DA34();
    return sub_217005C84();
  }

  return result;
}

unint64_t sub_21693DA34()
{
  result = qword_27CABD470;
  if (!qword_27CABD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD470);
  }

  return result;
}

uint64_t sub_21693DA88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21693DAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21693DBA8(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD488, type metadata accessor for ReplayYearModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693DC00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21693DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v38[0] = v15 - v14;
  v39 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_4_40();
  v21 = v4 + v20;
  type metadata accessor for PageMappedItemsStore();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498);
  *(v22 + 16) = sub_21700E384();
  v23 = type metadata accessor for JSReplayPage();
  v38[1] = a1;
  v38[2] = a2;
  v40 = a1;
  v41 = a2;
  v42 = v22;
  sub_216CC9FAC();
  v25 = v24;
  sub_216681B04(&v21[*(v23 + 24)], v11, &qword_27CAB6BF0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_216697664(v11, &qword_27CAB6BF0);
    v26 = 0;
  }

  else
  {
    v27 = v38[0];
    sub_21693E78C(v11, v38[0], type metadata accessor for Page.Header);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A0);
    sub_216CCCA0C();
    v26 = v28;
    sub_21693E734(v27, type metadata accessor for Page.Header);
  }

  v29 = v39;
  v30 = *(v39 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v31 + 16))(&v19[v30], v21);
  *v19 = v25;
  *(v19 + 1) = v22;
  *&v19[*(v29 + 28)] = v26;
  v32 = *v4;
  v33 = v4[1];
  v34 = v4[2];
  v35 = v4[3];
  *a3 = v32;
  a3[1] = v33;
  a3[2] = v34;
  a3[3] = v35;
  OUTLINED_FUNCTION_6_38();
  sub_21693E78C(v19, a3 + v36, type metadata accessor for MappedReplayPage);
  sub_21700DF14();
  sub_21700DF14();
  return sub_21700DF14();
}

uint64_t sub_21693DFBC()
{
  OUTLINED_FUNCTION_4_40();
  type metadata accessor for JSReplayPage();

  return sub_21700DF14();
}

uint64_t sub_21693E000@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplayYearModel(0) + 20);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_21693E09C()
{
  OUTLINED_FUNCTION_4_40();
  v2 = *(v0 + v1 + *(type metadata accessor for JSReplayPage() + 32));
  sub_21700DF14();
  return v2;
}

uint64_t sub_21693E0E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_40();
  v6 = (v2 + v5 + *(type metadata accessor for JSReplayPage() + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_21693E184(uint64_t a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v2;
  v4 = *(a2 + 20);
  *(a1 + 24) = v4;
  v5 = v2 + v4;
  v6 = *(type metadata accessor for JSReplayPage() + 20);
  *(a1 + 28) = v6;
  v7 = *(v5 + v6);
  *(a1 + 16) = v7;
  *a1 = v7;
  sub_21700DF14();
  return sub_21693E1F4;
}

uint64_t sub_21693E1F4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v4 = *(a1 + 6);
  v3 = *(a1 + 7);
  v5 = *a1;
  if (a2)
  {
    sub_21700DF14();

    *(v2 + v4 + v3) = v5;
  }

  else
  {

    *(v2 + v4 + v3) = v5;
  }

  return result;
}

uint64_t sub_21693E2A4()
{
  OUTLINED_FUNCTION_6_38();

  return sub_21700DF14();
}

uint64_t sub_21693E2D0()
{
  OUTLINED_FUNCTION_6_38();
}

uint64_t sub_21693E300@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_38();
  v4 = v1 + v3;
  v5 = *(type metadata accessor for MappedReplayPage(0) + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 16);

  return v8(a1, v4 + v5, v6);
}

uint64_t sub_21693E388@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = type metadata accessor for ReplayPage();
  OUTLINED_FUNCTION_34();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v36 - v10);
  v12 = type metadata accessor for JSReplayPage();
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for ReplayYearPeriodList(0);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = (v24 - v23);
  sub_216F7A5BC((v24 - v23));
  v26 = sub_216B60A3C(v25);
  if (v2)
  {
    return OUTLINED_FUNCTION_0_79();
  }

  v36 = a2;
  v37 = v16;
  *a2 = v26;
  a2[1] = v27;
  a2[2] = v28;
  a2[3] = v29;
  v38 = v27;
  v39 = v26;
  v40 = v29;
  v31 = type metadata accessor for ReplayYear(0);
  sub_216681B04(a1 + *(v31 + 24), v20, &qword_27CABD4A8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v5);
  sub_216697664(v20, &qword_27CABD4A8);
  if (EnumTagSinglePayload == 1)
  {
    sub_2167880BC();
    swift_allocError();
    *v33 = xmmword_21702A210;
    *(v33 + 16) = v31;
    swift_willThrow();
    OUTLINED_FUNCTION_0_79();
  }

  else
  {
    sub_216F7AAC0(v11);
    sub_21693E6D0(v11, v9);
    v34 = v37;
    sub_2167836D8(v9, v37);
    OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_0_79();
    v35 = type metadata accessor for ReplayYearModel(0);
    return sub_21693E78C(v34, v36 + *(v35 + 20), type metadata accessor for JSReplayPage);
  }
}

uint64_t sub_21693E6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayPage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21693E734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21693E78C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = v6 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21693E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21693EA44(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD4D0, type metadata accessor for ReplayYearModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693EAE4(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD4E0, type metadata accessor for ReplayYearModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693EB3C(void *a1)
{
  a1[1] = sub_21693DC00(&qword_27CABD4E8, type metadata accessor for ReplayYearModel);
  a1[2] = sub_21693DC00(&qword_27CABD4F0, type metadata accessor for ReplayYearModel);
  result = sub_21693DC00(&qword_27CABD4F8, type metadata accessor for ReplayYearModel);
  a1[3] = result;
  return result;
}

uint64_t sub_21693EC30(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD500, type metadata accessor for MappedReplayYearModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693ECD0(uint64_t a1)
{
  result = sub_21693DC00(&qword_27CABD510, type metadata accessor for MappedReplayYearModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693ED28(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = sub_21700D284();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = result;
  if (v12 >= a2)
  {
LABEL_29:
    if (v7 == v12)
    {
      v23 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v24 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v11 <= 0x7FFFFFFE)
      {
        v25 = *v24;
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }

      v23 = (v24 + v14 + 8) & ~v14;
    }

    return __swift_getEnumTagSinglePayload(v23, v10, v15);
  }

  v16 = ((*(*(result - 8) + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + 9) & 0xFFFFFFFFFFFFFFF8) + 40;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v12 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 2:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        LODWORD(v17) = *a1;
      }

      result = v12 + (v17 | v22) + 1;
      break;
    default:
      goto LABEL_29;
  }

  return result;
}

void sub_21693EF58(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_21700D284();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v14 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 == v14)
        {
          v23 = a1;
          v24 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v25 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (v13 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v25 = 0;
              *v25 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v25 = a2;
            }

            return;
          }

          v23 = (v25 + v16 + 8) & ~v16;
          v24 = a2;
        }

        __swift_storeEnumTagSinglePayload(v23, v24, v12, v10);
        break;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((*(*(v10 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 8) & ~v16) + 9) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v22 = ~v14 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_21693F1F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21693F2E0()
{
  sub_21700F8F4();
  sub_2167092F4(v2, *v0);
  return sub_21700F944();
}

uint64_t sub_21693F320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_21700D284();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for SongDetailPageIntent()
{
  result = qword_27CABD518;
  if (!qword_27CABD518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21693F408()
{
  type metadata accessor for ContentDescriptor();
  if (v0 <= 0x3F)
  {
    sub_2166CE38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21693F4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for SongDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_21693F864(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for SongDetailPageIntent();
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21693FA38(uint64_t a1)
{
  result = sub_2166CE42C(&qword_27CABD528, type metadata accessor for SongDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21693FAD8(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE42C(&qword_27CABD528, type metadata accessor for SongDetailPageIntent);
  result = sub_2166CE42C(&qword_27CABD530, type metadata accessor for SongDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21693FB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21693FBCC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI31CreateStationMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_21693FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_21693FE50(a1, a2, a3, 0x747369747261, 0xE600000000000000, 4, &qword_27CABD548, &unk_21702A650, &v14 - v8, MEMORY[0x277CD8428], MEMORY[0x277CD8418], &unk_28291D660, sub_216940ED8);
  v10 = sub_21678C1C4();
  sub_216697664(v9, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v10;
  v12 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v12;
}

uint64_t sub_21693FE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v13;
  v110 = a6;
  v112 = a5;
  v109 = a4;
  v108 = a3;
  v126 = a2;
  v128 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v127 = v19;
  MEMORY[0x28223BE20](v20);
  v125 = v21;
  v131 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a7;
  v130 = a8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  OUTLINED_FUNCTION_1();
  v123 = v22;
  MEMORY[0x28223BE20](v23);
  v122 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_0(&v96 - v26);
  v119 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v31 - v30);
  v32 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v107 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v36 - v35);
  v117 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v116 = v37;
  MEMORY[0x28223BE20](v38);
  v114 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v96 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v44 = OUTLINED_FUNCTION_36(v43);
  MEMORY[0x28223BE20](v44);
  v46 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v96 - v48;
  v115 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v113 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v53 - v52);
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v54 = v133;
  if (sub_216E3D990())
  {
    v100 = v54;
    v104 = a9;
    v105 = v16;
    v102 = a13;
    v101 = a12;
    v55 = a10(0);
    v103 = a1;
    v99 = v55;
    v97 = sub_21700B934();
    v98 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v58 = 0xE800000000000000;
    *(inited + 32) = 0x6570795479616C70;
    *(inited + 40) = 0xE800000000000000;
    v59 = MEMORY[0x277D837D0];
    strcpy((inited + 48), "createStation");
    *(inited + 62) = -4864;
    *(inited + 72) = v59;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v60 = (v108 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v61 = v60[1];
    *(inited + 96) = *v60;
    *(inited + 104) = v61;
    *(inited + 120) = v59;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v59;
    v62 = v109;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v62;
    *(inited + 152) = v112;
    sub_21700DF14();
    sub_21700DF14();
    v63 = sub_21700E384();
    v112 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v32);
    sub_21700D6F4();
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    v133 = v63;
    OUTLINED_FUNCTION_65_1();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_43_2();
    sub_2166EF9D4();
    v135 = v59;
    v133 = 2036427888;
    v134 = 0xE400000000000000;
    OUTLINED_FUNCTION_65_1();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_43_2();
    sub_2166EF9D4();
    v64 = 0x6472616F6279656BLL;
    v65 = v42;
    switch(v110)
    {
      case 1:
        v58 = 0xE500000000000000;
        v64 = 0x79726F7473;
        break;
      case 2:
        v58 = 0xE400000000000000;
        v64 = 1701998445;
        break;
      case 3:
        v58 = 0xE500000000000000;
        v64 = 0x636972796CLL;
        break;
      case 4:
        v64 = 0xD000000000000010;
        v58 = 0x80000002170801D0;
        break;
      case 5:
        v58 = 0x80000002170801F0;
        v64 = 0xD000000000000012;
        break;
      case 6:
        v58 = 0xE900000000000075;
        v64 = 0x6E654D6570697773;
        break;
      case 7:
        v58 = 0x8000000217080210;
        v64 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v135 = v59;
    v133 = v64;
    v134 = v58;
    OUTLINED_FUNCTION_65_1();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_43_2();
    sub_2166EF9D4();
    v68 = v132;
    sub_2166A6E54(v112, v46, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v46, 1, v32) == 1)
    {
      sub_216697664(v46, &qword_27CABA820);
    }

    else
    {
      v69 = v107;
      v70 = v106;
      (*(v107 + 32))(v106, v46, v32);
      v71 = sub_217005DE4();
      v135 = v59;
      v133 = v71;
      v134 = v72;
      OUTLINED_FUNCTION_65_1();
      swift_isUniquelyReferenced_nonNull_native();
      v132 = v68;
      OUTLINED_FUNCTION_43_2();
      sub_2166EF9D4();
      v68 = v132;
      (*(v69 + 8))(v70, v32);
    }

    v73 = v104;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v74 = sub_21700CF84();
    v75 = __swift_project_value_buffer(v74, qword_280E73DB0);
    v76 = v118;
    MEMORY[0x21CE9DD70](v97, v98, 0x6E6F74747562, 0xE600000000000000, v68, v75);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v77 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_217013DA0;
    v79 = v78 + v77;
    v80 = v119;
    (*(v28 + 16))(v79, v76, v119);
    v81 = v116;
    v82 = v65;
    v83 = v65;
    v84 = v117;
    (*(v116 + 16))(v114, v82, v117);
    v85 = v111;
    sub_21700D244();

    (*(v28 + 8))(v76, v80);
    (*(v81 + 8))(v83, v84);
    sub_216697664(v112, &qword_27CABA820);
    v86 = v120;
    (*(*(v99 - 8) + 16))(v120, v103);
    (*(v113 + 32))(v86 + *(v121 + 36), v85, v115);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v87 = v122;
    v88 = v129;
    sub_21678818C(v86, v122, v129);
    v89 = v127;
    v90 = v128;
    (*(v127 + 16))(v131, v126, v128);
    v91 = (*(v123 + 80) + 24) & ~*(v123 + 80);
    v92 = (v124 + *(v89 + 80) + v91) & ~*(v89 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = v105;
    sub_21678818C(v87, v93 + v91, v88);
    (*(v89 + 32))(v93 + v92, v131, v90);
    v94 = type metadata accessor for MenuAction();
    v95 = (v73 + *(v94 + 20));
    *v95 = v102;
    v95[1] = v93;
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v94);
  }

  else
  {
    v66 = type metadata accessor for MenuAction();
    __swift_storeEnumTagSinglePayload(a9, 1, 1, v66);
  }
}

uint64_t sub_216940AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  v15 = sub_216B88F54(a3 + v14, v9);
  sub_2168CD6E4(v9);
  if (v15)
  {
    v16 = 4;
  }

  else
  {
    v16 = 7;
  }

  sub_21693FE50(a1, a2, a3, 1735290739, 0xE400000000000000, v16, &qword_27CABD538, &unk_21702A640, v13, MEMORY[0x277CD8238], MEMORY[0x277CD8218], &unk_28291D638, sub_216940EBC);
  v17 = sub_21678C1C4();
  sub_216697664(v13, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v17;
  v19 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v19;
}

uint64_t sub_216940CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v11[4] = sub_216940FD0(a6, a4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_2166A6E54(a2, boxed_opaque_existential_1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_216940D78()
{

  v1 = OBJC_IVAR____TtC7MusicUI31CreateStationMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CreateStationMenuActionProvider()
{
  result = qword_280E30498;
  if (!qword_280E30498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216940EF4(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v10);
  return sub_216940CA0(*(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v11 + 80)) & ~*(v11 + 80)), a1, a2, a3);
}

uint64_t sub_216940FD0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21694104C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v56 = v6;
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v49 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v55 = a1;
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v28 = *(v10 + 8);
  v53 = v10 + 8;
  v54 = v8;
  v52 = v28;
  v28(v24, v8);
  if (v27)
  {
    v58 = v25;
    v59 = v27;
    sub_21700F364();
    sub_21700D7A4();
    v29 = v55;
    sub_21700CE04();
    (*(v56 + 16))(v50, v60, v57);
    v30 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
    v31 = v16;
    v32 = a3;
    sub_21700D734();
    sub_21700CE04();
    v33 = sub_21700CD44();
    v34 = v19;
    v35 = v54;
    v36 = v52;
    v52(v34, v54);
    *(v32 + v30[6]) = v33 & 1;
    sub_21700CE04();
    v37 = sub_21700CD44();
    v36(v31, v35);
    *(v32 + v30[7]) = v37 & 1;
    v38 = v32;
    sub_21700CE04();
    v39 = sub_21700CDB4();
    v41 = v40;
    v36(v22, v35);
    v42 = (v38 + v30[8]);
    *v42 = v39;
    v42[1] = v41;
    v43 = v51;
    sub_21700CE04();
    LOBYTE(v39) = sub_21700CD44();
    (*(v56 + 8))(v60, v57);
    v36(v29, v35);
    result = (v36)(v43, v35);
    *(v38 + v30[9]) = v39 & 1;
  }

  else
  {
    v45 = sub_21700E2E4();
    sub_2169415D8(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v47 = v46;
    v48 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
    *v47 = 25705;
    v47[1] = 0xE200000000000000;
    v47[2] = v48;
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (*(v56 + 8))(v60, v57);
    return (v52)(v55, v54);
  }

  return result;
}

uint64_t sub_2169415D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216941634()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216941688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a2;
  v35 = a1;
  v38 = a7;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  type metadata accessor for MusicMetricsContextModifier();
  OUTLINED_FUNCTION_1_65();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD628);
  v11 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v36 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD630);
  v16 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v37 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v34 = &v32 - v22;
  swift_getKeyPath();
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v46 = type metadata accessor for InternalBootstrap();
  v47 = &off_28291D678;
  v23 = v33;
  v43 = v33;

  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  sub_21700A3D4();

  sub_21669987C(&v43, &qword_27CAB7188);
  swift_getKeyPath();
  sub_2167B7D58(v23 + 48, &v43);
  v25 = sub_216941D00(&qword_27CABD638, &qword_27CABD628);
  v41 = WitnessTable;
  v42 = v25;
  OUTLINED_FUNCTION_0_80();
  v26 = swift_getWitnessTable();
  sub_21700A3D4();

  sub_21669987C(&v43, &qword_27CAB71A8);
  (*(v36 + 8))(v15, v11);
  v27 = sub_216941D00(&qword_27CABD640, &qword_27CABD630);
  v39 = v26;
  v40 = v27;
  v28 = swift_getWitnessTable();
  v29 = v34;
  sub_2166C24DC(v20, v16, v28);
  v30 = *(v37 + 8);
  v30(v20, v16);
  sub_2166C24DC(v29, v16, v28);
  return (v30)(v29, v16);
}

uint64_t sub_216941A14()
{
  sub_216941DA8();

  return sub_217009104();
}

uint64_t sub_216941A80(uint64_t a1)
{
  sub_216681B64(a1, v3, &qword_27CAB7188);
  OUTLINED_FUNCTION_3_61();
  return sub_216941C24(v3, &qword_27CAB7188, &unk_217015F90, v1);
}

uint64_t sub_216941B1C()
{
  sub_216941D54();

  return sub_217009104();
}

uint64_t sub_216941B88(uint64_t a1)
{
  sub_216681B64(a1, v3, &qword_27CAB71A8);
  OUTLINED_FUNCTION_4_41();
  return sub_216941C24(v3, &qword_27CAB71A8, &unk_217015FA0, v1);
}

uint64_t sub_216941C24(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_216681B64(a1, v9, a2);
  a4(v7);
  sub_217009114();
  return sub_21669987C(a1, a2);
}

uint64_t sub_216941D00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216941D54()
{
  result = qword_27CABD648;
  if (!qword_27CABD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD648);
  }

  return result;
}

unint64_t sub_216941DA8()
{
  result = qword_27CABD650;
  if (!qword_27CABD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD650);
  }

  return result;
}

double sub_216941E1C()
{
  qword_27CABD578 = 0;
  result = 0.0;
  xmmword_27CABD558 = 0u;
  unk_27CABD568 = 0u;
  return result;
}

uint64_t sub_216941E34@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5A78 != -1)
  {
    swift_once();
  }

  return sub_216681B64(&xmmword_27CABD558, a1, &qword_27CAB7188);
}

double sub_216941EA4()
{
  qword_27CABD5A0 = 0;
  result = 0.0;
  xmmword_27CABD580 = 0u;
  *algn_27CABD590 = 0u;
  return result;
}

uint64_t sub_216941EBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5A80 != -1)
  {
    swift_once();
  }

  return sub_216681B64(&xmmword_27CABD580, a1, &qword_27CAB71A8);
}

uint64_t sub_216941F30()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CB22920);
  __swift_project_value_buffer(v0, qword_27CB22920);
  return sub_217007C94();
}

uint64_t sub_216941FB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  v6 = sub_21700E244();
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v7 = type metadata accessor for IntentAction();
  sub_216ECDE68(a1 + *(v7 + 20), a2);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = sub_2166AF2EC();
  swift_retain_n();
  v10 = sub_21700EE84();
  v12[3] = v9;
  v12[4] = MEMORY[0x277D225C0];
  v12[0] = v10;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v6;
}

uint64_t sub_216942134()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_21700E224();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_216942220(void *a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CAB5A88 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_27CB22920);
  v7 = a1;
  v8 = sub_217007C84();
  v9 = sub_21700ED84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_21700F884();
    v14 = sub_2166A85FC(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_216679000, v8, v9, "Error performing Action: '%{public}s'", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x21CEA1440](v11, -1, -1);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  sub_21700E224();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_216942464()
{
  result = qword_280E44C18[0];
  if (!qword_280E44C18[0])
  {
    type metadata accessor for IntentAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E44C18);
  }

  return result;
}

uint64_t sub_2169424F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  return sub_2169425C8(v8, a1, a2, a3);
}

uint64_t sub_2169425C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

void sub_216942680()
{
  OUTLINED_FUNCTION_1_66();
  OUTLINED_FUNCTION_0_81();
  __break(1u);
}

uint64_t sub_216942740(uint64_t result)
{
  if (!v2)
  {
    *v1 = result & 1;
    v1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_216942790()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(*(v2 + 16) + 24))(v1);
}

uint64_t sub_216942854(uint64_t result)
{
  if (!v2)
  {
    *v1 = result & 1;
  }

  return result;
}

uint64_t sub_216942884(uint64_t result)
{
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_2169428B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!v4)
  {
    *v3 = result & 1;
    *(v3 + 8) = a2;
    *(v3 + 16) = a3;
  }

  return result;
}

uint64_t sub_2169428E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!v4)
  {
    *v3 = result;
    v3[1] = a2;
    v3[2] = a3;
  }

  return result;
}

uint64_t sub_216942914(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!v5)
  {
    *v4 = result;
    v4[1] = a2;
    v4[2] = a3;
    v4[3] = a4;
  }

  return result;
}

uint64_t sub_21694297C(uint64_t result, uint64_t a2)
{
  if (!v3)
  {
    *v2 = result;
    v2[1] = a2;
  }

  return result;
}

uint64_t sub_2169429B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216942A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216942A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216942AA8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216942B20(uint64_t result)
{
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t type metadata accessor for StationContextMenu()
{
  result = qword_280E3E6B8;
  if (!qword_280E3E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216942BD8()
{
  sub_21700C644();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_2167B83B4();
      if (v2 <= 0x3F)
      {
        sub_2167B84AC();
        if (v3 <= 0x3F)
        {
          sub_2167EE974();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216942CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216942EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[16] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[17] = v5;
  v3[18] = OUTLINED_FUNCTION_80();
  v6 = type metadata accessor for PresentSheetAction();
  v3[19] = v6;
  OUTLINED_FUNCTION_36(v6);
  v3[20] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[21] = v7;
  OUTLINED_FUNCTION_2(v7);
  v3[22] = v8;
  v3[23] = OUTLINED_FUNCTION_80();
  v9 = sub_217006224();
  v3[24] = v9;
  OUTLINED_FUNCTION_2(v9);
  v3[25] = v10;
  v3[26] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v11);
  v3[27] = OUTLINED_FUNCTION_80();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  OUTLINED_FUNCTION_36(v12);
  v3[28] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v13);
  v3[29] = OUTLINED_FUNCTION_80();
  v14 = type metadata accessor for FlowAction.Destination(0);
  v3[30] = v14;
  OUTLINED_FUNCTION_36(v14);
  v3[31] = OUTLINED_FUNCTION_80();
  v15 = sub_21700D284();
  v3[32] = v15;
  OUTLINED_FUNCTION_2(v15);
  v3[33] = v16;
  v3[34] = OUTLINED_FUNCTION_80();
  v17 = type metadata accessor for ModalActionModelDestinations.Destination();
  v3[35] = v17;
  OUTLINED_FUNCTION_36(v17);
  v3[36] = OUTLINED_FUNCTION_80();
  v18 = sub_21700DFD4();
  v3[37] = v18;
  OUTLINED_FUNCTION_2(v18);
  v3[38] = v19;
  v3[39] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[40] = sub_21700EA24();
  v21 = sub_21700E9B4();
  v3[41] = v21;
  v3[42] = v20;

  return MEMORY[0x2822009F8](sub_2169431E0, v21, v20);
}

uint64_t sub_2169431E0()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 112);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v5 = sub_21700DF34();
  *(v0 + 344) = v5;
  (*(v2 + 8))(v1, v3);
  sub_216685F4C(0, &qword_280E29D68);
  sub_21700E094();
  v6 = *(v0 + 96);
  v7 = [v6 ams_activeiTunesAccount];
  *(v0 + 352) = v7;

  v8 = sub_216943BDC(v4, v5, v7);
  *(v0 + 360) = v8;
  if (v8)
  {
    v9 = v8;
    v10 = *(v0 + 288);
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 256);
    v47 = v11;
    v46 = *(v0 + 248);
    v14 = *(v0 + 232);
    v15 = *(v0 + 224);
    v58 = *(v0 + 216);
    v48 = *(v0 + 208);
    v49 = *(v0 + 200);
    v50 = *(v0 + 192);
    v54 = *(v0 + 160);
    v53 = *(v0 + 152);
    v55 = *(v0 + 136);
    v56 = *(v0 + 128);
    v57 = *(v0 + 144);
    v16 = *(v0 + 112);
    v51 = v16;
    v52 = *(type metadata accessor for OpenUnifiedMessagesSheetAction() + 24);
    v17 = *(v12 + 16);
    v17(v11, v16 + v52, v13);
    *v46 = v9;
    swift_storeEnumTagMultiPayload();
    v18 = sub_217005EF4();
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v21 = OUTLINED_FUNCTION_8_35(v14, v19, v20, v18);
    v22 = type metadata accessor for Page.Header(v21);
    OUTLINED_FUNCTION_8_35(v15, v23, v24, v22);
    v25 = type metadata accessor for ReferrerInfo();
    v28 = OUTLINED_FUNCTION_8_35(v58, v26, v27, v25);
    v29 = type metadata accessor for FlowAction(v28);
    v30 = v10 + v29[10];
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    v17(v10, v47, v13);
    sub_216944230(v46, v10 + v29[5], type metadata accessor for FlowAction.Destination);

    sub_217006214();
    v31 = sub_2170061F4();
    v33 = v32;
    (*(v49 + 8))(v48, v50);
    sub_216944290(v46, type metadata accessor for FlowAction.Destination);
    (*(v12 + 8))(v47, v13);
    v34 = (v10 + v29[6]);
    *v34 = v31;
    v34[1] = v33;
    *(v10 + v29[7]) = 0;
    sub_2167A66B4(v0 + 16, v30);
    sub_2167A6724(v14, v10 + v29[8], &qword_27CABA820);
    sub_2167A6724(v15, v10 + v29[11], &qword_27CAB6BF0);
    sub_2167A6724(v58, v10 + v29[9], &qword_27CAB6FD0);
    swift_storeEnumTagMultiPayload();
    sub_21700E094();
    sub_216944230(v10, v54 + *(v53 + 20), type metadata accessor for ModalActionModelDestinations.Destination);
    v17(v54, v51 + v52, v13);
    *(v0 + 80) = v53;
    *(v0 + 88) = sub_2169441E8(qword_280E3EA78, type metadata accessor for PresentSheetAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_216944230(v54, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    (*(v55 + 104))(v57, *MEMORY[0x277D21E18], v56);
    v36 = swift_task_alloc();
    *(v0 + 368) = v36;
    *v36 = v0;
    v36[1] = sub_2169437C4;
    v37 = *(v0 + 168);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 104);

    return MEMORY[0x28217F468](v40, v0 + 56, v38, v39, v37);
  }

  else
  {
    v41 = *(v0 + 104);

    swift_unknownObjectRelease();

    v42 = *MEMORY[0x277D21CA0];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v43 + 104))(v41, v42);
    OUTLINED_FUNCTION_4_42();

    OUTLINED_FUNCTION_3();

    return v44();
  }
}

uint64_t sub_2169437C4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 376) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 336);
    v8 = sub_216943A7C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 56);
    v6 = *(v2 + 328);
    v7 = *(v2 + 336);
    v8 = sub_216943944;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216943944()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_53();
  sub_216944290(v5, v6);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_67();
  sub_216944290(v1, v7);
  OUTLINED_FUNCTION_4_42();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216943A7C()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_53();
  sub_216944290(v4, v6);
  (*(v3 + 8))(v2, v5);
  OUTLINED_FUNCTION_1_67();
  sub_216944290(v1, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216943BDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OpenUnifiedMessagesSheetAction();
  MEMORY[0x28223BE20](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  if (qword_27CAB5A90 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  v11 = __swift_project_value_buffer(v10, qword_27CABD658);
  sub_216944230(a1, v7, type metadata accessor for OpenUnifiedMessagesSheetAction);
  sub_21700DF14();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();

  v32 = v13;
  v14 = os_log_type_enabled(v12, v13);
  v33 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    v31[1] = v11;
    v35 = v31[0];
    *v15 = 136446466;
    *(v15 + 4) = sub_2166A85FC(v8, v9, &v35);
    *(v15 + 12) = 2082;
    v34 = *(v7 + 2);
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD670);
    v16 = sub_21700E594();
    v17 = v5;
    v19 = v18;
    sub_216944290(v7, type metadata accessor for OpenUnifiedMessagesSheetAction);
    v20 = sub_2166A85FC(v16, v19, &v35);
    v5 = v17;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_216679000, v12, v32, "💬 Initializing a UM with hint=%{public}s and context=%{public}s", v15, 0x16u);
    v21 = v31[0];
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v21, -1, -1);
    MEMORY[0x21CEA1440](v15, -1, -1);
  }

  else
  {

    sub_216944290(v7, type metadata accessor for OpenUnifiedMessagesSheetAction);
  }

  sub_216685F4C(0, &qword_280E29BE8);
  sub_21700DF14();
  sub_21700DF14();
  v22 = sub_21700EF84();
  [v22 setAccount_];
  v23 = *(a1 + *(v5 + 28));
  if (v23)
  {
    sub_2169FD23C(v23);
    v24 = sub_21700E344();
  }

  else
  {
    v24 = 0;
  }

  [v22 setMetricsOverlay_];

  v25 = [objc_opt_self() mainBundle];
  sub_2166E2BA8(v25);
  if (v26)
  {
    sub_216685F4C(0, &qword_280E29D60);
    sub_2166A315C();
    sub_2170077F4();
    swift_allocObject();
    swift_unknownObjectRetain();
    return sub_2170077D4();
  }

  else
  {
    v28 = sub_217007C84();
    v29 = sub_21700ED84();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_216679000, v28, v29, "💬 Missing bundleId", v30, 2u);
      MEMORY[0x21CEA1440](v30, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_216944044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2167AF644;

  return sub_216942EC0(a1, a2, a3);
}

unint64_t sub_2169440F4(uint64_t a1)
{
  result = sub_2166DA1D8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216944168()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABD658);
  __swift_project_value_buffer(v0, qword_27CABD658);
  return sub_217007C94();
}

uint64_t sub_2169441E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216944230(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216944290(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_2169442E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_21700E4D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2169443F0;
  v12[3] = &block_descriptor_8;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_2169443F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_216944458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareImageRequestAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2169480F4(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareImageRequestAction);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  sub_216947F2C(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  return sub_216ECDBF4(&unk_21702ADF0, v8);
}

uint64_t sub_216944578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PresentSheetAction();
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for MusicAppDestination.SharePageDescriptor(0);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v3[32] = swift_task_alloc();
  v6 = sub_217005EF4();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  type metadata accessor for ImageURLRequestResponse(0);
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2169447DC, 0, 0);
}

uint64_t sub_2169447DC()
{
  v1 = *(v0 + 168);
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceStyle];

  type metadata accessor for JSIntentDispatcher();
  *(v0 + 304) = type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_8();
  sub_21700E094();
  *(v0 + 312) = *(v0 + 144);
  v4 = type metadata accessor for ShareImageRequestAction();
  *(v0 + 320) = v4;
  v5 = (v1 + v4[5]);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v1 + v4[6]);
  v9 = (v1 + v4[7]);
  v10 = *v9;
  v11 = *(v1 + v4[9]);
  v12 = (v1 + v4[10]);
  v13 = *v12;
  v14 = (v1 + v4[11]);
  v15 = *v14;
  v16 = v14[1];
  v22 = *(v9 + 8);
  v23 = *(v12 + 8);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v3 == 2;
  *(v0 + 40) = v8;
  *(v0 + 48) = v10;
  *(v0 + 56) = v22;
  *(v0 + 64) = v11;
  *(v0 + 72) = v13;
  *(v0 + 80) = v23;
  *(v0 + 88) = v15;
  *(v0 + 96) = v16;
  sub_21700DF14();
  sub_21700DF14();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 328) = v17;
  *v17 = v18;
  v17[1] = sub_216944988;
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);

  return sub_216A9BC84(v19, v0 + 16, v20);
}

uint64_t sub_216944988()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v3 + 336) = v0;

  if (v0)
  {
    v6 = sub_216944E88;
  }

  else
  {
    sub_216948070(v3 + 16);
    v6 = sub_216944A94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_216944A94()
{
  v1 = v0[32];
  v2 = v0[33];
  sub_2168282D4(v0[37], v1, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[37];
    sub_2166997CC(v0[32], &qword_27CABA820);
    sub_2169480A0();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_0_82();
    sub_216948150(v3, v5);
    OUTLINED_FUNCTION_5_41();

    OUTLINED_FUNCTION_3();

    return v6();
  }

  else
  {
    v8 = v0[40];
    v10 = v0[35];
    v9 = v0[36];
    v11 = v0[33];
    v12 = v0[34];
    v13 = v0[31];
    v30 = v0[30];
    v31 = v0[28];
    v34 = v0[23];
    v14 = v0[21];
    v35 = v0[22];
    v36 = v0[24];
    v32 = v0[29];
    v33 = v14;
    (*(v12 + 32))(v9, v0[32], v11);
    v15 = *(v12 + 16);
    v15(v10, v9, v11);
    v16 = (v14 + *(v8 + 32));
    v17 = *v16;
    v18 = v16[1];
    v19 = objc_allocWithZone(type metadata accessor for ShareImageAssetActivityItemProvider(0));
    sub_21700DF14();
    v20 = sub_2169452D8(v10, v17, v18);
    v21 = *(v30 + 24);
    v15(v13 + v21, v9, v11);
    __swift_storeEnumTagSinglePayload(v13 + v21, 0, 1, v11);
    *v13 = v20;
    *(v13 + 8) = 0x2000000000000000;
    *(v13 + 16) = 0;
    sub_2169480F4(v13, v32 + *(v31 + 20), type metadata accessor for MusicAppDestination.SharePageDescriptor);
    type metadata accessor for MusicAppDestination(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ModalActionModelDestinations.Destination();
    swift_storeEnumTagMultiPayload();
    sub_21700D284();
    OUTLINED_FUNCTION_34();
    (*(v22 + 16))(v32, v33);
    sub_21700E094();
    v0[16] = v31;
    v0[17] = sub_21668F018(qword_280E3EA78, type metadata accessor for PresentSheetAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 13);
    sub_2169480F4(v32, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    (*(v34 + 104))(v36, *MEMORY[0x277D21E18], v35);
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[43] = v24;
    *v24 = v25;
    v24[1] = sub_216944F44;
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[19];
    v29 = v0[20];

    return MEMORY[0x28217F468](v28, v0 + 13, v26, v29, v27);
  }
}

uint64_t sub_216944E88()
{

  sub_216948070(v0 + 16);
  OUTLINED_FUNCTION_5_41();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216944F44()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  v3[44] = v0;

  (*(v3[23] + 8))(v3[24], v3[22]);
  if (v0)
  {
    v6 = sub_2169451AC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 13));
    v6 = sub_216945080;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_216945080()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[33];
  v5 = v0[29];

  v6 = OUTLINED_FUNCTION_8();
  v7(v6);
  OUTLINED_FUNCTION_6_39();
  sub_216948150(v5, v8);
  OUTLINED_FUNCTION_7_38();
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_0_82();
  sub_216948150(v1, v9);

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_2169451AC()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_6_39();
  sub_216948150(v5, v9);
  OUTLINED_FUNCTION_7_38();
  (*(v4 + 8))(v1, v3);
  OUTLINED_FUNCTION_0_82();
  sub_216948150(v2, v10);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 13));
  OUTLINED_FUNCTION_5_41();

  OUTLINED_FUNCTION_3();

  return v11();
}

char *sub_2169452D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v35 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  *&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img] = 0;
  v20 = *(v15 + 16);
  v20(v18 - v17, a1, v13);
  v21 = objc_allocWithZone(type metadata accessor for DownloadShareImageOperation());
  *&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_operation] = sub_216946178(v19);
  v36 = a1;
  v20(&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_url], a1, v13);
  v22 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  *&v4[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_linkMetadata] = v22;
  v23 = v22;
  if (a3)
  {
    v24 = sub_21700E4D4();
  }

  else
  {
    v24 = 0;
  }

  [v22 setTitle_];

  v38.receiver = v4;
  v38.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v38, sel_init);
  v26 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  v27 = v25;
  v28 = [v26 init];
  sub_217007B64();
  sub_217007B54();
  (*(v8 + 8))(v12, v35);
  v29 = sub_21700E4D4();

  OUTLINED_FUNCTION_143();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_2169481A4;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_216945928;
  aBlock[3] = &block_descriptor_22;
  v31 = _Block_copy(aBlock);

  [v28 registerItemForTypeIdentifier:v29 loadHandler:v31];
  _Block_release(v31);

  [*&v27[OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_linkMetadata] setImageProvider_];
  (*(v15 + 8))(v36, v13);
  return v27;
}

void sub_216945664(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_operation);

    v7 = *&v6[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise];

    if (v7)
    {
      if (a1)
      {
        v8 = swift_allocObject();
        swift_beginAccess();
        v9 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v10 = swift_allocObject();
        v10[2] = v8;
        v10[3] = a1;
        v10[4] = a2;
        v11 = swift_allocObject();
        *(v11 + 16) = a1;
        *(v11 + 24) = a2;
        v12 = sub_216685F4C(0, &qword_280E29CD0);
        sub_2167759F4(a1);

        v13 = sub_21700EE84();
        v14[3] = v12;
        v14[4] = MEMORY[0x277D225C0];
        v14[0] = v13;
        sub_21700E1C4();

        sub_21667E91C(a1);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_216945844(UIImage **a1, uint64_t a2, void (*a3)(NSData *, void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
    *(Strong + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img) = v4;
    v8 = v4;
  }

  v9 = UIImagePNGRepresentation(v4);
  if (v9)
  {
    v10 = sub_217005FB4();
    v12 = v11;

    v9 = sub_217005F94();
    sub_21677A524(v10, v12);
  }

  a3(v9, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_216945928(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_2169131C8;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_21700E354();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_21667E91C(v7);
}

void *sub_216945A30()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_linkMetadata);
  v2 = v1;
  return v1;
}

id sub_216945A94@<X0>(void *a1@<X8>)
{
  v7 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
  v3 = sub_216685F4C(0, &qword_280E29B40);
  v4 = v7;
  a1[3] = v3;
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v4 = 0;
  }

  *a1 = v5;

  return v4;
}

id sub_216945BB0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
  if (v3)
  {
    v6 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_img);
    v3 = sub_216685F4C(0, &qword_280E29B40);
    v4 = v6;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v3;

  return v4;
}

uint64_t sub_216945D60()
{
  v0 = sub_217007B94();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  sub_217007B84();
  v7 = sub_217007B54();
  (*(v2 + 8))(v6, v0);
  return v7;
}

void *sub_216945EB8(void *result)
{
  if (result)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7MusicUI35ShareImageAssetActivityItemProvider_operation);
    sub_216945EF0(result);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_216945EF0(void *a1)
{
  v2 = v1;
  if ((*(v1 + OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished) & 1) == 0)
  {
    v6 = v1;
    v4 = sub_2169469E8();
    [a1 presentViewController:v4 animated:1 completion:0];

    v2 = v6;
  }

  return v2;
}

uint64_t sub_2169460CC()
{
  result = sub_217005EF4();
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

char *sub_216946178(uint64_t a1)
{
  v30 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700B5B4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise;
  *&v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished] = 0;
  v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting] = 0;
  *&v1[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation____lazy_storage___alertController] = 0;
  *&v1[v17] = 0;

  v34.receiver = v1;
  v34.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v34, sel_init);
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD788);
  v19 = sub_216685F4C(0, &qword_280E29CD0);
  (*(v12 + 104))(v16, *MEMORY[0x277D851C8], v10);
  v20 = v18;
  v21 = sub_21700EEB4();
  (*(v12 + 8))(v16, v10);
  v32 = v19;
  v33 = MEMORY[0x277D225C0];
  v31 = v21;
  OUTLINED_FUNCTION_143();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v30;
  (*(v5 + 16))(v9, v30, v3);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v5 + 32))(v26 + v24, v9, v3);
  *(v26 + v25) = v22;
  v27 = sub_21700E1A4();
  (*(v5 + 8))(v23, v3);
  *&v20[OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation_promise] = v27;

  return v20;
}

void sub_216946498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = objc_opt_self();

  v13 = [v12 sharedSession];
  v14 = sub_217005E04();
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = sub_2169482AC;
  v15[6] = v11;
  v20[4] = sub_2169482E4;
  v20[5] = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_216946910;
  v20[3] = &block_descriptor_47;
  v16 = _Block_copy(v20);

  v17 = [v13 dataTaskWithURL:v14 completionHandler:v16];
  _Block_release(v16);

  [v17 resume];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

void sub_216946678(uint64_t a1, unint64_t a2, int a3, id a4, int a5, void (*a6)(void), int a7, void (*a8)(void), uint64_t a9)
{
  if (a4)
  {
    v11 = a4;
    (a6)(a4);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_216946F7C(0, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting);
      sub_216946F7C(1, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished);
      sub_216946C94();
    }

    return;
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  sub_216685F4C(0, &qword_280E29B40);
  sub_21677A404(a1, a2);
  sub_21677A404(a1, a2);
  v17 = sub_216949A80(a1, a2);
  if (!v17)
  {
    sub_21677A510(a1, a2);
LABEL_9:
    sub_216948314();
    v19 = swift_allocError();
    a6();

    goto LABEL_10;
  }

  v18 = v17;
  a8();

  sub_21677A510(a1, a2);
LABEL_10:

  sub_216946868();
}