uint64_t sub_2574413B0(uint64_t a1, id *a2)
{
  result = sub_257449C3C();
  *a2 = 0;
  return result;
}

uint64_t sub_25744142C(uint64_t a1, id *a2)
{
  v3 = sub_257449C4C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2574414B0@<X0>(uint64_t *a1@<X8>)
{
  sub_257449C5C();
  v2 = sub_257449C2C();

  *a1 = v2;
  return result;
}

uint64_t sub_2574414F8()
{
  v1 = *v0;
  v2 = sub_257449C5C();
  v3 = MEMORY[0x259C64150](v2);

  return v3;
}

uint64_t sub_257441538()
{
  v1 = *v0;
  sub_257449C5C();
  sub_257449C6C();
}

uint64_t sub_257441590()
{
  v1 = *v0;
  sub_257449C5C();
  sub_257449E1C();
  sub_257449C6C();
  v2 = sub_257449E4C();

  return v2;
}

uint64_t sub_257441608(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_257449C5C();
  v6 = v5;
  if (v4 == sub_257449C5C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_257449DBC();
  }

  return v9 & 1;
}

uint64_t sub_257441690(uint64_t a1)
{
  v2 = sub_257441910(&qword_27F877E90, type metadata accessor for FileAttributeKey);
  v3 = sub_257441910(&qword_27F877E98, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257441750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_257449C2C();

  *a2 = v5;
  return result;
}

uint64_t sub_257441798@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_257449C5C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2574417C4(uint64_t a1)
{
  v2 = sub_257441910(&qword_27F877E60, type metadata accessor for URLResourceKey);
  v3 = sub_257441910(&qword_27F877E68, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257441910(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2574419B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_257441B00()
{
  v3 = 0x27983E000;
  v4 = [v0 modelDescription];
  v5 = 0x27983E000;
  v6 = [v4 inputDescriptions];

  v7 = sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v8 = sub_257449CBC();

  if (v8 >> 62)
  {
LABEL_45:
    v9 = sub_257449D8C();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 != 1)
  {
    return 0;
  }

  v10 = [v0 v3[197]];
  v11 = [v10 v5[198]];

  v12 = sub_257449CBC();
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x259C64200](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_48;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v1 = 0x27983E000uLL;
  v15 = [v14 type];

  if (v15 != 4 || (sub_257444D54() & 1) == 0)
  {
    return 0;
  }

  v16 = [v0 v3[197]];
  v17 = [v16 outputDescriptions];

  v7 = sub_257449CBC();
  v2 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_48:
  v18 = sub_257449D8C();
LABEL_11:
  v19 = 0;
  do
  {
    if (v18 == v19)
    {

      return 0;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x259C64200](v19, v7);
    }

    else
    {
      if (v19 >= *(v2 + 16))
      {
        goto LABEL_44;
      }

      v20 = *(v7 + 8 * v19 + 32);
    }

    v3 = v20;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = [v20 *(v1 + 1592)];

    ++v19;
  }

  while (v5 != 6);

  v22 = [v0 modelTypeName];
  v23 = sub_257449C5C();
  v25 = v24;

  if (v23 == 0xD000000000000012 && 0x800000025744ADB0 == v25 || (sub_257449DBC() & 1) != 0)
  {

    return sub_257444FA0();
  }

  else if (v23 == 0x7373616C436D6C67 && v25 == 0xED00007265696669 || (sub_257449DBC() & 1) != 0 || v23 == 0xD000000000000017 && 0x800000025744AE50 == v25 || (sub_257449DBC() & 1) != 0 || v23 == 0xD000000000000016 && 0x800000025744AE70 == v25 || (sub_257449DBC() & 1) != 0 || v23 == 0xD000000000000017 && 0x800000025744ADF0 == v25 || (sub_257449DBC() & 1) != 0 || v23 == 0xD00000000000001BLL && 0x800000025744AE90 == v25)
  {

    return 1;
  }

  else
  {
    v26 = sub_257449DBC();

    return v26 & 1;
  }
}

uint64_t sub_257441F64()
{
  v2 = [v0 modelDescription];
  v3 = [v2 inputDescriptions];

  sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v4 = sub_257449CBC();

  if (v4 >> 62)
  {
    goto LABEL_106;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_126:

    return 0;
  }

  while (1)
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) == 0)
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_86:

        v14 = v86;
LABEL_87:

        if ([v1 type] != 6)
        {

          swift_unknownObjectRelease();
          return 0;
        }

        v67 = [v88 modelDescription];
        v68 = [v67 outputDescriptions];

        v45 = sub_257449CBC();
        if (v45 >> 62)
        {
          v69 = sub_257449D8C();
          if (v69)
          {
LABEL_90:
            v70 = 0;
            v87 = v69;
            v88 = (v45 & 0xC000000000000001);
            while (1)
            {
              if (v88)
              {
                v71 = MEMORY[0x259C64200](v70, v45);
              }

              else
              {
                if (v70 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_122;
                }

                v71 = *(v45 + 8 * v70 + 32);
              }

              v14 = v71;
              v72 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                __break(1u);
LABEL_122:
                __break(1u);
                goto LABEL_123;
              }

              v73 = [v71 name];
              v74 = sub_257449C5C();
              v76 = v75;

              if (v74 == 0x74754F6574617473 && v76 == 0xE800000000000000)
              {
                break;
              }

              v78 = sub_257449DBC();

              if (v78)
              {
                goto LABEL_109;
              }

              ++v70;
              v14 = v86;
              if (v72 == v87)
              {
                goto LABEL_129;
              }
            }

LABEL_109:

            if ([v14 type] == 5 && objc_msgSend(v89, sel_constraint))
            {
              objc_opt_self();
              v79 = [swift_dynamicCastObjCClassUnconditional() shape];
              v80 = sub_257449CBC();

              v81 = swift_allocObject();
              *(v81 + 16) = v85;
              *(v81 + 32) = sub_257449CEC();
              LOBYTE(v79) = sub_257445518(v80, v81);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return v79 & 1;
            }

            swift_unknownObjectRelease();
LABEL_113:

            return 0;
          }
        }

        else
        {
          v69 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v69)
          {
            goto LABEL_90;
          }
        }

LABEL_129:

        goto LABEL_125;
      }

      v7 = *(v4 + 8 * v6 + 32);
      v1 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v89 = v7;
      v8 = [v7 name];
      v9 = sub_257449C5C();
      v11 = v10;

      if (v9 == 0x6E496574617473 && v11 == 0xE700000000000000)
      {
        goto LABEL_17;
      }

      v13 = sub_257449DBC();

      if (v13)
      {
        goto LABEL_18;
      }

      ++v6;
      if (v1 == v5)
      {
        goto LABEL_126;
      }
    }

    v7 = MEMORY[0x259C64200](v6, v4);
    v1 = (v6 + 1);
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:

LABEL_18:

    v14 = v89;
    if ([v89 type] != 5)
    {
      goto LABEL_113;
    }

    v15 = [v89 constraint];
    if (!v15)
    {
      goto LABEL_113;
    }

    v1 = v15;
    objc_opt_self();
    v16 = [swift_dynamicCastObjCClassUnconditional() shape];
    sub_257445F54(0, &qword_27F877EA8, 0x277CCABB0);
    v17 = sub_257449CBC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877EB0, &qword_25744A560);
    v18 = swift_allocObject();
    v85 = xmmword_25744A530;
    *(v18 + 16) = xmmword_25744A530;
    *(v18 + 32) = sub_257449CEC();
    LOBYTE(v16) = sub_257445518(v17, v18);

    if ((v16 & 1) == 0)
    {
      goto LABEL_64;
    }

    v19 = [v88 modelDescription];
    v20 = [v19 inputDescriptions];

    v21 = sub_257449CBC();
    v22 = v21;
    v90 = MEMORY[0x277D84F90];
    if (!(v21 >> 62))
    {
      v4 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

LABEL_115:
    v83 = v22;
    v4 = sub_257449D8C();
    v22 = v83;
LABEL_23:
    if (!v4)
    {
      v37 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v23 = 0;
    v24 = v22 & 0xC000000000000001;
    v25 = v22 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    if (v24)
    {
      v26 = v22;
      v27 = MEMORY[0x259C64200](v23);
    }

    else
    {
      if (v23 >= *(v25 + 16))
      {
        goto LABEL_105;
      }

      v26 = v22;
      v27 = *(v22 + 8 * v23 + 32);
    }

    v28 = v27;
    v29 = (v23 + 1);
    if (!__OFADD__(v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    v5 = sub_257449D8C();
    if (!v5)
    {
      goto LABEL_126;
    }
  }

  v1 = v4;
  v30 = [v27 name];
  v31 = sub_257449C5C();
  v33 = v32;

  if (v31 == 0x6E496574617473 && v33 == 0xE700000000000000)
  {
  }

  else
  {
    v35 = sub_257449DBC();

    if (v35)
    {
    }

    else
    {
      sub_257449D4C();
      v36 = *(v90 + 16);
      sub_257449D6C();
      sub_257449D7C();
      sub_257449D5C();
    }
  }

  v4 = v1;
  ++v23;
  v22 = v26;
  if (v29 != v1)
  {
    goto LABEL_27;
  }

  v14 = v89;
  v37 = v90;
LABEL_41:

  if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
  {
    v38 = sub_257449D8C();
  }

  else
  {
    v38 = *(v37 + 16);
  }

  if (!v38)
  {
    goto LABEL_64;
  }

  v39 = [v88 modelDescription];
  v40 = [v39 outputDescriptions];

  v41 = sub_257449CBC();
  v42 = v41 >> 62 ? sub_257449D8C() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v42 != 3)
  {
    goto LABEL_64;
  }

  v43 = [v88 modelDescription];
  v44 = [v43 outputDescriptions];

  v45 = sub_257449CBC();
  if (v45 >> 62)
  {
    goto LABEL_119;
  }

  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
LABEL_125:

    swift_unknownObjectRelease();
    goto LABEL_126;
  }

  while (2)
  {
    v47 = 0;
    v1 = (v45 & 0xFFFFFFFFFFFFFF8);
    while (2)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x259C64200](v47, v45);
        v49 = v47 + 1;
        if (!__OFADD__(v47, 1))
        {
          goto LABEL_54;
        }

LABEL_63:
        __break(1u);
LABEL_64:

        goto LABEL_65;
      }

      if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_115;
      }

      v48 = *(v45 + 8 * v47 + 32);
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_63;
      }

LABEL_54:
      v86 = v48;
      v50 = [v48 name];
      v14 = sub_257449C5C();
      v52 = v51;

      if (v14 != 0x6C6562616CLL || v52 != 0xE500000000000000)
      {
        v54 = sub_257449DBC();

        if (v54)
        {
          goto LABEL_67;
        }

        ++v47;
        if (v49 == v46)
        {
          goto LABEL_125;
        }

        continue;
      }

      break;
    }

LABEL_67:

    v14 = v86;
    v55 = v89;
    if ([v86 type] == 3)
    {
      v56 = [v88 modelDescription];
      v57 = [v56 outputDescriptions];

      v45 = sub_257449CBC();
      if (!(v45 >> 62))
      {
        v58 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
          goto LABEL_70;
        }

LABEL_124:

        goto LABEL_125;
      }

LABEL_123:
      v58 = sub_257449D8C();
      if (!v58)
      {
        goto LABEL_124;
      }

LABEL_70:
      v59 = 0;
      v84 = v45 & 0xC000000000000001;
      while (2)
      {
        if (v84)
        {
          v60 = MEMORY[0x259C64200](v59, v45);
          v55 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          goto LABEL_74;
        }

        if (v59 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v60 = *(v45 + 8 * v59 + 32);
          v55 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
            goto LABEL_83;
          }

LABEL_74:
          v1 = v60;
          v61 = [v60 name];
          v62 = sub_257449C5C();
          v64 = v63;

          if (v62 == 0xD000000000000010 && 0x800000025744AE30 == v64)
          {
            goto LABEL_86;
          }

          v66 = sub_257449DBC();

          v14 = v86;
          if (v66)
          {
            goto LABEL_87;
          }

          ++v59;
          if (v55 == v58)
          {
            goto LABEL_124;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_119:
      v22 = sub_257449D8C();
      v46 = v22;
      if (!v22)
      {
        goto LABEL_125;
      }

      continue;
    }

    break;
  }

LABEL_84:

LABEL_65:
  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_257442AF4()
{
  v2 = [v0 modelDescription];
  v3 = [v2 inputDescriptions];

  sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v4 = sub_257449CBC();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_71:
    v6 = sub_257449D8C();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = 0x27983E000;
  do
  {
    if (v6 == v7)
    {
      goto LABEL_74;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C64200](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_67;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:

      return 0;
    }

    v1 = [v9 type];

    ++v7;
  }

  while (v1 != 4);

  v4 = [v56 modelDescription];
  v11 = [v4 outputDescriptions];

  v12 = sub_257449CBC();
  if (v12 >> 62)
  {
LABEL_73:
    v5 = sub_257449D8C();
    if (!v5)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v5 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_74;
    }
  }

  v13 = 0;
  v14 = 0x6E656469666E6F63;
  while ((v12 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x259C64200](v13, v12);
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_28;
    }

LABEL_19:
    v1 = v15;
    v16 = [v15 name];
    v17 = v14;
    v18 = sub_257449C5C();
    v20 = v19;

    if (v18 == v17 && v20 == 0xEA00000000006563)
    {
      goto LABEL_29;
    }

    v14 = v17;
    v22 = sub_257449DBC();

    if (v22)
    {
      goto LABEL_30;
    }

    ++v13;
    if (v4 == v5)
    {
      goto LABEL_74;
    }
  }

  if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_71;
  }

  v15 = *(v12 + 8 * v13 + 32);
  v4 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
LABEL_29:

LABEL_30:

  v4 = v1;
  if ([v1 type] != 5)
  {
LABEL_47:

    return 0;
  }

  v12 = [v56 modelDescription];
  v23 = [v12 outputDescriptions];

  v24 = sub_257449CBC();
  if (v24 >> 62)
  {
    v25 = sub_257449D8C();
    if (v25)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
LABEL_77:

    goto LABEL_74;
  }

LABEL_33:
  v26 = 0;
  v27 = 0xEB00000000736574;
  v28 = 0x616E6964726F6F63;
  v55 = v24 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x259C64200](v26, v24);
      v4 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      if (v26 >= *(v55 + 16))
      {
        __break(1u);
        goto LABEL_73;
      }

      v29 = *(v24 + 8 * v26 + 32);
      v4 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_46;
      }
    }

    v57 = v29;
    v12 = v28;
    v30 = v27;
    v31 = [v29 name];
    v32 = sub_257449C5C();
    v34 = v33;

    v27 = v30;
    if (v32 == v12 && v34 == v30)
    {
      break;
    }

    v28 = v12;
    v36 = sub_257449DBC();

    if (v36)
    {
      goto LABEL_49;
    }

    ++v26;
    if (v4 == v25)
    {
      goto LABEL_77;
    }
  }

