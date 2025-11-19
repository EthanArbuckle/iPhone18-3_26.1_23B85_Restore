char *sub_252B4CA9C(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_252B4A004(a1, a2, a3, a4 & 1);
  v8 = v7;
  if (v9)
  {
    v10 = v7;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_2814B0A78);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E80A30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000021, 0x8000000252E80A60, 80);

    v12 = v8;
    if ((swift_dynamicCast() & 1) != 0 && v8 == 15)
    {
      v13 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v14 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v13[v14] = 102;
      [v13 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v15 = sub_252E37254();
      [v13 setEntityResponses_];
      sub_252927D3C(v8);
      sub_252927D3C(v8);

      return v13;
    }

    else
    {
      sub_252927D3C(v8);
    }
  }

  else
  {
    v16 = sub_252B4C40C(a2, v7, a3, a4 & 1);
    sub_252927D3C(v8);
    return v16;
  }

  return v8;
}

uint64_t sub_252B4CD30(void *a1, uint64_t a2, char a3)
{
  v6 = [a1 userTask];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 filters];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for HomeFilter();
      v10 = sub_252E37264();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v7;
      v12 = v7;
      v13 = sub_252B4CA9C(v10, inited, a2, a3 & 1);

      swift_setDeallocating();
      v14 = *(inited + 16);
      swift_arrayDestroy();
    }

    else
    {
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_2814B0A78);
      sub_252CC4050(0xD00000000000001ELL, 0x8000000252E80AD0, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000016, 0x8000000252E80AB0, 58);
      sub_2529318DC();
      v13 = swift_allocError();
      *v19 = 1;
    }

    return v13;
  }

  else
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E80A90, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000016, 0x8000000252E80AB0, 54);
    sub_2529318DC();
    result = swift_allocError();
    *v17 = 0;
  }

  return result;
}

id sub_252B4CFE0(unint64_t a1)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 >> 62);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (sub_252E378C4() != 1)
  {
LABEL_9:
    v12 = [objc_allocWithZone(MEMORY[0x277D47348]) init];
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v12 setCommandTimeout_];

    v14 = v12;
    sub_252E32E74();
    sub_252E32E24();
    (*(v5 + 8))(v8, v4);
    v15 = sub_252E36F04();

    [v14 setAceId_];

    if (v9)
    {
      v16 = sub_252E378C4();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v14;
    v1 = 0xD000000000000072;
    v2 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/App/ACE/AceCommandDispatcher.swift";
    if (!v16)
    {
      v68 = MEMORY[0x277D84F90];
LABEL_58:
      sub_25293F638(0, &qword_27F540358, 0x277D47330);
      v51 = sub_252E37254();

      v9 = v57;
      [v57 setActionRequests_];

      if (qword_27F53F4B0 == -1)
      {
        goto LABEL_59;
      }

      goto LABEL_71;
    }

    v17 = 0;
    v66 = a1 & 0xC000000000000001;
    v63 = a1 + 32;
    v64 = a1 & 0xFFFFFFFFFFFFFF8;
    v61 = "Got error sending Ace Command: ";
    v62 = 0x8000000252E80630;
    v68 = MEMORY[0x277D84F90];
    v60 = 0xD000000000000026;
    v65 = v16;
    v58 = a1;
    while (1)
    {
      if (v66)
      {
        v18 = MEMORY[0x2530ADF00](v17, a1);
      }

      else
      {
        if (v17 >= *(v64 + 16))
        {
          goto LABEL_64;
        }

        v18 = *(v63 + 8 * v17);
      }

      v19 = v18;
      v20 = __OFADD__(v17++, 1);
      if (v20)
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:

        JUMPOUT(0x2530ADF00);
      }

      v21 = [v18 actionRequests];
      if (!v21)
      {
        v32 = a1;
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544CB8);
        v69 = 0;
        v70 = 0xE000000000000000;
        sub_252E379F4();

        v69 = v60;
        v70 = v62;
        v34 = [v19 description];
        v35 = sub_252E36F34();
        v36 = v19;
        v38 = v37;

        MEMORY[0x2530AD570](v35, v38);

        sub_252CC3D90(v69, v70, 0xD000000000000072, v61 | 0x8000000000000000);

        a1 = v32;
        v1 = 0xD000000000000072;
        goto LABEL_15;
      }

      v22 = v21;
      sub_25293F638(0, &qword_27F540358, 0x277D47330);
      v23 = sub_252E37264();

      v24 = v23 >> 62;
      v25 = v23 >> 62 ? sub_252E378C4() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v68;
      v27 = v68 >> 62;
      if (v68 >> 62)
      {
        v50 = sub_252E378C4();
        v29 = v50 + v25;
        if (__OFADD__(v50, v25))
        {
          goto LABEL_61;
        }
      }

      else
      {
        v28 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = v28 + v25;
        if (__OFADD__(v28, v25))
        {
          goto LABEL_61;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v67 = v19;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v27)
      {
        goto LABEL_36;
      }

      v31 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v29 > *(v31 + 24) >> 1)
      {
        goto LABEL_35;
      }

LABEL_38:
      v40 = *(v31 + 16);
      v41 = *(v31 + 24);
      if (v24)
      {
        v42 = sub_252E378C4();
        if (!v42)
        {
LABEL_14:

          v2 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/App/ACE/AceCommandDispatcher.swift";
          v1 = 0xD000000000000072;
          v16 = v65;
          if (v25 > 0)
          {
            goto LABEL_62;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v42 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
          goto LABEL_14;
        }
      }

      if (((v41 >> 1) - v40) < v25)
      {
        goto LABEL_63;
      }

      v43 = v31 + 8 * v40 + 32;
      if (v24)
      {
        v59 = v25;
        if (v42 < 1)
        {
          goto LABEL_66;
        }

        sub_2529E6488(&qword_27F5435F8, &qword_27F5435F0, &unk_252E4D538);
        for (i = 0; i != v42; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5435F0, &unk_252E4D538);
          v45 = sub_2529FBD80(&v69, i, v23);
          v47 = *v46;
          (v45)(&v69, 0);
          *(v43 + 8 * i) = v47;
        }

        a1 = v58;
        v25 = v59;
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v2 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/App/ACE/AceCommandDispatcher.swift";
      v1 = 0xD000000000000072;
      if (v25 > 0)
      {
        v48 = *(v31 + 16);
        v20 = __OFADD__(v48, v25);
        v49 = v48 + v25;
        if (v20)
        {
          goto LABEL_65;
        }

        *(v31 + 16) = v49;
      }

      v16 = v65;
LABEL_15:
      if (v17 == v16)
      {
        goto LABEL_58;
      }
    }

    if (v27)
    {
LABEL_36:
      sub_252E378C4();
    }

    else
    {
      v31 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_35:
      v39 = *(v31 + 16);
    }

    v68 = sub_252E37A54();
    v31 = v68 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_38;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_67;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_71:
    swift_once();
LABEL_59:
    v52 = sub_252E36AD4();
    __swift_project_value_buffer(v52, qword_27F544CB8);
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_252E379F4();

    v69 = v1 - 88;
    v70 = 0x8000000252E80660;
    v53 = [v9 description];
    v54 = sub_252E36F34();
    v56 = v55;

    MEMORY[0x2530AD570](v54, v56);

    sub_252CC3D90(v69, v70, 0xD000000000000072, (v2 - 32) | 0x8000000000000000);

    return v9;
  }

  v10 = *(a1 + 32);

  return v10;
}

char *sub_252B4D7EC(uint64_t a1, uint64_t a2, char a3)
{
  v25 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a3 & 1;
    v6 = (a1 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      swift_bridgeObjectRetain_n();

      v9 = sub_252B4A004(v7, v8, a2, v5);
      v11 = v10;

      if (v11)
      {
        break;
      }

      v12 = v9;
      MEMORY[0x2530AD700]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v13 = v24;
      sub_25297A8D8(v7);
      sub_25297A904(v8);
      sub_252927D3C(v9);
      v6 += 2;
      if (!--v4)
      {
        v20 = v25;
        goto LABEL_12;
      }
    }

    v15 = v9;
    v16 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    if ((swift_dynamicCast() & 1) != 0 && v23 == 15)
    {
      v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v18 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v17[v18] = 102;
      [v17 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v19 = sub_252E37254();
      [v17 setEntityResponses_];
      sub_252927D3C(v9);
      sub_252927D3C(v9);

      return v17;
    }

    else
    {
      sub_252927D3C(v9);
    }
  }

  else
  {
    LOBYTE(v5) = a3 & 1;
    v20 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
LABEL_12:
    v21 = sub_252B4CFE0(v13);

    v9 = sub_252B4C40C(v20, v21, a2, v5);
  }

  return v9;
}

