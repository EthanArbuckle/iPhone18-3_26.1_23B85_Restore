uint64_t sub_2543081A0()
{
  v45 = v0[28];
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v0[18] = v0[23];
  v4 = v1[11];
  v5 = v1[12];
  v7 = v1[13];
  v6 = v1[14];
  v0[2] = v2;
  v43 = v4;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = v7;
  v0[6] = v6;
  v41 = v6;
  v8 = type metadata accessor for CoordinationTransportServer();
  v9 = sub_2542DF684();
  v10._object = 0x80000002543B85E0;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD000000000000012;
  v44 = v8;
  Logging.ulog(_:extended:)(v10, v11);
  v0[19] = v3;
  OUTLINED_FUNCTION_10_6();
  v13 = *(v12 + 208);
  swift_beginAccess();
  v14 = sub_2542D6250(255, &qword_27F5DF368, 0x277CFD0D8);
  v42 = v5;
  v15 = *(v5 + 8);
  OUTLINED_FUNCTION_0_17();
  v17 = sub_2543094B4(v16, &qword_27F5DF368, 0x277CFD0D8);
  v0[7] = v2;
  v0[8] = v14;
  v0[9] = v7;
  v0[10] = v15;
  v0[11] = v17;
  v18 = type metadata accessor for MemberConnectionCache();
  sub_25437E024((v0 + 19), v18, v45);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v45, 1, v2) == 1)
  {
    v20 = v0[22];
    v19 = v0[23];
    (*(v0[27] + 8))(v0[28], v0[26]);
    v0[20] = v19;
    sub_2543A3298();

    v21 = [v20 member];
    v22 = [v21 description];
    v23 = sub_2543A2878();
    v25 = v24;

    MEMORY[0x259C093D0](v23, v25);

    MEMORY[0x259C093D0](0x2074276E6143202ELL, 0xEE0065766F6D6572);
    v26 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, 0xD000000000000021, 0x80000002543B8600, v26 & 1, v44, &off_286647140);

    v27 = v0[30];
    v28 = v0[28];

    OUTLINED_FUNCTION_27();

    return v29();
  }

  else
  {
    v31 = v0[30];
    v32 = v0[25];
    v33 = v0[23];
    (*(v0[29] + 32))(v31, v0[28], v32);
    v34 = *(*v33 + 200);
    OUTLINED_FUNCTION_97();
    v0[21] = *(v33 + v34);
    v35 = swift_task_alloc();
    v35[2] = v32;
    v35[3] = v43;
    v35[4] = v42;
    v35[5] = v7;
    v35[6] = v41;
    v35[7] = v31;
    sub_2543A1F88();
    sub_2543A2C28();
    OUTLINED_FUNCTION_1_13();
    sub_254308E3C(v36, v37);
    OUTLINED_FUNCTION_26_1();
    sub_2543A27B8();
    sub_2543A2768();
    OUTLINED_FUNCTION_3_8();
    swift_getWitnessTable();
    sub_2543A29E8();

    v0[31] = v33[15];
    v38 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v38, v39, v40);
  }
}

uint64_t sub_2543085F4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[23];
  sub_254325DAC();

  return MEMORY[0x2822009F8](sub_25430865C, v3, 0);
}

uint64_t sub_25430865C()
{
  OUTLINED_FUNCTION_28();
  (*(v0[29] + 8))(v0[30], v0[25]);
  v1 = v0[30];
  v2 = v0[28];

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_2543086D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_9();
  v9 = v8 - v7;
  v10 = sub_2543A2BD8();
  OUTLINED_FUNCTION_3(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  sub_2543A1F88();
  sub_2543A2C28();
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v5 + 16))(v9, a2, a3);
  sub_2543A2C08();
  return (*(v12 + 8))(v17, v10);
}

uint64_t *sub_254308884()
{
  v1 = *v0;

  v2 = v0[15];

  v3 = v0[16];

  OUTLINED_FUNCTION_19_3();
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(v4 + 160));
  OUTLINED_FUNCTION_19_3();
  v6 = *(v0 + *(v5 + 168) + 8);

  OUTLINED_FUNCTION_19_3();
  v8 = *(v0 + *(v7 + 176) + 8);

  OUTLINED_FUNCTION_19_3();
  v10 = *(v0 + *(v9 + 184) + 8);

  OUTLINED_FUNCTION_19_3();
  v12 = *(v0 + *(v11 + 192));

  OUTLINED_FUNCTION_19_3();
  v14 = *(v0 + *(v13 + 200));

  OUTLINED_FUNCTION_19_3();
  v16 = (v0 + *(v15 + 208));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];

  OUTLINED_FUNCTION_19_3();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2543089F4()
{
  sub_254308884();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254308A80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254305B70();
}

uint64_t sub_254308B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254306610();
}

uint64_t sub_254308BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254305B70();
}

uint64_t sub_254308C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254306610();
}

uint64_t sub_254308CC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254308D00(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254308D44(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_254308DC4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254308E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254308E84(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return sub_2543086D8(a1, v1[7], v1[2]);
}

uint64_t sub_254308ED4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_254308F0C()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_5(v4);

  return sub_25430780C(v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_2543090C4()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 56);
  sub_2543075E4();
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 72);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_254309200()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_5(v4);

  return sub_254306E68(v6, v7, v8, v9, v10);
}

uint64_t sub_2543092F0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_254306A5C(a1);
}

uint64_t sub_254309314()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25430934C()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_4(v1);

  return sub_254306400(v3, v4);
}

uint64_t sub_2543093EC()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_4(v1);

  return sub_25430651C(v3, v4);
}

uint64_t sub_2543094B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2542D6250(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2543094F8()
{
  result = qword_27F5DF2C8;
  if (!qword_27F5DF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF2C0, &qword_2543A6870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF2C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9()
{
  v2 = *(v0 + 48);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_12_6(unint64_t *a1)
{

  return sub_254308E3C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_18_2@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 152) = v1 - a1;
  *(v3 - 88) = v2;
  *(v3 - 128) = 0;
  *(v3 - 120) = 0xE000000000000000;

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v2 = v0[4];
  v3 = v0[6];
  v6 = v0[5];
  v4 = v0[8];

  return sub_2543A1F88();
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  v4 = *(v2 - 128);
  v3 = *(v2 - 120);
  *(v2 - 128) = v1;
  *(v2 - 120) = *(v0 + 88);
  *(v2 - 104) = *(v0 + 104);
  return type metadata accessor for CoordinationTransportServer();
}

uint64_t OUTLINED_FUNCTION_31_2@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 144) = &a2 - a1;

  return sub_2543A1F88();
}

void OUTLINED_FUNCTION_34_1()
{
  *(v1 - 160) = v0;
  *(v1 - 120) = 0;
  *(v1 - 112) = 0xE000000000000000;
}

void OUTLINED_FUNCTION_35_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

void OUTLINED_FUNCTION_36_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_2543A27E8();
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_beginAccess();
}

uint64_t sub_2543098B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461657263 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7373696D736964 && a2 == 0xE700000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657A6F6F6E73 && a2 == 0xE600000000000000;
        if (v8 || (sub_2543A3608() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2543A3608();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_254309A50(char a1)
{
  result = 0x657461657263;
  switch(a1)
  {
    case 1:
      result = 0x6574656C6564;
      break;
    case 2:
      result = 0x7373696D736964;
      break;
    case 3:
      result = 0x657A6F6F6E73;
      break;
    case 4:
      result = 0x657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254309AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543098B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254309B1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254309A48();
  *a1 = result;
  return result;
}

uint64_t sub_254309B44(uint64_t a1)
{
  v2 = sub_25430A27C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309B80(uint64_t a1)
{
  v2 = sub_25430A27C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309BBC(uint64_t a1)
{
  v2 = sub_25430A420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309BF8(uint64_t a1)
{
  v2 = sub_25430A420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309C34(uint64_t a1)
{
  v2 = sub_25430A3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309C70(uint64_t a1)
{
  v2 = sub_25430A3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309CAC(uint64_t a1)
{
  v2 = sub_25430A378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309CE8(uint64_t a1)
{
  v2 = sub_25430A378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309D24(uint64_t a1)
{
  v2 = sub_25430A324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309D60(uint64_t a1)
{
  v2 = sub_25430A324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309D9C(uint64_t a1)
{
  v2 = sub_25430A2D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309DD8(uint64_t a1)
{
  v2 = sub_25430A2D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPAlarmOperation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04C0, &qword_2543A9C40);
  v4 = OUTLINED_FUNCTION_3(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0();
  v66 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04C8, &qword_2543A9C48);
  v11 = OUTLINED_FUNCTION_3(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0();
  v63 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04D0, &qword_2543A9C50);
  v18 = OUTLINED_FUNCTION_3(v17);
  v61 = v19;
  v62 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_0();
  v60 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04D8, &qword_2543A9C58);
  v25 = OUTLINED_FUNCTION_3(v24);
  v58 = v26;
  v59 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_0();
  v57 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04E0, &qword_2543A9C60);
  v32 = OUTLINED_FUNCTION_3(v31);
  v55 = v33;
  v56 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v36);
  v38 = &v54 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04E8, &qword_2543A9C68);
  OUTLINED_FUNCTION_3(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v44);
  v46 = &v54 - v45;
  v47 = *v1;
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25430A27C();
  sub_2543A3778();
  v49 = (v41 + 8);
  switch(v47)
  {
    case 1:
      v70 = 1;
      sub_25430A3CC();
      v50 = v57;
      OUTLINED_FUNCTION_3_9();
      v52 = v58;
      v51 = v59;
      goto LABEL_7;
    case 2:
      v71 = 2;
      sub_25430A378();
      v50 = v60;
      OUTLINED_FUNCTION_3_9();
      v52 = v61;
      v51 = v62;
      goto LABEL_7;
    case 3:
      v72 = 3;
      sub_25430A324();
      v50 = v63;
      OUTLINED_FUNCTION_3_9();
      v52 = v64;
      v51 = v65;
      goto LABEL_7;
    case 4:
      v73 = 4;
      sub_25430A2D0();
      v50 = v66;
      OUTLINED_FUNCTION_3_9();
      v52 = v67;
      v51 = v68;
LABEL_7:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      v69 = 0;
      sub_25430A420();
      sub_2543A3508();
      (*(v55 + 8))(v38, v56);
      break;
  }

  return (*v49)(v46, v39);
}

unint64_t sub_25430A27C()
{
  result = qword_27F5E04F0;
  if (!qword_27F5E04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E04F0);
  }

  return result;
}

unint64_t sub_25430A2D0()
{
  result = qword_27F5E04F8;
  if (!qword_27F5E04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E04F8);
  }

  return result;
}

unint64_t sub_25430A324()
{
  result = qword_27F5E0500;
  if (!qword_27F5E0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0500);
  }

  return result;
}

unint64_t sub_25430A378()
{
  result = qword_27F5E0508;
  if (!qword_27F5E0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0508);
  }

  return result;
}

unint64_t sub_25430A3CC()
{
  result = qword_27F5E0510;
  if (!qword_27F5E0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0510);
  }

  return result;
}

unint64_t sub_25430A420()
{
  result = qword_27F5E0518;
  if (!qword_27F5E0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0518);
  }

  return result;
}

uint64_t HPAlarmOperation.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

uint64_t HPAlarmOperation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0520, &qword_2543A9C70);
  v81 = OUTLINED_FUNCTION_3(v3);
  v82 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_0();
  v87 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0528, &qword_2543A9C78);
  v79 = OUTLINED_FUNCTION_3(v9);
  v80 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v86 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0530, &qword_2543A9C80);
  v16 = OUTLINED_FUNCTION_3(v15);
  v77 = v17;
  v78 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_0();
  v83 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0538, &qword_2543A9C88);
  v23 = OUTLINED_FUNCTION_3(v22);
  v75 = v24;
  v76 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0540, &qword_2543A9C90);
  OUTLINED_FUNCTION_3(v30);
  v74 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v34);
  v36 = &v69 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0548, &unk_2543A9C98);
  OUTLINED_FUNCTION_3(v37);
  v85 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v41);
  v43 = &v69 - v42;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25430A27C();
  v45 = v88;
  sub_2543A3768();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v72 = v30;
  v73 = v36;
  v88 = v29;
  v46 = v86;
  v47 = v87;
  v48 = v43;
  v49 = sub_2543A34E8();
  sub_2542DF254(v49, 0);
  if (v51 == v52 >> 1)
  {
    v53 = v85;
LABEL_9:
    v62 = sub_2543A32E8();
    swift_allocError();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
    *v64 = &type metadata for HPAlarmOperation;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84160], v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v48, v37);
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v51 >= (v52 >> 1))
  {
    __break(1u);
    JUMPOUT(0x25430AB6CLL);
  }

  v70 = *(v50 + v51);
  v54 = sub_2542DF244(v51 + 1);
  v56 = v55;
  v58 = v57;
  swift_unknownObjectRelease();
  v71 = v54;
  if (v56 != v58 >> 1)
  {
    v53 = v85;
    v48 = v43;
    goto LABEL_9;
  }

  v59 = v84;
  v60 = v85;
  switch(v70)
  {
    case 1:
      v90 = 1;
      sub_25430A3CC();
      v46 = v88;
      OUTLINED_FUNCTION_1_14();
      swift_unknownObjectRelease();
      v68 = v75;
      v67 = v76;
      goto LABEL_15;
    case 2:
      v91 = 2;
      sub_25430A378();
      v46 = v83;
      OUTLINED_FUNCTION_1_14();
      swift_unknownObjectRelease();
      v68 = v77;
      v67 = v78;
      goto LABEL_15;
    case 3:
      v92 = 3;
      sub_25430A324();
      OUTLINED_FUNCTION_1_14();
      swift_unknownObjectRelease();
      v67 = v79;
      v68 = v80;
LABEL_15:
      (*(v68 + 8))(v46, v67);
      break;
    case 4:
      v93 = 4;
      sub_25430A2D0();
      v54 = v43;
      sub_2543A3458();
      swift_unknownObjectRelease();
      (*(v82 + 8))(v47, v81);
      break;
    default:
      v89 = 0;
      sub_25430A420();
      v61 = v73;
      OUTLINED_FUNCTION_1_14();
      swift_unknownObjectRelease();
      (*(v74 + 8))(v61, v72);
      break;
  }

  (*(v60 + 8))(v54, v37);
  *v59 = v70;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_25430ABC0()
{
  result = qword_27F5E0550;
  if (!qword_27F5E0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BetaEnrollment.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25430ACB4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x25430AD80);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25430AE0C()
{
  result = qword_27F5E0558;
  if (!qword_27F5E0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0558);
  }

  return result;
}

