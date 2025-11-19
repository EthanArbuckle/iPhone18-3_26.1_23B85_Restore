uint64_t sub_216AEF2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  v58[0] = *a1;
  v58[1] = v5;
  v59 = *(a1 + 32);
  v7 = *a1;
  v6 = *(a1 + 8);
  v63[0] = v58[0];
  v32 = *(&v58[0] + 1);
  v25 = *&v58[0];
  sub_216681B04(v63, v43, &qword_27CABAA40);
  v34 = sub_217009E64();
  KeyPath = swift_getKeyPath();
  *(&v33 + 1) = sub_21700AD34();
  *&v33 = swift_getKeyPath();
  v62 = *(a1 + 16);
  v29 = *(&v62 + 1);
  v24 = v62;
  sub_216681B04(&v62, v43, &qword_27CABAA40);
  v28 = sub_217009D54();
  v27 = swift_getKeyPath();
  v26 = sub_217009CA4();
  sub_216AEE3EC(a2, &v53);
  v8 = v53;
  if (v54 == 1)
  {
    sub_216681B04(v63, v43, &qword_27CABAA40);
    sub_216681B04(&v62, v43, &qword_27CABAA40);
    sub_21691E69C(v7, v6);
    sub_21691E69C(v8, 1);
  }

  else
  {
    v60[0] = v53;
    v60[1] = v54;
    v60[2] = v55;
    v60[3] = v56;
    v61 = v57 & 1;
    sub_216AD3CF0(v58, v60);
    sub_216681B04(v63, v43, &qword_27CABAA40);
    sub_216681B04(&v62, v43, &qword_27CABAA40);

    sub_216697664(v63, &qword_27CABAA40);
    sub_216697664(&v62, &qword_27CABAA40);
  }

  sub_217007F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v52 = 0;
  if (qword_27CAB6118 != -1)
  {
    swift_once();
  }

  if (v29)
  {
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = 0;
  }

  if (v29)
  {
    v18 = v24;
  }

  else
  {
    v18 = 0;
  }

  if (v32)
  {
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = 0;
  }

  if (v32)
  {
    v20 = v25;
  }

  else
  {
    v20 = 0;
  }

  v21 = qword_27CB22AA0;
  v22 = swift_getKeyPath();
  *&v38 = v20;
  *(&v38 + 1) = v32;
  *&v39 = 0;
  *(&v39 + 1) = v19;
  *&v40 = KeyPath;
  *(&v40 + 1) = v34;
  v41 = v33;
  v37[0] = v38;
  v37[1] = v39;
  v37[2] = v40;
  v37[3] = v33;
  __src[0] = v18;
  __src[1] = v29;
  __src[2] = 0;
  __src[3] = v17;
  __src[4] = v27;
  __src[5] = v28;
  LOBYTE(__src[6]) = v26;
  __src[7] = v10;
  __src[8] = v12;
  __src[9] = v14;
  __src[10] = v16;
  LOBYTE(__src[11]) = 0;
  __src[12] = v22;
  __src[13] = v21;
  memcpy(&v37[4], __src, 0x70uLL);
  memcpy(a3, v37, 0xB0uLL);
  v43[0] = v18;
  v43[1] = v29;
  v43[2] = 0;
  v43[3] = v17;
  v43[4] = v27;
  v43[5] = v28;
  v44 = v26;
  v45 = v10;
  v46 = v12;
  v47 = v14;
  v48 = v16;
  v49 = 0;
  v50 = v22;
  v51 = v21;

  sub_216681B04(&v38, v35, &qword_27CABA1C0);
  sub_216681B04(__src, v35, &qword_27CAC25E8);
  sub_216697664(v43, &qword_27CAC25E8);
  v35[0] = v20;
  v35[1] = v32;
  v35[2] = 0;
  v35[3] = v19;
  v35[4] = KeyPath;
  v35[5] = v34;
  v36 = v33;
  return sub_216697664(v35, &qword_27CABA1C0);
}

uint64_t sub_216AEF6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216AEF89C(a1, a2);
  v3 = a2 + *(type metadata accessor for GroupedTextListLockupView() + 20);
  result = swift_getKeyPath();
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

uint64_t sub_216AEF78C(uint64_t a1)
{
  result = sub_216AEF7E4(qword_280E35938, type metadata accessor for GroupedTextListLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AEF7E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AEF838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedTextListLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AEF89C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedTextListLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AEF900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216AEF930(uint64_t a1)
{
  v2 = type metadata accessor for ModalPresentationDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216AEF98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216AEFA04()
{
  result = qword_27CAC25D0;
  if (!qword_27CAC25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC25D0);
  }

  return result;
}

uint64_t sub_216AEFB58()
{
  sub_216AEFC84();
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

uint64_t sub_216AEFC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216AEFC84()
{
  result = qword_280E29AF8;
  if (!qword_280E29AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29AF8);
  }

  return result;
}

void sub_216AEFD04(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3);
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_27CAB5EC8 != -1)
  {
    OUTLINED_FUNCTION_0_142();
    v4 = v5;
  }

  [v4 addObserver:v2 selector:sel_eventDidFire name:qword_27CAC4B68 object:0];
}

void sub_216AEFDD0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_27CAB5EC8 != -1)
  {
    OUTLINED_FUNCTION_0_142();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_27CAC4B68 object:0];
}

uint64_t sub_216AEFE7C()
{
  v0 = sub_21700F5E4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216AEFEF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AEFE7C();
  *a1 = result;
  return result;
}

uint64_t sub_216AEFF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216733814(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216AEFF5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AEFEC8();
  *a1 = result;
  return result;
}

uint64_t sub_216AEFF84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AEFECC();
  *a1 = result;
  return result;
}

uint64_t sub_216AEFFAC(uint64_t a1)
{
  v2 = sub_216AF04B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216AEFFE8(uint64_t a1)
{
  v2 = sub_216AF04B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2690);
  OUTLINED_FUNCTION_1();
  v23 = v7;
  v24 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_21700D0C4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF04B4();
  v25 = v10;
  v17 = v26;
  sub_21700F964();
  if (!v17)
  {
    v26 = v5;
    v18 = v23;
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_5_73();
    sub_21700F694();
    sub_21700D064();
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_5_73();
    sub_21700F674();
    sub_21700D014();
    LOBYTE(v28) = 2;
    OUTLINED_FUNCTION_5_73();
    sub_21700F664();
    sub_21700CFF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890);
    v27 = 3;
    sub_216AF08FC(&qword_27CAC26A0);
    OUTLINED_FUNCTION_6_68();
    sub_21700F6A4();
    sub_21700D094();
    OUTLINED_FUNCTION_10_57(4);
    sub_21700F674();
    sub_21700CFD4();
    sub_217005EF4();
    LOBYTE(v28) = 5;
    OUTLINED_FUNCTION_4_79();
    sub_216AF0A04(v20, v21);
    OUTLINED_FUNCTION_6_68();
    sub_21700F644();
    sub_21700D034();
    OUTLINED_FUNCTION_10_57(6);
    sub_21700F614();
    sub_21700D054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26A8);
    v27 = 7;
    sub_216AF0968(&qword_27CAC26B0, &qword_27CAC26B8);
    OUTLINED_FUNCTION_6_68();
    sub_21700F6A4();
    sub_21700D0B4();
    (*(v18 + 8))(v25, v24);
    (*(v13 + 32))(v22, v16, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_216AF04B4()
{
  result = qword_27CAC2698;
  if (!qword_27CAC2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2698);
  }

  return result;
}

uint64_t NetResponse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26C0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF04B4();
  sub_21700F974();
  sub_21700D004();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_3_98();
  sub_21700F734();
  if (!v1)
  {
    sub_21700D074();
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_3_98();
    sub_21700F754();
    sub_21700CFE4();
    LOBYTE(v14) = 2;
    OUTLINED_FUNCTION_0_143();
    sub_21700F724();

    v14 = sub_21700D084();
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890);
    sub_216AF08FC(&qword_27CAC26C8);
    OUTLINED_FUNCTION_3_98();
    sub_21700F764();

    sub_21700CFC4();
    LOBYTE(v14) = 4;
    OUTLINED_FUNCTION_3_98();
    sub_21700F734();
    sub_21700D024();
    LOBYTE(v14) = 5;
    sub_217005EF4();
    OUTLINED_FUNCTION_4_79();
    sub_216AF0A04(v10, v11);
    OUTLINED_FUNCTION_3_98();
    sub_21700F704();
    sub_216846CF0(v5);
    sub_21700D044();
    LOBYTE(v14) = 6;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6D4();

    v14 = sub_21700D0A4();
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26A8);
    sub_216AF0968(&qword_27CAC26D0, &qword_27CAC26D8);
    OUTLINED_FUNCTION_3_98();
    sub_21700F764();
  }

  v7 = OUTLINED_FUNCTION_8_63();
  return v8(v7);
}

uint64_t sub_216AF08FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF890);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216AF0968(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC26A8);
    sub_216AF0A04(a2, MEMORY[0x277D222D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216AF0A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AF0A4C()
{
  v0 = sub_21700F5E4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216AF0AA8(char a1)
{
  result = 0x4C525565676170;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x65736E6F70736572;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6174536573726170;
      break;
    case 7:
      result = 0x646E456573726170;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_216AF0C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AF0A4C();
  *a1 = result;
  return result;
}

unint64_t sub_216AF0C80@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216AF0AA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216AF0CC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AF0A98();
  *a1 = result;
  return result;
}

uint64_t sub_216AF0CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AF0A9C();
  *a1 = result;
  return result;
}

uint64_t sub_216AF0D18(uint64_t a1)
{
  v2 = sub_216AF113C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216AF0D54(uint64_t a1)
{
  v2 = sub_216AF113C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JSNetworkPerformanceMetrics.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26E0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF113C();
  sub_21700F964();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_121();
    sub_21700F614();
    OUTLINED_FUNCTION_1_121();
    sub_21700F614();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F624();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    sub_21700DE34();
    v4 = OUTLINED_FUNCTION_9_2();
    v5(v4);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_216AF113C()
{
  result = qword_27CAC26E8;
  if (!qword_27CAC26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC26E8);
  }

  return result;
}

uint64_t JSNetworkPerformanceMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26F0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF113C();
  sub_21700F974();
  sub_21700DE44();
  v10[15] = 0;
  OUTLINED_FUNCTION_0_143();
  sub_21700F6D4();
  if (v1)
  {
    (*(v5 + 8))(v8, v3);
  }

  else
  {

    sub_21700DE74();
    v10[14] = 1;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6D4();

    sub_21700DE04();
    v10[13] = 2;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE14();
    v10[12] = 3;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DDF4();
    v10[11] = 4;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE24();
    v10[10] = 5;
    OUTLINED_FUNCTION_3_98();
    sub_21700F6E4();
    sub_21700DDE4();
    v10[9] = 6;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DDD4();
    v10[8] = 7;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE64();
    v10[7] = 8;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE54();
    v10[6] = 9;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216AF16CC()
{
  result = qword_27CAC26F8;
  if (!qword_27CAC26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC26F8);
  }

  return result;
}

unint64_t sub_216AF1724()
{
  result = qword_27CAC2700;
  if (!qword_27CAC2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2700);
  }

  return result;
}

unint64_t sub_216AF177C()
{
  result = qword_27CAC2708;
  if (!qword_27CAC2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2708);
  }

  return result;
}

unint64_t sub_216AF17D4()
{
  result = qword_27CAC2710;
  if (!qword_27CAC2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2710);
  }

  return result;
}

unint64_t sub_216AF182C()
{
  result = qword_27CAC2718;
  if (!qword_27CAC2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2718);
  }

  return result;
}

unint64_t sub_216AF1884()
{
  result = qword_27CAC2720;
  if (!qword_27CAC2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2720);
  }

  return result;
}

void sub_216AF18DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = (a4 + OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController);
  v10 = *(a4 + OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController + 24);
  if (!v10)
  {
    _Block_copy(a5);
    goto LABEL_7;
  }

  v11 = v9[4];
  v12 = __swift_project_boxed_opaque_existential_1(v9, *(a4 + OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController + 24));
  v13 = *(v10 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v17 = *(v11 + 8);
  _Block_copy(a5);
  v17(aBlock, v10, v11);
  (*(v13 + 8))(v16, v10);
  v18 = v29;
  if (!v29)
  {
    sub_21669987C(aBlock, &unk_27CAC2800);
    goto LABEL_7;
  }

  v19 = v30;
  __swift_project_boxed_opaque_existential_1(aBlock, v29);
  v20 = (*(v19 + 7))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (!v20)
  {
LABEL_7:
    v26 = sub_21700E4D4();
    v27 = sub_21700E4D4();
    v23 = AMSError();

    v24 = sub_217005D24();
    (a5)[2](a5, 0, v24);

    goto LABEL_8;
  }

  sub_216AF1DC8();
  v21 = a3;
  v22 = v20;
  v23 = sub_216BA2300(v21, v22);
  v24 = [v23 performAuthentication];
  v30 = sub_216AF1DC0;
  v31 = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_216BA4A28;
  v29 = &block_descriptor_21;
  v25 = _Block_copy(aBlock);

  [v24 addFinishBlock_];
  _Block_release(v25);

LABEL_8:
  _Block_release(a5);
}

id sub_216AF1CF4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_216AF1DC8()
{
  result = qword_27CAC4810;
  if (!qword_27CAC4810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAC4810);
  }

  return result;
}

uint64_t sub_216AF1E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageToolbarContentView();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  sub_216DE8DC8();
  v12 = *&v7[*(v4 + 40)];
  sub_21700DF14();
  result = sub_216AF2FA8(v7, type metadata accessor for Page.Header);
  if (!v12)
  {

LABEL_12:
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v18, 1, v8);
  }

  v23 = v11;
  v24 = a2;
  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_10:

    v18 = 1;
    a2 = v24;
    return __swift_storeEnumTagSinglePayload(a2, v18, 1, v8);
  }

  v15 = 0;
  v16 = v12 + 32;
  while (2)
  {
    if (v15 < *(v12 + 16))
    {
      sub_216826904(v16, v25);
      ++v15;
      switch(v25[0])
      {
        case 1:
        case 2:
        case 3:
        case 4:
          v17 = sub_21700F7D4();

          result = sub_2168269C4(v25);
          if (v17)
          {
            goto LABEL_9;
          }

          v19 = v23;
          *v23 = v12;
          sub_216CCAAE0();

          OUTLINED_FUNCTION_1_122();
          v20 = v19;
          a2 = v24;
          sub_216AF2EE8(v20, v24, v21);
          v18 = 0;
          return __swift_storeEnumTagSinglePayload(a2, v18, 1, v8);
        default:

          result = sub_2168269C4(v25);
LABEL_9:
          v16 += 56;
          if (v14 == v15)
          {
            goto LABEL_10;
          }

          continue;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PageToolbarContentView()
{
  result = qword_280E39138;
  if (!qword_280E39138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AF2128()
{
  sub_216AF21AC();
  if (v0 <= 0x3F)
  {
    sub_2170067A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216AF21AC()
{
  if (!qword_280E29F98)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F98);
    }
  }
}

uint64_t sub_216AF2218()
{
  v1 = type metadata accessor for PageToolbarContentView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v8[1] = *v0;
  swift_getKeyPath();
  sub_216AF2F48(v0, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageToolbarContentView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_1_122();
  sub_216AF2EE8(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, v6);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2820);
  sub_216AF2C40();
  sub_216AF2CA4();
  return sub_21700B154();
}

uint64_t sub_216AF23C0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v39 = type metadata accessor for ContextAccessoryButtonView(0);
  MEMORY[0x28223BE20](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ContextAccessoryButton();
  MEMORY[0x28223BE20](v40);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2860);
  MEMORY[0x28223BE20](v44);
  v42 = &v34 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2868);
  MEMORY[0x28223BE20](v36);
  v37 = &v34 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2838);
  MEMORY[0x28223BE20](v43);
  v38 = &v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB648);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2848);
  MEMORY[0x28223BE20](v35);
  v18 = &v34 - v17;
  v19 = type metadata accessor for PopoverAccessoryButton();
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v48[0] = *a1;
  v25 = v48[0];
  sub_216826960((a1 + 8), v49);
  if (v25 == 3)
  {
    v27 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
    if (swift_dynamicCast())
    {
      v28 = v7;
      sub_216AF2EE8(v10, v7, type metadata accessor for ContextAccessoryButton);
      sub_216AF2F48(v7, v5, type metadata accessor for ContextAccessoryButton);
      v29 = *(type metadata accessor for PageToolbarContentView() + 20);
      v30 = *(v39 + 20);
      v31 = sub_2170067A4();
      (*(*(v31 - 8) + 16))(&v5[v30], v27 + v29, v31);
      sub_216AF2F48(v5, v37, type metadata accessor for ContextAccessoryButtonView);
      swift_storeEnumTagMultiPayload();
      sub_216AF2DEC();
      sub_216AF2EA0(&qword_27CAC2858, type metadata accessor for ContextAccessoryButtonView);
      v32 = v38;
      sub_217009554();
      sub_216681B04(v32, v42, &qword_27CAC2838);
      swift_storeEnumTagMultiPayload();
      sub_216AF2D30();
      sub_217009554();
      sub_216697664(v32, &qword_27CAC2838);
      sub_216AF2FA8(v5, type metadata accessor for ContextAccessoryButtonView);
      sub_216AF2FA8(v28, type metadata accessor for ContextAccessoryButton);
      return __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }
  }

  else if (v25 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
    if (swift_dynamicCast())
    {
      sub_216AF2EE8(v24, v21, type metadata accessor for PopoverAccessoryButton);
      sub_216AF2F48(v21, v16, type metadata accessor for PopoverAccessoryButton);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
      v47 = 0;
      memset(v46, 0, sizeof(v46));
      sub_2168B6FB0(v16, v46, v18);
      sub_216681B04(v18, v37, &qword_27CAC2848);
      swift_storeEnumTagMultiPayload();
      sub_216AF2DEC();
      sub_216AF2EA0(&qword_27CAC2858, type metadata accessor for ContextAccessoryButtonView);
      v26 = v38;
      sub_217009554();
      sub_216681B04(v26, v42, &qword_27CAC2838);
      swift_storeEnumTagMultiPayload();
      sub_216AF2D30();
      sub_217009554();
      sub_216697664(v26, &qword_27CAC2838);
      sub_216697664(v18, &qword_27CAC2848);
      sub_216AF2FA8(v21, type metadata accessor for PopoverAccessoryButton);
      return __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_216AF2D30();
  sub_217009554();
  return sub_216697664(v48, &qword_27CABDC08);
}

uint64_t sub_216AF2BC0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageToolbarContentView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_216AF23C0(a1, v6, a2);
}

unint64_t sub_216AF2C40()
{
  result = qword_27CAC02D8;
  if (!qword_27CAC02D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC02C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC02D8);
  }

  return result;
}

unint64_t sub_216AF2CA4()
{
  result = qword_27CAC2828;
  if (!qword_27CAC2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2820);
    sub_216AF2D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2828);
  }

  return result;
}

unint64_t sub_216AF2D30()
{
  result = qword_27CAC2830;
  if (!qword_27CAC2830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2838);
    sub_216AF2DEC();
    sub_216AF2EA0(&qword_27CAC2858, type metadata accessor for ContextAccessoryButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2830);
  }

  return result;
}

unint64_t sub_216AF2DEC()
{
  result = qword_27CAC2840;
  if (!qword_27CAC2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2848);
    sub_216AF2EA0(&qword_27CAC2850, type metadata accessor for PopoverSelectorToolbarContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2840);
  }

  return result;
}