unint64_t sub_252B4DAD8()
{
  result = qword_27F5435D0;
  if (!qword_27F5435D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5435D0);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B4DB58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252B4DBA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *(v0 + 24);
  if (v8 && (sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v19 - v6), v9 = sub_252E36324(), v10 = *(v9 - 8), v11 = *(v10 + 48), v12 = v11(v7, 1, v9), sub_252938BBC(v7), v12 != 1))
  {
    sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v5);
    if (v11(v5, 1, v9) == 1)
    {
      sub_252938BBC(v5);
      v13 = 0;
    }

    else
    {
      v15 = sub_252E36304();
      v17 = v16;
      (*(v10 + 8))(v5, v9);
      if (v15 == 0x7465736E7573 && v17 == 0xE600000000000000)
      {

        v13 = 1;
      }

      else
      {
        v13 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_252B4DDA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *(v0 + 24);
  if (v8 && (sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v19 - v6), v9 = sub_252E36324(), v10 = *(v9 - 8), v11 = *(v10 + 48), v12 = v11(v7, 1, v9), sub_252938BBC(v7), v12 != 1))
  {
    sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v5);
    if (v11(v5, 1, v9) == 1)
    {
      sub_252938BBC(v5);
      v13 = 0;
    }

    else
    {
      v15 = sub_252E36304();
      v17 = v16;
      (*(v10 + 8))(v5, v9);
      if (v15 == 0x657369726E7573 && v17 == 0xE700000000000000)
      {

        v13 = 1;
      }

      else
      {
        v13 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_252B4DFA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *(v0 + 24);
  if (v8 && (sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v19 - v6), v9 = sub_252E36324(), v10 = *(v9 - 8), v11 = *(v10 + 48), v12 = v11(v7, 1, v9), sub_252938BBC(v7), v12 != 1))
  {
    sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v5);
    if (v11(v5, 1, v9) == 1)
    {
      sub_252938BBC(v5);
      v13 = 0;
    }

    else
    {
      v15 = sub_252E36304();
      v17 = v16;
      (*(v10 + 8))(v5, v9);
      if (v15 == 0x685F657669727261 && v17 == 0xEB00000000656D6FLL)
      {

        v13 = 1;
      }

      else
      {
        v13 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_252B4E1AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *(v0 + 24);
  if (v8 && (sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v19 - v6), v9 = sub_252E36324(), v10 = *(v9 - 8), v11 = *(v10 + 48), v12 = v11(v7, 1, v9), sub_252938BBC(v7), v12 != 1))
  {
    sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v5);
    if (v11(v5, 1, v9) == 1)
    {
      sub_252938BBC(v5);
      v13 = 0;
    }

    else
    {
      v15 = sub_252E36304();
      v17 = v16;
      (*(v10 + 8))(v5, v9);
      if (v15 == 0x6F685F657661656CLL && v17 == 0xEA0000000000656DLL)
      {

        v13 = 1;
      }

      else
      {
        v13 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t QuestionTypeSemantic.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7265626D656D6572;
  }

  else
  {
    result = 0x746567726F66;
  }

  *v0;
  return result;
}

uint64_t static QuestionTypeSemantic.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265626D656D6572;
  }

  else
  {
    v4 = 0x746567726F66;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x7265626D656D6572;
  }

  else
  {
    v6 = 0x746567726F66;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

HomeAutomationInternal::QuestionTypeSemantic_optional __swiftcall QuestionTypeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252B4E500(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265626D656D6572;
  }

  else
  {
    v4 = 0x746567726F66;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x7265626D656D6572;
  }

  else
  {
    v6 = 0x746567726F66;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252B4E5A4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B4E624()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252B4E690()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B4E70C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

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

void sub_252B4E76C(uint64_t *a1@<X8>)
{
  v2 = 0x746567726F66;
  if (*v1)
  {
    v2 = 0x7265626D656D6572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252B4E7A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265626D656D6572;
  }

  else
  {
    v4 = 0x746567726F66;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x7265626D656D6572;
  }

  else
  {
    v6 = 0x746567726F66;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252B4E84C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252B4E904(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265626D656D6572;
  }

  else
  {
    v4 = 0x746567726F66;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x7265626D656D6572;
  }

  else
  {
    v6 = 0x746567726F66;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_252B4E9BC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252B4EB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_252B4ED10();
  v5 = sub_252B4ED64();
  v6 = sub_252B4EDB8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252B4EB94()
{
  result = qword_27F543618;
  if (!qword_27F543618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543618);
  }

  return result;
}

unint64_t sub_252B4EBEC()
{
  result = qword_27F543620;
  if (!qword_27F543620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543620);
  }

  return result;
}

unint64_t sub_252B4EC44()
{
  result = qword_27F543628;
  if (!qword_27F543628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543630, &qword_252E4D670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543628);
  }

  return result;
}

unint64_t sub_252B4ECAC()
{
  result = qword_27F543638;
  if (!qword_27F543638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543638);
  }

  return result;
}

unint64_t sub_252B4ED10()
{
  result = qword_27F543640;
  if (!qword_27F543640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543640);
  }

  return result;
}

unint64_t sub_252B4ED64()
{
  result = qword_27F543648;
  if (!qword_27F543648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543648);
  }

  return result;
}

unint64_t sub_252B4EDB8()
{
  result = qword_27F543650;
  if (!qword_27F543650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543650);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_252B4EE44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252B4EE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252B4EF74(unint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          MEMORY[0x2530ADF00]();
          a2(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
          swift_dynamicCast();
          sub_252E37A94();
          v12 = *(v17 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v10 = v11;
        }

        while (v8 != v11);
      }

      else
      {
        v13 = (a1 + 32);
        a2(0);
        do
        {
          v14 = *v13++;
          v15 = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
          swift_dynamicCast();
          sub_252E37A94();
          v16 = *(v17 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          --v8;
        }

        while (v8);
      }

      return v17;
    }
  }

  return result;
}

uint64_t sub_252B4F134(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2529AA400(0, v1, 0);
    v4 = (a1 + 40);
    v2 = v12;
    do
    {
      v9 = *v4;
      sub_2529904E4(*(v4 - 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540880, &qword_252E53B20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2529AA400((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 16 * v6;
      *(v7 + 32) = v10;
      *(v7 + 40) = v11;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_252B4F270(uint64_t a1)
{
  v2 = sub_252E34AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2529AA520(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2529AA520((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x277D5E670];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
      v10(boxed_opaque_existential_0, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_252927BEC(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_252B4F43C(uint64_t a1)
{
  v2 = sub_252E34544();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2529AA600(0, v11, 0);
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v22;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v19 = *(v13 + 56);
    v20 = v14;
    do
    {
      v20(v6, v15, v2);
      swift_dynamicCast();
      v22 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2529AA600(v16 > 1, v17 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v17 + 1;
      sub_252A3E5E0(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_252B4F670()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v18 = *(v0 + 40);
    }

    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      ++v6;
      sub_252A03108();

      sub_252E37A94();
      v7 = *(v19 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v3 != v6);
    v9 = v19;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = sub_252E24D98(*(v1 + 48));
  if (v11)
  {
    v12 = 5;
  }

  else
  {
    v12 = v10;
  }

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;
  v14 = sub_252B4EF74(v9, type metadata accessor for HomeEntityResponse, &qword_27F540CC8, &unk_252E3F8F0);

  v15 = sub_25297D0C0(v14);

  v17 = (*(*v15 + 176))(v16);

  return v17;
}

uint64_t sub_252B4F854()
{
  v1 = *(v0 + 56);
  v2 = sub_252A05170();
  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v3 = *(*ControlHomeIntent.Builder.init()() + 184);
  v4 = v2;
  v5 = v3(v2);

  v6 = (*(*v5 + 224))();

  sub_25293DEE0(__src);
  memcpy(v10, __src, sizeof(v10));
  v7 = v6;
  v8 = sub_252953488(v6, v10, 0);

  return v8;
}

uint64_t sub_252B4F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000027;
  v40 = 0x8000000252E80C30;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C840;
  *(v34 + 24) = v17;
  v43 = sub_252B5B030;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_25;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B4FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000029;
  v40 = 0x8000000252E80C60;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C844;
  *(v34 + 24) = v17;
  v43 = sub_252B5BC4C;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_34_0;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B50274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD00000000000002ELL;
  v40 = 0x8000000252E80C90;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C844;
  *(v34 + 24) = v17;
  v43 = sub_252B5BD40;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_43;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B506F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000054;
  v40 = 0x8000000252E80CC0;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5BDA0;
  *(v34 + 24) = v17;
  v43 = sub_252B5BDA4;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_52;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B50B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000026;
  v40 = 0x8000000252E80E10;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5BE1C;
  *(v34 + 24) = v17;
  v43 = sub_252B5BEBC;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_64;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B51000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD00000000000002ALL;
  v40 = 0x8000000252E80BC0;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C840;
  *(v34 + 24) = v17;
  v43 = sub_252B5AEC8;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_16_0;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B51484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000023;
  v40 = 0x8000000252E81160;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5BFCC;
  *(v34 + 24) = v17;
  v43 = sub_252B5BFD0;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_88;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

unint64_t sub_252B51908(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xD000000000000011;
    if (a1 != 2)
    {
      v7 = 0x65736E6F70736572;
    }

    if (a1)
    {
      v6 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6C616E696769726FLL;
    v2 = 0xD000000000000015;
    if (a1 != 9)
    {
      v2 = 0x6D614E656E656373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6B73615472657375;
    v4 = 0x6574617473;
    if (a1 != 6)
    {
      v4 = 0x79746964696C6176;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252B51A90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436B0, &qword_252E4D888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252B5BB5C();
  sub_252E37F84();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  sub_252E37CF4();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v27) = 1;
    sub_252E37CF4();
    v27 = v3[4];
    HIBYTE(v26) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252984B28(&qword_27F540B18);
    sub_252E37D54();
    v27 = v3[5];
    HIBYTE(v26) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543698, &qword_252E4D880);
    sub_252B5BBB0(&qword_27F5436B8, &qword_27F5436C0);
    sub_252E37D54();
    v15 = v3[6];
    LOBYTE(v27) = 4;
    sub_252E37D34();
    v27 = v3[7];
    HIBYTE(v26) = 5;
    type metadata accessor for CodableUserTask();
    sub_252B5AF54(&qword_27F541988, type metadata accessor for CodableUserTask);
    sub_252E37D54();
    v16 = v3[8];
    v17 = v3[9];
    LOBYTE(v27) = 6;
    sub_252E37CF4();
    v18 = v3[10];
    LOBYTE(v27) = 7;
    sub_252E37D14();
    v19 = v3[11];
    v20 = v3[12];
    LOBYTE(v27) = 8;
    sub_252E37C94();
    v21 = v3[13];
    v22 = v3[14];
    LOBYTE(v27) = 9;
    sub_252E37C94();
    v23 = v3[15];
    v24 = v3[16];
    LOBYTE(v27) = 10;
    sub_252E37C94();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252B51E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252B5B068(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252B51E90(uint64_t a1)
{
  v2 = sub_252B5BB5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252B51ECC(uint64_t a1)
{
  v2 = sub_252B5BB5C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_252B51F08@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_252B5B400(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_252B51FB8()
{
  result = qword_27F543670;
  if (!qword_27F543670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543670);
  }

  return result;
}

unint64_t sub_252B5200C()
{
  result = qword_27F543678;
  if (!qword_27F543678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543678);
  }

  return result;
}

uint64_t sub_252B52060(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543708, &qword_252E4DA70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252B5C670();
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

uint64_t sub_252B52278()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_252B522DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252B5C300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252B52304(uint64_t a1)
{
  v2 = sub_252B5C670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252B52340(uint64_t a1)
{
  v2 = sub_252B5C670();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252B5237C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_252B5C428(a1, v6);
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

uint64_t sub_252B523DC()
{
  v10 = sub_252E37564();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E37534();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_252E36D04();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  sub_252E36CE4();
  v11 = MEMORY[0x277D84F90];
  sub_252B5AF54(&qword_2814B0220, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_252936E8C(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_252E37594();
  qword_27F543668 = result;
  return result;
}

void sub_252B5263C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D30);

    v7 = a1;
    oslog = sub_252E36AC4();
    v8 = sub_252E374D4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_252BE2CE0(a2, a3, &v16);
      *(v9 + 12) = 2080;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v12 = sub_252E36F94();
      v14 = sub_252BE2CE0(v12, v13, &v16);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_252917000, oslog, v8, "    Exception writing on Coreknowledge for the AsyncInteractionRecord\n    with id: %s. Error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v10, -1, -1);
      MEMORY[0x2530AED00](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_252B5282C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v47 = a6;
  v50 = a5;
  v10 = sub_252E36C84();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_252E36D54();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v49 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = v46 - v18;
  v19 = sub_252E36AD4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v19, qword_27F544D30);
  v25 = *(v20 + 16);
  v46[1] = v24;
  v25(v23);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E80D20);
  v56 = a1;
  MEMORY[0x2530AD570](a1, a2);
  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E80D50);
  v58 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436C8, &unk_252E4D890);
  v26 = sub_252E36F94();
  MEMORY[0x2530AD570](v26);

  MEMORY[0x2530AD570](0x3A65746174730A2CLL, 0xE900000000000020);
  v57 = a2;
  v48 = a4;
  if (a4 <= 1u)
  {
    if (a4)
    {
      v28 = 0xE700000000000000;
      v27 = 0x676E696F476E6FLL;
    }

    else
    {
      v28 = 0xEB0000000064657ALL;
      v27 = 0x696C616974696E69;
    }

    goto LABEL_11;
  }

  if (a4 == 2)
  {
    v28 = 0xEE006E6967756C50;
    v27 = 0x676E696B6F766E69;
LABEL_11:
    v29 = v47;
    goto LABEL_12;
  }

  v27 = 0;
  v28 = 0;
  v29 = v47;
  if (a4 == 3)
  {
    v28 = 0x8000000252E80DF0;
    v27 = 0xD000000000000010;
  }

LABEL_12:
  v58 = v27;
  v59 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v30 = sub_252E36F94();
  MEMORY[0x2530AD570](v30);

  MEMORY[0x2530AD570](0x203A65646F630A2CLL, 0xE800000000000000);
  v31 = v29 & 1;
  v32 = v50;
  if (v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v50;
  }

  v58 = v33;
  LOBYTE(v59) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v34 = sub_252E36F94();
  MEMORY[0x2530AD570](v34);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  sub_252CC3D90(v60, v61, 0xD000000000000086, 0x8000000252E80B30);

  (*(v20 + 8))(v23, v19);
  v35 = dispatch_semaphore_create(0);
  v36 = swift_allocObject();
  v38 = v56;
  v37 = v57;
  *(v36 + 16) = v56;
  *(v36 + 24) = v37;
  *(v36 + 32) = v48;
  *(v36 + 40) = a3;
  *(v36 + 48) = v32;
  *(v36 + 56) = v31;
  *(v36 + 64) = v35;

  v39 = v35;
  sub_252B50B7C(v38, v37, sub_252B5BE04, v36);

  v40 = v49;
  sub_252E36D14();
  *v13 = 200;
  v42 = v54;
  v41 = v55;
  (*(v54 + 104))(v13, *MEMORY[0x277D85178], v55);
  v43 = v51;
  sub_252E36D24();
  (*(v42 + 8))(v13, v41);
  v44 = v53;
  v45 = *(v52 + 8);
  v45(v40, v53);
  sub_252E375F4();
  v45(v43, v44);
  if (sub_252E36C94())
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E80D70);
    MEMORY[0x2530AD570](v38, v37);
    sub_252CC4050(v60, v61, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000023, 0x8000000252E80DC0, 209);
  }

  else
  {
  }
}

uint64_t sub_252B52E88(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, unint64_t a5, uint64_t a6, int a7, void *a8)
{
  v80 = a7;
  v81 = a6;
  v14 = sub_252E36AD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 112);
  v128 = *(a1 + 96);
  v129 = v19;
  v130 = *(a1 + 128);
  v20 = *(a1 + 48);
  v124 = *(a1 + 32);
  v125 = v20;
  v21 = *(a1 + 80);
  v126 = *(a1 + 64);
  v127 = v21;
  v22 = *(a1 + 16);
  v122 = *a1;
  v123 = v22;
  if (sub_252AFB7A0(&v122) == 1)
  {
    if (qword_27F53F4D8 == -1)
    {
LABEL_3:
      __swift_project_value_buffer(v14, qword_27F544D30);
      *&v113 = 0;
      *(&v113 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E80E40);
      MEMORY[0x2530AD570](a2, a3);
      MEMORY[0x2530AD570](46, 0xE100000000000000);
      sub_252CC4050(v113, *(&v113 + 1), 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000023, 0x8000000252E80DC0, 173);
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  v77 = v18;
  v78 = v15;
  v100 = v122;
  v101 = v123;
  v24 = *(&v124 + 1);
  v102 = v124;
  v76 = v125;
  v25 = *(&v126 + 1);
  v99 = v130;
  v97 = v128;
  v98 = v129;
  v96 = v127;
  v72 = *(&v125 + 1);
  if (a4 <= 1u)
  {
    if (a4)
    {
      v26 = 0xE700000000000000;
      v27 = 0x676E696F476E6FLL;
    }

    else
    {
      v26 = 0xEB0000000064657ALL;
      v27 = 0x696C616974696E69;
    }
  }

  else if (a4 == 2)
  {
    v26 = 0xEE006E6967756C50;
    v27 = 0x676E696B6F766E69;
  }

  else
  {
    if (a4 != 3)
    {
      *&v71 = v126;
      v28 = *(a1 + 112);
      v119 = *(a1 + 96);
      v120 = v28;
      v121 = *(a1 + 128);
      v29 = *(a1 + 48);
      v115 = *(a1 + 32);
      v116 = v29;
      v30 = *(a1 + 80);
      v117 = *(a1 + 64);
      v118 = v30;
      v31 = *(a1 + 16);
      v113 = *a1;
      v114 = v31;
      sub_252B5ADE8(&v113, v103);
      goto LABEL_14;
    }

    v26 = 0x8000000252E80DF0;
    v27 = 0xD000000000000010;
  }

  *&v71 = v27;
  v32 = *(a1 + 112);
  v119 = *(a1 + 96);
  v120 = v32;
  v121 = *(a1 + 128);
  v33 = *(a1 + 48);
  v115 = *(a1 + 32);
  v116 = v33;
  v34 = *(a1 + 80);
  v117 = *(a1 + 64);
  v118 = v34;
  v35 = *(a1 + 16);
  v113 = *a1;
  v114 = v35;
  sub_252B5ADE8(&v113, v103);

  v25 = v26;
LABEL_14:
  v36 = *(&v124 + 1);
  v74 = a2;
  v75 = a3;
  v73 = a8;
  *(&v71 + 1) = v25;
  v79 = v14;
  if (a5)
  {
    v82 = *(&v124 + 1);
    if (*(&v124 + 1) >> 62)
    {
      v37 = sub_252E378C4();
    }

    else
    {
      v37 = *((*(&v124 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      *&v113 = MEMORY[0x277D84F90];

      result = sub_252E37AB4();
      if (v37 < 0)
      {
        goto LABEL_63;
      }

      v39 = 0;
      v40 = v82 & 0xC000000000000001;
      do
      {
        if (v40)
        {
          MEMORY[0x2530ADF00](v39, v82);
        }

        else
        {
          v41 = *(v82 + 8 * v39 + 32);
        }

        ++v39;
        a2 = sub_252A03108();

        sub_252E37A94();
        v42 = *(v113 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v37 != v39);
      v43 = v113;
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
    }

    *&v113 = v43;
    sub_25297A894(a5);
    v44 = v113;
    v14 = combineEntityResponses(entityResponses:)(v113);
    *&v103[0] = v38;
    if (v14 >> 62)
    {
      v45 = sub_252E378C4();
      if (v45)
      {
LABEL_28:
        v70 = v44;
        v46 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x2530ADF00](v46, v14);
          }

          else
          {
            if (v46 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v47 = *(v14 + 8 * v46 + 32);
          }

          v48 = v47;
          a3 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          type metadata accessor for CodableEntityResponse();
          swift_allocObject();
          a2 = sub_252A066DC(v48);

          MEMORY[0x2530AD700](v49);
          if (*((*&v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v50 = *((*&v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v46;
          if (a3 == v45)
          {
            v24 = *&v103[0];
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v45 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
        goto LABEL_28;
      }
    }

    v24 = MEMORY[0x277D84F90];
LABEL_44:

    v36 = v24;
  }

  if (v80)
  {
    v51 = v76;
  }

  else
  {
    v51 = v81;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v52 = v79;
  v53 = __swift_project_value_buffer(v79, qword_27F544D30);
  (*(v78 + 16))(v77, v53, v52);
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  sub_252E379F4();

  v94 = 0xD000000000000026;
  v95 = 0x8000000252E80E80;
  v54 = v36;
  if (v36 >> 62)
  {
    v55 = sub_252E378C4();
  }

  else
  {
    v55 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = MEMORY[0x277D84F90];
  if (!v55)
  {
    goto LABEL_60;
  }

  *&v113 = MEMORY[0x277D84F90];
  result = sub_252E37AB4();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v57 = 0;
    do
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v57, v54);
      }

      else
      {
        v59 = *(v54 + 8 * v57 + 32);
      }

      ++v57;
      sub_252A03108();

      sub_252E37A94();
      v58 = *(v113 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v55 != v57);
    v56 = v113;
LABEL_60:
    v60 = type metadata accessor for HomeEntityResponse();
    v61 = MEMORY[0x2530AD730](v56, v60);
    v63 = v62;

    MEMORY[0x2530AD570](v61, v63);

    v64 = v77;
    sub_252CC3D90(v94, v95, 0xD000000000000086, 0x8000000252E80B30);

    (*(v78 + 8))(v64, v79);
    v103[0] = v100;
    v103[1] = v101;
    v109 = v96;
    v110 = v97;
    v111 = v98;
    v113 = v100;
    v114 = v101;
    v120 = v98;
    v112 = v99;
    v104 = v102;
    v105 = v24;
    v66 = *(&v71 + 1);
    v65 = v72;
    v106 = v51;
    v107 = v72;
    v67 = v71;
    v108 = v71;
    *&v115 = v102;
    *(&v115 + 1) = v24;
    *&v116 = v51;
    *(&v116 + 1) = v72;
    v117 = v71;
    v121 = v99;
    v118 = v96;
    v119 = v97;
    v68 = v75;

    sub_252B5ADE8(&v113, v83);
    v69 = v73;
    sub_252DBF330(v103, v74, v68, &v113, v69);

    sub_252B5AE20(&v113);
    v83[0] = v100;
    v83[1] = v101;
    v84 = v102;
    v85 = v24;
    v86 = v51;
    v87 = v65;
    v88 = v67;
    v89 = v66;
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = v99;
    return sub_252B5AE20(v83);
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_252B5377C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_252E36AD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v41 = v11;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_27F544D30);

    v15 = a1;
    v16 = sub_252E36AC4();
    v17 = sub_252E374D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v40[1] = a5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v40[0] = a4;
      v21 = v20;
      v43 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_252BE2CE0(a2, a3, &v43);
      *(v19 + 12) = 2080;
      v42 = a1;
      v22 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v23 = sub_252E36F94();
      v25 = sub_252BE2CE0(v23, v24, &v43);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_252917000, v16, v17, "Exception writing on Coreknowledge for AsyncInteractionRecord\nwith id: %s. Error: %s", v19, 0x16u);
      swift_arrayDestroy();
      v26 = v21;
      a4 = v40[0];
      MEMORY[0x2530AED00](v26, -1, -1);
      MEMORY[0x2530AED00](v19, -1, -1);
    }

    v11 = v41;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v10, qword_27F544D30);
  (*(v11 + 16))(v14, v27, v10);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();

  v43 = 0xD000000000000010;
  v44 = 0x8000000252E80EB0;
  MEMORY[0x2530AD570](a2, a3);
  MEMORY[0x2530AD570](0x6465746164707520, 0xED0000203A6F7420);
  v28 = *(a4 + 40);
  if (v28 >> 62)
  {
    if (v28 < 0)
    {
      v39 = *(a4 + 40);
    }

    v29 = sub_252E378C4();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x277D84F90];
  if (!v29)
  {
    goto LABEL_19;
  }

  v42 = MEMORY[0x277D84F90];
  result = sub_252E37AB4();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v41 = v10;
    v32 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v32, v28);
      }

      else
      {
        v34 = *(v28 + 8 * v32 + 32);
      }

      ++v32;
      sub_252A03108();

      sub_252E37A94();
      v33 = v42[2];
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v29 != v32);
    v10 = v41;
    v30 = v42;
LABEL_19:
    v35 = type metadata accessor for HomeEntityResponse();
    v36 = MEMORY[0x2530AD730](v30, v35);
    v38 = v37;

    MEMORY[0x2530AD570](v36, v38);

    sub_252CC3D90(v43, v44, 0xD000000000000086, 0x8000000252E80B30);

    (*(v11 + 8))(v14, v10);
    return sub_252E37614();
  }

  __break(1u);
  return result;
}

uint64_t sub_252B53C20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = a4;
  sub_252B50B7C(a1, a2, sub_252B5C114, v8);
}

uint64_t sub_252B53CBC(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v23 = a1[6];
  v24 = v3;
  v25 = *(a1 + 16);
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v5 = a1[5];
  v21 = a1[4];
  v22 = v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  swift_beginAccess();
  v7 = *(a2 + 128);
  v26[6] = *(a2 + 112);
  v26[7] = v7;
  v27 = *(a2 + 144);
  v8 = *(a2 + 64);
  v26[2] = *(a2 + 48);
  v26[3] = v8;
  v9 = *(a2 + 96);
  v26[4] = *(a2 + 80);
  v26[5] = v9;
  v10 = *(a2 + 32);
  v26[0] = *(a2 + 16);
  v26[1] = v10;
  v11 = v22;
  *(a2 + 80) = v21;
  *(a2 + 96) = v11;
  v12 = v24;
  *(a2 + 112) = v23;
  *(a2 + 128) = v12;
  *(a2 + 144) = v25;
  v13 = v20;
  *(a2 + 48) = v19;
  *(a2 + 64) = v13;
  v14 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v14;
  sub_252938414(&v17, &v16, &qword_27F543160, &qword_252E4E950);
  sub_25293847C(v26, &qword_27F543160, &qword_252E4E950);
  return sub_252E37614();
}

uint64_t sub_252B53DB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_252B50B7C(a1, a2, sub_252B5C0B8, v4);
}

uint64_t sub_252B53E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 112);
  v24 = *(a1 + 96);
  v25 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = v10;
  v11 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v11;
  v12 = *(a1 + 112);
  v33 = v24;
  v34 = v12;
  v29 = v20;
  v30 = v9;
  v31 = v22;
  v32 = v5;
  v26 = *(a1 + 128);
  v35 = *(a1 + 128);
  v27 = v19[0];
  v28 = v7;
  if (sub_252AFB7A0(&v27) == 1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D30);
    sub_252E379F4();

    MEMORY[0x2530AD570](a2, a3);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E81270, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000013, 0x8000000252E81290, 239);
  }

  else
  {
    v17[6] = v33;
    v17[7] = v34;
    v18 = v35;
    v17[2] = v29;
    v17[3] = v30;
    v17[4] = v31;
    v17[5] = v32;
    v17[0] = v27;
    v17[1] = v28;
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    sub_252938414(v19, v16, &qword_27F543160, &qword_252E4E950);

    sub_252D70068(v17, sub_252B5C0C0, v15);

    return sub_25293847C(v19, &qword_27F543160, &qword_252E4E950);
  }
}

uint64_t sub_252B54068(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D30);

    v7 = a1;
    v8 = sub_252E36AC4();
    v9 = sub_252E374D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_252BE2CE0(a2, a3, &v18);
      *(v10 + 12) = 2080;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v13 = sub_252E36F94();
      v15 = sub_252BE2CE0(v13, v14, &v18);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_252917000, v8, v9, "Exception removing AsyncInteractionRecord\nwith id: %s. Error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v11, -1, -1);
      MEMORY[0x2530AED00](v10, -1, -1);
    }
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D30);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_252E379F4();

  v18 = 0xD00000000000001ALL;
  v19 = 0x8000000252E812B0;
  MEMORY[0x2530AD570](a2, a3);
  sub_252CC3D90(v18, v19, 0xD000000000000086, 0x8000000252E80B30);
}

uint64_t sub_252B542F0(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  sub_252B51000(0xD00000000000001ALL, 0x8000000252E4D830, sub_252B5AEC0, v4);
}

uint64_t sub_252B5438C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  sub_252B5AE70(v3, v4);
  sub_252ADDEBC(v8, v9);
  return sub_252E37614();
}

void sub_252B5444C(uint64_t a1, uint64_t a2)
{
  v25 = sub_252E36C84();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_252E36D54();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  v22 = a1;
  v23 = a2;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v15;

  v17 = v15;
  sub_252B51000(0xD00000000000001ALL, 0x8000000252E4D830, sub_252B5BF20, v16);

  sub_252E36D14();
  *v7 = 200;
  v18 = v25;
  (*(v4 + 104))(v7, *MEMORY[0x277D85178], v25);
  sub_252E36D24();
  (*(v4 + 8))(v7, v18);
  v19 = *(v8 + 8);
  v20 = v24;
  v19(v12, v24);
  sub_252E375F4();
  v19(v14, v20);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D30);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E81040);
    MEMORY[0x2530AD570](v22, v23);
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E81070);
    sub_252CC4050(v26, v27, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000016, 0x8000000252E81090, 326);
  }

  else
  {
  }
}

void sub_252B547D0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v7 = a1[1];
  if (v7)
  {
    v8 = *a1;
    v10 = a1[2];
    v9 = a1[3];
    v11 = a1[4];
    sub_252B5AE70(*a1, v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2529F7A80(0, *(v11 + 16) + 1, 1, v11);
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_2529F7A80((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 16) = v13 + 1;
    v14 = v11 + 16 * v13;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    goto LABEL_11;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D30);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E810B0);
  v9 = 0x8000000252E4D830;
  v10 = 0xD00000000000001ALL;
  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E4D830);
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E810F0);
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000016, 0x8000000252E81090, 303);

  v8 = qword_27F543658;
  v7 = qword_27F543660;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C290;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  if (v7)
  {
    v4 = a4;
LABEL_11:
    *&v18 = v8;
    *(&v18 + 1) = v7;
    v19 = v10;
    v20 = v9;
    v21 = v11;
    v15 = v4;
    sub_252DBFF00(&v18, v15);

    sub_252ADDEBC(v8, v7);
    return;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_27F544D30);
  sub_252CC4050(0xD000000000000049, 0x8000000252E81110, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000016, 0x8000000252E81090, 308);
}

void sub_252B54AF0(uint64_t a1, uint64_t a2)
{
  v25 = sub_252E36C84();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_252E36D54();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  v22 = a1;
  v23 = a2;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v15;

  v17 = v15;
  sub_252B51000(0xD00000000000001ALL, 0x8000000252E4D830, sub_252B5C0AC, v16);

  sub_252E36D14();
  *v7 = 200;
  v18 = v25;
  (*(v4 + 104))(v7, *MEMORY[0x277D85178], v25);
  sub_252E36D24();
  (*(v4 + 8))(v7, v18);
  v19 = *(v8 + 8);
  v20 = v24;
  v19(v12, v24);
  sub_252E375F4();
  v19(v14, v20);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D30);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E81190);
    MEMORY[0x2530AD570](v22, v23);
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E811D0);
    sub_252CC4050(v26, v27, 0xD000000000000086, 0x8000000252E80B30, 0xD00000000000001BLL, 0x8000000252E811F0, 362);
  }

  else
  {
  }
}