unint64_t sub_25430AE64()
{
  result = qword_27F5E0560;
  if (!qword_27F5E0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0560);
  }

  return result;
}

unint64_t sub_25430AEBC()
{
  result = qword_27F5E0568;
  if (!qword_27F5E0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0568);
  }

  return result;
}

unint64_t sub_25430AF14()
{
  result = qword_27F5E0570;
  if (!qword_27F5E0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0570);
  }

  return result;
}

unint64_t sub_25430AF6C()
{
  result = qword_27F5E0578;
  if (!qword_27F5E0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0578);
  }

  return result;
}

unint64_t sub_25430AFC4()
{
  result = qword_27F5E0580;
  if (!qword_27F5E0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0580);
  }

  return result;
}

unint64_t sub_25430B01C()
{
  result = qword_27F5E0588;
  if (!qword_27F5E0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0588);
  }

  return result;
}

unint64_t sub_25430B074()
{
  result = qword_27F5E0590;
  if (!qword_27F5E0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0590);
  }

  return result;
}

unint64_t sub_25430B0CC()
{
  result = qword_27F5E0598;
  if (!qword_27F5E0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0598);
  }

  return result;
}

unint64_t sub_25430B124()
{
  result = qword_27F5E05A0;
  if (!qword_27F5E05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05A0);
  }

  return result;
}

unint64_t sub_25430B17C()
{
  result = qword_27F5E05A8;
  if (!qword_27F5E05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05A8);
  }

  return result;
}

unint64_t sub_25430B1D4()
{
  result = qword_27F5E05B0;
  if (!qword_27F5E05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05B0);
  }

  return result;
}

unint64_t sub_25430B22C()
{
  result = qword_27F5E05B8;
  if (!qword_27F5E05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_2543A3458();
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_2543A3508();
}

uint64_t CarrySettings.DataModelUpdateResponse.success.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  OUTLINED_FUNCTION_97();
  return *(v0 + v1);
}

uint64_t CarrySettings.DataModelUpdateResponse.success.setter(char a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  result = OUTLINED_FUNCTION_2_5();
  *(v1 + v3) = a1;
  return result;
}

void *CarrySettings.DataModelUpdateResponse.error.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_97();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CarrySettings.DataModelUpdateResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_2_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CarrySettings.DataModelUpdateResponse.init(result:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error] = 0;
  if (v4 == 1)
  {
    v4 = 0;
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success] = 1;
  }

  else
  {
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success] = 0;
  }

  swift_beginAccess();
  *&v1[v5] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CarrySettings.DataModelUpdateResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CarrySettings.DataModelUpdateResponse.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error] = 0;
  v5 = sub_2543A2858();
  v6 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success] = v6;
  v7 = sub_2543A2858();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    sub_2542F464C();
    if (swift_dynamicCast())
    {
      v9 = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_2542E1050(v17);
    v9 = 0;
  }

  swift_beginAccess();
  v10 = *&v1[v4];
  *&v1[v4] = v9;

  v14.receiver = v1;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_init);

  return v11;
}

Swift::Void __swiftcall CarrySettings.DataModelUpdateResponse.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  OUTLINED_FUNCTION_97();
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_97();
  v7 = *(v1 + v6);
  v8 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

uint64_t CarrySettings.DataModelUpdateResponse.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v16);
  if (!v17)
  {
    sub_2542E1050(v16);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v15;
    if (v15 == v1)
    {
    }

    else
    {
      v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
      OUTLINED_FUNCTION_97();
      LODWORD(v4) = v1[v4];
      v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
      OUTLINED_FUNCTION_97();
      if (v4 != v15[v5])
      {
LABEL_5:

        return 0;
      }

      v7 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
      OUTLINED_FUNCTION_97();
      v8 = *&v1[v7];
      v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
      OUTLINED_FUNCTION_97();
      v10 = *&v15[v9];
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        sub_2542F464C();
        v11 = v10;
        v12 = v8;
        v13 = sub_2543A30B8();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v10;

        if (v10)
        {
          v3 = v14;
          goto LABEL_5;
        }
      }
    }

    return 1;
  }

  return 0;
}

id CarrySettings.DataModelUpdateResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.DataModelUpdateResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CarrySettings.DataModelUpdateResponse.description.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_97();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = [v3 localizedDescription];
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000019, 0x80000002543B8800);
  sub_2543A3358();
  MEMORY[0x259C093D0](0x736563637573203ALL, 0xEA00000000003D73);
  v8 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  OUTLINED_FUNCTION_97();
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x259C093D0](v9, v10);

  MEMORY[0x259C093D0](0x3D727265202CLL, 0xE600000000000000);
  MEMORY[0x259C093D0](v5, v7);

  MEMORY[0x259C093D0](62, 0xE100000000000000);
  return 0;
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O23DataModelUpdateResponseC6ResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25430BD74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

void *sub_25430BDD0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_25430BE30(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_25430BF14;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_25430BF14()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

_BYTE *storeEnumTagSinglePayload for MessageSerializingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25430C0D4);
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

unint64_t sub_25430C120()
{
  result = qword_27F5E05D0;
  if (!qword_27F5E05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05D0);
  }

  return result;
}

uint64_t sub_25430C174(uint64_t a1)
{
  v2 = sub_25430C1EC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25430C1B0(uint64_t a1)
{
  v2 = sub_25430C1EC();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_25430C1EC()
{
  result = qword_27F5E05D8;
  if (!qword_27F5E05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05D8);
  }

  return result;
}

uint64_t CarrySettings.InstallProfileRequest.audienceIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier);
  OUTLINED_FUNCTION_97();
  v3 = *v1;
  v2 = v1[1];
  sub_2543A2768();
  return v3;
}

uint64_t CarrySettings.InstallProfileRequest.profileData.getter()
{
  v1 = v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData;
  OUTLINED_FUNCTION_97();
  v2 = *v1;
  sub_2542D61B4(*v1, *(v1 + 8));
  return v2;
}

uint64_t CarrySettings.InstallProfileRequest.profileVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
  result = OUTLINED_FUNCTION_97();
  *a1 = *(v1 + v3);
  return result;
}

id CarrySettings.InstallProfileRequest.init(profileData:variant:audienceIdentifier:)()
{
  OUTLINED_FUNCTION_3_4();
  ObjectType = swift_getObjectType();
  v7 = *v3;
  v8 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier];
  *v8 = 0;
  v8[1] = 0;
  OUTLINED_FUNCTION_3_10();
  *v8 = v2;
  v8[1] = v0;
  v9 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
  *v9 = v5;
  v9[1] = v4;
  v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant] = v7;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_25430C424(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier];
  sub_25430CAE0();
  *v5 = 0;
  v5[1] = 0;
  v6 = sub_2543A3088();
  v19 = 0;
  v20 = 0;
  sub_2543A2868();

  OUTLINED_FUNCTION_3_10();
  v7 = v5[1];
  *v5 = 0;
  v5[1] = 0;

  v8 = sub_25430DA38();
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = 0xC000000000000000;
  if (v9 >> 60 != 15)
  {
    v11 = v9;
  }

  v12 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
  *v12 = v10;
  v12[1] = v11;
  v13 = sub_2543A2858();
  v14 = [a1 decodeIntegerForKey_];

  if (v14 >= 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant] = v15;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

Swift::Void __swiftcall CarrySettings.InstallProfileRequest.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier);
  OUTLINED_FUNCTION_97();
  if (v3[1])
  {
    v4 = *v3;
    sub_2543A2768();
    OUTLINED_FUNCTION_2_12();
    v5 = sub_2543A2858();

    v6 = sub_2543A2858();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  v7 = (v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData);
  OUTLINED_FUNCTION_97();
  v9 = *v7;
  v8 = v7[1];
  v10 = OUTLINED_FUNCTION_2_12();
  sub_2542D61B4(v10, v11);
  OUTLINED_FUNCTION_2_12();
  v12 = sub_2543A1EC8();
  v13 = OUTLINED_FUNCTION_2_12();
  sub_2542D7D40(v13, v14);
  v15 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v15];

  v16 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
  OUTLINED_FUNCTION_97();
  v17 = *(v1 + v16);
  v18 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeInteger:v17 forKey:v18];
}

