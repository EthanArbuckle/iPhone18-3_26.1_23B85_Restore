uint64_t sub_1A39A0A78()
{
  off_1F1658538();
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39A0B18()
{
  off_1F1658D28();
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39A0BB8(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 28239;
    }

    else
    {
      v2 = 1869903169;
    }

    if (v1 == 1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 6710863;
  }

  MEMORY[0x1A58F7770](v2, v3);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v4 = sub_1A3A31810();

  v5 = CAMLocalizedFrameworkString(v4, 0);

  v6 = sub_1A3A31850();
  return v6;
}

uint64_t sub_1A39A0CD0()
{
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39A0D8C()
{
  off_1F16591F8();
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39A0E2C()
{
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39A0EF8()
{
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39A0FD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(*v3);
  v4 = sub_1A3A31810();

  v5 = CAMLocalizedFrameworkString(v4, 0);

  v6 = sub_1A3A31850();
  return v6;
}

uint64_t sub_1A39A104C()
{
  off_1F165EA38[0]();
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39A10EC()
{
  v1 = sub_1A39FDA64(*v0);
  MEMORY[0x1A58F7770](v1);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  v2 = sub_1A3A31810();

  v3 = CAMLocalizedFrameworkString(v2, 0);

  v4 = sub_1A3A31850();
  return v4;
}

uint64_t sub_1A39A11CC()
{
  v1 = 0xE200000000000000;
  v2 = 28239;
  if (*v0 != 1)
  {
    v2 = 6710863;
    v1 = 0xE300000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1869903169;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1A58F7770](v3, v4);

  v5 = sub_1A3A31810();

  v6 = CAMLocalizedFrameworkString(v5, 0);

  v7 = sub_1A3A31850();
  return v7;
}

uint64_t sub_1A39A12B8(uint64_t a1, char a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v8 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_1A39A1448@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1A3A2FEE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1A388F6D8(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1A3A31C30();
    v17 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1A39A1648@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39A2540(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 936);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39A1720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39A2540(&qword_1ED997A88, type metadata accessor for ChromeSemanticStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 24);
  return result;
}

double sub_1A39A17F0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39A2540(&qword_1ED997A88, type metadata accessor for ChromeSemanticStyleViewModel);
  sub_1A3A2F080();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

double sub_1A39A18C0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39A2540(&qword_1ED997A88, type metadata accessor for ChromeSemanticStyleViewModel);
  sub_1A3A2F080();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

id sub_1A39A1990(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(CAMSemanticStyleControl) init];
  sub_1A3A2EA60();
  v10 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v10 = v16;
  }

  swift_getKeyPath();
  v16 = v10;
  sub_1A39A2540(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12 = *(v10 + 392);

  v13 = 84.0;
  if (v12)
  {
    v13 = 72.0;
  }

  [v9 setGradientInsets_];
  [v9 setShouldConfirmBeforeResetting_];
  sub_1A39A1C1C(v9, 0, a2, a3 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100040);
  sub_1A3A304D0();
  [v9 addTarget:v16 action:sel_valueChanged_ forControlEvents:4096];

  return v9;
}

void sub_1A39A1C1C(void *a1, int a2, uint64_t a3, char a4)
{
  v24 = a2;
  v25 = a1;
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  v10 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v26;
  }

  swift_getKeyPath();
  v26 = v10;
  sub_1A39A2540(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12 = *(v10 + 936);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v26 = v12;
  sub_1A39A2540(&qword_1ED997A88, type metadata accessor for ChromeSemanticStyleViewModel);
  sub_1A3A2F080();

  v23 = *(v12 + 24);

  sub_1A3A2EA60();
  v13 = a3;
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v13 = v26;
  }

  v15 = v6;
  swift_getKeyPath();
  v26 = v13;
  sub_1A3A2F080();

  v16 = *(v13 + 936);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v26 = v16;
  sub_1A3A2F080();

  v17 = *(v16 + 32);

  sub_1A3A2EA60();
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v15);
    a3 = v26;
  }

  swift_getKeyPath();
  v26 = a3;
  sub_1A3A2F080();

  v19 = *(a3 + 936);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v26 = v19;
  sub_1A3A2F080();

  v20 = *(v19 + 40);

  v21 = objc_allocWithZone(CAMSemanticStyle);
  v22 = [v21 initWithPresetType:v23 sceneBias:v17 warmthBias:v20];
  [v25 setSemanticStyle:v22 animated:v24 & 1];
}

uint64_t sub_1A39A2108(void *a1)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_1A3A2EA60();
  if ((v8 & 1) == 0)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);

    v7 = v21[1];
  }

  v10 = [a1 semanticStyle];
  v11 = [v10 presetType];

  v12 = [a1 semanticStyle];
  [v12 sceneBias];
  v14 = v13;

  v15 = [a1 semanticStyle];
  [v15 warmthBias];
  v17 = v16;

  v18 = v7[153];
  v19 = v7[154];
  __swift_project_boxed_opaque_existential_1(v7 + 150, v18);
  (*(v19 + 8))(v11, v14, v17, 124, v7, v18, v19);
}

uint64_t sub_1A39A23EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  type metadata accessor for ChromeSemanticStyleControl.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = v5;

  return sub_1A3A2EA60();
}

uint64_t sub_1A39A244C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A39A2588();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A39A24B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A39A2588();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A39A2514()
{
  sub_1A39A2588();
  sub_1A3A301A0();
  __break(1u);
}

uint64_t sub_1A39A2540(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A39A2588()
{
  result = qword_1EB100048;
  if (!qword_1EB100048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100048);
  }

  return result;
}

unint64_t sub_1A39A25FC()
{
  v1 = 0xD000000000000019;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

unint64_t sub_1A39A2658()
{
  result = qword_1EB100050;
  if (!qword_1EB100050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100050);
  }

  return result;
}

unint64_t sub_1A39A26C0()
{
  result = qword_1EB100060;
  if (!qword_1EB100060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100060);
  }

  return result;
}

uint64_t sub_1A39A2714(uint64_t result)
{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        sub_1A3A31F20();
        MEMORY[0x1A58F7770](0xD00000000000001FLL, 0x80000001A3AA6E20);
        type metadata accessor for CAMAspectRatioCrop(0);
        sub_1A3A32060();
LABEL_11:
        result = sub_1A3A32070();
        __break(1u);
        return result;
      }

LABEL_10:
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD00000000000001BLL, 0x80000001A3AA6E00);
      type metadata accessor for CAMAspectRatioCrop(0);
      sub_1A3A32060();
      goto LABEL_11;
    }

    return 1;
  }

  else if (result)
  {
    if (result == 1)
    {
      return 2;
    }

    goto LABEL_10;
  }

  return result;
}

double sub_1A39A288C()
{
  swift_getKeyPath();
  sub_1A39A30F4();
  sub_1A3A2F080();

  return *(v0 + 24);
}

