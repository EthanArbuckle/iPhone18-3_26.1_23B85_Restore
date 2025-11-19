uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254549354();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.startTime.setter(uint64_t a1)
{
  v3 = sub_254549354();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent()
{
  result = qword_27F5FAD88;
  if (!qword_27F5FAD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.duration.setter(uint64_t a1)
{
  result = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.initialCameraState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent() + 24);
  v4 = sub_254549C44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.initialCameraState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent() + 24);
  v4 = sub_254549C44();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.didStartStream.setter(char a1)
{
  result = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.timeToStartStream.setter(float a1)
{
  result = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.snapshotsTaken.setter(uint64_t a1)
{
  result = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent() + 40);
  v4 = sub_254549C44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent() + 40);
  v4 = sub_254549C44();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.demoMode.setter(char a1)
{
  result = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.init(startTime:duration:initialCameraState:didStartStream:timeToStartStream:snapshotsTaken:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, float a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 68) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2544A7A9C, 0, 0);
}

uint64_t sub_2544A7A9C()
{
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v1 = *(v0 + 64);
  v15 = *(v0 + 68);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v19 = v5;
  v18 = sub_254549354();
  v6 = *(v18 - 8);
  (*(v6 + 16))(v4, v5, v18);
  v7 = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
  *(v4 + v7[5]) = v3;
  v8 = v7[6];
  v9 = sub_254549C44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v4 + v8, v2, v9);
  *(v4 + v7[7]) = v15;
  *(v4 + v7[8]) = v1;
  *(v4 + v7[9]) = v16;
  v11(v4 + v7[10], v17, v9);
  sub_2544A7C9C();
  LOBYTE(v8) = sub_25454BFA4();
  v12 = *(v10 + 8);
  v12(v17, v9);
  v12(v2, v9);
  (*(v6 + 8))(v19, v18);
  *(v4 + v7[11]) = v8 & 1;
  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_2544A7C9C()
{
  result = qword_27F5FAD20;
  if (!qword_27F5FAD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FAD20);
  }

  return result;
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.debugDescription.getter()
{
  v1 = v0;
  sub_25454C154();
  MEMORY[0x259C0EE40](0xD000000000000023, 0x8000000254554B70);
  sub_254549354();
  sub_2544A8FB0(&qword_27F5FAD28, MEMORY[0x277CC9578]);
  v2 = sub_25454C304();
  MEMORY[0x259C0EE40](v2);

  MEMORY[0x259C0EE40](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  v3 = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
  v12 = *(v0 + v3[5]);
  v4 = sub_25454C304();
  MEMORY[0x259C0EE40](v4);

  MEMORY[0x259C0EE40](0xD000000000000016, 0x8000000254554BA0);
  v5 = v3[6];
  sub_254549C44();
  sub_25454C1D4();
  MEMORY[0x259C0EE40](0xD000000000000013, 0x8000000254554BC0);
  if (*(v1 + v3[7]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v3[7]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x259C0EE40](v6, v7);

  MEMORY[0x259C0EE40](0xD000000000000015, 0x8000000254554BE0);
  v8 = *(v1 + v3[8]);
  sub_25454BED4();
  MEMORY[0x259C0EE40](0xD000000000000013, 0x8000000254554C00);
  v13 = *(v1 + v3[9]);
  v9 = sub_25454C304();
  MEMORY[0x259C0EE40](v9);

  MEMORY[0x259C0EE40](0x3A726F727265202CLL, 0xE900000000000020);
  v10 = v3[10];
  sub_25454C1D4();
  return 0;
}

uint64_t _s7HomeUI20A13DataErrorViewV16DescriptionStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1);
  return sub_25454C434();
}

uint64_t sub_2544A8054()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1);
  return sub_25454C434();
}

uint64_t sub_2544A8098()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x726F727265;
  if (v1 != 6)
  {
    v3 = 0x65646F4D6F6D6564;
  }

  v4 = 0x746F687370616E73;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x7472617453646964;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2544A81AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2544A8C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2544A81EC(uint64_t a1)
{
  v2 = sub_2544A860C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2544A8228(uint64_t a1)
{
  v2 = sub_2544A860C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CameraStreamAnalytics.CameraDetailsViewEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAD30, &unk_25454CEE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2544A860C();
  sub_25454C454();
  v28 = 0;
  sub_254549354();
  sub_2544A8FB0(&qword_27F5FAD40, MEMORY[0x277CC9578]);
  sub_25454C2F4();
  if (!v2)
  {
    v11 = type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent();
    v12 = *(v3 + v11[5]);
    v27 = 1;
    sub_25454C2E4();
    v13 = v11[6];
    v26 = 2;
    sub_254549C44();
    sub_2544A8FB0(&qword_27F5FAD48, MEMORY[0x277D16080]);
    sub_25454C2F4();
    v14 = *(v3 + v11[7]);
    v25 = 3;
    sub_25454C2B4();
    v15 = *(v3 + v11[8]);
    v24 = 4;
    sub_25454C2D4();
    v16 = *(v3 + v11[9]);
    v23 = 5;
    sub_25454C2E4();
    v17 = v11[10];
    v22 = 6;
    sub_25454C2F4();
    v18 = *(v3 + v11[11]);
    v21 = 7;
    sub_25454C2B4();
  }

  return (*(v6 + 8))(v9, v5);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2544A860C()
{
  result = qword_27F5FAD38;
  if (!qword_27F5FAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAD38);
  }

  return result;
}

uint64_t sub_2544A8700(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_25454A6C4();
  }

  else
  {
    sub_25454A5F4();
  }

  return sub_25454A714();
}

uint64_t sub_2544A8768(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_25454A6C4();
    sub_25454A714();
    sub_2544A885C();
  }

  else
  {
    sub_25454A5F4();
    sub_25454A714();
    sub_2544A8FB0(&qword_27F5FAD58, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_2544A885C()
{
  result = qword_27F5FAD50;
  if (!qword_27F5FAD50)
  {
    sub_25454A6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAD50);
  }

  return result;
}

uint64_t sub_2544A88C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_25454AE84();

    return sub_25454A714();
  }

  else
  {
    sub_25454A754();
    swift_getWitnessTable();
    sub_25454AE14();
    sub_25454A714();
    sub_25454C054();
    swift_getWitnessTable();
    sub_25454A754();
    swift_getWitnessTable();
    sub_25454AE14();
    return sub_25454A714();
  }
}

uint64_t sub_2544A8A28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_25454AE84();
    sub_25454A714();
  }

  else
  {
    sub_25454A754();
    swift_getWitnessTable();
    sub_25454AE14();
    sub_25454A714();
    sub_25454C054();
    swift_getWitnessTable();
    sub_25454A754();
    swift_getWitnessTable();
    sub_25454AE14();
    sub_25454A714();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_2544A8C30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2544A8C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_25454C334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000254554C20 == a2 || (sub_25454C334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7472617453646964 && a2 == 0xEE006D6165727453 || (sub_25454C334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000254554C40 == a2 || (sub_25454C334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746F687370616E73 && a2 == 0xEE006E656B615473 || (sub_25454C334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65646F4D6F6D6564 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_25454C334();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2544A8F00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2544A8F10(uint64_t a1)
{
  result = sub_2544A8FB0(&qword_27F5FAD78, type metadata accessor for CameraStreamAnalytics.CameraDetailsViewEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2544A8FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CameraStreamAnalytics(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CameraStreamAnalytics(_WORD *result, int a2, int a3)
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

uint64_t sub_2544A90F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549354();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_254549C44();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2544A9228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254549354();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_254549C44();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2544A9330()
{
  result = sub_254549354();
  if (v1 <= 0x3F)
  {
    result = sub_254549C44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RelativeSizeLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RelativeSizeLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraStreamAnalytics.CameraDetailsViewEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraStreamAnalytics.CameraDetailsViewEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2544A95B0()
{
  result = qword_27F5FADA0;
  if (!qword_27F5FADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FADA0);
  }

  return result;
}

unint64_t sub_2544A9608()
{
  result = qword_27F5FADA8;
  if (!qword_27F5FADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FADA8);
  }

  return result;
}

unint64_t sub_2544A9660()
{
  result = qword_27F5FADB0;
  if (!qword_27F5FADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FADB0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2544A96D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2544A96F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_2544A9748(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2544A97A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE0, &qword_25454E140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CameraDemoView();
  sub_2544AE240(v1 + *(v12 + 40), v11, &qword_27F5FADE0, &qword_25454E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454A3B4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t CameraDemoView.init(state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADD0, &qword_25454D230);
  sub_25454B794();
  *(a2 + 8) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADD8, &qword_25454D238);
  sub_25454B794();
  *(a2 + 24) = v6;
  sub_25454B794();
  *(a2 + 40) = v6;
  *(a2 + 48) = *(&v6 + 1);
  sub_25454B794();
  *(a2 + 56) = v6;
  *(a2 + 64) = *(&v6 + 1);
  sub_25454B794();
  *(a2 + 72) = v6;
  *(a2 + 80) = *(&v6 + 1);
  v4 = *(type metadata accessor for CameraDemoView() + 40);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE0, &qword_25454E140);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for CameraDemoView()
{
  result = qword_27F5FAE08;
  if (!qword_27F5FAE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraDemoView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CameraDemoView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE8, &qword_25454D270);
  sub_25454B7A4();
  if (v19 && (swift_getKeyPath(), *&v20 = v19, sub_2544AE4E0(&qword_27F5FADF0, type metadata accessor for DemoCameraState), sub_2545494C4(), , v7 = *(v19 + 24), , (v7 & 1) != 0) || (sub_2544A9D68() & 1) == 0)
  {
    v9 = 1;
  }

  else
  {
    v8 = *(v2 + 48);
    LOBYTE(v20) = *(v2 + 40);
    *(&v20 + 1) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    v9 = v19 ^ 1;
  }

  v10 = *v2;
  v11 = sub_254549BD4();
  v13 = v12;
  sub_2544AD258(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  result = sub_2544AD428(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v17 = v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v11;
  *(v17 + 8) = v13;
  *(v17 + 16) = v9 & 1;
  *a1 = sub_2544AD48C;
  a1[1] = v15;
  return result;
}

uint64_t sub_2544A9D68()
{
  v4 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE8, &qword_25454D270);
  sub_25454B7A4();
  if (v3 && (swift_getKeyPath(), sub_2544AE4E0(&qword_27F5FADF0, type metadata accessor for DemoCameraState), sub_2545494C4(), , v1 = *(v3 + 25), , v1 != 2))
  {
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    LOBYTE(v1) = v3;
  }

  return v1 & 1;
}

uint64_t sub_2544A9EE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a5 = sub_25454BA54();
  a5[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE88, &qword_25454D4A8);
  v12 = a4 & 1;
  sub_2544AA098(a1, a2, a3, v12, a5 + *(v11 + 44));
  sub_25454A594();
  sub_25454A594();
  sub_25454BA54();
  sub_25454A544();
  v13 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE90, &qword_25454D4B0) + 36));
  *v13 = v17;
  v13[1] = v18;
  v13[2] = v19;
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE98, &qword_25454D4B8) + 36)) = 0;
  v14 = sub_25454BA84();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEA0, &qword_25454D4C0);
  v16 = a5 + *(result + 36);
  *v16 = v14;
  v16[8] = v12;
  return result;
}

uint64_t sub_2544AA098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v92 = a4;
  v102 = a3;
  v97 = a2;
  v107 = a5;
  v6 = sub_25454B714();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = *(v90 + 64);
  MEMORY[0x28223BE20](v6);
  v89 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEA8, &qword_25454D4C8);
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v83 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEB0, &qword_25454D4D0);
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEB8, &qword_25454D4D8);
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v15);
  v79 = &v78 - v17;
  v18 = sub_25454A3B4();
  v100 = *(v18 - 8);
  v101 = v18;
  v19 = *(v100 + 64);
  MEMORY[0x28223BE20](v18);
  v99 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CameraDemoView();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v108 = v24;
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEC0, &qword_25454D4E0);
  v26 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v98 = &v78 - v27;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEC8, &qword_25454D4E8);
  v28 = *(*(v103 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v103);
  v106 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v104 = &v78 - v31;
  v32 = sub_25454BE14();
  v105 = sub_25454BE04();
  v82 = v32;
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = *(a1 + 24);
  v95 = *(a1 + 32);
  v96 = v33;
  *&v121[0] = v33;
  *(&v121[0] + 1) = v95;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAED0, &qword_25454D4F0);
  sub_25454B7A4();
  v34 = v112;
  sub_2544AD258(a1, v25);
  v35 = *(v22 + 80);
  v36 = (v35 + 16) & ~v35;
  v37 = swift_allocObject();
  sub_2544AD428(v25, v37 + v36);
  *&v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE58, &qword_25454D490);
  sub_25454B794();
  v109 = a1;
  v38 = v121[0];
  sub_25454BA54();
  sub_25454A784();
  *&v112 = v34;
  *(&v112 + 1) = sub_2544ADBA8;
  *v113 = v37;
  *&v113[8] = v38;
  v110 = v97;
  v111 = v102;
  sub_2544AD258(v109, v25);
  v39 = swift_allocObject();
  sub_2544AD428(v25, v39 + v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAED8, &qword_25454D4F8);
  sub_2544ADC30();
  v40 = v98;
  sub_25454B574();

  v121[6] = v117;
  v121[7] = v118;
  v121[8] = v119;
  v122 = v120;
  v121[2] = *&v113[16];
  v121[3] = v114;
  v121[4] = v115;
  v121[5] = v116;
  v121[0] = v112;
  v121[1] = *v113;
  sub_2544AE150(v121, &qword_27F5FAED8, &qword_25454D4F8);
  v112 = *(v109 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE8, &qword_25454D270);
  sub_25454B7A4();
  v41 = v110;
  sub_2544AD258(v109, v25);
  v42 = swift_allocObject();
  sub_2544AD428(v25, v42 + v36);
  v43 = (v40 + *(v93 + 36));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEE8, &qword_25454D510);
  v45 = v43 + *(v44 + 36);
  sub_25454BE24();
  *(v43 + *(v44 + 40)) = v41;
  *v43 = &unk_25454D508;
  v43[1] = v42;
  v46 = v109;
  v47 = v99;
  sub_2544A97A0(v99);
  sub_2544AD258(v46, v25);
  v102 = v35;
  v48 = swift_allocObject();
  v97 = v36;
  sub_2544AD428(v25, v48 + v36);
  sub_2544ADE14();
  sub_2544AE4E0(&qword_27F5FAF00, MEMORY[0x277CDD6C8]);
  v49 = v104;
  v50 = v101;
  sub_25454B574();

  (*(v100 + 8))(v47, v50);
  sub_2544AE150(v40, &qword_27F5FAEC0, &qword_25454D4E0);
  *&v112 = v96;
  *(&v112 + 1) = v95;
  sub_25454B7A4();
  v51 = v110;
  if (v110)
  {
    v52 = v25;
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_getKeyPath();
    v53 = v83;
    sub_2545491E4();

    sub_2544AE1F0(&qword_27F5FAF18, &qword_27F5FAEA8, &qword_25454D4C8);
    v54 = v84;
    v55 = v86;
    sub_25454A314();
    (*(v85 + 8))(v53, v55);
    sub_2544AE1F0(&qword_27F5FAF20, &qword_27F5FAEB0, &qword_25454D4D0);
    v56 = v88;
    v57 = sub_25454A304();

    (*(v87 + 8))(v54, v56);

    v25 = v52;
  }

  else
  {
    LOBYTE(v112) = 0;
    v58 = v79;
    sub_25454A2F4();
    sub_2544AE1F0(&qword_27F5FAF08, &qword_27F5FAEB8, &qword_25454D4D8);
    v59 = v81;
    v57 = sub_25454A304();
    (*(v80 + 8))(v58, v59);
  }

  sub_2544AD258(v46, v25);
  v60 = v97;
  v61 = swift_allocObject();
  sub_2544AD428(v25, v61 + v60);
  v62 = v103;
  *(v49 + *(v103 + 52)) = v57;
  v63 = (v49 + *(v62 + 56));
  *v63 = sub_2544AE070;
  v63[1] = v61;
  if (qword_27F5FAC70 != -1)
  {
    swift_once();
  }

  v64 = *v46;
  v65 = sub_254549BD4();
  v67 = sub_2544AF944(v65, v66);

  if (v67)
  {
    v68 = v67;
    sub_25454B6F4();
    v70 = v89;
    v69 = v90;
    v71 = v91;
    (*(v90 + 104))(v89, *MEMORY[0x277CE0FE0], v91);
    v67 = sub_25454B764();

    (*(v69 + 8))(v70, v71);
    if (v92)
    {
      v72 = 0x3FF0000000000000;
    }

    else
    {
      v72 = 0;
    }

    v73 = 257;
  }

  else
  {
    v73 = 0;
    v72 = 0;
  }

  v74 = v106;
  sub_2544AE0E0(v49, v106);
  v75 = v107;
  sub_2544AE0E0(v74, v107);
  v76 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF10, &unk_25454D518) + 48));
  *v76 = v67;
  v76[1] = 0;
  v76[2] = v73;
  v76[3] = v72;

  sub_2544AE150(v49, &qword_27F5FAEC8, &qword_25454D4E8);

  sub_2544AE150(v74, &qword_27F5FAEC8, &qword_25454D4E8);
}

uint64_t sub_2544AACDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  return sub_25454B7B4();
}

uint64_t sub_2544AAD38()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544AADD8();
}