void sub_252B54E74(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a1[1];
  if (v4)
  {
    v8 = a1[3];
    v9 = a1[4];
    v31 = a1[2];
    v32 = *a1;
    v10 = v9[2];

    v30 = v4;

    if (v10)
    {
      v11 = 0;
      v12 = v9 + 5;
      v13 = MEMORY[0x277D84F90];
      v28 = a4;
      v29 = v8;
      do
      {
        v14 = &v12[2 * v11];
        v15 = v11;
        while (1)
        {
          if (v15 >= v9[2])
          {
            __break(1u);
            goto LABEL_29;
          }

          v16 = *(v14 - 1);
          v17 = *v14;
          v18 = v16 == a2 && v17 == a3;
          if (!v18)
          {
            v19 = *(v14 - 1);
            v20 = *v14;
            v21 = v12;
            v22 = sub_252E37DB4();
            v12 = v21;
            if ((v22 & 1) == 0)
            {
              break;
            }
          }

          ++v15;
          v14 += 2;
          if (v10 == v15)
          {
            a4 = v28;
            v8 = v29;
            goto LABEL_25;
          }
        }

        *&v34 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA3A0(0, *(v13 + 16) + 1, 1);
          v13 = v34;
        }

        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          sub_2529AA3A0((v23 > 1), v24 + 1, 1);
          v25 = v24 + 1;
          v13 = v34;
        }

        v11 = v15 + 1;
        *(v13 + 16) = v25;
        v26 = v13 + 16 * v24;
        *(v26 + 32) = v16;
        *(v26 + 40) = v17;
        v18 = v10 - 1 == v15;
        a4 = v28;
        v8 = v29;
        v12 = v21;
      }

      while (!v18);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

LABEL_25:
    *&v34 = v32;
    *(&v34 + 1) = v30;
    v35 = v31;
    v36 = v8;
    v37 = v13;
    v33 = a4;
    sub_252DBFF68(&v34, v33);
  }

  else
  {
    if (qword_27F53F4D8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D30);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000053, 0x8000000252E81210);
    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E4D830);
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000086, 0x8000000252E80B30, 0xD00000000000001BLL, 0x8000000252E811F0, 338);
  }
}

uint64_t sub_252B55184(void *a1)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D30);
    v3 = a1;
    v4 = sub_252E36AC4();
    v5 = sub_252E374D4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_252BE2CE0(0xD00000000000001ALL, 0x8000000252E4D830, &v13);
      *(v6 + 12) = 2080;
      v8 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v9 = sub_252E36F94();
      v11 = sub_252BE2CE0(v9, v10, &v13);

      *(v6 + 14) = v11;
      _os_log_impl(&dword_252917000, v4, v5, "Exception writing on Coreknowledge for AsyncInteractionRecord\nwith id: %s. Error: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v7, -1, -1);
      MEMORY[0x2530AED00](v6, -1, -1);
    }
  }

  return sub_252E37614();
}

uint64_t sub_252B55350(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v43 = a4;
  v13 = sub_252E36F84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v42 = v16;
    sub_252938414(a2, v46, &qword_27F541E80, &qword_252E3DFA0);
    if (v46[3])
    {
      if (swift_dynamicCast())
      {
        v41 = a3;
        sub_252E36F74();
        v40 = sub_252E36F44();
        v35 = v34;
        a3 = v41;

        (*(v14 + 8))(v18, v42);
        if (v35 >> 60 != 15)
        {
          v36 = sub_252E32994();
          v37 = *(v36 + 48);
          v38 = *(v36 + 52);
          swift_allocObject();
          sub_252E32984();
          a5(0);
          sub_252B5AF54(a6, a7);
          v39 = v40;
          sub_252E32974();

          a3(v46);
          sub_252982EFC(v39, v35);
        }
      }
    }

    else
    {
      sub_25293847C(v46, &qword_27F541E80, &qword_252E3DFA0);
    }
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544D30);
  sub_252938414(a2, v46, &qword_27F541E80, &qword_252E3DFA0);
  v20 = a1;
  v21 = sub_252E36AC4();
  v22 = sub_252E374D4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = v24;
    *v23 = 136315394;
    sub_252938414(v46, &v44, &qword_27F541E80, &qword_252E3DFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v25 = sub_252E36F94();
    v27 = v26;
    sub_25293847C(v46, &qword_27F541E80, &qword_252E3DFA0);
    v28 = sub_252BE2CE0(v25, v27, &v45);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v44 = a1;
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v30 = sub_252E36F94();
    v32 = sub_252BE2CE0(v30, v31, &v45);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_252917000, v21, v22, "    CoreKnowledgeStore found no entries or unable to convert result to String or data, assuming store is empty.\n    Result %s, error: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v24, -1, -1);
    MEMORY[0x2530AED00](v23, -1, -1);
  }

  else
  {

    sub_25293847C(v46, &qword_27F541E80, &qword_252E3DFA0);
  }

  v46[0] = 0;
  return (a3)(v46);
}

uint64_t sub_252B559F0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v39 = a4;
  v7 = sub_252E36F84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    goto LABEL_8;
  }

  v13 = a3;
  v14 = v10;
  sub_252938414(a2, &v58, &qword_27F541E80, &qword_252E3DFA0);
  if (!*(&v59 + 1))
  {
    sub_25293847C(&v58, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    a3 = v13;
    goto LABEL_8;
  }

  sub_252E36F74();
  v15 = sub_252E36F44();
  v17 = v16;

  (*(v8 + 8))(v12, v14);
  a3 = v13;
  if (v17 >> 60 != 15)
  {
    v18 = sub_252E32994();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_252E32984();
    sub_252B51FB8();
    sub_252E32974();

    GEOLocationCoordinate2DMake(&v58);
    v13(&v58);
    sub_252982EFC(v15, v17);
    v55 = v64;
    v56 = v65;
    v57 = v66;
    v51 = v60;
    v52 = v61;
    v53 = v62;
    v54 = v63;
    v49 = v58;
    v50 = v59;
    v36 = &v49;
    return sub_25293847C(v36, &qword_27F543160, &qword_252E4E950);
  }

LABEL_8:
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544D30);
  sub_252938414(a2, v67, &qword_27F541E80, &qword_252E3DFA0);
  v22 = a1;
  v23 = sub_252E36AC4();
  v24 = sub_252E374D4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v49 = v38;
    *v25 = 136315394;
    sub_252938414(v67, &v58, &qword_27F541E80, &qword_252E3DFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v26 = sub_252E36F94();
    v28 = v27;
    sub_25293847C(v67, &qword_27F541E80, &qword_252E3DFA0);
    v29 = sub_252BE2CE0(v26, v28, &v49);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *&v58 = a1;
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v31 = sub_252E36F94();
    v33 = sub_252BE2CE0(v31, v32, &v49);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_252917000, v23, v24, "    CoreKnowledgeStore found no entries or unable to convert result to String or data, assuming store is empty.\n    Result %s, error: %s", v25, 0x16u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v34, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  else
  {

    sub_25293847C(v67, &qword_27F541E80, &qword_252E3DFA0);
  }

  sub_252B5ADCC(&v49);
  v46 = v55;
  v47 = v56;
  v48 = v57;
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v40 = v49;
  v41 = v50;
  a3(&v40);
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v58 = v40;
  v59 = v41;
  v36 = &v58;
  return sub_25293847C(v36, &qword_27F543160, &qword_252E4E950);
}

uint64_t sub_252B56154(void *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, void (*a5)(void))
{
  v9 = sub_252E36F84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v30 = v12;
    sub_252938414(a2, &v41, &qword_27F541E80, &qword_252E3DFA0);
    if (*(&v42 + 1))
    {
      if (swift_dynamicCast())
      {
        v38 = a3;
        sub_252E36F74();
        v37 = sub_252E36F44();
        v32 = v31;
        a3 = v38;

        (*(v10 + 8))(v14, v30);
        if (v32 >> 60 != 15)
        {
          v33 = sub_252E32994();
          v34 = *(v33 + 48);
          v35 = *(v33 + 52);
          swift_allocObject();
          sub_252E32984();
          a5();
          v36 = v37;
          sub_252E32974();

          a3(&v41);
          sub_252982EFC(v36, v32);
          return sub_252ADDEBC(v41, *(&v41 + 1));
        }
      }
    }

    else
    {
      sub_25293847C(&v41, &qword_27F541E80, &qword_252E3DFA0);
    }
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D30);
  sub_252938414(a2, &v41, &qword_27F541E80, &qword_252E3DFA0);
  v16 = a1;
  v17 = sub_252E36AC4();
  v18 = sub_252E374D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v19 = 136315394;
    sub_252938414(&v41, &v39, &qword_27F541E80, &qword_252E3DFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v20 = sub_252E36F94();
    v22 = v21;
    sub_25293847C(&v41, &qword_27F541E80, &qword_252E3DFA0);
    v23 = sub_252BE2CE0(v20, v22, &v40);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v39 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v25 = sub_252E36F94();
    v27 = sub_252BE2CE0(v25, v26, &v40);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_252917000, v17, v18, "    CoreKnowledgeStore found no entries or unable to convert result to String or data, assuming store is empty.\n    Result %s, error: %s", v19, 0x16u);
    v28 = v38;
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v28, -1, -1);
    MEMORY[0x2530AED00](v19, -1, -1);
  }

  else
  {

    sub_25293847C(&v41, &qword_27F541E80, &qword_252E3DFA0);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  return (a3)(&v41);
}

uint64_t sub_252B567F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a3;
    sub_252A00AF4(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v7 = a2;
  swift_unknownObjectRetain();
  v6(a2, v11);

  return sub_25293847C(v11, &qword_27F541E80, &qword_252E3DFA0);
}

uint64_t sub_252B568B0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a1;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  sub_252E36A74();
  return a3(&v5);
}

uint64_t sub_252B56980(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v10 = *(a1 + 128);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  sub_252E36A74();
  return a3(v9);
}

uint64_t sub_252B56A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  sub_252E36A74();
  return a3(v7);
}

