uint64_t sub_227A42278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227A422E0()
{
  result = qword_27D7DDFF0;
  if (!qword_27D7DDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DDFF0);
  }

  return result;
}

unint64_t sub_227A42334()
{
  result = qword_27D7DDFF8;
  if (!qword_27D7DDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DDFF8);
  }

  return result;
}

unint64_t sub_227A42388()
{
  result = qword_27D7DE008;
  if (!qword_27D7DE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE008);
  }

  return result;
}

_BYTE *sub_227A423EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A424CC()
{
  result = qword_27D7DE010;
  if (!qword_27D7DE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE010);
  }

  return result;
}

unint64_t sub_227A42524()
{
  result = qword_27D7DE018;
  if (!qword_27D7DE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE018);
  }

  return result;
}

unint64_t sub_227A4257C()
{
  result = qword_27D7DE020;
  if (!qword_27D7DE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE020);
  }

  return result;
}

unint64_t sub_227A425D4()
{
  result = qword_27D7DE028;
  if (!qword_27D7DE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE028);
  }

  return result;
}

unint64_t sub_227A42628()
{
  result = qword_27D7DE030;
  if (!qword_27D7DE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE030);
  }

  return result;
}

uint64_t sub_227A42694(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000227A9F660 == a2;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000227A9F680 == a2;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000227A9F6A0 == a2;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000227A9F6C0 == a2;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_227A72E5C();

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

unint64_t sub_227A42840(char a1)
{
  result = 0x6C6172656E6567;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_227A42920(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A429A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_227A72E5C();

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

uint64_t sub_227A42A78(char a1)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a1 & 1);
  return sub_227A72F4C();
}

uint64_t sub_227A42AC0(char a1)
{
  if (a1)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_227A42B08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D65766569686361 && a2 == 0xED00004449746E65)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A42BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A42694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A42BDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A42838();
  *a1 = result;
  return result;
}

uint64_t sub_227A42C04(uint64_t a1)
{
  v2 = sub_227A434FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42C40(uint64_t a1)
{
  v2 = sub_227A434FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42C7C(uint64_t a1)
{
  v2 = sub_227A43550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42CB8(uint64_t a1)
{
  v2 = sub_227A43550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42CF8(uint64_t a1)
{
  v2 = sub_227A435F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42D34(uint64_t a1)
{
  v2 = sub_227A435F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42D70(uint64_t a1)
{
  v2 = sub_227A4364C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42DAC(uint64_t a1)
{
  v2 = sub_227A4364C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A429A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A42E20(uint64_t a1)
{
  v2 = sub_227A436A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42E5C(uint64_t a1)
{
  v2 = sub_227A436A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A42B08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_227A42EC8(uint64_t a1)
{
  v2 = sub_227A435A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42F04(uint64_t a1)
{
  v2 = sub_227A435A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void InGameBannerData.BannerType.encode(to:)()
{
  OUTLINED_FUNCTION_41_0();
  v78 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE038, &qword_227AA4DB0);
  v5 = OUTLINED_FUNCTION_92(v4);
  v72 = v6;
  v73 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36_0();
  v69 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE040, &qword_227AA4DB8);
  v12 = OUTLINED_FUNCTION_92(v11);
  v70 = v13;
  v71 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36_0();
  v68 = v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE048, &qword_227AA4DC0);
  OUTLINED_FUNCTION_92(v67);
  v65 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE050, &qword_227AA4DC8);
  v25 = OUTLINED_FUNCTION_92(v24);
  v62 = v26;
  v63 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE058, &qword_227AA4DD0);
  OUTLINED_FUNCTION_92(v66);
  v64 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  v37 = &v61 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE060, &unk_227AA4DD8);
  v39 = OUTLINED_FUNCTION_92(v38);
  v76 = v40;
  v77 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_54_0();
  v44 = v0[1];
  v74 = *v0;
  v75 = v44;
  v61 = v0[2];
  v45 = *(v0 + 24);
  v46 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227A434FC();
  sub_227A72F6C();
  switch(v45)
  {
    case 1:
      sub_227A4364C();
      v57 = v77;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      v60 = v63;
      sub_227A72DCC();
      (*(v62 + 8))(v31, v60);
      goto LABEL_10;
    case 2:
      sub_227A435F8();
      v57 = v77;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      v58 = v67;
      sub_227A72DCC();
      v59 = v65;
      goto LABEL_8;
    case 3:
      sub_227A435A4();
      v23 = v68;
      v57 = v77;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      v58 = v71;
      sub_227A72DCC();
      v59 = v70;
LABEL_8:
      (*(v59 + 8))(v23, v58);
LABEL_10:
      v50 = OUTLINED_FUNCTION_12_5();
      v52 = v57;
      goto LABEL_11;
    case 4:
      sub_227A43550();
      v53 = v69;
      v54 = v77;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      (*(v72 + 8))(v53, v73);
      v55 = OUTLINED_FUNCTION_12_5();
      v56(v55, v54);
      goto LABEL_12;
    default:
      sub_227A436A0();
      v47 = v77;
      OUTLINED_FUNCTION_1_20();
      sub_227A72D9C();
      v48 = v66;
      v49 = v78;
      sub_227A72DCC();
      if (!v49)
      {
        v79 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
        sub_227A45098(&qword_27D7DE098);
        sub_227A72DFC();
      }

      (*(v64 + 8))(v37, v48);
      v50 = OUTLINED_FUNCTION_12_5();
      v52 = v47;
LABEL_11:
      v51(v50, v52);
LABEL_12:
      OUTLINED_FUNCTION_40_0();
      return;
  }
}

unint64_t sub_227A434FC()
{
  result = qword_27D7DE068;
  if (!qword_27D7DE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE068);
  }

  return result;
}

unint64_t sub_227A43550()
{
  result = qword_27D7DE070;
  if (!qword_27D7DE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE070);
  }

  return result;
}

unint64_t sub_227A435A4()
{
  result = qword_27D7DE078;
  if (!qword_27D7DE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE078);
  }

  return result;
}

unint64_t sub_227A435F8()
{
  result = qword_27D7DE080;
  if (!qword_27D7DE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE080);
  }

  return result;
}

unint64_t sub_227A4364C()
{
  result = qword_27D7DE088;
  if (!qword_27D7DE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE088);
  }

  return result;
}

unint64_t sub_227A436A0()
{
  result = qword_27D7DE090;
  if (!qword_27D7DE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE090);
  }

  return result;
}

void InGameBannerData.BannerType.init(from:)()
{
  OUTLINED_FUNCTION_41_0();
  v108 = v0;
  v3 = v2;
  v104 = v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0A0, &qword_227AA4DE8);
  OUTLINED_FUNCTION_92(v106);
  v99 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36_0();
  v102 = v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0A8, &qword_227AA4DF0);
  OUTLINED_FUNCTION_92(v105);
  v100 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36_0();
  v103 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0B0, &qword_227AA4DF8);
  v16 = OUTLINED_FUNCTION_92(v15);
  v96 = v17;
  v97 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36_0();
  v101 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0B8, &qword_227AA4E00);
  v23 = OUTLINED_FUNCTION_92(v22);
  v94 = v24;
  v95 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_54_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0C0, &qword_227AA4E08);
  OUTLINED_FUNCTION_92(v28);
  v98 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  v34 = &v89 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0C8, &qword_227AA4E10);
  OUTLINED_FUNCTION_92(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  v42 = &v89 - v41;
  v44 = v3[3];
  v43 = v3[4];
  v107 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v44);
  sub_227A434FC();
  v45 = v108;
  sub_227A72F5C();
  v46 = v45;
  if (v45)
  {
    goto LABEL_9;
  }

  v91 = v1;
  v92 = v34;
  v90 = v28;
  v48 = v105;
  v47 = v106;
  v108 = v37;
  v49 = sub_227A72D8C();
  v50 = sub_227A44FD4(v49, 0);
  v54 = v35;
  v93 = v42;
  if (v52 == v53 >> 1)
  {
LABEL_8:
    v64 = sub_227A72B5C();
    swift_allocError();
    v66 = v65;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB70, &qword_227AA2E00) + 48);
    *v66 = &type metadata for InGameBannerData.BannerType;
    v68 = v93;
    sub_227A72D1C();
    sub_227A72B4C();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v108 + 8))(v68, v54);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v107);
LABEL_10:
    OUTLINED_FUNCTION_40_0();
    return;
  }

  if (v52 < (v53 >> 1))
  {
    v89 = *(v51 + v52);
    v55 = sub_227A4501C(v52 + 1, v53 >> 1, v50, v51, v52, v53);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 == v59 >> 1)
    {
      v60 = v104;
      switch(v89)
      {
        case 1:
          sub_227A4364C();
          v74 = v91;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v75 = v95;
          sub_227A72D4C();
          v76 = v108;
          OUTLINED_FUNCTION_9_8();
          v78 = v94;
          goto LABEL_15;
        case 2:
          sub_227A435F8();
          v74 = v101;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v75 = v97;
          sub_227A72D4C();
          v76 = v108;
          OUTLINED_FUNCTION_9_8();
          v78 = v96;
          goto LABEL_15;
        case 3:
          sub_227A435A4();
          v77 = v103;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v75 = v48;
          sub_227A72D4C();
          v74 = v77;
          v76 = v108;
          OUTLINED_FUNCTION_9_8();
          v78 = v100;
LABEL_15:
          (*(v78 + 8))(v74, v75);
          v82 = *(v76 + 8);
          v83 = OUTLINED_FUNCTION_109();
          v84(v83);
          v80 = v55;
          goto LABEL_16;
        case 4:
          v69 = v47;
          sub_227A43550();
          v70 = v102;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          swift_unknownObjectRelease();
          (*(v99 + 8))(v70, v69);
          v71 = *(v108 + 8);
          v72 = OUTLINED_FUNCTION_109();
          v73(v72);
          v80 = 0;
LABEL_16:
          v87 = 0;
          v88 = v107;
          break;
        default:
          sub_227A436A0();
          v61 = v92;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v62 = v90;
          v63 = sub_227A72D4C();
          v46 = v79;
          v80 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
          sub_227A45098(&qword_27D7DE0D0);
          sub_227A72D7C();
          v81 = v98;
          swift_unknownObjectRelease();
          (*(v81 + 8))(v61, v62);
          v85 = OUTLINED_FUNCTION_6_9();
          v86(v85);
          v87 = v109;
          v88 = v107;
          v60 = v104;
          break;
      }

      *v60 = v80;
      *(v60 + 8) = v46;
      *(v60 + 16) = v87;
      *(v60 + 24) = v89;
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      goto LABEL_10;
    }

    v54 = v35;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t InGameBannerData.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_227A45104(v2, v3, v4, v5);
}

uint64_t InGameBannerData.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_86();
}

uint64_t InGameBannerData.body.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_86();
}

uint64_t InGameBannerData.image.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OUTLINED_FUNCTION_86();
  sub_2279E3ED0(v3, v4);
  return OUTLINED_FUNCTION_86();
}

uint64_t InGameBannerData.clipData.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_86();
  sub_2279E3ED0(v3, v4);
  return OUTLINED_FUNCTION_86();
}

uint64_t InGameBannerData.imageSymbolName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_86();
}

void InGameBannerData.init(type:title:body:image:clipData:)(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  OUTLINED_FUNCTION_17_4(a1, a2, a3, a4, a5, a6);
  v8[8] = v6;
  v8[9] = v7;
  v8[10] = v9;
  v8[11] = v10;
  v8[12] = 0;
  v8[13] = 0;
}

double InGameBannerData.init(type:title:body:clipData:imageSymbolName:)@<D0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  OUTLINED_FUNCTION_17_4(a1, a2, a3, a4, a5, a6);
  result = 0.0;
  *(v7 + 64) = xmmword_227AA0100;
  *(v7 + 80) = v8;
  *(v7 + 88) = v9;
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  return result;
}

uint64_t static InGameBannerData.encode(bannerData:)(const void *a1)
{
  v2 = sub_227A7198C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_227A7197C();
  memcpy(__dst, a1, sizeof(__dst));
  sub_227A45168();
  v5 = sub_227A7196C();

  return v5;
}

void *static InGameBannerData.decode(data:)@<X0>(void *a1@<X8>)
{
  v2 = sub_227A7195C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_227A7194C();
  sub_227A451BC();
  sub_227A7193C();

  return memcpy(a1, __src, 0x70uLL);
}

uint64_t sub_227A444D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6174614470696C63 && a2 == 0xE800000000000000;
          if (v9 || (sub_227A72E5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D79536567616D69 && a2 == 0xEF656D614E6C6F62)
          {

            return 5;
          }

          else
          {
            v11 = sub_227A72E5C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_227A446C0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      v3 = 1819568500;
      goto LABEL_6;
    case 2:
      result = 2036625250;
      break;
    case 3:
      v3 = 1734438249;
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 4:
      result = 0x6174614470696C63;
      break;
    case 5:
      result = 0x6D79536567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A44768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A444D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A44790(uint64_t a1)
{
  v2 = sub_227A45210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A447CC(uint64_t a1)
{
  v2 = sub_227A45210();

  return MEMORY[0x2821FE720](a1, v2);
}

void InGameBannerData.encode(to:)()
{
  OUTLINED_FUNCTION_41_0();
  v37 = v1;
  v3 = v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0E8, &qword_227AA4E18);
  OUTLINED_FUNCTION_92(v36);
  v38 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 32);
  v34 = *(v0 + 40);
  v35 = v13;
  v14 = *(v0 + 48);
  v32 = *(v0 + 56);
  v33 = v14;
  v15 = *(v0 + 64);
  v30 = *(v0 + 72);
  v31 = v15;
  v16 = *(v0 + 80);
  v28 = *(v0 + 88);
  v29 = v16;
  v17 = *(v0 + 104);
  v27[1] = *(v0 + 96);
  v27[2] = v17;
  v18 = v3[4];
  v19 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227A45104(v10, v11, v12, v19);
  sub_227A45210();
  v20 = v36;
  sub_227A72F6C();
  v39 = v10;
  v40 = v11;
  v21 = v9;
  v41 = v12;
  v42 = v19;
  sub_227A45264();
  OUTLINED_FUNCTION_14_5();
  v22 = v37;
  sub_227A72DFC();
  if (v22)
  {
    sub_227A452B8(v39, v40, v41, v42);
    (*(v38 + 8))(v9, v20);
  }

  else
  {
    v24 = v30;
    v23 = v31;
    v25 = v29;
    v26 = v38;
    sub_227A452B8(v39, v40, v41, v42);
    LOBYTE(v39) = 1;
    sub_227A72DCC();
    LOBYTE(v39) = 2;
    sub_227A72DAC();
    v39 = v23;
    v40 = v24;
    sub_2279E3ED0(v23, v24);
    sub_227A0E850();
    OUTLINED_FUNCTION_14_5();
    sub_227A72DBC();
    sub_2279E3F90(v39, v40);
    v39 = v25;
    v40 = v28;
    sub_2279E3ED0(v25, v28);
    OUTLINED_FUNCTION_14_5();
    sub_227A72DBC();
    sub_2279E3F90(v39, v40);
    LOBYTE(v39) = 5;
    sub_227A72DAC();
    (*(v26 + 8))(v21, v20);
  }

  OUTLINED_FUNCTION_40_0();
}

void InGameBannerData.init(from:)()
{
  OUTLINED_FUNCTION_41_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE100, &qword_227AA4E20);
  OUTLINED_FUNCTION_92(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_0();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227A45210();
  sub_227A72F5C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  else
  {
    sub_227A4531C();
    OUTLINED_FUNCTION_4_10();
    sub_227A72D7C();
    v33 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    OUTLINED_FUNCTION_11_7();
    v13 = sub_227A72D4C();
    v31 = v14;
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_11_7();
    v15 = sub_227A72D2C();
    v32 = v16;
    v17 = v15;
    sub_227A0E7FC();
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_11_7();
    sub_227A72D3C();
    v26 = v35;
    v27 = v36;
    LOBYTE(v34[0]) = 4;
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_11_7();
    sub_227A72D3C();
    v24 = v17;
    v25 = v13;
    v18 = v35;
    v19 = v36;
    OUTLINED_FUNCTION_11_7();
    v20 = sub_227A72D2C();
    v21 = v1;
    v23 = v22;
    (*(v8 + 8))(v21, v6);
    v34[0] = v33;
    v34[1] = v36;
    v34[2] = v37;
    LOBYTE(v34[3]) = v38;
    v34[4] = v25;
    v34[5] = v31;
    v34[6] = v24;
    v34[7] = v32;
    v34[8] = v35;
    v34[9] = v36;
    v34[10] = v35;
    v34[11] = v36;
    v34[12] = v20;
    v34[13] = v23;
    memcpy(v5, v34, 0x70uLL);
    sub_227A45370(v34, &v35);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    v35 = v33;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v25;
    v40 = v31;
    v41 = v24;
    v42 = v32;
    v43 = v26;
    v44 = v27;
    v45 = v18;
    v46 = v19;
    v47 = v20;
    v48 = v23;
    sub_227A453A8(&v35);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A44FD4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_227A4501C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_227A45098(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC850, &qword_227AA0C20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227A45104(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 3)
  {
    if (a4)
    {
      return result;
    }
  }
}

unint64_t sub_227A45168()
{
  result = qword_27D7DE0D8;
  if (!qword_27D7DE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0D8);
  }

  return result;
}

unint64_t sub_227A451BC()
{
  result = qword_27D7DE0E0;
  if (!qword_27D7DE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0E0);
  }

  return result;
}

unint64_t sub_227A45210()
{
  result = qword_27D7DE0F0;
  if (!qword_27D7DE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0F0);
  }

  return result;
}