uint64_t sub_216AF2EA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AF2EE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216AF2F48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216AF2FA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216AF3000()
{
  result = qword_27CAC2870;
  if (!qword_27CAC2870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2878);
    sub_216AF2CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2870);
  }

  return result;
}

uint64_t sub_216AF3084(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v5 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v2, a1);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    (*(v10 + 8))(v14, a1);
    return MEMORY[0x277D84FA0];
  }

  sub_216AF64B8(v14, v9);
  v15 = OUTLINED_FUNCTION_19_1(*(v5 + 20));
  sub_216AF651C(v15, v16, v17);
  OUTLINED_FUNCTION_116();
  if (swift_getEnumCaseMultiPayload() != 25)
  {
    OUTLINED_FUNCTION_14_48();
    OUTLINED_FUNCTION_15_48();
    return MEMORY[0x277D84FA0];
  }

  OUTLINED_FUNCTION_15_48();
  v18 = sub_216F0EDEC();
  OUTLINED_FUNCTION_14_48();
  return v18;
}

void sub_216AF325C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_37_31(v1, v2, v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_18_39();
  v8 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  if (!sub_216AF49C0())
  {
  }

  OUTLINED_FUNCTION_18_39();
  type metadata accessor for PresentationItem();
  v10 = OUTLINED_FUNCTION_31_36();
  v11(v10);
  v12 = OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_39_20(v7 + v8, v13, v14, v12);
  OUTLINED_FUNCTION_86_0();
  sub_216AF4A04();
  OUTLINED_FUNCTION_27_34();
  v16 = *(v0 + *(v15 + 528));
  if (!v16)
  {
    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v17 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v17, qword_27CAC2880);
      v18 = sub_217007C84();
      v19 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v19))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4568();

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v29, v30, v28);
        goto LABEL_16;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v20 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v20, qword_27CAC2880);
      v18 = sub_217007C84();
      v21 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v21))
      {
        goto LABEL_15;
      }
    }

    v22 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v22);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_15:

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38_24();
  v16(v7);
  OUTLINED_FUNCTION_20_37();
LABEL_16:

  OUTLINED_FUNCTION_26();
}

void sub_216AF3510()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v55 = v5;
  v56 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_12_41();
  v13 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  if (qword_280E2B900 != -1)
  {
    OUTLINED_FUNCTION_16_45();
  }

  if ((byte_280E73A81 & 1) == 0)
  {
    v54 = v3;
    if (!sub_216AF49C0())
    {
    }

    OUTLINED_FUNCTION_12_41();
    type metadata accessor for PresentationItem();
    (*(v15 + 16))(v19, v7, v13);
    OUTLINED_FUNCTION_11_53();
    sub_216AF651C(v56, v12, v39);

    v40 = sub_216AF4A04();
    v41 = *(v1 + *(*v1 + 520));
    if (v41)
    {
      OUTLINED_FUNCTION_38_24();
      v41(v40);
      OUTLINED_FUNCTION_20_37();
LABEL_25:

      goto LABEL_26;
    }

    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v42 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v42, qword_27CAC2880);
      v43 = sub_217007C84();
      v44 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v44))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4518();

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v55, v54, v53);
        goto LABEL_25;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v45 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v45, qword_27CAC2880);
      v43 = sub_217007C84();
      v46 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v46))
      {
        goto LABEL_24;
      }
    }

    v47 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v47);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_24:

    goto LABEL_25;
  }

  if (qword_27CAB5D30 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  v20 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v20, qword_27CAC2880);
  v21 = *(v15 + 16);
  v21(v8, v7, v13);
  v22 = sub_217007C84();
  v23 = sub_21700ED84();
  if (OUTLINED_FUNCTION_8_64(v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57 = v25;
    *v24 = 136446210;
    v21(v19, v8, v13);
    v26 = sub_21700E594();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_116();
    v30(v29);
    v31 = sub_2166A85FC(v26, v28, &v57);

    *(v24 + 4) = v31;
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x21CEA1440](v25, -1, -1);
    OUTLINED_FUNCTION_56_1();
  }

  else
  {

    v37 = OUTLINED_FUNCTION_116();
    v38(v37);
  }

LABEL_26:
  OUTLINED_FUNCTION_26();
}

void sub_216AF39A4()
{
  OUTLINED_FUNCTION_49();
  v34 = v1;
  v35 = v2;
  v36 = v3;
  v5 = v4;
  v6 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  v10 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  if (!sub_216AF49C0())
  {
  }

  type metadata accessor for PresentationItem();
  v17 = *(v12 + 16);
  v16 = v12 + 16;
  v17(v15, v5, v10);
  OUTLINED_FUNCTION_11_53();
  sub_216AF651C(v36, v9, v18);

  sub_216AF4A04();
  OUTLINED_FUNCTION_27_34();
  v20 = *(v0 + *(v19 + 544));
  if (!v20)
  {
    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v21 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v21, qword_27CAC2880);
      v22 = sub_217007C84();
      v23 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v23))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4540();

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v34, v35, v32);
        goto LABEL_16;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v24 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v24, qword_27CAC2880);
      v22 = sub_217007C84();
      v25 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v25))
      {
        goto LABEL_15;
      }
    }

    v26 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v26);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v27, v28, v29, v30, v31, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_15:

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38_24();
  v20(v16);
  OUTLINED_FUNCTION_20_37();
LABEL_16:

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AF3C9C()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 560));
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_38_24();
    v2(v3);
    sub_21667E91C(v2);
    return 1;
  }

  result = sub_216AF49C0();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      return 0;
    }

    if (sub_216AF4504())
    {

      sub_216AF4518();
    }

    else if (sub_216AF452C())
    {

      sub_216AF4540();
    }

    else if (sub_216AF4554())
    {

      sub_216AF4568();
    }

    else if (sub_216AF457C())
    {

      sub_216AF4590();
    }

    else if (sub_216AF45A4())
    {

      sub_216AF465C();
    }

    return 1;
  }

  return result;
}

void sub_216AF3DB0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v57 = v5;
  v58 = v4;
  v6 = *v1;
  v7 = type metadata accessor for MusicAppDestinationContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_12_41();
  v12 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  if (qword_280E2B900 != -1)
  {
    OUTLINED_FUNCTION_16_45();
  }

  if ((byte_280E73A81 & 1) == 0)
  {
    v56 = v3;
    if (!sub_216AF49C0())
    {
    }

    OUTLINED_FUNCTION_12_41();
    type metadata accessor for PresentationItem();
    (*(v14 + 16))(v18, v58, v12);
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v38 = *(v7 + 20);
    v39 = sub_217005EF4();
    OUTLINED_FUNCTION_39_20(v11 + v38, v40, v41, v39);
    v42 = sub_216AF4A04();
    v43 = *(v1 + *(*v1 + 552));
    if (v43)
    {
      OUTLINED_FUNCTION_38_24();
      v43(v42);
      OUTLINED_FUNCTION_20_37();
LABEL_25:

      goto LABEL_26;
    }

    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v44 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v44, qword_27CAC2880);
      v45 = sub_217007C84();
      v46 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v46))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4540();

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v57, v56, v55);
        goto LABEL_25;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v47 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v47, qword_27CAC2880);
      v45 = sub_217007C84();
      v48 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v48))
      {
        goto LABEL_24;
      }
    }

    v49 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v49);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_24:

    goto LABEL_25;
  }

  if (qword_27CAB5D30 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  v19 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v19, qword_27CAC2880);
  v20 = *(v14 + 16);
  v20(v6, v58, v12);
  v21 = sub_217007C84();
  v22 = sub_21700ED84();
  if (OUTLINED_FUNCTION_8_64(v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v59 = v24;
    *v23 = 136446210;
    v20(v18, v6, v12);
    v25 = sub_21700E594();
    v27 = v26;
    v28 = OUTLINED_FUNCTION_116();
    v29(v28);
    v30 = sub_2166A85FC(v25, v27, &v59);

    *(v23 + 4) = v30;
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x21CEA1440](v24, -1, -1);
    OUTLINED_FUNCTION_56_1();
  }

  else
  {

    v36 = OUTLINED_FUNCTION_116();
    v37(v36);
  }

LABEL_26:
  OUTLINED_FUNCTION_26();
}

void sub_216AF424C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_37_31(v1, v2, v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_18_39();
  v8 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  if (!sub_216AF49C0())
  {
  }

  OUTLINED_FUNCTION_18_39();
  type metadata accessor for PresentationItem();
  v10 = OUTLINED_FUNCTION_31_36();
  v11(v10);
  v12 = OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_39_20(v7 + v8, v13, v14, v12);
  OUTLINED_FUNCTION_86_0();
  sub_216AF4A04();
  OUTLINED_FUNCTION_27_34();
  v16 = *(v0 + *(v15 + 536));
  if (!v16)
  {
    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v17 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v17, qword_27CAC2880);
      v18 = sub_217007C84();
      v19 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v19))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4590();

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v29, v30, v28);
        goto LABEL_16;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144();
      }

      v20 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v20, qword_27CAC2880);
      v18 = sub_217007C84();
      v21 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v21))
      {
        goto LABEL_15;
      }
    }

    v22 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v22);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_15:

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38_24();
  v16(v7);
  OUTLINED_FUNCTION_20_37();
LABEL_16:

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AF45B8()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_86_0();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216AF4670()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216AF4728()
{
  result = sub_216AF4504();
  if (!result)
  {
    result = sub_216AF452C();
    if (!result)
    {

      return sub_216AF45A4();
    }
  }

  return result;
}

uint64_t sub_216AF4764()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (v0 + *(v1 + 152));
  v3 = *v2;
  if (*v2)
  {

    v3(v4);
    sub_21667E91C(v3);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  *v2 = 0;
  v2[1] = 0;

  return sub_21667E91C(v5);
}

uint64_t sub_216AF47E8()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_16_0();
  type metadata accessor for PresentationItem();
  sub_21700F164();
  v3 = sub_217007E14();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  OUTLINED_FUNCTION_0_1();
  v7 = OUTLINED_FUNCTION_19_1(*(v6 + 104));
  (v5)(v7);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_19_1(*(v8 + 112));
  (v5)(v9);
  OUTLINED_FUNCTION_0_1();
  v11 = OUTLINED_FUNCTION_19_1(*(v10 + 120));
  (v5)(v11);
  OUTLINED_FUNCTION_0_1();
  v13 = OUTLINED_FUNCTION_19_1(*(v12 + 128));
  (v5)(v13);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_1();
  sub_21667E91C(*(v0 + *(v15 + 152)));
  return v0;
}

uint64_t sub_216AF497C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PresentationSource();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_216AF49C0()
{
  if (!sub_216AF4728())
  {
    return 0;
  }

  v0 = sub_216AF4A58();

  return v0;
}

uint64_t sub_216AF4A04()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_86_0();
  sub_216AF4BE4(v1, v2);
  return v0;
}

uint64_t sub_216AF4A58()
{
  if (sub_216AF4728())
  {
    v0 = sub_216AF4A58();

    return v0;
  }

  else
  {
  }
}

uint64_t sub_216AF4AB8()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_123(*(v1 + 520));
  OUTLINED_FUNCTION_1_123(*(v2 + 528));
  OUTLINED_FUNCTION_1_123(*(v3 + 536));
  OUTLINED_FUNCTION_1_123(*(v4 + 544));
  OUTLINED_FUNCTION_1_123(*(v5 + 552));
  v7 = *(v0 + *(v6 + 560));

  return sub_21667E91C(v7);
}

uint64_t sub_216AF4B44()
{
  sub_216AF47E8();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_123(*(v1 + 520));
  OUTLINED_FUNCTION_1_123(*(v2 + 528));
  OUTLINED_FUNCTION_1_123(*(v3 + 536));
  OUTLINED_FUNCTION_1_123(*(v4 + 544));
  OUTLINED_FUNCTION_1_123(*(v5 + 552));
  sub_21667E91C(*(v0 + *(v6 + 560)));
  return v0;
}

uint64_t sub_216AF4BE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_6();
  v6 = *(v5 + 520);
  OUTLINED_FUNCTION_16_0();
  v7 = type metadata accessor for PresentationItem.Destination();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + v6, a1, v7);
  OUTLINED_FUNCTION_0_1();
  sub_216AF651C(a2, v2 + *(v9 + 528), type metadata accessor for MusicAppDestinationContext);
  sub_216692D28();
  sub_216AF657C(a2, type metadata accessor for MusicAppDestinationContext);
  (*(v8 + 8))(a1, v7);
  return v2;
}

uint64_t sub_216AF4D1C()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 520);
  OUTLINED_FUNCTION_16_0();
  type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_1();
  return sub_216AF657C(v0 + *(v4 + 528), type metadata accessor for MusicAppDestinationContext);
}

uint64_t sub_216AF4DC8()
{
  sub_216AF47E8();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 520);
  OUTLINED_FUNCTION_103_1();
  type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_1();
  sub_216AF657C(v0 + *(v4 + 528), type metadata accessor for MusicAppDestinationContext);
  return v0;
}