uint64_t sub_1A39A28FC(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39A30F4();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39A29DC()
{
  swift_getKeyPath();
  sub_1A39A30F4();
  sub_1A3A2F080();

  return *(v0 + 32);
}

uint64_t sub_1A39A2A4C()
{
  swift_getKeyPath();
  sub_1A39A30F4();
  sub_1A3A2F080();

  return *(v0 + 33);
}

uint64_t sub_1A39A2ABC()
{
  swift_getKeyPath();
  sub_1A39A30F4();
  sub_1A3A2F080();

  return *(v0 + 34);
}

uint64_t sub_1A39A2B2C()
{
  swift_getKeyPath();
  sub_1A39A30F4();
  sub_1A3A2F080();

  return *(v0 + 16);
}

uint64_t sub_1A39A2B9C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39A30F4();
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A39A2C7C(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39A30F4();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39A2D6C(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39A30F4();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39A2E4C(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39A30F4();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39A2F3C()
{
  v1 = OBJC_IVAR____TtC8CameraUI27ChromeLensPositionViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeLensPositionViewModel()
{
  result = qword_1ED998CA0;
  if (!qword_1ED998CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A39A302C()
{
  result = sub_1A3A2F0C0();
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

double sub_1A39A30E4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

unint64_t sub_1A39A30F4()
{
  result = qword_1ED9976A0;
  if (!qword_1ED9976A0)
  {
    type metadata accessor for ChromeLensPositionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9976A0);
  }

  return result;
}

uint64_t sub_1A39A317C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 1735290732;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 2)
  {
    v8 = 1735290732;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x74726F6873;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A3A321C0();
  }

  return v11 & 1;
}

uint64_t sub_1A39A3298(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE600000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x7469617274726F70;
    v16 = 0x7469617274726F70;
    v17 = 0xEF6569666C65732DLL;
    if (a1 != 3)
    {
      v16 = 0x6F746F6870;
      v17 = 0xE500000000000000;
    }

    if (a1 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6F65646976;
    if (a1)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v18 = 0x6569666C6573;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1869504880;
    v5 = 0x566C616974617073;
    v6 = 0xEC0000006F656469;
    if (a1 != 9)
    {
      v5 = 0x506C616974617073;
      v6 = 0xEC0000006F746F68;
    }

    if (a1 != 8)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x6974616D656E6963;
    v8 = 0xE900000000000063;
    v9 = 0xE600000000000000;
    v10 = 0x6F6D2D6F6C73;
    if (a1 != 6)
    {
      v10 = 0x70616C2D656D6974;
      v9 = 0xEA00000000006573;
    }

    if (a1 != 5)
    {
      v7 = v10;
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v4;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v19 = 0xE600000000000000;
        if (v11 != 0x6569666C6573)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v19 = 0xE500000000000000;
      v22 = 1701079414;
    }

    else
    {
      if (a2 == 2)
      {
        v19 = 0xE800000000000000;
        if (v11 != 0x7469617274726F70)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      if (a2 == 3)
      {
        v19 = 0xEF6569666C65732DLL;
        if (v11 != 0x7469617274726F70)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v19 = 0xE500000000000000;
      v22 = 1953458288;
    }

    if (v11 != (v22 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v19 = 0xE400000000000000;
      if (v11 != 1869504880)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (a2 == 9)
      {
        v20 = 0x566C616974617073;
        v21 = 1868915817;
      }

      else
      {
        v20 = 0x506C616974617073;
        v21 = 1869901672;
      }

      v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v11 != v20)
      {
        goto LABEL_62;
      }
    }
  }

  else if (a2 == 5)
  {
    v19 = 0xE900000000000063;
    if (v11 != 0x6974616D656E6963)
    {
      goto LABEL_62;
    }
  }

  else if (a2 == 6)
  {
    v19 = 0xE600000000000000;
    if (v11 != 0x6F6D2D6F6C73)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v19 = 0xEA00000000006573;
    if (v11 != 0x70616C2D656D6974)
    {
      goto LABEL_62;
    }
  }

LABEL_60:
  if (v12 != v19)
  {
LABEL_62:
    v23 = sub_1A3A321C0();
    goto LABEL_63;
  }

  v23 = 1;
LABEL_63:

  return v23 & 1;
}

uint64_t sub_1A39A35EC()
{
  sub_1A3A318B0();
}

uint64_t LaunchAppIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1A3A31AA0();
  *(v1 + 24) = sub_1A3A31A90();
  v3 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A39A3820, v3, v2);
}

uint64_t sub_1A39A3820()
{

  v1 = sub_1A39A3950();
  if ([v1 isInCameraRollView])
  {
    [v1 navigateToViewfinderView];
  }

  sub_1A3A2E8A0();

  v2 = *(v0 + 8);

  return v2();
}

NSObject *sub_1A39A38D8()
{
  v0 = sub_1A3A2F2A0();
  __swift_allocate_value_buffer(v0, qword_1EB101B20);
  __swift_project_value_buffer(v0, qword_1EB101B20);
  result = os_log_create("com.apple.camera", "Camera");
  if (result)
  {
    return sub_1A3A2F2B0();
  }

  __break(1u);
  return result;
}

id sub_1A39A3950()
{
  result = [objc_opt_self() currentViewfinder];
  if (!result)
  {
    if (qword_1EB0FC1B0 != -1)
    {
      swift_once();
    }

    v1 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v1, qword_1EB101B20);
    v2 = sub_1A3A2F280();
    v3 = sub_1A3A31C20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v2, v3, "Failed to get CAMViewfinderViewController", v4, 2u);
      MEMORY[0x1A58FAC10](v4, -1, -1);
    }

    sub_1A39ABAF0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    return 0;
  }

  return result;
}

id CaptureMode.isAvailable.getter()
{
  result = [objc_opt_self() capabilities];
  if (result)
  {
    v1 = result;
    sub_1A39A3B24();
    v3 = [v1 isSupportedMode:v2 withDevice:sub_1A39A3B24()];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CaptureMode.supportsTimer.getter()
{
  result = [objc_opt_self() capabilities];
  if (result)
  {
    v1 = result;
    sub_1A39A3B24();
    v3 = [v1 isTimerSupportedForMode_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A39A3BC4(_BYTE *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v3 == 3 || v3 == 0)
  {
    if (*a1)
    {

      return 1;
    }

    else
    {
      v5 = sub_1A3A321C0();

      return v5 & 1;
    }
  }

  else
  {
    result = [objc_opt_self() capabilities];
    if (result)
    {
      v7 = result;
      sub_1A39A3B24();
      v9 = [v7 isSupportedMode:v8 withDevice:v2];

      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A39A3CAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE240);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v77 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE1A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v77 - v4;
  v6 = sub_1A3A2ED40();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2EBC0();
  v104 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A3A31800();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1A3A2EBD0();
  v105 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004D0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004D8);
  v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v101 = *(*(v17 - 8) + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A3A7DBC0;
  v85 = v19;
  v100 = v17;
  v87 = *(v17 + 48);
  v20 = v19 + v18;
  *(v19 + v18) = 4;
  sub_1A3A317A0();
  if (qword_1ED9964A0 != -1)
  {
    swift_once();
  }

  v93 = __swift_project_value_buffer(v9, qword_1ED99D898);
  v97 = *(v104 + 16);
  v104 += 16;
  v97(v11, v93, v9);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v98 = *(v105 + 56);
  v105 += 56;
  v98(v5, 1, 1, v102);
  sub_1A3A2E9E0();
  v95 = sub_1A3A2E9F0();
  v21 = *(v95 - 8);
  v99 = *(v21 + 56);
  v92 = v21 + 56;
  v99(v2, 0, 1, v95);
  v22 = v2;
  v23 = v5;
  sub_1A3A2EA10();
  v96 = v9;
  v87 = *(v100 + 48);
  *(v20 + v101) = 0;
  v94 = v20;
  v91 = v14;
  sub_1A3A317A0();
  v24 = v93;
  v25 = v97;
  v97(v11, v93, v9);
  v103 = v8;
  sub_1A3A2ED30();
  v26 = v11;
  sub_1A3A2EBE0();
  v27 = v102;
  v98(v23, 1, 1, v102);
  sub_1A3A2E9E0();
  v88 = v22;
  v99(v22, 0, 1, v95);
  v89 = v16;
  sub_1A3A2EA10();
  v28 = v101;
  v87 = 2 * v101;
  v83 = (v94 + 2 * v101);
  v29 = v100;
  v84 = *(v100 + 48);
  *v83 = 1;
  sub_1A3A317A0();
  v86 = v26;
  v25(v26, v24, v96);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v90 = v23;
  v98(v23, 1, 1, v27);
  v30 = v88;
  sub_1A3A2E9E0();
  v31 = v95;
  v99(v30, 0, 1, v95);
  sub_1A3A2EA10();
  v32 = v94;
  v33 = (v94 + v87 + v28);
  v87 = *(v29 + 48);
  *v33 = 2;
  sub_1A3A317A0();
  v34 = v86;
  v97(v86, v93, v96);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v98(v90, 1, 1, v102);
  sub_1A3A2E9E0();
  v35 = v99;
  v99(v30, 0, 1, v31);
  sub_1A3A2EA10();
  v87 = 4 * v101;
  v36 = (v32 + 4 * v101);
  v83 = v36;
  v37 = v100;
  v84 = *(v100 + 48);
  *v36 = 3;
  sub_1A3A317A0();
  v38 = v93;
  v40 = v96;
  v39 = v97;
  v97(v34, v93, v96);
  sub_1A3A2ED30();
  v41 = v34;
  sub_1A3A2EBE0();
  v42 = v98;
  v98(v90, 1, 1, v102);
  v43 = v88;
  sub_1A3A2E9E0();
  v35(v43, 0, 1, v95);
  sub_1A3A2EA10();
  v84 = v94 + v87 + v101;
  v87 = *(v37 + 48);
  *v84 = 5;
  sub_1A3A317A0();
  v39(v41, v38, v40);
  sub_1A3A2ED30();
  v44 = v41;
  sub_1A3A2EBE0();
  v45 = v90;
  v46 = v102;
  v42(v90, 1, 1, v102);
  v47 = v88;
  sub_1A3A2E9E0();
  v48 = v95;
  v49 = v99;
  v99(v47, 0, 1, v95);
  sub_1A3A2EA10();
  v79 = v94 + 6 * v101;
  v87 = *(v100 + 48);
  *v79 = 6;
  sub_1A3A317A0();
  v97(v44, v93, v96);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v50 = v105;
  v98(v45, 1, 1, v46);
  sub_1A3A2E9E0();
  v49(v47, 0, 1, v48);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E0);
  v84 = *(v50 + 16);
  v82 = *(v50 + 24);
  v80 = (v82 + 32) & ~v82;
  v51 = swift_allocObject();
  v81 = xmmword_1A3A681C0;
  *(v51 + 16) = xmmword_1A3A681C0;
  sub_1A3A317A0();
  v52 = v93;
  v53 = v96;
  v54 = v97;
  v97(v44, v93, v96);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v55 = v90;
  sub_1A3A2EA00();
  v87 = 8 * v101;
  v56 = v94;
  v78 = (v94 + 7 * v101);
  v79 = *(v100 + 48);
  *v78 = 7;
  sub_1A3A317A0();
  v54(v44, v52, v53);
  sub_1A3A2ED30();
  v57 = v44;
  sub_1A3A2EBE0();
  v58 = v55;
  v59 = v102;
  v60 = v98;
  v98(v55, 1, 1, v102);
  v61 = v88;
  sub_1A3A2E9E0();
  v99(v61, 0, 1, v95);
  sub_1A3A2EA10();
  v78 = (v56 + v87);
  v79 = *(v100 + 48);
  *v78 = 8;
  sub_1A3A317A0();
  v62 = v57;
  v63 = v57;
  v64 = v93;
  v97(v63, v93, v96);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v60(v58, 1, 1, v59);
  sub_1A3A2E9E0();
  v99(v61, 0, 1, v95);
  *(swift_allocObject() + 16) = v81;
  sub_1A3A317A0();
  v65 = v64;
  v66 = v64;
  v67 = v96;
  v68 = v97;
  v97(v62, v65, v96);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v69 = v90;
  sub_1A3A2EA00();
  v84 = v94 + v87 + v101;
  v70 = v100;
  v87 = *(v100 + 48);
  *v84 = 9;
  sub_1A3A317A0();
  v71 = v86;
  v68(v86, v66, v67);
  sub_1A3A2ED30();
  v72 = v71;
  sub_1A3A2EBE0();
  v98(v69, 1, 1, v102);
  sub_1A3A2E9E0();
  v73 = v95;
  v99(v61, 0, 1, v95);
  sub_1A3A2EA10();
  v74 = (v94 + 10 * v101);
  v101 = *(v70 + 48);
  *v74 = 10;
  sub_1A3A317A0();
  v97(v72, v93, v96);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v98(v69, 1, 1, v102);
  sub_1A3A2E9E0();
  v99(v61, 0, 1, v73);
  sub_1A3A2EA10();
  v75 = sub_1A3A1DDF4(v85);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB100068 = v75;
  return result;
}

uint64_t (*static CaptureMode.caseDisplayRepresentations.modify())()
{
  if (qword_1EB0FC1B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t CaptureMode.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6569666C6573;
    v8 = 0x7469617274726F70;
    v9 = 0x7469617274726F70;
    if (v1 != 3)
    {
      v9 = 0x6F746F6870;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6F65646976;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 1869504880;
    v3 = 0x566C616974617073;
    if (v1 != 9)
    {
      v3 = 0x506C616974617073;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x6974616D656E6963;
    v5 = 0x6F6D2D6F6C73;
    if (v1 != 6)
    {
      v5 = 0x70616C2D656D6974;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A39A5288()
{
  v1 = *(v0 + 16);
  *v1 = sub_1A39AE0BC();
  v2 = *(v0 + 8);

  return v2();
}

CameraUI::CaptureMode_optional __swiftcall CaptureMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A3A32120();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A39A5398()
{
  sub_1A3A322C0();
  sub_1A39A35EC();
  return sub_1A3A32300();
}

uint64_t sub_1A39A53E8()
{
  sub_1A3A322C0();
  sub_1A39A35EC();
  return sub_1A3A32300();
}

uint64_t sub_1A39A5438@<X0>(uint64_t *a1@<X8>)
{
  result = CaptureMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A39A5460(uint64_t a1)
{
  v2 = sub_1A39AE068();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A39A54AC(uint64_t a1)
{
  v2 = sub_1A39ABA9C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A39A551C(uint64_t a1)
{
  v2 = sub_1A39AC604();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

Swift::Bool __swiftcall TimerDuration.isAvailableFor(mode:)(CameraUI::CaptureMode mode)
{
  if (*v1)
  {
    v2 = [objc_opt_self() capabilities];
    if (!v2)
    {
      __break(1u);
      return v2;
    }

    v3 = v2;
    sub_1A39A3B24();
    v5 = [v3 isTimerSupportedForMode_];
  }

  else
  {
    v5 = 1;
  }

  LOBYTE(v2) = v5;
  return v2;
}

uint64_t sub_1A39A5608()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE240);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v35 = &v33 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE1A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v33 - v3;
  v4 = sub_1A3A2ED40();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A2EBC0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3A31800();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3A2EBD0();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  MEMORY[0x1EEE9AC00](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004C0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004C8);
  v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v48 = *(*(v15 - 8) + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A3A74050;
  v36 = v17;
  v18 = v17 + v16;
  v49 = v15;
  *(v17 + v16) = 0;
  sub_1A3A317A0();
  if (qword_1ED9964A0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_1ED99D898);
  v42 = *(v7 + 16);
  v43 = v19;
  v42(v9, v19, v6);
  sub_1A3A2ED30();
  v37 = v12;
  sub_1A3A2EBE0();
  v47 = *(v52 + 56);
  v52 += 56;
  v20 = v46;
  v47(v46, 1, 1, v51);
  v21 = v35;
  sub_1A3A2E9E0();
  v40 = sub_1A3A2E9F0();
  v22 = *(v40 - 8);
  v41 = *(v22 + 56);
  v38 = v22 + 56;
  v41(v21, 0, 1, v40);
  sub_1A3A2EA10();
  v44 = v7 + 16;
  v45 = v6;
  v39 = v18;
  v34 = *(v49 + 48);
  *(v18 + v48) = 1;
  sub_1A3A317A0();
  v23 = v43;
  v24 = v6;
  v25 = v42;
  v42(v9, v43, v24);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v47(v20, 1, 1, v51);
  sub_1A3A2E9E0();
  v26 = v40;
  v41(v21, 0, 1, v40);
  sub_1A3A2EA10();
  v34 = 2 * v48;
  v27 = v39;
  v33 = *(v49 + 48);
  *(v39 + 2 * v48) = 2;
  sub_1A3A317A0();
  v25(v9, v23, v45);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v28 = v46;
  v47(v46, 1, 1, v51);
  sub_1A3A2E9E0();
  v29 = v26;
  v30 = v41;
  v41(v21, 0, 1, v29);
  sub_1A3A2EA10();
  *(v27 + v34 + v48) = 3;
  sub_1A3A317A0();
  v42(v9, v43, v45);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v47(v28, 1, 1, v51);
  sub_1A3A2E9E0();
  v30(v21, 0, 1, v40);
  sub_1A3A2EA10();
  v31 = sub_1A3A1DFDC(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB100070 = v31;
  return result;
}

uint64_t sub_1A39A5E64(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1A3A2EA50();
}

uint64_t sub_1A39A5EE4(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static TimerDuration.caseDisplayRepresentations.modify())()
{
  if (qword_1EB0FC1C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A39A5FD4@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
  return sub_1A3A2EA50();
}

uint64_t sub_1A39A603C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a5;
  sub_1A3A2EA50();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v7;
}

uint64_t TimerDuration.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 1735290732;
  }

  if (*v0)
  {
    v1 = 0x74726F6873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void static TimerDuration.defaultTimerForMode(mode:)(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() capabilities];
  if (v2)
  {
    v3 = v2;
    sub_1A39A3B24();
    v5 = [v3 isTimerSupportedForMode_];

    v6 = v5 && sub_1A39A3B24() == 1;
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_1A39A61F8()
{
  if (sub_1A3A2EB00())
  {
    swift_getKeyPath();
    sub_1A39AC360();
    sub_1A3A2E990();

    v1 = 0;
    v2 = MEMORY[0x1E69E7CC0];
    v11 = v0;
    v3 = *(v0 + 24);
    while (1)
    {
      v6 = byte_1F1655360[v1 + 32];
      if (!v6)
      {
        goto LABEL_10;
      }

      result = [objc_opt_self() capabilities];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v8 = result;
      v9 = [result isTimerSupportedForMode_];

      if (v9)
      {
LABEL_10:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956B10(0, v2[2] + 1, 1);
        }

        v5 = v2[2];
        v4 = v2[3];
        if (v5 >= v4 >> 1)
        {
          sub_1A3956B10((v4 > 1), v5 + 1, 1);
        }

        v2[2] = v5 + 1;
        *(v2 + v5 + 32) = v6;
      }

      if (++v1 == 4)
      {
        v0 = v11;
        goto LABEL_14;
      }
    }
  }

  v2 = &unk_1F1655388;
LABEL_14:
  v10 = *(v0 + 8);

  return v10(v2);
}

uint64_t sub_1A39A63E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2E930();
  *a1 = v3;
  return result;
}

uint64_t sub_1A39A6420()
{
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2E940();
}

uint64_t sub_1A39A64D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A39AE220;

  return sub_1A39A61D8(v3);
}

uint64_t sub_1A39A6570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3897340;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

CameraUI::TimerDuration_optional __swiftcall TimerDuration.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A3A32120();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A39A668C()
{
  sub_1A3A322C0();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A39A6738()
{
  sub_1A3A318B0();
}

uint64_t sub_1A39A67D0()
{
  sub_1A3A322C0();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

void sub_1A39A6884(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (*v1 != 2)
  {
    v5 = 1735290732;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x74726F6873;
    v2 = 0xE500000000000000;
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

uint64_t sub_1A39A68EC(uint64_t a1)
{
  v2 = sub_1A39AE014();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A39A6938(uint64_t a1)
{
  v2 = sub_1A39AC260();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A39A69A8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1A3A2EA50();
}

uint64_t sub_1A39A6A08(uint64_t a1)
{
  v2 = sub_1A39ACAD0();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1A39A6A88()
{
  sub_1A3A2EA60();
  sub_1A3A2E940();
}

uint64_t (*OpenCaptureModeIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A3A2E920();
  return sub_1A39AE228;
}

uint64_t static OpenCaptureModeIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100140);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100148);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A39AB9F4();
  sub_1A3A2EAB0();
  sub_1A3A2EAA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100158);
  sub_1A3A2EA90();

  sub_1A3A2EAA0();
  sub_1A3A2EAC0();
  return sub_1A3A2EA70();
}

uint64_t OpenCaptureModeIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v18 = a1;
  v1 = sub_1A3A2EAD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE198);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE1A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100160);
  v14 = sub_1A3A2EBD0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v19 = 4;
  v15 = sub_1A3A2E890();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v8, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A500], v1);
  sub_1A39ABA48();
  sub_1A39ABA9C();
  result = sub_1A3A2E960();
  *v18 = result;
  return result;
}

uint64_t OpenCaptureModeIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_1A3A31AA0();
  v2[4] = sub_1A3A31A90();
  v5 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A39A706C, v5, v4);
}

id sub_1A39A706C()
{

  sub_1A3A2E930();
  result = [objc_opt_self() capabilities];
  if (result)
  {
    v2 = result;
    sub_1A39A3B24();
    v4 = [v2 isSupportedMode:v3 withDevice:sub_1A39A3B24()];

    if (v4)
    {
      v5 = sub_1A39A3950();
      v6 = [v5 currentCaptureMode];
      v7 = CAMCaptureDevicePositionForDevice([v5 currentCaptureDevice]);
      sub_1A3A2E930();
      sub_1A39A3B24();
      v9 = v8;
      sub_1A3A2E930();
      v10 = sub_1A39A3B24();
      v11 = CAMCaptureDevicePositionForDevice(v10);
      if (v6 != v9 || v7 != v11)
      {
        [v5 changeToMode:v9 device:v10 animated:1];
      }

      sub_1A3A2E8A0();

      v12 = *(v0 + 8);
    }

    else
    {
      sub_1A39ABAF0();
      swift_allocError();
      *v13 = 4;
      swift_willThrow();
      v12 = *(v0 + 8);
    }

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1A39A72A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A3A2E920();
  return sub_1A39AE228;
}

uint64_t sub_1A39A7318(uint64_t a1)
{
  v2 = sub_1A39ADFC0();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A39A7364(uint64_t a1)
{
  v2 = sub_1A39ADF6C();

  return MEMORY[0x1EEDB2E78](a1, v2);
}

uint64_t sub_1A39A73A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100140);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100148);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3A2EAB0();
  sub_1A3A2EAA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100158);
  sub_1A3A2EA90();

  sub_1A3A2EAA0();
  sub_1A3A2EAC0();
  return sub_1A3A2EA70();
}

uint64_t sub_1A39A7544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3897340;

  return OpenCaptureModeIntent.perform()(a1);
}

uint64_t sub_1A39A75E0(uint64_t a1)
{
  v2 = sub_1A39AB9F4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A39A761C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE240);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v21 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE1A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1A3A2ED40();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A3A2EBC0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3A31800();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = sub_1A3A2EBD0();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004B8);
  v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v29 = *(*(v11 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A3A70140;
  v30 = v13;
  v35 = v11;
  v28 = *(v11 + 48);
  v33 = (v13 + v12);
  *v33 = 0;
  sub_1A3A317A0();
  if (qword_1ED9964A0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1ED99D898);
  v15 = *(v7 + 16);
  v21 = v7 + 16;
  v26 = v15;
  v27 = v14;
  v15(v9, v14, v6);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  v22 = v6;
  v31 = *(v31 + 56);
  (v31)(v4, 1, 1, v34);
  v16 = v32;
  sub_1A3A2E9E0();
  v23 = sub_1A3A2E9F0();
  v17 = *(v23 - 8);
  v24 = *(v17 + 56);
  v25 = v17 + 56;
  v24(v16, 0, 1, v23);
  v18 = v33;
  sub_1A3A2EA10();
  v18[v29] = 1;
  sub_1A3A317A0();
  v26(v9, v27, v22);
  sub_1A3A2ED30();
  sub_1A3A2EBE0();
  (v31)(v4, 1, 1, v34);
  sub_1A3A2E9E0();
  v24(v16, 0, 1, v23);
  sub_1A3A2EA10();
  v19 = sub_1A3A1E1C4(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB100078 = v19;
  return result;
}

uint64_t static CaptureDevice.caseDisplayRepresentations.getter()
{
  if (qword_1EB0FC1C8 != -1)
  {
    swift_once();
  }

  return sub_1A3A2EA50();
}

id sub_1A39A7C88()
{
  v1 = sub_1A3A2EB00();
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  sub_1A39AC360();
  sub_1A3A2E990();

  v3 = *(v0 + 24);
  v4 = v3;
  v5 = byte_1F1655478;
  if (*(v0 + 24) && v3 != 3)
  {
    result = [objc_opt_self() capabilities];
    if (!result)
    {
      goto LABEL_31;
    }

    v8 = result;
    v9 = [result isSupportedMode:qword_1A3A7F258[v4] withDevice:v5];

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else if (byte_1F1655478)
  {
  }

  else
  {
    v6 = sub_1A3A321C0();

    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1A3956B40(0, *(v2 + 16) + 1, 1);
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1A3956B40((v10 > 1), v11 + 1, 1);
  }

  *(v2 + 16) = v11 + 1;
  *(v2 + v11 + 32) = v5;
LABEL_15:
  v12 = byte_1F1655479;
  if (v4 != 3 && v4)
  {
    result = [objc_opt_self() capabilities];
    if (result)
    {
      v14 = result;
      v15 = [result isSupportedMode:qword_1A3A7F258[v4] withDevice:v12];

      if (v15)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  if (byte_1F1655479)
  {

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3956B40(0, *(v2 + 16) + 1, 1);
    }

    v17 = *(v2 + 16);
    v16 = *(v2 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1A3956B40((v16 > 1), v17 + 1, 1);
    }

    *(v2 + 16) = v17 + 1;
    *(v2 + v17 + 32) = v12;
    goto LABEL_28;
  }

  v13 = sub_1A3A321C0();

  if (v13)
  {
    goto LABEL_23;
  }

LABEL_28:
  v18 = *(v0 + 8);

  return v18(v2);
}

uint64_t sub_1A39A7F90(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A39A8028;

  return sub_1A39A7C68(v3);
}

uint64_t sub_1A39A8028(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1A39A8138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A38910D8;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

CameraUI::CaptureDevice_optional __swiftcall CaptureDevice.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A3A32120();

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

uint64_t CaptureDevice.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E6F7266;
  }

  else
  {
    return 1801675106;
  }
}

uint64_t sub_1A39A8280(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E6F7266;
  }

  else
  {
    v3 = 1801675106;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E6F7266;
  }

  else
  {
    v5 = 1801675106;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A3A321C0();
  }

  return v8 & 1;
}

uint64_t sub_1A39A831C()
{
  sub_1A3A322C0();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A39A8394()
{
  sub_1A3A318B0();
}

uint64_t sub_1A39A83F8()
{
  sub_1A3A322C0();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A39A846C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A3A32120();

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

void sub_1A39A84CC(uint64_t *a1@<X8>)
{
  v2 = 1801675106;
  if (*v1)
  {
    v2 = 0x746E6F7266;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A39A8500(uint64_t a1)
{
  v2 = sub_1A39ADF18();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1A39A854C(uint64_t a1)
{
  v2 = sub_1A39ABBBC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A39A8598()
{
  if (qword_1EB0FC1C8 != -1)
  {
    swift_once();
  }

  return sub_1A3A2EA50();
}

uint64_t sub_1A39A85F4(uint64_t a1)
{
  v2 = sub_1A39AD158();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t (*ChangeCameraDeviceIntent.device.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A3A2E920();
  return sub_1A39A8720;
}

uint64_t static ChangeCameraDeviceIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100180);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100188);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A39ABB68();
  sub_1A3A2EAB0();
  sub_1A3A2EAA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100198);
  sub_1A3A2EA90();

  sub_1A3A2EAA0();
  sub_1A3A2EAC0();
  return sub_1A3A2EA70();
}

uint64_t ChangeCameraDeviceIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v18 = a1;
  v1 = sub_1A3A2EAD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE198);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE1A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001A0);
  v14 = sub_1A3A2EBD0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v19 = 2;
  v15 = sub_1A3A2E890();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v8, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A500], v1);
  sub_1A39ABBBC();
  result = sub_1A3A2E970();
  *v18 = result;
  return result;
}

uint64_t ChangeCameraDeviceIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_1A3A31AA0();
  v2[4] = sub_1A3A31A90();
  v5 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A39A8C2C, v5, v4);
}

uint64_t sub_1A39A8C2C()
{

  v1 = sub_1A39A3950();
  v2 = [v1 currentCaptureMode];
  sub_1A3A2E930();
  [v1 changeToMode:v2 device:*(v0 + 40) animated:1];
  sub_1A3A2E8A0();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A39A8D04(uint64_t a1)
{
  v2 = sub_1A39ADEC4();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A39A8D50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100180);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100188);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3A2EAB0();
  sub_1A3A2EAA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100198);
  sub_1A3A2EA90();

  sub_1A3A2EAA0();
  sub_1A3A2EAC0();
  return sub_1A3A2EA70();
}