unint64_t sub_227A45264()
{
  result = qword_27D7DE0F8;
  if (!qword_27D7DE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0F8);
  }

  return result;
}

uint64_t sub_227A452B8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 3)
  {
    if (a4)
    {
      return result;
    }
  }
}

unint64_t sub_227A4531C()
{
  result = qword_27D7DE108;
  if (!qword_27D7DE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE108);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20GameCenterFoundation02InA10BannerDataV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A45440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_227A45480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_227A45500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
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

uint64_t sub_227A45540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_227A45588(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InGameBannerData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InGameBannerData.BannerType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InGameBannerData.BannerType.YouBeatFriendScoreCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_227A45868(_BYTE *result, int a2, int a3)
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

unint64_t sub_227A45928()
{
  result = qword_27D7DE110;
  if (!qword_27D7DE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE110);
  }

  return result;
}

unint64_t sub_227A45980()
{
  result = qword_27D7DE118;
  if (!qword_27D7DE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE118);
  }

  return result;
}

unint64_t sub_227A459D8()
{
  result = qword_27D7DE120;
  if (!qword_27D7DE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE120);
  }

  return result;
}

unint64_t sub_227A45A30()
{
  result = qword_27D7DE128;
  if (!qword_27D7DE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE128);
  }

  return result;
}

unint64_t sub_227A45A88()
{
  result = qword_27D7DE130;
  if (!qword_27D7DE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE130);
  }

  return result;
}

unint64_t sub_227A45AE0()
{
  result = qword_27D7DE138;
  if (!qword_27D7DE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE138);
  }

  return result;
}

unint64_t sub_227A45B38()
{
  result = qword_27D7DE140;
  if (!qword_27D7DE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE140);
  }

  return result;
}

unint64_t sub_227A45B90()
{
  result = qword_27D7DE148;
  if (!qword_27D7DE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE148);
  }

  return result;
}

unint64_t sub_227A45BE8()
{
  result = qword_27D7DE150;
  if (!qword_27D7DE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE150);
  }

  return result;
}

unint64_t sub_227A45C40()
{
  result = qword_27D7DE158;
  if (!qword_27D7DE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE158);
  }

  return result;
}

unint64_t sub_227A45C98()
{
  result = qword_27D7DE160;
  if (!qword_27D7DE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE160);
  }

  return result;
}

unint64_t sub_227A45CF0()
{
  result = qword_27D7DE168;
  if (!qword_27D7DE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE168);
  }

  return result;
}

unint64_t sub_227A45D48()
{
  result = qword_27D7DE170;
  if (!qword_27D7DE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE170);
  }

  return result;
}

unint64_t sub_227A45DA0()
{
  result = qword_27D7DE178;
  if (!qword_27D7DE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE178);
  }

  return result;
}

unint64_t sub_227A45DF8()
{
  result = qword_27D7DE180;
  if (!qword_27D7DE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE180);
  }

  return result;
}

unint64_t sub_227A45E50()
{
  result = qword_27D7DE188;
  if (!qword_27D7DE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE188);
  }

  return result;
}

unint64_t sub_227A45EA8()
{
  result = qword_27D7DE190;
  if (!qword_27D7DE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE190);
  }

  return result;
}

unint64_t sub_227A45F00()
{
  result = qword_27D7DE198;
  if (!qword_27D7DE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE198);
  }

  return result;
}

unint64_t sub_227A45F58()
{
  result = qword_27D7DE1A0;
  if (!qword_27D7DE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE1A0);
  }

  return result;
}

unint64_t sub_227A45FB0()
{
  result = qword_27D7DE1A8;
  if (!qword_27D7DE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE1A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_10_6()
{
  v1 = *(v0 - 340);
  v2 = *(v0 - 352);
  v3 = *(v0 - 360);
}

__n128 OUTLINED_FUNCTION_17_4@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u64[0];
  v7 = a1[1].n128_u8[8];
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u64[0] = v6;
  a6[1].n128_u8[8] = v7;
  a6[2].n128_u64[0] = a2;
  a6[2].n128_u64[1] = a3;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u64[1] = a5;
  return result;
}

void sub_227A46520(os_log_type_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, const char *a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v11 = sub_227A7227C();
  __swift_project_value_buffer(v11, a5);

  oslog = sub_227A7226C();

  if (os_log_type_enabled(oslog, a1))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_227A46730(a2, a3, &v15);
    _os_log_impl(&dword_227904000, oslog, a1, a6, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AAA1930](v13, -1, -1);
    MEMORY[0x22AAA1930](v12, -1, -1);
  }
}

uint64_t sub_227A46660(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_227A466D4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_227A46730(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_227A46730(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_227A467F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2279F4900(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_227A467F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_227A468F4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_227A72B6C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_227A468F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_227A46940(a1, a2);
  sub_227A46A58(&unk_283AF9510);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_227A46940(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_227A7259C())
  {
    result = sub_227A46B3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_227A72B0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_227A72B6C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_227A46A58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_227A46BAC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_227A46B3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE2B8, &unk_227AA5990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_227A46BAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE2B8, &unk_227AA5990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_227A46CA0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GKLog(_BYTE *result, int a2, int a3)
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

BOOL sub_227A46D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_227A72F2C();
  sub_227A7255C();
  sub_227A72F4C();
  v7 = *(a3 + 32);
  OUTLINED_FUNCTION_55_1();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = sub_227A72E5C();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

void sub_227A46E58(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = (*(a1 + 48) + ((v7 << 11) | (32 * __clz(__rbit64(v4)))));
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      objc_allocWithZone(GKTransportParticipant);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v13 = sub_227A58A48(v9, v10, v12, v11);
      if (!v13)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_227A20D6C(&v16, v13);
      v14 = v16;

      v6 = v7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_227A46FEC(uint64_t a1)
{
  v38 = sub_227A7212C();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v31 = v1;
  v41 = MEMORY[0x277D84F90];
  sub_227A204C8(0, v6, 0);
  v7 = v41;
  result = sub_227A5B380(a1);
  v11 = result;
  v12 = 0;
  v13 = a1 + 56;
  v36 = v3 + 32;
  v37 = v3;
  v32 = a1 + 64;
  v14 = v33;
  v34 = v6;
  v35 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v40 = v10;
      v39 = v9;
      v16 = a1;
      v17 = (*(a1 + 48) + 16 * v11);
      v18 = *v17;
      v19 = v17[1];

      sub_227A7211C();
      v41 = v7;
      v20 = v14;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_227A204C8(v21 > 1, v22 + 1, 1);
        v7 = v41;
      }

      *(v7 + 16) = v22 + 1;
      result = (*(v37 + 32))(v7 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v20, v38);
      if (v40)
      {
        goto LABEL_30;
      }

      v23 = 1 << *(v16 + 32);
      if (v11 >= v23)
      {
        goto LABEL_27;
      }

      v14 = v20;
      a1 = v16;
      v13 = v35;
      v24 = *(v35 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v39)
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_227A24020(v11, v39, 0);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_227A24020(v11, v39, 0);
LABEL_19:
        v14 = v33;
      }

      if (++v12 == v34)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v23;
      if (v23 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_227A47304()
{
  OUTLINED_FUNCTION_41_0();
  v52 = v1;
  v3 = v2;
  v51 = v4(0);
  v5 = OUTLINED_FUNCTION_92(v51);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - v10;
  v11 = *(v3 + 16);
  if (v11)
  {
    v42 = v0;
    v56 = MEMORY[0x277D84F90];
    sub_227A20388(0, v11, 0);
    v14 = sub_227A5B380(v3);
    v15 = v56;
    v16 = 0;
    v17 = v3 + 56;
    v47 = v7 + 8;
    v48 = v7 + 16;
    v43 = v3 + 64;
    v44 = v11;
    v45 = v7;
    v46 = v3;
    v49 = v3 + 56;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(v3 + 32))
      {
        v18 = v14 >> 6;
        if ((*(v17 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v3 + 36) != v12)
        {
          goto LABEL_25;
        }

        v55 = v13;
        v53 = v16;
        v54 = v12;
        v19 = v15;
        v20 = (*(v7 + 16))(v50, *(v3 + 48) + *(v7 + 72) * v14, v51);
        v21 = v52(v20);
        v23 = v22;
        v24 = *(v7 + 8);
        v25 = OUTLINED_FUNCTION_124_0();
        v26(v25);
        v15 = v19;
        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_227A20388(v27 > 1, v28 + 1, 1);
          v15 = v19;
        }

        *(v15 + 16) = v28 + 1;
        v29 = v15 + 16 * v28;
        *(v29 + 32) = v21;
        *(v29 + 40) = v23;
        v17 = v49;
        if (v55)
        {
          goto LABEL_29;
        }

        v7 = v45;
        v3 = v46;
        v30 = 1 << *(v46 + 32);
        if (v14 >= v30)
        {
          goto LABEL_26;
        }

        v31 = *(v49 + 8 * v18);
        if ((v31 & (1 << v14)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v46 + 36) != v54)
        {
          goto LABEL_28;
        }

        v32 = v31 & (-2 << (v14 & 0x3F));
        if (v32)
        {
          v30 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v33 = v44;
        }

        else
        {
          v34 = v18 << 6;
          v35 = v18 + 1;
          v33 = v44;
          v36 = (v43 + 8 * v18);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              v39 = OUTLINED_FUNCTION_112_1();
              sub_227A24020(v39, v40, 0);
              v15 = v30;
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_19;
            }
          }

          v41 = v15;
          sub_227A24020(v14, v54, 0);
          v15 = v41;
        }

LABEL_19:
        v16 = v53 + 1;
        if (v53 + 1 == v33)
        {
          goto LABEL_22;
        }

        v13 = 0;
        v12 = *(v3 + 36);
        v14 = v30;
        if (v30 < 0)
        {
          break;
        }
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
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_40_0();
  }
}

void sub_227A47618(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    sub_227A7285C();
    v3 = v40;
    v37 = v41;
    v4 = v42;
    v5 = v43;
    v6 = v44;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v37 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a1 + 56);

    v6 = v10;
    v5 = 0;
  }

  v35 = MEMORY[0x277D84F90];
  v36 = v3;
LABEL_8:
  v11 = v5;
  v12 = v6;
LABEL_9:
  while (v3 < 0)
  {
    if (!sub_227A72A7C() || (sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78), swift_dynamicCast(), v15 = v39, v5 = v11, v38 = v12, !v39))
    {
LABEL_35:
      sub_2279F34F8();

      return;
    }

LABEL_18:
    v16 = sub_227A5B280(v15, &selRef_playerID);
    if (!v17)
    {
      goto LABEL_37;
    }

    v18 = v17;
    if (*(a2 + 16))
    {
      v19 = v16;
      v20 = *(a2 + 40);
      sub_227A72F2C();
      sub_227A7255C();
      v21 = sub_227A72F4C();
      v22 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v23 = v21 & v22;
        if (((*(a2 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(a2 + 48) + 16 * v23);
        if (*v24 != v19 || v18 != v24[1])
        {
          v26 = sub_227A72E5C();
          v21 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        v27 = sub_227A5B280(v15, &selRef_pseudonym);
        v29 = v28;

        v11 = v5;
        v12 = v38;
        v3 = v36;
        if (!v29)
        {
          goto LABEL_9;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v35 + 16);
          sub_2279FD74C();
          v35 = v33;
        }

        v30 = *(v35 + 16);
        v6 = v38;
        if (v30 >= *(v35 + 24) >> 1)
        {
          sub_2279FD74C();
          v6 = v38;
          v35 = v34;
        }

        *(v35 + 16) = v30 + 1;
        v31 = v35 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v29;
        goto LABEL_8;
      }
    }

    v11 = v5;
    v12 = v38;
    v3 = v36;
  }

  v13 = v11;
  v14 = v12;
  v5 = v11;
  if (v12)
  {
LABEL_14:
    v38 = (v14 - 1) & v14;
    v15 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v14 = *(v37 + 8 * v5);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_227A4799C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    sub_227A7285C();
    v1 = v25;
    v2 = v26;
    v4 = v27;
    v3 = v28;
    v5 = v29;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v23 = MEMORY[0x277D84F90];
  v24 = v1;
LABEL_8:
  v9 = v3;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_227A72A7C() || (sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78), swift_dynamicCast(), v13 = v30, v3 = v9, v5 = v10, !v30))
      {
LABEL_24:
        sub_2279F34F8();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v3 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    v14 = sub_227A5B280(v13, &selRef_pseudonym);
    v16 = v15;

    v9 = v3;
    v10 = v5;
    v1 = v24;
    if (v16)
    {
      v17 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v23 + 16);
        sub_2279FD74C();
        v17 = v21;
      }

      v18 = *(v17 + 16);
      if (v18 >= *(v17 + 24) >> 1)
      {
        sub_2279FD74C();
        v17 = v22;
      }

      *(v17 + 16) = v18 + 1;
      v23 = v17;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v1 = v24;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v3);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_227A47C2C()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_227A47CB8;

  return sub_227A4C968();
}

uint64_t sub_227A47CB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_32();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227A480F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_32();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_32();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A481F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_60();
  a16 = v18;
  v21 = v18[4];
  v22 = v18[5];
  v23 = v18[2];

  v24 = sub_227A7226C();
  sub_227A7289C();

  v25 = OUTLINED_FUNCTION_143();
  v26 = v18[4];
  if (v25)
  {
    v27 = v18[2];
    OUTLINED_FUNCTION_48_2();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_2();
    a9 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_227A46730(*(v27 + 24), *(v27 + 32), &a9);
    *(v28 + 12) = 2080;
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);

    v31 = sub_227A46730(v29, v30, &a9);

    *(v28 + 14) = v31;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v32, v33, v34, v35, v28, 0x16u);
    OUTLINED_FUNCTION_72_2();
    swift_arrayDestroy();
    v36 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x22AAA1930](v36);
    v37 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v37);
  }

  else
  {
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_79_1();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_227A48360()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_41();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_227A483BC(uint64_t a1)
{
  if (!a1)
  {
    return 7105633;
  }

  v2 = *(a1 + 16);
  v3 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](0x73726579616C7020, 0xE800000000000000);
  return v3;
}