uint64_t sub_216AF4EA0(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_216AF4EFC(unsigned __int16 *a1, unsigned int a2)
{
  v2 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v2 > v3)
  {
    v3 = v2;
  }

  v77 = v3;
  v75 = *(*(sub_21700D284() - 8) + 64);
  v70 = *(sub_217005EF4() - 8);
  v71 = *(v70 + 80);
  v74 = *(sub_21700C084() - 8);
  v61 = *(v74 + 80);
  v73 = *(sub_21700BA44() - 8);
  v58 = *(v73 + 80);
  v68 = *(sub_21700C1E4() - 8);
  v56 = *(v68 + 80);
  v72 = *(sub_2170073D4() - 8);
  v55 = *(v72 + 80);
  v69 = *(sub_217007324() - 8);
  v54 = *(v69 + 80);
  v67 = *(sub_21700C384() - 8);
  v53 = *(v67 + 80);
  v59 = sub_2170072A4() - 8;
  v66 = *v59;
  v52 = *(*v59 + 80);
  v65 = *(sub_217006F54() - 8);
  v51 = *(v65 + 80);
  v63 = *(sub_21700C924() - 8);
  v49 = *(v63 + 80);
  v64 = *(sub_21700C2F4() - 8);
  v50 = *(v64 + 80);
  v62 = *(sub_21700C8E4() - 8);
  v4 = *(v62 + 80);
  v60 = *(sub_21700C734() - 8);
  v5 = *(v60 + 80);
  v57 = *(sub_217006E94() - 8);
  v6 = *(v57 + 80);
  v7 = *(sub_21700C4B4() - 8);
  v8 = v7;
  v9 = v71 | ((v61 | v58 | v56 | v55 | v54 | v53 | v52 | v51 | v49 | v5 | v6) | (*(v7 + 80) | v71 | v50 | v4)) & 0xF8 | 7u;
  v10 = (v75 + v9) & ~v9;
  v11 = *(v70 + 64);
  v12 = *(v74 + 64);
  v13 = *(v68 + 64);
  if (*(v70 + 84))
  {
    v14 = *(v70 + 64);
  }

  else
  {
    v14 = v11 + 1;
  }

  v15 = v14 + ((v71 + 113) & ~v71);
  v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 <= v15)
  {
    v16 = v14 + ((v71 + 113) & ~v71);
  }

  if (*(v73 + 64) <= v12)
  {
    v17 = *(v74 + 64);
  }

  else
  {
    v17 = *(v73 + 64);
  }

  if (v13 > v17)
  {
    v17 = *(v68 + 64);
  }

  if (v16 <= v17 + 1)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v16;
  }

  if (v18 <= v12 + 1)
  {
    v19 = v12 + 1;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v12)
  {
    v19 = *(v74 + 64);
  }

  if (v19 <= *(v72 + 64))
  {
    v20 = *(v72 + 64);
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= *(v69 + 64))
  {
    v20 = *(v69 + 64);
  }

  if (v20 <= *(v67 + 64))
  {
    v20 = *(v67 + 64);
  }

  if (v20 <= *(v66 + 64))
  {
    v20 = *(v66 + 64);
  }

  if (v20 <= *(v65 + 64))
  {
    v21 = *(v65 + 64);
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v22 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v63 + 64);
  v24 = ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v22 > v24)
  {
    v24 = v22;
  }

  if (v24 <= ((v15 + v71) & ~v71) + v11)
  {
    v25 = ((v15 + v71) & ~v71) + v11;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v64 + 64) + ((v13 + v50) & ~v50);
  if (!*(v64 + 84))
  {
    ++v26;
  }

  if (v25 > v26)
  {
    v26 = v25;
  }

  v27 = *(v62 + 64) + ((v23 + v4) & ~v4);
  if (!*(v62 + 84))
  {
    ++v27;
  }

  if (v26 <= v27)
  {
    v26 = v27;
  }

  if (v26 <= *(v60 + 64))
  {
    v26 = *(v60 + 64);
  }

  if (*(v57 + 64) <= v23)
  {
    v28 = *(v63 + 64);
  }

  else
  {
    v28 = *(v57 + 64);
  }

  if (v12 <= v28)
  {
    v12 = v28;
  }

  v29 = *(v7 + 64);
  if (!*(v8 + 84))
  {
    ++v29;
  }

  v30 = v11 + ((v71 + 16 + ((((((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v71) + 2;
  if (v30 <= v12)
  {
    v30 = v12;
  }

  if (v30 <= 0x18)
  {
    v30 = 24;
  }

  if (v26 <= v30 + 1)
  {
    v31 = v30 + 1;
  }

  else
  {
    v31 = v26;
  }

  if (v31 <= v15)
  {
    v31 = v14 + ((v71 + 113) & ~v71);
  }

  if (v31 <= v11 + ((v71 + 16) & ~v71))
  {
    v31 = v11 + ((v71 + 16) & ~v71);
  }

  if (v31 <= 0x88)
  {
    v31 = 136;
  }

  v32 = (v14 + (v71 | 7) + ((((v10 + v31 + 8) & 0xFFFFFFFFFFFFFFF8) + v71 + 17) & ~v71)) & ~(v71 | 7);
  v33 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(sub_21700D7A4() - 8);
  v35 = *(v34 + 80);
  v36 = (v33 + (v35 | 7) + v32 + 56) & ~(v35 | 7);
  v37 = (v35 + 40) & ~v35;
  v38 = *(v34 + 64);
  if (!*(v34 + 84))
  {
    ++v38;
  }

  v39 = ((((((((((v38 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v36 + 16;
  if (v77 > v39)
  {
    v39 = v77;
  }

  v40 = 48;
  if (v39 > 0x30)
  {
    v40 = v39;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_96;
  }

  v41 = v40 + 1;
  v42 = 8 * (v40 + 1);
  if ((v40 + 1) <= 3)
  {
    v45 = ((a2 + ~(-1 << v42) - 245) >> v42) + 1;
    if (HIWORD(v45))
    {
      v43 = *(a1 + v41);
      if (!v43)
      {
        goto LABEL_96;
      }

      goto LABEL_88;
    }

    if (v45 > 0xFF)
    {
      v43 = *(a1 + v41);
      if (!*(a1 + v41))
      {
        goto LABEL_96;
      }

      goto LABEL_88;
    }

    if (v45 < 2)
    {
LABEL_96:
      v47 = *(a1 + v40);
      if (v47 >= 0xB)
      {
        return (v47 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v43 = *(a1 + v41);
  if (!*(a1 + v41))
  {
    goto LABEL_96;
  }

LABEL_88:
  v46 = (v43 - 1) << v42;
  if (v41 > 3)
  {
    v46 = 0;
  }

  if (v41)
  {
    if (v41 > 3)
    {
      LODWORD(v41) = 4;
    }

    switch(v41)
    {
      case 2:
        LODWORD(v41) = *a1;
        break;
      case 3:
        LODWORD(v41) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v41) = *a1;
        break;
      default:
        LODWORD(v41) = *a1;
        break;
    }
  }

  return (v41 | v46) + 246;
}

void sub_216AF58C0(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v3 > v4)
  {
    v4 = v3;
  }

  v78 = v4;
  v77 = *(*(sub_21700D284() - 8) + 64);
  v72 = *(sub_217005EF4() - 8);
  v73 = *(v72 + 80);
  v76 = *(sub_21700C084() - 8);
  v63 = *(v76 + 80);
  v75 = *(sub_21700BA44() - 8);
  v60 = *(v75 + 80);
  v70 = *(sub_21700C1E4() - 8);
  v58 = *(v70 + 80);
  v74 = *(sub_2170073D4() - 8);
  v57 = *(v74 + 80);
  v71 = *(sub_217007324() - 8);
  v56 = *(v71 + 80);
  v69 = *(sub_21700C384() - 8);
  v55 = *(v69 + 80);
  v61 = sub_2170072A4() - 8;
  v68 = *v61;
  v54 = *(*v61 + 80);
  v67 = *(sub_217006F54() - 8);
  v53 = *(v67 + 80);
  v65 = *(sub_21700C924() - 8);
  v51 = *(v65 + 80);
  v66 = *(sub_21700C2F4() - 8);
  v52 = *(v66 + 80);
  v64 = *(sub_21700C8E4() - 8);
  v5 = *(v64 + 80);
  v62 = *(sub_21700C734() - 8);
  v6 = *(v62 + 80);
  v59 = *(sub_217006E94() - 8);
  v7 = *(v59 + 80);
  v8 = *(sub_21700C4B4() - 8);
  v9 = v8;
  v10 = v73 | ((v63 | v60 | v58 | v57 | v56 | v55 | v54 | v53 | v51 | v6 | v7) | (*(v8 + 80) | v73 | v52 | v5)) & 0xF8 | 7u;
  v11 = (v77 + v10) & ~v10;
  v12 = *(v72 + 64);
  v13 = *(v76 + 64);
  v14 = *(v70 + 64);
  if (*(v72 + 84))
  {
    v15 = *(v72 + 64);
  }

  else
  {
    v15 = v12 + 1;
  }

  v16 = v15 + ((v73 + 113) & ~v73);
  v17 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 <= v16)
  {
    v17 = v15 + ((v73 + 113) & ~v73);
  }

  if (*(v75 + 64) <= v13)
  {
    v18 = *(v76 + 64);
  }

  else
  {
    v18 = *(v75 + 64);
  }

  if (v14 > v18)
  {
    v18 = *(v70 + 64);
  }

  if (v17 <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v17;
  }

  if (v19 <= v13 + 1)
  {
    v20 = v13 + 1;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= v13)
  {
    v20 = *(v76 + 64);
  }

  if (v20 <= *(v74 + 64))
  {
    v21 = *(v74 + 64);
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= *(v71 + 64))
  {
    v21 = *(v71 + 64);
  }

  if (v21 <= *(v69 + 64))
  {
    v21 = *(v69 + 64);
  }

  if (v21 <= *(v68 + 64))
  {
    v21 = *(v68 + 64);
  }

  if (v21 <= *(v67 + 64))
  {
    v22 = *(v67 + 64);
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v23 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v65 + 64);
  v25 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v23 > v25)
  {
    v25 = v23;
  }

  if (v25 <= ((v16 + v73) & ~v73) + v12)
  {
    v26 = ((v16 + v73) & ~v73) + v12;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v66 + 64) + ((v14 + v52) & ~v52);
  if (!*(v66 + 84))
  {
    ++v27;
  }

  if (v26 > v27)
  {
    v27 = v26;
  }

  v28 = *(v64 + 64) + ((v24 + v5) & ~v5);
  if (!*(v64 + 84))
  {
    ++v28;
  }

  if (v27 <= v28)
  {
    v27 = v28;
  }

  if (v27 <= *(v62 + 64))
  {
    v27 = *(v62 + 64);
  }

  if (*(v59 + 64) <= v24)
  {
    v29 = *(v65 + 64);
  }

  else
  {
    v29 = *(v59 + 64);
  }

  if (v13 <= v29)
  {
    v13 = v29;
  }

  v30 = *(v8 + 64);
  if (!*(v9 + 84))
  {
    ++v30;
  }

  v31 = v12 + ((v73 + 16 + ((((((v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v73) + 2;
  if (v31 <= v13)
  {
    v31 = v13;
  }

  if (v31 <= 0x18)
  {
    v31 = 24;
  }

  if (v27 <= v31 + 1)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = v27;
  }

  if (v32 <= v16)
  {
    v32 = v15 + ((v73 + 113) & ~v73);
  }

  if (v32 <= v12 + ((v73 + 16) & ~v73))
  {
    v32 = v12 + ((v73 + 16) & ~v73);
  }

  if (v32 <= 0x88)
  {
    v32 = 136;
  }

  v33 = (v15 + (v73 | 7) + ((((v11 + v32 + 8) & 0xFFFFFFFFFFFFFFF8) + v73 + 17) & ~v73)) & ~(v73 | 7);
  v34 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(sub_21700D7A4() - 8);
  v36 = *(v35 + 80);
  v37 = (v34 + (v36 | 7) + v33 + 56) & ~(v36 | 7);
  v38 = (v36 + 40) & ~v36;
  v39 = *(v35 + 64);
  if (!*(v35 + 84))
  {
    ++v39;
  }

  v40 = ((((((((((v39 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v37 + 16;
  if (v78 > v40)
  {
    v40 = v78;
  }

  if (v40 <= 0x30)
  {
    v40 = 48;
  }

  v41 = v40 + 1;
  v42 = 8 * (v40 + 1);
  if (a3 < 0xF6)
  {
    v45 = 0;
    v43 = a1;
    v44 = a2;
  }

  else
  {
    v43 = a1;
    v44 = a2;
    if (v41 <= 3)
    {
      v48 = ((a3 + ~(-1 << v42) - 245) >> v42) + 1;
      if (HIWORD(v48))
      {
        v45 = 4;
      }

      else
      {
        if (v48 < 0x100)
        {
          v49 = 1;
        }

        else
        {
          v49 = 2;
        }

        if (v48 >= 2)
        {
          v45 = v49;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }
  }

  if (v44 > 0xF5)
  {
    v46 = v44 - 246;
    if (v41 < 4)
    {
      v47 = (v46 >> v42) + 1;
      if (v40 != -1)
      {
        v50 = v46 & ~(-1 << v42);
        bzero(v43, v41);
        if (v41 == 3)
        {
          *v43 = v50;
          v43[2] = BYTE2(v50);
        }

        else if (v41 == 2)
        {
          *v43 = v50;
        }

        else
        {
          *v43 = v46;
        }
      }
    }

    else
    {
      bzero(v43, v40 + 1);
      *v43 = v46;
      v47 = 1;
    }

    switch(v45)
    {
      case 1:
        v43[v41] = v47;
        break;
      case 2:
        *&v43[v41] = v47;
        break;
      case 3:
LABEL_111:
        __break(1u);
        break;
      case 4:
        *&v43[v41] = v47;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v45)
    {
      case 1:
        v43[v41] = 0;
        if (!v44)
        {
          return;
        }

        goto LABEL_100;
      case 2:
        *&v43[v41] = 0;
        goto LABEL_99;
      case 3:
        goto LABEL_111;
      case 4:
        *&v43[v41] = 0;
        if (!v44)
        {
          return;
        }

        goto LABEL_100;
      default:
LABEL_99:
        if (v44)
        {
LABEL_100:
          v43[v40] = -v44;
        }

        break;
    }
  }
}

void sub_216AF6304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ObjectGraph();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_216AF6388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700F3D4();
  *a1 = result;
  return result;
}

uint64_t sub_216AF63B4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2880);
  __swift_project_value_buffer(v0, qword_27CAC2880);
  return sub_217007C94();
}

uint64_t sub_216AF64B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AF651C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216AF657C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AF6600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v96 = a3;
  v4 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v87 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v93 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v85 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v84 = &v81 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v86 = &v81 - v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v81 - v26;
  sub_21700D7A4();
  sub_21700CE04();
  v92 = v8;
  v28 = *(v8 + 16);
  v94 = v6;
  v29 = v6;
  v30 = v14;
  v31 = v93;
  v89 = v28;
  v28(v13, v99, v29);
  v82 = v27;
  v83 = v13;
  sub_21700D734();
  v95 = a1;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v35 = *(v31 + 1);
  v90 = v30;
  v93 = v35;
  (v35)(v24, v30);
  if (v34)
  {
    v36 = type metadata accessor for SocialProfileFollowRequestLockup();
    v97 = v32;
    v98 = v34;
    v37 = v96;
    sub_21700F364();
    v38 = v86;
    sub_21700CE04();
    v39 = v87;
    v40 = v99;
    v89(v87, v99, v94);
    v41 = v88;
    v42 = v91;
    ContentDescriptor.init(deserializing:using:)(v38, v39, v43, v44, v45, v46, v47, v48, v81, v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82));
    v49 = v37;
    v91 = v42;
    if (!v42)
    {
      sub_216A29168(v41, v37 + *(v36 + 24), type metadata accessor for ContentDescriptor);
      type metadata accessor for Artwork();
      v50 = v36;
      v51 = v82;
      sub_21700CE04();
      v89(v83, v40, v94);
      v81 = v50;
      sub_216AF71A4(&qword_280E2BF60, type metadata accessor for Artwork);
      v52 = v96;
      sub_21700D734();
      sub_21700CE04();
      v53 = sub_21700CDB4();
      v55 = v54;
      v56 = v90;
      v57 = v93;
      (v93)(v51, v90);
      v58 = (v52 + *(v50 + 28));
      v59 = v52;
      *v58 = v53;
      v58[1] = v55;
      sub_21700CE04();
      v60 = sub_21700CDB4();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_6_70();
      v57(v63);
      v64 = v81;
      v65 = (v52 + *(v81 + 32));
      *v65 = v60;
      v65[1] = v62;
      v66 = v84;
      sub_21700CE04();
      LOBYTE(v60) = sub_21700CD44();
      v67 = v93;
      (v93)(v66, v56);
      *(v59 + *(v64 + 36)) = v60 & 1;
      v68 = v85;
      v69 = v95;
      sub_21700CE04();
      LOBYTE(v60) = sub_21700CD44();
      v67(v68, v56);
      *(v59 + *(v81 + 40)) = v60 & 1;
      sub_21700CE04();
      v70 = v99;
      sub_21700D2E4();
      v71 = OUTLINED_FUNCTION_6_70();
      (v67)(v71);
      sub_21700CE04();
      sub_21700D2E4();
      v72 = OUTLINED_FUNCTION_6_70();
      (v67)(v72);
      sub_21700CE04();
      sub_21700D2E4();
      (*(v92 + 8))(v70, v94);
      v67(v69, v56);
      v73 = OUTLINED_FUNCTION_6_70();
      return (v67)(v73);
    }
  }

  else
  {
    v75 = sub_21700E2E4();
    sub_216AF71A4(&qword_280E2A0F8, MEMORY[0x277D22548]);
    v76 = swift_allocError();
    v78 = v77;
    v79 = type metadata accessor for SocialProfileFollowRequestLockup();
    *v78 = 25705;
    v78[1] = 0xE200000000000000;
    v78[2] = v79;
    (*(*(v75 - 8) + 104))(v78, *MEMORY[0x277D22530], v75);
    v91 = v76;
    swift_willThrow();
    v49 = v96;
    v40 = v99;
  }

  (*(v92 + 8))(v40, v94);
  (v93)(v95, v90);
  result = sub_216697664(v49, &qword_27CAB6D58);
  if (v34)
  {
    v80 = type metadata accessor for SocialProfileFollowRequestLockup();
    return sub_216788110(v49 + *(v80 + 20));
  }

  return result;
}

uint64_t sub_216AF6DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SocialProfileFollowRequestLockup();
  if ((MEMORY[0x21CEA0160](a1 + v15[5], a2 + v15[5]) & 1) == 0 || (static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    v20 = *v18 == *v19 && v16 == v17;
    if (!v20 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v17)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_32:
    v28 = 0;
    return v28 & 1;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  v25 = *v23 == *v24 && v21 == v22;
  if (!v25 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if (*(a1 + v15[9]) != *(a2 + v15[9]) || *(a1 + v15[10]) != *(a2 + v15[10]))
  {
    goto LABEL_32;
  }

  v26 = v15[14];
  v27 = *(v11 + 48);
  sub_216681B04(a1 + v26, v14, &qword_27CAB6D60);
  sub_216681B04(a2 + v26, &v14[v27], &qword_27CAB6D60);
  OUTLINED_FUNCTION_5_3(v14);
  if (v20)
  {
    OUTLINED_FUNCTION_5_3(&v14[v27]);
    if (v20)
    {
      sub_216697664(v14, &qword_27CAB6D60);
      v28 = 1;
      return v28 & 1;
    }

    goto LABEL_31;
  }

  sub_216681B04(v14, v10, &qword_27CAB6D60);
  OUTLINED_FUNCTION_5_3(&v14[v27]);
  if (v29)
  {
    sub_216A2910C(v10);
LABEL_31:
    sub_216697664(v14, &qword_27CABE598);
    goto LABEL_32;
  }

  sub_216A29168(&v14[v27], v7, type metadata accessor for Artwork);
  v31 = sub_21700C4A4();
  if (v31)
  {
    v28 = sub_21688ADC8(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  }

  else
  {
    v28 = 0;
  }

  sub_216A2910C(v7);
  sub_216A2910C(v10);
  sub_216697664(v14, &qword_27CAB6D60);
  return v28 & 1;
}

uint64_t sub_216AF71A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AF71EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MenuBuilder();
  OUTLINED_FUNCTION_0_145();
  sub_216AF73B0(v6, v7);
  OUTLINED_FUNCTION_2_101();
  *a3 = sub_217008CF4();
  a3[1] = v8;
  type metadata accessor for SocialGraphController();
  sub_216AF73B0(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  OUTLINED_FUNCTION_2_101();
  a3[2] = sub_217008CF4();
  a3[3] = v9;
  type metadata accessor for UserSocialProfileCoordinator();
  sub_216AF73B0(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  OUTLINED_FUNCTION_2_101();
  a3[4] = sub_217008CF4();
  a3[5] = v10;
  v11 = type metadata accessor for SocialProfileContextMenu();
  v12 = v11[7];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[8];
  sub_21700AEA4();
  *(a3 + v13) = v15;
  sub_216AF7D48(a1, a3 + v11[9], type metadata accessor for SocialProfileDescriptor);
  return sub_216AF7D48(a2, a3 + v11[10], type metadata accessor for MenuConfiguration);
}

uint64_t sub_216AF73B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SocialProfileContextMenu()
{
  result = qword_280E35F70;
  if (!qword_280E35F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AF746C()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_216AF7568();
    if (v1 <= 0x3F)
    {
      sub_216A949B4();
      if (v2 <= 0x3F)
      {
        sub_2167EE974();
        if (v3 <= 0x3F)
        {
          sub_216AF75FC();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SocialProfileDescriptor(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for MenuConfiguration(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_216AF7568()
{
  if (!qword_280E2ACB0)
  {
    type metadata accessor for SocialGraphController();
    sub_216AF73B0(&qword_280E39AC8, type metadata accessor for SocialGraphController);
    v0 = sub_217008D04();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2ACB0);
    }
  }
}

void sub_216AF75FC()
{
  if (!qword_280E2A580)
  {
    v0 = sub_21700AEE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A580);
    }
  }
}

uint64_t sub_216AF7668@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for SocialProfileContextMenu();
  OUTLINED_FUNCTION_1();
  v32 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v7 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v13 = v2[9];

    sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v31, v32, v33, v34, v35, *(&v35 + 1), v36, v37, v38, v39, v40, v41);
    v22 = sub_216C64FC8(v1 + v13, v12, v1 + v2[10]);

    (*(v9 + 8))(v12, v7);
    type metadata accessor for MenuBuilder();
    v23 = v33;
    sub_216C647A0(v22);

    v35 = *(v1 + v2[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28A0);
    sub_21700AEB4();
    v24 = v34;
    *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28A8) + 52)) = v24;
    sub_216AF7CE4(v1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v26 = swift_allocObject();
    sub_216AF7D48(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for SocialProfileContextMenu);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28B0);
    v28 = (v23 + *(result + 36));
    *v28 = sub_216AF7DA8;
    v28[1] = v26;
    v28[2] = 0;
    v28[3] = 0;
  }

  else
  {
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_145();
    sub_216AF73B0(v29, v30);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AF7930(uint64_t a1)
{
  v2 = type metadata accessor for SocialProfileContextMenu();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7 - 8];
  if (*(a1 + 16))
  {
    sub_216AF7CE4(a1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    sub_216AF7D48(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v10 + v9, type metadata accessor for SocialProfileContextMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790);
    sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790);

    sub_21700D1D4();
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    type metadata accessor for SocialGraphController();
    sub_216AF73B0(&qword_280E39AC8, type metadata accessor for SocialGraphController);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AF7BE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for SocialProfileContextMenu();
  v5 = a2 + *(v4 + 36);
  v6 = (v5 + *(type metadata accessor for SocialProfileDescriptor(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v15 = v8;
  v16 = v7;
  v13[2] = &v15;
  result = sub_216CA1DA8(sub_216AF7E78, v13, v3);
  if (result)
  {
    v10 = (a2 + *(v4 + 32));
    v12 = *v10;
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28A0);
    result = sub_21700AEB4();
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v13[4] = v12;
      v13[5] = v11;
      v13[3] = v14 + 1;
      sub_21700AEC4();
    }
  }

  return result;
}

uint64_t sub_216AF7CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileContextMenu();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AF7D48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216AF7DA8()
{
  v1 = *(type metadata accessor for SocialProfileContextMenu() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216AF7930(v2);
}

uint64_t sub_216AF7E08(uint64_t *a1)
{
  v3 = *(type metadata accessor for SocialProfileContextMenu() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216AF7BE4(a1, v4);
}

unint64_t sub_216AF7E98()
{
  result = qword_27CAC28B8;
  if (!qword_27CAC28B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC28B0);
    sub_2166D9530(&qword_27CAC28C0, &qword_27CAC28A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC28B8);
  }

  return result;
}

void sub_216AF7F78()
{
  if (!qword_280E29F10)
  {
    type metadata accessor for PlaylistAddableItem();
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F10);
    }
  }
}

uint64_t sub_216AF7FF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a2;
  v105 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v103 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v96 = v13 - v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v95 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v94 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  v93[5] = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v93[4] = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  v93[3] = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  v93[2] = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  v29 = v93 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v93 - v31;
  sub_21700D7A4();
  OUTLINED_FUNCTION_8_59();
  sub_21700CE04();
  v33 = *(v103 + 16);
  v107 = v4;
  v101 = v33;
  v102 = v103 + 16;
  v33(v8, v110, v4);
  v100 = v8;
  sub_21700D734();
  v99 = a1;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v37 = *(v11 + 8);
  v104 = v9;
  v106 = v11 + 8;
  v38 = v37;
  v37(v29, v9);
  if (v36)
  {
    v39 = type metadata accessor for AlbumTrackLockup();
    v108 = v34;
    v109 = v36;
    v40 = v105;
    sub_21700F364();
    v41 = v99;
    sub_21700CE04();
    v42 = v39;
    OUTLINED_FUNCTION_12_48();
    v43 = v110;
    sub_21700D2E4();
    v98 = v38;
    v38(v32, v104);
    v44 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v45 = v100;
    v46 = v43;
    v47 = v43;
    v48 = v107;
    v101(v100, v46, v107);
    v97 = v42;
    v93[1] = sub_2166D286C(qword_280E40390, type metadata accessor for ContentDescriptor);
    v93[0] = v44;
    sub_21700D734();
    type metadata accessor for Artwork();
    sub_21700CE04();
    v49 = v47;
    v50 = v101;
    v101(v45, v49, v48);
    sub_2166D286C(&qword_280E2BF60, type metadata accessor for Artwork);
    v51 = v40;
    sub_21700D734();
    sub_21700CE04();
    v52 = sub_21700CDB4();
    v54 = v53;
    v98(v32, v104);
    v55 = v97;
    v56 = (v51 + v97[7]);
    *v56 = v52;
    v56[1] = v54;
    sub_21700CE04();
    v50(v45, v110, v107);
    sub_216AC6598();
    v57 = v55[8];
    v58 = v55;
    v59 = v105;
    *(v105 + v57) = v60;
    sub_21700CE04();
    sub_21700CD24();
    v61 = v104;
    v62 = v98;
    v98(v32, v104);
    OUTLINED_FUNCTION_15_49(v58[9]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    sub_21700CD94();
    v63 = OUTLINED_FUNCTION_10_53();
    v62(v63);
    OUTLINED_FUNCTION_15_49(v58[10]);
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    sub_21700D2E4();
    v64 = v61;
    (v62)(v32, v61);
    sub_21700CE04();
    sub_21700CD44();
    v65 = OUTLINED_FUNCTION_7_72();
    v62(v65);
    OUTLINED_FUNCTION_10_59(v58[11]);
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    sub_21700CD44();
    v66 = OUTLINED_FUNCTION_7_72();
    v62(v66);
    OUTLINED_FUNCTION_10_59(v58[12]);
    sub_21700CE04();
    sub_21700CD44();
    v67 = OUTLINED_FUNCTION_7_72();
    v62(v67);
    OUTLINED_FUNCTION_10_59(v58[13]);
    sub_21700CE04();
    sub_21700CD44();
    v68 = OUTLINED_FUNCTION_7_72();
    v62(v68);
    OUTLINED_FUNCTION_10_59(v58[14]);
    v69 = v94;
    sub_21700CE04();
    sub_21700CD44();
    v70 = v69;
    v71 = v64;
    (v62)(v70, v64);
    OUTLINED_FUNCTION_10_59(v58[15]);
    sub_21700CE04();
    v72 = sub_21700CDB4();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_10_53();
    v62(v75);
    v76 = (v59 + v58[17]);
    *v76 = v72;
    v76[1] = v74;
    OUTLINED_FUNCTION_11_0();
    v77 = v95;
    sub_21700CE04();
    sub_21700CD44();
    (v62)(v77, v71);
    OUTLINED_FUNCTION_10_59(v58[18]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v101(v100, v110, v107);
    OUTLINED_FUNCTION_12_48();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    sub_21700D2E4();
    v78 = OUTLINED_FUNCTION_10_53();
    v62(v78);
    v79 = v96;
    sub_21700CE04();
    sub_21700CD44();
    v80 = v79;
    v81 = v71;
    (v62)(v80, v71);
    OUTLINED_FUNCTION_10_59(v58[19]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    v82 = v110;
    sub_21700D2E4();
    v83 = OUTLINED_FUNCTION_10_53();
    v62(v83);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    sub_21700D2E4();
    (v62)(v32, v71);
    sub_21700CE04();
    v84 = sub_21700CDB4();
    v86 = v85;
    (*(v103 + 8))(v82, v107);
    (v62)(v41, v81);
    result = (v62)(v32, v81);
    v88 = (v59 + v97[24]);
    *v88 = v84;
    v88[1] = v86;
  }

  else
  {
    v89 = sub_21700E2E4();
    sub_2166D286C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v91 = v90;
    v92 = type metadata accessor for AlbumTrackLockup();
    *v91 = 25705;
    v91[1] = 0xE200000000000000;
    v91[2] = v92;
    (*(*(v89 - 8) + 104))(v91, *MEMORY[0x277D22530], v89);
    swift_willThrow();
    (*(v103 + 8))(v110, v107);
    v38(v99, v104);
    return sub_216697664(v105, &qword_27CAB6D58);
  }

  return result;
}

void sub_216AF8C28(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v117 = a3;
  v10 = type metadata accessor for ContentDescriptor(0);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v115 = v12 - v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v116 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v118 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v119 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77();
  v120 = v22 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v123 = &v109 - v25;
  v26 = type metadata accessor for Artwork(0);
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v109 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v35 = OUTLINED_FUNCTION_36(v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  if (!sub_216F60DF4())
  {

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28D0);
    sub_2167880BC();
    swift_allocError();
    *v54 = xmmword_217014E10;
    *(v54 + 16) = v53;
    swift_willThrow();
    OUTLINED_FUNCTION_1_124();
    return;
  }

  v109 = a1;
  v113 = a4;
  v114 = a2;
  v38 = a5;
  v39 = sub_216F60C44();
  v41 = v40;
  v42 = type metadata accessor for AlbumTrackLockup();
  v43 = v42[5];
  v121 = v39;
  v122 = v41;
  v111 = v43;
  sub_21700F364();
  *&v44 = OUTLINED_FUNCTION_48(v38 + v42[6]);
  v110 = v45;
  v112 = v42;
  v46 = v38;
  v47 = v38 + v42[23];
  *(v47 + 32) = 0;
  *v47 = v44;
  *(v47 + 16) = v44;
  if (sub_216F619E4())
  {
    sub_216F6165C();
    sub_21691A084(v33, v30, type metadata accessor for Artwork);
    sub_216C7DA84(v30, v37);
    v48 = v5;
    if (v5)
    {
      OUTLINED_FUNCTION_6_71();
      v49 = 0;
      v50 = 0;
      v51 = v46;
      v52 = v112;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_6_71();
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v48 = v5;
  }

  v51 = v46;
  v56 = type metadata accessor for Artwork();
  v57 = 1;
  __swift_storeEnumTagSinglePayload(v37, v55, 1, v56);
  v52 = v112;
  sub_21678818C(v37, v46 + v112[25], &qword_27CAB6D60);
  v58 = sub_216F61A44();
  v59 = (v46 + v52[7]);
  *v59 = v58;
  v59[1] = v60;
  v61 = sub_216F61F84();
  v62 = v109;
  v63 = v120;
  if (v61)
  {
    sub_216F61D00();
    v64 = OUTLINED_FUNCTION_4_81();
    v65 = v118;
    sub_21691A084(v64, v118, v66);
    sub_21689C518(v65, v67, v68, v69, v70, v71, v72, v73, v109, v110, SWORD1(v110), SWORD2(v110), SBYTE6(v110), SHIBYTE(v110), v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    if (v48)
    {
      OUTLINED_FUNCTION_0_146();
      v50 = 0;
      v49 = 1;
      goto LABEL_15;
    }

    v118 = v47;
    OUTLINED_FUNCTION_0_146();
    v57 = 0;
  }

  else
  {
    v118 = v47;
  }

  v74 = type metadata accessor for ContentDescriptor();
  v75 = v123;
  __swift_storeEnumTagSinglePayload(v123, v57, 1, v74);
  sub_21678818C(v75, v51 + v52[26], &qword_27CAB6A00);
  v76 = sub_216F61FE4();
  OUTLINED_FUNCTION_13_47(v76, v52[11]);
  v77 = sub_216F62088();
  v78 = sub_2167A74D4();
  v80 = sub_216F76E04(v77, v79, &type metadata for Link, v78);
  if (!v48)
  {
    *(v51 + v52[8]) = v80;
    v81 = sub_216F62290();
    v82 = v51 + v52[9];
    *v82 = v81;
    *(v82 + 8) = 0;
    v83 = sub_216F62534();
    v84 = v51 + v52[10];
    *v84 = v83;
    *(v84 + 8) = 0;
    v85 = sub_216F627E4();
    OUTLINED_FUNCTION_13_47(v85, v52[12]);
    v86 = sub_216F62A8C();
    OUTLINED_FUNCTION_13_47(v86, v52[13]);
    v87 = sub_216F62B30();
    OUTLINED_FUNCTION_13_47(v87, v52[14]);
    v88 = sub_216F62BD4();
    OUTLINED_FUNCTION_13_47(v88, v52[19]);
    v89 = sub_216F62C78();
    OUTLINED_FUNCTION_13_47(v89, v52[15]);
    if (sub_216F630E0())
    {
      sub_216F62D1C();
      v90 = OUTLINED_FUNCTION_4_81();
      v91 = v115;
      sub_21691A084(v90, v115, v92);
      sub_21689C518(v91, v93, v94, v95, v96, v97, v98, v99, v109, v110, SWORD1(v110), SWORD2(v110), SBYTE6(v110), SHIBYTE(v110), v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
      OUTLINED_FUNCTION_0_146();
      v100 = 0;
    }

    else
    {
      v100 = 1;
    }

    OUTLINED_FUNCTION_1_124();
    __swift_storeEnumTagSinglePayload(v63, v100, 1, v74);
    sub_21678818C(v63, v51 + v52[16], &qword_27CAB6A00);
    *&v101 = OUTLINED_FUNCTION_48(v51 + v52[20]);
    v102 = v51 + v52[21];
    *(v102 + 32) = 0;
    *v102 = v101;
    *(v102 + 16) = v101;
    v103 = (v51 + v52[17]);
    v104 = v113;
    *v103 = v117;
    v103[1] = v104;
    v105 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v105);
    OUTLINED_FUNCTION_48(v51 + v52[22]);
    *(v51 + v52[18]) = v106;
    v107 = (v51 + v52[24]);
    v108 = v114;
    *v107 = v62;
    v107[1] = v108;
    return;
  }

  v49 = 1;
  v50 = 1;
  v47 = v118;
LABEL_15:
  OUTLINED_FUNCTION_1_124();

  sub_216788110(v51 + v111);
  sub_216697664(v110, &qword_27CAB6DB0);
  if (v49)
  {
  }

  sub_216697664(v47, &qword_27CAB6DB0);
  if (v49)
  {
    sub_216697664(v51 + v52[25], &qword_27CAB6D60);
  }

  if (v50)
  {
    sub_216697664(v51 + v52[26], &qword_27CAB6A00);
  }
}

uint64_t sub_216AF9344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AF939C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_216AF93F0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_216AF94C0()
{
  type metadata accessor for MusicEvent.Event(319);
  if (v0 <= 0x3F)
  {
    sub_2166D7C24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216AF9544()
{
  sub_2170061E4();
  if (v0 <= 0x3F)
  {
    sub_216AF95CC();
    if (v1 <= 0x3F)
    {
      sub_216AF964C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_216AF95CC()
{
  if (!qword_280E4A4E8)
  {
    sub_2170061E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E4A4E8);
    }
  }
}

void sub_216AF964C()
{
  if (!qword_280E30318)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E30318);
    }
  }
}

uint64_t sub_216AF96B0(uint64_t a1, uint64_t a2)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28E0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v81 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v79 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v82 = &v77 - v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v83 = &v77 - v13;
  sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v85 = v15;
  v86 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v84 = &v77 - v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  type metadata accessor for MusicEvent.Event(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v77 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28E8);
  v35 = OUTLINED_FUNCTION_36(v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v77 - v36;
  v39 = &v77 + *(v38 + 56) - v36;
  sub_2168CF038(a1, &v77 - v36);
  sub_2168CF038(a2, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2168CF038(v37, v30);
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0) + 48);
      if (OUTLINED_FUNCTION_8_65() != 1)
      {
        sub_216697664(&v30[v46], &qword_27CAB74E8);
        (*(v85 + 1))(v30, v86);
        goto LABEL_53;
      }

      v47 = v84;
      v48 = v85;
      v49 = v86;
      v78 = *(v85 + 4);
      v78(v84, v39, v86);
      v50 = v83;
      sub_2168CF09C(&v30[v46], v83);
      v51 = &v39[v46];
      v52 = v47;
      v53 = v82;
      sub_2168CF09C(v51, v82);
      LOBYTE(v47) = sub_217006184();
      v54 = v30;
      v55 = *(v48 + 1);
      v55(v54, v49);
      if ((v47 & 1) == 0)
      {
        OUTLINED_FUNCTION_9_64(v53);
        OUTLINED_FUNCTION_9_64(v50);
        v55(v52, v49);
        goto LABEL_65;
      }

      v85 = v55;
      v56 = v81;
      v57 = *(v80 + 48);
      sub_2168CF10C(v50, v81);
      sub_2168CF10C(v53, v56 + v57);
      OUTLINED_FUNCTION_15_6(v56);
      if (v44)
      {
        OUTLINED_FUNCTION_9_64(v53);
        OUTLINED_FUNCTION_9_64(v50);
        v85(v84, v49);
        OUTLINED_FUNCTION_15_6(v56 + v57);
        if (v44)
        {
          sub_216697664(v56, &qword_27CAB74E8);
          goto LABEL_59;
        }

        goto LABEL_64;
      }

      v64 = v79;
      sub_2168CF10C(v56, v79);
      OUTLINED_FUNCTION_15_6(v56 + v57);
      if (v65)
      {
        OUTLINED_FUNCTION_9_64(v82);
        OUTLINED_FUNCTION_9_64(v83);
        v66 = v85;
        v85(v84, v49);
        v66(v64, v49);
LABEL_64:
        sub_216697664(v56, &qword_27CAC28E0);
        goto LABEL_65;
      }

      v78(v18, (v56 + v57), v49);
      OUTLINED_FUNCTION_1_125();
      sub_216AFB364(v67, v68);
      v69 = sub_21700E494();
      v70 = v85;
      v85(v18, v49);
      OUTLINED_FUNCTION_51();
      sub_216697664(v71, v72);
      OUTLINED_FUNCTION_51();
      sub_216697664(v73, v74);
      v70(v84, v49);
      v70(v64, v49);
      OUTLINED_FUNCTION_51();
      sub_216697664(v75, v76);
      if (v69)
      {
LABEL_59:
        sub_216AFB3AC(v37);
        v58 = 1;
      }

      else
      {
LABEL_65:
        sub_216AFB3AC(v37);
LABEL_54:
        v58 = 0;
      }

      return v58 & 1;
    case 2u:
      sub_2168CF038(v37, v27);
      v41 = *(v27 + 8);
      v40 = *(v27 + 16);
      if (OUTLINED_FUNCTION_8_65() != 2)
      {

        goto LABEL_53;
      }

      v43 = *(v39 + 1);
      v42 = *(v39 + 2);
      if ((sub_21688AE10(*v27) & 1) == 0)
      {

        goto LABEL_65;
      }

      v44 = v41 == v43 && v40 == v42;
      if (v44)
      {

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_5_74();
      v45 = sub_21700F7D4();

      if (v45)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    case 3u:
      if (OUTLINED_FUNCTION_8_65() == 3)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 4u:
      if (OUTLINED_FUNCTION_8_65() == 4)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 5u:
      if (OUTLINED_FUNCTION_8_65() == 5)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 6u:
      if (OUTLINED_FUNCTION_8_65() == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 7u:
      if (OUTLINED_FUNCTION_8_65() == 7)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 8u:
      if (OUTLINED_FUNCTION_8_65() == 8)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 9u:
      if (OUTLINED_FUNCTION_8_65() == 9)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xAu:
      if (OUTLINED_FUNCTION_8_65() == 10)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xBu:
      if (OUTLINED_FUNCTION_8_65() == 11)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xCu:
      if (OUTLINED_FUNCTION_8_65() == 12)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xDu:
      if (OUTLINED_FUNCTION_8_65() == 13)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xEu:
      if (OUTLINED_FUNCTION_8_65() == 14)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xFu:
      if (OUTLINED_FUNCTION_8_65() == 15)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0x10u:
      if (OUTLINED_FUNCTION_8_65() == 16)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0x11u:
      if (OUTLINED_FUNCTION_8_65() == 17)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0x12u:
      if (OUTLINED_FUNCTION_8_65() == 18)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    default:
      sub_2168CF038(v37, v33);
      if (!OUTLINED_FUNCTION_8_65())
      {
        v59 = v85;
        v60 = v39;
        v61 = v86;
        (*(v85 + 4))(v23, v60, v86);
        v58 = sub_217006184();
        v62 = *(v59 + 1);
        v62(v23, v61);
        v62(v33, v61);
        sub_216AFB3AC(v37);
        return v58 & 1;
      }

      (*(v85 + 1))(v33, v86);
LABEL_53:
      sub_216697664(v37, &qword_27CAC28E8);
      goto LABEL_54;
  }
}

uint64_t sub_216AF9EF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_77();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  type metadata accessor for MusicEvent.Event(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168CF038(v0, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0) + 48);
      v31 = *(v11 + 32);
      v31(v15, v21, v9);
      sub_2168CF09C(&v21[v26], v8);
      MEMORY[0x21CEA0720](5);
      OUTLINED_FUNCTION_1_125();
      sub_216AFB364(v27, v28);
      sub_21700E434();
      sub_2168CF10C(v8, v5);
      if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
      {
        sub_21700F914();
        sub_216697664(v8, &qword_27CAB74E8);
        return (*(v11 + 8))(v15, v9);
      }

      else
      {
        v31(v18, v5, v9);
        sub_21700F914();
        sub_21700E434();
        v29 = *(v11 + 8);
        v29(v18, v9);
        sub_216697664(v8, &qword_27CAB74E8);
        return (v29)(v15, v9);
      }

    case 2u:
      MEMORY[0x21CEA0720](6);
      sub_21700E614();

      OUTLINED_FUNCTION_51();
      sub_21700E614();

    case 3u:
      v25 = 0;
      goto LABEL_23;
    case 4u:
      v25 = 1;
      goto LABEL_23;
    case 5u:
      v25 = 2;
      goto LABEL_23;
    case 6u:
      v25 = 3;
      goto LABEL_23;
    case 7u:
      v25 = 7;
      goto LABEL_23;
    case 8u:
      v25 = 8;
      goto LABEL_23;
    case 9u:
      v25 = 9;
      goto LABEL_23;
    case 0xAu:
      v25 = 10;
      goto LABEL_23;
    case 0xBu:
      v25 = 11;
      goto LABEL_23;
    case 0xCu:
      v25 = 12;
      goto LABEL_23;
    case 0xDu:
      v25 = 13;
      goto LABEL_23;
    case 0xEu:
      v25 = 14;
      goto LABEL_23;
    case 0xFu:
      v25 = 15;
      goto LABEL_23;
    case 0x10u:
      v25 = 16;
      goto LABEL_23;
    case 0x11u:
      v25 = 17;
      goto LABEL_23;
    case 0x12u:
      v25 = 18;
LABEL_23:
      result = MEMORY[0x21CEA0720](v25);
      break;
    default:
      (*(v11 + 32))(v18, v21, v9);
      MEMORY[0x21CEA0720](4);
      OUTLINED_FUNCTION_1_125();
      sub_216AFB364(v22, v23);
      sub_21700E434();
      result = (*(v11 + 8))(v18, v9);
      break;
  }

  return result;
}

uint64_t sub_216AFA420@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v124 = a2;
  v127 = a3;
  sub_21700D214();
  OUTLINED_FUNCTION_1();
  v119 = v5;
  v120 = v4;
  MEMORY[0x28223BE20](v4);
  v118 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v113 = v9 - v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v116 = &v111 - v12;
  sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v114 = v14;
  v115 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v112 = v15 - v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v111 - v18;
  v20 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v111 = (v24 - v25);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  v121 = &v111 - v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v111 - v31;
  v33 = 0xE400000000000000;
  v125 = a1;
  sub_21700CE04();
  v122 = sub_21700CDB4();
  v123 = v20;
  v35 = v34;
  v36 = *(v22 + 8);
  v126 = v22 + 8;
  v36(v32, v20);
  if (v35)
  {
    v37 = 0xD000000000000011;
    OUTLINED_FUNCTION_17_5();
    v39 = v122;
    v40 = v122 == 0xD00000000000001DLL && v38 == v35;
    v117 = v36;
    if (v40)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD000000000000011 && v61 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD00000000000001ALL && v63 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD000000000000018 && v65 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD00000000000001BLL && v67 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    if (v39 == 0x6144657461647075 && v35 == 0xEA00000000006574)
    {

      v71 = v116;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_5_74();
    v70 = sub_21700F7D4();
    v71 = v116;
    if (v70)
    {

LABEL_44:
      OUTLINED_FUNCTION_10_60();
      sub_21700CD54();
      v41 = v123;
      OUTLINED_FUNCTION_11_54();
      (v36)();
      v72 = v115;
      if (__swift_getEnumTagSinglePayload(v71, 1, v115) == 1)
      {
        v54 = 1702125924;
        v73 = v71;
LABEL_46:
        sub_216697664(v73, &qword_27CAB74E8);
        v55 = MEMORY[0x277D22530];
        v33 = 0xE400000000000000;
        goto LABEL_12;
      }

      v74 = *(v114 + 32);
      v74(v19, v71, v72);
      v74(v127, v19, v72);
      type metadata accessor for MusicEvent.Event(0);
LABEL_48:
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v54 = 1702125924;
    v75 = v39 == 0x6974617269707865 && v35 == 0xEE00657461446E6FLL;
    if (v75 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0))
    {

      OUTLINED_FUNCTION_10_60();
      v73 = v113;
      sub_21700CD54();
      v41 = v123;
      OUTLINED_FUNCTION_11_54();
      (v36)();
      v76 = v115;
      if (__swift_getEnumTagSinglePayload(v73, 1, v115) == 1)
      {
        goto LABEL_46;
      }

      v77 = v114;
      v78 = v112;
      (*(v114 + 32))(v112, v73, v76);
      v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0) + 48);
      (*(v77 + 16))(v127, v78, v76);
      sub_21700CE04();
      sub_21700CD54();
      OUTLINED_FUNCTION_11_54();
      (v36)();
      (*(v77 + 8))(v78, v76);
      type metadata accessor for MusicEvent.Event(0);
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_17_5();
    v80 = v122 == 0xD000000000000015 && v79 == v35;
    if (v80 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD000000000000018) ? (v82 = v81 == v35) : (v82 = 0), v82 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD000000000000011) ? (v84 = v83 == v35) : (v84 = 0), v84 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001CLL) ? (v86 = v85 == v35) : (v86 = 0), v86 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001ELL) ? (v88 = v87 == v35) : (v88 = 0), v88 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_12_49(), v40) ? (v90 = v35 == v89) : (v90 = 0), v90 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001CLL) ? (v92 = v91 == v35) : (v92 = 0), v92 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001ELL) ? (v94 = v93 == v35) : (v94 = 0), v94 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD000000000000015) ? (v96 = v95 == v35) : (v96 = 0), v96 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), OUTLINED_FUNCTION_12_49(), v40) ? (v98 = v97 == v35) : (v98 = 0), v98 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0)))))))))))
    {
LABEL_7:

      OUTLINED_FUNCTION_0_147();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      v37 = v125;
      v41 = v123;
LABEL_9:
      v42 = v121;
      sub_21700CE04();
      v43 = v118;
      v44 = v119;
      v45 = v120;
      (*(v119 + 104))(v118, *MEMORY[0x277D21C38], v120);
      v46 = sub_21700CCE4();
      v48 = v47;
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v49 + 8))(v124);
      v50 = v37;
      v51 = v117;
      v117(v50, v41);
      (*(v44 + 8))(v43, v45);
      v51(v42, v41);
      result = type metadata accessor for MusicEvent(0);
      v53 = &v127[*(result + 20)];
      *v53 = v46;
      v53[8] = v48 & 1;
      return result;
    }

    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_12_49();
    if (!v40 || v99 != v35)
    {
      OUTLINED_FUNCTION_5_74();
      if ((sub_21700F7D4() & 1) == 0)
      {
        OUTLINED_FUNCTION_17_5();
        OUTLINED_FUNCTION_12_49();
        if (!v40 || v109 != v35)
        {
          OUTLINED_FUNCTION_5_74();
          if ((sub_21700F7D4() & 1) == 0)
          {
            v55 = MEMORY[0x277D22520];
            v54 = v122;
            v33 = v35;
            goto LABEL_12;
          }
        }

        goto LABEL_7;
      }
    }

    v33 = 0xE500000000000000;
    v101 = v121;
    v54 = 0x65706F6373;
    sub_21700CE04();
    sub_216AFB408();
    sub_21700CD14();
    v36(v101, v123);
    v102 = v128;
    if (v128 != 2)
    {
      v54 = 1684957547;
      v33 = 0xE400000000000000;
      v103 = v111;
      sub_21700CE04();
      v104 = sub_21700CDB4();
      v106 = v105;
      v36(v103, v123);
      if (v106)
      {
        v107 = v102 & 1;
        v108 = v127;
        *v127 = v107;
        *(v108 + 1) = v104;
        *(v108 + 2) = v106;
        type metadata accessor for MusicEvent.Event(0);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v54 = 1701667182;
  }

  v55 = MEMORY[0x277D22530];
LABEL_12:
  v56 = sub_21700E2E4();
  sub_216AFB364(&qword_280E2A0F8, MEMORY[0x277D22548]);
  swift_allocError();
  v58 = v57;
  v59 = type metadata accessor for MusicEvent(0);
  *v58 = v54;
  v58[1] = v33;
  v58[2] = v59;
  (*(*(v56 - 8) + 104))(v58, *v55, v56);
  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v60 + 8))(v124);
  OUTLINED_FUNCTION_11_54();
  return (v36)();
}

uint64_t sub_216AFB138()
{
  sub_216AF9EF0();
  v1 = (v0 + *(type metadata accessor for MusicEvent(0) + 20));
  if (*(v1 + 8) == 1)
  {
    return sub_21700F914();
  }

  v3 = *v1;
  sub_21700F914();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x21CEA0740](v4);
}

uint64_t sub_216AFB1AC(uint64_t a1, uint64_t a2)
{
  if ((sub_216AF96B0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MusicEvent(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = a2 + v4;
  result = *(v7 + 8);
  if ((v6 & 1) == 0)
  {
    return (*v5 == *v7) & ~result;
  }

  return result;
}

uint64_t sub_216AFB22C(void (*a1)(_BYTE *))
{
  sub_21700F8F4();
  a1(v3);
  return sub_21700F944();
}

uint64_t sub_216AFB2D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21700F8F4();
  a4(v6);
  return sub_21700F944();
}

uint64_t sub_216AFB364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AFB3AC(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216AFB408()
{
  result = qword_280E30310;
  if (!qword_280E30310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E30310);
  }

  return result;
}

unint64_t sub_216AFB46C(uint64_t a1)
{
  *(a1 + 8) = sub_216AFB49C();
  result = sub_216AFB4F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216AFB49C()
{
  result = qword_280E35C38;
  if (!qword_280E35C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35C38);
  }

  return result;
}

unint64_t sub_216AFB4F0()
{
  result = qword_280E35C40[0];
  if (!qword_280E35C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35C40);
  }

  return result;
}

uint64_t sub_216AFB544()
{
  v1 = v0;
  *(v0 + 24) = 0;
  v2 = *MEMORY[0x277D7F958];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68);
  swift_allocObject();
  *(v0 + 16) = sub_21700CC44();
  v3 = [objc_opt_self() sharedPrivacyInfo];
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_216AFB980;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_216A4FD0C;
  v8[3] = &block_descriptor_22;
  v5 = _Block_copy(v8);

  v6 = [v3 beginObservingPrivacyAcknowledgementForIdentifier:v2 handler:v5];
  _Block_release(v5);

  *(v1 + 24) = v6;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_216AFB6A4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216AFB704(a2 & 1);
  }

  return result;
}

uint64_t sub_216AFB704(char a1)
{
  if (qword_27CAB5D38 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CAC2900);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2166A85FC(0xD000000000000027, 0x80000002170887D0, &v8);
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1 & 1;
    _os_log_impl(&dword_216679000, v3, v4, "%s - isPrivacyAcknowledgementRequired: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v9 = a1 & 1;

  sub_21700CC34();
}

uint64_t sub_216AFB880()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2900);
  __swift_project_value_buffer(v0, qword_27CAC2900);
  return sub_217007C94();
}

uint64_t sub_216AFB900()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_216AFB928()
{
  sub_216AFB900();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_216AFB998()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF550();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216AFB9E4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF528();
  return OUTLINED_FUNCTION_1_11(v0);
}

void sub_216AFBA30()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v154 = v3;
  v149 = v4;
  v127 = v5;
  v143 = v6;
  v151 = v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  OUTLINED_FUNCTION_1();
  v131 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  updated = type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v133 = v16 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v148 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v147 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v141 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_70(&v126 - v25);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2948);
  OUTLINED_FUNCTION_1();
  v138 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2940);
  OUTLINED_FUNCTION_1();
  v152 = v30;
  v153 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77();
  v150 = v35 - v36;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  v155 = v38;
  OUTLINED_FUNCTION_3_1();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v126 - v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_53_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  v135 = v43;
  v44 = *(v43 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  v47 = &v126 - v46;
  v48 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isUpdating;
  LOBYTE(v156) = 0;
  sub_217007DA4();
  v134 = *(v44 + 32);
  v134(v0 + v48, v47, v43);
  v49 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__artwork;
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  sub_2166A6EA4();
  v54 = v136;
  v145 = v42;
  v146 = v33;
  sub_217007DA4();
  v144 = v1;
  sub_216697664(v1, &qword_27CAB6D60);
  v55 = *(v152 + 4);
  v142 = v49;
  v55(v2 + v49, v54, v153);
  v56 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__pickedImage;
  v156 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABD310);
  v57 = v137;
  sub_217007DA4();
  (*(v138 + 32))(v2 + v56, v57, v139);
  v58 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isDiscoverableByContact;
  LOBYTE(v156) = 0;
  sub_217007DA4();
  v59 = v135;
  v60 = v134;
  v134(v2 + v58, v47, v135);
  v61 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isContactCheckAllowed;
  LOBYTE(v156) = 0;
  sub_217007DA4();
  v60(v2 + v61, v47, v59);
  v62 = v151;
  *(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_objectGraph) = v151;
  type metadata accessor for UserSocialProfileCoordinator();
  v63 = type metadata accessor for ObjectGraph();

  OUTLINED_FUNCTION_7_4();
  v64 = v140;
  sub_21700E094();
  v65 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_userSocialProfileCoordinator;
  *(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_userSocialProfileCoordinator) = v156;
  sub_2166A6EA4();
  v66 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  OUTLINED_FUNCTION_46_0(v64);
  if (v117)
  {
    sub_216697664(v64, &qword_27CAB7A38);
LABEL_5:
    sub_216CAC834();
    OUTLINED_FUNCTION_98_0();

    goto LABEL_6;
  }

  v67 = (v64 + v66[7]);
  v62 = *v67;
  v63 = v67[1];
  sub_21700DF14();
  OUTLINED_FUNCTION_1_126();
  sub_216B042D4(v64, v68);
  if (!v63)
  {
    goto LABEL_5;
  }

LABEL_6:
  v69 = v143;
  OUTLINED_FUNCTION_25_33();
  v158 = v62;
  v159 = v63;
  sub_21700DF14();
  sub_217007DA4();
  swift_endAccess();
  v70 = v141;
  sub_2166A6EA4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v66);
  v143 = v62;
  v140 = v63;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v70, &qword_27CAB7A38);
  }

  else
  {
    v72 = (v70 + v66[8]);
    v73 = *v72;
    v74 = v72[1];
    sub_21700DF14();
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v70, v75);
    if (v74)
    {
      goto LABEL_20;
    }
  }

  v76 = v65;
  v77 = *(v2 + v65);
  v73 = *&v77[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v78 = *(v73 + 16);
  v74 = v77;
  os_unfair_lock_lock(v78);
  v79 = *&v74[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v80 = *(v73 + 16);
  v81 = v79;
  os_unfair_lock_unlock(v80);

  if (v79 && (sub_2167DEA8C(v81), v82))
  {
    OUTLINED_FUNCTION_98_0();
  }

  else
  {
    if (v149)
    {
      v73 = v127;
    }

    else
    {
      v73 = 0;
    }

    if (v149)
    {
      v74 = v149;
    }

    else
    {
      v74 = 0xE000000000000000;
    }

    sub_21700DF14();
    swift_bridgeObjectRelease_n();
  }

  v65 = v76;
LABEL_20:
  OUTLINED_FUNCTION_25_33();
  v141 = v73;
  v158 = v73;
  v159 = v74;
  v139 = v74;
  sub_21700DF14();
  sub_217007DA4();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  sub_2166A6EA4();
  v83 = v142;
  OUTLINED_FUNCTION_25_33();
  (*(v152 + 1))(v2 + v83, v153);
  sub_2166A6EA4();
  sub_217007DA4();
  v84 = OUTLINED_FUNCTION_82_14();
  sub_216697664(v84, v85);
  swift_endAccess();
  v86 = v154;
  v87 = v147;
  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v87);
  if (v117)
  {
    sub_216697664(v87, &qword_27CAB7A38);
  }

  else
  {
    v88 = *(v87 + v66[9]);
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v87, v89);
    if (v88 != 2)
    {
      goto LABEL_27;
    }
  }

  v90 = *(v2 + v65);
  v91 = *&v90[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v92 = *(v91 + 16);
  v93 = v90;
  os_unfair_lock_lock(v92);
  v94 = *&v93[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v95 = *(v91 + 16);
  v96 = v94;
  os_unfair_lock_unlock(v95);

  if (v94)
  {
    LOBYTE(v88) = [v96 isPrivate];
  }

  else
  {
    LOBYTE(v88) = 0;
  }

LABEL_27:
  OUTLINED_FUNCTION_25_33();
  v97 = v88 & 1;
  LOBYTE(v157) = v97;
  sub_217007DA4();
  swift_endAccess();
  v98 = v148;
  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v98);
  LODWORD(v153) = v97;
  if (v117)
  {
    sub_216697664(v98, &qword_27CAB7A38);
    v101 = 0;
  }

  else
  {
    v99 = *(v98 + v66[10]);
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v98, v100);
    v101 = v99 ^ 1;
  }

  OUTLINED_FUNCTION_25_33();
  LOBYTE(v157) = v101 & 1;
  sub_217007DA4();
  swift_endAccess();
  v102 = MEMORY[0x277D84F90];
  if (v69)
  {
    v103 = v69;
  }

  else
  {
    v103 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_25_33();
  v157 = v103;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2918);
  sub_217007DA4();
  swift_endAccess();
  if (v69)
  {
    v148 = v65;
    v152 = v66;
    v104 = sub_2166BF3C8(v69);
    sub_21700DF14();
    v105 = 0;
    while (1)
    {
      if (v104 == v105)
      {

        v86 = v154;
        v66 = v152;
        v65 = v148;
        goto LABEL_49;
      }

      if ((v69 & 0xC000000000000001) != 0)
      {
        v106 = MEMORY[0x21CEA0220](v105, v69);
      }

      else
      {
        if (v105 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v106 = *(v69 + 8 * v105 + 32);
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (sub_216B02EE8())
      {
        v109 = *(v106 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
        v108 = *(v106 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier + 8);
        sub_21700DF14();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21693776C();
          v102 = v113;
        }

        v111 = *(v102 + 16);
        if (v111 >= *(v102 + 24) >> 1)
        {
          sub_21693776C();
          v102 = v114;
        }

        *(v102 + 16) = v111 + 1;
        v112 = v102 + 16 * v111;
        *(v112 + 32) = v147;
        *(v112 + 40) = v108;
        v105 = v107;
      }

      else
      {

        ++v105;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_49:
  OUTLINED_FUNCTION_25_33();
  v157 = v102;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_217007DA4();
  swift_endAccess();
  *(*(v2 + v65) + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = v102;
  sub_21700DF14();

  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v86);
  v115 = v133;
  if (v117)
  {

    v116 = 2;
LABEL_54:
    v121 = v128;
    v122 = v140;
    *v128 = v143;
    v121[1] = v122;
    v123 = v139;
    v121[2] = v141;
    v121[3] = v123;
    v124 = updated;
    sub_2167A4788();
    *(v121 + v124[7]) = v153;
    *(v121 + v124[8]) = v116;
    *(v121 + v124[9]) = v102;
    sub_216B043C4();
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
    sub_2166D9530(&qword_280E2A2C8, &qword_27CAB8F00);

    sub_21700D1D4();
    v125 = v130;
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(&v156);
    (*(v131 + 8))(v125, v132);
    sub_216697664(v155, &qword_27CAB6D60);
    sub_216697664(v86, &qword_27CAB7A38);
    OUTLINED_FUNCTION_26();
    return;
  }

  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v115);
  if (!v117)
  {

    v118 = *(v115 + v66[10]);
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v119, v120);
    v116 = (v118 & 1) == 0;
    goto LABEL_54;
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_216AFC99C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216AFCA14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2166A6EA4();

  sub_217007DF4();
  OUTLINED_FUNCTION_51();
  return sub_216697664(v2, v3);
}

uint64_t sub_216AFCB18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_34_25();
  return sub_217007DF4();
}

uint64_t sub_216AFCB74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_34_25();
  sub_217007DF4();
  return sub_216AFF780();
}

uint64_t sub_216AFCBD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B00FE0();
  }

  return result;
}

uint64_t sub_216AFCC2C(uint64_t a1)
{
  v3 = sub_216AFF318();
  v4 = sub_2166BF3C8(v3);
  v5 = (a1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
  v6 = -v4;
  v7 = 4;
  while (v6 + v7 != 4)
  {
    v8 = v7 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x21CEA0220](v7 - 4, v3);
    }

    else
    {
      if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v1 = *(v3 + 8 * v7);
    }

    if (*(v1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier) == *v5 && *(v1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier + 8) == v5[1])
    {

      goto LABEL_20;
    }

    v10 = sub_21700F7D4();

    if (v10)
    {

LABEL_20:
      v1 = sub_216AFF318();
      sub_216C746F0(v7 - 4);
      if ((v1 & 0xC000000000000001) == 0)
      {
        v12 = *(v1 + 8 * v7);

        goto LABEL_22;
      }

LABEL_30:
      v12 = MEMORY[0x21CEA0220](v8, v1);
LABEL_22:

      swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_51();
      v13 = sub_217007DD4();
      *v14 = !*v14;
      v13(v19, 0);

      swift_getKeyPath();
      swift_getKeyPath();

      v15 = sub_217007DD4();
      v17 = v16;
      v18 = *v16;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v17 = v18;
      if (!result || v18 < 0 || (v18 & 0x4000000000000000) != 0)
      {
        result = sub_216E17104(v18);
        v18 = result;
        *v17 = result;
      }

      if (v8 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      else
      {
        *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v12;

        v15(v19, 0);

        sub_216B00B3C();
      }

      return result;
    }

    ++v7;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_29;
    }
  }
}

void sub_216AFCEF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_217007DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2918);
  sub_2166D9530(&qword_27CAC2930, &qword_27CAC2918);
  sub_21700E484();
  v0(&v1, 0);

  sub_216B00B3C();
}