uint64_t sub_2544AADD8()
{
  v1 = v0[1];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE8, &qword_25454D270);
  sub_25454B7A4();
  if (v11)
  {
  }

  v4 = *v0;
  v5 = sub_254549BD4();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (qword_27F5FAC70 != -1)
    {
      swift_once();
    }

    v9 = sub_254549BD4();
    sub_2544AF4C8(v9, v10);

    return sub_25454B7B4();
  }

  return result;
}

uint64_t sub_2544AAEE4()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544AAF90;

  return sub_2544AB12C();
}

uint64_t sub_2544AAF90()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_2544AB0CC, v5, v4);
}

uint64_t sub_2544AB0CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2544AB12C()
{
  v1[13] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = sub_25454BE14();
  v1[16] = sub_25454BE04();
  v4 = sub_25454BDB4();
  v1[17] = v4;
  v1[18] = v3;

  return MEMORY[0x2822009F8](sub_2544AB200, v4, v3);
}

uint64_t sub_2544AB200()
{
  *(v0 + 16) = *(*(v0 + 104) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE8, &qword_25454D270);
  sub_25454B7A4();
  v1 = *(v0 + 64);
  *(v0 + 152) = v1;
  if (!v1)
  {
    v7 = *(v0 + 128);

    goto LABEL_5;
  }

  v2 = *(v0 + 104);
  v3 = *(v2 + 24);
  *(v0 + 160) = v3;
  v4 = *(v2 + 32);
  *(v0 + 32) = v3;
  *(v0 + 168) = v4;
  *(v0 + 40) = v4;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAED0, &qword_25454D4F0);
  sub_25454B7A4();
  v5 = *(v0 + 72);
  if (v5)
  {
    v6 = *(v0 + 128);

LABEL_5:
    v8 = *(v0 + 112);

    v9 = *(v0 + 8);

    return v9();
  }

  swift_getKeyPath();
  *(v0 + 80) = v1;
  sub_2544AE4E0(&qword_27F5FADF0, type metadata accessor for DemoCameraState);
  sub_2545494C4();

  v11 = *(v1 + 16);
  *(v0 + 184) = v11;
  v12 = *(MEMORY[0x277D857E0] + 4);

  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  v14 = sub_2544AE2B0(0, &qword_27F5FAF30, 0x277CE6598);
  *v13 = v0;
  v13[1] = sub_2544AB420;

  return MEMORY[0x282200460](v0 + 88, v11, v14);
}

uint64_t sub_2544AB420()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_2544AB564, v5, v4);
}

uint64_t sub_2544AB564()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];

  v8 = v0[11];
  v0[6] = v4;
  v0[7] = v2;
  v0[12] = v8;
  v9 = v8;
  sub_25454B7B4();
  v10 = sub_25454BE44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = v9;
  v12 = sub_25454BE04();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_2544B5138(0, 0, v7, &unk_25454D5B0, v13);

  v15 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2544AB6D4(uint64_t a1)
{
  v2 = sub_25454A3B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544A97A0(v9);
  (*(v3 + 104))(v7, *MEMORY[0x277CDD6B8], v2);
  v10 = sub_25454A3A4();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  v12 = *(a1 + 80);
  v14[16] = *(a1 + 72);
  v15 = v12;
  v14[15] = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  sub_2544AB8C4();
}

void sub_2544AB8C4()
{
  v6 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE8, &qword_25454D270);
  sub_25454B7A4();
  if (v5)
  {
    v7 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAED0, &qword_25454D4F0);
    sub_25454B7A4();
    swift_getKeyPath();
    sub_2544AE4E0(&qword_27F5FADF0, type metadata accessor for DemoCameraState);
    sub_2545494C4();

    if (v5[25] != 2)
    {
      goto LABEL_14;
    }

    if (sub_2544A9D68())
    {
      [v5 rate];
      if (v1 == 0.0)
      {
LABEL_7:
        swift_getKeyPath();
        sub_2545494C4();

        if (v5[24])
        {
          goto LABEL_8;
        }

        [v5 play];
LABEL_14:

        return;
      }

      v2 = [v5 error];
      if (v2)
      {

        goto LABEL_7;
      }
    }

LABEL_8:
    if ((sub_2544A9D68() & 1) == 0)
    {
      [v5 rate];
      if (v3 != 0.0)
      {
        v4 = [v5 error];
        if (v4)
        {
        }

        else
        {
          [v5 pause];
        }
      }
    }

    goto LABEL_14;
  }
}

uint64_t sub_2544ABAD8(char *a1, uint64_t a2)
{
  v3 = *a1;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  sub_2544AB8C4();
}

uint64_t sub_2544ABBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF38, &qword_25454D5B8);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF40, &qword_254552F60) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v9 = sub_25454BFF4();
  v4[24] = v9;
  v10 = *(v9 - 8);
  v4[25] = v10;
  v11 = *(v10 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = sub_25454BE14();
  v4[28] = sub_25454BE04();
  v13 = sub_25454BDB4();
  v4[29] = v13;
  v4[30] = v12;

  return MEMORY[0x2822009F8](sub_2544ABD50, v13, v12);
}

uint64_t sub_2544ABD50()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_25454BC74();
  v5 = [v2 currentItem];
  sub_25454C004();

  sub_25454BFE4();
  v6 = MEMORY[0x277CC08F0];
  v7 = *MEMORY[0x277CC08F0];
  v0[39] = *(MEMORY[0x277CC08F0] + 8);
  v8 = *(v6 + 16);
  v0[31] = v7;
  v0[32] = v8;
  v9 = v0[27];
  v0[33] = sub_25454BE04();
  v10 = sub_2544AE4E0(&qword_27F5FAF48, MEMORY[0x277CC9D68]);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_2544ABEF0;
  v13 = v0[26];
  v14 = v0[23];
  v15 = v0[24];

  return MEMORY[0x282200308](v14, v15, v10);
}

uint64_t sub_2544ABEF0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25454BDB4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2544AC384;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25454BDB4();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2544AC088;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2544AC088()
{
  v1 = v0[33];

  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x2822009F8](sub_2544AC0EC, v2, v3);
}

uint64_t sub_2544AC0EC()
{
  v1 = v0[23];
  v2 = sub_254549084();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[28];
    v4 = v0[22];
    (*(v0[25] + 8))(v0[26], v0[24]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v12 = v0[31];
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[20];
    v13 = v0[19];
    v14 = v0[32];
    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_2544AC410;
    v10 = v0[39];
    swift_continuation_init();
    v0[17] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    sub_25454BDC4();
    (*(v8 + 32))(boxed_opaque_existential_0, v7, v9);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2544AC628;
    v0[13] = &block_descriptor;
    v0[36] = v12;
    v0[37] = v10;
    v0[38] = v14;
    [v13 seekToTime:v0 + 36 completionHandler:v0 + 10];
    (*(v8 + 8))(boxed_opaque_existential_0, v9);

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_2544AC384()
{
  *(v0 + 144) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF50, &qword_25454D5C0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2544AC410()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2544AC518, v2, v1);
}

uint64_t sub_2544AC518()
{
  v1 = *(v0 + 184);
  [*(v0 + 152) play];
  sub_2544AE150(v1, &qword_27F5FAF40, &qword_254552F60);
  v2 = *(v0 + 216);
  *(v0 + 264) = sub_25454BE04();
  v3 = sub_2544AE4E0(&qword_27F5FAF48, MEMORY[0x277CC9D68]);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_2544ABEF0;
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_2544AC628(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF38, &qword_25454D5B8);
  return sub_25454BDD4();
}

uint64_t sub_2544AC684@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = v3 == 1;
  return result;
}

id sub_2544AC74C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE50, qword_25454D450);
  v20 = *(v2 - 8);
  v21 = v2;
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  type metadata accessor for AVPlayerView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = [v6 layer];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
  }

  [v6 setClipsToBounds_];

  if (v8)
  {
    [v8 setMasksToBounds_];
    [v8 setPlayer_];
    [v8 setVideoGravity_];
  }

  v9 = [v6 layer];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  swift_getKeyPath();
  sub_2545491E4();

  v10 = *v1;
  v11 = v1[2];
  v13 = v1[4];
  v26 = v1[3];
  v12 = v26;
  v27 = v10;
  v25 = v13;
  v14 = swift_allocObject();
  v15 = *(v1 + 1);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = v1[4];
  sub_2544AE240(&v27, v24, &qword_27F5FADD8, &qword_25454D238);

  sub_2544AE240(&v26, v24, &qword_27F5FAE58, &qword_25454D490);
  sub_2544AE240(&v25, v24, &qword_27F5FAE60, &qword_25454D498);
  sub_2544AE1F0(&qword_27F5FAE68, &qword_27F5FAE50, qword_25454D450);
  v16 = v21;
  v17 = sub_25454A324();

  (*(v20 + 8))(v5, v16);
  v24[0] = v12;
  v24[1] = v13;
  v23 = v17;
  sub_2544AE240(&v26, v22, &qword_27F5FAE58, &qword_25454D490);
  sub_2544AE240(&v25, v22, &qword_27F5FAE60, &qword_25454D498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE70, &qword_25454D4A0);
  sub_25454B7B4();

  sub_2544AE150(&v26, &qword_27F5FAE58, &qword_25454D490);
  sub_2544AE150(&v25, &qword_27F5FAE60, &qword_25454D498);
  return v6;
}

uint64_t sub_2544ACAE8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 16);
  (*(a2 + 8))(v3);
}

id sub_2544ACB9C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_2544AC74C();
}

void sub_2544ACBD8(void *a1)
{
  v2 = *v1;
  v4 = [a1 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 setPlayer_];
  }
}

uint64_t sub_2544ACCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2544ADB50();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2544ACD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2544ADB50();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2544ACD74()
{
  sub_2544ADB50();
  sub_25454AD04();
  __break(1u);
}

id sub_2544AD010()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVPlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2544AD048@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2544AE4E0(&qword_27F5FADF0, type metadata accessor for DemoCameraState);
  sub_2545494C4();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_2544AD160(uint64_t a1)
{
  v2 = sub_25454A3B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25454A804();
}

uint64_t sub_2544AD258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraDemoView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544AD2BC()
{
  v1 = (type metadata accessor for CameraDemoView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 64);

  v12 = *(v0 + v3 + 80);

  v13 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE0, &qword_25454E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_25454A3B4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 17, v2 | 7);
}

uint64_t sub_2544AD428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraDemoView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544AD48C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CameraDemoView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_2544A9EE4(v1 + v4, v6, v7, v8, a1);
}

uint64_t sub_2544AD570(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE00, &qword_25454D2F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_2544AD640(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAE00, &qword_25454D2F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2544AD6F0()
{
  sub_254549C04();
  if (v0 <= 0x3F)
  {
    sub_2544AD83C(319, &qword_27F5FAE18, &qword_27F5FADD0, &qword_25454D230);
    if (v1 <= 0x3F)
    {
      sub_2544AD83C(319, &qword_27F5FAE20, &qword_27F5FADD8, &qword_25454D238);
      if (v2 <= 0x3F)
      {
        sub_2544AD890();
        if (v3 <= 0x3F)
        {
          sub_2544AD8E0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
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

void sub_2544AD83C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25454B7D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2544AD890()
{
  if (!qword_27F5FAE28)
  {
    v0 = sub_25454B7D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FAE28);
    }
  }
}

void sub_2544AD8E0()
{
  if (!qword_27F5FAE30)
  {
    sub_25454A3B4();
    v0 = sub_25454A464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FAE30);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2544AD9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2544AD9FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2544ADA64()
{
  result = qword_27F5FAE48;
  if (!qword_27F5FAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAE48);
  }

  return result;
}

id sub_2544ADAC4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForDisplay];
  *a2 = result;
  return result;
}

uint64_t sub_2544ADAF8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_2544ADB50()
{
  result = qword_27F5FAE78;
  if (!qword_27F5FAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAE78);
  }

  return result;
}

uint64_t sub_2544ADBA8(uint64_t a1)
{
  v3 = *(type metadata accessor for CameraDemoView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2544AACDC(a1, v4);
}

unint64_t sub_2544ADC30()
{
  result = qword_27F5FAEE0;
  if (!qword_27F5FAEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FAED8, &qword_25454D4F8);
    sub_2544ADA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAEE0);
  }

  return result;
}

uint64_t sub_2544ADCBC()
{
  v1 = *(type metadata accessor for CameraDemoView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2544AE660;

  return sub_2544AAEE4();
}

uint64_t sub_2544ADDA0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CameraDemoView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2544ADE14()
{
  result = qword_27F5FAEF0;
  if (!qword_27F5FAEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FAEC0, &qword_25454D4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FAED8, &qword_25454D4F8);
    sub_2544ADC30();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FAEF8, &qword_27F5FAEE8, &qword_25454D510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAEF0);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = (type metadata accessor for CameraDemoView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 64);

  v12 = *(v0 + v3 + 80);

  v13 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE0, &qword_25454E140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_25454A3B4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2544AE070(char *a1)
{
  v3 = *(type metadata accessor for CameraDemoView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2544ABAD8(a1, v4);
}

uint64_t sub_2544AE0E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAEC8, &qword_25454D4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544AE150(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_2544AE1BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_2544AE1F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2544AE240(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2544AE2B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2544AE2F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2544AE338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2544AE3EC;

  return sub_2544ABBB8(a1, v4, v5, v6);
}

uint64_t sub_2544AE3EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2544AE4E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2544AE59C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_2544AE664()
{
  v39[2] = *MEMORY[0x277D85DE8];
  v0 = sub_25454A2E4();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF60, &unk_25454D5D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - v5;
  v7 = sub_254549204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CPSharedResourcesDirectory();
  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  sub_25454BC84();

  v14 = *MEMORY[0x277CC91C0];
  v15 = *(v8 + 104);
  v15(v11, v14, v7);
  v16 = sub_254549254();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_254549244();
  v39[0] = 0xD000000000000034;
  v39[1] = 0x8000000254554E30;
  v15(v11, v14, v7);
  sub_2544AECF0();
  sub_254549234();
  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() defaultManager];
  sub_2545491F4();
  v18 = sub_25454BC74();

  v39[0] = 0;
  v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:v39];

  v20 = v39[0];
  if (v19)
  {
    v21 = *MEMORY[0x277D85DE8];

    return v20;
  }

  else
  {
    v35 = v39[0];
    v23 = v39[0];
    v24 = sub_254549134();

    swift_willThrow();
    v25 = v36;
    sub_25454A2B4();
    v26 = v24;
    v27 = sub_25454A2C4();
    v28 = sub_25454BF74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v29 = 136446210;
      swift_getErrorValue();
      v31 = sub_25454C394();
      v33 = sub_254502AAC(v31, v32, v39);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2544A5000, v27, v28, "Error writing to file: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C0FDF0](v30, -1, -1);
      MEMORY[0x259C0FDF0](v29, -1, -1);
    }

    else
    {
    }

    result = (*(v37 + 8))(v25, v38);
    v34 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_2544AEB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v7 = sub_254549204();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2544AE664();
  v17 = a1;
  v18 = a2;
  v12 = v8[13];
  v12(v11, *MEMORY[0x277CC91C0], v7);
  sub_2544AECF0();
  sub_254549234();
  v13 = v8[1];
  v13(v11, v7);
  v17 = a3;
  v18 = v16;
  v12(v11, *MEMORY[0x277CC91D8], v7);
  sub_254549234();
  return (v13)(v11, v7);
}

unint64_t sub_2544AECF0()
{
  result = qword_27F5FAF58;
  if (!qword_27F5FAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAF58);
  }

  return result;
}

uint64_t sub_2544AED44()
{
  swift_getKeyPath();
  sub_2544B0440();
  sub_2545494C4();

  v1 = *(v0 + 16);
}

uint64_t sub_2544AEDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2544B0440();
  sub_2545494C4();

  *a2 = *(v3 + 16);
}

uint64_t sub_2544AEE34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2544AEE60(v4);
}

uint64_t sub_2544AEE60(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2544B04B0();

  v4 = sub_25454BE94();

  if (v4)
  {
    v5 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2544B0440();
    sub_2545494B4();
  }
}

uint64_t sub_2544AEFA4()
{
  swift_getKeyPath();
  sub_2544B0440();
  sub_2545494C4();

  return *(v0 + 24);
}

uint64_t sub_2544AF014(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2544B0440();
    sub_2545494B4();
  }

  return result;
}

uint64_t sub_2544AF0F4()
{
  swift_getKeyPath();
  sub_2544B0440();
  sub_2545494C4();

  return *(v0 + 25);
}

uint64_t sub_2544AF164@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2544B0440();
  sub_2545494C4();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_2544AF204(uint64_t result)
{
  v2 = *(v1 + 25);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2544B0440();
    sub_2545494B4();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 25) = result;
  return result;
}