uint64_t sub_1A39A8EF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3897340;

  return ChangeCameraDeviceIntent.perform()(a1);
}

uint64_t sub_1A39A8F90(uint64_t a1)
{
  v2 = sub_1A39ABB68();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t FlipCameraDeviceIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1A3A31AA0();
  *(v1 + 24) = sub_1A3A31A90();
  v3 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A39A9070, v3, v2);
}

uint64_t sub_1A39A9070()
{

  v1 = sub_1A39A3950();
  [v1 changeToMode:objc_msgSend(v1 device:sel_currentCaptureMode) animated:{CAMCaptureDevicePositionForDevice(objc_msgSend(v1, sel_currentCaptureDevice)) ^ 1, 1}];
  sub_1A3A2E8A0();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A39A914C(uint64_t a1)
{
  v2 = sub_1A39ADE70();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A39A9198(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A38910D8;

  return FlipCameraDeviceIntent.perform()(a1);
}

uint64_t sub_1A39A9230(uint64_t a1)
{
  v2 = sub_1A39AD504();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A39A926C()
{
  v0 = sub_1A3A2ED40();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A3A2EBC0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A31800();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3A317A0();
  if (qword_1ED9964A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_1ED99D898);
  (*(v2 + 16))(v4, v6, v1);
  sub_1A3A2ED30();
  return sub_1A3A2EBE0();
}

uint64_t (*StartCaptureIntent.captureMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A3A2E920();
  return sub_1A39AE228;
}

uint64_t sub_1A39A95F4()
{
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2E940();
}

uint64_t (*StartCaptureIntent.timerDuration.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A3A2E920();
  return sub_1A39AE228;
}

uint64_t sub_1A39A975C()
{
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2E940();
}

uint64_t (*StartCaptureIntent.device.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A3A2E920();
  return sub_1A39AE228;
}

void sub_1A39A987C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static StartCaptureIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001B8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A39AC1B8();
  sub_1A3A2EAB0();
  sub_1A3A2EAA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001C8);
  sub_1A3A2EA90();

  sub_1A3A2EAA0();
  sub_1A3A2EAC0();
  return sub_1A3A2EA80();
}

uint64_t sub_1A39A9AB0()
{
  swift_getKeyPath();
  sub_1A39AC1B8();
  v0 = sub_1A3A2EA60();

  swift_getKeyPath();
  sub_1A3A2EA60();
  v1 = sub_1A3A2EA60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A3A7DBD0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_1A3A2EA60();
  v3 = sub_1A3A2EA50();

  return v3;
}

uint64_t StartCaptureIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v26 = sub_1A3A2EAD0();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE198);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE1A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100160);
  v29 = sub_1A3A2EBD0();
  v13 = *(v29 - 8);
  v28 = *(v13 + 56);
  v14 = v13 + 56;
  v28(v12, 1, 1, v29);
  v23 = v14;
  LOBYTE(v30) = 4;
  v15 = sub_1A3A2E890();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  v27 = *MEMORY[0x1E695A500];
  v17 = *(v1 + 104);
  v21[1] = v1 + 104;
  v25 = v17;
  v17(v3);
  sub_1A39ABA48();
  sub_1A39ABA9C();
  v18 = sub_1A3A2E960();
  v19 = v24;
  *v24 = v18;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001D0);
  v28(v12, 1, 1, v29);
  v31 = 4;
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001D8);
  swift_getKeyPath();
  v30 = sub_1A3A2EB10();
  v25(v3, v27, v26);
  sub_1A39AC20C();
  sub_1A39AC260();
  v19[1] = sub_1A3A2E960();
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001F0);
  v28(v12, 1, 1, v29);
  v31 = 2;
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  swift_getKeyPath();
  v30 = sub_1A3A2EB10();
  v25(v3, v27, v26);
  sub_1A39AC2B4();
  sub_1A39ABBBC();
  result = sub_1A3A2E960();
  v19[2] = result;
  return result;
}

uint64_t StartCaptureIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_1A3A31AA0();
  *(v2 + 48) = sub_1A3A31A90();
  v4 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A39AA114, v4, v3);
}

id sub_1A39AA114()
{
  v61 = v0;
  sub_1A3A2E930();
  v1 = *(v0 + 56);
  v2 = objc_opt_self();
  result = [v2 capabilities];
  if (!result)
  {
    __break(1u);
    goto LABEL_73;
  }

  v4 = result;

  sub_1A39A3B24();
  LOBYTE(v60[0]) = v1;
  v6 = [v4 isSupportedMode:v5 withDevice:sub_1A39A3B24()];

  if (v6)
  {
    v7 = sub_1A39A3950();
    v59 = [v7 isInCameraRollView];
    if (qword_1EB0FC1B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v8, qword_1EB101B20);
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    v9 = sub_1A3A2F280();
    v10 = sub_1A3A31C10();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v60[0] = v12;
      *v11 = 136446466;
      sub_1A3A2E930();
      v13 = *(v0 + 56);
      if (v13 <= 4)
      {
        v25 = 0xE600000000000000;
        v26 = 0x6569666C6573;
        v27 = 0xE800000000000000;
        v28 = 0x7469617274726F70;
        v29 = 0xEF6569666C65732DLL;
        v30 = 0x7469617274726F70;
        if (v13 != 3)
        {
          v30 = 0x6F746F6870;
          v29 = 0xE500000000000000;
        }

        if (v13 != 2)
        {
          v28 = v30;
          v27 = v29;
        }

        if (*(v0 + 56))
        {
          v26 = 0x6F65646976;
          v25 = 0xE500000000000000;
        }

        if (*(v0 + 56) <= 1u)
        {
          v22 = v26;
        }

        else
        {
          v22 = v28;
        }

        if (*(v0 + 56) <= 1u)
        {
          v23 = v25;
        }

        else
        {
          v23 = v27;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        v15 = 1869504880;
        v16 = 0xEC0000006F656469;
        v17 = 0x566C616974617073;
        if (v13 != 9)
        {
          v17 = 0x506C616974617073;
          v16 = 0xEC0000006F746F68;
        }

        if (v13 != 8)
        {
          v15 = v17;
          v14 = v16;
        }

        v18 = 0xE900000000000063;
        v19 = 0x6974616D656E6963;
        v20 = 0xE600000000000000;
        v21 = 0x6F6D2D6F6C73;
        if (v13 != 6)
        {
          v21 = 0x70616C2D656D6974;
          v20 = 0xEA00000000006573;
        }

        if (v13 != 5)
        {
          v19 = v21;
          v18 = v20;
        }

        if (*(v0 + 56) <= 7u)
        {
          v22 = v19;
        }

        else
        {
          v22 = v15;
        }

        if (*(v0 + 56) <= 7u)
        {
          v23 = v18;
        }

        else
        {
          v23 = v14;
        }
      }

      v31 = sub_1A39ABC10(v22, v23, v60);

      *(v11 + 4) = v31;
      *(v11 + 12) = 2082;
      sub_1A3A2E930();
      *(v0 + 57) = *(v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100200);
      v32 = sub_1A3A31880();
      v34 = sub_1A39ABC10(v32, v33, v60);

      *(v11 + 14) = v34;
      _os_log_impl(&dword_1A3640000, v9, v10, "Performing CapturePhotoIntent with captureMode=%{public}s), device=%{public}s)", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58FAC10](v12, -1, -1);
      MEMORY[0x1A58FAC10](v11, -1, -1);
    }

    if (![v7 navigateToViewfinderView])
    {
      sub_1A39ABAF0();
      swift_allocError();
      *v37 = 0;
LABEL_42:
      swift_willThrow();

      goto LABEL_43;
    }

    if ([v7 isRecording])
    {
      sub_1A39ABAF0();
      swift_allocError();
      v36 = 2;
LABEL_41:
      *v35 = v36;
      goto LABEL_42;
    }

    if ([v7 isCapturingFromTimer])
    {
      sub_1A39ABAF0();
      swift_allocError();
      v36 = 3;
      goto LABEL_41;
    }

    sub_1A3A2E930();
    v39 = *(v0 + 56);
    if (v39 != 2)
    {
      sub_1A3A2E930();
      LOBYTE(v60[0]) = v39 & 1;
      if ((sub_1A39A3BC4(v60) & 1) == 0)
      {
        sub_1A39ABAF0();
        swift_allocError();
        v36 = 5;
        goto LABEL_41;
      }
    }

    v40 = [v7 currentCaptureMode];
    v41 = CAMCaptureDevicePositionForDevice([v7 currentCaptureDevice]);
    sub_1A3A2E930();
    sub_1A39A3B24();
    v43 = v42;
    sub_1A3A2E930();
    v44 = *(v0 + 56);
    if (v44 == 2)
    {
      sub_1A3A2E930();
      v45 = sub_1A39A3B24();
    }

    else
    {
      v45 = v44 & 1;
    }

    v46 = CAMCaptureDevicePositionForDevice(v45);
    if (v40 != v43 || v41 != v46)
    {
      [v7 changeToMode:v43 device:v45 animated:1];
    }

    if (v59)
    {
LABEL_71:
      sub_1A3A2E8A0();

      v38 = *(v0 + 8);
      goto LABEL_44;
    }

    if ([v7 currentCaptureMode] != v43)
    {
      v52 = sub_1A3A2F280();
      v53 = sub_1A3A31C20();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1A3640000, v52, v53, "Camera is in an unexpected capture mode, bailing.", v54, 2u);
        MEMORY[0x1A58FAC10](v54, -1, -1);
      }

      goto LABEL_71;
    }

    sub_1A3A2E930();
    v47 = *(v0 + 56);
    if (v47 == 4)
    {
      sub_1A3A2E930();
      v48 = *(v0 + 57);
      result = [v2 capabilities];
      if (!result)
      {
LABEL_74:
        __break(1u);
        return result;
      }

      v49 = result;
      LOBYTE(v60[0]) = v48;
      sub_1A39A3B24();
      v51 = [v49 isTimerSupportedForMode_];

      v47 = 0;
      if (v51)
      {
        LOBYTE(v60[0]) = v48;
        if (sub_1A39A3B24() == 1)
        {
          v47 = 1;
        }
      }
    }

    sub_1A3A2E930();
    v55 = *(v0 + 56);
    result = [v2 capabilities];
    if (result)
    {
      v56 = result;
      LOBYTE(v60[0]) = v55;
      sub_1A39A3B24();
      v58 = [v56 isTimerSupportedForMode_];

      if (v58)
      {
        [v7 setSingleUseTimerWithDuration_];
      }

      [v7 pressShutterForRemoteShutterWaitingForViewfinder:1 timeout:10.0];
      goto LABEL_71;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_1A39ABAF0();
  swift_allocError();
  *v24 = 4;
  swift_willThrow();
LABEL_43:
  v38 = *(v0 + 8);
LABEL_44:

  return v38();
}

uint64_t sub_1A39AA92C(uint64_t a1)
{
  v2 = sub_1A39ADE1C();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A39AA978()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001B8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3A2EAB0();
  sub_1A3A2EAA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1001C8);
  sub_1A3A2EA90();

  sub_1A3A2EAA0();
  sub_1A3A2EAC0();
  return sub_1A3A2EA80();
}

uint64_t sub_1A39AAB34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3897340;

  return StartCaptureIntent.perform()(a1);
}

uint64_t sub_1A39AABD0(uint64_t a1)
{
  v2 = sub_1A39AC1B8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t StopCaptureIntent.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1A3A31AA0();
  *(v1 + 24) = sub_1A3A31A90();
  v3 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A39AACB0, v3, v2);
}