void sub_252B56B48(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v251 = a6;
  v252 = a8;
  v261 = a7;
  v250 = a5;
  v249 = a4;
  v14 = sub_252E36CA4();
  v257 = *(v14 - 8);
  v258 = v14;
  v15 = *(v257 + 64);
  MEMORY[0x28223BE20](v14);
  v255 = &v241 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_252E36D04();
  v254 = *(v256 - 8);
  v17 = *(v254 + 64);
  MEMORY[0x28223BE20](v256);
  v253 = &v241 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252E32E04();
  v247 = *(v19 - 8);
  v248 = v19;
  v20 = *(v247 + 64);
  MEMORY[0x28223BE20](v19);
  v246 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_252E32E84();
  v260 = *(v281 - 8);
  v22 = *(v260 + 64);
  v23 = MEMORY[0x28223BE20](v281);
  v263 = &v241 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v265 = &v241 - v26;
  MEMORY[0x28223BE20](v25);
  v280 = &v241 - v27;
  if (qword_27F53F4D8 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v262 = sub_252E36AD4();
    v28 = __swift_project_value_buffer(v262, qword_27F544D30);
    *&v307 = 0;
    *(&v307 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v307 = 0xD000000000000027;
    *(&v307 + 1) = 0x8000000252E80ED0;
    v259 = a1;
    MEMORY[0x2530AD570](a1, a2);
    v264 = "cInteractionRecord with id: ";
    v267 = v28;
    sub_252CC3D90(v307, *(&v307 + 1), 0xD000000000000086, 0x8000000252E80B30);

    v29 = sub_252C4D664(5);
    v273 = a9;
    v268 = a3;
    if ((v29 & 1) == 0)
    {
      type metadata accessor for HomeStore();
      v42 = static HomeStore.shared.getter();
      v43 = v42;
      v44 = v42[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v44 == 2 || (v44 & 1) != 0)
      {
        v45 = v268;
        v46 = [v268 filters];
        if (!v46)
        {

          goto LABEL_32;
        }

        v47 = v46;
        v245 = a2;
        type metadata accessor for HomeFilter();
        v48 = sub_252E37264();

        v49 = [v45 userTask];
        v50 = HomeStore.services(matching:supporting:)(v48, v49);
        v52 = v51;

        if ((v52 & 1) == 0)
        {
          v9 = v50 & 0xFFFFFFFFFFFFFF8;
          if (v50 >> 62)
          {
            goto LABEL_218;
          }

          a2 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_40;
          }

LABEL_219:
          a1 = MEMORY[0x277D84F90];
LABEL_220:
          sub_252929F10(v50, 0);
          v301 = a1;
          v206 = qword_27F53F510;

          if (v206 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v262, qword_27F544DD8);
          *&v307 = 0;
          *(&v307 + 1) = 0xE000000000000000;
          sub_252E379F4();

          *&v307 = 0xD00000000000002FLL;
          *(&v307 + 1) = 0x8000000252E80F00;
          v207 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
          v209 = v208;

          MEMORY[0x2530AD570](v207, v209);

          sub_252CC3D90(v307, *(&v307 + 1), 0xD000000000000086, v264 | 0x8000000000000000);

          v243 = 0;
          v244 = 0;
          goto LABEL_223;
        }

        sub_252929F10(v50, 1);
      }

      else
      {
      }

      v45 = v268;
LABEL_32:
      v62 = v45;
      *(&v282 + 1) = sub_252E36AC4();
      v37 = sub_252E374D4();

      if (os_log_type_enabled(*(&v282 + 1), v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v62;
        *v39 = v62;
        v63 = v62;
        v41 = "Couldn't find Services matching intent: %@";
LABEL_34:
        _os_log_impl(&dword_252917000, *(&v282 + 1), v37, v41, v38, 0xCu);
        sub_25293847C(v39, &qword_27F541B78, &qword_252E4A340);
        MEMORY[0x2530AED00](v39, -1, -1);
        MEMORY[0x2530AED00](v38, -1, -1);
      }

LABEL_35:
      v64 = *(&v282 + 1);

      return;
    }

    v30 = [a3 filters];
    if (!v30)
    {
      goto LABEL_6;
    }

    v31 = v30;
    v245 = a2;
    type metadata accessor for HomeFilter();
    v32 = sub_252E37264();

    type metadata accessor for HomeStore();
    v33 = static HomeStore.shared.getter();
    a1 = HomeStore.scenes(matching:)(v32);
    v35 = v34;

    if (v35)
    {
      sub_252929F10(a1, 1);
LABEL_6:
      v36 = v268;
      *(&v282 + 1) = sub_252E36AC4();
      v37 = sub_252E374D4();

      if (os_log_type_enabled(*(&v282 + 1), v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v36;
        *v39 = v36;
        v40 = v36;
        v41 = "Couldn't find scenes matching intent: %@";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v243 = sub_252C4E214();
    v244 = v53;
    v54 = a1 & 0xFFFFFFFFFFFFFF8;
    v276 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!(a1 >> 62))
    {
      v277 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v278 = a1;
      if (!v277)
      {
        goto LABEL_138;
      }

      goto LABEL_15;
    }

LABEL_137:
    v138 = sub_252E378C4();
    v54 = v276;
    v277 = v138;
    v278 = a1;
    if (!v138)
    {
LABEL_138:
      v137 = MEMORY[0x277D84F90];
      v301 = MEMORY[0x277D84F90];
      goto LABEL_139;
    }

LABEL_15:
    v55 = 0;
    v274 = a1 & 0xC000000000000001;
    v266 = a1 + 32;
    a2 = MEMORY[0x277D84F90];
    do
    {
      if (v274)
      {
        a3 = MEMORY[0x2530ADF00](v55, a1);
        a1 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v55 >= *(v54 + 16))
        {
          goto LABEL_130;
        }

        a3 = *(a1 + 8 * v55 + 32);

        a1 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_129;
        }
      }

      v56 = sub_252E32E24();
      a9 = v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_2529F7A80(0, *(a2 + 16) + 1, 1, a2);
      }

      v59 = *(a2 + 16);
      v58 = *(a2 + 24);
      a3 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        a2 = sub_2529F7A80((v58 > 1), v59 + 1, 1, a2);
      }

      *(a2 + 16) = a3;
      v60 = a2 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = a9;
      ++v55;
      v54 = v276;
      v61 = a1 == v277;
      a1 = v278;
    }

    while (!v61);
    v72 = 0;
    v301 = a2;
    *&v307 = MEMORY[0x277D84F90];
    v279 = (v260 + 8);
    v242 = (v260 + 32);
LABEL_54:
    if (v274)
    {
      v74 = MEMORY[0x2530ADF00](v72, a1);
      v75 = __OFADD__(v72, 1);
      v76 = v72 + 1;
      if (v75)
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v72 >= *(v54 + 16))
      {
        goto LABEL_134;
      }

      v73 = *(v266 + 8 * v72);

      v75 = __OFADD__(v72, 1);
      v76 = v72 + 1;
      if (v75)
      {
        goto LABEL_133;
      }
    }

    v270 = v76;
    v269 = v74;
    v77 = [*(v74 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
    v78 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    sub_2529E6100();
    v79 = sub_252E373A4();

    *&v285 = MEMORY[0x277D84F90];
    v272 = v79;
    v275 = v78;
    if ((v79 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_252E37874();
      sub_252E373E4();
      a9 = v302;
      a2 = v303;
      v80 = v304;
      v81 = v305;
      v9 = v306;
    }

    else
    {
      v82 = -1 << *(v79 + 32);
      a2 = v79 + 56;
      v80 = ~v82;
      v83 = -v82;
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      else
      {
        v84 = -1;
      }

      v9 = v84 & *(v79 + 56);

      v81 = 0;
      a9 = v79;
    }

    v271 = v80;
    a1 = (v80 + 64) >> 6;
    a3 = MEMORY[0x277D84F90];
    *&v282 = a2;
    *(&v282 + 1) = MEMORY[0x277D84F90];
    if ((a9 & 0x8000000000000000) != 0)
    {
LABEL_64:
      v85 = sub_252E37904();
      if (!v85)
      {
        goto LABEL_84;
      }

      v283[0] = v85;
      swift_dynamicCast();
      v86 = v284[0];
      v87 = v81;
      v88 = v9;
      if (!v284[0])
      {
        goto LABEL_84;
      }

      goto LABEL_72;
    }

LABEL_67:
    v89 = v81;
    v90 = v9;
    v87 = v81;
    if (v9)
    {
      break;
    }

    while (1)
    {
      v87 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v87 >= a1)
      {
        goto LABEL_84;
      }

      v90 = *(a2 + 8 * v87);
      ++v89;
      if (v90)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    swift_once();
  }

LABEL_71:
  v88 = (v90 - 1) & v90;
  v86 = *(*(a9 + 48) + ((v87 << 9) | (8 * __clz(__rbit64(v90)))));
  if (v86)
  {
LABEL_72:
    v91 = a9;
    type metadata accessor for Action();
    a3 = swift_allocObject();
    *(a3 + 16) = v86;
    v92 = v86;
    v93 = [v92 uniqueIdentifier];
    v94 = v280;
    sub_252E32E64();

    v95 = sub_252E32E24();
    v97 = v96;
    (*v279)(v94, v281);
    *(a3 + 24) = v95;
    *(a3 + 32) = v97;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v98 = 1;
      a9 = v91;
    }

    else
    {
      objc_opt_self();
      a9 = v91;
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v99 = swift_dynamicCastObjCClass();
        v9 = v88;
        a2 = v282;
        if (v99)
        {
          v98 = 3;
        }

        else
        {
          objc_opt_self();
          v98 = 4 * (swift_dynamicCastObjCClass() != 0);
        }

        goto LABEL_77;
      }

      v98 = 2;
    }

    v9 = v88;
    a2 = v282;
LABEL_77:

    *(a3 + 40) = v98;
    MEMORY[0x2530AD700]();
    if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v100 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    *(&v282 + 1) = v285;
    v81 = v87;
    if ((a9 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

LABEL_84:
  sub_25291AE30();

  *&v285 = MEMORY[0x277D84F90];
  v9 = *(&v282 + 1);
  a2 = *(&v282 + 1) & 0xFFFFFFFFFFFFFF8;
  if (*(&v282 + 1) >> 62)
  {
    v101 = sub_252E378C4();
    if (!v101)
    {
LABEL_111:
      v102 = MEMORY[0x277D84F90];
      goto LABEL_112;
    }
  }

  else
  {
    v101 = *((*(&v282 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v101)
    {
      goto LABEL_111;
    }
  }

  a1 = 0;
  a3 = v9 & 0xC000000000000001;
  v102 = MEMORY[0x277D84F90];
  do
  {
    *&v282 = v102;
    v103 = a1;
    while (1)
    {
      if (a3)
      {
        v104 = MEMORY[0x2530ADF00](v103, v9);
        a1 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_127;
        }
      }

      else
      {
        if (v103 >= *(a2 + 16))
        {
          goto LABEL_128;
        }

        v104 = *(v9 + 8 * v103 + 32);

        a1 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_127;
        }
      }

      if (*(v104 + 40) != 1)
      {
        goto LABEL_88;
      }

      a9 = *(v104 + 16);
      objc_opt_self();
      v105 = swift_dynamicCastObjCClass();
      if (!v105)
      {
        goto LABEL_88;
      }

      v106 = v105;
      a9 = a9;
      v107 = [v106 characteristic];
      v108 = [v107 service];

      if (v108)
      {
        break;
      }

      v9 = *(&v282 + 1);
LABEL_88:

      ++v103;
      if (a1 == v101)
      {
        v102 = v282;
        goto LABEL_112;
      }
    }

    *&v282 = a2;
    v109 = type metadata accessor for Service();
    v110 = *(v109 + 48);
    v111 = *(v109 + 52);
    v112 = swift_allocObject();
    *(v112 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v108;
    v113 = v108;
    v114 = [v113 uniqueIdentifier];
    sub_252E32E64();

    v115 = [v113 name];
    v275 = sub_252E36F34();
    v272 = v116;

    v117 = [v113 assistantIdentifier];
    if (v117)
    {
      v118 = v117;
      v271 = sub_252E36F34();
      v120 = v119;

      v121 = v120;
      v122 = v271;
    }

    else
    {

      v122 = 0;
      v121 = 0;
    }

    v123 = (*v242)(v112 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v265, v281);
    v124 = (v112 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v125 = v272;
    *v124 = v275;
    v124[1] = v125;
    *(v112 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
    v126 = (v112 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v126 = v122;
    v126[1] = v121;
    MEMORY[0x2530AD700](v123);
    v9 = *(&v282 + 1);
    if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a9 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v102 = v285;
    a2 = v282;
  }

  while (a1 != v101);
LABEL_112:
  a1 = v102;

  if (a1 >> 62)
  {
    a2 = sub_252E378C4();
    if (!a2)
    {
      goto LABEL_124;
    }

LABEL_114:
    *&v285 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, a2 & ~(a2 >> 63), 0);
    if ((a2 & 0x8000000000000000) == 0)
    {
      a3 = 0;
      v127 = v285;
      v128 = a1;
      *(&v282 + 1) = a1 & 0xC000000000000001;
      v129 = a1;
      v130 = a2;
      do
      {
        if (*(&v282 + 1))
        {
          MEMORY[0x2530ADF00](a3, v128);
        }

        else
        {
          v131 = *(v128 + 8 * a3 + 32);
        }

        v132 = sub_252E32E24();
        v134 = v133;

        *&v285 = v127;
        a2 = *(v127 + 16);
        v135 = *(v127 + 24);
        v9 = a2 + 1;
        if (a2 >= v135 >> 1)
        {
          sub_2529AA3A0((v135 > 1), a2 + 1, 1);
          v127 = v285;
        }

        ++a3;
        *(v127 + 16) = v9;
        v136 = v127 + 16 * a2;
        *(v136 + 32) = v132;
        *(v136 + 40) = v134;
        v128 = v129;
      }

      while (v130 != a3);

      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_137;
  }

  a2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a2)
  {
    goto LABEL_114;
  }

LABEL_124:

  v127 = MEMORY[0x277D84F90];
LABEL_53:
  sub_25297A744(v127);
  a1 = v278;
  v72 = v270;
  a9 = v273;
  v54 = v276;
  if (v270 != v277)
  {
    goto LABEL_54;
  }

  v137 = v307;
LABEL_139:

  sub_25297A744(v139);
  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  a3 = __swift_project_value_buffer(v262, qword_27F544DD8);
  *&v307 = 0;
  *(&v307 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E80FC0);
  v50 = MEMORY[0x2530AD730](v137, MEMORY[0x277D837D0]);
  v141 = v140;

  MEMORY[0x2530AD570](v50, v141);

  v265 = a3;
  sub_252CC3D90(v307, *(&v307 + 1), 0xD000000000000086, v264 | 0x8000000000000000);

  v142 = MEMORY[0x277D84F90];
  *&v307 = MEMORY[0x277D84F90];
  if (!v277)
  {
    v145 = v278;
    goto LABEL_210;
  }

  v143 = 0;
  v144 = 0;
  v274 = v278 & 0xC000000000000001;
  v272 = v278 + 32;
  v269 = (v260 + 32);
  while (2)
  {
    if (v274)
    {
      v146 = MEMORY[0x2530ADF00](v143);
      v75 = __OFADD__(v143, 1);
      v147 = (v143 + 1);
      if (v75)
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (v143 >= *(v276 + 16))
      {
        goto LABEL_216;
      }

      v146 = *(v272 + 8 * v143);

      v75 = __OFADD__(v143, 1);
      v147 = (v143 + 1);
      if (v75)
      {
        goto LABEL_215;
      }
    }

    v280 = v147;
    v148 = [*(v146 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
    sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    sub_2529E6100();
    v149 = sub_252E373A4();

    a3 = sub_252B2E20C(v149);
    v279 = v144;

    *&v285 = v142;
    v50 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 >> 62)
    {
      v9 = sub_252E378C4();
      v275 = v146;
      if (!v9)
      {
LABEL_174:
        *&v282 = v142;
        goto LABEL_175;
      }
    }

    else
    {
      v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v275 = v146;
      if (!v9)
      {
        goto LABEL_174;
      }
    }

    v150 = 0;
    v151 = a3 & 0xC000000000000001;
    *&v282 = v142;
    *(&v282 + 1) = a3 & 0xC000000000000001;
    while (2)
    {
      v152 = v150;
      while (2)
      {
        if (v151)
        {
          v153 = MEMORY[0x2530ADF00](v152, a3);
          v150 = v152 + 1;
          if (__OFADD__(v152, 1))
          {
            goto LABEL_211;
          }
        }

        else
        {
          if (v152 >= *(v50 + 16))
          {
            goto LABEL_212;
          }

          v153 = *(a3 + 8 * v152 + 32);

          v150 = v152 + 1;
          if (__OFADD__(v152, 1))
          {
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            a2 = sub_252E378C4();
            if (!a2)
            {
              goto LABEL_219;
            }

LABEL_40:
            a9 = 0;
            *(&v282 + 1) = v50 & 0xC000000000000001;
            a1 = MEMORY[0x277D84F90];
            *&v282 = v50;
            while (1)
            {
              if (*(&v282 + 1))
              {
                MEMORY[0x2530ADF00](a9, v50);
                v66 = (a9 + 1);
                if (__OFADD__(a9, 1))
                {
                  goto LABEL_131;
                }
              }

              else
              {
                if (a9 >= *(v9 + 16))
                {
                  goto LABEL_132;
                }

                v65 = *(v50 + 8 * a9 + 32);

                v66 = (a9 + 1);
                if (__OFADD__(a9, 1))
                {
                  goto LABEL_131;
                }
              }

              v67 = sub_252E32E24();
              a3 = v68;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = sub_2529F7A80(0, *(a1 + 16) + 1, 1, a1);
              }

              v70 = *(a1 + 16);
              v69 = *(a1 + 24);
              if (v70 >= v69 >> 1)
              {
                a1 = sub_2529F7A80((v69 > 1), v70 + 1, 1, a1);
              }

              *(a1 + 16) = v70 + 1;
              v71 = a1 + 16 * v70;
              *(v71 + 32) = v67;
              *(v71 + 40) = a3;
              ++a9;
              v50 = v282;
              if (v66 == a2)
              {
                goto LABEL_220;
              }
            }
          }
        }

        if (*(v153 + 40) != 1 || (v154 = *(v153 + 16), objc_opt_self(), (v155 = swift_dynamicCastObjCClass()) == 0))
        {
LABEL_151:

          ++v152;
          if (v150 == v9)
          {
            v142 = MEMORY[0x277D84F90];
            goto LABEL_175;
          }

          continue;
        }

        break;
      }

      v156 = v155;
      v157 = a3;
      v158 = v9;
      v159 = v154;
      v160 = [v156 characteristic];
      v161 = [v160 service];

      if (!v161)
      {

        v9 = v158;
        a3 = v157;
        v151 = *(&v282 + 1);
        goto LABEL_151;
      }

      v162 = type metadata accessor for Service();
      v163 = *(v162 + 48);
      v164 = *(v162 + 52);
      v270 = swift_allocObject();
      *(v270 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v161;
      v165 = v161;
      v166 = [v165 uniqueIdentifier];
      sub_252E32E64();

      v167 = [v165 name];
      *&v282 = sub_252E36F34();
      v271 = v168;

      v169 = [v165 assistantIdentifier];
      if (v169)
      {
        v170 = v169;
        v266 = sub_252E36F34();
        v172 = v171;

        v173 = v266;
      }

      else
      {

        v173 = 0;
        v172 = 0;
      }

      v174 = v270;
      v175 = (*v269)(v270 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v263, v281);
      v176 = (v174 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v177 = v271;
      *v176 = v282;
      v176[1] = v177;
      *(v174 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v178 = (v174 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v178 = v173;
      v178[1] = v172;
      MEMORY[0x2530AD700](v175);
      v9 = v158;
      if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v179 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      *&v282 = v285;
      v142 = MEMORY[0x277D84F90];
      a3 = v157;
      v151 = *(&v282 + 1);
      if (v150 != v9)
      {
        continue;
      }

      break;
    }

LABEL_175:

    *&v285 = v142;
    v180 = v282;
    if (v282 >> 62)
    {
      v50 = sub_252E378C4();
      if (v50)
      {
        goto LABEL_177;
      }

LABEL_193:
      v182 = v142;
      goto LABEL_194;
    }

    v50 = *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v50)
    {
      goto LABEL_193;
    }

LABEL_177:
    v181 = 0;
    v182 = v142;
    do
    {
      v183 = v181;
      while (1)
      {
        if ((v180 & 0xC000000000000001) != 0)
        {
          a3 = MEMORY[0x2530ADF00](v183, v180);
          v181 = v183 + 1;
          if (__OFADD__(v183, 1))
          {
            goto LABEL_213;
          }
        }

        else
        {
          if (v183 >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_214;
          }

          a3 = *(v180 + 8 * v183 + 32);

          v181 = v183 + 1;
          if (__OFADD__(v183, 1))
          {
            goto LABEL_213;
          }
        }

        v184 = [*(a3 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v184)
        {
          break;
        }

        ++v183;
        if (v181 == v50)
        {
          goto LABEL_194;
        }
      }

      v185 = v184;
      v186 = type metadata accessor for Accessory();
      v187 = *(v186 + 48);
      v188 = *(v186 + 52);
      swift_allocObject();
      sub_252D4CE7C(v185);

      MEMORY[0x2530AD700](v189);
      if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a3 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v182 = v285;
    }

    while (v181 != v50);
LABEL_194:

    v190 = sub_252C759D4(v182);

    v191 = sub_2529A3758(v190);

    if ((v191 & 0x8000000000000000) != 0 || (v191 & 0x4000000000000000) != 0)
    {
      v192 = v191;
      v193 = sub_252E378C4();
      v142 = MEMORY[0x277D84F90];
      if (!v193)
      {
        goto LABEL_207;
      }

LABEL_197:
      *&v285 = v142;
      sub_2529AA3A0(0, v193 & ~(v193 >> 63), 0);
      if (v193 < 0)
      {
        goto LABEL_217;
      }

      v194 = 0;
      a3 = v285;
      v195 = v192;
      *(&v282 + 1) = v192 & 0xC000000000000001;
      v196 = v192;
      do
      {
        if (*(&v282 + 1))
        {
          MEMORY[0x2530ADF00](v194, v195);
        }

        else
        {
          v197 = *(v195 + 8 * v194 + 32);
        }

        v198 = sub_252E32E24();
        v9 = v199;

        *&v285 = a3;
        v50 = *(a3 + 16);
        v200 = *(a3 + 24);
        if (v50 >= v200 >> 1)
        {
          sub_2529AA3A0((v200 > 1), v50 + 1, 1);
          a3 = v285;
        }

        ++v194;
        *(a3 + 16) = v50 + 1;
        v201 = a3 + 16 * v50;
        *(v201 + 32) = v198;
        *(v201 + 40) = v9;
        v195 = v196;
      }

      while (v193 != v194);

      v142 = MEMORY[0x277D84F90];
    }

    else
    {
      v192 = v191;
      v193 = *(v191 + 16);
      v142 = MEMORY[0x277D84F90];
      if (v193)
      {
        goto LABEL_197;
      }

LABEL_207:

      a3 = v142;
    }

    sub_25297A744(a3);
    v145 = v278;
    v144 = v279;
    v143 = v280;
    if (v280 != v277)
    {
      continue;
    }

    break;
  }

  v142 = v307;
LABEL_210:
  sub_252929F10(v145, 0);

  sub_25297A744(v202);
  *&v307 = 0;
  *(&v307 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E81000);
  v203 = MEMORY[0x2530AD730](v142, MEMORY[0x277D837D0]);
  v205 = v204;

  MEMORY[0x2530AD570](v203, v205);

  sub_252CC3D90(v307, *(&v307 + 1), 0xD000000000000086, v264 | 0x8000000000000000);

LABEL_223:
  v210 = [v268 userTask];
  v211 = v301;
  if (v210)
  {
    v212 = v210;
    v213 = qword_27F543660;
    *&v282 = qword_27F543658;
    v280 = type metadata accessor for CodableUserTask();
    swift_allocObject();
    v214 = v212;
    *(&v282 + 1) = v213;

    v215 = v245;

    v279 = v214;
    v281 = sub_252A04C5C(v214);
    if (v250)
    {
      v216 = 7.0;
    }

    else
    {
      v216 = (v249 / 1000);
    }

    v217 = v246;
    sub_252E32DF4();
    sub_252E32D94();
    v219 = v218;
    (*(v247 + 8))(v217, v248);
    v220 = v216 + v219;
    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v262, qword_27F544DD8);
    *&v307 = 0;
    *(&v307 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v307 = 0xD000000000000024;
    *(&v307 + 1) = 0x8000000252E80F30;
    v221 = v259;
    MEMORY[0x2530AD570](v259, v215);
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v222 = v264;
    sub_252CC3D90(v307, *(&v307 + 1), 0xD000000000000086, v264 | 0x8000000000000000);

    *&v307 = 0;
    *(&v307 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v307 = 0xD00000000000002BLL;
    *(&v307 + 1) = 0x8000000252E80F60;
    v223 = MEMORY[0x2530AD730](v211, MEMORY[0x277D837D0]);
    v225 = v224;

    MEMORY[0x2530AD570](v223, v225);

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    sub_252CC3D90(v307, *(&v307 + 1), 0xD000000000000086, v222 | 0x8000000000000000);

    *&v307 = 0;
    *(&v307 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E80F90);
    swift_allocObject();
    v226 = v279;
    *&v285 = sub_252A04C5C(v226);
    sub_252E37AE4();

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    sub_252CC3D90(v307, *(&v307 + 1), 0xD000000000000086, v222 | 0x8000000000000000);

    v280 = v226;

    v307 = v282;
    *&v308 = v221;
    *(&v308 + 1) = v215;
    v227 = MEMORY[0x277D84F90];
    *&v309 = v211;
    *(&v309 + 1) = MEMORY[0x277D84F90];
    *&v310 = 0;
    *(&v310 + 1) = v281;
    *&v311 = 0x696C616974696E69;
    *(&v311 + 1) = 0xEB0000000064657ALL;
    *&v312 = v220;
    *(&v312 + 1) = v251;
    *&v313 = v261;
    *(&v313 + 1) = v252;
    *&v314 = v273;
    *(&v314 + 1) = v243;
    v315 = v244;
    v285 = v282;
    v286 = v221;
    v287 = v215;
    v288 = v211;
    v289 = MEMORY[0x277D84F90];
    v290 = 0;
    v291 = v281;
    v292 = 0x696C616974696E69;
    v293 = 0xEB0000000064657ALL;
    v294 = v220;
    v295 = v251;
    v296 = v261;
    v297 = v252;
    v298 = v273;
    v299 = v243;
    v300 = v244;
    sub_252B5ADE8(&v307, v284);
    sub_252B5AE20(&v285);
    if (qword_27F53F370 != -1)
    {
      swift_once();
    }

    *(&v282 + 1) = qword_27F543668;
    v228 = swift_allocObject();
    v229 = v314;
    *(v228 + 112) = v313;
    *(v228 + 128) = v229;
    v230 = v315;
    v231 = v310;
    *(v228 + 48) = v309;
    *(v228 + 64) = v231;
    v232 = v312;
    *(v228 + 80) = v311;
    *(v228 + 96) = v232;
    v233 = v308;
    *(v228 + 16) = v307;
    *(v228 + 32) = v233;
    *(v228 + 144) = v230;
    *(v228 + 152) = v221;
    *(v228 + 160) = v215;
    v283[4] = sub_252B5BEC4;
    v283[5] = v228;
    v283[0] = MEMORY[0x277D85DD0];
    v283[1] = 1107296256;
    v283[2] = sub_252AD686C;
    v283[3] = &block_descriptor_70;
    v234 = _Block_copy(v283);

    sub_252B5ADE8(&v307, v284);
    v235 = v253;
    sub_252E36CD4();
    v284[0] = v227;
    sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
    v236 = v255;
    v237 = v258;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v235, v236, v234);
    _Block_release(v234);
    (*(v257 + 8))(v236, v237);
    (*(v254 + 8))(v235, v256);

    sub_252B58D08(v221, v215, &unk_2864B7AE8, sub_252B5BF18, &block_descriptor_76);
    sub_252B5AE20(&v307);
  }

  else
  {

    v238 = sub_252E36AC4();
    v239 = sub_252E374D4();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      *v240 = 0;
      _os_log_impl(&dword_252917000, v238, v239, "Can't save an async record without userTask", v240, 2u);
      MEMORY[0x2530AED00](v240, -1, -1);
    }
  }
}

uint64_t sub_252B58D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_252E36CA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E36D04();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v21[1] = qword_27F543668;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);

  sub_252E36CD4();
  v23 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_252B58FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36CA4();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_252E36D04();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v17 = qword_27F543668;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_252B5C05C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_94;
  v13 = _Block_copy(aBlock);

  sub_252E36CD4();
  v20 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198]);
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v11, v7, v13);
  _Block_release(v13);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);

  return sub_252B58D08(a1, v16, &unk_2864B7C28, sub_252B5C064, &block_descriptor_100);
}

uint64_t sub_252B59318@<X0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v1 = sub_252E36C84();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = (v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_252E36D54();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = v37 - v8;
  v9 = sub_252E36CA4();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E36D04();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = dispatch_semaphore_create(0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  v37[1] = v18 + 16;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v37[2] = qword_27F543668;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v54 = sub_252B5AE50;
  v55 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_252AD686C;
  v53 = &block_descriptor_14;
  v20 = _Block_copy(&aBlock);

  v21 = v17;
  sub_252E36CD4();
  v49 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v16, v12, v20);
  _Block_release(v20);
  (*(v40 + 8))(v12, v9);
  (*(v38 + 8))(v16, v39);

  v22 = v41;
  sub_252E36D14();
  v23 = v43;
  *v43 = 200;
  v25 = v46;
  v24 = v47;
  (*(v46 + 104))(v23, *MEMORY[0x277D85178], v47);
  v26 = v42;
  sub_252E36D24();
  (*(v25 + 8))(v23, v24);
  v27 = v45;
  v28 = *(v44 + 8);
  v28(v22, v45);
  sub_252E375F4();
  v28(v26, v27);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544D30);
    aBlock = 0;
    v51 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E80AF0);
    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E4D830);
    sub_252CC4050(aBlock, v51, 0xD000000000000086, 0x8000000252E80B30, 0x726F636552746567, 0xEF29287473694C64, 286);

    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {

    swift_beginAccess();
    v31 = *(v18 + 16);
    v32 = *(v18 + 24);
    v33 = *(v18 + 32);
    v34 = *(v18 + 40);
    v35 = *(v18 + 48);
    sub_252B5AE70(v31, v32);
  }

  v36 = v48;
  *v48 = v31;
  v36[1] = v32;
  v36[2] = v33;
  v36[3] = v34;
  v36[4] = v35;
  return result;
}