uint64_t sub_2544AF308()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC7HomeUI215DemoCameraState___observationRegistrar;
  v3 = sub_254549504();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DemoCameraState()
{
  result = qword_27F5FAF70;
  if (!qword_27F5FAF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2544AF400()
{
  result = sub_254549504();
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

uint64_t sub_2544AF4C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45[6] = *MEMORY[0x277D85DE8];
  v43 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_254549254();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  swift_beginAccess();
  v17 = v2[2];
  if (*(v17 + 16))
  {
    v42 = v11;

    v18 = sub_2544DA948(a1, a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      goto LABEL_10;
    }

    v11 = v42;
  }

  v42 = a1;
  sub_2544AEB28(a1, a2);
  sub_25454BE24();
  v21 = sub_25454BE44();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  v22 = v16;
  (*(v11 + 16))(v14, v16, v10);
  sub_25454BE14();
  v23 = sub_25454BE04();
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  (*(v11 + 32))(v25 + v24, v14, v10);
  v27 = sub_2544B4E2C(0, 0, v9, &unk_25454D6D0, v25);
  if ((v3[4] & 1) == 0)
  {
    *(v3 + 32) = 1;
    v28 = [objc_opt_self() sharedInstance];
    v29 = *MEMORY[0x277CB8030];
    v45[0] = 0;
    v30 = [v28 setCategory:v29 withOptions:1 error:v45];

    if (v30)
    {
      v31 = v45[0];
    }

    else
    {
      v32 = v45[0];
      v33 = sub_254549134();

      swift_willThrow();
    }
  }

  v34 = type metadata accessor for DemoCameraState();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v20 = swift_allocObject();
  *(v20 + 24) = 512;

  sub_2545494F4();
  *(v20 + 16) = v27;
  swift_beginAccess();

  v37 = v3[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v3[2];
  v3[2] = 0x8000000000000000;
  sub_254531320(v20, v42, a2, isUniquelyReferenced_nonNull_native);

  v3[2] = v44;
  swift_endAccess();

  (*(v11 + 8))(v22, v10);
LABEL_10:
  v39 = *MEMORY[0x277D85DE8];
  return v20;
}

id sub_2544AF944(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_254549254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v11 = v2[3];
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_2544DA948(a1, a2);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    sub_2544AEB40(a1, a2);
    sub_254549224();
    v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v16 = sub_25454BC74();

    v14 = [v15 initWithContentsOfFile_];

    swift_beginAccess();

    v17 = v14;
    sub_2544CE0DC(v14, a1, a2);
    swift_endAccess();
    (*(v7 + 8))(v10, v6);
    return v14;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  return v14;
}

uint64_t sub_2544AFB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = sub_25454BE14();
  v4[6] = sub_25454BE04();
  v6 = sub_25454BDB4();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_2544AFBEC, v6, v5);
}

uint64_t sub_2544AFBEC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v4 = sub_254549214();
  v0[9] = [v3 initWithURL:v4 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF80, &qword_25454D6D8);
  v5 = sub_254549544();
  v0[10] = v5;
  v6 = sub_25454BE04();
  v0[11] = v6;
  v7 = *(MEMORY[0x277D82DC0] + 4);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_2544AFD14;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF00](v0 + 2, v5, v6, v9);
}

uint64_t sub_2544AFD14()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v13 = *v1;

  if (v0)
  {
    v5 = v2[10];
    v4 = v2[11];

    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_2544B056C;
  }

  else
  {
    v10 = v2[10];
    v9 = v2[11];
    v11 = v2[2];

    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_2544AFE64;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2544AFE64()
{
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF88, &qword_25454D6E0);
  v2 = sub_254549554();
  v0[13] = v2;
  v3 = sub_25454BE04();
  v0[14] = v3;
  v4 = *(MEMORY[0x277D82DC0] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2544AFF50;
  v6 = v0[9];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF00](v0 + 16, v2, v3, v7);
}

uint64_t sub_2544AFF50()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;

  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {

    v8 = *(v3 + 56);
    v9 = *(v3 + 64);
    v10 = sub_2544B0568;
  }

  else
  {

    v8 = *(v3 + 56);
    v9 = *(v3 + 64);
    v10 = sub_2544B00C0;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2544B00C0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];

  v4 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  v5 = [objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];

  [v5 setMuted_];
  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_2544B0190()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_2544B01F4()
{
  type metadata accessor for DemoCameraPlayerStore();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_2544D6F04(MEMORY[0x277D84F90]);
  result = sub_2544D7008(v1);
  *(v0 + 24) = result;
  *(v0 + 32) = 0;
  qword_27F604A98 = v0;
  return result;
}

uint64_t sub_2544B0250()
{
  v1 = sub_254549254();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2544B0314(uint64_t a1)
{
  v4 = *(sub_254549254() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE3EC;

  return sub_2544AFB50(a1, v6, v7, v1 + v5);
}

unint64_t sub_2544B0440()
{
  result = qword_27F5FADF0;
  if (!qword_27F5FADF0)
  {
    type metadata accessor for DemoCameraState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FADF0);
  }

  return result;
}

unint64_t sub_2544B04B0()
{
  result = qword_27F5FAF30;
  if (!qword_27F5FAF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FAF30);
  }

  return result;
}

uint64_t sub_2544B0500(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2544AEE60(v4);
}

uint64_t sub_2544B052C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

double CameraGridLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

double sub_2544B05B8(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_2544B0698(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25454A334();
  return sub_2544B0720;
}

void sub_2544B0720(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2544B076C()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FAF90);
  __swift_project_value_buffer(v0, qword_27F5FAF90);
  return sub_25454A2D4();
}

uint64_t static Logger.cameraGrid.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F5FAC78 != -1)
  {
    swift_once();
  }

  v2 = sub_25454A2E4();
  v3 = __swift_project_value_buffer(v2, qword_27F5FAF90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2544B089C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAFB8, &qword_25454D868);
  v91 = *(v97 - 8);
  v11 = *(*&v91 + 64);
  MEMORY[0x28223BE20](v97);
  v80 = (&v76 - v12);
  v96 = sub_25454A5E4();
  MinY = *(v96 - 8);
  v13 = *(*&MinY + 64);
  v14 = MEMORY[0x28223BE20](v96);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v76 - v17;
  v18 = &qword_27F5FAFC0;
  v19 = &qword_25454D870;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAFC0, &qword_25454D870);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v76 - v25);
  v27 = sub_25454A644();
  v89 = *(v27 - 8);
  v28 = *(v89 + 64);
  MEMORY[0x28223BE20](v27);
  v88 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAFC8, &qword_25454D878);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v85 = &v76 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAFD0, &qword_25454D880);
  v34 = *(v33 - 8);
  v86 = v33 - 8;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v37 = &v76 - v36;
  v101 = *v5;
  v38 = sub_2544B14A4(&qword_27F5FAFD8);
  v84 = a1;
  sub_25454BEF4();
  sub_25454BF24();
  v39 = sub_25454BF14();
  CameraGridLayout.Style.unitRects(count:)(v39);
  v87 = v40;
  v93 = a2;
  v94 = a3;
  v102.origin.x = a2;
  v102.origin.y = a3;
  v98 = a4;
  v102.size.width = a4;
  v95 = a5;
  v102.size.height = a5;
  Width = CGRectGetWidth(v102);
  v41 = v89;
  v42 = v85;
  (*(v89 + 16))(v85, v84, v27);
  (*(v41 + 32))(v88, v42, v27);
  sub_2544B14A4(&qword_27F5FAFE0);
  sub_25454BD84();
  v76 = *(v86 + 44);
  *&v37[v76] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAFE8, &qword_25454D888);
  v84 = 0;
  v89 = *(v43 + 36);
  v78 = (*&MinY + 16);
  v88 = (*&MinY + 32);
  v86 = *&v91 + 56;
  v85 = (*&v91 + 48);
  v82 = v87 + 32;
  v81 = (*&MinY + 8);
  v83 = v38;
  v77 = v26;
  while (1)
  {
    sub_25454BF24();
    if (*&v37[v89] == v99[0])
    {
      v44 = 1;
    }

    else
    {
      v45 = v27;
      v46 = v37;
      v47 = v24;
      v48 = v19;
      v49 = v18;
      v50 = v16;
      v51 = sub_25454BF54();
      v52 = v79;
      v53 = v96;
      (*v78)(v79);
      v51(v99, 0);
      v27 = v45;
      sub_25454BF34();
      v54 = *(v97 + 48);
      v55 = v80;
      v56 = v84;
      *v80 = v84;
      result = (*v88)(v55 + v54, v52, v53);
      if (__OFADD__(v56, 1))
      {
        goto LABEL_13;
      }

      v84 = v56 + 1;
      *&v46[v76] = v56 + 1;
      v24 = v47;
      sub_2544B14E8(v55, v47, &qword_27F5FAFB8, &qword_25454D868);
      v44 = 0;
      v16 = v50;
      v18 = v49;
      v19 = v48;
      v26 = v77;
      v37 = v46;
    }

    v58 = v97;
    (*v86)(v24, v44, 1, v97);
    sub_2544B14E8(v24, v26, v18, v19);
    if ((*v85)(v26, 1, v58) == 1)
    {
      sub_2544B1550(v37);
    }

    v59 = *v26;
    result = (*v88)(v16, v26 + *(v97 + 48), v96);
    if ((v59 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v59 >= *(v87 + 16))
    {
      goto LABEL_12;
    }

    v60 = (v82 + 32 * v59);
    v61 = *v60;
    v62 = v60[1];
    v64 = v60[2];
    v63 = v60[3];
    v66 = v93;
    v65 = v94;
    v103.origin.x = v93;
    v103.origin.y = v94;
    v103.size.width = v98;
    v67 = v95;
    v103.size.height = v95;
    MinX = CGRectGetMinX(v103);
    v104.origin.x = v61;
    v104.origin.y = v62;
    v104.size.width = v64;
    v104.size.height = v63;
    v69 = MinX + Width * CGRectGetMinX(v104);
    v105.origin.x = v61;
    v105.origin.y = v62;
    v105.size.width = v64;
    v105.size.height = v63;
    v70 = CGRectGetMinX(v105);
    v91 = v69 + v70 + v70;
    v106.origin.x = v66;
    v106.origin.y = v65;
    v71 = v98;
    v106.size.width = v98;
    v106.size.height = v67;
    MinY = CGRectGetMinY(v106);
    v107.origin.x = v61;
    v107.origin.y = v62;
    v107.size.width = v64;
    v107.size.height = v63;
    v72 = CGRectGetMinY(v107);
    v108.origin.x = v66;
    v73 = v94;
    v108.origin.y = v94;
    v108.size.width = v71;
    v108.size.height = v67;
    v74 = MinY + v72 * CGRectGetHeight(v108);
    v109.origin.x = v61;
    v109.origin.y = v62;
    v109.size.width = v64;
    v109.size.height = v63;
    v75 = CGRectGetMinY(v109);
    MinY = v74 + v75 + v75;
    v110.origin.x = v61;
    v110.origin.y = v62;
    v110.size.width = v64;
    v110.size.height = v63;
    CGRectGetWidth(v110);
    v111.origin.x = v61;
    v111.origin.y = v62;
    v111.size.width = v64;
    v111.size.height = v63;
    CGRectGetWidth(v111);
    v112.origin.x = v93;
    v112.origin.y = v73;
    v112.size.width = v98;
    v112.size.height = v95;
    CGRectGetHeight(v112);
    v113.origin.x = v61;
    v113.origin.y = v62;
    v113.size.width = v64;
    v113.size.height = v63;
    CGRectGetHeight(v113);
    v114.origin.x = v61;
    v114.origin.y = v62;
    v114.size.width = v64;
    v114.size.height = v63;
    CGRectGetHeight(v114);
    sub_25454BB14();
    LOBYTE(v99[0]) = 0;
    v100 = 0;
    sub_25454A5D4();
    (*v81)(v16, v96);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
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

unint64_t sub_2544B1228()
{
  result = qword_27F5FAFA8;
  if (!qword_27F5FAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAFA8);
  }

  return result;
}

unint64_t sub_2544B1280()
{
  result = qword_27F5FAFB0;
  if (!qword_27F5FAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraGridLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraGridLayout(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_2544B14A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25454A644();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2544B14E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2544B1550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAFD0, &qword_25454D880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double CameraGridLayout.Style.unitRects(count:)(unint64_t a1)
{
  v2 = *v1;
  if (v2 == 2)
  {
    v6[1] = 2;
    CameraGridLayout.Style.FaceLayout.init(rawValue:)(a1, v6);
    v3 = v6[0];
    if (v6[0] == 9)
    {
      v3 = 8;
    }

    v5 = v3;
    *&result = sub_2544B1880(&v5).u64[0];
  }

  else
  {
    if (v2 & 1 | (a1 > 4))
    {
      LOBYTE(a1) = 0;
    }

    *&result = sub_2544B164C(a1).n128_u64[0];
  }

  return result;
}

__n128 sub_2544B164C(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB008, &qword_25454DB10);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_25454D8F0;
      sub_25454BB34();
      *(v36 + 32) = v37;
      *(v36 + 40) = v38;
      __asm { FMOV            V0.2D, #1.0 }

      *(v36 + 48) = result;
    }

    else
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_25454D890;
      sub_25454BB34();
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      *(v15 + 48) = xmmword_25454D8A0;
      sub_25454BB24();
      *(v15 + 64) = v18;
      *(v15 + 72) = v19;
      __asm { FMOV            V0.2D, #0.5 }

      *(v15 + 80) = _Q0;
      sub_25454BB44();
      *(v15 + 96) = result.n128_u64[0];
      *(v15 + 104) = v21;
      *(v15 + 112) = xmmword_25454D8B0;
      *(v15 + 128) = 0x3FEAAAAAAAAAAAABLL;
      result.n128_u64[0] = 0x3FE0000000000000;
      *(v15 + 136) = xmmword_25454D8C0;
      *(v15 + 152) = 0x3FE0000000000000;
    }
  }

  else if (a1 == 2)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25454D8E0;
    sub_25454BB34();
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    *(v22 + 48) = xmmword_25454D8A0;
    sub_25454BB24();
    *(v22 + 64) = result.n128_u64[0];
    *(v22 + 72) = v25;
    *(v22 + 80) = 0x3FE0000000000000;
    *(v22 + 88) = 0x3FF0000000000000;
  }

  else if (a1 == 3)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25454D8D0;
    sub_25454BB34();
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v2 + 48) = xmmword_25454D8A0;
    sub_25454BB24();
    *(v2 + 64) = v5;
    *(v2 + 72) = v6;
    __asm { FMOV            V0.2D, #0.5 }

    v39 = _Q0;
    *(v2 + 80) = _Q0;
    sub_25454BB44();
    *(v2 + 96) = v12;
    *(v2 + 104) = v13;
    result = v39;
    *(v2 + 112) = v39;
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_25454D890;
    sub_25454BB34();
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    __asm { FMOV            V0.2D, #0.5 }

    v40 = _Q0;
    *(v26 + 48) = _Q0;
    sub_25454BB24();
    *(v26 + 64) = v30;
    *(v26 + 72) = v31;
    *(v26 + 80) = v40;
    sub_25454BB54();
    *(v26 + 96) = v32;
    *(v26 + 104) = v33;
    *(v26 + 112) = v40;
    sub_25454BB44();
    *(v26 + 128) = v34;
    *(v26 + 136) = v35;
    result = v40;
    *(v26 + 144) = v40;
  }

  return result;
}

uint64_t CameraGridLayout.Style.FaceLayout.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 1;
  if ((result - 1) >= 9)
  {
    v2 = 9;
  }

  *a2 = v2;
  return result;
}