LABEL_49:

  v8 = v57;
  if ([v57 type] != 5)
  {
    goto LABEL_65;
  }

  v37 = [v56 modelTypeName];
  v38 = sub_257449C5C();
  v40 = v39;

  if (v38 == 0x656E696C65706970 && v40 == 0xE800000000000000)
  {
  }

  else
  {
    v41 = sub_257449DBC();

    if ((v41 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v42 = [v56 subModels];
  if (!v42)
  {
LABEL_65:

    return 0;
  }

  v43 = v42;
  sub_257445F54(0, &qword_27F877EC8, 0x277D25058);
  v44 = sub_257449CBC();

  if (v44 >> 62)
  {
    v45 = sub_257449D8C();
    if (!v45)
    {
      goto LABEL_79;
    }

LABEL_57:
    v46 = __OFSUB__(v45, 1);
    result = v45 - 1;
    if (v46)
    {
      __break(1u);
    }

    else if ((v44 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v48 = *(v44 + 8 * result + 32);
LABEL_62:
        v49 = v48;

        v50 = [v49 modelTypeName];

        v51 = sub_257449C5C();
        v53 = v52;

        if (v51 == 0xD000000000000015 && 0x800000025744AE10 == v53)
        {

          return 1;
        }

        else
        {
          v54 = sub_257449DBC();

          return v54 & 1;
        }
      }

      __break(1u);
      return result;
    }

    v48 = MEMORY[0x259C64200](result, v44);
    goto LABEL_62;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45)
  {
    goto LABEL_57;
  }

LABEL_79:

LABEL_74:

  return 0;
}

void sub_2574431CC()
{
  v2 = [v0 modelDescription];
  v3 = [v2 inputDescriptions];

  sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v4 = sub_257449CBC();

  if (v4 >> 62)
  {
    v5 = sub_257449D8C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    return;
  }

  v6 = [v0 modelDescription];
  v7 = [v6 inputDescriptions];

  v8 = sub_257449CBC();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x259C64200](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 type];

  if (v11 != 4)
  {
    return;
  }

  v12 = [v0 modelDescription];
  v1 = 0x27983E000uLL;
  v13 = [v12 outputDescriptions];

  v14 = sub_257449CBC();
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_19:
  v15 = sub_257449D8C();
LABEL_10:

  if (v15 == 1)
  {
    v16 = [v0 modelDescription];
    v17 = [v16 *(v1 + 1616)];

    v18 = sub_257449CBC();
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x259C64200](0, v18);
      goto LABEL_14;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v18 + 32);
LABEL_14:
      v20 = v19;

      [v20 type];

      return;
    }

    __break(1u);
  }
}

void sub_257443470()
{
  v2 = v0;
  v3 = 0x27983E000uLL;
  v4 = [v0 modelDescription];
  v5 = [v4 inputDescriptions];

  sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v6 = sub_257449CBC();

  if (v6 >> 62)
  {
    v7 = sub_257449D8C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 == 1)
  {
    v8 = [v2 modelDescription];
    v9 = [v8 inputDescriptions];

    v10 = sub_257449CBC();
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x259C64200](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v11 = *(v10 + 32);
    }

    v8 = v11;

    if ([v8 type] != 5 || !objc_msgSend(v8, sel_constraint))
    {
LABEL_37:

      return;
    }

    objc_opt_self();
    v12 = [swift_dynamicCastObjCClassUnconditional() shape];
    v10 = sub_257445F54(0, &qword_27F877EA8, 0x277CCABB0);
    v1 = sub_257449CBC();

    if (v1 >> 62)
    {
      goto LABEL_46;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 3)
    {
      do
      {
        v30 = v1 & 0xC000000000000001;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x259C64200](1, v1);
        }

        else
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            __break(1u);
            goto LABEL_52;
          }

          v13 = *(v1 + 40);
        }

        v14 = v13;
        v15 = sub_257449CEC();
        v16 = sub_257449CFC();

        if ((v16 & 1) == 0)
        {
          break;
        }

        if (v30)
        {
          v17 = MEMORY[0x259C64200](2, v1);
        }

        else
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
          {
            __break(1u);
            return;
          }

          v17 = *(v1 + 48);
        }

        v18 = v17;
        v19 = sub_257449CEC();
        v20 = sub_257449CFC();

        if (v20)
        {
        }

        else
        {
          if (v30)
          {
            v21 = MEMORY[0x259C64200](2, v1);
          }

          else
          {
            v21 = *(v1 + 48);
          }

          v22 = v21;

          v23 = sub_257449CEC();
          v24 = sub_257449CFC();

          if ((v24 & 1) == 0)
          {
            swift_unknownObjectRelease();
            goto LABEL_37;
          }
        }

        v25 = [v2 *(v3 + 1576)];
        v2 = [v25 outputDescriptions];

        v10 = sub_257449CBC();
        if (!(v10 >> 62))
        {
          v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v3 = 0x27983E000uLL;
          if (!v26)
          {
            goto LABEL_53;
          }

          goto LABEL_27;
        }

LABEL_52:
        v26 = sub_257449D8C();
        v3 = 0x27983E000;
        if (!v26)
        {
LABEL_53:

          swift_unknownObjectRelease();
          goto LABEL_48;
        }

LABEL_27:
        v1 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x259C64200](v1, v10);
          }

          else
          {
            if (v1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v27 = *(v10 + 8 * v1 + 32);
          }

          v2 = v27;
          v28 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if ([v27 *(v3 + 1592)] == 6)
          {

            if ([v2 constraint])
            {
              objc_opt_self();
              v29 = swift_dynamicCastObjCClassUnconditional();
              swift_unknownObjectRetain();
              [v29 keyType];

              swift_unknownObjectRelease_n();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            return;
          }

          ++v1;
          if (v28 == v26)
          {
            goto LABEL_53;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        ;
      }

      while (sub_257449D8C() == 3);
    }

    swift_unknownObjectRelease();

LABEL_48:
  }
}

void sub_2574439B0()
{
  v1 = [v0 modelTypeName];
  v2 = sub_257449C5C();
  v4 = v3;

  if (v2 == 0xD000000000000012 && 0x800000025744ADB0 == v4)
  {
  }

  else
  {
    v6 = sub_257449DBC();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v7 = [v0 subModels];
  if (v7)
  {
    v8 = v7;
    sub_257445F54(0, &qword_27F877EC8, 0x277D25058);
    v9 = sub_257449CBC();

    if (v9 >> 62)
    {
      v10 = sub_257449D8C();
      if (!v10)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
LABEL_40:

        return;
      }
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x259C64200](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v11 = *(v9 + 32);
    }

    v12 = v11;
    v13 = [v11 modelTypeName];

    v14 = sub_257449C5C();
    v16 = v15;

    v17 = v10 - 1;
    if (!__OFSUB__(v10, 1))
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x259C64200](v17, v9);
        goto LABEL_21;
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
        if (v17 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v9 + 8 * v17 + 32);
LABEL_21:
          v19 = v18;

          v20 = [v19 modelTypeName];

          v21 = sub_257449C5C();
          v23 = v22;

          v24 = v14 == 0xD00000000000001ALL && 0x800000025744ADD0 == v16;
          v25 = v24;
          if (v24 || (sub_257449DBC() & 1) != 0)
          {
            if (v21 == 0x7373616C436D6C67 && v23 == 0xED00007265696669 || (sub_257449DBC() & 1) != 0)
            {
              goto LABEL_36;
            }

            if (v25)
            {
LABEL_34:
              if (v21 != 0xD000000000000017 || 0x800000025744ADF0 != v23)
              {
                sub_257449DBC();

                goto LABEL_40;
              }

              goto LABEL_36;
            }
          }

          if (sub_257449DBC())
          {
            goto LABEL_34;
          }

LABEL_36:

          goto LABEL_40;
        }