BOOL CarrySettings.InstallProfileRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v21);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      if (v20 == v1)
      {

        return 1;
      }

      v3 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier];
      OUTLINED_FUNCTION_97();
      v4 = *v3;
      v5 = *(v3 + 1);
      v6 = &v20[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier];
      OUTLINED_FUNCTION_97();
      v7 = *(v6 + 1);
      if (v5)
      {
        if (!v7)
        {
          goto LABEL_17;
        }

        v8 = v4 == *v6 && v5 == v7;
        if (!v8 && (sub_2543A3608() & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v7)
      {
LABEL_17:

        return 0;
      }

      v10 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
      OUTLINED_FUNCTION_97();
      v12 = *v10;
      v11 = v10[1];
      v13 = &v20[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
      OUTLINED_FUNCTION_97();
      v15 = *v13;
      v14 = v13[1];
      sub_2542D61B4(v12, v11);
      sub_2542D61B4(v15, v14);
      v16 = MEMORY[0x259C089B0](v12, v11, v15, v14);
      sub_2542D7D40(v15, v14);
      sub_2542D7D40(v12, v11);
      if (v16)
      {
        v17 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
        OUTLINED_FUNCTION_97();
        v18 = v1[v17];
        v19 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
        OUTLINED_FUNCTION_97();
        LODWORD(v19) = v20[v19];

        return v18 == v19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_2542E1050(v21);
  }

  return 0;
}

id CarrySettings.InstallProfileRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.InstallProfileRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25430CAE0()
{
  result = qword_27F5E2760;
  if (!qword_27F5E2760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5E2760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return swift_beginAccess();
}

uint64_t HPTimerError.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

unint64_t sub_25430CBE8()
{
  result = qword_27F5E05F8;
  if (!qword_27F5E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05F8);
  }

  return result;
}

unint64_t sub_25430CC40()
{
  result = qword_27F5E0600;
  if (!qword_27F5E0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0600);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HPTimerError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25430CD60);
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

uint64_t sub_25430CDC0(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a1;
  v84 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_11();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_2543A1FF8();
  v8 = OUTLINED_FUNCTION_3(v7);
  v82 = v9;
  v83 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_0();
  v80 = v13;
  v81 = *(AssociatedTypeWitness - 8);
  v14 = *(v81 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0();
  v79 = v16;
  v17 = OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_2_13();
  v18 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v19 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v92 = v17;
  v93 = v18;
  v94 = v19;
  v95 = swift_getAssociatedConformanceWitness();
  updated = type metadata accessor for ObservationUpdateScope();
  v20 = sub_2543A30C8();
  OUTLINED_FUNCTION_3(v20);
  v77 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_0();
  v75 = v25;
  v26 = OUTLINED_FUNCTION_3_11();
  v78 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3(TupleTypeMetadata2);
  v74 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_0();
  v73 = v31;
  v90 = v26;
  v88 = *(v26 - 8);
  v32 = *(v88 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_0();
  v72 = v34;
  v35 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(v35);
  v86 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_0();
  v85 = v40;
  OUTLINED_FUNCTION_2_13();
  v41 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v42 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v43 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v92 = v35;
  v93 = AssociatedTypeWitness;
  v94 = v41;
  v95 = v42;
  v96 = v43;
  v97 = swift_getAssociatedConformanceWitness();
  v98 = AssociatedConformanceWitness;
  v44 = type metadata accessor for UpdateResult();
  OUTLINED_FUNCTION_3(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v47);
  v49 = &v71 - v48;
  (*(v50 + 16))(&v71 - v48, v91, v44);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = v81;
    v52 = v79;
    (*(v81 + 32))(v79, v49, AssociatedTypeWitness);
    v53 = *(a4 + 64);
    v54 = OUTLINED_FUNCTION_5_10();
    v55(v54);
    v56 = v80;
    (*(v51 + 16))(v80, v52, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, AssociatedTypeWitness);
    sub_2543A2088();

    (*(v82 + 8))(v56, v83);
    return (*(v51 + 8))(v52, AssociatedTypeWitness);
  }

  else
  {
    v58 = v85;
    (*(v86 + 32))(v85, v49, v35);
    v83 = *(a4 + 64);
    v59 = OUTLINED_FUNCTION_5_10();
    v60(v59);
    v61 = v73;
    sub_2543A20A8();

    AssociatedConformanceWitness = *(v88 + 16);
    v82 = a4 + 64;
    v62 = v72;
    AssociatedConformanceWitness(v72, v61, v90);
    v91 = *(v74 + 8);
    v91(v61, TupleTypeMetadata2);
    v63 = v58;
    v64 = v84;
    (*(a4 + 72))(v62, v63, v84, a3, a4);
    v65 = OUTLINED_FUNCTION_5_10();
    v83(v65);
    v66 = updated;
    v67 = v75;
    (*(*(updated - 8) + 16))(v75, v64, updated);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v66);
    v69 = TupleTypeMetadata2;
    v68 = v90;
    v70 = *(TupleTypeMetadata2 + 48);
    AssociatedConformanceWitness(v61, v62, v90);
    (*(v77 + 32))(v61 + v70, v67, v78);
    sub_2543A2098();

    v91(v61, v69);
    (*(v88 + 8))(v62, v68);
    return (*(v86 + 8))(v85, v35);
  }
}

unint64_t sub_25430D598()
{
  sub_2543A3298();

  v0 = OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_5_10();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = (*(*(AssociatedConformanceWitness + 8) + 32))(v0);
  MEMORY[0x259C093D0](v2);

  MEMORY[0x259C093D0](0x6574656772617420, 0xEC0000003D794264);
  OUTLINED_FUNCTION_6_8();
  v3 = sub_2543A37B8();
  MEMORY[0x259C093D0](v3);

  return 0xD000000000000012;
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_getAssociatedTypeWitness();
}

void sub_25430D714()
{
  [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  OUTLINED_FUNCTION_0_18();
  sub_2543A3018();
  if (!v1)
  {
    [v0 finishEncoding];
    v2 = [v0 encodedData];
    v3 = sub_2543A1EF8();
    v5 = v4;

    v6 = sub_2543A1EC8();
    sub_2542D7D40(v3, v5);
    OUTLINED_FUNCTION_7_2();
    v7 = sub_2543A2858();
    [v0 encodeObject:v6 forKey:v7];

    v0 = v7;
  }
}

uint64_t sub_25430D830@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_25430DA38();
  if (v4 >> 60 == 15)
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, a1);
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v6 = OUTLINED_FUNCTION_7_2();
    sub_2542D61B4(v6, v7);
    v8 = OUTLINED_FUNCTION_7_2();
    sub_25430DAA8(v8, v9);
    OUTLINED_FUNCTION_0_18();
    sub_2543A3028();

    v11 = OUTLINED_FUNCTION_7_2();

    return sub_2542E5880(v11, v12);
  }
}

uint64_t sub_25430D964()
{
  v1 = sub_2543A2858();
  v2 = [v0 decodeObjectForKey_];

  if (v2)
  {
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2542E1050(v7);
    return 0;
  }
}

uint64_t sub_25430DA38()
{
  sub_25430DB88();
  v0 = sub_2543A3088();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_2543A1EF8();

  return v2;
}

id sub_25430DAA8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2543A1EC8();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_2543A1E88();

    swift_willThrow();
  }

  sub_2542D7D40(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_25430DB88()
{
  result = qword_27F5E0608;
  if (!qword_27F5E0608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5E0608);
  }

  return result;
}

uint64_t TransportClientCoordinator.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  TransportClientCoordinator.init()();
  return v3;
}

uint64_t TransportClientCoordinator.init()()
{
  sub_2543A1FA8();
  *(v0 + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients) = MEMORY[0x277D84F90];
  return v0;
}

void sub_25430DCAC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0[7] + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients);
  v0[8] = v1;
  v2 = *(v1 + 16);
  v0[9] = v2;
  v0[10] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_2543004CC(v1 + 32, (v0 + 2));
      v3 = *(OUTLINED_FUNCTION_1_15() + 8);
      OUTLINED_FUNCTION_5_6();
      v13 = v4 + *v4;
      v6 = *(v5 + 4);
      v7 = swift_task_alloc();
      v8 = OUTLINED_FUNCTION_10_7(v7);
      *v8 = v9;
      v10 = OUTLINED_FUNCTION_0_19(v8);

      v11(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27();

    v12();
  }
}

uint64_t sub_25430DE08()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *(v2 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 96) = v0;

  __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  if (v0)
  {
    v7 = sub_2542E9C18;
  }

  else
  {
    v7 = sub_25430DF14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_25430DF14()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[9];
  v2 = v0[10] + 1;
  v0[10] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_27();

    v3();
  }

  else if (v2 >= *(v0[8] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_6(v2);
    v4 = *(OUTLINED_FUNCTION_1_15() + 8);
    OUTLINED_FUNCTION_5_6();
    v13 = v5 + *v5;
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_10_7(v8);
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_0_19(v9);

    v12(v11);
  }
}

uint64_t sub_25430E078()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0[7] + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients);
  v0[8] = v1;
  v2 = *(v1 + 16);
  v0[9] = v2;
  if (v2)
  {
    v0[10] = 0;
    sub_2543004CC(v1 + 32, (v0 + 2));
    v3 = *(OUTLINED_FUNCTION_1_15() + 16);
    OUTLINED_FUNCTION_5_6();
    v14 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_10_7(v7);
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_0_19(v8);

    return v11(v10);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v13();
  }
}

uint64_t sub_25430E1C8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));

  return MEMORY[0x2822009F8](sub_25430E2BC, 0, 0);
}

uint64_t sub_25430E2BC()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {
    OUTLINED_FUNCTION_27();

    return v2();
  }

  else
  {
    v0[10] = v1;
    v4 = v0[8];
    OUTLINED_FUNCTION_11_6(v1);
    v5 = *(OUTLINED_FUNCTION_1_15() + 16);
    OUTLINED_FUNCTION_5_6();
    v14 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_10_7(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_0_19(v10);

    return v13(v12);
  }
}

uint64_t TransportClientCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_logger;
  v2 = sub_2543A1FB8();
  OUTLINED_FUNCTION_2_3(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients);

  return v0;
}