int64x2_t sub_2544B1880(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB008, &qword_25454DB10);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_25454D8D0;
        sub_25454BB34();
        *(v14 + 32) = v15;
        *(v14 + 40) = v16;
        *(v14 + 48) = 0x3FF0000000000000;
        *(v14 + 56) = 0x3FE0000000000000;
        sub_25454BB54();
        *(v14 + 64) = v17;
        *(v14 + 72) = v18;
        __asm { FMOV            V0.2D, #0.5 }

        v49 = _Q0;
        *(v14 + 80) = _Q0;
        sub_25454BB44();
        *(v14 + 96) = v20;
        *(v14 + 104) = v21;
        result = v49;
        *(v14 + 112) = v49;
      }

      else
      {
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_25454D890;
        sub_25454BB34();
        *(v32 + 32) = v33;
        *(v32 + 40) = v34;
        __asm { FMOV            V0.2D, #0.5 }

        v50 = _Q0;
        *(v32 + 48) = _Q0;
        sub_25454BB24();
        *(v32 + 64) = v36;
        *(v32 + 72) = v37;
        *(v32 + 80) = v50;
        sub_25454BB54();
        *(v32 + 96) = v38;
        *(v32 + 104) = v39;
        *(v32 + 112) = v50;
        sub_25454BB44();
        *(v32 + 128) = v40;
        *(v32 + 136) = v41;
        result = v50;
        *(v32 + 144) = v50;
      }
    }

    else if (v1)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_25454D8E0;
      sub_25454BB34();
      *(v28 + 32) = v29;
      *(v28 + 40) = v30;
      *(v28 + 48) = xmmword_25454D9C0;
      sub_25454BB54();
      *(v28 + 64) = result.i64[0];
      *(v28 + 72) = v31;
      *(v28 + 80) = 0x3FF0000000000000;
      *(v28 + 88) = 0x3FE0000000000000;
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25454D8F0;
      sub_25454BB34();
      *(v7 + 32) = v8;
      *(v7 + 40) = v9;
      __asm { FMOV            V0.2D, #1.0 }

      *(v7 + 48) = result;
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_25454D9B0;
      sub_25454BB34();
      *(v22 + 32) = v23;
      *(v22 + 40) = v24;
      *(v22 + 48) = vdupq_n_s64(0x3FE5555555555555uLL);
      *(v22 + 64) = xmmword_25454D920;
      result = vdupq_n_s64(0x3FD5555555555555uLL);
      *(v22 + 80) = result;
      *(v22 + 96) = xmmword_25454D940;
      *(v22 + 112) = result;
      *(v22 + 128) = xmmword_25454D950;
      *(v22 + 144) = result;
      *(v22 + 160) = xmmword_25454D960;
      *(v22 + 176) = xmmword_25454D940;
    }

    else
    {
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_25454D9A0;
      sub_25454BB34();
      *(v45 + 32) = v46;
      *(v45 + 40) = v47;
      result = vdupq_n_s64(0x3FE5555555555555uLL);
      *(v45 + 48) = result;
      *(v45 + 64) = xmmword_25454D920;
      v48 = vdupq_n_s64(0x3FD5555555555555uLL);
      *(v45 + 80) = v48;
      *(v45 + 96) = xmmword_25454D940;
      *(v45 + 112) = v48;
      *(v45 + 128) = xmmword_25454D950;
      *(v45 + 144) = v48;
      *(v45 + 160) = xmmword_25454D960;
      *(v45 + 176) = v48;
      *(v45 + 192) = result;
      *(v45 + 208) = v48;
    }
  }

  else if (v1 == 6)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25454D980;
    sub_25454BB34();
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    *(v25 + 48) = xmmword_25454D990;
    *(v25 + 64) = xmmword_25454D930;
    result = vdupq_n_s64(0x3FD5555555555555uLL);
    *(v25 + 80) = result;
    *(v25 + 96) = result;
    *(v25 + 112) = result;
    *(v25 + 128) = xmmword_25454D940;
    *(v25 + 144) = result;
    *(v25 + 160) = xmmword_25454D950;
    *(v25 + 176) = result;
    *(v25 + 192) = xmmword_25454D960;
    *(v25 + 208) = result;
    *(v25 + 224) = vdupq_n_s64(0x3FE5555555555555uLL);
    *(v25 + 240) = result;
  }

  else if (v1 == 7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25454D970;
    sub_25454BB34();
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v2 + 48) = xmmword_25454D940;
    *(v2 + 64) = xmmword_25454D920;
    v5 = vdupq_n_s64(0x3FD5555555555555uLL);
    *(v2 + 80) = v5;
    *(v2 + 96) = xmmword_25454D930;
    *(v2 + 112) = v5;
    *(v2 + 128) = v5;
    *(v2 + 144) = v5;
    *(v2 + 160) = xmmword_25454D940;
    *(v2 + 176) = v5;
    *(v2 + 192) = xmmword_25454D950;
    *(v2 + 208) = v5;
    *(v2 + 224) = xmmword_25454D960;
    result = vdupq_n_s64(0x3FE5555555555555uLL);
    *(v2 + 240) = v5;
    *(v2 + 256) = result;
    *(v2 + 272) = v5;
  }

  else
  {
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_25454D900;
    sub_25454BB34();
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    result = vdupq_n_s64(0x3FD5555555555555uLL);
    *(v42 + 48) = result;
    *(v42 + 64) = xmmword_25454D910;
    *(v42 + 80) = result;
    *(v42 + 96) = xmmword_25454D920;
    *(v42 + 112) = result;
    *(v42 + 128) = xmmword_25454D930;
    *(v42 + 144) = result;
    *(v42 + 160) = result;
    *(v42 + 176) = result;
    *(v42 + 192) = xmmword_25454D940;
    *(v42 + 208) = result;
    *(v42 + 224) = xmmword_25454D950;
    *(v42 + 240) = result;
    *(v42 + 256) = xmmword_25454D960;
    *(v42 + 272) = result;
    *(v42 + 288) = vdupq_n_s64(0x3FE5555555555555uLL);
    *(v42 + 304) = result;
  }

  return result;
}

uint64_t CameraGridLayout.Style.maximumCameraCount.getter()
{
  if (*v0 == 2)
  {
    return 9;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2544B1D08()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1 + 1);
  return sub_25454C434();
}

uint64_t sub_2544B1D80()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1 + 1);
  return sub_25454C434();
}

unint64_t sub_2544B1E3C()
{
  result = qword_27F5FAFF0;
  if (!qword_27F5FAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAFF0);
  }

  return result;
}

unint64_t sub_2544B1E94()
{
  result = qword_27F5FAFF8;
  if (!qword_27F5FAFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB000, &qword_25454DA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FAFF8);
  }

  return result;
}

uint64_t _s5StyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2544B205C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2544B2078(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t _s5StyleO15DashboardFormatOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StyleO15DashboardFormatOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s5StyleO10FaceLayoutOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StyleO10FaceLayoutOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for CameraDetailsViewModel.State.Config()
{
  result = qword_27F5FB038;
  if (!qword_27F5FB038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraDetailsViewModel.State.Config.staticUsersDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for CameraDetailsViewModel.State.Config() + 24));
}