uint64_t sub_1A39AACB0()
{

  v1 = sub_1A39A3950();
  if ([v1 isRecording])
  {
    [v1 stopRecording];
    sub_1A3A2E8A0();
  }

  else
  {
    sub_1A39ABAF0();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A39AADA4(uint64_t a1)
{
  v2 = sub_1A39ADDC8();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A39AADF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3897340;

  return StopCaptureIntent.perform()(a1);
}

uint64_t sub_1A39AAE88(uint64_t a1)
{
  v2 = sub_1A39AD780();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

id sub_1A39AAEC4()
{
  type metadata accessor for _CameraUIBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1ED99D890 = result;
  return result;
}

uint64_t sub_1A39AAF1C()
{
  v0 = sub_1A3A2EBC0();
  __swift_allocate_value_buffer(v0, qword_1ED99D898);
  v1 = __swift_project_value_buffer(v0, qword_1ED99D898);
  *v1 = type metadata accessor for _CameraUIBundleClass();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1A39AB090(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A3A2E8B0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  v8 = sub_1A3A2E8F0();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  sub_1A3A2E8C0();
  sub_1A3A2E8C0();
  (*(v4 + 8))(v7, v3);
  return sub_1A3A2E900();
}

uint64_t sub_1A39AB204()
{
  v0 = sub_1A3A2E8D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A3A2E8F0();
  __swift_allocate_value_buffer(v5, qword_1EB1000C8);
  __swift_project_value_buffer(v5, qword_1EB1000C8);
  sub_1A3A2E8E0();
  sub_1A3A2E8E0();
  (*(v1 + 8))(v4, v0);
  return sub_1A3A2E910();
}

uint64_t sub_1A39AB37C()
{
  v0 = sub_1A3A2E8D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A3A2E8F0();
  __swift_allocate_value_buffer(v5, qword_1EB1000E0);
  __swift_project_value_buffer(v5, qword_1EB1000E0);
  sub_1A3A2E8E0();
  sub_1A3A2E8E0();
  (*(v1 + 8))(v4, v0);
  return sub_1A3A2E910();
}

uint64_t sub_1A39AB4F4()
{
  v0 = sub_1A3A2E8D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A3A2E8F0();
  __swift_allocate_value_buffer(v5, qword_1EB1000F8);
  __swift_project_value_buffer(v5, qword_1EB1000F8);
  sub_1A3A2E8E0();
  sub_1A3A2E8E0();
  (*(v1 + 8))(v4, v0);
  return sub_1A3A2E910();
}

uint64_t sub_1A39AB66C()
{
  v0 = sub_1A3A2E8D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A3A2E8F0();
  __swift_allocate_value_buffer(v5, qword_1EB100110);
  __swift_project_value_buffer(v5, qword_1EB100110);
  sub_1A3A2E8E0();
  sub_1A3A2E8E0();
  (*(v1 + 8))(v4, v0);
  return sub_1A3A2E910();
}

uint64_t sub_1A39AB7E4()
{
  v0 = sub_1A3A2E8D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A3A2E8F0();
  __swift_allocate_value_buffer(v5, qword_1EB100128);
  __swift_project_value_buffer(v5, qword_1EB100128);
  sub_1A3A2E8E0();
  sub_1A3A2E8E0();
  (*(v1 + 8))(v4, v0);
  return sub_1A3A2E910();
}

uint64_t sub_1A39AB95C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A3A2E8F0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_1A39AB9F4()
{
  result = qword_1EB100150;
  if (!qword_1EB100150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100150);
  }

  return result;
}

unint64_t sub_1A39ABA48()
{
  result = qword_1EB100168;
  if (!qword_1EB100168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100168);
  }

  return result;
}

unint64_t sub_1A39ABA9C()
{
  result = qword_1EB100170;
  if (!qword_1EB100170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100170);
  }

  return result;
}

unint64_t sub_1A39ABAF0()
{
  result = qword_1EB100178;
  if (!qword_1EB100178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100178);
  }

  return result;
}

uint64_t CAMCaptureDevicePositionForDevice(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A7F2B0[a1 - 1];
  }
}

unint64_t sub_1A39ABB68()
{
  result = qword_1EB100190;
  if (!qword_1EB100190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100190);
  }

  return result;
}

unint64_t sub_1A39ABBBC()
{
  result = qword_1EB1001A8;
  if (!qword_1EB1001A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1001A8);
  }

  return result;
}

unint64_t sub_1A39ABC10(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1A3A2EA50();
  v6 = sub_1A39ABCDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A395ADE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1A39ABCDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A39ABDE8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1A3A31F80();
    a6 = v11;
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

uint64_t sub_1A39ABDE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A39ABE34(a1, a2);
  sub_1A39ABF64(&unk_1F16539B8);
  return v3;
}

uint64_t sub_1A39ABE34(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A39AC050(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A3A31F80();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A3A31900();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A39AC050(v10, 0);
        result = sub_1A3A31F10();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A39ABF64(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A39AC0C4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A39AC050(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1A39AC0C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_1A39AC1B8()
{
  result = qword_1EB1001C0;
  if (!qword_1EB1001C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1001C0);
  }

  return result;
}

unint64_t sub_1A39AC20C()
{
  result = qword_1EB1001E0;
  if (!qword_1EB1001E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1001E0);
  }

  return result;
}

unint64_t sub_1A39AC260()
{
  result = qword_1EB1001E8;
  if (!qword_1EB1001E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1001E8);
  }

  return result;
}

unint64_t sub_1A39AC2B4()
{
  result = qword_1EB1001F8;
  if (!qword_1EB1001F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1001F8);
  }

  return result;
}

unint64_t sub_1A39AC30C()
{
  result = qword_1EB100208;
  if (!qword_1EB100208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100208);
  }

  return result;
}

unint64_t sub_1A39AC360()
{
  result = qword_1EB100210;
  if (!qword_1EB100210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100210);
  }

  return result;
}

unint64_t sub_1A39AC3FC()
{
  result = qword_1EB100228;
  if (!qword_1EB100228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100228);
  }

  return result;
}

unint64_t sub_1A39AC450()
{
  result = qword_1EB100230;
  if (!qword_1EB100230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100230);
  }

  return result;
}

unint64_t sub_1A39AC4A8()
{
  result = qword_1EB100238;
  if (!qword_1EB100238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100238);
  }

  return result;
}

unint64_t sub_1A39AC500()
{
  result = qword_1EB100240;
  if (!qword_1EB100240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100240);
  }

  return result;
}

unint64_t sub_1A39AC558()
{
  result = qword_1EB100248;
  if (!qword_1EB100248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100248);
  }

  return result;
}

unint64_t sub_1A39AC5AC()
{
  result = qword_1EB100250;
  if (!qword_1EB100250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100250);
  }

  return result;
}

unint64_t sub_1A39AC604()
{
  result = qword_1EB100258;
  if (!qword_1EB100258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100258);
  }

  return result;
}

unint64_t sub_1A39AC688()
{
  result = qword_1EB100260;
  if (!qword_1EB100260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100260);
  }

  return result;
}

unint64_t sub_1A39AC6E0()
{
  result = qword_1EB100268;
  if (!qword_1EB100268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100268);
  }

  return result;
}

unint64_t sub_1A39AC738()
{
  result = qword_1EB100270;
  if (!qword_1EB100270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100270);
  }

  return result;
}

unint64_t sub_1A39AC7D4()
{
  result = qword_1EB100280;
  if (!qword_1EB100280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100280);
  }

  return result;
}

unint64_t sub_1A39AC828()
{
  result = qword_1EB100288;
  if (!qword_1EB100288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100288);
  }

  return result;
}

unint64_t sub_1A39AC8C4()
{
  result = qword_1EB1002A0;
  if (!qword_1EB1002A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002A0);
  }

  return result;
}

unint64_t sub_1A39AC91C()
{
  result = qword_1EB1002A8;
  if (!qword_1EB1002A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002A8);
  }

  return result;
}

unint64_t sub_1A39AC974()
{
  result = qword_1EB1002B0;
  if (!qword_1EB1002B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002B0);
  }

  return result;
}

unint64_t sub_1A39AC9CC()
{
  result = qword_1EB1002B8;
  if (!qword_1EB1002B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002B8);
  }

  return result;
}

unint64_t sub_1A39ACA24()
{
  result = qword_1EB1002C0;
  if (!qword_1EB1002C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002C0);
  }

  return result;
}

unint64_t sub_1A39ACA78()
{
  result = qword_1EB1002C8;
  if (!qword_1EB1002C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002C8);
  }

  return result;
}

unint64_t sub_1A39ACAD0()
{
  result = qword_1EB1002D0;
  if (!qword_1EB1002D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002D0);
  }

  return result;
}

unint64_t sub_1A39ACB54()
{
  result = qword_1EB1002D8;
  if (!qword_1EB1002D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002D8);
  }

  return result;
}

unint64_t sub_1A39ACBAC()
{
  result = qword_1EB1002E0;
  if (!qword_1EB1002E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002E0);
  }

  return result;
}

unint64_t sub_1A39ACC04()
{
  result = qword_1EB1002E8;
  if (!qword_1EB1002E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002E8);
  }

  return result;
}

unint64_t sub_1A39ACCA0()
{
  result = qword_1EB1002F8;
  if (!qword_1EB1002F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1002F8);
  }

  return result;
}

unint64_t sub_1A39ACCF8()
{
  result = qword_1EB100300;
  if (!qword_1EB100300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100300);
  }

  return result;
}

unint64_t sub_1A39ACD50()
{
  result = qword_1EB100308;
  if (!qword_1EB100308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100308);
  }

  return result;
}

unint64_t sub_1A39ACDE0()
{
  result = qword_1EB100310;
  if (!qword_1EB100310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100310);
  }

  return result;
}

unint64_t sub_1A39ACE34()
{
  result = qword_1EB100318;
  if (!qword_1EB100318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100318);
  }

  return result;
}

uint64_t sub_1A39ACECC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A39ACF4C()
{
  result = qword_1EB100330;
  if (!qword_1EB100330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100330);
  }

  return result;
}

unint64_t sub_1A39ACFA4()
{
  result = qword_1EB100338;
  if (!qword_1EB100338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100338);
  }

  return result;
}

unint64_t sub_1A39ACFFC()
{
  result = qword_1EB100340;
  if (!qword_1EB100340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100340);
  }

  return result;
}

unint64_t sub_1A39AD054()
{
  result = qword_1EB100348;
  if (!qword_1EB100348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100348);
  }

  return result;
}

unint64_t sub_1A39AD0AC()
{
  result = qword_1EB100350;
  if (!qword_1EB100350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100350);
  }

  return result;
}

unint64_t sub_1A39AD100()
{
  result = qword_1EB100358;
  if (!qword_1EB100358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100358);
  }

  return result;
}

unint64_t sub_1A39AD158()
{
  result = qword_1EB100360;
  if (!qword_1EB100360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100360);
  }

  return result;
}

unint64_t sub_1A39AD1DC()
{
  result = qword_1EB100368;
  if (!qword_1EB100368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100368);
  }

  return result;
}

unint64_t sub_1A39AD234()
{
  result = qword_1EB100370;
  if (!qword_1EB100370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100370);
  }

  return result;
}

unint64_t sub_1A39AD28C()
{
  result = qword_1EB100378;
  if (!qword_1EB100378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100378);
  }

  return result;
}

unint64_t sub_1A39AD328()
{
  result = qword_1EB100388;
  if (!qword_1EB100388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100388);
  }

  return result;
}

unint64_t sub_1A39AD380()
{
  result = qword_1EB100390;
  if (!qword_1EB100390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100390);
  }

  return result;
}

unint64_t sub_1A39AD410()
{
  result = qword_1EB100398;
  if (!qword_1EB100398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100398);
  }

  return result;
}

unint64_t sub_1A39AD468()
{
  result = qword_1EB1003A0;
  if (!qword_1EB1003A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003A0);
  }

  return result;
}

unint64_t sub_1A39AD504()
{
  result = qword_1EB1003A8;
  if (!qword_1EB1003A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003A8);
  }

  return result;
}

unint64_t sub_1A39AD55C()
{
  result = qword_1EB1003B0;
  if (!qword_1EB1003B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003B0);
  }

  return result;
}

unint64_t sub_1A39AD5B4()
{
  result = qword_1EB1003B8;
  if (!qword_1EB1003B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003B8);
  }

  return result;
}

unint64_t sub_1A39AD644()
{
  result = qword_1EB1003C0;
  if (!qword_1EB1003C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003C0);
  }

  return result;
}

unint64_t sub_1A39AD69C()
{
  result = qword_1EB1003C8;
  if (!qword_1EB1003C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003C8);
  }

  return result;
}

unint64_t sub_1A39AD780()
{
  result = qword_1EB1003D0;
  if (!qword_1EB1003D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003D0);
  }

  return result;
}

unint64_t sub_1A39AD7D8()
{
  result = qword_1EB1003D8;
  if (!qword_1EB1003D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003D8);
  }

  return result;
}

unint64_t sub_1A39AD834()
{
  result = qword_1EB1003E0;
  if (!qword_1EB1003E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003E0);
  }

  return result;
}

unint64_t sub_1A39AD890()
{
  result = qword_1EB1003E8;
  if (!qword_1EB1003E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003E8);
  }

  return result;
}

unint64_t sub_1A39AD8EC()
{
  result = qword_1EB1003F0;
  if (!qword_1EB1003F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003F0);
  }

  return result;
}

unint64_t sub_1A39AD948()
{
  result = qword_1EB1003F8;
  if (!qword_1EB1003F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1003F8);
  }

  return result;
}

unint64_t sub_1A39AD9A0()
{
  result = qword_1EB100400;
  if (!qword_1EB100400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100400);
  }

  return result;
}

unint64_t sub_1A39AD9FC()
{
  result = qword_1EB100408;
  if (!qword_1EB100408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100408);
  }

  return result;
}

unint64_t sub_1A39ADA58()
{
  result = qword_1EB100410;
  if (!qword_1EB100410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CaptureMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CaptureMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A39ADC64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A39ADCAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A39ADD74()
{
  result = qword_1EB100458;
  if (!qword_1EB100458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100458);
  }

  return result;
}

unint64_t sub_1A39ADDC8()
{
  result = qword_1EB100460;
  if (!qword_1EB100460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100460);
  }

  return result;
}

unint64_t sub_1A39ADE1C()
{
  result = qword_1EB100468;
  if (!qword_1EB100468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100468);
  }

  return result;
}

unint64_t sub_1A39ADE70()
{
  result = qword_1EB100470;
  if (!qword_1EB100470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100470);
  }

  return result;
}

unint64_t sub_1A39ADEC4()
{
  result = qword_1EB100478;
  if (!qword_1EB100478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100478);
  }

  return result;
}

unint64_t sub_1A39ADF18()
{
  result = qword_1EB100480;
  if (!qword_1EB100480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100480);
  }

  return result;
}

unint64_t sub_1A39ADF6C()
{
  result = qword_1EB100488;
  if (!qword_1EB100488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100488);
  }

  return result;
}

unint64_t sub_1A39ADFC0()
{
  result = qword_1EB100490;
  if (!qword_1EB100490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100490);
  }

  return result;
}

unint64_t sub_1A39AE014()
{
  result = qword_1EB100498;
  if (!qword_1EB100498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100498);
  }

  return result;
}

unint64_t sub_1A39AE068()
{
  result = qword_1EB1004A0;
  if (!qword_1EB1004A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1004A0);
  }

  return result;
}