uint64_t sub_216AFD014(char a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_40();
  sub_216AFF304();
  if (sub_216B010A0())
  {
    OUTLINED_FUNCTION_53();
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = a1 & 1;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    v11 = sub_2166AF2EC();
    sub_21700DF14();
    OUTLINED_FUNCTION_68_13();
    swift_retain_n();
    v12 = sub_21700EE84();
    v19[3] = v11;
    v19[4] = MEMORY[0x277D225C0];
    v19[0] = v12;
    sub_21700E1C4();

    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_8();
    sub_217007DE4();

    type metadata accessor for Artwork();
    v14 = OUTLINED_FUNCTION_49_1();
    OUTLINED_FUNCTION_31_2(v14, v15, v16);
    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    sub_216697664(v4, &qword_27CAB6D60);
    sub_216B01774(a1 & 1, 0, v18, 0, a2, a3);
    return sub_216B04394(0, v18);
  }
}

void sub_216AFD240()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v53 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v7);
  v57 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v54 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v10);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v56 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v13);
  updated = type metadata accessor for SocialOnboardingUpdateUserAttributesAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_40();
  sub_21700E384();
  if (sub_216AFF270())
  {
    v20 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_70_10();
    *(&v62 + 1) = v20;
    *&v61 = sub_216AFF32C();
    *(&v61 + 1) = v21;
    OUTLINED_FUNCTION_72_15();
    v22 = OUTLINED_FUNCTION_35_29();
    sub_216939F54(v22, v23);
    sub_216788110(&v70);
    if (!v2)
    {
      goto LABEL_7;
    }

    v24 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v24 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      sub_21700DF14();
      OUTLINED_FUNCTION_70_10();
      *(&v62 + 1) = v20;
      *&v61 = v4;
      *(&v61 + 1) = v2;
      OUTLINED_FUNCTION_72_15();
      v25 = OUTLINED_FUNCTION_35_29();
    }

    else
    {
LABEL_7:
      OUTLINED_FUNCTION_70_10();
      *(&v62 + 1) = v20;
      *&v61 = sub_216AFF340();
      *(&v61 + 1) = v27;
      OUTLINED_FUNCTION_72_15();
      v25 = OUTLINED_FUNCTION_35_29();
    }

    sub_216939F54(v25, v26);
    sub_216788110(&v70);
  }

  sub_21681AAB4(&v70);
  v67 = v70;
  v68 = v71;
  v28 = v73;
  v69 = v72;
  v29 = v74;
  v30 = v75;
  v31 = sub_216AFF430();
  if (v31 && (v32 = v31, v33 = UIImagePNGRepresentation(v31), v32, v33))
  {
    v34 = sub_217005FB4();
    v36 = v35;

    sub_21677A510(v28, v29);
    v28 = v34;
    v29 = v36;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    type metadata accessor for Artwork();
    v37 = OUTLINED_FUNCTION_49_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v38, v39);
    sub_216697664(v0, &qword_27CAB6D60);
    if (EnumTagSinglePayload == 1)
    {
      v30 = 1;
    }
  }

  sub_21700D234();
  v41 = v71;
  v42 = v70;
  v59[1] = v71;
  v59[0] = v70;
  *v60 = v72;
  *&v60[8] = v28;
  *&v60[16] = v29;
  v60[24] = v30;
  v43 = (v17 + *(updated + 20));
  *(v43 + 41) = *&v60[9];
  v44 = *v60;
  v43[1] = v41;
  v43[2] = v44;
  *v43 = v42;
  sub_21681AEB4(v59, &v61);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_21700E094();
  *(&v62 + 1) = updated;
  OUTLINED_FUNCTION_23_36();
  v63 = sub_216B03464(v45, v46);
  __swift_allocate_boxed_opaque_existential_1(&v61);
  OUTLINED_FUNCTION_20_38();
  sub_216B0432C();
  (*(v54 + 16))(v52, v58, v57);
  (*(v53 + 104))(v52, *MEMORY[0x277D21E10], v55);
  sub_21700D5E4();
  (*(v53 + 8))(v52, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  v47 = sub_2166AF2EC();
  OUTLINED_FUNCTION_68_13();
  swift_retain_n();
  v48 = sub_21700EE84();
  *(&v62 + 1) = v47;
  v63 = MEMORY[0x277D225C0];
  *&v61 = v48;
  sub_21700E1C4();

  OUTLINED_FUNCTION_68_13();

  (*(v54 + 8))(v58, v57);
  (*(v56 + 8))(v50, v51);
  OUTLINED_FUNCTION_22_37();
  sub_216B042D4(v17, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  sub_21681AEEC(&v61);
  OUTLINED_FUNCTION_26();
}

void sub_216AFD94C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v30 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v4);
  sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v34 = v6;
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v33 = v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v32 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v11 = v10;
  OUTLINED_FUNCTION_4_1();
  updated = type metadata accessor for SocialOnboardingUpdateUserAttributesAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v15 = v14;
  sub_21700E384();
  if (v1)
  {
    v36 = 0x7461766972507369;
    v37 = 0xE900000000000065;
    sub_21700F364();
    v16 = sub_216AFF500();
    OUTLINED_FUNCTION_39_21(v16);
    OUTLINED_FUNCTION_36_28();
    sub_216788110(v40);
  }

  OUTLINED_FUNCTION_83_13();
  v17 = sub_216AFF528();
  OUTLINED_FUNCTION_39_21(v17);
  OUTLINED_FUNCTION_36_28();
  sub_216788110(v40);
  v36 = 0xD000000000000015;
  v37 = 0x8000000217082A90;
  OUTLINED_FUNCTION_83_13();
  v18 = sub_216AFF550();
  OUTLINED_FUNCTION_39_21(v18);
  OUTLINED_FUNCTION_36_28();
  sub_216788110(v40);
  sub_21681AAB4(v40);
  sub_21700D234();
  v19 = (v15 + *(updated + 20));
  v20 = v40[1];
  *v19 = v40[0];
  v19[1] = v20;
  v19[2] = *v41;
  *(v19 + 41) = *&v41[9];
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_82_14();
  sub_21700E094();
  OUTLINED_FUNCTION_34_25();
  sub_21700E094();
  v38 = updated;
  OUTLINED_FUNCTION_23_36();
  v39 = sub_216B03464(v21, v22);
  __swift_allocate_boxed_opaque_existential_1(&v36);
  OUTLINED_FUNCTION_20_38();
  sub_216B0432C();
  v23 = OUTLINED_FUNCTION_26_22();
  v24(v23);
  (*(v30 + 104))(v29, *MEMORY[0x277D21E10], v31);
  sub_21700D5E4();
  (*(v30 + 8))(v29, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  v25 = sub_2166AF2EC();

  v26 = sub_21700EE84();
  v38 = v25;
  v39 = MEMORY[0x277D225C0];
  v36 = v26;
  sub_21700E1C4();

  (*(v34 + 8))(v33, v35);
  (*(v32 + 8))(v11, v28);
  OUTLINED_FUNCTION_22_37();
  sub_216B042D4(v15, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  OUTLINED_FUNCTION_26();
}

void sub_216AFDE5C()
{
  OUTLINED_FUNCTION_49();
  v77 = v1;
  v75 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v6 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v67 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  OUTLINED_FUNCTION_4_1();
  v73 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v69 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v70 = v13 - v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v76 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v72 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_70(&v66 - v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v68 = xmmword_217013DA0;
  *(inited + 16) = xmmword_217013DA0;
  v29 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = v29;
  *(inited + 48) = 1701736260;
  *(inited + 56) = 0xE400000000000000;
  v30 = sub_21700E384();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v6);
  sub_21700D6F4();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v80 = v30;
  sub_2166EF9C4(&v80, v79);
  v34 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v78 = v34;
  OUTLINED_FUNCTION_10();
  sub_2166EF9D4();
  v35 = v78;
  v81 = v29;
  *&v80 = 0x657461676976616ELL;
  *(&v80 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v80, v79);
  swift_isUniquelyReferenced_nonNull_native();
  v78 = v35;
  OUTLINED_FUNCTION_10();
  sub_2166EF9D4();
  v36 = v78;
  v71 = v23;
  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(v20, 1, v6);
  if (v37)
  {
    sub_216697664(v20, &qword_27CABA820);
  }

  else
  {
    v38 = v67;
    (*(v67 + 32))(v10, v20, v6);
    v39 = sub_217005DE4();
    v81 = v29;
    *&v80 = v39;
    *(&v80 + 1) = v40;
    sub_2166EF9C4(&v80, v79);
    swift_isUniquelyReferenced_nonNull_native();
    v78 = v36;
    OUTLINED_FUNCTION_10();
    sub_2166EF9D4();
    v36 = v78;
    (*(v38 + 8))(v10, v6);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v41 = sub_21700CF84();
  v42 = __swift_project_value_buffer(v41, qword_280E73DB0);
  v43 = v74;
  MEMORY[0x21CE9DD70](25965, 0xE200000000000000, 0x6D65744964697247, 0xEE006E6F74747542, v36, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v44 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v68;
  v46 = v45 + v44;
  v47 = v75;
  (*(v3 + 16))(v46, v43, v75);
  v48 = OUTLINED_FUNCTION_74_0();
  v49(v48);
  OUTLINED_FUNCTION_7_4();
  sub_21700D244();
  (*(v3 + 8))(v43, v47);
  v50 = OUTLINED_FUNCTION_26_22();
  v51(v50);
  sub_216697664(v71, &qword_27CABA820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_217018C90;
  sub_21700D234();
  *(v52 + 56) = type metadata accessor for CompleteSocialOnboardingAction();
  *(v52 + 64) = sub_216B03464(qword_280E30DD0, type metadata accessor for CompleteSocialOnboardingAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v52 + 32));
  v54 = *(v72 + 32);
  v55 = v76;
  v54(boxed_opaque_existential_1, v0, v76);
  sub_21700D234();
  v56 = type metadata accessor for DismissModalPresentationAction();
  *(v52 + 96) = v56;
  OUTLINED_FUNCTION_8_66();
  v59 = sub_216B03464(v57, v58);
  *(v52 + 104) = v59;
  v60 = __swift_allocate_boxed_opaque_existential_1((v52 + 72));
  v54(v60, v0, v55);
  v61 = v60 + *(v56 + 20);
  *v61 = 0;
  v61[8] = 1;
  sub_21700D234();
  *(v52 + 136) = v56;
  *(v52 + 144) = v59;
  v62 = __swift_allocate_boxed_opaque_existential_1((v52 + 112));
  v54(v62, v0, v55);
  v63 = v62 + *(v56 + 20);
  *v63 = 0;
  v63[8] = 1;
  sub_21700D234();
  v64 = type metadata accessor for OpenSocialProfilePageAction();
  *(v52 + 176) = v64;
  *(v52 + 184) = sub_216B03464(&qword_27CABA688, type metadata accessor for OpenSocialProfilePageAction);
  v65 = __swift_allocate_boxed_opaque_existential_1((v52 + 152));
  v54((v65 + *(v64 + 20)), v0, v55);
  *v65 = 0;
  v65[1] = 0;
  sub_21700D394();
  OUTLINED_FUNCTION_26();
}

void sub_216AFE67C()
{
  OUTLINED_FUNCTION_49();
  v50 = v0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v47 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105();
  v46 = v3;
  OUTLINED_FUNCTION_4_1();
  v45 = type metadata accessor for PresentAlertAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v43 = v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v48 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v42 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v11);
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_216AFF304();
  v18 = sub_216983738(335);
  v40 = v19;
  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
  v20 = (_s6ActionVMa() - 8);
  v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_217013DA0;
  v23 = v22 + v21;
  v39 = sub_216983738(181);
  v38 = v24;
  sub_217006214();
  v37 = sub_2170061F4();
  v36 = v25;
  v26 = *(v13 + 8);
  v27 = OUTLINED_FUNCTION_26_22();
  v26(v27);
  sub_217007F04();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_217006214();
  sub_2170061F4();
  OUTLINED_FUNCTION_84_1();
  v32 = OUTLINED_FUNCTION_26_22();
  v26(v32);
  v33 = (v22 + v21 + v20[8]);
  *v33 = v17;
  v33[1] = v21;
  *v23 = v37;
  *(v23 + 8) = v36;
  *(v23 + 16) = v39;
  *(v23 + 24) = v38;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0;
  sub_2167A4788();
  sub_216933384(v41, v40, v22, 0, 0, v52);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_21700D234();
  v34 = v43 + *(v45 + 20);
  v35 = v52[1];
  *v34 = v52[0];
  *(v34 + 16) = v35;
  *(v34 + 32) = v53;
  v51[3] = v45;
  v51[4] = sub_216B03464(qword_280E3EB18, type metadata accessor for PresentAlertAction);
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_216B0432C();
  (*(v47 + 104))(v46, *MEMORY[0x277D21E18], v49);
  sub_21700D5E4();

  (*(v47 + 8))(v46, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  if (v50)
  {
    sub_216B00058();
  }

  sub_216B042D4(v43, type metadata accessor for PresentAlertAction);
  (*(v48 + 8))(v42, v44);
  OUTLINED_FUNCTION_26();
}

void sub_216AFEBA8()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_79_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_67_0();
  v9 = type metadata accessor for PromptSuggestedHandleAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_216AFF304();
  sub_21700D234();
  v14 = (v13 + *(v9 + 20));
  *v14 = v4;
  v14[1] = v2;
  type metadata accessor for ObjectGraph();
  sub_21700DF14();
  OUTLINED_FUNCTION_33_26();
  sub_21700E094();
  v20[3] = v9;
  v20[4] = sub_216B03464(&qword_27CAC0D68, type metadata accessor for PromptSuggestedHandleAction);
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_216B0432C();
  v15 = OUTLINED_FUNCTION_51_10();
  v16(v15);
  OUTLINED_FUNCTION_56_17();
  sub_21700D5E4();
  (*(v6 + 8))(v0, v19);
  v17 = OUTLINED_FUNCTION_57_16();
  v18(v17);
  sub_216B042D4(v13, type metadata accessor for PromptSuggestedHandleAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  OUTLINED_FUNCTION_26();
}

void sub_216AFEE24()
{
  OUTLINED_FUNCTION_49();
  v2 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_216AFF32C();
  v18 = v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties;
  v19 = v16 == *(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties) && v17 == *(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties + 8);
  if (v19)
  {
  }

  else
  {
    v20 = sub_21700F7D4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_216AFF340() == *(v18 + 16) && v21 == *(v18 + 24))
  {
  }

  else
  {
    v23 = sub_21700F7D4();

    if ((v23 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v36 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  updated = type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(0);
  v24 = *(v7 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(v10, 1, v2);
  if (!v19)
  {
    sub_2166A6EA4();
    OUTLINED_FUNCTION_31_2(&v10[v24], 1, v2);
    if (!v28)
    {
      OUTLINED_FUNCTION_9_65();
      v31 = v36;
      sub_216B043C4();
      v32 = sub_21700C4A4();
      if (v32)
      {
        v33 = sub_21688ADC8(v1 + *(v2 + 20), v31 + *(v2 + 20));
        sub_216B042D4(v31, type metadata accessor for Artwork);
        sub_216697664(v15, &qword_27CAB6D60);
        sub_216B042D4(v1, type metadata accessor for Artwork);
        sub_216697664(v10, &qword_27CAB6D60);
        if ((v33 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      sub_216B042D4(v31, type metadata accessor for Artwork);
      OUTLINED_FUNCTION_51();
      sub_216697664(v34, v35);
      sub_216B042D4(v1, type metadata accessor for Artwork);
      OUTLINED_FUNCTION_51();
LABEL_29:
      sub_216697664(v30, v29);
      goto LABEL_30;
    }

    sub_216697664(v15, &qword_27CAB6D60);
    sub_216B042D4(v1, type metadata accessor for Artwork);
LABEL_28:
    v29 = &qword_27CABE598;
    v30 = v10;
    goto LABEL_29;
  }

  sub_216697664(v15, &qword_27CAB6D60);
  OUTLINED_FUNCTION_31_2(&v10[v24], 1, v2);
  if (!v19)
  {
    goto LABEL_28;
  }

  sub_216697664(v10, &qword_27CAB6D60);
LABEL_20:
  if ((sub_216AFF500() & 1) == *(v18 + *(updated + 28)))
  {
    sub_216AFF7D4();
    sub_216E20CEC();
    v26 = v25;

    if ((v26 & 1) != 0 && (sub_216AFF87C() & 1) == 0)
    {
      v27 = sub_216AFF430();
      if (v27)
      {
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_26();
}

BOOL sub_216AFF270()
{
  v0 = sub_216AFF32C();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = sub_216AFF340();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t sub_216AFF354()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216AFF3BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();
}

uint64_t sub_216AFF430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216AFF4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_34_25();
  return sub_217007DF4();
}

uint64_t sub_216AFF5A4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF32C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216AFF5E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21700DF14();
  return a5(v7, v6);
}

uint64_t sub_216AFF650()
{
  OUTLINED_FUNCTION_92();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  sub_2166A6EA4();
  return sub_216AFCA14();
}

uint64_t sub_216AFF6E8()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF500();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216AFF734()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF514();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216AFF780()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_userSocialProfileCoordinator);
  *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = sub_216AFF7D4();
}

uint64_t sub_216AFF7E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216AFF87C()
{
  v1 = v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties;
  v2 = *(v1 + *(type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(0) + 32));
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_216AFF514() ^ v2;
  }

  return v3 & 1;
}

void sub_216AFF8D0()
{
  OUTLINED_FUNCTION_49();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  sub_21700DA84();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v20 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_40();
  v9 = type metadata accessor for DismissModalPresentationAction();
  v22[3] = v9;
  OUTLINED_FUNCTION_8_66();
  v22[4] = sub_216B03464(v10, v11);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_21700D234();
  v13 = boxed_opaque_existential_1 + *(v9 + 20);
  *v13 = 0;
  v13[8] = 1;
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_80_12();
  sub_21700E094();
  OUTLINED_FUNCTION_33_26();
  sub_21700E094();
  v14 = OUTLINED_FUNCTION_61_13();
  v15(v14);
  v16 = OUTLINED_FUNCTION_51_10();
  v17(v16);
  OUTLINED_FUNCTION_56_17();
  sub_21700D5E4();

  (*(v3 + 8))(v0, v21);
  v18 = OUTLINED_FUNCTION_57_16();
  v19(v18);
  (*(v20 + 8))(v1, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_26();
}

void sub_216AFFB5C()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v37 = v2;
  v38 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v35 = v4;
  OUTLINED_FUNCTION_4_1();
  v33 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v34 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v32 = v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v36 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v31 = v10;
  OUTLINED_FUNCTION_4_1();
  v11 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v15);
  v39 = sub_21700D3B4();
  OUTLINED_FUNCTION_1();
  v30 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v19 = v18;
  sub_21700D234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_217013D90;
  sub_21700D234();
  v21 = type metadata accessor for DismissModalPresentationAction();
  *(v20 + 56) = v21;
  OUTLINED_FUNCTION_8_66();
  *(v20 + 64) = sub_216B03464(v22, v23);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  v25 = *(v13 + 32);
  v25(boxed_opaque_existential_1, v0, v11);
  v26 = boxed_opaque_existential_1 + *(v21 + 20);
  *v26 = 0;
  v26[8] = 1;
  sub_21700D234();
  v27 = type metadata accessor for PopToRootAction();
  *(v20 + 96) = v27;
  *(v20 + 104) = sub_216B03464(qword_280E424C0, type metadata accessor for PopToRootAction);
  v28 = __swift_allocate_boxed_opaque_existential_1((v20 + 72));
  v25(v28, v0, v11);
  *(v28 + *(v27 + 20)) = 1;
  OUTLINED_FUNCTION_26_22();
  sub_21700D394();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_21700E094();
  v41[3] = v39;
  v41[4] = MEMORY[0x277D21D10];
  v29 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(v30 + 16))(v29, v19, v39);
  (*(v34 + 16))(v35, v32, v33);
  (*(v37 + 104))(v35, *MEMORY[0x277D21E10], v38);
  sub_21700D5E4();

  (*(v37 + 8))(v35, v38);
  (*(v34 + 8))(v32, v33);
  (*(v36 + 8))(v31, v40);
  (*(v30 + 8))(v19, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  OUTLINED_FUNCTION_26();
}

void sub_216B00058()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v21 = v3;
  v22 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  sub_21700DA84();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v20 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_40();
  v9 = type metadata accessor for PopAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_216AFF304();
  sub_21700D234();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_80_12();
  sub_21700E094();
  OUTLINED_FUNCTION_33_26();
  sub_21700E094();
  v23[3] = v9;
  v23[4] = sub_216B03464(&qword_280E2B650, type metadata accessor for PopAction);
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_216B0432C();
  v14 = OUTLINED_FUNCTION_61_13();
  v15(v14);
  v16 = OUTLINED_FUNCTION_51_10();
  v17(v16);
  OUTLINED_FUNCTION_56_17();
  sub_21700D5E4();

  (*(v21 + 8))(v0, v22);
  v18 = OUTLINED_FUNCTION_57_16();
  v19(v18);
  (*(v20 + 8))(v1, v6);
  sub_216B042D4(v13, type metadata accessor for PopAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  OUTLINED_FUNCTION_26();
}

void sub_216B00350()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v73 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2928);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v73 - v10;
  v12 = sub_21700E0D4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  v75[0] = v2;
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v12);
    v26 = &qword_27CAC2928;
    v27 = v11;
    goto LABEL_6;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  (*(v14 + 32))(v18, v11, v12);
  sub_21700E0B4();
  v20 = sub_21700D704();
  v21 = OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_31_2(v21, v22, v20);
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_32_22();
    v25(v24);
    v26 = qword_27CAB8320;
    v27 = v7;
LABEL_6:
    sub_216697664(v27, v26);
LABEL_7:
    sub_216AFE67C();
LABEL_8:
    OUTLINED_FUNCTION_26();
    return;
  }

  v31 = sub_21700D6C4();
  v33 = v32;
  v74 = *(*(v20 - 8) + 8);
  v74(v7, v20);
  if (!v33)
  {
    goto LABEL_80;
  }

  v34 = HIBYTE(v33) & 0xF;
  v35 = v31 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v36 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

LABEL_80:
    v55 = OUTLINED_FUNCTION_32_22();
    v56(v55);
    goto LABEL_7;
  }

  if ((v33 & 0x1000000000000000) != 0)
  {
    v69 = OUTLINED_FUNCTION_82_14();
    sub_216B03978(v69, v70, 10);
    v39 = v71;
    v54 = v72;
LABEL_79:

    if ((v54 & 1) == 0)
    {
      switch(sub_2169CA52C(v39))
      {
        case 4u:
          sub_21700E0B4();
          OUTLINED_FUNCTION_31_2(v0, 1, v20);
          if (v23)
          {
            sub_216697664(v0, qword_27CAB8320);
            v59 = 0;
            v62 = 0;
          }

          else
          {
            v60 = sub_21700D6C4();
            v62 = v61;
            v74(v0, v20);
            if (v62)
            {
              v59 = v60;
            }

            else
            {
              v59 = 0;
            }
          }

          sub_216AFEBA8();
          OUTLINED_FUNCTION_143();
          v63 = swift_allocObject();
          swift_weakInit();
          v64 = swift_allocObject();
          v64[2] = v63;
          v64[3] = v59;
          v64[4] = v62;
          v65 = sub_2166AF2EC();

          v66 = sub_21700EE84();
          v75[3] = v65;
          v75[4] = MEMORY[0x277D225C0];
          v75[0] = v66;
          sub_21700E1C4();

          v67 = OUTLINED_FUNCTION_32_22();
          v68(v67);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          break;
        case 6u:
          goto LABEL_80;
        default:
          sub_216AFE67C();
          v57 = OUTLINED_FUNCTION_32_22();
          v58(v57);
          break;
      }

      goto LABEL_8;
    }

    goto LABEL_80;
  }

  if ((v33 & 0x2000000000000000) == 0)
  {
    if ((v31 & 0x1000000000000000) != 0)
    {
      v37 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      OUTLINED_FUNCTION_82_14();
      v37 = sub_21700F444();
    }

    v38 = *v37;
    if (v38 == 43)
    {
      if (v35 >= 1)
      {
        if (v35 != 1)
        {
          v39 = 0;
          if (v37)
          {
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v23 & v40)
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_11_55();
              if (!v23)
              {
                goto LABEL_77;
              }

              v39 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_42_5();
              if (v23)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_68;
        }

        goto LABEL_77;
      }

      goto LABEL_95;
    }

    if (v38 != 45)
    {
      if (v35)
      {
        v39 = 0;
        if (v37)
        {
          while (1)
          {
            v50 = *v37 - 48;
            if (v50 > 9)
            {
              goto LABEL_77;
            }

            v51 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              goto LABEL_77;
            }

            v39 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              goto LABEL_77;
            }

            ++v37;
            if (!--v35)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_77:
      v39 = 0;
      v43 = 1;
      goto LABEL_78;
    }

    if (v35 >= 1)
    {
      if (v35 != 1)
      {
        v39 = 0;
        if (v37)
        {
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v23 & v40)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_11_55();
            if (!v23)
            {
              goto LABEL_77;
            }

            v39 = v42 - v41;
            if (__OFSUB__(v42, v41))
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_42_5();
            if (v23)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_68:
        v43 = 0;
LABEL_78:
        v76 = v43;
        v54 = v43;
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v75[0] = v31;
  v75[1] = v33 & 0xFFFFFFFFFFFFFFLL;
  if (v31 != 43)
  {
    if (v31 != 45)
    {
      if (v34)
      {
        while (1)
        {
          OUTLINED_FUNCTION_14_17();
          if (!v23 & v40)
          {
            break;
          }

          OUTLINED_FUNCTION_11_55();
          if (!v23)
          {
            break;
          }

          v39 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            break;
          }

          OUTLINED_FUNCTION_42_5();
          if (v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v34)
    {
      if (v34 != 1)
      {
        OUTLINED_FUNCTION_75_12();
        while (1)
        {
          OUTLINED_FUNCTION_14_17();
          if (!v23 & v40)
          {
            break;
          }

          OUTLINED_FUNCTION_11_55();
          if (!v23)
          {
            break;
          }

          v39 = v45 - v44;
          if (__OFSUB__(v45, v44))
          {
            break;
          }

          OUTLINED_FUNCTION_42_5();
          if (v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_94;
  }

  if (v34)
  {
    if (v34 != 1)
    {
      OUTLINED_FUNCTION_75_12();
      while (1)
      {
        OUTLINED_FUNCTION_14_17();
        if (!v23 & v40)
        {
          break;
        }

        OUTLINED_FUNCTION_11_55();
        if (!v23)
        {
          break;
        }

        v39 = v49 + v48;
        if (__OFADD__(v49, v48))
        {
          break;
        }

        OUTLINED_FUNCTION_42_5();
        if (v23)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_77;
  }

LABEL_96:
  __break(1u);
}

uint64_t sub_216B009E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21700D2A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v6);
    v11 = sub_21700D294();
    (*(v7 + 8))(v9, v6);
    if (v11)
    {
      sub_216AFD014(1, a3, a4);
    }
  }

  return result;
}

void sub_216B00B3C()
{
  v1 = v0;
  v2 = sub_216AFF318();
  v3 = sub_2166BF3C8(v2);
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEA0220](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    if (sub_216B02EE8())
    {
      v13 = v1;
      v7 = *(v6 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
      v8 = *(v6 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier + 8);
      sub_21700DF14();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v5 = v11;
      }

      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_21693776C();
        v5 = v12;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      ++v4;
      v1 = v13;
    }

    else
    {

      ++v4;
    }
  }

  sub_216AFCB74();
}

uint64_t sub_216B00CC4()
{
  sub_216AFF7D4();
  type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(0);
  sub_216E20CEC();
  v1 = v0;

  if (v1)
  {
    return 0;
  }

  else
  {
    return sub_216CAD8A0();
  }
}

void sub_216B00D3C(char a1, char a2)
{
  if (sub_216B00CC4())
  {
    OUTLINED_FUNCTION_143();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1 & 1;
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    v6 = sub_2166AF2EC();

    v7 = sub_21700EE84();
    v8[3] = v6;
    v8[4] = MEMORY[0x277D225C0];
    v8[0] = v7;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_216B01DA0(a2 & 1);
    if (a1)
    {

      sub_216AFF8D0();
    }
  }
}

uint64_t sub_216B00EAC(_BYTE *a1, uint64_t a2, char a3)
{
  if (*a1 != 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_216AFE67C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B01DA0(1);
  }

  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_216AFF8D0();
    }
  }

  return result;
}

uint64_t sub_216B00F84()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216AFE67C();
  }

  return result;
}

uint64_t sub_216B00FE0()
{
  v0 = sub_216AFF318();
  result = sub_2166BF3C8(v0);
  v2 = result;
  for (i = 0; v2 != i; ++i)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA0220](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    sub_216B02834();
  }
}

UIImage *sub_216B010A0()
{
  v0 = sub_216AFF430();
  v1 = v0;
  if (v0)
  {
    v2 = UIImagePNGRepresentation(v0);

    if (v2)
    {
      v3 = sub_217005FB4();
      v5 = v4;

      sub_216CADA4C();
      v1 = v6;
      sub_21677A524(v3, v5);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_216B01228(void *a1, char a2)
{
  if (sub_216B0113C())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v2;
    *(v5 + 32) = a2 & 1;
    v6 = sub_2166AF2EC();
    OUTLINED_FUNCTION_68_13();
    swift_retain_n();
    v7 = a1;
    v8 = sub_21700EE84();
    v9[3] = v6;
    v9[4] = MEMORY[0x277D225C0];
    v9[0] = v8;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {

    sub_216B00D3C(a2 & 1, 1);
  }
}

void sub_216B01350(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  v8 = sub_21700B5A4();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21700B5E4();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_21700B604();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v27[-v20];
  if (*a1 == 1)
  {
    v22 = v19;
    v31 = v19;
    sub_2166AF2EC();
    v32 = a3;
    v29 = sub_21700EE84();
    sub_21700B5F4();
    sub_21700B634();
    v30 = *(v15 + 8);
    v30(v17, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    aBlock[4] = sub_216B0345C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_23;
    v24 = _Block_copy(aBlock);
    v25 = a2;
    sub_21700B5C4();
    v36 = MEMORY[0x277D84F90];
    sub_216B03464(&qword_280E2A480, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
    v28 = a4;
    sub_2166D9530(&qword_280E29E50, &unk_27CABC970);
    sub_21700F214();
    v26 = v29;
    MEMORY[0x21CE9FC70](v21, v13, v10, v24);
    _Block_release(v24);

    (*(v35 + 8))(v10, v8);
    (*(v33 + 8))(v13, v34);
    v30(v21, v31);

    sub_216B00D3C(v28 & 1, 1);
  }
}

void sub_216B01774(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v14 = v132;
  v15 = sub_21700E384();
  v23 = v15;
  if (a4)
  {
    LOBYTE(v132) = 0;
    OUTLINED_FUNCTION_69_12(v15, v16, v17, v18, v19, v20, v21, v22, v119, v125, v132, v133, MEMORY[0x277D839B0], v134, v135, v136);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_22();
    v30 = 0x72616F626E4F7369;
    v31 = 0xEB00000000646564;
LABEL_31:
    OUTLINED_FUNCTION_62_11(v24, v30, v31, v25, v26, v27, v28, v29, v120, v126, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136);
    goto LABEL_32;
  }

  v127 = a2;
  v32 = sub_216AFF32C();
  v34 = v6 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties;
  if (v32 == *(v6 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties) && v33 == *(v6 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties + 8))
  {

    if (!a6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    HIDWORD(v119) = a4;
    v36 = a1;
    v37 = sub_21700F7D4();

    if ((v37 & 1) == 0)
    {
      *&v132 = sub_216AFF32C();
      *(&v132 + 1) = v46;
      OUTLINED_FUNCTION_69_12(v132, v46, v47, v48, v49, v50, v51, v52, v119, v127, v132, v133, MEMORY[0x277D837D0], v134, v135, v136);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_47_22();
      OUTLINED_FUNCTION_62_11(v53, v54, v55, v56, v57, v58, v59, v60, v121, v128, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136);
      v38 = sub_2166EF9D4();
      v23 = v135;
    }

    a1 = v36;
    LOBYTE(a4) = BYTE4(v119);
    if (!a6)
    {
      goto LABEL_16;
    }
  }

  v61 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v61 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {
    *&v132 = a5;
    *(&v132 + 1) = a6;
    OUTLINED_FUNCTION_69_12(v38, v39, v40, v41, v42, v43, v44, v45, v119, v127, v132, v133, MEMORY[0x277D837D0], v134, v135, v136);
    sub_21700DF14();
LABEL_22:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_22();
    OUTLINED_FUNCTION_62_11(v72, 0x656C646E6168, v73, v74, v75, v76, v77, v78, v122, v129, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136);
    sub_2166EF9D4();
    v23 = v135;
    goto LABEL_24;
  }

LABEL_16:
  if (sub_216AFF340() != *(v34 + 16) || v62 != *(v34 + 24))
  {
    v64 = sub_21700F7D4();

    if (v64)
    {
      goto LABEL_24;
    }

    *&v132 = sub_216AFF340();
    *(&v132 + 1) = v65;
    OUTLINED_FUNCTION_69_12(v132, v65, v66, v67, v68, v69, v70, v71, v119, v127, v132, v133, MEMORY[0x277D837D0], v134, v135, v136);
    goto LABEL_22;
  }

LABEL_24:
  v79 = sub_216AFF500() & 1;
  updated = type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(0);
  if (v79 != *(v34 + *(updated + 28)))
  {
    v88 = sub_216AFF500();
    LOBYTE(v132) = v88 & 1;
    OUTLINED_FUNCTION_69_12(v88, v89, v90, v91, v92, v93, v94, v95, v119, v127, v132, v133, MEMORY[0x277D839B0], v134, v135, v136);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_22();
    OUTLINED_FUNCTION_62_11(v96, 0x7461766972507369, v97, v98, v99, v100, v101, v102, v123, v130, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136);
    updated = sub_2166EF9D4();
    v23 = v135;
  }

  v103 = v127;
  if (a3 == 1)
  {
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    OUTLINED_FUNCTION_69_12(updated, v81, v82, v83, v84, v85, v86, v87, v119, v127, v132, v133, MEMORY[0x277D837D0], v134, v135, v136);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_22();
    v30 = 0x546B726F77747261;
    v31 = 0xEC0000006E656B6FLL;
    goto LABEL_31;
  }

  if (a3 == 2)
  {
    goto LABEL_33;
  }

  if (a3)
  {
    *&v132 = v127;
    *(&v132 + 1) = a3;
    OUTLINED_FUNCTION_69_12(updated, v81, v82, v83, v84, v85, v86, v87, v119, v127, v132, v133, MEMORY[0x277D837D0], v134, v135, v136);
    sub_216B03434(v103, a3);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_22();
    OUTLINED_FUNCTION_62_11(v104, v105, v106, v107, v108, v109, v110, v111, v124, v131, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136);
LABEL_32:
    sub_2166EF9D4();
    v23 = v135;
    goto LABEL_33;
  }

  v132 = 0u;
  v133 = 0u;
  sub_216B03434(v127, 0);
  sub_216697664(&v132, &unk_27CABF7A0);
  v116 = sub_2166AF66C(0x546B726F77747261, 0xEC0000006E656B6FLL);
  if (v117)
  {
    v118 = v116;
    swift_isUniquelyReferenced_nonNull_native();
    v135 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
    sub_21700F554();
    v23 = v135;

    sub_2166EF9C4((*(v23 + 56) + 32 * v118), &v136);
    sub_21700F574();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  sub_216697664(&v136, &unk_27CABF7A0);
LABEL_33:
  if (*(v23 + 16))
  {
    sub_216CAE468(v23, v81, v82, v83, v84, v85, v86, v87, v119, v127, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, v135, v136, *(&v136 + 1), v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143);

    OUTLINED_FUNCTION_53();
    v112 = swift_allocObject();
    *(v112 + 16) = a4 & 1;
    *(v112 + 24) = v7;
    *(v112 + 32) = a1 & 1;
    *(v112 + 40) = v14;
    v113 = sub_2166AF2EC();
    OUTLINED_FUNCTION_68_13();
    swift_retain_n();
    v114 = v14;
    v115 = sub_21700EE84();
    *(&v133 + 1) = v113;
    v134 = MEMORY[0x277D225C0];
    *&v132 = v115;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&v132);
  }

  else
  {

    sub_216B01228(v14, a1 & 1);
  }
}

void sub_216B01D18(_BYTE *a1, char a2, uint64_t a3, char a4, void *a5)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      sub_216B01DA0(1);
      if (a4)
      {
        sub_216AFFB5C();
      }
    }

    else
    {
      sub_216B01228(a5, a4 & 1);
    }
  }
}

uint64_t sub_216B01DA0(char a1)
{
  sub_216AFF7D4();

  result = sub_216AFCB74();
  if (a1)
  {
    sub_2166B8854(1);
  }

  return result;
}

uint64_t sub_216B01E08()
{
  v1 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isUpdating;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_34();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__playlistDescriptors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2938);
  OUTLINED_FUNCTION_34();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__name;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8);
  OUTLINED_FUNCTION_34();
  v10 = *(v9 + 8);
  v10(v0 + v7, v8);
  v10(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__handle, v8);
  v11 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__artwork;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2940);
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v0 + v11);
  v13 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__pickedImage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2948);
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v0 + v13);
  v15 = OUTLINED_FUNCTION_19_1(OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isProfilePrivate);
  (v4)(v15);
  v16 = OUTLINED_FUNCTION_19_1(OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isListeningToEnabled);
  (v4)(v16);
  v17 = OUTLINED_FUNCTION_19_1(OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isDiscoverableByContact);
  (v4)(v17);
  v18 = OUTLINED_FUNCTION_19_1(OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isContactCheckAllowed);
  (v4)(v18);
  v19 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__socialProfileSharedPlaylistIDs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2950);
  OUTLINED_FUNCTION_34();
  (*(v20 + 8))(v0 + v19);
  sub_216B042D4(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties, type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties);

  return v0;
}

uint64_t sub_216B020C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SocialProfileUpdater(0);
  result = sub_217007D64();
  *a1 = result;
  return result;
}