LABEL_45:
        __break(1u);
        return;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

uint64_t sub_257443CE8()
{
  v1 = [v0 modelTypeName];
  v2 = sub_257449C5C();
  v4 = v3;

  if (v2 == 0xD000000000000012 && 0x800000025744ADB0 == v4)
  {
  }

  else
  {
    v6 = sub_257449DBC();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  result = [v0 subModels];
  if (!result)
  {
    return result;
  }

  v8 = result;
  sub_257445F54(0, &qword_27F877EC8, 0x277D25058);
  v9 = sub_257449CBC();

  if (v9 >> 62)
  {
    result = sub_257449D8C();
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C64200](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;
  v12 = [v10 modelTypeName];

  v13 = sub_257449C5C();
  v15 = v14;

  if (v13 == 0xD000000000000011 && 0x800000025744AD70 == v15)
  {

    goto LABEL_18;
  }

  v16 = sub_257449DBC();

  if ((v16 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_18:
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v17 = *(v9 + 40);
      goto LABEL_22;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v17 = MEMORY[0x259C64200](1, v9);
LABEL_22:
  v18 = v17;

  v19 = [v18 modelTypeName];

  v20 = sub_257449C5C();
  v22 = v21;

  if (v20 == 0x7373616C436D6C67 && v22 == 0xED00007265696669)
  {

    return 1;
  }

  else
  {
    v23 = sub_257449DBC();

    return v23 & 1;
  }
}

uint64_t sub_257443FB8()
{
  v1 = [v0 modelTypeName];
  v2 = sub_257449C5C();
  v4 = v3;

  if (v2 == 0xD000000000000011 && 0x800000025744AD50 == v4)
  {
  }

  else
  {
    v6 = sub_257449DBC();

    if ((v6 & 1) == 0)
    {
      LOBYTE(v7) = 0;
      return v7 & 1;
    }
  }

  v7 = [v0 subModels];
  if (!v7)
  {
    return v7 & 1;
  }

  sub_257445F54(0, &qword_27F877EC8, 0x277D25058);
  v8 = sub_257449CBC();

  if (v8 >> 62)
  {
    result = sub_257449D8C();
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C64200](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;
  v12 = [v10 modelTypeName];

  v13 = sub_257449C5C();
  v15 = v14;

  if (v13 != 0xD000000000000011 || 0x800000025744AD70 != v15)
  {
    v16 = sub_257449DBC();

    if (v16)
    {
      goto LABEL_18;
    }

LABEL_27:
    LOBYTE(v7) = 0;
LABEL_28:

    return v7 & 1;
  }

LABEL_18:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x259C64200](1, v8);
LABEL_22:
    v18 = v17;

    v19 = [v18 modelTypeName];

    v20 = sub_257449C5C();
    v22 = v21;

    if (v20 == 0xD000000000000015 && 0x800000025744AD90 == v22)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = sub_257449DBC();
    }

    goto LABEL_28;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v17 = *(v8 + 40);
    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_257444270()
{
  v2 = v0;
  v3 = 0x27983E000uLL;
  v4 = [v0 modelDescription];
  v5 = [v4 inputDescriptions];

  sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v6 = sub_257449CBC();

  if (v6 >> 62)
  {
    v7 = sub_257449D8C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 != 1)
  {
    return 0;
  }

  v8 = [v2 modelDescription];
  v9 = [v8 inputDescriptions];

  v10 = sub_257449CBC();
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v11 = MEMORY[0x259C64200](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v11 = *(v10 + 32);
  }

  v8 = v11;

  v1 = 0x27983E000uLL;
  if ([v8 type] != 5 || !objc_msgSend(v8, sel_constraint))
  {

    return 0;
  }

  objc_opt_self();
  v12 = [swift_dynamicCastObjCClassUnconditional() shape];
  sub_257445F54(0, &qword_27F877EA8, 0x277CCABB0);
  v13 = sub_257449CBC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877EB0, &qword_25744A560);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25744A540;
  *(v14 + 32) = sub_257449CEC();
  *(v14 + 40) = sub_257449CEC();
  *(v14 + 48) = sub_257449CEC();
  v15 = sub_257445518(v13, v14);

  if ((v15 & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v16 = [v2 *(v3 + 1576)];
  v2 = [v16 outputDescriptions];

  v10 = sub_257449CBC();
  if (!(v10 >> 62))
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_33:

    swift_unknownObjectRelease();

    return 0;
  }

LABEL_32:
  v17 = sub_257449D8C();
  if (!v17)
  {
    goto LABEL_33;
  }

LABEL_12:
  v18 = 0;
  v3 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x259C64200](v18, v10);
    }

    else
    {
      if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v19 = *(v10 + 8 * v18 + 32);
    }

    v2 = v19;
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v19 *(v1 + 1592)] == 6)
    {
      break;
    }

    ++v18;
    if (v20 == v17)
    {
      goto LABEL_33;
    }
  }

  if ([v2 constraint])
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    v23 = [v22 keyType];

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    return v23 == 3;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_2574446B8()
{
  v3 = v0;
  v4 = [v0 modelDescription];
  v5 = [v4 inputDescriptions];

  sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v6 = sub_257449CBC();

  if (v6 >> 62)
  {
    v7 = sub_257449D8C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 != 1)
  {
    return 0;
  }

  v8 = [v3 modelDescription];
  v9 = [v8 inputDescriptions];

  v10 = sub_257449CBC();
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_61:
    v11 = MEMORY[0x259C64200](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  if ([v12 type] != 5 || !objc_msgSend(v12, sel_constraint))
  {

    return 0;
  }

  v52 = v12;
  objc_opt_self();
  v13 = [swift_dynamicCastObjCClassUnconditional() shape];
  v10 = sub_257445F54(0, &qword_27F877EA8, 0x277CCABB0);
  v2 = sub_257449CBC();

  v1 = v2 >> 62;
  if (!(v2 >> 62))
  {
    v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14 != 0;
    if (v14 >= v15)
    {
      goto LABEL_11;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_63:
  result = sub_257449D8C();
  if (result < 0)
  {
    goto LABEL_75;
  }

  v14 = result;
  v15 = result != 0;
  if (sub_257449D8C() < v15)
  {
    goto LABEL_67;
  }

  if (sub_257449D8C() < v14)
  {
    __break(1u);
    goto LABEL_67;
  }

LABEL_11:
  if ((v2 & 0xC000000000000001) != 0)
  {

    if (v14 >= 2)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        sub_257449D2C();
        v16 = v17;
      }

      while (v14 != v17);
    }
  }

  else
  {
  }

  if (v1)
  {
    sub_257449D9C();
    v18 = v19;
    v15 = v20;
    v22 = v21;

    v14 = v22 >> 1;
  }

  else
  {
    v18 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877EB0, &qword_25744A560);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25744A550;
  *(v23 + 32) = sub_257449CEC();
  *(v23 + 40) = sub_257449CEC();
  result = sub_257445768(v23);
  v28 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    goto LABEL_68;
  }

  v29 = v26;
  v30 = v27 >> 1;
  v31 = (v27 >> 1) - v26;
  if (__OFSUB__(v27 >> 1, v26))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v28 != v31)
  {
LABEL_41:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_42:

    swift_unknownObjectRelease();
    return 0;
  }

  if (!v28 || (v32 = (v18 + 8 * v15), v51 = (v25 + 8 * v26), v32 == v51) || v15 == v14)
  {
LABEL_43:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v39 = [v3 modelDescription];
    v40 = [v39 outputDescriptions];

    v10 = sub_257449CBC();
    if (!(v10 >> 62))
    {
      v41 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = 0x27983E000uLL;
      if (!v41)
      {
LABEL_73:

        swift_unknownObjectRelease();

        return 0;
      }

LABEL_45:
      v43 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x259C64200](v43, v10);
        }

        else
        {
          if (v43 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v44 = *(v10 + 8 * v43 + 32);
        }

        v3 = v44;
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if ([v44 *(v42 + 1592)] == 6)
        {
          break;
        }

        ++v43;
        if (v45 == v41)
        {
          goto LABEL_73;
        }
      }

      if ([v3 constraint])
      {
        objc_opt_self();
        v46 = swift_dynamicCastObjCClassUnconditional();
        swift_unknownObjectRetain();
        v47 = [v46 keyType];

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        return v47 == 3;
      }

      swift_unknownObjectRelease();
      return 0;
    }