__n128 sub_252B59988@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = sub_252E36C84();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_252E36D54();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v48 - v12;
  v13 = sub_252E36CA4();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252E36D04();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = dispatch_semaphore_create(0);
  v22 = swift_allocObject();
  sub_252B5ADCC(&v81);
  v23 = v88;
  *(v22 + 112) = v87;
  *(v22 + 128) = v23;
  *(v22 + 144) = v89;
  v24 = v84;
  *(v22 + 48) = v83;
  *(v22 + 64) = v24;
  v25 = v86;
  *(v22 + 80) = v85;
  *(v22 + 96) = v25;
  v26 = v82;
  *(v22 + 16) = v81;
  *(v22 + 32) = v26;
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v50 = qword_27F543668;
  v27 = swift_allocObject();
  v48 = a1;
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = v22;
  v27[5] = v21;
  *&v74 = sub_252B5C0C8;
  *(&v74 + 1) = v27;
  *&v72 = MEMORY[0x277D85DD0];
  *(&v72 + 1) = 1107296256;
  v73.n128_u64[0] = sub_252AD686C;
  v73.n128_u64[1] = &block_descriptor_118;
  v28 = _Block_copy(&v72);
  v49 = a2;

  v29 = v21;
  sub_252E36CD4();
  *&v63 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v30 = v54;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v20, v16, v28);
  _Block_release(v28);
  (*(v53 + 8))(v16, v30);
  (*(v51 + 8))(v20, v52);

  v31 = v55;
  sub_252E36D14();
  v32 = v57;
  *v57 = 200;
  v34 = v60;
  v33 = v61;
  (*(v60 + 104))(v32, *MEMORY[0x277D85178], v61);
  v35 = v56;
  sub_252E36D24();
  (*(v34 + 8))(v32, v33);
  v36 = v59;
  v37 = *(v58 + 8);
  v37(v31, v59);
  sub_252E375F4();
  v37(v35, v36);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544D30);
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E80AF0);
    MEMORY[0x2530AD570](v48, v49);
    sub_252CC4050(v72, *(&v72 + 1), 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000010, 0x8000000252E812D0, 229);

    v78 = v87;
    v79 = v88;
    v80 = v89;
    v74 = v83;
    v75 = v84;
    v76 = v85;
    v77 = v86;
    v72 = v81;
    v73 = v82;
  }

  else
  {

    swift_beginAccess();
    v39 = *(v22 + 112);
    v70 = *(v22 + 128);
    v71 = *(v22 + 144);
    v40 = *(v22 + 64);
    v65 = *(v22 + 48);
    v66 = v40;
    v41 = *(v22 + 80);
    v68 = *(v22 + 96);
    v69 = v39;
    v67 = v41;
    v42 = *(v22 + 32);
    v63 = *(v22 + 16);
    v64 = v42;
    sub_252938414(&v63, &v72, &qword_27F543160, &qword_252E4E950);

    v78 = v69;
    v79 = v70;
    v80 = v71;
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v72 = v63;
    v73 = v64;
  }

  v43 = v79;
  v44 = v62;
  *(v62 + 96) = v78;
  *(v44 + 112) = v43;
  *(v44 + 128) = v80;
  v45 = v75;
  *(v44 + 32) = v74;
  *(v44 + 48) = v45;
  v46 = v77;
  *(v44 + 64) = v76;
  *(v44 + 80) = v46;
  result = v73;
  *v44 = v72;
  *(v44 + 16) = result;
  return result;
}

__n128 sub_252B5A0C8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_252B59318(&v120);
  if (!v121)
  {
    goto LABEL_26;
  }

  v98 = a2;
  v4 = v123;
  v144 = v123;
  v145[0] = v120;
  v145[1] = v121;

  sub_252A01B34(v145);
  v146 = v122;
  sub_252A01B34(&v146);
  sub_25293847C(&v144, &qword_27F540480, &qword_252E3C910);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v15 = *(v6 - 1);
      v16 = *v6;

      sub_252B59988(v15, v16, v124);

      v132 = v124[6];
      v133 = v124[7];
      v134 = v125;
      v128 = v124[2];
      v129 = v124[3];
      v130 = v124[4];
      v131 = v124[5];
      v126 = v124[0];
      v127 = v124[1];
      if (sub_252AFB7A0(&v126) != 1)
      {
        v141 = v132;
        v142 = v133;
        v143 = v134;
        v137 = v128;
        v138 = v129;
        v139 = v130;
        v140 = v131;
        v135 = v126;
        v136 = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2529F8DF8(0, *(v7 + 2) + 1, 1, v7);
        }

        v18 = *(v7 + 2);
        v17 = *(v7 + 3);
        if (v18 >= v17 >> 1)
        {
          v7 = sub_2529F8DF8((v17 > 1), v18 + 1, 1, v7);
        }

        *(v7 + 2) = v18 + 1;
        v8 = &v7[136 * v18];
        *(v8 + 2) = v135;
        v9 = v136;
        v10 = v137;
        v11 = v139;
        *(v8 + 5) = v138;
        *(v8 + 6) = v11;
        *(v8 + 3) = v9;
        *(v8 + 4) = v10;
        v12 = v140;
        v13 = v141;
        v14 = v142;
        *(v8 + 20) = v143;
        *(v8 + 8) = v13;
        *(v8 + 9) = v14;
        *(v8 + 7) = v12;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_25293847C(&v144, &qword_27F540480, &qword_252E3C910);
  v101 = v7;
  if (sub_252C4D664(5))
  {
    v19 = [a1 filters];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for HomeFilter();
      v21 = sub_252E37264();

      type metadata accessor for HomeStore();
      v22 = static HomeStore.shared.getter();
      v23 = HomeStore.scenes(matching:)(v21);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        a2 = v23 & 0xFFFFFFFFFFFFFF8;
        if (v23 >> 62)
        {
          v52 = sub_252E378C4();
          if (!v52)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v52 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v52)
          {
            goto LABEL_65;
          }
        }

        v53 = 0;
        v43 = MEMORY[0x277D84F90];
        a1 = (v23 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v53, v23);
            v55 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v53 >= *(a2 + 16))
            {
              goto LABEL_60;
            }

            v54 = *(v23 + 8 * v53 + 32);

            v55 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_59;
            }
          }

          v56 = sub_252E32E24();
          v58 = v57;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_2529F7A80(0, *(v43 + 2) + 1, 1, v43);
          }

          v60 = *(v43 + 2);
          v59 = *(v43 + 3);
          if (v60 >= v59 >> 1)
          {
            v43 = sub_2529F7A80((v59 > 1), v60 + 1, 1, v43);
          }

          *(v43 + 2) = v60 + 1;
          v61 = &v43[16 * v60];
          *(v61 + 4) = v56;
          *(v61 + 5) = v58;
          ++v53;
          v7 = v101;
          a2 = v23 & 0xFFFFFFFFFFFFFF8;
        }

        while (v55 != v52);
        goto LABEL_66;
      }

      sub_252929F10(v23, 1);
    }
  }

  type metadata accessor for HomeStore();
  v26 = static HomeStore.shared.getter();
  v27 = v26[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v27 != 2 && (v27 & 1) == 0 || (v28 = [a1 filters]) == 0)
  {

LABEL_22:
    a2 = v98;
    if (qword_27F53F4D8 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_23;
  }

  v29 = v28;
  type metadata accessor for HomeFilter();
  v30 = sub_252E37264();

  v31 = [a1 userTask];
  v23 = HomeStore.services(matching:supporting:)(v30, v31);
  v33 = v32;

  if (v33)
  {
    sub_252929F10(v23, 1);

    goto LABEL_22;
  }

  a1 = (v23 & 0xFFFFFFFFFFFFFF8);
  if (v23 >> 62)
  {
    v41 = sub_252E378C4();
    v7 = v101;
    if (v41)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

  v41 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v101;
  if (!v41)
  {
LABEL_65:
    v43 = MEMORY[0x277D84F90];
LABEL_66:
    sub_252929F10(v23, 0);
    v100 = sub_252C75848(v43);

    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v62 = sub_252E36AD4();
    __swift_project_value_buffer(v62, qword_27F544D30);
    v63 = sub_252E36AC4();
    v64 = sub_252E374C4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v147 = v66;
      *v65 = 136315138;

      v67 = sub_252E373B4();
      v69 = v68;

      v70 = sub_252BE2CE0(v67, v69, &v147);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_252917000, v63, v64, "EntityIDs targeted by Intent: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v71 = v66;
      v7 = v101;
      MEMORY[0x2530AED00](v71, -1, -1);
      MEMORY[0x2530AED00](v65, -1, -1);
    }

    v72 = *(v7 + 2);
    if (v72)
    {
      v73 = 0;
      v74 = v72 - 1;
      v75 = 32;
      while (1)
      {
        v111 = *&v7[v75];
        v76 = *&v7[v75 + 16];
        v77 = *&v7[v75 + 32];
        v78 = *&v7[v75 + 64];
        v114 = *&v7[v75 + 48];
        v115 = v78;
        v112 = v76;
        v113 = v77;
        v79 = *&v7[v75 + 80];
        v80 = *&v7[v75 + 96];
        v81 = *&v7[v75 + 112];
        v119 = *&v7[v75 + 128];
        v117 = v80;
        v118 = v81;
        v116 = v79;
        sub_252B5ADE8(&v111, &v147);

        v83 = sub_252C75848(v82);

        v84 = sub_252E36AC4();
        v85 = sub_252E374C4();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = v74;
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v147 = v88;
          *v87 = 136315138;
          v89 = sub_252E373B4();
          v91 = sub_252BE2CE0(v89, v90, &v147);
          v7 = v101;

          *(v87 + 4) = v91;
          _os_log_impl(&dword_252917000, v84, v85, "Entity IDs in records: %s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x2530AED00](v88, -1, -1);
          v92 = v87;
          v74 = v86;
          MEMORY[0x2530AED00](v92, -1, -1);
        }

        v93 = sub_252A1218C(v83, v100);

        if ((v93 & 1) == 0)
        {
          break;
        }

        sub_252B5AE20(&v111);
        if (v74 == v73)
        {
          goto LABEL_78;
        }

        ++v73;
        v75 += 136;
        if (v73 >= *(v7 + 2))
        {
          __break(1u);
          goto LABEL_78;
        }
      }

      v108 = v117;
      v109 = v118;
      v110 = v119;
      v104 = v113;
      v105 = v114;
      v106 = v115;
      v107 = v116;
      v102 = v111;
      v103 = v112;
      GEOLocationCoordinate2DMake(&v102);
      v153 = v108;
      v154 = v109;
      v155 = v110;
      v149 = v104;
      v150 = v105;
      v151 = v106;
      v152 = v107;
      v147 = v102;
      v148 = v103;
    }

    else
    {
LABEL_78:

      sub_252B5ADCC(&v147);
    }

    a2 = v98;
    goto LABEL_81;
  }

LABEL_29:
  v42 = 0;
  v99 = v23 & 0xC000000000000001;
  v43 = MEMORY[0x277D84F90];
  a2 = v23;
  while (v99)
  {
    MEMORY[0x2530ADF00](v42, v23);
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_57;
    }

LABEL_33:
    v46 = sub_252E32E24();
    v48 = v47;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_2529F7A80(0, *(v43 + 2) + 1, 1, v43);
    }

    v50 = *(v43 + 2);
    v49 = *(v43 + 3);
    if (v50 >= v49 >> 1)
    {
      v43 = sub_2529F7A80((v49 > 1), v50 + 1, 1, v43);
    }

    *(v43 + 2) = v50 + 1;
    v51 = &v43[16 * v50];
    *(v51 + 4) = v46;
    *(v51 + 5) = v48;
    ++v42;
    v7 = v101;
    v23 = a2;
    if (v45 == v41)
    {
      goto LABEL_66;
    }
  }

  if (v42 >= a1[2])
  {
    goto LABEL_58;
  }

  v44 = *(v23 + 8 * v42 + 32);

  v45 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_33;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_23:
  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544D30);
  v35 = a1;
  v36 = sub_252E36AC4();
  v37 = sub_252E374D4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_252917000, v36, v37, "Couldn't find services matching intent: %@", v38, 0xCu);
    sub_25293847C(v39, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v39, -1, -1);
    MEMORY[0x2530AED00](v38, -1, -1);
  }

LABEL_26:
  sub_252B5ADCC(&v147);
LABEL_81:
  v94 = v154;
  *(a2 + 96) = v153;
  *(a2 + 112) = v94;
  *(a2 + 128) = v155;
  v95 = v150;
  *(a2 + 32) = v149;
  *(a2 + 48) = v95;
  v96 = v152;
  *(a2 + 64) = v151;
  *(a2 + 80) = v96;
  result = v148;
  *a2 = v147;
  *(a2 + 16) = result;
  return result;
}

BOOL sub_252B5AB90(void *a1)
{
  v2 = sub_252E32E04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252B5A0C8(a1, v18);
  v26 = v18[6];
  v27 = v18[7];
  v28 = v19;
  v22 = v18[2];
  v23 = v18[3];
  v24 = v18[4];
  v25 = v18[5];
  v20 = v18[0];
  v21 = v18[1];
  if (sub_252AFB7A0(&v20) == 1)
  {
    return 0;
  }

  v8 = v21;
  v9 = *&v25;
  sub_252E32DF4();
  sub_252E32D94();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v7 = v9 >= v11;
  if (v9 < v11)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D30);
    v13 = sub_252E36AC4();
    v14 = sub_252E374C4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_252917000, v13, v14, "Found an invalid async record, will proceed to remove", v15, 2u);
      MEMORY[0x2530AED00](v15, -1, -1);
    }

    sub_252B58FEC(v8, *(&v8 + 1));
  }

  sub_25293847C(v18, &qword_27F543160, &qword_252E4E950);
  return v7;
}

double sub_252B5ADCC(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B5AE70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_252B5AF00()
{
  result = qword_27F543680;
  if (!qword_27F543680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543680);
  }

  return result;
}

uint64_t sub_252B5AF54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252B5AF9C(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_252B56A70(a1, v1 + v4, *v5);
}

uint64_t sub_252B5B068(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x8000000252E812F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B73615472657375 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79746964696C6176 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEE0064496B736154 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000252E81310 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D614E656E656373 && a2 == 0xE900000000000065)
  {

    return 10;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_252B5B400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543688, &qword_252E4D878);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v34 - v7;
  v9 = a1[3];
  v10 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_252B5BB5C();

  sub_252E37F74();
  if (v2)
  {
    v47 = MEMORY[0x277D84F90];
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v11 = v5;
    LOBYTE(v57) = 0;
    *&v40 = sub_252E37C04();
    *(&v40 + 1) = v12;

    LOBYTE(v57) = 1;
    v13 = sub_252E37C04();
    v44 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    LOBYTE(v48) = 2;
    sub_252984B28(&qword_27F540920);
    sub_252E37C64();
    v43 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543698, &qword_252E4D880);
    LOBYTE(v48) = 3;
    sub_252B5BBB0(&qword_27F5436A0, &qword_27F5436A8);
    sub_252E37C64();
    v47 = v57;
    LOBYTE(v57) = 4;
    v39 = sub_252E37C44();
    type metadata accessor for CodableUserTask();
    LOBYTE(v48) = 5;
    sub_252B5AF54(&qword_27F541930, type metadata accessor for CodableUserTask);
    sub_252E37C64();
    v42 = v57;
    LOBYTE(v57) = 6;
    v15 = sub_252E37C04();
    v41 = v16;
    v38 = v15;
    LOBYTE(v57) = 7;
    sub_252E37C24();
    *&v36 = v17;
    LOBYTE(v57) = 8;
    *(&v36 + 1) = sub_252E37BA4();
    v37 = v18;
    LOBYTE(v57) = 9;
    v19 = sub_252E37BA4();
    v21 = v20;
    v72 = 10;
    v22 = sub_252E37BA4();
    v35 = v23;
    v24 = v22;
    (*(v11 + 8))(v8, v45);
    v48 = v40;
    v34 = v13;
    v25 = v44;
    *&v49 = v13;
    *(&v49 + 1) = v44;
    *&v50 = v43;
    *(&v50 + 1) = v47;
    v26 = v38;
    *&v51 = v39;
    *(&v51 + 1) = v42;
    *&v52 = v38;
    *(&v52 + 1) = v41;
    v27 = v36;
    v53 = v36;
    v28 = v37;
    *&v54 = v37;
    *(&v54 + 1) = v19;
    *&v55 = v21;
    *(&v55 + 1) = v24;
    v56 = v35;
    sub_252B5ADE8(&v48, &v57);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v57 = v40;
    v58 = v34;
    v59 = v25;
    v60 = v43;
    v61 = v47;
    v62 = v39;
    v63 = v42;
    v64 = v26;
    v65 = v41;
    v66 = __PAIR128__(*(&v36 + 1), v27);
    v67 = v28;
    v68 = v19;
    v69 = v21;
    v70 = v24;
    v71 = v35;
    result = sub_252B5AE20(&v57);
    v30 = v55;
    *(a2 + 96) = v54;
    *(a2 + 112) = v30;
    *(a2 + 128) = v56;
    v31 = v51;
    *(a2 + 32) = v50;
    *(a2 + 48) = v31;
    v32 = v53;
    *(a2 + 64) = v52;
    *(a2 + 80) = v32;
    v33 = v49;
    *a2 = v48;
    *(a2 + 16) = v33;
  }

  return result;
}

unint64_t sub_252B5BB5C()
{
  result = qword_27F543690;
  if (!qword_27F543690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543690);
  }

  return result;
}

uint64_t sub_252B5BBB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543698, &qword_252E4D880);
    sub_252B5AF54(a2, type metadata accessor for CodableEntityResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252B5BCAC(uint64_t *a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_252B568B0(a1, v1 + v4, *v5);
}

uint64_t sub_252B5BE1C(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_252B56980(a1, v1 + v4, v6);
}

uint64_t sub_252B5BEC4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  sub_252DBE828((v0 + 16), v1, v2);
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

unint64_t sub_252B5C008()
{
  result = qword_27F5436D0;
  if (!qword_27F5436D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5436D0);
  }

  return result;
}

uint64_t objectdestroy_78Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252B5C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252B5C1A4()
{
  result = qword_27F5436D8;
  if (!qword_27F5436D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5436D8);
  }

  return result;
}

unint64_t sub_252B5C1FC()
{
  result = qword_27F5436E0;
  if (!qword_27F5436E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5436E0);
  }

  return result;
}

unint64_t sub_252B5C254()
{
  result = qword_27F5436E8;
  if (!qword_27F5436E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5436E8);
  }

  return result;
}

unint64_t sub_252B5C2AC()
{
  result = qword_27F5436F0;
  if (!qword_27F5436F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5436F0);
  }

  return result;
}

uint64_t sub_252B5C300(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x8000000252E81330 == a2)
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