void sub_216B02100()
{
  OUTLINED_FUNCTION_49();
  v105 = v2;
  v97 = v3;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v93 = v5;
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v92 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v106 = v9;
  OUTLINED_FUNCTION_4_1();
  v98 = type metadata accessor for SquareLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v104 = v11 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v101 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v99 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v95 = &v91 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_105();
  v96 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v91 - v24;
  v26 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v34 = OUTLINED_FUNCTION_36(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_53_1();
  v39 = OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_artwork;
  v40 = type metadata accessor for Artwork();
  v103 = v39;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_76_12(OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_title);
  v100 = v44;
  v107 = v0;
  OUTLINED_FUNCTION_76_12(OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_subtitle);
  v102 = v45;
  sub_216CCB7C4();
  sub_217006794();
  (*(v28 + 8))(v32, v26);
  sub_21700C444();
  v46 = v96;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  sub_216C7CDA8(v25, v46, v37);
  v51 = OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_31_2(v51, v52, v40);
  if (v53)
  {
    v54 = v95;
    sub_216DE9428();
    sub_2166A6EA4();
    OUTLINED_FUNCTION_4_82();
    sub_216B042D4(v54, v55);
    v56 = OUTLINED_FUNCTION_49_1();
    OUTLINED_FUNCTION_31_2(v56, v57, v40);
    if (!v53)
    {
      sub_216697664(v37, &qword_27CAB6D60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_65();
    sub_216B043C4();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v40);
  }

  v58 = v107;
  v59 = v103;
  OUTLINED_FUNCTION_49_21();
  sub_216B04424(v1, v58 + v59);
  swift_endAccess();
  v60 = v99;
  sub_216DE9428();
  v61 = *v60;
  sub_21700DF14();
  OUTLINED_FUNCTION_4_82();
  sub_216B042D4(v60, v62);
  v63 = v100;
  if (v61)
  {
    v64 = sub_216B80C28(v61);
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = v102;
  *v63 = v64;
  v63[1] = v66;

  v68 = v101;
  sub_216DE9428();
  v69 = *(v68 + 8);
  sub_21700DF14();
  OUTLINED_FUNCTION_4_82();
  sub_216B042D4(v68, v70);
  if (v69)
  {
    v71 = sub_216B80C28(v69);
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  *v67 = v71;
  v67[1] = v73;

  v74 = OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor__isPublic;
  OUTLINED_FUNCTION_49_21();
  v109[0] = v105 & 1;
  sub_217007DA4();
  swift_endAccess();
  v75 = v104;
  sub_216DE9428();
  v76 = v106;
  sub_2166A6EA4();
  OUTLINED_FUNCTION_4_82();
  sub_216B042D4(v75, v77);
  v78 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_31_2(v76, 1, v78);
  if (v53)
  {

    sub_216697664(v76, &qword_27CAB6A00);
  }

  else
  {
    memcpy(v110, (v76 + 8), 0x69uLL);
    sub_21686BC90(v110, v109);
    OUTLINED_FUNCTION_30_33();
    OUTLINED_FUNCTION_85_11(v109);
    v80 = sub_2168955E4();
    if (v81)
    {
      v82 = v80;
      v83 = v81;
      sub_21686BCEC(v110);
LABEL_18:
      v85 = (v58 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
      *v85 = v82;
      v85[1] = v83;
      v86 = v92;
      sub_217006214();
      v87 = sub_2170061F4();
      v89 = v88;

      (*(v93 + 8))(v86, v94);
      v90 = (v58 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_id);
      *v90 = v87;
      v90[1] = v89;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_85_11(&v108);
    v82 = sub_216895554();
    v83 = v84;
    sub_21686BCEC(v110);
    if (v83)
    {
      goto LABEL_18;
    }
  }

  sub_216697664(v58 + v59, &qword_27CAB6D60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_34();
  (*(v79 + 8))(v58 + v74);
  type metadata accessor for SocialProfileUpdater.PlaylistDescriptor(0);
  swift_deallocPartialClassInstance();
LABEL_19:
  OUTLINED_FUNCTION_26();
}

void sub_216B02848()
{
  OUTLINED_FUNCTION_49();
  v70 = v3;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v65 = v5;
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v64 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v74 = v9;
  OUTLINED_FUNCTION_4_1();
  v73 = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v72 = v11 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_53_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v69 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_40();
  v68 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - v31;
  v33 = OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_artwork;
  v34 = type metadata accessor for Artwork();
  v71 = v33;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  OUTLINED_FUNCTION_76_12(OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_title);
  v75 = v0;
  v76 = v38;
  OUTLINED_FUNCTION_76_12(OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_subtitle);
  v67 = v39;
  sub_216CCBA1C();
  sub_21700C8F4();
  (*(v20 + 8))(v24, v68);
  sub_21700C444();
  v40 = v69;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  sub_216C7CDA8(v1, v40, v29);
  OUTLINED_FUNCTION_31_2(v29, 1, v34);
  if (v45)
  {
    sub_216DE9B98();
    sub_2166A6EA4();
    sub_216B042D4(v2, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    OUTLINED_FUNCTION_31_2(v29, 1, v34);
    v46 = v32;
    if (!v45)
    {
      sub_216697664(v29, &qword_27CAB6D60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_65();
    sub_216B043C4();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
    v46 = v32;
  }

  v47 = v75;
  v48 = v71;
  OUTLINED_FUNCTION_49_21();
  sub_216B04424(v46, v47 + v48);
  swift_endAccess();
  sub_216DE9B98();
  v49 = v73;
  v50 = (v2 + *(v73 + 32));
  v52 = *v50;
  v51 = v50[1];
  sub_21700DF14();
  sub_216B042D4(v2, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  v53 = v76;
  *v76 = v52;
  v53[1] = v51;

  sub_216DE9B98();
  LOBYTE(v51) = *(v2 + *(v49 + 36));
  sub_216B042D4(v2, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  v54 = OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor__isPublic;
  OUTLINED_FUNCTION_49_21();
  v78[0] = v51;
  sub_217007DA4();
  swift_endAccess();
  v55 = v72;
  sub_216DE9B98();
  v56 = v74;
  sub_2166A6EA4();
  sub_216B042D4(v55, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  v57 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_31_2(v56, 1, v57);
  if (v45)
  {

    sub_216697664(v56, &qword_27CAB6A00);
  }

  else
  {
    memcpy(v79, (v56 + 8), 0x69uLL);
    sub_21686BC90(v79, v78);
    OUTLINED_FUNCTION_30_33();
    OUTLINED_FUNCTION_85_11(v78);
    v59 = v78;
    sub_2168955E4();
    if (v60)
    {
      OUTLINED_FUNCTION_84_1();
      sub_21686BCEC(v79);
LABEL_12:
      v61 = (v47 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
      *v61 = v59;
      v61[1] = type metadata accessor for SocialOnboardingSharedPlaylistLockup;
      v62 = v64;
      sub_217006214();
      sub_2170061F4();
      OUTLINED_FUNCTION_84_1();

      (*(v65 + 8))(v62, v66);
      v63 = (v47 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_id);
      *v63 = v62;
      v63[1] = type metadata accessor for SocialOnboardingSharedPlaylistLockup;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_85_11(v77);
    v59 = v77;
    sub_216895554();
    OUTLINED_FUNCTION_84_1();
    sub_21686BCEC(v79);
    if (type metadata accessor for SocialOnboardingSharedPlaylistLockup)
    {
      goto LABEL_12;
    }
  }

  sub_216697664(v47 + v48, &qword_27CAB6D60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_34();
  (*(v58 + 8))(v47 + v54);
  type metadata accessor for SocialProfileUpdater.PlaylistDescriptor(0);
  swift_deallocPartialClassInstance();
LABEL_13:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B02EFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216B02F64()
{
  sub_21700DF14();
  OUTLINED_FUNCTION_8();
  sub_21700E614();
}

uint64_t sub_216B02FC4()
{
  OUTLINED_FUNCTION_79_16();
  v2 = v2 && v0 == v1;
  if (!v2 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_79_16();
  v5 = v2 && v3 == v4;
  if (!v5 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_216B02EE8();
  if ((v6 ^ sub_216B02EE8()))
  {
    return 0;
  }

  OUTLINED_FUNCTION_78_13();
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v12 = *v10 == *v11 && v8 == v9;
  if (!v12 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_78_13();
  result = (v13 | v14) == 0;
  if (v13 && v14)
  {
    if (*v15 == *v16 && v13 == v14)
    {
      return 1;
    }

    else
    {

      return sub_21700F7D4();
    }
  }

  return result;
}

uint64_t sub_216B030F4()
{
  sub_216697664(v0 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_artwork, &qword_27CAB6D60);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v1 = OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor__isPublic;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  return v0;
}

uint64_t sub_216B031C0(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_216B03224()
{
  sub_21700F8F4();
  sub_216B02F64();
  return sub_21700F944();
}

uint64_t sub_216B032D4()
{
  sub_21700F8F4();
  sub_216B02F64();
  return sub_21700F944();
}

uint64_t sub_216B03338@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SocialProfileUpdater.PlaylistDescriptor(0);
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_216B033C0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF430();
  *v0 = result;
  return result;
}

uint64_t sub_216B03434(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216B03464(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216B034C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_21700DF14();
  v6 = sub_21700E724();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_74_0();
    sub_216B03E48();
    OUTLINED_FUNCTION_98_0();

    v7 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_74_0();
      v8 = sub_21700F444();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_10_61();
          if (v19)
          {
            while (1)
            {
              OUTLINED_FUNCTION_42_25();
              if (v16 && v23 < v21)
              {
                v24 = -48;
              }

              else if (v23 < 0x41 || v23 >= v20)
              {
                OUTLINED_FUNCTION_27_35();
                if (!v16 || v23 >= v25)
                {
                  goto LABEL_128;
                }

                v24 = -87;
              }

              else
              {
                v24 = -55;
              }

              if (is_mul_ok(v22, a3) && !__CFADD__(v22 * a3, (v23 + v24)))
              {
                OUTLINED_FUNCTION_41_20();
                if (!v26)
                {
                  continue;
                }
              }

              goto LABEL_128;
            }
          }
        }

        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_66_13();
        if (v27 ^ v28 | v26)
        {
          v31 = v34;
        }

        if (v27 ^ v28 | v26)
        {
          v32 = 65;
        }

        if (!(v27 ^ v28 | v26))
        {
          v33 = 58;
        }

        if (v29)
        {
          v35 = 0;
          while (1)
          {
            v36 = *v29;
            if (v36 < 0x30 || v36 >= v33)
            {
              if (v36 < 0x41 || v36 >= v32)
              {
                if (v36 < 0x61 || v36 >= v31)
                {
                  goto LABEL_128;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            if (is_mul_ok(v35, a3))
            {
              v38 = v35 * a3;
              v39 = v36 + v37;
              v16 = __CFADD__(v38, v39);
              v35 = v38 + v39;
              if (!v16)
              {
                ++v29;
                if (--v30)
                {
                  continue;
                }
              }
            }

            goto LABEL_128;
          }
        }
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_10_61();
        if (v11)
        {
          while (1)
          {
            OUTLINED_FUNCTION_42_25();
            if (v16 && v15 < v13)
            {
              v17 = -48;
            }

            else if (v15 < 0x41 || v15 >= v12)
            {
              OUTLINED_FUNCTION_27_35();
              if (!v16 || v15 >= v18)
              {
                break;
              }

              v17 = -87;
            }

            else
            {
              v17 = -55;
            }

            if (is_mul_ok(v14, a3) && v14 * a3 >= (v15 + v17))
            {
              OUTLINED_FUNCTION_41_20();
              if (!v26)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_128:

      return;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_65_11();
  if (!v26)
  {
    if (v41 != 45)
    {
      if (v40)
      {
        OUTLINED_FUNCTION_3_99();
        while (1)
        {
          OUTLINED_FUNCTION_42_25();
          if (v16 && v57 < v56)
          {
            v58 = -48;
          }

          else if (v57 < 0x41 || v57 >= v55)
          {
            OUTLINED_FUNCTION_27_35();
            if (!v16 || v57 >= v59)
            {
              goto LABEL_128;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }

          if (is_mul_ok(v54, a3) && !__CFADD__(v54 * a3, (v57 + v58)))
          {
            OUTLINED_FUNCTION_41_20();
            if (!v26)
            {
              continue;
            }
          }

          goto LABEL_128;
        }
      }

      goto LABEL_128;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        OUTLINED_FUNCTION_3_99();
        OUTLINED_FUNCTION_38_25();
        while (1)
        {
          OUTLINED_FUNCTION_42_25();
          if (v16 && v45 < v44)
          {
            v46 = -48;
          }

          else if (v45 < 0x41 || v45 >= v43)
          {
            OUTLINED_FUNCTION_27_35();
            if (!v16 || v45 >= v47)
            {
              goto LABEL_128;
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }

          if (is_mul_ok(v42, a3) && v42 * a3 >= (v45 + v46))
          {
            OUTLINED_FUNCTION_41_20();
            if (!v26)
            {
              continue;
            }
          }

          goto LABEL_128;
        }
      }

      goto LABEL_128;
    }

    goto LABEL_131;
  }

  if (v40)
  {
    if (v40 != 1)
    {
      OUTLINED_FUNCTION_3_99();
      OUTLINED_FUNCTION_38_25();
      while (1)
      {
        OUTLINED_FUNCTION_42_25();
        if (v16 && v51 < v50)
        {
          v52 = -48;
        }

        else if (v51 < 0x41 || v51 >= v49)
        {
          OUTLINED_FUNCTION_27_35();
          if (!v16 || v51 >= v53)
          {
            goto LABEL_128;
          }

          v52 = -87;
        }

        else
        {
          v52 = -55;
        }

        if (is_mul_ok(v48, a3) && !__CFADD__(v48 * a3, (v51 + v52)))
        {
          OUTLINED_FUNCTION_41_20();
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_128;
      }
    }

    goto LABEL_128;
  }

LABEL_133:
  __break(1u);
}

void sub_216B03978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700DF14();
  v6 = sub_21700E724();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_74_0();
    sub_216B03E48();
    OUTLINED_FUNCTION_98_0();

    v7 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_74_0();
      v8 = sub_21700F444();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_10_61();
          if (v26 ^ v27 | v25)
          {
            v30 = 65;
          }

          if (!(v26 ^ v27 | v25))
          {
            v31 = 58;
          }

          if (v28)
          {
            v32 = 0;
            v33 = (v28 + 1);
            while (1)
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v31)
              {
                if (v34 < 0x41 || v34 >= v30)
                {
                  OUTLINED_FUNCTION_27_35();
                  if (!v23 || v34 >= v36)
                  {
                    goto LABEL_136;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v37 = v32 * a3;
              if ((v32 * a3) >> 64 == (v32 * a3) >> 63)
              {
                v32 = v37 + (v34 + v35);
                if (!__OFADD__(v37, (v34 + v35)))
                {
                  ++v33;
                  if (--v29)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_136;
            }
          }
        }

        goto LABEL_136;
      }

      goto LABEL_140;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_66_13();
        if (v39 ^ v40 | v38)
        {
          v43 = v46;
        }

        if (v39 ^ v40 | v38)
        {
          v44 = 65;
        }

        if (!(v39 ^ v40 | v38))
        {
          v45 = 58;
        }

        if (v41)
        {
          v47 = 0;
          while (1)
          {
            v48 = *v41;
            if (v48 < 0x30 || v48 >= v45)
            {
              if (v48 < 0x41 || v48 >= v44)
              {
                if (v48 < 0x61 || v48 >= v43)
                {
                  goto LABEL_136;
                }

                v49 = -87;
              }

              else
              {
                v49 = -55;
              }
            }

            else
            {
              v49 = -48;
            }

            v50 = v47 * a3;
            if ((v47 * a3) >> 64 == (v47 * a3) >> 63)
            {
              v47 = v50 + (v48 + v49);
              if (!__OFADD__(v50, (v48 + v49)))
              {
                ++v41;
                if (--v42)
                {
                  continue;
                }
              }
            }

            goto LABEL_136;
          }
        }
      }

      goto LABEL_136;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_10_61();
        if (v12 ^ v13 | v11)
        {
          v16 = 65;
        }

        if (!(v12 ^ v13 | v11))
        {
          v17 = 58;
        }

        if (v14)
        {
          v18 = 0;
          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19;
            if (v20 < 0x30 || v20 >= v17)
            {
              if (v20 < 0x41 || v20 >= v16)
              {
                OUTLINED_FUNCTION_27_35();
                if (!v23 || v20 >= v22)
                {
                  break;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v18 * a3;
            if ((v18 * a3) >> 64 == (v18 * a3) >> 63)
            {
              v18 = v24 - (v20 + v21);
              if (!__OFSUB__(v24, (v20 + v21)))
              {
                ++v19;
                if (--v15)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_136:

      return;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_65_11();
  if (!v11)
  {
    if (v52 != 45)
    {
      if (v51)
      {
        OUTLINED_FUNCTION_3_99();
        while (1)
        {
          OUTLINED_FUNCTION_42_25();
          if (v23 && v68 < v67)
          {
            v69 = -48;
          }

          else if (v68 < 0x41 || v68 >= v66)
          {
            OUTLINED_FUNCTION_27_35();
            if (!v23 || v68 >= v70)
            {
              goto LABEL_136;
            }

            v69 = -87;
          }

          else
          {
            v69 = -55;
          }

          if ((v65 * a3) >> 64 == (v65 * a3) >> 63 && !__OFADD__(v65 * a3, (v68 + v69)))
          {
            OUTLINED_FUNCTION_41_20();
            if (!v11)
            {
              continue;
            }
          }

          goto LABEL_136;
        }
      }

      goto LABEL_136;
    }

    if (v51)
    {
      if (v51 != 1)
      {
        OUTLINED_FUNCTION_3_99();
        OUTLINED_FUNCTION_38_25();
        while (1)
        {
          OUTLINED_FUNCTION_42_25();
          if (v23 && v56 < v55)
          {
            v57 = -48;
          }

          else if (v56 < 0x41 || v56 >= v54)
          {
            OUTLINED_FUNCTION_27_35();
            if (!v23 || v56 >= v58)
            {
              goto LABEL_136;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }

          if ((v53 * a3) >> 64 == (v53 * a3) >> 63 && !__OFSUB__(v53 * a3, (v56 + v57)))
          {
            OUTLINED_FUNCTION_41_20();
            if (!v11)
            {
              continue;
            }
          }

          goto LABEL_136;
        }
      }

      goto LABEL_136;
    }

    goto LABEL_139;
  }

  if (v51)
  {
    if (v51 != 1)
    {
      OUTLINED_FUNCTION_3_99();
      OUTLINED_FUNCTION_38_25();
      while (1)
      {
        OUTLINED_FUNCTION_42_25();
        if (v23 && v62 < v61)
        {
          v63 = -48;
        }

        else if (v62 < 0x41 || v62 >= v60)
        {
          OUTLINED_FUNCTION_27_35();
          if (!v23 || v62 >= v64)
          {
            goto LABEL_136;
          }

          v63 = -87;
        }

        else
        {
          v63 = -55;
        }

        if ((v59 * a3) >> 64 == (v59 * a3) >> 63 && !__OFADD__(v59 * a3, (v62 + v63)))
        {
          OUTLINED_FUNCTION_41_20();
          if (!v11)
          {
            continue;
          }
        }

        goto LABEL_136;
      }
    }

    goto LABEL_136;
  }

LABEL_141:
  __break(1u);
}

uint64_t sub_216B03E48()
{
  v0 = sub_216B03EB4();
  v4 = sub_216B03EE8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_216B03EE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21700F174();
    if (!v9 || (v10 = v9, v11 = sub_2166B9480(v9, 0), v12 = sub_216B04048(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_21700DF14(), , v12 == v10))
    {
      v13 = sub_21700E604();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21700E604();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21700F444();
LABEL_4:

  return sub_21700E604();
}

unint64_t sub_216B04048(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_216B04258(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21700E6C4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21700F444();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_216B04258(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_21700E6A4();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_216B04258(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21700E6D4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CE9F4D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_216B042D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B0432C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B04394(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_216B043C4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}