LABEL_72:
    v41 = sub_257449D8C();
    v42 = 0x27983E000;
    if (!v41)
    {
      goto LABEL_73;
    }

    goto LABEL_45;
  }

  if (v15 < v14)
  {
    v33 = *v32;
    if (v29 != v30)
    {
      v34 = v32;
      v35 = 0;
      if (v29 <= v30)
      {
        v36 = v30;
      }

      else
      {
        v36 = v29;
      }

      v48 = v34 + 1;
      v49 = v15 + 1;
      v50 = v36 - v29;
      while (v50 != v35)
      {
        v37 = v51[v35];
        v38 = sub_257449CFC();

        if ((v38 & 1) == 0)
        {
          goto LABEL_41;
        }

        if (~v15 + v14 == v35)
        {
          goto LABEL_43;
        }

        if (v49 + v35 < v15 || v49 + v35 >= v14)
        {
          goto LABEL_71;
        }

        v33 = v48[v35++];
        if (v31 == v35)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_70;
    }

LABEL_40:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_42;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_257444D54()
{
  v1 = v0;
  v2 = [v0 modelDescription];
  v3 = [v2 predictedFeatureName];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_257449C5C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [v1 modelDescription];
    v9 = [v8 outputDescriptions];

    sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
    v10 = sub_257449CBC();

    if (v10 >> 62)
    {
LABEL_28:
      v23 = v10 & 0xFFFFFFFFFFFFFF8;
      v11 = sub_257449D8C();
    }

    else
    {
      v23 = v10 & 0xFFFFFFFFFFFFFF8;
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (1)
    {
      if (v11 == v12)
      {

        goto LABEL_22;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x259C64200](v12, v10);
      }

      else
      {
        if (v12 >= *(v23 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = [v13 name];
      v16 = sub_257449C5C();
      v18 = v17;

      if (v16 == v4 && v18 == v6)
      {
        break;
      }

      v20 = sub_257449DBC();

      ++v12;
      if (v20)
      {

        v21 = 1;
        goto LABEL_24;
      }
    }

    v21 = 1;
  }

  else
  {
LABEL_22:
    v21 = 0;
  }

LABEL_24:

  return v21;
}

unint64_t sub_257444FA0()
{
  result = [v0 subModels];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_257445F54(0, &qword_27F877EC8, 0x277D25058);
  v3 = sub_257449CBC();

  if (v3 >> 62)
  {
    if (sub_257449D8C() != 2)
    {
      goto LABEL_7;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
    goto LABEL_7;
  }

  v4 = [v0 modelDescription];
  v5 = [v4 outputDescriptions];

  sub_257445F54(0, &qword_27F877EA0, 0x277D25050);
  v6 = sub_257449CBC();

  if (v6 >> 62)
  {
    v7 = sub_257449D8C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= 3)
  {
    goto LABEL_7;
  }

  v8 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x259C64200](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v9 = *(v3 + 32);
  }

  v10 = v9;
  v11 = [v9 modelTypeName];

  v12 = sub_257449C5C();
  v14 = v13;

  if (v12 == 0xD000000000000012 && 0x800000025744AEB0 == v14)
  {
    goto LABEL_13;
  }

  v15 = sub_257449DBC();

  if ((v15 & 1) == 0)
  {
    if (v8)
    {
      v16 = MEMORY[0x259C64200](0, v3);
    }

    else
    {
      v16 = *(v3 + 32);
    }

    v17 = v16;
    v18 = [v16 modelTypeName];

    v19 = sub_257449C5C();
    v21 = v20;

    if (v19 == 0x654E6C617275656ELL && v21 == 0xED00006B726F7774)
    {
      goto LABEL_13;
    }

    v22 = sub_257449DBC();

    if ((v22 & 1) == 0)
    {
      if (v8)
      {
        v30 = MEMORY[0x259C64200](0, v3);
      }

      else
      {
        v30 = *(v3 + 32);
      }

      v31 = v30;
      v32 = [v30 modelTypeName];

      v33 = sub_257449C5C();
      v35 = v34;

      if (v33 == 0x6F4D6D6F74737563 && v35 == 0xEB000000006C6564)
      {
LABEL_13:

        goto LABEL_22;
      }

      v36 = sub_257449DBC();

      if ((v36 & 1) == 0)
      {
LABEL_7:

        return 0;
      }
    }
  }

LABEL_22:
  if (v3 >> 62)
  {
    result = sub_257449D8C();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    goto LABEL_61;
  }

  if (__OFSUB__(result--, 1))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v8)
  {
    v24 = MEMORY[0x259C64200](result, v3);
    goto LABEL_32;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:
    __break(1u);
    return result;
  }

  v24 = *(v3 + 8 * result + 32);
LABEL_32:
  v25 = v24;

  v26 = [v25 modelTypeName];

  v27 = sub_257449C5C();
  v29 = v28;

  if (v27 == 0x7373616C436D6C67 && v29 == 0xED00007265696669 || (sub_257449DBC() & 1) != 0 || v27 == 0xD000000000000017 && 0x800000025744AE50 == v29 || (sub_257449DBC() & 1) != 0 || v27 == 0xD000000000000016 && 0x800000025744AE70 == v29 || (sub_257449DBC() & 1) != 0 || v27 == 0xD000000000000017 && 0x800000025744ADF0 == v29 || (sub_257449DBC() & 1) != 0 || v27 == 0xD00000000000001BLL && 0x800000025744AE90 == v29)
  {

    return 1;
  }

  else
  {
    v37 = sub_257449DBC();

    return v37 & 1;
  }
}

uint64_t sub_257445518(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_257445F54(0, &qword_27F877EA8, 0x277CCABB0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C64200](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x259C64200](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_257449CFC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_257449CFC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_257449D8C();
  }

  result = sub_257449D8C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_257445768(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_257449D8C();
    if (v4)
    {
      v5 = v4;
      v6 = sub_257445810(v4, 0);
      sub_257445898((v6 + 4), v5, a1);
      v8 = v7;

      result = v6;
      if (v8 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    result = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  result = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
  v2 = (2 * *(result + 16)) | 1;
  return result;
}

void *sub_257445810(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877EB0, &qword_25744A560);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_257445898(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_257449D8C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_257449D8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257445EA4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877EB8, &qword_25744A568);
            v9 = sub_257445A28(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_257445F54(0, &qword_27F877EA8, 0x277CCABB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_257445A28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C64200](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_257445AA8;
  }

  __break(1u);
  return result;
}

uint64_t sub_257445AB0(void *a1)
{
  if (sub_257441B00())
  {
    return 0x616C436567616D69;
  }

  if (sub_257441F64())
  {
    return 0xD000000000000012;
  }

  if (sub_257442AF4())
  {
    return 0x65447463656A626FLL;
  }

  sub_2574431CC();
  if (v3)
  {
    return 0x617254656C797473;
  }

  sub_257443470();
  if (v4)
  {
    return 0xD000000000000010;
  }

  sub_2574439B0();
  if (v5)
  {
    return 0x616C43646E756F73;
  }

  if (sub_257443CE8())
  {
    return 0xD000000000000011;
  }

  if (sub_257443FB8())
  {
    return 0xD000000000000010;
  }

  v6 = [a1 modelTypeName];
  v7 = sub_257449C5C();
  v9 = v8;

  if (v7 == 0xD000000000000019 && 0x800000025744AD30 == v9)
  {

    return 0x6E656D6D6F636572;
  }

  v10 = sub_257449DBC();

  result = 0x6E656D6D6F636572;
  if ((v10 & 1) == 0)
  {
    v11 = [a1 modelTypeName];
    v12 = sub_257449C5C();
    v14 = v13;

    v15 = 0x73616C4374786574;
    if (v12 == 0x73616C4374786574 && v14 == 0xEE00726569666973)
    {
      goto LABEL_23;
    }

    v16 = sub_257449DBC();

    result = 0x73616C4374786574;
    if ((v16 & 1) == 0)
    {
      v17 = [a1 modelTypeName];
      v18 = sub_257449C5C();
      v20 = v19;

      v15 = 0x6767615464726F77;
      if (v18 == 0x6767615464726F77 && v20 == 0xEA00000000007265)
      {
LABEL_23:

        return v15;
      }

      v21 = sub_257449DBC();

      result = 0x6767615464726F77;
      if ((v21 & 1) == 0)
      {
        if (sub_257444270())
        {
          return 0xD000000000000012;
        }

        else if (sub_2574446B8())
        {
          return 0xD000000000000014;
        }

        else
        {
          v22 = [a1 modelTypeName];
          v23 = sub_257449C5C();

          return v23;
        }
      }
    }
  }

  return result;
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

unint64_t sub_257445EA4()
{
  result = qword_27F877EC0;
  if (!qword_27F877EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F877EB8, &qword_25744A568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877EC0);
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

uint64_t sub_257445F54(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

MLKit::MLPreviewType_optional __swiftcall MLPreviewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257449DCC();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MLPreviewType.rawValue.getter()
{
  result = 0x616C436567616D69;
  switch(*v0)
  {
    case 1:
      result = 0x73616C4374786574;
      break;
    case 2:
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x65447463656A626FLL;
      break;
    case 4:
      result = 0x6767615464726F77;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6E656D6D6F636572;
      break;
    case 8:
      result = 0x616C43646E756F73;
      break;
    case 9:
      result = 0x617254656C797473;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0x6765536567616D69;
      break;
    case 0xE:
      result = 0x6974734565736F70;
      break;
    case 0xF:
      result = 0x415174726562;
      break;
    case 0x10:
      result = 0x7473456874706564;
      break;
    case 0x11:
      result = 0xD000000000000019;
      break;
    case 0x12:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2574462B0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = MLPreviewType.rawValue.getter();
  v4 = v3;
  if (v2 == MLPreviewType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_257449DBC();
  }

  return v7 & 1;
}

unint64_t sub_257446350()
{
  result = qword_27F877ED0;
  if (!qword_27F877ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877ED0);
  }

  return result;
}

uint64_t sub_2574463A4()
{
  v1 = *v0;
  sub_257449E1C();
  MLPreviewType.rawValue.getter();
  sub_257449C6C();

  return sub_257449E4C();
}

uint64_t sub_25744640C()
{
  v2 = *v0;
  MLPreviewType.rawValue.getter();
  sub_257449C6C();
}

uint64_t sub_257446470()
{
  v1 = *v0;
  sub_257449E1C();
  MLPreviewType.rawValue.getter();
  sub_257449C6C();

  return sub_257449E4C();
}

unint64_t sub_257446588()
{
  result = qword_27F877ED8;
  if (!qword_27F877ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F877EE0, &qword_25744A630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877ED8);
  }

  return result;
}

unint64_t sub_257446608@<X0>(unint64_t *a1@<X8>)
{
  result = MLPreviewType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLPreviewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLPreviewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2574467A4()
{
  result = qword_27F877EE8;
  if (!qword_27F877EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877EE8);
  }

  return result;
}

uint64_t sub_257446810()
{
  v1 = *v0;
  sub_257449E1C();
  MEMORY[0x259C642F0](v1);
  return sub_257449E4C();
}

uint64_t sub_257446884()
{
  v1 = *v0;
  sub_257449E1C();
  MEMORY[0x259C642F0](v1);
  return sub_257449E4C();
}

uint64_t sub_2574468C8()
{
  v1 = OBJC_IVAR____TtC5MLKit20MLPreviewEnvironment__screenMode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F30, &qword_25744A7E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5MLKit20MLPreviewEnvironment__dismissPreview;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F38, &qword_25744A7F0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC5MLKit20MLPreviewEnvironment__presentShareSheet, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for MLPreviewEnvironment()
{
  result = qword_27F877F08;
  if (!qword_27F877F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257446A40()
{
  sub_257446B28(319, &qword_27F877F18);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_257446B28(319, &qword_27F877F20);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_257446B28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_257449BFC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MLPreviewEnvironment.PreviewScreenMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLPreviewEnvironment.PreviewScreenMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257446CD4()
{
  result = qword_27F877F28;
  if (!qword_27F877F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877F28);
  }

  return result;
}

uint64_t sub_257446D34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MLPreviewEnvironment();
  result = sub_257449BEC();
  *a1 = result;
  return result;
}

MLKit::MLPreviewType_optional ModelHeuristics.previewType.getter@<W0>(char *a1@<X8>)
{
  v3._countAndFlagsBits = sub_257445AB0(*v1);
  result.value = MLPreviewType.init(rawValue:)(v3).value;
  v5 = v6;
  if (v6 == 19)
  {
    v5 = 18;
  }

  *a1 = v5;
  return result;
}

double ModelHeuristics.availabilityOfSpecification.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8) - 1;
  if (v2 >= 8)
  {
    result = 0.0;
    *a1 = xmmword_25744A810;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    v3 = *&a1013[8 * v2];
    v4 = qword_25744A990[v2];
    v5 = *&a110[8 * v2];
    v6 = *&a40[8 * v2];
    v7 = qword_25744AA50[v2];
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0xE400000000000000;
    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v5;
    result = -4.94660803e173;
    *(a1 + 56) = xmmword_25744A820;
    *(a1 + 72) = 0xE300000000000000;
  }

  return result;
}

uint64_t ModelHeuristics.OSAvailability.components.getter()
{
  v1 = v0[2];
  v2 = v0[4];
  v21[3] = v0[3];
  v21[4] = v2;
  v3 = *v0;
  v21[1] = v0[1];
  v21[2] = v1;
  v21[0] = v3;
  v4 = ModelHeuristics.OSAvailability.pairs.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_2574474E8(v21, &v18);
    v20 = MEMORY[0x277D84F90];
    result = sub_257447A70(0, v5, 0);
    v7 = 0;
    v8 = v20;
    v9 = (v4 + 56);
    while (v7 < *(v4 + 16))
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v18 = *(v9 - 3);
      v19 = v10;
      swift_bridgeObjectRetain_n();

      MEMORY[0x259C64140](32, 0xE100000000000000);
      MEMORY[0x259C64140](v11, v12);
      MEMORY[0x259C64140](43, 0xE100000000000000);

      v13 = v18;
      v14 = v19;
      v20 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_257447A70((v15 > 1), v16 + 1, 1);
        v8 = v20;
      }

      ++v7;
      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v9 += 4;
      if (v5 == v7)
      {

        sub_257447A90(v21);
        return v8;
      }
    }

    __break(1u);
  }

  else
  {
    sub_2574474E8(v21, &v18);

    sub_257447A90(v21);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t ModelHeuristics.OSAvailability.init(macOS:iOS:watchOS:tvOS:visionOS:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.macOS.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.macOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.iOS.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.iOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.watchOS.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.watchOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.tvOS.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.tvOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.visionOS.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.visionOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.pairs.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v26 = 0x534F63616DLL;
  v27 = 0xE500000000000000;
  v28 = v1;
  v29 = v2;
  v30 = 5459817;
  v31 = 0xE300000000000000;
  v32 = v3;
  v33 = v4;
  v34 = 0x534F6863746177;
  v35 = 0xE700000000000000;
  v36 = v5;
  v37 = v6;
  v38 = 1397716596;
  v39 = 0xE400000000000000;
  v40 = v7;
  v41 = v8;
  v42 = 0x534F6E6F69736976;
  v43 = 0xE800000000000000;
  v44 = v10;
  v45 = v9;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
LABEL_2:
  if (v12 <= 5)
  {
    v14 = 5;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = &v25[2 * v12];
  while (1)
  {
    if (v12 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F40, &qword_25744A830);
      swift_arrayDestroy();
      return v13;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = (v16 + 2);
    v18 = *(v16 + 7);
    v16 += 2;
    if (v18)
    {
      v20 = *v17;
      v19 = v17[1];
      v21 = v17[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25744793C(0, v13[2] + 1, 1, v13);
        v13 = result;
      }

      v23 = v13[2];
      v22 = v13[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_25744793C((v22 > 1), v23 + 1, 1, v13);
        v13 = result;
      }

      v13[2] = v23 + 1;
      v24 = &v13[4 * v23];
      v24[4] = v20;
      v24[5] = v19;
      v24[6] = v21;
      v24[7] = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t ModelHeuristics.OSAvailability.description.getter()
{
  v1 = v0[2];
  v2 = v0[4];
  v22[3] = v0[3];
  v22[4] = v2;
  v3 = *v0;
  v22[1] = v0[1];
  v22[2] = v1;
  v22[0] = v3;
  v4 = ModelHeuristics.OSAvailability.pairs.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_2574474E8(v22, &v19);
    v21 = MEMORY[0x277D84F90];
    result = sub_257447A70(0, v5, 0);
    v7 = 0;
    v8 = v21;
    v9 = (v4 + 56);
    while (v7 < *(v4 + 16))
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v19 = *(v9 - 3);
      v20 = v10;
      swift_bridgeObjectRetain_n();

      MEMORY[0x259C64140](32, 0xE100000000000000);
      MEMORY[0x259C64140](v11, v12);
      MEMORY[0x259C64140](43, 0xE100000000000000);

      v13 = v19;
      v14 = v20;
      v21 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_257447A70((v15 > 1), v16 + 1, 1);
        v8 = v21;
      }

      ++v7;
      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v9 += 4;
      if (v5 == v7)
      {

        sub_257447A90(v22);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    sub_2574474E8(v22, &v19);

    sub_257447A90(v22);
    v8 = MEMORY[0x277D84F90];
LABEL_9:
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F48, &qword_25744A838);
    sub_257447AC0();
    v18 = sub_257449C1C();

    return v18;
  }

  return result;
}

uint64_t ModelHeuristics.OSAvailability.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v10 = v0[8];
  v7 = v0[9];
  if (v0[1])
  {
    v8 = *v0;
    sub_257449E3C();
    sub_257449C6C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_257449E3C();
    if (v3)
    {
LABEL_3:
      sub_257449E3C();
      sub_257449C6C();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_257449E3C();
  if (v5)
  {
LABEL_4:
    sub_257449E3C();
    sub_257449C6C();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_257449E3C();
    if (v7)
    {
      goto LABEL_6;
    }

    return sub_257449E3C();
  }

LABEL_11:
  sub_257449E3C();
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_257449E3C();
  sub_257449C6C();
  if (!v7)
  {
    return sub_257449E3C();
  }

LABEL_6:
  sub_257449E3C();

  return sub_257449C6C();
}

uint64_t ModelHeuristics.OSAvailability.hashValue.getter()
{
  sub_257449E1C();
  ModelHeuristics.OSAvailability.hash(into:)();
  return sub_257449E4C();
}

uint64_t sub_2574478B4()
{
  sub_257449E1C();
  ModelHeuristics.OSAvailability.hash(into:)();
  return sub_257449E4C();
}

uint64_t sub_2574478F8()
{
  sub_257449E1C();
  ModelHeuristics.OSAvailability.hash(into:)();
  return sub_257449E4C();
}

void *sub_25744793C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F60, &qword_25744A938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F68, &qword_25744A940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257447A70(char *a1, int64_t a2, char a3)
{
  result = sub_257447B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_257447AC0()
{
  result = qword_27F877F50;
  if (!qword_27F877F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F877F48, &qword_25744A838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877F50);
  }

  return result;
}

char *sub_257447B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F70, &qword_25744A948);
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

uint64_t _s5MLKit15ModelHeuristicsV14OSAvailabilityV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_257449DBC();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_257449DBC();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_257449DBC();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_257449DBC();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_257449DBC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_257447E68()
{
  result = qword_27F877F58;
  if (!qword_27F877F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877F58);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_257447ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_257447F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_257447FC0()
{
  result = qword_27F877F78;
  if (!qword_27F877F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877F78);
  }

  return result;
}

uint64_t ModelHeuristics.init(model:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_257448040(uint64_t *a1, int a2)
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

uint64_t sub_257448088(uint64_t result, int a2, int a3)
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

uint64_t static DiskSize.formattedSize(of:)(uint64_t a1)
{
  v2 = 3157552;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F80, &qword_25744ABA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  if (sub_2574485E4())
  {
    v7 = sub_257449BDC();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v6, a1, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v10 = sub_2574490B0(v6);
    v12 = v11;
    sub_257449AFC(v6, &qword_27F877F80, &qword_25744ABA0);
    if (v12)
    {
      return v2;
    }
  }

  else
  {
    v10 = sub_257449614();
    if (v9)
    {
      return v2;
    }
  }

  if (v10 >= 1)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v13 setCountStyle_];
    if (v10 > 0x3FE)
    {
      if (v10 >> 10 > 0x3FE)
      {
        if (vcvts_n_f32_u64(v10 >> 10, 0xAuLL) >= 1023.0)
        {
          [v13 setAllowedUnits_];
        }

        else
        {
          [v13 setAllowedUnits_];
        }

        v15 = [v13 stringFromByteCount_];
      }

      else
      {
        [v13 setAllowedUnits_];
        v15 = [v13 stringFromByteCount_];
      }

      v16 = v15;
      v2 = sub_257449C5C();
    }

    else
    {
      [v13 setAllowedUnits_];
      v14 = [v13 stringFromByteCount_];
      v2 = sub_257449C5C();
    }
  }

  return v2;
}

_OWORD *sub_2574483C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_257449D0C();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_257448E2C(v6, result, *(a1 + 36), 0, a1);
    return sub_257449848(v6, (a2 + 8));
  }

  return result;
}

uint64_t static DiskSize.sizeInBytes(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F80, &qword_25744ABA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  if ((sub_2574485E4() & 1) == 0)
  {
    return sub_257449614();
  }

  v6 = sub_257449BDC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = sub_2574490B0(v5);
  sub_257449AFC(v5, &qword_27F877F80, &qword_25744ABA0);
  return v8;
}

uint64_t sub_2574485E4()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877FB8, &qword_25744ABD8) - 8) + 64);
  v1 = (MEMORY[0x28223BE20])();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F88, &qword_25744ABA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25744AB90;
  v7 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v8 = v7;
  sub_257448EBC(inited);
  swift_setDeallocating();
  sub_2574497EC(inited + 32);
  sub_257449BBC();

  v9 = sub_257449B7C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_257449A94(v5, v3, &qword_27F877FB8, &qword_25744ABD8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_257449AFC(v5, &qword_27F877FB8, &qword_25744ABD8);
    sub_257449AFC(v3, &qword_27F877FB8, &qword_25744ABD8);
    v11 = 0;
  }

  else
  {
    v11 = sub_257449B6C();
    sub_257449AFC(v5, &qword_27F877FB8, &qword_25744ABD8);
    (*(v10 + 8))(v3, v9);
  }

  return v11 & 1;
}

uint64_t static DiskSize.folderSizeInBytes(of:)(uint64_t a1)
{
  result = sub_2574490B0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t static DiskSize.fileSizeInGB(url:)()
{
  v0 = sub_257449B7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F88, &qword_25744ABA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25744AB90;
  v6 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v7 = v6;
  sub_257448EBC(inited);
  swift_setDeallocating();
  sub_2574497EC(inited + 32);
  sub_257449BBC();

  v8 = sub_257449B5C();
  (*(v1 + 8))(v4, v0);
  sub_2574483C0(v8, &v11);

  if (v11)
  {

    sub_257449848(&v12, v13);
    sub_257449848(v13, &v14);
    return swift_dynamicCast();
  }

  else
  {
    result = sub_257449AFC(&v11, &qword_27F877F90, &qword_25744ABB0);
    __break(1u);
  }

  return result;
}

uint64_t static DiskSize.fileSizeInMB(url:)()
{
  v0 = sub_257449B7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F88, &qword_25744ABA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25744AB90;
  v6 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v7 = v6;
  sub_257448EBC(inited);
  swift_setDeallocating();
  sub_2574497EC(inited + 32);
  sub_257449BBC();

  v8 = sub_257449B5C();
  (*(v1 + 8))(v4, v0);
  sub_2574483C0(v8, &v11);

  if (v11)
  {

    sub_257449848(&v12, v13);
    sub_257449848(v13, &v14);
    return swift_dynamicCast();
  }

  else
  {
    result = sub_257449AFC(&v11, &qword_27F877F90, &qword_25744ABB0);
    __break(1u);
  }

  return result;
}

unint64_t sub_257448C94(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_257449C5C();
  sub_257449E1C();
  sub_257449C6C();
  v4 = sub_257449E4C();

  return sub_257448D28(a1, v4);
}

unint64_t sub_257448D28(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_257449C5C();
      v9 = v8;
      if (v7 == sub_257449C5C() && v9 == v10)
      {
        break;
      }

      v12 = sub_257449DBC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_257448E2C(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_257449940(*(a5 + 56) + 32 * a2, result);

  return v6;
}

uint64_t sub_257448EBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F98, &qword_25744ABC8);
    v3 = sub_257449D1C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_257449C5C();
      sub_257449E1C();
      v29 = v7;
      sub_257449C6C();
      v9 = sub_257449E4C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_257449C5C();
        v20 = v19;
        if (v18 == sub_257449C5C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_257449DBC();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2574490B0(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = sub_257449BAC();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F80, &qword_25744ABA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_257449BDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257449A94(a1, v9, &qword_27F877F80, &qword_25744ABA0);
  v15 = (*(v11 + 48))(v9, 1, v10);
  if (v15 == 1)
  {
    sub_257449AFC(v9, &qword_27F877F80, &qword_25744ABA0);
    result = 0;
  }

  else
  {
    v36 = v15;
    (*(v11 + 32))(v14, v9, v10);
    v17 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F877F88, &qword_25744ABA8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25744AB90;
    v19 = *MEMORY[0x277CBE838];
    *(v18 + 32) = *MEMORY[0x277CBE838];
    v20 = v19;
    v21 = sub_257449CDC();

    if (v21)
    {
      v34 = v21;
      v35 = v2;
      sub_257449CCC();
      sub_257449B9C();
      if (v41)
      {
        v33 = 0;
        while (1)
        {
          sub_257449848(&v40, v39);
          sub_2574499F0();
          if (!swift_dynamicCast())
          {
            sub_25744999C();
            swift_allocError();
            *v30 = 1;
            swift_willThrow();

            (*(v37 + 8))(v5, v35);
            goto LABEL_21;
          }

          v22 = v38;
          v38 = 0;
          *&v39[0] = 0;
          v23 = [v22 getResourceValue:v39 forKey:v20 error:&v38];
          v24 = *&v39[0];
          v25 = v38;
          if (!v23)
          {
            break;
          }

          if (v24)
          {
            swift_unknownObjectRetain_n();
            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v27 = [v26 longLongValue];

              swift_unknownObjectRelease_n();
              v28 = __OFADD__(v33, v27);
              v33 += v27;
              if (v28)
              {
                __break(1u);
                goto LABEL_16;
              }
            }

            else
            {

              swift_unknownObjectRelease_n();
            }
          }

          else
          {
          }

          sub_257449B9C();
          if (!v41)
          {
            goto LABEL_18;
          }
        }

        v31 = v25;
        swift_unknownObjectRetain();
        sub_257449B8C();

        swift_willThrow();
        (*(v37 + 8))(v5, v35);
        (*(v11 + 8))(v14, v10);
        result = swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
LABEL_18:

        (*(v37 + 8))(v5, v35);
        (*(v11 + 8))(v14, v10);
        result = v33;
      }
    }

    else
    {
LABEL_16:
      sub_25744999C();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
LABEL_21:
      result = (*(v11 + 8))(v14, v10);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_257449614()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_257449BCC();
  v1 = sub_257449C2C();

  *&v14 = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:&v14];

  v3 = v14;
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_257449A3C();
    v4 = sub_257449C0C();
    v5 = v3;

    if (*(v4 + 16))
    {
      v6 = sub_257448C94(*MEMORY[0x277CCA1C0]);
      if (v7)
      {
        sub_257449940(*(v4 + 56) + 32 * v6, &v14);

        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = v14;
    v9 = sub_257449B8C();

    swift_willThrow();
  }

  v14 = 0u;
  v15 = 0u;
LABEL_8:
  v13[0] = v14;
  v13[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_257449AFC(v13, &qword_27F877FB0, &qword_25744ABD0);
    goto LABEL_12;
  }

  if (!swift_dynamicCast())
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = v12;
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2574497EC(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_257449848(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t getEnumTagSinglePayload for DiskSize(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DiskSize(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_257449940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25744999C()
{
  result = qword_27F877FA0;
  if (!qword_27F877FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877FA0);
  }

  return result;
}

unint64_t sub_2574499F0()
{
  result = qword_27F877FA8;
  if (!qword_27F877FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F877FA8);
  }

  return result;
}

unint64_t sub_257449A3C()
{
  result = qword_27F877E90;
  if (!qword_27F877E90)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F877E90);
  }

  return result;
}

uint64_t sub_257449A94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_257449AFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}