uint64_t TransportClientCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_logger;
  v2 = sub_2543A1FB8();
  OUTLINED_FUNCTION_2_3(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for TransportClientCoordinator()
{
  result = qword_27F5E0620;
  if (!qword_27F5E0620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25430E550()
{
  result = sub_2543A1FB8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TransportClientCoordinator.activate()()
{
  v2 = *(*v0 + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542D32CC;

  return v6();
}

uint64_t dispatch thunk of TransportClientCoordinator.deactivate()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542D32CC;

  return v6();
}

uint64_t OUTLINED_FUNCTION_1_15()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_6@<X0>(uint64_t a1@<X8>)
{

  return sub_2543004CC(v1 + 40 * a1 + 32, v2 + 16);
}

uint64_t (*sub_25430E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char *a2)
{
  v8 = swift_allocObject();
  v9 = *(v4 + 88);
  v8[2] = *(v4 + 80);
  v8[3] = a3;
  v8[4] = v9;
  v8[5] = a4;
  v8[6] = a2;
  v8[7] = v4;
  sub_2543A2768();
  return sub_25430F00C;
}

uint64_t sub_25430E938(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a4;
  v66 = a3;
  v67 = a1;
  v68 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v55 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ObservationScope();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v61 = AssociatedTypeWitness;
  v69 = AssociatedTypeWitness;
  v70 = v14;
  v71 = v15;
  v72 = AssociatedConformanceWitness;
  v55 = AssociatedConformanceWitness;
  updated = type metadata accessor for ObservationUpdateScope();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(*(TupleTypeMetadata2 - 8) + 64);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v65 = &v55 - v19;
  v63 = *(updated - 8);
  v20 = *(v63 + 64);
  MEMORY[0x28223BE20](v18);
  v62 = &v55 - v21;
  v58 = a8;
  v59 = a6;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_2543A30C8();
  v24 = swift_getTupleTypeMetadata2();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v55 - v30;
  v32 = *(v22 - 8);
  (*(v32 + 16))(&v55 - v30, v67, v22);
  v33 = *(v23 - 8);
  (*(v33 + 16))(&v31[*(v24 + 48)], v68, v23);
  (*(v25 + 16))(v29, v31, v24);
  v34 = *(v24 + 48);
  if (__swift_getEnumTagSinglePayload(&v29[v34], 1, updated) == 1)
  {
    (*(v25 + 8))(v31, v24);
    (*(v33 + 8))(&v29[v34], v23);
    (*(v32 + 8))(v29, v22);
  }

  else
  {
    v68 = v31;
    v35 = v24;
    v37 = v62;
    v36 = v63;
    (*(v63 + 32))(v62, &v29[v34], updated);
    (*(v32 + 8))(v29, v22);
    v38 = v65;
    v39 = *(TupleTypeMetadata2 + 48);
    (*(v36 + 16))(&v65[v39], v37, updated);
    v40 = v36;
    v41 = v37;
    if (!v66)
    {
      v50 = *(v40 + 8);
      v50(v37, updated);
      (*(v25 + 8))(v68, v35);
      v50(&v38[v39], updated);
      v49 = 1;
      return v49 & 1;
    }

    v42 = v61;
    v43 = v35;
    if (__swift_getEnumTagSinglePayload(&v38[v39], 1, v61) != 1)
    {
      v51 = v57;
      v52 = &v38[v39];
      v53 = v56;
      (*(v57 + 32))(v56, v52, v42);
      v49 = sub_2543A2E98();
      (*(v51 + 8))(v53, v42);
      (*(v40 + 8))(v41, updated);
      (*(v25 + 8))(v68, v43);
      return v49 & 1;
    }

    v69 = 0;
    v70 = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000032, 0x80000002543B89A0);
    v44 = (*(*(v58 + 8) + 32))();
    MEMORY[0x259C093D0](v44);

    v45 = v69;
    v46 = v70;
    v47 = v60;
    v48 = sub_2542DF684();
    static Logging.ulog(_:_:extended:)(90, v45, v46, v48 & 1, v47, &off_286648A78);

    (*(v40 + 8))(v41, updated);
    (*(v25 + 8))(v68, v35);
  }

  v49 = 0;
  return v49 & 1;
}

uint64_t sub_25430EFD4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_25430F01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for ObservationManager.ObservationKey();
  if (v3 <= 0x3F)
  {
    sub_25430F4F8();
    if (v4 <= 0x3F)
    {
      sub_25430F558();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_25430F0A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = 32;
  if (v9 > 0x20)
  {
    v10 = v9;
  }

  v11 = 252 - (2u >> (8 * v10));
  if (v10 >= 4)
  {
    v11 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_24;
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v16 = ((~(-1 << v13) + a2 - v11) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v16 < 2)
    {
LABEL_24:
      v18 = *(a1 + v10);
      if (v11 <= (v18 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v18);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_24;
  }

LABEL_16:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return (v12 | v17) + v11 + 1;
}

void sub_25430F278(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((*(v9 + 80) + 16) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= 0x20)
  {
    v10 = 32;
  }

  if (v10 >= 4)
  {
    v11 = 252;
  }

  else
  {
    v11 = 252 - (2u >> (8 * v10));
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if (v11 >= a3)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((~(-1 << v13) + a3 - v11) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v11 < a2)
  {
    v15 = ~v11 + a2;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v10 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        return;
      case 2:
        *&a1[v12] = v16;
        return;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v12] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_40:
      __break(1u);
      JUMPOUT(0x25430F4B8);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        a1[v10] = -a2;
      }

      return;
  }
}

void sub_25430F4F8()
{
  if (!qword_27F5E06B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5E06B0);
    }
  }
}

unint64_t sub_25430F558()
{
  result = qword_27F5E06B8[0];
  if (!qword_27F5E06B8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27F5E06B8);
  }

  return result;
}

uint64_t sub_25430F604()
{
  v0 = swift_allocObject();
  sub_25430F63C();
  return v0;
}

uint64_t *sub_25430F63C()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v0[14] = sub_2543A26F8();
  return v0;
}

uint64_t sub_25430F6A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  swift_beginAccess();
  v12 = v1[14];
  v13 = *(v3 + 88);
  sub_2543A2768();
  v14 = sub_2543A2E78();

  (*(v5 + 16))(v9, a1, v4);
  swift_beginAccess();
  sub_2543A2EB8();
  v15 = sub_2543A2E58();
  (*(v5 + 8))(v11, v4);
  swift_endAccess();
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return v16 | v15 & 1u & v14;
}

uint64_t sub_25430F86C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  sub_2543A2EB8();
  sub_2543A2E68();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = v1[14];
    sub_2543A2768();
    v6 = sub_2543A2E78();
  }

  return v6 & 1;
}

uint64_t sub_25430F960()
{
  sub_2542D3AF4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25430F9B0()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  return sub_2543A2768();
}

uint64_t sub_25430FA50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25430FA8C()
{
  v1 = *(*v0 + 80);
  v2 = sub_2543A30C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = sub_25430F86C(v7);
  (*(v3 + 32))(v9, v7, v2);
  __swift_getEnumTagSinglePayload(v9, 1, v1);
  (*(v3 + 8))(v9, v2);
  return v10 & 1;
}

uint64_t sub_25430FBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for CarrySettings.BufferItem();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

HomePodSettings::CarrySettings::ProfileVariant_optional __swiftcall CarrySettings.ProfileVariant.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25430FCF8@<X0>(uint64_t *a1@<X8>)
{
  result = CarrySettings.ProfileVariant.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t CarrySettings.ProfileContext.audienceIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2543A2768();
  return v1;
}

uint64_t static CarrySettings.ProfileContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (sub_2543A3608() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_25430FE7C()
{
  result = qword_27F5E0740[0];
  if (!qword_27F5E0740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E0740);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarrySettings(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25430FF70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarrySettings.ProfileVariant(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x254310070);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2543100A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2543100F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_254310160(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2543101E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xC)
  {
    v8 = 12;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xC)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1) >> 60;
      if (((4 * v16) & 0xC) != 0)
      {
        return 16 - ((4 * v16) & 0xC | (v16 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_254310384(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2543105E4);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v8 > 0xC)
        {
          v21 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else if (a2 > 0xC)
        {
          *a1 = (a2 - 13);
          *(a1 + 1) = 0;
        }

        else
        {
          *a1 = 0;
          *(a1 + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
        }
      }

      return;
  }
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O15NetworkingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25431063C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254310698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_2543106F4()
{
  result = qword_27F5E07C8;
  if (!qword_27F5E07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E07C8);
  }

  return result;
}

uint64_t TransportRequestHandlerService.canHandle<A>(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a4 + 24))(a2, a4);
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  while (1)
  {
    if (v12 == v11)
    {
LABEL_6:

      return v12 != v11;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v13 = *(v10 + 16 * v11 + 32);
    result = sub_254310818(&v13, a2, a3, a4, a5);
    if (result)
    {
      goto LABEL_6;
    }

    ++v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_254310818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a1[1] + 32))(*a1);
  v9 = v8;
  if (v7 == (*(a5 + 32))(a3, a5) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2543A3608();
  }

  return v12 & 1;
}

uint64_t dispatch thunk of TransportRequestHandlerService.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2542FE220;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TransportRequestHandlerService.handleRequest<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 40);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2542DF754;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of TransportRequestHandlerService.handleLostMember(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2542DF754;

  return v11(a1, a2, a3);
}

id BetaEnrollment.ModelCoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_254310D28()
{
  result = *(v0 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID);
  v2 = *(v0 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID + 8);
  return result;
}

uint64_t sub_254310D40(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_254310D6C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms);
  *(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms) = a1;
}

id sub_254310D84()
{
  v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability] = 2;
  v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state] = 5;
  v1 = &v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID];
  *v1 = 0;
  v1[8] = 1;
  *&v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms] = 0;
  v3.receiver = v0;
  v3.super_class = _s10ModelCoderC9ContainerCMa();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_254310E20(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability;
  v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability] = 2;
  v5 = OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state;
  v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state] = 5;
  v6 = &v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms;
  *&v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms] = 0;
  v8 = sub_2543A2858();
  v9 = OUTLINED_FUNCTION_0_20();
  v11 = [v9 v10];

  if (v11)
  {
    v12 = sub_2543A2858();
    v13 = OUTLINED_FUNCTION_0_20();
    v15 = [v13 v14];

    v16 = 5;
    if (v15 < 5)
    {
      v16 = v15;
    }

    v2[v5] = v16;
  }

  v17 = sub_2543A2858();
  v18 = OUTLINED_FUNCTION_0_20();
  v20 = [v18 v19];

  if (v20)
  {
    v21 = sub_2543A2858();
    v22 = OUTLINED_FUNCTION_0_20();
    v24 = [v22 v23];

    if (v24 == 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (!v24)
    {
      v25 = 0;
    }

    v2[v4] = v25;
  }

  v26 = OUTLINED_FUNCTION_6_4();
  v27 = OUTLINED_FUNCTION_0_20();
  v29 = [v27 v28];

  if (v29)
  {
    v30 = OUTLINED_FUNCTION_6_4();
    v31 = OUTLINED_FUNCTION_0_20();
    v33 = [v31 v32];

    *v6 = v33;
    v6[8] = 0;
  }

  v34 = sub_2543A2858();
  v35 = OUTLINED_FUNCTION_0_20();
  v37 = [v35 v36];

  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0800, &qword_2543AAB30);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2543A7DE0;
    *(v38 + 32) = sub_2542D6250(0, &unk_27F5E0808, 0x277CBEA60);
    *(v38 + 40) = type metadata accessor for BetaProgram();
    sub_2543A3098();

    if (v56)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0818, qword_2543AAB38);
      OUTLINED_FUNCTION_4_8(v39, v40, v41, v39, v42, v43, v44, v45, v52, v53);
      v46 = swift_dynamicCast();
      v47 = v54;
      if (!v46)
      {
        v47 = 0;
      }
    }

    else
    {
      sub_2542E1050(v55);
      v47 = 0;
    }

    v48 = *&v2[v7];
    *&v2[v7] = v47;
  }

  v49 = _s10ModelCoderC9ContainerCMa();
  v57.receiver = v2;
  v57.super_class = v49;
  v50 = objc_msgSendSuper2(&v57, sel_init);

  return v50;
}

void sub_254311104(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability);
  if (v3 != 2)
  {
    v4 = sub_2543A2858();
    [a1 encodeInteger:v3 & 1 forKey:v4];
  }

  if (*(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state) != 5)
  {
    v5 = sub_2543A2858();
    OUTLINED_FUNCTION_1_16(v5);
  }

  if ((*(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID + 8) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID);
    v7 = OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_1_16(v7);
  }

  if (*(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms))
  {
    type metadata accessor for BetaProgram();
    sub_2543A2768();
    v8 = sub_2543A2A38();

    v9 = sub_2543A2858();
    [a1 encodeObject:v8 forKey:v9];
  }
}

void sub_254311378(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  sub_2543A3048();
  if (!v3)
  {
    if (v27)
    {
      v5 = _s10ModelCoderC9ContainerCMa();
      OUTLINED_FUNCTION_4_8(v5, v6, v7, v5, v8, v9, v10, v11, v23, v24);
      if (swift_dynamicCast())
      {
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(a3))
        {
          v13 = v12;
          ObjectType = swift_getObjectType();
          v26[0] = v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability];
          v15 = *(v13 + 16);
          v16 = a3;
          v15(v26, ObjectType, v13);
          v26[0] = v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state];
          (*(v13 + 40))(v26, ObjectType, v13);
          (*(v13 + 64))(*&v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID], v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID + 8], ObjectType, v13);
          v17 = *&v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms];
          v18 = *(v13 + 88);
          v19 = sub_2543A2768();
          v18(v19, ObjectType, v13);
        }

        else
        {
          sub_2542E10B8();
          v21 = swift_allocError();
          OUTLINED_FUNCTION_5_11(v21, v22);
        }

        return;
      }
    }

    else
    {
      sub_2542E1050(v26);
    }

    sub_2542E10B8();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }
}