uint64_t CameraDetailsViewModel.State.Config.lowBatteryLevel.getter()
{
  v1 = (v0 + *(type metadata accessor for CameraDetailsViewModel.State.Config() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CameraDetailsViewModel.State.Config.associatedAppEntities.getter()
{
  v1 = *(v0 + *(type metadata accessor for CameraDetailsViewModel.State.Config() + 36));
}

uint64_t sub_2544B24CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2545497D4();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v62 - v9;
  v81 = sub_254549394();
  v72 = *(v81 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x28223BE20](v81);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB088, &qword_25454DBD8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  result = MEMORY[0x28223BE20](v16);
  v75 = &v62 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v74 = v18;
  v69 = v8;
  v70 = a2;
  v20 = 0;
  v66 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v63 = (v24 + 63) >> 6;
  v64 = v22;
  v65 = v72 + 16;
  v79 = (v72 + 32);
  v77 = v82 + 16;
  v78 = (v82 + 32);
  v67 = (v72 + 8);
  v68 = (v82 + 8);
  while (v26)
  {
    v76 = (v26 - 1) & v26;
    v27 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v34 = v66;
    v36 = v71;
    v35 = v72;
    v37 = v81;
    (*(v72 + 16))(v71, *(v66 + 48) + *(v72 + 72) * v27, v81);
    v38 = *(v34 + 56);
    v39 = v82;
    v40 = v80;
    (*(v82 + 16))(v80, v38 + *(v82 + 72) * v27, v4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB090, &qword_25454DBE0);
    v42 = *(v41 + 48);
    v43 = *(v35 + 32);
    v31 = v74;
    v43(v74, v36, v37);
    (*(v39 + 32))(v31 + v42, v40, v4);
    (*(*(v41 - 8) + 56))(v31, 0, 1, v41);
    v30 = v75;
    v26 = v76;
LABEL_17:
    sub_2544B14E8(v31, v30, &qword_27F5FB088, &qword_25454DBD8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB090, &qword_25454DBE0);
    v45 = (*(*(v44 - 8) + 48))(v30, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v4;
    v49 = v73;
    v50 = v81;
    (*v79)(v73, v30, v81);
    v51 = v69;
    (*v78)(v69, v30 + v47, v48);
    v52 = v70;
    v53 = sub_2544DA750(v49);
    v55 = v54;
    (*v67)(v49, v50);
    if ((v55 & 1) == 0)
    {
      (*v68)(v51, v48);
      return 0;
    }

    v56 = v82;
    v57 = *(v52 + 56) + *(v82 + 72) * v53;
    v58 = v80;
    (*(v82 + 16))(v80, v57, v48);
    sub_2544B4DE4(&qword_27F5FB0B0, MEMORY[0x277D154D8]);
    v59 = sub_25454BC44();
    v60 = *(v56 + 8);
    v60(v58, v48);
    result = (v60)(v51, v48);
    v4 = v48;
    if ((v59 & 1) == 0)
    {
      return v46;
    }
  }

  if (v63 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v63;
  }

  v29 = v28 - 1;
  v31 = v74;
  v30 = v75;
  while (1)
  {
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v32 >= v63)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB090, &qword_25454DBE0);
      (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
      v26 = 0;
      v20 = v29;
      goto LABEL_17;
    }

    v33 = *(v64 + 8 * v32);
    ++v20;
    if (v33)
    {
      v76 = (v33 - 1) & v33;
      v27 = __clz(__rbit64(v33)) | (v32 << 6);
      v20 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t CameraDetailsViewModel.State.Config.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_254549394();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v28 - v9;
  v10 = sub_2545497D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB010, &qword_25454DB18);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = *v1;
  sub_25454C404();
  v20 = type metadata accessor for CameraDetailsViewModel.State.Config();
  sub_2544AE240(&v1[v20[5]], v18, &qword_27F5FB010, &qword_25454DB18);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_25454C404();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_25454C404();
    sub_2544B4DE4(&qword_27F5FB020, MEMORY[0x277D154D8]);
    sub_25454BBF4();
    (*(v11 + 8))(v14, v10);
  }

  sub_2544B3AF4(a1, *&v1[v20[6]]);
  v21 = &v1[v20[7]];
  v22 = v30;
  if (v21[8] == 1)
  {
    sub_25454C404();
  }

  else
  {
    v23 = *v21;
    sub_25454C404();
    MEMORY[0x259C0F4F0](v23);
  }

  v24 = v31;
  v25 = v29;
  sub_2544AE240(&v2[v20[8]], v29, &qword_27F5FB018, &qword_25454EE70);
  if ((*(v22 + 48))(v25, 1, v24) == 1)
  {
    return sub_25454C404();
  }

  v27 = v28;
  (*(v22 + 32))(v28, v25, v24);
  sub_25454C404();
  sub_2544B4DE4(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  sub_25454BBF4();
  return (*(v22 + 8))(v27, v24);
}

uint64_t CameraDetailsViewModel.State.Config.hashValue.getter()
{
  sub_25454C3E4();
  CameraDetailsViewModel.State.Config.hash(into:)(v1);
  return sub_25454C434();
}

uint64_t sub_2544B2F68()
{
  sub_25454C3E4();
  CameraDetailsViewModel.State.Config.hash(into:)(v1);
  return sub_25454C434();
}

uint64_t sub_2544B2FAC()
{
  sub_25454C3E4();
  CameraDetailsViewModel.State.Config.hash(into:)(v1);
  return sub_25454C434();
}

uint64_t sub_2544B2FE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB010, &qword_25454DB18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for CameraDetailsViewModel.State.Config();
  __swift_allocate_value_buffer(v4, qword_27F604AA0);
  v5 = __swift_project_value_buffer(v4, qword_27F604AA0);
  v6 = sub_2545497D4();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_2544D710C(MEMORY[0x277D84F90]);
  v9 = v4[8];
  v10 = sub_254549394();
  (*(*(v10 - 8) + 56))(&v5[v9], 1, 1, v10);
  *v5 = 0;
  result = sub_2544B14E8(v3, &v5[v4[5]], &qword_27F5FB010, &qword_25454DB18);
  *&v5[v4[6]] = v8;
  v12 = &v5[v4[7]];
  *v12 = 0;
  v12[8] = 1;
  *&v5[v4[9]] = v7;
  return result;
}

uint64_t sub_2544B3180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB078, &qword_25454DBC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34[-v6];
  v8 = sub_254549394();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v34[-v14];
  v16 = type metadata accessor for CameraDetailsViewModel.InputID(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2544B4D64(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *(v9 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v21(v15, v19, v8);
    v22 = sub_254549834();
    if (*(v22 + 16) && (v23 = sub_2544DA750(v15), (v24 & 1) != 0))
    {
      v25 = v23;
      v26 = *(v22 + 56);
      v27 = sub_254549D04();
      v28 = *(v27 - 8);
      (*(v28 + 16))(a2, v26 + *(v28 + 72) * v25, v27);
      (*(v9 + 8))(v15, v8);

      return (*(v28 + 56))(a2, 0, 1, v27);
    }

    else
    {

      (*(v9 + 8))(v15, v8);
      v33 = sub_254549D04();
      return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
    }
  }

  else
  {
    v21(v13, v19, v8);
    v30 = sub_254549834();
    v31 = sub_254549D04();
    v32 = (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
    MEMORY[0x28223BE20](v32);
    *&v34[-16] = v13;
    sub_2544B37F8(v7, sub_2544B4DC8, &v34[-32], v30, a2);

    sub_2544AE150(v7, &qword_27F5FB078, &qword_25454DBC8);
    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_2544B3578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v22 = a3;
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB080, &qword_25454DBD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v21 = a2;
  sub_2544AE240(a2, &v19 - v11, &qword_27F5FB080, &qword_25454DBD0);
  v13 = *(v9 + 48);
  sub_254549CD4();
  v14 = sub_254549D04();
  v15 = *(v14 - 8);
  (*(v15 + 8))(&v12[v13], v14);
  LOBYTE(v13) = sub_254549374();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v12, v4);
  if ((v13 & 1) == 0)
  {
    return sub_2544AE240(v20, v22, &qword_27F5FB078, &qword_25454DBC8);
  }

  sub_2544AE240(v21, v12, &qword_27F5FB080, &qword_25454DBD0);
  v17 = v22;
  (*(v15 + 32))(v22, &v12[*(v9 + 48)], v14);
  (*(v15 + 56))(v17, 0, 1, v14);
  return (v16)(v12, v4);
}

uint64_t sub_2544B37F8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v36 = a2;
  v37 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB078, &qword_25454DBC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = &v33 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB080, &qword_25454DBD0);
  v13 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v33 - v14;
  sub_2544AE240(a1, a5, &qword_27F5FB078, &qword_25454DBC8);
  v15 = a4 + 64;
  v16 = 1 << *(a4 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a4 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = a4;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = a5;
      v39 = v6;
      v23 = v21;
LABEL_9:
      v24 = __clz(__rbit64(v18)) | (v23 << 6);
      v25 = v38;
      v26 = *(v38 + 48);
      v27 = sub_254549394();
      v28 = v33;
      (*(*(v27 - 8) + 16))(v33, v26 + *(*(v27 - 8) + 72) * v24, v27);
      v29 = *(v25 + 56);
      v30 = sub_254549D04();
      (*(*(v30 - 8) + 16))(v28 + *(v34 + 48), v29 + *(*(v30 - 8) + 72) * v24, v30);
      v31 = v35;
      a5 = v22;
      v32 = v39;
      v36(v22, v28);
      v6 = v32;
      sub_2544AE150(v28, &qword_27F5FB080, &qword_25454DBD0);
      if (v32)
      {
        break;
      }

      v18 &= v18 - 1;
      sub_2544AE150(v22, &qword_27F5FB078, &qword_25454DBC8);
      result = sub_2544B14E8(v31, v22, &qword_27F5FB078, &qword_25454DBC8);
      v21 = v23;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return sub_2544AE150(v22, &qword_27F5FB078, &qword_25454DBC8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
      }

      v18 = *(v15 + 8 * v23);
      ++v21;
      if (v18)
      {
        v22 = a5;
        v39 = v6;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2544B3AF4(__int128 *a1, uint64_t a2)
{
  v63 = a1;
  v69 = sub_2545497D4();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_254549394();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB088, &qword_25454DBD8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = *(a2 + 64);
  v52 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v51 = (v17 + 63) >> 6;
  v55 = v6 + 16;
  v54 = v3 + 16;
  v65 = (v6 + 32);
  v20 = (v3 + 32);
  v58 = v6;
  v59 = v3;
  v61 = (v3 + 8);
  v62 = (v6 + 8);
  v60 = a2;

  v22 = 0;
  v23 = 0;
  v57 = v13;
  v56 = v15;
  v53 = (v3 + 32);
  if (v19)
  {
    while (1)
    {
      v64 = v22;
      v24 = v23;
LABEL_13:
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v60;
      v30 = v58;
      v31 = v66;
      v32 = v67;
      (*(v58 + 16))(v66, *(v60 + 48) + *(v58 + 72) * v28, v67);
      v33 = v59;
      v34 = v68;
      v35 = v69;
      (*(v59 + 16))(v68, *(v29 + 56) + *(v59 + 72) * v28, v69);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB090, &qword_25454DBE0);
      v37 = *(v36 + 48);
      v38 = *(v30 + 32);
      v13 = v57;
      v38(v57, v31, v32);
      v39 = *(v33 + 32);
      v20 = v53;
      v39(&v13[v37], v34, v35);
      (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
      v26 = v24;
      v15 = v56;
      v22 = v64;
LABEL_14:
      sub_2544B14E8(v13, v15, &qword_27F5FB088, &qword_25454DBD8);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB090, &qword_25454DBE0);
      if ((*(*(v40 - 8) + 48))(v15, 1, v40) == 1)
      {
        break;
      }

      v41 = *(v40 + 48);
      v42 = v66;
      v43 = v67;
      (*v65)(v66, v15, v67);
      v44 = &v15[v41];
      v46 = v68;
      v45 = v69;
      (*v20)(v68, v44, v69);
      v47 = v63[3];
      v72 = v63[2];
      v73 = v47;
      v74 = *(v63 + 8);
      v48 = v63[1];
      v70 = *v63;
      v71 = v48;
      sub_2544B4DE4(&qword_27F5FB028, MEMORY[0x277CC95F0]);
      sub_25454BBF4();
      (*v62)(v42, v43);
      sub_2544B4DE4(&qword_27F5FB020, MEMORY[0x277D154D8]);
      sub_25454BBF4();
      (*v61)(v46, v45);
      result = sub_25454C434();
      v22 ^= result;
      v23 = v26;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x259C0F4F0](v22);
  }

  else
  {
LABEL_5:
    if (v51 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v51;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v51)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB090, &qword_25454DBE0);
        (*(*(v49 - 8) + 56))(v13, 1, 1, v49);
        v19 = 0;
        goto LABEL_14;
      }

      v19 = *(v52 + 8 * v24);
      ++v23;
      if (v19)
      {
        v64 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s7HomeUI222CameraDetailsViewModelC5StateC6ConfigV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v54 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB098, &qword_25454DBE8);
  v12 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v54 - v13;
  v14 = sub_2545497D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v63 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB010, &qword_25454DB18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB0A0, &unk_25454DBF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - v24;
  if (*a1 != *a2)
  {
    goto LABEL_2;
  }

  v56 = v8;
  v57 = v5;
  v55 = v4;
  v58 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v59 = a1;
  v27 = *(v58 + 20);
  v28 = *(v22 + 48);
  sub_2544AE240(&a1[v27], v25, &qword_27F5FB010, &qword_25454DB18);
  sub_2544AE240(&a2[v27], &v25[v28], &qword_27F5FB010, &qword_25454DB18);
  v29 = *(v15 + 48);
  if (v29(v25, 1, v14) != 1)
  {
    sub_2544AE240(v25, v21, &qword_27F5FB010, &qword_25454DB18);
    if (v29(&v25[v28], 1, v14) != 1)
    {
      v34 = v63;
      (*(v15 + 32))(v63, &v25[v28], v14);
      sub_2544B4DE4(&qword_27F5FB0B0, MEMORY[0x277D154D8]);
      v35 = sub_25454BC44();
      v36 = *(v15 + 8);
      v36(v34, v14);
      v36(v21, v14);
      sub_2544AE150(v25, &qword_27F5FB010, &qword_25454DB18);
      if ((v35 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_12;
    }

    (*(v15 + 8))(v21, v14);
LABEL_8:
    v30 = &qword_27F5FB0A0;
    v31 = &unk_25454DBF0;
    v32 = v25;
LABEL_9:
    sub_2544AE150(v32, v30, v31);
    v26 = 0;
    return v26 & 1;
  }

  if (v29(&v25[v28], 1, v14) != 1)
  {
    goto LABEL_8;
  }

  sub_2544AE150(v25, &qword_27F5FB010, &qword_25454DB18);
LABEL_12:
  v37 = v58;
  v38 = v59;
  if (sub_2544B24CC(*&v59[*(v58 + 24)], *&a2[*(v58 + 24)]))
  {
    v39 = *(v37 + 28);
    v40 = &v38[v39];
    v41 = v38[v39 + 8];
    v42 = a2;
    v43 = &a2[v39];
    v44 = a2[v39 + 8];
    if ((v41 & 1) == 0)
    {
      if (*v40 != *v43)
      {
        LOBYTE(v44) = 1;
      }

      v46 = v56;
      v45 = v57;
      v47 = v62;
      if (v44)
      {
        goto LABEL_2;
      }

      goto LABEL_19;
    }

    v46 = v56;
    v45 = v57;
    v47 = v62;
    if (v44)
    {
LABEL_19:
      v48 = *(v37 + 32);
      v49 = v61;
      v50 = *(v60 + 48);
      sub_2544AE240(&v38[v48], v61, &qword_27F5FB018, &qword_25454EE70);
      sub_2544AE240(&v42[v48], v49 + v50, &qword_27F5FB018, &qword_25454EE70);
      v51 = *(v45 + 48);
      v52 = v55;
      if (v51(v49, 1, v55) == 1)
      {
        if (v51(v49 + v50, 1, v52) == 1)
        {
          sub_2544AE150(v49, &qword_27F5FB018, &qword_25454EE70);
          v26 = 1;
          return v26 & 1;
        }
      }

      else
      {
        sub_2544AE240(v49, v47, &qword_27F5FB018, &qword_25454EE70);
        if (v51(v49 + v50, 1, v52) != 1)
        {
          (*(v45 + 32))(v46, v49 + v50, v52);
          sub_2544B4DE4(&qword_27F5FB0A8, MEMORY[0x277CC95F0]);
          v26 = sub_25454BC44();
          v53 = *(v45 + 8);
          v53(v46, v52);
          v53(v47, v52);
          sub_2544AE150(v49, &qword_27F5FB018, &qword_25454EE70);
          return v26 & 1;
        }

        (*(v45 + 8))(v47, v52);
      }

      v30 = &qword_27F5FB098;
      v31 = &qword_25454DBE8;
      v32 = v49;
      goto LABEL_9;
    }
  }

LABEL_2:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_2544B4808(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB010, &qword_25454DB18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2544B495C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB010, &qword_25454DB18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_2544B4A9C()
{
  sub_2544B4CAC(319, &qword_27F5FB048, MEMORY[0x277D154D8]);
  if (v0 <= 0x3F)
  {
    sub_2544B4BB0();
    if (v1 <= 0x3F)
    {
      sub_2544B4C5C();
      if (v2 <= 0x3F)
      {
        sub_2544B4CAC(319, &qword_27F5FB060, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          sub_2544B4D00();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2544B4BB0()
{
  if (!qword_27F5FB050)
  {
    sub_254549394();
    sub_2545497D4();
    sub_2544B4DE4(&qword_27F5FB028, MEMORY[0x277CC95F0]);
    v0 = sub_25454BBD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB050);
    }
  }
}

void sub_2544B4C5C()
{
  if (!qword_27F5FB058)
  {
    v0 = sub_25454C054();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB058);
    }
  }
}

void sub_2544B4CAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25454C054();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2544B4D00()
{
  if (!qword_27F5FB068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB070, &qword_25454DBC0);
    v0 = sub_25454BDA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB068);
    }
  }
}

uint64_t sub_2544B4D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraDetailsViewModel.InputID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544B4DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544B4E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2544AE240(a3, v27 - v11, &qword_27F5FAF28, &qword_25454D6C0);
  v13 = sub_25454BE44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2544AE150(v12, &qword_27F5FAF28, &qword_25454D6C0);
  }

  else
  {
    sub_25454BE34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25454BDB4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_25454BCE4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2544B04B0();

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2544AE150(v27[0], &qword_27F5FAF28, &qword_25454D6C0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2544AE150(a3, &qword_27F5FAF28, &qword_25454D6C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_2544B04B0();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2544B5138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2544AE240(a3, v27 - v11, &qword_27F5FAF28, &qword_25454D6C0);
  v13 = sub_25454BE44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2544AE150(v12, &qword_27F5FAF28, &qword_25454D6C0);
  }

  else
  {
    sub_25454BE34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25454BDB4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25454BCE4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2544AE150(a3, &qword_27F5FAF28, &qword_25454D6C0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2544AE150(a3, &qword_27F5FAF28, &qword_25454D6C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2544B5438()
{
  v1 = sub_254549394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CameraDetailsViewModel.InputID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2544B92DC(v0, v9, type metadata accessor for CameraDetailsViewModel.InputID);
  v10 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x259C0F4F0](v10);
  sub_2544B9294(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  sub_25454BBF4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2544B55FC()
{
  sub_25454C3E4();
  sub_2544B5438();
  return sub_25454C434();
}

uint64_t sub_2544B5640()
{
  sub_25454C3E4();
  sub_2544B5438();
  return sub_25454C434();
}

uint64_t sub_2544B56E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2544B9294(&qword_27F5FB0C0, type metadata accessor for CameraDetailsViewModel.State);
  sub_2545494C4();

  v4 = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config;
  swift_beginAccess();
  return sub_2544B92DC(v3 + v4, a2, type metadata accessor for CameraDetailsViewModel.State.Config);
}

uint64_t sub_2544B57BC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2544B92DC(a1, v7, type metadata accessor for CameraDetailsViewModel.State.Config);
  v8 = *a2;
  return sub_2544B5960(v7);
}

uint64_t sub_2544B585C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2544B9294(&qword_27F5FB0C0, type metadata accessor for CameraDetailsViewModel.State);
  sub_2545494C4();

  v3 = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config;
  swift_beginAccess();
  return sub_2544B92DC(v5 + v3, a1, type metadata accessor for CameraDetailsViewModel.State.Config);
}

uint64_t sub_2544B5960(unsigned __int8 *a1)
{
  v3 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config;
  swift_beginAccess();
  sub_2544B92DC(v1 + v7, v6, type metadata accessor for CameraDetailsViewModel.State.Config);
  v8 = _s7HomeUI222CameraDetailsViewModelC5StateC6ConfigV2eeoiySbAG_AGtFZ_0(v6, a1);
  sub_2544B8EFC(v6, type metadata accessor for CameraDetailsViewModel.State.Config);
  if (v8)
  {
    sub_2544B92DC(a1, v6, type metadata accessor for CameraDetailsViewModel.State.Config);
    swift_beginAccess();
    sub_2544B8D18(v6, v1 + v7);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[1] = v1;
    sub_2544B9294(&qword_27F5FB0C0, type metadata accessor for CameraDetailsViewModel.State);
    sub_2545494B4();
  }

  return sub_2544B8EFC(a1, type metadata accessor for CameraDetailsViewModel.State.Config);
}

uint64_t sub_2544B5B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2544B92DC(a2, v7, type metadata accessor for CameraDetailsViewModel.State.Config);
  v8 = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config;
  swift_beginAccess();
  sub_2544B8D18(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_2544B5C34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2544B9294(&qword_27F5FB0C0, type metadata accessor for CameraDetailsViewModel.State);
  sub_2545494C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_2545494E4();

  v4[7] = sub_2544B567C();
  return sub_2544B5D6C;
}

void sub_2544B5D6C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2545494D4();

  free(v1);
}

uint64_t CameraDetailsViewModel.State.deinit()
{
  sub_2544B8EFC(v0 + OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config, type metadata accessor for CameraDetailsViewModel.State.Config);
  v1 = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State___observationRegistrar;
  v2 = sub_254549504();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CameraDetailsViewModel.State.__deallocating_deinit()
{
  sub_2544B8EFC(v0 + OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config, type metadata accessor for CameraDetailsViewModel.State.Config);
  v1 = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State___observationRegistrar;
  v2 = sub_254549504();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CameraDetailsViewModel.__allocating_init(cameraProfile:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CameraDetailsViewModel.InputID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 48);
  v9 = *(v2 + 52);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 120) = 0;
  sub_254549CF4();
  swift_storeEnumTagMultiPayload();
  sub_2544B9344(v7, v10 + OBJC_IVAR____TtC7HomeUI222CameraDetailsViewModel_id, type metadata accessor for CameraDetailsViewModel.InputID);
  v11 = type metadata accessor for CameraDetailsViewModel.State(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  if (qword_27F5FAC80 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v16 = __swift_project_value_buffer(v15, qword_27F604AA0);
  sub_2544B92DC(v16, v14 + OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config, type metadata accessor for CameraDetailsViewModel.State.Config);
  sub_2545494F4();
  v17 = sub_254549D04();
  (*(*(v17 - 8) + 8))(a1, v17);
  *(v10 + 112) = v14;
  return v10;
}

uint64_t CameraDetailsViewModel.init(cameraProfile:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CameraDetailsViewModel.InputID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + 120) = 0;
  sub_254549CF4();
  swift_storeEnumTagMultiPayload();
  sub_2544B9344(v7, v2 + OBJC_IVAR____TtC7HomeUI222CameraDetailsViewModel_id, type metadata accessor for CameraDetailsViewModel.InputID);
  v8 = type metadata accessor for CameraDetailsViewModel.State(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  if (qword_27F5FAC80 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v13 = __swift_project_value_buffer(v12, qword_27F604AA0);
  sub_2544B92DC(v13, v11 + OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config, type metadata accessor for CameraDetailsViewModel.State.Config);
  sub_2545494F4();
  v14 = sub_254549D04();
  (*(*(v14 - 8) + 8))(a1, v14);
  *(v2 + 112) = v11;
  return v2;
}

uint64_t static CameraDetailsViewModel.createAndSetup(accessoryID:homeStateStream:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_254549394();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v13(v12, a1, v8);
  v14 = type metadata accessor for CameraDetailsViewModel(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 120) = 0;
  v13((v17 + OBJC_IVAR____TtC7HomeUI222CameraDetailsViewModel_id), v12, v8);
  type metadata accessor for CameraDetailsViewModel.InputID(0);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for CameraDetailsViewModel.State(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  if (qword_27F5FAC80 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v23 = __swift_project_value_buffer(v22, qword_27F604AA0);
  sub_2544B92DC(v23, v21 + OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config, type metadata accessor for CameraDetailsViewModel.State.Config);
  sub_2545494F4();
  (*(v9 + 8))(v12, v8);
  *(v17 + 112) = v21;
  v24 = sub_25454BE44();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v17;
  v25[5] = a2;

  sub_2544B5138(0, 0, v7, &unk_25454DC38, v25);

  return v17;
}

uint64_t sub_2544B655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2544AE3EC;

  return sub_2544B67B8(a5);
}

uint64_t CameraDetailsViewModel.deinit()
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);

    sub_25454BEA4();
  }

  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  sub_2544B8EFC(v0 + OBJC_IVAR____TtC7HomeUI222CameraDetailsViewModel_id, type metadata accessor for CameraDetailsViewModel.InputID);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t _s7HomeUI222CameraDetailsViewModelCfZ(uint64_t a1)
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 120))
  {
    v2 = *(a1 + 120);

    sub_25454BEA4();
  }

  v3 = *(a1 + 112);

  v4 = *(a1 + 120);

  sub_2544B8EFC(a1 + OBJC_IVAR____TtC7HomeUI222CameraDetailsViewModel_id, type metadata accessor for CameraDetailsViewModel.InputID);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2544B67B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB120, &qword_25454DDA8);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2544B68D0, v1, 0);
}

uint64_t sub_2544B68D0()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_2545496D4();
  v3 = sub_25454BE44();
  v0[10] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[11] = v5;
  v0[12] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = *(MEMORY[0x277D153C0] + 4);

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_2544B6A04;
  v8 = v0[9];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  return MEMORY[0x28216E940](v8, 0, 0, v9, sub_2544B93AC, v11, v10);
}

uint64_t sub_2544B6A04()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v6 = *v0;

  sub_2544AE150(v2, &qword_27F5FAF28, &qword_25454D6C0);

  return MEMORY[0x2822009F8](sub_2544B6B64, v3, 0);
}

uint64_t sub_2544B6B64()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v17 = *(v0 + 32);
  (*(v0 + 88))();
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v4, v3, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v7 + 32))(v12 + v10, v4, v6);
  *(v12 + v11) = v9;
  v13 = sub_2544B5138(0, 0, v17, &unk_25454DDB8, v12);
  (*(v7 + 8))(v3, v6);
  v14 = *(v8 + 120);
  *(v8 + 120) = v13;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2544B6D08(uint64_t a1)
{
  sub_2545496D4();
  sub_2545496C4();
  v2 = sub_2544B9294(&qword_27F5FB140, MEMORY[0x277D153D0]);
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_2545496C4();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB128, &qword_25454DDC0);
  sub_254549534();
}

uint64_t sub_2544B6E64()
{
  sub_2545496D4();
  sub_2545496C4();
  sub_2544B9294(&qword_27F5FB140, MEMORY[0x277D153D0]);
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549674();
  sub_254549644();
}

uint64_t sub_2544B6F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_254549C84();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_254549844();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB128, &qword_25454DDC0);
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = sub_2545496A4();
  v5[16] = v15;
  v16 = *(v15 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB130, &qword_25454DDC8) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB138, &qword_25454DDD0);
  v5[20] = v19;
  v20 = *(v19 - 8);
  v5[21] = v20;
  v21 = *(v20 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2544B71D0, 0, 0);
}

uint64_t sub_2544B71D0()
{
  v1 = v0[22];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB120, &qword_25454DDA8);
  sub_254549514();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D853A0] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_2544B72B4;
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];

  return MEMORY[0x2821FF728](v7, 0, 0, v8);
}

uint64_t sub_2544B72B4()
{
  v2 = *(*v1 + 184);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_2544B73C4, 0, 0);
  }

  return result;
}

uint64_t sub_2544B73C4()
{
  v1 = v0[19];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    v2 = v0[18];
    v3 = v0[15];
    v4 = v0[12];
    v5 = v0[9];
    (*(v0[21] + 8))(v0[22], v0[20]);

    v6 = v0[1];

    return v6();
  }

  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  sub_2544B95FC(v1, v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_2544AE150(v0[15], &qword_27F5FB128, &qword_25454DDC0);
LABEL_16:
    v22 = *(MEMORY[0x277D853A0] + 4);
    v23 = swift_task_alloc();
    v0[23] = v23;
    *v23 = v0;
    v23[1] = sub_2544B72B4;
    v24 = v0[22];
    v25 = v0[19];
    v26 = v0[20];

    return MEMORY[0x2821FF728](v25, 0, 0, v26);
  }

  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  if (qword_27F5FAC88 != -1)
  {
    swift_once();
  }

  v11 = sub_25454A2E4();
  __swift_project_value_buffer(v11, qword_27F604AB8);
  v12 = sub_25454A2C4();
  v13 = sub_25454BF94();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2544A5000, v12, v13, "Processing new snapshots", v14, 2u);
    MEMORY[0x259C0FDF0](v14, -1, -1);
  }

  v15 = v0[6];

  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    goto LABEL_16;
  }

  v17 = v0[12];
  v18 = v0[9];
  sub_254549654();
  sub_254549664();
  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_2544B7718;
  v20 = v0[12];
  v21 = v0[9];

  return sub_2544B79AC(v20, v21);
}

uint64_t sub_2544B7718()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);
  v7 = *(*v0 + 64);
  v8 = *(*v0 + 56);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2544B78F0, 0, 0);
}

uint64_t sub_2544B78F0()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = *(MEMORY[0x277D853A0] + 4);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_2544B72B4;
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];

  return MEMORY[0x2821FF728](v4, 0, 0, v5);
}