id sub_1A39AE0BC()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = byte_1F16547F0[v1 + 32];
    result = [v0 capabilities];
    if (!result)
    {
      break;
    }

    v7 = result;
    v8 = [result isSupportedMode:qword_1A3A7F360[v5] withDevice:qword_1A3A7F308[v5]];

    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A3956AE0(0, *(v2 + 16) + 1, 1);
      }

      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_1A3956AE0((v3 > 1), v4 + 1, 1);
      }

      *(v2 + 16) = v4 + 1;
      *(v2 + v4 + 32) = v5;
    }

    if (++v1 == 11)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39AE2BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A39AE314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v278 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v269 - v10;
  v12 = sub_1A3A30090();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v269 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentTraitCollection];
  v17 = [v16 preferredContentSizeCategory];

  sub_1A3A300A0();
  v18 = *(v13 + 48);
  if (v18(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, *MEMORY[0x1E697F680], v12);
    if (v18(v11, 1, v12) != 1)
    {
      sub_1A3913464(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  switch(a1)
  {
    case 0:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 752))
      {
        v42 = 0xD000000000000011;
      }

      else
      {
        v42 = 0xD000000000000017;
      }

      if (*(a4 + 752))
      {
        v59 = "figure.run.motion.slash";
      }

      else
      {
        v59 = "ImageWellContent";
      }

      goto LABEL_172;
    case 1:
    case 4:
    case 6:
    case 8:
    case 9:
    case 11:
    case 13:
    case 20:
    case 22:
    case 24:
    case 30:
    case 32:
    case 33:
      v19 = v278;
      v20 = a1;
      goto LABEL_7;
    case 2:
      if (a3)
      {
        goto LABEL_89;
      }

      if (a2 != 11)
      {
        if (a2)
        {
LABEL_89:
          v19 = v278;
          v20 = 2;
          goto LABEL_7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1A3A681C0;
        if (qword_1EB0FC150 != -1)
        {
          swift_once();
        }

        v71 = qword_1EB101AD8;
        swift_getKeyPath();
        v279 = a4;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        v72 = v71;
        sub_1A3A2F080();

        v73 = sub_1A3A2F0D0();
        v74 = [v72 stringFromNumber_];

        if (v74)
        {
          v277 = sub_1A3A31850();
          v76 = v75;
        }

        else
        {
          v277 = 0;
          v76 = 0xE000000000000000;
        }

        v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
        v262 = v261[16];
        v263 = v261[20];
        v264 = v261[24];
        v265 = v261[28];
        v266 = v261[32];
        v258 = v261[36];
        *(v70 + 32) = 0;
        *(v70 + 40) = 0xE000000000000000;
        *(v70 + 48) = v277;
        *(v70 + 56) = v76;
        *(v70 + 64) = 0x7669737275632E66;
        *(v70 + 72) = 0xE900000000000065;
        v260 = v278;
        *v278 = v70;
        (*(v13 + 32))(&v260[v262], v15, v12);
        v260[v263] = 0;
        v260[v264] = 0;
        v260[v265] = 1;
        v260[8] = 1;
        v260[v266] = 0;
LABEL_164:
        v260[v258] = 0;
        type metadata accessor for ChromeElementIcon();
        return swift_storeEnumTagMultiPayload();
      }

      swift_getKeyPath();
      v210 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 712) < 10.0)
      {
        if (qword_1EB0FC150 != -1)
        {
          swift_once();
        }

        v211 = qword_1EB101AD8;
        swift_getKeyPath();
        v279 = a4;
        v212 = v211;
        sub_1A3A2F080();

        v213 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v214 = [v212 stringFromNumber_];

        if (!v214)
        {
LABEL_71:
          (*(v13 + 8))(v15, v12);
          type metadata accessor for ChromeElementIcon();
          return swift_storeEnumTagMultiPayload();
        }

        v215 = sub_1A3A31850();
        v217 = v216;

LABEL_155:
        (*(v13 + 8))(v15, v12);
        v220 = v278;
        *v278 = 0x7669737275632E66;
        v220[1] = 0xE900000000000065;
        v220[2] = v215;
        v220[3] = v217;
        goto LABEL_156;
      }

      swift_getKeyPath();
      v279 = a4;
      v45 = a4 + v210;
      sub_1A3A2F080();

      v218 = *(a4 + 712);
      if ((*&v218 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_178;
      }

      if (v218 <= -9.22337204e18)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v218 < 9.22337204e18)
      {
        v279 = v218;
        v215 = sub_1A3A321A0();
        v217 = v219;
        goto LABEL_155;
      }

LABEL_179:
      __break(1u);
LABEL_180:
      v279 = v45;
LABEL_182:
      sub_1A3A321F0();
      __break(1u);
LABEL_183:
      v279 = 0;
      v280 = 0xE000000000000000;
      sub_1A3A31F20();

      v279 = 0xD000000000000025;
      v280 = 0x80000001A3AA7790;
      v268 = MEMORY[0x1A58F7830](a1, &type metadata for ChromeElement);
      MEMORY[0x1A58F7770](v268);

      result = sub_1A3A32070();
      __break(1u);
      return result;
    case 3:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 793))
      {
        if (*(a4 + 793) == 1)
        {
          v59 = "ratio.4.to.3.viewfinder";
          v42 = 0xD000000000000018;
        }

        else
        {
          v42 = 0xD000000000000017;
          v59 = "ratio.16.to.9.viewfinder";
        }
      }

      else
      {
        v59 = "livephoto.badge.automatic";
        v42 = 0xD000000000000017;
      }

      goto LABEL_172;
    case 5:
      if (a3)
      {
        goto LABEL_88;
      }

      if (a2 == 11)
      {
        if (qword_1EB0FC150 != -1)
        {
          swift_once();
        }

        v195 = qword_1EB101AD8;
        swift_getKeyPath();
        v279 = a4;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        v196 = v195;
        sub_1A3A2F080();

        v197 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v198 = [v196 stringFromNumber_];

        if (v198)
        {
          v199 = sub_1A3A31850();
          v201 = v200;

          v202 = sub_1A3A31810();
          v203 = CAMLocalizedFrameworkString(v202, 0);

          v204 = sub_1A3A31850();
          v206 = v205;

          v279 = v204;
          v280 = v206;
          sub_1A3A2EA50();
          MEMORY[0x1A58F7770](32, 0xE100000000000000);

          sub_1A3A2EA50();
          MEMORY[0x1A58F7770](v199, v201);

          v39 = v279;
          v40 = v280;
          sub_1A3A30740();
          sub_1A391A414();
          v41 = CEKFontOfSizeWeightStyle();
          goto LABEL_145;
        }

        goto LABEL_71;
      }

      if (!a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1A3A681C0;
        v49 = sub_1A3A31810();
        v50 = CAMLocalizedFrameworkString(v49, 0);

        v51 = sub_1A3A31850();
        v276 = v52;
        v277 = v51;

        if (qword_1EB0FC150 != -1)
        {
          swift_once();
        }

        v53 = qword_1EB101AD8;
        swift_getKeyPath();
        v279 = a4;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        v54 = v53;
        sub_1A3A2F080();

        v55 = sub_1A3A2F0D0();
        v56 = [v54 stringFromNumber_];

        if (v56)
        {
          v275 = sub_1A3A31850();
          v58 = v57;
        }

        else
        {
          v275 = 0;
          v58 = 0xE000000000000000;
        }

        v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
        v253 = v252[16];
        v254 = v252[20];
        v255 = v252[24];
        v256 = v252[28];
        v257 = v252[32];
        v258 = v252[36];
        v259 = v276;
        *(v48 + 32) = v277;
        *(v48 + 40) = v259;
        *(v48 + 48) = v275;
        *(v48 + 56) = v58;
        *(v48 + 64) = 0;
        *(v48 + 72) = 0xE000000000000000;
        v260 = v278;
        *v278 = v48;
        (*(v13 + 32))(&v260[v253], v15, v12);
        v260[v254] = 0;
        v260[v255] = 0;
        v260[v256] = 1;
        v260[8] = 1;
        v260[v257] = 0;
        goto LABEL_164;
      }

LABEL_88:
      v19 = v278;
      v20 = 5;
LABEL_7:
      sub_1A39FD204(v20, v19);
      return (*(v13 + 8))(v15, v12);
    case 7:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v61 = *(a4 + 616);
      swift_getKeyPath();
      v279 = v61;
      sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v277 = *(v61 + 24);

      swift_getKeyPath();
      v279 = a4;
      sub_1A3A2F080();

      v62 = *(a4 + 616);
      swift_getKeyPath();
      v279 = v62;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      swift_getKeyPath();
      v279 = a4;
      sub_1A3A2F080();

      v63 = *(a4 + 616);
      swift_getKeyPath();
      goto LABEL_69;
    case 10:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      sub_1A3990BEC(*(a4 + 1072), v278);
      return (*(v13 + 8))(v15, v12);
    case 12:
      v279 = 0xD000000000000010;
      v280 = 0x80000001A3AA7820;
      v92 = v278;
      sub_1A3A31EE0();
      (*(v13 + 8))(v15, v12);
      v92[5] = sub_1A39C387C;
      v92[6] = a4;
      type metadata accessor for ChromeElementIcon();
      swift_storeEnumTagMultiPayload();
      return sub_1A3A2EA60();
    case 14:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 664))
      {
        v42 = 0x746F68706576696CLL;
        if (*(a4 + 664) == 1)
        {
          v43 = 0xE900000000000065;
        }

        else
        {
          v43 = 0xEF6873616C732E65;
        }

        v60 = v43 | 0xA;
      }

      else
      {
        v60 = 0x80000001A3AA75D0;
        v42 = 0xD000000000000019;
      }

      goto LABEL_173;
    case 15:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v44 = *(a4 + 648);
      swift_getKeyPath();
      v279 = v44;
      sub_1A39C18E8(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v45 = *(v44 + 24);

      if (v45)
      {
        if (v45 != 1)
        {
          goto LABEL_180;
        }

        v46 = 0x80000001A3AA7800;
        v47 = 0xD000000000000012;
      }

      else
      {
        v46 = 0xEC0000006F726361;
        v47 = 0x6D2E6172656D6163;
      }

LABEL_121:
      (*(v13 + 8))(v15, v12);
      v137 = v278;
      *v278 = v47;
      goto LABEL_140;
    case 16:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v78 = *(a4 + 656);
      swift_getKeyPath();
      v279 = v78;
      sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v79 = *(v78 + 24);

      if (v79 >= 2)
      {
        if (v79 - 2 >= 2)
        {
          v279 = v79;
          goto LABEL_182;
        }

        v46 = 0xEF6873616C732E65;
      }

      else
      {
        v46 = 0xE900000000000065;
      }

      (*(v13 + 8))(v15, v12);
      v119 = 0x7669737275632E66;
      goto LABEL_114;
    case 17:
      swift_getKeyPath();
      if ((a3 & 1) != 0 || a2 != 11)
      {
        v279 = a4;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        sub_1A392B9B8(a4, *(a4 + 889), v278);
        return (*(v13 + 8))(v15, v12);
      }

      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 889) == 2)
      {
        v77 = "camera.nightmode.slash";
        goto LABEL_113;
      }

      swift_getKeyPath();
      v279 = a4;
      sub_1A3A2F080();

      v181 = sub_1A392B848(a4, *(a4 + 889));
      if (v182)
      {
        goto LABEL_166;
      }

      v183 = v181;
      v184 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
      [v184 setUnitsStyle_];
      [v184 setAllowedUnits_];
      v185 = [v184 stringFromTimeInterval_];
      if (v185)
      {
        v186 = v185;
        v187 = sub_1A3A31850();
        v189 = v188;

        swift_getKeyPath();
        v279 = a4;
        sub_1A3A2F080();

        v190 = *(a4 + 896);
        if (v190)
        {
          v191 = 0xD000000000000010;
        }

        else
        {
          v191 = 0xD000000000000015;
        }

        if (v190)
        {
          v192 = "Chrome.NightMode.Off";
        }

        else
        {
          v192 = "camera.nightmode";
        }

        v193 = v192 | 0x8000000000000000;
        (*(v13 + 8))(v15, v12);
        v194 = v278;
        *v278 = v191;
        v194[1] = v193;
        v194[2] = v187;
        v194[3] = v189;
LABEL_156:
        type metadata accessor for ChromeElementIcon();
        return swift_storeEnumTagMultiPayload();
      }

LABEL_166:
      swift_getKeyPath();
      v279 = a4;
      sub_1A3A2F080();

      v267 = *(a4 + 896);
      if (v267)
      {
        v42 = 0xD000000000000010;
      }

      else
      {
        v42 = 0xD000000000000015;
      }

      if (v267)
      {
        v59 = "Chrome.NightMode.Off";
      }

      else
      {
        v59 = "camera.nightmode";
      }

      goto LABEL_172;
    case 18:
    case 19:
      goto LABEL_71;
    case 21:
      if ((a3 & 1) != 0 || a2 != 11)
      {
        goto LABEL_71;
      }

      v22 = sub_1A39FDA64(21);
      v279 = 0x2E656D6F726843;
      v280 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v22);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v23 = sub_1A3A31810();

      v24 = CAMLocalizedFrameworkString(v23, 0);

      v25 = sub_1A3A31850();
      v27 = v26;

      v28 = sub_1A3907C58(v25, v27);
      v30 = v29;

      v279 = v28;
      v280 = v30;
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](32, 0xE100000000000000);

      v32 = v279;
      v31 = v280;
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v33 = sub_1A38EB870(*(a4 + 976));
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v36 = sub_1A3907C58(v33, v35);
      v38 = v37;

      v279 = v32;
      v280 = v31;
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](v36, v38);

      v39 = v279;
      v40 = v280;
      sub_1A3A30740();
      sub_1A391A414();
      v41 = CEKFontOfSizeWeightStyle();
      goto LABEL_145;
    case 23:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 808))
      {
        if (*(a4 + 808) == 1)
        {
          v46 = 0x80000001A3AA77E0;
          v47 = 0xD000000000000013;
        }

        else
        {
          v46 = 0xED00006C6C69662ELL;
          v47 = 0x322E6E6F73726570;
        }
      }

      else
      {
        v47 = 0;
        v46 = 0xE000000000000000;
      }

      goto LABEL_121;
    case 25:
      swift_getKeyPath();
      if ((a3 & 1) == 0 && a2 == 11)
      {
        v279 = a4;
        v277 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        v93 = *(a4 + 928);
        v94 = objc_opt_self();
        swift_getKeyPath();
        v279 = v93;
        sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v95 = [v94 displayNameForPresetType_];
        v96 = sub_1A3A31850();
        v98 = v97;

        swift_getKeyPath();
        v279 = a4;
        sub_1A3A2F080();

        v99 = *(a4 + 928);
        swift_getKeyPath();
        v279 = v99;
        sub_1A3A2EA60();
        sub_1A3A2F080();

        LODWORD(v95) = *(v99 + 81);

        v100 = v95 == 0;
        if (v95)
        {
          v101 = 0xD000000000000033;
        }

        else
        {
          v101 = 0xD00000000000002DLL;
        }

        if (v100)
        {
          v102 = "square.3.layers.3d.down.left";
        }

        else
        {
          v102 = ".dotted.xaxis.bold.yaxis.bold";
        }

        v103 = v102 | 0x8000000000000000;
        (*(v13 + 8))(v15, v12);
        v104 = v278;
        *v278 = v96;
        v104[1] = v98;
        v104[2] = v101;
        v104[3] = v103;
        goto LABEL_94;
      }

      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v133 = *(a4 + 928);
      swift_getKeyPath();
      v279 = v133;
      sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v134 = *(v133 + 81);

      v135 = v134 == 0;
      if (v134)
      {
        v42 = 0xD000000000000033;
      }

      else
      {
        v42 = 0xD00000000000002DLL;
      }

      if (v135)
      {
        v59 = "square.3.layers.3d.down.left";
      }

      else
      {
        v59 = ".dotted.xaxis.bold.yaxis.bold";
      }

LABEL_172:
      v60 = v59 | 0x8000000000000000;
LABEL_173:
      (*(v13 + 8))(v15, v12);
      v137 = v278;
      *v278 = v42;
      v137[1] = v60;
      goto LABEL_174;
    case 26:
      v105 = 0xD000000000000010;
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 792) > 1u)
      {
        if (*(a4 + 792) != 2)
        {
          v106 = "Unknown CAMFlashMode: ";
          v105 = 0xD000000000000012;
LABEL_139:
          v46 = v106 | 0x8000000000000000;
          (*(v13 + 8))(v15, v12);
          v137 = v278;
          *v278 = v105;
LABEL_140:
          v137[1] = v46;
LABEL_174:
          *(v137 + 16) = 1;
          type metadata accessor for ChromeElementIcon();
          v137[3] = 0;
          v137[4] = 0;
          return swift_storeEnumTagMultiPayload();
        }

        v136 = "5.timer.enclosure";
      }

      else
      {
        if (!*(a4 + 792))
        {
          v106 = "3.timer.enclosure";
          goto LABEL_139;
        }

        v136 = "3.timer.enclosure";
      }

      v106 = v136 - 32;
      v105 = 0xD000000000000011;
      goto LABEL_139;
    case 27:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v89 = *(a4 + 624);
      swift_getKeyPath();
      v279 = v89;
      sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v277 = *(v89 + 20);

      swift_getKeyPath();
      v279 = a4;
      sub_1A3A2F080();

      v90 = *(a4 + 624);
      swift_getKeyPath();
      v279 = v90;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      swift_getKeyPath();
      v279 = a4;
      sub_1A3A2F080();

      v63 = *(a4 + 624);
      swift_getKeyPath();
LABEL_69:
      v279 = v63;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v91 = *(v63 + 19);

      sub_1A39F6CC8(v91, v277, v278);
      return (*(v13 + 8))(v15, v12);
    case 28:
      swift_getKeyPath();
      v80 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 992))
      {
        goto LABEL_71;
      }

      if (a3)
      {
        goto LABEL_123;
      }

      if (a2 == 3)
      {
        v221 = *(a4 + 984);
        v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
        v223 = v222[16];
        v224 = v222[20];
        v273 = v222[24];
        v274 = v224;
        v225 = v222[28];
        v276 = v222[32];
        v277 = v225;
        v275 = v222[36];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8);
        v226 = swift_allocObject();
        *(v226 + 16) = xmmword_1A3A681C0;
        v227 = sub_1A3A31810();
        v228 = CAMLocalizedFrameworkString(v227, 0);

        v229 = sub_1A3A31850();
        v231 = v230;

        v279 = v221;
        sub_1A38EC330();
        v232 = sub_1A3A31E50();
        *(v226 + 32) = v229;
        *(v226 + 40) = v231;
        *(v226 + 48) = v232;
        *(v226 + 56) = v233;
        *(v226 + 64) = 0;
        *(v226 + 72) = 0xE000000000000000;
        v234 = v278;
        *v278 = v226;
        (*(v13 + 32))(&v234[v223], v15, v12);
        goto LABEL_159;
      }

      if (a2 == 11)
      {
        v279 = *(a4 + 984);
        sub_1A38EC330();
        v279 = sub_1A3A31E50();
        v280 = v81;
        sub_1A3A2EA50();
        MEMORY[0x1A58F7770](32, 0xE100000000000000);

        v83 = v279;
        v82 = v280;
        v84 = sub_1A3A31810();
        v85 = CAMLocalizedFrameworkString(v84, 0);

        v86 = sub_1A3A31850();
        v88 = v87;

        v279 = v83;
        v280 = v82;
        sub_1A3A2EA50();
        MEMORY[0x1A58F7770](v86, v88);

        v39 = v279;
        v40 = v280;
        sub_1A3A30740();
        sub_1A391A414();
        v41 = CEKFontOfSizeWeightStyle();
        goto LABEL_145;
      }