void *sub_254311660(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1))
  {
    v4 = v3;
    v5 = objc_allocWithZone(_s10ModelCoderC9ContainerCMa());
    v6 = a1;
    v7 = [v5 init];
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v21, ObjectType, v4);
    v7[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability] = v21[0];
    (*(v4 + 32))(v21, ObjectType, v4);
    v7[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state] = v21[0];
    v9 = (*(v4 + 56))(ObjectType, v4);
    v10 = &v7[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID];
    *v10 = v9;
    v10[8] = v11 & 1;
    v12 = (*(v4 + 80))(ObjectType, v4);
    v13 = *&v7[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms];
    *&v7[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms] = v12;

    v14 = objc_opt_self();
    v21[0] = 0;
    v15 = [v14 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v21];
    v16 = v21[0];
    if (v15)
    {
      v1 = sub_2543A1EF8();
    }

    else
    {
      v1 = v16;
      sub_2543A1E88();

      swift_willThrow();
    }
  }

  else
  {
    sub_2542E10B8();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_5_11(v17, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v1;
}

id BetaEnrollment.ModelCoder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BetaEnrollment.ModelCoder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_254311A00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id OUTLINED_FUNCTION_1_16(uint64_t a1)
{

  return [v1 (v3 + 2207)];
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

BOOL sub_254311C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*(a4 + 8))(&v42, a2, a4);
  v7 = v42;
  v8 = a5[1];
  v9 = OUTLINED_FUNCTION_0_21();
  v10(v9);
  if (v7 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v41 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v11 = *(a4 + 32);
  v12 = OUTLINED_FUNCTION_1_17();
  v13(v12);
  v14 = a5[4];
  v15 = OUTLINED_FUNCTION_0_21();
  v16(v15);
  if (v40 == 5)
  {
    if (v39 != 5)
    {
      return 0;
    }
  }

  else if (v39 == 5 || v40 != v39)
  {
    return 0;
  }

  v17 = *(a4 + 56);
  v18 = OUTLINED_FUNCTION_1_17();
  v20 = v19(v18);
  v22 = v21;
  v23 = a5[7];
  v24 = OUTLINED_FUNCTION_0_21();
  v26 = v25(v24);
  if (v22)
  {
    if ((v27 & 1) == 0)
    {
      return 0;
    }

LABEL_16:
    v30 = *(a4 + 80);
    v31 = OUTLINED_FUNCTION_1_17();
    v33 = v32(v31);
    v34 = a5[10];
    v35 = OUTLINED_FUNCTION_0_21();
    v37 = v36(v35);
    if (v33)
    {
      if (v37)
      {
        v38 = sub_2542F560C(v33, v37);

        return (v38 & 1) != 0;
      }
    }

    else if (!v37)
    {
      return 1;
    }

    return 0;
  }

  v28 = v26;
  result = 0;
  if ((v27 & 1) == 0 && v20 == v28)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_254311E68()
{
  swift_getObjectType();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  OUTLINED_FUNCTION_0_2();
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *((v6 & v5) + 0x60);
  v8 = *((v6 & v5) + 0x58);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  OUTLINED_FUNCTION_1_2();
  sub_25430D714();
}

void sub_2543120F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_254311E68();
}

id sub_254312160(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & v4) + 0x50);
  v32 = sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  OUTLINED_FUNCTION_0_2();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = *(*((v5 & v4) + 0x58) + 8);
  OUTLINED_FUNCTION_1_2();
  sub_25430D830(v6, v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {

    (*(v8 + 8))(v13, v32);
    swift_getObjectType();
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v26 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v15 + 32))(v23, v13, v6);
    swift_getObjectType();
    (*(v15 + 16))(v21, v23, v6);
    v27 = sub_2542C6F64(v21);

    (*(v15 + 8))(v23, v6);
    v28 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v29 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v27;
}

BOOL sub_254312538(void *a1)
{
  v6 = [v1 groupID];
  if (v6)
  {
    v4 = v6;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 groupID])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v8 = [v1 groupName];
  if (v8)
  {
    v4 = v8;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 groupName])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v10 = [v1 model];
  if (v10)
  {
    v4 = v10;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 model])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v12 = [v1 name];
  if (v12)
  {
    v4 = v12;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 name])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &selRef_containsValueForKey_ && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v14 = [v1 pairID];
  if (v14)
  {
    v4 = v14;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 pairID])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v16 = [v1 pairName];
  if (v16)
  {
    v4 = v16;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 pairName])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v18 = [v1 roomID];
  if (v18)
  {
    v4 = v18;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 roomID])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v21 = [v1 roomName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2543A2878();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [a1 roomName];
  if (!v26)
  {
    if (!v25)
    {
      return 1;
    }

LABEL_118:

    return 0;
  }

  v27 = v26;
  v28 = sub_2543A2878();
  v30 = v29;

  if (!v25)
  {
    if (!v30)
    {
      return 1;
    }

    goto LABEL_118;
  }

  if (!v30)
  {
    goto LABEL_118;
  }

  if (v23 != v28 || v25 != v30)
  {
    v32 = sub_2543A3608();

    return (v32 & 1) != 0;
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return sub_2543A3608();
}

uint64_t OUTLINED_FUNCTION_2_16()
{
}

void OUTLINED_FUNCTION_3_12()
{
}

void OUTLINED_FUNCTION_4_9()
{
}

__n128 AlarmOperationResponse.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t AlarmOperationResponse.subscript.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2542D61B4(*v0, v3);
  swift_getAtKeyPath();
  return sub_2542D7D40(v2, v3);
}

uint64_t sub_254312BBC(uint64_t a1)
{
  v2 = sub_254312D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254312BF8(uint64_t a1)
{
  v2 = sub_254312D50();

  return MEMORY[0x2821FE720](a1, v2);
}

void AlarmOperationResponse.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08A0, &qword_2543AABD0);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_11_7();
  sub_254312D50();
  OUTLINED_FUNCTION_8_6();
  v11 = v9;
  v12 = v10;
  sub_254312DA4();
  sub_2543A3578();
  sub_2542D7D40(v11, v12);
  (*(v3 + 8))(v8, v1);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254312D50()
{
  result = qword_27F5E08A8;
  if (!qword_27F5E08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08A8);
  }

  return result;
}

unint64_t sub_254312DA4()
{
  result = qword_27F5E08B0;
  if (!qword_27F5E08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08B0);
  }

  return result;
}

void AlarmOperationResponse.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08B8, &qword_2543AABD8);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  v12 = &v13 - v11;
  OUTLINED_FUNCTION_23_1();
  sub_254312D50();
  sub_2543A3768();
  if (!v0)
  {
    sub_254312F38();
    sub_2543A34D8();
    (*(v7 + 8))(v12, v5);
    *v4 = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254312F38()
{
  result = qword_27F5E08C0;
  if (!qword_27F5E08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08C0);
  }

  return result;
}

__n128 AlarmOperationRequest.Payload.init(operation:alarm:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t sub_254312FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D72616C61 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543130B8(char a1)
{
  if (a1)
  {
    return 0x6D72616C61;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_2543130F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254312FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254313120(uint64_t a1)
{
  v2 = sub_254313304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25431315C(uint64_t a1)
{
  v2 = sub_254313304();

  return MEMORY[0x2821FE720](a1, v2);
}

void AlarmOperationRequest.Payload.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v17 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08C8, &qword_2543AABE0);
  OUTLINED_FUNCTION_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = *v0;
  v13 = *(v0 + 2);
  v16 = *(v0 + 1);
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_254313304();
  OUTLINED_FUNCTION_8_6();
  LOBYTE(v18) = v12;
  sub_254313358();
  OUTLINED_FUNCTION_12_7();
  v15 = v17;
  sub_2543A3578();
  if (!v15)
  {
    v18 = v16;
    v19 = v13;
    sub_2542D61B4(v16, v13);
    sub_254312DA4();
    OUTLINED_FUNCTION_12_7();
    sub_2543A3578();
    sub_2542D7D40(v18, v19);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254313304()
{
  result = qword_27F5E08D0;
  if (!qword_27F5E08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08D0);
  }

  return result;
}

unint64_t sub_254313358()
{
  result = qword_27F5E08D8;
  if (!qword_27F5E08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08D8);
  }

  return result;
}

void AlarmOperationRequest.Payload.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08E0, &qword_2543AABE8);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_1();
  sub_254313304();
  OUTLINED_FUNCTION_9_6();
  if (!v0)
  {
    sub_254313510();
    OUTLINED_FUNCTION_2_17();
    sub_254312F38();
    OUTLINED_FUNCTION_2_17();
    v9 = OUTLINED_FUNCTION_4_10();
    v10(v9);
    *v4 = v11;
    *(v4 + 8) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254313510()
{
  result = qword_27F5E08E8;
  if (!qword_27F5E08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08E8);
  }

  return result;
}

uint64_t AlarmOperationRequest.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_2542D61B4(v2, v3);
}

__n128 AlarmOperationRequest.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AlarmOperationRequest.subscript.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2542D61B4(v3, v4);
  swift_getAtKeyPath();
  return sub_2542D7D40(v3, v4);
}

uint64_t sub_254313638(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2543136CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254313638(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543136F8(uint64_t a1)
{
  v2 = sub_25431389C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254313734(uint64_t a1)
{
  v2 = sub_25431389C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AlarmOperationRequest.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08F0, &qword_2543AAC08);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  HIDWORD(v11) = *v0;
  v9 = *(v0 + 1);
  v10 = *(v0 + 2);
  OUTLINED_FUNCTION_11_7();
  sub_25431389C();
  OUTLINED_FUNCTION_8_6();
  v12 = BYTE4(v11);
  v13 = v9;
  v14 = v10;
  sub_2543138F0();
  sub_2543A3578();
  sub_2542D7D40(v13, v14);
  (*(v3 + 8))(v8, v1);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_25431389C()
{
  result = qword_27F5E08F8;
  if (!qword_27F5E08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08F8);
  }

  return result;
}

unint64_t sub_2543138F0()
{
  result = qword_27F5E0900;
  if (!qword_27F5E0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0900);
  }

  return result;
}

void AlarmOperationRequest.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0908, &qword_2543AAC10);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_1();
  sub_25431389C();
  OUTLINED_FUNCTION_9_6();
  if (!v0)
  {
    sub_254313A60();
    OUTLINED_FUNCTION_2_17();
    v9 = OUTLINED_FUNCTION_4_10();
    v10(v9);
    *v4 = v11;
    *(v4 + 8) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254313A60()
{
  result = qword_27F5E0910;
  if (!qword_27F5E0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0910);
  }

  return result;
}

unint64_t sub_254313AE0()
{
  result = qword_27F5E0918;
  if (!qword_27F5E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0918);
  }

  return result;
}

unint64_t sub_254313B34()
{
  result = qword_27F5E0920;
  if (!qword_27F5E0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0920);
  }

  return result;
}

unint64_t sub_254313B88(uint64_t a1)
{
  result = sub_254313BB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_254313BB0()
{
  result = qword_27F5E0928;
  if (!qword_27F5E0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0928);
  }

  return result;
}

unint64_t sub_254313C08()
{
  result = qword_27F5E0930;
  if (!qword_27F5E0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0930);
  }

  return result;
}

unint64_t sub_254313C7C(uint64_t a1)
{
  result = sub_254313CA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254313CA4()
{
  result = qword_27F5E0938;
  if (!qword_27F5E0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0938);
  }

  return result;
}

unint64_t sub_254313CF8(uint64_t a1)
{
  result = sub_254313D20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_254313D20()
{
  result = qword_27F5E0940;
  if (!qword_27F5E0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0940);
  }

  return result;
}

uint64_t sub_254313DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_254313DDC()
{
  result = qword_27F5E0948;
  if (!qword_27F5E0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0948);
  }

  return result;
}

unint64_t sub_254313E30()
{
  result = qword_27F5E0950;
  if (!qword_27F5E0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0950);
  }

  return result;
}

uint64_t sub_254313EC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_254313F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_254313F74(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[24])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254313FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlarmOperationRequest.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2543140E4);
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

_BYTE *sub_25431411C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2543141B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2543141F4()
{
  result = qword_27F5E0958;
  if (!qword_27F5E0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0958);
  }

  return result;
}

unint64_t sub_25431424C()
{
  result = qword_27F5E0960;
  if (!qword_27F5E0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0960);
  }

  return result;
}

unint64_t sub_2543142A4()
{
  result = qword_27F5E0968;
  if (!qword_27F5E0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0968);
  }

  return result;
}