uint64_t sub_252B5C428@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436F8, &qword_252E4DA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252B5C670();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v11 = sub_252E37C04();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  v14 = sub_252E37C04();
  v16 = v15;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v24 = 2;
  sub_252984B28(&qword_27F540920);
  sub_252E37C64();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v17;
  return result;
}

unint64_t sub_252B5C670()
{
  result = qword_27F543700;
  if (!qword_27F543700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543700);
  }

  return result;
}

unint64_t sub_252B5C6D8()
{
  result = qword_27F543710;
  if (!qword_27F543710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543710);
  }

  return result;
}

unint64_t sub_252B5C730()
{
  result = qword_27F543718;
  if (!qword_27F543718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543718);
  }

  return result;
}

unint64_t sub_252B5C788()
{
  result = qword_27F543720;
  if (!qword_27F543720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543720);
  }

  return result;
}

uint64_t sub_252B5C874()
{
  type metadata accessor for BrigthnessZeroAsPowerOffHandleDelegate();

  return swift_allocObject();
}

void sub_252B5C8A4(void *a1, void (*a2)(char *))
{
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();

    v6 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v7 = sub_252E36F04();
    v8 = [v6 initWithIdentifier:0 displayString:v7];

    v9 = v8;
    [v9 setBoolValue_];
    [v9 setType_];

    v10 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v11 = sub_252E36F04();
    v12 = [v10 initWithIdentifier:0 displayString:v11];

    v13 = v12;
    [v13 setTaskType_];
    [v13 setAttribute_];
    [v13 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_252E3C130;
    *(v15 + 32) = v13;
    v16 = v13;
    v17 = sub_252B4CA9C(v5, v15, 0, 1);
    v19 = v18;

    swift_setDeallocating();
    v20 = *(v15 + 16);
    swift_arrayDestroy();
    *(inited + 32) = v17;
    *(inited + 40) = v19 & 1;
    v21 = combineResults(results:)(inited);
    swift_setDeallocating();
    sub_2529904F0(inited + 32);
    sub_252990634(v21);
    a2(v21);
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000008CLL, 0x8000000252E813A0, 0xD000000000000021, 0x8000000252E68B10, 26);
    v21 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v23 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v21[v23] = 5;
    [v21 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v24 = sub_252E37254();
    [v21 setEntityResponses_];

    a2(v21);
  }
}

uint64_t sub_252B5CC4C(void *a1)
{
  if (!sub_252C4B5D4() || (sub_252C4B680(1) & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
LABEL_11:
    v6 = 0;
    return v6 & 1;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 2 || (sub_252AABAA0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = sub_252C4D57C();
  v6 = 0;
  if ((v7 & 1) == 0 && (v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v8 + 288), v15);

    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    if ((*(v10 + 80))(v9, v10))
    {
      v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v11 + 16), v14);

      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      v12 = sub_252E338F4();
      __swift_destroy_boxed_opaque_existential_1(v14);
      v6 = v12 ^ 1;
    }

    else
    {
      v6 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v6 & 1;
}

id HomeUserTaskResponse.__allocating_init(userTask:taskOutcome:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskOutcome_];
  [v8 setUserTask_];

  return v8;
}

uint64_t HomeUserTaskResponse.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  HomeUserTaskResponse.Builder.init()();
  return v0;
}

uint64_t HomeUserTaskResponse.Builder.init()()
{
  *(v0 + 16) = 1;
  v1 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setTaskType_];
  [v4 setAttribute_];
  [v4 setValue_];

  *(v0 + 24) = v4;
  return v0;
}

uint64_t sub_252B5CF34(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = a1;
    v3 = a1;
  }
}

uint64_t sub_252B5CF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  v11 = *(v3 + 24);
  *(v3 + 24) = v10;
}

id sub_252B5D054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
  v4 = v2;
  v5 = sub_252E36F04();
  v6 = [v3 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskOutcome_];
  [v7 setUserTask_];

  return v7;
}

uint64_t sub_252B5D0FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for HomeUserTaskResponse.Builder();
  v3 = swift_allocObject();
  v4 = v1;
  HomeUserTaskResponse.Builder.init()();
  v5 = *(v3 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;

  return v3;
}

uint64_t HomeUserTaskResponse.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252B5D2B0()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550) - 8) + 64) + 15;
  *(v1 + 1184) = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543728, &qword_252E4DBE8) - 8) + 64) + 15;
  *(v1 + 1192) = swift_task_alloc();
  v4 = sub_252E32BA4();
  *(v1 + 1200) = v4;
  v5 = *(v4 - 8);
  *(v1 + 1208) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 1216) = swift_task_alloc();
  *(v1 + 1224) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490) - 8) + 64) + 15;
  *(v1 + 1232) = swift_task_alloc();
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  *(v1 + 1256) = swift_task_alloc();
  v8 = sub_252E32E04();
  *(v1 + 1264) = v8;
  v9 = *(v8 - 8);
  *(v1 + 1272) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 1280) = swift_task_alloc();
  v11 = sub_252E35BE4();
  *(v1 + 1288) = v11;
  v12 = *(v11 - 8);
  *(v1 + 1296) = v12;
  v13 = *(v12 + 64) + 15;
  *(v1 + 1304) = swift_task_alloc();
  v14 = sub_252E35BF4();
  *(v1 + 1312) = v14;
  v15 = *(v14 - 8);
  *(v1 + 1320) = v15;
  v16 = *(v15 + 64) + 15;
  *(v1 + 1328) = swift_task_alloc();
  v17 = sub_252E35C14();
  *(v1 + 1336) = v17;
  v18 = *(v17 - 8);
  *(v1 + 1344) = v18;
  v19 = *(v18 + 64) + 15;
  *(v1 + 1352) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0) - 8) + 64) + 15;
  *(v1 + 1360) = swift_task_alloc();
  *(v1 + 1368) = swift_task_alloc();
  *(v1 + 1376) = swift_task_alloc();
  *(v1 + 1384) = swift_task_alloc();
  *(v1 + 1392) = swift_task_alloc();
  *(v1 + 1400) = swift_task_alloc();
  *(v1 + 1104) = *v0;
  *(v1 + 1408) = *(v0 + 16);
  *(v1 + 1120) = *(v0 + 24);
  *(v1 + 983) = *(v0 + 40);
  memcpy((v1 + 520), (v0 + 41), 0x1CFuLL);

  return MEMORY[0x2822009F8](sub_252B5D658, 0, 0);
}

uint64_t sub_252B5D658()
{
  v155 = v0;
  v1 = (v0 + 1104);
  v2 = (v0 + 1120);
  v3 = *(v0 + 983);
  v4 = *(v0 + 1408);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1200);
  *(v0 + 1416) = [objc_allocWithZone(type metadata accessor for AutomateHomeIntent()) init];
  v148 = *(v0 + 1104);
  v151 = *(v0 + 1120);
  memcpy(v154, (v0 + 520), sizeof(v154));
  v8 = sub_252AEFEB0();
  *(v0 + 1424) = sub_252A43278();

  v9 = *(v6 + 56);
  *(v0 + 1432) = v9;
  *(v0 + 1440) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v5, 1, 1, v7);
  if (v4)
  {
    v10 = *(v0 + 983);
    v11 = *(v0 + 1408);
    v12 = *(v0 + 1352);
    v13 = *(v0 + 1328);
    v14 = *(v0 + 1320);
    v15 = *(v0 + 1312);
    v16 = *(v0 + 1304);
    v17 = *(v0 + 1296);
    v18 = *(v0 + 1288);
    v143 = *(v0 + 1280);
    *(v0 + 16) = *v1;
    *(v0 + 32) = v11;
    *(v0 + 40) = *v2;
    *(v0 + 56) = v10;
    memcpy((v0 + 57), (v0 + 520), 0x1CFuLL);
    (*(v14 + 104))(v13, *MEMORY[0x277D56130], v15);
    (*(v17 + 104))(v16, *MEMORY[0x277D56128], v18);
    sub_252CC6450(MEMORY[0x277D84F90]);
    sub_252E35C04();
    sub_252E32DF4();
    v19 = swift_task_alloc();
    *(v0 + 1448) = v19;
    *v19 = v0;
    v19[1] = sub_252B5E598;
    v20 = *(v0 + 1352);
    v21 = *(v0 + 1280);

    return sub_252BAE648(v20, v21);
  }

  v149 = *v1;
  v150 = *(v0 + 1408);
  v152 = *v2;
  v153 = *(v0 + 983);
  memcpy(v154, (v0 + 520), sizeof(v154));
  if (sub_252BB2304())
  {
    v23 = *(v0 + 983);
    if (v23 <= 1)
    {
      if (*(v0 + 983))
      {
        v24 = 4;
      }

      else
      {
        v24 = 3;
      }
    }

    else if (v23 == 2)
    {
      v24 = 1;
    }

    else
    {
      if (v23 != 3)
      {
        v53 = *(v0 + 1360);
        v54 = *(v0 + 1208);
        v55 = *(v0 + 1200);
        sub_252938414(*(v0 + 1400), v53, &qword_27F540F00, &unk_252E3FEC0);
        v56 = *(v54 + 48);
        v57 = v56(v53, 1, v55);
        v58 = *(v0 + 1360);
        v59 = *(v0 + 1216);
        if (v57 == 1)
        {
          v60 = *(v0 + 1200);
          v61 = *(v0 + 1192);
          v62 = *(v0 + 1184);
          v63 = sub_252E32FF4();
          (*(*(v63 - 8) + 56))(v61, 1, 1, v63);
          v64 = sub_252E33044();
          (*(*(v64 - 8) + 56))(v62, 1, 1, v64);
          sub_252E32B94();
          if (v56(v58, 1, v60) != 1)
          {
            sub_25293847C(*(v0 + 1360), &qword_27F540F00, &unk_252E3FEC0);
          }
        }

        else
        {
          (*(*(v0 + 1208) + 32))(*(v0 + 1216), *(v0 + 1360), *(v0 + 1200));
        }

        v100 = *(v0 + 1400);
        v101 = *(v0 + 1200);
        if (v56(v100, 1, v101))
        {
          (*(*(v0 + 1272) + 56))(*(v0 + 1232), 1, 1, *(v0 + 1264));
        }

        else
        {
          v102 = *(v0 + 1232);
          v103 = *(v0 + 1224);
          v104 = *(v0 + 1208);
          (*(v104 + 16))(v103, v100, v101);
          sub_252E32B44();
          (*(v104 + 8))(v103, v101);
        }

        v105 = *(v0 + 1272);
        v106 = *(v0 + 1248);
        v107 = *(v0 + 1232);
        v108 = *(v0 + 1224);
        v109 = *(v0 + 1216);
        v110 = *(v0 + 1208);
        v139 = *(v0 + 1264);
        v111 = *(v0 + 1200);
        v112 = objc_allocWithZone(type metadata accessor for TriggerCondition());
        v113 = sub_252E36F04();
        v114 = [v112 initWithIdentifier:0 displayString:v113 pronunciationHint:0];

        v147 = v114;
        [v147 setType_];
        v115 = *(v110 + 16);
        v115(v108, v109, v111);
        sub_252938414(v107, v106, &qword_27F540F38, &unk_252E41490);
        v116 = type metadata accessor for TimeTriggerValue();
        v117 = objc_allocWithZone(v116);
        v118 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
        (*(v105 + 56))(&v117[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate], 1, 1, v139);
        v115(&v117[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate], v108, v111);
        swift_beginAccess();
        sub_2529D032C(v106, &v117[v118], &qword_27F540F38, &unk_252E41490);
        swift_endAccess();
        v117[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval] = 0;
        v119 = sub_252E36F04();
        *(v0 + 1152) = v117;
        *(v0 + 1160) = v116;
        v120 = objc_msgSendSuper2((v0 + 1152), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v119, 0);

        sub_25293847C(v106, &qword_27F540F38, &unk_252E41490);
        v121 = *(v110 + 8);
        v121(v108, v111);
        [v147 setValue_];

        v122 = *(v0 + 1232);
        v123 = *(v0 + 1216);
        v124 = *(v0 + 1200);
        [v147 setRecurrence_];

        sub_25293847C(v122, &qword_27F540F38, &unk_252E41490);
        v121(v123, v124);
        v48 = v147;
        goto LABEL_26;
      }

      v24 = 2;
    }

    v145 = v24;
    v65 = *(v0 + 1440);
    v66 = *(v0 + 1400);
    v67 = *(v0 + 1208);
    v68 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1368), 1, 1, v68);
    if ((*(v67 + 48))(v66, 1, v68))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1240), 1, 1, *(v0 + 1264));
    }

    else
    {
      v69 = *(v0 + 1240);
      v70 = *(v0 + 1224);
      v71 = *(v0 + 1208);
      v72 = *(v0 + 1200);
      (*(v71 + 16))(v70, *(v0 + 1400), v72);
      sub_252E32B44();
      (*(v71 + 8))(v70, v72);
    }

    v137 = *(v0 + 1432);
    v141 = *(v0 + 1440);
    v73 = *(v0 + 1376);
    v74 = *(v0 + 1368);
    v75 = *(v0 + 1272);
    v76 = *(v0 + 1264);
    v77 = *(v0 + 1248);
    v78 = *(v0 + 1240);
    v79 = *(v0 + 1200);
    v80 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v81 = sub_252E36F04();
    v82 = [v80 initWithIdentifier:0 displayString:v81 pronunciationHint:0];

    v83 = v82;
    [v83 setType_];
    sub_252938414(v74, v73, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v78, v77, &qword_27F540F38, &unk_252E41490);
    v134 = type metadata accessor for EventTriggerValue();
    v84 = objc_allocWithZone(v134);
    v85 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v137(&v84[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v79);
    v86 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v75 + 56))(&v84[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v76);
    *&v84[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = v145;
    swift_beginAccess();
    v87 = &v84[v85];
    v48 = v83;
    sub_2529D032C(v73, v87, &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v77, &v84[v86], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v88 = sub_252E36F04();
    *(v0 + 1168) = v84;
    *(v0 + 1176) = v134;
    v89 = objc_msgSendSuper2((v0 + 1168), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v88, 0);

    sub_25293847C(v77, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v73, &qword_27F540F00, &unk_252E3FEC0);
    [v83 setValue_];

    v51 = *(v0 + 1368);
    v52 = *(v0 + 1240);
  }

  else
  {
    v25 = *(v0 + 1440);
    v26 = *(v0 + 1400);
    v27 = *(v0 + 1208);
    v28 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1384), 1, 1, v28);
    if ((*(v27 + 48))(v26, 1, v28))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1256), 1, 1, *(v0 + 1264));
    }

    else
    {
      v29 = *(v0 + 1256);
      v30 = *(v0 + 1224);
      v31 = *(v0 + 1208);
      v32 = *(v0 + 1200);
      (*(v31 + 16))(v30, *(v0 + 1400), v32);
      sub_252E32B44();
      (*(v31 + 8))(v30, v32);
    }

    v140 = *(v0 + 1432);
    v144 = *(v0 + 1440);
    v33 = *(v0 + 1384);
    v34 = *(v0 + 1376);
    v35 = *(v0 + 1272);
    v36 = *(v0 + 1264);
    v37 = *(v0 + 1256);
    v38 = *(v0 + 1248);
    v39 = *(v0 + 1200);
    v40 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v41 = sub_252E36F04();
    v42 = [v40 initWithIdentifier:0 displayString:v41 pronunciationHint:0];

    v43 = v42;
    [v43 setType_];
    sub_252938414(v33, v34, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v37, v38, &qword_27F540F38, &unk_252E41490);
    v136 = type metadata accessor for EventTriggerValue();
    v44 = objc_allocWithZone(v136);
    v45 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v140(&v44[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v39);
    v46 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v35 + 56))(&v44[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v36);
    *&v44[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = 0;
    swift_beginAccess();
    v47 = &v44[v45];
    v48 = v43;
    sub_2529D032C(v34, v47, &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v38, &v44[v46], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v49 = sub_252E36F04();
    *(v0 + 1136) = v44;
    *(v0 + 1144) = v136;
    v50 = objc_msgSendSuper2((v0 + 1136), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v49, 0);

    sub_25293847C(v38, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v34, &qword_27F540F00, &unk_252E3FEC0);
    [v43 setValue_];

    v51 = *(v0 + 1384);
    v52 = *(v0 + 1256);
  }

  [v48 setRecurrence_];

  sub_25293847C(v52, &qword_27F540F38, &unk_252E41490);
  sub_25293847C(v51, &qword_27F540F00, &unk_252E3FEC0);
LABEL_26:
  v90 = *(v0 + 1424);
  v91 = *(v0 + 1416);
  v92 = *(v0 + 1400);
  v93 = *(v0 + 1392);
  v94 = *(v0 + 1384);
  v95 = *(v0 + 1376);
  v96 = *(v0 + 1368);
  v125 = *(v0 + 1360);
  v126 = *(v0 + 1352);
  v127 = *(v0 + 1328);
  v128 = *(v0 + 1304);
  v129 = *(v0 + 1280);
  v130 = *(v0 + 1256);
  v131 = *(v0 + 1248);
  v132 = *(v0 + 1240);
  v133 = *(v0 + 1232);
  v135 = *(v0 + 1224);
  v138 = *(v0 + 1216);
  v142 = *(v0 + 1192);
  v146 = *(v0 + 1184);
  v97 = v48;
  [v91 setAutomatableTask_];
  [v91 setTrigger_];

  sub_25293847C(v92, &qword_27F540F00, &unk_252E3FEC0);

  v98 = *(v0 + 8);
  v99 = *(v0 + 1416);

  return v98(v99);
}

uint64_t sub_252B5E598(uint64_t a1)
{
  v2 = *(*v1 + 1448);
  v3 = *(*v1 + 1352);
  v4 = *(*v1 + 1344);
  v5 = *(*v1 + 1336);
  v6 = *(*v1 + 1280);
  v7 = *(*v1 + 1272);
  v8 = *(*v1 + 1264);
  v10 = *v1;
  *(*v1 + 1456) = a1;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252B5E754, 0, 0);
}