void sub_227A4843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41_0();
  a19 = v22;
  a20 = v23;
  v134 = v24;
  v25 = v20;
  v127 = v26;
  v128 = v27;
  v132 = v28;
  v30 = v29;
  v31 = sub_227A71C6C();
  v133 = OUTLINED_FUNCTION_92(v31);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_1_2();
  v34 = sub_227A7210C();
  v35 = OUTLINED_FUNCTION_92(v34);
  v130 = v36;
  v131 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_2();
  v129 = (v40 - v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  v42 = OUTLINED_FUNCTION_92(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_0_22();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_97_0();
  v51 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  (*(v44 + 16))(v21, &v25[v51], v41);
  (*(v44 + 104))(v49, *MEMORY[0x277CCB200], v41);
  type metadata accessor for FastSyncActivity(0);
  sub_227A589A8(&qword_27D7DC990, type metadata accessor for FastSyncActivity);
  LOBYTE(v51) = sub_227A7200C();
  v52 = *(v44 + 8);
  v52(v49, v41);
  v52(v21, v41);
  if (v51)
  {
    if (!*(v25 + 15))
    {
      v135[0] = 0;
      v135[1] = 0xE000000000000000;
      sub_227A72B1C();
      MEMORY[0x22AA9FE40](0xD000000000000017, 0x8000000227A9F890);
      v80 = v134[4];
      __swift_project_boxed_opaque_existential_1(v134, v134[3]);
      v81 = *(v80 + 32);
      v82 = OUTLINED_FUNCTION_13();
      v83(v82, v80);
      OUTLINED_FUNCTION_3_12();
      sub_227A589A8(v84, v85);
      v86 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v86);

      v87 = OUTLINED_FUNCTION_100_1();
      v88(v87, v133);
      MEMORY[0x22AA9FE40](0xD000000000000022, 0x8000000227A9F8B0);
      OUTLINED_FUNCTION_125_0(OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
      if (v90)
      {
        v91 = v89 + 1;
      }

      else
      {
        v91 = v89;
      }

      sub_227A1387C();
      OUTLINED_FUNCTION_95_0();
      swift_allocError();
      *v92 = 0;
      *(v92 + 8) = 0xE000000000000000;
      *(v92 + 16) = v132;
      *(v92 + 24) = v91;
      *(v92 + 32) = 99;
      swift_willThrow();
      goto LABEL_44;
    }

    if (!v30)
    {
      (*(v130 + 104))(v129, *MEMORY[0x277CCB260], v131);

      v56 = v132;
LABEL_30:
      if (qword_27D7DC4E0 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v105 = sub_227A7227C();
      __swift_project_value_buffer(v105, qword_27D7DE210);
      sub_2279F4B58(v134, v135);

      v106 = sub_227A7226C();
      v107 = sub_227A728AC();

      if (os_log_type_enabled(v106, v107))
      {
        OUTLINED_FUNCTION_55_2();
        v108 = swift_slowAlloc();
        a10 = swift_slowAlloc();
        *v108 = 136315650;
        *(v108 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), &a10);
        *(v108 + 12) = 2080;
        v109 = 0xE700000000000000;
        v110 = 0x6E776F6E6B6E75;
        if (v56 == 1)
        {
          v110 = 0x6261696C65726E75;
          v109 = 0xEA0000000000656CLL;
        }

        if (v56)
        {
          v111 = v110;
        }

        else
        {
          v111 = 0x656C6261696C6572;
        }

        if (v56)
        {
          v112 = v109;
        }

        else
        {
          v112 = 0xE800000000000000;
        }

        v113 = sub_227A46730(v111, v112, &a10);

        *(v108 + 14) = v113;
        *(v108 + 22) = 2080;
        v114 = v137;
        __swift_project_boxed_opaque_existential_1(v135, v136);
        v115 = *(v114 + 32);
        v116 = OUTLINED_FUNCTION_82_1();
        v117(v116, v114);
        OUTLINED_FUNCTION_3_12();
        sub_227A589A8(v118, v119);
        v120 = sub_227A72E1C();
        v121 = OUTLINED_FUNCTION_100_1();
        v122(v121, v133);
        __swift_destroy_boxed_opaque_existential_0Tm(v135);
        v123 = OUTLINED_FUNCTION_124_0();
        sub_227A46730(v123, v124, v125);
        OUTLINED_FUNCTION_82_1();

        *(v108 + 24) = v120;
        _os_log_impl(&dword_227904000, v106, v107, "%s-> %s message[id:%s] queued.", v108, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v135);
      }

      sub_227A135F8(v134, v129, v56, v127, v128);

      (*(v130 + 8))(v129, v131);
      goto LABEL_44;
    }

    v53 = *(v25 + 15);

    v54 = sub_227A4E32C(v30);
    v55 = v54[2];
    if (v55)
    {
      v56 = v132;
      if (v55 != *(v30 + 16))
      {
        if (qword_27D7DC4E0 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        v57 = sub_227A7227C();
        __swift_project_value_buffer(v57, qword_27D7DE210);
        OUTLINED_FUNCTION_112_1();

        v58 = sub_227A7226C();
        v59 = sub_227A728AC();

        if (os_log_type_enabled(v58, v59))
        {
          OUTLINED_FUNCTION_55_2();
          v126 = v59;
          v60 = swift_slowAlloc();
          OUTLINED_FUNCTION_50_2();
          v135[0] = swift_slowAlloc();
          *v60 = 136315650;
          *(v60 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), v135);
          *(v60 + 12) = 2048;
          *(v60 + 14) = v54[2];

          *(v60 + 22) = 2080;
          v61 = sub_227A7283C();
          v63 = sub_227A46730(v61, v62, v135);

          *(v60 + 24) = v63;
          _os_log_impl(&dword_227904000, v58, v126, "%s-> Sending data to only %ld active participants found for playerIDs: %s", v60, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_2();
          MEMORY[0x22AAA1930]();
          OUTLINED_FUNCTION_13_2();
          MEMORY[0x22AAA1930]();
        }

        else
        {
        }
      }

      *v129 = v54;
      v104 = *MEMORY[0x277CCB268];
      (*(v130 + 104))();
      goto LABEL_30;
    }

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v93 = sub_227A7227C();
    __swift_project_value_buffer(v93, qword_27D7DE210);
    OUTLINED_FUNCTION_82_1();

    v94 = sub_227A7226C();
    v95 = sub_227A728AC();

    if (os_log_type_enabled(v94, v95))
    {
      OUTLINED_FUNCTION_48_2();
      v96 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      v135[0] = swift_slowAlloc();
      *v96 = 136315394;
      *(v96 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), v135);
      *(v96 + 12) = 2080;
      v97 = sub_227A7283C();
      v99 = sub_227A46730(v97, v98, v135);

      *(v96 + 14) = v99;
      _os_log_impl(&dword_227904000, v94, v95, "%s-> Skipping send data because no active participant found for playerIDs: %s", v96, 0x16u);
      OUTLINED_FUNCTION_72_2();
      swift_arrayDestroy();
      v100 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v100);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    OUTLINED_FUNCTION_125_0(OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
    if (v90)
    {
      v102 = v101 + 1;
    }

    else
    {
      v102 = v101;
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v103 = 0xD00000000000001CLL;
    *(v103 + 8) = 0x8000000227A9F8E0;
    *(v103 + 16) = v132;
    *(v103 + 24) = v102;
    *(v103 + 32) = 100;
    swift_willThrow();
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v64 = sub_227A7227C();
    __swift_project_value_buffer(v64, qword_27D7DE210);
    sub_2279F4B58(v134, v135);

    v65 = sub_227A7226C();
    v66 = sub_227A728AC();

    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_48_2();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      a10 = swift_slowAlloc();
      *v67 = 136315394;
      *(v67 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), &a10);
      *(v67 + 12) = 2080;
      v68 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v69 = *(v68 + 32);
      v70 = OUTLINED_FUNCTION_82_1();
      v71(v70, v68);
      OUTLINED_FUNCTION_3_12();
      sub_227A589A8(v72, v73);
      v74 = sub_227A72E1C();
      v75 = OUTLINED_FUNCTION_100_1();
      v76(v75, v133);
      __swift_destroy_boxed_opaque_existential_0Tm(v135);
      v77 = OUTLINED_FUNCTION_124_0();
      sub_227A46730(v77, v78, v79);
      OUTLINED_FUNCTION_82_1();

      *(v67 + 14) = v74;
      _os_log_impl(&dword_227904000, v65, v66, "%s-> Session is not in .joined state. Skip sending message[id:%s].", v67, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v135);
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A4901C()
{
  *(v1 + 96) = v0;
  v2 = OUTLINED_FUNCTION_47();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227A49044()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[12];
  v0[13] = sub_227A4B9D0();
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_227A490DC;

  return sub_227A2FA4C();
}

uint64_t sub_227A490DC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 112);
  *v4 = *v1;
  v3[15] = v7;
  v3[16] = v8;
  v3[17] = v0;

  if (!v0)
  {
    v9 = v3[13];
  }

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227A491E8()
{
  v79 = v0;
  v1 = *(v0 + 96);
  v2 = sub_227A4C78C();
  if (v3)
  {
    if (*(v0 + 120) == v2 && v3 == *(v0 + 128))
    {

      goto LABEL_11;
    }

    v5 = *(v0 + 128);
    v6 = sub_227A72E5C();

    if (v6)
    {
      v7 = *(v0 + 128);
LABEL_11:

      v15 = [objc_opt_self() local];
      v16 = [v15 internal];

      v17 = [v16 playerID];
      sub_227A724EC();

      goto LABEL_12;
    }
  }

  v8 = *(v0 + 96);
  v9 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v10 = *(v8 + v9);
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_76();
    sub_227A7285C();
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 48);
  }

  else
  {
    v21 = *(v10 + 32);
    OUTLINED_FUNCTION_55_1();
    v11 = v10 + 56;
    v22 = *(v10 + 56);
    v13 = ~v23;
    OUTLINED_FUNCTION_68_2();
    v14 = v24 & v25;
    swift_bridgeObjectRetain_n();
    v12 = 0;
  }

  v76 = *(v0 + 128);
  v77 = v0;
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v26 = v12;
  v27 = v12;
  if (!v14)
  {
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= ((v13 + 64) >> 6))
      {
        goto LABEL_33;
      }

      ++v26;
      if (*(v11 + 8 * v27))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_48:
    OUTLINED_FUNCTION_0_15();
    swift_once();
LABEL_34:
    v39 = *(v0 + 128);
    v40 = *(v0 + 96);
    v41 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v41, qword_27D7DE210);

    v42 = sub_227A7226C();
    sub_227A728BC();

    v43 = OUTLINED_FUNCTION_94_1();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 128);
    if (v45)
    {
      v47 = *(v0 + 120);
      v48 = *(v0 + 96);
      OUTLINED_FUNCTION_48_2();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      v78[0] = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_227A46730(*(v48 + 24), *(v48 + 32), v78);
      *(v49 + 12) = 2080;
      v50 = sub_227A46730(v47, v46, v78);

      *(v49 + 14) = v50;
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
      swift_arrayDestroy();
      v56 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x22AAA1930](v56);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    else
    {
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    OUTLINED_FUNCTION_108_1(v57, 128);
    swift_willThrow();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X1, X16 }
  }

