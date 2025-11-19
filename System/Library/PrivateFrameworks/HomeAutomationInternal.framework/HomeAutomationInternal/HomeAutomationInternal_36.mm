uint64_t sub_252BC2B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252BC2C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252BC2C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E35FD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252BC0700(v3, v13);
  if ((swift_getEnumCaseMultiPayload() | 2) == 2)
  {
    v14 = 0;
  }

  else
  {
    (*(v6 + 104))(v10, *MEMORY[0x277D61BE8], v5);
    v14 = sub_252E35FC4();
    (*(v6 + 8))(v10, v5);
  }

  sub_252BC0920(v13, type metadata accessor for HomeAutomationSnippetModels);
  return v14 & 1;
}

uint64_t sub_252BC2E38()
{
  result = type metadata accessor for DisambiguationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConfirmationSnippetModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CompletionSnippetModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AutomationSnippetModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CallToActionSnippetModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TemperatureSnippetModel();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_252BC2F70()
{
  result = qword_27F543B58;
  if (!qword_27F543B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B58);
  }

  return result;
}

unint64_t sub_252BC2FC8()
{
  result = qword_27F543B60;
  if (!qword_27F543B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B60);
  }

  return result;
}

unint64_t sub_252BC3020()
{
  result = qword_27F543B68;
  if (!qword_27F543B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B68);
  }

  return result;
}

unint64_t sub_252BC3078()
{
  result = qword_27F543B70;
  if (!qword_27F543B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B70);
  }

  return result;
}

unint64_t sub_252BC30D0()
{
  result = qword_27F543B78;
  if (!qword_27F543B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B78);
  }

  return result;
}

unint64_t sub_252BC3128()
{
  result = qword_27F543B80;
  if (!qword_27F543B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B80);
  }

  return result;
}

unint64_t sub_252BC3180()
{
  result = qword_27F543B88;
  if (!qword_27F543B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B88);
  }

  return result;
}

unint64_t sub_252BC31D8()
{
  result = qword_27F543B90;
  if (!qword_27F543B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B90);
  }

  return result;
}

unint64_t sub_252BC3230()
{
  result = qword_27F543B98;
  if (!qword_27F543B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543B98);
  }

  return result;
}

unint64_t sub_252BC3288()
{
  result = qword_27F543BA0;
  if (!qword_27F543BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BA0);
  }

  return result;
}

unint64_t sub_252BC32E0()
{
  result = qword_27F543BA8;
  if (!qword_27F543BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BA8);
  }

  return result;
}

unint64_t sub_252BC3338()
{
  result = qword_27F543BB0;
  if (!qword_27F543BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BB0);
  }

  return result;
}

unint64_t sub_252BC3390()
{
  result = qword_27F543BB8;
  if (!qword_27F543BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BB8);
  }

  return result;
}

unint64_t sub_252BC33E8()
{
  result = qword_27F543BC0;
  if (!qword_27F543BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BC0);
  }

  return result;
}

unint64_t sub_252BC3440()
{
  result = qword_27F543BC8;
  if (!qword_27F543BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BC8);
  }

  return result;
}

unint64_t sub_252BC3498()
{
  result = qword_27F543BD0;
  if (!qword_27F543BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BD0);
  }

  return result;
}

unint64_t sub_252BC34F0()
{
  result = qword_27F543BD8;
  if (!qword_27F543BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BD8);
  }

  return result;
}

unint64_t sub_252BC3548()
{
  result = qword_27F543BE0;
  if (!qword_27F543BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BE0);
  }

  return result;
}

unint64_t sub_252BC35A0()
{
  result = qword_27F543BE8;
  if (!qword_27F543BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BE8);
  }

  return result;
}

unint64_t sub_252BC35F8()
{
  result = qword_27F543BF0;
  if (!qword_27F543BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BF0);
  }

  return result;
}

unint64_t sub_252BC3650()
{
  result = qword_27F543BF8;
  if (!qword_27F543BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543BF8);
  }

  return result;
}

uint64_t sub_252BC36A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000252E864D0 == a2;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E864F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00776569566E6FLL || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEE00776569566E6FLL || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E86510 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEF77656956657275)
  {

    return 5;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_252BC38D8()
{
  v1 = v0;
  v3 = sub_252E34114();
  v4 = v2;
  if (v3 == 0xD000000000000041 && 0x8000000252E86530 == v2 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC3CEC();
    return;
  }

  if (v3 == 0xD00000000000003ALL && 0x8000000252E86580 == v4 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC4524();
    return;
  }

  if (v3 == 0xD000000000000045 && 0x8000000252E865C0 == v4 || (sub_252E37DB4() & 1) != 0)
  {

    v5 = *(v0 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2529F8B34(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_2529F8B34((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v5[v7 + 32] = 2;
    *(v1 + 32) = v5;
    return;
  }

  if (v3 == 0xD000000000000046 && 0x8000000252E86610 == v4 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC47F8();
    return;
  }

  if (v3 == 0xD000000000000044 && 0x8000000252E727F0 == v4 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC512C();
    return;
  }

  if (v3 == 0xD000000000000041 && 0x8000000252E6B180 == v4 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC55A8();
    return;
  }

  if (v3 == 0xD000000000000048 && 0x8000000252E86660 == v4)
  {

LABEL_43:

    sub_252BC5A14();
    return;
  }

  v8 = sub_252E37DB4();

  if (v8)
  {
    goto LABEL_43;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D90);
  sub_252CC4050(0xD000000000000020, 0x8000000252E866B0, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000016, 0x8000000252E86770, 31);
}

uint64_t sub_252BC3CEC()
{
  v1 = sub_252E36F84();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for HomeAutomationNLV3Intent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E358D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = sub_252E34124();
  if (!v15)
  {
    if (qword_27F53F4F8 != -1)
    {
LABEL_49:
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D90);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E86790);
    sub_252E34134();
    sub_252E37AE4();
    sub_252CC4050(v62, v63, 0xD000000000000083, 0x8000000252E866E0, 0xD00000000000002DLL, 0x8000000252E867D0, 134);
  }

  v16 = v15;
  if (!*(v15 + 16))
  {
  }

  v17 = sub_252A44A10(0x6573726150, 0xE500000000000000);
  if ((v18 & 1) == 0)
  {
  }

  sub_252974E7C(*(v16 + 56) + 32 * v17, &v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v56 = v0;
  v57 = v8;
  v58 = v7;
  v19 = v60;
  v20 = v61;
  sub_2529E61B0(v60, v61);
  v59 = v19;
  sub_252E35874();
  (*(v57 + 16))(v12, v14, v58);
  HomeAutomationNLV3Intent.init(_:)(v12, v6);
  sub_25295B778(v6);
  sub_25294E8F4(v6);
  if (!*(v16 + 16) || (v23 = sub_252A44A10(0x6F6E79536D6F6F52, 0xEC000000736D796ELL), (v24 & 1) == 0))
  {
    sub_25296464C(v59, v20);

    return (*(v57 + 8))(v14, v58);
  }

  sub_252974E7C(*(v16 + 56) + 32 * v23, &v62);

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v57 + 8))(v14, v58);
    return sub_25296464C(v59, v20);
  }

  v26 = v60;
  v25 = v61;
  sub_252E36F74();
  v27 = sub_252E36F54();
  if (!v28)
  {
    (*(v57 + 8))(v14, v58);
    sub_25296464C(v59, v20);
    return sub_25296464C(v26, v25);
  }

  v62 = v27;
  v63 = v28;
  v60 = 12079;
  v61 = 0xE200000000000000;
  sub_252947DBC();
  v29 = sub_252E37794();

  v54 = *(v29 + 16);
  if (!v54)
  {
    v46 = v26;
    v47 = v25;
LABEL_46:
    sub_25296464C(v46, v47);

    sub_25296464C(v59, v20);
    return (*(v57 + 8))(v14, v58);
  }

  v48 = v26;
  result = type metadata accessor for HomeStore();
  v30 = 0;
  v52 = v29 + 32;
  v53 = result;
  v50 = v25;
  v51 = v20;
  v49 = v29;
  while (v30 < *(v29 + 16))
  {
    v33 = (v52 + 16 * v30);
    v35 = *v33;
    v34 = v33[1];

    v36 = static HomeStore.shared.getter();
    v37 = sub_2529D9884();

    v55 = v30;
    if (v37 >> 62)
    {
      v38 = sub_252E378C4();
      if (v38)
      {
LABEL_21:
        v39 = 0;
        while (1)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x2530ADF00](v39, v37);
            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v40 = *(v37 + 8 * v39 + 32);

            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }

          v42 = *(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v35 && *(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v34;
          if (v42 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          ++v39;
          if (v41 == v38)
          {
            goto LABEL_16;
          }
        }

        v44 = v56;
        MEMORY[0x2530AD700](v43);
        v31 = v50;
        v20 = v51;
        v29 = v49;
        v32 = v55;
        if (*((*(v44 + 392) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v44 + 392) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((*(v44 + 392) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        goto LABEL_17;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        goto LABEL_21;
      }
    }

LABEL_16:

    v31 = v50;
    v20 = v51;
    v29 = v49;
    v32 = v55;
LABEL_17:
    v30 = v32 + 1;
    if (v30 == v54)
    {
      v46 = v48;
      v47 = v31;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BC4524()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34124();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_252A44A10(0x72506E6F74747562, 0xED00006465737365), (v10 & 1) != 0))
    {
      sub_252974E7C(*(v8 + 56) + 32 * v9, &v19);

      if (swift_dynamicCast())
      {
        v11 = sub_252E37B74();

        v13 = 3;
        if (v11 < 3)
        {
          v13 = v11;
        }

        *(v1 + 9) = v13;
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v6, v14, v2);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_252E379F4();

  v19 = 0xD000000000000023;
  v20 = 0x8000000252E86870;
  if (sub_252E34124())
  {
    v15 = sub_252E36E54();
    v17 = v16;
  }

  else
  {
    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x2530AD570](v15, v17);

  sub_252CC4050(v19, v20, 0xD000000000000083, 0x8000000252E866E0, 0xD00000000000002CLL, 0x8000000252E868A0, 140);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_252BC47F8()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34124();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_252A44A10(1836019570, 0xE400000000000000), (v10 & 1) != 0))
    {
      sub_252974E7C(*(v8 + 56) + 32 * v9, &v88);

      if (swift_dynamicCast())
      {
        v11 = v86;
        v12 = v87;
        v13 = v1[13];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_2529F7A80((v15 > 1), v16 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v16 + 1;
        v17 = v13 + 16 * v16;
        *(v17 + 32) = v11;
        *(v17 + 40) = v12;
        v1[13] = v13;
        return result;
      }
    }

    else
    {
    }
  }

  v18 = sub_252E34124();
  if (v18)
  {
    v19 = v18;
    if (*(v18 + 16) && (v20 = sub_252A44A10(1701736314, 0xE400000000000000), (v21 & 1) != 0))
    {
      sub_252974E7C(*(v19 + 56) + 32 * v20, &v88);

      if (swift_dynamicCast())
      {
        v22 = v86;
        v23 = v87;
        v24 = v1[28];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v24 + 16) + 1, 1, v24);
          v24 = result;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_2529F7A80((v25 > 1), v26 + 1, 1, v24);
          v24 = result;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v23;
        v1[28] = v24;
        return result;
      }
    }

    else
    {
    }
  }

  v28 = sub_252E34124();
  if (v28)
  {
    v29 = v28;
    if (*(v28 + 16) && (v30 = sub_252A44A10(1701670760, 0xE400000000000000), (v31 & 1) != 0))
    {
      sub_252974E7C(*(v29 + 56) + 32 * v30, &v88);

      if (swift_dynamicCast())
      {
        v32 = v86;
        v33 = v87;
        v34 = v1[6];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v34 + 16) + 1, 1, v34);
          v34 = result;
        }

        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_2529F7A80((v35 > 1), v36 + 1, 1, v34);
          v34 = result;
        }

        *(v34 + 16) = v36 + 1;
        v37 = v34 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v33;
        v1[6] = v34;
        return result;
      }
    }

    else
    {
    }
  }

  v38 = sub_252E34124();
  if (v38)
  {
    v39 = v38;
    if (*(v38 + 16) && (v40 = sub_252A44A10(0x70756F7267, 0xE500000000000000), (v41 & 1) != 0))
    {
      sub_252974E7C(*(v39 + 56) + 32 * v40, &v88);

      if (swift_dynamicCast())
      {
        v42 = v86;
        v43 = v87;
        v44 = v1[20];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v44 + 16) + 1, 1, v44);
          v44 = result;
        }

        v46 = *(v44 + 16);
        v45 = *(v44 + 24);
        if (v46 >= v45 >> 1)
        {
          result = sub_2529F7A80((v45 > 1), v46 + 1, 1, v44);
          v44 = result;
        }

        *(v44 + 16) = v46 + 1;
        v47 = v44 + 16 * v46;
        *(v47 + 32) = v42;
        *(v47 + 40) = v43;
        v1[20] = v44;
        return result;
      }
    }

    else
    {
    }
  }

  v48 = sub_252E34124();
  if (v48)
  {
    v49 = v48;
    if (*(v48 + 16) && (v50 = sub_252A44A10(0x656369766564, 0xE600000000000000), (v51 & 1) != 0))
    {
      sub_252974E7C(*(v49 + 56) + 32 * v50, &v88);

      if (swift_dynamicCast())
      {
        v52 = v86;
        v53 = v87;
        v54 = v1[21];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v54 + 16) + 1, 1, v54);
          v54 = result;
        }

        v56 = *(v54 + 16);
        v55 = *(v54 + 24);
        if (v56 >= v55 >> 1)
        {
          result = sub_2529F7A80((v55 > 1), v56 + 1, 1, v54);
          v54 = result;
        }

        *(v54 + 16) = v56 + 1;
        v57 = v54 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v53;
        v1[21] = v54;
        return result;
      }
    }

    else
    {
    }
  }

  v58 = sub_252E34124();
  if (v58)
  {
    v59 = v58;
    if (*(v58 + 16) && (v60 = sub_252A44A10(0x65636976726573, 0xE700000000000000), (v61 & 1) != 0))
    {
      sub_252974E7C(*(v59 + 56) + 32 * v60, &v88);

      if (swift_dynamicCast())
      {
        v62 = v86;
        v63 = v87;
        v64 = v1[19];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v64 + 16) + 1, 1, v64);
          v64 = result;
        }

        v66 = *(v64 + 16);
        v65 = *(v64 + 24);
        if (v66 >= v65 >> 1)
        {
          result = sub_2529F7A80((v65 > 1), v66 + 1, 1, v64);
          v64 = result;
        }

        *(v64 + 16) = v66 + 1;
        v67 = v64 + 16 * v66;
        *(v67 + 32) = v62;
        *(v67 + 40) = v63;
        v1[19] = v64;
        return result;
      }
    }

    else
    {
    }
  }

  v68 = sub_252E34124();
  if (v68)
  {
    v69 = v68;
    if (*(v68 + 16) && (v70 = sub_252A44A10(0x614D746567726174, 0xE900000000000070), (v71 & 1) != 0))
    {
      sub_252974E7C(*(v69 + 56) + 32 * v70, &v88);

      if (swift_dynamicCast())
      {
        v73 = v86;
        v72 = v87;
        if (v1[31] | v1[34])
        {
          v82 = v1[28];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v82 + 16) + 1, 1, v82);
            v82 = result;
          }

          v84 = *(v82 + 16);
          v83 = *(v82 + 24);
          if (v84 >= v83 >> 1)
          {
            result = sub_2529F7A80((v83 > 1), v84 + 1, 1, v82);
            v82 = result;
          }

          *(v82 + 16) = v84 + 1;
          v85 = v82 + 16 * v84;
          *(v85 + 32) = v73;
          *(v85 + 40) = v72;
          v1[28] = v82;
        }

        else
        {
          v74 = v1[15];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v74 + 16) + 1, 1, v74);
            v74 = result;
          }

          v76 = *(v74 + 16);
          v75 = *(v74 + 24);
          if (v76 >= v75 >> 1)
          {
            result = sub_2529F7A80((v75 > 1), v76 + 1, 1, v74);
            v74 = result;
          }

          *(v74 + 16) = v76 + 1;
          v77 = v74 + 16 * v76;
          *(v77 + 32) = v73;
          *(v77 + 40) = v72;
          v1[15] = v74;
        }

        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v6, v78, v2);
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E868D0);
  if (sub_252E34124())
  {
    v79 = sub_252E36E54();
    v81 = v80;
  }

  else
  {
    v81 = 0xE300000000000000;
    v79 = 7104878;
  }

  MEMORY[0x2530AD570](v79, v81);

  sub_252CC4050(v88, v89, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000023, 0x8000000252E86910, 100);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_252BC512C()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34124();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_252A44A10(0x6E496465646E6168, 0xEC000000746E6574), (v10 & 1) != 0))
    {
      sub_252974E7C(*(v8 + 56) + 32 * v9, &v26);

      if (swift_dynamicCast())
      {
        v11 = v25[2];
        v12 = v25[3];
        v13 = sub_252E32994();
        v14 = *(v13 + 48);
        v15 = *(v13 + 52);
        swift_allocObject();
        sub_252E32984();
        type metadata accessor for HandoffHandleIntentData();
        sub_252BC5F94(&qword_27F543C00, type metadata accessor for HandoffHandleIntentData);
        sub_252E32974();

        v21 = v26;
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_27F544DA8);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_252E379F4();

        v26 = 0xD00000000000001FLL;
        v27 = 0x8000000252E869A0;
        v22 = sub_252ADBCF0();
        MEMORY[0x2530AD570](v22);

        sub_252CC3D90(v26, v27, 0xD000000000000083, 0x8000000252E866E0);

        *(sub_252B680FC() + 129) = 1;

        v23 = *(v21 + 16);

        v24 = sub_252ADB274();
        sub_25296464C(v11, v12);

        *(v1 + 496) = v24;
        LOBYTE(v24) = *(v21 + 24);

        *(v1 + 384) = v24;
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v6, v16, v2);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_252E379F4();

  v26 = 0xD00000000000002ALL;
  v27 = 0x8000000252E86940;
  if (sub_252E34124())
  {
    v17 = sub_252E36E54();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x2530AD570](v17, v19);

  sub_252CC4050(v26, v27, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000025, 0x8000000252E86970, 69);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_252BC55A8()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34124();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_252A44A10(0x6E496465646E6168, 0xEC000000746E6574), (v10 & 1) != 0))
    {
      sub_252974E7C(*(v8 + 56) + 32 * v9, &v26);

      if (swift_dynamicCast())
      {
        v11 = v25[2];
        v12 = v25[3];
        v13 = sub_252E32994();
        v14 = *(v13 + 48);
        v15 = *(v13 + 52);
        swift_allocObject();
        sub_252E32984();
        type metadata accessor for HandoffHandleIntentData();
        sub_252BC5F94(&qword_27F543C00, type metadata accessor for HandoffHandleIntentData);
        sub_252E32974();

        v21 = v26;
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_27F544DA8);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_252E379F4();

        v26 = 0xD00000000000001FLL;
        v27 = 0x8000000252E869A0;
        v22 = sub_252ADBCF0();
        MEMORY[0x2530AD570](v22);

        sub_252CC3D90(v26, v27, 0xD000000000000083, 0x8000000252E866E0);

        v23 = *(v21 + 16);

        v24 = sub_252ADB274();
        sub_25296464C(v11, v12);

        *(v1 + 496) = v24;
        LOBYTE(v24) = *(v21 + 24);

        *(v1 + 384) = v24;
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v6, v16, v2);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_252E379F4();

  v26 = 0xD00000000000002ALL;
  v27 = 0x8000000252E86940;
  if (sub_252E34124())
  {
    v17 = sub_252E36E54();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x2530AD570](v17, v19);

  sub_252CC4050(v26, v27, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000027, 0x8000000252E869C0, 43);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_252BC5A14()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34124();
  if (!v7)
  {
LABEL_7:
    if (qword_27F53F4F8 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_8;
  }

  v8 = v7;
  if (!*(v7 + 16) || (v9 = sub_252A44A10(0x737265746C6966, 0xE700000000000000), (v10 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_252974E7C(*(v8 + 56) + 32 * v9, &v43);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = v41;
  v12 = v42;
  v13 = sub_252E32994();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_252E32984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
  sub_252982BC0();
  sub_252E32974();

  v6 = v43;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F544D90);

  v21 = sub_252E36AC4();
  v22 = sub_252E374C4();

  v23 = os_log_type_enabled(v21, v22);
  v39 = v12;
  v40 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315138;
    v26 = type metadata accessor for CodableHomeFilter();
    v27 = MEMORY[0x2530AD730](v6, v26);
    v29 = sub_252BE2CE0(v27, v28, &v43);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_252917000, v21, v22, "Multiple entity invocation filters: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x2530AED00](v25, -1, -1);
    MEMORY[0x2530AED00](v24, -1, -1);
  }

  v43 = MEMORY[0x277D84F90];
  v38 = 0;
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v30)
    {
      sub_25296464C(v40, v39);

      v37 = *(v1 + 304);

      *(v1 + 304) = v31;
      return result;
    }

    if ((v6 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x2530ADF00](v30, v6);
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_31;
    }

LABEL_23:
    v34 = sub_252A79090();

    ++v30;
    if (v34)
    {
      MEMORY[0x2530AD700](v35);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v31 = v43;
      v30 = v33;
    }
  }

  if (v30 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v32 = *(v6 + 8 * v30 + 32);

  v33 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_8:
  v16 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v6, v16, v2);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E869F0);
  if (sub_252E34124())
  {
    v17 = sub_252E36E54();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x2530AD570](v17, v19);

  sub_252CC4050(v43, v44, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000025, 0x8000000252E86A30, 54);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_252BC5F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252BC5FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252BA06E4();
    if (result)
    {
LABEL_7:
      v8 = result;
      result = type metadata accessor for HomeAutomationAirPurifierResponses();
      *(a3 + 24) = result;
      *a3 = v8;
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 0x6576697463616E69 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252BA0974();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 1701602409 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v9 = sub_25299C0F0(47, 1162626121, 0xE400000000000000);
    v10 = type metadata accessor for HomeAutomationAirPurifierResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v9;
    *(a3 + 24) = v10;
    *a3 = result;
  }

  else
  {

    return sub_252C86824(a1, a2, a3);
  }

  return result;
}