unint64_t sub_2543142FC()
{
  result = qword_27F5E0970;
  if (!qword_27F5E0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0970);
  }

  return result;
}

unint64_t sub_254314354()
{
  result = qword_27F5E0978;
  if (!qword_27F5E0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0978);
  }

  return result;
}

unint64_t sub_2543143AC()
{
  result = qword_27F5E0980;
  if (!qword_27F5E0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0980);
  }

  return result;
}

unint64_t sub_254314404()
{
  result = qword_27F5E0988;
  if (!qword_27F5E0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0988);
  }

  return result;
}

unint64_t sub_25431445C()
{
  result = qword_27F5E0990;
  if (!qword_27F5E0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0990);
  }

  return result;
}

unint64_t sub_2543144B4()
{
  result = qword_27F5E0998[0];
  if (!qword_27F5E0998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E0998);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_19@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_2542D61B4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_2543A3778();
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_2543A3768();
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);

  return sub_2542D61B4(v1, v2);
}

uint64_t sub_254314604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x624F657461647075 && a2 == 0xEF676E6976726573;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573624F706F7473 && a2 == 0xED0000676E697672)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543146DC(char a1)
{
  if (a1)
  {
    return 0x6573624F706F7473;
  }

  else
  {
    return 0x624F657461647075;
  }
}

uint64_t sub_25431472C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696E7275746572 && a2 == 0xE900000000000067)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543147F4(char a1)
{
  if (a1)
  {
    return 0x6E696E7275746572;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2543148D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_254314924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_254314978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_2542FA5E0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2543149B0(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_2543149D8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = OUTLINED_FUNCTION_0_1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_254314A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_254314A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_254314AD8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_2542F70E4(*v1);
}

uint64_t sub_254314B1C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_2543A36E8();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_2543A3728();
}

uint64_t sub_254314BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_254314C34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5]);
  *a4 = result;
  return result;
}

uint64_t sub_254314C70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_254314CC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ObservationRequestAction.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  OUTLINED_FUNCTION_13_5();
  v8 = type metadata accessor for ObservationRequestAction.StopObservingCodingKeys();
  OUTLINED_FUNCTION_5_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v41[2] = v9;
  v41[3] = v8;
  v10 = sub_2543A3588();
  v11 = OUTLINED_FUNCTION_3(v10);
  v46 = v12;
  v47 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  v43 = v41 - v16;
  OUTLINED_FUNCTION_13_5();
  type metadata accessor for ObservationRequestAction.UpdateObservingCodingKeys();
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v41[1] = v17;
  v18 = sub_2543A3588();
  v19 = OUTLINED_FUNCTION_3(v18);
  v44 = v20;
  v45 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v23);
  v42 = v41 - v24;
  v51 = v5;
  v52 = v6;
  v57 = v5;
  v58 = v4;
  v59 = v6;
  v60 = v7;
  v50 = v7;
  type metadata accessor for ObservationRequestAction.CodingKeys();
  OUTLINED_FUNCTION_4_11();
  swift_getWitnessTable();
  v49 = sub_2543A3588();
  OUTLINED_FUNCTION_3(v49);
  v53 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v28);
  v30 = v41 - v29;
  v31 = v2[1];
  v48 = *v2;
  v41[0] = v31;
  LOBYTE(v8) = *(v2 + 16);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543A3778();
  if (v8)
  {
    LOBYTE(v57) = 1;
    v33 = v43;
    v34 = v49;
    sub_2543A3508();
    v57 = v48;
    sub_2543A2EB8();
    v61 = v52;
    OUTLINED_FUNCTION_2_18();
    swift_getWitnessTable();
    v35 = v47;
    sub_2543A3578();
    (*(v46 + 8))(v33, v35);
    return (*(v53 + 8))(v30, v34);
  }

  else
  {
    LOBYTE(v57) = 0;
    v37 = v42;
    v38 = v49;
    sub_2543A3508();
    v57 = v48;
    v56 = 0;
    sub_2543A2EB8();
    v55 = v52;
    OUTLINED_FUNCTION_2_18();
    swift_getWitnessTable();
    v39 = v45;
    OUTLINED_FUNCTION_12_8();
    v40 = v54;
    sub_2543A3578();
    if (!v40)
    {
      v57 = v41[0];
      v56 = 1;
      OUTLINED_FUNCTION_12_8();
      sub_2543A3578();
    }

    (*(v44 + 8))(v37, v39);
    return (*(v53 + 8))(v30, v38);
  }
}

uint64_t ObservationRequestAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a6;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v11 = type metadata accessor for ObservationRequestAction.StopObservingCodingKeys();
  OUTLINED_FUNCTION_5_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v69 = v11;
  v68 = v12;
  v65 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v65);
  v64 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v16);
  v66 = &v59 - v17;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  updated = type metadata accessor for ObservationRequestAction.UpdateObservingCodingKeys();
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v67 = v19;
  v63 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v63);
  v62 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  v71 = a3;
  v72 = a4;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v73 = a5;
  type metadata accessor for ObservationRequestAction.CodingKeys();
  OUTLINED_FUNCTION_4_11();
  swift_getWitnessTable();
  v26 = sub_2543A34F8();
  v27 = OUTLINED_FUNCTION_3(v26);
  v74 = v28;
  v75 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v31);
  v33 = &v59 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v34);
  v36 = v76;
  sub_2543A3768();
  if (!v36)
  {
    v60 = updated;
    v61 = v25;
    v37 = v72;
    v38 = v75;
    v39 = v33;
    *&v81 = sub_2543A34E8();
    sub_2543A2B38();
    swift_getWitnessTable();
    *&v83 = sub_2543A3178();
    *(&v83 + 1) = v40;
    *&v84 = v41;
    *(&v84 + 1) = v42;
    sub_2543A3168();
    swift_getWitnessTable();
    sub_2543A2F68();
    LODWORD(v76) = v81;
    v43 = v38;
    if (v81 == 2 || (v59 = v83, v81 = v83, v82 = v84, (sub_2543A2F88() & 1) == 0))
    {
      v46 = v38;
      v47 = sub_2543A32E8();
      swift_allocError();
      v49 = v48;
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
      *&v81 = a2;
      *(&v81 + 1) = v71;
      *&v82 = v37;
      *(&v82 + 1) = v73;
      *v49 = type metadata accessor for ObservationRequestAction();
      sub_2543A3468();
      sub_2543A32D8();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      (*(v74 + 8))(v39, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v76)
      {
        LOBYTE(v81) = 1;
        sub_2543A3458();
        v44 = v70;
        v45 = v74;
        sub_2543A2EB8();
        v85 = v71;
        OUTLINED_FUNCTION_3_13();
        swift_getWitnessTable();
        sub_2543A34D8();
        v53 = OUTLINED_FUNCTION_10_8(&v86);
        v54(v53);
        (*(v45 + 8))(v39, v43);
        OUTLINED_FUNCTION_8_7();
        swift_unknownObjectRelease();
        v55 = 0;
        v56 = v81;
      }

      else
      {
        LOBYTE(v81) = 0;
        sub_2543A3458();
        v51 = v74;
        sub_2543A2EB8();
        LOBYTE(v79) = 0;
        v80 = v71;
        OUTLINED_FUNCTION_3_13();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_9_7();
        v56 = v81;
        v78 = 1;
        OUTLINED_FUNCTION_9_7();
        v57 = OUTLINED_FUNCTION_1_20();
        v58(v57);
        (*(v51 + 8))(v39, v75);
        OUTLINED_FUNCTION_8_7();
        swift_unknownObjectRelease();
        v55 = v79;
        v44 = v70;
      }

      *v44 = v56;
      *(v44 + 8) = v55;
      *(v44 + 16) = v76 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v77);
}

uint64_t sub_25431589C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_2543158FC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2543159C8);
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

_BYTE *sub_2543159F0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x254315A8CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  *(v4 - 120) = v2;
  *(v4 - 112) = v0;
  *(v4 - 104) = v1;
  *(v4 - 96) = v3;
  return 255;
}

uint64_t sub_254315CE8()
{
  v0 = sub_2543A1FB8();
  __swift_allocate_value_buffer(v0, qword_27F5E0BA0);
  __swift_project_value_buffer(v0, qword_27F5E0BA0);
  return sub_2543A1FA8();
}

uint64_t sub_254315D80()
{
  if (qword_27F5DF078 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v2 = *(v0 + 48);
  v3 = sub_2543A1FB8();
  *(v0 + 56) = __swift_project_value_buffer(v3, qword_27F5E0BA0);

  v4 = sub_2543A1F98();
  v5 = sub_2543A2FF8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = OUTLINED_FUNCTION_129();
    v1 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = *(v6 + 144);
    *(v0 + 16) = *(v6 + 128);
    *(v0 + 32) = v8;
    sub_2543A2888();
    v9 = sub_2542D5198();

    *(v7 + 4) = v9;
    OUTLINED_FUNCTION_36();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_82();
  }

  v15 = *(v0 + 48);
  v16 = *(v15 + 128);
  v17 = *(v15 + 136);
  switch(*(v15 + 144))
  {
    case 1:
      goto LABEL_12;
    case 2:
      v21 = *(v15 + 168);
      if ((v21 & 0x8000000000000000) == 0 && v21 >= v17)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (*(v15 + 160))
      {
        sub_254317BC4();
        v23 = swift_allocError();
        v24 = 1;
        goto LABEL_14;
      }

      sub_2543169B0(*(v15 + 128));
      v38 = *(v15 + 160);
      *(v15 + 160) = v39;

      goto LABEL_23;
    case 3:
      if (v16 | v17)
      {
        goto LABEL_23;
      }

      v19 = swift_task_alloc();
      *(v0 + 64) = v19;
      *v19 = v0;
      v20 = sub_25431616C;
      goto LABEL_18;
    default:
      v18 = *(v15 + 168);
      if ((v18 & 0x8000000000000000) != 0 || v18 < v16)
      {
        v19 = swift_task_alloc();
        *(v0 + 80) = v19;
        *v19 = v0;
        v20 = sub_254316288;
LABEL_18:
        v19[1] = v20;
        v36 = *(v0 + 48);

        return sub_254316634(v19);
      }

      else
      {
LABEL_11:
        sub_254317BC4();
        v23 = swift_allocError();
        v24 = 2;
LABEL_14:
        *v22 = v24;
        swift_willThrow();
        v25 = *(v0 + 56);
        v26 = v23;
        v27 = sub_2543A1F98();
        v28 = sub_2543A2FF8();

        if (os_log_type_enabled(v27, v28))
        {
          OUTLINED_FUNCTION_129();
          v41 = OUTLINED_FUNCTION_13_6();
          *v1 = 136315138;
          *(v0 + 40) = v23;
          v29 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
          sub_2543A2888();
          v30 = sub_2542D5198();

          *(v1 + 4) = v30;
          OUTLINED_FUNCTION_7_8();
          _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_43();
        }

        else
        {
        }

LABEL_23:
        OUTLINED_FUNCTION_27();

        return v40();
      }
  }
}