LABEL_21:
  OUTLINED_FUNCTION_43_1();
  v30 = v29 & v28;
  v32 = *(*(v10 + 48) + ((v27 << 9) | (8 * v31)));
  if (!v32)
  {
LABEL_33:
    sub_2279F34F8();

    v0 = v77;
    if (qword_27D7DC4E0 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_48;
  }

  while (1)
  {
    v0 = v10;
    v34 = sub_227A5B280(v32, &selRef_pseudonym);
    if (v35)
    {
      break;
    }

LABEL_31:

    v12 = v27;
    v14 = v30;
    v10 = v0;
    if ((v0 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v33 = sub_227A72A7C();
    if (v33)
    {
      v77[11] = v33;
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      v32 = v77[10];
      v27 = v12;
      v30 = v14;
      if (v32)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if (v34 != v77[15] || v35 != v76)
  {
    v37 = v77[16];
    v38 = sub_227A72E5C();

    if (v38)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

LABEL_41:
  OUTLINED_FUNCTION_111_1();
  sub_2279F34F8();

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v0 = v77;
  v60 = v77[12];
  v61 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v61, qword_27D7DE210);

  v62 = v32;
  v63 = sub_227A7226C();
  v64 = sub_227A7289C();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = v77[12];
    OUTLINED_FUNCTION_48_2();
    v66 = swift_slowAlloc();
    v67 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_55_2();
    v68 = swift_slowAlloc();
    v78[0] = v68;
    *v66 = 136315394;
    *(v66 + 4) = sub_227A46730(*(v65 + 24), *(v65 + 32), v78);
    *(v66 + 12) = 2112;
    *(v66 + 14) = v62;
    *v67 = v32;
    v69 = v62;
    OUTLINED_FUNCTION_139_0(&dword_227904000, v70, v71, "%s-> Best host is: %@");
    sub_2279F3774(v67, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    v72 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x22AAA1930](v72);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  result = sub_227A5B280(v62, &selRef_playerID);
  if (v74)
  {
    v75 = v77[16];

LABEL_12:
    v18 = *(v0 + 8);
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_227A49864()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 104);

  v2 = *(v0 + 136);
  OUTLINED_FUNCTION_41();

  return v3();
}

id sub_227A498C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((sub_227A4B830() & 1) == 0)
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v18 = sub_227A7227C();
    __swift_project_value_buffer(v18, qword_27D7DE210);
    OUTLINED_FUNCTION_13();

    v19 = sub_227A7226C();
    sub_227A7289C();

    v20 = OUTLINED_FUNCTION_126_0();
    v61 = a1;
    v62 = a2;
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_55_2();
      v22 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v22 = 136315650;
      v23 = sub_227A46730(v4[3], v4[4], v65);
      OUTLINED_FUNCTION_98_1(v23);
      v24 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
      OUTLINED_FUNCTION_9_2();
      swift_beginAccess();
      v25 = *(v4 + v24);
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();

      v26 = sub_227A7283C();
      v28 = v27;

      v29 = sub_227A46730(v26, v28, v65);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      OUTLINED_FUNCTION_104_1();
      v30 = sub_227A7283C();
      v32 = sub_227A46730(v30, v31, v65);

      *(v22 + 24) = v32;
      OUTLINED_FUNCTION_138_0(&dword_227904000, v33, v34, "%s-> Found diff in participants. transportParticipants:\n%s,\nremoteParticipants:\n%s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_227A72A3C();
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();
      OUTLINED_FUNCTION_76();
      sub_227A7285C();
      a3 = v65[0];
      v35 = v65[1];
      v37 = v65[2];
      v36 = v65[3];
      v38 = v65[4];
    }

    else
    {
      v39 = *(a3 + 32);
      OUTLINED_FUNCTION_55_1();
      v35 = a3 + 56;
      v40 = *(a3 + 56);
      v37 = ~v41;
      OUTLINED_FUNCTION_68_2();
      v38 = v42 & v43;

      v36 = 0;
    }

    if (a3 < 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v44 = v36;
      v45 = v36;
      if (!v38)
      {
        break;
      }

LABEL_18:
      OUTLINED_FUNCTION_43_1();
      v48 = v47 & v46;
      v50 = *(*(a3 + 48) + ((v45 << 9) | (8 * v49)));
      if (!v50)
      {
LABEL_24:
        OUTLINED_FUNCTION_109();
        sub_2279F34F8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_227AA00F0;
        *(inited + 32) = v61;
        *(inited + 40) = v62;

        v64 = sub_227A17C58(inited);
        v54 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
        OUTLINED_FUNCTION_9_2();
        swift_beginAccess();
        v55 = *(v4 + v54);

        sub_227A4799C(v56);
        v58 = v57;

        v59 = sub_227A17C58(v58);
        sub_227A4DAE0(v59);
        v17 = v64;
        if (v4[17])
        {
          sub_227A4DBE4(v64);
        }

        return v17;
      }

      while (1)
      {
        swift_beginAccess();
        v52 = v50;
        sub_227A20D6C(&v64, v52);
        swift_endAccess();

        v36 = v45;
        v38 = v48;
        if ((a3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_20:
        v51 = sub_227A72A7C();
        if (v51)
        {
          v64 = v51;
          sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
          swift_dynamicCast();
          v50 = v63;
          v45 = v36;
          v48 = v38;
          if (v63)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= ((v37 + 64) >> 6))
      {
        goto LABEL_24;
      }

      ++v44;
      if (*(v35 + 8 * v45))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_27D7DC4E0 != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v8 = sub_227A7227C();
  __swift_project_value_buffer(v8, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v9 = sub_227A7226C();
  sub_227A7289C();

  if (OUTLINED_FUNCTION_143())
  {
    OUTLINED_FUNCTION_29_2();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_2();
    v11 = swift_slowAlloc();
    v65[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_227A46730(v4[3], v4[4], v65);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v12, v13, v14, v15, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v16 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v16);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return 0;
}

uint64_t sub_227A49E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x5B656D6147;
  }

  else
  {
    v3 = 0x5B7962626F4CLL;
  }

  v5 = v3;
  MEMORY[0x22AA9FE40]();
  MEMORY[0x22AA9FE40](93, 0xE100000000000000);
  return v5;
}

uint64_t sub_227A49E78()
{
  v1 = v0;
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = sub_227A7227C();
  __swift_project_value_buffer(v2, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v3 = sub_227A7226C();
  sub_227A7289C();

  if (OUTLINED_FUNCTION_143())
  {
    OUTLINED_FUNCTION_29_2();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_2();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_227A46730(*(v1 + 24), *(v1 + 32), &v12);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v6, v7, v8, v9, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    v10 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v10);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return swift_unknownObjectWeakAssign();
}

void sub_227A49FA0()
{
  OUTLINED_FUNCTION_96_1();
  v89 = v1;
  v90 = v0;
  v88 = v2;
  v4 = v3;
  v6 = v5;
  v86 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_227A7232C();
  v13 = OUTLINED_FUNCTION_92(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_2();
  v20 = v19 - v18;
  v21 = sub_227A7237C();
  v22 = OUTLINED_FUNCTION_92(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_2();
  v87 = v28 - v27;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = v4;
    v85 = Strong;
    v81 = v24;
    v82 = v21;
    v83 = v12;
    v30 = MEMORY[0x277D84F98];
    v31 = MEMORY[0x277D837D0];
    if (v9)
    {
      v32 = sub_227A724EC();
      v34 = v33;
      v35 = v31;
      v96 = v31;
      *&v94 = v11;
      *(&v94 + 1) = v9;
      sub_2279FF11C(&v94, v93);

      swift_isUniquelyReferenced_nonNull_native();
      v36 = OUTLINED_FUNCTION_21_2();
      sub_227A623E4(v36, v32, v34);

      v30 = v92;
      if (!v6)
      {
LABEL_5:
        v41 = v20;
        if (v84)
        {
          v42 = sub_227A724EC();
          v44 = v43;
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v45);
          swift_isUniquelyReferenced_nonNull_native();
          v46 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v46, v42, v44);

          v30 = v92;
        }

        if (v88)
        {
          v47 = sub_227A724EC();
          v49 = v48;
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v50);
          swift_isUniquelyReferenced_nonNull_native();
          v51 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v51, v47, v49);

          v30 = v92;
        }

        if (v89)
        {
          v52 = sub_227A724EC();
          v54 = v53;
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v55);
          swift_isUniquelyReferenced_nonNull_native();
          v56 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v56, v52, v54);

          v30 = v92;
        }

        if (v90)
        {
          v57 = sub_227A724EC();
          v59 = v58;
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v60);
          swift_isUniquelyReferenced_nonNull_native();
          v61 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v61, v57, v59);

          v30 = v92;
        }

        if (*(v30 + 16))
        {
          if (qword_27D7DC4E0 != -1)
          {
            OUTLINED_FUNCTION_0_15();
            swift_once();
          }

          v62 = sub_227A7227C();
          OUTLINED_FUNCTION_104(v62, qword_27D7DE210);
          v63 = sub_227A7226C();
          v64 = sub_227A7289C();
          if (os_log_type_enabled(v63, v64))
          {
            OUTLINED_FUNCTION_29_2();
            v65 = swift_slowAlloc();
            OUTLINED_FUNCTION_55_2();
            v66 = swift_slowAlloc();
            *&v94 = v66;
            *v65 = 136315138;

            sub_227A7242C();

            v67 = OUTLINED_FUNCTION_109();
            v70 = sub_227A46730(v67, v68, v69);

            *(v65 + 4) = v70;
            _os_log_impl(&dword_227904000, v63, v64, "Updating transport context with info: %s", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v66);
            OUTLINED_FUNCTION_13_2();
            MEMORY[0x22AAA1930]();
            OUTLINED_FUNCTION_13_2();
            MEMORY[0x22AAA1930]();
          }

          sub_2279FF044(0, &qword_27D7DC828, 0x277D85C78);
          v71 = sub_227A7292C();
          v72 = swift_allocObject();
          *(v72 + 16) = v85;
          *(v72 + 24) = v30;
          v97 = sub_227A60084;
          v98 = v72;
          *&v94 = MEMORY[0x277D85DD0];
          *(&v94 + 1) = 1107296256;
          v95 = sub_227A01434;
          v96 = &block_descriptor_9;
          v73 = _Block_copy(&v94);

          swift_unknownObjectRetain();

          sub_227A7235C();
          *&v94 = MEMORY[0x277D84F90];
          sub_227A589A8(&qword_27D7DC910, MEMORY[0x277D85198]);
          v74 = OUTLINED_FUNCTION_124_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
          sub_2279F4CBC(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
          sub_227A729FC();
          MEMORY[0x22AAA01F0](0, v87, v41, v73);
          _Block_release(v73);
          swift_unknownObjectRelease();

          (*(v15 + 8))(v41, v83);
          (*(v81 + 8))(v87, v82);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_91();
        return;
      }
    }

    else
    {
      v35 = MEMORY[0x277D837D0];
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v37 = sub_227A724EC();
    v39 = v38;
    v96 = v35;
    *&v94 = v86;
    *(&v94 + 1) = v6;
    sub_2279FF11C(&v94, v93);

    swift_isUniquelyReferenced_nonNull_native();
    v40 = OUTLINED_FUNCTION_21_2();
    sub_227A623E4(v40, v37, v39);

    v30 = v92;
    goto LABEL_5;
  }

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v76 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v76, qword_27D7DE210);
  v91 = sub_227A7226C();
  v77 = sub_227A728AC();
  if (os_log_type_enabled(v91, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_227904000, v91, v77, "Client delegate not found. Skip sending updates of transport context.", v78, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  OUTLINED_FUNCTION_91();
}

uint64_t sub_227A4AD64(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 16) == a1 && *(v3 + 24) == a2)
  {
    return 0;
  }

  v5 = v2;
  OUTLINED_FUNCTION_111_1();
  if (sub_227A72E5C())
  {
    return 0;
  }

  v7 = qword_27D7DC4E0;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v8 = sub_227A7227C();
  __swift_project_value_buffer(v8, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v9 = sub_227A7226C();
  sub_227A7289C();

  v10 = OUTLINED_FUNCTION_126_0();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_55_2();
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_227A46730(*(v5 + 24), *(v5 + 32), &v24);
    *(v12 + 12) = 2080;
    v13 = *(v3 + 16);
    v14 = *(v3 + 24);

    v15 = OUTLINED_FUNCTION_104_1();
    v18 = sub_227A46730(v15, v16, v17);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    v19 = OUTLINED_FUNCTION_111_1();
    *(v12 + 24) = sub_227A46730(v19, v20, v21);
    OUTLINED_FUNCTION_138_0(&dword_227904000, v22, v23, "%s-> Need to migrate from %s to %s. A new provider will be created.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {
  }

  return 1;
}

BOOL sub_227A4B350()
{
  v1 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_132_0();
    sub_227A72A4C();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v0 = *(v2 + 16);
  }

  return v0 == 0;
}

void sub_227A4B3BC()
{
  OUTLINED_FUNCTION_41_0();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_105_0();
  v9 = type metadata accessor for JoinChannelActionMessage(v8);
  v10 = OUTLINED_FUNCTION_92(v9);
  v70 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_84_0(v14, v15, v16, v17, v18, v19, v20, v21, v65);
  v23 = MEMORY[0x28223BE20](v22);
  v69 = &v65 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_97_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_114_1();
  if (v26)
  {
    v68 = v26;
    v27 = *(v1 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
    sub_227A71C5C();
    *(v2 + v9[5]) = v27 | 0x40;
    v28 = (v2 + v9[6]);
    *v28 = v0;
    v28[1] = v7;
    *(v2 + v9[7]) = v5;
    v29 = qword_27D7DC4E0;

    if (v29 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v30 = sub_227A7227C();
    __swift_project_value_buffer(v30, qword_27D7DE210);
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_104_1();
    sub_227A60604();

    v31 = sub_227A7226C();
    v32 = sub_227A7289C();

    v33 = OUTLINED_FUNCTION_94_1();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_48_2();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v35 = 136315394;
      *(v35 + 4) = OUTLINED_FUNCTION_121_0();
      *(v35 + 12) = 2080;
      OUTLINED_FUNCTION_62_1();
      HIDWORD(v66) = v32;
      sub_227A60604();
      sub_227A7251C();
      OUTLINED_FUNCTION_14_6();
      sub_227A605B0();
      v36 = OUTLINED_FUNCTION_92_0();
      v39 = sub_227A46730(v36, v37, v38);

      *(v35 + 14) = v39;
      OUTLINED_FUNCTION_128_0();
      _os_log_impl(v40, v41, v42, v43, v44, v45);
      OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      v46 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v46);
    }

    else
    {

      OUTLINED_FUNCTION_14_6();
      sub_227A605B0();
    }

    v73 = v9;
    v74 = sub_227A589A8(&qword_27D7DCA98, type metadata accessor for JoinChannelActionMessage);
    __swift_allocate_boxed_opaque_existential_1(v72);
    sub_227A60604();
    sub_227A60604();
    v56 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v3;
    OUTLINED_FUNCTION_61_1();
    sub_227A6055C();

    v58 = OUTLINED_FUNCTION_71_2();
    sub_227A4843C(v58, v59, v60, v61, v62, v63, v57, v64, v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v73, v74);
    OUTLINED_FUNCTION_14_6();
    sub_227A605B0();

    __swift_destroy_boxed_opaque_existential_0Tm(v72);
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v47 = sub_227A7227C();
    __swift_project_value_buffer(v47, qword_27D7DE210);
    OUTLINED_FUNCTION_112_1();

    v48 = sub_227A7226C();
    v49 = sub_227A728BC();

    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_29_2();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_55_2();
      v51 = swift_slowAlloc();
      v72[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_134_0(&dword_227904000, v52, v53, "%s-> Cannot send join channel message because the local participant handle is nil.");
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      v54 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v54);
      v55 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x22AAA1930](v55);
    }
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A4B830()
{
  v1 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = OUTLINED_FUNCTION_86();
  sub_227A4D358(v3, v4);
  v6 = v5;

  return v6 & 1;
}

uint64_t GKMatchSendDataMode.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x6261696C65726E75;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x656C6261696C6572;
  }
}

uint64_t sub_227A4B970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_227A72E5C();
  }
}