uint64_t sub_252BC61B0()
{
  swift_beginAccess();
  v0 = sub_252BC6360(&unk_27F543C09, 0);
  swift_endAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 24);
    }

    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    result = sub_252998A68();
    if ((result & 0xC000000000000001) != 0)
    {
LABEL_15:
      v3 = MEMORY[0x2530ADF00](0, result);
      goto LABEL_6;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v3 = *(result + 32);

LABEL_6:

      return v3;
    }

    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  v5 = sub_252BC6360(&unk_27F543C08, 1);
  swift_endAccess();
  v6 = *(v5 + 24);
  if (v6 >> 62)
  {
LABEL_17:
    if (!sub_252E378C4())
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

    return 0;
  }

LABEL_12:
  result = sub_252998A68();
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_252BC6360(const void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v13 = sub_252E36AD4();
  v65 = *(v13 - 1);
  v14 = *(v65 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  if (objc_getAssociatedObject(v3, a1))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  v69[0] = v67;
  v69[1] = v68;
  v63 = v6;
  if (*(&v68 + 1))
  {
    type metadata accessor for HomeAutomationPolledEntityResponses();
    if (swift_dynamicCast())
    {
      v19 = v66;
      if (qword_27F53F4C8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_73;
    }
  }

  else
  {
    sub_25293847C(v69, &qword_27F541E80, &qword_252E3DFA0);
  }

  v28 = v3[3];
  v61 = v10;
  if (a2)
  {
    *&v69[0] = MEMORY[0x277D84F90];
    if (v28 >> 62)
    {
      goto LABEL_56;
    }

    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_59;
    }

    goto LABEL_17;
  }

  *&v69[0] = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
    v34 = sub_252E378C4();
    if (!v34)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_59;
    }
  }

  v59 = a1;
  v60 = v3;
  v62 = v13;
  v18 = 0;
  a1 = (v28 & 0xC000000000000001);
  v13 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
  while (1)
  {
    if (a1)
    {
      v35 = MEMORY[0x2530ADF00](v18, v28);
      v3 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      goto LABEL_41;
    }

    if (v18 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_55;
    }

    v35 = *(v28 + 8 * v18 + 32);

    v3 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

LABEL_41:
    v36 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    if (v36 >> 62)
    {
      if (v36 < 0)
      {
        v38 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      }

      if (sub_252E378C4() == 2)
      {
LABEL_43:
        sub_252E37A94();
        v37 = *(*&v69[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_37;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_43;
    }

LABEL_37:
    ++v18;
    if (v3 == v34)
    {
LABEL_51:
      v39 = *&v69[0];
      v13 = v62;
      a1 = v59;
      v3 = v60;
      goto LABEL_60;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v29 = sub_252E378C4();
  if (v29)
  {
LABEL_17:
    v59 = a1;
    v60 = v3;
    v62 = v13;
    v18 = 0;
    a1 = (v28 & 0xC000000000000001);
    v13 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
    while (1)
    {
      if (a1)
      {
        v30 = MEMORY[0x2530ADF00](v18, v28);
        v3 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v18 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v30 = *(v28 + 8 * v18 + 32);

        v3 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v31 >> 62)
      {
        if (v31 < 0)
        {
          v33 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
        }

        if (sub_252E378C4() == 1)
        {
LABEL_25:
          sub_252E37A94();
          v32 = *(*&v69[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_19;
        }
      }

      else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_25;
      }

LABEL_19:
      ++v18;
      if (v3 == v29)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_59:
  v39 = MEMORY[0x277D84F90];
LABEL_60:
  type metadata accessor for HomeAutomationPolledEntityResponses();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = v39;
  objc_setAssociatedObject(v3, a1, v19, 1);
  if (qword_27F53F4C8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v13, qword_27F544D00);
  *&v69[0] = 0;
  *(&v69[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v69[0] = 0xD000000000000016;
  *(&v69[0] + 1) = 0x8000000252E86B30;

  v41 = sub_252998A68();
  v42 = type metadata accessor for HomeAutomationEntityState(0);
  v43 = MEMORY[0x2530AD730](v41, v42);
  v45 = v44;

  MEMORY[0x2530AD570](v43, v45);

  v12 = "newValue states ******";
  sub_252CC3D90(*&v69[0], *(&v69[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

  (*(v65 + 16))(v64, v40, v13);
  *&v69[0] = 0;
  *(&v69[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E86C00);
  v46 = sub_2529992EC();

  if (v46 >> 62)
  {
    v49 = sub_252E378C4();
    v47 = v61;
    if (!v49)
    {
      goto LABEL_69;
    }

LABEL_64:
    if ((v46 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](0, v46);
    }

    else
    {
      if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_73:
        swift_once();
LABEL_7:
        v20 = __swift_project_value_buffer(v13, qword_27F544D00);
        *&v69[0] = 0;
        *(&v69[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v69[0] = 0xD000000000000013;
        *(&v69[0] + 1) = 0x8000000252E86C20;

        v21 = sub_252998A68();
        v64 = type metadata accessor for HomeAutomationEntityState(0);
        v22 = MEMORY[0x2530AD730](v21);
        v24 = v23;

        MEMORY[0x2530AD570](v22, v24);

        sub_252CC3D90(*&v69[0], *(&v69[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

        v25 = *(v65 + 16);
        v62 = v13;
        v25(v18, v20, v13);
        *&v69[0] = 0;
        *(&v69[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E86C40);
        result = sub_2529992EC();
        if (result >> 62)
        {
          v52 = result;
          v53 = sub_252E378C4();
          result = v52;
          if (v53)
          {
            goto LABEL_9;
          }
        }

        else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_9:
          if ((result & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](0);
          }

          else
          {
            if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v27 = *(result + 32);
          }

          sub_252A657C0(v12);

LABEL_76:
          sub_252E37AE4();
          sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
          sub_252CC3D90(*&v69[0], *(&v69[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

          (*(v65 + 8))(v18, v62);
          *&v69[0] = 0x2A2A2A2A2A2ALL;
          *(&v69[0] + 1) = 0xE600000000000000;
          v55 = sub_252998A68();

          v56 = MEMORY[0x2530AD730](v55, v64);
          v58 = v57;

          MEMORY[0x2530AD570](v56, v58);

          sub_252CC3D90(*&v69[0], *(&v69[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

          return v19;
        }

        v54 = sub_252E36324();
        (*(*(v54 - 8) + 56))(v12, 1, 1, v54);
        goto LABEL_76;
      }

      v48 = *(v46 + 32);
    }

    sub_252A657C0(v47);

    goto LABEL_70;
  }

  v47 = v61;
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

LABEL_69:

  v50 = sub_252E36324();
  (*(*(v50 - 8) + 56))(v47, 1, 1, v50);
LABEL_70:
  sub_252E37AE4();
  sub_25293847C(v47, &qword_27F540298, &unk_252E3C270);
  v51 = v64;
  sub_252CC3D90(*&v69[0], *(&v69[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

  (*(v65 + 8))(v51, v13);
  return v19;
}

uint64_t sub_252BC6DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[308] = v3;
  v4[307] = a3;
  v4[306] = a2;
  v4[305] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0) - 8) + 64) + 15;
  v4[309] = swift_task_alloc();
  v6 = sub_252E36AD4();
  v4[310] = v6;
  v7 = *(v6 - 8);
  v4[311] = v7;
  v8 = *(v7 + 64) + 15;
  v4[312] = swift_task_alloc();
  v9 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[313] = swift_task_alloc();
  v10 = sub_252E34014();
  v4[314] = v10;
  v11 = *(v10 - 8);
  v4[315] = v11;
  v12 = *(v11 + 64) + 15;
  v4[316] = swift_task_alloc();
  v4[317] = swift_task_alloc();
  v4[318] = swift_task_alloc();
  v4[319] = swift_task_alloc();
  v4[320] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[321] = swift_task_alloc();
  v4[322] = swift_task_alloc();
  v14 = sub_252E36324();
  v4[323] = v14;
  v15 = *(v14 - 8);
  v4[324] = v15;
  v16 = *(v15 + 64) + 15;
  v4[325] = swift_task_alloc();
  v4[326] = swift_task_alloc();
  v4[327] = swift_task_alloc();
  v4[328] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BC7048, 0, 0);
}

uint64_t sub_252BC7048()
{
  v296 = v0;
  v1 = MEMORY[0x277D84F90];
  v266 = *(v0 + 2456);
  if (!v266)
  {
    v267 = 0;
    v269 = 1;
    goto LABEL_17;
  }

  v2 = *(v0 + 2448);
  v267 = sub_252C2ECE0();
  v269 = v3;
  v4 = sub_252C285F0();
  v5 = v4;
  __dst[0] = v1;
  v0 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = 0;
    while (i != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v0 + 16))
        {
          goto LABEL_35;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v11 = sub_252DA124C(0);

      ++v7;
      if (v11)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v1 = __dst[0];
        v7 = v10;
      }
    }

    v0 = v294;
LABEL_17:
    v268 = v1;
    *(v0 + 2632) = v1;
    v13 = [*(v0 + 2448) filters];
    if (!v13)
    {
      goto LABEL_43;
    }

    v14 = v13;
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();

    if (v15 >> 62)
    {
      break;
    }

    v5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_40;
    }

LABEL_20:
    v16 = 0;
    v278 = v15 & 0xFFFFFFFFFFFFFF8;
    v282 = v15 & 0xC000000000000001;
    v270 = *(v0 + 2592);
    v288 = (v270 + 32);
    v1 = MEMORY[0x277D84F90];
    v272 = v5;
    v274 = v15;
    while (1)
    {
      if (v282)
      {
        v17 = MEMORY[0x2530ADF00](v16, v15);
      }

      else
      {
        if (v16 >= *(v278 + 16))
        {
          goto LABEL_37;
        }

        v17 = *(v15 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 homeEntityName];
      if (v20)
      {
        v21 = v20;
        v22 = v1;
        v23 = *(v0 + 2624);
        v24 = *(v0 + 2616);
        v25 = *(v0 + 2584);
        sub_252E36F34();

        sub_252E37024();

        v26 = *v288;
        v27 = v23;
        v1 = v22;
        (*v288)(v27, v24, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_2529F7F74(0, v22[2] + 1, 1, v22);
        }

        v29 = v1[2];
        v28 = v1[3];
        v0 = v294;
        v5 = v272;
        v15 = v274;
        if (v29 >= v28 >> 1)
        {
          v1 = sub_2529F7F74(v28 > 1, v29 + 1, 1, v1);
        }

        v30 = *(v294 + 2624);
        v31 = *(v294 + 2584);
        v1[2] = v29 + 1;
        v26(v1 + ((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v29, v30, v31);
      }

      else
      {
      }

      ++v16;
      if (v19 == v5)
      {
        goto LABEL_41;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v5 = sub_252E378C4();
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_40:
  v1 = MEMORY[0x277D84F90];
LABEL_41:

  if (!v1[2])
  {

LABEL_43:
    v32 = [*(v0 + 2448) filters];
    if (v32)
    {
      v33 = v32;
      type metadata accessor for HomeFilter();
      v34 = sub_252E37264();

      if (v34 >> 62)
      {
        goto LABEL_63;
      }

      for (j = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
      {
        v36 = 0;
        v279 = v34 & 0xFFFFFFFFFFFFFF8;
        v283 = v34 & 0xC000000000000001;
        v271 = *(v0 + 2592);
        v37 = (v271 + 32);
        v1 = MEMORY[0x277D84F90];
        v273 = j;
        v275 = v34;
        while (1)
        {
          if (v283)
          {
            v38 = MEMORY[0x2530ADF00](v36, v34);
          }

          else
          {
            if (v36 >= *(v279 + 16))
            {
              goto LABEL_62;
            }

            v38 = *(v34 + 8 * v36 + 32);
          }

          v39 = v38;
          v40 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          v41 = [v38 outerDeviceName];
          if (v41)
          {
            v42 = *(v0 + 2608);
            v43 = *(v0 + 2600);
            v289 = *(v0 + 2584);
            v44 = v41;
            sub_252E36F34();

            sub_252E37024();

            v45 = *v37;
            (*v37)(v42, v43, v289);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_2529F7F74(0, v1[2] + 1, 1, v1);
            }

            v47 = v1[2];
            v46 = v1[3];
            v0 = v294;
            j = v273;
            if (v47 >= v46 >> 1)
            {
              v1 = sub_2529F7F74(v46 > 1, v47 + 1, 1, v1);
            }

            v48 = *(v294 + 2608);
            v49 = *(v294 + 2584);
            v1[2] = v47 + 1;
            v45(v1 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v47, v48, v49);
            v34 = v275;
          }

          else
          {
          }

          ++v36;
          if (v40 == j)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        ;
      }

      v1 = MEMORY[0x277D84F90];
LABEL_65:
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }
  }

  v50 = *(v0 + 2464);
  v51 = *(*(v0 + 2592) + 56);
  v51(*(v0 + 2576), 1, 1, *(v0 + 2584));
  memcpy((v0 + 520), (v50 + 112), 0x1F8uLL);
  memcpy((v0 + 16), (v50 + 112), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) != 1)
  {
    v52 = v294;
    v53 = *(v294 + 2576);
    v54 = *(v294 + 2568);
    v55 = *(v294 + 2448);
    type metadata accessor for HomeAutomationIntentContext(0);
    memcpy(__dst, (v294 + 16), 0x1F8uLL);
    memcpy((v52 + 1024), (v52 + 520), 0x1F8uLL);
    sub_2529353AC(v52 + 1024, v52 + 1528);
    sub_2529532C8(__dst, v55, v54);
    sub_25293847C(v53, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v294 + 520, &qword_27F5404C8, &unk_252E3FD60);
    sub_2529439A0(v54, v53);
  }

  if (v269)
  {
LABEL_69:

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v56 = *(v294 + 2496);
    v57 = *(v294 + 2488);
    v58 = *(v294 + 2480);
    v59 = __swift_project_value_buffer(v58, qword_27F544D18);
    (*(v57 + 16))(v56, v59, v58);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    v60 = 0;
    v61 = 0;
    __dst[0] = 0xD00000000000002ELL;
    __dst[1] = 0x8000000252E86CA0;
    if ((v269 & 1) == 0)
    {
      v60 = HomeDeviceType.description.getter(v267);
    }

    v62 = *(v294 + 2496);
    v63 = *(v294 + 2488);
    v64 = *(v294 + 2480);
    v65 = *(v294 + 2472);
    v66 = *(v294 + 2464);
    v67 = *(v294 + 2440);
    *(v294 + 2392) = v60;
    *(v294 + 2400) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v68 = sub_252E36F94();
    MEMORY[0x2530AD570](v68);

    sub_252CC4050(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E86CD0, 0xD00000000000001FLL, 0x8000000252E84990, 170);

    (*(v63 + 8))(v62, v64);
    sub_2529515FC(0, 0, 0x4F6E776F6E6B6E75, 0xEE00656D6F637475);
    type metadata accessor for ErrorFilingHelper();
    v69 = swift_allocObject();
    v70 = sub_252E36884();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    *(v69 + 16) = sub_252E36874();
    v73 = sub_252E36834();
    (*(*(v73 - 8) + 56))(v65, 1, 1, v73);
    sub_25295ADB4(0xD000000000000060, 0x8000000252E86D60, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000016, 0x8000000252E50E30, v65);

    swift_setDeallocating();
    swift_deallocClassInstance();
    sub_25293847C(v65, &qword_27F540570, &unk_252E50EE0);
    v74 = v66[12];
    v75 = v66[13];
    __swift_project_boxed_opaque_existential_1(v66 + 9, v74);

    sub_252943BD0(sub_252B99F14, v66, 1, v74, v75);
    v76 = *(v294 + 2464);
    sub_25293847C(*(v294 + 2576), &qword_27F540298, &unk_252E3C270);

    v77 = *(v294 + 2624);
    v78 = *(v294 + 2616);
    v79 = *(v294 + 2608);
    v80 = *(v294 + 2600);
    v81 = *(v294 + 2576);
    v82 = *(v294 + 2568);
    v83 = *(v294 + 2560);
    v84 = *(v294 + 2552);
    v85 = *(v294 + 2544);
    v86 = *(v294 + 2536);
    v276 = *(v294 + 2528);
    v280 = *(v294 + 2504);
    v284 = *(v294 + 2496);
    v290 = *(v294 + 2472);

    v87 = *(v294 + 8);
    goto LABEL_106;
  }

  if (v267 > 18)
  {
    if ((v267 - 27) >= 2 && v267 != 23)
    {
      if (v267 != 19)
      {
        goto LABEL_69;
      }

      v119 = *(v294 + 2584);
      v120 = *(v294 + 2576);
      type metadata accessor for HomeAutomationEntityResponses.Builder();
      *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
      v285 = type metadata accessor for HomeAutomationPolledEntityResponses();
      v121 = swift_allocObject();
      *(v294 + 2640) = v121;
      *(v121 + 16) = 0;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v291 = v121;
      *(v121 + 24) = v268;
      v122 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
      v123 = *(v122 + 48);
      v124 = *(v122 + 52);
      swift_allocObject();
      v125 = sub_2529930C0();
      v126 = v1;
      v127 = v125;
      v128 = *(v125 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
      *(v125 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v126;

      v129 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v130 = *(v129 + 48);
      v131 = *(v129 + 52);
      v132 = swift_allocObject();
      v133 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v51(v132 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v119);
      swift_beginAccess();
      sub_252956BAC(v120, v132 + v133);
      swift_endAccess();
      v134 = type metadata accessor for HomeAutomationHomeLocation(0);
      v135 = *(v134 + 48);
      v136 = *(v134 + 52);
      v137 = swift_allocObject();
      *(v137 + 16) = 0;
      sub_252956C1C(v132 + v133, v137 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
      swift_setDeallocating();
      sub_25293847C(v132 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      v138 = *(*v132 + 48);
      v139 = *(*v132 + 52);
      swift_deallocClassInstance();
      v140 = *(v127 + 24);
      *(v127 + 24) = v137;

      v141 = type metadata accessor for HomeAutomationIntentContext(0);
      v142 = *(v141 + 48);
      v143 = *(v141 + 52);
      swift_allocObject();
      v144 = sub_252996D9C(v127);
      *(v294 + 2648) = v144;

      v145 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v145 + 288), v294 + 2112);

      v146 = *(v294 + 2136);
      v147 = *(v294 + 2144);
      __swift_project_boxed_opaque_existential_1((v294 + 2112), v146);
      LOBYTE(v132) = (*(v147 + 120))(v146, v147);
      __swift_destroy_boxed_opaque_existential_1((v294 + 2112));
      if (v132)
      {
        v148 = *(v294 + 2560);
        v149 = *(v294 + 2504);
        v150 = *(v294 + 2464);
        v151 = *(v294 + 2448);
        v152 = swift_task_alloc();
        *(v294 + 2656) = v152;
        v152[2] = v151;
        v152[3] = v268;
        v152[4] = v144;
        sub_252E33924();
        sub_252E33F54();
        *(v294 + 2664) = *(v150 + 64);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
        v153 = swift_allocObject();
        *(v153 + 32) = 0x65736E6F70736572;
        *(v153 + 40) = 0xE900000000000073;
        *(v153 + 72) = v285;
        v154 = *(MEMORY[0x277D55C70] + 4);
        v286 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
        *(v294 + 2672) = v153;
        *(v153 + 16) = xmmword_252E3C290;
        *(v153 + 48) = v291;

        v155 = swift_task_alloc();
        *(v294 + 2680) = v155;
        *v155 = v294;
        v155[1] = sub_252BC8DA0;

        return v286(0xD000000000000025, 0x8000000252E86E20, v153);
      }

      else
      {
        v263 = *(v294 + 2464);

        v264 = *__swift_project_boxed_opaque_existential_1((v263 + 24), *(v263 + 48));

        v265 = swift_task_alloc();
        *(v294 + 2768) = v265;
        *v265 = v294;
        v265[1] = sub_252BC9C14;

        return sub_252C0F114(0, v264, v291);
      }
    }

    v91 = v294;
    v157 = v1;
    v158 = *(v294 + 2584);
    v159 = *(v294 + 2576);
    v160 = sub_252BCF744(*(v294 + 2448), *(v294 + 2456));
    v161 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
    v162 = *(v161 + 48);
    v163 = *(v161 + 52);
    swift_allocObject();
    v164 = sub_2529930C0();
    *(v164 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest) = v160 & 1;
    *(v164 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest) = (v160 & 1) == 0;
    v165 = *(v164 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
    *(v164 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v157;

    v166 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v167 = *(v166 + 48);
    v168 = *(v166 + 52);
    v169 = swift_allocObject();
    v170 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v51(v169 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v158);
    swift_beginAccess();
    sub_252956BAC(v159, v169 + v170);
    swift_endAccess();
    v171 = type metadata accessor for HomeAutomationHomeLocation(0);
    v172 = *(v171 + 48);
    v173 = *(v171 + 52);
    v174 = swift_allocObject();
    *(v174 + 16) = 0;
    sub_252956C1C(v169 + v170, v174 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v169 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    v175 = *(*v169 + 48);
    v176 = *(*v169 + 52);
    swift_deallocClassInstance();
    v177 = *(v164 + 24);
    *(v164 + 24) = v174;

    v178 = type metadata accessor for HomeAutomationIntentContext(0);
    v179 = *(v178 + 48);
    v180 = *(v178 + 52);
    swift_allocObject();
    v116 = sub_252996D9C(v164);
    *(v294 + 2912) = v116;

    v117 = swift_task_alloc();
    *(v294 + 2920) = v117;
    *v117 = v294;
    v118 = sub_252BCB400;
LABEL_89:
    v117[1] = v118;
    v181 = v91[308];
    v182 = v91[307];
    v183 = v91[306];
    v184 = v91[305];

    return sub_252BCD190(v184, v268, v116, v183, v182);
  }

  if (!v267)
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v185 = *(v294 + 2584);
    v186 = *(v294 + 2576);
    v292 = *(v294 + 2464);
    __swift_project_value_buffer(*(v294 + 2480), qword_27F544D18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000014;
    __dst[1] = 0x8000000252E86DD0;
    *(v294 + 2408) = HomeDeviceType.description.getter(0);
    *(v294 + 2416) = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v188 = sub_252E36F94();
    MEMORY[0x2530AD570](v188);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E86CD0);

    v189 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
    v190 = *(v189 + 48);
    v191 = *(v189 + 52);
    swift_allocObject();
    v192 = sub_2529930C0();
    v193 = *(v192 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
    *(v192 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v1;

    v194 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v195 = *(v194 + 48);
    v196 = *(v194 + 52);
    v197 = swift_allocObject();
    v198 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v51(v197 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v185);
    swift_beginAccess();
    sub_252956BAC(v186, v197 + v198);
    swift_endAccess();
    v199 = type metadata accessor for HomeAutomationHomeLocation(0);
    v200 = *(v199 + 48);
    v201 = *(v199 + 52);
    v202 = swift_allocObject();
    *(v202 + 16) = 0;
    sub_252956C1C(v197 + v198, v202 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v197 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    v203 = *(*v197 + 48);
    v204 = *(*v197 + 52);
    swift_deallocClassInstance();
    v205 = *(v192 + 24);
    *(v192 + 24) = v202;

    v206 = type metadata accessor for HomeAutomationIntentContext(0);
    v207 = *(v206 + 48);
    v208 = *(v206 + 52);
    swift_allocObject();
    v209 = sub_252996D9C(v192);
    *(v294 + 2936) = v209;

    v210 = swift_allocObject();
    *(v294 + 2944) = v210;
    v210[2] = v292;
    v210[3] = v268;
    v210[4] = v209;

    if (v266)
    {
      v211 = *(v294 + 2464);
      v212 = *(v211 + 48);
      v213 = *(v294 + 2456);
      v214 = *__swift_project_boxed_opaque_existential_1((v211 + 24), v212);

      v215 = swift_task_alloc();
      *(v294 + 2952) = v215;
      *v215 = v294;
      v215[1] = sub_252BCB680;

      return sub_252C0F96C(0, v214, v268, v209);
    }

    else
    {
      v257 = *(v294 + 2536);
      v258 = *(v294 + 2464);

      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v260 = v258[12];
      v259 = v258[13];
      __swift_project_boxed_opaque_existential_1(v258 + 9, v260);
      sub_252AD7CC4();
      v261 = swift_task_alloc();
      *(v294 + 3000) = v261;
      *v261 = v294;
      v261[1] = sub_252BCBADC;
      v262 = *(v294 + 2536);
      v298 = v259;

      return sub_252BDB88C(v294 + 2032, &unk_252E50EF8, v210, v262, 0, 0, 0, v260);
    }
  }

  if (v267 == 4)
  {
    v216 = [*(v294 + 2448) userTask];
    if (!v216 || (v217 = v216, v218 = [v216 value], v217, !v218))
    {

      v243 = qword_27F53F4D0;
      v244 = 115;
      goto LABEL_103;
    }

    v91 = v294;
    v219 = v1;
    v220 = *(v294 + 2584);
    v221 = *(v294 + 2576);
    v222 = [v218 BOOLValue];

    v223 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
    v224 = *(v223 + 48);
    v225 = *(v223 + 52);
    swift_allocObject();
    v226 = sub_2529930C0();
    *(v226 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isGarageDoorRequest) = 1;
    *(v226 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest) = v222;
    *(v226 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest) = v222 ^ 1;
    v227 = *(v226 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
    *(v226 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v219;

    v228 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v229 = *(v228 + 48);
    v230 = *(v228 + 52);
    v231 = swift_allocObject();
    v232 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v51(v231 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v220);
    swift_beginAccess();
    sub_252956BAC(v221, v231 + v232);
    swift_endAccess();
    v233 = type metadata accessor for HomeAutomationHomeLocation(0);
    v234 = *(v233 + 48);
    v235 = *(v233 + 52);
    v236 = swift_allocObject();
    *(v236 + 16) = 0;
    sub_252956C1C(v231 + v232, v236 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v231 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    v237 = *(*v231 + 48);
    v238 = *(*v231 + 52);
    swift_deallocClassInstance();
    v239 = *(v226 + 24);
    *(v226 + 24) = v236;

    v240 = type metadata accessor for HomeAutomationIntentContext(0);
    v241 = *(v240 + 48);
    v242 = *(v240 + 52);
    swift_allocObject();
    v116 = sub_252996D9C(v226);
    *(v294 + 2888) = v116;

    v117 = swift_task_alloc();
    *(v294 + 2896) = v117;
    *v117 = v294;
    v118 = sub_252BCB180;
    goto LABEL_89;
  }

  if (v267 != 7)
  {
    goto LABEL_69;
  }

  v88 = [*(v294 + 2448) userTask];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 value];

    if (v90)
    {
      v91 = v294;
      v92 = v1;
      v93 = *(v294 + 2584);
      v94 = *(v294 + 2576);
      v95 = [v90 BOOLValue];

      v96 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      v99 = sub_2529930C0();
      *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isLockRequest) = v95;
      *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isUnlockRequest) = v95 ^ 1;
      v100 = *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
      *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v92;

      v101 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      v104 = swift_allocObject();
      v105 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v51(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v93);
      swift_beginAccess();
      sub_252956BAC(v94, v104 + v105);
      swift_endAccess();
      v106 = type metadata accessor for HomeAutomationHomeLocation(0);
      v107 = *(v106 + 48);
      v108 = *(v106 + 52);
      v109 = swift_allocObject();
      *(v109 + 16) = 0;
      sub_252956C1C(v104 + v105, v109 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
      swift_setDeallocating();
      sub_25293847C(v104 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      v110 = *(*v104 + 48);
      v111 = *(*v104 + 52);
      swift_deallocClassInstance();
      v112 = *(v99 + 24);
      *(v99 + 24) = v109;

      v113 = type metadata accessor for HomeAutomationIntentContext(0);
      v114 = *(v113 + 48);
      v115 = *(v113 + 52);
      swift_allocObject();
      v116 = sub_252996D9C(v99);
      *(v294 + 2864) = v116;

      v117 = swift_task_alloc();
      *(v294 + 2872) = v117;
      *v117 = v294;
      v118 = sub_252BCAF00;
      goto LABEL_89;
    }
  }

  v243 = qword_27F53F4D0;
  v244 = 100;
LABEL_103:
  if (v243 != -1)
  {
    swift_once();
  }

  v245 = *(v294 + 2576);
  __swift_project_value_buffer(*(v294 + 2480), qword_27F544D18);
  sub_252CC4050(0xD000000000000023, 0x8000000252E86DF0, 0xD00000000000008ELL, 0x8000000252E86CD0, 0xD00000000000001FLL, 0x8000000252E84990, v244);
  sub_2529318DC();
  swift_allocError();
  *v246 = 8;
  swift_willThrow();
  sub_25293847C(v245, &qword_27F540298, &unk_252E3C270);
  v247 = *(v294 + 2624);
  v248 = *(v294 + 2616);
  v249 = *(v294 + 2608);
  v250 = *(v294 + 2600);
  v251 = *(v294 + 2576);
  v252 = *(v294 + 2568);
  v253 = *(v294 + 2560);
  v254 = *(v294 + 2552);
  v255 = *(v294 + 2544);
  v256 = *(v294 + 2536);
  v277 = *(v294 + 2528);
  v281 = *(v294 + 2504);
  v287 = *(v294 + 2496);
  v293 = *(v294 + 2472);

  v87 = *(v294 + 8);
LABEL_106:

  return v87();
}

uint64_t sub_252BC8DA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2680);
  v9 = *v2;
  v3[336] = a1;
  v3[337] = v1;

  if (v1)
  {
    v5 = sub_252BC91D0;
  }

  else
  {
    v6 = v3[334];
    v7 = v3[333];

    v5 = sub_252BC8ECC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BC8ECC()
{
  v1 = v0[307];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[338] = v3;
    *v3 = v0;
    v3[1] = sub_252BC90B8;
    v4 = v0[308];

    return sub_252DC810C(v2);
  }

  else
  {
    v6 = v0[336];
    v0[341] = v6;
    v7 = v0[332];
    v8 = v0[308];
    v9 = v8[13];
    __swift_project_boxed_opaque_existential_1(v8 + 9, v8[12]);
    v10 = swift_task_alloc();
    v0[342] = v10;
    *(v10 + 16) = v6;
    v11 = swift_task_alloc();
    v0[343] = v11;
    *(v11 + 16) = &unk_252E50F28;
    *(v11 + 24) = v7;
    v12 = v6;
    v13 = swift_task_alloc();
    v0[344] = v13;
    *v13 = v0;
    v13[1] = sub_252BC9380;
    v14 = v0[320];

    return sub_252A199A8((v0 + 279), &unk_252E50F38, v10, &unk_252E50F40, v11, v14, 0, 0);
  }
}

uint64_t sub_252BC90B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2704);
  v7 = *v2;
  *(v3 + 2712) = a1;
  *(v3 + 2720) = v1;

  if (v1)
  {
    v5 = sub_252BC9A6C;
  }

  else
  {
    v5 = sub_252BC98E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BC91D0()
{
  v1 = v0[334];
  v2 = v0[333];
  v3 = v0[329];
  v4 = v0[320];
  v5 = v0[315];
  v6 = v0[314];

  (*(v5 + 8))(v4, v6);
  v27 = v0[337];
  v7 = v0[332];
  v8 = v0[331];
  v9 = v0[330];
  v10 = v0[322];

  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  v11 = v0[328];
  v12 = v0[327];
  v13 = v0[326];
  v14 = v0[325];
  v15 = v0[322];
  v16 = v0[321];
  v17 = v0[320];
  v18 = v0[319];
  v19 = v0[318];
  v20 = v0[317];
  v23 = v0[316];
  v24 = v0[313];
  v25 = v0[312];
  v26 = v0[309];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252BC9380()
{
  v2 = *v1;
  v3 = *(*v1 + 2752);
  v4 = *v1;
  *(v2 + 2760) = v0;

  v5 = *(v2 + 2744);
  v6 = *(v2 + 2736);
  if (v0)
  {

    v7 = sub_252BC9738;
  }

  else
  {

    v7 = sub_252BC94F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252BC94F4()
{
  v1 = v0[308];
  v2 = v0[306];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[341];
  v26 = v0[332];
  v28 = v0[331];
  v9 = v0[329];
  v30 = v0[330];
  v32 = v0[322];
  v10 = v0[320];
  v11 = v0[315];
  v12 = v0[314];
  v13 = v0[305];
  (*(v4 + 112))(v7, v0 + 279, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 279);
  (*(v11 + 8))(v10, v12);

  sub_25293847C(v32, &qword_27F540298, &unk_252E3C270);
  v14 = v0[328];
  v15 = v0[327];
  v16 = v0[326];
  v17 = v0[325];
  v18 = v0[322];
  v19 = v0[321];
  v20 = v0[320];
  v21 = v0[319];
  v22 = v0[318];
  v23 = v0[317];
  v27 = v0[316];
  v29 = v0[313];
  v31 = v0[312];
  v33 = v0[309];

  v24 = v0[1];

  return v24();
}

uint64_t sub_252BC9738()
{
  v1 = v0[341];
  v2 = v0[329];
  v3 = v0[320];
  v4 = v0[315];
  v5 = v0[314];

  (*(v4 + 8))(v3, v5);
  v26 = v0[345];
  v6 = v0[332];
  v7 = v0[331];
  v8 = v0[330];
  v9 = v0[322];

  sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
  v10 = v0[328];
  v11 = v0[327];
  v12 = v0[326];
  v13 = v0[325];
  v14 = v0[322];
  v15 = v0[321];
  v16 = v0[320];
  v17 = v0[319];
  v18 = v0[318];
  v19 = v0[317];
  v22 = v0[316];
  v23 = v0[313];
  v24 = v0[312];
  v25 = v0[309];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252BC98E0()
{
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2688);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 2712));

    v2 = v3;
  }

  *(v0 + 2728) = v2;
  v4 = *(v0 + 2656);
  v5 = *(v0 + 2464);
  v6 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v5[12]);
  v7 = swift_task_alloc();
  *(v0 + 2736) = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 2744) = v8;
  *(v8 + 16) = &unk_252E50F28;
  *(v8 + 24) = v4;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 2752) = v10;
  *v10 = v0;
  v10[1] = sub_252BC9380;
  v11 = *(v0 + 2560);

  return sub_252A199A8(v0 + 2232, &unk_252E50F38, v7, &unk_252E50F40, v8, v11, 0, 0);
}

uint64_t sub_252BC9A6C()
{
  v1 = v0[336];
  v2 = v0[329];
  v3 = v0[320];
  v4 = v0[315];
  v5 = v0[314];
  v6 = v0[307];

  (*(v4 + 8))(v3, v5);
  v27 = v0[340];
  v7 = v0[332];
  v8 = v0[331];
  v9 = v0[330];
  v10 = v0[322];

  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  v11 = v0[328];
  v12 = v0[327];
  v13 = v0[326];
  v14 = v0[325];
  v15 = v0[322];
  v16 = v0[321];
  v17 = v0[320];
  v18 = v0[319];
  v19 = v0[318];
  v20 = v0[317];
  v23 = v0[316];
  v24 = v0[313];
  v25 = v0[312];
  v26 = v0[309];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252BC9C14(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2768);
  v6 = *v2;
  *(v4 + 2776) = a1;
  *(v4 + 2784) = v1;

  v7 = *(v3 + 2640);

  if (v1)
  {
    v8 = sub_252BCA0C0;
  }

  else
  {
    v8 = sub_252BC9D54;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252BC9D54()
{
  v1 = v0[347];
  v2 = v0[307];
  v3 = swift_allocObject();
  v0[349] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  if (v2)
  {
    v5 = v4;
    v6 = v2;
    v7 = v5;
    v8 = swift_task_alloc();
    v0[350] = v8;
    *v8 = v0;
    v8[1] = sub_252BC9FA8;
    v9 = v0[308];

    return sub_252E174F4(v6);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v11 = v0[319];
    v12 = v0[308];
    __swift_project_value_buffer(v0[310], qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v13 = *(v12 + 96);
    __swift_project_boxed_opaque_existential_1((v12 + 72), v13);
    sub_252AD7CC4();
    v14 = swift_task_alloc();
    v0[353] = v14;
    *v14 = v0;
    v14[1] = sub_252BCA220;
    v15 = v0[319];

    return sub_252BDB88C((v0 + 269), &unk_252E50F10, v3, v15, 0, 0, 0, v13);
  }
}

uint64_t sub_252BC9FA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2800);
  v7 = *v2;
  *(v3 + 2808) = a1;
  *(v3 + 2816) = v1;

  if (v1)
  {
    v5 = sub_252BCA4E4;
  }

  else
  {
    v5 = sub_252BCA388;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCA0C0()
{
  v1 = v0[331];
  v2 = v0[330];
  v3 = v0[322];

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  v4 = v0[328];
  v5 = v0[327];
  v6 = v0[326];
  v7 = v0[325];
  v8 = v0[322];
  v9 = v0[321];
  v10 = v0[320];
  v11 = v0[319];
  v12 = v0[318];
  v13 = v0[317];
  v16 = v0[316];
  v17 = v0[313];
  v18 = v0[312];
  v19 = v0[309];
  v20 = v0[348];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252BCA220()
{
  v2 = *v1;
  v3 = *(*v1 + 2824);
  v4 = *v1;
  *(*v1 + 2832) = v0;

  (*(v2[315] + 8))(v2[319], v2[314]);
  if (v0)
  {
    v5 = sub_252BCAD90;
  }

  else
  {
    v5 = sub_252BCAB88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCA388()
{
  v1 = v0 + 304;
  v2 = v0[351];
  v3 = v0[347];
  v0[304] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[318];
  v9 = v0[308];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[355] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[356] = v12;
  *v12 = v0;
  v12[1] = sub_252BCA668;
  v13 = v0[318];

  return sub_252BDB88C((v0 + 274), &unk_252E4EFD0, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252BCA4E4()
{
  v1 = *(v0 + 2792);
  v2 = *(v0 + 2456);

  v23 = *(v0 + 2816);
  v3 = *(v0 + 2776);
  v4 = *(v0 + 2648);
  v5 = *(v0 + 2640);
  v6 = *(v0 + 2576);

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  v7 = *(v0 + 2624);
  v8 = *(v0 + 2616);
  v9 = *(v0 + 2608);
  v10 = *(v0 + 2600);
  v11 = *(v0 + 2576);
  v12 = *(v0 + 2568);
  v13 = *(v0 + 2560);
  v14 = *(v0 + 2552);
  v15 = *(v0 + 2544);
  v16 = *(v0 + 2536);
  v19 = *(v0 + 2528);
  v20 = *(v0 + 2504);
  v21 = *(v0 + 2496);
  v22 = *(v0 + 2472);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252BCA668()
{
  v2 = *v1;
  v3 = *(*v1 + 2848);
  v7 = *v1;
  *(*v1 + 2856) = v0;

  if (v0)
  {
    (*(v2[315] + 8))(v2[318], v2[314]);
    v4 = sub_252BCA9E8;
  }

  else
  {
    v5 = v2[355];
    (*(v2[315] + 8))(v2[318], v2[314]);

    v4 = sub_252BCA7C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BCA7C0()
{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2448);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2808);
  v9 = *(v0 + 2792);
  v10 = *(v0 + 2776);
  v11 = *(v0 + 2456);
  v12 = *(v0 + 2440);
  (*(v4 + 112))(v7, v0 + 2192, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2192));

  v13 = *(v0 + 2776);
  v14 = *(v0 + 2648);
  v15 = *(v0 + 2640);
  v16 = *(v0 + 2576);

  sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
  v17 = *(v0 + 2624);
  v18 = *(v0 + 2616);
  v19 = *(v0 + 2608);
  v20 = *(v0 + 2600);
  v21 = *(v0 + 2576);
  v22 = *(v0 + 2568);
  v23 = *(v0 + 2560);
  v24 = *(v0 + 2552);
  v25 = *(v0 + 2544);
  v26 = *(v0 + 2536);
  v29 = *(v0 + 2528);
  v30 = *(v0 + 2504);
  v31 = *(v0 + 2496);
  v32 = *(v0 + 2472);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_252BCA9E8()
{
  v1 = *(v0 + 2840);
  v2 = *(v0 + 2808);
  v3 = *(v0 + 2792);
  v4 = *(v0 + 2456);

  v25 = *(v0 + 2856);
  v5 = *(v0 + 2776);
  v6 = *(v0 + 2648);
  v7 = *(v0 + 2640);
  v8 = *(v0 + 2576);

  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  v9 = *(v0 + 2624);
  v10 = *(v0 + 2616);
  v11 = *(v0 + 2608);
  v12 = *(v0 + 2600);
  v13 = *(v0 + 2576);
  v14 = *(v0 + 2568);
  v15 = *(v0 + 2560);
  v16 = *(v0 + 2552);
  v17 = *(v0 + 2544);
  v18 = *(v0 + 2536);
  v21 = *(v0 + 2528);
  v22 = *(v0 + 2504);
  v23 = *(v0 + 2496);
  v24 = *(v0 + 2472);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252BCAB88()
{
  v1 = v0[308];
  v2 = v0[306];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[349];
  v9 = v0[305];
  (*(v4 + 112))(v7, v0 + 269, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 269);

  v10 = v0[347];
  v11 = v0[331];
  v12 = v0[330];
  v13 = v0[322];

  sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
  v14 = v0[328];
  v15 = v0[327];
  v16 = v0[326];
  v17 = v0[325];
  v18 = v0[322];
  v19 = v0[321];
  v20 = v0[320];
  v21 = v0[319];
  v22 = v0[318];
  v23 = v0[317];
  v26 = v0[316];
  v27 = v0[313];
  v28 = v0[312];
  v29 = v0[309];

  v24 = v0[1];

  return v24();
}

uint64_t sub_252BCAD90()
{
  v1 = v0[349];

  v22 = v0[354];
  v2 = v0[347];
  v3 = v0[331];
  v4 = v0[330];
  v5 = v0[322];

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  v6 = v0[328];
  v7 = v0[327];
  v8 = v0[326];
  v9 = v0[325];
  v10 = v0[322];
  v11 = v0[321];
  v12 = v0[320];
  v13 = v0[319];
  v14 = v0[318];
  v15 = v0[317];
  v18 = v0[316];
  v19 = v0[313];
  v20 = v0[312];
  v21 = v0[309];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252BCAF00()
{
  v2 = *v1;
  v3 = *(*v1 + 2872);
  v4 = *v1;
  *(*v1 + 2880) = v0;

  v5 = *(v2 + 2632);

  if (v0)
  {
    v6 = sub_252BCC758;
  }

  else
  {
    v6 = sub_252BCB034;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252BCB034()
{
  v1 = v0[358];
  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[326];
  v6 = v0[325];
  v7 = v0[322];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[319];
  v11 = v0[318];
  v12 = v0[317];
  v15 = v0[316];
  v16 = v0[313];
  v17 = v0[312];
  v18 = v0[309];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252BCB180()
{
  v2 = *v1;
  v3 = *(*v1 + 2896);
  v4 = *v1;
  *(*v1 + 2904) = v0;

  v5 = *(v2 + 2632);

  if (v0)
  {
    v6 = sub_252BCC8AC;
  }

  else
  {
    v6 = sub_252BCB2B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252BCB2B4()
{
  v1 = v0[361];
  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[326];
  v6 = v0[325];
  v7 = v0[322];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[319];
  v11 = v0[318];
  v12 = v0[317];
  v15 = v0[316];
  v16 = v0[313];
  v17 = v0[312];
  v18 = v0[309];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252BCB400()
{
  v2 = *v1;
  v3 = *(*v1 + 2920);
  v4 = *v1;
  *(*v1 + 2928) = v0;

  v5 = *(v2 + 2632);

  if (v0)
  {
    v6 = sub_252BCCA00;
  }

  else
  {
    v6 = sub_252BCB534;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252BCB534()
{
  v1 = v0[364];
  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[326];
  v6 = v0[325];
  v7 = v0[322];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[319];
  v11 = v0[318];
  v12 = v0[317];
  v15 = v0[316];
  v16 = v0[313];
  v17 = v0[312];
  v18 = v0[309];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252BCB680(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2952);
  v6 = *v2;
  v4[370] = a1;
  v4[371] = v1;

  v7 = v3[367];
  v8 = v3[329];
  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252BCB978, 0, 0);
  }

  else
  {
    v9 = v4[307];

    swift_bridgeObjectRelease_n();
    v10 = swift_task_alloc();
    v4[372] = v10;
    *v10 = v6;
    v10[1] = sub_252BCB860;
    v11 = v4[308];

    return sub_252E174F4(v9);
  }
}

uint64_t sub_252BCB860(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2976);
  v7 = *v2;
  *(v3 + 2984) = a1;
  *(v3 + 2992) = v1;

  if (v1)
  {
    v5 = sub_252BCBDA0;
  }

  else
  {
    v5 = sub_252BCBC44;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCB978()
{
  v1 = v0[368];
  v2 = v0[307];

  v21 = v0[371];
  v3 = v0[367];
  v4 = v0[322];

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  v5 = v0[328];
  v6 = v0[327];
  v7 = v0[326];
  v8 = v0[325];
  v9 = v0[322];
  v10 = v0[321];
  v11 = v0[320];
  v12 = v0[319];
  v13 = v0[318];
  v14 = v0[317];
  v17 = v0[316];
  v18 = v0[313];
  v19 = v0[312];
  v20 = v0[309];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252BCBADC()
{
  v2 = *v1;
  v3 = *(*v1 + 3000);
  v4 = *v1;
  *(*v1 + 3008) = v0;

  (*(v2[315] + 8))(v2[317], v2[314]);
  if (v0)
  {
    v5 = sub_252BCC5FC;
  }

  else
  {
    v5 = sub_252BCC408;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCBC44()
{
  v1 = v0 + 303;
  v2 = v0[373];
  v3 = v0[370];
  v0[303] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[316];
  v9 = v0[308];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[377] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[378] = v12;
  *v12 = v0;
  v12[1] = sub_252BCBF10;
  v13 = v0[316];

  return sub_252BDB88C((v0 + 259), &unk_252E50F00, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252BCBDA0()
{
  v1 = *(v0 + 2944);
  v2 = *(v0 + 2456);

  v21 = *(v0 + 2992);
  v3 = *(v0 + 2936);
  v4 = *(v0 + 2576);

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  v5 = *(v0 + 2624);
  v6 = *(v0 + 2616);
  v7 = *(v0 + 2608);
  v8 = *(v0 + 2600);
  v9 = *(v0 + 2576);
  v10 = *(v0 + 2568);
  v11 = *(v0 + 2560);
  v12 = *(v0 + 2552);
  v13 = *(v0 + 2544);
  v14 = *(v0 + 2536);
  v17 = *(v0 + 2528);
  v18 = *(v0 + 2504);
  v19 = *(v0 + 2496);
  v20 = *(v0 + 2472);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252BCBF10()
{
  v2 = *v1;
  v3 = *(*v1 + 3024);
  v7 = *v1;
  *(*v1 + 3032) = v0;

  if (v0)
  {
    (*(v2[315] + 8))(v2[316], v2[314]);
    v4 = sub_252BCC27C;
  }

  else
  {
    v5 = v2[377];
    (*(v2[315] + 8))(v2[316], v2[314]);

    v4 = sub_252BCC068;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BCC068()
{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2448);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2984);
  v9 = *(v0 + 2960);
  v10 = *(v0 + 2944);
  v11 = *(v0 + 2456);
  v12 = *(v0 + 2440);
  (*(v4 + 112))(v7, v0 + 2072, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2072));

  v13 = *(v0 + 2936);
  v14 = *(v0 + 2576);

  sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);
  v15 = *(v0 + 2624);
  v16 = *(v0 + 2616);
  v17 = *(v0 + 2608);
  v18 = *(v0 + 2600);
  v19 = *(v0 + 2576);
  v20 = *(v0 + 2568);
  v21 = *(v0 + 2560);
  v22 = *(v0 + 2552);
  v23 = *(v0 + 2544);
  v24 = *(v0 + 2536);
  v27 = *(v0 + 2528);
  v28 = *(v0 + 2504);
  v29 = *(v0 + 2496);
  v30 = *(v0 + 2472);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_252BCC27C()
{
  v1 = *(v0 + 3016);
  v2 = *(v0 + 2984);
  v3 = *(v0 + 2944);
  v4 = *(v0 + 2456);

  v23 = *(v0 + 3032);
  v5 = *(v0 + 2936);
  v6 = *(v0 + 2576);

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  v7 = *(v0 + 2624);
  v8 = *(v0 + 2616);
  v9 = *(v0 + 2608);
  v10 = *(v0 + 2600);
  v11 = *(v0 + 2576);
  v12 = *(v0 + 2568);
  v13 = *(v0 + 2560);
  v14 = *(v0 + 2552);
  v15 = *(v0 + 2544);
  v16 = *(v0 + 2536);
  v19 = *(v0 + 2528);
  v20 = *(v0 + 2504);
  v21 = *(v0 + 2496);
  v22 = *(v0 + 2472);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252BCC408()
{
  v1 = v0[308];
  v2 = v0[306];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[368];
  v9 = v0[305];
  (*(v4 + 112))(v7, v0 + 254, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v10 = v0[367];
  v11 = v0[322];

  sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
  v12 = v0[328];
  v13 = v0[327];
  v14 = v0[326];
  v15 = v0[325];
  v16 = v0[322];
  v17 = v0[321];
  v18 = v0[320];
  v19 = v0[319];
  v20 = v0[318];
  v21 = v0[317];
  v24 = v0[316];
  v25 = v0[313];
  v26 = v0[312];
  v27 = v0[309];

  v22 = v0[1];

  return v22();
}

uint64_t sub_252BCC5FC()
{
  v1 = v0[368];

  v20 = v0[376];
  v2 = v0[367];
  v3 = v0[322];

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  v4 = v0[328];
  v5 = v0[327];
  v6 = v0[326];
  v7 = v0[325];
  v8 = v0[322];
  v9 = v0[321];
  v10 = v0[320];
  v11 = v0[319];
  v12 = v0[318];
  v13 = v0[317];
  v16 = v0[316];
  v17 = v0[313];
  v18 = v0[312];
  v19 = v0[309];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252BCC758()
{
  v1 = v0[358];
  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[326];
  v6 = v0[325];
  v7 = v0[322];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[319];
  v11 = v0[318];
  v12 = v0[317];
  v15 = v0[316];
  v16 = v0[313];
  v17 = v0[312];
  v18 = v0[309];
  v19 = v0[360];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252BCC8AC()
{
  v1 = v0[361];
  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[326];
  v6 = v0[325];
  v7 = v0[322];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[319];
  v11 = v0[318];
  v12 = v0[317];
  v15 = v0[316];
  v16 = v0[313];
  v17 = v0[312];
  v18 = v0[309];
  v19 = v0[363];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252BCCA00()
{
  v1 = v0[364];
  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[326];
  v6 = v0[325];
  v7 = v0[322];
  v8 = v0[321];
  v9 = v0[320];
  v10 = v0[319];
  v11 = v0[318];
  v12 = v0[317];
  v15 = v0[316];
  v16 = v0[313];
  v17 = v0[312];
  v18 = v0[309];
  v19 = v0[366];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252BCCB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_25296359C;

  return sub_252A28180(v9, a2, a3, a4);
}

uint64_t sub_252BCCC3C(uint64_t a1, uint64_t a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-v9];
  v11 = type metadata accessor for HomeAutomationSetSecuritySystemStateParameters(0);
  v12 = v11[7];
  v13 = *(a1 + v12);
  swift_retain_n();

  *(a1 + v12) = a2;
  v14 = v11[8];
  v15 = *(a1 + v14);

  *(a1 + v14) = a2;
  v16 = sub_25294833C(1u, 0, 0);
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 dictionary];
  if (!v18)
  {

LABEL_7:
    v26 = sub_252E36324();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    goto LABEL_8;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v32[0] = 0;
  v21 = [v20 dataWithPropertyList:v19 format:200 options:0 error:v32];
  v22 = v32[0];
  if (!v21)
  {
    v27 = v22;
    v28 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v23 = sub_252E32D34();
  v25 = v24;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v23, v25);
  v26 = sub_252E36324();
  (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
LABEL_8:
  sub_252956C98(v10, a1 + v11[9]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
  result = sub_252956C98(v8, a1);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252BCCF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252BCCF6C, 0, 0);
}

uint64_t sub_252BCCF6C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252BCD050;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C0F96C(0, v3, v5, v6);
}

uint64_t sub_252BCD050(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_252BCD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v7 = *(*(sub_252E33944() - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v8 = sub_252E34014();
  v6[30] = v8;
  v9 = *(v8 - 8);
  v6[31] = v9;
  v10 = *(v9 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BCD29C, 0, 0);
}

uint64_t sub_252BCD29C()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 288), (v0 + 2));

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  LOBYTE(v3) = (*(v3 + 120))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[25];
  if (v3)
  {
    v0[35] = v4[8];
    type metadata accessor for HomeAutomationPolledEntityResponses();
    v7 = swift_allocObject();
    v0[36] = v7;
    *(v7 + 16) = 0;
    *(v7 + 24) = v5;

    v8 = swift_task_alloc();
    v0[37] = v8;
    *v8 = v0;
    v8[1] = sub_252BCD494;

    return sub_252D2A970(v7, v6);
  }

  else
  {
    v10 = *__swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);

    v11 = swift_task_alloc();
    v0[49] = v11;
    *v11 = v0;
    v11[1] = sub_252BCDF24;
    v12 = v0[24];
    v13 = v0[25];

    return sub_252C0F5C0(0, v10, v12, v13);
  }
}

uint64_t sub_252BCD494(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v9 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v5 = sub_252BCED44;
  }

  else
  {
    v7 = v3[35];
    v6 = v3[36];

    v5 = sub_252BCD5B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCD5B8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  v7 = *(v0 + 192);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  sub_252E33924();
  sub_252E33F54();
  v8 = v1;
  if (v4)
  {
    v9 = *(v0 + 216);
    v10 = swift_task_alloc();
    *(v0 + 328) = v10;
    *v10 = v0;
    v10[1] = sub_252BCD7FC;
    v11 = *(v0 + 224);

    return sub_252DC810C(v9);
  }

  else
  {
    v13 = *(v0 + 304);
    *(v0 + 352) = v13;
    v14 = *(v0 + 320);
    v15 = *(v0 + 224);
    v16 = v15[13];
    __swift_project_boxed_opaque_existential_1(v15 + 9, v15[12]);
    v17 = swift_task_alloc();
    *(v0 + 360) = v17;
    *(v17 + 16) = v13;
    v18 = swift_task_alloc();
    *(v0 + 368) = v18;
    *(v18 + 16) = &unk_252E50ED0;
    *(v18 + 24) = v14;
    v19 = v13;
    v20 = swift_task_alloc();
    *(v0 + 376) = v20;
    *v20 = v0;
    v20[1] = sub_252BCD910;
    v21 = *(v0 + 272);

    return sub_252A199A8(v0 + 136, &unk_252E400A0, v17, &unk_252E3D1A0, v18, v21, 0, 0);
  }
}

uint64_t sub_252BCD7FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v7 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_252BCDE58;
  }

  else
  {
    v5 = sub_252BCDCCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCD910()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(v2 + 384) = v0;

  v5 = *(v2 + 368);
  v6 = *(v2 + 360);
  if (v0)
  {

    v7 = sub_252BCDC04;
  }

  else
  {

    v7 = sub_252BCDA84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252BCDA84()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 352);
  v9 = *(v0 + 320);
  v10 = *(v0 + 272);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v13 = *(v0 + 184);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  (*(v12 + 8))(v10, v11);

  v14 = *(v0 + 264);
  v15 = *(v0 + 272);
  v16 = *(v0 + 256);
  v17 = *(v0 + 232);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_252BCDC04()
{
  v1 = v0[44];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  v5 = v0[48];
  v6 = v0[40];
  v7 = v0[38];

  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v11 = v0[29];

  v12 = v0[1];

  return v12();
}

uint64_t sub_252BCDCCC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 336));

    v2 = v3;
  }

  *(v0 + 352) = v2;
  v4 = *(v0 + 320);
  v5 = *(v0 + 224);
  v6 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v5[12]);
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  *(v8 + 16) = &unk_252E50ED0;
  *(v8 + 24) = v4;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 376) = v10;
  *v10 = v0;
  v10[1] = sub_252BCD910;
  v11 = *(v0 + 272);

  return sub_252A199A8(v0 + 136, &unk_252E400A0, v7, &unk_252E3D1A0, v8, v11, 0, 0);
}

uint64_t sub_252BCDE58()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 304);

  v9 = *(v0 + 264);
  v8 = *(v0 + 272);
  v10 = *(v0 + 256);
  v11 = *(v0 + 232);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252BCDF24(uint64_t a1)
{
  v3 = *(*v2 + 392);
  v4 = *(*v2 + 200);
  v5 = *(*v2 + 192);
  v6 = *v2;
  v6[50] = a1;

  if (v1)
  {
    v8 = v6[33];
    v7 = v6[34];
    v9 = v6[32];
    v10 = v6[29];

    v11 = v6[1];

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252BCE0C8, 0, 0);
  }
}

uint64_t sub_252BCE0C8()
{
  v1 = v0[50];
  v2 = v0[27];
  v3 = swift_allocObject();
  v0[51] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  if (v2)
  {
    v5 = v4;
    v6 = v2;
    v7 = v5;
    v8 = swift_task_alloc();
    v0[52] = v8;
    *v8 = v0;
    v8[1] = sub_252BCE320;
    v9 = v0[28];

    return sub_252E174F4(v6);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v11 = v0[33];
    v12 = v0[28];
    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v14 = *(v12 + 96);
    __swift_project_boxed_opaque_existential_1((v12 + 72), v14);
    sub_252AD7CC4();
    v15 = swift_task_alloc();
    v0[55] = v15;
    *v15 = v0;
    v15[1] = sub_252BCE434;
    v16 = v0[33];

    return sub_252BDB88C((v0 + 7), &unk_252E50EB8, v3, v16, 0, 0, 0, v14);
  }
}

uint64_t sub_252BCE320(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v7 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v5 = sub_252BCE700;
  }

  else
  {
    v5 = sub_252BCE5A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCE434()
{
  v2 = *(*v1 + 440);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 240);
  v8 = *v1;
  *(*v1 + 448) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252BCECA8;
  }

  else
  {
    v6 = sub_252BCEB60;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252BCE5A4()
{
  v1 = v0[50];
  v0[22] = v1;
  v2 = v0 + 22;
  v3 = v0[53];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[32];
  v9 = v0[28];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[57] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[58] = v12;
  *v12 = v0;
  v12[1] = sub_252BCE7AC;
  v13 = v0[32];

  return sub_252BDB88C((v0 + 12), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252BCE700()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 216);

  v3 = *(v0 + 432);

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252BCE7AC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 248);
  v6 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 472) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252BCEA98;
  }

  else
  {
    v8 = *(v2 + 456);

    v7 = sub_252BCE92C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252BCE92C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 424);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v11 = *(v0 + 216);
  v12 = *(v0 + 184);
  (*(v4 + 112))(v7, v0 + 96, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v13 = *(v0 + 264);
  v14 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252BCEA98()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 216);

  v5 = *(v0 + 472);

  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);
  v9 = *(v0 + 232);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252BCEB60()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 408);
  v9 = *(v0 + 184);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 232);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252BCECA8()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 448);

  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252BCED44()
{
  v2 = v0[35];
  v1 = v0[36];

  v3 = v0[39];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252BCEDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_252BCEEC8;

  return sub_252A28180(v9, a2, a3, a4);
}

uint64_t sub_252BCEEC8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_252BCFC54;
  }

  else
  {
    v3 = sub_252BCFC4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BCEFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v37[-v11];
  type metadata accessor for HomeAutomationPolledEntityResponses();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = a2;
  v14 = type metadata accessor for HomeAutomationSetPolledStateParameters(0);
  v15 = v14[7];
  v16 = *(a1 + v15);

  *(a1 + v15) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = a2;
  v18 = v14[8];
  v19 = *(a1 + v18);

  *(a1 + v18) = v17;
  v20 = v14[6];
  v21 = *(a1 + v20);

  *(a1 + v20) = a3;
  v22 = sub_25294833C(1u, 0, 0);
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v22;
  v24 = [v22 dictionary];
  if (!v24)
  {

LABEL_7:
    v32 = sub_252E36324();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    goto LABEL_8;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v38[0] = 0;
  v27 = [v26 dataWithPropertyList:v25 format:200 options:0 error:v38];
  v28 = v38[0];
  if (!v27)
  {
    v33 = v28;
    v34 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v29 = sub_252E32D34();
  v31 = v30;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v29, v31);
  v32 = sub_252E36324();
  (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
LABEL_8:
  sub_252956C98(v12, a1 + v14[9]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v32 - 8) + 56))(v10, 0, 1, v32);
  result = sub_252956C98(v10, a1);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_252BCF348(uint64_t *a1, id a2)
{
  v2 = *a1;
  result = sub_252DA0F40([a2 attribute], objc_msgSend(a2, sel_taskType));
  v4 = result >> 62;
  if (result >> 62)
  {
    v17 = result;
    v18 = sub_252E378C4();
    result = v17;
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  v5 = result & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = result;
    v7 = MEMORY[0x2530ADF00](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v6 = result;
    v7 = *(result + 32);
  }

  v8 = v7;
  v9 = [v7 userTask];

  if (!v9 || (v10 = [v9 value], v9, !v10) || (v11 = objc_msgSend(v10, sel_integerValue), v10, !v11))
  {
LABEL_14:

    return 0;
  }

  if (v11 == 100)
  {
LABEL_12:

    return 1;
  }

  if (v4)
  {
    result = sub_252E378C4();
    if (result < 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      goto LABEL_12;
    }
  }

  if (v5)
  {
    v12 = MEMORY[0x2530ADF00](1, v6);
    goto LABEL_20;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v12 = *(v6 + 40);
LABEL_20:
  v13 = v12;

  v14 = [v13 userTask];

  if (!v14)
  {
    return 1;
  }

  v15 = [v14 value];

  if (!v15)
  {
    return 1;
  }

  v16 = [v15 integerValue];

  return v11 >= v16;
}

BOOL sub_252BCF5B4(void *a1, uint64_t a2)
{
  v3 = sub_252B61720(a1);
  result = 0;
  if ((v3 & 1) != 0 && a2)
  {
    v5 = sub_252C285F0();
    if (v5 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6 != 0;
  }

  return result;
}

uint64_t sub_252BCF62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252BC6DC8(a1, a2, a3);
}

void *sub_252BCF6E0@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for PollingResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252BCF744(void *a1, void *a2)
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 taskType];

    if (v6 == 2)
    {
      return 1;
    }
  }

  v8 = [a1 userTask];
  if (!v8 || (v9 = v8, v10 = [v8 taskType], v9, v10 != 3))
  {
    result = [a1 userTask];
    if (!result)
    {
      return result;
    }

    v11 = result;
    if (a2)
    {
      v12 = a2;
      v13 = sub_252C285F0();
      v14 = v13;
      v21 = v12;
      if (v13 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v16 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x2530ADF00](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          v22 = v17;
          v20 = sub_252BCF348(&v22, v11);

          if (v20)
          {

            return 1;
          }

          ++v16;
          if (v19 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_23:
    }
  }

  return 0;
}

uint64_t sub_252BCF914()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252BCF9A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252BCEDE0(a1, v4, v5, v6);
}

uint64_t sub_252BCFA5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252BCCF48(v2, v3, v4);
}

uint64_t sub_252BCFB04()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252BCFB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252BCCB54(a1, v4, v5, v6);
}

uint64_t sub_252BCFC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252921BF8(a1, a2, a3);
}

uint64_t sub_252BCFCF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyClimateModeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252BCFD28(void *a1, uint64_t a2)
{
  v69 = *(a2 + 192);
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  type metadata accessor for HomeStore();
  v6 = static HomeStore.shared.getter();
  v7 = HomeStore.accessories(matching:supporting:)(v5, 0);
  v9 = v8;

  if (v9)
  {
    v10 = v7;
    v11 = 1;
LABEL_4:
    sub_252929F10(v10, v11);
    return 0;
  }

  v12 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_75:
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v16 = v7 + 32;
  v66 = v7 & 0xC000000000000001;
  v67 = v13;
  v68 = v12;
  v65 = v7 + 32;
  while (1)
  {
    if (v14 == v13)
    {
      v10 = v7;
      v11 = 0;
      goto LABEL_4;
    }

    if (v15)
    {
      v17 = MEMORY[0x2530ADF00](v14, v7);
      v18 = __OFADD__(v14++, 1);
      if (v18)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v17 = *(v16 + 8 * v14);

      v18 = __OFADD__(v14++, 1);
      if (v18)
      {
        goto LABEL_49;
      }
    }

    v19 = (*v17 + 256);
    v20 = *v19;
    if ((*v19)() == 3)
    {
      break;
    }

    v21 = (*v17 + 272);
    v22 = *v21;
    v23 = (*v21)();
    v24 = v23;
    if (*(v23 + 16))
    {
      v25 = *(v23 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v26 = sub_252E37F14();
      v27 = -1 << *(v24 + 32);
      v28 = v26 & ~v27;
      if ((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (*(*(v24 + 48) + 8 * v28) != 3)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

LABEL_50:

        sub_252929F10(v7, 0);
        goto LABEL_52;
      }
    }

LABEL_18:

    v31 = (v20)(v30);
    if (v31 == 38)
    {
      v33 = &unk_2864ADFB0;
      goto LABEL_22;
    }

    v32 = MEMORY[0x277D84FA0];
    if (v31 == 41)
    {
      v33 = &unk_2864ADFD8;
LABEL_22:
      v32 = sub_2529FC004(v33);
    }

    if (*(v32 + 16))
    {
      v34 = *(v32 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v35 = sub_252E37F14();
      v36 = -1 << *(v32 + 32);
      v37 = v35 & ~v36;
      if ((*(v32 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        while (*(*(v32 + 48) + 8 * v37) != 3)
        {
          v37 = (v37 + 1) & v38;
          if (((*(v32 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_50;
      }
    }

LABEL_28:

    if (sub_252D4FE78(3))
    {
      break;
    }

    if (v20() == 29)
    {
      sub_252929F10(v7, 0);

      goto LABEL_53;
    }

    v39 = v22();
    v40 = v39;
    if (*(v39 + 16))
    {
      v41 = *(v39 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v42 = sub_252E37F14();
      v43 = -1 << *(v40 + 32);
      v44 = v42 & ~v43;
      if ((*(v40 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
      {
        v45 = ~v43;
        while (*(*(v40 + 48) + 8 * v44) != 29)
        {
          v44 = (v44 + 1) & v45;
          if (((*(v40 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

LABEL_51:
        sub_252929F10(v7, 0);

LABEL_52:

        goto LABEL_53;
      }
    }

LABEL_35:

    v47 = (v20)(v46);
    if (v47 == 38)
    {
      v49 = &unk_2864AE000;
      goto LABEL_39;
    }

    v48 = MEMORY[0x277D84FA0];
    if (v47 == 41)
    {
      v49 = &unk_2864AE028;
LABEL_39:
      v48 = sub_2529FC004(v49);
    }

    if (*(v48 + 16))
    {
      v50 = *(v48 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v51 = sub_252E37F14();
      v52 = -1 << *(v48 + 32);
      v53 = v51 & ~v52;
      if ((*(v48 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
      {
        v54 = ~v52;
        while (*(*(v48 + 48) + 8 * v53) != 29)
        {
          v53 = (v53 + 1) & v54;
          if (((*(v48 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_51;
      }
    }

LABEL_45:

    v55 = sub_252D4FE78(29);

    v13 = v67;
    v12 = v68;
    v16 = v7 + 32;
    v15 = v7 & 0xC000000000000001;
    if (v55)
    {
      goto LABEL_70;
    }
  }

LABEL_70:
  sub_252929F10(v7, 0);
LABEL_53:
  if ((sub_252AABAA0() & 1) == 0)
  {
    v56 = 0;
    v57 = *(v69 + 16);
    v12 = v69 + 32;
    while (v57 != v56)
    {
      if (v56 >= *(v69 + 16))
      {
        __break(1u);
        goto LABEL_74;
      }

      v58 = *(v12 + v56);
      if (StateSemantic.rawValue.getter() == 28271 && v59 == 0xE200000000000000)
      {
        goto LABEL_63;
      }

      v60 = sub_252E37DB4();

      if (v60)
      {
        goto LABEL_64;
      }

      if (StateSemantic.rawValue.getter() == 6710895 && v61 == 0xE300000000000000)
      {
LABEL_63:

LABEL_64:
        v62 = [a1 userTask];
        if (v62)
        {
          v63 = v62;
          v64 = [v62 attribute];

          return (v64 == 6);
        }

        sub_252C515AC();
        return 0;
      }

      v7 = sub_252E37DB4();

      ++v56;
      if (v7)
      {
        goto LABEL_64;
      }
    }
  }

  return 0;
}

id sub_252BD039C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeAttributeValue();
  v25 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  v6 = v4;
  v7 = (a1 + 32);
  while (v6)
  {
    if (sub_252A9AD58(*v7) == 0xD000000000000015 && 0x8000000252E648D0 == v8)
    {
      v11 = 1413563720;
LABEL_16:

      goto LABEL_25;
    }

    v10 = sub_252E37DB4();

    ++v7;
    --v6;
    if (v10)
    {
      v11 = 1413563720;
LABEL_25:
      v21 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v11, 0xE400000000000000, 0);

      return v21;
    }
  }

  v12 = *(a2 + 16);
  v13 = (a2 + 32);
  v14 = v12;
  v15 = (a2 + 32);
  while (v14)
  {
    v27 = *v15;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x726574616568 && v17 == 0xE600000000000000)
    {
      v11 = 1413563720;

      goto LABEL_25;
    }

    v16 = sub_252E37DB4();

    ++v15;
    --v14;
    if (v16)
    {
      v11 = 1413563720;
      goto LABEL_25;
    }
  }

  while (v4)
  {
    if (sub_252A9AD58(*v5) == 0xD000000000000015 && 0x8000000252E64760 == v18)
    {
      v11 = 1280266051;
      goto LABEL_16;
    }

    v20 = sub_252E37DB4();

    ++v5;
    --v4;
    if (v20)
    {
LABEL_23:
      v11 = 1280266051;
      goto LABEL_25;
    }
  }

  while (v12)
  {
    v26 = *v13;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x72656C6F6F63 && v24 == 0xE600000000000000)
    {
      v11 = 1280266051;
      goto LABEL_16;
    }

    v23 = sub_252E37DB4();

    ++v13;
    --v12;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  return v25;
}

void *sub_252BD0660(void *a1, const void *a2)
{
  memcpy(__dst, a2, 0x1F8uLL);
  v3 = [a1 filters];
  if (!v3)
  {
    sub_2529318DC();
    result = swift_allocError();
    *v12 = 1;
    return result;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  type metadata accessor for HomeStore();
  v6 = static HomeStore.shared.getter();
  v7 = HomeStore.services(matching:supporting:)(v5, 0);
  v9 = v8;

  if (v9)
  {
    sub_252929F10(v7, 1);

    sub_2529318DC();
    result = swift_allocError();
    *v11 = 15;
    return result;
  }

  v88 = v5;
  if (v7 >> 62)
  {
LABEL_44:
    v13 = sub_252E378C4();
    if (v13)
    {
LABEL_7:
      v86 = a1;
      v14 = 0;
      a1 = (v7 & 0xC000000000000001);
      do
      {
        if (a1)
        {
          v15 = MEMORY[0x2530ADF00](v14, v7);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v14 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v15 = *(v7 + 8 * v14 + 32);

          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        v17 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v18 = sub_252E36F34();
        v20 = v19;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v21 = off_27F546230;
        if (*(off_27F546230 + 2) && (v22 = sub_252A44A10(v18, v20), (v23 & 1) != 0))
        {
          v24 = *(v21[7] + 8 * v22);

          if (v24 == 3)
          {
            v85 = 1;
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v14;
      }

      while (v16 != v13);
      v85 = 0;
LABEL_23:
      v25 = 0;
      do
      {
        if (a1)
        {
          v26 = MEMORY[0x2530ADF00](v25, v7);
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v25 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v26 = *(v7 + 8 * v25 + 32);

          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_42;
          }
        }

        v28 = [*(v26 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v29 = sub_252E36F34();
        v31 = v30;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v32 = off_27F546230;
        if (*(off_27F546230 + 2) && (v33 = sub_252A44A10(v29, v31), (v34 & 1) != 0))
        {
          v35 = *(v32[7] + 8 * v33);

          if (v35 == 29)
          {
            v36 = 0;
            goto LABEL_39;
          }
        }

        else
        {
        }

        ++v25;
      }

      while (v27 != v13);
      v36 = 1;
LABEL_39:
      a1 = v86;
      v37 = v85;
      goto LABEL_46;
    }
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v37 = 0;
  v36 = 1;
LABEL_46:
  sub_252929F10(v7, 0);
  v38 = [a1 userTask];
  if (!v38)
  {
    goto LABEL_50;
  }

  v39 = v38;
  v40 = [v38 taskType];

  if (v40 != 4)
  {
    goto LABEL_50;
  }

  if (!v37)
  {
    if (v36)
    {
      v41 = 14;
    }

    else
    {
      v41 = 15;
    }

    goto LABEL_51;
  }

  if (v36)
  {
LABEL_50:
    v41 = 14;
LABEL_51:
    v42 = [a1 userTask];
    if (!v42)
    {
      goto LABEL_55;
    }

    v43 = v42;
    v44 = [v42 taskType];

    if (v44 != 1)
    {
      goto LABEL_55;
    }

    if ((v37 | v36))
    {
      memcpy(__src, __dst, sizeof(__src));
      if (sub_252956B94(__src) != 1)
      {
        v87 = a1;
        v57 = __src[24];
        v58 = *(__src[24] + 16);
        sub_2529D291C(__dst, v89);

        a1 = 0;
        while (v58 != a1)
        {
          if (a1 >= *(v57 + 16))
          {
            __break(1u);
            goto LABEL_107;
          }

          v89[0] = *(a1 + v57 + 32);
          if (StateSemantic.rawValue.getter() == 28271 && v60 == 0xE200000000000000)
          {

LABEL_96:

            memcpy(v89, __src, sizeof(v89));
            sub_252A15750();
            v45 = sub_252BD039C(v73, __src[17]);

            goto LABEL_101;
          }

          a1 = (a1 + 1);
          v59 = sub_252E37DB4();

          if (v59)
          {
            goto LABEL_96;
          }
        }

        sub_25299F5D4(__dst);
        v65 = __dst[24];
        a1 = *(__dst[24] + 16);
        sub_2529D291C(__dst, v89);

        v66 = 0;
        while (1)
        {
          if (a1 == v66)
          {

            sub_25299F5D4(__dst);
            v45 = 0;
            goto LABEL_102;
          }

          if (v66 >= *(v65 + 16))
          {
            goto LABEL_108;
          }

          v89[0] = *(v66 + v65 + 32);
          if (StateSemantic.rawValue.getter() == 6710895 && v68 == 0xE300000000000000)
          {
            break;
          }

          v66 = (v66 + 1);
          v67 = sub_252E37DB4();

          if (v67)
          {
            goto LABEL_100;
          }
        }

LABEL_100:

        type metadata accessor for HomeAttributeValue();
        v45 = HomeAttributeValue.__allocating_init(stringValue:unit:)(4605519, 0xE300000000000000, 0);
LABEL_101:
        sub_25299F5D4(__dst);
LABEL_102:
        a1 = v87;
        goto LABEL_56;
      }

LABEL_55:
      v45 = 0;
LABEL_56:
      type metadata accessor for ControlHomeIntent.Builder();
      swift_allocObject();
      v46 = ControlHomeIntent.Builder.init()();
      v47 = [a1 userTask];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 taskType];
      }

      else
      {
        v49 = 4;
      }

      v50 = (*(*v46 + 192))(v49, v41, v45);

      v51 = sub_252B4EEFC(v88);

      v52 = (*(*v50 + 208))(v51);

      v54 = (*(*v52 + 224))(v53);

      return v54;
    }

    memcpy(__src, __dst, sizeof(__src));
    if (sub_252956B94(__src) == 1)
    {
      v55 = 0;
LABEL_105:
      type metadata accessor for ControlHomeIntent.Builder();
      swift_allocObject();
      v80 = ControlHomeIntent.Builder.init()();
      v81 = (*(*v80 + 192))(1, 27, v55);

      v82 = sub_252B4EEFC(v88);

      v83 = (*(*v81 + 208))(v82);

      v54 = (*(*v83 + 224))(v84);

      return v54;
    }

    a1 = __src[24];
    v61 = *(__src[24] + 16);
    sub_2529D291C(__dst, v89);

    v62 = 0;
    while (1)
    {
      if (v61 == v62)
      {

        sub_25299F5D4(__dst);
        a1 = __dst[24];
        v69 = *(__dst[24] + 16);
        sub_2529D291C(__dst, v89);

        v70 = 0;
        while (1)
        {
          if (v69 == v70)
          {

            sub_25299F5D4(__dst);
            v55 = 0;
            goto LABEL_105;
          }

          if (v70 >= a1[2])
          {
            goto LABEL_109;
          }

          v89[0] = *(a1 + v70 + 32);
          if (StateSemantic.rawValue.getter() == 6710895 && v72 == 0xE300000000000000)
          {
            break;
          }

          ++v70;
          v71 = sub_252E37DB4();

          if (v71)
          {
            goto LABEL_103;
          }
        }

LABEL_103:

        v77 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v78 = sub_252E36F04();
        v79 = [v77 initWithIdentifier:0 displayString:v78];

        v55 = v79;
        [v55 setBoolValue_];
        goto LABEL_104;
      }

      if (v62 >= a1[2])
      {
        break;
      }

      v89[0] = *(a1 + v62 + 32);
      if (StateSemantic.rawValue.getter() == 28271 && v64 == 0xE200000000000000)
      {

LABEL_97:

        v74 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v75 = sub_252E36F04();
        v76 = [v74 initWithIdentifier:0 displayString:v75];

        v55 = v76;
        [v55 setBoolValue_];
LABEL_104:
        [v55 setType_];

        sub_25299F5D4(__dst);
        goto LABEL_105;
      }

      ++v62;
      v63 = sub_252E37DB4();

      if (v63)
      {
        goto LABEL_97;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (qword_27F53F500 != -1)
  {
LABEL_110:
    swift_once();
  }

  v56 = sub_252E36AD4();
  __swift_project_value_buffer(v56, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000005ALL, 0x8000000252E86E90, 0xD000000000000091, 0x8000000252E86EF0);
  return a1;
}

uint64_t sub_252BD11F8(uint64_t a1)
{
  v2[192] = v1;
  v2[191] = a1;
  v3 = *(*(sub_252E34104() - 8) + 64) + 15;
  v2[193] = swift_task_alloc();
  v4 = sub_252E339C4();
  v2[194] = v4;
  v5 = *(v4 - 8);
  v2[195] = v5;
  v6 = *(v5 + 64) + 15;
  v2[196] = swift_task_alloc();
  v7 = sub_252E34164();
  v2[197] = v7;
  v8 = *(v7 - 8);
  v2[198] = v8;
  v9 = *(v8 + 64) + 15;
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BD1350, 0, 0);
}

uint64_t sub_252BD1350()
{
  v19 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v16 = v0[195];
  v17 = v0[194];
  v13 = v0[193];
  v14 = v0[196];
  v5 = v0[192];
  v15 = v0[191];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544DA8);
  sub_252CC4050(0xD000000000000025, 0x8000000252E86F90, 0xD000000000000085, 0x8000000252E86FC0, 0x2865747563657865, 0xE900000000000029, 40);
  memcpy(v0 + 65, (v5 + 16), 0x1F8uLL);
  memcpy(__dst, (v5 + 16), 0x1F8uLL);
  v7 = *(v3 + 16);
  v7(v2, v5 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse, v4);
  sub_2529353AC((v0 + 65), (v0 + 128));
  sub_25294D744(__dst, v2, v1);
  v8 = *(v3 + 8);
  v8(v2, v4);
  memcpy(v0 + 2, __dst, 0x1F8uLL);
  sub_252935408((v0 + 2));
  v9 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_systemCommandsPluginBundleID);
  v10 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_systemCommandsPluginBundleID + 8);
  v7(v2, v1, v4);

  sub_252E340F4();
  sub_252E339B4();
  sub_252E33B34();
  (*(v16 + 8))(v14, v17);
  v8(v1, v4);

  v11 = v0[1];

  return v11();
}

uint64_t ControlHomeLockReformationFlow.deinit()
{
  memcpy(v5, (v0 + 16), 0x1F8uLL);
  sub_252935408(v5);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_systemCommandsPluginBundleID + 8);

  return v0;
}

uint64_t ControlHomeLockReformationFlow.__deallocating_deinit()
{
  memcpy(v7, (v0 + 16), 0x1F8uLL);
  sub_252935408(v7);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_systemCommandsPluginBundleID + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_252BD173C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252BD11F8(a1);
}

uint64_t sub_252BD17D8()
{
  type metadata accessor for ControlHomeLockReformationFlow();

  return sub_252E33644();
}

uint64_t sub_252BD1814@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ControlHomeLockReformationFlow();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = (v9 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_systemCommandsPluginBundleID);
  *v10 = 0xD00000000000002FLL;
  v10[1] = 0x8000000252E870F0;
  memcpy((v9 + 16), a1, 0x1F8uLL);
  v11 = OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse;
  v12 = sub_252E34164();
  result = (*(*(v12 - 8) + 32))(v9 + v11, a2, v12);
  *a3 = v9;
  return result;
}

uint64_t type metadata accessor for ControlHomeLockReformationFlow()
{
  result = qword_27F543C20;
  if (!qword_27F543C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BD1934()
{
  result = sub_252E34164();
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

uint64_t dispatch thunk of ControlHomeLockReformationFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t sub_252BD1B5C(void (**a1)(char *, uint64_t))
{
  v72 = a1;
  v76 = sub_252E34494();
  v73 = *(v76 - 8);
  v1 = *(v73 + 64);
  v2 = MEMORY[0x28223BE20](v76);
  v74 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v75 = &v59 - v4;
  v5 = sub_252E343C4();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_252E34244();
  v62 = *(v63 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E34284();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540320, &qword_252E3C1A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v59 - v16;
  v17 = sub_252E34354();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v67 = &v59 - v23;
  v24 = sub_252E341A4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_252E34164();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33, v72, v29);
  if ((*(v30 + 88))(v33, v29) != *MEMORY[0x277D5C160])
  {
    (*(v30 + 8))(v33, v29);
    return 0;
  }

  (*(v30 + 96))(v33, v29);
  v61 = v25;
  v34 = *(v25 + 4);
  v59 = v24;
  v34(v28, v33, v24);
  v60 = v28;
  sub_252E34184();
  v35 = sub_252E34254();
  (*(v70 + 8))(v13, v71);
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = 0;
    while (v37 < *(v35 + 16))
    {
      (*(v18 + 16))(v22, v35 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v37, v17);
      if (sub_252E342C4())
      {

        v39 = v68;
        (*(v18 + 32))(v68, v22, v17);
        v38 = 0;
        goto LABEL_10;
      }

      ++v37;
      (*(v18 + 8))(v22, v17);
      if (v36 == v37)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_7:

  v38 = 1;
  v39 = v68;
LABEL_10:
  (*(v18 + 56))(v39, v38, 1, v17);
  if ((*(v18 + 48))(v39, 1, v17) == 1)
  {
    sub_25293847C(v39, &qword_27F540320, &qword_252E3C1A0);
    v35 = v59;
    v36 = v60;
    if (qword_27F53F4F8 == -1)
    {
LABEL_12:
      v40 = sub_252E36AD4();
      __swift_project_value_buffer(v40, qword_27F544D90);
      sub_252CC4050(0xD000000000000012, 0x8000000252E870B0, 0xD000000000000085, 0x8000000252E86FC0, 0xD000000000000013, 0x8000000252E870D0, 67);
      v61[1](v36, v35);
      return 0;
    }

LABEL_42:
    swift_once();
    goto LABEL_12;
  }

  (*(v18 + 32))(v67, v39, v17);
  v41 = v64;
  sub_252E34314();
  sub_252E34394();
  (*(v65 + 8))(v41, v66);
  sub_252E342D4();
  sub_252E34DA4();

  sub_252AEA788(v79, v77);
  v42 = v60;
  if (v78)
  {
    sub_252E34F84();
    v43 = swift_dynamicCast();
    v36 = v61;
    if (v43)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_25293847C(v77, &qword_27F541E80, &qword_252E3DFA0);
    v36 = v61;
  }

  sub_252AEA788(v79, v77);
  if (!v78)
  {
    sub_25293847C(v79, &qword_27F541E80, &qword_252E3DFA0);
    (*(v62 + 8))(v69, v63);
    (*(v18 + 8))(v67, v17);
    (*(v36 + 1))(v42, v59);
    sub_25293847C(v77, &qword_27F541E80, &qword_252E3DFA0);
    return 0;
  }

  sub_252E35034();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_25293847C(v79, &qword_27F541E80, &qword_252E3DFA0);
    (*(v62 + 8))(v69, v63);
    (*(v18 + 8))(v67, v17);
    (*(v36 + 1))(v42, v59);
    return 0;
  }

LABEL_19:

  v35 = sub_252E34234();
  v44 = 0;
  v70 = *(v35 + 16);
  v71 = v73 + 16;
  v72 = (v73 + 8);
  while (v70 != v44)
  {
    if (v44 >= *(v35 + 16))
    {
      goto LABEL_40;
    }

    v47 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v48 = *(v73 + 72);
    v36 = *(v73 + 16);
    (v36)(v75, v35 + v47 + v48 * v44, v76);
    if (sub_252E34484() == 1852141679 && v49 == 0xE400000000000000)
    {

      v46 = *v72;
      (*v72)(v75, v76);
LABEL_26:
      v50 = v35 + v47;
      v75 = -v70;
      v51 = -1;
      while (&v75[v51] != -1)
      {
        if (++v51 >= *(v35 + 16))
        {
          goto LABEL_41;
        }

        (v36)(v74, v50, v76);
        if (sub_252E34484() == 0x6B636F4C726F6F64 && v53 == 0xE800000000000000)
        {

          v46(v74, v76);
LABEL_33:

          v54 = 1;
          goto LABEL_35;
        }

        v50 += v48;
        v52 = sub_252E37DB4();

        v46(v74, v76);
        if (v52)
        {
          goto LABEL_33;
        }
      }

      break;
    }

    ++v44;
    v45 = sub_252E37DB4();

    v46 = *v72;
    (*v72)(v75, v76);
    if (v45)
    {
      goto LABEL_26;
    }
  }

  v54 = 0;
LABEL_35:
  v55 = v61;
  v56 = v63;
  v57 = v60;
  sub_25293847C(v79, &qword_27F541E80, &qword_252E3DFA0);
  (*(v62 + 8))(v69, v56);
  (*(v18 + 8))(v67, v17);
  v55[1](v57, v59);
  return v54;
}

uint64_t sub_252BD2734(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v3 = sub_252E33D64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), v21);

  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_252E33D44();
  v9 = sub_252E33864();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v21);
  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  v11 = v10[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v11 == 2 || (v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = static HomeStore.shared.getter();
  v13 = sub_2529D8DC0();

  v14 = v13 >> 62 ? sub_252E378C4() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v14)
  {
    v15 = static HomeStore.shared.getter();
    v16 = sub_2529D9D50();

    v17 = v16 >> 62 ? sub_252E378C4() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      goto LABEL_11;
    }
  }

  if ((sub_252BD1B5C(a2) & 1) == 0)
  {
LABEL_11:
    v18 = 0;
  }

  else
  {
    v18 = v9 ^ 1;
  }

  return v18 & 1;
}

uint64_t CallToActionSnippetModel.init(callToActionButtonLabel:callToActionDirectInvocation:shouldDisplay:)@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CallToActionSnippetModel();
  *(a2 + *(v4 + 24)) = a1;
  sub_252E330C4();
  v5 = *(v4 + 20);
  sub_252A75B60();
  return sub_252E33054();
}

uint64_t type metadata accessor for CallToActionSnippetModel()
{
  result = qword_27F543C48;
  if (!qword_27F543C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t CallToActionSnippetModel.description.getter()
{
  v1 = v0;
  sub_252E379F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570]();

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E87140);

  sub_252E379F4();

  v2 = type metadata accessor for CallToActionSnippetModel();
  v3 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v4 = sub_252E33074();
  v5 = [v4 description];
  v6 = sub_252E36F34();
  v8 = v7;

  MEMORY[0x2530AD570](v6, v8);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E87160);

  sub_252E379F4();

  if (*(v1 + *(v2 + 24)))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + *(v2 + 24)))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v9, v10);

  MEMORY[0x2530AD570](0x6944646C756F6873, 0xEF203A79616C7073);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t CallToActionSnippetModel.callToActionButtonLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t (*CallToActionSnippetModel.callToActionButtonLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.getter()
{
  v0 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252BD2DB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252BD2E10(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.setter()
{
  v0 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t (*CallToActionSnippetModel.callToActionDirectInvocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_252AA9630;
}

uint64_t CallToActionSnippetModel.shouldDisplay.setter(char a1)
{
  result = type metadata accessor for CallToActionSnippetModel();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_252BD3004(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED000079616C7073;
  v3 = 0x6944646C756F6873;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0x6944646C756F6873;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000252E680C0;
  }

  else
  {
    v6 = 0xED000079616C7073;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000252E680A0;
  }

  if (*a2 == 1)
  {
    v3 = 0xD00000000000001CLL;
    v2 = 0x8000000252E680C0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000252E680A0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252BD30EC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BD31A0()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252BD3240()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BD32F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252BD3F04();
  *a2 = result;
  return result;
}

void sub_252BD3320(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000079616C7073;
  v4 = 0x6944646C756F6873;
  if (v2 == 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x8000000252E680C0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v5)
  {
    v3 = 0x8000000252E680A0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_252BD3390()
{
  v1 = 0x6944646C756F6873;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_252BD33FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252BD3F04();
  *a1 = result;
  return result;
}

uint64_t sub_252BD3424(uint64_t a1)
{
  v2 = sub_252BD38C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BD3460(uint64_t a1)
{
  v2 = sub_252BD38C8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall CallToActionSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E72000;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t CallToActionSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C30, &qword_252E51080);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CallToActionSnippetModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BD38C8();
  v27 = v9;
  v15 = v31;
  sub_252E37F74();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v10;
  v16 = v13;
  v17 = v25;
  LOBYTE(v29) = 0;
  v29 = sub_252E37C04();
  v30 = v18;
  sub_252E330C4();
  LOBYTE(v29) = 1;
  sub_252AA8EEC(&qword_27F542A30);
  sub_252E37C64();
  sub_252E33074();
  (*(v17 + 8))(v6, v3);
  v19 = v31;
  v20 = *(v31 + 20);
  sub_252A75B60();
  sub_252E33054();
  LOBYTE(v29) = 2;
  v21 = sub_252E37C14();
  (*(v26 + 8))(v27, v28);
  *(v16 + *(v19 + 24)) = v21 & 1;
  sub_252A75AFC(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_252A73C58(v16);
}

unint64_t sub_252BD38C8()
{
  result = qword_27F543C38;
  if (!qword_27F543C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543C38);
  }

  return result;
}

uint64_t CallToActionSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C40, &qword_252E51088);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BD38C8();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v21) = 0;
  v14 = v22;
  sub_252E37CF4();
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {

    v16 = type metadata accessor for CallToActionSnippetModel();
    v17 = v2 + *(v16 + 20);
    sub_252E33074();
    sub_252A75B60();
    sub_252E33054();
    LOBYTE(v21) = 1;
    sub_252AA8EEC(&qword_27F542A58);
    sub_252E37D54();
    (*(v20 + 8))(v7, v4);
    v18 = *(v2 + *(v16 + 24));
    LOBYTE(v21) = 2;
    sub_252E37D04();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_252BD3C6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallToActionSnippetModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_252BD3D08()
{
  sub_252ACF134();
  if (v0 <= 0x3F)
  {
    sub_252BD3D94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252BD3D94()
{
  if (!qword_27F542A88)
  {
    sub_252A75B60();
    v0 = sub_252E33094();
    if (!v1)
    {
      atomic_store(v0, &qword_27F542A88);
    }
  }
}

unint64_t sub_252BD3E00()
{
  result = qword_27F543C58;
  if (!qword_27F543C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543C58);
  }

  return result;
}

unint64_t sub_252BD3E58()
{
  result = qword_27F543C60;
  if (!qword_27F543C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543C60);
  }

  return result;
}

unint64_t sub_252BD3EB0()
{
  result = qword_27F543C68;
  if (!qword_27F543C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543C68);
  }

  return result;
}

uint64_t sub_252BD3F04()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252BD3F94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemoveHomeIfNoMatchingEntities();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252BD3FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 376);
  if ((sub_252C513DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = sub_2529D8DC0();

  v5 = v4 >> 62 ? sub_252E378C4() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v5 < 2)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = (v2 + 32);

  v8 = (v2 + 32);
  while (2)
  {
    if (v6)
    {
      switch(*v8)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          v10 = sub_252E37DB4();

          ++v8;
          --v6;
          if ((v10 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      v12 = *(v2 + 16);

      while (2)
      {
        v14 = v12-- != 0;
        v9 = v14;
        if (v14)
        {
          switch(*v7)
          {
            case 5:

              v9 = 1;
              break;
            default:
              v13 = sub_252E37DB4();

              ++v7;
              if ((v13 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    break;
  }

  return v9;
}

uint64_t sub_252BD444C(void *a1)
{
  v2 = [a1 filters];
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    v11 = 0;
    goto LABEL_31;
  }

  v4 = v2;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v32 = v3;
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      MEMORY[0x2530AD700](v9);
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v8;
      if (v3 == i)
      {
        v10 = v32;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  if (v10 >> 62)
  {
    v12 = sub_252E378C4();
    if (v12)
    {
      goto LABEL_19;
    }

LABEL_30:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_30;
  }

LABEL_19:
  v33 = v7;
  result = sub_252E37AB4();
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2530ADF00](v14, v10);
    }

    else
    {
      v15 = *(v10 + 8 * v14 + 32);
    }

    v16 = v15;
    ++v14;
    type metadata accessor for MutableMatterHomeFilter();
    swift_allocObject();
    v17 = sub_2529D0A90(v16);

    v18 = *(v17 + 88);
    *(v17 + 80) = 0;
    *(v17 + 88) = 0;

    sub_252E37A94();
    v19 = *(v33 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
  }

  while (v12 != v14);

  v11 = v33;
LABEL_31:
  v20 = [a1 userTask];
  if (v11)
  {
    if (v11 >> 62)
    {
      goto LABEL_48;
    }

    for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
    {
      v22 = 0;
      while ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v22, v11);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_46;
        }

LABEL_38:
        sub_2529D0538();

        MEMORY[0x2530AD700](v25);
        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v22;
        if (v24 == j)
        {
          v26 = v3;
          goto LABEL_50;
        }
      }

      if (v22 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v23 = *(v11 + 8 * v22 + 32);

      v24 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        goto LABEL_38;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_50:
  }

  else
  {
    v26 = 0;
  }

  v27 = [a1 time];
  v28 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v28 setUserTask_];
  if (v26)
  {
    type metadata accessor for HomeFilter();
    v29 = sub_252E37254();
  }

  else
  {
    v29 = 0;
  }

  [v28 setFilters_];

  [v28 setTime_];
  return v28;
}

uint64_t sub_252BD48D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = sub_252E36324();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BD49FC, 0, 0);
}

uint64_t sub_252BD49FC()
{
  v1 = v0;
  if (v0[15])
  {
    v84 = v0[15];
    v2 = sub_252C2F3B0(5);
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v88 = v3 & 0xFFFFFFFFFFFFFF8;
      v89 = v3 & 0xC000000000000001;
      v87 = (v3 + 32);
      v94 = v1[21];
      v95 = (v94 + 32);
      v6 = MEMORY[0x277D84F90];
      v7 = &off_279711000;
      v85 = i;
      v86 = v3;
      while (1)
      {
        if (v89)
        {
          v8 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *(v88 + 16))
          {
            goto LABEL_67;
          }

          v8 = *&v87[8 * v5];
        }

        v9 = v8;
        v10 = __OFADD__(v5++, 1);
        if (v10)
        {
          break;
        }

        v11 = [v8 taskResponses];
        if (v11)
        {
          v12 = v11;
          v90 = v9;
          type metadata accessor for HomeUserTaskResponse();
          v13 = sub_252E37264();

          if (v13 >> 62)
          {
            v14 = sub_252E378C4();
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v91 = v5;
          v92 = v6;
          v93 = v13;
          if (v14)
          {
            v3 = 0;
            v97 = v13 & 0xC000000000000001;
            v15 = v13 & 0xFFFFFFFFFFFFFF8;
            v16 = v13 + 32;
            v96 = MEMORY[0x277D84F90];
            v17 = &off_279711000;
            while (1)
            {
              if (v97)
              {
                v18 = MEMORY[0x2530ADF00](v3, v93);
              }

              else
              {
                if (v3 >= *(v15 + 16))
                {
                  goto LABEL_65;
                }

                v18 = *(v16 + 8 * v3);
              }

              v19 = v18;
              v10 = __OFADD__(v3++, 1);
              if (v10)
              {
                break;
              }

              v20 = [v18 v7[214]];
              if (v20 && (v21 = v20, v22 = [v20 v17[206]], v21, v22) && (v23 = objc_msgSend(v22, sel_stringValue), v22, v23))
              {
                v24 = sub_252E36F34();
                v26 = v25;

                v27 = COERCE_DOUBLE(sub_252C5C088(v24, v26));
                if (v30)
                {

                  v17 = &off_279711000;
                }

                else
                {
                  if (qword_27F53F428 != -1)
                  {
                    v54 = v27;
                    v55 = v1;
                    v56 = v28;
                    v57 = v29;
                    swift_once();
                    v29 = v57;
                    v28 = v56;
                    v1 = v55;
                    v27 = v54;
                  }

                  v31 = *(qword_27F575A90 + 16);
                  if (v31)
                  {
                    v32 = (qword_27F575A90 + 56);
                    v33 = -1.0;
                    do
                    {
                      v34 = *(v32 - 12);
                      v35 = *(v32 - 2);
                      v36 = *(v32 - 1);
                      v37 = *v32;
                      v32 += 4;
                      v38 = v35 + 360.0;
                      v39 = (v36 - v28) * (v36 - v28);
                      v40 = (v37 - v29) * (v37 - v29);
                      v41 = sqrt((v35 - v27) * (v35 - v27) + v39 + v40);
                      v42 = sqrt((v38 - v27) * (v38 - v27) + v39 + v40);
                      if (v42 < v41)
                      {
                        v41 = v42;
                      }

                      v43 = v33 == -1.0;
                      if (v41 < v33)
                      {
                        v43 = 1;
                      }

                      if (v43)
                      {
                        v33 = v41;
                      }

                      --v31;
                    }

                    while (v31);
                  }

                  v45 = v1[22];
                  v44 = v1[23];
                  v46 = v1;
                  v47 = v1[20];
                  HueSemantic.rawValue.getter();
                  sub_252E362F4();

                  v48 = *v95;
                  (*v95)(v44, v45, v47);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v96 = sub_2529F7F74(0, v96[2] + 1, 1, v96);
                  }

                  v17 = &off_279711000;
                  v50 = v96[2];
                  v49 = v96[3];
                  if (v50 >= v49 >> 1)
                  {
                    v96 = sub_2529F7F74(v49 > 1, v50 + 1, 1, v96);
                  }

                  v51 = v46[23];
                  v52 = v46[20];
                  v96[2] = v50 + 1;
                  v53 = v96 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v50;
                  v1 = v46;
                  v48(v53, v51, v52);
                  v7 = &off_279711000;
                }
              }

              else
              {
              }

              if (v3 == v14)
              {
                goto LABEL_46;
              }
            }

            __break(1u);
LABEL_65:
            __break(1u);
            break;
          }

          v96 = MEMORY[0x277D84F90];
LABEL_46:

          i = v85;
          v3 = v86;
          v5 = v91;
          v6 = v92;
          v9 = v90;
          v58 = v96;
        }

        else
        {
          v58 = MEMORY[0x277D84F90];
        }

        v59 = v58[2];
        v60 = v6[2];
        v61 = v60 + v59;
        if (__OFADD__(v60, v59))
        {
          goto LABEL_68;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v61 > v6[3] >> 1)
        {
          if (v60 <= v61)
          {
            v63 = v60 + v59;
          }

          else
          {
            v63 = v60;
          }

          v6 = sub_2529F7F74(isUniquelyReferenced_nonNull_native, v63, 1, v6);
        }

        v7 = &off_279711000;
        if (v58[2])
        {
          if ((v6[3] >> 1) - v6[2] < v59)
          {
            goto LABEL_70;
          }

          v64 = v1[20];
          v65 = (*(v94 + 80) + 32) & ~*(v94 + 80);
          v66 = *(v94 + 72);
          swift_arrayInitWithCopy();

          if (v59)
          {
            v67 = v6[2];
            v10 = __OFADD__(v67, v59);
            v68 = v67 + v59;
            if (v10)
            {
              goto LABEL_71;
            }

            v6[2] = v68;
          }
        }

        else
        {

          if (v59)
          {
            goto LABEL_69;
          }
        }

        if (v5 == i)
        {
          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_74:
    v1[24] = v6;
    v75 = v1[16];

    v76 = v84;
    sub_252929E74(v75 + 24, (v1 + 2));
    v77 = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v78 = sub_252DF8B58(v6);

    v79 = *v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v80 = swift_allocObject();
    v1[25] = v80;
    *(v80 + 16) = xmmword_252E3C3C0;
    *(v80 + 32) = 0x73726F6C6F63;
    *(v80 + 40) = 0xE600000000000000;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(v80 + 48) = v78;
    *(v80 + 72) = v81;
    *(v80 + 80) = 0xD000000000000017;
    *(v80 + 88) = 0x8000000252E6FE70;
    *(v80 + 120) = MEMORY[0x277D839B0];
    v82 = *(MEMORY[0x277D55BE8] + 4);
    v98 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v80 + 96) = 0;
    v83 = swift_task_alloc();
    v1[26] = v83;
    *v83 = v1;
    v83[1] = sub_252BD51A8;

    return v98(0xD000000000000017, 0x8000000252E87200, v80);
  }

  else
  {
    sub_2529318DC();
    swift_allocError();
    *v69 = 6;
    swift_willThrow();
    v71 = v0[22];
    v70 = v0[23];
    v72 = v0[19];

    v73 = v0[1];

    return v73();
  }
}

uint64_t sub_252BD51A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v8 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = sub_252BD5478;
  }

  else
  {
    v6 = v3[25];

    v5 = sub_252BD52C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BD52C4()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_252BD5364;
  v3 = v0[16];

  return sub_252E174F4(v1);
}

uint64_t sub_252BD5364(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_252BD567C;
  }

  else
  {
    v5 = sub_252BD5520;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BD5478()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[15];
  v3 = v0[16];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[28];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252BD5520()
{
  v1 = v0[27];
  v0[12] = v1;
  v2 = v0 + 12;
  v3 = v0[30];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[19];
  v9 = v0[16];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[32] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_252BD5720;
  v13 = v0[19];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252BD567C()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  v4 = *(v0 + 248);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 152);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252BD5720()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v4 = sub_252BD59E4;
  }

  else
  {
    v5 = v2[32];
    (*(v2[18] + 8))(v2[19], v2[17]);

    v4 = sub_252BD5870;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BD5870()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 240);
  v9 = *(v0 + 216);
  v10 = *(v0 + 192);
  v16 = *(v0 + 184);
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252BD59E4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 192);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);

  v6 = *(v0 + 272);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 152);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252BD5AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252BD48D0(a1, a2, a3);
}

void *sub_252BD5B88@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetColorResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252BD5BEC(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_7:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  if ([v2 taskType] == 4)
  {

    goto LABEL_5;
  }

  v4 = [v3 taskType];

  if (v4 == 5)
  {
LABEL_5:
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 5;
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_252BD5CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E32BA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_252E35B54();
  if (a1)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v12 = *(v5 + 16);
      v11 = v5 + 16;
      v13 = *(v11 + 64);
      v43[1] = a1;
      v44 = v8;
      v14 = a1 + ((v13 + 32) & ~v13);
      v57 = *(v11 + 56);
      v58 = v12;
      v56 = (v11 - 8);
      v46 = v4;
      v47 = a2;
      v45 = v11;
      while (1)
      {
        v61 = v10;
        v59 = v14;
        v58(v8);
        v16 = sub_252E35BA4();
        v60 = v43;
        v17 = *(v16 - 8);
        v18 = *(v17 + 64);
        MEMORY[0x28223BE20](v16);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C70, &qword_252E51318);
        v62 = v43;
        v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v19 - 8);
        v22 = v43 - v21;
        v23 = sub_252E32B84();
        if ((v24 & 1) == 0)
        {
          if (v23 <= 3)
          {
            switch(v23)
            {
              case 1:
                sub_252E35B34();
                goto LABEL_22;
              case 2:
                sub_252E35B24();
                goto LABEL_22;
              case 3:
                sub_252E35B44();
                goto LABEL_22;
            }
          }

          else
          {
            if (v23 <= 5)
            {
              if (v23 == 4)
              {
                sub_252E35B94();
              }

              else
              {
                sub_252E35B84();
              }

LABEL_22:
              (*(v17 + 56))(v22, 0, 1, v16);
              v51 = *(v17 + 32);
              v52 = v17 + 32;
              v25 = v51(v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v16);
              v62 = v43;
              v26 = MEMORY[0x28223BE20](v25);
              v27 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
              MEMORY[0x28223BE20](v26);
              v49 = *(v17 + 16);
              v50 = v28;
              v49(v43 - v28, a2, v16);
              v48 = sub_252BD63B8(&qword_27F543C78);
              sub_252E37804();
              sub_252BD63B8(&qword_27F543C80);
              v29 = sub_252E36EF4();
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C88, &qword_252E51320);
              v55 = v43;
              v31 = *(*(v30 - 8) + 64);
              v32 = MEMORY[0x28223BE20](v30);
              v34 = v43 - v33;
              v53 = *(v32 + 48);
              v54 = v32;
              *(v43 - v33) = (v29 & 1) == 0;
              v35 = *(v17 + 8);
              if (v29)
              {
                v36 = *(v17 + 8);
                v35(v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
                v37 = v44;
                v4 = v46;
                (*v56)(v44, v46);
                v38 = v27;
                v8 = v37;
                v39 = v51(&v53[v34], v38, v16);
              }

              else
              {
                v40 = *(v17 + 8);
                v35(v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
                v41 = v49;
                v42 = (v49)(&v53[v34], v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
                v53 = v43;
                MEMORY[0x28223BE20](v42);
                v41(v43 - v50, v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
                sub_252E37814();
                v36 = v40;
                v40(v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
                v8 = v44;
                v4 = v46;
                v39 = (*v56)(v44, v46);
              }

              v15 = v61;
              MEMORY[0x28223BE20](v39);
              sub_252BD63FC(v34, v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
              v36(v43 + *(v54 + 48) - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
              a2 = v47;
              goto LABEL_5;
            }

            if (v23 == 6)
            {
              sub_252E35B14();
              goto LABEL_22;
            }

            if (v23 == 7)
            {
              sub_252E35B74();
              goto LABEL_22;
            }
          }
        }

        (*(v17 + 56))(v22, 1, 1, v16);
        (*v56)(v8, v4);
        sub_252BD6350(v22);
        v15 = v61;
LABEL_5:
        v14 = v59 + v57;
        v10 = v15 - 1;
        if (!v10)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_252BD6350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C70, &qword_252E51318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BD63B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_252E35BA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BD63FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C88, &qword_252E51320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252BD646C@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_252938BBC(v6);
    if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
    {
      v12 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

      sub_25296EBC4(a1);
    }

    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
    sub_252E37024();
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, v6, v7);
    v14(a1, v11, v7);
  }

  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t HomeAutomationEntityStateValue.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252956C1C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_252938BBC(v4);
    if (*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
    {
      v10 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

      HomeAutomationAbstractMeasurement.hash(into:)();
    }

    else
    {
      v12 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
      return sub_252E37EE4();
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_252E36304();
    sub_252E37044();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t HomeAutomationEntityStateValue.hashValue.getter()
{
  sub_252E37EC4();
  HomeAutomationEntityStateValue.hash(into:)();
  return sub_252E37F14();
}

uint64_t sub_252BD68C4()
{
  v1 = *v0;
  sub_252E37EC4();
  HomeAutomationEntityStateValue.hash(into:)();
  return sub_252E37F14();
}

uint64_t sub_252BD692C()
{
  sub_252E37EC4();
  v1 = *v0;
  HomeAutomationEntityStateValue.hash(into:)();
  return sub_252E37F14();
}

uint64_t _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = sub_252E36324();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v44 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v45 = &v43 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v43 - v25;
  v27 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
  v47 = a1;
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v14);
  v28 = v16[6];
  if (v28(v14, 1, v15) != 1)
  {
    v34 = v16[4];
    v34(v26, v14, v15);
    sub_252956C1C(v48 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v12);
    if (v28(v12, 1, v15) != 1)
    {
      v34(v24, v12, v15);
      v33 = sub_252E362E4();
      v39 = v16[1];
      v39(v24, v15);
      v39(v26, v15);
      return v33 & 1;
    }

    (v16[1])(v26, v15);
    v35 = v12;
    goto LABEL_10;
  }

  sub_252938BBC(v14);
  v29 = v48;
  sub_252956C1C(v48 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v9);
  if (v28(v9, 1, v15) != 1)
  {
    v36 = v16[4];
    v37 = v45;
    v36(v45, v9, v15);
    v38 = v46;
    sub_252956C1C(v47 + v27, v46);
    if (v28(v38, 1, v15) != 1)
    {
      v40 = v44;
      v36(v44, v38, v15);
      v33 = sub_252E362E4();
      v41 = v16[1];
      v41(v40, v15);
      v41(v37, v15);
      return v33 & 1;
    }

    (v16[1])(v37, v15);
    v35 = v38;
LABEL_10:
    sub_252938BBC(v35);
    v33 = 0;
    return v33 & 1;
  }

  sub_252938BBC(v9);
  v30 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  v31 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (!v30)
  {
    if (!v31)
    {
      v33 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) ^ *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) ^ 1;
      return v33 & 1;
    }

    goto LABEL_14;
  }

  if (!v31)
  {
LABEL_14:
    v33 = 0;
    return v33 & 1;
  }

  v32 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  v33 = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v30, v31);

  return v33 & 1;
}

unint64_t sub_252BD6E18()
{
  result = qword_27F543C90;
  if (!qword_27F543C90)
  {
    type metadata accessor for HomeAutomationEntityStateValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543C90);
  }

  return result;
}

HomeAutomationInternal::SnippetHomeDeviceType __swiftcall HomeDeviceType.toSnippetHomeDeviceType()()
{
  if (v0 >= 0x30)
  {
    LOBYTE(v0) = sub_252E37DF4();
    __break(1u);
  }

  else
  {
    *v1 = byte_252E51394[v0];
  }

  return v0;
}

uint64_t sub_252BD6EC0(_BYTE *a1)
{
  type metadata accessor for AutomateHomeIntent();
  type metadata accessor for AutomateHomeIntentResponse();
  sub_252E335C4();
  v2 = 0;
  if (a1[384] != 22)
  {
    LOBYTE(__dst[0]) = a1[384];
    v2 = sub_252AB54DC();
  }

  type metadata accessor for AutomateHomeUnsupportedValueFlowStrategy();
  v3 = swift_allocObject();
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v5 = *(v4 + 22);

  v3[2] = v5;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 136), (v3 + 3));

  v7 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v8 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v3[11] = v8;
  v3[12] = &off_2864BA730;
  v3[8] = v7;
  __dst[0] = v3;
  sub_252BDB394(&qword_27F543D48, type metadata accessor for AutomateHomeUnsupportedValueFlowStrategy);
  sub_252E33544();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D18, &qword_252E51670);
  sub_252E33594();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  sub_252E33574();
  memcpy(__dst, a1, sizeof(__dst));
  type metadata accessor for AutomateHomeHandleIntentStrategy();
  swift_allocObject();
  sub_2529353AC(a1, &v17);
  __dst[0] = sub_252CB1138(__dst);
  sub_252BDB394(&qword_27F543D50, type metadata accessor for AutomateHomeHandleIntentStrategy);
  sub_252E334F4();

  sub_252E33564();
  type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  swift_allocObject();

  __dst[0] = sub_252A9CA80(v9);
  sub_252BDB394(&qword_27F5429C0, type metadata accessor for AutomateHomeNeedsDisambiguationStrategy);
  sub_252E33524();

  sub_252E335B4();
  type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  __dst[0] = v10;
  sub_252BDB394(&qword_27F540E90, type metadata accessor for AutomateHomeNeedsConfirmationStrategy);

  sub_252E33514();

  sub_252E335A4();
  type metadata accessor for AutomateHomeNeedsValueStrategy();
  v11 = swift_allocObject();

  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v13 = *(v12 + 22);

  v11[2] = v13;
  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v14 + 136), (v11 + 3));

  v15 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v11[11] = v8;
  v11[12] = &off_2864BA730;
  v11[8] = v15;
  v11[13] = v2;
  v17 = v11;
  sub_252BDB394(&qword_27F541028, type metadata accessor for AutomateHomeNeedsValueStrategy);
  sub_252E334E4();

  sub_252E33554();
}

uint64_t sub_252BD73C8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BD74A8()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252BD7574()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BD7650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252BDAC80();
  *a2 = result;
  return result;
}

void sub_252BD7680(unint64_t *a1@<X8>)
{
  v2 = 0xEF6E6F697463656CLL;
  v3 = 0x6553746E65746E69;
  v4 = 0xEE00657475636578;
  v5 = 0x456F547964616572;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000252E67F20;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_252BD771C()
{
  sub_25293DEE0(__src);
  memcpy((v0 + 16), __src, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v16 = type metadata accessor for LocationService();
  v17 = &protocol witness table for LocationService;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36C84();
  v5 = __swift_project_value_buffer(v4, qword_27F5432C0);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  sub_252927BEC(&v15, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_locationService);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 16), &v15);

  sub_252927BEC(&v15, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_deviceState);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v8 = *(v7 + 22);

  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_catProvider) = v8;
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v9 + 96), &v15);

  sub_252927BEC(&v15, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputPublisher);
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v10 + 136), &v15);

  sub_252927BEC(&v15, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputGenerator);
  *(v0 + 520) = 0;
  v11 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v12 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_patternProvider);
  v12[3] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v12[4] = &off_2864BA730;
  *v12 = v11;
  v13 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_guardFlowSupplier);
  *v13 = sub_252BD798C;
  v13[1] = 0;
  return v0;
}

uint64_t sub_252BD79B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v33 - v6;
  v8 = sub_252E34164();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 520) > 1u || *(v1 + 520))
  {
    v13 = sub_252E37DB4();

    if ((v13 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD000000000000078, 0x8000000252E872F0);
      return 0;
    }
  }

  else
  {
  }

  v33[0] = a1;
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

  v24 = v33[0];
  sub_252E340E4();
  sub_252AB3FEC(v12, 0, v38);
  v25 = *(v9 + 8);
  v25(v12, v8);
  memcpy(v39, v38, sizeof(v39));
  memcpy(v40, v38, 0x1F8uLL);
  if (sub_252956B94(v40) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544DA8);
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v25(v12, v8);
    sub_252CC3D90(v38[0], v38[1], 0xD000000000000078, 0x8000000252E872F0);

    sub_2529515FC(3, 4, 0xD00000000000001BLL, 0x8000000252E87470);
    return 0;
  }

  memcpy(v36, (v2 + 16), sizeof(v36));
  memcpy((v2 + 16), v39, 0x1F8uLL);
  memcpy(v37, v39, sizeof(v37));
  sub_2529353AC(v37, &v34);
  sub_25293847C(v36, &qword_27F5404C8, &unk_252E3FD60);
  v28 = sub_252E34104();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v7, v24, v28);
  (*(v29 + 56))(v7, 0, 1, v28);
  v30 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  swift_beginAccess();
  sub_252B7B518(v7, v2 + v30);
  swift_endAccess();
  sub_252E340E4();
  sub_252937C40(v12);
  v25(v12, v8);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v31 = sub_252E36AD4();
  __swift_project_value_buffer(v31, qword_27F544DA8);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_252E379F4();

  v34 = 0xD000000000000014;
  v35 = 0x8000000252E87490;
  v33[1] = v40[33];
  v33[2] = v40[34];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v32 = sub_252E36F94();
  MEMORY[0x2530AD570](v32);

  sub_252CC3D90(v34, v35, 0xD000000000000078, 0x8000000252E872F0);

  sub_252B680FC();
  sub_252B6796C();
  sub_25293847C(v39, &qword_27F5404C8, &unk_252E3FD60);
  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_252BD8174(uint64_t a1)
{
  v2[1021] = v1;
  v2[1020] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[1022] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[1023] = swift_task_alloc();
  v2[1024] = swift_task_alloc();
  v5 = sub_252E34104();
  v2[1025] = v5;
  v6 = *(v5 - 8);
  v2[1026] = v6;
  v7 = *(v6 + 64) + 15;
  v2[1027] = swift_task_alloc();
  v2[1028] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BD828C, 0, 0);
}

uint64_t sub_252BD828C()
{
  v57 = v0;
  v1 = v0[1021];
  memcpy(v0 + 65, (v1 + 16), 0x1F8uLL);
  memcpy(v0 + 2, (v1 + 16), 0x1F8uLL);
  if (sub_252956B94(v0 + 2) == 1)
  {
    goto LABEL_4;
  }

  v2 = v0[1026];
  v3 = v0[1025];
  v4 = v0[1024];
  v5 = v0[1021];
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v5 + v6, v4, &qword_27F543798, &unk_252E4E410);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_25293847C(v0[1024], &qword_27F543798, &unk_252E4E410);
LABEL_4:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = v0[1023];
    v8 = v0[1022];
    v9 = v0[1021];
    v10 = v0[1020];
    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E87370);
    memcpy(v0 + 128, (v1 + 16), 0x1F8uLL);
    memcpy(v0 + 191, (v1 + 16), 0x1F8uLL);
    sub_252938414((v0 + 128), (v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v12 = sub_252E36F94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEF203A7475706E49);
    v13 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
    swift_beginAccess();
    sub_252938414(v9 + v13, v7, &qword_27F543798, &unk_252E4E410);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](7499552, 0xE300000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E872F0, 0x2865747563657865, 0xE900000000000029, 142);

    sub_252E33B24();
LABEL_7:
    v15 = v0[1028];
    v16 = v0[1027];
    v17 = v0[1024];
    v18 = v0[1023];

    v19 = v0[1];

    return v19();
  }

  v21 = v0[1021];
  (*(v0[1026] + 32))(v0[1028], v0[1024], v0[1025]);
  if (*(v21 + 520) <= 1u)
  {
    if (*(v21 + 520))
    {
      memcpy(v0 + 695, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 695), (v0 + 758));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v33 = v0[1028];
      v34 = v0[1027];
      v35 = v0[1026];
      v36 = v0[1025];
      v37 = sub_252E36AD4();
      __swift_project_value_buffer(v37, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD000000000000078, 0x8000000252E872F0);
      memcpy(__dst, v0 + 2, 0x1F8uLL);
      (*(v35 + 16))(v34, v33, v36);
      memcpy(v0 + 632, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 632), (v0 + 821));
      if (qword_27F53F430 != -1)
      {
        swift_once();
      }

      v38 = qword_27F575A98;
      v39 = qword_27F53F218;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = qword_27F5753E0;
      v41 = qword_27F53F8A0;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = qword_27F575DC0;
      v43 = qword_27F53F880;

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = v0[1027];
      v45 = v0[1026];
      v54 = v0[1025];
      v55 = v0[1028];
      v46 = v0[1021];
      v53 = v0[1020];
      v47 = qword_27F575DA0;
      type metadata accessor for IntentSelectionFlow();
      swift_allocObject();

      v0[1018] = sub_252D3FCBC(__dst, v44, v38, v40, v42, v47);
      sub_252BDB394(&qword_27F543808, type metadata accessor for IntentSelectionFlow);

      sub_252E33AC4();

      sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);

      (*(v45 + 8))(v55, v54);
    }

    else
    {
      memcpy(v0 + 884, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 884), (v0 + 947));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v22 = v0[1028];
      v23 = v0[1026];
      v24 = v0[1025];
      v25 = v0[1021];
      v26 = v0[1020];
      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544DA8);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E87440, 0xD000000000000078, 0x8000000252E872F0);
      v28 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_guardFlowSupplier + 8);
      v29 = (*(v25 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_guardFlowSupplier))(v25);
      type metadata accessor for HomeStore();
      v30 = static HomeStore.shared.getter();
      sub_2529E0898();

      v0[1019] = v29;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_252BDB2BC;
      *(v31 + 24) = v25;
      sub_252E33454();

      sub_252E33AC4();

      sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
      (*(v23 + 8))(v22, v24);
    }

    goto LABEL_7;
  }

  if (*(v21 + 520) != 2)
  {
    memcpy(v0 + 317, v0 + 65, 0x1F8uLL);
    sub_2529353AC((v0 + 317), (v0 + 380));
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v48 = v0[1028];
    v49 = v0[1026];
    v50 = v0[1025];
    v51 = v0[1020];
    v52 = sub_252E36AD4();
    __swift_project_value_buffer(v52, qword_27F544DA8);
    sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD000000000000078, 0x8000000252E872F0);
    sub_252E33B24();
    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
    (*(v49 + 8))(v48, v50);
    goto LABEL_7;
  }

  memcpy(v0 + 506, v0 + 2, 0x1F8uLL);
  memcpy(v0 + 443, v0 + 65, 0x1F8uLL);
  sub_2529353AC((v0 + 443), (v0 + 569));
  v32 = swift_task_alloc();
  v0[1029] = v32;
  *v32 = v0;
  v32[1] = sub_252BD8C78;

  return sub_252B5D2B0();
}

uint64_t sub_252BD8C78(uint64_t a1)
{
  v2 = *(*v1 + 8232);
  v4 = *v1;
  *(*v1 + 8240) = a1;

  return MEMORY[0x2822009F8](sub_252BD8D78, 0, 0);
}

uint64_t sub_252BD8D78()
{
  v28 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[1030];
  v2 = v0[1021];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E87390, 0xD000000000000078, 0x8000000252E872F0);
  sub_252B79558();
  v4 = sub_252BDACCC(v1);
  v5 = v0[1030];
  v6 = v0[1028];
  v7 = v0[1026];
  v8 = v0[1020];
  v26 = v0[1025];
  if (v4)
  {
    v9 = v4;
    sub_252E379F4();

    __dst[0] = 0xD000000000000023;
    __dst[1] = 0x8000000252E87410;
    v10 = [v9 description];
    v11 = sub_252E36F34();
    v13 = v12;

    MEMORY[0x2530AD570](v11, v13);

    sub_252CC3D90(0xD000000000000023, 0x8000000252E87410, 0xD000000000000078, 0x8000000252E872F0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D00, &qword_252E51668);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252E3C290;
    *(v14 + 56) = &type metadata for UserIsAdmin;
    *(v14 + 64) = sub_252BDAF00();
    memcpy(__dst, v0 + 2, 0x1F8uLL);
    v15 = v9;
    v16 = sub_252BDAF54(v6, __dst);
    v0[1017] = sub_252D9BDBC(v15, v14, v16, 0);
    type metadata accessor for HomeAccessControlValidatingFlow();
    sub_252BDB394(&qword_27F543D10, type metadata accessor for HomeAccessControlValidatingFlow);
    sub_252E33AF4();

    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
  }

  else
  {
    sub_252E379F4();

    __dst[0] = 0xD000000000000027;
    __dst[1] = 0x8000000252E873E0;
    type metadata accessor for HomeStore();
    v17 = static HomeStore.shared.getter();
    v18 = sub_2529D9114();

    v0[1016] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542190, "p%\a");
    v19 = sub_252E36F94();
    MEMORY[0x2530AD570](v19);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000078, 0x8000000252E872F0);

    sub_252E33B24();

    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
  }

  (*(v7 + 8))(v6, v26);
  v20 = v0[1028];
  v21 = v0[1027];
  v22 = v0[1024];
  v23 = v0[1023];

  v24 = v0[1];

  return v24();
}

uint64_t sub_252BD9178(char a1)
{
  if (a1)
  {
    *(v1 + 520) = 3;
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
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E872F0);
}

uint64_t sub_252BD9318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543CF0, &qword_252E51660);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v73 = &v67 - v2;
  v3 = sub_252E332F4();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_252E332E4();
  v76 = *(v78 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_252E34084();
  v70 = *(v71 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252E34164();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11);
  v80 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252E34104();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v67 - v19;
  v21 = sub_252E334A4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v85 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v72 = &v67 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v67 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v33 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v33 + 288), v86);

  v35 = v87;
  v34 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v36 = (*(v34 + 176))(v35, v34);
  __swift_destroy_boxed_opaque_existential_1(v86);
  if (v36)
  {
    v68 = v8;
    sub_252E33464();
    (*(v22 + 16))(v30, v32, v21);
    v37 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = sub_2529F90D4(v38 > 1, v39 + 1, 1, v37);
    }

    (*(v22 + 8))(v32, v21);
    v37[2] = v39 + 1;
    (*(v22 + 32))(v37 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v39, v30, v21);
    v8 = v68;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v40 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  v41 = v84;
  swift_beginAccess();
  sub_252938414(v41 + v40, v20, &qword_27F543798, &unk_252E4E410);
  v42 = v83;
  v43 = (*(v83 + 48))(v20, 1, v14);
  v44 = v85;
  if (v43)
  {
    sub_25293847C(v20, &qword_27F543798, &unk_252E4E410);
    goto LABEL_8;
  }

  v49 = v79;
  (*(v42 + 16))(v79, v20, v14);
  sub_25293847C(v20, &qword_27F543798, &unk_252E4E410);
  v50 = v80;
  sub_252E340E4();
  (*(v42 + 8))(v49, v14);
  v51 = sub_252D2CDB4();
  v53 = v52;
  (*(v81 + 8))(v50, v82);
  if (v51 == 5198677 && v53 == 0xE300000000000000)
  {
  }

  else
  {
    v54 = sub_252E37DB4();

    if ((v54 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (AFDeviceSupportsSiriMUX())
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v55 = sub_252E36AD4();
    __swift_project_value_buffer(v55, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E872B0, 0xD000000000000078, 0x8000000252E872F0);
    sub_252E33424();
    v56 = v70;
    v57 = v69;
    v58 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D5C088], v71);
    sub_252E33414();
    (*(v56 + 8))(v57, v58);
    v59 = type metadata accessor for SimpleHandoffStrategy();
    v60 = swift_allocObject();
    v87 = v59;
    v88 = sub_252BDB394(&qword_27F543CF8, type metadata accessor for SimpleHandoffStrategy);
    v86[0] = v60;

    sub_252E332D4();
    v61 = v76;
    v62 = v73;
    v63 = v78;
    (*(v76 + 16))(v73, v8, v78);
    (*(v61 + 56))(v62, 0, 1, v63);
    sub_252E332C4();
    v64 = v72;
    sub_252E33474();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_2529F90D4(0, v37[2] + 1, 1, v37);
    }

    v66 = v37[2];
    v65 = v37[3];
    if (v66 >= v65 >> 1)
    {
      v37 = sub_2529F90D4(v65 > 1, v66 + 1, 1, v37);
    }

    (*(v74 + 8))(v77, v75);
    (*(v76 + 8))(v8, v78);
    v37[2] = v66 + 1;
    (*(v22 + 32))(v37 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v66, v64, v21);
  }

LABEL_8:
  sub_252E33484();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_2529F90D4(0, v37[2] + 1, 1, v37);
  }

  v46 = v37[2];
  v45 = v37[3];
  if (v46 >= v45 >> 1)
  {
    v37 = sub_2529F90D4(v45 > 1, v46 + 1, 1, v37);
  }

  v37[2] = v46 + 1;
  (*(v22 + 32))(v37 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v46, v44, v21);
  v47 = sub_252E33144();

  return v47;
}

uint64_t sub_252BD9D80(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(v1 + 520) = 2;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake(__srca);
  memcpy(v12, (v1 + 16), sizeof(v12));
  memcpy((v1 + 16), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v9);
  sub_25293847C(v12, &qword_27F5404C8, &unk_252E3FD60);
  v3 = sub_252B680FC();
  swift_beginAccess();
  v4 = *(v3 + 16);
  sub_2529353AC(__dst, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2529F7FB0(0, *(v4 + 2) + 1, 1, v4);
    *(v3 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_2529F7FB0((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  memcpy(&v4[504 * v7 + 32], __dst, 0x1F8uLL);
  *(v3 + 16) = v4;
  swift_endAccess();
}

uint64_t sub_252BD9EEC()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_locationService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputPublisher));
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_guardFlowSupplier + 8);

  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_catProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_patternProvider));
  return v0;
}

uint64_t sub_252BD9FD0()
{
  sub_252BD9EEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutomateHomeFlow()
{
  result = qword_27F543CC0;
  if (!qword_27F543CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252BDA07C()
{
  sub_252B7D9D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void (*sub_252BDA14C(uint64_t *a1))(void *a1)
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