uint64_t sub_25431616C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    v9 = *(v3 + 48);

    return MEMORY[0x2822009F8](sub_2543163A4, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_254316288()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 48);

    return MEMORY[0x2822009F8](sub_2543164EC, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_2543163A4()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = v2;
  v5 = sub_2543A1F98();
  v6 = sub_2543A2FF8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_129();
    v15 = OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_16_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2888();
    v7 = sub_2542D5198();

    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_7_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_43();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_2543164EC()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = v2;
  v5 = sub_2543A1F98();
  v6 = sub_2543A2FF8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_129();
    v15 = OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_16_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2888();
    v7 = sub_2542D5198();

    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_7_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_43();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_25431664C()
{
  OUTLINED_FUNCTION_31();
  if (qword_27F5DF078 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v1 = *(v0 + 16);
  v2 = sub_2543A1FB8();
  __swift_project_value_buffer(v2, qword_27F5E0BA0);

  v3 = sub_2543A1F98();
  v4 = sub_2543A3008();
  v5 = OUTLINED_FUNCTION_18_3(v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_129();
    *v7 = 134217984;
    v10 = *(v6 + 168);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    v13 = v7;
    v14 = *(v0 + 16);
    *(v13 + 1) = v12;

    OUTLINED_FUNCTION_36();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    OUTLINED_FUNCTION_82();
  }

  else
  {
    v20 = *(v0 + 16);
  }

  v21 = *(v0 + 16);
  v22 = *(v21 + 160);
  *(v21 + 160) = 0;

  sub_2543A2B98();
  *(v0 + 24) = sub_2543A2B88();
  v23 = sub_2543A2B58();
  v25 = v24;
  v7 = sub_2543167BC;
  v8 = v23;
  v9 = v25;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2543167BC()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_2543179A4();

  return MEMORY[0x2822009F8](sub_25431682C, v2, 0);
}

void sub_25431682C()
{
  if (__OFADD__(*(*(v0 + 16) + 168), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    *(v2 + 168) = v3;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_2543168D0;
    v5 = *(v0 + 16);

    sub_254316F80();
  }
}

uint64_t sub_2543168D0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

void sub_2543169B0(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_27F5DF078 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v6 = sub_2543A1FB8();
  __swift_project_value_buffer(v6, qword_27F5E0BA0);
  v7 = sub_2543A1F98();
  v8 = sub_2543A3008();
  if (OUTLINED_FUNCTION_18_3(v8))
  {
    v9 = OUTLINED_FUNCTION_129();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_2542B7000, v7, v8, "Scheduling retry after %f seconds", v9, 0xCu);
    OUTLINED_FUNCTION_43();
  }

  v10 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = v11;
  sub_25434DFA4();
}

uint64_t sub_254316B58(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = sub_254316BF0;

  return sub_25430BE10(a1);
}

uint64_t sub_254316BF0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_254316D0C, 0, 0);
  }
}

uint64_t sub_254316D0C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[7];
  sub_2543A2C88();
  if (v1 || (v4 = v0[5], OUTLINED_FUNCTION_30(), Strong = swift_weakLoadStrong(), (v0[8] = Strong) == 0))
  {
    OUTLINED_FUNCTION_27();

    return v2();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_254316E00;

    return sub_254316634(v6);
  }
}

uint64_t sub_254316E00()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_254316F24, 0, 0);
  }

  else
  {
    v9 = *(v3 + 64);

    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_254316F24()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254316F80()
{
  OUTLINED_FUNCTION_28();
  v1[8] = v0;
  v1[9] = *v0;
  sub_2543A2B98();
  v1[10] = sub_2543A2B88();
  v3 = sub_2543A2B58();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_25431703C, v3, v2);
}

uint64_t sub_25431703C()
{
  OUTLINED_FUNCTION_31();
  if (*(v0[8] + 152))
  {
    v1 = v0[10];

    OUTLINED_FUNCTION_27();

    return v2();
  }

  else
  {
    if (qword_27F5DF078 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    v4 = sub_2543A1FB8();
    v0[13] = __swift_project_value_buffer(v4, qword_27F5E0BA0);
    v5 = sub_2543A1F98();
    v6 = sub_2543A3008();
    if (OUTLINED_FUNCTION_18_3(v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_36();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_82();
    }

    v12 = v0[8];

    return MEMORY[0x2822009F8](sub_25431717C, v12, 0);
  }
}

uint64_t sub_25431717C()
{
  OUTLINED_FUNCTION_31();
  v0[14] = *(v0[8] + 112);
  v1 = v0[11];
  v2 = v0[12];
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](sub_2543171F8, v1, v2);
}

uint64_t sub_2543171F8()
{
  v1 = v0[14];
  v2 = v0[10];

  if (v1)
  {
    v3 = v0[14];
    v4 = sub_25432CB68();
    swift_unknownObjectRelease();
    v5 = v0[13];
    v6 = v0[8];
    v7 = v0[9];
    v0[6] = sub_254317B8C;
    v0[7] = v6;
    v8 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2542E279C;
    v0[5] = &block_descriptor_2;
    v9 = _Block_copy(v0 + 2);
    v10 = v0[7];

    [v4 setInterruptionHandler_];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v0[6] = sub_254317BBC;
    v0[7] = v11;
    v0[2] = v8;
    v0[3] = 1107296256;
    v0[4] = sub_2542E279C;
    v0[5] = &block_descriptor_24;
    v12 = _Block_copy(v0 + 2);
    v13 = v0[7];

    [v4 setInvalidationHandler_];
    _Block_release(v12);
    [v4 resume];
    v14 = sub_2543A1F98();
    v15 = sub_2543A3008();
    if (OUTLINED_FUNCTION_18_3(v15))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_8();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_43();
    }

    v21 = v0[8];

    v22 = *(v21 + 152);
    *(v21 + 152) = v4;

    OUTLINED_FUNCTION_27();
  }

  else
  {
    sub_254317BC4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_27();
  }

  return v23();
}

uint64_t sub_254317464()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2543A2B98();

  v6 = sub_2543A2B88();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_2542CD000();
}

uint64_t sub_254317594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2543A2B98();
  v4[7] = sub_2543A2B88();
  v6 = sub_2543A2B58();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_25431762C, v6, v5);
}

uint64_t sub_25431762C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_254317718;

    return sub_254315D68(v3);
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_254317718()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v1 + 72);
  v7 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_254317850, v7, v6);
}

uint64_t sub_254317850()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_27();

  return v2();
}

void sub_2543178BC()
{
  if (qword_27F5DF078 != -1)
  {
    swift_once();
  }

  v0 = sub_2543A1FB8();
  __swift_project_value_buffer(v0, qword_27F5E0BA0);
  oslog = sub_2543A1F98();
  v1 = sub_2543A3008();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2542B7000, oslog, v1, "Invalidated", v2, 2u);
    MEMORY[0x259C0AD90](v2, -1, -1);
  }
}

void sub_2543179A4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 152);
    *(v0 + 152) = 0;
  }
}

uint64_t sub_2543179E8()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  v2 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_254317A20()
{
  sub_2543179E8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254317A70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254317AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_254317AF4(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_254317B0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_254317BC4()
{
  result = qword_27F5E0BB8;
  if (!qword_27F5E0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0BB8);
  }

  return result;
}

uint64_t sub_254317C18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254317C50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254317C90()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_12_9(v5);

  return sub_254317594(v6, v7, v8, v4);
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

uint64_t sub_254317D94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254317DD4()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_12_9(v6);

  return sub_254316B58(v4, v7, v8, v9, v5);
}

_BYTE *sub_254317E88(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254317F54);
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

unint64_t sub_254317F8C()
{
  result = qword_27F5E0BC0;
  if (!qword_27F5E0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0BC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_16_3(float a1)
{
  *v3 = a1;
  *(v2 + 40) = v1;

  return v1;
}

BOOL OUTLINED_FUNCTION_18_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id SettingsObservationUpdate.update.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2543180C0(v2, v3);
}

id sub_2543180C0(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t SettingsObservationUpdate.scope.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_2543A2768();
}

void *SettingsObservationUpdate.init(setting:keyPath:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t sub_2543180EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543181AC(char a1)
{
  if (a1)
  {
    return 0x65706F6373;
  }

  else
  {
    return 0x657461647075;
  }
}

uint64_t sub_2543181E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543180EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25431820C(uint64_t a1)
{
  v2 = sub_254318474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254318248(uint64_t a1)
{
  v2 = sub_254318474();

  return MEMORY[0x2821FE720](a1, v2);
}

void SettingsObservationUpdate.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BC8, &qword_2543ABA00);
  OUTLINED_FUNCTION_3(v4);
  v22 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = *v0;
  v12 = *(v0 + 8);
  v13 = *(v0 + 24);
  v20 = *(v0 + 16);
  v21 = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_2543180C0(v11, v12);
  sub_254318474();
  sub_2543A3778();
  v23 = v11;
  LOBYTE(v24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BD8, &qword_2543ABA08);
  OUTLINED_FUNCTION_15_5();
  sub_2542EE9CC(v15, v16, &qword_2543ABA08);
  OUTLINED_FUNCTION_6_11();
  sub_2543184C8(v23, v24);
  if (!v1)
  {
    v23 = v20;
    v24 = v21;
    sub_2543A2768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BE8, &qword_2543ABA10);
    OUTLINED_FUNCTION_15_5();
    sub_2542EE9CC(v17, v18, &qword_2543ABA10);
    OUTLINED_FUNCTION_6_11();
  }

  (*(v22 + 8))(v10, v4);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254318474()
{
  result = qword_27F5E0BD0;
  if (!qword_27F5E0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0BD0);
  }

  return result;
}

void sub_2543184C8(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

void SettingsObservationUpdate.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BF8, &unk_2543ABA18);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  OUTLINED_FUNCTION_23_1();
  sub_254318474();
  sub_2543A3768();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BD8, &qword_2543ABA08);
    OUTLINED_FUNCTION_15_5();
    sub_2542EE9CC(v13, v14, &qword_2543ABA08);
    sub_2543A34D8();
    v21 = v22;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BE8, &qword_2543ABA10);
    OUTLINED_FUNCTION_15_5();
    sub_2542EE9CC(v15, v16, &qword_2543ABA10);
    sub_2543A34D8();
    (*(v7 + 8))(v12, v5);
    v17 = v22;
    v18 = v23;
    v19 = v21;
    *v4 = v21;
    *(v4 + 8) = v24;
    *(v4 + 16) = v17;
    *(v4 + 24) = v18;
    sub_2543180C0(v19, v24);
    sub_2543A2768();
    __swift_destroy_boxed_opaque_existential_0(v2);
    sub_2543184C8(v19, v24);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t static SettingsObservationUpdate.updateObservedValue(_:withUpdate:scope:)(uint64_t *a1, id *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF528, &qword_2543A6C90) - 8) + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = *a2;
  v9 = [v8 keyPath];
  v10 = sub_2543A2878();
  v12 = v11;

  v13 = sub_2543A1F88();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  v14 = objc_allocWithZone(HPSResult);
  v15 = sub_254319450(v8, v7, 0, 1);
  v16 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_254319840(v15, v10, v12);

  *a1 = v19;
  return result;
}

uint64_t static SettingsObservationUpdate.mergeObservedValue(_:withPartialValue:)(uint64_t *a1, uint64_t a2)
{
  sub_2543A2768();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  result = sub_25431A6B4(a2, sub_25431A95C, 0, isUniquelyReferenced_nonNull_native, &v7);
  *a1 = v7;
  return result;
}

unint64_t *sub_254318920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = static SettingsObservationUpdate.value(from:targeting:)(*a1, a2);
  *a3 = result;
  return result;
}

BOOL sub_254318A08()
{
  v0 = sub_2543A3438();

  return v0 != 0;
}

BOOL sub_254318A68@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254318A08();
  *a2 = result;
  return result;
}

BOOL sub_254318AD8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_254318A08();
  *a1 = result;
  return result;
}

uint64_t sub_254318B04(uint64_t a1)
{
  v2 = sub_25431A990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254318B40(uint64_t a1)
{
  v2 = sub_25431A990();

  return MEMORY[0x2821FE720](a1, v2);
}

void HPSSettingWrapper.encode(to:)()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_254318FC8();
  v0 = *MEMORY[0x277D85DE8];
}

void HPSSettingWrapper.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0C28, &qword_2543ABA30);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_1();
  sub_25431A990();
  OUTLINED_FUNCTION_9_8();
  if (!v0)
  {
    sub_25431AA38();
    OUTLINED_FUNCTION_11_8();
    sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
    sub_2542D6250(0, &qword_27F5E0C38, off_2797737F0);
    v11 = OUTLINED_FUNCTION_16_4();
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_2_19();
      v13(v12);
      OUTLINED_FUNCTION_10_9();
      *v4 = v11;
    }

    else
    {
      sub_25431AA8C();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_10_9();
      v9 = OUTLINED_FUNCTION_2_19();
      v10(v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

BOOL sub_254318DE4()
{
  v0 = sub_2543A3438();

  return v0 != 0;
}

BOOL sub_254318E3C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254318DE4();
  *a2 = result;
  return result;
}

BOOL sub_254318EAC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_254318DE4();
  *a1 = result;
  return result;
}