uint64_t sub_2544B79AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2545495B4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_254549CA4();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB078, &qword_25454DBC8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_254549D04();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB110, &qword_25454DDA0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2544B7B98, v2, 0);
}

uint64_t sub_2544B7B98()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[2];
  sub_2544B3180(v0[4] + OBJC_IVAR____TtC7HomeUI222CameraDetailsViewModel_id, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[15];
    sub_2544AE150(v0[11], &qword_27F5FB078, &qword_25454DBC8);
    v6 = type metadata accessor for CameraDetailsViewModel.State.Config();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v10 = v0[10];
    v28 = v10;
    v29 = v0[12];
    v31 = v0[9];
    v32 = v0[8];
    v11 = v0[6];
    v12 = v0[7];
    v26 = v0[5];
    v14 = v0[2];
    v13 = v0[3];
    (*(v9 + 32))(v8, v0[11]);
    sub_254549CB4();
    v15 = *(sub_254549C94() + 16);

    v30 = v15 != 0;
    v16 = type metadata accessor for CameraDetailsViewModel.State.Config();
    v17 = v16[5];
    sub_254549814();
    sub_2545495A4();
    (*(v11 + 8))(v12, v26);
    v18 = sub_2545497D4();
    (*(*(v18 - 8) + 56))(&v7[v17], 0, 1, v18);
    v27 = sub_254549824();
    v19 = sub_254549CC4();
    LOBYTE(v17) = v20;
    v21 = v16[8];
    sub_254549CF4();
    v22 = sub_254549394();
    (*(*(v22 - 8) + 56))(&v7[v21], 0, 1, v22);
    sub_2544B9294(&qword_27F5FB118, MEMORY[0x277D16548]);
    v23 = sub_2545498A4();
    (*(v31 + 8))(v28, v32);
    (*(v9 + 8))(v8, v29);
    *v7 = v30;
    *&v7[v16[6]] = v27;
    v24 = &v7[v16[7]];
    *v24 = v19;
    v24[8] = v17 & 1;
    *&v7[v16[9]] = v23;
    (*(*(v16 - 1) + 56))(v7, 0, 1, v16);
  }

  return MEMORY[0x2822009F8](sub_2544B7EF4, 0, 0);
}

uint64_t sub_2544B7EF4()
{
  sub_25454BE14();
  *(v0 + 128) = sub_25454BE04();
  v2 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_2544B7F88, v2, v1);
}

uint64_t sub_2544B7F88()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[4];

  sub_2544B80EC(v2, v3);
  v4 = v0[4];

  return MEMORY[0x2822009F8](sub_2544B8038, v4, 0);
}

uint64_t sub_2544B8038()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  sub_2544AE150(v0[15], &qword_27F5FB110, &qword_25454DDA0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2544B80EC(uint64_t a1, uint64_t a2)
{
  v23[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB110, &qword_25454DDA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for CameraDetailsViewModel.State.Config();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544AE240(a1, v6, &qword_27F5FB110, &qword_25454DDA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2544AE150(v6, &qword_27F5FB110, &qword_25454DDA0);
  }

  else
  {
    sub_2544B9344(v6, v14, type metadata accessor for CameraDetailsViewModel.State.Config);
    v15 = *(v23[0] + 112);
    swift_getKeyPath();
    v23[1] = v15;
    sub_2544B9294(&qword_27F5FB0C0, type metadata accessor for CameraDetailsViewModel.State);
    sub_2545494C4();

    v16 = OBJC_IVAR____TtCC7HomeUI222CameraDetailsViewModel5State__config;
    swift_beginAccess();
    sub_2544B92DC(v15 + v16, v12, type metadata accessor for CameraDetailsViewModel.State.Config);
    LOBYTE(v16) = _s7HomeUI222CameraDetailsViewModelC5StateC6ConfigV2eeoiySbAG_AGtFZ_0(v12, v14);
    sub_2544B8EFC(v12, type metadata accessor for CameraDetailsViewModel.State.Config);
    if (v16)
    {
      v17 = v14;
    }

    else
    {
      if (qword_27F5FAC88 != -1)
      {
        swift_once();
      }

      v18 = sub_25454A2E4();
      __swift_project_value_buffer(v18, qword_27F604AB8);
      v19 = sub_25454A2C4();
      v20 = sub_25454BF94();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2544A5000, v19, v20, "Generated new config", v21, 2u);
        MEMORY[0x259C0FDF0](v21, -1, -1);
      }

      sub_2544B92DC(v14, v12, type metadata accessor for CameraDetailsViewModel.State.Config);
      sub_2544B5960(v12);
      v17 = v14;
    }

    sub_2544B8EFC(v17, type metadata accessor for CameraDetailsViewModel.State.Config);
  }
}

uint64_t sub_2544B84FC()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F604AB8);
  __swift_project_value_buffer(v0, qword_27F604AB8);
  return sub_25454A2D4();
}

uint64_t sub_2544B8584(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2544B867C;

  return v7(a1);
}

uint64_t sub_2544B867C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2544B8774(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_2544B8868;

  return v6(v2 + 16);
}

uint64_t sub_2544B8868()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2544B8998(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = sub_254549394();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for CameraDetailsViewModel.InputID(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB108, &unk_25454DD90);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_2544B92DC(a1, &v30 - v20, type metadata accessor for CameraDetailsViewModel.InputID);
  sub_2544B92DC(v30, &v21[v22], type metadata accessor for CameraDetailsViewModel.InputID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2544B92DC(v21, v16, type metadata accessor for CameraDetailsViewModel.InputID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = v31;
      (*(v3 + 32))(v9, &v21[v22], v31);
      v24 = sub_254549374();
      v25 = *(v3 + 8);
      v25(v9, v28);
      v26 = v16;
      v27 = v28;
      goto LABEL_6;
    }

LABEL_8:
    (*(v3 + 8))(v16, v31);
    sub_2544AE150(v21, &qword_27F5FB108, &unk_25454DD90);
    v24 = 0;
    return v24 & 1;
  }

  sub_2544B92DC(v21, v14, type metadata accessor for CameraDetailsViewModel.InputID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v14;
    goto LABEL_8;
  }

  v23 = v31;
  (*(v3 + 32))(v7, &v21[v22], v31);
  v24 = sub_254549374();
  v25 = *(v3 + 8);
  v25(v7, v23);
  v26 = v14;
  v27 = v23;
LABEL_6:
  v25(v26, v27);
  sub_2544B8EFC(v21, type metadata accessor for CameraDetailsViewModel.InputID);
  return v24 & 1;
}

uint64_t sub_2544B8D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraDetailsViewModel.State.Config();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544B8DBC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2544B8DF4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2544B8E3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE3EC;

  return sub_2544B655C(a1, v4, v5, v7, v6);
}

uint64_t sub_2544B8EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2544B8F64()
{
  result = type metadata accessor for CameraDetailsViewModel.InputID(319);
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

uint64_t sub_2544B904C()
{
  result = type metadata accessor for CameraDetailsViewModel.State.Config();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_254549504();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2544B91EC()
{
  result = sub_254549394();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2544B9294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544B92DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2544B9344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2544B93B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2544B93EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB120, &qword_25454DDA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2544B94D0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB120, &qword_25454DDA8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2544AE660;

  return sub_2544B6F50(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2544B95FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB128, &qword_25454DDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544B966C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2544B96AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2544B6E64();
}

uint64_t sub_2544B96D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2544B9708(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2544AE660;

  return sub_2544B8774(a1, v5);
}

uint64_t sub_2544B97C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2544AE3EC;

  return sub_2544B8774(a1, v5);
}

uint64_t sub_2544B9878(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2544AE660;

  return sub_2544B8584(a1, v5);
}

uint64_t CameraWaveform.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254549604();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CameraWaveform.init(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CameraWaveform();
  v5 = *(v4 + 20);
  type metadata accessor for WaveformModel();
  sub_25454BAB4();
  v6 = a2 + *(v4 + 24);
  sub_254549C04();
  sub_2544BB9B0(&qword_27F5FB148, MEMORY[0x277D15EA8]);
  *v6 = sub_25454A474();
  *(v6 + 8) = v7 & 1;
  v8 = sub_254549604();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t type metadata accessor for CameraWaveform()
{
  result = qword_27F5FB170;
  if (!qword_27F5FB170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraWaveform.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAD60, &qword_25454CEF8);
  v2 = *(v1 - 8);
  v52 = (v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v50 - v4;
  v5 = sub_2545494A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for CameraWaveform();
  v10 = *(v50 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB150, &qword_25454DE08);
  sub_25454BAC4();
  v11 = sub_2544BAFB4();

  *v9 = v11;
  v12 = *MEMORY[0x277D26A50];
  v13 = sub_254549494();
  (*(*(v13 - 8) + 104))(v9, v12, v13);
  (*(v6 + 104))(v9, *MEMORY[0x277D26A68], v5);
  sub_254549424();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB158, &qword_25454DE10);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = sub_25454AAE4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454AAD4();
  sub_25454BA94();
  v23 = sub_2544BB9B0(&qword_27F5FB160, MEMORY[0x277CE0068]);
  sub_25454A414();

  v24 = (*(v19 + 8))(v22, v18);
  MEMORY[0x28223BE20](v24);
  (*(v15 + 16))(&v50 - v17, &v50 - v17, v14);
  v56 = v18;
  v57 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = sub_25454A564();
  v26 = (*(v15 + 8))(&v50 - v17, v14);
  *(v54 + *(v52 + 11)) = v25;
  v27 = *(v50 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_2544BB118(v51, &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25454BE14();
  v29 = sub_25454BE04();
  v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v29;
  *(v31 + 24) = v32;
  sub_2544BB2E0(&v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  v33 = sub_25454BE44();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v50 - v36;
  sub_25454BE24();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v51 = sub_25454A6C4();
    v52 = &v50;
    v50 = *(v51 - 8);
    v38 = *(v50 + 64);
    MEMORY[0x28223BE20](v51);
    v40 = &v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_25454C154();

    v56 = 0xD000000000000029;
    v57 = 0x8000000254555020;
    v55 = 29;
    v41 = sub_25454C304();
    MEMORY[0x259C0EE40](v41);

    MEMORY[0x28223BE20](v42);
    (*(v34 + 16))(&v50 - v36, v37, v33);
    sub_25454A6B4();
    (*(v34 + 8))(v37, v33);
    v43 = v53;
    sub_2544BB420(v54, v53);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAD68, &qword_25454CF00);
    return (*(v50 + 32))(v43 + *(v44 + 36), v40, v51);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAD70, qword_25454CF08);
    v47 = v53;
    v48 = (v53 + *(v46 + 36));
    v49 = sub_25454A5F4();
    (*(v34 + 32))(&v48[*(v49 + 20)], &v50 - v36, v33);
    *v48 = &unk_25454DE28;
    *(v48 + 1) = v31;
    return sub_2544BB420(v54, v47);
  }
}

uint64_t sub_2544BA288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1B0, &qword_25454DEC8);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1B8, &qword_25454DED0);
  v3[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1C0, &qword_25454DED8);
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = sub_25454BE14();
  v3[19] = sub_25454BE04();
  v3[20] = sub_25454BE04();
  v12 = sub_25454BDB4();
  v3[21] = v12;
  v3[22] = v11;

  return MEMORY[0x2822009F8](sub_2544BA410, v12, v11);
}

uint64_t sub_2544BA410()
{
  v1 = v0[10];
  v0[23] = sub_2544BAB7C();
  v2 = *(MEMORY[0x277D15EA0] + 4);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_2544BA4BC;
  v4 = v0[12];
  v5 = v0[10];

  return MEMORY[0x28216FCE8](v4, v5);
}

uint64_t sub_2544BA4BC()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_2544BA600, v5, v4);
}

uint64_t sub_2544BA600()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1C8, &qword_25454DEE8);
  swift_getOpaqueTypeConformance2();
  sub_25454C1E4();
  v8 = sub_25454BDB4();
  v0[25] = v8;
  v0[26] = v7;

  return MEMORY[0x2822009F8](sub_2544BA700, v8, v7);
}

uint64_t sub_2544BA700()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  sub_2544AE1F0(&qword_27F5FB1D0, &qword_27F5FB1B8, &qword_25454DED0);
  sub_25454BEC4();
  v4 = v0[18];
  v5 = sub_25454BE04();
  v0[27] = v5;
  sub_2544AE1F0(&qword_27F5FB1D8, &qword_27F5FB1C0, &qword_25454DED8);
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_2544BA844;
  v8 = v0[17];
  v9 = v0[15];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 2, v5, v10);
}

uint64_t sub_2544BA844()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[27];

    v6 = v2[25];
    v7 = v2[26];

    return MEMORY[0x2822009F8](sub_2544BA958, v6, v7);
  }

  return result;
}

uint64_t sub_2544BA958()
{
  v1 = *(v0 + 16);
  if (*(v0 + 64))
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v12 = *(v0 + 80);
    v13 = *(type metadata accessor for CameraWaveform() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB150, &qword_25454DE08);
    sub_25454BAC4();
    v14 = *(*(v0 + 72) + 16);

    sub_254549464();

    v15 = *(v0 + 144);
    v16 = sub_25454BE04();
    *(v0 + 216) = v16;
    sub_2544AE1F0(&qword_27F5FB1D8, &qword_27F5FB1C0, &qword_25454DED8);
    v17 = *(MEMORY[0x277D856D8] + 4);
    v18 = swift_task_alloc();
    *(v0 + 224) = v18;
    *v18 = v0;
    v18[1] = sub_2544BA844;
    v19 = *(v0 + 136);
    v20 = *(v0 + 120);
    v21 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 16, v16, v21);
  }
}

uint64_t sub_2544BAB7C()
{
  v1 = sub_25454AA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for CameraWaveform() + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_25454BF84();
    v9 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2544BACD0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1E0, &qword_25454DEF0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2544BAD6C, 0, 0);
}