uint64_t sub_252B5E754()
{
  v180 = v0;
  v1 = (v0 + 1104);
  v2 = (v0 + 1120);
  v3 = *(v0 + 1456);
  if (v3)
  {
    v4 = [*(v0 + 1456) startDateComponents];
    if (v4)
    {
      v5 = *(v0 + 1392);
      v6 = v4;
      sub_252E32B24();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(v0 + 1440);
    v9 = *(v0 + 983);
    v10 = *(v0 + 1408);
    v11 = *(v0 + 1400);
    v12 = *(v0 + 1392);
    (*(v0 + 1432))(v12, v7, 1, *(v0 + 1200));
    sub_252B5F69C(v12, v11);
    v173 = *v1;
    v176 = *v2;
    memcpy(v179, (v0 + 520), sizeof(v179));
    v13 = [v3 recurrenceRule];
    v14 = sub_252BB1378(v13);

    if (v14)
    {

      v15 = 0;
      goto LABEL_15;
    }

    v16 = *(v0 + 1408);
    if (sub_252E35D34() && (v17 = sub_252E35CF4(), , v17))
    {
    }

    else if (sub_252E35D34())
    {
      v18 = sub_252E35D04();

      if (v18)
      {

        v14 = 0;
        v15 = 1;
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v15 = 0;
  v14 = 0;
LABEL_15:
  v174 = *v1;
  v175 = *(v0 + 1408);
  v177 = *v2;
  v178 = *(v0 + 983);
  memcpy(v179, (v0 + 520), sizeof(v179));
  v171 = v14;
  if ((sub_252BB2304() & 1) == 0)
  {
    v21 = *(v0 + 1440);
    v22 = *(v0 + 1400);
    v23 = *(v0 + 1208);
    v24 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1384), 1, 1, v24);
    if ((*(v23 + 48))(v22, 1, v24))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1256), 1, 1, *(v0 + 1264));
    }

    else
    {
      v25 = *(v0 + 1256);
      v26 = *(v0 + 1224);
      v27 = *(v0 + 1208);
      v28 = *(v0 + 1200);
      (*(v27 + 16))(v26, *(v0 + 1400), v28);
      sub_252E32B44();
      (*(v27 + 8))(v26, v28);
    }

    v159 = *(v0 + 1432);
    v163 = *(v0 + 1440);
    v29 = *(v0 + 1384);
    v30 = *(v0 + 1376);
    v31 = *(v0 + 1272);
    v167 = *(v0 + 1264);
    v32 = *(v0 + 1256);
    v33 = *(v0 + 1248);
    v34 = *(v0 + 1200);
    v35 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v36 = sub_252E36F04();
    v37 = [v35 initWithIdentifier:0 displayString:v36 pronunciationHint:0];

    v38 = v37;
    [v38 setType_];
    sub_252938414(v29, v30, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v32, v33, &qword_27F540F38, &unk_252E41490);
    v39 = type metadata accessor for EventTriggerValue();
    v40 = objc_allocWithZone(v39);
    v41 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v159(&v40[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v34);
    v42 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v31 + 56))(&v40[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v167);
    *&v40[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = 0;
    swift_beginAccess();
    sub_2529D032C(v30, &v40[v41], &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v33, &v40[v42], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v43 = sub_252E36F04();
    *(v0 + 1136) = v40;
    v44 = v38;
    *(v0 + 1144) = v39;
    v45 = objc_msgSendSuper2((v0 + 1136), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v43, 0);

    sub_25293847C(v33, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v30, &qword_27F540F00, &unk_252E3FEC0);
    [v38 setValue_];

    if (v171)
    {
      v46 = *(v0 + 1200);
      v47 = sub_252E37254();
    }

    else
    {
      v47 = 0;
    }

    v48 = *(v0 + 1384);
    v49 = *(v0 + 1256);
    goto LABEL_41;
  }

  v19 = *(v0 + 983);
  if (v19 <= 1)
  {
    if (*(v0 + 983))
    {
      v20 = 4;
    }

    else
    {
      v20 = 3;
    }

LABEL_34:
    v168 = v20;
    v62 = *(v0 + 1440);
    v63 = *(v0 + 1400);
    v64 = *(v0 + 1208);
    v65 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1368), 1, 1, v65);
    if ((*(v64 + 48))(v63, 1, v65))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1240), 1, 1, *(v0 + 1264));
    }

    else
    {
      v66 = *(v0 + 1240);
      v67 = *(v0 + 1224);
      v68 = *(v0 + 1208);
      v69 = *(v0 + 1200);
      (*(v68 + 16))(v67, *(v0 + 1400), v69);
      sub_252E32B44();
      (*(v68 + 8))(v67, v69);
    }

    v157 = *(v0 + 1432);
    v160 = *(v0 + 1440);
    v70 = *(v0 + 1376);
    v71 = *(v0 + 1368);
    v72 = *(v0 + 1272);
    v164 = *(v0 + 1264);
    v73 = *(v0 + 1248);
    v74 = *(v0 + 1240);
    v75 = *(v0 + 1200);
    v76 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v77 = sub_252E36F04();
    v78 = [v76 initWithIdentifier:0 displayString:v77 pronunciationHint:0];

    v79 = v78;
    [v79 setType_];
    sub_252938414(v71, v70, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v74, v73, &qword_27F540F38, &unk_252E41490);
    v80 = type metadata accessor for EventTriggerValue();
    v81 = objc_allocWithZone(v80);
    v82 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v157(&v81[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v75);
    v83 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v72 + 56))(&v81[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v164);
    *&v81[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = v168;
    swift_beginAccess();
    sub_2529D032C(v70, &v81[v82], &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v73, &v81[v83], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v84 = sub_252E36F04();
    *(v0 + 1168) = v81;
    v44 = v79;
    *(v0 + 1176) = v80;
    v85 = objc_msgSendSuper2((v0 + 1168), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v84, 0);

    sub_25293847C(v73, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v70, &qword_27F540F00, &unk_252E3FEC0);
    [v79 setValue_];

    if (v171)
    {
      v86 = *(v0 + 1200);
      v47 = sub_252E37254();
    }

    else
    {
      v47 = 0;
    }

    v48 = *(v0 + 1368);
    v49 = *(v0 + 1240);
LABEL_41:
    [v44 setRecurrence_];

    sub_25293847C(v49, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v48, &qword_27F540F00, &unk_252E3FEC0);
    goto LABEL_42;
  }

  if (v19 == 2)
  {
    v20 = 1;
    goto LABEL_34;
  }

  if (v19 == 3)
  {
    v20 = 2;
    goto LABEL_34;
  }

  v50 = *(v0 + 1360);
  v51 = *(v0 + 1208);
  v52 = *(v0 + 1200);
  sub_252938414(*(v0 + 1400), v50, &qword_27F540F00, &unk_252E3FEC0);
  v53 = *(v51 + 48);
  v54 = v53(v50, 1, v52);
  v55 = *(v0 + 1360);
  v56 = *(v0 + 1216);
  if (v54 == 1)
  {
    v57 = *(v0 + 1200);
    v58 = *(v0 + 1192);
    v59 = *(v0 + 1184);
    v60 = sub_252E32FF4();
    (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
    v61 = sub_252E33044();
    (*(*(v61 - 8) + 56))(v59, 1, 1, v61);
    LOBYTE(v145) = 1;
    v144 = 0;
    LOBYTE(v143) = 1;
    v142 = 0;
    LOBYTE(v141) = 1;
    v140 = 0;
    LOBYTE(v139) = 1;
    v138 = 0;
    LOBYTE(v137) = 1;
    v136 = 0;
    LOBYTE(v135) = 1;
    v134 = 0;
    LOBYTE(v133) = 1;
    v132 = 0;
    LOBYTE(v131) = 1;
    v130 = 0;
    LOBYTE(v129) = 1;
    v128 = 0;
    LOBYTE(v127) = 1;
    v126 = 0;
    LOBYTE(v125) = 1;
    v124 = 0;
    sub_252E32B94();
    if (v53(v55, 1, v57) != 1)
    {
      sub_25293847C(*(v0 + 1360), &qword_27F540F00, &unk_252E3FEC0);
    }
  }

  else
  {
    (*(*(v0 + 1208) + 32))(*(v0 + 1216), *(v0 + 1360), *(v0 + 1200));
  }

  v98 = *(v0 + 1400);
  v99 = *(v0 + 1200);
  v170 = v15;
  if (v53(v98, 1, v99))
  {
    (*(*(v0 + 1272) + 56))(*(v0 + 1232), 1, 1, *(v0 + 1264));
  }

  else
  {
    v100 = *(v0 + 1232);
    v101 = *(v0 + 1224);
    v102 = *(v0 + 1208);
    (*(v102 + 16))(v101, v98, v99);
    sub_252E32B44();
    (*(v102 + 8))(v101, v99);
  }

  v103 = *(v0 + 1272);
  v104 = *(v0 + 1248);
  v162 = *(v0 + 1232);
  v166 = *(v0 + 1264);
  v105 = *(v0 + 1224);
  v154 = v104;
  v156 = *(v0 + 1216);
  v106 = *(v0 + 1208);
  v152 = v106;
  v107 = *(v0 + 1200);
  v108 = objc_allocWithZone(type metadata accessor for TriggerCondition());
  v109 = sub_252E36F04();
  v110 = [v108 initWithIdentifier:0 displayString:v109 pronunciationHint:0];

  v111 = v110;
  [v111 setType_];
  v112 = *(v106 + 16);
  v112(v105, v156, v107);
  sub_252938414(v162, v104, &qword_27F540F38, &unk_252E41490);
  v113 = type metadata accessor for TimeTriggerValue();
  v114 = objc_allocWithZone(v113);
  v115 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  (*(v103 + 56))(&v114[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate], 1, 1, v166);
  v112(&v114[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate], v105, v107);
  v44 = v111;
  swift_beginAccess();
  sub_2529D032C(v154, &v114[v115], &qword_27F540F38, &unk_252E41490);
  swift_endAccess();
  v114[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval] = v170;
  v116 = sub_252E36F04();
  *(v0 + 1152) = v114;
  *(v0 + 1160) = v113;
  v117 = objc_msgSendSuper2((v0 + 1152), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v116, 0);

  sub_25293847C(v154, &qword_27F540F38, &unk_252E41490);
  v118 = *(v152 + 8);
  v118(v105, v107);
  [v111 setValue_];

  if (v171)
  {
    v119 = *(v0 + 1200);
    v120 = sub_252E37254();
  }

  else
  {
    v120 = 0;
  }

  v121 = *(v0 + 1232);
  v122 = *(v0 + 1216);
  v123 = *(v0 + 1200);
  [v44 setRecurrence_];

  sub_25293847C(v121, &qword_27F540F38, &unk_252E41490);
  v118(v122, v123);
LABEL_42:
  v87 = *(v0 + 1424);
  v88 = *(v0 + 1416);
  v89 = *(v0 + 1400);
  v90 = *(v0 + 1392);
  v91 = *(v0 + 1384);
  v92 = *(v0 + 1376);
  v93 = *(v0 + 1368);
  v146 = *(v0 + 1360);
  v147 = *(v0 + 1352);
  v148 = *(v0 + 1328);
  v149 = *(v0 + 1304);
  v150 = *(v0 + 1280);
  v151 = *(v0 + 1256);
  v153 = *(v0 + 1248);
  v155 = *(v0 + 1240);
  v158 = *(v0 + 1232);
  v161 = *(v0 + 1224);
  v165 = *(v0 + 1216);
  v169 = *(v0 + 1192);
  v172 = *(v0 + 1184);
  v94 = v44;
  [v88 setAutomatableTask_];
  [v88 setTrigger_];

  sub_25293847C(v89, &qword_27F540F00, &unk_252E3FEC0);

  v95 = *(v0 + 8);
  v96 = *(v0 + 1416);

  return v95(v96);
}

uint64_t sub_252B5F69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B5F70C()
{
  result = sub_2529FC004(&unk_2864A9910);
  qword_27F575838 = result;
  return result;
}

uint64_t sub_252B5F734()
{
  result = sub_2529FF448(&unk_2864A9958);
  qword_27F575840 = result;
  return result;
}

double sub_252B5F798()
{
  type metadata accessor for PollingHandleDelegate();
  v0 = swift_allocObject();
  *&result = 9000;
  *(v0 + 16) = xmmword_252E4DBF0;
  return result;
}

uint64_t sub_252B5F7C8()
{
  v0 = sub_252E36D54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36C84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36D14();
  sub_252E36D34();
  (*(v1 + 8))(v4, v0);
  v10 = sub_252B02B64();
  result = (*(v6 + 8))(v9, v5);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = 9000 - v10;
  if (__OFSUB__(9000, v10))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void *sub_252B5F9A4(void *a1, char a2)
{
  v3 = a1;
  if (a2 == -1 || (a2 & 1) != 0)
  {
    sub_252B61F1C(a1, a2);
    return v3;
  }

  sub_2529904E4(a1);
  if ((sub_252C2AC20() & 1) == 0)
  {
    return v3;
  }

  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  sub_2529904E4(v3);
  v5 = sub_252D6D96C(v3);
  sub_252B61F34(v3, a2);
  v28 = v5;
  v6 = *(v5 + 24);
  v27 = a2;
  v26 = v3;
  if (v6 >> 62)
  {
LABEL_54:
    v7 = sub_252E378C4();
    if (!v7)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_50;
    }
  }

  v33 = v6 & 0xC000000000000001;
  v29 = (v6 + 32);
  v30 = v6 & 0xFFFFFFFFFFFFFF8;

  v8 = 0;
  v9 = 0;
  v31 = v7;
  v32 = v6;
  do
  {
    while (1)
    {
LABEL_10:
      if (v33)
      {
        v10 = MEMORY[0x2530ADF00](v9, v6);
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v9 >= *(v30 + 16))
        {
          goto LABEL_53;
        }

        v10 = *&v29[8 * v9];

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      swift_beginAccess();
      v12 = *(v10 + 24);
      if (v12 >> 62)
      {
        break;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_44;
      }

LABEL_18:
      v34 = v9;

      v14 = 0;
      do
      {
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x2530ADF00](v14, v12);
            v11 = __OFADD__(v14++, 1);
            if (v11)
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_52;
            }

            v15 = *(v12 + 32 + 8 * v14);

            v11 = __OFADD__(v14++, 1);
            if (v11)
            {
LABEL_47:
              __break(1u);
LABEL_48:

              goto LABEL_49;
            }
          }

          if (qword_27F53F730 != -1)
          {
            swift_once();
          }

          v16 = qword_27F575C40;
          if (!*(qword_27F575C40 + 16))
          {
            break;
          }

          v17 = *(v15 + 24);
          v18 = *(qword_27F575C40 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v17);
          v6 = &v35;
          v19 = sub_252E37F14();
          v20 = -1 << *(v16 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while (*(*(v16 + 48) + 8 * v21) != v17)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v23 = sub_252E36AD4();
          __swift_project_value_buffer(v23, qword_27F544C70);
          sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E81750, 0xD00000000000007BLL, 0x8000000252E81500);
          *(v15 + 24) = 1;
          v6 = *(v15 + 16);

          v8 = 1;
          if (v6)
          {
            swift_beginAccess();
            v24 = *(v6 + 32);
            *(v6 + 32) = 0;
          }

          if (v14 == v13)
          {

            v8 = 1;
            v7 = v31;
            v6 = v32;
            v9 = v34;
            if (v34 != v31)
            {
              goto LABEL_10;
            }

            goto LABEL_48;
          }
        }

LABEL_19:
      }

      while (v14 != v13);

      v7 = v31;
      v6 = v32;
      v9 = v34;
      if (v34 == v31)
      {
        goto LABEL_45;
      }
    }

    if (v12 < 0)
    {
      v25 = *(v10 + 24);
    }

    v13 = sub_252E378C4();
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_44:
  }

  while (v9 != v7);
LABEL_45:

  if (v8)
  {
LABEL_49:
    *(v28 + 16) = 4;
  }

LABEL_50:
  v3 = sub_252D6BB10();
  sub_252B61F34(v26, v27);

  return v3;
}