uint64_t sub_254318ED8(uint64_t a1)
{
  v2 = sub_25431AAE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254318F14(uint64_t a1)
{
  v2 = sub_25431AAE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void HPSResultWrapper.encode(to:)()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_254318FC8();
  v0 = *MEMORY[0x277D85DE8];
}

void sub_254318FC8()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v27 = v1;
  v5 = v4;
  v29[2] = *MEMORY[0x277D85DE8];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_3(v28);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = *v0;
  v16 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3();
  sub_2543A3778();
  v17 = objc_opt_self();
  v29[0] = 0;
  v18 = [v17 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v29];
  v19 = v29[0];
  if (v18)
  {
    v20 = sub_2543A1EF8();
    v22 = v21;

    v29[0] = v20;
    v29[1] = v22;
    sub_25431A9E4();
    v23 = v28;
    sub_2543A3578();
    (*(v9 + 8))(v14, v23);
    sub_2542D7D40(v20, v22);
  }

  else
  {
    v24 = v19;
    sub_2543A1E88();

    swift_willThrow();
    (*(v9 + 8))(v14, v28);
  }

  v25 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_3();
}

void HPSResultWrapper.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0C60, &qword_2543ABA40);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_1();
  sub_25431AAE0();
  OUTLINED_FUNCTION_9_8();
  if (!v0)
  {
    sub_25431AA38();
    OUTLINED_FUNCTION_11_8();
    sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
    sub_2542D6250(0, &qword_27F5E0C68, off_2797737E8);
    v11 = OUTLINED_FUNCTION_16_4();
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_2_19();
      v13(v12);
      OUTLINED_FUNCTION_10_9();
      *v4 = v11;
    }

    else
    {
      sub_25431AB34();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_10_9();
      v9 = OUTLINED_FUNCTION_2_19();
      v10(v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

void HPSResultWrapper.subscript.getter()
{
  v1 = *v0;
  swift_getAtKeyPath();
}

uint64_t static HPSResultWrapper.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2542D6250(0, &qword_27F5E0C48, 0x277D82BB8);
  return sub_2543A30B8() & 1;
}

id sub_254319450(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = sub_2543A1F88();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v10) != 1)
  {
    v11 = sub_2543A1F58();
    (*(*(v10 - 8) + 8))(a2, v10);
  }

  if (a3)
  {
    v12 = sub_2543A1E78();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 initWithSetting:a1 accessoryIdentifier:v11 error:v12 result:a4 & 1];

  return v13;
}

uint64_t sub_254319550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v7 = sub_2543A1F88();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v16 = sub_25438E008();
  OUTLINED_FUNCTION_1_21(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF508, &qword_2543A6C38);
  if ((OUTLINED_FUNCTION_17_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = *v4;
  v24 = sub_25438E008();
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_11:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v21 = v24;
LABEL_5:
  v26 = *v4;
  if (v22)
  {
    v27 = (v26[7] + 16 * v21);
    v28 = v27[1];
    v29 = v32;
    *v27 = a1;
    v27[1] = v29;
  }

  else
  {
    (*(v10 + 16))(v14, a3, v7);
    return sub_254319D3C(v21, v14, a1, v32, v26);
  }
}

void sub_2543196FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25438E094();
  OUTLINED_FUNCTION_1_21(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF598, &qword_2543A6D68);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_25438E094();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
    sub_2543A3648();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_254319DFC(v11, a2, a1, v16);

    v19 = a2;
  }
}

void sub_254319840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25438E0D0();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D60, &qword_2543AC270);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_25438E0D0();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2543A3648();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_254319E40(v11, a2, a3, a1, v16);

    sub_2543A2768();
  }
}

uint64_t sub_254319990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v14 = *v7;
  v15 = sub_25438E0D0();
  OUTLINED_FUNCTION_1_21(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if ((OUTLINED_FUNCTION_17_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *v10;
  v23 = sub_25438E0D0();
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_13:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v10;
  if (v21)
  {
    v26 = (v25[7] + 16 * v20);
    v27 = v26[1];
    *v26 = a1;
    v26[1] = a2;
  }

  else
  {
    sub_254319E88(v20, a3, a4, a1, a2, v25);

    return sub_2543A2768();
  }
}

_OWORD *sub_254319AD8(_OWORD *a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_25438E144(a2);
  OUTLINED_FUNCTION_1_21(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D40, &qword_2543AC250);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_25438E144(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    v18 = (v17[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v18);

    return sub_2542F50C4(a1, v18);
  }

  else
  {

    return sub_254319ED4(v12, a2, a1, v17);
  }
}

uint64_t sub_254319BFC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25438E0D0();
  OUTLINED_FUNCTION_1_21(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF540, &unk_2543A6CD0);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_25438E0D0();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v14);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2542DA8C0(a1, v20);
  }

  else
  {
    sub_254319F3C(v14, a2, a3, a1, v19);

    return sub_2543A2768();
  }
}

uint64_t sub_254319D3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2543A1F88();
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

unint64_t sub_254319DFC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_254319E40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_254319E88(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_254319ED4(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2542F50C4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_254319F3C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2542DA8C0(a4, a5[7] + 40 * a1);
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

unint64_t *sub_254319FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_2543A2768();
      v4 = sub_25431A394(v13, v7, v4, a2);
      MEMORY[0x259C0AD90](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = (v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_25439F45C(0, v7, v9);
  sub_2543A2768();
  sub_25431A170(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25431A170(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v33 = v10;
      v34 = v5;
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v30 = v16;
      v20 = *(*(a3 + 56) + 8 * v16);
      v21 = *(a4 + 40);
      sub_2543A36E8();
      sub_2543A2768();
      v32 = v20;
      sub_2543A28C8();
      v22 = sub_2543A3728();
      v23 = ~(-1 << *(a4 + 32));
      do
      {
        v24 = v22 & v23;
        if (((*(v12 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {

          v5 = v34;
          v10 = v33;
          goto LABEL_5;
        }

        v25 = (*(a4 + 48) + 16 * v24);
        if (*v25 == v19 && v25[1] == v18)
        {
          break;
        }

        v27 = sub_2543A3608();
        v22 = v24 + 1;
      }

      while ((v27 & 1) == 0);

      *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v5 = v34 + 1;
      v10 = v33;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_25431A434(a1, a2, v5, a3);

      return;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t *sub_25431A394(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_25431A170(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_25431A434(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D58, &qword_2543AC268);
  result = sub_2543A3418();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_2543A36E8();
    sub_2543A2768();
    v34 = v21;
    sub_2543A28C8();
    result = sub_2543A3728();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25431A66C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;
  sub_2543A2768();
  v6 = a4;
  return a2;
}

uint64_t sub_25431A6B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  sub_25431B804(a1, a2, a3, v49);
  v6 = v49[1];
  v7 = v49[3];
  v8 = v49[4];
  v41 = v49[5];
  v42 = v49[0];
  v9 = (v49[2] + 64) >> 6;
  sub_2543A2768();

  v40 = v6;
  while (1)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = (*(v42 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v42 + 56) + 8 * v13);
    v44[0] = *v14;
    v44[1] = v15;
    v45 = v16;
    sub_2543A2768();
    v17 = v16;
    v41(&v46, v44);

    v18 = v47;
    if (!v47)
    {
LABEL_19:
      sub_2542D6060();
    }

    v19 = v46;
    v43 = v48;
    v20 = *v50;
    v22 = sub_25438E0D0();
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D60, &qword_2543AC270);
        sub_2543A3378();
      }
    }

    else
    {
      v27 = v50;
      sub_25439EF90(v25, a4 & 1);
      v28 = *v27;
      v29 = sub_25438E0D0();
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

      v22 = v29;
    }

    v31 = (v10 - 1) & v10;
    v32 = *v50;
    if (v26)
    {

      v33 = v32[7];
      v34 = *(v33 + 8 * v22);
      *(v33 + 8 * v22) = v43;
    }

    else
    {
      v32[(v22 >> 6) + 8] |= 1 << v22;
      v35 = (v32[6] + 16 * v22);
      *v35 = v19;
      v35[1] = v18;
      *(v32[7] + 8 * v22) = v43;
      v36 = v32[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_22;
      }

      v32[2] = v38;
    }

    a4 = 1;
    v7 = v11;
    v6 = v40;
    v8 = v31;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2543A3648();
  __break(1u);
  return result;
}

uint64_t sub_25431A95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25431A66C(a2 + 2, *a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_25431A990()
{
  result = qword_27F5E0C18;
  if (!qword_27F5E0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C18);
  }

  return result;
}

unint64_t sub_25431A9E4()
{
  result = qword_27F5E0C20;
  if (!qword_27F5E0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C20);
  }

  return result;
}

unint64_t sub_25431AA38()
{
  result = qword_27F5E0C30;
  if (!qword_27F5E0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C30);
  }

  return result;
}

unint64_t sub_25431AA8C()
{
  result = qword_27F5E0C40;
  if (!qword_27F5E0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C40);
  }

  return result;
}

unint64_t sub_25431AAE0()
{
  result = qword_27F5E0C58;
  if (!qword_27F5E0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C58);
  }

  return result;
}

unint64_t sub_25431AB34()
{
  result = qword_27F5E0C70;
  if (!qword_27F5E0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C70);
  }

  return result;
}

unint64_t sub_25431AB88(uint64_t a1)
{
  result = sub_25431ABB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25431ABB0()
{
  result = qword_27F5E0C78;
  if (!qword_27F5E0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C78);
  }

  return result;
}

unint64_t sub_25431AC54()
{
  result = qword_27F5E0C90;
  if (!qword_27F5E0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C90);
  }

  return result;
}

uint64_t sub_25431ACF8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0C88, &qword_2543ABA68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25431AD7C()
{
  result = qword_27F5E0CA0;
  if (!qword_27F5E0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CA0);
  }

  return result;
}

unint64_t sub_25431ADD4()
{
  result = qword_27F5E0CA8;
  if (!qword_27F5E0CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0C88, &qword_2543ABA68);
    sub_25431AE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CA8);
  }

  return result;
}

unint64_t sub_25431AE58()
{
  result = qword_27F5E0CB0;
  if (!qword_27F5E0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CB0);
  }

  return result;
}

unint64_t sub_25431AEC8()
{
  result = qword_27F5E0CB8;
  if (!qword_27F5E0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CB8);
  }

  return result;
}

unint64_t sub_25431AF20()
{
  result = qword_27F5E0CC0;
  if (!qword_27F5E0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CC0);
  }

  return result;
}

unint64_t sub_25431AF74(uint64_t a1)
{
  result = sub_25431AF9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25431AF9C()
{
  result = qword_27F5E0CC8;
  if (!qword_27F5E0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CC8);
  }

  return result;
}

unint64_t sub_25431AFF0(uint64_t a1)
{
  result = sub_25431B018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25431B018()
{
  result = qword_27F5E0CD0;
  if (!qword_27F5E0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CD0);
  }

  return result;
}

unint64_t sub_25431B06C(uint64_t a1)
{
  *(a1 + 8) = sub_25431B09C();
  result = sub_25431B0F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25431B09C()
{
  result = qword_27F5E0CD8;
  if (!qword_27F5E0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CD8);
  }

  return result;
}

unint64_t sub_25431B0F0()
{
  result = qword_27F5E0CE0;
  if (!qword_27F5E0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CE0);
  }

  return result;
}

uint64_t sub_25431B150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25431B1A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *sub_25431B264(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25431B300);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsObservationUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25431B404);
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