uint64_t sub_2544BAD6C()
{
  v1 = v0[4];
  sub_2544BB9F8(v0[3], v1);
  v2 = sub_254549614();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[4];
  if (v4 != 1)
  {
    v6 = sub_2545495F4();
    (*(v3 + 8))(v5, v2);
    v7 = *(v6 + 16);
    if (v7 < 6)
    {

      goto LABEL_5;
    }

    v19 = MEMORY[0x277D84F90];
    sub_2544D5778(0, v7, 0);
    v9 = v19[2];
    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      v12 = v19[3];
      if (v9 >= v12 >> 1)
      {
        sub_2544D5778((v12 > 1), v9 + 1, 1);
      }

      v19[2] = v9 + 1;
      *&v19[v9 + 4] = v11;
      v10 += 4;
      ++v9;
      --v7;
    }

    while (v7);
    v13 = v0[2];

    v15 = v19[2];
    if (v15)
    {
      *v0[2] = v19[4];
      if (v15 != 1)
      {
        v13[1] = v19[5];
        if (v15 >= 3)
        {
          v13[2] = v19[6];
          if (v15 != 3)
          {
            v13[3] = v19[7];
            if (v15 >= 5)
            {
              v13[4] = v19[8];
              if (v15 != 5)
              {
                v16 = v19[9];

                v13[5] = v16;
                goto LABEL_17;
              }

LABEL_25:
              __break(1u);
              return result;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_2544BBA68(v0[4]);
LABEL_5:
  v8 = v0[2];
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
LABEL_17:
  v17 = v0[4];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2544BAFB4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_254549484();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v6 = v0;
    v1 = sub_254549444();
    v7 = *(v0 + 24);
    *(v6 + 24) = v1;
  }

  return v1;
}

uint64_t sub_2544BB038()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2544BB078@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WaveformModel();
  v2 = swift_allocObject();
  v3 = sub_254549474();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_254549454();
  *(v2 + 16) = result;
  *(v2 + 24) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_2544BB118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraWaveform();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544BB17C()
{
  v1 = (type metadata accessor for CameraWaveform() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_254549604();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB168, &qword_25454DE20);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB150, &qword_25454DE08) + 28));

  v10 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2544BB2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraWaveform();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544BB344()
{
  v2 = *(type metadata accessor for CameraWaveform() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2544AE3EC;

  return sub_2544BA288(v4, v5, v0 + v3);
}

uint64_t sub_2544BB420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAD60, &qword_25454CEF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544BB4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549604();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB150, &qword_25454DE08);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2544BB5EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254549604();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB150, &qword_25454DE08);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2544BB704()
{
  sub_254549604();
  if (v0 <= 0x3F)
  {
    sub_2544BB800(319, &qword_27F5FB180, type metadata accessor for WaveformModel, MEMORY[0x277CE1438]);
    if (v1 <= 0x3F)
    {
      sub_2544BB800(319, &qword_27F5FB188, MEMORY[0x277D15EA8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2544BB800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2544BB864()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FAD60, &qword_25454CEF8);
  sub_2544BB8C8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2544BB8C8()
{
  result = qword_27F5FB190;
  if (!qword_27F5FB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FAD60, &qword_25454CEF8);
    sub_2544BB9B0(&qword_27F5FB198, MEMORY[0x277D269B8]);
    sub_2544AE1F0(&qword_27F5FB1A0, &qword_27F5FB1A8, &qword_25454DEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB190);
  }

  return result;
}

uint64_t sub_2544BB9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544BB9F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1E0, &qword_25454DEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544BBA68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1E0, &qword_25454DEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CameraWaveform.style(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_254549414();
  v3 = *(v20[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1E8, &unk_25454E810);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1F0, &qword_25454DEF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  type metadata accessor for CameraWaveform();
  sub_2544BBD28();
  sub_25454B294();
  if (v17)
  {
    sub_2545493F4();
  }

  else
  {
    sub_254549404();
  }

  v18 = v20[0];
  (*(v3 + 32))(v10, v6, v20[0]);
  (*(v3 + 56))(v10, 0, 1, v18);
  sub_254549434();
  sub_2544BBD80(v10);
  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_2544BBD28()
{
  result = qword_27F5FB1F8;
  if (!qword_27F5FB1F8)
  {
    type metadata accessor for CameraWaveform();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB1F8);
  }

  return result;
}

uint64_t sub_2544BBD80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB1E8, &unk_25454E810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s5StyleOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StyleOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2544BBE4C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2544BBE68(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2544BBE98()
{
  type metadata accessor for CameraWaveform();
  sub_2544BBD28();
  return swift_getOpaqueTypeConformance2();
}

id CameraController.State.prefersFilledContent.getter()
{
  v0 = sub_254549394();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  sub_254549B84();
  v6 = sub_254549364();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v12[0] = 0x69466F546D6F6F7ALL;
  v12[1] = 0xEB000000002D6C6CLL;
  MEMORY[0x259C0EE40](v6, v8);

  v9 = sub_25454BC74();

  v10 = [v5 BOOLForKey_];

  return v10;
}

void sub_2544BC06C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [objc_opt_self() standardUserDefaults];
  sub_254549B84();
  v11 = sub_254549364();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v15[0] = 0x69466F546D6F6F7ALL;
  v15[1] = 0xEB000000002D6C6CLL;
  MEMORY[0x259C0EE40](v11, v13);

  v14 = sub_25454BC74();

  LOBYTE(v9) = [v10 BOOLForKey_];

  *a2 = v9;
}

void sub_2544BC1F4(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = [objc_opt_self() standardUserDefaults];
  sub_254549B84();
  v12 = sub_254549364();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v16[0] = 0x69466F546D6F6F7ALL;
  v16[1] = 0xEB000000002D6C6CLL;
  MEMORY[0x259C0EE40](v12, v14);

  v15 = sub_25454BC74();

  [v11 setBool:v9 forKey:v15];
}

void CameraController.State.prefersFilledContent.setter(char a1)
{
  v2 = sub_254549394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  sub_254549B84();
  v8 = sub_254549364();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v12[0] = 0x69466F546D6F6F7ALL;
  v12[1] = 0xEB000000002D6C6CLL;
  MEMORY[0x259C0EE40](v8, v10);

  v11 = sub_25454BC74();

  [v7 setBool:a1 & 1 forKey:v11];
}

void (*CameraController.State.prefersFilledContent.modify(void *a1))(uint64_t **a1)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_254549394();
  v5[1] = v6;
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = v8;
  v5[2] = v8;
  v10 = objc_opt_self();
  v5[3] = v10;
  v11 = [v10 standardUserDefaults];
  sub_254549B84();
  v12 = sub_254549364();
  v14 = v13;
  v15 = *(v7 + 8);
  v5[4] = v15;
  v5[5] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v9, v6);
  MEMORY[0x259C0EE40](v12, v14);

  v16 = sub_25454BC74();

  v17 = [v11 BOOLForKey_];

  *(v5 + 48) = v17;
  return sub_2544BC6D0;
}

void sub_2544BC6D0(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v3 = (*a1)[5];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = (*a1)[1];
  v13 = *(*a1 + 48);
  v7 = [(*a1)[3] standardUserDefaults];
  sub_254549B84();
  v8 = sub_254549364();
  v10 = v9;
  v2(v4, v6);
  v11 = v1[2];
  MEMORY[0x259C0EE40](v8, v10);

  v12 = sub_25454BC74();

  [v7 setBool:v13 forKey:v12];

  free(v11);

  free(v1);
}

uint64_t CameraCell.init(state:contentMode:forceHideIcon:forceShowBlur:showProgressIndicator:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 9) = a3;
  *(a6 + 10) = a4;
  *(a6 + 11) = a5;
  return result;
}

uint64_t CameraCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (*(v1 + 11))
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 | v7;
  sub_2544BC91C(*v1, v5 | v6 | v7, a1);
  v9 = sub_25454BA54();
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB208, &qword_25454DF18) + 36);
  sub_2544BDBAC(v3, v5 | v8, v12);
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB210, &qword_25454DF20) + 36));
  *v13 = v9;
  v13[1] = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB218, &qword_25454DF28);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2544BC91C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v105 = a2;
  v114 = a3;
  v90 = sub_25454A1A4();
  v89 = *(v90 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB2E0, &qword_25454E008);
  v7 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v9 = &v86 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB2D0, &qword_25454E000);
  v10 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v96 = &v86 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB2C0, &qword_25454DFF8);
  v12 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v99 = &v86 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB2B0, &qword_25454DFF0);
  v14 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v86 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB2A0, &qword_25454DFE8);
  v16 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v86 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB290, &qword_25454DFE0);
  v18 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v102 = &v86 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB280, &qword_25454DFD8);
  v20 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v103 = &v86 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB270, &qword_25454DFD0);
  v22 = *(*(v108 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v108);
  v101 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = &v86 - v25;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB338, &qword_25454E028);
  v26 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v28 = &v86 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3B0, &qword_25454E0B8);
  v29 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v31 = &v86 - v30;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3B8, &qword_25454E0C0);
  v32 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v34 = &v86 - v33;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB258, &qword_25454DFC8);
  v35 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v37 = &v86 - v36;
  v107 = type metadata accessor for CameraDemoView();
  v38 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v40 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB248, &qword_25454DFC0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v112 = &v86 - v43;
  sub_25454BE14();
  v110 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_254549B64())
  {
    CameraDemoView.init(state:)(a1, v40);
    sub_2544AD258(v40, v34);
    swift_storeEnumTagMultiPayload();
    sub_2544BEF24(&qword_27F5FB260, type metadata accessor for CameraDemoView);
    sub_2544BE834();
    sub_25454AD44();
    sub_2544AE240(v37, v31, &qword_27F5FB258, &qword_25454DFC8);
    swift_storeEnumTagMultiPayload();
    sub_2544BE778();
    sub_2544BEDA0();
    v44 = v112;
    sub_25454AD44();
    sub_2544AE150(v37, &qword_27F5FB258, &qword_25454DFC8);
    sub_2544BEF6C(v40);
  }

  else
  {

    v45 = sub_254549BE4();
    if (v45)
    {
      v86 = v31;
      v87 = v45;
      sub_25454A194();
      *&v115 = a1;
      v46 = v6;
      v47 = v105 & 1;
      DWORD2(v115) = v105 & 0x1010101;
      v48 = (v105 >> 8) & 1;
      v49 = HIWORD(v105) & 1;
      v50 = HIBYTE(v105) & 1;
      if (sub_2544BD6C4())
      {
        v51 = 9.0;
      }

      else
      {
        v51 = 0.0;
      }

      (*(v89 + 32))(v9, v46, v90);
      v52 = &v9[*(v88 + 36)];
      *v52 = v51;
      v52[8] = 0;
      *&v115 = a1;
      LODWORD(v90) = v47;
      BYTE8(v115) = v47;
      BYTE9(v115) = v48;
      BYTE10(v115) = v49;
      BYTE11(v115) = v50;
      if (sub_2544BD6C4())
      {
        if (qword_27F5FAC90 != -1)
        {
          swift_once();
        }

        v53 = qword_27F5FB200;
      }

      else
      {
        v53 = sub_25454B664();
      }

      v57 = sub_25454AF14();
      v58 = v96;
      sub_2544B14E8(v9, v96, &qword_27F5FB2E0, &qword_25454E008);
      v59 = v58 + *(v92 + 36);
      *v59 = v53;
      *(v59 + 8) = v57;
      v60 = sub_25454BA54();
      v62 = v61;
      v63 = v99;
      v64 = &v99[*(v91 + 36)];
      sub_2544BD8E8(a1, v105 & 0x1010101, v64);
      v65 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB308, &qword_25454E018) + 36));
      *v65 = v60;
      v65[1] = v62;
      sub_2544B14E8(v58, v63, &qword_27F5FB2D0, &qword_25454E000);
      v66 = v86;
      if (qword_27F5FAC90 != -1)
      {
        swift_once();
      }

      v67 = qword_27F5FB200;
      v68 = v95;
      sub_2544B14E8(v63, v95, &qword_27F5FB2C0, &qword_25454DFF8);
      v69 = v68 + *(v98 + 36);
      *v69 = v67;
      *(v69 + 8) = 256;
      v70 = v68;
      v71 = v97;
      sub_2544B14E8(v70, v97, &qword_27F5FB2B0, &qword_25454DFF0);
      *(v71 + *(v93 + 36)) = 0;

      v72 = v87;
      [v87 aspectRatio];
      v74 = v73;
      v75 = v102;
      sub_2544B14E8(v71, v102, &qword_27F5FB2A0, &qword_25454DFE8);
      v76 = v75 + *(v94 + 36);
      *v76 = v74;
      *(v76 + 8) = 0;
      *(v76 + 9) = v90;
      sub_25454BA54();
      sub_25454A784();
      v77 = v75;
      v78 = v103;
      sub_2544B14E8(v77, v103, &qword_27F5FB290, &qword_25454DFE0);
      v79 = (v78 + *(v100 + 36));
      v80 = v120;
      v79[4] = v119;
      v79[5] = v80;
      v79[6] = v121;
      v81 = v116;
      *v79 = v115;
      v79[1] = v81;
      v82 = v118;
      v79[2] = v117;
      v79[3] = v82;
      v83 = v101;
      sub_2544B14E8(v78, v101, &qword_27F5FB280, &qword_25454DFD8);
      *(v83 + *(v108 + 36)) = 0;
      v84 = v104;
      sub_2544B14E8(v83, v104, &qword_27F5FB270, &qword_25454DFD0);
      sub_2544AE240(v84, v34, &qword_27F5FB270, &qword_25454DFD0);
      swift_storeEnumTagMultiPayload();
      sub_2544BEF24(&qword_27F5FB260, type metadata accessor for CameraDemoView);
      sub_2544BE834();
      sub_25454AD44();
      sub_2544AE240(v37, v66, &qword_27F5FB258, &qword_25454DFC8);
      swift_storeEnumTagMultiPayload();
      sub_2544BE778();
      sub_2544BEDA0();
      v44 = v112;
      sub_25454AD44();

      sub_2544AE150(v37, &qword_27F5FB258, &qword_25454DFC8);
      v54 = v84;
      v55 = &qword_27F5FB270;
      v56 = &qword_25454DFD0;
    }

    else
    {
      if (qword_27F5FAC90 != -1)
      {
        swift_once();
      }

      *&v115 = qword_27F5FB200;

      sub_25454B4C4();

      sub_2544AE240(v28, v31, &qword_27F5FB338, &qword_25454E028);
      swift_storeEnumTagMultiPayload();
      sub_2544BE778();
      sub_2544BEDA0();
      v44 = v112;
      sub_25454AD44();
      v54 = v28;
      v55 = &qword_27F5FB338;
      v56 = &qword_25454E028;
    }

    sub_2544AE150(v54, v55, v56);
  }

  sub_2544B14E8(v44, v114, &qword_27F5FB248, &qword_25454DFC0);
}

uint64_t sub_2544BD6C4()
{
  v1 = sub_254549AE4();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  if (*(v0 + 10))
  {
    v9 = 1;
  }

  else
  {
    v10 = *v0;
    sub_254549B94();
    v11 = v2[13];
    v11(v6, *MEMORY[0x277D15E28], v1);
    sub_2544BEF24(&qword_27F5FB3A8, MEMORY[0x277D15E30]);
    v12 = sub_25454BC44();
    v13 = v2[1];
    v13(v6, v1);
    v13(v8, v1);
    if (v12)
    {
      v9 = 0;
    }

    else
    {
      sub_254549B94();
      v11(v6, *MEMORY[0x277D15E20], v1);
      v14 = sub_25454BC44();
      v13(v6, v1);
      v13(v8, v1);
      v9 = v14 ^ 1;
    }
  }

  return v9 & 1;
}

uint64_t sub_2544BD8E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v21[1] = a1;
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3C0, &qword_254550BB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = sub_254549AD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3C8, &qword_25454E0C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v21 - v15;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v22 & 0x1000000) != 0 && (sub_254549B74(), v17 = (*(v9 + 88))(v12, v8), v18 = *MEMORY[0x277D15E18], (*(v9 + 8))(v12, v8), v17 == v18))
  {
    sub_25454A4C4();
    (*(v4 + 32))(v16, v7, v3);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v4 + 56))(v16, v19, 1, v3);
  sub_2544B14E8(v16, v23, &qword_27F5FB3C8, &qword_25454E0C8);
}

uint64_t sub_2544BDBAC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB360, &qword_25454E038);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB368, &qword_25454E040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = a1;
  v13 = a2 & 1;
  v21 = a2 & 0x101;
  v14 = (a2 >> 8) & 1;
  v15 = HIWORD(a2) & 1;
  v22 = BYTE2(a2) & 1;
  v16 = HIBYTE(a2) & 1;
  v23 = v16;
  if (sub_2544BDDFC())
  {
    v20 = a1;
    LOBYTE(v21) = v13;
    HIBYTE(v21) = v14;
    v22 = v15;
    v23 = v16;
    sub_2544BE028(v8);
    sub_2544B14E8(v8, v12, &qword_27F5FB360, &qword_25454E038);
    (*(v5 + 56))(v12, 0, 1, v18);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v18);
  }

  sub_2544B14E8(v12, v19, &qword_27F5FB368, &qword_25454E040);
}

uint64_t sub_2544BDDFC()
{
  v1 = sub_254549AE4();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *v0;
  v10 = *(v0 + 9);
  v11 = sub_254549B64();
  v12 = 0;
  if ((v11 & 1) == 0 && (v10 & 1) == 0)
  {
    sub_254549B94();
    v13 = v2[13];
    v13(v6, *MEMORY[0x277D15E28], v1);
    sub_2544BEF24(&qword_27F5FB3A8, MEMORY[0x277D15E30]);
    v14 = sub_25454BC44();
    v15 = v2[1];
    v15(v6, v1);
    v15(v8, v1);
    if (v14)
    {
      v12 = 0;
    }

    else
    {
      sub_254549B94();
      v13(v6, *MEMORY[0x277D15E20], v1);
      v16 = sub_25454BC44();
      v15(v6, v1);
      v15(v8, v1);
      v12 = v16 ^ 1;
    }
  }

  return v12 & 1;
}

uint64_t sub_2544BE028@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  v6 = sub_25454B704();
  v7 = sub_25454B044();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_25454B0A4();
  sub_2544AE150(v5, &qword_27F5FB370, &qword_254551530);
  KeyPath = swift_getKeyPath();
  v15[1] = v6;
  v15[2] = KeyPath;
  v15[3] = v8;
  sub_25454B084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB378, &qword_25454E078);
  sub_2544BEE64();
  sub_25454B2D4();

  v10 = sub_25454B674();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB398, &qword_25454E080) + 36)) = v10;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB360, &qword_25454E038) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3A0, &qword_2545509C0) + 28);
  sub_25454AC34();
  v13 = sub_25454AC44();
  (*(*(v13 - 8) + 56))(v11 + v12, 0, 1, v13);
  result = swift_getKeyPath();
  *v11 = result;
  return result;
}

uint64_t sub_2544BE268()
{
  v0 = sub_25454B624();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_25454B6D4();
  qword_27F5FB200 = result;
  return result;
}

uint64_t sub_2544BE34C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (*(v1 + 11))
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 | v7;
  sub_2544BC91C(*v1, v5 | v6 | v7, a1);
  v9 = sub_25454BA54();
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB208, &qword_25454DF18) + 36);
  sub_2544BDBAC(v3, v5 | v8, v12);
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB210, &qword_25454DF20) + 36));
  *v13 = v9;
  v13[1] = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB218, &qword_25454DF28);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_2544BE45C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_2544BE4A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2544BE4F8()
{
  result = qword_27F5FB220;
  if (!qword_27F5FB220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB218, &qword_25454DF28);
    sub_2544BE5B0();
    sub_2544AE1F0(&qword_27F5FB350, &qword_27F5FB358, &qword_25454E030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB220);
  }

  return result;
}

unint64_t sub_2544BE5B0()
{
  result = qword_27F5FB228;
  if (!qword_27F5FB228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB208, &qword_25454DF18);
    sub_2544BE668();
    sub_2544AE1F0(&qword_27F5FB348, &qword_27F5FB210, &qword_25454DF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB228);
  }

  return result;
}

unint64_t sub_2544BE668()
{
  result = qword_27F5FB230;
  if (!qword_27F5FB230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB238, &qword_25454DFB8);
    sub_2544BE6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB230);
  }

  return result;
}

unint64_t sub_2544BE6EC()
{
  result = qword_27F5FB240;
  if (!qword_27F5FB240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB248, &qword_25454DFC0);
    sub_2544BE778();
    sub_2544BEDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB240);
  }

  return result;
}

unint64_t sub_2544BE778()
{
  result = qword_27F5FB250;
  if (!qword_27F5FB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB258, &qword_25454DFC8);
    sub_2544BEF24(&qword_27F5FB260, type metadata accessor for CameraDemoView);
    sub_2544BE834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB250);
  }

  return result;
}