uint64_t sub_227A4B9D0()
{
  if (v0[18])
  {
    v1 = v0[18];
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for FastSyncLeaderElector();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v6 = swift_allocObject();

    v1 = sub_227A5FEDC(15.0, v7, 1000000000000000000, 0, v6);
    v8 = v2[18];
    v2[18] = v1;

    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v9 = sub_227A7227C();
    __swift_project_value_buffer(v9, qword_27D7DE210);

    v10 = sub_227A7226C();
    v11 = sub_227A7289C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315394;
      v15 = v2[3];
      v14 = v2[4];
      *(v12 + 4) = sub_227A46730(v15, v14, &v17);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_227A46730(v15, v14, &v17);
      _os_log_impl(&dword_227904000, v10, v11, "%s-> Leader elector setup for: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v13, -1, -1);
      MEMORY[0x22AAA1930](v12, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_227A4BBBC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_86();
}

uint64_t sub_227A4BBF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE508, &qword_227AA5F10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  *(a2 + 56) = sub_227A60BCC;
  *(a2 + 64) = v10;
  return sub_22790D4C0(v11);
}

uint64_t sub_227A4BD38()
{
  v0 = type metadata accessor for ChannelMigrationActionMessage(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE510, &qword_227AA5F18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_227A60604();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE508, &qword_227AA5F10);
  sub_227A7277C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227A4BE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4A0, &qword_227AA5E68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  (*(v5 + 16))(&v15 - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  *(a2 + 72) = sub_227A6087C;
  *(a2 + 80) = v11;
  return sub_22790D4C0(v12);
}

uint64_t sub_227A4BFD0()
{
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v1 = *(*(ScoresActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresActionMessage - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4A8, &qword_227AA5E70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_227A60604();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4A0, &qword_227AA5E68);
  sub_227A7277C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227A4C164(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = OUTLINED_FUNCTION_92(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v13 - v10;
  a3(0);
  (*(v7 + 104))(v11, *MEMORY[0x277D85778], v4);
  return sub_227A727AC();
}

uint64_t sub_227A4C25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE340, &qword_227AA5C98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  (*(v5 + 16))(&v15 - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  *(a2 + 88) = sub_227A5B2E4;
  *(a2 + 96) = v11;
  return sub_22790D4C0(v12);
}

uint64_t sub_227A4C39C()
{
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v1 = *(*(ScoresResponseActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresResponseActionMessage - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE348, &qword_227AA5CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_227A60604();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE340, &qword_227AA5C98);
  sub_227A7277C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227A4C4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4F0, &qword_227AA5EF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  *(a2 + 104) = sub_227A60B20;
  *(a2 + 112) = v10;
  return sub_22790D4C0(v11);
}

uint64_t sub_227A4C634()
{
  v0 = type metadata accessor for JoinChannelActionMessage(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4F8, &qword_227AA5F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_227A60604();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4F0, &qword_227AA5EF8);
  sub_227A7277C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227A4C78C()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = (v1 + *(*v1 + 128));
    v3 = *v2;
    v4 = v2[1];
  }

  return OUTLINED_FUNCTION_86();
}

void sub_227A4C7E4()
{
  OUTLINED_FUNCTION_96_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x277D84FA0];
  *(v0 + 16) = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakInit();
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  v10 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
  v11 = *MEMORY[0x277CCB208];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  OUTLINED_FUNCTION_51(v12);
  (*(v13 + 104))(v0 + v10, v11);
  if (sub_227A06998(MEMORY[0x277D84F90]))
  {
    v14 = sub_227A59430(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = v9;
  }

  *(v0 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_providerSubscriptions) = v14;
  *(v0 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask) = 0;
  *(v0 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_tasks) = v9;
  if (sub_227A06998(MEMORY[0x277D84F90]))
  {
    v9 = sub_227A5926C(MEMORY[0x277D84F90]);
  }

  *(v0 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants) = v9;
  v15 = v4 & 1;
  *(v0 + 24) = sub_227A49E0C(v8, v6, v15);
  *(v0 + 32) = v16;
  v17 = v0 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type;
  *v17 = v8;
  *(v17 + 8) = v6;
  *(v17 + 16) = v15;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_91();
}

uint64_t sub_227A4CC14()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);
  sub_227A2F02C();

  v2 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227A4CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_131_0();
  v16 = *(v12 + 64);
  v17 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_providerSubscriptions;
  swift_beginAccess();
  v18 = *(v16 + v17);
  *(v16 + v17) = MEMORY[0x277D84FA0];

  if (*(v16 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask))
  {

    sub_227A727DC();
  }

  v19 = *(v12 + 64);
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  result = OUTLINED_FUNCTION_54_2();
  v21 = 0;
  if (v15)
  {
    while (1)
    {
      v22 = v21;
LABEL_9:
      OUTLINED_FUNCTION_83_0(v22);
      sub_227A727DC();
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v22 >= v14)
    {
      break;
    }

    ++v21;
    if (*(v13 + 8 * v22))
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_69_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

char *sub_227A4CDE0()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  sub_2279FF2CC((v0 + 48));
  v4 = *(v0 + 8);
  sub_22790D4C0(*(v0 + 7));
  v5 = *(v0 + 10);
  sub_22790D4C0(*(v0 + 9));
  v6 = *(v0 + 12);
  sub_22790D4C0(*(v0 + 11));
  v7 = *(v0 + 14);
  sub_22790D4C0(*(v0 + 13));
  v8 = *(v0 + 15);

  v9 = *(v0 + 16);

  v10 = *(v0 + 17);

  v11 = *(v0 + 18);

  v12 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  OUTLINED_FUNCTION_51(v13);
  (*(v14 + 8))(&v0[v12]);
  v15 = *&v0[OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_providerSubscriptions];

  v16 = *&v0[OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask];

  v17 = *&v0[OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_tasks];

  v18 = *&v0[OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants];

  v19 = *&v0[OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type];
  v20 = *&v0[OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8];
  v21 = v0[OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16];
  sub_227A23E5C();
  return v0;
}

uint64_t sub_227A4CEFC()
{
  sub_227A4CDE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_227A4CF78(double a1)
{
  v4 = v1;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v7 = OUTLINED_FUNCTION_92(ScoresActionMessage);
  v55 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84_0(v11, v12, v13, v14, v15, v16, v17, v18, v49);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_97_0();
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_114_1();
  if (v23)
  {
    v24 = v22;
    v25 = v23;

    sub_227A71C5C();
    v26 = (v3 + ScoresActionMessage[5]);
    *v26 = v24;
    v26[1] = v25;
    *(v3 + ScoresActionMessage[6]) = a1;
    *(v3 + ScoresActionMessage[7]) = -127;
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v54 = v25;
    v27 = sub_227A7227C();
    __swift_project_value_buffer(v27, qword_27D7DE210);
    OUTLINED_FUNCTION_59_2();
    OUTLINED_FUNCTION_30_1();
    sub_227A60604();

    v28 = sub_227A7226C();
    v29 = sub_227A7289C();

    v30 = OUTLINED_FUNCTION_126_0();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_48_2();
      v53 = v2;
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      v52 = swift_slowAlloc();
      v57[0] = v52;
      *v32 = 136315394;
      v33 = OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_98_1(v33);
      OUTLINED_FUNCTION_59_2();
      sub_227A60604();
      v34 = sub_227A7251C();
      HIDWORD(v51) = v29;
      v36 = v35;
      OUTLINED_FUNCTION_6_10();
      sub_227A605B0();
      v37 = sub_227A46730(v34, v36, v57);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_227904000, v28, BYTE4(v51), "%s-> Sending leader query message: %s", v32, 0x16u);
      OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    else
    {

      OUTLINED_FUNCTION_6_10();
      sub_227A605B0();
    }

    v58 = ScoresActionMessage;
    v59 = sub_227A589A8(&qword_27D7DCA58, type metadata accessor for QueryScoresActionMessage);
    __swift_allocate_boxed_opaque_existential_1(v57);
    sub_227A60604();
    sub_227A60604();
    v40 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v4;
    OUTLINED_FUNCTION_58_2();
    sub_227A6055C();

    v42 = OUTLINED_FUNCTION_71_2();
    sub_227A4843C(v42, v43, v44, v45, v46, v47, v41, v48, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1], v57[2], v58, v59);
    OUTLINED_FUNCTION_6_10();
    sub_227A605B0();

    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  else
  {
    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    OUTLINED_FUNCTION_108_1(v38, 64);
    return swift_willThrow();
  }
}

void sub_227A4D358(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_42:
      MEMORY[0x2821FCF40](v6, v5);
      return;
    }

    v7 = v5;
    v8 = a2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
LABEL_18:

    sub_227A5916C(v7, v8);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v24 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    v6 = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v25 = v13;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v26 = (v11 - 1) & v11;
LABEL_33:
        v17 = *(a2 + 40);
        v18 = *(*(a1 + 48) + 8 * (v14 | (v12 << 6)));
        v19 = sub_227A7298C();
        v20 = ~(-1 << *(a2 + 32));
        do
        {
          v21 = v19 & v20;
          if (((*(a2 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {

            return;
          }

          v22 = *(*(a2 + 48) + 8 * v21);
          v23 = sub_227A7299C();

          v19 = v21 + 1;
        }

        while ((v23 & 1) == 0);

        v13 = v25;
        v11 = v26;
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return;
      }

      v16 = *(v24 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_42;
  }
}

void sub_227A4D5B0()
{
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_99_0();
  v1 = sub_227A71F6C();
  v2 = OUTLINED_FUNCTION_92(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_22();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v15 = sub_227A7227C();
    __swift_project_value_buffer(v15, qword_27D7DE210);
    v16 = *(v4 + 16);
    v16(v12, v0, v1);

    v17 = sub_227A7226C();
    v18 = sub_227A7289C();

    v19 = OUTLINED_FUNCTION_126_0();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_48_2();
      v21 = swift_slowAlloc();
      v45 = v18;
      v22 = v21;
      OUTLINED_FUNCTION_50_2();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v22 = 136315394;
      v44 = v16;
      v23 = *(v14 + 24);
      v24 = *(v14 + 32);

      v25 = sub_227A46730(v23, v24, &v47);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v44(v9, v12, v1);
      sub_227A7251C();
      v26 = *(v4 + 8);
      v27 = OUTLINED_FUNCTION_111_1();
      v28(v27);
      v29 = OUTLINED_FUNCTION_104_1();
      v32 = sub_227A46730(v29, v30, v31);

      *(v22 + 14) = v32;
      OUTLINED_FUNCTION_128_0();
      _os_log_impl(v33, v34, v35, v36, v37, v38);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      v39 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v39);
    }

    else
    {

      v40 = *(v4 + 8);
      v41 = OUTLINED_FUNCTION_111_1();
      v42(v41);
    }
  }

  OUTLINED_FUNCTION_91();
}

void sub_227A4D850()
{
  OUTLINED_FUNCTION_96_1();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_105_0();
  v4 = type metadata accessor for FastSyncActivity(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  v10 = v9 - v8;
  v11 = v1[16];
  v1[16] = v0;

  sub_227A4E554();
  v12 = sub_227A4E7DC();
  swift_beginAccess();
  sub_227A2111C(&v27, v12);
  swift_endAccess();

  type metadata accessor for FastSyncMessenger();
  swift_allocObject();
  OUTLINED_FUNCTION_13();

  v13 = sub_227A134A4();
  v14 = v1[15];
  v2[15] = v13;

  sub_227A4E8D4();
  sub_227A4EAFC();
  sub_227A4EE6C();
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v15 = sub_227A7227C();
  __swift_project_value_buffer(v15, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v16 = sub_227A7226C();
  v17 = sub_227A7289C();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_48_2();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_2();
    v26 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_227A46730(v2[3], v2[4], &v26);
    *(v18 + 12) = 2080;
    sub_227A7206C();
    v19 = (v10 + *(v4 + 24));
    v20 = *v19;
    v21 = v19[1];

    sub_227A605B0();
    v22 = OUTLINED_FUNCTION_76();
    v25 = sub_227A46730(v22, v23, v24);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_227904000, v16, v17, "%s-> Joining session for activity with name %s.", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  sub_227A71FFC();

  OUTLINED_FUNCTION_91();
}

uint64_t sub_227A4DAE0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_227A2095C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_227A4DBE4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43[-1] - v10;
  v12 = *(v2 + 17);
  if (v12)
  {
    v13 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
    swift_beginAccess();
    (*(v5 + 16))(v11, &v2[v13], v4);
    (*(v5 + 104))(v9, *MEMORY[0x277CCB200], v4);
    sub_2279F4CBC(&qword_27D7DE4E0, &qword_27D7DE330, &qword_227AA5C88);

    LOBYTE(v13) = sub_227A7248C();
    v14 = *(v5 + 8);
    v14(v9, v4);
    v14(v11, v4);
    if ((v13 & 1) == 0)
    {
      if (qword_27D7DC4E0 != -1)
      {
        swift_once();
      }

      v15 = sub_227A7227C();
      __swift_project_value_buffer(v15, qword_27D7DE210);

      v16 = sub_227A7226C();
      v17 = sub_227A728AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v43[0] = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_227A46730(*(v2 + 3), *(v2 + 4), v43);
        *(v18 + 12) = 2080;
        v20 = sub_227A7283C();
        v22 = sub_227A46730(v20, v21, v43);

        *(v18 + 14) = v22;
        _os_log_impl(&dword_227904000, v16, v17, "%s-> The local participant has not joined a valid session yet, but let's still try permitting handles: %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v19, -1, -1);
        MEMORY[0x22AAA1930](v18, -1, -1);
      }
    }

    sub_227A46FEC(a1);
    v23 = sub_227A17D18();
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v24 = sub_227A7227C();
    __swift_project_value_buffer(v24, qword_27D7DE210);

    v25 = sub_227A7226C();
    v26 = sub_227A7289C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43[0] = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_227A46730(*(v2 + 3), *(v2 + 4), v43);
      *(v27 + 12) = 2080;
      sub_227A47304();
      v29 = MEMORY[0x22AA9FF60]();
      v31 = v30;

      v32 = sub_227A46730(v29, v31, v43);

      *(v27 + 14) = v32;
      *(v27 + 22) = 2080;
      v33 = v12[2];
      v34 = v12[3];

      v35 = sub_227A46730(v33, v34, v43);

      *(v27 + 24) = v35;
      _os_log_impl(&dword_227904000, v25, v26, "%s-> Permit updated members: %s for provider ID: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v28, -1, -1);
      MEMORY[0x22AAA1930](v27, -1, -1);
    }

    v36 = *(v12 + *(*v12 + 136));
    v43[0] = v23;

    sub_227A722DC();
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v37 = sub_227A7227C();
    __swift_project_value_buffer(v37, qword_27D7DE210);

    v42 = sub_227A7226C();
    v38 = sub_227A728BC();

    if (os_log_type_enabled(v42, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_227A46730(*(v2 + 3), *(v2 + 4), &v44);
      _os_log_impl(&dword_227904000, v42, v38, "%s-> Cannot add members without a group session provider.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x22AAA1930](v40, -1, -1);
      MEMORY[0x22AAA1930](v39, -1, -1);
    }

    else
    {
      v41 = v42;
    }
  }
}

void sub_227A4E2A4(void *a1, uint64_t a2)
{
  sub_227A25094(a2);
  v3 = sub_227A7240C();

  [a1 transportDidUpdateWithInfo_];
}

void *sub_227A4E32C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_227A47618(v5, a1);
  v7 = v6;

  v8 = sub_227A17C58(v7);
  v9 = *(v1 + 16);

  return sub_227A59AC0(v10, v8);
}

void sub_227A4E3C0(void *a1, uint64_t a2, const char *a3)
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v6 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v6, qword_27D7DE210);

  v7 = a1;
  oslog = sub_227A7226C();
  v8 = sub_227A7289C();

  if (os_log_type_enabled(oslog, v8))
  {
    OUTLINED_FUNCTION_48_2();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_55_2();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_227A46730(*(a2 + 24), *(a2 + 32), &v16);
    *(v9 + 12) = 2112;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_227904000, oslog, v8, a3, v9, 0x16u);
    sub_2279F3774(v10, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v14 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x22AAA1930](v14);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

uint64_t sub_227A4E554()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v17[-v4];
  v6 = *(v0 + 128);
  if (v6)
  {
    v7 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_227A7273C();
    swift_retain_n();

    v9 = sub_227A7272C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v6;

    v12 = sub_227A2EC1C(0, 0, v5, &unk_227AA5E80, v10);
    swift_beginAccess();
    sub_227A2111C(&v18, v12);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v13 = swift_allocObject();
    swift_weakInit();

    v14 = sub_227A7272C();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v6;

    v16 = sub_227A2EC1C(0, 0, v5, &unk_227AA5E90, v15);
    swift_beginAccess();
    sub_227A2111C(&v18, v16);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_227A4E7DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  return sub_227A2EC1C(0, 0, v3, &unk_227AA5E40, v6);
}

uint64_t sub_227A4E8D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16[-v5];
  v7 = *(v0 + 120);
  if (v7)
  {
    v8 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    sub_227A7273C();
    swift_retain_n();

    v9 = sub_227A7272C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    v10[5] = v1;
    v12 = sub_227A2EC1C(0, 0, v6, &unk_227AA5E00, v10);
    swift_beginAccess();
    sub_227A2111C(&v17, v12);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);

    v13 = sub_227A7272C();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v11;
    v14[4] = v7;
    v14[5] = v1;
    v15 = sub_227A2EC1C(0, 0, v6, &unk_227AA5E10, v14);
    swift_beginAccess();
    sub_227A2111C(&v17, v15);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_227A4EAFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v21[-v4];
  v6 = *(v0 + 120);
  if (v6)
  {
    v7 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_227A7273C();
    swift_retain_n();

    v9 = sub_227A7272C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v6;

    v12 = sub_227A2EC1C(0, 0, v5, &unk_227AA5D70, v10);
    swift_beginAccess();
    sub_227A2111C(&v22, v12);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v13 = swift_allocObject();
    swift_weakInit();

    v14 = sub_227A7272C();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v6;

    v16 = sub_227A2EC1C(0, 0, v5, &unk_227AA5D80, v15);
    swift_beginAccess();
    sub_227A2111C(&v22, v16);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v17 = swift_allocObject();
    swift_weakInit();

    v18 = sub_227A7272C();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = MEMORY[0x277D85700];
    v19[4] = v17;
    v19[5] = v6;

    v20 = sub_227A2EC1C(0, 0, v5, &unk_227AA5D90, v19);
    swift_beginAccess();
    sub_227A2111C(&v22, v20);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_227A4EE6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v17[-v4];
  v6 = *(v0 + 120);
  if (v6)
  {
    v7 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_227A7273C();
    swift_retain_n();

    v9 = sub_227A7272C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v6;

    v12 = sub_227A2EC1C(0, 0, v5, &unk_227AA5CE8, v10);
    swift_beginAccess();
    sub_227A2111C(&v18, v12);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v13 = swift_allocObject();
    swift_weakInit();

    v14 = sub_227A7272C();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v6;

    v16 = sub_227A2EC1C(0, 0, v5, &unk_227AA5CF8, v15);
    swift_beginAccess();
    sub_227A2111C(&v18, v16);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_227A4F0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_227A71C6C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4B0, &qword_227AA5ED0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4B8, &qword_227AA5ED8);
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4C0, &qword_227AA5EE0);
  v5[18] = v16;
  v17 = *(v16 - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4C8, &qword_227AA5EE8);
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = sub_227A7273C();
  v5[25] = sub_227A7272C();
  v23 = sub_227A726EC();
  v5[26] = v23;
  v5[27] = v22;

  return MEMORY[0x2822009F8](sub_227A4F3C4, v23, v22);
}

uint64_t sub_227A4F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  v10[28] = Strong;
  if (Strong)
  {
    v12 = v10[23];
    v14 = v10[19];
    v13 = v10[20];
    v16 = v10[17];
    v15 = v10[18];
    v17 = v10[15];
    v18 = v10[16];
    v19 = v10[7];
    sub_227A7203C();
    OUTLINED_FUNCTION_27(&qword_27D7DE4D0, &qword_27D7DE4B8, &qword_227AA5ED8);
    OUTLINED_FUNCTION_136_0();
    (*(v18 + 8))(v16, v17);
    OUTLINED_FUNCTION_139();
    sub_227A722CC();
    (*(v14 + 8))(v13, v15);
    v20 = v10[24];
    v10[29] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DE4D8, &qword_27D7DE4C8, &qword_227AA5EE8);
    v21 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v10[30] = v22;
    *v22 = v23;
    v22[1] = sub_227A4F57C;
    v24 = v10[23];
    v25 = v10[21];
    v26 = v10[14];
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v27);
  }

  else
  {
    v29 = v10[25];

    OUTLINED_FUNCTION_118_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t sub_227A4F57C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 240);
  *v4 = *v2;
  *(v3 + 248) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 232);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 232);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A4F6E0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[29];

  v2 = v0[26];
  v3 = v0[27];

  return MEMORY[0x2822009F8](sub_227A4F740, v2, v3);
}

uint64_t sub_227A4F740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_131_0();
  v13 = v12[14];
  v14 = v12[11];
  v15 = OUTLINED_FUNCTION_115_1();
  v16 = v12[28];
  if (v15 == 1)
  {
    v17 = v12[25];
    (*(v12[22] + 8))(v12[23], v12[21]);

    OUTLINED_FUNCTION_118_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_69_1();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v28 = v12[12];
    v27 = v12[13];
    v30 = v12[9];
    v29 = v12[10];
    v31 = v12[7];
    v32 = v12[8];
    (*(v28 + 32))(v27, v13, v14);
    sub_227A71FDC();
    sub_227A4F998(v29, v27);
    (*(v30 + 8))(v29, v32);
    v33 = *(v28 + 8);
    v34 = OUTLINED_FUNCTION_30_1();
    v35(v34);
    v36 = v12[24];
    v12[29] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DE4D8, &qword_27D7DE4C8, &qword_227AA5EE8);
    v37 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v12[30] = v38;
    *v38 = v39;
    v38[1] = sub_227A4F57C;
    v40 = v12[23];
    v41 = v12[21];
    v42 = v12[14];
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_69_1();

    return MEMORY[0x282200308](v43);
  }
}

uint64_t sub_227A4F920()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 40) = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