LABEL_123:
      v271 = *(a4 + 984);
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
      v139 = v138[20];
      v272 = v138[16];
      v273 = v139;
      v140 = v138[28];
      v276 = v138[24];
      v277 = v140;
      v141 = v138[32];
      v274 = v138[36];
      v275 = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1A3A681C0;
      v143 = sub_1A3A31810();
      v144 = CAMLocalizedFrameworkString(v143, 0);

      v145 = sub_1A3A31850();
      v270 = v80;
      v147 = v146;

      v279 = v271;
      sub_1A38EC330();
      v148 = sub_1A3A31E50();
      *(v142 + 32) = v145;
      *(v142 + 40) = v147;
      *(v142 + 48) = v148;
      *(v142 + 56) = v149;
      *(v142 + 64) = 0;
      *(v142 + 72) = 0xE000000000000000;
      v150 = v278;
      *v278 = v142;
      (*(v13 + 16))(&v150[v272], v15, v12);
      v150[v273] = 1;
      swift_getKeyPath();
      v279 = a4;
      sub_1A3A2F080();

      (*(v13 + 8))(v15, v12);
      v150[v276] = (*(a4 + 800) - 3) < 2;
      v151 = v274;
      v150[v275] = 1;
      v150[v151] = 1;
      goto LABEL_125;
    case 29:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 1008))
      {
        goto LABEL_71;
      }

      v120 = *(a4 + 1000);
      if (a3)
      {
        goto LABEL_124;
      }

      if (a2 == 3)
      {
        v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
        v236 = v235[16];
        v237 = v235[20];
        v273 = v235[24];
        v274 = v237;
        v238 = v235[28];
        v276 = v235[32];
        v277 = v238;
        v275 = v235[36];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8);
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_1A3A681C0;
        v240 = sub_1A3A31810();
        v241 = CAMLocalizedFrameworkString(v240, 0);

        v242 = sub_1A3A31850();
        v244 = v243;

        v279 = v120;
        off_1F16584F0();
        v245 = sub_1A3A31810();

        v246 = CAMLocalizedFrameworkString(v245, 0);

        v247 = sub_1A3A31850();
        v249 = v248;

        *(v239 + 32) = v242;
        *(v239 + 40) = v244;
        *(v239 + 48) = v247;
        *(v239 + 56) = v249;
        *(v239 + 64) = 0;
        *(v239 + 72) = 0xE000000000000000;
        v234 = v278;
        *v278 = v239;
        (*(v13 + 32))(&v234[v236], v15, v12);
LABEL_159:
        v250 = v273;
        v234[v274] = 1;
        v234[v250] = 1;
        v234[8] = 1;
        v251 = v276;
        v234[v277] = 0;
        v234[v251] = 0;
        v234[v275] = 0;
        type metadata accessor for ChromeElementIcon();
      }

      else
      {
        if (a2 == 11)
        {
          v279 = *(a4 + 1000);
          off_1F16584F0();
          v121 = sub_1A3A31810();

          v122 = CAMLocalizedFrameworkString(v121, 0);

          v123 = sub_1A3A31850();
          v125 = v124;

          v279 = v123;
          v280 = v125;
          sub_1A3A2EA50();
          MEMORY[0x1A58F7770](32, 0xE100000000000000);

          v127 = v279;
          v126 = v280;
          v128 = sub_1A3A31810();
          v129 = CAMLocalizedFrameworkString(v128, 0);

          v130 = sub_1A3A31850();
          v132 = v131;

          v279 = v127;
          v280 = v126;
          sub_1A3A2EA50();
          MEMORY[0x1A58F7770](v130, v132);

          v39 = v279;
          v40 = v280;
          sub_1A3A30740();
          sub_1A391A414();
          v41 = CEKFontOfSizeWeightStyle();
          goto LABEL_145;
        }

LABEL_124:
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
        v153 = v152[20];
        v272 = v152[16];
        v273 = v153;
        v154 = v152[28];
        v276 = v152[24];
        v277 = v154;
        v155 = v152[36];
        v274 = v152[32];
        v275 = v155;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8);
        v156 = swift_allocObject();
        *(v156 + 16) = xmmword_1A3A681C0;
        v157 = sub_1A3A31810();
        v158 = CAMLocalizedFrameworkString(v157, 0);

        v159 = sub_1A3A31850();
        v270 = v160;
        v271 = v159;

        v279 = v120;
        off_1F16584F0();
        v161 = sub_1A3A31810();

        v162 = CAMLocalizedFrameworkString(v161, 0);

        v163 = sub_1A3A31850();
        v165 = v164;

        v166 = v270;
        *(v156 + 32) = v271;
        *(v156 + 40) = v166;
        *(v156 + 48) = v163;
        *(v156 + 56) = v165;
        *(v156 + 64) = 0;
        *(v156 + 72) = 0xE000000000000000;
        v150 = v278;
        *v278 = v156;
        (*(v13 + 16))(&v150[v272], v15, v12);
        v150[v273] = 1;
        swift_getKeyPath();
        v279 = a4;
        sub_1A3A2F080();

        (*(v13 + 8))(v15, v12);
        v150[v276] = (*(a4 + 800) - 3) < 2;
        v167 = v275;
        v150[v274] = 1;
        v150[v167] = 0;
LABEL_125:
        v150[8] = 1;
        v150[v277] = 0;
        type metadata accessor for ChromeElementIcon();
      }

      return swift_storeEnumTagMultiPayload();
    case 31:
      if ((a3 & 1) != 0 || a2 != 11)
      {
        swift_getKeyPath();
        v279 = a4;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        sub_1A3A2EA60();
        v65 = sub_1A3914750();
        v67 = v107;
        v68 = sub_1A3A31810();
        v69 = CAMLocalizedFrameworkString(v68, 0);
      }

      else
      {
        swift_getKeyPath();
        v279 = a4;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        v64 = *(a4 + 1067);
        swift_getKeyPath();
        if (v64 != 1)
        {
          v279 = a4;
          sub_1A3A2F080();

          sub_1A3A2EA60();
          v168 = sub_1A3914750();
          v170 = v169;
          v171 = sub_1A3A31810();
          v172 = CAMLocalizedFrameworkString(v171, 0);

          v173 = sub_1A3A31850();
          v175 = v174;

          v279 = v168;
          v280 = v170;
          sub_1A3A2EA50();
          MEMORY[0x1A58F7770](v173, v175);

          v177 = v279;
          v176 = v280;
          v178 = sub_1A3914870();
          v180 = v179;
          v279 = v177;
          v280 = v176;
          sub_1A3A2EA50();
          MEMORY[0x1A58F7770](v178, v180);

          v39 = v279;
          v40 = v280;
          sub_1A3A30740();
          sub_1A391A414();
          v41 = CEKFontOfSizeWeightStyle();
LABEL_145:
          v207 = v41;
          v208 = sub_1A3A307B0();
          (*(v13 + 8))(v15, v12);
          v209 = v278;
          *v278 = v39;
          v209[1] = v40;
          v209[2] = v208;
          *(v209 + 24) = 0;
          type metadata accessor for ChromeElementIcon();
          return swift_storeEnumTagMultiPayload();
        }

        v279 = a4;
        sub_1A3A2F080();

        sub_1A3A2EA60();
        v65 = sub_1A3914750();
        v67 = v66;
        v68 = sub_1A3A31810();
        v69 = CAMLocalizedFrameworkString(v68, 0);
      }

      v108 = v69;

      v109 = sub_1A3A31850();
      v111 = v110;

      v279 = v65;
      v280 = v67;
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](v109, v111);

      v113 = v279;
      v112 = v280;
      v114 = sub_1A3914870();
      v116 = v115;
      v279 = v113;
      v280 = v112;
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](v114, v116);

      v117 = v279;
      v118 = v280;
      (*(v13 + 8))(v15, v12);
      v104 = v278;
      *v278 = v117;
      v104[1] = v118;
      *(v104 + 1) = xmmword_1A3A7F410;
LABEL_94:
      *(v104 + 32) = 0;
      type metadata accessor for ChromeElementIcon();
      return swift_storeEnumTagMultiPayload();
    case 34:
      swift_getKeyPath();
      v279 = a4;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a4 + 609))
      {
        v42 = 0x662E6172656D6163;
      }

      else
      {
        v42 = 0x69662E6F65646976;
      }

      if (*(a4 + 609))
      {
        v60 = 0xEB000000006C6C69;
      }

      else
      {
        v60 = 0xEA00000000006C6CLL;
      }

      goto LABEL_173;
    default:
      if (sub_1A39FCD24(&unk_1F1653CE0, a1))
      {
        sub_1A39C09A4(a4, v15, a2, a3 & 1, v278);
        return (*(v13 + 8))(v15, v12);
      }

      if ((sub_1A39FCD24(&unk_1F1653D10, a1) & 1) == 0)
      {
        goto LABEL_183;
      }

      v77 = "person.fill.viewfinder";
LABEL_113:
      v46 = (v77 - 32) | 0x8000000000000000;
      (*(v13 + 8))(v15, v12);
      v119 = 0xD000000000000016;
LABEL_114:
      v137 = v278;
      *v278 = v119;
      goto LABEL_140;
  }
}

uint64_t sub_1A39B10BC(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 28239;
    }

    else
    {
      v2 = 6710863;
    }

    if (v1 == 1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v2 = 1869903169;
  }

  MEMORY[0x1A58F7770](v2, v3);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v4 = sub_1A3A31810();

  v5 = CAMLocalizedFrameworkString(v4, 0);

  v6 = sub_1A3A31850();
  return v6;
}

uint64_t sub_1A39B11D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v5) = 1;
  switch(a1)
  {
    case 0:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 1120) != 1)
      {
        goto LABEL_106;
      }

      if (a2)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      if (*(a3 + 753))
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 752);
      return v5 & 1;
    case 1:
      return v5 & 1;
    case 2:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v28 = *(a3 + 656);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v29 = *(v28 + 19);

      if (v29 != 1)
      {
        goto LABEL_106;
      }

      if (!a2)
      {
        swift_getKeyPath();
        v74 = a3;
        sub_1A3A2F080();

        v59 = *(a3 + 424);
        v60 = static IslandAndNotchMetrics.width(from:)(v59);
        if (v61)
        {
          goto LABEL_116;
        }

        v62 = *&v60;
        v63 = MobileGestalt_get_current_device();
        if (!v63)
        {
          goto LABEL_118;
        }

        v64 = v63;
        v65 = MobileGestalt_copy_productType_obj();

        if (!v65)
        {
LABEL_116:
          LOBYTE(v5) = 1;
          return v5 & 1;
        }

        v66 = v62;
        v67 = sub_1A3A31850();
        v69 = v68;

        v70 = (v59 - v66) * 0.5;
        v71._countAndFlagsBits = v67;
        v71._object = v69;
        IslandAndNotchMetrics.init(rawValue:)(v71);
        v72 = 0.0;
        if (v74 <= 8u && ((1 << v74) & 0x111) != 0)
        {
          v72 = 5.0;
        }

        LOBYTE(v5) = v70 - v72 <= 72.0;
        return v5 & 1;
      }

      if (a2 != 9)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      v73 = a3;
      sub_1A3A2F080();

      v30 = *(a3 + 424);
      v31 = static IslandAndNotchMetrics.width(from:)(v30);
      if (v32)
      {
        goto LABEL_106;
      }

      v33 = *&v31;
      v34 = MobileGestalt_get_current_device();
      if (v34)
      {
        v35 = v34;
        v36 = MobileGestalt_copy_productType_obj();

        if (!v36)
        {
          goto LABEL_106;
        }

        v37 = v33;
        v38 = sub_1A3A31850();
        v40 = v39;

        v41 = (v30 - v37) * 0.5;
        v42._countAndFlagsBits = v38;
        v42._object = v40;
        IslandAndNotchMetrics.init(rawValue:)(v42);
        v43 = 0.0;
        if (v73 <= 8u && ((1 << v73) & 0x111) != 0)
        {
          v43 = 5.0;
        }

        LOBYTE(v5) = v41 - v43 > 72.0;
        return v5 & 1;
      }

      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      result = sub_1A3A321F0();
      __break(1u);
      return result;
    case 3:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1121);
      return v5 & 1;
    case 4:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 1068))
      {
        goto LABEL_106;
      }

      v24 = *(sub_1A395BE78(a3) + 16);

      LOBYTE(v5) = v24 != 0;
      return v5 & 1;
    case 5:
      if (a2)
      {
        if (a2 == 9)
        {
          swift_getKeyPath();
          sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
          sub_1A3A2F080();

          if ((*(a3 + 1177) & 1) == 0)
          {
            swift_getKeyPath();
            sub_1A3A2F080();

            if ((*(a3 + 1178) & 1) == 0)
            {
LABEL_106:
              LOBYTE(v5) = 0;
              return v5 & 1;
            }
          }
        }
      }

      else
      {
        swift_getKeyPath();
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        sub_1A3A2F080();

        if (*(a3 + 1177))
        {
          goto LABEL_106;
        }

        swift_getKeyPath();
        sub_1A3A2F080();

        if (*(a3 + 1178))
        {
          goto LABEL_106;
        }
      }

      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1122);
      return v5 & 1;
    case 6:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v25 = *(a3 + 944);
      swift_getKeyPath();
      v26 = qword_1ED998460;
      v27 = type metadata accessor for ChromeFilterViewModel;
      goto LABEL_80;
    case 7:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v44 = *(a3 + 616);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v45 = *(v44 + 16);

      if (v45 != 1)
      {
        goto LABEL_106;
      }

      if (a2)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v46 = *(a3 + 616);
      swift_getKeyPath();
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v47 = *(v46 + 18);

      if (v47)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v10 = *(a3 + 616);
      swift_getKeyPath();
      goto LABEL_56;
    case 8:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1124);
      return v5 & 1;
    case 9:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 754) != 1)
      {
        goto LABEL_106;
      }

      if (a2)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      if (*(a3 + 756))
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 755);
      return v5 & 1;
    case 10:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1080);
      return v5 & 1;
    case 11:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 665);
      return v5 & 1;
    case 12:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 1155))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1068) ^ 1;
      return v5 & 1;
    case 13:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v25 = *(a3 + 632);
      swift_getKeyPath();
      v26 = &qword_1ED9976A0;
      v27 = type metadata accessor for ChromeLensPositionViewModel;
      goto LABEL_80;
    case 14:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (!*(*(a3 + 1128) + 16))
      {
        goto LABEL_106;
      }

      if (a2)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1136);
      return v5 & 1;
    case 15:
      if (a2 != 8)
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v25 = *(a3 + 648);
      swift_getKeyPath();
      v26 = &qword_1ED997770;
      v27 = type metadata accessor for ChromeMacroViewModel;
LABEL_80:
      sub_1A39C18E8(v26, v27);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v5) = *(v25 + 16);

      return v5 & 1;
    case 16:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v22 = *(a3 + 656);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v23 = *(v22 + 18);

      if (a2 == 8)
      {
        LOBYTE(v5) = v23;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      return v5 & 1;
    case 17:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 888) != 1)
      {
        goto LABEL_106;
      }

      if ((a2 | 4) != 4)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v49 = *(a3 + 904) + 1;
      v20 = v49 >= 4;
      v50 = 0xCu >> (v49 & 0xF);
      if (v20)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        LOBYTE(v5) = v50;
      }

      return v5 & 1;
    case 18:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 592))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v52 = *(a3 + 960);
      goto LABEL_91;
    case 19:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 592))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v52 = *(a3 + 1056);