unint64_t sub_2544BE834()
{
  result = qword_27F5FB268;
  if (!qword_27F5FB268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB270, &qword_25454DFD0);
    sub_2544BE8EC();
    sub_2544AE1F0(&qword_27F5FB320, &qword_27F5FB328, &qword_2545510C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB268);
  }

  return result;
}

unint64_t sub_2544BE8EC()
{
  result = qword_27F5FB278;
  if (!qword_27F5FB278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB280, &qword_25454DFD8);
    sub_2544BE978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB278);
  }

  return result;
}

unint64_t sub_2544BE978()
{
  result = qword_27F5FB288;
  if (!qword_27F5FB288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB290, &qword_25454DFE0);
    sub_2544BEA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB288);
  }

  return result;
}

unint64_t sub_2544BEA04()
{
  result = qword_27F5FB298;
  if (!qword_27F5FB298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB2A0, &qword_25454DFE8);
    sub_2544BEABC();
    sub_2544AE1F0(&qword_27F5FB320, &qword_27F5FB328, &qword_2545510C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB298);
  }

  return result;
}

unint64_t sub_2544BEABC()
{
  result = qword_27F5FB2A8;
  if (!qword_27F5FB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB2B0, &qword_25454DFF0);
    sub_2544BEB74();
    sub_2544AE1F0(&qword_27F5FB310, &qword_27F5FB318, &qword_25454E020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB2A8);
  }

  return result;
}

unint64_t sub_2544BEB74()
{
  result = qword_27F5FB2B8;
  if (!qword_27F5FB2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB2C0, &qword_25454DFF8);
    sub_2544BEC2C();
    sub_2544AE1F0(&qword_27F5FB300, &qword_27F5FB308, &qword_25454E018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB2B8);
  }

  return result;
}

unint64_t sub_2544BEC2C()
{
  result = qword_27F5FB2C8;
  if (!qword_27F5FB2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB2D0, &qword_25454E000);
    sub_2544BECE4();
    sub_2544AE1F0(&qword_27F5FB2F0, &qword_27F5FB2F8, &qword_25454E010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB2C8);
  }

  return result;
}

unint64_t sub_2544BECE4()
{
  result = qword_27F5FB2D8;
  if (!qword_27F5FB2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB2E0, &qword_25454E008);
    sub_2544BEF24(&qword_27F5FB2E8, MEMORY[0x277CE41D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB2D8);
  }

  return result;
}

unint64_t sub_2544BEDA0()
{
  result = qword_27F5FB330;
  if (!qword_27F5FB330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB338, &qword_25454E028);
    sub_2544BEF24(&qword_27F5FB340, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB330);
  }

  return result;
}

unint64_t sub_2544BEE64()
{
  result = qword_27F5FB380;
  if (!qword_27F5FB380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB378, &qword_25454E078);
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB380);
  }

  return result;
}

uint64_t sub_2544BEF24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544BEF6C(uint64_t a1)
{
  v2 = type metadata accessor for CameraDemoView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CameraCell.prefers(_:factors:location:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v47 = a1;
  v49 = a4;
  v55 = sub_254549394();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v55);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D0, &unk_25454E0F0);
  v14 = *(*(v57 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v57);
  v56 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v44 = &v44 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v19 = *(*(v48 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v48);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v45 = *a2;
  v46 = *a3;
  v25 = *v4;
  v26 = *(v4 + 8);
  v53 = *(v4 + 9);
  v54 = v26;
  v27 = *(v4 + 10);
  v51 = *(v4 + 11);
  v52 = v27;
  v28 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3E0, &qword_25454E100) + 36);
  v29 = type metadata accessor for RegisteredCameraView(0);
  v30 = v29[6];
  v31 = sub_254549B54();
  (*(*(v31 - 8) + 16))(&v28[v30], v47, v31);
  v32 = _s12RegistrationVMa();
  (*(*(v32 - 8) + 56))(v24, 1, 1, v32);
  v33 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  (*(*(v33 - 8) + 56))(v18, 1, 1, v33);

  sub_254549384();
  *v28 = v45;
  *(v28 + 1) = v25;
  v28[v29[7]] = v46;
  v34 = v29[8];
  v35 = v55;
  (*(v8 + 16))(v50, v13, v55);
  sub_25454B794();
  (*(v8 + 8))(v13, v35);
  v36 = v29[9];
  sub_2544AE240(v24, v22, &qword_27F5FB3D8, &unk_25454ECD0);
  sub_25454B794();
  sub_2544AE150(v24, &qword_27F5FB3D8, &unk_25454ECD0);
  v37 = v29[10];
  v38 = v44;
  sub_2544AE240(v44, v56, &qword_27F5FB3D0, &unk_25454E0F0);
  sub_25454B794();
  sub_2544AE150(v38, &qword_27F5FB3D0, &unk_25454E0F0);
  v39 = &v28[v29[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = v49;
  *v49 = v25;
  v41 = v53;
  v40[8] = v54;
  v40[9] = v41;
  v42 = v51;
  v40[10] = v52;
  v40[11] = v42;
}

uint64_t View.prefers(_:for:factors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v49 = a6;
  v50 = a4;
  v47 = a2;
  v43 = a1;
  v7 = sub_254549394();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D0, &unk_25454E0F0);
  v14 = *(*(v48 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = &v41 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v19 = *(*(v44 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v44);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = type metadata accessor for RegisteredCameraView(0);
  v26 = *(*(v25 - 1) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a3;
  v31 = *(v27 + 24);
  v32 = sub_254549B54();
  (*(*(v32 - 8) + 16))(&v29[v31], v43, v32);
  v33 = _s12RegistrationVMa();
  (*(*(v33 - 8) + 56))(v24, 1, 1, v33);
  v34 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
  sub_254549384();
  *v29 = v30;
  *(v29 + 1) = v47;
  v29[v25[7]] = 4;
  v35 = v25[8];
  (*(v8 + 16))(v45, v13, v7);

  sub_25454B794();
  (*(v8 + 8))(v13, v7);
  v36 = v25[9];
  sub_2544AE240(v24, v22, &qword_27F5FB3D8, &unk_25454ECD0);
  sub_25454B794();
  sub_2544AE150(v24, &qword_27F5FB3D8, &unk_25454ECD0);
  v37 = v25[10];
  v38 = v42;
  sub_2544AE240(v42, v46, &qword_27F5FB3D0, &unk_25454E0F0);
  sub_25454B794();
  sub_2544AE150(v38, &qword_27F5FB3D0, &unk_25454E0F0);
  v39 = &v29[v25[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  MEMORY[0x259C0E660](v29, v50, v25, v51);
  return sub_2544C4E00(v29, type metadata accessor for RegisteredCameraView);
}

uint64_t sub_2544BF8B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  sub_25454B794();
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  sub_25454B794();
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  sub_25454B794();
  *(a4 + 56) = v7;
  *(a4 + 64) = v8;
  v5 = *(type metadata accessor for MultiFactorVisibility(0) + 36);
  *(a4 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADE0, &qword_25454E140);
  return swift_storeEnumTagMultiPayload();
}

HomeUI2::SceneType_optional __swiftcall SceneType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25454C224();

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

uint64_t SceneType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x697463416576696CLL;
  }

  else
  {
    result = 7368801;
  }

  *v0;
  return result;
}

uint64_t sub_2544BFA3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x697463416576696CLL;
  }

  else
  {
    v4 = 7368801;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xEC00000079746976;
  }

  if (*a2)
  {
    v6 = 0x697463416576696CLL;
  }

  else
  {
    v6 = 7368801;
  }

  if (*a2)
  {
    v7 = 0xEC00000079746976;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25454C334();
  }

  return v9 & 1;
}

uint64_t sub_2544BFAE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25454C224();

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

void sub_2544BFB44(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x697463416576696CLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEC00000079746976;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2544BFB84()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_2544BFC08()
{
  *v0;
  sub_25454BD14();
}

uint64_t sub_2544BFC78()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_2544BFD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2544C3504();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.sceneType.getter()
{
  sub_2544BFEE4();

  return sub_25454AAA4();
}

uint64_t sub_2544BFDAC@<X0>(_BYTE *a1@<X8>)
{
  sub_2544BFEE4();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_2544BFDFC@<X0>(_BYTE *a1@<X8>)
{
  sub_2544BFEE4();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_2544BFE4C(char *a1)
{
  v2 = *a1;
  sub_2544BFEE4();
  return sub_25454AAB4();
}

uint64_t sub_2544BFE98(char *a1)
{
  v2 = *a1;
  sub_2544BFEE4();
  return sub_25454AAB4();
}

unint64_t sub_2544BFEE4()
{
  result = qword_27F5FB3E8;
  if (!qword_27F5FB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB3E8);
  }

  return result;
}

uint64_t EnvironmentValues.sceneType.setter(char *a1)
{
  v2 = *a1;
  sub_2544BFEE4();
  return sub_25454AAB4();
}

uint64_t (*EnvironmentValues.sceneType.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_2544BFEE4();
  sub_25454AAA4();
  return sub_2544BFFD8;
}

uint64_t sub_2544BFFD8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_25454AAB4();
}

uint64_t sub_2544C0010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D0, &unk_25454E0F0);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v39 - v5;
  v6 = type metadata accessor for RegisteredCameraView(0);
  v7 = *(v6 - 8);
  v49 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v9;
  v11 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4E0, &qword_25454E540);
  v12 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4E8, &qword_25454E548);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v50 = &v39 - v18;
  v19 = *v3;
  sub_2544C4654(v3, v11, type metadata accessor for RegisteredCameraView);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_2544C46CC(v11, v21 + v20, type metadata accessor for RegisteredCameraView);
  v51[0] = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4F0, &qword_25454E550);
  sub_2544BF8B4(v51, sub_2544C4734, v21, &v14[*(v22 + 36)]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4F8, &qword_25454E558);
  (*(*(v23 - 8) + 16))(v14, v42, v23);
  sub_2544C4654(v3, v11, type metadata accessor for RegisteredCameraView);
  v24 = swift_allocObject();
  sub_2544C46CC(v11, v24 + v20, type metadata accessor for RegisteredCameraView);
  v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB500, &qword_25454E560) + 36)];
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = sub_2544C4A8C;
  *(v25 + 3) = v24;
  v40 = type metadata accessor for RegisteredCameraView;
  sub_2544C4654(v3, v11, type metadata accessor for RegisteredCameraView);
  v39 = v10;
  v26 = swift_allocObject();
  v41 = type metadata accessor for RegisteredCameraView;
  sub_2544C46CC(v11, v26 + v20, type metadata accessor for RegisteredCameraView);
  v27 = v43;
  v28 = &v14[*(v43 + 36)];
  *v28 = sub_2544C4B1C;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  v42 = *(v49 + 32);
  sub_2544C4654(v3, v11, type metadata accessor for RegisteredCameraView);
  v29 = swift_allocObject();
  sub_2544C46CC(v11, v29 + v20, type metadata accessor for RegisteredCameraView);
  v30 = sub_254549B54();
  v31 = sub_2544C4B84(&qword_27F5FB508, &qword_27F5FB4E0, &qword_25454E540, sub_2544C4B54);
  v32 = sub_2544C3DE0(&qword_27F5FB530, MEMORY[0x277D15E70]);
  sub_25454B574();

  sub_2544AE150(v14, &qword_27F5FB4E0, &qword_25454E540);
  v33 = *(v49 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  v34 = v44;
  sub_25454B7A4();
  sub_2544C4654(v3, v11, v40);
  v35 = swift_allocObject();
  sub_2544C46CC(v11, v35 + v20, v41);
  v51[0] = v27;
  v51[1] = v30;
  v51[2] = v31;
  v51[3] = v32;
  swift_getOpaqueTypeConformance2();
  sub_2544C4D4C();
  v36 = v45;
  v37 = v50;
  sub_25454B574();

  sub_2544AE150(v34, &qword_27F5FB3D0, &unk_25454E0F0);
  return (*(v46 + 8))(v37, v36);
}

uint64_t sub_2544C05FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D0, &unk_25454E0F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_2544C4654(a1, &v11 - v7, type metadata accessor for MultiFactorVisibility.VisibilityState);
  v9 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  LODWORD(a1) = *(type metadata accessor for RegisteredCameraView(0) + 40);
  sub_2544AE240(v8, v6, &qword_27F5FB3D0, &unk_25454E0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  sub_25454B7B4();
  return sub_2544AE150(v8, &qword_27F5FB3D0, &unk_25454E0F0);
}

uint64_t sub_2544C0760()
{
  v1 = sub_25454A2E4();
  v86 = *(v1 - 8);
  v87 = v1;
  v2 = *(v86 + 64);
  MEMORY[0x28223BE20](v1);
  v85 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for CameraViewRegistrar.Action(0);
  v4 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v84 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB548, &qword_25454E568);
  v81 = *(v83 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v68 - v7;
  v8 = sub_25454A3B4();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v8);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D0, &unk_25454E0F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D8, &unk_25454ECD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v78 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v77 = &v68 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - v27;
  v29 = _s12RegistrationVMa();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v79 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v68 - v34;
  v36 = type metadata accessor for RegisteredCameraView(0);
  v37 = *(v36 + 36);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB498, &qword_25454E490);
  v76 = v37;
  sub_25454B7A4();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    return sub_2544AE150(v28, &qword_27F5FB3D8, &unk_25454ECD0);
  }

  v68 = v35;
  sub_2544C46CC(v28, v35, _s12RegistrationVMa);
  v39 = *(v36 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  sub_25454B7A4();
  sub_2544AE240(v20, v18, &qword_27F5FB3D0, &unk_25454E0F0);
  v40 = v74;
  v41 = v20;
  if ((*(v73 + 48))(v18, 1, v74) == 1)
  {
    sub_2544AE150(v20, &qword_27F5FB3D0, &unk_25454E0F0);
    v42 = 1;
  }

  else
  {
    v43 = v69;
    sub_2544C46CC(v18, v69, type metadata accessor for MultiFactorVisibility.VisibilityState);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v44 = *(v40 + 32);
    v46 = v70;
    v45 = v71;
    v47 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x277CDD6B8], v72);
    LOBYTE(v44) = sub_25454A3A4();
    (*(v45 + 8))(v46, v47);
    sub_2544C4E00(v43, type metadata accessor for MultiFactorVisibility.VisibilityState);
    sub_2544AE150(v41, &qword_27F5FB3D0, &unk_25454E0F0);

    v42 = v44 ^ 1;
  }

  v48 = v68;
  v49 = *&v42 & ((*v0 & 2) >> 1);
  if (qword_27F5FAC98 != -1)
  {
    swift_once();
  }

  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB560, &qword_25454E580) + 48);
  v51 = v84;
  sub_2544C4654(v48, v84, _s12RegistrationVMa);
  *(v51 + v50) = v49;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB558, &qword_25454EBB0);
  v52 = v80;
  sub_25454BE64();
  (*(v81 + 8))(v52, v83);
  v53 = *(v30 + 56);
  LODWORD(v84) = v49;
  v54 = v77;
  v53(v77, 1, 1, v29);
  sub_2544AE240(v54, v78, &qword_27F5FB3D8, &unk_25454ECD0);
  sub_25454B7B4();
  sub_2544AE150(v54, &qword_27F5FB3D8, &unk_25454ECD0);
  v55 = v85;
  sub_25454A2B4();
  v56 = v79;
  sub_2544C4654(v48, v79, _s12RegistrationVMa);
  v57 = sub_25454A2C4();
  v58 = sub_25454BF94();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v88[0] = v60;
    *v59 = 136315906;
    *(v59 + 4) = sub_254502AAC(0xD000000000000023, 0x8000000254555120, v88);
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_254502AAC(0x7473696765726E75, 0xEC00000029287265, v88);
    *(v59 + 22) = 2080;
    v61 = v48;
    v62 = sub_2544D7FAC();
    v63 = v56;
    v65 = v64;
    sub_2544C4E00(v63, _s12RegistrationVMa);
    v66 = sub_254502AAC(v62, v65, v88);

    *(v59 + 24) = v66;
    *(v59 + 32) = 1024;
    *(v59 + 34) = v84;
    _os_log_impl(&dword_2544A5000, v57, v58, "%s-%s %s isCausedBySceneDeactivation: %{BOOL}d", v59, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v60, -1, -1);
    MEMORY[0x259C0FDF0](v59, -1, -1);

    (*(v86 + 8))(v55, v87);
    v67 = v61;
  }

  else
  {

    sub_2544C4E00(v56, _s12RegistrationVMa);
    (*(v86 + 8))(v55, v87);
    v67 = v48;
  }

  return sub_2544C4E00(v67, _s12RegistrationVMa);
}

uint64_t sub_2544C1124()
{
  v0 = _s12RegistrationVMa();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3D0, &unk_25454E0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for MultiFactorVisibility.VisibilityState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for RegisteredCameraView(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB4A0, &qword_25454E498);
  sub_25454B7A4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2544AE150(v7, &qword_27F5FB3D0, &unk_25454E0F0);
  }

  else
  {
    sub_2544C46CC(v7, v12, type metadata accessor for MultiFactorVisibility.VisibilityState);
    if (sub_2544C1428())
    {
      sub_2544C1578(v3);
      sub_2544C18F0(v3);
      sub_2544C4E00(v3, _s12RegistrationVMa);
      return sub_2544C4E00(v12, type metadata accessor for MultiFactorVisibility.VisibilityState);
    }

    sub_2544C4E00(v12, type metadata accessor for MultiFactorVisibility.VisibilityState);
  }

  return sub_2544C0760();
}