void sub_227A4F998(uint64_t a1, char *a2)
{
  v86 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v84 = (&v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  v14 = sub_227A71C6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - v20;
  v87 = v2;
  if (v2[16])
  {
    v82 = v10;
    v85 = v5;

    sub_227A71FDC();
    v83 = a1;
    v23 = sub_227A71C4C();
    v24 = *(v15 + 8);
    v24(v21, v14);
    if (v23)
    {
      v80 = v22;
      if (qword_27D7DC4E0 != -1)
      {
        swift_once();
      }

      v25 = sub_227A7227C();
      __swift_project_value_buffer(v25, qword_27D7DE210);
      (*(v15 + 16))(v18, v83, v14);
      v26 = *(v85 + 16);
      v79 = v85 + 16;
      v26(v13, v86, v4);
      v27 = v87;

      v28 = sub_227A7226C();
      v29 = sub_227A7289C();

      v78 = v29;
      v30 = os_log_type_enabled(v28, v29);
      v81 = v26;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v89 = v32;
        *v31 = 136315650;
        *(v31 + 4) = sub_227A46730(v27[3], v27[4], &v89);
        *(v31 + 12) = 2080;
        v77 = v28;
        v33 = sub_227A71C3C();
        v35 = v34;
        v24(v18, v14);
        v36 = sub_227A46730(v33, v35, &v89);

        *(v31 + 14) = v36;
        *(v31 + 22) = 2080;
        v37 = v82;
        v81(v82, v13, v4);
        v38 = sub_227A7251C();
        v40 = v39;
        v41 = *(v85 + 8);
        v41(v13, v4);
        v42 = sub_227A46730(v38, v40, &v89);

        *(v31 + 24) = v42;
        v43 = v77;
        _os_log_impl(&dword_227904000, v77, v78, "%s-> Group session[%s] state changed to %s", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v32, -1, -1);
        v44 = v31;
        v45 = v41;
        MEMORY[0x22AAA1930](v44, -1, -1);
      }

      else
      {

        v45 = *(v85 + 8);
        v45(v13, v4);
        v24(v18, v14);
        v37 = v82;
      }

      (*(v85 + 104))(v37, *MEMORY[0x277CCB200], v4);
      type metadata accessor for FastSyncActivity(0);
      sub_227A589A8(&qword_27D7DC990, type metadata accessor for FastSyncActivity);
      v52 = sub_227A7200C();
      v53 = v45;
      v45(v37, v4);
      v54 = v87;
      if (v52)
      {
        v55 = v87[5];
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_227A72B1C();

        v89 = 0xD000000000000016;
        v90 = 0x8000000227A9F950;
        v56 = sub_227A71C3C();
        MEMORY[0x22AA9FE40](v56);

        v57 = sub_227A724BC();

        [v55 emitMultiplayerMessage_];
      }

      v58 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
      swift_beginAccess();
      v59 = v85;
      v60 = v86;
      (*(v85 + 24))(&v54[v58], v86, v4);
      swift_endAccess();
      v61 = v84;
      v81(v84, v60, v4);
      if ((*(v59 + 88))(v61, v4) == *MEMORY[0x277CCB1F8])
      {
        (*(v59 + 96))(v61, v4);
        v62 = *v61;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v64 = Strong;
          v89 = 0;
          v90 = 0xE000000000000000;
          sub_227A72B1C();
          v65 = *(v54 + 3);
          v66 = *(v54 + 4);

          v89 = v65;
          v90 = v66;
          MEMORY[0x22AA9FE40](0x6E6F697373657320, 0xE90000000000005BLL);
          v67 = sub_227A71C3C();
          MEMORY[0x22AA9FE40](v67);

          MEMORY[0x22AA9FE40](0xD00000000000001FLL, 0x8000000227A9F900);
          v68 = v89;
          v69 = v90;
          sub_227A1387C();
          v70 = swift_allocError();
          *v71 = v68;
          *(v71 + 8) = v69;
          *(v71 + 16) = v62;
          *(v71 + 24) = 0;
          *(v71 + 32) = 0x80;
          v72 = v62;
          v73 = sub_227A71A4C();

          [v64 transportDidFailWithError_];
          swift_unknownObjectRelease();
        }

        v74 = *(v54 + 5);
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_227A72B1C();
        MEMORY[0x22AA9FE40](0xD000000000000023, 0x8000000227A9F920);
        v88 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
        sub_227A72C1C();
        v75 = sub_227A724BC();

        [v74 emitMultiplayerMessage_];
      }

      else
      {

        v53(v61, v4);
      }

      return;
    }
  }

  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v46 = sub_227A7227C();
  __swift_project_value_buffer(v46, qword_27D7DE210);
  v47 = v87;

  v48 = sub_227A7226C();
  v49 = sub_227A728AC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v89 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_227A46730(v47[3], v47[4], &v89);
    _os_log_impl(&dword_227904000, v48, v49, "%s-> State changes not from the current session. Ignored.", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x22AAA1930](v51, -1, -1);
    MEMORY[0x22AAA1930](v50, -1, -1);
  }
}

uint64_t sub_227A502DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_227A71C6C();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC678, &qword_227AA0690);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC670, &unk_227AA5EA0);
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC680, &qword_227AA0698);
  v5[18] = v15;
  v16 = *(v15 - 8);
  v5[19] = v16;
  v17 = *(v16 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = sub_227A7273C();
  v5[22] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[23] = v19;
  v5[24] = v18;

  return MEMORY[0x2822009F8](sub_227A5050C, v19, v18);
}

uint64_t sub_227A5050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  v11 = v10[7];
  OUTLINED_FUNCTION_36_2();
  Strong = swift_weakLoadStrong();
  v10[25] = Strong;
  if (Strong)
  {
    v13 = v10[20];
    v15 = v10[16];
    v14 = v10[17];
    v17 = v10[14];
    v16 = v10[15];
    v18 = v10[12];
    v19 = v10[13];
    v20 = v10[8];
    sub_227A71FCC();
    OUTLINED_FUNCTION_27(&qword_27D7DC688, &qword_27D7DC678, &qword_227AA0690);
    OUTLINED_FUNCTION_136_0();
    (*(v19 + 8))(v17, v18);
    OUTLINED_FUNCTION_139();
    sub_227A722CC();
    (*(v15 + 8))(v14, v16);
    v21 = v10[21];
    v10[26] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DC690, &qword_27D7DC680, &qword_227AA0698);
    v22 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v10[27] = v23;
    *v23 = v24;
    v23[1] = sub_227A506B8;
    v25 = v10[20];
    v26 = v10[18];
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v27);
  }

  else
  {
    v29 = v10[22];

    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t sub_227A506B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 216);
  *v4 = *v2;
  *(v3 + 224) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 208);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 208);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A5081C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[26];

  v0[29] = v0[5];
  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x2822009F8](sub_227A50884, v2, v3);
}

uint64_t sub_227A50884()
{
  OUTLINED_FUNCTION_56();
  if (v0[29])
  {
    v1 = v0[25];
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    sub_227A71FDC();
    v6 = OUTLINED_FUNCTION_30_1();
    sub_227A50A94(v6, v7);

    v8 = *(v3 + 8);
    v9 = OUTLINED_FUNCTION_109();
    v10(v9);
    v11 = v0[21];
    v0[26] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DC690, &qword_27D7DC680, &qword_227AA0698);
    v12 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v0[27] = v13;
    *v13 = v14;
    v13[1] = sub_227A506B8;
    v15 = v0[20];
    v16 = v0[18];
    OUTLINED_FUNCTION_44_2();

    return MEMORY[0x282200308](v17);
  }

  else
  {
    v18 = v0[25];
    v19 = v0[22];
    (*(v0[19] + 8))(v0[20], v0[18]);

    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_41();

    return v20();
  }
}

uint64_t sub_227A50A1C()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 48) = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

void sub_227A50A94(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v244 - v8;
  v264 = sub_227A720EC();
  v266 = *(v264 - 8);
  v10 = *(v266 + 64);
  MEMORY[0x28223BE20](v264);
  v257 = &v244 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v258 = &v244 - v13;
  MEMORY[0x28223BE20](v14);
  v263 = &v244 - v15;
  MEMORY[0x28223BE20](v16);
  v265 = &v244 - v17;
  v18 = sub_227A71C6C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v244 - v24;
  v267 = v2;
  v26 = v2[16];
  if (!v26)
  {
LABEL_9:
    if (qword_27D7DC4E0 != -1)
    {
      goto LABEL_169;
    }

    goto LABEL_10;
  }

  v261 = v5;
  v262 = a2;
  v260 = v9;

  sub_227A71FDC();
  v27 = sub_227A71C4C();
  v28 = *(v19 + 8);
  v28(v25, v18);
  if ((v27 & 1) == 0)
  {

    goto LABEL_9;
  }

  v246 = v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v49 = sub_227A7227C();
    __swift_project_value_buffer(v49, qword_27D7DE210);
    v50 = v267;

    v51 = sub_227A7226C();
    v52 = sub_227A7289C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v277[0] = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_227A46730(v50[3], v50[4], v277);
      *(v53 + 12) = 2080;
      v272 = v50;

      v55 = sub_227A7251C();
      v57 = sub_227A46730(v55, v56, v277);

      *(v53 + 14) = v57;
      _os_log_impl(&dword_227904000, v51, v52, "%s Participants changed but there is no client delegate set for the transport: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v54, -1, -1);
      MEMORY[0x22AAA1930](v53, -1, -1);
    }

    v58 = &v271;
LABEL_160:
    v243 = *(v58 - 32);

    return;
  }

  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v29 = sub_227A7227C();
  v30 = __swift_project_value_buffer(v29, qword_27D7DE210);
  (*(v19 + 16))(v22, a1, v18);
  v31 = v267;

  v254 = v30;
  v32 = sub_227A7226C();
  v33 = sub_227A7289C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v277[0] = v261;
    *v34 = 136315650;
    *(v34 + 4) = sub_227A46730(*(v31 + 24), *(v31 + 32), v277);
    *(v34 + 12) = 2080;
    LODWORD(v259) = v33;
    v35 = sub_227A71C3C();
    v37 = v36;
    v28(v22, v18);
    v38 = sub_227A46730(v35, v37, v277);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    sub_227A589A8(&qword_27D7DC560, MEMORY[0x277CCB248]);
    v39 = sub_227A7283C();
    v41 = sub_227A46730(v39, v40, v277);

    *(v34 + 24) = v41;
    _os_log_impl(&dword_227904000, v32, v259, "%s-> Session[%s] active participants changed to %s", v34, 0x20u);
    v42 = v261;
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v42, -1, -1);
    MEMORY[0x22AAA1930](v34, -1, -1);
  }

  else
  {

    v28(v22, v18);
  }

  v60 = sub_227A59F4C(v59, v31);
  v245 = 0;
  v61 = *(v31 + 16);

  sub_227A58280(v62, v60);
  v64 = v63;

  v65 = *(v31 + 16);

  sub_227A58280(v60, v65);
  v67 = v66;
  v68 = *(v31 + 16);
  *(v31 + 16) = v60;
  v244 = v60;

  v69 = *(v67 + 16);
  v261 = v64;
  v259 = v67;
  if (v69)
  {
    v70 = v67 + 56;
    v71 = 1 << *(v67 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v67 + 56);
    v74 = (v71 + 63) >> 6;
    v262 = v266 + 16;
    v256 = v266 + 8;

    v75 = 0;
    v76 = MEMORY[0x277D84F90];
    if (v73)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v77 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_165;
      }

      if (v77 >= v74)
      {
        break;
      }

      v73 = *(v70 + 8 * v77);
      ++v75;
      if (v73)
      {
        v75 = v77;
        do
        {
LABEL_27:
          v78 = v266;
          v79 = v265;
          v80 = v264;
          (*(v266 + 16))(v265, *(v259 + 48) + *(v266 + 72) * (__clz(__rbit64(v73)) | (v75 << 6)), v264);
          v81 = sub_227A720DC();
          v83 = v82;
          (*(v78 + 8))(v79, v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = *(v76 + 16);
            sub_2279FD74C();
            v76 = v87;
          }

          v84 = *(v76 + 16);
          if (v84 >= *(v76 + 24) >> 1)
          {
            sub_2279FD74C();
            v76 = v88;
          }

          v73 &= v73 - 1;
          *(v76 + 16) = v84 + 1;
          v85 = v76 + 16 * v84;
          *(v85 + 32) = v81;
          *(v85 + 40) = v83;
        }

        while (v73);
      }
    }

    v89 = 0;
    v90 = *(v76 + 16);
    v91 = MEMORY[0x277D84F90];
LABEL_34:
    v92 = (v76 + 40 + 16 * v89);
    while (v90 != v89)
    {
      if (v89 >= *(v76 + 16))
      {
        goto LABEL_167;
      }

      ++v89;
      v94 = *(v92 - 1);
      v93 = *v92;
      v92 += 2;
      v95 = HIBYTE(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v95 = v94 & 0xFFFFFFFFFFFFLL;
      }

      if (v95)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v277[0] = v91;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_227A20388(0, *(v91 + 16) + 1, 1);
          v91 = v277[0];
        }

        v98 = *(v91 + 16);
        v97 = *(v91 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_227A20388(v97 > 1, v98 + 1, 1);
          v91 = v277[0];
        }

        *(v91 + 16) = v98 + 1;
        v99 = v91 + 16 * v98;
        *(v99 + 32) = v94;
        *(v99 + 40) = v93;
        goto LABEL_34;
      }
    }

    v31 = v267;
    sub_227A56D5C(v91);

    v64 = v261;
  }

  if (*(v64 + 16))
  {
    v100 = v64 + 56;
    v101 = 1 << *(v64 + 32);
    v102 = -1;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    v103 = v102 & *(v64 + 56);
    v104 = (v101 + 63) >> 6;
    v265 = (v266 + 16);
    v262 = v266 + 8;

    v105 = 0;
    v106 = MEMORY[0x277D84F90];
    if (v103)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_166;
      }

      if (v107 >= v104)
      {
        break;
      }

      v103 = *(v100 + 8 * v107);
      ++v105;
      if (v103)
      {
        v105 = v107;
        do
        {
LABEL_54:
          v108 = v266;
          v109 = v263;
          v110 = v264;
          (*(v266 + 16))(v263, *(v261 + 48) + *(v266 + 72) * (__clz(__rbit64(v103)) | (v105 << 6)), v264);
          v111 = sub_227A720DC();
          v113 = v112;
          (*(v108 + 8))(v109, v110);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = *(v106 + 16);
            sub_2279FD74C();
            v106 = v117;
          }

          v114 = *(v106 + 16);
          if (v114 >= *(v106 + 24) >> 1)
          {
            sub_2279FD74C();
            v106 = v118;
          }

          v103 &= v103 - 1;
          *(v106 + 16) = v114 + 1;
          v115 = v106 + 16 * v114;
          *(v115 + 32) = v111;
          *(v115 + 40) = v113;
        }

        while (v103);
      }
    }

    v119 = 0;
    v120 = *(v106 + 16);
    v121 = MEMORY[0x277D84F90];