LABEL_91:
      LOBYTE(v5) = *(v52 + 16) > 1uLL;
      return v5 & 1;
    case 20:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1123);
      return v5 & 1;
    case 21:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 841);
      return v5 & 1;
    case 22:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      goto LABEL_88;
    case 23:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 1066))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 808) != 0;
      return v5 & 1;
    case 24:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v25 = *(a3 + 936);
      swift_getKeyPath();
      v26 = &qword_1ED997A88;
      v27 = type metadata accessor for ChromeSemanticStyleViewModel;
      goto LABEL_80;
    case 25:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v25 = *(a3 + 928);
      swift_getKeyPath();
      v26 = &qword_1ED996610;
      v27 = type metadata accessor for ChromeSmartStyleViewModel;
      goto LABEL_80;
    case 26:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 1068))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1137);
      return v5 & 1;
    case 27:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v6 = *(a3 + 624);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v7 = *(v6 + 16);

      if (v7 != 1)
      {
        goto LABEL_106;
      }

      if (a2)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v8 = *(a3 + 624);
      swift_getKeyPath();
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v9 = *(v8 + 18);

      if (v9)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v10 = *(a3 + 624);
      swift_getKeyPath();
LABEL_56:
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v48 = *(v10 + 17);

      if (v48)
      {
        goto LABEL_116;
      }

      swift_getKeyPath();
LABEL_88:
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1068);
      return v5 & 1;
    case 28:
    case 29:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 1008))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      if (*(a3 + 992))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      if (!*(*(a3 + 872) + 16))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v5) = *(*(a3 + 864) + 16) != 0;
      return v5 & 1;
    case 30:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1155);
      return v5 & 1;
    case 31:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a3 + 592) != 1)
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      if (*(a3 + 608))
      {
        goto LABEL_106;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v51 = *(a3 + 976);
      if (v51 >= 5)
      {
        goto LABEL_119;
      }

      v5 = 0x1Cu >> v51;
      return v5 & 1;
    case 32:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1173);
      return v5 & 1;
    case 33:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v5) = *(a3 + 1174);
      return v5 & 1;
    case 34:
      v11 = qword_1F1654280;
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v12 = *(a3 + 600);
      v13 = *(v12 + 16);
      v14 = (v12 + 32);
      while (v13)
      {
        v15 = *v14++;
        --v13;
        if (v15 == v11)
        {
          v16 = qword_1F1654288;
          swift_getKeyPath();
          sub_1A3A2F080();

          v17 = *(a3 + 600);
          v18 = *(v17 + 16);
          v19 = (v17 + 32);
          do
          {
            v20 = v18-- != 0;
            LOBYTE(v5) = v20;
            if (!v20)
            {
              break;
            }

            v21 = *v19++;
          }

          while (v21 != v16);
          return v5 & 1;
        }
      }

      goto LABEL_106;
    default:
      v53 = *(a1 + 16);
      v54 = (a1 + 32);
      do
      {
        v55 = v53-- != 0;
        LOBYTE(v5) = v55;
        if (!v55)
        {
          break;
        }

        v56 = *v54++;
        sub_1A38A8F64(v56);
        v57 = sub_1A39B11D4(v56, a2, a3);
        sub_1A3890F2C(v56);
      }

      while ((v57 & 1) == 0);
      return v5 & 1;
  }
}

uint64_t sub_1A39B2FB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 592);
  return result;
}

uint64_t sub_1A39B3080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 416);
  return result;
}

uint64_t sub_1A39B3150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 600);
  return sub_1A3A2EA50();
}

uint64_t sub_1A39B3228@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 608);
  return result;
}

uint64_t sub_1A39B32F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 609);
  return result;
}

uint64_t sub_1A39B33C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 616);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39B34A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 624);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39B3578@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 648);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39B3650@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 656);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39B3728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 664);
  return result;
}

uint64_t sub_1A39B37F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 665);
  return result;
}

uint64_t sub_1A39B38C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 680);
  return result;
}

uint64_t sub_1A39B3998@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 752);
  return result;
}

uint64_t sub_1A39B3A68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 753);
  return result;
}

uint64_t sub_1A39B3B38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 754);
  return result;
}

uint64_t sub_1A39B3C08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 755);
  return result;
}

uint64_t sub_1A39B3CD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 756);
  return result;
}

uint64_t sub_1A39B3DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 792);
  return result;
}

uint64_t sub_1A39B3E78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 793);
  return result;
}

uint64_t sub_1A39B3F48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 808);
  return result;
}

void *sub_1A39B4018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 816);
  v5 = *(v3 + 824);
  v6 = *(v3 + 832);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(v3 + 840);
  return sub_1A38DCB50(v4);
}

uint64_t sub_1A39B40D8()
{
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();
}

uint64_t sub_1A39B41C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 841);
  return result;
}

uint64_t sub_1A39B4290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 864);
  return sub_1A3A2EA50();
}

uint64_t sub_1A39B4368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 872);
  return sub_1A3A2EA50();
}

uint64_t sub_1A39B4440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 880);
  return sub_1A3A2EA50();
}

uint64_t sub_1A39B4518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 888);
  return result;
}

uint64_t sub_1A39B45E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 889);
  return result;
}

uint64_t sub_1A39B46B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 904);
  return result;
}

uint64_t sub_1A39B4788@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 928);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39B4860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 960);
  return sub_1A3A2EA50();
}

uint64_t sub_1A39B4938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 968);
  return result;
}

uint64_t sub_1A39B4A08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 969);
  return result;
}

uint64_t sub_1A39B4AD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 976);
  return result;
}

uint64_t sub_1A39B4BA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v5 = *(v3 + 992);
  *a2 = *(v3 + 984);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A39B4C8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v5 = *(v3 + 1008);
  *a2 = *(v3 + 1000);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A39B4D70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1016);
  return result;
}

uint64_t sub_1A39B4E40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v5 = *(v3 + 1032);
  *a2 = *(v3 + 1024);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A39B4F24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v5 = *(v3 + 1048);
  *a2 = *(v3 + 1040);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A39B5008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1056);
  return sub_1A3A2EA50();
}

uint64_t sub_1A39B50E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1064);
  return result;
}

uint64_t sub_1A39B51B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1065);
  return result;
}

uint64_t sub_1A39B5280@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1066);
  return result;
}

uint64_t sub_1A39B5350@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1067);
  return result;
}

uint64_t sub_1A39B5420@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1068);
  return result;
}

uint64_t sub_1A39B54F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1072);
  return result;
}

uint64_t sub_1A39B55C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1080);
  return result;
}

uint64_t sub_1A39B5690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1120);
  return result;
}

uint64_t sub_1A39B5760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1121);
  return result;
}

uint64_t sub_1A39B5830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1122);
  return result;
}

uint64_t sub_1A39B5900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1123);
  return result;
}

uint64_t sub_1A39B59D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1124);
  return result;
}

uint64_t sub_1A39B5AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1128);
  return sub_1A3A2EA50();
}

uint64_t sub_1A39B5B78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1136);
  return result;
}

uint64_t sub_1A39B5C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1137);
  return result;
}

uint64_t sub_1A39B5D18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1144);
  return result;
}

uint64_t sub_1A39B5DE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1155);
  return result;
}

uint64_t sub_1A39B5EB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1160);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39B5F90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1169);
  return result;
}

uint64_t sub_1A39B6060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1170);
  return result;
}

uint64_t sub_1A39B6130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1173);
  return result;
}

uint64_t sub_1A39B6200@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1174);
  return result;
}

uint64_t sub_1A39B62D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1177);
  return result;
}

uint64_t sub_1A39B63A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1178);
  return result;
}

uint64_t sub_1A39B6470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A39B6540@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1A39B6610@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1A39B66E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1A39B67B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_1A39B6880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1A39B6950(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 3;
  }

  v3 = 0;
  v4 = a2 + 32;
  while (*(v4 + v3) != result)
  {
    if (v2 == ++v3)
    {
      return 3;
    }
  }

  v5 = __OFADD__(v3, 1);
  v6 = v3 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 % v2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      return *(v4 + v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39B69A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  while (*(v4 + 8 * v3) != result)
  {
    if (v2 == ++v3)
    {
      return 0;
    }
  }

  v5 = __OFADD__(v3, 1);
  v6 = v3 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 % v2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      return *(v4 + 8 * v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39B6A10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 4;
  }

  v3 = 0;
  v4 = a2 + 32;
  while (*(v4 + v3) != result)
  {
    if (v2 == ++v3)
    {
      return 4;
    }
  }

  v5 = __OFADD__(v3, 1);
  v6 = v3 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 % v2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      return *(v4 + v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39B6A68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A39B6B38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1A39B6C08(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    v1 = sub_1A3A31810();

    v2 = CAMLocalizedFrameworkString(v1, 0);

    v3 = sub_1A3A31850();
    return v3;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

uint64_t sub_1A39B6D14(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4)
    {
LABEL_9:
      v2 = sub_1A3A31810();

      v3 = CAMLocalizedFrameworkString(v2, 0);

      v4 = sub_1A3A31850();
      return v4;
    }
  }

  else
  {
    if (a1 < 2)
    {
      return 0;
    }

    if (a1 == 2)
    {
      goto LABEL_9;
    }
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

uint64_t sub_1A39B6E0C()
{
  sub_1A38EC330();
  v0 = sub_1A3A31E50();
  MEMORY[0x1A58F7770](v0);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39B6F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED997A88, type metadata accessor for ChromeSemanticStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A39B6FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A39B70B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1A39B7188@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1A39B7258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_1A39B7328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1A39B73F8(uint64_t a1, uint64_t a2)
{
  LOBYTE(v3) = 0;
  switch(a1)
  {
    case 0:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v3) = *(a2 + 752);
      return v3 & 1;
    case 1:
    case 8:
    case 10:
    case 11:
    case 12:
    case 18:
    case 19:
    case 22:
    case 28:
    case 29:
    case 30:
    case 34:
      return v3 & 1;
    case 2:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v14 = *(a2 + 712);
      swift_getKeyPath();
      sub_1A3A2F080();

      if (vabdd_f64(v14, *(a2 + 704)) <= 0.0001)
      {
        return 0;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v15 = *(a2 + 704) == 0.0;
      goto LABEL_43;
    case 3:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v19 = *(a2 + 793);
      goto LABEL_35;
    case 4:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a2 + 48) != 1)
      {
        return 0;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v5 = *(a2 + 1168);
      goto LABEL_19;
    case 5:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a2 + 672) != 0.0)
      {
        goto LABEL_48;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      LOBYTE(v3) = *(a2 + 680);
      return v3 & 1;
    case 6:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v11 = *(a2 + 944);
      swift_getKeyPath();
      sub_1A39C18E8(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
      goto LABEL_58;
    case 7:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v9 = *(a2 + 616);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v10 = *(v9 + 24);

      if (v10 == 2)
      {
        return 0;
      }

      if (v10 == 1)
      {
        goto LABEL_48;
      }

      if (v10)
      {
        goto LABEL_66;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v11 = *(a2 + 616);
      swift_getKeyPath();
      sub_1A3A2EA60();
      sub_1A3A2F080();
      goto LABEL_59;
    case 9:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v3) = *(a2 + 755);
      return v3 & 1;
    case 13:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v22 = *(a2 + 632);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v3) = *(v22 + 33);
      goto LABEL_60;
    case 14:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v3) = *(a2 + 664) == 1;
      return v3 & 1;
    case 15:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v6 = *(a2 + 648);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v7 = *(v6 + 24);

      if (v7 == 1)
      {
        return 0;
      }

      if (v7)
      {
        goto LABEL_65;
      }

      goto LABEL_48;
    case 16:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v8 = *(a2 + 656);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v3) = *(v8 + 17);
      goto LABEL_60;
    case 17:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v17 = *(a2 + 896);
      if (v17 >= 3)
      {
        sub_1A3A31F20();
        MEMORY[0x1A58F7770](0xD000000000000015, 0x80000001A3AA76D0);
        swift_getKeyPath();
        sub_1A3A2F080();

        type metadata accessor for CAMNightMode(0);
        sub_1A3A32060();
        goto LABEL_67;
      }

      v18 = 6;
LABEL_39:
      v3 = v18 >> v17;
      return v3 & 1;
    case 20:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v16 = sub_1A39FBF9C(*(a2 + 744));
      swift_getKeyPath();
      sub_1A3A2F080();

      v15 = v16 == sub_1A39FBF9C(*(a2 + 736));
      goto LABEL_43;
    case 21:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a2 + 592) != 1)
      {
        return 0;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v4 = *(a2 + 976);
      if (v4 - 2 < 3)
      {
        swift_getKeyPath();
        sub_1A3A2F080();

        v5 = *(a2 + 608);
LABEL_19:
        LOBYTE(v3) = v5 ^ 1;
        return v3 & 1;
      }

      if (v4 < 2)
      {
        return 0;
      }

LABEL_65:
      sub_1A3A321F0();
      __break(1u);
LABEL_66:
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD000000000000016, 0x80000001A3AA76F0);
      swift_getKeyPath();
      sub_1A3A2F080();

      swift_getKeyPath();
      sub_1A3A2EA60();
      sub_1A3A2F080();

      sub_1A3A32060();
LABEL_67:
      result = sub_1A3A32070();
      __break(1u);
      return result;
    case 23:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      LOBYTE(v3) = *(a2 + 808) > 1u;
      return v3 & 1;
    case 24:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v23 = *(a2 + 936);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997A88, type metadata accessor for ChromeSemanticStyleViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v24 = *(v23 + 24);

      v15 = v24 == 0;
      goto LABEL_43;
    case 25:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v25 = *(a2 + 928);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v26 = *(v25 + 82);

      if (v26 != 1)
      {
        goto LABEL_48;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v27 = *(a2 + 928);
      swift_getKeyPath();
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v3) = *(v27 + 80);
      goto LABEL_60;
    case 26:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v19 = *(a2 + 792);
LABEL_35:
      v15 = v19 == 0;
LABEL_43:
      LOBYTE(v3) = !v15;
      return v3 & 1;
    case 27:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v20 = *(a2 + 624);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v21 = *(v20 + 20);

      if (!v21)
      {
        swift_getKeyPath();
        sub_1A3A2F080();

        v11 = *(a2 + 624);
        swift_getKeyPath();
LABEL_58:
        sub_1A3A2EA60();
        sub_1A3A2F080();
LABEL_59:

        LOBYTE(v3) = *(v11 + 18);
LABEL_60:

        return v3 & 1;
      }

      if (v21 == 1)
      {
LABEL_48:
        LOBYTE(v3) = 1;
        return v3 & 1;
      }

      return 0;
    case 31:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a2 + 592) != 1)
      {
        return 0;
      }

      swift_getKeyPath();
      sub_1A3A2F080();

      v17 = *(a2 + 976);
      if (v17 >= 5)
      {
        goto LABEL_65;
      }

      v18 = 28;
      goto LABEL_39;
    case 32:
      v12 = sub_1A38FBF14();
      return v12 & 1;
    case 33:
      v12 = sub_1A38FC0C8();
      return v12 & 1;
    default:
      v28 = *(a1 + 16);
      v29 = (a1 + 32);
      do
      {
        v30 = v28-- != 0;
        LOBYTE(v3) = v30;
        if (!v30)
        {
          break;
        }

        v31 = *v29++;
        sub_1A38A8F64(v31);
        v32 = sub_1A39B73F8(v31, a2);
        sub_1A3890F2C(v31);
      }

      while ((v32 & 1) == 0);
      return v3 & 1;
  }
}