uint64_t sub_252B5FE38(void *a1, void (*a2)(void), uint64_t a3)
{
  v143 = a3;
  v144 = a2;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v147 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36D14();
  v170 = a1;
  v13 = sub_252B4CD30(a1, 7000, 0);
  v146 = v9;
  v145 = v10;
  v142 = v14;
  if (v14)
  {
    v15 = v13;
    if (qword_27F53F498 != -1)
    {
      goto LABEL_163;
    }

    goto LABEL_3;
  }

  v140 = v8;
  v141 = v5;
  v139 = v13;
  v15 = v13;
  if (sub_252C2AC20() & 1) != 0 || ([v15 _requiresAuthentication])
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_27F544C70);
    (*(v141 + 16))(v140, v17, v4);
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_252E379F4();
    v182 = v175;
    v183 = v176;
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E815D0);
    v18 = sub_252C285CC();
    v19 = v18;
    if (v18 >> 62)
    {
      v20 = sub_252E378C4();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v138 = v4;
    if (!v20)
    {
      v22 = MEMORY[0x277D84F90];
LABEL_97:

      v58 = MEMORY[0x2530AD730](v22, MEMORY[0x277D837D0]);
      v60 = v59;

      MEMORY[0x2530AD570](v58, v60);

      v61 = v140;
      sub_252CC3D90(v182, v183, 0xD00000000000007BLL, 0x8000000252E81500);

      (*(v141 + 8))(v61, v138);
      (v144)(v15);
      v15 = v139;
      v62 = v139;
      goto LABEL_167;
    }

    v21 = 0;
    v171 = v19 & 0xC000000000000001;
    v170 = (v19 & 0xFFFFFFFFFFFFFF8);
    v169 = v19 + 32;
    v149 = 0x8000000252E68460;
    v165 = 0x8000000252E68440;
    v164 = 0x8000000252E68420;
    v148 = 0x8000000252E683F0;
    v163 = 0x8000000252E683D0;
    v162 = 0x8000000252E81610;
    v161 = 0x8000000252E683B0;
    v160 = 0x8000000252E67470;
    v159 = 0x8000000252E81630;
    v158 = 0x8000000252E81650;
    v157 = 0x8000000252E81670;
    v156 = 0x8000000252E81690;
    v155 = 0x8000000252E816B0;
    v154 = 0x8000000252E816D0;
    v153 = 0x8000000252E816F0;
    v152 = 0x8000000252E81710;
    v151 = 0x8000000252E81730;
    v150 = 0x8000000252E68480;
    v22 = MEMORY[0x277D84F90];
    v168 = v15;
    v167 = v19;
    v166 = v20;
LABEL_14:
    if (v171)
    {
      v23 = MEMORY[0x2530ADF00](v21, v19);
      v15 = 0x6E776F6E6B6E75;
      v24 = __OFADD__(v21, 1);
      v25 = (v21 + 1);
      if (v24)
      {
        goto LABEL_154;
      }
    }

    else
    {
      v15 = 0x6E776F6E6B6E75;
      if (v21 >= v170[2])
      {
        goto LABEL_155;
      }

      v23 = *(v169 + 8 * v21);
      v24 = __OFADD__(v21, 1);
      v25 = (v21 + 1);
      if (v24)
      {
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    v172 = v25;
    v173 = v23;
    v26 = sub_252DA3B1C();
    v27 = *(v26 + 2);
    v174 = v22;
    if (!v27)
    {

      v31 = MEMORY[0x277D84F90];
      v42 = *(MEMORY[0x277D84F90] + 16);
      if (v42)
      {
        goto LABEL_35;
      }

LABEL_80:
      v4 = v31;
      v44 = MEMORY[0x277D84F90];
      goto LABEL_81;
    }

    if (qword_27F53F730 != -1)
    {
      swift_once();
    }

    v28 = 0;
    v4 = (v26 + 32);
    v29 = qword_27F575C40;
    v30 = qword_27F575C40 + 56;
    v31 = MEMORY[0x277D84F90];
    while (v28 < *(v26 + 2))
    {
      if (*(v29 + 16))
      {
        v35 = *(v4 + 8 * v28);
        v36 = *(v29 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v35);
        v37 = sub_252E37F14();
        v38 = -1 << *(v29 + 32);
        v39 = v37 & ~v38;
        if ((*(v30 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          v40 = ~v38;
          while (*(*(v29 + 48) + 8 * v39) != v35)
          {
            v39 = (v39 + 1) & v40;
            if (((*(v30 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA3E0(0, v31[2] + 1, 1);
            v31 = v181;
          }

          v33 = v31[2];
          v32 = v31[3];
          v34 = v31;
          if (v33 >= v32 >> 1)
          {
            sub_2529AA3E0((v32 > 1), v33 + 1, 1);
            v34 = v181;
          }

          v34[2] = v33 + 1;
          v31 = v34;
          v34[v33 + 4] = v35;
        }
      }

LABEL_24:
      if (++v28 == v27)
      {

        v42 = v31[2];
        if (!v42)
        {
          goto LABEL_80;
        }

LABEL_35:
        v4 = v31;
        v43 = v31 + 4;
        v44 = MEMORY[0x277D84F90];
        do
        {
          v45 = *v43++;
          v46 = 0xE700000000000000;
          v47 = 0x6E776F6E6B6E75;
          switch(v45)
          {
            case 1:
              v47 = 0x73736563637573;
              break;
            case 2:
              v47 = 0xD000000000000014;
              v48 = &v180;
              goto LABEL_72;
            case 3:
              v46 = 0xE800000000000000;
              v47 = 0x796C6E4F64616572;
              break;
            case 4:
              v47 = 0xD000000000000011;
              v48 = &v181;
              goto LABEL_72;
            case 5:
              v47 = 0xD000000000000011;
              v48 = &v182;
              goto LABEL_72;
            case 6:
              v46 = 0xEB00000000656C62;
              v47 = 0x6168636165726E75;
              break;
            case 7:
              v47 = 0x6572756C696166;
              break;
            case 8:
              v47 = 0x78614D6F54746573;
              goto LABEL_57;
            case 9:
              v47 = 0x6E694D6F54746573;
LABEL_57:
              v46 = 0xED000065756C6156;
              break;
            case 10:
              v47 = 0xD000000000000012;
              v48 = &v183;
              goto LABEL_72;
            case 11:
              v47 = 0xD000000000000013;
              v48 = &v184;
              goto LABEL_72;
            case 12:
              v46 = 0xEE00737365636341;
              v47 = 0x65746F6D65526F6ELL;
              break;
            case 13:
              v47 = 0xD000000000000013;
              v48 = &v185;
              goto LABEL_72;
            case 14:
              v46 = 0xEE0066664F734968;
              goto LABEL_67;
            case 15:
              v46 = 0xE900000000000066;
              v47 = 0x664F734969666977;
              break;
            case 16:
              v47 = 0xD00000000000001BLL;
              v48 = &v186;
              goto LABEL_72;
            case 17:
              v46 = 0xEA00000000007373;
              v47 = 0x6572676F72506E69;
              break;
            case 18:
              v46 = 0xED00007055746553;
              v47 = 0x746F4E656E656373;
              break;
            case 19:
              v46 = 0xEF6572756C696146;
              v47 = 0x676E697275636573;
              break;
            case 20:
              v46 = 0xEF7055656B615768;
LABEL_67:
              v47 = 0x746F6F7465756C62;
              break;
            case 21:
              v46 = 0xEE00646572697571;
              v47 = 0x65526B636F6C6E75;
              break;
            case 22:
              v47 = 0xD000000000000013;
              v48 = &v187;
              goto LABEL_72;
            case 24:
              v47 = 0xD000000000000013;
              v48 = &v188;
              goto LABEL_72;
            case 25:
              v47 = 0xD000000000000016;
              v48 = &v189;
              goto LABEL_72;
            case 26:
              v47 = 0xD00000000000001DLL;
              v48 = &v190;
              goto LABEL_72;
            case 27:
              v47 = 0xD00000000000001BLL;
              v48 = &v192;
              goto LABEL_72;
            case 28:
              v47 = 0xD000000000000011;
              v48 = &v177;
              goto LABEL_72;
            case 29:
              v46 = 0xEE006C6C75466E69;
              v47 = 0x4274737544637672;
              break;
            case 30:
              v47 = 0xD000000000000013;
              v48 = &v193;
              goto LABEL_72;
            case 31:
              v47 = 0xD000000000000011;
              v48 = &v194;
              goto LABEL_72;
            case 32:
              v47 = 0xD000000000000018;
              v48 = &v179;
              goto LABEL_72;
            case 33:
              v47 = 0xD000000000000012;
              v48 = &v191;
              goto LABEL_72;
            case 34:
              v47 = 0xD000000000000013;
              v48 = &v178;
LABEL_72:
              v46 = *(v48 - 32);
              break;
            default:
              break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_2529F7A80(0, *(v44 + 2) + 1, 1, v44);
          }

          v50 = *(v44 + 2);
          v49 = *(v44 + 3);
          if (v50 >= v49 >> 1)
          {
            v44 = sub_2529F7A80((v49 > 1), v50 + 1, 1, v44);
          }

          *(v44 + 2) = v50 + 1;
          v51 = &v44[16 * v50];
          *(v51 + 4) = v47;
          *(v51 + 5) = v46;
          --v42;
        }

        while (v42);
LABEL_81:

        v52 = *(v44 + 2);
        v22 = v174;
        v53 = *(v174 + 16);
        v15 = v53 + v52;
        if (!__OFADD__(v53, v52))
        {
          v54 = swift_isUniquelyReferenced_nonNull_native();
          if (!v54 || v15 > *(v22 + 3) >> 1)
          {
            if (v53 <= v15)
            {
              v55 = v53 + v52;
            }

            else
            {
              v55 = v53;
            }

            v22 = sub_2529F7A80(v54, v55, 1, v22);
          }

          v15 = v168;
          if (*(v44 + 2))
          {
            if ((*(v22 + 3) >> 1) - *(v22 + 2) < v52)
            {
              goto LABEL_158;
            }

            swift_arrayInitWithCopy();

            if (!v52)
            {
              goto LABEL_13;
            }

            v56 = *(v22 + 2);
            v24 = __OFADD__(v56, v52);
            v57 = v56 + v52;
            if (!v24)
            {
              *(v22 + 2) = v57;
LABEL_13:
              v21 = v172;
              v19 = v167;
              if (v172 == v166)
              {
                goto LABEL_97;
              }

              goto LABEL_14;
            }

LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            swift_once();
LABEL_3:
            __swift_project_value_buffer(v4, qword_27F544C70);
            v175 = 0;
            v176 = 0xE000000000000000;
            MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
            v182 = v15;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
            sub_252E37AE4();
            sub_252CC4050(v175, v176, 0xD00000000000007BLL, 0x8000000252E81500, 0xD000000000000021, 0x8000000252E68B10, 98);

            v16 = parse(error:with:)(v15, v170);
            v144();

            goto LABEL_168;
          }

          if (!v52)
          {
            goto LABEL_13;
          }

LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    __break(1u);
  }

  else
  {
    v63 = sub_252B5F7C8();
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544C70);
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E81580);
    v64 = ControlHomeIntent.getTargetDeviceTypes()();
    v65 = sub_252DB4F48(v64);
    v67 = v66;

    v182 = v65;
    LOBYTE(v183) = v67 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543730, &qword_252E4DC38);
    v68 = sub_252E36F94();
    MEMORY[0x2530AD570](v68);

    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E815B0);
    v182 = v63;
    v69 = sub_252E37D94();
    MEMORY[0x2530AD570](v69);

    sub_252CC3D90(v175, v176, 0xD00000000000007BLL, 0x8000000252E81500);

    v70 = sub_252C4F73C();
    v71 = sub_252B4CD30(v70, v63, 0);
    v73 = v72;

    sub_2529904E4(v71);
    v15 = sub_252B5F9A4(v71, v73 & 1);
    v75 = v74;
    LODWORD(v162) = v73;
    v163 = v71;
    sub_252927D3C(v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C3C0;
    v77 = v139;
    *(inited + 32) = v139;
    *(inited + 40) = 0;
    *(inited + 48) = v15;
    *(inited + 56) = v75;
    sub_2529904E4(v77);
    v161 = v15;
    LODWORD(v160) = v75;
    sub_252B61F1C(v15, v75);
    v78 = combineResults(results:)(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
    swift_arrayDestroy();
    v164 = v78;
    v79 = [v78 entityResponses];
    if (v79)
    {
      v80 = v79;
      type metadata accessor for HomeEntityResponse();
      v81 = sub_252E37264();

      goto LABEL_105;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_170;
  }

  while (1)
  {
    __swift_project_value_buffer(v4, qword_27F544D60);
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_252E379F4();

    v175 = 0xD00000000000002FLL;
    v176 = 0x8000000252E69700;
    v82 = v164;
    v83 = [v82 description];
    v15 = sub_252E36F34();
    v85 = v84;

    MEMORY[0x2530AD570](v15, v85);

    sub_252CC3D90(v175, v176, 0xD000000000000098, 0x8000000252E69730);

    v81 = MEMORY[0x277D84F90];
LABEL_105:
    v167 = v81;
    if (v81 >> 62)
    {
      break;
    }

    v86 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v86)
    {
      goto LABEL_166;
    }

LABEL_107:
    v87 = MEMORY[0x277D84F90];
    v175 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    if ((v86 & 0x8000000000000000) == 0)
    {
      v88 = 0;
      v169 = v167 & 0xC000000000000001;
      v166 = (v167 & 0xFFFFFFFFFFFFFF8);
      v165 = v167 + 32;
      v168 = v86;
      while (1)
      {
        if (__OFADD__(v88, 1))
        {
          goto LABEL_160;
        }

        v171 = v88 + 1;
        if (v169)
        {
          v93 = MEMORY[0x2530ADF00]();
        }

        else
        {
          if (v88 >= v166[2])
          {
            goto LABEL_162;
          }

          v93 = *(v165 + 8 * v88);
        }

        v94 = v93;
        v95 = [v170 userTask];
        if (v95)
        {
          v96 = v95;
          v174 = [v95 taskType];
        }

        else
        {
          v174 = 1;
        }

        v97 = [v94 taskResponses];
        v172 = v94;
        if (v97)
        {
          v98 = v97;
          type metadata accessor for HomeUserTaskResponse();
          v15 = sub_252E37264();

          v182 = v87;
          if (v15 >> 62)
          {
            v99 = sub_252E378C4();
            if (v99)
            {
LABEL_121:
              v100 = 0;
              while (1)
              {
                if ((v15 & 0xC000000000000001) != 0)
                {
                  v101 = MEMORY[0x2530ADF00](v100, v15);
                }

                else
                {
                  if (v100 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_153;
                  }

                  v101 = *(v15 + 8 * v100 + 32);
                }

                v4 = v101;
                v102 = v100 + 1;
                if (__OFADD__(v100, 1))
                {
                  break;
                }

                MEMORY[0x2530AD700]();
                if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v103 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_252E372A4();
                }

                sub_252E372D4();
                ++v100;
                if (v102 == v99)
                {
                  v104 = v182;
                  goto LABEL_134;
                }
              }

              __break(1u);
LABEL_153:
              __break(1u);
              goto LABEL_154;
            }
          }

          else
          {
            v99 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v99)
            {
              goto LABEL_121;
            }
          }

          v104 = v87;
LABEL_134:
        }

        else
        {
          sub_252DA6A00();
          v104 = v87;
        }

        if (v104 >> 62)
        {
          v105 = sub_252E378C4();
          if (v105)
          {
LABEL_137:
            v182 = MEMORY[0x277D84F90];
            sub_252E37AB4();
            if (v105 < 0)
            {
              goto LABEL_161;
            }

            v4 = 0;
            v173 = (v104 & 0xC000000000000001);
            do
            {
              if (v173)
              {
                v121 = MEMORY[0x2530ADF00](v4, v104);
              }

              else
              {
                v121 = *(v104 + 8 * v4 + 32);
              }

              v122 = v121;
              v123 = type metadata accessor for HomeUserTask();
              v124 = objc_allocWithZone(v123);
              v125 = sub_252E36F04();
              v126 = [v124 initWithIdentifier:0 displayString:v125];

              v127 = v126;
              [v127 setTaskType_];
              [v127 setAttribute_];
              [v127 setValue_];

              v128 = [v122 userTask];
              if (v128)
              {
                v106 = v128;
                v107 = [v128 attribute];
              }

              else
              {
                v107 = 0;
              }

              ++v4;
              v108 = [v122 userTask];
              v109 = [v108 value];

              v110 = objc_allocWithZone(v123);
              v111 = sub_252E36F04();
              v112 = [v110 initWithIdentifier:0 displayString:v111];

              v113 = v112;
              [v113 setTaskType_];
              [v113 setAttribute_];
              [v113 setValue_];

              v114 = [v122 taskOutcome];
              v115 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
              v116 = v113;
              v117 = sub_252E36F04();
              v118 = [v115 initWithIdentifier:0 displayString:v117];

              v119 = v118;
              [v119 setTaskOutcome_];
              [v119 setUserTask_];

              sub_252E37A94();
              v120 = *(v182 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            while (v105 != v4);

            v129 = v182;
            v87 = MEMORY[0x277D84F90];
            goto LABEL_149;
          }
        }

        else
        {
          v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v105)
          {
            goto LABEL_137;
          }
        }

        v87 = MEMORY[0x277D84F90];
        v129 = MEMORY[0x277D84F90];
LABEL_149:
        type metadata accessor for HomeEntityResponse.Builder();
        v15 = swift_allocObject();
        type metadata accessor for HomeEntity.Builder();
        swift_allocObject();
        v130.n128_f64[0] = HomeEntity.Builder.init()();
        v132 = (*(*v131 + 448))(v130);

        *(v15 + 16) = v132;
        *(v15 + 24) = v87;
        v133 = [v172 entity];
        if (v133)
        {
          v134 = *(v15 + 16);
          *(v15 + 16) = v133;
        }

        v89 = sub_252B4EF4C(v129);

        v90 = sub_25297D0C0(v89);

        (*(*v90 + 192))(v91);

        sub_252E37A94();
        v92 = *(v175 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v88 = v171;
        if (v171 == v168)
        {
          goto LABEL_166;
        }
      }
    }

    __break(1u);
LABEL_170:
    swift_once();
  }

  v86 = sub_252E378C4();
  if (v86)
  {
    goto LABEL_107;
  }

LABEL_166:

  type metadata accessor for HomeEntityResponse();
  v135 = sub_252E37254();

  v136 = v164;
  [v164 setEntityResponses_];

  (v144)(v136);
  v15 = v139;
  sub_252927D3C(v139);
  sub_252B61F34(v161, v160);
  v62 = v163;
LABEL_167:
  sub_252927D3C(v62);
LABEL_168:
  sub_252927D3C(v15);
  return (*(v145 + 8))(v147, v146);
}

uint64_t sub_252B61720(void *a1)
{
  v1 = a1;
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = [v1 userTask];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  type metadata accessor for HomeStore();
  v7 = static HomeStore.shared.getter();
  v8 = v6;
  v9 = HomeStore.accessories(matching:supporting:)(v4, v6);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);

    return 0;
  }

  v12 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_80;
  }

  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_81:
    v72 = 0;
    goto LABEL_82;
  }

  while (1)
  {
    v14 = 0;
    v15 = v9 & 0xC000000000000001;
    v80 = v9;
    v81 = v9 + 32;
    v75 = v8;
    v76 = v1;
    v78 = v13;
    v79 = v12;
    v77 = v9 & 0xC000000000000001;
LABEL_10:
    if (v15)
    {
      break;
    }

    if (v14 >= *(v12 + 16))
    {
      goto LABEL_79;
    }

    v16 = *(v81 + 8 * v14);

    v17 = __OFADD__(v14, 1);
    v18 = v14 + 1;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v13 = sub_252E378C4();
    if (!v13)
    {
      goto LABEL_81;
    }
  }

  v16 = MEMORY[0x2530ADF00](v14, v9);
  v17 = __OFADD__(v14, 1);
  v18 = v14 + 1;
  if (v17)
  {
    goto LABEL_78;
  }

LABEL_13:
  v83 = v18;
  if (qword_27F53F378 != -1)
  {
    swift_once();
  }

  v85 = qword_27F575838 + 56;
  v19 = 1 << *(qword_27F575838 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v9 = v20 & *(qword_27F575838 + 56);
  v82 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
  v84 = (v19 + 63) >> 6;
  v87 = qword_27F575838;

  v22 = 0;
  v86 = v16;
  while (1)
  {
LABEL_19:
    if (!v9)
    {
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v84)
        {

          v72 = 0;
          v9 = v80;
          goto LABEL_82;
        }

        v9 = *(v85 + 8 * v23);
        ++v22;
        if (v9)
        {
          v22 = v23;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_24:
    v24 = *(*(v87 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v9)))));
    v25 = (*v16 + 256);
    v26 = *v25;
    if ((*v25)(v21) == v24)
    {
      goto LABEL_69;
    }

    v27 = (*(*v16 + 272))();
    if (*(v27 + 16))
    {
      v28 = *(v27 + 40);
      v29 = v27;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v24);
      v30 = sub_252E37F14();
      v31 = -1 << *(v29 + 32);
      v32 = v30 & ~v31;
      if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        break;
      }
    }

LABEL_30:

    v12 = v16;
    v35 = v26(v34);
    if (v35 == 41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v36 = sub_252E379A4();
      v48 = v36 + 56;
      v49 = qword_2864A99E8;
      v50 = *(v36 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v49);
      v12 = v88;
      result = sub_252E37F14();
      v51 = ~(-1 << *(v36 + 32));
      v52 = result & v51;
      v53 = (result & v51) >> 6;
      v54 = *(v36 + 56 + 8 * v53);
      v55 = 1 << (result & v51);
      v56 = *(v36 + 48);
      if ((v55 & v54) != 0)
      {
        while (*(v56 + 8 * v52) != v49)
        {
          v52 = (v52 + 1) & v51;
          v53 = v52 >> 6;
          v54 = *(v48 + 8 * (v52 >> 6));
          v55 = 1 << v52;
          if (((1 << v52) & v54) == 0)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_43;
      }

LABEL_41:
      *(v48 + 8 * v53) = v55 | v54;
      *(v56 + 8 * v52) = v49;
      v57 = *(v36 + 16);
      v17 = __OFADD__(v57, 1);
      v47 = v57 + 1;
      if (v17)
      {
        __break(1u);
LABEL_87:
        __break(1u);
        return result;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84FA0];
      if (v35 != 38)
      {
        goto LABEL_43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v36 = sub_252E379A4();
      v37 = v36 + 56;
      v38 = qword_2864A99C0;
      v39 = *(v36 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v38);
      v12 = v88;
      result = sub_252E37F14();
      v40 = ~(-1 << *(v36 + 32));
      v41 = result & v40;
      v42 = (result & v40) >> 6;
      v43 = *(v36 + 56 + 8 * v42);
      v44 = 1 << (result & v40);
      v45 = *(v36 + 48);
      if ((v44 & v43) != 0)
      {
        while (*(v45 + 8 * v41) != v38)
        {
          v41 = (v41 + 1) & v40;
          v42 = v41 >> 6;
          v43 = *(v37 + 8 * (v41 >> 6));
          v44 = 1 << v41;
          if (((1 << v41) & v43) == 0)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_43;
      }

LABEL_35:
      *(v37 + 8 * v42) = v44 | v43;
      *(v45 + 8 * v41) = v38;
      v46 = *(v36 + 16);
      v17 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v17)
      {
        goto LABEL_87;
      }
    }

    *(v36 + 16) = v47;
LABEL_43:
    if (*(v36 + 16))
    {
      v58 = *(v36 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v24);
      v12 = v88;
      v59 = sub_252E37F14();
      v60 = -1 << *(v36 + 32);
      v61 = v59 & ~v60;
      if ((*(v36 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
      {
        v62 = ~v60;
        while (*(*(v36 + 48) + 8 * v61) != v24)
        {
          v61 = (v61 + 1) & v62;
          if (((*(v36 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_69;
      }
    }

LABEL_48:
    v9 &= v9 - 1;

    v16 = v86;
    if (v24 == 42)
    {
      v63 = [*(v86 + v82) profiles];
      sub_252931930();
      v12 = sub_252E37264();

      if (!(v12 >> 62))
      {
        v64 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v64)
        {
          goto LABEL_51;
        }

        goto LABEL_65;
      }

      v64 = sub_252E378C4();
      if (!v64)
      {
LABEL_65:

        v8 = v75;
        v1 = v76;
        v16 = v86;
        continue;
      }

LABEL_51:
      v65 = 0;
      v8 = (v12 & 0xC000000000000001);
      while (1)
      {
        if (v8)
        {
          v66 = MEMORY[0x2530ADF00](v65, v12);
        }

        else
        {
          if (v65 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v66 = *(v12 + 8 * v65 + 32);
        }

        v67 = v66;
        v1 = (v65 + 1);
        if (__OFADD__(v65, 1))
        {
          break;
        }

        objc_opt_self();
        v68 = swift_dynamicCastObjCClass();
        if (v68)
        {
          v69 = v68;

          v70 = [v69 userSettings];
          v8 = v75;
          v1 = v76;
          v16 = v86;
          if (!v70)
          {

            goto LABEL_19;
          }

          v12 = v70;
          v71 = [v70 supportedFeatures];

          if ((v71 & 2) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_69;
        }

        ++v65;
        if (v1 == v64)
        {
          goto LABEL_65;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v33 = ~v31;
  while (*(*(v29 + 48) + 8 * v32) != v24)
  {
    v32 = (v32 + 1) & v33;
    if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_69:

  v12 = v79;
  v14 = v83;
  v9 = v80;
  v15 = v77;
  if (v83 != v78)
  {
    goto LABEL_10;
  }

  v72 = 1;
LABEL_82:
  sub_252929F10(v9, 0);
  if (qword_27F53F380 != -1)
  {
    swift_once();
  }

  v73 = sub_252DB4F4C([v8 attribute], qword_27F575840);
  v74 = sub_252C4B5D4();

  return v72 & v74 & v73;
}