LABEL_61:
    v122 = (v106 + 40 + 16 * v119);
    while (v120 != v119)
    {
      if (v119 >= *(v106 + 16))
      {
        goto LABEL_168;
      }

      ++v119;
      v124 = *(v122 - 1);
      v123 = *v122;
      v122 += 2;
      v125 = HIBYTE(v123) & 0xF;
      if ((v123 & 0x2000000000000000) == 0)
      {
        v125 = v124 & 0xFFFFFFFFFFFFLL;
      }

      if (v125)
      {

        v126 = swift_isUniquelyReferenced_nonNull_native();
        v277[0] = v121;
        if ((v126 & 1) == 0)
        {
          sub_227A20388(0, *(v121 + 16) + 1, 1);
          v121 = v277[0];
        }

        v128 = *(v121 + 16);
        v127 = *(v121 + 24);
        if (v128 >= v127 >> 1)
        {
          sub_227A20388(v127 > 1, v128 + 1, 1);
          v121 = v277[0];
        }

        *(v121 + 16) = v128 + 1;
        v129 = v121 + 16 * v128;
        *(v129 + 32) = v124;
        *(v129 + 40) = v123;
        goto LABEL_61;
      }
    }

    v31 = v267;
    sub_227A56ABC(v121);

    v64 = v261;
    if (*(v261 + 16))
    {
      goto LABEL_74;
    }
  }

  if (*(v259 + 16))
  {
LABEL_74:
    v130 = sub_227A7276C();
    v131 = v260;
    __swift_storeEnumTagSinglePayload(v260, 1, 1, v130);
    v132 = swift_allocObject();
    v132[2] = 0;
    v132[3] = 0;
    v132[4] = v31;

    sub_227A2EC1C(0, 0, v131, &unk_227AA5EB8, v132);
  }

  v133 = sub_227A7226C();
  v134 = sub_227A7289C();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    v277[0] = v265;
    *v135 = 136315650;
    *(v135 + 4) = sub_227A46730(*(v31 + 24), *(v31 + 32), v277);
    *(v135 + 12) = 2080;
    v136 = v245;
    sub_227A47304();
    v137 = MEMORY[0x22AA9FF60]();
    v139 = v138;

    v140 = sub_227A46730(v137, v139, v277);

    *(v135 + 14) = v140;
    v31 = v267;
    *(v135 + 22) = 2080;
    sub_227A47304();
    v245 = v136;
    v141 = MEMORY[0x22AA9FF60]();
    v143 = v142;

    v144 = v141;
    v64 = v261;
    v145 = sub_227A46730(v144, v143, v277);

    *(v135 + 24) = v145;
    _os_log_impl(&dword_227904000, v133, v134, "%s Participants changed. Added: %s, removed: %s", v135, 0x20u);
    v146 = v265;
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v146, -1, -1);
    v147 = v135;
    v148 = "Close the challenge received alert without further action" + 16;
    MEMORY[0x22AAA1930](v147, -1, -1);
  }

  else
  {

    v148 = "nge received alert without further action";
  }

  v149 = v64 + 56;
  v150 = -1 << *(v64 + 32);
  if (-v150 < 64)
  {
    v151 = ~(-1 << -v150);
  }

  else
  {
    v151 = -1;
  }

  v152 = v151 & *(v64 + 56);
  v153 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;

  v260 = v153;
  swift_beginAccess();
  v154 = 0;
  v155 = (63 - v150) >> 6;
  v256 = v266 + 16;
  v255 = v266 + 8;
  *&v156 = *(v148 + 461);
  v248 = v156;
  v250 = v64 + 56;
  v249 = v155;
  if (!v152)
  {
    while (1)
    {
LABEL_83:
      v157 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        goto LABEL_163;
      }

      if (v157 >= v155)
      {
        break;
      }

      v152 = *(v149 + 8 * v157);
      ++v154;
      if (v152)
      {
        goto LABEL_86;
      }
    }

    v196 = v259 + 56;
    v197 = -1 << *(v259 + 32);
    if (-v197 < 64)
    {
      v198 = ~(-1 << -v197);
    }

    else
    {
      v198 = -1;
    }

    v199 = v198 & *(v259 + 56);

    swift_beginAccess();
    v200 = 0;
    v201 = (63 - v197) >> 6;
    v251 = v196;
    v250 = v201;
    if (!v199)
    {
LABEL_123:
      v203 = v267;
      v204 = v259;
      while (1)
      {
        v202 = v200 + 1;
        if (__OFADD__(v200, 1))
        {
          goto LABEL_164;
        }

        if (v202 >= v201)
        {

          swift_unknownObjectRelease();
          v58 = &v270;
          goto LABEL_160;
        }

        v199 = *(v196 + 8 * v202);
        ++v200;
        if (v199)
        {
          goto LABEL_127;
        }
      }
    }

    while (1)
    {
      v202 = v200;
      v203 = v267;
      v204 = v259;
LABEL_127:
      v205 = v266;
      v206 = *(v204 + 48) + *(v266 + 72) * (__clz(__rbit64(v199)) | (v202 << 6));
      v207 = v257;
      v208 = v264;
      (*(v266 + 16))(v257, v206, v264);
      v262 = sub_227A720DC();
      v265 = v209;
      (*(v205 + 8))(v207, v208);
      v258 = *&v260[v203];
      v210 = v258;
      if ((v258 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_227A72A3C();
        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        sub_227A23DEC();
        sub_227A7285C();
        v210 = v277[0];
        v211 = v277[1];
        v213 = v277[2];
        v212 = v277[3];
        v214 = v277[4];
      }

      else
      {
        v215 = -1 << *(v258 + 32);
        v211 = v258 + 56;
        v213 = ~v215;
        v216 = -v215;
        if (v216 < 64)
        {
          v217 = ~(-1 << v216);
        }

        else
        {
          v217 = -1;
        }

        v214 = v217 & *(v258 + 56);
        swift_bridgeObjectRetain_n();
        v212 = 0;
      }

      v252 = (v199 - 1) & v199;
      v253 = v213;
      v218 = (v213 + 64) >> 6;
      v219 = v212;
      if (v210 < 0)
      {
        while (1)
        {
          v225 = sub_227A72A7C();
          if (!v225)
          {
            break;
          }

          v268 = v225;
          sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
          swift_dynamicCast();
          v224 = v269[0];
          v222 = v219;
          v223 = v214;
          if (!v269[0])
          {
            break;
          }

LABEL_142:
          v263 = v219;
          v226 = sub_227A5B280(v224, &selRef_pseudonym);
          if (v227)
          {
            if (v226 == v262 && v227 == v265)
            {

LABEL_154:
              sub_2279F34F8();

              sub_227A5B280(v224, &selRef_playerID);
              if (!v241)
              {
                goto LABEL_171;
              }

              v242 = sub_227A724BC();

              [Strong connectionDidChangeWithState:3 playerID:v242];

LABEL_156:
              goto LABEL_157;
            }

            v229 = sub_227A72E5C();

            if (v229)
            {
              goto LABEL_154;
            }
          }

          v219 = v222;
          v214 = v223;
          if ((v210 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }
        }
      }

      else
      {
LABEL_134:
        v220 = v219;
        v221 = v214;
        v222 = v219;
        if (v214)
        {
LABEL_138:
          v223 = (v221 - 1) & v221;
          v224 = *(*(v210 + 48) + ((v222 << 9) | (8 * __clz(__rbit64(v221)))));
          if (!v224)
          {
            goto LABEL_150;
          }

          goto LABEL_142;
        }

        while (1)
        {
          v222 = (v220 + 1);
          if (__OFADD__(v220, 1))
          {
            goto LABEL_162;
          }

          if (v222 >= v218)
          {
            break;
          }

          v221 = *(v211 + 8 * v222);
          ++v220;
          if (v221)
          {
            goto LABEL_138;
          }
        }
      }

LABEL_150:
      sub_2279F34F8();

      v230 = v267;

      v231 = v265;

      v224 = sub_227A7226C();
      v232 = sub_227A728AC();

      if (os_log_type_enabled(v224, v232))
      {
        v233 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v269[0] = v234;
        *v233 = v248;
        *(v233 + 4) = sub_227A46730(v230[3], v230[4], v269);
        *(v233 + 12) = 2080;
        v235 = sub_227A46730(v262, v231, v269);

        *(v233 + 14) = v235;
        *(v233 + 22) = 2080;
        v236 = *&v260[v230];
        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        sub_227A23DEC();

        v237 = sub_227A7283C();
        v239 = v238;

        v240 = sub_227A46730(v237, v239, v269);

        *(v233 + 24) = v240;
        _os_log_impl(&dword_227904000, v224, v232, "%s Cannot find %s and send stateDisconnected to clientDelegate. Current participants: %s", v233, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v234, -1, -1);
        MEMORY[0x22AAA1930](v233, -1, -1);
        goto LABEL_156;
      }

LABEL_157:
      v200 = v202;
      v196 = v251;
      v199 = v252;
      v201 = v250;
      if (!v252)
      {
        goto LABEL_123;
      }
    }
  }

  while (1)
  {
    v157 = v154;
LABEL_86:
    v158 = *(v64 + 48);
    v159 = v266;
    v160 = v258;
    v161 = v264;
    (*(v266 + 16))(v258, v158 + *(v266 + 72) * (__clz(__rbit64(v152)) | (v157 << 6)), v264);
    v262 = sub_227A720DC();
    v265 = v162;
    (*(v159 + 8))(v160, v161);
    v253 = *&v260[v31];
    v163 = v253;
    if ((v253 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_227A72A3C();
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();
      sub_227A7285C();
      v163 = v272;
      v164 = v273;
      v166 = v274;
      v165 = v275;
      v167 = v276;
    }

    else
    {
      v168 = -1 << *(v253 + 32);
      v164 = v253 + 56;
      v166 = ~v168;
      v169 = -v168;
      v170 = v169 < 64 ? ~(-1 << v169) : -1;
      v167 = v170 & *(v253 + 56);
      swift_bridgeObjectRetain_n();
      v165 = 0;
    }

    v251 = (v152 - 1) & v152;
    v252 = v166;
    v171 = (v166 + 64) >> 6;
    v172 = v165;
    if ((v163 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v178 = sub_227A72A7C();
      if (!v178)
      {
        goto LABEL_109;
      }

      v269[1] = v178;
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      v177 = v277[0];
      v175 = v172;
      v176 = v167;
      if (!v277[0])
      {
        goto LABEL_109;
      }

LABEL_101:
      v263 = v172;
      v179 = sub_227A5B280(v177, &selRef_pseudonym);
      if (v180)
      {
        break;
      }

LABEL_107:

      v172 = v175;
      v167 = v176;
      if ((v163 & 0x8000000000000000) == 0)
      {
        goto LABEL_93;
      }
    }

    if (v179 != v262 || v180 != v265)
    {
      v182 = sub_227A72E5C();

      if (v182)
      {
        goto LABEL_116;
      }

      goto LABEL_107;
    }

LABEL_116:
    sub_2279F34F8();

    sub_227A5B280(v177, &selRef_playerID);
    if (!v194)
    {
      __break(1u);
LABEL_171:
      __break(1u);
      return;
    }

    v195 = sub_227A724BC();

    [Strong connectionDidChangeWithState:2 playerID:v195];

    v154 = v157;
    v31 = v267;
LABEL_113:
    v64 = v261;
    v149 = v250;
    v152 = v251;
    v155 = v249;
    if (!v251)
    {
      goto LABEL_83;
    }
  }

LABEL_93:
  v173 = v172;
  v174 = v167;
  v175 = v172;
  if (v167)
  {
LABEL_97:
    v176 = (v174 - 1) & v174;
    v177 = *(*(v163 + 48) + ((v175 << 9) | (8 * __clz(__rbit64(v174)))));
    if (v177)
    {
      goto LABEL_101;
    }

LABEL_109:
    sub_2279F34F8();

    v31 = v267;

    v183 = v265;

    v184 = sub_227A7226C();
    v185 = sub_227A728AC();

    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v277[0] = v187;
      *v186 = v248;
      *(v186 + 4) = sub_227A46730(*(v31 + 24), *(v31 + 32), v277);
      *(v186 + 12) = 2080;
      v188 = sub_227A46730(v262, v183, v277);

      *(v186 + 14) = v188;
      *(v186 + 22) = 2080;
      v189 = *&v260[v31];
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();

      v190 = sub_227A7283C();
      v192 = v191;

      v193 = sub_227A46730(v190, v192, v277);

      *(v186 + 24) = v193;
      _os_log_impl(&dword_227904000, v184, v185, "%s Cannot find %s and send stateConnected to clientDelegate. Current participants: %s", v186, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v187, -1, -1);
      MEMORY[0x22AAA1930](v186, -1, -1);
    }

    else
    {
    }

    v154 = v157;
    goto LABEL_113;
  }

  while (1)
  {
    v175 = (v173 + 1);
    if (__OFADD__(v173, 1))
    {
      break;
    }

    if (v175 >= v171)
    {
      goto LABEL_109;
    }

    v174 = *(v164 + 8 * v175);
    ++v173;
    if (v174)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  swift_once();
LABEL_10:
  v43 = sub_227A7227C();
  __swift_project_value_buffer(v43, qword_27D7DE210);
  v44 = v267;

  v45 = sub_227A7226C();
  v46 = sub_227A728AC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v277[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_227A46730(v44[3], v44[4], v277);
    _os_log_impl(&dword_227904000, v45, v46, "%s-> Participant changes not from the current session. Ignored.", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x22AAA1930](v48, -1, -1);
    MEMORY[0x22AAA1930](v47, -1, -1);
  }
}

uint64_t sub_227A52678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_227A71EFC();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for DataMessage(0);
  v5[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE460, &qword_227AA5E18) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE468, &qword_227AA5E20);
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE470, &qword_227AA5E28);
  v5[14] = v15;
  v16 = *(v15 - 8);
  v5[15] = v16;
  v17 = *(v16 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = sub_227A7273C();
  v5[18] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[19] = v19;
  v5[20] = v18;

  return MEMORY[0x2822009F8](sub_227A528A8, v19, v18);
}

uint64_t sub_227A528A8()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_103_1();
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_60_1();
  sub_227A589A8(v4, v1);
  v5 = OUTLINED_FUNCTION_67_2(&qword_27D7DCCD0);
  OUTLINED_FUNCTION_159(v5);
  OUTLINED_FUNCTION_139();
  sub_227A71F3C();
  v6 = OUTLINED_FUNCTION_35_1();
  v7(v6);
  v8 = v0[17];
  v0[21] = sub_227A7272C();
  OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
  v9 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[22] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_22_2(v10);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v12);
}

uint64_t sub_227A529C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 176);
  *v4 = *v2;
  *(v3 + 184) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 168);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 168);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A52B24()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[21];

  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_227A52B84, v2, v3);
}

uint64_t sub_227A52B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v14 = v11[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE480, &qword_227AA5E30);
  if (OUTLINED_FUNCTION_115_1() == 1)
  {
    v15 = OUTLINED_FUNCTION_86_1();
    v16(v15);

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_52_2();
    v26 = OUTLINED_FUNCTION_107_1();
    v27(v26);
    sub_227A52D14(v10, 0, v12);
    v28 = *(v13 + 8);
    v29 = OUTLINED_FUNCTION_109();
    v30(v29);
    OUTLINED_FUNCTION_66_1();
    v31 = v11[17];
    v11[21] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
    v32 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v11[22] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_22_2(v33);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v35);
  }
}