uint64_t sub_1A39B8830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A39B8900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1A39B89D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1A39B8AA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_1A39B8B70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_1A39B8C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A39B8D10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39C18E8(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1A39B8DE0()
{
  sub_1A398DE40(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A39B8E30@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ChromeElementIcon();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A39FDA64(a1);
  v44 = 0x2E656D6F726843;
  v45 = 0xE700000000000000;
  MEMORY[0x1A58F7770](v11);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  v12 = sub_1A3A31810();

  v13 = CAMLocalizedFrameworkString(v12, 0);

  v14 = sub_1A3A31850();
  v16 = v15;

  v17 = sub_1A39FCA4C(a1);
  v39 = v18;
  v38 = sub_1A39B9190(a1, a3);
  v20 = v19;
  v41 = v16;
  v42 = v14;
  v40 = v17;
  if (a1 == 15)
  {
    v37 = 0xE90000000000006FLL;
    v36 = 0x7263614D6F747541;
  }

  else if (a1 == 16)
  {
    v36 = 0xD000000000000015;
    v37 = 0x80000001A3AA1CD0;
  }

  else
  {
    v44 = sub_1A39FDA64(a1);
    v45 = v21;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);

    v36 = v44;
    v37 = v45;
  }

  v22 = sub_1A39FD894(a1);
  v43 = v10;
  sub_1A39AE314(a1, 0, 1, a3, v10);
  v23 = sub_1A39B73F8(a1, a3);
  v24 = swift_allocObject();
  *(v24 + 2) = a2;
  *(v24 + 3) = a1;
  *(v24 + 4) = a3;
  sub_1A38A8F64(a1);
  sub_1A3A2EA60();
  v25 = 0;
  v26 = 0;
  if (sub_1A39BA730(a1))
  {
    v26 = swift_allocObject();
    *(v26 + 2) = a2;
    *(v26 + 3) = a1;
    *(v26 + 4) = a3;
    sub_1A38A8F64(a1);
    sub_1A3A2EA60();
    v25 = sub_1A39C14E0;
  }

  v27 = v41;
  *a4 = v42;
  a4[1] = v27;
  v28 = v39;
  a4[2] = v40;
  a4[3] = v28;
  v29 = v38;
  if (!v20)
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  if (v20)
  {
    v30 = v20;
  }

  a4[4] = v29;
  a4[5] = v30;
  v31 = v37;
  a4[6] = v36;
  a4[7] = v31;
  a4[8] = v22;
  v32 = type metadata accessor for ChromeElementState(0);
  result = sub_1A39C1510(v43, a4 + v32[9], type metadata accessor for ChromeElementIcon);
  *(a4 + v32[10]) = v23 & 1;
  v34 = (a4 + v32[11]);
  *v34 = sub_1A39C1484;
  v34[1] = v24;
  v35 = (a4 + v32[12]);
  *v35 = v25;
  v35[1] = v26;
  return result;
}

id sub_1A39B9190(uint64_t a1, uint64_t a2)
{
  result = 0;
  switch(a1)
  {
    case 0:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      return sub_1A39A0BB8(*(a2 + 752));
    case 1:
    case 4:
    case 12:
    case 21:
    case 22:
    case 30:
    case 31:
      return result;
    case 2:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      return sub_1A3A31B00();
    case 3:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

      v20 = sub_1A3A31810();

      v21 = CAMLocalizedFrameworkString(v20, 0);
      goto LABEL_31;
    case 5:
      if (qword_1EB0FC150 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_57;
    case 6:
    case 24:
    case 25:
      v6 = sub_1A39B73F8(a1, a2);
      return sub_1A39A0BB8(v6 & 1);
    case 7:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      off_1F165EA38[0]();
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

      v20 = sub_1A3A31810();

      v21 = CAMLocalizedFrameworkString(v20, 0);
      goto LABEL_31;
    case 8:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      sub_1A39C0F24(*(a2 + 1144));
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

      v20 = sub_1A3A31810();

      v21 = CAMLocalizedFrameworkString(v20, 0);
      goto LABEL_31;
    case 9:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      return sub_1A39A0BB8(*(a2 + 755));
    case 10:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      sub_1A3990AC8(*(a2 + 1072));
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

      v20 = sub_1A3A31810();

      v21 = CAMLocalizedFrameworkString(v20, 0);
      goto LABEL_31;
    case 11:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a2 + 665))
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (*(a2 + 665))
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x1A58F7770](v31, v32);

      return 0;
    case 13:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      return sub_1A3A31B00();
    case 14:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      return sub_1A39B10BC(*(a2 + 664));
    case 15:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      off_1F16591F8();
      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

      v20 = sub_1A3A31810();

      v21 = CAMLocalizedFrameworkString(v20, 0);
      goto LABEL_31;
    case 16:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v33 = *(a2 + 656);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v34 = *(v33 + 17);

      return sub_1A39A0BB8(v34);
    case 17:
    case 18:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v7 = sub_1A3A31810();

      v8 = CAMLocalizedFrameworkString(v7, 0);
      goto LABEL_17;
    case 19:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      sub_1A38EC330();
      return sub_1A3A31E50();
    case 20:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      sub_1A39FBF9C(*(a2 + 744));
      return sub_1A3A321A0();
    case 23:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      return sub_1A39A0BB8(*(a2 + 808) == 2);
    case 26:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      return sub_1A39A02A0(*(a2 + 792));
    case 27:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v35 = *(a2 + 624);
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v36 = *(v35 + 20);

      return sub_1A39B10BC(v36);
    case 28:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a2 + 992))
      {
        return 0;
      }

      return sub_1A38EBA4C();
    case 29:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      if (*(a2 + 1008))
      {
        return 0;
      }

      off_1F16584F0();
      v20 = sub_1A3A31810();

      v21 = CAMLocalizedFrameworkString(v20, 0);
LABEL_31:
      v19 = v21;

      goto LABEL_32;
    case 32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1A3A70140;
      v24 = sub_1A3A31810();
      v25 = CAMLocalizedFrameworkString(v24, 0);

      v26 = sub_1A3A31850();
      v28 = v27;

      *(v9 + 32) = v26;
      *(v9 + 40) = v28;
      v15 = sub_1A38FBF14();
      goto LABEL_25;
    case 33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1A3A70140;
      v10 = sub_1A3A31810();
      v11 = CAMLocalizedFrameworkString(v10, 0);

      v12 = sub_1A3A31850();
      v14 = v13;

      *(v9 + 32) = v12;
      *(v9 + 40) = v14;
      v15 = sub_1A38FC0C8();
LABEL_25:
      *(v9 + 48) = sub_1A39A0BB8(v15 & 1);
      *(v9 + 56) = v29;
      goto LABEL_26;
    case 34:
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v7 = sub_1A3A31810();
      v8 = CAMLocalizedFrameworkString(v7, 0);
LABEL_17:
      v22 = v8;

      v23 = sub_1A3A31850();
      return v23;
    default:
      v37 = 0;
      v38 = *(a1 + 16);
      v39 = a1 + 32;
      v40 = MEMORY[0x1E69E7CC0];
      break;
  }

  while (v38 != v37)
  {
    if (v37 >= v38)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
LABEL_9:
      v16 = qword_1EB101AD8;
      swift_getKeyPath();
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v17 = v16;
      sub_1A3A2F080();

      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v19 = [v17 stringFromNumber_];

      if (!v19)
      {
        return 0;
      }

LABEL_32:
      v30 = sub_1A3A31850();

      return v30;
    }

    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_56;
    }

    v42 = *(v39 + 8 * v37);
    sub_1A38A8F64(v42);
    v43 = sub_1A39B9190(v42, a2);
    v45 = v44;
    sub_1A3890F2C(v42);
    ++v37;
    if (v45)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1A3956444(0, *(v40 + 2) + 1, 1, v40);
      }

      v47 = *(v40 + 2);
      v46 = *(v40 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v50 = sub_1A3956444((v46 > 1), v47 + 1, 1, v40);
        v48 = v47 + 1;
        v40 = v50;
      }

      *(v40 + 2) = v48;
      v49 = &v40[16 * v47];
      *(v49 + 4) = v43;
      *(v49 + 5) = v45;
      v37 = v41;
    }
  }

LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2E0);
  sub_1A39C3884();
  v23 = sub_1A3A31770();

  return v23;
}

uint64_t sub_1A39BA730(unint64_t a1)
{
  if (a1 > 0x22)
  {
    v4 = *(a1 + 16);
    v5 = (a1 + 32);
    do
    {
      v6 = v4-- != 0;
      v1 = v6;
      if (!v6)
      {
        break;
      }

      v7 = *v5++;
      sub_1A38A8F64(v7);
      v8 = sub_1A39BA730(v7);
      sub_1A3890F2C(v7);
    }

    while ((v8 & 1) == 0);
    return v1;
  }

  if (((1 << a1) & 0x4C351B976) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x33C2E4689) != 0)
  {
    return 1;
  }

  result = [objc_opt_self() capabilities];
  if (result)
  {
    v3 = result;
    v1 = [result isInternalInstall];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39BA82C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ChromeMenu();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v99 - v13;
  if (a1 < 0x1C || a1 - 29 < 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF310);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A3A681C0;
    v17 = (v16 + v15);
    v18 = a1;
    v19 = a3;
LABEL_3:
    sub_1A39BB550(v18, v19, v17);
    return v16;
  }

  v105 = v8;
  v103 = v3;
  if (a1 != 28)
  {
    v30 = *(a1 + 16);
    if (!v30)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v31 = (a1 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      v33 = *v31++;
      v32 = v33;
      sub_1A38A8F64(v33);
      if (sub_1A39B11D4(v33, a2, a3))
      {
        sub_1A39BB550(v32, a3, v10);
        sub_1A3890F2C(v32);
        sub_1A39C1510(v10, v14, type metadata accessor for ChromeMenu);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A3956678(0, *(v16 + 16) + 1, 1, v16);
        }

        v35 = *(v16 + 16);
        v34 = *(v16 + 24);
        if (v35 >= v34 >> 1)
        {
          v16 = sub_1A3956678(v34 > 1, v35 + 1, 1, v16);
        }

        *(v16 + 16) = v35 + 1;
        sub_1A39C1510(v14, v16 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v35, type metadata accessor for ChromeMenu);
      }

      else
      {
        sub_1A3890F2C(v32);
      }

      --v30;
    }

    while (v30);
    return v16;
  }

  v99 = v12;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
  v113 = a3;
  v106 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v107 = v21;
  sub_1A3A2F080();

  v22 = *(a3 + 864);
  v23 = *(v22 + 16);
  if (v23)
  {
    sub_1A3A2EA50();
    v24 = MEMORY[0x1E69E7CC0];
    v25 = 32;
    do
    {
      v28 = *(v22 + v25);
      if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v28) <= 0xA3D70A3D70A3D70)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A3956B80(0, *(v24 + 16) + 1, 1);
          v24 = v113;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1A3956B80((v26 > 1), v27 + 1, 1);
          v24 = v113;
        }

        *(v24 + 16) = v27 + 1;
        *(v24 + 8 * v27 + 32) = v28;
      }

      v25 += 8;
      --v23;
    }

    while (v23);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v104 = *(v24 + 16);
  if (!v104)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF310);
    v62 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A3A681C0;
    v17 = (v16 + v62);
    v18 = 28;
    v19 = a3;
    goto LABEL_3;
  }

  result = sub_1A3A2EA60();
  v36 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  v102 = v24;
  do
  {
    if (v36 >= *(v24 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      return result;
    }

    v37 = *(v24 + 8 * v36 + 32);
    v110 = swift_allocObject();
    *(v110 + 16) = v37;
    v111 = swift_allocObject();
    *(v111 + 16) = v37;
    v38 = swift_allocObject();
    v38[2] = sub_1A39C392C;
    v38[3] = a3;
    v38[4] = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    v109 = swift_allocObject();
    *(v109 + 16) = v37;
    swift_getKeyPath();
    v113 = a3;
    swift_retain_n();
    sub_1A3A2F080();

    v40 = *(a3 + 984);
    LODWORD(v108) = *(a3 + 992);

    v41 = v40 == v37;
    swift_getKeyPath();
    v113 = a3;
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v42 = *(a3 + 1024);
    v43 = *(a3 + 1032);

    v44 = v42 == v37;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3956550(0, *(v112 + 2) + 1, 1, v112);
      v112 = result;
    }

    v46 = *(v112 + 2);
    v45 = *(v112 + 3);
    if (v46 >= v45 >> 1)
    {
      result = sub_1A3956550((v45 > 1), v46 + 1, 1, v112);
      v112 = result;
    }

    ++v36;
    v47 = v41 & ~v108;
    v48 = v112;
    *(v112 + 2) = v46 + 1;
    v49 = &v48[88 * v46];
    v50 = v110;
    *(v49 + 4) = sub_1A39C18DC;
    *(v49 + 5) = v50;
    *(v49 + 6) = sub_1A39047E8;
    *(v49 + 7) = v39;
    v51 = v111;
    *(v49 + 8) = sub_1A39C3918;
    *(v49 + 9) = v51;
    v49[80] = v47;
    v49[81] = v44 & ~v43;
    v52 = WORD2(v113);
    *(v49 + 82) = v113;
    *(v49 + 43) = v52;
    *(v49 + 11) = sub_1A39C3910;
    *(v49 + 12) = v38;
    v53 = v109;
    *(v49 + 13) = sub_1A39C18E0;
    *(v49 + 14) = v53;
    v24 = v102;
  }

  while (v104 != v36);

  swift_getKeyPath();
  v113 = a3;
  sub_1A3A2F080();

  v54 = *(a3 + 864);
  v55 = *(v54 + 16);
  if (v55)
  {
    sub_1A3A2EA50();
    v56 = MEMORY[0x1E69E7CC0];
    v57 = 32;
    do
    {
      v60 = *(v54 + v57);
      if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v60) >= 0xA3D70A3D70A3D71)
      {
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v113 = v56;
        if ((v61 & 1) == 0)
        {
          sub_1A3956B80(0, *(v56 + 16) + 1, 1);
          v56 = v113;
        }

        v59 = *(v56 + 16);
        v58 = *(v56 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1A3956B80((v58 > 1), v59 + 1, 1);
          v56 = v113;
        }

        *(v56 + 16) = v59 + 1;
        *(v56 + 8 * v59 + 32) = v60;
      }

      v57 += 8;
      --v55;
    }

    while (v55);
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  v63 = *(v56 + 16);
  result = sub_1A3A2EA60();
  v64 = v105;
  v102 = v63;
  if (v63)
  {
    v65 = 0;
    v66 = MEMORY[0x1E69E7CC0];
    v100 = v56 + 32;
    v101 = v56;
    while (v65 < *(v56 + 16))
    {
      v67 = *(v100 + 8 * v65);
      v110 = swift_allocObject();
      *(v110 + 16) = v67;
      v111 = swift_allocObject();
      *(v111 + 16) = v67;
      v68 = swift_allocObject();
      v68[2] = sub_1A39C392C;
      v68[3] = a3;
      v68[4] = v67;
      v108 = swift_allocObject();
      *(v108 + 16) = v67;
      v109 = swift_allocObject();
      *(v109 + 16) = v67;
      swift_getKeyPath();
      v113 = a3;
      swift_retain_n();
      sub_1A3A2F080();

      v69 = *(a3 + 984);
      LODWORD(v104) = *(a3 + 992);

      v70 = v69 == v67;
      swift_getKeyPath();
      v113 = a3;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v71 = *(a3 + 1024);
      v72 = *(a3 + 1032);

      v73 = v71 == v67;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A3956550(0, *(v66 + 16) + 1, 1, v66);
        v66 = result;
      }

      v75 = *(v66 + 16);
      v74 = *(v66 + 24);
      if (v75 >= v74 >> 1)
      {
        result = sub_1A3956550((v74 > 1), v75 + 1, 1, v66);
        v66 = result;
      }

      ++v65;
      v76 = v70 & ~v104;
      *(v66 + 16) = v75 + 1;
      v77 = v66 + 88 * v75;
      v78 = v110;
      *(v77 + 32) = sub_1A39C390C;
      *(v77 + 40) = v78;
      v79 = v108;
      *(v77 + 48) = sub_1A39047E8;
      *(v77 + 56) = v79;
      v80 = v111;
      *(v77 + 64) = sub_1A39C3918;
      *(v77 + 72) = v80;
      *(v77 + 80) = v76;
      *(v77 + 81) = v73 & ~v72;
      v81 = WORD2(v113);
      *(v77 + 82) = v113;
      *(v77 + 86) = v81;
      *(v77 + 88) = sub_1A39C3910;
      *(v77 + 96) = v68;
      v82 = v109;
      *(v77 + 104) = sub_1A39C3924;
      *(v77 + 112) = v82;
      v56 = v101;
      v64 = v105;
      if (v102 == v65)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_61;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v111 = v66;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF310);
  v83 = *(v64 + 72);
  v84 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A3A70140;
  v85 = (v16 + v84);
  sub_1A38A8F64(0x1CuLL);
  v86 = sub_1A39FDA64(28);
  v113 = 0x2E656D6F726843;
  v114 = 0xE700000000000000;
  MEMORY[0x1A58F7770](v86);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  v87 = sub_1A3A31810();

  v88 = CAMLocalizedFrameworkString(v87, 0);

  v89 = sub_1A3A31850();
  v91 = v90;

  v92 = v99;
  sub_1A39AE314(28, 0, 1, a3, (v85 + *(v99 + 24)));
  *v85 = 28;
  v85[1] = v89;
  v85[2] = v91;
  *(v85 + *(v92 + 28)) = v111;
  v93 = (v85 + v83);
  sub_1A38A8F64(0x1CuLL);
  v94 = sub_1A3A31810();
  v95 = CAMLocalizedFrameworkString(v94, 0);

  v96 = sub_1A3A31850();
  v98 = v97;

  sub_1A39AE314(28, 0, 1, a3, (v85 + v83 + *(v92 + 24)));
  *v93 = 28;
  v93[1] = v96;
  v93[2] = v98;
  *(v93 + *(v92 + 28)) = v112;
  return v16;
}