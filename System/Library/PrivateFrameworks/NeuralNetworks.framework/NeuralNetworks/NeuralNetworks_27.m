uint64_t sub_25BC89DC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
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

uint64_t sub_25BC89E00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_25BC89E44(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25BC89E68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 25))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC89EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -3 - a2;
    }
  }

  return result;
}

uint64_t sub_25BC89F00(uint64_t result, unsigned int a2)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
  }

  else if (a2)
  {
    *(result + 24) = ~a2;
  }

  return result;
}

uint64_t sub_25BC89F38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25BC89F78(uint64_t result, int a2, int a3)
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

uint64_t sub_25BC89FF4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&var1);
  if (var1 - 1 > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_25BCD5D10[(var1 - 1)];
  }
}

uint64_t ScalarType.size.getter()
{
  if (*v0 - 1 > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_25BCD5D10[(*v0 - 1)];
  }
}

uint64_t sub_25BC8A124(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 947154537 && a2 == 0xE400000000000000;
  if (v3 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x3631746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x3436746E69 && a2 == 0xE500000000000000;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x38746E6975 && a2 == 0xE500000000000000;
          if (v9 || (sub_25BCB789C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x3631746E6975 && a2 == 0xE600000000000000;
            if (v10 || (sub_25BCB789C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x3233746E6975 && a2 == 0xE600000000000000;
              if (v11 || (sub_25BCB789C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x3436746E6975 && a2 == 0xE600000000000000;
                if (v12 || (sub_25BCB789C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x363174616F6C66 && a2 == 0xE700000000000000;
                  if (v13 || (sub_25BCB789C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x363174616F6C6662 && a2 == 0xE800000000000000;
                    if (v14 || (sub_25BCB789C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x323374616F6C66 && a2 == 0xE700000000000000;
                      if (v15 || (sub_25BCB789C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x343674616F6C66 && a2 == 0xE700000000000000;
                        if (v16 || (sub_25BCB789C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 1819242338 && a2 == 0xE400000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_25BCB789C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25BC8A4EC(char a1)
{
  result = 947154537;
  switch(a1)
  {
    case 1:
      result = 0x3631746E69;
      break;
    case 2:
      result = 0x3233746E69;
      break;
    case 3:
      result = 0x3436746E69;
      break;
    case 4:
      result = 0x38746E6975;
      break;
    case 5:
      result = 0x3631746E6975;
      break;
    case 6:
      result = 0x3233746E6975;
      break;
    case 7:
      result = 0x3436746E6975;
      break;
    case 8:
      result = 0x363174616F6C66;
      break;
    case 9:
      result = 0x363174616F6C6662;
      break;
    case 10:
      result = 0x323374616F6C66;
      break;
    case 11:
      result = 0x343674616F6C66;
      break;
    case 12:
      result = 1819242338;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC8A618(uint64_t a1)
{
  v2 = sub_25BC8B828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A654(uint64_t a1)
{
  v2 = sub_25BC8B828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A690(uint64_t a1)
{
  v2 = sub_25BC8B72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A6CC(uint64_t a1)
{
  v2 = sub_25BC8B72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC8A124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC8A738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC8A4E4();
  *a1 = result;
  return result;
}

uint64_t sub_25BC8A760(uint64_t a1)
{
  v2 = sub_25BC8B6D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A79C(uint64_t a1)
{
  v2 = sub_25BC8B6D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A7D8(uint64_t a1)
{
  v2 = sub_25BC8B87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A814(uint64_t a1)
{
  v2 = sub_25BC8B87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A850(uint64_t a1)
{
  v2 = sub_25BC8B7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A88C(uint64_t a1)
{
  v2 = sub_25BC8B7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A8C8(uint64_t a1)
{
  v2 = sub_25BC8B780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A904(uint64_t a1)
{
  v2 = sub_25BC8B780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A940(uint64_t a1)
{
  v2 = sub_25BC8BAC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A97C(uint64_t a1)
{
  v2 = sub_25BC8BAC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A9B8(uint64_t a1)
{
  v2 = sub_25BC8BA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A9F4(uint64_t a1)
{
  v2 = sub_25BC8BA74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AA30(uint64_t a1)
{
  v2 = sub_25BC8BA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AA6C(uint64_t a1)
{
  v2 = sub_25BC8BA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AAA8(uint64_t a1)
{
  v2 = sub_25BC8BB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AAE4(uint64_t a1)
{
  v2 = sub_25BC8BB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AB20(uint64_t a1)
{
  v2 = sub_25BC8B978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AB5C(uint64_t a1)
{
  v2 = sub_25BC8B978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AB98(uint64_t a1)
{
  v2 = sub_25BC8B924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8ABD4(uint64_t a1)
{
  v2 = sub_25BC8B924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AC10(uint64_t a1)
{
  v2 = sub_25BC8B8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AC4C(uint64_t a1)
{
  v2 = sub_25BC8B8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AC88(uint64_t a1)
{
  v2 = sub_25BC8B9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8ACC4(uint64_t a1)
{
  v2 = sub_25BC8B9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScalarType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79D0, &qword_25BCD50B0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v135 = v6;
  v136 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_23();
  v134 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79D8, &qword_25BCD50B8);
  v12 = OUTLINED_FUNCTION_2(v11);
  v132 = v13;
  v133 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_23();
  v131 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79E0, &qword_25BCD50C0);
  v19 = OUTLINED_FUNCTION_2(v18);
  v129 = v20;
  v130 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_23();
  v128 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79E8, &qword_25BCD50C8);
  v26 = OUTLINED_FUNCTION_2(v25);
  v126 = v27;
  v127 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_23();
  v125 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79F0, &qword_25BCD50D0);
  v33 = OUTLINED_FUNCTION_2(v32);
  v123 = v34;
  v124 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_23();
  v122 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79F8, &qword_25BCD50D8);
  v40 = OUTLINED_FUNCTION_2(v39);
  v120 = v41;
  v121 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A00, &qword_25BCD50E0);
  OUTLINED_FUNCTION_0_92(v46, &v146);
  v118 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A08, &qword_25BCD50E8);
  OUTLINED_FUNCTION_0_92(v52, &v144);
  v117 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A10, &qword_25BCD50F0);
  OUTLINED_FUNCTION_0_92(v58, &v142);
  v116 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A18, &qword_25BCD50F8);
  OUTLINED_FUNCTION_0_92(v64, v140);
  v115 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A20, &qword_25BCD5100);
  OUTLINED_FUNCTION_0_92(v70, &v138);
  v114 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A28, &qword_25BCD5108);
  OUTLINED_FUNCTION_0_92(v76, &v135);
  v112 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v80);
  v82 = &v110 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A30, &qword_25BCD5110);
  OUTLINED_FUNCTION_2(v83);
  v111 = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v87);
  v89 = &v110 - v88;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A38, &qword_25BCD5118);
  OUTLINED_FUNCTION_2(v138);
  v91 = v90;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v94);
  v96 = &v110 - v95;
  v97 = *v2;
  v98 = a1[4];
  v99 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC8B6D8();
  v137 = v96;
  sub_25BCB7B6C();
  v100 = (v91 + 8);
  switch(v97)
  {
    case 1:
      v139[4] = 1;
      sub_25BC8BAC8();
      v107 = v137;
      v108 = v138;
      sub_25BCB770C();
      (*(v112 + 8))(v82, v113);
      return (*v100)(v107, v108);
    case 2:
      v139[5] = 2;
      sub_25BC8BA74();
      OUTLINED_FUNCTION_3_62();
      v104 = OUTLINED_FUNCTION_4_69(&v137);
      v106 = &v138;
      goto LABEL_13;
    case 3:
      v139[6] = 3;
      sub_25BC8BA20();
      OUTLINED_FUNCTION_3_62();
      v104 = OUTLINED_FUNCTION_4_69(v139);
      v106 = v140;
      goto LABEL_13;
    case 4:
      v139[7] = 4;
      sub_25BC8B9CC();
      OUTLINED_FUNCTION_3_62();
      v104 = OUTLINED_FUNCTION_4_69(v141);
      v106 = &v142;
      goto LABEL_13;
    case 5:
      v141[0] = 5;
      sub_25BC8B978();
      OUTLINED_FUNCTION_3_62();
      v104 = OUTLINED_FUNCTION_4_69(&v143);
      v106 = &v144;
      goto LABEL_13;
    case 6:
      v141[1] = 6;
      sub_25BC8B924();
      OUTLINED_FUNCTION_3_62();
      v104 = OUTLINED_FUNCTION_4_69(&v145);
      v106 = &v146;
LABEL_13:
      v102 = *(v106 - 32);
      goto LABEL_17;
    case 7:
      v141[2] = 7;
      sub_25BC8B8D0();
      v101 = v119;
      OUTLINED_FUNCTION_3_62();
      v103 = v120;
      v102 = v121;
      goto LABEL_16;
    case 8:
      v141[3] = 8;
      sub_25BC8B87C();
      v101 = v122;
      OUTLINED_FUNCTION_3_62();
      v103 = v123;
      v102 = v124;
      goto LABEL_16;
    case 9:
      v141[4] = 9;
      sub_25BC8B828();
      v101 = v125;
      OUTLINED_FUNCTION_3_62();
      v103 = v126;
      v102 = v127;
      goto LABEL_16;
    case 10:
      v141[5] = 10;
      sub_25BC8B7D4();
      v101 = v128;
      OUTLINED_FUNCTION_3_62();
      v103 = v129;
      v102 = v130;
      goto LABEL_16;
    case 11:
      v141[6] = 11;
      sub_25BC8B780();
      v101 = v131;
      OUTLINED_FUNCTION_3_62();
      v103 = v132;
      v102 = v133;
      goto LABEL_16;
    case 12:
      v141[7] = 12;
      sub_25BC8B72C();
      v101 = v134;
      OUTLINED_FUNCTION_3_62();
      v103 = v135;
      v102 = v136;
LABEL_16:
      v105 = *(v103 + 8);
      v104 = v101;
LABEL_17:
      v105(v104, v102);
      break;
    default:
      v139[3] = 0;
      sub_25BC8BB1C();
      v99 = v137;
      v96 = v138;
      sub_25BCB770C();
      (*(v111 + 8))(v89, v83);
      break;
  }

  return (*v100)(v99, v96);
}

unint64_t sub_25BC8B6D8()
{
  result = qword_2815502B0[0];
  if (!qword_2815502B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815502B0);
  }

  return result;
}

unint64_t sub_25BC8B72C()
{
  result = qword_27FBB7A40;
  if (!qword_27FBB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A40);
  }

  return result;
}

unint64_t sub_25BC8B780()
{
  result = qword_27FBB7A48;
  if (!qword_27FBB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A48);
  }

  return result;
}

unint64_t sub_25BC8B7D4()
{
  result = qword_2815501F8;
  if (!qword_2815501F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501F8);
  }

  return result;
}

unint64_t sub_25BC8B828()
{
  result = qword_27FBB7A50;
  if (!qword_27FBB7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A50);
  }

  return result;
}

unint64_t sub_25BC8B87C()
{
  result = qword_27FBB7A58;
  if (!qword_27FBB7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A58);
  }

  return result;
}

unint64_t sub_25BC8B8D0()
{
  result = qword_27FBB7A60;
  if (!qword_27FBB7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A60);
  }

  return result;
}

unint64_t sub_25BC8B924()
{
  result = qword_27FBB7A68;
  if (!qword_27FBB7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A68);
  }

  return result;
}

unint64_t sub_25BC8B978()
{
  result = qword_27FBB7A70;
  if (!qword_27FBB7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A70);
  }

  return result;
}

unint64_t sub_25BC8B9CC()
{
  result = qword_27FBB7A78;
  if (!qword_27FBB7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A78);
  }

  return result;
}

unint64_t sub_25BC8BA20()
{
  result = qword_27FBB7A80;
  if (!qword_27FBB7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A80);
  }

  return result;
}

unint64_t sub_25BC8BA74()
{
  result = qword_27FBB7A88;
  if (!qword_27FBB7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A88);
  }

  return result;
}

unint64_t sub_25BC8BAC8()
{
  result = qword_27FBB7A90;
  if (!qword_27FBB7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A90);
  }

  return result;
}

unint64_t sub_25BC8BB1C()
{
  result = qword_27FBB7A98;
  if (!qword_27FBB7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A98);
  }

  return result;
}

uint64_t ScalarType.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t ScalarType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v161 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AA0, &qword_25BCD5120);
  v4 = OUTLINED_FUNCTION_2(v3);
  v151 = v5;
  v152 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_23();
  v160 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AA8, &qword_25BCD5128);
  v11 = OUTLINED_FUNCTION_2(v10);
  v149 = v12;
  v150 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_23();
  v159 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AB0, &qword_25BCD5130);
  v18 = OUTLINED_FUNCTION_2(v17);
  v147 = v19;
  v148 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_23();
  v158 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AB8, &qword_25BCD5138);
  OUTLINED_FUNCTION_0_92(v24, &v177);
  v146 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_23();
  v157 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AC0, &qword_25BCD5140);
  OUTLINED_FUNCTION_0_92(v30, &v175);
  v145 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_23();
  v156 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AC8, &qword_25BCD5148);
  OUTLINED_FUNCTION_0_92(v36, &v172);
  v144 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_23();
  v164 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AD0, &qword_25BCD5150);
  OUTLINED_FUNCTION_0_92(v42, &v171);
  v143 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_23();
  v163 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AD8, &qword_25BCD5158);
  OUTLINED_FUNCTION_0_92(v48, v170);
  v141 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_12_23();
  v162 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AE0, &qword_25BCD5160);
  OUTLINED_FUNCTION_0_92(v54, v168);
  v140 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_23();
  v155 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AE8, &qword_25BCD5168);
  OUTLINED_FUNCTION_0_92(v60, &v166);
  v139 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_12_23();
  v154 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AF0, &qword_25BCD5170);
  OUTLINED_FUNCTION_0_92(v66, &v164);
  v138 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_12_23();
  v153 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AF8, &qword_25BCD5178);
  OUTLINED_FUNCTION_0_92(v72, &v162);
  v137 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v76);
  v78 = &v131 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B00, &qword_25BCD5180);
  OUTLINED_FUNCTION_2(v79);
  v136 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v83);
  v85 = &v131 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B08, &unk_25BCD5188);
  OUTLINED_FUNCTION_2(v86);
  v88 = v87;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v91);
  v92 = a1[3];
  v93 = a1[4];
  v165 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v92);
  sub_25BC8B6D8();
  v94 = v166;
  sub_25BCB7B2C();
  if (v94)
  {
    goto LABEL_9;
  }

  v134 = v85;
  v133 = v79;
  v135 = v78;
  v95 = v162;
  v96 = v163;
  v97 = v164;
  v166 = v88;
  v98 = sub_25BCB76EC();
  result = sub_25BC72094(v98, 0);
  if (v101 == v102 >> 1)
  {
LABEL_8:
    v113 = sub_25BCB71BC();
    swift_allocError();
    v115 = v114;
    v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48B8, &unk_25BCC0130) + 48);
    *v115 = &type metadata for ScalarType;
    sub_25BCB763C();
    sub_25BCB71AC();
    (*(*(v113 - 8) + 104))(v115, *MEMORY[0x277D84160], v113);
    swift_willThrow();
    swift_unknownObjectRelease();
    v117 = OUTLINED_FUNCTION_8_59();
    v118(v117, v86);
LABEL_9:
    v119 = v165;
    return __swift_destroy_boxed_opaque_existential_1(v119);
  }

  v132 = v86;
  v131 = 0;
  if (v101 < (v102 >> 1))
  {
    v103 = *(v100 + v101);
    sub_25BC8C8E8(v101 + 1, v102 >> 1, result, v100, v101, v102);
    v105 = v104;
    v107 = v106;
    swift_unknownObjectRelease();
    if (v105 == v107 >> 1)
    {
      v108 = v161;
      v109 = v131;
      switch(v103)
      {
        case 1:
          v167[4] = 1;
          sub_25BC8BAC8();
          OUTLINED_FUNCTION_10_53();
          swift_unknownObjectRelease();
          v123 = OUTLINED_FUNCTION_4_69(&v161);
          v125 = &v162;
          goto LABEL_26;
        case 2:
          v167[5] = 2;
          sub_25BC8BA74();
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_5_62(&v163);
          v112 = &v164;
          goto LABEL_27;
        case 3:
          v167[6] = 3;
          sub_25BC8BA20();
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_5_62(&v165);
          v112 = &v166;
          goto LABEL_27;
        case 4:
          v167[7] = 4;
          sub_25BC8B9CC();
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_5_62(v167);
          v112 = v168;
          goto LABEL_27;
        case 5:
          v170[0] = 5;
          sub_25BC8B978();
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_5_62(&v169);
          v112 = v170;
          goto LABEL_27;
        case 6:
          v170[1] = 6;
          sub_25BC8B924();
          v97 = v132;
          sub_25BCB762C();
          if (v109)
          {
            v126 = OUTLINED_FUNCTION_8_59();
            v127(v126, v97);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v143 + 8))(v96, v142);
LABEL_28:
          v128 = OUTLINED_FUNCTION_8_59();
          v130 = v97;
LABEL_29:
          v129(v128, v130);
          v119 = v165;
          *v108 = v103;
          break;
        case 7:
          v170[2] = 7;
          sub_25BC8B8D0();
          OUTLINED_FUNCTION_10_53();
          swift_unknownObjectRelease();
          v123 = OUTLINED_FUNCTION_4_69(&v173);
          v125 = &v172;
LABEL_26:
          v124(v123, *(v125 - 32));
          v128 = OUTLINED_FUNCTION_8_59();
          v130 = v95;
          goto LABEL_29;
        case 8:
          v170[3] = 8;
          sub_25BC8B87C();
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_5_62(&v174);
          v112 = &v175;
          goto LABEL_27;
        case 9:
          v170[4] = 9;
          sub_25BC8B828();
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_5_62(&v176);
          v112 = &v177;
          goto LABEL_27;
        case 10:
          v170[5] = 10;
          sub_25BC8B7D4();
          v120 = v158;
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v122 = v147;
          v121 = v148;
          goto LABEL_23;
        case 11:
          v170[6] = 11;
          sub_25BC8B780();
          v120 = v159;
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v122 = v149;
          v121 = v150;
          goto LABEL_23;
        case 12:
          v170[7] = 12;
          sub_25BC8B72C();
          v120 = v160;
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v122 = v151;
          v121 = v152;
LABEL_23:
          (*(v122 + 8))(v120, v121);
          goto LABEL_28;
        default:
          v167[3] = 0;
          sub_25BC8BB1C();
          OUTLINED_FUNCTION_2_77();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_5_62(&v160);
          v112 = &v157;
LABEL_27:
          v111(v110, *(v112 - 32));
          goto LABEL_28;
      }

      return __swift_destroy_boxed_opaque_existential_1(v119);
    }

    v86 = v132;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC8C8A0()
{
  v2 = *v0;
  sub_25BCB79CC();
  ScalarType.hash(into:)();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC8C8E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_25BC8C968()
{
  result = qword_27FBB7B10;
  if (!qword_27FBB7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B10);
  }

  return result;
}

uint64_t sub_25BC8C9CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_25BC8CB38()
{
  result = qword_27FBB7B18;
  if (!qword_27FBB7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B18);
  }

  return result;
}

unint64_t sub_25BC8CB90()
{
  result = qword_281550280;
  if (!qword_281550280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550280);
  }

  return result;
}

unint64_t sub_25BC8CBE8()
{
  result = qword_281550288;
  if (!qword_281550288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550288);
  }

  return result;
}

unint64_t sub_25BC8CC40()
{
  result = qword_281550270;
  if (!qword_281550270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550270);
  }

  return result;
}

unint64_t sub_25BC8CC98()
{
  result = qword_281550278;
  if (!qword_281550278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550278);
  }

  return result;
}

unint64_t sub_25BC8CCF0()
{
  result = qword_281550260;
  if (!qword_281550260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550260);
  }

  return result;
}

unint64_t sub_25BC8CD48()
{
  result = qword_281550268;
  if (!qword_281550268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550268);
  }

  return result;
}

unint64_t sub_25BC8CDA0()
{
  result = qword_281550250;
  if (!qword_281550250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550250);
  }

  return result;
}

unint64_t sub_25BC8CDF8()
{
  result = qword_281550258;
  if (!qword_281550258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550258);
  }

  return result;
}

unint64_t sub_25BC8CE50()
{
  result = qword_281550240;
  if (!qword_281550240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550240);
  }

  return result;
}

unint64_t sub_25BC8CEA8()
{
  result = qword_281550248;
  if (!qword_281550248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550248);
  }

  return result;
}

unint64_t sub_25BC8CF00()
{
  result = qword_281550230;
  if (!qword_281550230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550230);
  }

  return result;
}

unint64_t sub_25BC8CF58()
{
  result = qword_281550238;
  if (!qword_281550238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550238);
  }

  return result;
}

unint64_t sub_25BC8CFB0()
{
  result = qword_281550220;
  if (!qword_281550220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550220);
  }

  return result;
}

unint64_t sub_25BC8D008()
{
  result = qword_281550228;
  if (!qword_281550228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550228);
  }

  return result;
}

unint64_t sub_25BC8D060()
{
  result = qword_281550210;
  if (!qword_281550210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550210);
  }

  return result;
}

unint64_t sub_25BC8D0B8()
{
  result = qword_281550218;
  if (!qword_281550218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550218);
  }

  return result;
}

unint64_t sub_25BC8D110()
{
  result = qword_281550200;
  if (!qword_281550200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550200);
  }

  return result;
}

unint64_t sub_25BC8D168()
{
  result = qword_281550208;
  if (!qword_281550208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550208);
  }

  return result;
}

unint64_t sub_25BC8D1C0()
{
  result = qword_2815501C8;
  if (!qword_2815501C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501C8);
  }

  return result;
}

unint64_t sub_25BC8D218()
{
  result = qword_2815501D0;
  if (!qword_2815501D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501D0);
  }

  return result;
}

unint64_t sub_25BC8D270()
{
  result = qword_2815501E8;
  if (!qword_2815501E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501E8);
  }

  return result;
}

unint64_t sub_25BC8D2C8()
{
  result = qword_2815501F0;
  if (!qword_2815501F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501F0);
  }

  return result;
}

unint64_t sub_25BC8D320()
{
  result = qword_2815501D8;
  if (!qword_2815501D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501D8);
  }

  return result;
}

unint64_t sub_25BC8D378()
{
  result = qword_2815501E0;
  if (!qword_2815501E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501E0);
  }

  return result;
}

unint64_t sub_25BC8D3D0()
{
  result = qword_281550290;
  if (!qword_281550290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550290);
  }

  return result;
}

unint64_t sub_25BC8D428()
{
  result = qword_281550298;
  if (!qword_281550298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550298);
  }

  return result;
}

unint64_t sub_25BC8D480()
{
  result = qword_2815502A0;
  if (!qword_2815502A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815502A0);
  }

  return result;
}

unint64_t sub_25BC8D4D8()
{
  result = qword_2815502A8;
  if (!qword_2815502A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815502A8);
  }

  return result;
}

void sub_25BC8D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v28 = OUTLINED_FUNCTION_6_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v99 = v31 - v32;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v98 = v34;
  OUTLINED_FUNCTION_7();
  v35 = sub_25BCB54EC();
  v36 = OUTLINED_FUNCTION_2(v35);
  v97 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_0();
  v101 = v40 - v41;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_1();
  v102 = v43;
  OUTLINED_FUNCTION_7();
  v44 = sub_25BCB50EC();
  v45 = OUTLINED_FUNCTION_2(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v53 = *(v20 + 40);
  v54 = sub_25BAC4018();
  if (sub_25BB3EE04(v54, v26))
  {
    v56 = v55;
    v94 = v21;
    *v52 = 0;
    *(v52 + 8) = 0;
    v57 = v47;
    v58 = 1;
    *(v52 + 16) = 1;
    *(v52 + 24) = vdupq_n_s64(1uLL);
    v59 = *MEMORY[0x277D82E18];
    v95 = v57;
    v96 = v44;
    (*(v57 + 104))(v52, v59, v44);
    v60 = *(v24 + 96);
    if (*(v60 + 16) >= 2uLL)
    {
      v58 = *(v60 + 32);
    }

    OUTLINED_FUNCTION_18_46();
    a10 = v60;
    ObjectType = swift_getObjectType();
    v62 = *(v56 + 8);
    sub_25BCB617C();
    v100 = ObjectType;
    v62(&v103, ObjectType, v56);
    sub_25BBC0130(&a10, &v103, 0);
    v92 = v94;
    v94 = v63;
    if (*(*(v63 + 16) + 16))
    {
      v64 = *(v63 + 16);
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    (*(v56 + 16))(&a10, v100, v56);
    v67 = *(a10 + 16);
    v93 = v58;
    if (!v67)
    {
    }

    OUTLINED_FUNCTION_5_0();

    v69 = v97;
    v68 = v98;
    v70 = *(v97 + 16);
    v70(v98, v101, v35);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v35);
    v74 = v99;
    v70(v99, v102, v35);
    OUTLINED_FUNCTION_5_1();
    v78 = __swift_storeEnumTagSinglePayload(v75, v76, v77, v35);
    v91[1] = v91;
    MEMORY[0x28223BE20](v78);
    v91[-8] = v52;
    OUTLINED_FUNCTION_7_61(v91);
    MEMORY[0x28223BE20](v79);
    v80 = v94;
    v91[-6] = v94;
    v91[-5] = &off_286D4DBE0;
    v91[-4] = v74;
    v91[-3] = sub_25BC8F728;
    v91[-2] = v81;

    OUTLINED_FUNCTION_39_0();
    v82 = v92;
    sub_25BC675C0(v83, &v91[-8], v84, v85);
    if (v82)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v68);
      v86 = *(v69 + 8);
      v86(v101, v35);
      v86(v102, v35);
      sub_25BB0EA20(v74);
      OUTLINED_FUNCTION_28_32();
      v87(v52);
    }

    else
    {

      sub_25BB0EA20(v68);
      v88 = *(v69 + 8);
      v88(v101, v35);
      v88(v102, v35);
      sub_25BB0EA20(v74);
      OUTLINED_FUNCTION_28_32();
      v89(v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v90 = OUTLINED_FUNCTION_31();
      *(v90 + 16) = xmmword_25BCBAE50;
      *(v90 + 32) = v80;
      *(v90 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25BB0E2EC();
    v65 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5D70, v65, v66);
  }

  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BC8DA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v138 = v21;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_23_37();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_1();
  v139 = v37;
  OUTLINED_FUNCTION_7();
  v38 = sub_25BCB54EC();
  v39 = OUTLINED_FUNCTION_2(v38);
  v144 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_0();
  v142 = (v43 - v44);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v45);
  v146 = v131 - v46;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v47);
  v49 = v131 - v48;
  v50 = sub_25BCB50EC();
  v51 = OUTLINED_FUNCTION_2(v50);
  v143 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1();
  v57 = v56 - v55;
  v58 = v20[11].n128_u64[0];
  v59 = sub_25BAC4018();
  v60 = sub_25BB3EE04(v59, v27);
  v141 = v61;
  if (!v60)
  {
    goto LABEL_13;
  }

  v140 = v60;
  v145 = v49;
  v62 = v25[2].n128_u64[1];
  v63 = sub_25BAC4018();
  v64 = sub_25BB3EE04(v63, v27);
  if (!v64)
  {
    swift_unknownObjectRelease();
LABEL_13:
    sub_25BB0E2EC();
    v96 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5D80, v96, v97);
    goto LABEL_16;
  }

  v66 = v64;
  v67 = v65;
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = 1;
  v136 = 1;
  *(v57 + 24) = vdupq_n_s64(1uLL);
  v68 = *MEMORY[0x277D82E18];
  v69 = *(v143 + 104);
  v134 = v50;
  v69(v57, v68, v50);
  OUTLINED_FUNCTION_29_33(v25[3], v25[4]);
  v70 = v25[5].n128_u64[0];
  OUTLINED_FUNCTION_26_37(v25[5].n128_i64[1]);
  v71 = v25[6].n128_u64[0];
  ObjectType = swift_getObjectType();
  if (sub_25BC5D23C(ObjectType, v67) > 1)
  {
    v73 = *(v67 + 16);
    v74 = OUTLINED_FUNCTION_12_49();
    v75(v74);
    if (!*(a10 + 16))
    {
      OUTLINED_FUNCTION_0_25();
      OUTLINED_FUNCTION_5_2();
    }

    v136 = *(a10 + 32);
  }

  v133 = v57;
  v135 = v34;
  v137 = v22;
  type metadata accessor for NativeTensorStorage();
  v147 = v71;
  v76 = *(v67 + 8);
  sub_25BCB617C();
  v77 = OUTLINED_FUNCTION_12_49();
  v76(v77);
  v78 = OUTLINED_FUNCTION_17_49();
  v79 = v138;
  sub_25BBC0130(v78, v80, v81);
  v138 = v82;
  v132 = v79;
  v83 = swift_getObjectType();
  v84 = OUTLINED_FUNCTION_15_50(v83, v141);
  v85(v84);
  OUTLINED_FUNCTION_48();
  if (!v86)
  {
  }

  v87 = v139;
  v88 = v144;
  OUTLINED_FUNCTION_5_0();

  v89 = *(v67 + 16);
  v90 = OUTLINED_FUNCTION_12_49();
  v91(v90);
  OUTLINED_FUNCTION_48();
  v92 = v137;
  if (!v93)
  {
  }

  v94 = v138;
  OUTLINED_FUNCTION_5_0();

  v95 = *(*(v94 + 16) + 16);
  v131[0] = v66;
  if (v95)
  {
    sub_25BCB617C();
  }

  v98 = v142;
  OUTLINED_FUNCTION_5_0();

  v99 = *(v88 + 16);
  v100 = v145;
  v99(v87, v145, v38);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v38);
  v99(v92, v146, v38);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v38);
  v107 = v135;
  v99(v135, v98, v38);
  OUTLINED_FUNCTION_5_1();
  v111 = __swift_storeEnumTagSinglePayload(v108, v109, v110, v38);
  v139 = v131;
  MEMORY[0x28223BE20](v111);
  v112 = v133;
  v131[-10] = v100;
  v131[-9] = v112;
  OUTLINED_FUNCTION_4_70(v131);
  *(v113 - 16) = v136;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_16_52();
  *(v115 - 64) = v100;
  *(v115 - 56) = v67;
  *(v115 - 48) = v92;
  v116 = v138;
  *(v115 - 40) = v138;
  *(v115 - 32) = &off_286D4DBE0;
  *(v115 - 24) = v107;
  *(v115 - 16) = sub_25BC8F740;
  *(v115 - 8) = v117;

  OUTLINED_FUNCTION_39_0();
  v118 = v79;
  v119 = v132;
  sub_25BC675C0(v120, v118, v121, &v148);
  if (v119)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_117(&a18);
    sub_25BB0EA20(v87);
    v122 = *(v144 + 8);
    v122(v142, v38);
    v122(v146, v38);
    sub_25BB0EA20(v107);
    sub_25BB0EA20(v137);
    v123 = OUTLINED_FUNCTION_20_38();
    (v122)(v123);
    v124 = OUTLINED_FUNCTION_14_47();
    v125(v124);
  }

  else
  {

    OUTLINED_FUNCTION_117(&a18);
    sub_25BB0EA20(v87);
    v126 = *(v144 + 8);
    v126(v142, v38);
    v126(v146, v38);
    sub_25BB0EA20(v107);
    sub_25BB0EA20(v137);
    v127 = OUTLINED_FUNCTION_20_38();
    (v126)(v127);
    v128 = OUTLINED_FUNCTION_14_47();
    v129(v128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v130 = OUTLINED_FUNCTION_31();
    *(v130 + 16) = xmmword_25BCBAE50;
    *(v130 + 32) = v116;
    *(v130 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_16:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BC8E1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v107 = v21;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v28 = OUTLINED_FUNCTION_6_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_1();
  v111 = v35;
  OUTLINED_FUNCTION_7();
  v36 = sub_25BCB54EC();
  v37 = OUTLINED_FUNCTION_2(v36);
  v108 = v38;
  v109 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_0();
  v43 = v41 - v42;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_4_1();
  v112 = v45;
  OUTLINED_FUNCTION_7();
  v46 = sub_25BCB50EC();
  v47 = OUTLINED_FUNCTION_2(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1();
  v54 = (v53 - v52);
  v55 = *(v20 + 40);
  v56 = sub_25BAC4018();
  v57 = sub_25BB3EE04(v56, v26);
  if (v57)
  {
    v59 = v58;
    v60 = v57;
    *v54 = *(v24 + 192);
    v61 = *MEMORY[0x277D82E20];
    v104 = v49;
    (*(v49 + 104))(v54, v61, v46);
    v62 = *(v24 + 96);
    v63 = *(v62 + 16);
    v110 = v54;
    v105 = v46;
    v106 = v33;
    if (v63 < 2)
    {
      v64 = 1;
    }

    else
    {
      v64 = *(v62 + 32);
    }

    v102 = v64;
    v67 = v111;
    v68 = v43;
    OUTLINED_FUNCTION_18_46();
    a10 = v62;
    ObjectType = swift_getObjectType();
    v70 = *(v59 + 8);
    sub_25BCB617C();
    v111 = v60;
    v70(&v113, ObjectType, v59);
    sub_25BBC0130(&a10, &v113, 0);
    v72 = v71;
    v101 = v107;
    if (*(*(v71 + 16) + 16))
    {
      v73 = *(v71 + 16);
      sub_25BCB617C();
    }

    v74 = v109;
    v75 = v67;
    OUTLINED_FUNCTION_5_0();

    (*(v59 + 16))(&a10, ObjectType, v59);
    v76 = *(a10 + 16);
    v107 = v72;
    v103 = ObjectType;
    if (!v76)
    {
    }

    OUTLINED_FUNCTION_5_0();

    v77 = v108;
    v78 = *(v108 + 16);
    v78(v67, v68, v109);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v109);
    v82 = v106;
    v109 = v68;
    v83 = v112;
    v78(v106, v112, v74);
    OUTLINED_FUNCTION_5_1();
    v87 = __swift_storeEnumTagSinglePayload(v84, v85, v86, v74);
    MEMORY[0x28223BE20](v87);
    *&v100[-64] = v110;
    OUTLINED_FUNCTION_7_61(v100);
    MEMORY[0x28223BE20](v88);
    v89 = v107;
    *&v100[-48] = v107;
    *&v100[-40] = &off_286D4DBE0;
    *&v100[-32] = v82;
    *&v100[-24] = sub_25BC8F7F8;
    *&v100[-16] = v90;

    OUTLINED_FUNCTION_39_0();
    v91 = v101;
    sub_25BC675C0(v92, &v100[-64], v93, v94);
    if (v91)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v75);
      v95 = *(v77 + 8);
      v95(v109, v74);
      v95(v83, v74);
      sub_25BB0EA20(v82);
      OUTLINED_FUNCTION_28_32();
      v96(v110);
    }

    else
    {

      sub_25BB0EA20(v75);
      v97 = *(v77 + 8);
      v97(v109, v74);
      v97(v83, v74);
      sub_25BB0EA20(v82);
      OUTLINED_FUNCTION_28_32();
      v98(v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v99 = OUTLINED_FUNCTION_31();
      *(v99 + 16) = xmmword_25BCBAE50;
      *(v99 + 32) = v89;
      *(v99 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25BB0E2EC();
    v65 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5D90, v65, v66);
  }

  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BC8E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17_1();
  v13 = v10;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v17 = OUTLINED_FUNCTION_6_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_37();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_1();
  v121 = v25;
  OUTLINED_FUNCTION_7();
  v26 = sub_25BCB54EC();
  v27 = OUTLINED_FUNCTION_2(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v124 = (v32 - v33);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v34);
  v128 = v114 - v35;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v36);
  v38 = v114 - v37;
  v39 = sub_25BCB50EC();
  v40 = OUTLINED_FUNCTION_2(v39);
  v125 = v41;
  v126 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v129 = (v45 - v44);
  v46 = v10[11].n128_u64[0];
  v47 = sub_25BAC4018();
  v48 = sub_25BB3EE04(v47, v15);
  v123 = v49;
  if (!v48)
  {
    goto LABEL_7;
  }

  v120 = v11;
  v122 = v48;
  v127 = v38;
  v50 = v13[2].n128_u64[1];
  v51 = sub_25BAC4018();
  v52 = sub_25BB3EE04(v51, v15);
  if (!v52)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_25BB0E2EC();
    v64 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5DA0, v64, v65);
    goto LABEL_17;
  }

  v54 = v52;
  v55 = v53;
  v117 = v29;
  *v129 = v13[11].n128_u8[8];
  v56 = *MEMORY[0x277D82E20];
  (*(v125 + 104))();
  OUTLINED_FUNCTION_29_33(v13[3], v13[4]);
  v57 = v13[5].n128_u64[0];
  OUTLINED_FUNCTION_26_37(v13[5].n128_i64[1]);
  v58 = v13[6].n128_u64[0];
  ObjectType = swift_getObjectType();
  v60 = sub_25BC5D23C(ObjectType, v55);
  v119 = v12;
  v118 = v22;
  if (v60 <= 1)
  {
    v116 = 1;
  }

  else
  {
    v61 = *(v55 + 16);
    v62 = OUTLINED_FUNCTION_27_35();
    v63(v62);
    if (!*(a10 + 16))
    {
      OUTLINED_FUNCTION_0_25();
      OUTLINED_FUNCTION_5_2();
    }

    v116 = *(a10 + 32);
  }

  type metadata accessor for NativeTensorStorage();
  v130[0] = v58;
  v66 = *(v55 + 8);
  sub_25BCB617C();
  v67 = OUTLINED_FUNCTION_27_35();
  v66(v67);
  v68 = OUTLINED_FUNCTION_17_49();
  v69 = v120;
  sub_25BBC0130(v68, v70, v71);
  v73 = v72;
  v115 = v69;
  v74 = swift_getObjectType();
  v75 = OUTLINED_FUNCTION_15_50(v74, v123);
  v76(v75);
  OUTLINED_FUNCTION_48();
  if (!v77)
  {
  }

  v78 = v117;
  OUTLINED_FUNCTION_5_0();

  v79 = *(v55 + 16);
  v117 = v55;
  v79(v130, ObjectType, v55);
  OUTLINED_FUNCTION_48();
  v80 = v119;
  v81 = v118;
  if (!v82)
  {
  }

  OUTLINED_FUNCTION_5_0();

  v83 = *(*(v73 + 16) + 16);
  v120 = v73;
  v114[2] = v54;
  if (v83)
  {
    sub_25BCB617C();
  }

  v84 = v124;
  OUTLINED_FUNCTION_5_0();

  v85 = *(v78 + 16);
  v86 = v121;
  v87 = v127;
  v85(v121, v127, v26);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v26);
  v85(v80, v128, v26);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v26);
  v85(v81, v84, v26);
  OUTLINED_FUNCTION_5_1();
  v97 = __swift_storeEnumTagSinglePayload(v94, v95, v96, v26);
  v114[1] = v114;
  MEMORY[0x28223BE20](v97);
  v98 = v129;
  v114[-10] = v87;
  v114[-9] = v98;
  OUTLINED_FUNCTION_4_70(v114);
  *(v99 - 16) = v116;
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_16_52();
  v101 = v117;
  *(v102 - 64) = v87;
  *(v102 - 56) = v101;
  v103 = v120;
  *(v102 - 48) = v80;
  *(v102 - 40) = v103;
  *(v102 - 32) = &off_286D4DBE0;
  *(v102 - 24) = v81;
  *(v102 - 16) = sub_25BC8F810;
  *(v102 - 8) = v104;

  OUTLINED_FUNCTION_39_0();
  v105 = v69;
  v106 = v115;
  sub_25BC675C0(v107, v105, v108, &v132);
  if (v106)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_117(v131);
    sub_25BB0EA20(v86);
    v109 = *(v78 + 8);
    v109(v124, v26);
    v110 = OUTLINED_FUNCTION_20_38();
    (v109)(v110);
    sub_25BB0EA20(v81);
    sub_25BB0EA20(v80);
    v109(v127, v26);
    (*(v125 + 8))(v129, v126);
  }

  else
  {

    OUTLINED_FUNCTION_117(v131);
    sub_25BB0EA20(v86);
    v111 = *(v78 + 8);
    v111(v124, v26);
    v112 = OUTLINED_FUNCTION_20_38();
    (v111)(v112);
    sub_25BB0EA20(v81);
    sub_25BB0EA20(v80);
    v111(v127, v26);
    (*(v125 + 8))(v129, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v113 = OUTLINED_FUNCTION_31();
    *(v113 + 16) = xmmword_25BCBAE50;
    *(v113 + 32) = v103;
    *(v113 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_17:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC8EE94(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EED8(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB4508, type metadata accessor for Average2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EF1C(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB44F0, type metadata accessor for Max2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EF60(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB44F8, type metadata accessor for Max2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EFA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BC8EFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a8;
  v39 = a7;
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v28 = a3;
  v29 = a1;
  v31 = a2;
  v30 = a9;
  v32 = sub_25BCB531C();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25BCB530C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BCB50EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = sub_25BCB51AC();
  (*(v19 + 16))(v22, v28, v18);
  sub_25BB45648(v38);
  memcpy(v37, v38, sizeof(v37));
  (*(v14 + 104))(v17, *MEMORY[0x277D82F78], v13);
  v23 = v32;
  v24 = v33;
  *v12 = v30;
  v12[1] = v24;
  (*(v9 + 104))(v12, *MEMORY[0x277D82F80], v23);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB518C())
  {
    sub_25BCB519C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v26 = xmmword_25BCD5DB0;
    *(v26 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BC8F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v45 = a7;
  v48 = a6;
  v38 = a5;
  v36 = a4;
  v34[2] = a3;
  v42 = a2;
  v43 = a9;
  v41 = a10;
  v39 = a11;
  v40 = sub_25BCB531C();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_25BCB530C();
  v16 = *(v37 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25BCB50EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25BCB54EC();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v34[1] = a1;
  v28 = *(a1 + 144);
  (*(v29 + 16))(v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v26);
  sub_25BCB6D8C();
  sub_25BCB51AC();
  (*(v20 + 16))(v23, v38, v19);
  sub_25BB45648(v47);
  memcpy(v46, v47, sizeof(v46));
  (*(v16 + 104))(v35, *MEMORY[0x277D82F78], v37);
  v30 = v40;
  v31 = v41;
  *v15 = v39;
  v15[1] = v31;
  (*(v12 + 104))(v15, *MEMORY[0x277D82F80], v30);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB518C())
  {
    sub_25BCB517C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v33 = xmmword_25BCD5DC0;
    *(v33 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t BFloat16.init<A>(_:)()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_109();
  v8();
  sub_25BB18A50();
  sub_25BCB60BC();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_9_23();
  result = v11(v10);
  *v1 = v13;
  return result;
}

{
  OUTLINED_FUNCTION_30_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = *(v4 + 16);
  OUTLINED_FUNCTION_109();
  v12();
  if (sub_25BCB6F9C() < 65)
  {
    v17 = sub_25BCB6FAC();
    v18 = sub_25BCB6F8C();
    v19 = *(v4 + 8);
    v20 = OUTLINED_FUNCTION_9_23();
    v19(v20);
    result = (v19)(v10, v0);
    if (v17)
    {
      v16 = v18;
    }

    else
    {
      v16 = v18;
    }
  }

  else
  {
    sub_25BB18A50();
    sub_25BBF2100();
    sub_25BCB60DC();
    v13 = *(v4 + 8);
    v14 = OUTLINED_FUNCTION_9_23();
    v13(v14);
    result = (v13)(v10, v0);
    HIWORD(v16) = v21;
  }

  *v2 = HIWORD(v16);
  return result;
}

ValueMetadata *sub_25BC8FACC()
{
  v1 = MEMORY[0x277D84900];
  switch(*v0)
  {
    case 1:
      v1 = MEMORY[0x277D84958];
      break;
    case 2:
      v1 = MEMORY[0x277D849A8];
      break;
    case 3:
      v1 = MEMORY[0x277D83B88];
      break;
    case 4:
      v1 = MEMORY[0x277D84B78];
      break;
    case 5:
      v1 = MEMORY[0x277D84C58];
      break;
    case 6:
      v1 = MEMORY[0x277D84CC0];
      break;
    case 7:
      v1 = MEMORY[0x277D84D38];
      break;
    case 8:
      v1 = MEMORY[0x277D84DC8];
      break;
    case 9:
      v1 = &type metadata for BFloat16;
      sub_25BB18AFC();
      break;
    case 0xA:
      v1 = MEMORY[0x277D83A90];
      break;
    case 0xB:
      v1 = MEMORY[0x277D839F8];
      break;
    case 0xC:
      v1 = MEMORY[0x277D839B0];
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t static TensorScalarKind.allCases.getter()
{
  OUTLINED_FUNCTION_11_54();
  v0 = 0;
  v1 = v13;
  v2 = *(v13 + 16);
  do
  {
    v3 = byte_286D46448[v0 + 32];
    if (v2 >= *(v13 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_50();
    }

    ++v0;
    *(v13 + 16) = v2 + 1;
    *(v13 + v2++ + 32) = v3;
  }

  while (v0 != 4);
  OUTLINED_FUNCTION_11_54();
  v4 = 0;
  v5 = v13;
  v6 = *(v13 + 16);
  do
  {
    v7 = byte_286D46470[v4 + 32];
    v14 = v5;
    if (v6 >= *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_50();
      v5 = v14;
    }

    ++v4;
    *(v5 + 16) = v6 + 1;
    *(v5 + v6++ + 32) = v7 | 0x40;
  }

  while (v4 != 4);
  sub_25BC0390C(v5);
  OUTLINED_FUNCTION_11_54();
  v8 = 0;
  v9 = v1;
  v10 = *(v1 + 16);
  do
  {
    v11 = byte_286D46498[v8 + 32];
    v15 = v9;
    if (v10 >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_50();
      v9 = v15;
    }

    ++v8;
    *(v9 + 16) = v10 + 1;
    *(v9 + v10++ + 32) = v11 | 0x80;
  }

  while (v8 != 4);
  sub_25BC0390C(v9);
  sub_25BC0390C(&unk_286D464C0);
  return v1;
}

ValueMetadata *TensorScalarKind.type.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x277D839B0];
  switch(v1 >> 6)
  {
    case 1:
      v1 &= 0x3Fu;
      v3 = off_279971E38[v1];
      v4 = qword_279971E18;
      goto LABEL_4;
    case 2:
      v2 = MEMORY[0x277D84DC8];
      v3 = &protocol witness table for Float16;
      switch(v1 & 0x3F)
      {
        case 1:
          v2 = &type metadata for BFloat16;
          v3 = sub_25BC933A0();
          break;
        case 2:
          v2 = MEMORY[0x277D83A90];
          v3 = &protocol witness table for Float;
          break;
        case 3:
          v2 = MEMORY[0x277D839F8];
          v3 = &protocol witness table for Double;
          break;
        default:
          goto LABEL_5;
      }

      goto LABEL_5;
    case 3:
      return v2;
    default:
      v3 = off_279971DF8[v1];
      v4 = qword_279971DD8;
LABEL_4:
      v2 = v4[v1];
LABEL_5:
      v5 = v3[1];
      return v2;
  }
}

uint64_t TensorSignedIntegerScalarKind.type.getter()
{
  v1 = *v0;
  result = qword_279971DD8[v1];
  v3 = off_279971DF8[v1];
  return result;
}

uint64_t TensorUnsignedIntegerScalarKind.type.getter()
{
  v1 = *v0;
  result = qword_279971E18[v1];
  v3 = off_279971E38[v1];
  return result;
}

ValueMetadata *TensorFloatingPointScalarKind.type.getter()
{
  v1 = MEMORY[0x277D84DC8];
  switch(*v0)
  {
    case 1:
      v1 = &type metadata for BFloat16;
      sub_25BC933A0();
      break;
    case 2:
      v1 = MEMORY[0x277D83A90];
      break;
    case 3:
      v1 = MEMORY[0x277D839F8];
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_25BC900BC@<X0>(uint64_t *a1@<X8>)
{
  result = static TensorScalarKind.allCases.getter();
  *a1 = result;
  return result;
}

BOOL TensorScalarKind.isCastable(to:)(unsigned __int8 *a1)
{
  v2 = *v1;
  switch(*a1 >> 6)
  {
    case 2:
      goto LABEL_4;
    case 3:
      result = v2 == 192;
      break;
    default:
      if ((v2 & 0xC0) == 0x80)
      {
        result = 0;
      }

      else
      {
LABEL_4:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t TensorScalarKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 12;
  switch(v1 >> 6)
  {
    case 1u:
      v2 = (v1 & 0x3F) + 4;
      break;
    case 2u:
      v2 = (v1 & 0x3F) + 8;
      break;
    case 3u:
      return v2;
    default:
      v2 = *v0;
      break;
  }

  return v2;
}

NeuralNetworks::TensorSignedIntegerScalarKind_optional __swiftcall TensorSignedIntegerScalarKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NeuralNetworks::TensorFloatingPointScalarKind_optional __swiftcall TensorFloatingPointScalarKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 8;
  if ((rawValue - 8) >= 4)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25BC90238@<X0>(uint64_t *a1@<X8>)
{
  result = TensorScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC90318@<X0>(uint64_t *a1@<X8>)
{
  result = TensorSignedIntegerScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC90408@<X0>(uint64_t *a1@<X8>)
{
  result = TensorUnsignedIntegerScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC90510@<X0>(uint64_t *a1@<X8>)
{
  result = TensorFloatingPointScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

void static TensorScalar.tensorScalarKind.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_37(a1, a2);
  v3();
  sub_25BC9068C(v2, &v4);
}

uint64_t sub_25BC906C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v35 = a4;
  v9 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_25BCB6FAC() & 1) != 0 && sub_25BCB6F9C() >= 9)
  {
    v36 = 0x80;
    if (sub_25BCB6FAC())
    {
      if (sub_25BCB6F9C() >= 8)
      {
        sub_25BC93FE0();
        sub_25BCB6F5C();
        v17 = *(*(a3 + 32) + 8);
        v18 = sub_25BCB629C();
        result = (*(v12 + 8))(v16, a2);
        if (v18)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v34 = a5;
    v20 = sub_25BCB6FAC();
    v21 = sub_25BCB6F9C();
    if (v20)
    {
      if (v21 <= 8)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        v24 = *(*(a3 + 32) + 8);
        v25 = sub_25BCB629C();
        v26 = *(v12 + 8);
        result = v26(v16, a2);
        if (v25)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        (*(v12 + 16))(v16, a1, a2);
        sub_25BCB6F8C();
        v26(v16, a2);
        a5 = v34;
      }

      else
      {
        sub_25BC93FE0();
        sub_25BCB6F5C();
        v22 = *(*(a3 + 32) + 8);
        v23 = sub_25BCB629C();
        result = (*(v12 + 8))(v16, a2);
        a5 = v34;
        if (v23)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_15;
    }

    a5 = v34;
    if (v21 < 8)
    {
LABEL_12:
      (*(v12 + 16))(v16, a1, a2);
      sub_25BCB6F8C();
      (*(v12 + 8))(v16, a2);
    }
  }

LABEL_15:
  if (sub_25BCB6F9C() <= 8)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v27 = a5;
    v37 = 127;
    v28 = sub_25BCB6FAC();
    v29 = sub_25BCB6F9C();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 9)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_25BC93FE0();
    sub_25BCB6F5C();
    v30 = *(*(a3 + 32) + 8);
    v31 = sub_25BCB629C();
    (*(v12 + 8))(v16, a2);
    a5 = v27;
    if (v31)
    {
      __break(1u);
LABEL_20:
      if (sub_25BCB6F9C() == 8 && (sub_25BCB6FAC() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v29 >= 8)
  {
    goto LABEL_18;
  }

LABEL_24:
  (*(v12 + 16))(v16, a1, a2);
  sub_25BCB6F8C();
  (*(v12 + 8))(v16, a2);
  a5 = v27;
LABEL_25:
  v32 = sub_25BCB6F8C();
  result = (*(v12 + 8))(a1, a2);
  *a5 = v32;
  return result;
}

uint64_t sub_25BC90BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _WORD *a5@<X8>)
{
  v35 = a4;
  v9 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_25BCB6FAC() & 1) != 0 && sub_25BCB6F9C() >= 17)
  {
    v36 = 0x8000;
    if (sub_25BCB6FAC())
    {
      if (sub_25BCB6F9C() >= 16)
      {
        sub_25BC93F8C();
        sub_25BCB6F5C();
        v17 = *(*(a3 + 32) + 8);
        v18 = sub_25BCB629C();
        result = (*(v12 + 8))(v16, a2);
        if (v18)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v34 = a5;
    v20 = sub_25BCB6FAC();
    v21 = sub_25BCB6F9C();
    if (v20)
    {
      if (v21 <= 16)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        v24 = *(*(a3 + 32) + 8);
        v25 = sub_25BCB629C();
        v26 = *(v12 + 8);
        result = v26(v16, a2);
        if (v25)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        (*(v12 + 16))(v16, a1, a2);
        sub_25BCB6F8C();
        v26(v16, a2);
        a5 = v34;
      }

      else
      {
        sub_25BC93F8C();
        sub_25BCB6F5C();
        v22 = *(*(a3 + 32) + 8);
        v23 = sub_25BCB629C();
        result = (*(v12 + 8))(v16, a2);
        a5 = v34;
        if (v23)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_15;
    }

    a5 = v34;
    if (v21 < 16)
    {
LABEL_12:
      (*(v12 + 16))(v16, a1, a2);
      sub_25BCB6F8C();
      (*(v12 + 8))(v16, a2);
    }
  }

LABEL_15:
  if (sub_25BCB6F9C() <= 16)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v27 = a5;
    v37 = 0x7FFF;
    v28 = sub_25BCB6FAC();
    v29 = sub_25BCB6F9C();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 17)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_25BC93F8C();
    sub_25BCB6F5C();
    v30 = *(*(a3 + 32) + 8);
    v31 = sub_25BCB629C();
    (*(v12 + 8))(v16, a2);
    a5 = v27;
    if (v31)
    {
      __break(1u);
LABEL_20:
      if (sub_25BCB6F9C() == 16 && (sub_25BCB6FAC() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v29 >= 16)
  {
    goto LABEL_18;
  }

LABEL_24:
  (*(v12 + 16))(v16, a1, a2);
  sub_25BCB6F8C();
  (*(v12 + 8))(v16, a2);
  a5 = v27;
LABEL_25:
  v32 = sub_25BCB6F8C();
  result = (*(v12 + 8))(a1, a2);
  *a5 = v32;
  return result;
}

uint64_t sub_25BC91138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v35 = a4;
  v9 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_25BCB6FAC() & 1) != 0 && sub_25BCB6F9C() >= 33)
  {
    v36 = 0x80000000;
    if (sub_25BCB6FAC())
    {
      if (sub_25BCB6F9C() >= 32)
      {
        sub_25BBF2FDC();
        sub_25BCB6F5C();
        v17 = *(*(a3 + 32) + 8);
        v18 = sub_25BCB629C();
        result = (*(v12 + 8))(v16, a2);
        if (v18)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v34 = a5;
    v20 = sub_25BCB6FAC();
    v21 = sub_25BCB6F9C();
    if (v20)
    {
      if (v21 <= 32)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        v24 = *(*(a3 + 32) + 8);
        v25 = sub_25BCB629C();
        v26 = *(v12 + 8);
        result = v26(v16, a2);
        if (v25)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        (*(v12 + 16))(v16, a1, a2);
        sub_25BCB6F8C();
        v26(v16, a2);
        a5 = v34;
      }

      else
      {
        sub_25BBF2FDC();
        sub_25BCB6F5C();
        v22 = *(*(a3 + 32) + 8);
        v23 = sub_25BCB629C();
        result = (*(v12 + 8))(v16, a2);
        a5 = v34;
        if (v23)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_15;
    }

    a5 = v34;
    if (v21 < 32)
    {
LABEL_12:
      (*(v12 + 16))(v16, a1, a2);
      sub_25BCB6F8C();
      (*(v12 + 8))(v16, a2);
    }
  }

LABEL_15:
  if (sub_25BCB6F9C() <= 32)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v27 = a5;
    v37 = 0x7FFFFFFF;
    v28 = sub_25BCB6FAC();
    v29 = sub_25BCB6F9C();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 33)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_25BBF2FDC();
    sub_25BCB6F5C();
    v30 = *(*(a3 + 32) + 8);
    v31 = sub_25BCB629C();
    (*(v12 + 8))(v16, a2);
    a5 = v27;
    if (v31)
    {
      __break(1u);
LABEL_20:
      if (sub_25BCB6F9C() == 32 && (sub_25BCB6FAC() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v29 >= 32)
  {
    goto LABEL_18;
  }

LABEL_24:
  (*(v12 + 16))(v16, a1, a2);
  sub_25BCB6F8C();
  (*(v12 + 8))(v16, a2);
  a5 = v27;
LABEL_25:
  v32 = sub_25BCB6F8C();
  result = (*(v12 + 8))(a1, a2);
  *a5 = v32;
  return result;
}

uint64_t sub_25BC9168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  v11 = *(*(v10 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_38(AssociatedTypeWitness);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_102_0();
  if (sub_25BCB6FAC())
  {
    OUTLINED_FUNCTION_1_77();
    if (sub_25BCB6F9C() >= 65)
    {
      OUTLINED_FUNCTION_102_0();
      if (sub_25BCB6FAC())
      {
        OUTLINED_FUNCTION_1_77();
        if (sub_25BCB6F9C() >= 64)
        {
          a7();
          OUTLINED_FUNCTION_5_63();
          OUTLINED_FUNCTION_0_93();
          v21 = sub_25BCB629C();
          v22 = OUTLINED_FUNCTION_2_78();
          result = v23(v22);
          if (v21)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v54 = v9;
      OUTLINED_FUNCTION_102_0();
      v25 = sub_25BCB6FAC();
      OUTLINED_FUNCTION_1_77();
      v26 = sub_25BCB6F9C();
      if (v25)
      {
        if (v26 <= 64)
        {
          OUTLINED_FUNCTION_18_47();
          OUTLINED_FUNCTION_17_50();
          OUTLINED_FUNCTION_16_53();
          OUTLINED_FUNCTION_0_93();
          v34 = sub_25BCB629C();
          v35 = *(v17 + 8);
          v36 = OUTLINED_FUNCTION_194();
          result = v35(v36);
          if (v34)
          {
LABEL_26:
            __break(1u);
            return result;
          }

          v37 = OUTLINED_FUNCTION_4_71(v17);
          v38(v37);
          OUTLINED_FUNCTION_102_0();
          sub_25BCB6F8C();
          v39 = OUTLINED_FUNCTION_194();
          v35(v39);
          v9 = v54;
        }

        else
        {
          a7();
          OUTLINED_FUNCTION_5_63();
          OUTLINED_FUNCTION_0_93();
          v27 = sub_25BCB629C();
          v28 = OUTLINED_FUNCTION_2_78();
          result = v29(v28);
          v9 = v54;
          if (v27)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_15;
      }

      v9 = v54;
      if (v26 < 64)
      {
LABEL_12:
        v30 = OUTLINED_FUNCTION_4_71(v17);
        v31(v30);
        OUTLINED_FUNCTION_102_0();
        sub_25BCB6F8C();
        v32 = OUTLINED_FUNCTION_2_78();
        v33(v32);
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_1_77();
  if (sub_25BCB6F9C() <= 64)
  {
    goto LABEL_20;
  }

  while (1)
  {
    OUTLINED_FUNCTION_102_0();
    v40 = sub_25BCB6FAC();
    OUTLINED_FUNCTION_1_77();
    v41 = sub_25BCB6F9C();
    if ((v40 & 1) == 0)
    {
      break;
    }

    if (v41 < 65)
    {
      goto LABEL_24;
    }

LABEL_18:
    a7();
    OUTLINED_FUNCTION_5_63();
    v42 = *(*(a4 + 32) + 8);
    OUTLINED_FUNCTION_109();
    v43 = sub_25BCB629C();
    v44 = OUTLINED_FUNCTION_2_78();
    v45(v44);
    if (v43)
    {
      __break(1u);
LABEL_20:
      OUTLINED_FUNCTION_1_77();
      if (sub_25BCB6F9C() == 64)
      {
        OUTLINED_FUNCTION_102_0();
        if ((sub_25BCB6FAC() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_25;
  }

  if (v41 >= 64)
  {
    goto LABEL_18;
  }

LABEL_24:
  v46 = OUTLINED_FUNCTION_4_71(v17);
  v47(v46);
  OUTLINED_FUNCTION_102_0();
  sub_25BCB6F8C();
  v48 = OUTLINED_FUNCTION_2_78();
  v49(v48);
LABEL_25:
  OUTLINED_FUNCTION_1_77();
  v50 = sub_25BCB6F8C();
  v51 = *(v17 + 8);
  v52 = OUTLINED_FUNCTION_9_23();
  result = v53(v52);
  *v9 = v50;
  return result;
}

uint64_t sub_25BC91A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v28[1] = a4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (sub_25BCB6FAC() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_25BCB790C(), sub_25BCB788C(), v17 = *(*(a3 + 32) + 8), v18 = sub_25BCB62AC(), result = (*(v9 + 8))(v12, a2), (v18))
  {
    v29 = a5;
    if (sub_25BCB6F9C() >= 8)
    {
      v30 = -1;
      v20 = sub_25BCB6FAC();
      v21 = sub_25BCB6F9C();
      if (v20)
      {
        if (v21 <= 8)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          v22 = *(*(a3 + 32) + 8);
          v23 = sub_25BCB628C();
          v24 = *(v9 + 8);
          v24(v12, a2);
          if (v23)
          {
            (*(v9 + 16))(v12, a1, a2);
            sub_25BCB6F8C();
            v24(v12, a2);
          }

          goto LABEL_12;
        }
      }

      else if (v21 < 9)
      {
LABEL_11:
        (*(v9 + 16))(v12, a1, a2);
        sub_25BCB6F8C();
        (*(v9 + 8))(v12, a2);
        goto LABEL_12;
      }

      sub_25BC93E90();
      sub_25BCB6F5C();
      v25 = *(*(a3 + 32) + 8);
      v26 = sub_25BCB629C();
      (*(v9 + 8))(v12, a2);
      if (v26)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v27 = sub_25BCB6F8C();
    result = (*(v9 + 8))(a1, a2);
    *v29 = v27;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC91E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _WORD *a5@<X8>)
{
  v28[1] = a4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (sub_25BCB6FAC() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_25BCB790C(), sub_25BCB788C(), v17 = *(*(a3 + 32) + 8), v18 = sub_25BCB62AC(), result = (*(v9 + 8))(v12, a2), (v18))
  {
    v29 = a5;
    if (sub_25BCB6F9C() >= 16)
    {
      v30 = -1;
      v20 = sub_25BCB6FAC();
      v21 = sub_25BCB6F9C();
      if (v20)
      {
        if (v21 <= 16)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          v22 = *(*(a3 + 32) + 8);
          v23 = sub_25BCB628C();
          v24 = *(v9 + 8);
          v24(v12, a2);
          if (v23)
          {
            (*(v9 + 16))(v12, a1, a2);
            sub_25BCB6F8C();
            v24(v12, a2);
          }

          goto LABEL_12;
        }
      }

      else if (v21 < 17)
      {
LABEL_11:
        (*(v9 + 16))(v12, a1, a2);
        sub_25BCB6F8C();
        (*(v9 + 8))(v12, a2);
        goto LABEL_12;
      }

      sub_25BC93E3C();
      sub_25BCB6F5C();
      v25 = *(*(a3 + 32) + 8);
      v26 = sub_25BCB629C();
      (*(v9 + 8))(v12, a2);
      if (v26)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v27 = sub_25BCB6F8C();
    result = (*(v9 + 8))(a1, a2);
    *v29 = v27;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v28[1] = a4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (sub_25BCB6FAC() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_25BCB790C(), sub_25BCB788C(), v17 = *(*(a3 + 32) + 8), v18 = sub_25BCB62AC(), result = (*(v9 + 8))(v12, a2), (v18))
  {
    v29 = a5;
    if (sub_25BCB6F9C() >= 32)
    {
      v30 = -1;
      v20 = sub_25BCB6FAC();
      v21 = sub_25BCB6F9C();
      if (v20)
      {
        if (v21 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          v22 = *(*(a3 + 32) + 8);
          v23 = sub_25BCB628C();
          v24 = *(v9 + 8);
          v24(v12, a2);
          if (v23)
          {
            (*(v9 + 16))(v12, a1, a2);
            sub_25BCB6F8C();
            v24(v12, a2);
          }

          goto LABEL_12;
        }
      }

      else if (v21 < 33)
      {
LABEL_11:
        (*(v9 + 16))(v12, a1, a2);
        sub_25BCB6F8C();
        (*(v9 + 8))(v12, a2);
        goto LABEL_12;
      }

      sub_25BC93DE8();
      sub_25BCB6F5C();
      v25 = *(*(a3 + 32) + 8);
      v26 = sub_25BCB629C();
      (*(v9 + 8))(v12, a2);
      if (v26)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v27 = sub_25BCB6F8C();
    result = (*(v9 + 8))(a1, a2);
    *v29 = v27;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC92680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v16 = *(*(v15 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_38(AssociatedTypeWitness);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_102_0();
  if (sub_25BCB6FAC() & 1) == 0 || (OUTLINED_FUNCTION_18_47(), OUTLINED_FUNCTION_17_50(), OUTLINED_FUNCTION_16_53(), OUTLINED_FUNCTION_0_93(), v21 = sub_25BCB62AC(), v22 = OUTLINED_FUNCTION_3_63(v11), result = v23(v22), (v21))
  {
    OUTLINED_FUNCTION_1_77();
    if (sub_25BCB6F9C() >= 64)
    {
      v45 = v9;
      OUTLINED_FUNCTION_102_0();
      v25 = sub_25BCB6FAC();
      OUTLINED_FUNCTION_1_77();
      v26 = sub_25BCB6F9C();
      if (v25)
      {
        if (v26 <= 64)
        {
          OUTLINED_FUNCTION_18_47();
          OUTLINED_FUNCTION_17_50();
          OUTLINED_FUNCTION_16_53();
          OUTLINED_FUNCTION_0_93();
          v27 = sub_25BCB628C();
          v28 = *(v11 + 8);
          v29 = OUTLINED_FUNCTION_194();
          v28(v29);
          if (v27)
          {
            v30 = OUTLINED_FUNCTION_4_71(v11);
            v31(v30);
            OUTLINED_FUNCTION_102_0();
            sub_25BCB6F8C();
            v32 = OUTLINED_FUNCTION_194();
            v28(v32);
          }

          goto LABEL_12;
        }
      }

      else if (v26 < 65)
      {
LABEL_11:
        v37 = OUTLINED_FUNCTION_4_71(v11);
        v38(v37);
        OUTLINED_FUNCTION_102_0();
        sub_25BCB6F8C();
        v39 = OUTLINED_FUNCTION_3_63(v11);
        v40(v39);
LABEL_12:
        v9 = v45;
        goto LABEL_13;
      }

      a7();
      OUTLINED_FUNCTION_5_63();
      v33 = *(*(a4 + 32) + 8);
      OUTLINED_FUNCTION_109();
      v34 = sub_25BCB629C();
      v35 = OUTLINED_FUNCTION_3_63(v11);
      v36(v35);
      v9 = v45;
      if (v34)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_13:
    OUTLINED_FUNCTION_1_77();
    v41 = sub_25BCB6F8C();
    v42 = *(v11 + 8);
    v43 = OUTLINED_FUNCTION_9_23();
    result = v44(v43);
    *v9 = v41;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static TensorFloatingPointScalar.tensorScalarKind.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_37(a1, a2);
  result = v3();
  *v2 = v5 | 0x80;
  return result;
}

uint64_t sub_25BC929E8()
{
  sub_25BB95A00();

  return sub_25BCB60BC();
}

uint64_t sub_25BC92A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, short float *a3@<X8>)
{
  if (sub_25BCB6F9C() < 65)
  {
    v8 = sub_25BCB6FAC();
    v9 = sub_25BCB6F8C();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (v8)
    {
      v7 = v9;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    sub_25BB95A00();
    sub_25BB95A54();
    sub_25BCB60DC();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    v7 = v10;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25BC92BCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC92C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC92BCC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC92C84(uint64_t a1)
{
  v2 = sub_25BC933F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC92CC0(uint64_t a1)
{
  v2 = sub_25BC933F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BFloat16.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B28, &qword_25BCD5E40);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC933F4();
  sub_25BCB7B6C();
  sub_25BCB77AC();
  return (*(v5 + 8))(v10, v3);
}

uint64_t BFloat16.init(from:)@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B38, &qword_25BCD5E48);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC933F4();
  sub_25BCB7B2C();
  if (!v2)
  {
    v14 = sub_25BCB76CC();
    (*(v7 + 8))(v12, v5);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25BC93024()
{
  sub_25BB18A50();

  return sub_25BCB60BC();
}

uint64_t sub_25BC93090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  if (sub_25BCB6F9C() < 65)
  {
    v8 = sub_25BCB6FAC();
    v9 = sub_25BCB6F8C();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (v8)
    {
      v7 = v9;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    sub_25BB18A50();
    sub_25BBF2100();
    sub_25BCB60DC();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    v7 = v10;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25BC931DC()
{
  sub_25BB675B0();

  return sub_25BCB60BC();
}

uint64_t sub_25BC93248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (sub_25BCB6F9C() < 65)
  {
    v8 = sub_25BCB6FAC();
    v9 = sub_25BCB6F8C();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (v8)
    {
      v7 = v9;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    sub_25BB675B0();
    sub_25BB67604();
    sub_25BCB60DC();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    v7 = v10;
  }

  *a3 = v7;
  return result;
}

unint64_t sub_25BC933A0()
{
  result = qword_27FBB7B20;
  if (!qword_27FBB7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B20);
  }

  return result;
}

unint64_t sub_25BC933F4()
{
  result = qword_27FBB7B30;
  if (!qword_27FBB7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B30);
  }

  return result;
}

unint64_t sub_25BC9344C()
{
  result = qword_27FBB7B40;
  if (!qword_27FBB7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B40);
  }

  return result;
}

unint64_t sub_25BC934D4()
{
  result = qword_27FBB7B58;
  if (!qword_27FBB7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B58);
  }

  return result;
}

unint64_t sub_25BC9355C()
{
  result = qword_27FBB7B70;
  if (!qword_27FBB7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B70);
  }

  return result;
}

unint64_t sub_25BC935E4()
{
  result = qword_27FBB7B88;
  if (!qword_27FBB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B88);
  }

  return result;
}

unint64_t sub_25BC93668(uint64_t a1)
{
  result = sub_25BB18AFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BC93690(uint64_t a1)
{
  *(a1 + 8) = sub_25BC936C0();
  result = sub_25BC93714();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25BC936C0()
{
  result = qword_27FBB7BA0;
  if (!qword_27FBB7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BA0);
  }

  return result;
}

unint64_t sub_25BC93714()
{
  result = qword_27FBB7BA8;
  if (!qword_27FBB7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BA8);
  }

  return result;
}

unint64_t sub_25BC9376C()
{
  result = qword_27FBB7BB0;
  if (!qword_27FBB7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TensorScalarKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3D)
  {
    if (a2 + 195 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 195) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 196;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3C)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for TensorScalarKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 195 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 195) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3C)
  {
    v6 = ((a2 - 61) >> 8) + 1;
    *result = a2 - 61;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BC9392C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 3) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_25BC93958(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 1) & 3 | 0xC0;
  }

  *result = v2;
  return result;
}

_BYTE *sub_25BC939A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of TensorFloatingPointScalar.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))();
}

{
  return (*(a6 + 24))();
}

uint64_t getEnumTagSinglePayload for BFloat16(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for BFloat16(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BFloat16.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BC93CE4()
{
  result = qword_27FBB7BB8;
  if (!qword_27FBB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BB8);
  }

  return result;
}

unint64_t sub_25BC93D3C()
{
  result = qword_27FBB7BC0;
  if (!qword_27FBB7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BC0);
  }

  return result;
}

unint64_t sub_25BC93D94()
{
  result = qword_27FBB7BC8;
  if (!qword_27FBB7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BC8);
  }

  return result;
}

unint64_t sub_25BC93DE8()
{
  result = qword_27FBB7BD0;
  if (!qword_27FBB7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BD0);
  }

  return result;
}

unint64_t sub_25BC93E3C()
{
  result = qword_27FBB7BD8;
  if (!qword_27FBB7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BD8);
  }

  return result;
}

unint64_t sub_25BC93E90()
{
  result = qword_27FBB7BE0;
  if (!qword_27FBB7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BE0);
  }

  return result;
}

unint64_t sub_25BC93EE4()
{
  result = qword_27FBB7BE8;
  if (!qword_27FBB7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BE8);
  }

  return result;
}

unint64_t sub_25BC93F38()
{
  result = qword_27FBB7BF0;
  if (!qword_27FBB7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BF0);
  }

  return result;
}

unint64_t sub_25BC93F8C()
{
  result = qword_27FBB7BF8;
  if (!qword_27FBB7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BF8);
  }

  return result;
}

unint64_t sub_25BC93FE0()
{
  result = qword_27FBB7C00;
  if (!qword_27FBB7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C00);
  }

  return result;
}

unint64_t sub_25BC94034()
{
  result = qword_27FBB7C08;
  if (!qword_27FBB7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C08);
  }

  return result;
}

unint64_t sub_25BC94088()
{
  result = qword_27FBB7C10;
  if (!qword_27FBB7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C10);
  }

  return result;
}

unint64_t sub_25BC940DC()
{
  result = qword_27FBB7C18;
  if (!qword_27FBB7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C18);
  }

  return result;
}

unint64_t sub_25BC94130()
{
  result = qword_27FBB7C20[0];
  if (!qword_27FBB7C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7C20);
  }

  return result;
}

unint64_t sub_25BC941CC(void *__src, void (*a2)(uint64_t *__return_ptr, _BYTE *))
{
  v8 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  a2(&v6, __dst);
  if (v2)
  {
    __break(1u);
  }

  __dst[0] = BYTE4(v6);
  v4 = *MEMORY[0x277D85DE8];
  return v6 | (BYTE4(v6) << 32);
}

uint64_t sub_25BC94270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeTensorStorage();
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(&v9, ObjectType, a2);
  (*(a2 + 8))(&v10, ObjectType, a2);
  v8 = v10;
  if (v10 - 1 > 0xA)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_25BCD6A08[(v10 - 1)];
  }

  return sub_25BBC0CD4(&v9, &v8, v6, v4, a1, a2);
}

void sub_25BC94340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  v32 = &v71 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v36);
  v37 = sub_25BCB54EC();
  v74 = OUTLINED_FUNCTION_2(v37);
  v75 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_4_0();
  v43 = (v41 - v42);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v71 - v45;
  v47 = *(v20 + 40);
  v48 = sub_25BAC4018();
  v49 = sub_25BB3EE04(v48, v26);
  if (v49)
  {
    v51 = v49;
    v52 = v50;
    type metadata accessor for NativeTensorStorage();
    a10 = *(v24 + 56);
    v76 = *(v24 + 64);
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    sub_25BBC0130(v53, v54, v55);
    v72 = v21;
    v73 = v56;
    if (*(*(v56 + 16) + 16))
    {
      v57 = *(v56 + 16);
      sub_25BCB617C();
    }

    sub_25BCB50AC();
    OUTLINED_FUNCTION_36_22();
    sub_25BCB54FC();
    ObjectType = swift_getObjectType();
    (*(v52 + 16))(&a10, ObjectType, v52);
    if (!*(a10 + 16))
    {
    }

    OUTLINED_FUNCTION_36_22();
    sub_25BCB54FC();
    v61 = v75;
    v62 = *(v75 + 16);
    v71 = v46;
    v63 = v46;
    v64 = v74;
    v62(v32, v63, v74);
    v65 = OUTLINED_FUNCTION_2_6(v32);
    MEMORY[0x28223BE20](v65);
    *(&v71 - 4) = v51;
    *(&v71 - 3) = v52;
    *(&v71 - 2) = v43;
    *(&v71 - 1) = v24;
    v67 = v72;
    v66 = v73;
    sub_25BBF3504(v32, sub_25BC9A80C);
    if (v67)
    {

      swift_unknownObjectRelease();
      sub_25BAA6F5C(v32, &qword_27FBB4080, &qword_25BCBC638);
      v68 = *(v61 + 8);
      v68(v71, v64);
      v68(v43, v64);
    }

    else
    {
      sub_25BAA6F5C(v32, &qword_27FBB4080, &qword_25BCBC638);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v69 = OUTLINED_FUNCTION_31();
      *(v69 + 16) = xmmword_25BCBAE50;
      *(v69 + 32) = v66;
      *(v69 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v70 = *(v61 + 8);
      v70(v71, v64);
      v70(v43, v64);
    }
  }

  else
  {
    sub_25BB0E2EC();
    v58 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6840, v58, v59);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC94714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14[-v10];
  swift_getObjectType();
  v12 = sub_25BCB54EC();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v15 = a1;
  v16 = a3;
  sub_25BC675C0(sub_25BC9A828, v14, MEMORY[0x277D84F78] + 8, a4);
  return sub_25BAA6F5C(v11, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC94880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB516C();
  v5 = *(a3 + 48);
  sub_25BCB617C();
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB515C())
  {
    sub_25BCB50CC();
    if (v3)
    {
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000034, 0x800000025BCE69B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](46, 0xE100000000000000);
      sub_25BB0E2EC();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 0x2000;
      swift_willThrow();
    }
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v8 = xmmword_25BCD6840;
    *(v8 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t *sub_25BC94A70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = sub_25BAC4018();
  v6 = sub_25BB3EE04(v5, a1);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(&v19, ObjectType, v9);
    v4 = &v19;
    v11 = sub_25BC8FACC();
    if (dynamic_cast_existential_2_conditional(v11))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v4 = OUTLINED_FUNCTION_31();
      *(v4 + 1) = xmmword_25BCBAE50;
      v12 = *(v2 + 48);
      type metadata accessor for ViewingTensorStorage();
      v13 = swift_allocObject();
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v12;
      v4[4] = v13;
      v4[5] = &off_286D4A4E0;
      sub_25BCB617C();
    }

    else
    {
      sub_25BB0E2EC();
      v16 = OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_15_51(xmmword_25BCD6850, v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25BB0E2EC();
    v14 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6850, v14, v15);
  }

  return v4;
}

uint64_t sub_25BC94BE0(uint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 40);
  v7 = sub_25BAC4018();
  if (!sub_25BB3EE04(v7, a1))
  {
    sub_25BB0E2EC();
    v28 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6860, v28, v29);
    return v3;
  }

  v9 = v8;
  ObjectType = swift_getObjectType();
  (*(v9 + 8))(v36, ObjectType, v9);
  v11 = sub_25BC8FACC();
  v12 = dynamic_cast_existential_2_conditional(v11);
  if (!v12)
  {
    sub_25BB0E2EC();
    v30 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_51(xmmword_25BCD6860, v30, v31);
    swift_unknownObjectRelease();
    return v3;
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;
  v18 = *(v4 + 40);
  v39 = *(v4 + 48);
  v38 = *(v18 + 160);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_25BCB617C();
  Tensor.init(ones:scalarType:on:)(&v39, &v38, v36, &v40);
  v19 = *(v40 + 16);

  v20 = sub_25BA928B4();
  [v20 lock];

  v21 = OUTLINED_FUNCTION_20_10();
  sub_25BA92920(v21, v22, 0, v23);
  if (!v2)
  {
    [*(v19 + 224) unlock];

    OUTLINED_FUNCTION_28_33();
    v33 = sub_25BC94E48(v24, v25, v26, v27, v15, v15, v16, v17);
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = OUTLINED_FUNCTION_31();
    *(v3 + 16) = xmmword_25BCBAE50;
    *(v3 + 32) = v33;
    *(v3 + 40) = v35;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v3;
  }

  [*(v19 + 224) unlock];

  __break(1u);
  return result;
}

uint64_t sub_25BC94E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v40 = a4;
  v41 = a8;
  v38 = a3;
  v39 = a7;
  v37 = a6;
  v36 = sub_25BCB564C();
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = *(a2 + 16);
  v48 = a1;
  v42 = ObjectType;
  v17(&v43, ObjectType, a2);
  v18 = *(v9 + 48);
  static ShapeInference.broadcasting(_:toRank:)(&v43, *(v18 + 16), &v45);

  v19 = v45;
  if (!v45)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_25BCB70FC();
    v43 = v45;
    v44 = v46;
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE07B0);
    v17(&v45, v42, a2);
    v33 = MEMORY[0x25F876F80](v45, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v33);

    MEMORY[0x25F876C90](0x6E6172206F742060, 0xEB0000000060206BLL);
    v45 = *(v18 + 16);
    v34 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v34);

    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE07D0);
    v45 = v43;
    v46 = v44;
    v47 = 3;
    sub_25BCB617C();
    sub_25BA97890();
  }

  type metadata accessor for NativeTensorStorage();
  v45 = *(v9 + 48);
  v20 = *(a2 + 8);
  sub_25BCB617C();
  v20(&v43, v42, a2);
  v21 = v35;
  sub_25BBC0130(&v45, &v43, 0);
  v23 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = v39;
  *(&v35 - 6) = v37;
  *(&v35 - 5) = v24;
  *(&v35 - 4) = v41;
  *(&v35 - 3) = v19;
  v25 = v40;
  *(&v35 - 2) = v38;
  *(&v35 - 1) = v25;
  sub_25BCB563C();
  v26 = sub_25BCB562C();
  if (v21)
  {
    (*(v12 + 8))(v15, v36);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v27 = v26;
    v28 = (*(v12 + 8))(v15, v36);
    v29 = MEMORY[0x28223BE20](v28);
    v30 = v39;
    *(&v35 - 8) = v37;
    *(&v35 - 7) = v30;
    v31 = v38;
    *(&v35 - 6) = v41;
    *(&v35 - 5) = v31;
    *(&v35 - 4) = v40;
    *(&v35 - 3) = v23;
    *(&v35 - 2) = v19;
    *(&v35 - 1) = v27;
    (*(a2 + 64))(sub_25BC9A854, v29);

    return v23;
  }

  return result;
}

uint64_t sub_25BC952A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v26[1] = a1;
  v28 = sub_25BCB56AC();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BCB577C();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v30 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  MEMORY[0x28223BE20](v14);
  v27 = v26 - v15;
  sub_25BB46100(v7);
  sub_25BCB578C();
  v16 = *(v4 + 8);
  v17 = v28;
  v16(v7, v28);
  ObjectType = swift_getObjectType();
  (*(v31 + 16))(&v32, ObjectType);
  sub_25BB46100(v7);
  sub_25BCB578C();

  v16(v7, v17);
  swift_getWitnessTable();
  v19 = v30;
  v20 = v27;
  sub_25BCB566C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25BCBAE50;
  *(v21 + 56) = v8;
  *(v21 + 64) = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
  v23 = v29;
  (*(v29 + 32))(boxed_opaque_existential_0, v19, v8);
  v24 = *(v23 + 8);
  v24(v13, v8);
  v24(v20, v8);
  return v21;
}

uint64_t sub_25BC95600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a5;
  v25 = a1;
  v26 = a2;
  v27 = a6;
  v28 = a3;
  v29 = a4;
  v30 = a7;
  return (*(a4 + 64))(sub_25BC9A888, v20, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BC95720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = a12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  v21 = swift_allocObject();
  v21[1] = xmmword_25BCBAE90;
  v60 = a5;
  v59 = a8;
  if (a1)
  {
    v22 = *(*(a12 - 8) + 72);
    if (!v22)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (a2 - a1 == 0x8000000000000000 && v22 == -1)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }
  }

  v68[0] = *(a3 + 16);
  sub_25BCB617C();
  v24 = sub_25BC6FC68();
  a2 = sub_25BBFCCC8(1, v24);
  a5 = v25;
  v14 = v26;
  a8 = v27;
  v62 = v21;
  v63 = a12;
  if (v27)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = MEMORY[0x277D84F90];
    }

    v29 = *(v28 + 16);

    if (__OFSUB__(a8 >> 1, v14))
    {
      goto LABEL_49;
    }

    if (v29 != (a8 >> 1) - v14)
    {
      goto LABEL_50;
    }

    a8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v14 = a7;
    v20 = a12;
    if (a8)
    {
      goto LABEL_16;
    }

    a8 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  while (1)
  {
    a8 = sub_25BABA62C(a2, a5, v14, a8);
    v14 = a7;
LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    a5 = a13;
    sub_25BCB6C0C();
    memcpy(v21 + 2, __src, 0xA0uLL);
    if (a4)
    {
      v30 = *(*(v20 - 8) + 72);
      if (!v30)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v60 - a4 == 0x8000000000000000 && v30 == -1)
      {
        goto LABEL_56;
      }
    }

    v68[0] = a6;
    sub_25BCB617C();
    v32 = sub_25BC6FC68();
    a2 = sub_25BBFCCC8(1, v32);
    v34 = v33;
    a8 = v35;
    v37 = v36;
    if (v36)
    {
      sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
        swift_unknownObjectRelease();
        v38 = MEMORY[0x277D84F90];
      }

      v39 = *(v38 + 16);

      if (__OFSUB__(v37 >> 1, a8))
      {
        __break(1u);
      }

      else if (v39 == (v37 >> 1) - a8)
      {
        v40 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v21 = v62;
        v20 = v63;
        if (v40)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      swift_unknownObjectRelease();
      v21 = v62;
      v20 = v63;
    }

    sub_25BABA62C(a2, v34, a8, v37);
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:
    sub_25BCB6C0C();
    memcpy(v21 + 12, v67, 0xA0uLL);
    if (!v14)
    {
      goto LABEL_36;
    }

    v41 = *(*(v20 - 8) + 72);
    if (v41)
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_unknownObjectRelease();
    v21 = v62;
    v20 = v63;
  }

  if (v59 - v14 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_57;
  }

LABEL_36:
  ObjectType = swift_getObjectType();
  v44 = *(a10 + 16);
  v44(&v69, ObjectType, a10);
  v44(v68, ObjectType, a10);
  v45 = sub_25BC6FC68();

  v46 = sub_25BBFCCC8(1, v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  if ((v51 & 1) == 0)
  {
LABEL_37:
    sub_25BABA62C(v46, v48, v50, v52);
    v53 = v13;
    v54 = v62;
    goto LABEL_43;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    swift_unknownObjectRelease();
    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v55 + 16);

  if (__OFSUB__(v52 >> 1, v50))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v56 != (v52 >> 1) - v50)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v57 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v53 = v13;
  v54 = v62;
  if (!v57)
  {
LABEL_43:
    swift_unknownObjectRelease();
  }

  sub_25BCB6C0C();
  memcpy(v54 + 22, v68, 0xA0uLL);
  v69 = v54;
  sub_25BCB579C();
  if (v53)
  {
    goto LABEL_58;
  }
}

void sub_25BC95CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  *&v114 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v27 = OUTLINED_FUNCTION_6_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v104 = v30 - v31;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_1();
  v112 = v33;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v105 = v20;
  v34 = *(v20 + 40);
  v35 = sub_25BA9BEA0(v34);
  sub_25BCB617C();
  v36 = 0;
  v106 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v35 == v36)
    {

      v51 = v106;
      v52 = *(v106 + 16);
      if (v52 == sub_25BAAF4F4())
      {
        type metadata accessor for NativeTensorStorage();
        a10 = *(v105 + 64);
        LOBYTE(v115) = *(v105 + 72);
        sub_25BCB617C();
        OUTLINED_FUNCTION_17_10();
        sub_25BBC0130(v53, v54, v55);
        v57 = v56;
        v111 = v114;
        v103 = *(v106 + 16);
        if (v103)
        {
          ObjectType = swift_getObjectType();
          v58 = 0;
          v59 = 0;
          while (v59 < *(v51 + 16))
          {
            v107 = v59;
            v114 = *(v51 + 16 * v59 + 32);
            v60 = v114;
            v61 = swift_getObjectType();
            v62 = *(&v114 + 1);
            v64 = *(&v114 + 1) + 16;
            v63 = *(*(&v114 + 1) + 16);
            swift_unknownObjectRetain();

            v65 = OUTLINED_FUNCTION_99();
            v113 = v63;
            v63(v65);
            if (!*(a10 + 16))
            {
            }

            v66 = OUTLINED_FUNCTION_20_10();
            sub_25BBF5F44(v66, v67);

            v68 = sub_25BCB54EC();
            OUTLINED_FUNCTION_5_1();
            __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
            v72 = OUTLINED_FUNCTION_99();
            v113(v72);
            v73 = *(a10 + 16);
            v108 = v64;
            v109 = v60;
            if (!v73)
            {
            }

            v74 = v104;
            v75 = OUTLINED_FUNCTION_20_10();
            sub_25BBF5F44(v75, v76);

            OUTLINED_FUNCTION_5_1();
            v80 = __swift_storeEnumTagSinglePayload(v77, v78, v79, v68);
            p_ObjectType = &ObjectType;
            MEMORY[0x28223BE20](v80);
            *(&ObjectType - 6) = v58;
            *(&ObjectType - 5) = v114;
            v81 = v105;
            *(&ObjectType - 3) = v105;
            *(&ObjectType - 2) = v57;
            *(&ObjectType - 1) = &off_286D4DBE0;
            MEMORY[0x28223BE20](v82);
            OUTLINED_FUNCTION_14_1();
            v83 = ObjectType;
            *(v84 - 64) = v61;
            *(v84 - 56) = v83;
            *(v84 - 48) = v62;
            *(v84 - 40) = v85;
            *(v84 - 32) = v57;
            *(v84 - 24) = v74;
            *(v84 - 16) = sub_25BC9A8C4;
            *(v84 - 8) = v86;
            v87 = v57;
            v88 = v111;
            v89 = v112;
            sub_25BC6789C(sub_25BC9A8F0, v90, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
            v111 = v88;
            if (v88)
            {
              sub_25BAA6F5C(v89, &qword_27FBB4080, &qword_25BCBC638);
              swift_unknownObjectRelease();

              OUTLINED_FUNCTION_38_26();
              v100 = OUTLINED_FUNCTION_31_32();
              sub_25BAA6F5C(v100, v101, &qword_25BCBC638);
              goto LABEL_30;
            }

            sub_25BAA6F5C(v89, &qword_27FBB4080, &qword_25BCBC638);
            v57 = v87;

            v91 = OUTLINED_FUNCTION_31_32();
            sub_25BAA6F5C(v91, v92, &qword_25BCBC638);
            v93 = OUTLINED_FUNCTION_99();
            v113(v93);
            v94 = *(v81 + 48);
            v115 = a10;
            v95 = TensorShape.subscript.getter(v94);

            swift_unknownObjectRelease();
            v96 = __OFADD__(v58, v95);
            v58 += v95;
            if (v96)
            {
              goto LABEL_34;
            }

            v51 = v106;
            v59 = v107 + 1;
            if (v103 == v107 + 1)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_33;
        }

LABEL_27:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v97 = OUTLINED_FUNCTION_31();
        *(v97 + 16) = xmmword_25BCBAE50;
        *(v97 + 32) = v57;
        *(v97 + 40) = &off_286D4DBE0;
      }

      else
      {

        sub_25BB0E2EC();
        v98 = OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_11_2(xmmword_25BCD6870, v98, v99);
      }

LABEL_30:
      OUTLINED_FUNCTION_16();
      return;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8779B0](v36, v34);
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    v39 = sub_25BAC4018();
    if (*(v25 + 16) && (v40 = sub_25BAFEEB0(v39), (v41 & 1) != 0))
    {
      v42 = (*(v25 + 56) + 16 * v40);
      v44 = *v42;
      v43 = v42[1];
      swift_unknownObjectRetain();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = *(v106 + 16);
        sub_25BAFDF7C();
        v106 = v49;
        a10 = v49;
      }

      v46 = *(v106 + 16);
      if (v46 >= *(v106 + 24) >> 1)
      {
        sub_25BAFDF7C();
        v106 = v50;
        a10 = v50;
      }

      v47 = swift_getObjectType();
      sub_25BBB9CD4(v46, v44, &a10, v47, v43);
      v36 = v38;
    }

    else
    {

      ++v36;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_25BC96278(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 136);
  if (v8)
  {
    v13 = (a5 + 16);
    ObjectType = swift_getObjectType();
    v33 = *v13;
    (*v13)(v37, ObjectType, a5);
    v46 = v37[0];
    v14 = sub_25BC6FC68();

    v15 = *(a6 + 48);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v14 + 16))
    {
      v16 = *(v14 + 8 * v15 + 32);

      v17 = a3 * v16;
      if ((a3 * v16) >> 64 == (a3 * v16) >> 63)
      {
        v18 = sub_25BC5D954(ObjectType, a5);
        if ((v17 * v18) >> 64 == (v17 * v18) >> 63)
        {
          *(a2 + 136) = v17 * v18 + v8;
          v19 = a1[1];
          v20 = v19 == 0x10000;
          if (v19 == 0x10000)
          {
            v21 = 163840;
          }

          else
          {
            v21 = 294912;
          }

          v22 = 3;
          if (v20)
          {
            v22 = 1;
          }

          v36 = v22;
          a1[1] = v21;
          if (*(a2 + 4) == 0x10000)
          {
            v23 = 163840;
          }

          else
          {
            v23 = 294912;
          }

          *(a2 + 4) = v23;
          v33(&v46, ObjectType, a5);
          if (!*(v46 + 16))
          {
LABEL_27:
            memset(v37, 0, sizeof(v37));
            v38 = -1;
            v40 = 0;
            v41 = 0;
            v39 = 0;
            v42 = -1;
            v43 = 4;
            sub_25BADDD28();
          }

          v24 = *(v46 + 32);

          sub_25BBF69E4(v24, v36);
          v33(v37, ObjectType, a5);
          v46 = v37[0];
          v25 = sub_25BC6FC68();

          if (*(v25 + 16))
          {
            v26 = *(v25 + 32);

            sub_25BBF6A98(v26, v36);
            sub_25BBF69E4(v24, v36);
            v27 = swift_getObjectType();
            (*(a8 + 16))(v37, v27);
            v46 = v37[0];
            v28 = sub_25BC6FC68();

            if (*(v28 + 16))
            {
              v29 = *(v28 + 32);

              sub_25BBF6A98(v29, v36);
              memcpy(__dst, a1, sizeof(__dst));
              memcpy(v45, a2, sizeof(v45));
              sub_25BCB6E0C();
              sub_25BCB6D6C();
              return sub_25BCB545C();
            }

            goto LABEL_26;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v31 = 0xD00000000000002CLL;
  *(v31 + 8) = 0x800000025BCE6AD0;
  *(v31 + 16) = 0x2000;
  return swift_willThrow();
}

void sub_25BC96624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_1();
  v117 = v36;
  v37 = sub_25BCB54EC();
  v38 = OUTLINED_FUNCTION_2(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_0();
  v118 = (v43 - v44);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v45);
  v47 = &v108 - v46;
  v48 = *(v20 + 40);
  v49 = sub_25BAC4018();
  v50 = sub_25BB3EE04(v49, v27);
  v126 = v51;
  v127 = v50;
  if (!v50)
  {
    sub_25BB0E2EC();
    v103 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6880, v103, v104);
    goto LABEL_20;
  }

  v52 = *(v25 + 72);
  v116 = *(v52 + 16);
  if (!v116)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_20:
    OUTLINED_FUNCTION_16();
    return;
  }

  v114 = v34;
  v112 = type metadata accessor for NativeTensorStorage();
  ObjectType = swift_getObjectType();
  v53 = 0;
  v54 = 0;
  v110 = *(v126 + 16);
  v111 = v126 + 16;
  v109 = (v40 + 16);
  v115 = (v40 + 8);
  v55 = (v52 + 40);
  v113 = v25;
  v56 = MEMORY[0x277D84F90];
  v57 = v118;
  v125 = v47;
  v108 = v52;
  while (v54 < *(v52 + 16))
  {
    v119 = v55;
    v120 = v54;
    v58 = *v55;
    a10 = *(v55 - 1);
    LOBYTE(v128) = v58;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    sub_25BBC0130(v59, v60, v61);
    v63 = v62;
    v123 = v24;
    v64 = *(v62 + 16);

    sub_25BCB617C();
    v110(&a10, ObjectType, v126);
    v128 = a10;
    v65 = sub_25BC6FC68();

    if (!v64[2])
    {

      v64 = &unk_286D43270;
    }

    sub_25BBF5F44(v64, v65);

    v66 = *(*(v63 + 16) + 16);
    v121 = v56;
    if (v66)
    {
      sub_25BCB617C();
    }

    v67 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v67, v68);

    v69 = v57;
    v122 = swift_getObjectType();
    v70 = v63;
    v71 = *v109;
    v72 = v117;
    (*v109)(v117, v125, v37);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v37);
    v76 = v114;
    v71(v114, v69, v37);
    OUTLINED_FUNCTION_5_1();
    v80 = __swift_storeEnumTagSinglePayload(v77, v78, v79, v37);
    MEMORY[0x28223BE20](v80);
    *(&v108 - 6) = v53;
    *(&v108 - 5) = v63;
    v81 = v113;
    *(&v108 - 4) = &off_286D4DBE0;
    *(&v108 - 3) = v81;
    v82 = v126;
    *(&v108 - 2) = v127;
    *(&v108 - 1) = v82;
    MEMORY[0x28223BE20](v83);
    OUTLINED_FUNCTION_14_1();
    v84 = v123;
    v85 = v122;
    *(v86 - 64) = ObjectType;
    *(v86 - 56) = v85;
    *(v86 - 48) = v87;
    *(v86 - 40) = v88;
    *(v86 - 32) = v70;
    *(v86 - 24) = v76;
    *(v86 - 16) = sub_25BC9A908;
    *(v86 - 8) = v89;
    sub_25BC6789C(sub_25BC9AB74, v90, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v123 = v84;
    if (v84)
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_38_26();
      sub_25BAA6F5C(v72, &qword_27FBB4080, &qword_25BCBC638);
      v105 = *v115;
      (*v115)(v69, v37);
      v105(v125, v37);
      v106 = OUTLINED_FUNCTION_34_0();
      sub_25BAA6F5C(v106, v107, &qword_25BCBC638);

      goto LABEL_20;
    }

    sub_25BAA6F5C(v72, &qword_27FBB4080, &qword_25BCBC638);
    v91 = *v115;
    (*v115)(v69, v37);
    v91(v125, v37);
    sub_25BAA6F5C(v76, &qword_27FBB4080, &qword_25BCBC638);
    v92 = v70;
    v93 = *(v81 + 64);
    a10 = *(v70 + 16);
    v94 = TensorShape.subscript.getter(v93);
    v95 = __OFADD__(v53, v94);
    v53 += v94;
    v57 = v118;
    if (v95)
    {
      goto LABEL_22;
    }

    v56 = v121;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = *(v56 + 16);
      sub_25BAFDF7C();
      v56 = v101;
    }

    v96 = v92;
    v97 = *(v56 + 16);
    v24 = v123;
    v98 = v120;
    if (v97 >= *(v56 + 24) >> 1)
    {
      sub_25BAFDF7C();
      v98 = v120;
      v56 = v102;
    }

    v54 = v98 + 1;
    *(v56 + 16) = v97 + 1;
    v99 = v56 + 16 * v97;
    *(v99 + 32) = v96;
    *(v99 + 40) = &off_286D4DBE0;
    v55 = v119 + 16;
    v52 = v108;
    if (v116 == v54)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_25BC96C08(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v34 = *(a5 + 16);
    v35 = ObjectType;
    v34(v36, ObjectType, a5);
    v45 = v36[0];
    v14 = sub_25BC6FC68();

    v15 = *(a6 + 64);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v14 + 16))
    {
      v16 = *(v14 + 8 * v15 + 32);

      v17 = a3 * v16;
      if ((a3 * v16) >> 64 == (a3 * v16) >> 63)
      {
        v18 = sub_25BC5D954(v35, a5);
        if ((v17 * v18) >> 64 == (v17 * v18) >> 63)
        {
          *(a1 + 136) = v17 * v18 + v8;
          v19 = *(a1 + 4);
          v20 = v19 == 0x10000;
          if (v19 == 0x10000)
          {
            v21 = 163840;
          }

          else
          {
            v21 = 294912;
          }

          if (v20)
          {
            v22 = 1;
          }

          else
          {
            v22 = 3;
          }

          *(a1 + 4) = v21;
          if (a2[1] == 0x10000)
          {
            v23 = 163840;
          }

          else
          {
            v23 = 294912;
          }

          a2[1] = v23;
          v34(&v45, v35, a5);
          if (!*(v45 + 16))
          {
LABEL_27:
            memset(v36, 0, sizeof(v36));
            v37 = -1;
            v39 = 0;
            v40 = 0;
            v38 = 0;
            v41 = -1;
            v42 = 4;
            sub_25BADDD28();
          }

          v24 = *(v45 + 32);

          sub_25BBF69E4(v24, v22);
          v25 = swift_getObjectType();
          (*(a8 + 16))(v36, v25);
          v45 = v36[0];
          v26 = sub_25BC6FC68();

          if (*(v26 + 16))
          {
            v27 = *(v26 + 32);

            sub_25BBF6A98(v27, v22);
            sub_25BBF69E4(v24, v22);
            v34(v36, v35, a5);
            v45 = v36[0];
            v28 = sub_25BC6FC68();

            if (*(v28 + 16))
            {
              v29 = *(v28 + 32);

              sub_25BBF6A98(v29, v22);
              memcpy(__dst, a1, sizeof(__dst));
              memcpy(v44, a2, sizeof(v44));
              sub_25BCB6E0C();
              sub_25BCB6D6C();
              return sub_25BCB545C();
            }

            goto LABEL_26;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v31 = 0xD00000000000002BLL;
  *(v31 + 8) = 0x800000025BCE6B00;
  *(v31 + 16) = 0x2000;
  return swift_willThrow();
}

uint64_t sub_25BC96FA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = sub_25BAC4018();
  v6 = sub_25BB3EE04(v5, a1);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v10 = type metadata accessor for NativeTensorStorage();
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(&v18, ObjectType, v9);
    v17 = *(v2 + 48);
    swift_unknownObjectRetain();

    sub_25BBC0694(&v18, &v17, v10, v8, v9);
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v2 = OUTLINED_FUNCTION_31();
    *(v2 + 16) = xmmword_25BCBAE50;
    *(v2 + 32) = v13;
    *(v2 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB0E2EC();
    v14 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6890, v14, v15);
  }

  return v2;
}

void sub_25BC970E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  a22 = v23;
  a23 = v24;
  v46 = v25;
  v27 = v26;
  v45 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_25BCB783C();
  v36 = OUTLINED_FUNCTION_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v42 = &v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(v30 + 8))(&a13, ObjectType, v30);
  a12 = *(v27 + 48);
  sub_25BC5DA5C(ObjectType, v30);
  (*(v38 + 104))(v42, *MEMORY[0x277D84660], v35);
  sub_25BAA83F4(v34, v32, &a13, v45, v46, &a12);
  (*(v38 + 8))(v42, v35);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC97258@<X0>(uint64_t a1@<X8>)
{
  switch(*(v1 + 80))
  {
    case 1:
    case 6:
      sub_25BBD1FD0();
      sub_25BA97890();
    case 2:
      v3 = MEMORY[0x277D82EF0];
      goto LABEL_6;
    case 3:
      v3 = MEMORY[0x277D82EF8];
      goto LABEL_6;
    case 4:
      v3 = MEMORY[0x277D82F28];
      goto LABEL_6;
    case 5:
      v8 = sub_25BCB52EC();
      v6 = a1;
      v7 = 1;
      goto LABEL_7;
    default:
      v3 = MEMORY[0x277D82F00];
LABEL_6:
      v4 = *v3;
      v5 = sub_25BCB52EC();
      (*(*(v5 - 8) + 104))(a1, v4, v5);
      v6 = a1;
      v7 = 0;
      v8 = v5;
LABEL_7:

      return __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  }
}

void sub_25BC97434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  a22 = v26;
  a23 = v27;
  v181 = v24;
  v28 = v23;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v32 = OUTLINED_FUNCTION_6_0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_0();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_11();
  v174 = v39;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_11();
  v173 = v41;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_11();
  v176 = v43;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_11();
  v46 = v45;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_1();
  v172 = v48;
  v49 = sub_25BCB54EC();
  v50 = OUTLINED_FUNCTION_2(v49);
  v179 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4_0();
  v177 = v54 - v55;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_9_11();
  v180 = v57;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_11();
  v175 = v59;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v61);
  v63 = &v165 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v165 - v65;
  v67 = *(v23 + 64);
  v68 = sub_25BAC4018();
  v182 = sub_25BB3EE04(v68, v30);
  if (!v182)
  {
    goto LABEL_8;
  }

  v170 = v69;
  v70 = *(v28 + 72);
  v71 = sub_25BAC4018();
  v72 = sub_25BB3EE04(v71, v30);
  v171 = v73;
  v178 = v72;
  if (!v72)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    v79 = sub_25BBD1FD0();
    v81 = v80;
    sub_25BB0E2EC();
    v82 = OUTLINED_FUNCTION_14_0();
    *v83 = v79;
    v83[1] = v81;
    OUTLINED_FUNCTION_9_58(v82, v83);
    goto LABEL_9;
  }

  v74 = *(v28 + 56);
  v75 = sub_25BAC4018();
  if (!sub_25BB3EE04(v75, v30))
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v77 = *(v28 + 80);
  v78 = v76;
  v168 = v37;
  switch(v77)
  {
    case 5:

      goto LABEL_12;
    default:
      v84 = sub_25BCB789C();

      if (v84)
      {
LABEL_12:
        v167 = type metadata accessor for NativeTensorStorage();
        ObjectType = swift_getObjectType();
        (*(v78 + 16))(v183, ObjectType, v78);
        (*(v78 + 8))(&a13, ObjectType, v78);
        a12 = a13;
        if (a13 - 1 <= 0xA)
        {
          v86 = qword_25BCD6A08[(a13 - 1)];
        }

        v90 = v181;
        v88 = v46;
        v89 = sub_25BBC0BE0(v183, &a12);
        v181 = v90;
      }

      else
      {
        OUTLINED_FUNCTION_26_38();
        v87 = swift_unknownObjectRetain();
        v88 = v46;
        v89 = sub_25BC94270(v87, v78);
      }

      v91 = *(v28 + 48);
      v167 = v89;
      if (v91)
      {
        if (v91 != 2)
        {
          v183[0] = sub_25BBD1FD0();
          v183[1] = v164;
          OUTLINED_FUNCTION_13_50(0x800000025BCE6B30);
          OUTLINED_FUNCTION_24_29();
          sub_25BA97890();
        }

        v105 = swift_getObjectType();
        OUTLINED_FUNCTION_4_72(v105, v170);
        v106();
        OUTLINED_FUNCTION_14_48();
        v107 = v175;
        if (!v108)
        {
        }

        v109 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v109, v110);

        v111 = swift_getObjectType();
        OUTLINED_FUNCTION_4_72(v111, v171);
        v176 = v112;
        v113();
        OUTLINED_FUNCTION_14_48();
        if (!v114)
        {
        }

        v115 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v115, v116);

        if (*(*(v89 + 16) + 16))
        {
          v117 = *(v89 + 16);
          sub_25BCB617C();
        }

        v137 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v137, v138);

        v139 = v179;
        v140 = *(v179 + 16);
        v141 = v173;
        (v140)(v173, v180, v49);
        OUTLINED_FUNCTION_2_6(v141);
        v142 = v174;
        (v140)(v174, v107, v49);
        OUTLINED_FUNCTION_2_6(v142);
        v143 = v168;
        OUTLINED_FUNCTION_13_24();
        v140();
        v144 = OUTLINED_FUNCTION_2_6(v143);
        v166 = &v165;
        MEMORY[0x28223BE20](v144);
        OUTLINED_FUNCTION_14_1();
        v145 = v170;
        *(v146 - 64) = v182;
        *(v146 - 56) = v145;
        v147 = v167;
        *(v146 - 48) = v142;
        *(v146 - 40) = v147;
        *(v146 - 32) = &off_286D4DBE0;
        *(v146 - 24) = v143;
        *(v146 - 16) = sub_25BC9A9A0;
        *(v146 - 8) = v28;
        v148 = v181;
        sub_25BC675C0(sub_25BC9A9BC, v149, MEMORY[0x277D84F78] + 8, &a20);
        if (v148)
        {
          OUTLINED_FUNCTION_26_38();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_117(&a15);
          sub_25BAA6F5C(v141, &qword_27FBB4080, &qword_25BCBC638);
          v150 = *(v139 + 8);
          v150(v177, v49);
          v151 = OUTLINED_FUNCTION_25_34();
          (v150)(v151);
          v150(v175, v49);
          sub_25BAA6F5C(v168, &qword_27FBB4080, &qword_25BCBC638);
          v135 = v142;
          goto LABEL_35;
        }

        v136 = v139;
        v66 = v175;
      }

      else
      {
        v175 = v88;
        v177 = *(v28 + 40);
        v92 = swift_getObjectType();
        OUTLINED_FUNCTION_4_72(v92, v171);
        v180 = v93;
        v94();
        OUTLINED_FUNCTION_14_48();
        if (!v95)
        {
        }

        v96 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v96, v97);

        v98 = swift_getObjectType();
        OUTLINED_FUNCTION_4_72(v98, v170);
        v99();
        OUTLINED_FUNCTION_14_48();
        if (!v100)
        {
        }

        v101 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v101, v102);

        v103 = v63;
        if (*(*(v89 + 16) + 16))
        {
          v104 = *(v89 + 16);
          sub_25BCB617C();
        }

        v118 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v118, v119);

        v120 = *(v179 + 16);
        v121 = v172;
        v120(v172, v66, v49);
        OUTLINED_FUNCTION_2_6(v121);
        v122 = v175;
        v173 = v103;
        v120(v175, v103, v49);
        OUTLINED_FUNCTION_2_6(v122);
        v123 = v176;
        v174 = v25;
        v120(v176, v25, v49);
        v124 = OUTLINED_FUNCTION_2_6(v123);
        v166 = &v165;
        MEMORY[0x28223BE20](v124);
        OUTLINED_FUNCTION_33_29();
        *(v125 - 16) = v126;
        *(v125 - 8) = v28;
        MEMORY[0x28223BE20](v127);
        OUTLINED_FUNCTION_14_1();
        v128 = v170;
        *(v129 - 64) = v182;
        *(v129 - 56) = v128;
        v130 = v167;
        *(v129 - 48) = v122;
        *(v129 - 40) = v130;
        *(v129 - 32) = &off_286D4DBE0;
        *(v129 - 24) = v123;
        *(v129 - 16) = sub_25BC9A9D4;
        *(v129 - 8) = v131;
        v132 = v181;
        sub_25BC675C0(sub_25BC9AB8C, v133, MEMORY[0x277D84F78] + 8, &a20);
        if (v132)
        {
          OUTLINED_FUNCTION_26_38();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_117(&a15);
          sub_25BAA6F5C(v121, &qword_27FBB4080, &qword_25BCBC638);
          v134 = *(v179 + 8);
          v134(v174, v49);
          v134(v173, v49);
          v134(v66, v49);
          sub_25BAA6F5C(v176, &qword_27FBB4080, &qword_25BCBC638);
          v135 = v175;
LABEL_35:
          sub_25BAA6F5C(v135, &qword_27FBB4080, &qword_25BCBC638);
          break;
        }

        v136 = v179;
        v177 = v174;
        v180 = v173;
        v168 = v176;
      }

      OUTLINED_FUNCTION_28_33();
      sub_25BAA6F5C(v152, v153, v154);
      v155 = *(v136 + 8);
      v155(v177, v49);
      v156 = OUTLINED_FUNCTION_25_34();
      (v155)(v156);
      v155(v66, v49);
      OUTLINED_FUNCTION_28_33();
      sub_25BAA6F5C(v157, v158, v159);
      OUTLINED_FUNCTION_28_33();
      sub_25BAA6F5C(v160, v161, v162);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v163 = OUTLINED_FUNCTION_31();
      *(v163 + 16) = xmmword_25BCBAE50;
      *(v163 + 32) = v167;
      *(v163 + 40) = &off_286D4DBE0;
      OUTLINED_FUNCTION_26_38();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      break;
  }

LABEL_9:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC97F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB63A0, &qword_25BCC9098);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-v10];
  sub_25BC97258(&v19[-v10]);
  sub_25BCB6E0C();
  v12 = sub_25BCB6D6C();
  v20 = a2;
  v21 = a3;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a4;
  v27 = v11;
  if ((sub_25BC941CC(a1, sub_25BC9A9F0) & 0x1FFFFFFFFLL) != 0)
  {
    v16 = sub_25BCB547C();
    sub_25BC9AA28(&qword_27FBB40C8, MEMORY[0x277D83098]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D83080], v16);
    swift_willThrow();
  }

  return sub_25BAA6F5C(v11, &qword_27FBB63A0, &qword_25BCC9098);
}

uint64_t sub_25BC98130(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB63A0, &qword_25BCC9098);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  sub_25BC97258(&v17[-v8]);
  sub_25BCB6E0C();
  v10 = sub_25BCB6D6C();
  v18 = a2;
  v19 = a3;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v9;
  if ((sub_25BC941CC(a1, sub_25BC9AA70) & 0x1FFFFFFFFLL) != 0)
  {
    v14 = sub_25BCB547C();
    sub_25BC9AA28(&qword_27FBB40C8, MEMORY[0x277D83098]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D83080], v14);
    swift_willThrow();
  }

  return sub_25BAA6F5C(v9, &qword_27FBB63A0, &qword_25BCC9098);
}

void sub_25BC982F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v184 = v32 - v33;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_11();
  v180 = v36;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_11();
  v179 = v38;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_11();
  v181 = v40;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_1();
  v178 = v42;
  v43 = sub_25BCB54EC();
  v44 = OUTLINED_FUNCTION_2(v43);
  v186 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_4_0();
  v183 = v48 - v49;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_11();
  v187 = v51;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_11();
  v54 = v53;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_11();
  v57 = v56;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_11();
  v185 = v59;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v60);
  v62 = &v172 - v61;
  v63 = *(v20 + 72);
  v64 = sub_25BAC4018();
  v65 = sub_25BB3EE04(v64, v27);
  v188 = v66;
  v189 = v65;
  if (v65)
  {
    v67 = *(v25 + 64);
    v68 = sub_25BAC4018();
    v69 = sub_25BB3EE04(v68, v27);
    v182 = v70;
    if (v69)
    {
      v71 = v69;
      v173 = v22;
      type metadata accessor for NativeTensorStorage();
      v190[0] = *(v25 + 80);
      v191 = *(v25 + 88);
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_10();
      sub_25BBC0130(v72, v73, v74);
      v76 = v75;
      v175 = v21;
      v77 = *(v25 + 56);
      v177 = v71;
      if (v77)
      {
        if (v77 != 2)
        {
          v190[0] = sub_25BC3D690();
          v190[1] = v171;
          OUTLINED_FUNCTION_13_50(0x800000025BCE6C10);
          OUTLINED_FUNCTION_24_29();
          sub_25BA97890();
        }

        ObjectType = swift_getObjectType();
        v101 = v182;
        v102 = v182 + 16;
        v103 = *(v182 + 16);
        v176 = v76;

        v181 = ObjectType;
        v103(v190, ObjectType, v101);
        v104 = v189;
        v105 = v184;
        if (!*(v190[0] + 16))
        {
        }

        v106 = v186;
        v107 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v107, v108);

        v109 = swift_getObjectType();
        OUTLINED_FUNCTION_4_72(v109, v188);
        v110();
        OUTLINED_FUNCTION_14_48();
        if (!v111)
        {
        }

        v112 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v112, v113);

        if (*(*(v176 + 16) + 16))
        {
          v114 = *(v176 + 16);
          sub_25BCB617C();
        }

        v136 = v183;
        v137 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v137, v138);

        v139 = *(v106 + 16);
        v140 = v180;
        v139(v180, v54, v43);
        OUTLINED_FUNCTION_2_6(v140);
        v185 = v54;
        v141 = v173;
        v139(v173, v187, v43);
        OUTLINED_FUNCTION_2_6(v141);
        v139(v105, v136, v43);
        v142 = OUTLINED_FUNCTION_2_6(v105);
        v174 = &v172;
        MEMORY[0x28223BE20](v142);
        OUTLINED_FUNCTION_14_1();
        v143 = v188;
        *(v144 - 64) = v104;
        *(v144 - 56) = v143;
        v145 = v176;
        *(v144 - 48) = v141;
        *(v144 - 40) = v145;
        *(v144 - 32) = &off_286D4DBE0;
        *(v144 - 24) = v105;
        *(v144 - 16) = sub_25BC98CEC;
        *(v144 - 8) = 0;
        v146 = OUTLINED_FUNCTION_22_38();
        OUTLINED_FUNCTION_37_27(v146, v147, v148, v181, v149);
        if (v102)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_38_26();
          OUTLINED_FUNCTION_117(&a13);
          OUTLINED_FUNCTION_49_0();
          sub_25BAA6F5C(v150, v151, v152);
          v153 = *(v106 + 8);
          v153(v183, v43);
          v154 = OUTLINED_FUNCTION_25_34();
          (v153)(v154);
          v153(v185, v43);
          OUTLINED_FUNCTION_49_0();
          sub_25BAA6F5C(v155, v156, v157);
          OUTLINED_FUNCTION_49_0();
          goto LABEL_24;
        }
      }

      else
      {
        v184 = *(v25 + 40);
        v78 = swift_getObjectType();
        v79 = v182;
        v80 = v182 + 16;
        v81 = *(v182 + 16);

        v187 = v78;
        v81(v190, v78, v79);
        OUTLINED_FUNCTION_14_48();
        if (!v82)
        {
        }

        v83 = v181;
        v84 = v57;
        v85 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v85, v86);

        v87 = swift_getObjectType();
        OUTLINED_FUNCTION_4_72(v87, v188);
        v88();
        OUTLINED_FUNCTION_14_48();
        v89 = v178;
        if (!v90)
        {
        }

        v91 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v91, v92);

        v93 = v76;
        if (*(*(v76 + 16) + 16))
        {
          v94 = *(v76 + 16);
          sub_25BCB617C();
        }

        v115 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v115, v116);

        v117 = v84;
        v118 = *(v186 + 16);
        OUTLINED_FUNCTION_13_24();
        v118();
        OUTLINED_FUNCTION_2_6(v89);
        (v118)(v83, v185, v43);
        OUTLINED_FUNCTION_2_6(v83);
        v119 = v179;
        v183 = v117;
        (v118)(v179, v117, v43);
        v120 = OUTLINED_FUNCTION_2_6(v119);
        v174 = &v172;
        MEMORY[0x28223BE20](v120);
        OUTLINED_FUNCTION_33_29();
        *(v121 - 16) = v122;
        MEMORY[0x28223BE20](v123);
        OUTLINED_FUNCTION_14_1();
        v124 = v188;
        *(v125 - 64) = v189;
        *(v125 - 56) = v124;
        *(v125 - 48) = v83;
        *(v125 - 40) = v93;
        *(v125 - 32) = &off_286D4DBE0;
        *(v125 - 24) = v119;
        *(v125 - 16) = sub_25BC9AAA8;
        *(v125 - 8) = v126;
        v127 = OUTLINED_FUNCTION_22_38();
        OUTLINED_FUNCTION_37_27(v127, v128, v129, v187, v130);
        if (v80)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_38_26();
          OUTLINED_FUNCTION_117(&a13);
          sub_25BAA6F5C(v89, &qword_27FBB4080, &qword_25BCBC638);
          v131 = *(v186 + 8);
          v131(v183, v43);
          v131(v185, v43);
          v132 = OUTLINED_FUNCTION_34_0();
          (v131)(v132);
          sub_25BAA6F5C(v119, &qword_27FBB4080, &qword_25BCBC638);
          v133 = v181;
          v134 = &qword_27FBB4080;
          v135 = &qword_25BCBC638;
LABEL_24:
          sub_25BAA6F5C(v133, v134, v135);
          goto LABEL_25;
        }

        v176 = v93;
        v106 = v186;
        v187 = v185;
        v184 = v119;
        v185 = v62;
      }

      v158 = v176;

      OUTLINED_FUNCTION_49_0();
      sub_25BAA6F5C(v159, v160, v161);
      v162 = *(v106 + 8);
      v162(v183, v43);
      v163 = OUTLINED_FUNCTION_25_34();
      (v162)(v163);
      v162(v185, v43);
      OUTLINED_FUNCTION_49_0();
      sub_25BAA6F5C(v164, v165, v166);
      OUTLINED_FUNCTION_49_0();
      sub_25BAA6F5C(v167, v168, v169);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v170 = OUTLINED_FUNCTION_31();
      *(v170 + 16) = xmmword_25BCBAE50;
      *(v170 + 32) = v158;
      *(v170 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  v95 = sub_25BC3D690();
  v97 = v96;
  sub_25BB0E2EC();
  v98 = OUTLINED_FUNCTION_14_0();
  *v99 = v95;
  v99[1] = v97;
  OUTLINED_FUNCTION_9_58(v98, v99);
LABEL_25:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC98C70()
{
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  return sub_25BCB550C();
}

uint64_t sub_25BC98CEC()
{
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  return sub_25BCB552C();
}

uint64_t sub_25BC98D70(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 + 40);
  v7 = sub_25BAC4018();
  v8 = sub_25BB3EE04(v7, a1);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = type metadata accessor for NativeTensorStorage();
    v19 = *(v4 + 72);
    v18 = *(v4 + 80);
    swift_unknownObjectRetain();

    sub_25BCB617C();
    sub_25BBC0838(&v19, &v18, v12, v10, v11);
    if (!v3)
    {
      v16 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v4 = OUTLINED_FUNCTION_31();
      *(v4 + 16) = xmmword_25BCBAE50;
      *(v4 + 32) = v16;
      *(v4 + 40) = &off_286D4DBE0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB0E2EC();
    v14 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD68A0, v14, v15);
  }

  return v4;
}

uint64_t sub_25BC98EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  (*(a4 + 16))(&v16, ObjectType, a4);
  v10 = v16;
  (*(a4 + 8))(&v15, ObjectType, a4);
  LOBYTE(a4) = v15;
  v11 = sub_25BCA283C();
  v12 = *(a5 + 72);
  v14 = *(a5 + 80);
  sub_25BC98FAC(a1, a2, v10, a4, v11);
}

void sub_25BC98FAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  type metadata accessor for SliceOperation();
  v6 = sub_25BC6FC68();
  v7 = 0;
  v8 = 0;
  v28 = *(v6 + 16);
  v27 = a5;
  v9 = (a5 + 48);
  v10 = MEMORY[0x277D84F90];
  v26 = v6;
  while (v28 != v8)
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *(v27 + 16);
    if (v8 == v11)
    {
      break;
    }

    v12 = v8 + 1;
    if (v8 >= v11)
    {
      goto LABEL_23;
    }

    v13 = *(v6 + 8 * v8 + 32);
    v14 = v13 * *v9;
    if ((v13 * *v9) >> 64 != v14 >> 63)
    {
      goto LABEL_24;
    }

    v15 = *(v9 - 2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = *(v10 + 16);
      sub_25BA96630();
      v10 = v20;
    }

    v16 = *(v10 + 16);
    if (v16 >= *(v10 + 24) >> 1)
    {
      sub_25BA96630();
      v10 = v21;
    }

    *(v10 + 16) = v16 + 1;
    *(v10 + 8 * v16 + 32) = v14;
    v17 = v13 * v15;
    if ((v13 * v15) >> 64 != (v13 * v15) >> 63)
    {
      goto LABEL_25;
    }

    v9 += 3;
    v8 = v12;
    v18 = __OFADD__(v7, v17);
    v7 += v17;
    v6 = v26;
    if (v18)
    {
      goto LABEL_26;
    }
  }

  if ((a4 - 1) > 0xAu)
  {
    v22 = 1;
  }

  else
  {
    v22 = qword_25BCD6A08[(a4 - 1)];
  }

  if ((v7 * v22) >> 64 != (v7 * v22) >> 63)
  {
    goto LABEL_27;
  }

  if (!a1 || !__OFSUB__(a2 - a1, v7 * v22))
  {
    sub_25BC991EC();

    return;
  }

LABEL_28:
  __break(1u);
}

void sub_25BC991EC()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v36 = v3;
  v64 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_25BCB54EC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  v23 = *(v2 + 8);
  if (v23 > 0xC || ((1 << v23) & 0x1777) == 0)
  {
    sub_25BB0E2EC();
    v31 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_51(xmmword_25BCD68B0, v31, v32);
LABEL_12:
    OUTLINED_FUNCTION_16();
    return;
  }

  v33 = v20;
  v34 = v19;
  v35 = v0;
  v24 = *v2;
  v25 = sub_25BCB6F2C();
  v26 = sub_25BAFFC44(v24);
  if (!v26[2])
  {

    v26 = &unk_286D464E8;
  }

  sub_25BBF5A38(v26, 0);

  v46 = v23;
  sub_25BCB617C();
  sub_25BBF678C(v25, v22, &v46, v64, v47);
  if (sub_25BB456E4(v47) != 1)
  {
    memcpy(v48, v47, sizeof(v48));
    if (v24[2])
    {
      sub_25BCB617C();
    }

    else
    {
      v24 = &unk_286D46510;
    }

    if (!v24[2])
    {
    }

    v27 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    sub_25BCB54FC();
    v28 = sub_25BCB54CC();
    sub_25BCB54BC();
    sub_25BCB54DC();
    v46 = v23;
    v29 = sub_25BBF4F40();
    v37 = v23;
    v30 = sub_25BBF4F40();
    (*(v33 + 8))(v17, v34);
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v57 = v44;
    v49 = 0;
    v50 = v28;
    v58 = v45;
    v59 = v36;
    v60 = v29;
    v61 = 0;
    v62 = v30;
    v63 = 1065353216;
    sub_25BCB6E0C();
    OUTLINED_FUNCTION_17_10();
    sub_25BCB6D6C();
    sub_25BCB545C();
    goto LABEL_12;
  }

  __break(1u);
}

void sub_25BC99570()
{
  OUTLINED_FUNCTION_17_1();
  v76 = v1;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - v10;
  v12 = sub_25BCB54EC();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  v21 = *(v0 + 152);
  v22 = sub_25BAC4018();
  v23 = sub_25BB3EE04(v22, v5);
  v85 = v24;
  if (!v23)
  {
    goto LABEL_16;
  }

  v25 = v23;
  v26 = *(v3 + 40);
  v27 = sub_25BAC4018();
  v28 = sub_25BB3EE04(v27, v5);
  v82 = v29;
  v83 = v28;
  if (!v28)
  {
    swift_unknownObjectRelease();
LABEL_16:
    sub_25BB0E2EC();
    v50 = OUTLINED_FUNCTION_14_0();
    *v51 = 0xD000000000000013;
    v51[1] = 0x800000025BCE0890;
    OUTLINED_FUNCTION_9_58(v50, v51);
    goto LABEL_22;
  }

  v74 = v11;
  v75 = v3;
  v81 = *(v3 + 48);
  v30 = *(v81 + 16);
  v31 = MEMORY[0x277D84F90];
  v84 = v25;
  if (v30)
  {
    v70 = v20;
    v71 = v2;
    v72 = v15;
    v73 = v12;
    sub_25BAA21EC();
    ObjectType = swift_getObjectType();
    v78 = *(v82 + 16);
    v79 = v82 + 16;
    v77 = swift_getObjectType();
    v32 = *(v85 + 16);
    v33 = 4;
    do
    {
      v78(&v94, ObjectType, v82);
      v34 = *(v94 + 16);
      if (v33 - 4 >= v34)
      {
        goto LABEL_26;
      }

      v35 = *(v94 + 8 * v33);

      v32(&v86, v77, v85);
      v34 = *(v86 + 16);
      if (v33 - 4 >= v34)
      {
        goto LABEL_26;
      }

      v36 = *(v86 + 8 * v33);

      v34 = v35 - v36;
      if (__OFSUB__(v35, v36))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v87[1] = 0;
        v87[2] = 0;
        v87[0] = v33 - 4;
        v88 = -1;
        v90 = 0;
        v91 = 0;
        v89 = v34;
        v92 = -1;
        v93 = 4;
        sub_25BADDD28();
      }

      v37 = *(v81 + 8 * v33);
      v38 = v34 - v37;
      if (__OFSUB__(v34, v37))
      {
        goto LABEL_25;
      }

      v39 = *(v31 + 16);
      if (v39 >= *(v31 + 24) >> 1)
      {
        sub_25BAA21EC();
      }

      *(v31 + 16) = v39 + 1;
      *(v31 + 8 * v39 + 32) = v38;
      ++v33;
    }

    while (v33 - v30 != 4);
    v12 = v73;
    v15 = v72;
    v2 = v71;
    v20 = v70;
  }

  v40 = v76;
  v41 = v15;
  type metadata accessor for NativeTensorStorage();
  v87[0] = *(v75 + 72);
  v95 = *(v75 + 80);
  sub_25BCB617C();
  OUTLINED_FUNCTION_17_10();
  sub_25BBC0130(v42, v43, v44);
  v46 = v45;
  v82 = v40;
  v47 = *(v45 + 16);
  v48 = v74;
  if (v47[2])
  {
    v49 = *(v45 + 16);
    sub_25BCB617C();
  }

  else
  {
    v47 = &unk_286D438D8;
  }

  sub_25BBF5A38(v47, 0);

  v52 = swift_getObjectType();
  (*(v85 + 16))(v87, v52);
  v53 = v87[0];
  if (!*(v87[0] + 16))
  {

    v53 = &unk_286D43900;
  }

  sub_25BBF5A38(v53, 0);

  v54 = *(v41 + 16);
  v55 = OUTLINED_FUNCTION_99();
  v56(v55);
  OUTLINED_FUNCTION_5_1();
  v60 = __swift_storeEnumTagSinglePayload(v57, v58, v59, v12);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_14_1();
  v61 = v85;
  *(v62 - 64) = v84;
  *(v62 - 56) = v61;
  v63 = v81;
  v64 = v82;
  *(v62 - 48) = v2;
  *(v62 - 40) = v63;
  v65 = v75;
  *(v62 - 32) = v31;
  *(v62 - 24) = v65;
  *(v62 - 16) = 1;
  sub_25BBF3504(v48, sub_25BC9AAF4);
  if (v64)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25BAA6F5C(v48, &qword_27FBB4080, &qword_25BCBC638);
    v66 = *(v41 + 8);
    v66(v20, v12);
    v66(v2, v12);
  }

  else
  {
    sub_25BAA6F5C(v48, &qword_27FBB4080, &qword_25BCBC638);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v67 = OUTLINED_FUNCTION_31();
    *(v67 + 16) = xmmword_25BCBAE50;
    *(v67 + 32) = v46;
    *(v67 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v68 = *(v41 + 8);
    v68(v20, v12);
    v68(v2, v12);
  }

LABEL_22:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC99B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v20 = a7;
  v21 = a8;
  v22 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v19 - v15;
  swift_getObjectType();
  v17 = sub_25BCB54EC();
  (*(*(v17 - 8) + 16))(v16, a3, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v24 = a1;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = v20;
  sub_25BC675C0(sub_25BC9AB18, v23, MEMORY[0x277D84F78] + 8, v21);
  return sub_25BAA6F5C(v16, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC99D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_25BCB50DC();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0;
  (*(v15 + 104))(v14, *MEMORY[0x277D82E00], v12);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BBA8C44(a3, a4);
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v26 = a2;
    v27 = a6;
    v28 = MEMORY[0x277D84F90];
    sub_25BB00B14();
    v19 = v28;
    v20 = *(v28 + 16);
    v21 = 32;
    do
    {
      v22 = *(v17 + v21);
      v28 = v19;
      if (v20 >= *(v19 + 24) >> 1)
      {
        v25 = v22;
        sub_25BB00B14();
        v22 = v25;
        v19 = v28;
      }

      *(v19 + 16) = v20 + 1;
      *(v19 + 16 * v20 + 32) = v22;
      v21 += 16;
      ++v20;
      --v18;
    }

    while (v18);
  }

  sub_25BCB514C();
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB513C())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v24 = 0xD000000000000013;
    *(v24 + 8) = 0x800000025BCE0890;
    *(v24 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BC99FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v78 = v21;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v28 = OUTLINED_FUNCTION_6_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = &v74 - v35;
  v37 = sub_25BCB54EC();
  v38 = OUTLINED_FUNCTION_2(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v43 = *(v20 + 40);
  v44 = sub_25BAC4018();
  if (sub_25BB3EE04(v44, v26))
  {
    v46 = v45;
    v75 = v33;
    v77 = v24;
    type metadata accessor for NativeTensorStorage();
    ObjectType = swift_getObjectType();
    (*(v46 + 16))(&a10, ObjectType, v46);
    v48 = *(v46 + 8);
    v76 = ObjectType;
    v48(&v79, ObjectType, v46);
    OUTLINED_FUNCTION_17_10();
    v49 = v78;
    sub_25BBC0130(v50, v51, v52);
    v54 = v53;
    v74 = v49;
    if (*(*(v53 + 16) + 16))
    {
      v55 = *(v53 + 16);
      sub_25BCB617C();
    }

    v58 = v75;
    v59 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5CD8(v59, v60);

    v78 = v40;
    v61 = *(v40 + 16);
    OUTLINED_FUNCTION_13_24();
    v61();
    OUTLINED_FUNCTION_2_6(v36);
    OUTLINED_FUNCTION_13_24();
    v61();
    v62 = OUTLINED_FUNCTION_2_6(v58);
    v75 = &v74;
    MEMORY[0x28223BE20](v62);
    *(&v74 - 6) = v54;
    *(&v74 - 5) = &off_286D4DBE0;
    *(&v74 - 4) = v58;
    *(&v74 - 3) = sub_25BC9AB38;
    *(&v74 - 2) = v77;

    OUTLINED_FUNCTION_22_38();
    v63 = v74;
    sub_25BC675C0(v64, (&v74 - 8), v65, v66);
    if (v63)
    {
      swift_unknownObjectRelease();

      sub_25BAA6F5C(v36, &qword_27FBB4080, &qword_25BCBC638);
      v67 = *(v78 + 8);
      v68 = OUTLINED_FUNCTION_34_0();
      v69(v68);
      sub_25BAA6F5C(v58, &qword_27FBB4080, &qword_25BCBC638);
    }

    else
    {

      sub_25BAA6F5C(v36, &qword_27FBB4080, &qword_25BCBC638);
      sub_25BAA6F5C(v58, &qword_27FBB4080, &qword_25BCBC638);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v70 = OUTLINED_FUNCTION_31();
      *(v70 + 16) = xmmword_25BCBAE50;
      *(v70 + 32) = v54;
      *(v70 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v71 = *(v78 + 8);
      v72 = OUTLINED_FUNCTION_34_0();
      v73(v72);
    }
  }

  else
  {
    sub_25BB0E2EC();
    v56 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCD68C0, v56, v57);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC9A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 56);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  return sub_25BCB51BC();
}

uint64_t sub_25BC9A444(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6158, type metadata accessor for BandPartOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A49C(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6168, type metadata accessor for SliceGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A4F4(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6170, type metadata accessor for SliceOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A54C(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6190, type metadata accessor for GatherOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A5A4(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6188, type metadata accessor for ScatterOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A5FC(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154FAA0, type metadata accessor for CastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A654(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6178, type metadata accessor for SplitOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A6AC(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154F658, type metadata accessor for ConcatOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A704(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154ED78, type metadata accessor for BroadcastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A75C(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154F1F8, type metadata accessor for ReshapeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A7B4(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154E7E8, type metadata accessor for TransposeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A844(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25BC952A0(a1, v1[5], v1[6], v1[7]);
}

uint64_t sub_25BC9A960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[6];
  v4 = v2[7];
  return sub_25BC67F74(a1, v2[8], v2[9], v2[2], v2[3], MEMORY[0x277D84F78] + 8, a2, v2[4], v2[5]);
}

unint64_t sub_25BC9A9F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  return sub_25BBF6B4C(*(v1 + 16), a1, *(v1 + 72));
}

uint64_t sub_25BC9AA28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25BC9AA70@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  return sub_25BBF6EA4(*(v1 + 16), a1);
}

uint64_t OUTLINED_FUNCTION_36_22()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t static CodingUserInfoKey.optimizerSerializationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_25BCB73FC();
  v6 = sub_25BCB741C();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9ACB8(uint64_t a1)
{
  v1 = *(a1 + 8);

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v2 = *(*(v1 + 16) + 160);
  sub_25BAA51C8(v10, v9);
  v7 = MEMORY[0x277D84F90];
  v6 = v2;
  sub_25BAA51C8(v9, v5);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v7, &unk_286D46560, &v6, v5, &v8);
  sub_25BA9C2C8(v9);
  sub_25BA9C2C8(v10);
  v3 = v8;
  v9[0] = v1;
  Tensor.squared()();
  v5[0] = *&v10[0];
  v8 = &unk_286D423B0;
  Tensor.reshaped(to:)(&v8, v9);

  v5[0] = v9[0];
  Tensor.sum(squeezingAxes:)(&v8);

  *&v10[0] = v3;
  static Tensor.* infix(_:_:)();
}

uint64_t OptimizerSerializationContext.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  OptimizerSerializationContext.init(_:)(a1);
  return v5;
}

uint64_t OptimizerSerializationContext.__deallocating_deinit()
{
  OptimizerSerializationContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9B0A8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7CA8, &unk_25BCD6BC0);
  swift_allocObject();
  result = sub_25BC9B1C0(0);
  *a2 = result;
  return result;
}

uint64_t sub_25BC9B11C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_25BC9B1C0(int a1)
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + 16) = sub_25BAA6F2C();
  *(v1 + 24) = a1;
  return v1;
}

char *sub_25BC9B214()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  return v0;
}

uint64_t sub_25BC9B294()
{
  sub_25BC9B214();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9B304@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  switch(result)
  {
    case 0:
      break;
    case 2:
      v2 = 8;
      break;
    case 3:
      v2 = 10;
      break;
    case 4:
      v2 = 11;
      break;
    case 5:
      v2 = 0;
      break;
    case 6:
      v2 = 1;
      break;
    case 7:
      v2 = 2;
      break;
    case 8:
      v2 = 3;
      break;
    case 9:
      v2 = 4;
      break;
    case 10:
      v2 = 5;
      break;
    case 11:
      v2 = 6;
      break;
    case 12:
      v2 = 7;
      break;
    default:
      sub_25BCB70FC();
      OUTLINED_FUNCTION_0_95();
      type metadata accessor for SNNDataType(0);
      sub_25BCB73CC();
      OUTLINED_FUNCTION_2_80();
      OUTLINED_FUNCTION_3_64();
      OUTLINED_FUNCTION_1_79();
      sub_25BA97890();
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25BC9B4AC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  swift_beginAccess();
  sub_25BAC27B0(v2 + 16, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E80, &unk_25BCC2610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E88, &qword_25BCD6CE0);
  if (swift_dynamicCast())
  {
    sub_25BB6D9C4(v14, v17);
    v4 = v18;
    v5 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v6 = *(v5 + 24);
    v7 = sub_25BB67604();
    v8 = sub_25BC9CF64();
    v9 = v6(a1, &v20, MEMORY[0x277D84D38], v7, v8, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  result = sub_25BB6D720(v14);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v9 = MEMORY[0x277D84F90];
    if (a1)
    {
      v16[0] = MEMORY[0x277D84F90];
      sub_25BB0056C();
      v9 = v16[0];
      do
      {
        swift_beginAccess();
        v11 = *(v2 + 48);
        __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, *(v2 + 40));
        sub_25BB67604();
        sub_25BC9CF64();
        sub_25BCB622C();
        swift_endAccess();
        v12 = *&v14[0];
        v16[0] = v9;
        v13 = *(v9 + 16);
        if (v13 >= *(v9 + 24) >> 1)
        {
          sub_25BB0056C();
          v9 = v16[0];
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v12;
        --a1;
      }

      while (a1);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9B6DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v10 = type metadata accessor for AnyRandomNumberGenerator();
  v11 = sub_25BC9CF20(&qword_27FBB7CB0);
  v9[0] = v5;
  v6 = *__swift_project_boxed_opaque_existential_1(v9, v10);

  v7 = sub_25BC9B4AC(a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_25BC9B788(uint64_t a1, float a2, float a3)
{
  if (COERCE_UNSIGNED_INT(fabs(a3 - a2)) > 0x7F7FFFFF)
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    return sub_25BC9CC00(v3, sub_25BC9CF00);
  }

  return result;
}

uint64_t sub_25BC9B87C(void *a1, void *a2, float a3, float a4, float a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_25BC54B00(0, a1[1]);
  v14 = *(v13 + 16);
  result = sub_25BC9B6DC(v14, 16777217);
  v16 = -v14;
  for (i = 4; ; ++i)
  {
    if (v16 + i == 4)
    {

      *a2 = a7;
      return result;
    }

    v18 = i - 4;
    if ((i - 4) >= *(result + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v19 = *(result + 8 * i);
    if (v19 == 0x1000000)
    {
      break;
    }

    if (v18 >= *(v13 + 16))
    {
      goto LABEL_11;
    }

    *(*a1 + 4 * *(v13 + 8 * i)) = (vcvts_n_f32_u64(v19, 0x18uLL) * a5) + a3;
  }

  if (v18 < *(v13 + 16))
  {
    v20 = *(v13 + 8 * i);

    *(*a1 + 4 * v20) = a4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25BC9B9AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = result;
  if (a3 - a2 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v8 = sub_25BCB67DC();
        *(v8 + 16) = v5;
        v11 = *a4;
        v12 = 32;
        v13 = v5;
        do
        {
          *(v8 + v12) = sub_25BB6AAA8();
          v12 += 8;
          --v13;
        }

        while (v13);
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }

      *(v8 + 16) = v5;
      return v8;
    }
  }

  else
  {
    result = sub_25BC9B6DC(result, a3 - a2 + 1);
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      if (!v5)
      {
        v8 = MEMORY[0x277D84F90];
LABEL_14:
        *(v8 + 16) = v5;

        return v8;
      }

      result = sub_25BCB67DC();
      *(result + 16) = v5;
      if (*(v7 + 16) >= v5)
      {
        v8 = result;
        v9 = 32;
        v10 = v5;
        do
        {
          *(result + v9) = *(v7 + v9) + a2;
          v9 += 8;
          --v10;
        }

        while (v10);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9BAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 8) + 8);
  v4 = *(*(OUTLINED_FUNCTION_9_59() - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  sub_25BCB6ADC();
  OUTLINED_FUNCTION_9_59();
  OUTLINED_FUNCTION_35_8();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_25BCB68DC();
}

uint64_t sub_25BC9BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_65(a1, a2, a3);
  v4 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_25BCB6ADC();
  swift_beginAccess();
  type metadata accessor for AnyRandomNumberGenerator();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_25BC9CF20(&qword_27FBB4E78);
  v14 = sub_25BCB668C();
  (*(v7 + 8))(v12, AssociatedTypeWitness);
  swift_endAccess();
  return v14;
}

uint64_t RandomSampler.__allocating_init(generator:)(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v2 = swift_allocObject();
  RandomSampler.init(generator:)(a1);
  return v2;
}

uint64_t sub_25BC9BDEC(uint64_t *a1)
{
  v3 = type metadata accessor for AnyRandomNumberGenerator();
  v4 = a1[3];
  v5 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = sub_25BB6D898(v11, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v1 + 16) = v13;
  return v1;
}

uint64_t sub_25BC9BF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  OUTLINED_FUNCTION_3_65(a1, a2, a3);
  v8 = *(v7 + 8);
  OUTLINED_FUNCTION_2_81();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  OUTLINED_FUNCTION_11_3();
  sub_25BCB6ADC();
  OUTLINED_FUNCTION_11_3();
  v16 = sub_25BCB6ABC();
  OUTLINED_FUNCTION_11_3();
  result = sub_25BCB6ABC();
  v18 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v18 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v19 = sub_25BC9B9AC(v16, 0, v18, (v5 + 16));
    v20 = swift_endAccess();
    v28[1] = v19;
    MEMORY[0x28223BE20](v20);
    v28[-4] = v4;
    v28[-3] = a3;
    v28[-2] = v15;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v22 = OUTLINED_FUNCTION_2_81();
    sub_25BB074EC();
    v23 = OUTLINED_FUNCTION_8_60();
    v24 = sub_25BB50EEC(v23, sub_25BC9CD48, &v28[-6], v21, v22, v8);

    v25 = *(v10 + 8);
    v26 = OUTLINED_FUNCTION_35_8();
    v27(v26);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9C110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14[-v9];
  v11 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25BC1EFDC();
  v12 = sub_25BCB6B8C();
  (*(v7 + 16))(a3);
  v12(v14, 0);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t RandomSampler.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RandomSampler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_22();

  return swift_deallocClassInstance();
}

uint64_t WeightedRandomSampler.__allocating_init(generator:weights:)()
{
  OUTLINED_FUNCTION_4_73();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_35_8();
  WeightedRandomSampler.init(generator:weights:)(v1, v2);
  return v0;
}

uint64_t WeightedRandomSampler.init(generator:weights:)(uint64_t *a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = 0.0;
    do
    {
      v7 = *v5++;
      v6 = v6 + v7;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  *(v2 + 32) = v6;
  sub_25BAC27B0(a1, v9);
  RandomSampler.init(generator:)(v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t WeightedRandomSampler.__allocating_init(seed:weights:)(unint64_t a1, char a2, uint64_t a3)
{
  sub_25BC3329C(a1, a2 & 1, v7);
  sub_25BAC27B0(v7, v6);
  type metadata accessor for WeightedRandomSampler();
  OUTLINED_FUNCTION_4_73();
  v4 = swift_allocObject();
  WeightedRandomSampler.init(generator:weights:)(v6, a3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

uint64_t sub_25BC9C47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_65(a1, a2, a3);
  v7 = *(v6 + 8);
  OUTLINED_FUNCTION_2_81();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v15 = *(*(v3 + 24) + 16);
  OUTLINED_FUNCTION_11_3();
  if (v15 == sub_25BCB6ABC())
  {
    OUTLINED_FUNCTION_11_3();
    sub_25BCB6ADC();
    OUTLINED_FUNCTION_11_3();
    v16 = sub_25BCB6ABC();
    v17 = *(v3 + 32);
    if (v17 < 0.0)
    {
      __break(1u);
    }

    else
    {
      v18 = v16;
      swift_beginAccess();
      v19 = sub_25BC9B788(v18, 0.0, v17);
      swift_endAccess();
      OUTLINED_FUNCTION_11_3();
      v20 = sub_25BCB6ABC();
      if ((v20 & 0x8000000000000000) == 0)
      {
        v30[0] = v30;
        v30[1] = 0;
        v30[2] = v20;
        MEMORY[0x28223BE20](v20);
        v30[-6] = v4;
        v30[-5] = a3;
        v30[-4] = v3;
        v30[-3] = v19;
        v29 = v14;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
        v22 = OUTLINED_FUNCTION_2_81();
        sub_25BB42928();
        v23 = OUTLINED_FUNCTION_8_60();
        v24 = sub_25BB50EEC(v23, sub_25BC9CD78, &v30[-8], v21, v22, v7);

        v25 = *(v9 + 8);
        v26 = OUTLINED_FUNCTION_35_8();
        v27(v26);
        return v24;
      }
    }

    __break(1u);
  }

  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

void sub_25BC9C6F0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v22 = a5;
  v8 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v21 - v12;
  v14 = 0;
  v15 = *a1;
  v16 = *(a2 + 24);
  v17 = *(v16 + 16);
  v18 = v16 + 32;
  v19 = 0.0;
  while (1)
  {
    if (v17 == v14)
    {
LABEL_6:
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_25BC1EFDC();
      v20 = sub_25BCB6B8C();
      (*(v10 + 16))(v22);
      v20(v23, 0);
      (*(v10 + 8))(v13, AssociatedTypeWitness);
      return;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *(a3 + 16))
    {
      goto LABEL_8;
    }

    v19 = v19 + *(v18 + 4 * v14++);
    if (*(a3 + 32 + 4 * v15) <= v19)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t WeightedRandomSampler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t WeightedRandomSampler.__deallocating_deinit()
{
  WeightedRandomSampler.deinit();
  OUTLINED_FUNCTION_4_73();

  return swift_deallocClassInstance();
}

uint64_t static Sampler<>.sequential.getter()
{
  type metadata accessor for SequentialSampler();

  return swift_allocObject();
}

uint64_t sub_25BC9CA24(unint64_t a1, char a2, void (*a3)(void), void (*a4)(uint64_t *))
{
  sub_25BC3329C(a1, a2 & 1, v8);
  a3();
  OUTLINED_FUNCTION_22();
  v6 = swift_allocObject();
  a4(v8);
  return v6;
}

uint64_t sub_25BC9CB04(uint64_t a1, void (*a2)(uint64_t), void (*a3)(_BYTE *))
{
  v5 = sub_25BAC27B0(a1, v8);
  a2(v5);
  OUTLINED_FUNCTION_22();
  v6 = swift_allocObject();
  a3(v8);
  return v6;
}

uint64_t static Sampler<>.weightedRandom(seed:weights:)(unint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for WeightedRandomSampler();
  sub_25BCB617C();
  return WeightedRandomSampler.__allocating_init(seed:weights:)(a1, a2 & 1, a3);
}

uint64_t static Sampler<>.weightedRandom(using:weights:)(uint64_t a1, uint64_t a2)
{
  sub_25BAC27B0(a1, v5);
  type metadata accessor for WeightedRandomSampler();
  OUTLINED_FUNCTION_4_73();
  v3 = swift_allocObject();
  sub_25BCB617C();
  WeightedRandomSampler.init(generator:weights:)(v5, a2);
  return v3;
}

uint64_t sub_25BC9CC00(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_25BCB67DC();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v7[1] = v4;
  v8 = 0;
  v7[0] = v5 + 32;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BC9CD48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_25BC9C110(a1, v2[3], a2);
}

void sub_25BC9CD78(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[6];
  sub_25BC9C6F0(a1, v2[4], v2[5], v2[3], a2);
}

uint64_t sub_25BC9CF20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyRandomNumberGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BC9CF64()
{
  result = qword_27FBB7CB8[0];
  if (!qword_27FBB7CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7CB8);
  }

  return result;
}

uint64_t sub_25BC9CFDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_9();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, v4);
  return sub_25BC9D0B8(v14, a1, a2, a3, a4);
}

uint64_t sub_25BC9D0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for Batches();
  *(a5 + *(result + 36)) = a2;
  *(a5 + *(result + 40)) = a3;
  return result;
}

uint64_t sub_25BC9D14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  (*(v11 + 16))(v16 - v15, a1, v17);
  sub_25BCB655C();
  (*(v11 + 8))(a1, a4);
  result = type metadata accessor for Batches.Iterator();
  *(a5 + *(result + 36)) = a2;
  *(a5 + *(result + 40)) = a3;
  return result;
}

uint64_t Batches.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, v2, v5);
  v13 = *(a1 + 24);
  sub_25BC9D14C(v11, *(v2 + *(a1 + 36)), *(v2 + *(a1 + 40)), v5, a2);
  return (*(*(a1 - 8) + 8))(v2, a1);
}

Swift::OpaquePointer_optional __swiftcall Batches.Iterator.next()()
{
  v2 = v0;
  v3 = *(v0 + 24);
  v30 = *(v0 + 16);
  v31 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v26 = v6;
  v27 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v29 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  v20 = sub_25BCB604C();
  v35 = v20;
  v25 = v2;
  v21 = *(v1 + *(v2 + 36));
  v32 = v1;
  v33 = v21;
  v28 = (v12 + 32);
  while (sub_25BCB681C() < v33)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_25BCB6EDC();
    if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
    {
      (*(v26 + 8))(v10, v27);
      break;
    }

    (*v28)(v19, v10, AssociatedTypeWitness);
    (*(v12 + 16))(v29, v19, AssociatedTypeWitness);
    sub_25BCB68CC();
    sub_25BCB687C();
    (*(v12 + 8))(v19, AssociatedTypeWitness);
    v20 = v35;
  }

  v34 = v20;
  sub_25BCB68CC();
  swift_getWitnessTable();
  if ((sub_25BCB6B6C() & 1) != 0 || sub_25BCB681C() != v33 && *(v32 + *(v25 + 40)) == 1)
  {

    v20 = 0;
  }

  v23 = v20;
  result.value._rawValue = v23;
  result.is_nil = v22;
  return result;
}

unint64_t sub_25BC9D6C0@<X0>(unint64_t *a1@<X8>)
{
  result = Batches.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_25BC9D6E8(uint64_t a1)
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

unsigned __int8 *sub_25BC9D770(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = result[v8];
        if (!result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *&result[v8];
        if (!*&result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&result[v8];
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v16 = *((&result[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_25BC9D8C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BC9DABC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BC9DB54(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  result = swift_getAssociatedTypeWitness();
  v9 = *(*(result - 8) + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(*(result - 8) + 84);
  }

  v11 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 < a2)
  {
    v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v12 <= 3)
    {
      v13 = ((a2 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = a1[v12];
        if (!a1[v12])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v16 = *&a1[v12];
        if (!*&a1[v12])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *&a1[v12];
        if (!v16)
        {
          goto LABEL_25;
        }

LABEL_21:
        v17 = (v16 - 1) << (8 * v12);
        if (v12 <= 3)
        {
          v18 = *a1;
        }

        else
        {
          v17 = 0;
          v18 = *a1;
        }

        v20 = v10 + (v18 | v17);
        break;
      default:
        goto LABEL_25;
    }

    return (v20 + 1);
  }

LABEL_25:
  if (v9 < 0xFE)
  {
    v19 = *((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 2)
    {
      v20 = (v19 + 2147483646) & 0x7FFFFFFF;
      return (v20 + 1);
    }

    return 0;
  }

  return __swift_getEnumTagSinglePayload(a1, v9, result);
}

void sub_25BC9DCFC(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 >= a3)
  {
    v16 = 0;
  }

  else
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v11 >= a2)
  {
    switch(v16)
    {
      case 1:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *(a1 + v13) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v10 < 0xFE)
          {
            *(((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v11 + a2;
    bzero(a1, v13);
    if (v13 <= 3)
    {
      v18 = (v17 >> 8) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v13 > 3)
    {
      *a1 = v17;
    }

    else
    {
      *a1 = v17;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v13) = v18;
        break;
      case 2:
        *(a1 + v13) = v18;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *(a1 + v13) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BC9DF1C(uint64_t result)
{
  if (result == 3)
  {
    return 48;
  }

  if (result == 2)
  {
    return 32;
  }

  if (result)
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_0_96();
    type metadata accessor for MTLStorageMode(0);
    sub_25BCB73CC();
    MEMORY[0x25F876C90](96, 0xE100000000000000);
    OUTLINED_FUNCTION_1_80();
    sub_25BA97890();
  }

  return result;
}

uint64_t sub_25BC9DFF4(uint64_t a1)
{
  result = 0x65746176697270;
  switch(a1)
  {
    case 0:
      result = 0x646572616873;
      break;
    case 1:
      result = 0x646567616E616DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656C79726F6D656DLL;
      break;
    default:
      sub_25BCB70FC();
      OUTLINED_FUNCTION_0_96();
      type metadata accessor for MTLStorageMode(0);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](96, 0xE100000000000000);
      OUTLINED_FUNCTION_1_80();
      sub_25BA97890();
  }

  return result;
}

uint64_t sub_25BC9E1C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 128);
  *(v1 + 32) = *(v0 + 120);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BC9E224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25BAC4018();
  v8 = (v2 + 40);
  v7 = *(v2 + 40);
  if (v6 != sub_25BAC4018())
  {
    v9 = *(a1 + 16);
    v11 = *(v3 + 48);
    v10 = (v3 + 48);
    if (sub_25BAC4018() != v9)
    {
      return 0;
    }

    v8 = v10;
  }

  v13 = *v8;
  *v8 = a2;

  return 1;
}

void *sub_25BC9E2B8()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[15];

  return v0;
}

uint64_t sub_25BC9E2F0()
{
  sub_25BC9E2B8();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9E3B8(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BC9E438()
{
  sub_25BC9E2B8();
  v1 = *(v0 + 144);
  sub_25BA9D148(*(v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9E4A4()
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v0 + 152));
  v1 = *(v0 + 160);
  if (v1 == 2)
  {
    return sub_25BCB79EC();
  }

  sub_25BCB79EC();
  return MEMORY[0x25F878200](v1 & 1);
}

uint64_t sub_25BC9E538()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  swift_beginAccess();
  v2 = v0[19];
  v4 = v0[5];
  v3 = v0[6];
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v3;

  return v1;
}

uint64_t sub_25BC9E5D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((sub_25BC9E224(a1, a2) & 1) == 0)
  {
    v5 = sub_25BAC4018();
    swift_beginAccess();
    v6 = *(v2 + 152);
    if (v5 != sub_25BAC4018())
    {
      return 0;
    }

    v8 = *(v3 + 152);
    *(v3 + 152) = a2;
  }

  return 1;
}

uint64_t sub_25BC9E664()
{
  sub_25BC9E2B8();
  v1 = *(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9E6C4()
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v0 + 136));
  v1 = *(v0 + 144);
  if (v1 == 2)
  {
    return sub_25BCB79EC();
  }

  sub_25BCB79EC();
  return MEMORY[0x25F878200](v1 & 1);
}

uint64_t sub_25BC9E758(uint64_t a1)
{
  result = sub_25BC9E808(&qword_27FBB7DC0, type metadata accessor for LossOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9E7B0(uint64_t a1)
{
  result = sub_25BC9E808(&qword_27FBB7DC8, type metadata accessor for BaseLossOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9E808(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25BC9E84C(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v5);
    v5 = v6;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

void transposedConv2D(_:weight:bias:stride:padding:outputPadding:dilation:groupCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_18();
  v108 = v24;
  v109 = v25;
  v110 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *v33;
  v36 = *v35;
  v38 = *v37;
  v39 = *(*v33 + 16);
  v40 = *(v39 + 160);
  if (!sub_25BAA80BC(*(v39 + 160), &unk_286D42270))
  {
LABEL_64:
    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *v111 = v40;
    *&v111[8] = v39;
    OUTLINED_FUNCTION_6_63();
    OUTLINED_FUNCTION_0_97();
    goto LABEL_85;
  }

  if ((OUTLINED_FUNCTION_8_61(*(v39 + 19)) & 1) == 0)
  {
    *v111 = v40;
    *&v111[8] = xmmword_25BCBCE20;
    v112 = 0;
    OUTLINED_FUNCTION_7_62();
    OUTLINED_FUNCTION_0_97();
    goto LABEL_85;
  }

  v41 = *(v34 + 16);
  v42 = *(v41 + 160);
  if (!sub_25BAA80BC(*(v41 + 160), &unk_286D42270))
  {
    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *v111 = v42;
    *&v111[8] = v39;
    OUTLINED_FUNCTION_6_63();
    OUTLINED_FUNCTION_0_97();
    goto LABEL_85;
  }

  if ((OUTLINED_FUNCTION_8_61(*(*(v36 + 16) + 152)) & 1) == 0)
  {
    *v111 = v42;
    *&v111[8] = xmmword_25BCBEAD0;
    v112 = 0;
    OUTLINED_FUNCTION_7_62();
    OUTLINED_FUNCTION_0_97();
    goto LABEL_85;
  }

  v43 = a24;
  if (v38)
  {
    v44 = a24;
    v45 = v38[2];
    v46 = *(v45 + 160);
    if (!sub_25BAA80BC(*(v45 + 160), &unk_286D42270))
    {
      OUTLINED_FUNCTION_39_27();
      OUTLINED_FUNCTION_30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
      *v111 = v46;
      *&v111[8] = v45;
      OUTLINED_FUNCTION_6_63();

      OUTLINED_FUNCTION_0_97();
      goto LABEL_85;
    }

    v47 = *(*(v45 + 152) + 16);

    if ((OUTLINED_FUNCTION_35_24() & 1) == 0)
    {
      *v111 = v47;
      *&v111[8] = xmmword_25BCC7810;
      v112 = 0;
      OUTLINED_FUNCTION_7_62();
      OUTLINED_FUNCTION_0_97();
      goto LABEL_85;
    }

    v48 = OUTLINED_FUNCTION_43(v38[2]);
    if (!v49)
    {
      OUTLINED_FUNCTION_5_64();
LABEL_81:
      v117 = 4;
      goto LABEL_83;
    }

    v50 = *(*(v36 + 16) + 152);
    v51 = *(v50 + 16);
    if (v51 <= 1)
    {
      *&v111[16] = 0;
      *v111 = 1uLL;
      v112 = -1;
      v114 = 0;
      v115 = 0;
      v113 = v51;
      v116 = -1;
      v117 = 4;
      goto LABEL_83;
    }

    v43 = a24;
    v52 = *(v50 + 40);
    if ((v52 * a24) >> 64 != (v52 * a24) >> 63)
    {
      goto LABEL_60;
    }

    if (*(v48 + 32) != v52 * a24)
    {
LABEL_61:
      *v111 = 0;
      *&v111[8] = 0xE000000000000000;
      sub_25BCB70FC();
      v120[0] = *v111;
      v39 = v120;
      MEMORY[0x25F876C90](0xD00000000000003BLL, 0x800000025BCDB540);
      v40 = *(v38[2] + 152);
      v96 = sub_25BCB617C();
      v97 = MEMORY[0x25F876F80](v96, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v97);

      OUTLINED_FUNCTION_36_23();
      v98 = OUTLINED_FUNCTION_43(*(v36 + 16));
      if (v99 > 1)
      {
        if ((*(v98 + 40) * v44) >> 64 == (*(v98 + 40) * v44) >> 63)
        {
          sub_25BCB77FC();
          OUTLINED_FUNCTION_37_28();

          MEMORY[0x25F876C90](93, 0xE100000000000000);
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_12_51();
          sub_25BCB74CC();
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_3_66();
      goto LABEL_81;
    }
  }

  v107 = v38;
  v44 = *(*(v34 + 16) + 152);
  v38 = *(*(v36 + 16) + 152);
  v53 = *(v44 + 16);
  if (v53 <= 1)
  {
    OUTLINED_FUNCTION_3_66();
LABEL_70:
    v117 = 4;
    sub_25BCB617C();
LABEL_83:
    sub_25BCB617C();
LABEL_84:
    OUTLINED_FUNCTION_17_4();
LABEL_85:
    sub_25BADDD28();
  }

  v54 = v38[2];
  if (!v54)
  {
    OUTLINED_FUNCTION_5_64();
    goto LABEL_70;
  }

  if (*(v44 + 40) != v38[4])
  {
    *v111 = 0;
    *&v111[8] = 0xE000000000000000;
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB70FC();
    v120[0] = *v111;
    MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE7290);
    if (*(v44 + 16) <= 1uLL)
    {
      OUTLINED_FUNCTION_3_66();
    }

    else
    {
      *v111 = *(v44 + 40);
      sub_25BCB77FC();
      OUTLINED_FUNCTION_37_28();

      MEMORY[0x25F876C90](0xD000000000000040, 0x800000025BCE72B0);
      if (v38[2])
      {
        *v111 = v38[4];
        sub_25BCB77FC();
        OUTLINED_FUNCTION_37_28();

        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        *v111 = v120[0];
        v117 = 17;
LABEL_77:
        sub_25BCB617C();
        OUTLINED_FUNCTION_0_97();
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_5_64();
    }

    v117 = 4;
    goto LABEL_84;
  }

  if (v53 != 4)
  {
    *v111 = *(v44 + 16);
    *&v111[8] = xmmword_25BCBCE20;
LABEL_76:
    v112 = 0;
    OUTLINED_FUNCTION_7_62();
    sub_25BCB617C();
    goto LABEL_77;
  }

  if (v54 != 4)
  {
    *v111 = xmmword_25BCD6F30;
    *&v111[16] = 0xE600000000000000;
    goto LABEL_76;
  }

  v55 = v38[5];
  v56 = v55 * v43;
  if ((v55 * v43) >> 64 != (v55 * v43) >> 63)
  {
    __break(1u);
    goto LABEL_42;
  }

  v57 = *(v44 + 48);
  v58 = v57 - 1;
  if (__OFSUB__(v57, 1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v59 = v58 * v30;
  if ((v58 * v30) >> 64 != (v58 * v30) >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v110 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v60 = __OFSUB__(v59, 2 * v110);
  v61 = v59 - 2 * v110;
  if (v60)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v62 = v38[6];
  v60 = __OFSUB__(v62, 1);
  v63 = v62 - 1;
  if (v60)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v106 = v43;
  v64 = a22 * v63;
  if ((a22 * v63) >> 64 != (a22 * v63) >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v60 = __OFADD__(v61, v64);
  v65 = v61 + v64;
  if (v60)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v60 = __OFADD__(v65, 1);
  v66 = v65 + 1;
  if (v60)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v105 = v30;
  v67 = v66 + v109;
  if (__OFADD__(v66, v109))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v68 = *(v44 + 56);
  v69 = v68 - 1;
  if (__OFSUB__(v68, 1))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v70 = v69 * v28;
  if ((v69 * v28) >> 64 != (v69 * v28) >> 63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v108 + 0x4000000000000000 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v60 = __OFSUB__(v70, 2 * v108);
  v71 = v70 - 2 * v108;
  if (v60)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v72 = v38[7];
  v60 = __OFSUB__(v72, 1);
  v73 = v72 - 1;
  if (v60)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v104 = v28;
  v74 = a23 * v73;
  if ((a23 * v73) >> 64 != (a23 * v73) >> 63)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v60 = __OFADD__(v71, v74);
  v75 = v71 + v74;
  if (v60)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v60 = __OFADD__(v75, 1);
  v76 = v75 + 1;
  if (v60)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v38 = (v76 + a21);
  if (__OFADD__(v76, a21))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v77 = *(v36 + 16);
  v78 = *(v34 + 16);
  v102 = v36;
  v79 = *(v44 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_25BCBDF80;
  *(v80 + 32) = v79;
  *(v80 + 40) = v56;
  *(v80 + 48) = v67;
  *(v80 + 56) = v38;
  v103 = v32;
  if (v107)
  {
    v100 = v107[2];
  }

  else
  {
    v100 = 0;
  }

  v101 = v34;
  *&v120[0] = v34;
  v81 = Tensor.scalarType.getter();
  v83 = v82;
  v84 = *(v82 + 32);

  v84(&v111[8], v81, v83);
  *v111 = v80;
  v85 = swift_allocObject();
  *(v85 + 16) = v107 != 0;
  *(v85 + 24) = v105;
  *(v85 + 32) = v104;
  *(v85 + 40) = v110;
  *(v85 + 48) = v108;
  *(v85 + 56) = a22;
  *(v85 + 64) = a23;
  *(v85 + 72) = v106;
  v86 = OUTLINED_FUNCTION_78_8();
  v88 = v87;

  v119[55] = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift");
  *(&v120[1] + 8) = xmmword_25BCD6F40;
  OUTLINED_FUNCTION_28(v89);
  type metadata accessor for ConvolutionTranspose2DOperation();
  OUTLINED_FUNCTION_16_3();
  v90 = OUTLINED_FUNCTION_3();
  sub_25BBA5304(v90, v91, v92, v78, v77, v100, v105, v104, v110, v108, v109, a21, a22, a23, v106, v111, v120, v86, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_25BCBAE70;
  *(v93 + 32) = v102;
  *(v93 + 40) = v101;

  sub_25BAB7DE8(v93, v119);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v119, v118);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(v111);

  sub_25BAA4AF4(v111);
  sub_25BAA49B8();
  sub_25BAA4A5C(v111);

  sub_25BAA4AF4(v111);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_23();
  v111[0] = v94;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_31_33();
  sub_25BC0D39C();
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v95 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v95);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v119);
  *v103 = v95;
  OUTLINED_FUNCTION_10_16();
}

uint64_t Tensor.padded(forSizes:with:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v7[0] = v4;
  if (DynamicType == Tensor.scalarType.getter())
  {
    v7[5] = v4;
    sub_25BAC27B0(a2, v7);
    Tensor.padded(forSizes:mode:)();
    return sub_25BB2B680(v7);
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_12_51();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

void Tensor.padded(forSizes:mode:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  sub_25BB2B624(v1, &v93);
  v68 = v6;
  if (*(&v94 + 1) > 2uLL)
  {
    sub_25BA97060(&v93, &v98);
    __swift_project_boxed_opaque_existential_1(&v98, *(&v99 + 1));
    DynamicType = swift_getDynamicType();
    *&v93 = v7;
    v0 = &v93;
    if (DynamicType != Tensor.scalarType.getter())
    {
LABEL_42:
      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_12_51();
      sub_25BCB74CC();
      __break(1u);
LABEL_43:
      v97[0] = v0;
      sub_25BC8FACC();
      OUTLINED_FUNCTION_30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
      *&v93 = v6;
      *(&v93 + 1) = v97;
      v94 = 0uLL;
      LOBYTE(v95) = 6;
      OUTLINED_FUNCTION_22_39();
      OUTLINED_FUNCTION_1_81();
      sub_25BADDD28();
    }

    LOBYTE(v0) = *(*(v7 + 16) + 160);
    if (!sub_25BAA80BC(v0, &unk_286D42270))
    {
      goto LABEL_43;
    }

    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    sub_25BB2B680(&v93);
  }

  v9 = *(v7 + 16);
  v10 = *(v9 + 152);
  v11 = *(v4 + 16);
  if (v11 != *(v10 + 16))
  {
    goto LABEL_42;
  }

  v12 = *(v9 + 152);
  if (v11)
  {
    swift_bridgeObjectRetain_n();
    v13 = (v4 + 16 * v11 + 24);
    v14 = -1;
    v15 = v10;
    while (1)
    {
      v16 = *(v13 - 1);
      v17 = v16 + *v13;
      if (__OFADD__(v16, *v13))
      {
        break;
      }

      v18 = *(v15 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAA2110(v15);
        v15 = v23;
      }

      v19 = v14 + v18;
      if (v14 + v18 < 0)
      {
        goto LABEL_18;
      }

      if (v19 >= *(v15 + 16))
      {
        goto LABEL_19;
      }

      v20 = *(v15 + 32 + 8 * v19);
      v21 = __OFADD__(v20, v17);
      v22 = v20 + v17;
      if (v21)
      {
        goto LABEL_20;
      }

      v13 -= 2;
      *(v15 + 32 + 8 * v19) = v22;
      --v14;
      if (v11 + v14 == -1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:

    v9 = *(v7 + 16);
    v10 = v15;
  }

  else
  {
    sub_25BCB617C();
  }

  sub_25BB2B624(v2, &v93);
  LOBYTE(v98) = *(v9 + 160);
  v24 = sub_25BC8FACC();
  v26 = v25;
  v27 = *(v25 + 32);

  sub_25BCB617C();
  v27(&v98, v24, v26);
  v28 = v98;
  v29 = *(v7 + 16);
  v30 = *(v29 + 152);
  LOBYTE(v98) = *(v29 + 160);
  v31 = sub_25BC8FACC();
  v33 = v32;
  sub_25BB2B624(v2, &v98);
  v34 = swift_allocObject();
  v35 = v99;
  *(v34 + 16) = v98;
  *(v34 + 32) = v35;
  *(v34 + 48) = v100;
  *(v34 + 56) = v4;
  *(v34 + 64) = v30;
  *(v34 + 72) = v31;
  *(v34 + 80) = v33;
  sub_25BCB617C();
  sub_25BCB617C();
  v36 = sub_25BAAF074(sub_25BCA230C);
  v38 = v37;

  v101 = 0;
  type metadata accessor for PadOperation();
  v39 = swift_allocObject();
  *(v39 + 176) = v36;
  *(v39 + 184) = v38;
  *(v39 + 16) = sub_25BAA5EA0(6578544, 0xE300000000000000);
  *(v39 + 24) = v40;
  *(v39 + 32) = v41;
  *(v39 + 40) = v9;
  v42 = v94;
  *(v39 + 48) = v93;
  *(v39 + 64) = v42;
  *(v39 + 80) = v95;
  *(v39 + 88) = v4;
  *(v39 + 96) = v10;
  *(v39 + 104) = v28;
  *(v39 + 112) = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PaddingOps.swift";
  *(v39 + 120) = 112;
  *(v39 + 128) = 2;
  *(v39 + 136) = xmmword_25BCD6F50;
  *(v39 + 152) = "init(id:operand:mode:padding:resultDescriptor:creationSite:backward:)";
  *(v39 + 160) = 69;
  *(v39 + 168) = 2;
  *(v39 + 169) = v101;
  sub_25BAA51C8(*(v7 + 16) + 168, &v98);
  sub_25BAA51C8(&v98, v97);
  v6 = qword_28154F8A8;

  if (v6 != -1)
  {
    swift_once();
  }

  v0 = qword_28154F8B0;
  v43 = pthread_getspecific(qword_28154F8B0);
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_22();
    v44 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
    v45 = swift_allocObject();
    v46 = OUTLINED_FUNCTION_18_48(v45, xmmword_25BCBAE50);
    if ((v46 & 0x8000000000000000) != 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v47 = v46;
    v6 = HIDWORD(v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = v6;
    *(inited + 36) = v47;
    sub_25BC9FBFC(inited);
    *(v45 + 128) = 0;
    *(v45 + 136) = 0;
    *(v45 + 144) = v49;
    *(v45 + 152) = 0;
    *(v45 + 160) = 0;
    v44[2] = v45;

    pthread_setspecific(v0, v44);
  }

  swift_beginAccess();
  v50 = v44[2];
  if (!*(v50 + 16))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_33_30(v50, v64, v66, v68, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91);

  sub_25BAA4AF4(&v93);
  v51 = pthread_getspecific(v0);
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_22();
    v52 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
    v53 = swift_allocObject();
    v54 = OUTLINED_FUNCTION_18_48(v53, xmmword_25BCBAE50);
    if ((v54 & 0x8000000000000000) != 0)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v55 = v54;
    v6 = HIDWORD(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_25BCBAE70;
    *(v56 + 32) = v6;
    *(v56 + 36) = v55;
    sub_25BC9FBFC(v56);
    *(v53 + 128) = 0;
    *(v53 + 136) = 0;
    *(v53 + 144) = v57;
    *(v53 + 152) = 0;
    *(v53 + 160) = 0;
    v52[2] = v53;

    pthread_setspecific(v0, v52);
  }

  swift_beginAccess();
  v58 = v52[2];
  if (!*(v58 + 16))
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_33_30(v58, v65, v67, v69, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);

  v0 = v96;

  sub_25BAA4AF4(&v93);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();

  v6 = 1;
  LOBYTE(v93) = 1;
  OUTLINED_FUNCTION_31_33();
  sub_25BC0D638();
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v59);
  v60 = sub_25BAA31C0();
  v61 = *(v60 + 16);
  os_unfair_lock_lock(v61);
  *(v60 + 24) = 1;
  v62 = *(v0 + 4);
  v21 = __OFADD__(v62, 1);
  v63 = v62 + 1;
  if (v21)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 4) = v63;
  os_unfair_lock_unlock(v61);
  OUTLINED_FUNCTION_9_7();

  sub_25BA9C2C8(&v98);
  *(v60 + 24) = 0;

  *v70 = v59;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC9FB70(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if ((v1 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0uLL;
  do
  {
    v4 = (&v7 & 0xFFFFFFFFFFFFFFF7 | (8 * (v2 & 1)));
    v5 = v2 + 1;
    v6 = *(result + 8 * v2 + 32);
    v7 = v3;
    *v4 = v6;
    v3 = v7;
    v2 = v5;
  }

  while (v1 != v5);

  if (v1 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_25BC9FBFC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if ((v1 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = (&v7 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v2 & 1)));
    v5 = v2 + 1;
    v6 = *(result + 4 * v2 + 32);
    v7 = v3;
    *v4 = v6;
    v3 = v7;
    v2 = v5;
  }

  while (v1 != v5);

  if (v1 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void maxPool2D(_:kernelSize:stride:padding:)()
{
  OUTLINED_FUNCTION_9_18();
  v29 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_21_39();
  v9 = *v8;
  v10 = *(*v8 + 16);
  v11 = *(v10 + 160);
  if (!sub_25BAA80BC(v11, &unk_286D42270))
  {
    LOBYTE(v41[0]) = v11;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v30 = v10;
    v31 = v41;
    v32 = xmmword_25BCBCE20;
    LOBYTE(v33) = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v35) = 2;
    v37 = 3;
    OUTLINED_FUNCTION_1_81();
    sub_25BADDD28();
  }

  v30 = *(v10 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  OUTLINED_FUNCTION_34_23(inited);
  v26 = v7;
  v27 = v2;
  sub_25BCA4578(&v30, v41, v3, v2, v7, v29, &v40);

  v13 = v40;
  if (v40)
  {
    v25 = *(v9 + 16);
    v41[0] = v9;
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_34();
    v15 = *(v14 + 32);

    v15(&v31, v41, v0);
    v30 = v13;
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v4;
    v16[4] = v3;
    v16[5] = v27;
    v16[6] = v7;
    v16[7] = v29;
    v17 = OUTLINED_FUNCTION_78_8();
    v19 = v18;

    v39[55] = 0;
    OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v42 = xmmword_25BCD6F60;
    OUTLINED_FUNCTION_28(v20);
    type metadata accessor for Max2DPoolOperation();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_3();
    sub_25BB9A684(v21, v22, v23, v25, v1, v4, v3, v27, v26, v29, &v30, v41, v17, v19, v25, v26, v27, v1, v0, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36);
    sub_25BAA51C8(*(v9 + 16) + 168, v39);
    sub_25BAA51C8(v39, v38);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v30);

    sub_25BAA4AF4(&v30);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v30);

    sub_25BAA4AF4(&v30);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3();
    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_31_33();
    sub_25BC0F080();
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_22();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v24);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    sub_25BA9C2C8(v39);
    *v28 = v24;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_12_51();
    sub_25BCB74CC();
    __break(1u);
  }
}

void averagePool2D(_:kernelSize:stride:padding:countIncludesPadding:)()
{
  OUTLINED_FUNCTION_9_18();
  HIDWORD(v40) = v5;
  v43 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_21_39();
  v10 = *v9;
  v11 = *(*v9 + 16);
  v12 = *(v11 + 160);
  if (!sub_25BAA80BC(v12, &unk_286D42270))
  {
    LOBYTE(v54[0]) = v12;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v44 = v11;
    v45 = v54;
    v46 = xmmword_25BCBCE20;
    LOBYTE(v47) = 0;
    OUTLINED_FUNCTION_22_39();
    OUTLINED_FUNCTION_1_81();
    sub_25BADDD28();
  }

  v44 = *(v11 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  OUTLINED_FUNCTION_34_23(inited);
  v14 = v3;
  v15 = v3;
  v16 = v2;
  v41 = v8;
  sub_25BCA4578(&v44, v54, v15, v2, v8, v43, &v53);

  v17 = v53;
  if (v53)
  {
    v37 = *(v10 + 16);
    v38 = v10;
    v54[0] = v10;
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_34();
    v19 = *(v18 + 32);

    v19(&v45, v54, v0);
    v44 = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v4;
    *(v20 + 32) = v14;
    *(v20 + 40) = v16;
    *(v20 + 48) = v41;
    *(v20 + 56) = v43;
    *(v20 + 64) = BYTE4(v40) & 1;
    v21 = sub_25BAAF074(sub_25BB9E518);
    v23 = v22;

    v52[55] = 0;
    OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v55 = xmmword_25BCC4A70;
    OUTLINED_FUNCTION_28(v24);
    type metadata accessor for Average2DPoolOperation();
    swift_allocObject();
    LOBYTE(v36) = BYTE4(v40) & 1;
    v25 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v25, v26, v27, v37, v1, v4, v14, v16, v41, v43, v36, &v44, v54, v21, v23, v37, v38, v40, v41, v1, v0, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49);
    sub_25BAA51C8(*(v39 + 16) + 168, v52);
    sub_25BAA51C8(v52, v51);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v44);

    sub_25BAA4AF4(&v44);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v44);

    v28 = v50;

    sub_25BAA4AF4(&v44);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3();
    LOBYTE(v44) = 1;
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_31_33();
    sub_25BC0EDE4(v29, v30, v31, v32, v33, v28, v34);
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_22();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v35);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    sub_25BA9C2C8(v52);
    *v42 = v35;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_12_51();
    sub_25BCB74CC();
    __break(1u);
  }
}

uint64_t sub_25BCA0404@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v7 = sub_25BCB783C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (a3 <= 0.0)
  {
    *a2 = v12;
  }

  else if (a3 >= 1.0)
  {
    *&v54 = *v3;

    return Tensor.init(zerosLike:)(&v54);
  }

  else
  {
    v47 = v9;
    v13 = *a1;
    v14 = *(v12 + 16);
    if (!sub_25BAA80BC(*(v14 + 160), &unk_286D42270))
    {
      v71[0] = v12;
      Tensor.scalarType.getter();
      OUTLINED_FUNCTION_34();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
      *&v54 = v71;
      *(&v54 + 1) = v14;
      v55 = 0uLL;
      LOBYTE(v56) = 6;
      *(&v56 + 1) = v44;
      LOBYTE(v57) = 2;
      v61 = 3;
      OUTLINED_FUNCTION_1_81();
      sub_25BADDD28();
    }

    v15 = *(v13 + 16);
    *&v68[0] = *(v14 + 152);
    v16 = *(v14 + 160);
    *(&v55 + 1) = MEMORY[0x277D839F8];
    *&v56 = &protocol witness table for Double;
    *&v54 = 0;
    v58 = MEMORY[0x277D839F8];
    v59 = &protocol witness table for Double;
    *(&v56 + 1) = 0x3FF0000000000000;
    v62 = 2;
    v63 = v16;
    v70 = 0;
    v71[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
    v71[1] = 110;
    v72 = 2;
    v73 = xmmword_25BCBC690;
    v74 = "init(id:state:shape:distribution:creationSite:)";
    v75 = 47;
    v76 = 2;
    v77 = 0;
    type metadata accessor for RandomOperation();
    swift_allocObject();

    sub_25BCB617C();
    v17 = OUTLINED_FUNCTION_3();
    v23 = sub_25BC323E4(v17, v18, v19, v15, v20, v21, v22);
    sub_25BAA51C8(*(v12 + 16) + 168, &v64);
    v48 = a2;
    if (*(&v65 + 1))
    {
      v68[0] = v64;
      v68[1] = v65;
      v68[2] = v66;
      v69 = v67;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v54);

      sub_25BAA51C8(&v54, v68);
      sub_25BAA4AF4(&v54);
      if (*(&v65 + 1))
      {
        sub_25BA9C2C8(&v64);
      }
    }

    v25 = sub_25BB18AA4();

    sub_25BC170C8(v25, v68, &v64);
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v54);

    v26 = v60;

    sub_25BAA4AF4(&v54);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v54);

    v27 = v59;

    sub_25BAA4AF4(&v54);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_20_23();
    LOBYTE(v54) = v28;
    OUTLINED_FUNCTION_19();
    v31 = sub_25BC0C634(v23, 0, &v64, v29, v26, v27, v30);
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;

    sub_25BAA6EB0();
    sub_25BAA51C8(v68, &v64);
    v46 = v23;
    if (*(&v65 + 1))
    {
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v57 = v67;
      *&v64 = v32;
      v33 = Tensor.scalarType.getter();
      if (sub_25BBABD24(v33, v34) != 2)
      {
        OUTLINED_FUNCTION_12_51();
        sub_25BC87800(v35, v36);
      }

      v53 = v32;
      Tensor.place(on:)(&v54);
      sub_25BABF0A8(&v54);
      v32 = v53;
    }

    else
    {
      sub_25BA9C2C8(&v64);
      v53 = v32;
    }

    v52 = v32;
    v37 = *(*(v12 + 16) + 160);
    OUTLINED_FUNCTION_27_36();
    v38 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v39 = swift_allocObject();
    v45 = xmmword_25BCBAE50;
    *(v39 + 16) = xmmword_25BCBAE50;
    *(v39 + 32) = a3;
    v50 = v37;
    sub_25BAA51C8(&v54, &v64);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v51, v39, &v50, &v64, &v49);
    sub_25BA9C2C8(&v54);
    static Tensor..>= infix(_:_:)(&v54, &v52, &v49);

    v40 = v54;
    LOBYTE(v39) = *(*(v12 + 16) + 160);
    OUTLINED_FUNCTION_27_36();
    v51 = v38;
    v41 = swift_allocObject();
    *(v41 + 16) = v45;
    *(v41 + 32) = 1.0 - a3;
    LOBYTE(v49) = v39;
    sub_25BAA51C8(&v54, &v64);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v51, v41, &v49, &v64, &v52);
    sub_25BA9C2C8(&v54);
    v42 = v52;
    *&v54 = v12;
    *&v64 = v40;
    LOBYTE(v52) = *(*(v12 + 16) + 160);
    v43 = v47;
    (*(v47 + 104))(v11, *MEMORY[0x277D84660], v7);
    Tensor.cast(to:roundingRule:)();
    (*(v43 + 8))(v11, v7);
    static Tensor.* infix(_:_:)();

    v52 = v42;
    static Tensor./ infix(_:_:)();

    sub_25BA9C2C8(v68);

    *v48 = v54;
  }

  return result;
}

uint64_t normalize(_:mean:variance:scale:offset:varianceEpsilon:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v17 = *a6;
  v18 = v10;
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(&v18, &v16);

  v13 = v18;
  v17 = v9;
  v18 = v8;
  static Tensor.- infix(_:_:)();
  if (v11)
  {
    v18 = v13;
    static Tensor.* infix(_:_:)();
  }

  else
  {
  }

  static Tensor.* infix(_:_:)();

  v14 = v18;
  if (v12)
  {
    v16 = v12;
    v17 = v18;
    static Tensor.+ infix(_:_:)();
  }

  else
  {

    *a7 = v14;
  }

  return result;
}

uint64_t Tensor.droppingOut(withProbability:seed:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>, float a4@<S0>)
{
  if (a4 < 0.0 || a4 > 1.0)
  {
    goto LABEL_14;
  }

  v9 = *v4;
  if ((a2 & 1) == 0)
  {
LABEL_10:
    UInt64.vector2.getter(a1);
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v14;
    v19 = 0;
    v20 = 0;
    v18[1] = v9;
    sub_25BB6B668(v18);
    v17 = v18[0];
    sub_25BCA0404(&v17, a3, a4);
  }

  type metadata accessor for ContextManager();
  v10 = sub_25BAA49B8();
  swift_beginAccess();
  v11 = v10[2];
  v12 = *(v11 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[2] = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_25BBF1454(v11);
    v11 = v16;
    v10[2] = v16;
    if (v12)
    {
LABEL_8:
      if (v12 <= *(v11 + 16))
      {
        a1 = sub_25BC32FA0();
        v10[2] = v11;
        swift_endAccess();

        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCE32E0);
  sub_25BCB69CC();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_12_51();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BCA0DA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v8 = *(result + 32);
      v9 = *(v8 + 16);
      v10 = *(*(a2 + 32) + 16);
      v27 = *(a2 + 32);
      v11 = *(v10 + 160);
      v30 = *(v10 + 152);
      LOBYTE(v31) = v11;
      v50 = 0;
      v43[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift";
      v43[1] = 112;
      v44 = 2;
      v45 = xmmword_25BCD6F70;
      v46 = "init(id:gradientOperand:operand:kernelSize:stride:padding:resultDescriptor:creationSite:)";
      v47 = 89;
      v48 = 2;
      v49 = 0;
      type metadata accessor for Max2DPoolGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      sub_25BB9A7A4(0, 0, 0, v9, v10, a3, a4, a5, a6, a7, a8, &v30, v43, a4, v27, a5, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      v17 = v16;
      sub_25BAA51C8(*(v8 + 16) + 168, v42);
      sub_25BAA51C8(v42, v41);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v30);

      v18 = v40;

      sub_25BAA4AF4(&v30);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v30);

      v19 = v39;

      sub_25BAA4AF4(&v30);
      type metadata accessor for TensorRepresentation();
      v20 = swift_allocObject();
      LOBYTE(v30) = 1;
      v21 = sub_25BC11858(v17, 0, v41, 0x100000000, v18, v19, v20);
      type metadata accessor for TensorHandle();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_25BCBAE50;
      *(v23 + 32) = v22;
      v24 = *(v28 + 16);

      *(v23 + 40) = sub_25BAC42B0();
      *(v23 + 48) = v25;

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BCA107C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      HIDWORD(v35) = a9;
      v9 = *(result + 32);
      v10 = *(v9 + 16);
      v11 = *(*(a2 + 32) + 16);
      v36 = *(a2 + 32);
      v12 = *(v11 + 160);
      v39 = *(v11 + 152);
      LOBYTE(v40) = v12;
      v56 = 0;
      OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
      v51 = xmmword_25BCD6F80;
      v52 = "init(id:gradientOperand:operand:kernelSize:stride:padding:countIncludesPadding:resultDescriptor:creationSite:)";
      v53 = 110;
      v54 = v13;
      v55 = 0;
      v34 = v14;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      type metadata accessor for Average2DPoolGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      LOBYTE(v33) = a9 & 1;
      v23 = OUTLINED_FUNCTION_3();
      sub_25BB9A580(v23, v24, v25, v10, v11, v16, v34, a5, v18, v20, v22, v33, &v39, v50, v34, v35, v36, a5, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      v27 = v26;
      sub_25BAA51C8(*(v9 + 16) + 168, v49);
      sub_25BAA51C8(v49, v48);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v39);

      sub_25BAA4AF4(&v39);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v39);

      sub_25BAA4AF4(&v39);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_20_23();
      LOBYTE(v39) = v28;
      OUTLINED_FUNCTION_19();
      sub_25BC11AF4(v27, 0, v48);
      OUTLINED_FUNCTION_17_7();
      OUTLINED_FUNCTION_22();
      v29 = swift_allocObject();
      OUTLINED_FUNCTION_14_2(v29);
      sub_25BAA6EB0();

      sub_25BA9C2C8(v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_25BCBAE50;
      *(v30 + 32) = v29;
      v31 = *(v37 + 16);

      *(v30 + 40) = sub_25BAC42B0();
      *(v30 + 48) = v32;

      return v30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BCA1334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!*(a2 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  v14 = *(v12 + 16);
  sub_25BAA51C8(v14 + 168, v49);
  sub_25BB2B624(a3, v47);
  if (v48 < 3)
  {
    v15 = *(v13 + 16);
    sub_25BB2B624(a3, v42);
    v16 = *(a7 + 32);

    sub_25BCB617C();
    sub_25BCB617C();
    v16(v45, a6, a7);
    v44 = a5;
    v46 = 0;
    *&v50 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PaddingOps.swift";
    *(&v50 + 1) = 112;
    v51 = 2;
    v52 = xmmword_25BCD6F90;
    v53 = "init(id:gradientOperand:operand:mode:padding:resultDescriptor:creationSite:)";
    v54 = 76;
    v55 = 2;
    type metadata accessor for PadGradientOperation();
    swift_allocObject();
    v17 = sub_25BB61158(0, 0, 0, v14, v15, v42, a4, &v44, &v50);
    sub_25BAA51C8(v49, &v44);
    sub_25BAA51C8(&v44, v43);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v42);

    v18 = v42[10];

    sub_25BAA4AF4(v42);
    sub_25BAA49B8();
    sub_25BAA4A5C(v42);

    v19 = v42[9];

    sub_25BAA4AF4(v42);
    type metadata accessor for TensorRepresentation();
    v20 = swift_allocObject();
    LOBYTE(v42[0]) = 1;
    v21 = sub_25BC11D90(v17, 0, v43, 0x100000000, v18, v19, v20);
    type metadata accessor for TensorHandle();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;

    sub_25BAA6EB0();

    sub_25BA9C2C8(&v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25BCBAE50;
    *(v23 + 32) = v22;
    v24 = *(v13 + 16);

    *(v23 + 40) = sub_25BAC42B0();
    *(v23 + 48) = v25;

LABEL_15:

    sub_25BA9C2C8(v49);
    sub_25BB2B680(v47);
    return v23;
  }

  v26 = *(a4 + 16);
  if (v26)
  {
    v42[0] = MEMORY[0x277D84F90];

    sub_25BAA21EC();
    v27 = v42[0];
    v28 = (a4 + 32);
    v29 = *(v42[0] + 16);
    do
    {
      v31 = *v28;
      v28 += 2;
      v30 = v31;
      v42[0] = v27;
      v32 = v29 + 1;
      if (v29 >= *(v27 + 24) >> 1)
      {
        sub_25BAA21EC();
        v27 = v42[0];
      }

      *(v27 + 16) = v32;
      *(v27 + 8 * v29++ + 32) = v30;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    v32 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v32 == *(a5 + 16) && v32 == *(*(*(v12 + 16) + 152) + 16))
  {
    sub_25BB63448(v27, a5);
    v34 = v33;
    v35 = sub_25BCB617C();
    sub_25BB63240(v35, v34);
    v37 = v36;

    sub_25BB638B4(v37, v12, v42);

    v38 = v42[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25BCBAE50;
    *(v23 + 32) = v38;
    v39 = *(v13 + 16);

    *(v23 + 40) = sub_25BAC42B0();
    *(v23 + 48) = v40;

    goto LABEL_15;
  }

LABEL_18:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BCA181C(uint64_t result, void *a2, char a3)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2[2];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = *(result + 32);
  v5 = a2[4];
  v6 = a2[5];
  v42 = v4;
  v43 = v6;
  v44 = v5;
  if ((a3 & 1) == 0)
  {
    v41 = 0;
    v12 = *(v4 + 16);
    v13 = *(v5 + 16);
    v14 = *(v6 + 16);
    goto LABEL_8;
  }

  if (v3 < 3)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = a2[6];
  v8 = *(v4 + 16);
  v9 = *(v5 + 16);
  v10 = *(v6 + 16);
  v11 = *(v7 + 16);

  v41 = v7;

LABEL_8:
  v50[55] = 0;
  v51 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  v52 = 107;
  v53 = 2;
  v54 = xmmword_25BCD6FB0;
  v55 = "init(id:gradient:input:weight:bias:stride:padding:dilation:groupCount:creationSite:)";
  v56 = 84;
  v57 = 2;
  type metadata accessor for ConvolutionTranspose2DGradientOperation();
  swift_allocObject();

  v15 = sub_25BBA5484();
  sub_25BAA51C8(*(v42 + 16) + 168, v50);
  sub_25BAA51C8(v50, v49);
  sub_25BAA51C8(v49, v48);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v16 = v47;

  sub_25BAA4AF4(v45);
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v17 = v46;

  sub_25BAA4AF4(v45);
  type metadata accessor for TensorRepresentation();
  v18 = swift_allocObject();
  v45[0] = 1;
  v19 = sub_25BC1202C(v15, 0, v48, 0x100000000, v16, v17, v18);
  type metadata accessor for TensorHandle();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v49);
  sub_25BAA51C8(v50, v49);
  sub_25BAA51C8(v49, v48);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v21 = v47;

  sub_25BAA4AF4(v45);
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v22 = v46;

  sub_25BAA4AF4(v45);
  v23 = swift_allocObject();
  v45[0] = 1;
  v24 = sub_25BC1202C(v15, 1, v48, 0x100000000, v21, v22, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25BCBAE70;
  *(v26 + 32) = v20;
  v27 = *(v44 + 16);

  *(v26 + 40) = sub_25BAC42B0();
  *(v26 + 48) = v28;
  *(v26 + 56) = v25;
  v29 = *(v43 + 16);

  *(v26 + 64) = sub_25BAC42B0();
  *(v26 + 72) = v30;
  if (v41)
  {
    sub_25BAA51C8(*(v41 + 16) + 168, v49);
    sub_25BAA51C8(v49, v48);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v45);

    v31 = v47;

    sub_25BAA4AF4(v45);
    sub_25BAA49B8();
    sub_25BAA4A5C(v45);

    v32 = v46;

    sub_25BAA4AF4(v45);
    v33 = swift_allocObject();
    v45[0] = 1;
    v34 = sub_25BC1202C(v15, 2, v48, 0x100000000, v31, v32, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v49);
    v36 = *(v41 + 16);

    v37 = sub_25BAC42B0();
    v39 = v38;
    sub_25BAC98F4();
    v26 = v40;

    sub_25BA9C2C8(v50);
    *(v26 + 16) = 3;
    *(v26 + 80) = v35;
    *(v26 + 88) = v37;
    *(v26 + 96) = v39;
  }

  else
  {
    sub_25BA9C2C8(v50);
  }

  return v26;
}

uint64_t Tensor.topk(_:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v8 = *v3;
  v9 = sub_25BB731F4(*(*(*v3 + 16) + 152));
  if (v10)
  {
    goto LABEL_6;
  }

  v4 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    v49[3] = MEMORY[0x277D83B88];
    v49[0] = a3;
    v50 = xmmword_25BCD6FC0;
    v51 = 0;
    v52 = 0;
    v53 = v4;
    v55 = 0;
    v56 = 0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    v57 = -1;
    v58 = 12;
    OUTLINED_FUNCTION_1_81();
    sub_25BADDD28();
  }

  if (v9 <= a3)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22();
  *(swift_allocObject() + 16) = a3;

  OUTLINED_FUNCTION_78_8();

  v60[55] = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v61 = xmmword_25BCD6FD0;
  OUTLINED_FUNCTION_28(v11);
  type metadata accessor for TopKOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_3();
  sub_25BC3EA94();
  sub_25BAA51C8(*(v8 + 16) + 168, v60);
  sub_25BAA51C8(v60, v59);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v12 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v12, v13, v14, v15, v16, v17, v18, v19, v49[0]);

  sub_25BAA4AF4(v49);
  v20 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v20, v21, v22, v23, v24, v25, v26, v27, v49[0]);

  sub_25BAA4AF4(v49);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  LOBYTE(v49[0]) = 1;
  v28 = OUTLINED_FUNCTION_28_34();
  sub_25BC122C8(v28, 0);
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v29);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v60);
  *a1 = v29;
  sub_25BAA51C8(*(v8 + 16) + 168, v60);
  sub_25BAA51C8(v60, v59);
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v30 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v30, v31, v32, v33, v34, v35, v36, v37, v49[0]);

  sub_25BAA4AF4(v49);
  v38 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v38, v39, v40, v41, v42, v43, v44, v45, v49[0]);

  sub_25BAA4AF4(v49);
  OUTLINED_FUNCTION_16_3();
  LOBYTE(v49[0]) = 1;
  v46 = OUTLINED_FUNCTION_28_34();
  sub_25BC122C8(v46, 1);
  OUTLINED_FUNCTION_22();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v47);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v60);
  *a2 = v47;
  return result;
}

uint64_t sub_25BCA21A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v4 = *(result + 32);
      v13 = *(a2 + 32);
      v5 = v13;

      Tensor.topk(_:)(&v12, &v11, a3);

      v13 = v5;

      Tensor.init(zerosLike:)(&v13);
      v6 = *(*(*(v5 + 16) + 152) + 16) - 1;
      sub_25BBFF0D8();

      v7 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_25BCBAE50;
      *(v8 + 32) = v7;
      v9 = *(v5 + 16);

      *(v8 + 40) = sub_25BAC42B0();
      *(v8 + 48) = v10;

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks6TensorV11PaddingModeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BCA234C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BCA23A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_25BCA2400(uint64_t a1, int a2)
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

void OUTLINED_FUNCTION_36_23()
{

  JUMPOUT(0x25F876C90);
}

uint64_t Tensor.withUnsafeMetalBuffer<A>(_:)(void (*a1)(void))
{
  v3 = v2;
  v4 = v1;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v8 + 16);
    swift_retain_n();
    v10 = sub_25BA928B4();
    [v10 lock];

    sub_25BA92920(v9, 0, 0, v29);
    if (v2)
    {
      [*(v9 + 224) unlock];
      goto LABEL_15;
    }

    v28 = a1;
    [*(v9 + 224) unlock];

    v12 = v29[0];
    v11 = v29[1];
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v13 = qword_281557400;
    v14 = *(v8 + 16);
    v31 = *(v14 + 152);
    v30 = *(v14 + 160);
    sub_25BAA51C8(v14 + 168, v29);
    swift_unknownObjectRetain();
    sub_25BCB617C();
    sub_25BC72A84(&v31, &v30, v29, v13, v12, v11);
    v16 = v15;
    v3 = 0;
    sub_25BA9C2C8(v29);

    v17 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(*(v8 + 16) + 168, v29);
    ObjectType = swift_getObjectType();
    v19 = swift_unknownObjectRetain();
    LOBYTE(v31) = 1;
    v20 = sub_25BC5FAD0(v19, v29, 0x100000000uLL, v17, ObjectType, v16);
    type metadata accessor for TensorHandle();
    v8 = swift_allocObject();
    *(v8 + 16) = v20;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v21 = *v4;

    *v4 = v8;
    a1 = v28;
  }

  v22 = *(v8 + 16);
  swift_retain_n();
  v23 = sub_25BA928B4();
  [v23 lock];

  sub_25BA92920(v22, 0, 0, v29);
  if (v3)
  {
    [*(v22 + 224) unlock];
LABEL_15:

    __break(1u);
    return result;
  }

  [*(v22 + 224) unlock];

  v24 = v29[0];
  if (object_getClass(v29[0]) == _TtC14NeuralNetworks21MPSGraphTensorStorage && v24)
  {
    v25 = sub_25BC29614();
    swift_unknownObjectRelease();
    if (v25)
    {
      v26 = swift_unknownObjectRetain();
      a1(v26);
      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return (a1)(0);
}

uint64_t sub_25BCA283C()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_25BB00B9C(0, v2, 0);
    if (v2 <= *(v1 + 16))
    {
      v4 = v0[7];
      if (v2 > *(v4 + 16))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v5 = v0[8];
      if (v2 > *(v5 + 16))
      {
LABEL_14:
        __break(1u);
        return result;
      }

      result = v17;
      v6 = (v1 + 32);
      v7 = (v4 + 32);
      for (i = (v5 + 32); ; ++i)
      {
        v10 = *v6++;
        v9 = v10;
        v12 = *v7++;
        v11 = v12;
        if (v12 < v9)
        {
          break;
        }

        v13 = *i;
        v18 = result;
        v15 = *(result + 16);
        v14 = *(result + 24);
        if (v15 >= v14 >> 1)
        {
          sub_25BB00B9C(v14 > 1, v15 + 1, 1);
          result = v18;
        }

        *(result + 16) = v15 + 1;
        v16 = (result + 24 * v15);
        v16[4] = v9;
        v16[5] = v11;
        v16[6] = v13;
        if (!--v2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void *sub_25BCA296C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return v0;
}

uint64_t sub_25BCA29B4()
{
  sub_25BCA296C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BCA2A78(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

void sub_25BCA2AC4(uint64_t a1)
{
  (*(*v1 + 136))();
  sub_25BCB625C();

  sub_25BAD4C78(a1, v1[6]);
  sub_25BAD4C78(a1, v1[7]);
  v3 = v1[8];

  sub_25BAD4C78(a1, v3);
}

uint64_t sub_25BCA2B84(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a8;
  v13 = *(a8 + 8);
  *(v11 + 152) = a10;
  *(v11 + 160) = a11;
  if (!a3)
  {
    v14 = OUTLINED_FUNCTION_1_82();
    a1 = sub_25BAA5EA0(v14, v15);
  }

  return OUTLINED_FUNCTION_0_98(a1, a2, a3);
}

uint64_t sub_25BCA2BEC()
{
  sub_25BCA296C();
  v1 = *(v0 + 160);
  sub_25BA9D148(*(v0 + 152));

  return swift_deallocClassInstance();
}

uint64_t sub_25BCA2C4C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = *a9;
  v11 = *(a9 + 8);
  *(v9 + 152) = a4;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0xD000000000000013, 0x800000025BCE0890);
  }

  return OUTLINED_FUNCTION_0_98(a1, a2, a3);
}

uint64_t sub_25BCA2CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!sub_25BB07E0C(a1, a2))
  {
    v5 = sub_25BAC4018();
    v6 = *(v2 + 152);
    if (v5 != sub_25BAC4018())
    {
      return 0;
    }

    v8 = *(v3 + 152);
    *(v3 + 152) = a2;
  }

  return 1;
}

uint64_t sub_25BCA2D3C()
{
  sub_25BCA296C();
  v1 = *(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_25BCA2D9C(uint64_t a1)
{
  result = sub_25BCA2E4C(&qword_27FBB6168, type metadata accessor for SliceGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BCA2DF4(uint64_t a1)
{
  result = sub_25BCA2E4C(&qword_27FBB7DD0, type metadata accessor for BaseSliceOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BCA2E4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BCA2E94(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v3))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 16);
      v8 = sub_25BB722C0();
      sub_25BCA51F0();
      v12 = v11;
      sub_25BCB617C();
      sub_25BAB3820();
      if (v12 == v9)
      {
        return v8;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  swift_unknownObjectRetain();
  v8 = v7(a1, ObjectType, v5);
  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_25BCA2FE8(uint64_t a1)
{
  result = sub_25BCA3010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BCA3010()
{
  result = qword_28154E3C0;
  if (!qword_28154E3C0)
  {
    type metadata accessor for PassthroughOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154E3C0);
  }

  return result;
}

uint64_t static Tensor..! prefix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (*(v4 + 160) != 12)
  {
    LOBYTE(v34) = *(v4 + 160);
    v26[0] = sub_25BC8FACC();
    v26[1] = v25;
    v27 = xmmword_25BCBC6A0;
    v28 = 6;
    v29 = 12;
    v30 = 0;
    v31 = 3;
    sub_25BADDD28();
  }

  *&v34 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryLogicalOps.swift";
  *(&v34 + 1) = 117;
  v35 = 2;
  v36 = xmmword_25BCD71A0;
  v37 = "init(id:operator:operand:creationSite:)";
  v38 = 39;
  v39 = 2;
  type metadata accessor for UnaryLogicalOperation();
  swift_allocObject();

  v5 = sub_25BCB24D8(0, 0, 0, v4, &v34);
  sub_25BAA51C8(*(v3 + 16) + 168, v33);
  sub_25BAA51C8(v33, v32);
  v6 = type metadata accessor for ContextManager();
  swift_retain_n();
  v7 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v7, v8, v9, v10, v11, v12, v13, v14, v26[0]);

  sub_25BAA4AF4(v26);
  v15 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v15, v16, v17, v18, v19, v20, v21, v22, v26[0]);

  OUTLINED_FUNCTION_21_18();
  sub_25BAA4AF4(v26);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_7_36();
  sub_25BC12558(v5, 0, v32);
  OUTLINED_FUNCTION_17_7();
  v23 = OUTLINED_FUNCTION_15_7();
  *(v23 + 16) = v6;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v33);
  *a2 = v23;
  return result;
}

uint64_t sub_25BCA385C(char a1, uint64_t *a2, void (*a3)(_OWORD *, void *))
{
  v5 = *a2;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6600, &qword_25BCCB580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  sub_25BAA51C8(v9, v8);
  sub_25BC04800();
  sub_25BA9C2C8(v9);
  *&v9[0] = v8[12];
  v8[0] = v5;
  a3(v9, v8);
}

uint64_t sub_25BCA394C(uint64_t *a1, char a2, void (*a3)(uint64_t *, _OWORD *))
{
  v11 = *a1;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6600, &qword_25BCCB580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  sub_25BAA51C8(v9, v7);
  sub_25BC04800();
  sub_25BA9C2C8(v9);
  *&v9[0] = v8;
  a3(&v11, v9);
}

uint64_t sub_25BCA3D14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

void sub_25BCA3D28()
{
  OUTLINED_FUNCTION_14_6();
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v2;
    v8 = v1;
    v9 = v0;
    v24 = MEMORY[0x277D84F90];
    sub_25BAA21EC();
    if (v5 <= *(v8 + 16))
    {
      if (v5 > *(v7 + 16))
      {
LABEL_24:
        __break(1u);
        return;
      }

      v6 = v24;
      v10 = (v8 + 32);
      v11 = (v9 + 32);
      v12 = (v7 + 32);
      while (1)
      {
        v14 = *v10++;
        v13 = v14;
        v15 = *v11++;
        v16 = __OFSUB__(v13, v15);
        v17 = v13 - v15;
        if (v16)
        {
          break;
        }

        v16 = __OFSUB__(v17, 1);
        v18 = v17 - 1;
        if (v16)
        {
          goto LABEL_19;
        }

        v19 = *v12;
        if (*v12 < 0)
        {
          v16 = __OFSUB__(0, v19);
          v19 = -v19;
          if (v16)
          {
            goto LABEL_22;
          }
        }

        else if (!v19)
        {
          goto LABEL_20;
        }

        v20 = v18 / v19;
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_21;
        }

        v23 = *(v24 + 16);
        v22 = *(v24 + 24);
        if (v23 >= v22 >> 1)
        {
          OUTLINED_FUNCTION_81(v22);
          sub_25BAA21EC();
        }

        *(v24 + 16) = v23 + 1;
        *(v24 + 8 * v23 + 32) = v21;
        ++v12;
        if (!--v5)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (sub_25BAB5C48(v6, &unk_286D446F8))
  {

    v6 = MEMORY[0x277D84F90];
  }

  *v4 = v6;
  OUTLINED_FUNCTION_15_2();
}

void sub_25BCA3E80(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7 < 2)
  {
    goto LABEL_18;
  }

  v8 = *a3;
  if (*(*a3 + 16) < 2uLL)
  {
    goto LABEL_18;
  }

  v29 = *a1;
  v11 = TensorShape.subscript.getter(v7 - 2);
  v12 = *(v6 + 16) - 1;
  v28 = v6;
  v13 = TensorShape.subscript.getter(v12);
  v14 = *(v8 + 16) - 2;
  v29 = v8;
  v15 = TensorShape.subscript.getter(v14);
  v16 = *(v8 + 16) - 1;
  v28 = v8;
  v17 = TensorShape.subscript.getter(v16);
  v18 = (a2 & 1) != 0 ? v11 : v13;
  v19 = (a2 & 1) != 0 ? v13 : v11;
  v20 = (a4 & 1) == 0;
  v21 = (a4 & 1) != 0 ? v15 : v17;
  v22 = v20 ? v15 : v17;
  if (v18 != v22)
  {
    goto LABEL_18;
  }

  sub_25BCB617C();
  sub_25BCA48D4(2, v6, &v28);
  v27 = v28;
  sub_25BCB617C();
  sub_25BCA48D4(2, v8, &v26);
  v25 = v26;
  static ShapeInference.broadcasting(_:_:)(&v27, &v25, &v29);

  v23 = v29;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    *a5 = v23;
    sub_25BAC0EB8(inited);
  }

  else
  {
LABEL_18:
    *a5 = 0;
  }
}

uint64_t sub_25BCA400C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (-v5 > a3 || v5 <= a3)
  {
    OUTLINED_FUNCTION_23_39();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v8 = v5 & (a3 >> 63);
  v12 = *a1;
  v9 = TensorShape.subscript.getter(v8 + a3);
  v10 = v9 / a2;
  if (a2 == -1)
  {
    if (v9 != 0x8000000000000000)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v9 % a2)
  {
    return 0;
  }

LABEL_10:
  sub_25BCB617C();
  TensorShape.subscript.setter(v10, v8 + a3);
  return sub_25BC553BC(v4, a2);
}

uint64_t sub_25BCA4108(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (-v4 <= a3 && v4 > a3)
  {
    v7 = (v4 & (a3 >> 63)) + a3;
    v26 = *a1;
    v8 = TensorShape.subscript.getter(v7);
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = (a2 + 32);
      do
      {
        v13 = v12[v10];
        v14 = __OFADD__(v11, v13);
        v11 += v13;
        if (v14)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        ++v10;
      }

      while (v9 != v10);
      if (v8 == v11)
      {
        v27 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_29_0();
        sub_25BAAEF84();
        v15 = v27;
        while (1)
        {
          v16 = *(v3 + 16);
          if (v7 < -v16 || v7 >= v16)
          {
            break;
          }

          v19 = *v12++;
          v18 = v19;
          sub_25BCB617C();
          v20 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAA2110(v3);
            v20 = v24;
          }

          v21 = (v16 & (v7 >> 63)) + v7;
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          if (v21 >= *(v20 + 16))
          {
            goto LABEL_30;
          }

          *(v20 + 8 * v21 + 32) = v18;
          v23 = *(v27 + 16);
          v22 = *(v27 + 24);
          if (v23 >= v22 >> 1)
          {
            OUTLINED_FUNCTION_81(v22);
            sub_25BAAEF84();
          }

          *(v27 + 16) = v23 + 1;
          *(v27 + 8 * v23 + 32) = v20;
          if (!--v9)
          {
            return v15;
          }
        }

LABEL_31:
        sub_25BCB617C();
        OUTLINED_FUNCTION_17_4();
        sub_25BADDD28();
      }
    }

    else if (!v8)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return 0;
}

unint64_t sub_25BCA42DC(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *(a2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void static ShapeInference.broadcasting(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14_6();
  a21 = v24;
  a22 = v28;
  v29 = v27;
  v30 = *v26;
  v31 = *v25;
  if (*(*v26 + 16) < *(*v25 + 16))
  {
    *v27 = 0;
    goto LABEL_36;
  }

  if (sub_25BAB5C48(*v25, *v26))
  {
    *v29 = v31;
    OUTLINED_FUNCTION_15_2();

    sub_25BCB617C();
    return;
  }

  v54 = v29;
  v33 = *(v31 + 16);
  sub_25BCB617C();
  v34 = *(v30 + 16);
  sub_25BCB617C();
  v35 = v34 + 3;
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    v37 = v33;
    if (v33)
    {
      break;
    }

    if (v35 == 3)
    {
      goto LABEL_39;
    }

    v33 = 0;
    v38 = 0;
LABEL_12:
    if (v35 - 4 >= *(v30 + 16))
    {
      goto LABEL_38;
    }

    v39 = *(v30 + 8 * v35);
    if (!v37)
    {
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = *(v36 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAAE04C();
        v36 = v45;
      }

      OUTLINED_FUNCTION_19_38();
      if (v41)
      {
        OUTLINED_FUNCTION_4_74(v42);
        sub_25BAAE04C();
        v36 = v46;
      }

      v38 = v39;
      goto LABEL_32;
    }

    if (v39 == 1)
    {
      if (v38 != 1)
      {
        goto LABEL_35;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v36 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAAE04C();
        v36 = v48;
      }

      OUTLINED_FUNCTION_19_38();
      if (v41)
      {
        OUTLINED_FUNCTION_4_74(v40);
        sub_25BAAE04C();
        v36 = v49;
      }

      v38 = 1;
    }

    else
    {
      if (v38 == 1)
      {
        goto LABEL_22;
      }

      if (v38 != v39)
      {
LABEL_35:

        *v54 = 0;
        goto LABEL_36;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v36 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAAE04C();
        v36 = v51;
      }

      OUTLINED_FUNCTION_19_38();
      if (v41)
      {
        OUTLINED_FUNCTION_4_74(v43);
        sub_25BAAE04C();
        v36 = v52;
      }
    }

LABEL_32:
    *(v36 + 16) = v22;
    *(v36 + 8 * v23 + 32) = v38;
    --v35;
  }

  --v33;
  if (v37 - 1 < *(v31 + 16))
  {
    if (v35 == 3)
    {
      goto LABEL_35;
    }

    v38 = *(v31 + 32 + 8 * v33);
    goto LABEL_12;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  a10 = v36;
  sub_25BCB617C();
  v53 = sub_25BAFF7EC(&a10);

  *v54 = v53;
LABEL_36:
  OUTLINED_FUNCTION_15_2();
}

void sub_25BCA4578(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = *a1;
  if (*(*a1 + 16) != 4 || (v10 = *a2, *(*a2 + 16) != 4) || v9[6] < v10[6] && v9[7] < v10[7])
  {
    i = 0;
    goto LABEL_6;
  }

  v39 = a7;
  v14 = v9 + 4;
  sub_25BCB617C();
  v15 = 0;
  for (i = MEMORY[0x277D84F90]; ; *(i + 8 * v7 + 32) = v19)
  {
    if (v15 == 4)
    {

      if (v9[2] > 1uLL && *(i + 16) > 1uLL)
      {
        v14 = v9[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_49;
      }

LABEL_62:
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28();
    }

    v16 = v9[2];
    if (v15 < -v16 || v15 >= v16)
    {
      goto LABEL_62;
    }

    v18 = (v16 & (v15 >> 63)) + v15;
    if (v18 < 0)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_25BAA2110(i);
      i = v38;
LABEL_49:
      if (*(i + 16) >= 2uLL)
      {
        *(i + 40) = v14;
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_62;
    }

    v19 = v14[v18];
    if (v15)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(i + 16);
      OUTLINED_FUNCTION_45();
      sub_25BAAE04C();
      i = v33;
    }

    OUTLINED_FUNCTION_17_52();
    if (v20)
    {
      OUTLINED_FUNCTION_6_64();
      i = v34;
    }

    v15 = 1;
LABEL_45:
    *(i + 16) = v8;
  }

  if (v15 == 3)
  {
    v21 = a6;
    v22 = a4;
    v23 = v10 + 7;
    if (v10[2] <= 3uLL)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v15 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = *(i + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAAE04C();
        i = v36;
      }

      OUTLINED_FUNCTION_17_52();
      if (v20)
      {
        OUTLINED_FUNCTION_6_64();
        i = v37;
      }

      v15 = 2;
      goto LABEL_45;
    }

    v23 = v10 + 6;
    v21 = a5;
    v22 = a3;
    if (v10[2] <= 2uLL)
    {
      goto LABEL_62;
    }
  }

  if (v21 + 0x4000000000000000 < 0)
  {
    goto LABEL_54;
  }

  v24 = v19 + 2 * v21;
  if (__OFADD__(v19, 2 * v21))
  {
    goto LABEL_55;
  }

  v25 = __OFSUB__(v24, *v23);
  v26 = v24 - *v23;
  if (v25)
  {
    goto LABEL_56;
  }

  if (!v22)
  {
    goto LABEL_57;
  }

  if (v26 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_59;
  }

  v28 = v26 / v22;
  v19 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    goto LABEL_58;
  }

  if (v19 >= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(i + 16);
      OUTLINED_FUNCTION_45();
      sub_25BAAE04C();
      i = v30;
    }

    ++v15;
    OUTLINED_FUNCTION_17_52();
    if (v20)
    {
      OUTLINED_FUNCTION_6_64();
      i = v31;
    }

    goto LABEL_45;
  }

  i = 0;
LABEL_52:
  a7 = v39;
LABEL_6:
  *a7 = i;
}

uint64_t sub_25BCA48D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = sub_25BBFD334(*(a2 + 16), -result, 0);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  if (v5 < 0)
  {
    goto LABEL_10;
  }

  TensorShape.subscript.getter(0, v5, a3);
}

void sub_25BCA4950()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100(v4, v5, v6, v7);
  if (!v9)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v16);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v14 = v11;
      OUTLINED_FUNCTION_12_40();
      *v1 = *(*(v0 + 56) + ((v14 << 9) | (8 * v15)));
      if (v13 == v10)
      {

        v16 = v14;
        goto LABEL_17;
      }

      ++v1;

      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25BCA4A2C(void *a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  sub_25BCB617C();

  if (!a2)
  {
    v10 = 0;
    a3 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_27;
  }

  if (a3 < 0)
  {
    goto LABEL_31;
  }

  v30 = a3;
  v33 = a1;
  v9 = 0;
  v10 = 0;
  v11 = *(v7 + 16);
  v35 = v7 + 32;
  v36 = v7;
  v12 = &qword_27FBB3DB0;
  v13 = &off_279972000;
  v14 = &off_279972000;
  v15 = &qword_25BCCCD60;
  while (2)
  {
    if (__OFADD__(v9, 1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    if (v10 >= v11)
    {
      a3 = v9;
      a1 = v33;
      goto LABEL_27;
    }

    v31 = v9 + 1;
    v32 = a2;
    v34 = v9;
    v16 = v35 + 8 * v10;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      sub_25BC2C250(v16, v41);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

      result = OUTLINED_FUNCTION_25_35();
LABEL_21:
      ++v10;
      v16 += 8;
      if (v10 >= v11)
      {
        v10 = v11;
        a1 = v33;
        a3 = v34;
        goto LABEL_27;
      }
    }

    v18 = Strong;
    if (*(Strong + 32) <= 0)
    {
      goto LABEL_19;
    }

    v19 = sub_25BA928B4();
    [v19 v13[150]];

    swift_beginAccess();
    sub_25BA9323C(v18 + 40, v38);
    if (v40)
    {
      if (v40 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v39);
      }

      else
      {
        sub_25BA9778C(v38);
      }

      [*(v18 + 224) v14[151]];

LABEL_19:
      OUTLINED_FUNCTION_25_35();
      goto LABEL_20;
    }

    sub_25BA9BE3C(v38, v37);
    v20 = v11;
    v21 = v15;
    v22 = v12;
    v23 = v14;
    v24 = v13;
    v25 = v37[1];
    ObjectType = swift_getObjectType();
    v27 = *(v25 + 56);
    v28 = v25;
    v13 = v24;
    v14 = v23;
    v12 = v22;
    v15 = v21;
    v11 = v20;
    v7 = v36;
    v29 = v27(ObjectType, v28);
    sub_25BA977E0(v37);
    [*(v18 + 224) v14 + 376];

    result = OUTLINED_FUNCTION_25_35();
    if (v29)
    {
LABEL_20:

      goto LABEL_21;
    }

    *v32 = v18;
    a2 = v32 + 1;
    ++v10;
    v9 = v31;
    if (v31 != v30)
    {
      continue;
    }

    break;
  }

  a1 = v33;
  a3 = v30;
LABEL_27:
  *a1 = v7;
  a1[1] = v10;
  return a3;
}

uint64_t sub_25BCA4CDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BB70FE0();
  v8 = v7;

  if (!a2)
  {
    a3 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_18:
    *a1 = v6;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a1;
    result = sub_25BA9BEA0(v6);
    v10 = 0;
    v11 = v6 & 0xC000000000000001;
    v12 = v6 & 0xFFFFFFFFFFFFFF8;
    v18 = result - v8;
    v19 = result;
    v21 = v6;
    v13 = v6 + 8 * v8 + 32;
    v14 = v8 - result;
    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (!(v14 + v10))
      {
        a3 = v18;
        v8 = v19;
        goto LABEL_17;
      }

      v16 = v8 + v10;
      if (v11)
      {
        result = MEMORY[0x25F8779B0](v8 + v10, v21);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v16 >= *(v12 + 16))
        {
          goto LABEL_22;
        }

        v17 = *(v13 + 8 * v10);
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v10++) = result;
      if (v15 == a3)
      {
        v8 = v16 + 1;
LABEL_17:
        a1 = v20;
        v6 = v21;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25BCA4E0C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA4EEC()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100(v4, v5, v6, v7);
  if (!v9)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v19);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v19 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v14 = v11;
      v15 = __clz(__rbit64(v2)) | (v11 << 6);
      v16 = (*(v0 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(v0 + 56) + 8 * v15);
      v2 &= v2 - 1;
      *v1 = *v16;
      v1[1] = v17;
      v1[2] = v18;
      if (v13 == v10)
      {
        sub_25BCB617C();
        v19 = v14;
        goto LABEL_17;
      }

      v1 += 3;
      sub_25BCB617C();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25BCA4FDC(void *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, v4, 0xECuLL);
  bzero(__src, 0xECuLL);
  result = sub_25BCA6108(__dst, __src);
  if (!a2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_8:
    v9 = a3;
LABEL_11:
    memcpy(a1, __src, 0xECuLL);
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      memcpy(v11, __src, 0xECuLL);
      bzero(__src, 0xECuLL);
      if (!v11[0])
      {
        sub_25BAA6F5C(v11, &qword_27FBB4828, &qword_25BCBF518);
        goto LABEL_11;
      }

      memcpy(__dst, v11, 0xECuLL);
      result = memcpy(a2, __dst, 0xECuLL);
      a2 += 240;
      ++v9;
      if (v10 == a3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA50F8()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100(v5, v6, v7, v8);
  if (!v10)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v22);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v13 < v11)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v4)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v15);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v12;
LABEL_12:
      OUTLINED_FUNCTION_12_40();
      v17 = v16 | (v15 << 6);
      v18 = *(v0 + 48) + 24 * v17;
      v19 = *(*(v0 + 56) + 8 * v17);
      v21 = *(v18 + 8);
      v20 = *(v18 + 16);
      *v1 = *v18;
      *(v1 + 8) = v21;
      *(v1 + 16) = v20;
      *(v1 + 24) = v19;
      if (v14 == v11)
      {
        sub_25BCB617C();
        v22 = v15;
        goto LABEL_17;
      }

      v1 += 32;
      sub_25BCB617C();
      v13 = v14;
      v12 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_25BCA51F0()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100(v4, v5, v6, v7);
  if (!v9)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v16);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v14 = v11;
      OUTLINED_FUNCTION_12_40();
      *v1 = *(*(v0 + 56) + ((v14 << 10) | (16 * v15)));
      if (v13 == v10)
      {
        swift_unknownObjectRetain();
        v16 = v14;
        goto LABEL_17;
      }

      ++v1;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_25BCA52D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA5358()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100(v4, v5, v6, v7);
  if (!v9)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v17);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v13 = v11;
      v14 = (*(v0 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v2)))));
      v15 = *v14;
      v16 = v14[1];
      v2 &= v2 - 1;
      *v1 = v15;
      v1[1] = v16;
      if (v12 + 1 == v10)
      {
        swift_unknownObjectRetain();
        v17 = v13;
        goto LABEL_17;
      }

      v1 += 2;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_25BCA5444(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!a2)
  {
    a3 = 0;
LABEL_10:
    v6 = *(a4 + 16);
LABEL_11:
    *result = a4;
    result[1] = v6;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      if (!(v4 + v5))
      {
        v6 = 0;
        a3 = v4;
        goto LABEL_11;
      }

      if (v4 + v5 > *(a4 + 16))
      {
        break;
      }

      *a2++ = *(a4 + 8 * v4 + 24 + 8 * v5--);
      if (!(a3 + v5))
      {
        v6 = v4 + v5;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA54B4()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100(v4, v5, v6, v7);
  if (!v9)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v16);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v13 = v11;
      v14 = (*(v0 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v2)))));
      v15 = v14[1];
      v2 &= v2 - 1;
      *v1 = *v14;
      v1[1] = v15;
      if (v12 + 1 == v10)
      {
        sub_25BCB617C();
        v16 = v13;
        goto LABEL_17;
      }

      v1 += 2;
      sub_25BCB617C();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_25BCA55A0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*a3 + 8 * v11++));
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (*v25 >= v23)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_25BAFD620();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_25BAFD620();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_25BCA5B6C((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_25BCA5A40(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_25BCA5A40(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25BCA5B6C((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25BCA5B6C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_25BAB254C(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v4 >= *v6)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_25BAB254C(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (*v14 < v16)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_25BCA5CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = (v10 + 8 * result);
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = sub_25BAB254C(v10 + 8 * a2, v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void sub_25BCA5D84()
{
  OUTLINED_FUNCTION_14_6();
  v7 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3;
  v9 = v2;
  v20 = v5;
  v10 = v4;
  v11 = v6;
  v12 = *v0;
  v13 = (v12 + 32 + 24 * v1);
  swift_arrayDestroy();
  v14 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, v9))
  {
    goto LABEL_16;
  }

  sub_25BAC9928((v12 + 32 + 24 * v9), v15 - v9, &v13[3 * v8]);
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (v8 < 1)
  {
    OUTLINED_FUNCTION_15_2();
  }

  else
  {
    *v13 = v10;
    v13[1] = v20;
    v13[2] = v11;
    if (v13 + 3 < &v13[3 * v8])
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_15_2();
  }
}

unint64_t sub_25BCA5E9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 8 * result);
  if (!v10)
  {
    goto LABEL_12;
  }

  v16 = *(v14 + 16);
  v17 = v16 - a2;
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_21;
  }

  result = v15 + 8 * a3;
  v18 = (v14 + 32 + 8 * a2);
  if (result != v18 || v18 + 8 * v17 <= result)
  {
    result = memmove(result, v18, 8 * v17);
    v16 = *(v14 + 16);
  }

  v20 = __OFADD__(v16, v10);
  v21 = v16 + v10;
  if (v20)
  {
    goto LABEL_22;
  }

  *(v14 + 16) = v21;
LABEL_12:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        memcpy(v15, (a5 + 8 * a6), 8 * a3);
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_16:

  return swift_unknownObjectRelease();
}

uint64_t sub_25BCA5F98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 8 * result);
  v14 = &v13[a3];
  if (v8)
  {
    v15 = *(v11 + 16);
    v16 = __OFSUB__(v15, a2);
    v17 = v15 - a2;
    if (v16)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    result = sub_25BAB254C(v12 + 8 * a2, v17, &v13[a3]);
    v18 = *(v11 + 16);
    v16 = __OFADD__(v18, v8);
    v19 = v18 + v8;
    if (v16)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    *(v11 + 16) = v19;
  }

  if (a3 >= 1)
  {
    for (i = a4 & ~(a4 >> 63); i; --i)
    {
      *v13++ = a5;
      if (v13 >= v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShapeInference(_BYTE *result, int a2, int a3)
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

uint64_t sub_25BCA6108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4828, &qword_25BCBF518);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BCA617C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_25BCA6188@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25BCA6190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 16);
  v3 = sub_25BB72150();
  sub_25BCA54B4();
  v5 = v4;
  sub_25BCB617C();
  sub_25BAB3820();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_25BCA8508(&v7);
  return v7;
}

uint64_t Layer<>.compiled(forInput:options:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_8_63(a1, a2, a3);
  v17 = v4;
  v13[0] = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return sub_25BB0EE34(v9, v3, &v17, v13, sub_25BCA8F18, 0, sub_25BCA8F14, 0, &type metadata for Tensor, &type metadata for Tensor, v10, v11);
}

uint64_t Layer<>.compiled(forInput:options:)(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_25BCA6784(a1, a2, a3, a4, a5, a6, sub_25BCA79F0, sub_25BCA8F14);
}

{
  return sub_25BCA6784(a1, a2, a3, a4, a5, a6, sub_25BCA809C, sub_25BCA8F14);
}

uint64_t Layer<>.compiled(forInput:options:)(void *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  return sub_25BCA65F4(a1, a2, a3, a4, a5, &qword_27FBB49F0, &unk_25BCC0140, sub_25BCA8F18, sub_25BCA8F08);
}

{
  return sub_25BCA65F4(a1, a2, a3, a4, a5, &unk_27FBB6778, &unk_25BCCC628, sub_25BCA8F18, sub_25BCA8F0C);
}

uint64_t Layer<>.compiled(forInput:options:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_3_69(a1, a2, a3);
  OUTLINED_FUNCTION_26_40();
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
  return OUTLINED_FUNCTION_7_64(v6, v7, v8, v12, sub_25BCA8F10, v9, sub_25BCA8F08, v10, AssociatedTypeWitness, v6, v4, v3);
}

{
  OUTLINED_FUNCTION_3_69(a1, a2, a3);
  OUTLINED_FUNCTION_18_51(v5);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_7_64(AssociatedTypeWitness, v7, v8, v12, sub_25BCA7A80, v9, sub_25BCA8F14, v10, AssociatedTypeWitness, &type metadata for Tensor, v4, v3);
}

{
  OUTLINED_FUNCTION_3_69(a1, a2, a3);
  v15[0] = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_7_64(AssociatedTypeWitness, v10, v11, v15, sub_25BCA81A0, v12, sub_25BCA8F14, v13, AssociatedTypeWitness, &type metadata for Tensor, v4, v3);
}

{
  OUTLINED_FUNCTION_3_69(a1, a2, a3);
  OUTLINED_FUNCTION_18_51(v5);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6778, &qword_25BCCC628);
  return OUTLINED_FUNCTION_7_64(v7, v8, v9, v13, sub_25BCA8F54, v10, sub_25BCA8F0C, v11, AssociatedTypeWitness, v7, v4, v3);
}

uint64_t Layer.compiled(forInput:options:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_66(a1, a2, a3);
  v22[0] = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v20 = v11;
  v21 = v12;
  v13 = OUTLINED_FUNCTION_34_24();
  OUTLINED_FUNCTION_21_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_30_31(AssociatedTypeWitness, v15, v16, v22, sub_25BCA8F78, v19, sub_25BCA8F74, v17, v13, AssociatedTypeWitness, a4, a5);
}

uint64_t sub_25BCA65F4(void *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t (*a9)(uint64_t))
{
  OUTLINED_FUNCTION_8_63(a1, a2, a3);
  v27 = v14;
  v23[0] = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  return sub_25BB0EE34(a1, v9, &v27, v23, a8, 0, a9, 0, &type metadata for Tensor, v21, a4, a5);
}

uint64_t Layer<>.compiled(forInput:options:)()
{
  OUTLINED_FUNCTION_6_65();
  v4 = v3;
  OUTLINED_FUNCTION_5_66(v3, v5, v6);
  v18 = v7;
  v14[0] = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6778, &qword_25BCCC628);
  return sub_25BB0EE34(v4, v0, &v18, v14, sub_25BCA7C18, 0, sub_25BCA8F0C, 0, v12, v12, v2, v1);
}

{
  OUTLINED_FUNCTION_6_65();
  OUTLINED_FUNCTION_8_63(v2, v3, v4);
  OUTLINED_FUNCTION_24_31(v5);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_20_40(AssociatedTypeWitness, v7, v8, v9, sub_25BCA8F18, v10, sub_25BCA80EC, v11, &type metadata for Tensor, AssociatedTypeWitness, v1, v0);
}

{
  OUTLINED_FUNCTION_6_65();
  OUTLINED_FUNCTION_8_63(v2, v3, v4);
  OUTLINED_FUNCTION_24_31(v5);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_20_40(AssociatedTypeWitness, v7, v8, v9, sub_25BCA8F18, v10, sub_25BCA8154, v11, &type metadata for Tensor, AssociatedTypeWitness, v1, v0);
}

uint64_t sub_25BCA6784(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(uint64_t))
{
  OUTLINED_FUNCTION_5_66(a1, a2, a3);
  OUTLINED_FUNCTION_26_40();
  OUTLINED_FUNCTION_21_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_25BB0EE34(a1, v8, a2, v18, a7, v17, a8, 0, AssociatedTypeWitness, &type metadata for Tensor, a4, a5);
}

uint64_t Layer<>.compiled(forInput:options:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_66(a1, a2, a3);
  v26[0] = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = OUTLINED_FUNCTION_34_24();
  OUTLINED_FUNCTION_21_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_30_31(AssociatedTypeWitness, v17, v18, v26, sub_25BCA813C, v21, sub_25BCA8148, v19, v15, AssociatedTypeWitness, a4, a5);
}

uint64_t sub_25BCA69A4(uint64_t a1)
{
  v2 = sub_25BCA6190(a1);

  *(v1 + 24) = v2;
  v3 = sub_25BCB617C();
  sub_25BB14688(v3);
  *(v1 + 16) = v4;
  return v1;
}

uint64_t Function.description.getter()
{
  sub_25BAD6FB0(*v0 + 88, v3);
  v1 = sub_25BBE46A4();
  sub_25BA9AC78(v3);
  return v1;
}

uint64_t Function.customMirror.getter()
{
  v1 = sub_25BCB7A8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  v9 = *v0;
  v10 = v0[1];
  v12 = v0[2];
  v11 = v0[3];
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v11;
  v15[1] = MEMORY[0x277D84F90];
  v13 = sub_25BCB7A7C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  sub_25BB4BC8C(v4);

  return sub_25BCB7ACC();
}

ValueMetadata *sub_25BCA6D48(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = a3();
  if (result[1].Kind)
  {
    Kind = result[3].Kind;

    v9 = *(Kind + 152);
    sub_25BCB617C();

    *a1 = v9;
    result = (a3)(v10);
    if (result[1].Kind)
    {
      v11 = result[3].Kind;

      v12 = *(v11 + 160);

      return sub_25BC8FACC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Function<>.inputCount.getter(uint64_t a1)
{
  v5 = *(*v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_14_51();
  _s9IOMappingVMa();
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB722C();
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_15();

  return v1;
}

{
  v2 = *(*v1 + 16);
  OUTLINED_FUNCTION_4_75(a1);
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB722C();
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_15();

  return v1;
}

ValueMetadata *Function<>.tensorProperties(forInputAt:)()
{
  OUTLINED_FUNCTION_33_31();
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_29_34(v3, v4, v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v8)
  {
    v7 = *(v0 + 176);
    OUTLINED_FUNCTION_9_61();
    if (v1)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_33_31();
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_22_41(v3, v4, v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v8)
  {
    v7 = *(v0 + 176);
    OUTLINED_FUNCTION_9_61();
    if (v1)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Function<>.outputCount.getter(uint64_t a1)
{
  v5 = *(*v1 + 24);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_14_51();
  _s9IOMappingVMa();
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB722C();
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_15();

  return v1;
}

{
  v2 = *(*v1 + 24);
  OUTLINED_FUNCTION_4_75(a1);
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB722C();
  OUTLINED_FUNCTION_35_25();
  OUTLINED_FUNCTION_15();

  return v1;
}

ValueMetadata *Function<>.tensorProperties(forOutputAt:)()
{
  OUTLINED_FUNCTION_33_31();
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_29_34(v3, v4, v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v8)
  {
    v7 = *(v0 + 240);
    OUTLINED_FUNCTION_9_61();
    if (v1)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_33_31();
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_22_41(v3, v4, v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v8)
  {
    v7 = *(v0 + 240);
    OUTLINED_FUNCTION_9_61();
    if (v1)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Function<>.inputNames.getter(uint64_t a1)
{
  v2 = *(*v1 + 16);
  OUTLINED_FUNCTION_4_75(a1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return v1;
}

uint64_t Function<>.tensorProperties(forInputNamed:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v5 = *v2;
  v15 = *(*v2 + 16);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  OUTLINED_FUNCTION_14_51();
  _s9IOMappingVMa();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v16)
  {
    v7 = v17;
    v8 = *(v5 + 176);
    OUTLINED_FUNCTION_9_61();
    if (v3)
    {
      OUTLINED_FUNCTION_27_38();
      v7 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    v9 = *(v7 + 152);
    v10 = *(v7 + 160);
    sub_25BCB617C();

    result = sub_25BC8FACC();
    *a2 = v9;
    a2[1] = result;
    a2[2] = v11;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t Function<>.outputNames.getter(uint64_t a1)
{
  v2 = *(*v1 + 24);
  OUTLINED_FUNCTION_4_75(a1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return v1;
}

uint64_t sub_25BCA74A4@<X0>(uint64_t a1@<X0>, char a2@<W6>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  result = sub_25BADE04C(*a1, a2);
  if (result)
  {
    result = sub_25BCB617C();
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a3 = v5;
  a3[1] = v4;
  return result;
}

uint64_t Function<>.tensorProperties(forOutputNamed:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v5 = *v2;
  v15 = *(*v2 + 24);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  OUTLINED_FUNCTION_14_51();
  _s9IOMappingVMa();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v16)
  {
    v7 = v17;
    v8 = *(v5 + 240);
    OUTLINED_FUNCTION_9_61();
    if (v3)
    {
      OUTLINED_FUNCTION_27_38();
      v7 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    v9 = *(v7 + 152);
    v10 = *(v7 + 160);
    sub_25BCB617C();

    result = sub_25BC8FACC();
    *a2 = v9;
    a2[1] = result;
    a2[2] = v11;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_25BCA7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == a2 && *(a1 + 16) == a3)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C() & 1;
  }
}

void sub_25BCA7750()
{
  byte_27FBB7DD8 = 1;
  qword_27FBB7DE0 = 46;
  unk_27FBB7DE8 = 0xE100000000000000;
  byte_27FBB7DF0 = 1;
}

uint64_t static CompilationOptions.default.getter()
{
  if (qword_27FBB33B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_39(&byte_27FBB7DD8);

  return sub_25BCB617C();
}

void sub_25BCA77E0()
{
  byte_27FBB7DF8 = 2;
  qword_27FBB7E00 = 46;
  unk_27FBB7E08 = 0xE100000000000000;
  byte_27FBB7E10 = 1;
}

uint64_t static CompilationOptions.inference.getter()
{
  if (qword_27FBB33B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_39(&byte_27FBB7DF8);

  return sub_25BCB617C();
}

void static Function.load(from:options:)()
{
  v0 = [objc_opt_self() defaultManager];
  sub_25BCB595C();
  v1 = sub_25BCB633C();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    sub_25BA97890();
  }

  sub_25BCB70FC();

  v3 = sub_25BCB595C();
  MEMORY[0x25F876C90](v3);

  MEMORY[0x25F876C90](0xD000000000000011, 0x800000025BCE7A20);
  sub_25BCB74CC();
  __break(1u);
}

uint64_t sub_25BCA7A40(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for TensorArrayOutputParser(0);
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  v2 = sub_25BCB617C();
  return sub_25BC52A00(v2);
}

uint64_t sub_25BCA7B2C()
{
  v0 = OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  type metadata accessor for TensorKeyValuePairsInputParser();
  v4 = OUTLINED_FUNCTION_25_36();
  v5(v4);
  return sub_25BC50C10();
}

uint64_t sub_25BCA7C18(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F30, &qword_25BCD73E8);
  swift_allocObject();
  v2 = sub_25BCB617C();
  return sub_25BCA69A4(v2);
}

uint64_t sub_25BCA7C68(uint64_t *a1)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F28, &qword_25BCD73E0);
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  v4 = sub_25BCB617C();
  sub_25BCA6190(v4);
  OUTLINED_FUNCTION_49();

  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_25BCA7CCC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v8 - v5;
  type metadata accessor for KeyTensorPairsRepresentableInputParser();
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  return sub_25BC51A84();
}

uint64_t sub_25BCA7DD0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v8 - v5;
  type metadata accessor for KeyTensorPairsRepresentableOutputParser();
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  return sub_25BC53464();
}

uint64_t sub_25BCA7ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, __n128), uint64_t (*a7)(char *))
{
  v10 = OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  a6(0, v10, a4, v14);
  v17 = OUTLINED_FUNCTION_25_36();
  v18(v17);
  return a7(v16);
}

uint64_t sub_25BCA7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(char *))
{
  v9 = OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_2(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  v17 = OUTLINED_FUNCTION_7_33();
  a5(v17);
  (*(v11 + 16))(v16, a1, v9);
  return a6(v16);
}

uint64_t sub_25BCA813C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_25BCA7CCC(a1);
}

uint64_t sub_25BCA8148(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_25BCA7DD0(a1);
}

unint64_t sub_25BCA81EC()
{
  result = qword_27FBB7E20[0];
  if (!qword_27FBB7E20[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB7E18, &qword_25BCD7400);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7E20);
  }

  return result;
}

BOOL sub_25BCA8250(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25BADE04C(*a1, 0);
}

uint64_t Function.CompilationError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BCB617C();
  return v1;
}

BOOL sub_25BCA82C8(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25BADE04C(*a1, 3);
}

uint64_t sub_25BCA8338@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  return sub_25BCA74A4(a1, a2, a3);
}

uint64_t sub_25BCA837C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_25BCA7618(a1, v1[7], v1[8]) & 1;
}

uint64_t sub_25BCA83A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_25BCA7B2C();
}

uint64_t sub_25BCA83CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BCA8420(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25BCA8460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BCA84B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BCA8508(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BC196DC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25BCA8574(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25BCA8574(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BCA8730(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25BCA8668(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BCA8668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_25BCB789C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_25BCA8730(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_25BCB789C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_25BCB789C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_25BCB789C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_25BAFD620();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_25BAFD620();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_25BCA8D64((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_25BCA8C38(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_25BCA8C38(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25BCA8D64((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25BCA8D64(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_25BAC9480(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_25BCB789C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_25BAC9480(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_25BCB789C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t LayerState.place(on:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    return sub_25BB1B644(a1);
  }

  v8 = sub_25BB1B740(a1);
  v9 = *v2;

  *v2 = v8;
  return result;
}

ValueMetadata *LayerState.scalarType.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v0 < 0)
    {
      return Tensor.scalarType.getter();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t LayerState.cast(to:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  (*(*(a1 + 8) + 32))(&v6);
  result = sub_25BB1BA04(&v6);
  *a2 = result;
  return result;
}

uint64_t LayerState.shape.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  *a1 = *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);

  return sub_25BCB617C();
}

uint64_t LayerState.init(initializer:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  result = sub_25BB1AB04(a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall LayerState.initializeIfNeeded(toShape:)(NeuralNetworks::TensorShape toShape)
{
  v2 = *v1;
  v3 = *toShape.dimensions._rawValue;
  sub_25BB1ABC8(&v3);
}

void OptionalLayerState.wrappedValue.getter(void *a1@<X8>)
{
  if (*(v1 + 8) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_21_42();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  *v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC();
}

void OptionalLayerState.wrappedValue.setter(void *a1)
{
  if (*a1)
  {
    v2 = *v1;
    v4[0] = *a1;
    v4[1] = v2;

    LayerState.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_65();
    if (v3)
    {
      OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_8_64();
      __break(1u);
    }
  }
}

uint64_t OptionalLayerState.projectedValue.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_7_65();
  if (v3)
  {
    v4 = *v1;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t OptionalLayerState.init(_:)(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    v1 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_5_67(v1);
}

uint64_t OptionalLayerState.init(initializer:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    v2 = sub_25BB1AB04(a1);
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_5_67(v2);
}

uint64_t (*LayerState.wrappedValue.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v2 = OUTLINED_FUNCTION_10_56(a1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      *v1 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BCA94DC;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t _s14NeuralNetworks10LayerStateV12wrappedValueAA6TensorVvg_0()
{
  v0 = OUTLINED_FUNCTION_21_42();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  *v1 = v0 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC();
}

void *sub_25BCA9580@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v5[1] = *a1;
  result = a2(v5);
  *a3 = v5[0];
  return result;
}

uint64_t sub_25BCA95C8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  v6 = *a2;
  v8[0] = *a1;
  v8[1] = v6;

  a5(v8);
}

uint64_t _s14NeuralNetworks10LayerStateV12wrappedValueAA6TensorVvs_0(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    v3 = *a1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v12 = v3 | 0x8000000000000000;

      sub_25BACED40(&v12);
    }

    if (sub_25BAB5C48(*(*(v3 + 16) + 152), *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)))
    {
      v12 = v3 | 0x8000000000000000;

      sub_25BAB3020(v2);
      sub_25BACED40(&v12);

      return sub_25BAB310C(v2);
    }

    OUTLINED_FUNCTION_14_52();

    sub_25BAB3020(v2);
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000003DLL, 0x800000025BCE7AA0);
    v5 = *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
    v6 = sub_25BCB617C();
    v7 = MEMORY[0x277D83B88];
    v8 = MEMORY[0x25F876F80](v6, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](0x6920747562202C29, 0xEE00207361682074);
    v9 = *(*(v3 + 16) + 152);
    v10 = sub_25BCB617C();
    v11 = MEMORY[0x25F876F80](v10, v7);
    MEMORY[0x25F876C90](v11);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t (*LayerState.value.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v2 = OUTLINED_FUNCTION_10_56(a1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      *v1 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BCA98F0;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BCA9908(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v4 = a1[1];
  v6 = *a1;
  if (a2)
  {

    a3(&v6);
  }

  else
  {

    a3(&v6);
  }
}

uint64_t LayerState.rank.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v0 < 0)
    {
      return *(*(*((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152) + 16);
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BCA9A2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  type metadata accessor for LayerVariableReference();
  v3 = OUTLINED_FUNCTION_5();
  result = OUTLINED_FUNCTION_15_53(v3);
  *a2 = result;
  return result;
}

BOOL sub_25BCA9A70()
{
  v0 = sub_25BCB761C();

  return v0 != 0;
}

BOOL sub_25BCA9AC4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BCA9A70();
  *a2 = result;
  return result;
}

BOOL sub_25BCA9B2C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BCA9A70();
  *a1 = result;
  return result;
}

uint64_t sub_25BCA9B58(uint64_t a1)
{
  v2 = sub_25BCAB13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCA9B94(uint64_t a1)
{
  v2 = sub_25BCAB13C();

  return MEMORY[0x2821FE720](a1, v2);
}

void LayerState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F38, &qword_25BCD73F0);
  OUTLINED_FUNCTION_2(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_25BCAB13C();
  sub_25BCB7B2C();
  if (!v20)
  {
    type metadata accessor for LayerVariableReference();
    sub_25BCAB190(&qword_28154DA00);
    sub_25BCB76AC();
    (*(v29 + 8))(v34, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_16();
}

void LayerState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F48, &qword_25BCD73F8);
  OUTLINED_FUNCTION_2(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_25BCAB13C();

  sub_25BCB7B6C();
  a10 = v33;
  type metadata accessor for LayerVariableReference();
  sub_25BCAB190(&qword_28154DA08);
  sub_25BCB779C();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_16();
}

void (*sub_25BCA9EAC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = LayerState.value.modify(v2);
  return sub_25BC70B04;
}

uint64_t LayerState.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  v2 = *(v1 + 16);
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCA9FD8()
{
  v1 = *v0;
  sub_25BCB79CC();
  v2 = *(v1 + 16);
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

unint64_t LayerState.description.getter()
{
  v1 = *(*v0 + 32);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_52();
  sub_25BAB69FC();
  sub_25BCB70FC();

  if (v1 < 0)
  {
    v7 = 0xD000000000000014;
    v4 = *(*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
    v5 = sub_25BCB617C();
    v6 = MEMORY[0x25F876F80](v5, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v6);

    MEMORY[0x25F876C90](0x72616C616373202CLL, 0xEF203A6570797420);
    Tensor.scalarType.getter();
    v3 = sub_25BCB7C1C();
  }

  else
  {
    v7 = 0xD000000000000028;
    v3 = ParameterInitializer.description.getter();
  }

  MEMORY[0x25F876C90](v3);

  MEMORY[0x25F876C90](41, 0xE100000000000000);
  sub_25BAB310C(v1);
  return v7;
}

uint64_t LayerState.customMirror.getter()
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = sub_25BCB7A8C();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
  inited = swift_initStackObject();
  v13 = inited;
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v14 = MEMORY[0x277D84CC0];
  *(inited + 48) = *(v11 + 16);
  *(inited + 72) = v14;
  strcpy((inited + 80), "isInitialized");
  *(inited + 94) = -4864;
  v15 = *(v11 + 32);
  v17 = (~v15 & 0xF000000000000007) != 0 && v15 < 0;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v17;
  v18 = *(v11 + 32);
  if (v18 < 0 && (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    *(&v38 + 1) = &type metadata for Tensor;
    *&v37 = v18 & 0x7FFFFFFFFFFFFFFFLL;
    *&v34 = 0x65756C6176;
    *(&v34 + 1) = 0xE500000000000000;
    sub_25BB1D62C(&v37, &v35);
    sub_25BAB69FC();
    sub_25BAFEDAC();
    v13 = v19;
    *(v19 + 16) = 3;
    v20 = v35;
    *(v19 + 128) = v34;
    *(v19 + 144) = v20;
    *(v19 + 160) = v36;
  }

  *&v34 = v11;

  sub_25BAFA508(v13, v21, v22, v23, v24, v25, v26, v27, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v29 = v28;

  *&v37 = v29;
  v30 = sub_25BCB7A7C();
  OUTLINED_FUNCTION_23_40(v30);
  (*(v4 + 104))(v8, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  result = sub_25BCB7ACC();
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LayerState.placed(on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *v2;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    return sub_25BB1B644(a1);
  }

  v6 = sub_25BB1B740(a1);

  *a2 = v6;
  return result;
}

void sub_25BCAA528(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4[1] = *a1;
  v5 = v3;
  OptionalLayerState.wrappedValue.getter(v4);
  *a2 = v4[0];
}

uint64_t sub_25BCAA574(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = v3;

  OptionalLayerState.wrappedValue.setter(v5);
}

uint64_t (*OptionalLayerState.wrappedValue.modify(uint64_t a1))(uint64_t result, char a2)
{
  v3 = *v1;
  *(a1 + 8) = *v1;
  v4 = *(v1 + 8);
  *(a1 + 16) = v4;
  if (v4 != 1)
  {
    *a1 = 0;
    return sub_25BCAA6A8;
  }

  v5 = *(v3 + 32);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if (v5 < 0)
    {
      *a1 = v5 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BCAA6A8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BCAA6A8(uint64_t result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = *(result + 8);
      v5 = *result;
      OUTLINED_FUNCTION_9_7();
      swift_retain_n();

      LayerState.wrappedValue.setter(&v5);
      OUTLINED_FUNCTION_9_7();

LABEL_7:
    }

    if ((*(result + 16) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    OUTLINED_FUNCTION_19_40();
    result = OUTLINED_FUNCTION_8_64();
    __break(1u);
    return result;
  }

  if (v2)
  {
    v4 = *(result + 8);
    v5 = *result;
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    LayerState.wrappedValue.setter(&v5);
    OUTLINED_FUNCTION_9_7();
  }

  if (*(result + 16) == 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t OptionalLayerState.init(wrappedValue:)(uint64_t *a1)
{
  if (*a1)
  {
    v4 = *a1;
    type metadata accessor for LayerVariableReference();
    v1 = OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_15_53(v1);
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_5_67(v2);
}

uint64_t sub_25BCAA820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453726579616C5FLL && a2 == 0xEB00000000657461;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BCAA8F4(char a1)
{
  if (a1)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x7453726579616C5FLL;
  }
}

uint64_t sub_25BCAA940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BCAA820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BCAA968(uint64_t a1)
{
  v2 = sub_25BCAB1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCAA9A4(uint64_t a1)
{
  v2 = sub_25BCAB1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void OptionalLayerState.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F50, &qword_25BCD7408);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v11 = *v0;
  v13 = *(v0 + 8);
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BCAB1D4();

  sub_25BCB7B6C();
  sub_25BC86A30();
  sub_25BCB779C();

  if (!v1)
  {
    sub_25BCB776C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_16();
}

void OptionalLayerState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F60, &qword_25BCD7410);
  OUTLINED_FUNCTION_2(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v20);
  v22 = &v25[-v21];
  v23 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_25BCAB1D4();
  sub_25BCB7B2C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v25[15] = 0;
    sub_25BC869DC();
    sub_25BCB76AC();
    v25[14] = 1;
    v24 = sub_25BCB767C();
    (*(v17 + 8))(v22, v15);
    *v14 = a10;
    *(v14 + 8) = v24 & 1;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t OptionalLayerState.customMirror.getter()
{
  v1 = sub_25BCB7A8C();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v11 = *v0;
  OUTLINED_FUNCTION_7_65();
  v15[2] = v11;
  if (v12)
  {
    return LayerState.customMirror.getter();
  }

  v16 = 0;
  v15[1] = MEMORY[0x277D84F90];
  v13 = sub_25BCB7A7C();
  OUTLINED_FUNCTION_23_40(v13);
  (*(v4 + 104))(v8, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  return sub_25BCB7ACC();
}

unint64_t OptionalLayerState.description.getter()
{
  OUTLINED_FUNCTION_7_65();
  if (!v1)
  {
    return 0;
  }

  v3 = *v0;
  return LayerState.description.getter();
}

double OptionalLayerState.computeDevice.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    v2 = *v1;
    sub_25BB1B5A4(a1);
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

void OptionalLayerState.place(on:)()
{
  OUTLINED_FUNCTION_7_65();
  if (v2)
  {
    v3 = v0;
    v4 = v1;
    v5 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v0;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_25BB1B644(v4);
    }

    else
    {
      v8 = sub_25BB1B740(v4);
      v9 = *v3;

      *v3 = v8;
    }
  }
}

uint64_t OptionalLayerState.placed(on:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_65();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v3;
  v6 = *v1;

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = sub_25BB1B740(v5);

    v6 = v9;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    result = OUTLINED_FUNCTION_66();
    v6 = result;
    v8 = 0;
    goto LABEL_8;
  }

  result = sub_25BB1B644(v5);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = 1;
LABEL_8:
  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

uint64_t OptionalLayerState.cast(to:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_65();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v3;
  v7 = *v1;
  v8 = *(v4 + 8);
  v9 = *(v8 + 32);

  v9(&v13, v6, v8);
  v10 = sub_25BB1BA04(&v13);

  if (v10)
  {
    v12 = 1;
  }

  else
  {
LABEL_5:
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    result = OUTLINED_FUNCTION_66();
    v10 = result;
    v12 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v12;
  return result;
}

unint64_t sub_25BCAB13C()
{
  result = qword_27FBB7F40;
  if (!qword_27FBB7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F40);
  }

  return result;
}

uint64_t sub_25BCAB190(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayerVariableReference();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BCAB1D4()
{
  result = qword_27FBB7F58;
  if (!qword_27FBB7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F58);
  }

  return result;
}

unint64_t sub_25BCAB22C()
{
  result = qword_27FBB7F68;
  if (!qword_27FBB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OptionalLayerState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BCAB374(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BCAB420()
{
  result = qword_27FBB7F70;
  if (!qword_27FBB7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F70);
  }

  return result;
}

unint64_t sub_25BCAB478()
{
  result = qword_27FBB7F78;
  if (!qword_27FBB7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F78);
  }

  return result;
}

unint64_t sub_25BCAB4D0()
{
  result = qword_27FBB7F80;
  if (!qword_27FBB7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F80);
  }

  return result;
}

unint64_t sub_25BCAB528()
{
  result = qword_27FBB7F88;
  if (!qword_27FBB7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F88);
  }

  return result;
}

unint64_t sub_25BCAB580()
{
  result = qword_27FBB7F90;
  if (!qword_27FBB7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F90);
  }

  return result;
}

unint64_t sub_25BCAB5D8()
{
  result = qword_27FBB7F98;
  if (!qword_27FBB7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F98);
  }

  return result;
}

uint64_t Parameter.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

void OptionalParameter.wrappedValue.getter(void *a1@<X8>)
{
  if (*(v1 + 10) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_21_42();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC();
}

uint64_t *OptionalParameter.wrappedValue.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 10) == 1)
  {
    if (v2)
    {
      v3 = *result;
      return Parameter.wrappedValue.setter(&v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t OptionalParameter.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_9_62();
  if (v3)
  {
    v4 = *v1;
    if (*(v1 + 9))
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    v7 = v5 | *(v1 + 8);
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  return result;
}

uint64_t Parameter.rank.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v0 < 0)
    {
      return *(*(*((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152) + 16);
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t Parameter.shape.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);

  return sub_25BCB617C();
}

uint64_t OptionalParameter.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = (v4 >> 8) & 1;
    result = *a1;
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    result = OUTLINED_FUNCTION_66();
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 1;
  }

  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 9) = v5;
  *(a2 + 10) = v3 != 0;
  return result;
}

uint64_t Parameter.init(initializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 256;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  result = sub_25BB1AB04(a1);
  *a2 = result;
  return result;
}

uint64_t OptionalParameter.init(initializer:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    v2 = sub_25BB1AB04(a1);
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_7_66(v2);
}

Swift::Void __swiftcall Parameter.initializeIfNeeded(toShape:)(NeuralNetworks::TensorShape toShape)
{
  v2 = *v1;
  v3 = *toShape.dimensions._rawValue;
  sub_25BB1ABC8(&v3);
}

uint64_t Parameter.place(on:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    return sub_25BB1B644(a1);
  }

  v8 = sub_25BB1B740(a1);

  *v2 = v8;
  return result;
}

ValueMetadata *Parameter.scalarType.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v0 < 0)
    {
      return Tensor.scalarType.getter();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t Parameter.cast(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *v2;
  (*(*(a1 + 8) + 32))(&v6);
  result = sub_25BB1BA04(&v6);
  *(a2 + 8) = 256;
  *a2 = result;
  return result;
}

uint64_t (*Parameter.wrappedValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_6_66();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BCABCD4;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t _s14NeuralNetworks9ParameterV12wrappedValueAA6TensorVvg_0()
{
  v0 = OUTLINED_FUNCTION_21_42();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *v1 = v0 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC();
}

void *sub_25BCABD7C@<X0>(uint64_t a1@<X0>, void *(*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v7[1] = *a1;
  v8 = v4;
  v9 = v5;
  result = a2(v7);
  *a3 = v7[0];
  return result;
}

uint64_t sub_25BCABDD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t (*Parameter.value.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_6_66();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BCABEC8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BCABEE0(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v7 = *a1;

    a3(&v7);
  }

  else
  {
    v7 = *a1;
    return (a3)(&v7);
  }
}

uint64_t sub_25BCABFCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 8) = 256;
  type metadata accessor for LayerVariableReference();
  v4 = OUTLINED_FUNCTION_5();
  result = OUTLINED_FUNCTION_15_53(v4);
  *a2 = result;
  return result;
}

uint64_t sub_25BCAC018()
{
  v0 = sub_25BCB761C();

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

uint64_t sub_25BCAC06C(char a1)
{
  if (a1)
  {
    return 0x6E657A6F72467369;
  }

  else
  {
    return 0x656C626169726176;
  }
}

uint64_t sub_25BCAC09C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25BAFB060();
}

uint64_t sub_25BCAC0C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BCAC018();
  *a2 = result;
  return result;
}

uint64_t sub_25BCAC0F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BCAC06C(*v1);
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_25BCAC140@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BCAC018();
  *a1 = result;
  return result;
}

uint64_t sub_25BCAC168(uint64_t a1)
{
  v2 = sub_25BCAD88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCAC1A4(uint64_t a1)
{
  v2 = sub_25BCAD88C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Parameter.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FA0, &qword_25BCD78D0);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BCAD88C();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    sub_25BCAB190(&qword_28154DA00);
    sub_25BCB76AC();
    v10 = sub_25BCB767C();
    v11 = OUTLINED_FUNCTION_6_3();
    v12(v11);
    *v4 = v13;
    *(v4 + 8) = v10 & 1;
    *(v4 + 9) = 1;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_16();
}

void Parameter.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FA8, &unk_25BCD78D8);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v11 = *v0;
  v13 = *(v0 + 8);
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BCAD88C();

  OUTLINED_FUNCTION_15_54();
  type metadata accessor for LayerVariableReference();
  sub_25BCAB190(&qword_28154DA08);
  sub_25BCB779C();

  if (!v1)
  {
    sub_25BCB776C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_16();
}

void (*sub_25BCAC54C(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Parameter.value.modify(v2);
  return sub_25BC70B04;
}

uint64_t Parameter.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  v2 = *(v1 + 16);
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

unint64_t Parameter.description.getter()
{
  v1 = *(*v0 + 32);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  sub_25BAB69FC();
  sub_25BCB70FC();

  if (v1 < 0)
  {
    v7 = 0xD000000000000012;
    v4 = *(*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
    v5 = sub_25BCB617C();
    v6 = MEMORY[0x25F876F80](v5, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v6);

    MEMORY[0x25F876C90](0x72616C616373202CLL, 0xEF203A6570797420);
    Tensor.scalarType.getter();
    v3 = sub_25BCB7C1C();
  }

  else
  {
    v7 = 0xD000000000000026;
    v3 = ParameterInitializer.description.getter();
  }

  MEMORY[0x25F876C90](v3);

  MEMORY[0x25F876C90](41, 0xE100000000000000);
  sub_25BAB310C(v1);
  return v7;
}

uint64_t Parameter.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v58 = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB7A8C();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = *(v1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
  inited = swift_initStackObject();
  v18 = inited;
  *(inited + 16) = xmmword_25BCBAE90;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v19 = MEMORY[0x277D84CC0];
  *(inited + 48) = *(v14 + 16);
  *(inited + 72) = v19;
  *(inited + 80) = 0x6E657A6F72467369;
  *(inited + 88) = 0xE800000000000000;
  v20 = MEMORY[0x277D839B0];
  *(inited + 96) = v15;
  *(inited + 120) = v20;
  strcpy((inited + 128), "isInitialized");
  *(inited + 142) = -4864;
  v21 = *(v14 + 32);
  v23 = (~v21 & 0xF000000000000007) != 0 && v21 < 0;
  *(inited + 168) = v20;
  *(inited + 144) = v23;
  v24 = *(v14 + 32);
  if (v24 < 0 && (v24 & 0xF000000000000007) != 0xF000000000000007)
  {
    *&v44 = &type metadata for Tensor;
    v43[2] = v24 & 0x7FFFFFFFFFFFFFFFLL;
    *&v41 = 0x65756C6176;
    *(&v41 + 1) = 0xE500000000000000;
    sub_25BB1D62C(&v43[2], &v42);
    sub_25BAB69FC();
    sub_25BAFEDAC();
    v18 = v25;
    *(v25 + 16) = 4;
    v26 = v42;
    *(v25 + 176) = v41;
    *(v25 + 192) = v26;
    *(v25 + 208) = *v43;
  }

  *&v41 = v14;
  BYTE8(v41) = v15;
  BYTE9(v41) = v16;

  sub_25BAFA508(v18, v27, v28, v29, v30, v31, v32, v33, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43[0], *&v43[1], *&v43[3], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v35 = v34;

  v43[2] = v35;
  v36 = sub_25BCB7A7C();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v36);
  (*(v5 + 104))(v9, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  result = sub_25BCB7ACC();
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Parameter.placed(on:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v5 = OUTLINED_FUNCTION_18_52();
    return sub_25BB1B644(v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_18_52();
    v8 = sub_25BB1B740(v7);

    *a1 = v8;
  }

  return result;
}

void sub_25BCACBE4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6[1] = *a1;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  OptionalParameter.wrappedValue.getter(v6);
  *a2 = v6[0];
}

uint64_t *sub_25BCACC40(uint64_t *a1)
{
  v2 = *a1;

  return OptionalParameter.wrappedValue.setter(&v2);
}

uint64_t (*OptionalParameter.wrappedValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_9_62();
  if (!v3)
  {
    *a1 = 0;
    return sub_25BCACE08;
  }

  v4 = OUTLINED_FUNCTION_6_66();
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      *a1 = v4 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BCACD50;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BCACD50(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v5 = a1[1];
      v6 = *a1;
      return Parameter.wrappedValue.setter(&v6);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  v3 = a1[1];
  v6 = *a1;

  Parameter.wrappedValue.setter(&v6);
}

void *sub_25BCACE08(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t OptionalParameter.init(wrappedValue:)(uint64_t *a1)
{
  if (*a1)
  {
    v4 = *a1;
    type metadata accessor for LayerVariableReference();
    v1 = OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_15_53(v1);
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_7_66(v2);
}

uint64_t sub_25BCACEF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656D617261705FLL && a2 == 0xEA00000000007265;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BCACFC8(char a1)
{
  if (a1)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x74656D617261705FLL;
  }
}

uint64_t sub_25BCAD010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BCACEF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BCAD038(uint64_t a1)
{
  v2 = sub_25BCAD8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCAD074(uint64_t a1)
{
  v2 = sub_25BCAD8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void OptionalParameter.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FB0, &qword_25BCD78E8);
  OUTLINED_FUNCTION_2(v5);
  v14 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = *(v0 + 9);
  v15 = *(v0 + 10);
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BCAD8E0();

  OUTLINED_FUNCTION_15_54();
  sub_25BB39990();
  sub_25BCB779C();

  if (!v1)
  {
    sub_25BCB776C();
  }

  (*(v14 + 8))(v2, v5);
  OUTLINED_FUNCTION_16();
}

void OptionalParameter.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FC0, &qword_25BCD78F0);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BCAD8E0();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_25BB3993C();
    sub_25BCB76AC();
    v10 = sub_25BCB767C();
    v11 = OUTLINED_FUNCTION_6_3();
    v12(v11);
    *v4 = v13;
    *(v4 + 8) = v14;
    *(v4 + 9) = v15;
    *(v4 + 10) = v10 & 1;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t OptionalParameter.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_25BCB7A8C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_5();
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = *(v1 + 9);
  if (*(v1 + 10) == 1)
  {
    v20 = *v1;
    v21 = v15;
    v22 = v16;
    return Parameter.customMirror.getter(a1);
  }

  else
  {
    v20 = *v1;
    v21 = v15;
    v22 = v16;
    v23 = 0;
    v19[1] = MEMORY[0x277D84F90];
    v18 = sub_25BCB7A7C();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v18);
    (*(v7 + 104))(v11, *MEMORY[0x277D84C38], v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
    sub_25BCA81EC();
    return sub_25BCB7ACC();
  }
}

unint64_t OptionalParameter.description.getter()
{
  OUTLINED_FUNCTION_9_62();
  if (!v1)
  {
    return 0;
  }

  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  return Parameter.description.getter();
}

double OptionalParameter.computeDevice.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 10) == 1)
  {
    v2 = *v1;
    sub_25BB1B5A4(a1);
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

void OptionalParameter.place(on:)()
{
  OUTLINED_FUNCTION_9_62();
  if (v2)
  {
    v3 = v0;
    v4 = v1;
    v5 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v0;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_25BB1B644(v4);
    }

    else
    {
      v8 = sub_25BB1B740(v4);

      *v3 = v8;
    }
  }
}

uint64_t OptionalParameter.placed(on:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_9_62();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *v1;
  v5 = *(v1 + 9);
  v6 = *(v1 + 8);

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = OUTLINED_FUNCTION_18_52();
    v11 = sub_25BB1B740(v10);

    v4 = v11;
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_7:
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    result = OUTLINED_FUNCTION_66();
    v4 = result;
    v6 = 0;
    v9 = 0;
    v5 = 1;
    goto LABEL_8;
  }

  v7 = OUTLINED_FUNCTION_18_52();
  result = sub_25BB1B644(v7);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = 1;
LABEL_8:
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  *(a1 + 10) = v9;
  return result;
}

uint64_t OptionalParameter.cast(to:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_9_62();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v3;
  v7 = *v1;
  v8 = *(v4 + 8);
  v9 = *(v8 + 32);

  v9(&v13, v6, v8);
  v10 = sub_25BB1BA04(&v13);

  if (v10)
  {
    v12 = 1;
  }

  else
  {
LABEL_5:
    type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5();
    result = OUTLINED_FUNCTION_66();
    v10 = result;
    v12 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = 256;
  *(a1 + 10) = v12;
  return result;
}

unint64_t sub_25BCAD88C()
{
  result = qword_28154BEF0[0];
  if (!qword_28154BEF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154BEF0);
  }

  return result;
}

unint64_t sub_25BCAD8E0()
{
  result = qword_27FBB7FB8;
  if (!qword_27FBB7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FB8);
  }

  return result;
}

unint64_t sub_25BCAD938()
{
  result = qword_27FBB7FC8;
  if (!qword_27FBB7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FC8);
  }

  return result;
}

uint64_t sub_25BCAD98C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BCAD9CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_25BCADA2C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BCADA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_25BCADACC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BCADBA8()
{
  result = qword_27FBB7FD0;
  if (!qword_27FBB7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FD0);
  }

  return result;
}

unint64_t sub_25BCADC00()
{
  result = qword_27FBB7FD8;
  if (!qword_27FBB7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FD8);
  }

  return result;
}

unint64_t sub_25BCADC58()
{
  result = qword_27FBB7FE0;
  if (!qword_27FBB7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FE0);
  }

  return result;
}

unint64_t sub_25BCADCB0()
{
  result = qword_27FBB7FE8[0];
  if (!qword_27FBB7FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7FE8);
  }

  return result;
}

unint64_t sub_25BCADD08()
{
  result = qword_28154BEE0;
  if (!qword_28154BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BEE0);
  }

  return result;
}

unint64_t sub_25BCADD60()
{
  result = qword_28154BEE8;
  if (!qword_28154BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BEE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Framework(_BYTE *result, int a2, int a3)
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

void SGD.gradientClippingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  *a1 = *(v1 + 16);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

void SGD.regularizationKind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *(a1 + 4) = *(v1 + 36);
  *a1 = v2;
}

uint64_t SGD.velocity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);

  *(v1 + 40) = v2;
  return result;
}

uint64_t SGD.init(for:learningRate:momentum:usesNesterovMomentum:gradientClippingMode:regularizationKind:gradientScale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>)
{
  v13 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  if (v22 >= 0.0)
  {
    if (a6 < 0.0)
    {
      goto LABEL_9;
    }

    v23 = *v15;
    v24 = *v16 | (*(v16 + 4) << 32);
    if (BYTE4(v24) == 255 || (*(v16 + 4), *v16 > 0.0))
    {
      v25 = *(v15 + 2) | (*(v15 + 12) << 32);
      v26 = v14 & 1;
      (*(v18 + 16))(v21, v17, a2);
      result = OptimizerStateDictionary.init(_:)(v21, a2, a3, &v29);
      v28 = v29;
      *a4 = a5;
      *(a4 + 4) = a6;
      *(a4 + 8) = a7;
      *(a4 + 12) = v26;
      *(a4 + 16) = v23;
      *(a4 + 28) = BYTE4(v25);
      *(a4 + 24) = v25;
      *(a4 + 36) = BYTE4(v24);
      *(a4 + 32) = v24;
      *(a4 + 40) = v28;
      *(a4 + 48) = 0;
      return result;
    }
  }

  OUTLINED_FUNCTION_28_1();
LABEL_9:
  OUTLINED_FUNCTION_7_0();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t (*SGD.update(_:with:)(uint64_t a1, void *a2, uint64_t a3))(_BYTE *, void)
{
  v4 = v3;
  v225 = a1;
  v205 = sub_25BCB783C();
  v7 = OUTLINED_FUNCTION_2(v205);
  v223 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v204 = v12 - v11;
  v13 = sub_25BCB5EFC();
  v14 = OUTLINED_FUNCTION_2(v13);
  v202 = v15;
  v203 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v201 = v19 - v18;
  v20 = sub_25BCB5EBC();
  v21 = OUTLINED_FUNCTION_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v210 = &v198 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v198 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v198 - v31;
  WitnessTable = swift_getWitnessTable();
  nullsub_1(a3, WitnessTable);
  v231 = a3;
  v222 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v228 = a2;
  sub_25BCB681C();
  sub_25BACC03C();
  v232 = v33;
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v34 = sub_25BCB5EEC();
  v35 = __swift_project_value_buffer(v34, qword_28154BE90);
  sub_25BCB5EAC();
  v209 = v35;
  v36 = sub_25BCB5EDC();
  v37 = sub_25BCB6D5C();
  v38 = sub_25BCB6E1C();
  v230 = v4;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v36, v37, v40, "Optimizing", "", v39, 2u);
    v41 = v39;
    v4 = v230;
    MEMORY[0x25F8797F0](v41, -1, -1);
  }

  (*(v23 + 16))(v29, v32, v20);
  v42 = sub_25BCB5F2C();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v214 = sub_25BCB5F1C();
  v46 = v23 + 8;
  v45 = *(v23 + 8);
  v211 = v46;
  v45(v32, v20);
  OUTLINED_FUNCTION_0_14();
  v47 = OUTLINED_FUNCTION_29_1();
  sub_25BAA51C8(v47, v48);
  v49 = MEMORY[0x277D84F90];
  sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D44E78, v244, v240);
  v50 = sub_25BA9C2C8(v233);
  v243 = v240[0];
  if (*(v4 + 28) != 255 && *(v4 + 28) << 32 == 0x200000000)
  {
    v52 = *(v4 + 16);
    if ((v52 & 0x100000000) != 0)
    {
      v233[0] = v228;
      MEMORY[0x28223BE20](v50);
      v196 = v231;
      v197 = WitnessTable;
      v57 = sub_25BCB68CC();
      v58 = swift_getWitnessTable();
      sub_25BAB2B20(sub_25BB27830, (&v198 - 4), v57, &type metadata for Tensor, MEMORY[0x277D84A98], v58, MEMORY[0x277D84AC0], v59);
      v229 = 0;
      LOBYTE(v233[0]) = 13;
      Tensor.init(stacking:alongAxis:scalarType:)();
      v233[0] = v244[0];
      v237[0] = &unk_286D423B0;
      Tensor.reshaped(to:)(v237, v240);

      v237[0] = v240[0];
      Tensor.sum(squeezingAxes:)(v233);

      v60 = v233[0];
      OUTLINED_FUNCTION_0_14();
      v61 = *(v60[2] + 160);
      v62 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v62, v63);
      v236[0] = v49;
      v241[0] = v61;
      sub_25BAA51C8(v244, v240);
      Tensor.init(shape:coercingScalars:scalarType:on:)(v236, &unk_286D44EA0, v241, v240, v237);
      sub_25BA9C2C8(v244);
      sub_25BA9C2C8(v233);
      v233[0] = v60;
      v244[0] = v237[0];
      OUTLINED_FUNCTION_29_1();
      static Tensor.* infix(_:_:)();
      sqrt(_:)(v233, v240);

      v56 = v233[0];
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v53 = OUTLINED_FUNCTION_56();
      *(v53 + 16) = xmmword_25BCBAE50;
      *(v53 + 32) = v52;
      v54 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v54, v55);
      sub_25BACC1B0(MEMORY[0x277D84F90], v53, v244, v240);
      sub_25BA9C2C8(v233);
      v56 = v240[0];

      v229 = 0;
    }

    v243 = v56;
  }

  else
  {
    v229 = 0;
  }

  v64 = sub_25BCB681C();
  sub_25BAA1B64();
  v242 = v65;
  if (v64 < 0)
  {
    __break(1u);
LABEL_74:

    __break(1u);
LABEL_75:
    LODWORD(v197) = 0;
    v196 = 329;
    OUTLINED_FUNCTION_7_0();
    goto LABEL_77;
  }

  v207 = v45;
  v208 = v20;
  if (v64)
  {
    v66 = 0;
    v199 = (v223 + 8);
    v200 = (v223 + 104);
    HIDWORD(v198) = *MEMORY[0x277D84660];
    v218 = xmmword_25BCBAE50;
    v215 = xmmword_25BCBAE70;
    v206 = xmmword_25BCCB750;
    v224 = v64;
    while (1)
    {
      sub_25BCB690C();
      v68 = v233[1];
      v67 = v233[0];

      MEMORY[0x28223BE20](v69);
      v70 = WitnessTable;
      *(&v198 - 8) = v231;
      *(&v198 - 7) = v70;
      v71 = v230;
      *(&v198 - 6) = v68;
      *(&v198 - 5) = v71;
      *(&v198 - 4) = &v243;
      *(&v198 - 3) = v67;
      v196 = &v242;

      v72 = sub_25BCB6FCC();
      if ((v73 & 1) == 0)
      {
        v81 = v68;
        MEMORY[0x28223BE20](v72);
        v82 = *(v231 + 24);
        v83 = v222;
        *(&v198 - 6) = v222;
        *(&v198 - 5) = v82;
        *(&v198 - 4) = v84;
        *(&v198 - 3) = sub_25BACC648;
        v196 = (&v198 - 10);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v86 = v229;
        sub_25BAB2F30(v225, sub_25BAB2FD0, (&v198 - 8), v83, v85);
        if (v86)
        {
          goto LABEL_74;
        }

        v229 = 0;

        v68 = v81;
        goto LABEL_64;
      }

      v74 = swift_modifyAtWritableKeyPath();
      v76 = v74;
      if ((*(v75 + 8) & 1) == 0)
      {
        break;
      }

LABEL_63:
      v76(v241, 0);

LABEL_64:
      v171 = *(v68 + 16);
      v172 = sub_25BAC4018();
      v173 = *(v232 + 16);
      if (v173 >= *(v232 + 24) >> 1)
      {
        sub_25BACC03C();
        v232 = v175;
      }

      ++v66;

      v174 = v232;
      *(v232 + 16) = v173 + 1;
      *(v174 + 8 * v173 + 32) = v172;
      if (v224 == v66)
      {
        goto LABEL_67;
      }
    }

    v77 = v75;
    v219 = v74;
    v220 = &v198;
    v78 = v230;
    v79 = *(v230 + 8);
    if (v79 == 1.0)
    {

      v80 = v68;
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      v87 = *(*(v68 + 16) + 160);
      v88 = OUTLINED_FUNCTION_12_54();
      sub_25BAA51C8(v88, v89);
      v239 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v90 = OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_4_76(v90);
      *(v91 + 32) = v79;
      v238 = v87;
      v78 = v230;
      v92 = OUTLINED_FUNCTION_7_67();
      sub_25BAA51C8(v92, v93);
      OUTLINED_FUNCTION_2_85();
      sub_25BA9C2C8(v240);
      sub_25BA9C2C8(v233);
      v240[0] = v68;
      v237[0] = v236[0];

      OUTLINED_FUNCTION_5_68();
      static Tensor.* infix(_:_:)();

      v80 = v233[0];
    }

    v94 = *(v78 + 28);
    v221 = v77;
    if (v94 > 0xFEuLL)
    {
      v233[0] = v80;
LABEL_32:
      v117 = *(*v77 + 32);
      if ((~v117 & 0xF000000000000007) == 0)
      {
        goto LABEL_75;
      }

      if ((v117 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_28_1();
        v198 = 325;
        OUTLINED_FUNCTION_7_0();
LABEL_77:
        sub_25BCB74CC();
        __break(1u);
LABEL_78:
        OUTLINED_FUNCTION_17_5();
        sub_25BADDD28();
      }

      v118 = v233[0];
      sub_25BAB3020(v117);
      v119 = qword_28154E1E0;

      if (v119 != -1)
      {
        swift_once();
      }

      v120 = &byte_27FBB3838;
      swift_beginAccess();
      v223 = v118;
      if (byte_27FBB3838 == 1)
      {
        if (*(v78 + 36) == 255)
        {

          v216 = v118;
        }

        else
        {
          v121 = *(v78 + 32) | (*(v78 + 36) << 32);
          LODWORD(v236[0]) = *(v78 + 32);
          BYTE4(v236[0]) = BYTE4(v121) & 1;
          v240[0] = v118;
          v237[0] = v117 & 0x7FFFFFFFFFFFFFFFLL;
          v122 = OUTLINED_FUNCTION_5_68();
          v120 = v236;
          sub_25BB08FF0(v122, v123);
          v216 = v233[0];
        }

        v124 = *v78;
        v125 = v78;
        v126 = *(*((v117 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
        OUTLINED_FUNCTION_0_14();
        v236[0] = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v127 = OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_4_76(v127);
        *(v128 + 32) = v124;
        LOBYTE(v239) = v126;
        v129 = v125;
        v130 = OUTLINED_FUNCTION_12_54();
        sub_25BAA51C8(v130, v131);
        Tensor.init(shape:coercingScalars:scalarType:on:)(v236, v120, &v239, v240, v237);
        sub_25BA9C2C8(v233);
        v132 = v237[0];
        if (*(v125 + 4) <= 0.0)
        {
          v233[0] = v216;
          v240[0] = v237[0];
          OUTLINED_FUNCTION_12_54();
          static Tensor.* infix(_:_:)();
          static Tensor.- prefix(_:)(v237);

          v240[0] = v117 & 0x7FFFFFFFFFFFFFFFLL;
          v237[0] = v233[0];
          OUTLINED_FUNCTION_5_68();
          static Tensor.+ infix(_:_:)();
        }

        else
        {
          if (*(v125 + 48))
          {
            v133 = OUTLINED_FUNCTION_3_70();
            v134 = OUTLINED_FUNCTION_20_41(v133);
            v135 = v233[0];
            if (!v233[0])
            {
              goto LABEL_78;
            }

            v129 = v230;
          }

          else
          {
            v233[0] = *(v125 + 40);
            v162 = OUTLINED_FUNCTION_3_70();
            v134 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v162, v240);
            v135 = v240[0];
          }

          v213 = &v198;
          MEMORY[0x28223BE20](v134);
          OUTLINED_FUNCTION_17_55();
          *(v163 - 48) = v216;
          *(v163 - 40) = v135;
          *(v163 - 32) = v132;
          *(v163 - 24) = v129;
          *(v163 - 16) = v67;
          v164 = v229;
          sub_25BACDABC(sub_25BCB13D0);
          v229 = v164;
        }
      }

      else
      {
        if (*(v78 + 36) == 255)
        {
        }

        else
        {
          v136 = *(v78 + 32) | (*(v78 + 36) << 32);
          LODWORD(v236[0]) = *(v78 + 32);
          BYTE4(v236[0]) = BYTE4(v136) & 1;
          v240[0] = v118;
          v237[0] = v117 & 0x7FFFFFFFFFFFFFFFLL;
          v137 = OUTLINED_FUNCTION_5_68();
          sub_25BB08FF0(v137, v138);
          v118 = v233[0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
        v139 = swift_allocObject();
        *(v139 + 16) = v215;
        *(v139 + 32) = v117 & 0x7FFFFFFFFFFFFFFFLL;
        *(v139 + 40) = v118;
        sub_25BAB3020(v117);

        sub_25BAB7DE8(v139, v240);
        swift_setDeallocating();
        sub_25BAB3FD0();
        v140 = *v78;
        v141 = v78;
        v142 = *(*((v117 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
        OUTLINED_FUNCTION_0_14();
        v239 = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v143 = OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_4_76(v143);
        *(v144 + 32) = v140;
        v238 = v142;
        v145 = v141;
        sub_25BAA51C8(v233, v237);
        OUTLINED_FUNCTION_2_85();
        sub_25BA9C2C8(v233);
        v146 = *(v141 + 4);
        v217 = v68;
        if (v146 <= 0.0)
        {
          v150 = *((v117 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v213 = v118;
          v151 = *(v118 + 16);
          v152 = *(v236[0] + 16);
          v153 = *(v230 + 12);
          LOBYTE(v239) = 0;
          v244[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
          v244[1] = 114;
          v245 = 2;
          v246 = v206;
          v247 = "init(id:parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:creationSite:)";
          v248 = 93;
          v249 = 2;
          type metadata accessor for StochasticGradientDescentOperation();
          swift_allocObject();

          v196 = v244;
          v154 = sub_25BAF4C3C(0, 0, 0, v146, v150, v151, 0, v152, v153);
          v155 = OUTLINED_FUNCTION_7_67();
          sub_25BAA51C8(v155, v156);
          sub_25BAA51C8(v237, v236);
          type metadata accessor for ContextManager();
          swift_retain_n();
          sub_25BAA49B8();
          sub_25BAA4A5C(v233);

          v157 = v235;

          sub_25BAA4AF4(v233);
          sub_25BAA49B8();
          sub_25BAA4A5C(v233);

          v158 = v234;

          sub_25BAA4AF4(v233);
          type metadata accessor for TensorRepresentation();
          v159 = swift_allocObject();
          LOBYTE(v233[0]) = 1;
          v160 = sub_25BC0FDBC(v154, 0, v236, 0x100000000, v157, v158, v159);
          type metadata accessor for TensorHandle();
          v161 = swift_allocObject();
          *(v161 + 16) = v160;

          sub_25BAA6EB0();

          sub_25BA9C2C8(v237);
          v233[0] = v161;
        }

        else
        {
          v216 = v236[0];
          if (*(v141 + 48))
          {
            v147 = OUTLINED_FUNCTION_3_70();
            v148 = OUTLINED_FUNCTION_20_41(v147);
            v149 = v233[0];
            if (!v233[0])
            {
              goto LABEL_78;
            }

            v145 = v230;
          }

          else
          {
            v233[0] = *(v141 + 40);
            v165 = OUTLINED_FUNCTION_3_70();
            v148 = OptimizerStateDictionary.subscript.getter(sub_25BB279D0, v165, v237);
            v149 = v237[0];
          }

          v212 = &v198;
          MEMORY[0x28223BE20](v148);
          OUTLINED_FUNCTION_17_55();
          *(v166 - 48) = v118;
          *(v166 - 40) = v149;
          *(v166 - 32) = v216;
          *(v166 - 24) = v145;
          *(v166 - 16) = v240;
          *(v166 - 8) = v67;
          v167 = v229;
          sub_25BACDABC(sub_25BCB13B8);
          v229 = v167;
        }

        sub_25BA9C2C8(v240);

        v68 = v217;
      }

      v168 = v233[0];
      v169 = v242;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = *(v169 + 16);
        sub_25BAA1B64();
        v169 = v177;
      }

      v170 = *(v169 + 16);
      if (v170 >= *(v169 + 24) >> 1)
      {
        sub_25BAA1B64();
        v169 = v178;
      }

      *(v169 + 16) = v170 + 1;
      *(v169 + 8 * v170 + 32) = v168;
      v242 = v169;
      v233[0] = v168;

      Parameter.wrappedValue.setter(v233);

      sub_25BAB310C(v117);

      v76 = v219;
      goto LABEL_63;
    }

    v95 = v78;
    v96 = *(v78 + 16);
    v97 = *(v95 + 24) | (v94 << 32);
    if (v94)
    {
      v217 = v68;
      v98 = v243;
      if (HIDWORD(v97) == 1)
      {
        OUTLINED_FUNCTION_0_14();
        v99 = *(*(v80 + 16) + 160);
        v100 = OUTLINED_FUNCTION_12_54();
        sub_25BAA51C8(v100, v101);
        v239 = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v102 = OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_4_76(v102);
        *(v103 + 32) = v96;
        v238 = v99;
        v104 = OUTLINED_FUNCTION_7_67();
        sub_25BAA51C8(v104, v105);

        OUTLINED_FUNCTION_2_85();
        sub_25BA9C2C8(v240);
        sub_25BA9C2C8(v233);
        v106 = v236[0];
        v240[0] = v80;
        Tensor.squared()();
        v237[0] = v233[0];
        v236[0] = &unk_286D423B0;
        Tensor.reshaped(to:)(v236, v240);

        v237[0] = v240[0];
        Tensor.sum(squeezingAxes:)(v236);
        v78 = v230;

        sqrt(_:)(v233, v236);

        v107 = v233[0];
        v240[0] = v80;
        v233[0] = v106;
        v237[0] = v107;
        v236[0] = v106;
        max(_:_:)();
        static Tensor./ infix(_:_:)();

        OUTLINED_FUNCTION_5_68();
        static Tensor.* infix(_:_:)();

        v68 = v217;
        v77 = v221;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_0_14();
      v108 = *(*(v80 + 16) + 160);
      v109 = OUTLINED_FUNCTION_12_54();
      sub_25BAA51C8(v109, v110);
      v239 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v111 = OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_4_76(v111);
      *(v112 + 32) = v97;
      v238 = v108;
      v113 = OUTLINED_FUNCTION_7_67();
      sub_25BAA51C8(v113, v114);

      OUTLINED_FUNCTION_2_85();
      sub_25BA9C2C8(v240);
      sub_25BA9C2C8(v233);
      v233[0] = v80;
      v240[0] = v236[0];
      OUTLINED_FUNCTION_12_54();
      static Tensor.* infix(_:_:)();
      v233[0] = v98;
      LOBYTE(v236[0]) = *(*(v80 + 16) + 160);
      v116 = v204;
      v115 = v205;
      (*v200)(v204, HIDWORD(v198), v205);
      Tensor.cast(to:roundingRule:)();
      (*v199)(v116, v115);
      v236[0] = v240[0];
      static Tensor./ infix(_:_:)();

      v68 = v217;
    }

    else
    {
      v240[0] = v80;
      Tensor.clamped(to:)(v233, *&v96, *(&v96 + 1));
    }

    v77 = v221;
    v78 = v230;
    goto LABEL_32;
  }

LABEL_67:
  v179 = sub_25BCB5EDC();
  v180 = v210;
  sub_25BCB5F0C();
  v181 = sub_25BCB6D4C();
  v182 = sub_25BCB6E1C();
  v183 = v208;
  if (v182)
  {

    v184 = v201;
    sub_25BCB5F3C();

    v186 = v202;
    v185 = v203;
    if ((*(v202 + 88))(v184, v203) == *MEMORY[0x277D85B00])
    {
      v187 = "[Error] Interval already ended";
    }

    else
    {
      (*(v186 + 8))(v184, v185);
      v187 = "";
    }

    v188 = swift_slowAlloc();
    *v188 = 0;
    v189 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v179, v181, v189, "Optimizing", v187, v188, 2u);
    MEMORY[0x25F8797F0](v188, -1, -1);
  }

  v207(v180, v183);
  v190 = v242;

  v191 = sub_25BACED8C();
  v233[0] = 1;
  v233[1] = v191;
  Array<A>.resolve(descriptor:)(v233, v190);

  v192 = v230;
  v193 = v231;
  v194 = WitnessTable;
  nullsub_1(v231, WitnessTable);
  return sub_25BA9B48C(v192, v193, v194);
}

uint64_t sub_25BCAF81C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X7>, uint64_t *a8@<X8>)
{
  v31 = *a7;
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  v12 = *(a3 + 16);
  v13 = *(a4 + 16);
  v14 = *(a5 + 4);
  v15 = *(a5 + 12);
  v45 = 0;
  v38 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
  v39 = 114;
  v40 = 2;
  v41 = xmmword_25BCCB750;
  v42 = "init(id:parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:creationSite:)";
  v43 = 93;
  v44 = 2;
  type metadata accessor for StochasticGradientDescentOperation();
  swift_allocObject();

  v16 = sub_25BAF4C3C(0, 0, 0, v14, v10, v11, v12, v13, v15);
  sub_25BAA51C8(a6, v37);
  sub_25BAA51C8(v37, v36);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v33);

  v17 = v35;

  sub_25BAA4AF4(v33);
  sub_25BAA49B8();
  sub_25BAA4A5C(v33);

  v18 = v34;

  sub_25BAA4AF4(v33);
  type metadata accessor for TensorRepresentation();
  v19 = swift_allocObject();
  LOBYTE(v33[0]) = 1;
  v20 = sub_25BC0FDBC(v16, 0, v36, 0x100000000, v17, v18, v19);
  type metadata accessor for TensorHandle();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v37);
  sub_25BAA51C8(a6, v37);
  sub_25BAA51C8(v37, v36);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v33);

  v22 = v35;

  sub_25BAA4AF4(v33);
  sub_25BAA49B8();
  sub_25BAA4A5C(v33);

  v23 = v34;

  sub_25BAA4AF4(v33);
  v24 = swift_allocObject();
  LOBYTE(v33[0]) = 1;
  v25 = sub_25BC0FDBC(v16, 1, v36, 0x100000000, v22, v23, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v37);
  v33[0] = v26;
  v27 = *(v31 + *MEMORY[0x277D84308]);
  v28 = type metadata accessor for OptimizerStateDictionary();

  OptimizerStateDictionary.subscript.setter(v33, a7, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25BCBAE70;
  *(v29 + 32) = v26;
  *(v29 + 40) = v21;

  sub_25BACEA3C(v29);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
  *a8 = v21;
  return result;
}

uint64_t sub_25BCAFC48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X6>, uint64_t *a6@<X8>)
{
  v8 = *a5;
  v9 = *(a4 + 4);
  v10 = *(a4 + 12);
  v22 = a3;
  v23 = a2;
  v11 = v8;
  static Tensor.* infix(_:_:)();
  static Tensor.- prefix(_:)(&v21);

  v12 = v23;
  if (v9 <= 0.0)
  {
    v21 = v23;
    v22 = a1;
    static Tensor.+ infix(_:_:)();

    v16 = v23;
  }

  else
  {
    v22 = v23;

    sub_25BC55E80(v13, v9);
    static Tensor.+ infix(_:_:)();

    v14 = v23;
    if (v10)
    {
      v22 = v12;
      v23 = a1;
      static Tensor.+ infix(_:_:)();
      sub_25BC55E80(v14, v9);
      static Tensor.+ infix(_:_:)();
    }

    else
    {
      v21 = v23;
      v22 = a1;
      static Tensor.+ infix(_:_:)();
    }

    v16 = v23;
    v23 = v14;
    v17 = *(v11 + *MEMORY[0x277D84308]);
    v18 = type metadata accessor for OptimizerStateDictionary();

    OptimizerStateDictionary.subscript.setter(&v23, a5, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = v14;
    *(inited + 40) = v16;

    sub_25BACEA3C(inited);

    swift_setDeallocating();
    result = sub_25BAB3FD0();
  }

  *a6 = v16;
  return result;
}

uint64_t sub_25BCAFEAC()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BCAFEFC(char a1)
{
  result = 0x6F69746172657469;
  switch(a1)
  {
    case 1:
      result = 0x676E696E7261656CLL;
      break;
    case 2:
      result = 0x6D75746E656D6F6DLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x746E656964617267;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x797469636F6C6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BCB0008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v10 = *a2;
  v11 = *a3;
  if (qword_28154E1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27FBB3838 == 1)
  {
    if (*(v5 + 36) == 255)
    {
    }

    else
    {
      v12 = v5[8] | (*(v5 + 36) << 32);
      LODWORD(v64[0]) = v5[8];
      BYTE4(v64[0]) = BYTE4(v12) & 1;
      v67[0] = v11;
      v66[0] = v10;
      sub_25BB08FF0(v67, v66);
      v11 = v56;
    }

    v13 = *v5;
    v14 = *(*(v10 + 16) + 160);
    LODWORD(v59) = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v64[0] = sub_25BACD7D8(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v15 = swift_allocObject();
    v16 = sub_25BACD7C4(v15, 1);
    *v17 = v13;
    v18 = nullsub_1(v16, v17);
    LOBYTE(v63[0]) = v14;
    sub_25BAA51C8(&v56, v67);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v64, v18, v63, v67, v66);
    sub_25BA9C2C8(&v56);
    if (*(v7 + 1) <= 0.0)
    {
      *&v56 = v11;
      v67[0] = v66[0];
      static Tensor.* infix(_:_:)();
      static Tensor.- prefix(_:)(v66);

      v67[0] = v10;
      v66[0] = v56;
      static Tensor.+ infix(_:_:)();

      *a5 = v56;
      return result;
    }

    if (!*(v7 + 6))
    {
      *&v56 = *(v7 + 5);
      v50 = *(a4 + 16);
      v51 = *(a4 + 24);
      v52 = type metadata accessor for OptimizerStateDictionary();
      v22 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v52, v67);
LABEL_21:
      MEMORY[0x28223BE20](v22);
      sub_25BACDABC(sub_25BCB16B0);
    }

    v19 = *(a4 + 16);
    v20 = *(a4 + 24);
    v21 = type metadata accessor for OptimizerStateDictionary();
    v22 = OptimizerStateDictionary.subscript.getter(a1, v21);
    if (v56)
    {
      goto LABEL_21;
    }

LABEL_25:
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v62 = 22;
    sub_25BADDD28();
  }

  if (*(v5 + 36) == 255)
  {
  }

  else
  {
    v23 = v5[8] | (*(v5 + 36) << 32);
    LODWORD(v64[0]) = v5[8];
    BYTE4(v64[0]) = BYTE4(v23) & 1;
    v67[0] = v11;
    v66[0] = v10;
    sub_25BB08FF0(v67, v66);
    v11 = v56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v24 = swift_allocObject();
  v25 = sub_25BACD7C4(v24, 2);
  *v26 = v10;
  v26[1] = v11;
  v27 = nullsub_1(v25, v26);

  sub_25BAB7DE8(v27, v66);

  v28 = *v7;
  v29 = *(*(v10 + 16) + 160);
  LODWORD(v59) = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v63[0] = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v30 = swift_allocObject();
  v31 = sub_25BACD7C4(v30, 1);
  *v32 = v28;
  v33 = nullsub_1(v31, v32);
  v65 = v29;
  sub_25BAA51C8(&v56, v67);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v63, v33, &v65, v67, v64);
  sub_25BA9C2C8(&v56);
  v34 = *(v7 + 1);
  if (v34 <= 0.0)
  {
    v40 = *(v10 + 16);
    v41 = *(v11 + 16);
    v42 = *(v64[0] + 16);
    v43 = *(v7 + 12);
    v65 = 0;
    v67[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
    v67[1] = 114;
    v68 = 2;
    v69 = xmmword_25BCCB750;
    v70 = "init(id:parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:creationSite:)";
    v71 = 93;
    v72 = 2;
    type metadata accessor for StochasticGradientDescentOperation();
    swift_allocObject();

    v44 = sub_25BAF4C3C(0, 0, 0, v34, v40, v41, 0, v42, v43);
    sub_25BAA51C8(v66, v64);
    sub_25BAA51C8(v64, v63);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v56);

    v45 = *v61;

    sub_25BAA4AF4(&v56);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v56);

    v46 = *(&v60 + 1);

    sub_25BAA4AF4(&v56);
    type metadata accessor for TensorRepresentation();
    v47 = swift_allocObject();
    LOBYTE(v56) = 1;
    v48 = sub_25BC0FDBC(v44, 0, v63, 0x100000000, v45, v46, v47);
    type metadata accessor for TensorHandle();
    v49 = sub_25BB3F4D8(v48);

    sub_25BA9C2C8(v64);
    *a5 = v49;
  }

  else
  {
    if (*(v7 + 6))
    {
      v35 = *(a4 + 16);
      v36 = *(a4 + 24);
      v37 = type metadata accessor for OptimizerStateDictionary();
      v38 = OptimizerStateDictionary.subscript.getter(a1, v37);
      if (!v56)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *&v56 = *(v7 + 5);
      v53 = *(a4 + 16);
      v54 = *(a4 + 24);
      v55 = type metadata accessor for OptimizerStateDictionary();
      v38 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v55, v67);
    }

    MEMORY[0x28223BE20](v38);
    sub_25BACDABC(sub_25BCB1698);
  }

  return sub_25BA9C2C8(v66);
}

uint64_t sub_25BCB07C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BCB083C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BCB08A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BCB0918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BCB0988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25BCAFEAC();
  *a3 = result;
  return result;
}

unint64_t sub_25BCB09C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_25BCAFEFC(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_25BCB09F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25BCB0000(*v1);
}

uint64_t sub_25BCB09FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_25BCAFEF8(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_25BCB0A2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  return sub_25BB085B4();
}

uint64_t sub_25BCB0A50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BCB0AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SGD.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  type metadata accessor for SGD.CodingKeys();
  OUTLINED_FUNCTION_6_67();
  swift_getWitnessTable();
  v49 = sub_25BCB76FC();
  v6 = OUTLINED_FUNCTION_2(v49);
  v46 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v40 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v48 = v11;
  sub_25BCB7B2C();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v14 = v46;
  v15 = v47;
  LOBYTE(v55) = 0;
  v16 = sub_25BCB769C();
  OUTLINED_FUNCTION_9_63(1);
  sub_25BCB768C();
  v18 = v17;
  OUTLINED_FUNCTION_9_63(2);
  sub_25BCB768C();
  v20 = v19;
  OUTLINED_FUNCTION_9_63(3);
  v21 = sub_25BCB767C();
  LOBYTE(v51) = 5;
  sub_25BB278BC();
  sub_25BCB765C();
  v45 = v21;
  v44 = v55;
  v43 = v57;
  v22 = v56;
  LOBYTE(v51) = 6;
  sub_25BB27868();
  sub_25BCB765C();
  v42 = v22;
  v23 = BYTE4(v55);
  v24 = v55;
  LOBYTE(v55) = 4;
  sub_25BCB768C();
  v26 = v25;
  v40 = v24;
  v41 = v23;
  type metadata accessor for OptimizerStateDictionary();
  v71 = 7;
  swift_getWitnessTable();
  sub_25BCB76AC();
  v45 &= 1u;
  v27 = v45;
  v28 = *(v14 + 8);
  v46 = a2;
  v29 = v42 | (v43 << 32);
  v30 = v40 | (v41 << 32);
  v31 = OUTLINED_FUNCTION_101();
  v32(v31);
  v48 = v72;
  *&v51 = __PAIR64__(v20, v18);
  DWORD2(v51) = v26;
  BYTE12(v51) = v27;
  *(&v51 + 13) = v77;
  HIBYTE(v51) = v78;
  v33 = v44;
  *&v52 = v44;
  v49 = HIDWORD(v29);
  BYTE12(v52) = BYTE4(v29);
  DWORD2(v52) = v29;
  HIBYTE(v52) = v76;
  *(&v52 + 13) = v75;
  BYTE4(v53) = BYTE4(v30);
  LODWORD(v53) = v30;
  BYTE7(v53) = v74;
  *(&v53 + 5) = v73;
  *(&v53 + 1) = v72;
  v54 = v16;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  *(v15 + 48) = v16;
  *(v15 + 16) = v35;
  *(v15 + 32) = v36;
  *v15 = v34;
  v37 = type metadata accessor for SGD();
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v55, &v51, v37);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v55 = __PAIR64__(v20, v18);
  v56 = v26;
  v57 = v45;
  v58 = v77;
  v59 = v78;
  v60 = v33;
  v62 = v49;
  v61 = v29;
  v63 = v75;
  v64 = v76;
  v66 = BYTE4(v30);
  v65 = v30;
  v68 = v74;
  v67 = v73;
  v69 = v48;
  v70 = v16;
  return (*(v38 + 8))(&v55, v37);
}

uint64_t SGD.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v25[1] = *(a2 + 16);
  v25[2] = v4;
  type metadata accessor for SGD.CodingKeys();
  OUTLINED_FUNCTION_6_67();
  swift_getWitnessTable();
  v5 = sub_25BCB77CC();
  v6 = OUTLINED_FUNCTION_2(v5);
  v32 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  v13 = *v2;
  v12 = v2[1];
  v14 = v2[2];
  v31 = *(v2 + 12);
  v15 = *(v2 + 2);
  v29 = *(v2 + 28);
  v30 = v15;
  v28 = v2[6];
  v26 = *(v2 + 36);
  v27 = v2[8];
  v16 = *(v2 + 6);
  v25[0] = *(v2 + 5);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v5;
  sub_25BCB7B6C();
  LOBYTE(v35) = 0;
  v19 = v33;
  sub_25BCB778C();
  if (v19)
  {
    return (*(v32 + 8))(v11, v5);
  }

  v21 = v28;
  v22 = v29;
  v23 = v30;
  v24 = v32;
  LOBYTE(v35) = 1;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB777C();
  LOBYTE(v35) = 2;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB777C();
  LOBYTE(v35) = 3;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB776C();
  v35 = v23;
  v36 = v21;
  v37 = (v21 | (v22 << 32)) >> 32;
  v34 = 5;
  sub_25BB2797C();
  OUTLINED_FUNCTION_15_55();
  OUTLINED_FUNCTION_64_0();
  sub_25BCB773C();
  BYTE4(v35) = (v27 | (v26 << 32)) >> 32;
  LODWORD(v35) = v27;
  v34 = 6;
  sub_25BB27928();
  OUTLINED_FUNCTION_15_55();
  OUTLINED_FUNCTION_64_0();
  sub_25BCB773C();
  LOBYTE(v35) = 4;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB777C();
  v35 = v25[0];
  v34 = 7;
  type metadata accessor for OptimizerStateDictionary();
  sub_25BCB617C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_55();
  OUTLINED_FUNCTION_64_0();
  sub_25BCB779C();

  return (*(v24 + 8))(v11, v18);
}

uint64_t sub_25BCB1418(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BCB1454()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BCB1490(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25BCB14D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_25BCB151C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BCB1670@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_25BCAFC48(*(v1 + 24), *(v1 + 32), *(v1 + 48), *(v1 + 56), *(v1 + 64), a1);
}

unint64_t sub_25BCB16DC()
{
  result = qword_27FBB80F0;
  if (!qword_27FBB80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB80F0);
  }

  return result;
}

void sub_25BCB1730()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = (*v0 + 32);
    v3 = 1;
    while (1)
    {
      v4 = *v2++;
      v5 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        break;
      }

      v3 = v5;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 1;
LABEL_7:
    if (v0[8] - 1 > 0xA)
    {
      v6 = 1;
    }

    else
    {
      v6 = qword_25BCD80F8[(v0[8] - 1)];
    }

    if ((v5 * v6) >> 64 == (v5 * v6) >> 63)
    {
      getpagesize();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_25BCB17FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0x203D206570616853, 0xE900000000000028);
  v3 = MEMORY[0x25F876F80](v1, MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v3);

  MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE7C90);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_25BCB18F0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (result > 0x100000)
    {
      if (result >= 0xA00000)
      {
        if (!(result >> 26))
        {
          v2 = 0x8000000;
          return NSRoundUpToMultipleOfPageSize(v2);
        }

        goto LABEL_13;
      }

LABEL_8:
      v2 = 0x2000000;
      return NSRoundUpToMultipleOfPageSize(v2);
    }

LABEL_9:
    v2 = 0x800000;
    return NSRoundUpToMultipleOfPageSize(v2);
  }

  if (result <= 0x100000)
  {
    goto LABEL_9;
  }

  if (result < 0xA00000)
  {
    goto LABEL_8;
  }

  if (!(result >> 29))
  {
    v2 = 0x40000000;
    return NSRoundUpToMultipleOfPageSize(v2);
  }

LABEL_13:
  if (!__OFADD__(result, 0x200000))
  {
    v2 = (result + 0x1FFFFF) & 0xFFFFFFFFFFE00000;
    return NSRoundUpToMultipleOfPageSize(v2);
  }

  __break(1u);
  return result;
}

int64_t sub_25BCB198C()
{
  v1 = *(v0 + 16);
  v2 = [v1 size];
  v3 = [v1 usedSize];
  v4 = __OFSUB__(v2, v3);
  result = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BCB1A0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MPSHeap.Descriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for MPSHeap.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25BCB1B14(uint64_t a1)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB1B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCDB680);
  v4 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v4);

  MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDB6A0);
  v5 = sub_25BC9DFF4(a3);
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](96, 0xE100000000000000);
  return 0;
}

uint64_t sub_25BCB1CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  MEMORY[0x25F878200](a3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB1D44()
{
  v1 = *v0;
  v2 = v0[2];
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  MEMORY[0x25F878200](v2);
  return sub_25BCB7A3C();
}

unint64_t sub_25BCB1DD4()
{
  result = qword_27FBB8100;
  if (!qword_27FBB8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MPSHeap.Size(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for MPSHeap.Size(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BCB1ECC()
{
  result = qword_27FBB8108;
  if (!qword_27FBB8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8108);
  }

  return result;
}

uint64_t sub_25BCB1F98()
{
  OUTLINED_FUNCTION_2_86();
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2030()
{
  OUTLINED_FUNCTION_1_85();
  MEMORY[0x25F878200](v0 & 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB206C()
{
  OUTLINED_FUNCTION_2_86();
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2148()
{
  OUTLINED_FUNCTION_1_85();
  MEMORY[0x25F878200](v0 + 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB21B8(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_2_86();
  a2(a1);
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2234(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_2_86();
  a2(v5, a1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2288()
{
  OUTLINED_FUNCTION_1_85();
  MEMORY[0x25F878200](v0 + 4);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB22C8()
{
  OUTLINED_FUNCTION_1_85();
  MEMORY[0x25F878200](v0 + 8);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB232C()
{
  OUTLINED_FUNCTION_2_86();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2374()
{
  OUTLINED_FUNCTION_1_85();
  MEMORY[0x25F878200](v0);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB23B0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_86();
  MEMORY[0x25F878200](a1);
  return sub_25BCB7A3C();
}

BOOL sub_25BCB23F4()
{
  v0 = sub_25BCB761C();

  return v0 != 0;
}

BOOL sub_25BCB2474@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BCB23F4();
  *a2 = result;
  return result;
}

uint64_t sub_25BCB24D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  if (!a3)
  {
    a1 = sub_25BC7CAD0();
  }

  v7 = a5[1];
  v9[0] = *a5;
  v9[1] = v7;
  *v10 = a5[2];
  *&v10[9] = *(a5 + 41);
  v11 = 0;
  return sub_25BAB9A8C(a1, a2, a3, a4, v9);
}

uint64_t sub_25BCB2540()
{
  sub_25BA9D740();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for UnaryLogicalOperation.Operator(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BCB2644()
{
  result = qword_27FBB8110;
  if (!qword_27FBB8110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB8118, qword_25BCD82E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8110);
  }

  return result;
}

unint64_t sub_25BCB26AC()
{
  result = qword_27FBB8120;
  if (!qword_27FBB8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8120);
  }

  return result;
}

uint64_t sub_25BCB2728(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = (a2 & 0xC000000000000001);
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v6)
  {
    goto LABEL_86;
  }

  for (i = *(v4 + 32); ; i = MEMORY[0x25F8779B0](0, v4))
  {
    v8 = i;
    if (sub_25BC5E5AC())
    {
      OUTLINED_FUNCTION_4_77();
      sub_25BAB4D78(1, v9, v4);
      v10 = v6 ? MEMORY[0x25F8779B0](1, v4) : *(v4 + 40);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (sub_25BC5E5AC())
    {
      OUTLINED_FUNCTION_4_77();
      sub_25BAB4D78(2, v12, v4);
      v13 = v6 ? MEMORY[0x25F8779B0](2, v4) : *(v4 + 48);
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    sub_25BC5E5AC();
    OUTLINED_FUNCTION_4_77();
    if (v16)
    {
      sub_25BAB4D78(3, v15, v4);
      if (v6)
      {
        v17 = 3;
LABEL_20:
        v18 = MEMORY[0x25F8779B0](v17, v4);
        goto LABEL_24;
      }

      v19 = *(v4 + 56);
    }

    else
    {
      sub_25BAB4D78(1, v15, v4);
      if (v6)
      {
        v17 = 1;
        goto LABEL_20;
      }

      v19 = *(v4 + 40);
    }

    v18 = v19;
LABEL_24:
    v135 = v18;
    sub_25BC5E5AC();
    v134 = v8;
    OUTLINED_FUNCTION_4_77();
    if (v21)
    {
      sub_25BAB4D78(4, v20, v4);
      if (v6)
      {
        v22 = 4;
LABEL_29:
        v23 = MEMORY[0x25F8779B0](v22, v4);
        goto LABEL_33;
      }

      v24 = *(v4 + 64);
    }

    else
    {
      sub_25BAB4D78(2, v20, v4);
      if (v6)
      {
        v22 = 2;
        goto LABEL_29;
      }

      v24 = *(v4 + 48);
    }

    v23 = v24;
LABEL_33:
    v136 = v23;
    v25 = sub_25BC5DF28();
    sub_25BC5E19C(v25);
    v27 = v26;
    v28 = sub_25BC5DF28();
    if (v28 != sub_25BC5DE24())
    {
      sub_25BAF99E8(v27);
      sub_25BB50DF0();
      v29 = sub_25BCB672C();

      v30 = [a1 reshapeTensor:v135 withShape:v29 name:0];

      sub_25BAF99E8(v27);
      v31 = sub_25BCB672C();

      v32 = [a1 reshapeTensor:v136 withShape:v31 name:0];

      v135 = v30;
      v136 = v32;
    }

    v33 = "espresso_buffer_t";
    if (*(v3 + 168))
    {
      if (*(v3 + 168) != 1)
      {
        break;
      }

      goto LABEL_41;
    }

    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v137);

    if (!v138)
    {
      sub_25BAA4AF4(v137);
      if (v11)
      {
        goto LABEL_38;
      }

      goto LABEL_50;
    }

    v35 = *(v138 + 24);
    sub_25BAA4AF4(v137);
    if ((v35 & 1) == 0)
    {
      break;
    }

LABEL_41:

    v36 = OUTLINED_FUNCTION_6_68(v134);
    v37 = sub_25BCB33A0(v134, v36, 0, 0, a1);
    v131 = v37;
    if (!sub_25BC5E714())
    {
      v133 = v37;
      goto LABEL_57;
    }

    v38 = *(v3 + 64);
    v4 = *(v38 + 16);
    if (!v4)
    {
      v63 = v37;
      v41 = 1.0;
LABEL_56:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v64 = OUTLINED_FUNCTION_5();
      v33 = "espresso_buffer_t";
      *(v64 + 16) = xmmword_25BCBB6D0;
      sub_25BB50DF0();
      *(v64 + 32) = sub_25BCB6DDC();
      v65 = sub_25BCB672C();

      v137[0] = *(*(v3 + 40) + 160);
      v66 = [a1 constantWithScalar:v65 shape:sub_25BC6640C() dataType:(v41 / (v41 + -1.0))];

      v133 = [a1 multiplicationWithPrimaryTensor:v131 secondaryTensor:v66 name:0];
LABEL_57:
      v67 = *(v3 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v68 = OUTLINED_FUNCTION_5();
      v129 = *(v33 + 109);
      *(v68 + 16) = v129;
      sub_25BB50DF0();
      *(v68 + 32) = sub_25BCB6DDC();
      v69 = sub_25BCB672C();

      if (v11)
      {
        [v11 dataType];
      }

      else
      {
        [v36 dataType];
      }

      v70 = OUTLINED_FUNCTION_5_69();
      v132 = [v70 v71];

      if (v11)
      {
        v72 = v11;
      }

      else
      {
        v72 = v36;
      }

      v127 = v11;
      v73 = OUTLINED_FUNCTION_5_69();
      v75 = [v73 v74];

      v76 = OUTLINED_FUNCTION_5();
      *(v76 + 16) = v129;
      v77 = v75;
      *(v76 + 32) = sub_25BCB6DDC();
      v78 = sub_25BCB672C();

      v79 = [a1 constantWithScalar:v78 shape:objc_msgSend(v36 dataType:{sel_dataType), (1.0 - v67)}];

      v128 = v79;
      v80 = [a1 multiplicationWithPrimaryTensor:v36 secondaryTensor:v79 name:0];
      v81 = OUTLINED_FUNCTION_5_69();
      v83 = [v81 v82];

      v84 = v83;
      v85 = [v77 dataType];
      v130 = v77;

      v86 = [v84 dataType];
      if (v85 == 268435472)
      {
        OUTLINED_FUNCTION_2_87();
        if (v86 == v94)
        {
          v95 = OUTLINED_FUNCTION_0_103(a1, sel_castTensor_toType_name_, v77);
          v93 = v77;
          v130 = v95;
          v88 = v84;
LABEL_69:
          v96 = &off_279972000;

          v97 = v36;
          goto LABEL_72;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_87();
        if (v85 == v87)
        {
          v88 = v84;
          if (v86 == v87 - 16)
          {
            v89 = OUTLINED_FUNCTION_5_69();
            v92 = OUTLINED_FUNCTION_0_103(v89, v90, v91);
            v93 = v84;
            v88 = v92;
            goto LABEL_69;
          }

LABEL_71:
          v97 = v36;
          v96 = &off_279972000;
LABEL_72:
          v98 = sub_25BB2BAEC(0x5F676E696E6E7572, 0xEC0000006E61656DLL);
          v126 = v88;
          v100 = sub_25BB2B6D4(v130, v88, v98, v99, a1);
          if (v14)
          {
            v101 = v14;
          }

          else
          {
            v101 = v131;
          }

          v125 = v14;
          v102 = [a1 multiplicationWithPrimaryTensor:v101 secondaryTensor:v132 name:0];

          v60 = v102;
          v103 = [a1 multiplicationWithPrimaryTensor:v133 secondaryTensor:v128 name:0];
          v104 = [a1 v96[185]];

          v105 = v104;
          v106 = [v60 &selRef_ceilWithTensor_name_];

          v107 = [v105 &selRef_ceilWithTensor_name_];
          if (v106 == 268435472)
          {
            OUTLINED_FUNCTION_2_87();
            if (v107 == v111)
            {
              v112 = OUTLINED_FUNCTION_0_103(a1, sel_castTensor_toType_name_, v60);
              v110 = v60;
              v60 = v112;
LABEL_81:
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_87();
            if (v106 == v108 && v107 == v108 - 16)
            {
              v109 = OUTLINED_FUNCTION_0_103(a1, sel_castTensor_toType_name_, v105);
              v110 = v105;
              v105 = v109;
              goto LABEL_81;
            }
          }

          v113 = sub_25BB2BAEC(0xD000000000000010, 0x800000025BCE7D10);
          v115 = sub_25BB2B6D4(v60, v105, v113, v114, a1);
          v116 = *(v3 + 76);
          v117 = OUTLINED_FUNCTION_3_21();
          v119 = sub_25BB2BAEC(v117, v118);
          v121 = sub_25BCB397C(v134, v97, v131, v135, v136, v116, v119, v120, a1);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_25BCBAE60;
          *(v62 + 32) = v121;
          *(v62 + 40) = v100;
          *(v62 + 48) = v115;
          v122 = v121;
          v123 = v100;

          v50 = v135;
          v48 = v131;
          v51 = v136;
          v57 = v130;
          v59 = v126;
          goto LABEL_83;
        }
      }

      v88 = v84;
      goto LABEL_71;
    }

    v39 = v37;
    v6 = (v38 + 32);
    v40 = v39;
    v41 = 1.0;
    while (1)
    {
      v43 = *v6++;
      v42 = v43;
      v44 = sub_25BC5DE18();
      if ((v43 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v42 >= *(v44 + 16))
      {
        goto LABEL_85;
      }

      v45 = *(v44 + 8 * v42 + 32);

      v41 = v41 * v45;
      if (!--v4)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    ;
  }

  if (v11)
  {
LABEL_38:
    v34 = v11;
    goto LABEL_51;
  }

LABEL_50:
  v34 = OUTLINED_FUNCTION_6_68(v134);
LABEL_51:
  v133 = v11;
  sub_25BAF99E8(v27);
  sub_25BB50DF0();
  v46 = sub_25BCB672C();

  v47 = [a1 reshapeTensor:v34 withShape:v46 name:0];

  if (v14)
  {
    v48 = v47;
    v49 = v14;
    v50 = v134;
  }

  else
  {
    v50 = v134;
    v48 = v47;
    v49 = sub_25BCB33A0(v134, v47, 0, 0, a1);
  }

  v51 = v14;
  sub_25BAF99E8(v27);

  v52 = sub_25BCB672C();

  v53 = [a1 reshapeTensor:v49 withShape:v52 name:0];

  v54 = *(v3 + 76);
  v56 = *(v3 + 24);
  v55 = *(v3 + 32);
  v57 = v53;
  sub_25BCB617C();
  v58 = v53;
  v59 = v135;
  v60 = v136;
  v61 = sub_25BCB397C(v50, v48, v58, v135, v136, v54, v56, v55, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v62 = OUTLINED_FUNCTION_5();
  *(v62 + 16) = xmmword_25BCBB6D0;
  *(v62 + 32) = v61;
LABEL_83:

  return v62;
}

id sub_25BCB32F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_25BAF99E8(*(v4 + 64));
  sub_25BB50DF0();
  v8 = sub_25BCB672C();

  if (a3)
  {
    a3 = sub_25BCB633C();
  }

  v9 = [a4 meanOfTensor:a1 axes:v8 name:a3];

  return v9;
}

id sub_25BCB33A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_25BAF99E8(*(v5 + 64));
  sub_25BB50DF0();
  v10 = sub_25BCB672C();

  if (a4)
  {
    a4 = sub_25BCB633C();
  }

  v11 = [a5 varianceOfTensor:a1 meanTensor:a2 axes:v10 name:a4];

  return v11;
}

uint64_t sub_25BCB3478(void *a1, unint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  sub_25BAB4D78(1, v5 == 0, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v9 = v8;
  if (*(v2 + 48))
  {
    sub_25BAB4D78(2, v5 == 0, a2);
    if (v5)
    {
      v10 = MEMORY[0x25F8779B0](2, a2);
    }

    else
    {
      v10 = *(a2 + 48);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = sub_25BC5DF28();
  sub_25BC5E19C(v13);
  v15 = v14;
  if (v11)
  {
    v16 = sub_25BC5DF28();
    if (v16 == sub_25BC5DE24())
    {
      v49 = v11;
    }

    else
    {
      sub_25BAF99E8(v15);

      sub_25BB50DF0();
      v17 = sub_25BCB672C();

      v49 = [a1 reshapeTensor:v12 withShape:v17 name:0];
    }
  }

  else
  {

    v49 = 0;
  }

  v18 = sub_25BCB32F0(v9, 0, 0, a1);
  v19 = sub_25BCB33A0(v9, v18, 0, 0, a1);
  v50 = a1;
  v48 = v7;
  if (*(v2 + 48) && *(v2 + 56))
  {
    v20 = *(v2 + 64);
    sub_25BAF99E8(v20);
    sub_25BB50DF0();
    v21 = sub_25BCB672C();

    v22 = *(v2 + 76);
    v23 = sub_25BB2BAEC(0x656C616373, 0xE500000000000000);
    v25 = sub_25BCB3B04(v7, v9, v18, v19, v21, v22, v23, v24, a1);

    sub_25BAF99E8(v20);
    v26 = sub_25BCB672C();

    v27 = sub_25BB2BAEC(0x74657366666FLL, 0xE600000000000000);
    v29 = sub_25BCB3BB8(v7, v9, v26, v27, v28, a1);

    v30 = v9;
    v31 = v7;
  }

  else
  {
    v29 = 0;
    v25 = 0;
    v30 = v9;
    v31 = v7;
  }

  v32 = *(v2 + 64);
  v46 = v25;
  sub_25BAF99E8(v32);
  sub_25BB50DF0();
  v33 = sub_25BCB672C();

  v34 = *(v2 + 76);
  v35 = OUTLINED_FUNCTION_3_21();
  v37 = sub_25BB2BAEC(v35, v36);
  v47 = v29;
  v39 = sub_25BCB3A30(v31, v30, v18, v19, v49, v25, v29, v33, v34, v37, v38, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v40 = OUTLINED_FUNCTION_5();
  *(v40 + 16) = xmmword_25BCBB6D0;
  *(v40 + 32) = v39;
  v41 = v39;
  if (v25)
  {
    v42 = v46;
    v43 = [v50 squeezeTensor:v46 name:0];
    MEMORY[0x25F876F40]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25BCB67AC();
    }

    sub_25BCB680C();
  }

  else
  {
    v42 = v46;
  }

  if (v47)
  {
    v44 = [v50 squeezeTensor:v47 name:0];
    MEMORY[0x25F876F40]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25BCB67AC();
    }

    sub_25BCB680C();

    v18 = v19;
    v19 = v47;
  }

  return v40;
}

id sub_25BCB397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = sub_25BCB633C();

  *&v17 = a6;
  v18 = [a9 normalizationWithTensor:a1 meanTensor:a2 varianceTensor:a3 gammaTensor:a4 betaTensor:a5 epsilon:v16 name:v17];

  return v18;
}

id sub_25BCB3A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, void *a12)
{
  v20 = sub_25BCB633C();

  *&v21 = a9;
  v22 = [a12 normalizationGradientWithIncomingGradientTensor:a1 sourceTensor:a2 meanTensor:a3 varianceTensor:a4 gammaTensor:a5 gammaGradientTensor:a6 betaGradientTensor:v21 reductionAxes:a7 epsilon:a8 name:v20];

  return v22;
}

id sub_25BCB3B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = sub_25BCB633C();

  *&v17 = a6;
  v18 = [a9 normalizationGammaGradientWithIncomingGradientTensor:a1 sourceTensor:a2 meanTensor:a3 varianceTensor:a4 reductionAxes:a5 epsilon:v16 name:v17];

  return v18;
}

id sub_25BCB3BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a6 normalizationBetaGradientWithIncomingGradientTensor:a1 sourceTensor:a2 reductionAxes:a3 name:v10];

  return v11;
}

uint64_t sub_25BCB3C44(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *(v2 + 16);
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v7))
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);
    swift_unknownObjectRetain();
    v4 = v11(a1, a2, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_25BBB9B78();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_25BCB3D58(uint64_t a1)
{
  result = sub_25BCB3D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BCB3D80()
{
  result = qword_28154F010;
  if (!qword_28154F010)
  {
    type metadata accessor for TrackedOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F010);
  }

  return result;
}

uint64_t static GradientClippingMode.== infix(_:_:)(uint64_t *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (*(a1 + 12) == 1)
    {
      if (v4 == 1 && *&v2 == *&v3)
      {
        v5 = 1;
        return v5 & 1;
      }

LABEL_19:
      v5 = 0;
      return v5 & 1;
    }

    if (v4 != 2)
    {
      goto LABEL_19;
    }

    if ((v2 & 0x100000000) != 0)
    {
      if ((v3 & 0x100000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((v3 & 0x100000000) != 0 || *&v2 != *&v3)
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 2) == a2[2];
  }

  else
  {
    if (*(a2 + 12))
    {
      goto LABEL_19;
    }

    v6 = HIDWORD(*a1);
    v7 = *(&v2 + 1) == *(&v3 + 1) && *&v2 == COERCE_FLOAT(*a2);
  }

  v5 = v7;
  return v5 & 1;
}

unint64_t sub_25BCB3E80(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_25BCB3E90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000025BCE7D30 == a2;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000025BCE7D50 == a2;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000025BCE7D70 == a2;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000022 && 0x800000025BCE7D90 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_25BCB789C();

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

unint64_t sub_25BCB403C(char a1)
{
  result = 0x696D697263736964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25BCB4104@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BCB3E80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BCB41E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BCB3E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BCB4210(uint64_t a1)
{
  v2 = sub_25BCB4528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCB424C(uint64_t a1)
{
  v2 = sub_25BCB4528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientClippingMode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB8128, &unk_25BCD8450);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB4528();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BCB457C();
    sub_25BCB76AC();
    if (v24)
    {
      if (v24 != 1)
      {
        OUTLINED_FUNCTION_2_10();
        v19 = sub_25BCB764C();
        OUTLINED_FUNCTION_2_10();
        sub_25BCB768C();
        v18 = v20;
        v21 = OUTLINED_FUNCTION_6_3();
        v22(v21);
        v15 = v19 & 0x1FFFFFFFFLL;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_2_10();
      sub_25BCB768C();
      v12 = v11;
      v13 = OUTLINED_FUNCTION_6_3();
      v14(v13);
      v15 = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
      sub_25BC5B360(&qword_27FBB72B0);
      sub_25BCB76AC();
      v16 = OUTLINED_FUNCTION_6_3();
      v17(v16);
      v15 = v23;
    }

    v18 = 0;
LABEL_9:
    *a2 = v15;
    *(a2 + 8) = v18;
    *(a2 + 12) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BCB4528()
{
  result = qword_27FBB8130;
  if (!qword_27FBB8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8130);
  }

  return result;
}

unint64_t sub_25BCB457C()
{
  result = qword_27FBB8138;
  if (!qword_27FBB8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8138);
  }

  return result;
}

uint64_t GradientClippingMode.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB8140, &qword_25BCD8460);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v17 = *v1;
  v12 = *(v1 + 2);
  v13 = *(v1 + 12);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB4528();
  sub_25BCB7B6C();
  if (v13)
  {
    if (v13 == 1)
    {
      LOBYTE(v18) = 1;
      v19 = 0;
      sub_25BCB487C();
      OUTLINED_FUNCTION_1_12();
      sub_25BCB779C();
      if (!v2)
      {
        LOBYTE(v18) = 2;
LABEL_9:
        sub_25BCB777C();
      }
    }

    else
    {
      LOBYTE(v18) = 2;
      v19 = 0;
      sub_25BCB487C();
      OUTLINED_FUNCTION_1_12();
      sub_25BCB779C();
      if (!v2)
      {
        LOBYTE(v18) = 4;
        OUTLINED_FUNCTION_1_12();
        sub_25BCB772C();
        LOBYTE(v18) = 3;
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    v19 = 0;
    sub_25BCB487C();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v2)
    {
      v18 = v17;
      v19 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
      sub_25BC5B360(&qword_27FBB72A0);
      sub_25BCB779C();
    }
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_25BCB487C()
{
  result = qword_27FBB8148;
  if (!qword_27FBB8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8148);
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GradientClippingMode(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 13))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 12);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for GradientClippingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GradientClippingMode.Discriminator(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GradientClippingMode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BCB4B78()
{
  result = qword_27FBB8150;
  if (!qword_27FBB8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8150);
  }

  return result;
}

unint64_t sub_25BCB4BD0()
{
  result = qword_27FBB8158;
  if (!qword_27FBB8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8158);
  }

  return result;
}

unint64_t sub_25BCB4C28()
{
  result = qword_27FBB8160;
  if (!qword_27FBB8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8160);
  }

  return result;
}

unint64_t sub_25BCB4C80()
{
  result = qword_27FBB8168;
  if (!qword_27FBB8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8168);
  }

  return result;
}

unint64_t sub_25BCB4CD4()
{
  result = qword_27FBB8170;
  if (!qword_27FBB8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8170);
  }

  return result;
}

uint64_t MIL::IRArgument::Make()
{
  return MEMORY[0x282182FE0]();
}

{
  return MEMORY[0x282182FE8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}