void sub_227A52D14(unint64_t *a1, uint64_t a2, NSObject *a3)
{
  v4 = v3;
  v156 = a3;
  v149 = *v3;
  v7 = sub_227A71EFC();
  v150 = *(v7 - 8);
  v151 = v7;
  v8 = *(v150 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v153 = &v141 - v12;
  v13 = type metadata accessor for DataMessage(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v152 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v155 = &v141 - v17;
  v18 = sub_227A720EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[1];
  if (v23 >> 60 == 15)
  {
    if (qword_27D7DC4E0 != -1)
    {
LABEL_94:
      swift_once();
    }

    v24 = sub_227A7227C();
    __swift_project_value_buffer(v24, qword_27D7DE210);

    v157 = sub_227A7226C();
    v25 = sub_227A728BC();

    if (os_log_type_enabled(v157, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v160[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_227A46730(*(v4 + 24), *(v4 + 32), v160);
      _os_log_impl(&dword_227904000, v157, v25, "%s-> Received a data message without valid data.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x22AAA1930](v27, -1, -1);
      MEMORY[0x22AAA1930](v26, -1, -1);
      v28 = v157;
LABEL_28:

      return;
    }

    v28 = v157;
    goto LABEL_26;
  }

  v146 = v13;
  v29 = *a1;
  v154 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_2279E3EE4(v29, v23);
  v157 = v23;
  v148 = Strong;
  if (!Strong)
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v50 = sub_227A7227C();
    __swift_project_value_buffer(v50, qword_27D7DE210);
    v51 = v154;

    v156 = sub_227A7226C();
    v52 = sub_227A728BC();

    v53 = v29;
    if (os_log_type_enabled(v156, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v160[0] = v55;
      *v54 = 136315394;
      *(v54 + 4) = sub_227A46730(*(v51 + 24), *(v51 + 32), v160);
      *(v54 + 12) = 2080;
      v159[1] = v51;

      v56 = sub_227A7251C();
      v58 = sub_227A46730(v56, v57, v160);

      *(v54 + 14) = v58;
      _os_log_impl(&dword_227904000, v156, v52, "%s-> Data received but there is no client delegate set for the transport: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v55, -1, -1);
      MEMORY[0x22AAA1930](v54, -1, -1);
      sub_2279E3F90(v53, v157);
      v28 = v156;
      goto LABEL_28;
    }

    sub_2279E3F90(v29, v157);
    v28 = v156;
LABEL_26:

    goto LABEL_28;
  }

  v145 = a2;
  sub_227A71EEC();
  v31 = sub_227A720DC();
  v32 = v157;
  v33 = v31;
  v35 = v34;
  (*(v19 + 8))(v22, v18);
  v36 = (v35 >> 56) & 0xF;
  v149 = v33;
  v144 = v32 >> 62;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  v143 = HIDWORD(v29);
  v37 = BYTE6(v32);
  v147 = v29;
  if (!v36)
  {
    v149 = BYTE6(v32);

    v59 = v154;
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v60 = sub_227A7227C();
    __swift_project_value_buffer(v60, qword_27D7DE210);
    v61 = v150;
    v62 = v151;
    v63 = v156;
    v156 = *(v150 + 16);
    (v156)(v153, v63, v151);
    sub_227A60604();
    v64 = v147;
    v65 = v157;
    sub_2279E3ED0(v147, v157);
    sub_2279E3ED0(v64, v65);

    v66 = sub_227A7226C();
    v67 = sub_227A728AC();

    LODWORD(v155) = v67;
    if (os_log_type_enabled(v66, v67))
    {
      v142 = v66;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v160[0] = v69;
      *v68 = 136316162;
      *(v68 + 4) = sub_227A46730(*(v59 + 24), *(v59 + 32), v160);
      *(v68 + 12) = 2080;
      v70 = v153;
      (v156)(v10, v153, v62);
      v71 = sub_227A7251C();
      v73 = v72;
      (*(v61 + 8))(v70, v62);
      v74 = sub_227A46730(v71, v73, v160);

      *(v68 + 14) = v74;
      *(v68 + 22) = 2048;
      v75 = v157;
      v76 = v147;
      switch(v144)
      {
        case 1uLL:
          sub_2279E3F90(v147, v157);
          LODWORD(v77) = v143 - v76;
          if (!__OFSUB__(v143, v76))
          {
            v77 = v77;
            goto LABEL_79;
          }

LABEL_97:
          __break(1u);
          return;
        case 2uLL:
          v127 = *(v147 + 16);
          v126 = *(v147 + 24);
          sub_2279E3F90(v147, v157);
          v77 = v126 - v127;
          if (__OFSUB__(v126, v127))
          {
            __break(1u);
            goto LABEL_76;
          }

LABEL_79:
          v75 = v157;
          goto LABEL_80;
        case 3uLL:
LABEL_76:
          sub_2279E3F90(v76, v75);
          v77 = 0;
          goto LABEL_80;
        default:
          sub_2279E3F90(v147, v157);
          v77 = v149;
LABEL_80:
          *(v68 + 24) = v77;
          sub_2279E3F90(v76, v75);
          *(v68 + 32) = 2080;
          v128 = 0xE700000000000000;
          v129 = 0x6E776F6E6B6E75;
          if (v145 == 1)
          {
            v129 = 0x6261696C65726E75;
            v128 = 0xEA0000000000656CLL;
          }

          if (v145)
          {
            v130 = v129;
          }

          else
          {
            v130 = 0x656C6261696C6572;
          }

          if (v145)
          {
            v131 = v128;
          }

          else
          {
            v131 = 0xE800000000000000;
          }

          v132 = sub_227A46730(v130, v131, v160);

          *(v68 + 34) = v132;
          *(v68 + 42) = 2080;
          v133 = *(v146 + 20);
          sub_227A71C6C();
          sub_227A589A8(&qword_27D7DC568, MEMORY[0x277CC95F0]);
          v134 = sub_227A72E1C();
          v136 = v135;
          sub_227A605B0();
          v137 = sub_227A46730(v134, v136, v160);

          *(v68 + 44) = v137;
          v138 = v142;
          _os_log_impl(&dword_227904000, v142, v155, "%s-> Unknown senderID from: %s. Dropping %ld %s bytes[id:%s]", v68, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x22AAA1930](v69, -1, -1);
          MEMORY[0x22AAA1930](v68, -1, -1);
          sub_2279E3F90(v76, v75);
          swift_unknownObjectRelease();

          break;
      }
    }

    else
    {
      sub_2279E3F90(v64, v65);
      swift_unknownObjectRelease();

      sub_2279E3F90(v64, v65);
      sub_2279E3F90(v64, v65);
      sub_227A605B0();
      (*(v61 + 8))(v153, v62);
    }

    return;
  }

  v38 = v29;
  v156 = v35;
  v39 = v154;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v40 = sub_227A7227C();
  v41 = __swift_project_value_buffer(v40, qword_27D7DE210);
  sub_227A60604();
  sub_2279E3ED0(v38, v32);

  v152 = v41;
  v42 = sub_227A7226C();
  v43 = sub_227A728AC();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v145;
  if (v44)
  {
    v46 = v39;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v160[0] = v48;
    *v47 = 136316162;
    *(v47 + 4) = sub_227A46730(*(v46 + 24), *(v46 + 32), v160);
    *(v47 + 12) = 2048;
    v49 = 0;
    switch(v144)
    {
      case 1uLL:
        LODWORD(v49) = v143 - v38;
        if (!__OFSUB__(v143, v38))
        {
          v49 = v49;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_96;
      case 2uLL:
        v79 = *(v38 + 16);
        v78 = *(v38 + 24);
        v80 = __OFSUB__(v78, v79);
        v49 = v78 - v79;
        if (!v80)
        {
          goto LABEL_33;
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      case 3uLL:
        goto LABEL_33;
      default:
        v49 = v37;
LABEL_33:
        *(v47 + 14) = v49;
        sub_2279E3F90(v38, v157);
        *(v47 + 22) = 2080;
        v81 = 0xE700000000000000;
        v82 = 0x6E776F6E6B6E75;
        if (v45 == 1)
        {
          v82 = 0x6261696C65726E75;
          v81 = 0xEA0000000000656CLL;
        }

        if (v45)
        {
          v83 = v82;
        }

        else
        {
          v83 = 0x656C6261696C6572;
        }

        if (v45)
        {
          v84 = v81;
        }

        else
        {
          v84 = 0xE800000000000000;
        }

        v85 = sub_227A46730(v83, v84, v160);

        *(v47 + 24) = v85;
        *(v47 + 32) = 2080;
        v86 = *(v146 + 20);
        sub_227A71C6C();
        sub_227A589A8(&qword_27D7DC568, MEMORY[0x277CC95F0]);
        v87 = sub_227A72E1C();
        v89 = v88;
        sub_227A605B0();
        v90 = sub_227A46730(v87, v89, v160);

        *(v47 + 34) = v90;
        *(v47 + 42) = 2080;
        *(v47 + 44) = sub_227A46730(v149, v156, v160);
        _os_log_impl(&dword_227904000, v42, v43, "%s-> Received %ld %s bytes[id:%s] from context: %s", v47, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v48, -1, -1);
        MEMORY[0x22AAA1930](v47, -1, -1);

        v39 = v154;
        goto LABEL_42;
    }
  }

  sub_2279E3F90(v38, v32);

  sub_227A605B0();
LABEL_42:
  v91 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  swift_beginAccess();
  v155 = *(v39 + v91);
  v92 = v155;
  if ((v155 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    sub_227A7285C();
    v92 = v160[0];
    v93 = v160[1];
    v95 = v160[2];
    v94 = v160[3];
    v4 = v160[4];
  }

  else
  {
    v96 = -1 << *(v155 + 32);
    v93 = v155 + 56;
    v95 = ~v96;
    v97 = -v96;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    else
    {
      v98 = -1;
    }

    v4 = v98 & *(v155 + 56);
    swift_bridgeObjectRetain_n();
    v94 = 0;
  }

  v153 = v95;
  v99 = (v95 + 64) >> 6;
  if ((v92 & 0x8000000000000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v100 = sub_227A72A7C();
  if (!v100 || (v158 = v100, sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78), swift_dynamicCast(), v101 = v159[0], v102 = v94, v103 = v4, !v159[0]))
  {
LABEL_65:
    sub_2279F34F8();

    v110 = v147;
LABEL_66:
    v111 = v154;

    v112 = v156;

    v113 = sub_227A7226C();
    v114 = sub_227A7289C();

    if (!os_log_type_enabled(v113, v114))
    {
      goto LABEL_91;
    }

    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v159[0] = v116;
    *v115 = 136315394;
    *(v115 + 4) = sub_227A46730(*(v111 + 24), *(v111 + 32), v159);
    *(v115 + 12) = 2080;
    v117 = sub_227A46730(v149, v112, v159);

    *(v115 + 14) = v117;
    v118 = "%s-> Received a message from an unknown sender: %s";
LABEL_68:
    _os_log_impl(&dword_227904000, v113, v114, v118, v115, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v116, -1, -1);
    MEMORY[0x22AAA1930](v115, -1, -1);
    sub_2279E3F90(v110, v157);
    goto LABEL_92;
  }

  while (1)
  {
    v106 = sub_227A5B280(v101, &selRef_pseudonym);
    if (!v107)
    {
      goto LABEL_63;
    }

    if (v106 == v149 && v107 == v156)
    {
      break;
    }

    v109 = sub_227A72E5C();

    if (v109)
    {
      goto LABEL_70;
    }

LABEL_63:

    v94 = v102;
    v4 = v103;
    if (v92 < 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v104 = v94;
    v105 = v4;
    v102 = v94;
    if (!v4)
    {
      while (1)
      {
        v102 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          break;
        }

        if (v102 >= v99)
        {
          goto LABEL_65;
        }

        v105 = *(v93 + 8 * v102);
        ++v104;
        if (v105)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

LABEL_56:
    v103 = (v105 - 1) & v105;
    v101 = *(*(v92 + 48) + ((v102 << 9) | (8 * __clz(__rbit64(v105)))));
    if (!v101)
    {
      goto LABEL_65;
    }
  }

LABEL_70:
  sub_2279F34F8();

  sub_227A5B30C(v101);
  v110 = v147;
  if (!v119)
  {
    goto LABEL_66;
  }

  v120 = objc_allocWithZone(GKMatchPacket);
  v121 = v157;
  sub_2279E3EE4(v110, v157);
  v122 = sub_227A58AE8(v110, v121);
  v123 = v154;
  if (v122)
  {
    v124 = v122;

    v125 = sub_227A724BC();

    [v148 transportDidReceivePacket:v124 fromPlayerID:v125 remoteRecipientID:0];
    sub_2279E3F90(v110, v121);

    swift_unknownObjectRelease();
    return;
  }

  v139 = v156;

  v113 = sub_227A7226C();
  v114 = sub_227A728BC();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v159[0] = v116;
    *v115 = 136315394;
    *(v115 + 4) = sub_227A46730(*(v123 + 24), *(v123 + 32), v159);
    *(v115 + 12) = 2080;
    v140 = sub_227A46730(v149, v139, v159);

    *(v115 + 14) = v140;
    v118 = "%s-> Failed to pack data when received from sender: %s";
    goto LABEL_68;
  }

LABEL_91:
  sub_2279E3F90(v110, v157);

LABEL_92:
  swift_unknownObjectRelease();
}

uint64_t sub_227A53F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_227A71EFC();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for DataMessage(0);
  v5[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE460, &qword_227AA5E18) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE468, &qword_227AA5E20);
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE470, &qword_227AA5E28);
  v5[14] = v15;
  v16 = *(v15 - 8);
  v5[15] = v16;
  v17 = *(v16 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = sub_227A7273C();
  v5[18] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[19] = v19;
  v5[20] = v18;

  return MEMORY[0x2822009F8](sub_227A541A0, v19, v18);
}

uint64_t sub_227A541A0()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_103_1();
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_60_1();
  sub_227A589A8(v4, v1);
  v5 = OUTLINED_FUNCTION_67_2(&qword_27D7DCCD0);
  OUTLINED_FUNCTION_159(v5);
  OUTLINED_FUNCTION_139();
  sub_227A71F3C();
  v6 = OUTLINED_FUNCTION_35_1();
  v7(v6);
  v8 = v0[17];
  v0[21] = sub_227A7272C();
  OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
  v9 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[22] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_22_2(v10);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v12);
}

uint64_t sub_227A542B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 176);
  *v4 = *v2;
  *(v3 + 184) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 168);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 168);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A5441C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[21];

  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_227A5447C, v2, v3);
}

uint64_t sub_227A5447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v14 = v11[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE480, &qword_227AA5E30);
  if (OUTLINED_FUNCTION_115_1() == 1)
  {
    v15 = OUTLINED_FUNCTION_86_1();
    v16(v15);

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_52_2();
    v26 = OUTLINED_FUNCTION_107_1();
    v27(v26);
    sub_227A52D14(v10, 1, v12);
    v28 = *(v13 + 8);
    v29 = OUTLINED_FUNCTION_109();
    v30(v29);
    OUTLINED_FUNCTION_66_1();
    v31 = v11[17];
    v11[21] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
    v32 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v11[22] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_22_2(v33);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v35);
  }
}

uint64_t sub_227A5460C()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 16) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227A54684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for ChannelMigrationActionMessage(0);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_227A71EFC();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE430, &qword_227AA5DD8) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE438, &qword_227AA5DE0);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE440, &qword_227AA5DE8);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[22] = v19;
  v5[23] = v18;

  return MEMORY[0x2822009F8](sub_227A548B4, v19, v18);
}

uint64_t sub_227A548B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  v10[24] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA20, type metadata accessor for ChannelMigrationActionMessage);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA28);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    v15 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE448, &qword_27D7DE440, &qword_227AA5DE8);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_26_3(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_4_11(v18);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v20);
  }

  else
  {
    v22 = v10[21];

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_227A54A54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 208);
  *v4 = *v2;
  *(v3 + 216) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 200);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 200);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A54BB8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_227A54C18, v2, v3);
}

uint64_t sub_227A54C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = v10[13];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE450, &qword_227AA5DF0);
  OUTLINED_FUNCTION_20_2(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_30_2();
    v15(v14);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_9_9();
    v26(v25);
    OUTLINED_FUNCTION_92_0();
    sub_227A6055C();
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5B3BC(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_10_7();
    sub_227A605B0();
    v33 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE448, &qword_27D7DE440, &qword_227AA5DE8);
    v34 = *(MEMORY[0x277D856D0] + 4);
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_26_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_4_11(v36);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v38);
  }
}

uint64_t sub_227A54DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v5[8] = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_227A71EFC();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE400, &qword_227AA5DB8) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE408, &qword_227AA5DC0);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE410, &qword_227AA5DC8);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[22] = v19;
  v5[23] = v18;

  return MEMORY[0x2822009F8](sub_227A54FE4, v19, v18);
}

uint64_t sub_227A54FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  v10[24] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCCA8, type metadata accessor for UpdateParticipantsActionMessage);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCCB0);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    v15 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE418, &qword_27D7DE410, &qword_227AA5DC8);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_26_3(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_4_11(v18);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v20);
  }

  else
  {
    v22 = v10[21];

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_227A55184()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 208);
  *v4 = *v2;
  *(v3 + 216) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 200);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 200);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A552E8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_227A55348, v2, v3);
}

uint64_t sub_227A55348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = v10[13];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE420, &qword_227AA5DD0);
  OUTLINED_FUNCTION_20_2(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_30_2();
    v15(v14);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_9_9();
    v26(v25);
    OUTLINED_FUNCTION_92_0();
    sub_227A6055C();
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5BB8C(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_12_6();
    sub_227A605B0();
    v33 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE418, &qword_27D7DE410, &qword_227AA5DC8);
    v34 = *(MEMORY[0x277D856D0] + 4);
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_26_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_4_11(v36);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v38);
  }
}

uint64_t sub_227A554E4()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 40) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227A5555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for JoinChannelActionMessage(0);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_227A71EFC();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3D0, &qword_227AA5D98) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3D8, &qword_227AA5DA0);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3E0, &qword_227AA5DA8);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[22] = v19;
  v5[23] = v18;

  return MEMORY[0x2822009F8](sub_227A5578C, v19, v18);
}

uint64_t sub_227A5578C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  v10[24] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA80, type metadata accessor for JoinChannelActionMessage);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA88);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    v15 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3E8, &qword_27D7DE3E0, &qword_227AA5DA8);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_26_3(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_4_11(v18);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v20);
  }

  else
  {
    v22 = v10[21];

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_227A5592C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 208);
  *v4 = *v2;
  *(v3 + 216) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 200);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 200);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A55A90()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_227A55AF0, v2, v3);
}

uint64_t sub_227A55AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = v10[13];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3F0, &qword_227AA5DB0);
  OUTLINED_FUNCTION_20_2(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_30_2();
    v15(v14);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_9_9();
    v26(v25);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_92_0();
    sub_227A6055C();
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5C35C(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_14_6();
    sub_227A605B0();
    v33 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3E8, &qword_27D7DE3E0, &qword_227AA5DA8);
    v34 = *(MEMORY[0x277D856D0] + 4);
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_26_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_4_11(v36);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v38);
  }
}

uint64_t sub_227A55C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v5[8] = ScoresActionMessage;
  v7 = *(*(ScoresActionMessage - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_227A71EFC();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3A0, &qword_227AA5D48) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3A8, &qword_227AA5D50);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3B0, &qword_227AA5D58);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[22] = v19;
  v5[23] = v18;

  return MEMORY[0x2822009F8](sub_227A55EAC, v19, v18);
}

uint64_t sub_227A55EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  v10[24] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA40, type metadata accessor for QueryScoresActionMessage);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA48);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    v15 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3B8, &qword_27D7DE3B0, &qword_227AA5D58);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_26_3(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_4_11(v18);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v20);
  }

  else
  {
    v22 = v10[21];

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_227A5604C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 208);
  *v4 = *v2;
  *(v3 + 216) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 200);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 200);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227A561B0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_227A56210, v2, v3);
}

uint64_t sub_227A56210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = v10[13];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3C0, &qword_227AA5D60);
  OUTLINED_FUNCTION_20_2(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_30_2();
    v15(v14);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_9_9();
    v26(v25);
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_92_0();
    sub_227A6055C();
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5CB2C(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_6_10();
    sub_227A605B0();
    v33 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3B8, &qword_27D7DE3B0, &qword_227AA5D58);
    v34 = *(MEMORY[0x277D856D0] + 4);
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_26_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_4_11(v36);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v38);
  }
}

uint64_t sub_227A5639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v5[8] = ScoresResponseActionMessage;
  v7 = *(*(ScoresResponseActionMessage - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_227A71EFC();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE358, &qword_227AA5D00) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE360, &qword_227AA5D08);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE368, &unk_227AA5D10);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v19 = sub_227A726EC();
  v5[22] = v19;
  v5[23] = v18;

  return MEMORY[0x2822009F8](sub_227A565CC, v19, v18);
}

uint64_t sub_227A565CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  v10[24] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA60, type metadata accessor for QueryScoresResponseActionMessage);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA68);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    v15 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE370, &qword_27D7DE368, &unk_227AA5D10);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_26_3(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_4_11(v18);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v20);
  }

  else
  {
    v22 = v10[21];

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_227A5676C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v0 + 208);
  *v4 = *v2;
  *(v3 + 216) = v1;

  OUTLINED_FUNCTION_74_2();
  v7 = *(v6 + 200);
  if (v1)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = *(v6 + 200);
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}