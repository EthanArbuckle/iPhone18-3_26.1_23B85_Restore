uint64_t ThermostatAutomationFailureEvent.hashValue.getter()
{
  sub_25424EBD8();
  ThermostatAutomationFailureEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541CB66C()
{
  sub_25424EBD8();
  ThermostatAutomationFailureEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541CB6B0()
{
  sub_25424EBD8();
  ThermostatAutomationFailureEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541CB6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((j___s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 4)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  return 1;
}

uint64_t static ThermostatAutomationFailureEvent.State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t ThermostatAutomationFailureEvent.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB20, &qword_25425B810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541CBC64();
  sub_25424EC78();
  v12 = v8;
  sub_2541CBCB8();
  sub_25424EA18();
  return (*(v4 + 8))(v7, v3);
}

uint64_t _s13HomeKitEvents32ThermostatAutomationFailureEventV0deF6ReasonO4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
  }

  return MEMORY[0x259C06AA0](v1);
}

uint64_t _s13HomeKitEvents32ThermostatAutomationFailureEventV0deF6ReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = 0;
  if (v1 != 4)
  {
    MEMORY[0x259C06AA0](1);
    v2 = v1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t ThermostatAutomationFailureEvent.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB38, &qword_25425B818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541CBC64();
  sub_25424EC68();
  if (!v2)
  {
    sub_2541CBD0C();
    sub_25424E978();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541CBB20()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
  }

  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t sub_2541CBB80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2541CBBB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2541CBC10()
{
  result = qword_27F5BAB18;
  if (!qword_27F5BAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB18);
  }

  return result;
}

unint64_t sub_2541CBC64()
{
  result = qword_27F5BAB28;
  if (!qword_27F5BAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB28);
  }

  return result;
}

unint64_t sub_2541CBCB8()
{
  result = qword_27F5BAB30;
  if (!qword_27F5BAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB30);
  }

  return result;
}

unint64_t sub_2541CBD0C()
{
  result = qword_27F5BAB40;
  if (!qword_27F5BAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB40);
  }

  return result;
}

unint64_t sub_2541CBD94()
{
  result = qword_27F5BAB58;
  if (!qword_27F5BAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB58);
  }

  return result;
}

unint64_t sub_2541CBE1C()
{
  result = qword_27F5BAB70;
  if (!qword_27F5BAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB70);
  }

  return result;
}

uint64_t sub_2541CBEA0(void *a1)
{
  a1[1] = sub_2541CC040(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent);
  a1[2] = sub_2541CC040(&qword_27F5BAB98, type metadata accessor for ThermostatAutomationFailureEvent);
  result = sub_2541CC040(&qword_27F5BABA0, type metadata accessor for ThermostatAutomationFailureEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CBF94(void *a1)
{
  a1[1] = sub_2541CC040(&qword_27F5BABB0, type metadata accessor for ThermostatAutomationFailureEvent);
  a1[2] = sub_2541CC040(&qword_27F5BABB8, type metadata accessor for ThermostatAutomationFailureEvent);
  result = sub_2541CC040(&qword_27F5BABC0, type metadata accessor for ThermostatAutomationFailureEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CC040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2541CC08C()
{
  result = qword_27F5BABC8;
  if (!qword_27F5BABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABC8);
  }

  return result;
}

unint64_t sub_2541CC128(void *a1)
{
  a1[1] = sub_2541CAEA4();
  a1[2] = sub_2541CBC10();
  result = sub_2541CC160();
  a1[3] = result;
  return result;
}

unint64_t sub_2541CC160()
{
  result = qword_27F5BABD0;
  if (!qword_27F5BABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABD0);
  }

  return result;
}

unint64_t sub_2541CC1B8()
{
  result = qword_27F5BABD8;
  if (!qword_27F5BABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABD8);
  }

  return result;
}

unint64_t sub_2541CC20C(uint64_t a1)
{
  result = sub_2541CC08C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541CC25C()
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatAutomationFailureEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
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

uint64_t storeEnumTagSinglePayload for ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2541CC4D4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2541CC4E8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_2541CC5AC()
{
  result = qword_27F5BABF0;
  if (!qword_27F5BABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABF0);
  }

  return result;
}

unint64_t sub_2541CC604()
{
  result = qword_27F5BABF8;
  if (!qword_27F5BABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABF8);
  }

  return result;
}

unint64_t sub_2541CC65C()
{
  result = qword_27F5BAC00;
  if (!qword_27F5BAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC00);
  }

  return result;
}

unint64_t sub_2541CC6B4()
{
  result = qword_27F5BAC08;
  if (!qword_27F5BAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC08);
  }

  return result;
}

unint64_t sub_2541CC70C()
{
  result = qword_27F5BAC10;
  if (!qword_27F5BAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC10);
  }

  return result;
}

unint64_t sub_2541CC764()
{
  result = qword_27F5BAC18;
  if (!qword_27F5BAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC18);
  }

  return result;
}

unint64_t sub_2541CC7BC()
{
  result = qword_27F5BAC20;
  if (!qword_27F5BAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC20);
  }

  return result;
}

unint64_t sub_2541CC814()
{
  result = qword_27F5BAC28;
  if (!qword_27F5BAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC28);
  }

  return result;
}

unint64_t sub_2541CC86C()
{
  result = qword_27F5BAC30;
  if (!qword_27F5BAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC30);
  }

  return result;
}

unint64_t sub_2541CC8C4()
{
  result = qword_27F5BAC38;
  if (!qword_27F5BAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC38);
  }

  return result;
}

unint64_t sub_2541CC91C()
{
  result = qword_27F5BAC40;
  if (!qword_27F5BAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC40);
  }

  return result;
}

unint64_t sub_2541CC974()
{
  result = qword_27F5BAC48;
  if (!qword_27F5BAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC48);
  }

  return result;
}

unint64_t sub_2541CC9CC()
{
  result = qword_27F5BAC50;
  if (!qword_27F5BAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC50);
  }

  return result;
}

unint64_t sub_2541CCA24()
{
  result = qword_27F5BAC58;
  if (!qword_27F5BAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC58);
  }

  return result;
}

unint64_t sub_2541CCA7C()
{
  result = qword_27F5BAC60;
  if (!qword_27F5BAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC60);
  }

  return result;
}

unint64_t sub_2541CCAD4()
{
  result = qword_27F5BAC68;
  if (!qword_27F5BAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC68);
  }

  return result;
}

unint64_t sub_2541CCB2C()
{
  result = qword_27F5BAC70;
  if (!qword_27F5BAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC70);
  }

  return result;
}

unint64_t sub_2541CCB84()
{
  result = qword_27F5BAC78;
  if (!qword_27F5BAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC78);
  }

  return result;
}

unint64_t sub_2541CCBDC()
{
  result = qword_27F5BAC80;
  if (!qword_27F5BAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC80);
  }

  return result;
}

unint64_t sub_2541CCC34()
{
  result = qword_27F5BAC88;
  if (!qword_27F5BAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC88);
  }

  return result;
}

unint64_t sub_2541CCC8C()
{
  result = qword_27F5BAC90;
  if (!qword_27F5BAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC90);
  }

  return result;
}

unint64_t sub_2541CCCE4()
{
  result = qword_27F5BAC98;
  if (!qword_27F5BAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC98);
  }

  return result;
}

uint64_t sub_2541CCD38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000254251180 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x48676E696F676E6FLL && a2 == 0xEB00000000646C6FLL || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696E696665646E69 && a2 == 0xEE00646C6F486574 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_25424EAB8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t with<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = a2();
  if (!v4)
  {
    return (*(*(a3 - 8) + 16))(a4, a1, a3);
  }

  return result;
}

uint64_t sub_2541CCF50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 2)
  {
    v5 = 3;
    if (v2 != 4)
    {
      v5 = 4;
    }

    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = v5;
    }

    if (*a2 > 2u)
    {
      goto LABEL_15;
    }
  }

  else if (v2 == 1)
  {
    v4 = 0;
    if (*a2 > 2u)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_23;
    }

    v4 = 1;
    if (*a2 > 2u)
    {
LABEL_15:
      v7 = 3;
      if (v3 != 4)
      {
        v7 = 4;
      }

      if (v3 == 3)
      {
        v6 = 2;
      }

      else
      {
        v6 = v7;
      }

      return v4 == v6;
    }
  }

  if (v3 == 1)
  {
    v6 = 0;
    return v4 == v6;
  }

  if (v3 == 2)
  {
    v6 = 1;
    return v4 == v6;
  }

LABEL_23:
  result = sub_25424EAF8();
  __break(1u);
  return result;
}

uint64_t sub_2541CD010()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1 > 2)
  {
    v3 = 3;
    if (v1 != 4)
    {
      v3 = 4;
    }

    if (v1 == 3)
    {
      v2 = 2;
    }

    else
    {
      v2 = v3;
    }

    goto LABEL_10;
  }

  v2 = 0;
  if (v1 == 1)
  {
LABEL_10:
    MEMORY[0x259C06AA0](v2);
    return sub_25424EC28();
  }

  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_10;
  }

  result = sub_25424EAF8();
  __break(1u);
  return result;
}

uint64_t sub_2541CD09C()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v3 = 3;
    if (v1 != 4)
    {
      v3 = 4;
    }

    if (v1 == 3)
    {
      v2 = 2;
    }

    else
    {
      v2 = v3;
    }

    return MEMORY[0x259C06AA0](v2);
  }

  if (v1 == 1)
  {
    v2 = 0;
    return MEMORY[0x259C06AA0](v2);
  }

  if (v1 == 2)
  {
    v2 = 1;
    return MEMORY[0x259C06AA0](v2);
  }

  result = sub_25424EAF8();
  __break(1u);
  return result;
}

uint64_t sub_2541CD114()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1 > 2)
  {
    v3 = 3;
    if (v1 != 4)
    {
      v3 = 4;
    }

    if (v1 == 3)
    {
      v2 = 2;
    }

    else
    {
      v2 = v3;
    }

    goto LABEL_11;
  }

  if (v1 == 1)
  {
    v2 = 0;
LABEL_11:
    MEMORY[0x259C06AA0](v2);
    return sub_25424EC28();
  }

  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_11;
  }

  result = sub_25424EAF8();
  __break(1u);
  return result;
}

const char *sub_2541CD1B4()
{
  v1 = *v0;
  v2 = "";
  v3 = "HomeActivityState";
  v4 = "HomeEnergy2025";
  if (v1 != 4)
  {
    v4 = "ActivityHistory2025";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "Tamis";
  if (v1 != 1)
  {
    v5 = "TamisPlus";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2541CD254()
{
  result = qword_27F5BACB0;
  if (!qword_27F5BACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACB0);
  }

  return result;
}

void sub_2541CD320(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_25424DF88();
  v9[4] = sub_2541CD614;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2541ED26C;
  v9[3] = &block_descriptor_6;
  v8 = _Block_copy(v9);

  [a1 createEventsWithEventsData:v7 scope:(a4 & 1u) + 1 reply:v8];

  _Block_release(v8);
}

uint64_t sub_2541CD41C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254252CB8;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

HomeKitEvents::SmokeDetectorEvent::State_optional __swiftcall SmokeDetectorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SmokeDetectorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SmokeDetectorEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for SmokeDetectorEvent()
{
  result = qword_27F5BAD30;
  if (!qword_27F5BAD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmokeDetectorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 2;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for SmokeDetectorEvent();
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t SmokeDetectorEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v12);
  sub_254231924(v12, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_25414913C(a1, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v12[0];
  sub_25414A414(v8, a2);
  result = type metadata accessor for SmokeDetectorEvent();
  *(a2 + *(result + 20)) = v10;
  return result;
}

uint64_t SmokeDetectorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v11[15] = *(v1 + *(type metadata accessor for SmokeDetectorEvent() + 20));
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11[14] = 1;
    sub_2541CDB0C();
    sub_25424EA18();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_2541CDB0C()
{
  result = qword_27F5BACB8;
  if (!qword_27F5BACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACB8);
  }

  return result;
}

uint64_t SmokeDetectorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SmokeDetectorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SmokeDetectorEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SmokeDetectorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SmokeDetectorEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SmokeDetectorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static SmokeDetectorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for SmokeDetectorEvent();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t SmokeDetectorEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_25424D8B8();
  sub_2541CE508(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_2541CE508(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425C990[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for SmokeDetectorEvent();
  return MEMORY[0x259C06AA0](*(v1 + *(v22 + 20)));
}

uint64_t SmokeDetectorEvent.hashValue.getter()
{
  sub_25424EBD8();
  SmokeDetectorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541CE11C()
{
  sub_25424EBD8();
  SmokeDetectorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541CE160()
{
  sub_25424EBD8();
  SmokeDetectorEvent.hash(into:)();
  return sub_25424EC28();
}

unint64_t sub_2541CE254()
{
  result = qword_27F5BACC0;
  if (!qword_27F5BACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACC0);
  }

  return result;
}

unint64_t sub_2541CE2AC()
{
  result = qword_27F5BACC8;
  if (!qword_27F5BACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BACD0, &qword_25425C720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACC8);
  }

  return result;
}

unint64_t sub_2541CE314()
{
  result = qword_27F5BACD8;
  if (!qword_27F5BACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACD8);
  }

  return result;
}

uint64_t sub_2541CE368(void *a1)
{
  a1[1] = sub_2541CE508(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent);
  a1[2] = sub_2541CE508(&qword_27F5BACF0, type metadata accessor for SmokeDetectorEvent);
  result = sub_2541CE508(&qword_27F5BACF8, type metadata accessor for SmokeDetectorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CE45C(void *a1)
{
  a1[1] = sub_2541CE508(&qword_27F5BAD08, type metadata accessor for SmokeDetectorEvent);
  a1[2] = sub_2541CE508(&qword_27F5BAD10, type metadata accessor for SmokeDetectorEvent);
  result = sub_2541CE508(&qword_27F5BAD18, type metadata accessor for SmokeDetectorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CE508(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2541CE598(void *a1)
{
  a1[1] = sub_25414AD28();
  a1[2] = sub_2541CDB0C();
  result = sub_2541CE5D0();
  a1[3] = result;
  return result;
}

unint64_t sub_2541CE5D0()
{
  result = qword_27F5BAD20;
  if (!qword_27F5BAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAD20);
  }

  return result;
}

unint64_t sub_2541CE624(uint64_t a1)
{
  result = sub_2541CE64C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541CE64C()
{
  result = qword_27F5BAD28;
  if (!qword_27F5BAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAD28);
  }

  return result;
}

unint64_t sub_2541CE6A0(uint64_t a1)
{
  result = sub_2541CE314();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541CE6F0()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2541CE774()
{
  result = qword_27F5BAD40;
  if (!qword_27F5BAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAD40);
  }

  return result;
}

uint64_t static HMVCommands.clearEvents(homes:deleteCloudZones:)(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2541CE7F0, 0, 0);
}

uint64_t sub_2541CE7F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_25412F910;

  return sub_25412FDA0(sub_25412FDA0, sub_2541CE9D0, v3);
}

void sub_2541CE8D0(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  if (a3)
  {
    sub_25424D948();
    v5 = sub_25424DF88();
  }

  v9[4] = sub_2541CEBD4;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2541ED26C;
  v9[3] = &block_descriptor_7;
  v8 = _Block_copy(v9);

  [a1 hmvutilClearEventsWithHomes:v5 deleteCloudZones:a4 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t sub_2541CE9DC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2541CEC30(void *a1, uint64_t a2, char a3)
{
  v6[4] = sub_2541CF0F4;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541CF0FC;
  v6[3] = &block_descriptor_8;
  v5 = _Block_copy(v6);

  [a1 collectDiagnosticsWithIncludeSensitiveData:a3 & 1 reply:v5];
  _Block_release(v5);
}

uint64_t sub_2541CED08(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_25424D418();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - v19;
  sub_2541CF2C0(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    result = sub_2541CF258(v13);
    if (a2)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      v23 = sub_25424E128();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = a3;
      v24[5] = sub_2541A7410;
      v24[6] = v22;

      v25 = a2;
      sub_25419CC1C(0, 0, v9, &unk_254258400, v24);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = a3;
    v26 = *(v15 + 32);
    v26(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    v27 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v28 = swift_allocObject();
    v26((v28 + v27), v18, v14);
    v29 = sub_25424E128();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v32;
    v30[5] = sub_2541CF410;
    v30[6] = v28;

    sub_25419CC1C(0, 0, v9, &unk_25425C9E8, v30);

    return (*(v15 + 8))(v20, v14);
  }

  return result;
}

uint64_t sub_2541CF0FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_25424D3F8();
    v12 = sub_25424D418();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_25424D418();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_2541CF258(v9);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541CF258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541CF2C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541CF330(uint64_t a1, uint64_t a2)
{
  v3 = sub_25424D418();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8868, &qword_254252D48);
  return sub_25424E088();
}

uint64_t sub_2541CF410(uint64_t a1)
{
  v3 = *(sub_25424D418() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2541CF330(a1, v4);
}

uint64_t sub_2541CF480(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  sub_25424E098();
  result = sub_25424E598();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541CF530()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  sub_25424E098();
  v5 = sub_25424E598();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2541CF5F0()
{
  sub_2541CF530();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2541CF650(uint64_t *a1, int a2)
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

uint64_t sub_2541CF698(uint64_t result, int a2, int a3)
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

unint64_t sub_2541CF6E8()
{
  result = qword_27F5BADD0[0];
  if (!qword_27F5BADD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BADD0);
  }

  return result;
}

void sub_2541CF73C()
{
  v4 = v0[1];
  if (v4 >= 1)
  {
    v5 = *v0;
    if (!*(*v0 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v1 = *(v5 + 4);
    v2 = *(v5 + 5);
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 == 2)
      {
        v3 = *(v1 + 16);
        sub_254140660(*(v5 + 4), *(v5 + 5));
        v6 = sub_2541347C8(v3, v4, v1, v2);
        goto LABEL_14;
      }
    }

    else if (v3)
    {
      v3 = v1;
      sub_254140660(*(v5 + 4), *(v5 + 5));
      v6 = sub_2541347C8(v1, v4, v1, v2);
LABEL_11:
      v7 = v1 >> 32;
      goto LABEL_15;
    }

    v6 = sub_2541347C8(0, v0[1], *(v5 + 4), *(v5 + 5));
    if (v3 <= 1)
    {
      if (!v3)
      {
        v7 = BYTE6(v2);
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v7 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v7 = *(v1 + 24);
LABEL_15:
    if (v7 >= v6)
    {
      v4 = sub_25424D538();
      v3 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v5 = sub_2541EADD0(v5);
LABEL_17:
    sub_254134D04(v1, v2);
    if (*(v5 + 2))
    {
      v9 = *(v5 + 4);
      v10 = *(v5 + 5);
      *(v5 + 4) = v4;
      *(v5 + 5) = v3;
      sub_254134D04(v9, v10);
      *v0 = v5;
      v0[1] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2541CF898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _BYTE *a6, uint64_t a7)
{
  if (result < 0 || (v7 = result, a4 < result))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v10 = 0;
      v66 = a2 + 32;
      while (1)
      {
        if (v7 < 1 || v10 >= *(a2 + 16))
        {
          return v10;
        }

        v16 = *(v66 + 16 * v10);
        v17 = *(v66 + 16 * v10 + 8);
        v18 = v17 >> 62;
        if ((v17 >> 62) <= 1)
        {
          break;
        }

        if (v18 == 2)
        {
          result = *(v66 + 16 * v10);
          v21 = *(v16 + 16);
          v20 = *(v16 + 24);
          v22 = v20 - v21;
          if (__OFSUB__(v20, v21))
          {
            goto LABEL_102;
          }

LABEL_21:
          v67 = *(v66 + 16 * v10);
          result = sub_254140660(result, *(v66 + 16 * v10 + 8));
          v16 = v67;
          v19 = v22 - a3;
          if (__OFSUB__(v22, a3))
          {
            goto LABEL_97;
          }

          goto LABEL_25;
        }

        v19 = -a3;
        if (__OFSUB__(0, a3))
        {
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
          goto LABEL_103;
        }

LABEL_25:
        if (v7 < v19)
        {
          if (v18 > 1)
          {
            v56 = 0;
            if (v18 == 2)
            {
              v56 = *(v16 + 16);
            }
          }

          else if (v18)
          {
            v56 = v16;
          }

          else
          {
            v56 = 0;
          }

          v57 = v16;
          v58 = sub_2541347C8(v56, a3, v16, v17);
          result = sub_2541347C8(v58, v7, v57, v17);
          if (result >= v58)
          {
            v59 = sub_25424D4B8();
            v61 = v60;
            sub_2541D03D4(v59, v60, a5, a6, a7);
            sub_254134D04(v57, v17);
            sub_254134D04(v59, v61);
            return v10;
          }

          goto LABEL_106;
        }

        if (a3)
        {
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v23 = *(v16 + 16);
              v15 = __OFADD__(v23, a3);
              a3 += v23;
              if (v15)
              {
                goto LABEL_104;
              }

              v24 = *(v16 + 24);
            }

            else
            {
              v24 = 0;
              v23 = 0;
            }
          }

          else if (v18)
          {
            v23 = v16;
            v15 = __OFADD__(v16, a3);
            a3 += v16;
            if (v15)
            {
              goto LABEL_105;
            }

            v24 = v16 >> 32;
          }

          else
          {
            v23 = 0;
            v24 = BYTE6(v17);
          }

          if (a3 < v23 || v24 < a3)
          {
            goto LABEL_99;
          }

          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v33 = *(v16 + 16);
              v32 = *(v16 + 24);
            }

            else
            {
              v32 = 0;
              v33 = 0;
            }
          }

          else
          {
            if (v18)
            {
              v32 = v16 >> 32;
            }

            else
            {
              v32 = BYTE6(v17);
            }

            if (v18)
            {
              v33 = v16;
            }

            else
            {
              v33 = 0;
            }
          }

          if (v32 < a3 || v32 < v33)
          {
            goto LABEL_100;
          }

          v34 = v16;
          v35 = sub_25424D4B8();
          v37 = *a5;
          v38 = a5[1];
          v39 = v38 >> 62;
          if ((v38 >> 62) > 1)
          {
            if (v39 == 2 && *(v37 + 16) != *(v37 + 24))
            {
              goto LABEL_69;
            }

LABEL_5:
            *a5 = v35;
            a5[1] = v36;
            v11 = v35;
            v12 = v36;
            sub_254140660(v35, v36);
            sub_254134D04(v37, v38);
          }

          else
          {
            if (v39)
            {
              if (v37 == v37 >> 32)
              {
                goto LABEL_5;
              }
            }

            else if ((v38 & 0xFF000000000000) == 0)
            {
              goto LABEL_5;
            }

LABEL_69:
            if ((*a6 & 1) == 0)
            {
              *a6 = 1;
              v69 = v35;
              v40 = v36;
              if (a7)
              {
                if (a7 <= 14)
                {
                  v45 = 0;
                  v46 = v63 & 0xF00000000000000;
                  v63 &= 0xF00000000000000uLL;
                }

                else
                {
                  v41 = sub_25424D2B8();
                  v42 = *(v41 + 48);
                  v43 = *(v41 + 52);
                  swift_allocObject();
                  v44 = sub_25424D2A8();
                  if (a7 >= 0x7FFFFFFF)
                  {
                    sub_25424D468();
                    v45 = swift_allocObject();
                    v46 = v44 | 0x8000000000000000;
                    *(v45 + 16) = 0;
                    *(v45 + 24) = 0;
                  }

                  else
                  {
                    v45 = 0;
                    v46 = v44 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v45 = 0;
                v46 = 0xC000000000000000;
              }

              *&v71 = v45;
              *(&v71 + 1) = v46;
              v47 = *a5;
              v48 = a5[1];
              sub_254140660(*a5, v48);
              sub_25424D528();
              sub_254134D04(v47, v48);
              v49 = *a5;
              v50 = a5[1];
              *a5 = v71;
              sub_254134D04(v49, v50);
              v36 = v40;
              v35 = v69;
            }

            v11 = v35;
            v12 = v36;
            sub_25424D528();
          }

          sub_254134D04(v34, v17);
          v13 = v11;
          v14 = v12;
          goto LABEL_7;
        }

        v13 = *a5;
        v14 = a5[1];
        v25 = v14 >> 62;
        if ((v14 >> 62) > 1)
        {
          if (v25 == 2 && *(v13 + 16) != *(v13 + 24))
          {
LABEL_39:
            if ((*a6 & 1) == 0)
            {
              *a6 = 1;
              v68 = v16;
              if (a7)
              {
                if (a7 <= 14)
                {
                  v30 = 0;
                  v31 = v62 & 0xF00000000000000;
                  v62 &= 0xF00000000000000uLL;
                }

                else
                {
                  v26 = sub_25424D2B8();
                  v27 = *(v26 + 48);
                  v28 = *(v26 + 52);
                  swift_allocObject();
                  v29 = sub_25424D2A8();
                  if (a7 >= 0x7FFFFFFF)
                  {
                    sub_25424D468();
                    v30 = swift_allocObject();
                    v31 = v29 | 0x8000000000000000;
                    *(v30 + 16) = 0;
                    *(v30 + 24) = 0;
                  }

                  else
                  {
                    v30 = 0;
                    v31 = v29 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v30 = 0;
                v31 = 0xC000000000000000;
              }

              *&v72 = v30;
              *(&v72 + 1) = v31;
              v51 = *a5;
              v52 = a5[1];
              sub_254140660(*a5, v52);
              sub_25424D528();
              sub_254134D04(v51, v52);
              v53 = *a5;
              v54 = a5[1];
              *a5 = v72;
              sub_254134D04(v53, v54);
              *&v16 = v68;
            }

            v55 = v16;
            sub_25424D528();
            v13 = v55;
            v14 = v17;
            goto LABEL_7;
          }
        }

        else if (v25)
        {
          if (v13 != v13 >> 32)
          {
            goto LABEL_39;
          }
        }

        else if ((v14 & 0xFF000000000000) != 0)
        {
          goto LABEL_39;
        }

        *a5 = v16;
LABEL_7:
        result = sub_254134D04(v13, v14);
        a3 = 0;
        ++v10;
        v15 = __OFSUB__(v7, v19);
        v7 -= v19;
        if (v15)
        {
          goto LABEL_98;
        }
      }

      if (!v18)
      {
        v19 = BYTE6(v17) - a3;
        if (__OFSUB__(BYTE6(v17), a3))
        {
          goto LABEL_97;
        }

        goto LABEL_25;
      }

      result = *(v66 + 16 * v10);
      if (__OFSUB__(DWORD1(v16), v16))
      {
        goto LABEL_101;
      }

      v22 = DWORD1(v16) - v16;
      goto LABEL_21;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2541CFE4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || (v4 = result, a4 < result))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v7 = 0;
      v8 = (a2 + 40);
      while (1)
      {
        if (v4 < 1 || v7 >= *(a2 + 16))
        {
          return v7;
        }

        v13 = *(v8 - 1);
        v12 = *v8;
        v14 = *v8 >> 62;
        if (v14 <= 1)
        {
          break;
        }

        if (v14 == 2)
        {
          v17 = *(v13 + 16);
          v16 = *(v13 + 24);
          v18 = v16 - v17;
          if (__OFSUB__(v16, v17))
          {
            goto LABEL_66;
          }

LABEL_20:
          result = sub_254140660(*(v8 - 1), *v8);
          v11 = __OFSUB__(v18, a3);
          v15 = v18 - a3;
          if (v11)
          {
            goto LABEL_61;
          }

          goto LABEL_24;
        }

        v15 = -a3;
        if (__OFSUB__(0, a3))
        {
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
          goto LABEL_67;
        }

LABEL_24:
        if (v4 < v15)
        {
          if (v14 > 1)
          {
            v26 = 0;
            if (v14 == 2)
            {
              v26 = *(v13 + 16);
            }
          }

          else if (v14)
          {
            v26 = v13;
          }

          else
          {
            v26 = 0;
          }

          v27 = sub_2541347C8(v26, a3, v13, v12);
          result = sub_2541347C8(v27, v4, v13, v12);
          if (result >= v27)
          {
            v28 = sub_25424D4B8();
            v30 = v29;
            sub_254134D04(v13, v12);
            sub_254134D04(v28, v30);
            return v7;
          }

          goto LABEL_70;
        }

        if (a3)
        {
          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v19 = *(v13 + 16);
              v11 = __OFADD__(v19, a3);
              a3 += v19;
              if (v11)
              {
                goto LABEL_68;
              }

              v20 = *(v13 + 24);
            }

            else
            {
              v20 = 0;
              v19 = 0;
            }
          }

          else if (v14)
          {
            v19 = v13;
            v11 = __OFADD__(v13, a3);
            a3 += v13;
            if (v11)
            {
              goto LABEL_69;
            }

            v20 = v13 >> 32;
          }

          else
          {
            v19 = 0;
            v20 = BYTE6(v12);
          }

          if (a3 < v19 || v20 < a3)
          {
            goto LABEL_63;
          }

          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v22 = *(v13 + 16);
              v21 = *(v13 + 24);
            }

            else
            {
              v21 = 0;
              v22 = 0;
            }
          }

          else
          {
            if (v14)
            {
              v21 = v13 >> 32;
            }

            else
            {
              v21 = BYTE6(v12);
            }

            if (v14)
            {
              v22 = v13;
            }

            else
            {
              v22 = 0;
            }
          }

          if (v21 < a3 || v21 < v22)
          {
            goto LABEL_64;
          }

          v23 = sub_25424D4B8();
          v25 = v24;
          sub_254134D04(v13, v12);
          v9 = v23;
          v10 = v25;
        }

        else
        {
          v9 = v13;
          v10 = v12;
        }

        result = sub_254134D04(v9, v10);
        a3 = 0;
        ++v7;
        v8 += 2;
        v11 = __OFSUB__(v4, v15);
        v4 -= v15;
        if (v11)
        {
          goto LABEL_62;
        }
      }

      if (!v14)
      {
        v15 = BYTE6(v12) - a3;
        if (__OFSUB__(BYTE6(v12), a3))
        {
          goto LABEL_61;
        }

        goto LABEL_24;
      }

      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_65;
      }

      v18 = HIDWORD(v13) - v13;
      goto LABEL_20;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2541D0104(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      if (result == result >> 32)
      {
        return result;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    v4 = result;
    v6 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2541B09E0(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v17 = sub_2541B09E0((v7 > 1), v8 + 1, 1, v6);
      v9 = a2;
      v6 = v17;
    }

    else
    {
      v9 = a2;
    }

    result = v4;
    *(v6 + 2) = v8 + 1;
    v10 = &v6[16 * v8];
    *(v10 + 4) = v4;
    *(v10 + 5) = v9;
    *v2 = v6;
    if (v3 == 2)
    {
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      v11 = v12 - v13;
      if (__OFSUB__(v12, v13))
      {
LABEL_26:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (v3 != 1)
      {
        v11 = BYTE6(v9);
        goto LABEL_20;
      }

      if (__OFSUB__(HIDWORD(v4), v4))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = HIDWORD(v4) - v4;
    }

    result = sub_254140660(v4, v9);
LABEL_20:
    v14 = *(v2 + 16);
    v15 = __OFADD__(v14, v11);
    v16 = v14 + v11;
    if (!v15)
    {
      *(v2 + 16) = v16;
      return result;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v3 == 2 && *(result + 16) != *(result + 24))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2541D0258(uint64_t a1)
{
  v11 = xmmword_254252DC0;
  v10 = 0;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  result = sub_2541CF898(a1, *v1, v4, v5, &v11, &v10, a1);
  v8 = v7;
  if (result >= 1)
  {
    if (*(v3 + 16) < result)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    result = sub_2541D1DD8(0, result);
LABEL_5:
    v1[1] = v8;
    if (!__OFSUB__(v5, a1))
    {
      v1[2] = v5 - a1;
      v9 = v11;
      sub_254140660(v11, *(&v11 + 1));
      sub_254134D04(v9, *(&v9 + 1));
      return v9;
    }

    __break(1u);
    goto LABEL_8;
  }

  v8 = v4 + v7;
  if (!__OFADD__(v4, v7))
  {
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2541D0338(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  result = sub_2541CFE4C(a1, *a2, v5, v6);
  v9 = v8;
  if (result > 0)
  {
    if (*(v4 + 16) < result)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    result = sub_2541D1DD8(0, result);
LABEL_5:
    a2[1] = v9;
    if (!__OFSUB__(v6, a1))
    {
      a2[2] = v6 - a1;
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  v9 = v5 + v8;
  if (!__OFADD__(v5, v8))
  {
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2541D03D4(uint64_t a1, unint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2 && *(v6 + 16) != *(v6 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v8)
  {
    if (v6 != v6 >> 32)
    {
      goto LABEL_7;
    }

LABEL_11:
    *a3 = a1;
    a3[1] = a2;
    sub_254140660(a1, a2);

    return sub_254134D04(v6, v7);
  }

  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((*a4 & 1) == 0)
  {
    *a4 = 1;
    *&v15 = sub_2541EFFDC(a5);
    *(&v15 + 1) = v9;
    v10 = *a3;
    v11 = a3[1];
    sub_254140660(*a3, v11);
    sub_25424D528();
    sub_254134D04(v10, v11);
    v12 = *a3;
    v13 = a3[1];
    *a3 = v15;
    sub_254134D04(v12, v13);
  }

  return sub_25424D528();
}

__n128 sub_2541D04F8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = result.n128_u64[0];
  return result;
}

uint64_t sub_2541D0524()
{
  v1 = sub_2541D1878(*v0, v0[1], v0[2]);

  return v1;
}

void sub_2541D0590()
{
  if (!v0[2])
  {
    return;
  }

  v1 = v0[3];
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v1 >= v3)
  {
    return;
  }

  v4 = (v2 + 16 * v1 + 40);
  while (v1 < v3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = v0[4];
    v8 = *v4 >> 62;
    if (v8 <= 1)
    {
      if (!v8)
      {
        if (v7 < BYTE6(v5))
        {
          goto LABEL_18;
        }

        goto LABEL_5;
      }

      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_27;
      }

      v11 = HIDWORD(v6) - v6;
      goto LABEL_17;
    }

    if (v8 == 2)
    {
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_28;
      }

LABEL_17:
      sub_254140660(*(v4 - 1), *v4);
      if (v7 < v11)
      {
LABEL_18:
        if (v8)
        {
          if (v8 == 2)
          {
            v12 = *(v6 + 16);
          }

          else
          {
            v12 = v6;
          }
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_25;
      }

      goto LABEL_5;
    }

    if (v7 < 0)
    {
      v12 = 0;
LABEL_25:
      sub_2541347C8(v12, v7, v6, v5);
      sub_25424D4C8();
      sub_254134D04(v6, v5);
      v0[4] = v7 + 1;
      return;
    }

LABEL_5:
    sub_254134D04(v6, v5);
    v0[3] = ++v1;
    v0[4] = 0;
    v3 = *(v2 + 16);
    v4 += 2;
    if (v1 >= v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_2541D0710(_BYTE *a1@<X8>)
{
  sub_2541D0590();
  *a1 = v2;
  a1[1] = v3 & 1;
}

double sub_2541D0740@<D0>(uint64_t a1@<X8>)
{
  sub_2541D1BC8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2541D07A8()
{
  v1 = sub_2541D1524(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));

  return v1;
}

uint64_t sub_2541D07F0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_25424E868();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_25424E6D8();
  *v1 = result;
  return result;
}

unint64_t sub_2541D0890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for EncryptionKeyRecord();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_2541D2374(a4, v15, type metadata accessor for EncryptionKeyRecord);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_2541D230C(a4);
}

uint64_t sub_2541D0A18(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
      }

      result = a6;
      if (a6)
      {
        v37 = a6 - 1;
        if (a6 < 1)
        {
          __break(1u);
          goto LABEL_46;
        }

        v26 = a6;
        v11 = 0;
        v12 = a5 >> 62;
        v13 = a4;
        v35 = a4 >> 32;
        v36 = BYTE6(a5);
        v38 = a3 - 1;
        v33 = a4 >> 16;
        v34 = a4 >> 8;
        v31 = HIDWORD(a4);
        v32 = a4 >> 24;
        v29 = HIWORD(a4);
        v30 = a4 >> 40;
        v27 = a5 >> 8;
        v28 = HIBYTE(a4);
        if ((a5 >> 62) <= 1)
        {
          goto LABEL_12;
        }

LABEL_7:
        if (v12 == 2)
        {
          v14 = *(a4 + 16);
          v15 = v14 + v11;
          if (__OFADD__(v14, v11))
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v16 = *(a4 + 24);
          if (v15 >= v14)
          {
            goto LABEL_18;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v16 = 0;
LABEL_14:
        v15 = v11;
        if (v11 < 0)
        {
          goto LABEL_46;
        }

        while (1)
        {
LABEL_18:
          if (v16 < v15)
          {
            goto LABEL_46;
          }

          if (v12 > 1)
          {
            break;
          }

          if (v12)
          {
            if (v15 < a4 || v15 >= v35)
            {
              goto LABEL_50;
            }

            v22 = sub_25424D268();
            if (!v22)
            {
              goto LABEL_58;
            }

            v19 = v22;
            v23 = sub_25424D298();
            v21 = v15 - v23;
            if (__OFSUB__(v15, v23))
            {
              goto LABEL_52;
            }

LABEL_34:
            v17 = *(v19 + v21);
            goto LABEL_35;
          }

          if (v15 >= v36)
          {
            goto LABEL_49;
          }

          v39[0] = v13;
          v39[1] = v34;
          v39[2] = v33;
          v39[3] = v32;
          v39[4] = v31;
          v39[5] = v30;
          v39[6] = v29;
          v39[7] = v28;
          v39[8] = a5;
          v39[9] = v27;
          v39[10] = BYTE2(a5);
          v39[11] = BYTE3(a5);
          v39[12] = BYTE4(a5);
          v39[13] = BYTE5(a5);
          v17 = v39[v15];
LABEL_35:
          *(a2 + v11) = v17;
          if (v38 == v11)
          {
            result = a3;
            a6 = v26;
            goto LABEL_44;
          }

          if (__OFADD__(v11 + 1, 1))
          {
            goto LABEL_47;
          }

          if (v37 == v11)
          {
            a6 = v26;
            result = v26;
            goto LABEL_44;
          }

          ++v11;
          if (v12 > 1)
          {
            goto LABEL_7;
          }

LABEL_12:
          if (!v12)
          {
            v16 = v36;
            goto LABEL_14;
          }

          v15 = a4 + v11;
          if (__OFADD__(a4, v11))
          {
            goto LABEL_54;
          }

          v16 = v35;
          if (v15 < a4)
          {
            goto LABEL_46;
          }
        }

        if (v12 != 2)
        {
          goto LABEL_57;
        }

        if (v15 < *(a4 + 16))
        {
          goto LABEL_48;
        }

        if (v15 >= *(a4 + 24))
        {
          goto LABEL_51;
        }

        v18 = sub_25424D268();
        if (!v18)
        {
          goto LABEL_59;
        }

        v19 = v18;
        v20 = sub_25424D298();
        v21 = v15 - v20;
        if (__OFSUB__(v15, v20))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

LABEL_44:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = result;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541D0D14(void *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2541D1BC8(a4, a5, a6, a7, &v42);
  v10 = *(&v42 + 1);
  v11 = v42;
  v41 = v43;

  if (!a2)
  {
    goto LABEL_46;
  }

  v13 = *(&v43 + 1);
  v14 = v44;
  if (!a3)
  {
    goto LABEL_53;
  }

  if (a3 < 0)
  {
    goto LABEL_59;
  }

  v40 = 0;
  v38 = v10;
  v15 = *(&v43 + 1);
  v16 = 1;
  v36 = *(&v43 + 1);
  v37 = v44;
  v39 = a3;
  while (1)
  {
    if (!v41)
    {
      a3 = 0;
      v27 = v36;
      v14 = v37;
      goto LABEL_49;
    }

    v17 = *(v11 + 16);
    if (v15 >= v17)
    {
      v27 = v15;
LABEL_48:
      a3 = v40;
LABEL_49:
      *a1 = v11;
      a1[1] = v38;
      a1[2] = v41;
      a1[3] = v27;
      goto LABEL_54;
    }

    if (v15 >= v17)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v18 = (v11 + 32 + 16 * v15);
    v19 = *v18;
    v20 = v18[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        v24 = v22 - v23;
        if (__OFSUB__(v22, v23))
        {
          goto LABEL_58;
        }

        goto LABEL_18;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_24:
        result = sub_254134D04(v19, v20);
        v27 = v15 + 1;
        v28 = *(v11 + 16);
        if (v15 + 1 < v28)
        {
          v29 = (v11 + 56 + 16 * v15);
          do
          {
            if (v27 >= v28)
            {
              goto LABEL_56;
            }

            v19 = *(v29 - 1);
            v20 = *v29;
            v21 = *v29 >> 62;
            if (v21 > 1)
            {
              if (v21 != 2)
              {
                goto LABEL_27;
              }

              v32 = *(v19 + 16);
              v31 = *(v19 + 24);
              v30 = v31 - v32;
              if (__OFSUB__(v31, v32))
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (!v21)
              {
                if (BYTE6(v20))
                {
                  goto LABEL_36;
                }

                goto LABEL_27;
              }

              if (__OFSUB__(HIDWORD(v19), v19))
              {
                goto LABEL_57;
              }

              v30 = HIDWORD(v19) - v19;
            }

            sub_254140660(*(v29 - 1), *v29);
            if (v30 > 0)
            {
LABEL_36:
              v14 = 0;
              v15 = v27;
              if (v21)
              {
                goto LABEL_20;
              }

              goto LABEL_37;
            }

LABEL_27:
            result = sub_254134D04(v19, v20);
            ++v27;
            v28 = *(v11 + 16);
            v29 += 2;
          }

          while (v27 < v28);
        }

        v14 = 0;
        goto LABEL_48;
      }

LABEL_62:
      __break(1u);
      return result;
    }

    if (!v21)
    {
      if (v14 >= BYTE6(v20))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_57;
    }

    v24 = HIDWORD(v19) - v19;
LABEL_18:
    sub_254140660(v19, v20);
    if (v14 >= v24)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (v21)
    {
LABEL_20:
      if (v21 == 2)
      {
        v25 = *(v19 + 16);
        result = v25 + v14;
        if (__OFADD__(v25, v14))
        {
          goto LABEL_61;
        }

        v26 = *(v19 + 24);
      }

      else
      {
        v25 = v19;
        result = v19 + v14;
        if (__OFADD__(v19, v14))
        {
          goto LABEL_60;
        }

        v26 = v19 >> 32;
      }
    }

    else
    {
LABEL_37:
      v25 = 0;
      v26 = BYTE6(v20);
      result = v14;
    }

    if (result < v25 || v26 < result)
    {
      goto LABEL_62;
    }

    v33 = sub_25424D4C8();
    result = sub_254134D04(v19, v20);
    ++v14;
    *a2 = v33;
    a3 = v39;
    if (v16 == v39)
    {
      break;
    }

    ++a2;
    v40 = v16;
    if (__OFADD__(v16++, 1))
    {
      __break(1u);
LABEL_46:
      a3 = 0;
      v35 = v43;
      *a1 = v42;
      *(a1 + 1) = v35;
      a1[4] = v44;
      return a3;
    }
  }

  v13 = v15;
  v10 = v38;
LABEL_53:
  *a1 = v11;
  a1[1] = v10;
  a1[2] = v41;
  a1[3] = v13;
LABEL_54:
  a1[4] = v14;
  return a3;
}

uint64_t sub_2541D1020(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  if (!a2)
  {
    goto LABEL_46;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_51;
  }

  if (a3 < 0)
  {
    goto LABEL_59;
  }

  v8 = a2;
  result = 0;
  v9 = a5;
  v10 = 0;
  v34 = a4 + 32;
  v35 = a6;
  v30 = a5;
  v31 = a4 + 56;
  v11 = 1;
  v32 = a3;
  while (1)
  {
    if (!a6)
    {
      v22 = 0;
      a3 = 0;
      a5 = v30;
      goto LABEL_51;
    }

    v33 = result;
    v12 = *(a4 + 16);
    if (v10 >= v12)
    {
      v22 = v10;
      goto LABEL_48;
    }

    if (v10 >= v12)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v13 = (v34 + 16 * v10);
    v14 = *v13;
    v15 = v13[1];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 == 2)
      {
        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        v19 = v17 - v18;
        if (__OFSUB__(v17, v18))
        {
          goto LABEL_58;
        }

        goto LABEL_18;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_24:
        result = sub_254134D04(v14, v15);
        v22 = v10 + 1;
        v23 = *(a4 + 16);
        if (v10 + 1 < v23)
        {
          v24 = (v31 + 16 * v10);
          do
          {
            if (v22 >= v23)
            {
              goto LABEL_56;
            }

            v14 = *(v24 - 1);
            v15 = *v24;
            v16 = *v24 >> 62;
            if (v16 > 1)
            {
              if (v16 != 2)
              {
                goto LABEL_27;
              }

              v27 = *(v14 + 16);
              v26 = *(v14 + 24);
              v25 = v26 - v27;
              if (__OFSUB__(v26, v27))
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (!v16)
              {
                if (BYTE6(v15))
                {
                  goto LABEL_36;
                }

                goto LABEL_27;
              }

              if (__OFSUB__(HIDWORD(v14), v14))
              {
                goto LABEL_57;
              }

              v25 = HIDWORD(v14) - v14;
            }

            sub_254140660(*(v24 - 1), *v24);
            if (v25 > 0)
            {
LABEL_36:
              v9 = 0;
              v10 = v22;
              if (v16)
              {
                goto LABEL_20;
              }

              goto LABEL_37;
            }

LABEL_27:
            result = sub_254134D04(v14, v15);
            ++v22;
            v23 = *(a4 + 16);
            v24 += 2;
          }

          while (v22 < v23);
        }

        v9 = 0;
LABEL_48:
        a3 = v33;
        goto LABEL_49;
      }

LABEL_62:
      __break(1u);
      return result;
    }

    if (!v16)
    {
      if (v9 >= BYTE6(v15))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v14), v14))
    {
      goto LABEL_57;
    }

    v19 = HIDWORD(v14) - v14;
LABEL_18:
    sub_254140660(v14, v15);
    if (v9 >= v19)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (v16)
    {
LABEL_20:
      if (v16 == 2)
      {
        v20 = *(v14 + 16);
        result = v20 + v9;
        if (__OFADD__(v20, v9))
        {
          goto LABEL_61;
        }

        v21 = *(v14 + 24);
      }

      else
      {
        v20 = v14;
        result = v14 + v9;
        if (__OFADD__(v14, v9))
        {
          goto LABEL_60;
        }

        v21 = v14 >> 32;
      }
    }

    else
    {
LABEL_37:
      v20 = 0;
      v21 = BYTE6(v15);
      result = v9;
    }

    if (result < v20 || v21 < result)
    {
      goto LABEL_62;
    }

    v28 = sub_25424D4C8();
    sub_254134D04(v14, v15);
    ++v9;
    *v8 = v28;
    a3 = v32;
    if (v11 == v32)
    {
      break;
    }

    ++v8;
    result = v11;
    v29 = __OFADD__(v11++, 1);
    a6 = v35;
    if (v29)
    {
      __break(1u);
LABEL_46:
      v22 = 0;
      a3 = 0;
LABEL_51:
      v9 = a5;
      goto LABEL_52;
    }
  }

  v22 = v10;
LABEL_49:
  a6 = v35;
  a5 = v30;
LABEL_52:
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = v22;
  v7[4] = v9;
  return a3;
}

uint64_t sub_2541D12E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_2541D2374(v26 + v27 * (v25 | (v20 << 6)), v12, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_2541D1F00(v12, v15);
      sub_2541D1F00(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2541D1524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2541D1BC8(a1, a2, a3, a4, v41);
  v4 = v41[0];
  v5 = v41[2];
  v6 = v41[3];
  v7 = v41[4];
  result = sub_2541D1E98(v41, v40);
  if (v5)
  {
    v9 = *(v4 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v6 >= v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        if (v6 >= v9)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v13 = (v4 + 32 + 16 * v6);
        v14 = *v13;
        v15 = v13[1];
        v16 = v15 >> 62;
        if ((v15 >> 62) > 1)
        {
          break;
        }

        if (!v16)
        {
          if (v7 >= BYTE6(v15))
          {
            goto LABEL_21;
          }

          goto LABEL_8;
        }

        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_63;
        }

        v21 = HIDWORD(v14) - v14;
LABEL_18:
        sub_254140660(v14, v15);
        if (v7 >= v21)
        {
          goto LABEL_21;
        }

LABEL_8:
        if (v16)
        {
LABEL_9:
          if (v16 == 2)
          {
            v17 = *(v14 + 16);
            result = v17 + v7;
            if (__OFADD__(v17, v7))
            {
              goto LABEL_68;
            }

            v18 = *(v14 + 24);
          }

          else
          {
            v17 = v14;
            result = v14 + v7;
            if (__OFADD__(v14, v7))
            {
              goto LABEL_67;
            }

            v18 = v14 >> 32;
          }
        }

        else
        {
LABEL_36:
          v17 = 0;
          v18 = BYTE6(v15);
          result = v7;
        }

        if (result < v17 || v18 < result)
        {
          goto LABEL_69;
        }

        v27 = sub_25424D4C8();
        result = sub_254134D04(v14, v15);
        if (!v11)
        {
          v28 = *(v10 + 3);
          if (((v28 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_66;
          }

          v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
          if (v29 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v29;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
          v31 = swift_allocObject();
          v32 = 2 * _swift_stdlib_malloc_size(v31) - 64;
          *(v31 + 2) = v30;
          *(v31 + 3) = v32;
          v33 = v31 + 32;
          v34 = *(v10 + 3) >> 1;
          if (*(v10 + 2))
          {
            v35 = v10 + 32;
            if (v31 != v10 || v33 >= &v35[v34])
            {
              memmove(v31 + 32, v35, v34);
            }

            *(v10 + 2) = 0;
          }

          v12 = &v33[v34];
          v11 = (v32 >> 1) - v34;

          v10 = v31;
        }

        v36 = __OFSUB__(v11--, 1);
        if (v36)
        {
          goto LABEL_64;
        }

        ++v7;
        *v12++ = v27;
        v9 = *(v4 + 16);
        if (v6 >= v9)
        {
          goto LABEL_57;
        }
      }

      if (v16 == 2)
      {
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        v21 = v19 - v20;
        if (__OFSUB__(v19, v20))
        {
          goto LABEL_62;
        }

        goto LABEL_18;
      }

      if (v7 < 0)
      {
        goto LABEL_69;
      }

LABEL_21:
      result = sub_254134D04(v14, v15);
      v22 = *(v4 + 16);
      if (v6 + 1 < v22)
      {
        v23 = (v4 + 56 + 16 * v6++);
        do
        {
          if (v6 >= v22)
          {
            goto LABEL_61;
          }

          v14 = *(v23 - 1);
          v15 = *v23;
          v16 = *v23 >> 62;
          if (v16 > 1)
          {
            if (v16 != 2)
            {
              goto LABEL_33;
            }

            v26 = *(v14 + 16);
            v25 = *(v14 + 24);
            v24 = v25 - v26;
            if (__OFSUB__(v25, v26))
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (!v16)
            {
              if (BYTE6(v15))
              {
                goto LABEL_35;
              }

              goto LABEL_33;
            }

            if (__OFSUB__(HIDWORD(v14), v14))
            {
              goto LABEL_63;
            }

            v24 = HIDWORD(v14) - v14;
          }

          sub_254140660(*(v23 - 1), *v23);
          if (v24 > 0)
          {
LABEL_35:
            v7 = 0;
            if (v16)
            {
              goto LABEL_9;
            }

            goto LABEL_36;
          }

LABEL_33:
          result = sub_254134D04(v14, v15);
          ++v6;
          v22 = *(v4 + 16);
          v23 += 2;
        }

        while (v6 < v22);
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = MEMORY[0x277D84F90];
  }

LABEL_57:
  result = sub_2541D1ED0(v41);
  v37 = *(v10 + 3);
  if (v37 < 2)
  {
    return v10;
  }

  v38 = v37 >> 1;
  v36 = __OFSUB__(v38, v11);
  v39 = v38 - v11;
  if (!v36)
  {
    *(v10 + 2) = v39;
    return v10;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_2541D1878(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v6 = 0;
      v7 = 0;
      v40 = result;
      v41 = result + 32;
      v8 = MEMORY[0x277D84F90] + 32;
      v39 = result + 56;
      while (1)
      {
        v42 = v8;
        if (v7 <= v3)
        {
          v9 = v3;
        }

        else
        {
          v9 = v7;
        }

        if (v7 >= v3)
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v10 = (v41 + 16 * v7);
        v11 = *v10;
        v12 = v10[1];
        v13 = v12 >> 62;
        if ((v12 >> 62) > 1)
        {
          break;
        }

        if (!v13)
        {
          if (a2 >= BYTE6(v12))
          {
            goto LABEL_24;
          }

          goto LABEL_11;
        }

        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_68;
        }

        v18 = HIDWORD(v11) - v11;
LABEL_21:
        sub_254140660(v11, v12);
        if (a2 >= v18)
        {
          goto LABEL_24;
        }

LABEL_11:
        if (v13)
        {
LABEL_12:
          if (v13 == 2)
          {
            v14 = *(v11 + 16);
            result = v14 + a2;
            if (__OFADD__(v14, a2))
            {
              goto LABEL_73;
            }

            v15 = *(v11 + 24);
          }

          else
          {
            v14 = v11;
            result = v11 + a2;
            if (__OFADD__(v11, a2))
            {
              goto LABEL_72;
            }

            v15 = v11 >> 32;
          }
        }

        else
        {
LABEL_39:
          v14 = 0;
          v15 = BYTE6(v12);
          result = a2;
        }

        if (result < v14 || v15 < result)
        {
          goto LABEL_74;
        }

        v23 = sub_25424D4C8();
        result = sub_254134D04(v11, v12);
        if (v6)
        {
          v24 = v40;
          v25 = v42;
          v26 = __OFSUB__(v6--, 1);
          if (v26)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v27 = *(v4 + 3);
          if (((v27 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_71;
          }

          v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
          if (v28 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v28;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
          v30 = swift_allocObject();
          v31 = 2 * _swift_stdlib_malloc_size(v30) - 64;
          *(v30 + 2) = v29;
          *(v30 + 3) = v31;
          v32 = v30 + 32;
          v33 = *(v4 + 3) >> 1;
          if (*(v4 + 2))
          {
            v34 = v4 + 32;
            if (v30 != v4 || v32 >= &v34[v33])
            {
              memmove(v30 + 32, v34, v33);
            }

            *(v4 + 2) = 0;
          }

          v25 = &v32[v33];
          v35 = (v31 >> 1) - v33;

          v4 = v30;
          v24 = v40;
          v26 = __OFSUB__(v35, 1);
          v6 = v35 - 1;
          if (v26)
          {
            goto LABEL_69;
          }
        }

        ++a2;
        *v25 = v23;
        v8 = (v25 + 1);
        v3 = *(v24 + 16);
        if (v7 >= v3)
        {
          goto LABEL_62;
        }
      }

      if (v13 == 2)
      {
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        v18 = v16 - v17;
        if (__OFSUB__(v16, v17))
        {
          goto LABEL_67;
        }

        goto LABEL_21;
      }

      if (a2 < 0)
      {
        goto LABEL_74;
      }

LABEL_24:
      result = sub_254134D04(v11, v12);
      if (v7 + 1 != v3)
      {
        v19 = (v39 + 16 * v7++);
        do
        {
          if (v9 == v7)
          {
            goto LABEL_66;
          }

          v11 = *(v19 - 1);
          v12 = *v19;
          v13 = *v19 >> 62;
          if (v13 > 1)
          {
            if (v13 != 2)
            {
              goto LABEL_36;
            }

            v22 = *(v11 + 16);
            v21 = *(v11 + 24);
            v20 = v21 - v22;
            if (__OFSUB__(v21, v22))
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (!v13)
            {
              if (BYTE6(v12))
              {
                goto LABEL_38;
              }

              goto LABEL_36;
            }

            if (__OFSUB__(HIDWORD(v11), v11))
            {
              goto LABEL_68;
            }

            v20 = HIDWORD(v11) - v11;
          }

          sub_254140660(*(v19 - 1), *v19);
          if (v20 > 0)
          {
LABEL_38:
            a2 = 0;
            if (v13)
            {
              goto LABEL_12;
            }

            goto LABEL_39;
          }

LABEL_36:
          result = sub_254134D04(v11, v12);
          ++v7;
          v19 += 2;
        }

        while (v3 != v7);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v4 = MEMORY[0x277D84F90];
  }

LABEL_62:
  v36 = *(v4 + 3);
  if (v36 < 2)
  {
    return v4;
  }

  v37 = v36 >> 1;
  v26 = __OFSUB__(v37, v6);
  v38 = v37 - v6;
  if (!v26)
  {
    *(v4 + 2) = v38;
    return v4;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void *sub_2541D1BC8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result[2];
  if (!v5)
  {
    v9 = 0;
    v10 = a2;
LABEL_35:
    *a5 = result;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = v9;
    a5[4] = v10;
    return result;
  }

  v6 = result[4];
  v7 = result[5];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 3)
    {
      v6 = 0;
    }

    else
    {
      v13 = v6 + 16;
      v11 = *(v6 + 16);
      v12 = *(v13 + 8);
      v22 = __OFSUB__(v12, v11);
      v6 = v12 - v11;
      if (v22)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }
  }

  else if (v8)
  {
    v22 = __OFSUB__(HIDWORD(v6), v6);
    LODWORD(v6) = HIDWORD(v6) - v6;
    if (v22)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v6 = v6;
  }

  else
  {
    v6 = BYTE6(v7);
  }

  v22 = __OFSUB__(v6, a2);
  v14 = v6 - a2;
  if (v22)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v14 <= a4)
  {
    v22 = __OFSUB__(a4, v14);
    v15 = a4 - v14;
    if (!v22)
    {
      if (v5 == 1)
      {
        v10 = 0;
        v9 = 1;
      }

      else
      {
        v16 = result + 7;
        v9 = 1;
        while (1)
        {
          v17 = *(v16 - 1);
          v18 = *v16 >> 62;
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v21 = v17 + 16;
              v19 = *(v17 + 16);
              v20 = *(v21 + 8);
              v22 = __OFSUB__(v20, v19);
              v17 = v20 - v19;
              if (v22)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v17 = 0;
            }
          }

          else if (v18)
          {
            v22 = __OFSUB__(HIDWORD(v17), v17);
            LODWORD(v17) = HIDWORD(v17) - v17;
            if (v22)
            {
              goto LABEL_37;
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(*v16);
          }

          v22 = __OFSUB__(v15, v17);
          v23 = v15 - v17;
          if (v23 < 0 != v22)
          {
            break;
          }

          if (v22)
          {
            goto LABEL_36;
          }

          ++v9;
          v16 += 2;
          v15 = v23;
          if (v5 == v9)
          {
            v10 = 0;
            v9 = result[2];
            goto LABEL_35;
          }
        }

        v10 = v15;
      }

      goto LABEL_35;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = 0;
  v10 = a2 + a4;
  if (!__OFADD__(a2, a4))
  {
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2541D1D18(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2541D1DD8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2541B09E0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2541D1D18(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2541D1F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2541D1F64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_2541D216C();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_25424E868();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_25424E868();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_2541D2080(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_25424E868();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_25424E868();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_2541D07F0(result);

  return sub_2541D1F64(v6, v5, 1, v3);
}

unint64_t sub_2541D216C()
{
  result = qword_27F5B9118;
  if (!qword_27F5B9118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5B9118);
  }

  return result;
}

unint64_t sub_2541D21B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2541D230C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E00, &qword_254253F58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541D2374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2541D23E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2541D2430(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2541D2494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2541D24DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2541D2538(uint64_t a1)
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

uint64_t sub_2541D25A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2541D26E8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2541D294C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v17 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25424DE98();
  return (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
}

uint64_t sub_2541D2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2541D294C(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2541D2B3C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 24);
  v3[5] = *(a2 + 16);
  v3[6] = swift_getAssociatedTypeWitness();
  v4 = sub_25424E598();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541D2C30, 0, 0);
}

uint64_t sub_2541D2C30()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25424E5C8();
  v6 = *(v2 - 8);
  v7 = (*(v6 + 48))(v1, 1, v2);
  v8 = v0[9];
  if (v7 == 1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    v9 = 1;
  }

  else
  {
    (*(v6 + 32))(v0[2], v0[9], v0[6]);
    v9 = 0;
  }

  v10 = v0[9];
  (*(v6 + 56))(v0[2], v9, 1, v0[6]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2541D2DC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2541A0F4C;

  return sub_2541D2B3C(a1, a2);
}

uint64_t sub_2541D2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2541D2F34;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_2541D2F34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2541D304C(uint64_t a1)
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

uint64_t sub_2541D30CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_2541D3260(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

void sub_2541D34A4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
    sub_25424E078();
  }

  else
  {
    sub_254148D7C(0, &qword_27F5BAF90, 0x277CBC5E8);
    sub_25424DF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
    sub_25424E088();
  }
}

uint64_t sub_2541D356C()
{
  v0 = sub_25424D988();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v90 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25424D9A8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAFA0, &qword_25425CEE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v88 = &v60 - v8;
  v9 = sub_25424D7A8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_25424D6A8();
  v83 = *(v85 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v82 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_25424D6C8();
  v84 = *(v86 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v81 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25424D5F8();
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = *(v79 + 64);
  MEMORY[0x28223BE20](v16);
  v78 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D698();
  v76 = *(v19 - 8);
  v77 = v19;
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v19);
  v75 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25424D678();
  v73 = *(v22 - 8);
  v74 = v22;
  v23 = *(v73 + 64);
  MEMORY[0x28223BE20](v22);
  v72 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25424D598();
  v69 = *(v70 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v65 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_25424D5B8();
  v67 = *(v68 - 8);
  v27 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_25424D5D8();
  v64 = *(v66 - 8);
  v29 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_25424D638();
  v31 = *(v61 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v61);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_25424D618();
  v35 = *(v60 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v60);
  v38 = &v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25424D658();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25424D788();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = sub_25424D808();
  __swift_allocate_value_buffer(v46, qword_27F5BAEE0);
  v71 = __swift_project_value_buffer(v46, qword_27F5BAEE0);
  sub_25424D778();
  sub_25424D768();
  sub_25424D648();
  sub_25424D728();
  (*(v40 + 8))(v43, v39);
  sub_25424D768();
  sub_25424D608();
  sub_25424D6F8();
  (*(v35 + 8))(v38, v60);
  sub_25424D768();
  sub_25424D628();
  sub_25424D718();
  (*(v31 + 8))(v34, v61);
  sub_25424D768();
  v47 = v63;
  sub_25424D5A8();
  v48 = v65;
  sub_25424D588();
  v49 = v62;
  sub_25424D5C8();
  (*(v69 + 8))(v48, v70);
  (*(v67 + 8))(v47, v68);
  sub_25424D708();
  (*(v64 + 8))(v49, v66);
  sub_25424D768();
  v50 = v72;
  sub_25424D668();
  sub_25424D738();
  (*(v73 + 8))(v50, v74);
  sub_25424D768();
  v51 = v75;
  sub_25424D668();
  sub_25424D748();
  (*(v76 + 8))(v51, v77);
  sub_25424D768();
  v52 = v78;
  sub_25424D5E8();
  sub_25424D6E8();
  (*(v79 + 8))(v52, v80);
  sub_25424D768();
  v54 = v82;
  v53 = v83;
  v55 = v85;
  (*(v83 + 104))(v82, *MEMORY[0x277CC93F8], v85);
  v56 = v81;
  sub_25424D6B8();
  (*(v53 + 8))(v54, v55);
  sub_25424D758();
  (*(v84 + 8))(v56, v86);
  sub_25424D768();
  sub_25424D798();
  v57 = v88;
  sub_25424D958();
  v58 = sub_25424D968();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_25424D998();
  sub_25424D978();
  return sub_25424D7E8();
}

uint64_t static CloudKitExporter.dateFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F5B8460 != -1)
  {
    swift_once();
  }

  v2 = sub_25424D808();
  v3 = __swift_project_value_buffer(v2, qword_27F5BAEE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void CloudKitExporter.init(outputStreamFactory:operationGroup:container:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = [a1 defaultConfiguration];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 container];

    if (v12)
    {

      a4 = v12;
    }

    *a5 = a2;
    a5[1] = a3;
    a5[2] = a4;
    a5[3] = a1;
  }

  else
  {
    __break(1u);
  }
}

void CloudKitExporter.init(outputStreamFactory:qualityOfService:container:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  v11 = v10;
  sub_2541D41D0(&v11, a4, a3);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = v10;
}

void sub_2541D41D0(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 defaultConfiguration];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v6 setContainer_];

  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  v23[0] = 47;
  v23[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v8);
  v22[2] = v23;
  v10 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_2541D8BB8, v22, 0xD000000000000024, v9 | 0x8000000000000000, v9);
  if (!v10[2])
  {
LABEL_8:

    __break(1u);
    goto LABEL_9;
  }

  v11 = v10[4];
  v12 = v10[5];
  v13 = v10[6];
  v14 = v10[7];

  v15 = MEMORY[0x259C05BF0](v11, v12, v13, v14);
  v17 = v16;

  MEMORY[0x259C05CA0](v15, v17);

  MEMORY[0x259C05CA0](46, 0xE100000000000000);
  v23[0] = &type metadata for CloudKitExporter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF98, &qword_25425CEE0);
  v18 = sub_25424DD08();
  MEMORY[0x259C05CA0](v18);

  v19 = sub_25424DCA8();

  [v5 setName_];

  if (a3 == -1)
  {
    return;
  }

  v20 = [v5 defaultConfiguration];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 setQualityOfService_];
}

uint64_t CloudKitExporter.start()()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2541D441C, 0, 0);
}

uint64_t sub_2541D441C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277CBBEB8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2541D4504;
  v6 = *(v0 + 32);

  return MEMORY[0x28210DF30]();
}

uint64_t sub_2541D4504()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2541D4620;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2541D4620()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2541D4684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_2541D46AC, 0, 0);
}

id sub_2541D46AC()
{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 16) = xmmword_254254380;
  *(inited + 32) = [v1 privateCloudDatabase];
  result = [v1 sharedCloudDatabase];
  *(inited + 40) = result;
  if ((inited & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C06580](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(inited + 32);
  }

  v5 = v4;
  *(v0 + 144) = v4;
  *(v0 + 64) = *(v0 + 104);
  *(v0 + 80) = *(v0 + 120);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_2541D47F8;

  return sub_2541D4CFC(v5);
}

uint64_t sub_2541D47F8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[17];
    v2[22] = v2[18];
    v2[23] = v0;

    v6 = sub_2541D4BC0;
  }

  else
  {
    v6 = sub_2541D4920;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2541D4920()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 136);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x259C06580](1, v2);
  }

  else
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 40);
  }

  v4 = v3;
  *(v0 + 160) = v3;
  *(v0 + 64) = *(v0 + 104);
  *(v0 + 80) = *(v0 + 120);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_2541D4A0C;

  sub_2541D4CFC(v4);
}

uint64_t sub_2541D4A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v2[22] = v2[20];
    v2[23] = v0;
    v5 = v2[17];

    v6 = sub_2541D4BC0;
  }

  else
  {
    v6 = sub_2541D4B38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2541D4B38()
{
  v1 = *(v0 + 136);

  swift_setDeallocating();
  v2 = *(v1 + 16);
  swift_arrayDestroy();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2541D4BC0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 184);

  return v1();
}

uint64_t sub_2541D4C24(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25412F724;

  return sub_2541D4684(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_2541D4CFC(uint64_t a1)
{
  *(v2 + 184) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
  *(v2 + 192) = v3;
  v4 = *(v3 - 8);
  *(v2 + 200) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v6 = sub_25424DAA8();
  *(v2 + 216) = v6;
  v7 = *(v6 - 8);
  *(v2 + 224) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v9 = v1[1];
  *(v2 + 240) = *v1;
  *(v2 + 256) = v9;

  return MEMORY[0x2822009F8](sub_2541D4E2C, 0, 0);
}

uint64_t sub_2541D4E2C()
{
  v37 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[23];
  sub_25421B67C(v0[29]);
  v5 = v4;

  v6 = v2;
  v7 = v1;
  v8 = sub_25424DA88();
  v9 = sub_25424E408();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[32];
    v11 = v0[28];
    v33 = v0[27];
    v34 = v0[29];
    v32 = v0[23];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v36[0] = v13;
    v36[1] = 40;
    v36[2] = 0xE100000000000000;
    v14 = [v10 containerID];
    v15 = [v14 containerIdentifier];

    v16 = sub_25424DCB8();
    v18 = v17;

    MEMORY[0x259C05CA0](v16, v18);

    MEMORY[0x259C05CA0](8236, 0xE200000000000000);
    [v32 scope];
    v19 = CKDatabaseScopeString();
    v20 = sub_25424DCB8();
    v22 = v21;

    MEMORY[0x259C05CA0](v20, v22);

    MEMORY[0x259C05CA0](41, 0xE100000000000000);
    v23 = sub_2542203C4(40, 0xE100000000000000, v36);

    *(v12 + 4) = v23;
    _os_log_impl(&dword_254124000, v8, v9, "Fetching zones for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x259C07330](v13, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    (*(v11 + 8))(v34, v33);
  }

  else
  {
    v25 = v0[28];
    v24 = v0[29];
    v26 = v0[27];

    (*(v25 + 8))(v24, v26);
  }

  v28 = v0[25];
  v27 = v0[26];
  v29 = v0[24];
  v35 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_2541D5228;
  swift_continuation_init();
  v0[17] = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA000, &unk_254258180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  sub_25424E068();
  (*(v28 + 32))(boxed_opaque_existential_1, v27, v29);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2541D34A4;
  v0[13] = &block_descriptor_9;
  [v35 fetchAllRecordZonesWithCompletionHandler_];
  (*(v28 + 8))(boxed_opaque_existential_1, v29);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2541D5228()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_2541D58F8;
  }

  else
  {
    v3 = sub_2541D5338;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541D5338()
{
  v1 = *(v0 + 176);
  *(v0 + 280) = v1;
  if (v1 >> 62)
  {
LABEL_21:
    v18 = sub_25424E868();
    *(v0 + 288) = v18;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 288) = v2;
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        v4 = *(v0 + 280);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x259C06580](v3);
        }

        else
        {
          if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v5 = *(v4 + 8 * v3 + 32);
        }

        v6 = v5;
        *(v0 + 296) = v5;
        *(v0 + 304) = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v7 = [v5 zoneID];
        v8 = [v7 zoneName];

        v9 = sub_25424DCB8();
        v11 = v10;

        if (v9 == 0x746C75616665645FLL && v11 == 0xEC000000656E6F5ALL)
        {
        }

        else
        {
          v13 = sub_25424EAB8();

          if ((v13 & 1) == 0)
          {
            v14 = *(v0 + 256);
            *(v0 + 144) = *(v0 + 240);
            *(v0 + 160) = v14;
            v15 = swift_task_alloc();
            *(v0 + 312) = v15;
            *v15 = v0;
            v15[1] = sub_2541D559C;
            v16 = *(v0 + 184);

            return sub_2541D5A1C(v16, v6);
          }
        }

        v3 = *(v0 + 304);
      }

      while (v3 != *(v0 + 288));
    }
  }

  v19 = *(v0 + 280);
  v20 = *(v0 + 232);
  v21 = *(v0 + 208);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2541D559C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 280);

    v5 = sub_2541D5978;
  }

  else
  {
    v5 = sub_2541D56B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2541D56B8()
{
  v1 = *(v0 + 304);
  if (v1 == *(v0 + 288))
  {
LABEL_2:
    v2 = *(v0 + 280);
    v3 = *(v0 + 232);
    v4 = *(v0 + 208);

    v5 = *(v0 + 8);

    v5();
    return;
  }

  while (1)
  {
    v6 = *(v0 + 280);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x259C06580](v1);
    }

    else
    {
      if (v1 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v6 + 8 * v1 + 32);
    }

    v8 = v7;
    *(v0 + 296) = v7;
    *(v0 + 304) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v9 = [v7 zoneID];
    v10 = [v9 zoneName];

    v11 = sub_25424DCB8();
    v13 = v12;

    if (v11 != 0x746C75616665645FLL || v13 != 0xEC000000656E6F5ALL)
    {
      break;
    }

LABEL_7:

    v1 = *(v0 + 304);
    if (v1 == *(v0 + 288))
    {
      goto LABEL_2;
    }
  }

  v15 = sub_25424EAB8();

  if (v15)
  {
    goto LABEL_7;
  }

  v16 = *(v0 + 256);
  *(v0 + 144) = *(v0 + 240);
  *(v0 + 160) = v16;
  v17 = swift_task_alloc();
  *(v0 + 312) = v17;
  *v17 = v0;
  v17[1] = sub_2541D559C;
  v18 = *(v0 + 184);

  sub_2541D5A1C(v18, v8);
}

uint64_t sub_2541D58F8()
{
  v1 = v0[34];
  swift_willThrow();
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2541D5978()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2541D5A1C(uint64_t a1, uint64_t a2)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;
  v4 = sub_25424E3A8();
  *(v3 + 328) = v4;
  v5 = *(v4 - 8);
  *(v3 + 336) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF18, &qword_25425CE78);
  *(v3 + 352) = v7;
  v8 = *(v7 - 8);
  *(v3 + 360) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF20, &qword_25425CE80) - 8) + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  v11 = sub_25424DAA8();
  *(v3 + 408) = v11;
  v12 = *(v11 - 8);
  *(v3 + 416) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  v14 = v2[1];
  *(v3 + 440) = *v2;
  *(v3 + 456) = v14;

  return MEMORY[0x2822009F8](sub_2541D5C1C, 0, 0);
}

uint64_t sub_2541D5C1C()
{
  v84 = v0;
  v1 = (v0 + 440);
  v2 = *(v0 + 448);
  (*(v0 + 440))([*(v0 + 312) scope], *(v0 + 320));
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 448);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  if (*(v0 + 168))
  {
    v8 = *(v0 + 432);
    sub_25412DC4C((v0 + 144), v0 + 104);
    sub_25421B67C(v8);
    v9 = v6;
    v10 = v7;

    v11 = v4;
    v12 = v3;
    v13 = sub_25424DA88();
    v14 = sub_25424E408();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 432);
    v18 = *(v0 + 408);
    v17 = *(v0 + 416);
    if (v15)
    {
      v20 = *(v0 + 312);
      v19 = *(v0 + 320);
      v77 = *(v0 + 456);
      v78 = *v1;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v81 = v22;
      *v21 = 136315138;
      v82 = v78;
      v83 = v77;
      v23 = sub_2541D6C30(v20, v19);
      v25 = sub_2542203C4(v23, v24, &v81);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_254124000, v13, v14, "Fetching records for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v26 = v22;
      v1 = (v0 + 440);
      MEMORY[0x259C07330](v26, -1, -1);
      MEMORY[0x259C07330](v21, -1, -1);

      (*(v17 + 8))(v16, v18);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v45 = *(v0 + 456);
    v47 = *(v0 + 312);
    v46 = *(v0 + 320);
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    sub_25424E688();

    *&v82 = 8827;
    *(&v82 + 1) = 0xE200000000000000;
    v48 = [v45 containerID];
    v49 = [v48 containerIdentifier];

    v50 = sub_25424DCB8();
    v52 = v51;

    MEMORY[0x259C05CA0](v50, v52);

    MEMORY[0x259C05CA0](578501154, 0xE400000000000000);
    [v47 scope];
    v53 = CKDatabaseScopeString();
    sub_25424DCB8();

    v54 = sub_25424DD18();
    v56 = v55;

    MEMORY[0x259C05CA0](v54, v56);

    MEMORY[0x259C05CA0](578501154, 0xE400000000000000);
    v57 = [v46 zoneID];
    v58 = [v57 zoneName];

    v59 = sub_25424DCB8();
    v61 = v60;

    MEMORY[0x259C05CA0](v59, v61);

    MEMORY[0x259C05CA0](8075810, 0xE300000000000000);
    v62 = *(v0 + 136);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
    sub_25424E7F8();

    *(v1 + 80) = 1;
    *(v0 + 472) = 0;
    v63 = [*(v0 + 320) zoneID];
    *(v0 + 480) = v63;
    v64 = *(MEMORY[0x277CBBE88] + 4);
    v65 = swift_task_alloc();
    *(v0 + 488) = v65;
    *v65 = v0;
    v65[1] = sub_2541D6298;
    v66 = *(v0 + 312);

    return MEMORY[0x28210DF00](v63, 0, 0, 0, 1);
  }

  else
  {
    v27 = *(v0 + 424);
    sub_254132E5C(v0 + 144, &qword_27F5BAF28, &qword_25425CE88);
    sub_25421B67C(v27);
    v28 = v6;
    v29 = v7;

    v30 = v4;
    v31 = v3;
    v32 = sub_25424DA88();
    v33 = sub_25424E418();

    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(v0 + 408);
    if (v34)
    {
      v39 = *(v0 + 312);
      v38 = *(v0 + 320);
      v79 = *(v0 + 456);
      v80 = *v1;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v81 = v41;
      *v40 = 136315138;
      v82 = v80;
      v83 = v79;
      v42 = sub_2541D6C30(v39, v38);
      v44 = sub_2542203C4(v42, v43, &v81);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_254124000, v32, v33, "Skipping %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x259C07330](v41, -1, -1);
      MEMORY[0x259C07330](v40, -1, -1);

      (*(v36 + 8))(v35, v37);
    }

    else
    {

      (*(v36 + 8))(v35, v37);
    }

    v68 = *(v0 + 424);
    v67 = *(v0 + 432);
    v70 = *(v0 + 392);
    v69 = *(v0 + 400);
    v72 = *(v0 + 376);
    v71 = *(v0 + 384);
    v73 = *(v0 + 368);
    v74 = *(v0 + 344);

    v75 = *(v0 + 8);

    return v75();
  }
}

uint64_t sub_2541D6298(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v5;
  v8 = *v5;
  v9 = *(*v5 + 488);
  v10 = *v5;
  *(v8 + 521) = a4;
  *(v8 + 496) = a1;
  *(v8 + 504) = v4;

  if (v4)
  {
    v11 = sub_2541D6B20;
  }

  else
  {
    *(v8 + 512) = a3;

    v11 = sub_2541D63F4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2541D63F4()
{
  v81 = *(v0 + 512);
  v1 = *(v0 + 496);

  v7 = 0;
  v8 = v1 + 64;
  v9 = -1;
  v83 = v1;
  v10 = -1 << *(v1 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v1 + 64);
  v12 = (63 - v10) >> 6;
  v13 = *(v0 + 520);
  v82 = v12;
  for (i = v1 + 64; ; v8 = i)
  {
    if (!v11)
    {
      if (v12 <= v7 + 1)
      {
        v29 = v7 + 1;
      }

      else
      {
        v29 = v12;
      }

      v30 = v29 - 1;
      while (1)
      {
        v28 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v28 >= v12)
        {
          v62 = *(v0 + 392);
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF30, &qword_25425CE90);
          (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
          v11 = 0;
          v7 = v30;
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * v28);
        ++v7;
        if (v11)
        {
          v27 = v13;
          v7 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x28210DF00](v2, v3, v4, v5, v6);
    }

    v27 = v13;
    v28 = v7;
LABEL_16:
    v31 = *(v0 + 384);
    v32 = *(v0 + 392);
    v33 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v34 = v33 | (v28 << 6);
    v35 = *(*(v83 + 48) + 8 * v34);
    sub_2541D8ACC(*(v83 + 56) + *(*(v0 + 360) + 72) * v34, v31);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF30, &qword_25425CE90);
    v37 = *(v36 + 48);
    *v32 = v35;
    sub_25417E6C8(v31, v32 + v37, &qword_27F5BAF18, &qword_25425CE78);
    (*(*(v36 - 8) + 56))(v32, 0, 1, v36);
    v38 = v35;
    v13 = v27;
    v12 = v82;
LABEL_17:
    v39 = *(v0 + 400);
    sub_25417E6C8(*(v0 + 392), v39, &qword_27F5BAF20, &qword_25425CE80);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF30, &qword_25425CE90);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {
      break;
    }

    v41 = *(v0 + 400);
    v42 = *(v0 + 368);
    v43 = *(v0 + 376);
    v44 = *(v0 + 352);
    v45 = *v41;
    sub_25417E6C8(v41 + *(v40 + 48), v43, &qword_27F5BAF18, &qword_25425CE78);
    v46 = 44;
    if (v13)
    {
      v46 = 0;
    }

    v47 = 0xE000000000000000;
    if ((v13 & 1) == 0)
    {
      v47 = 0xE100000000000000;
    }

    *(v0 + 272) = v46;
    *(v0 + 280) = v47;
    *(v0 + 288) = 34;
    *(v0 + 296) = 0xE100000000000000;
    v85 = v45;
    v48 = [v45 recordName];
    v49 = sub_25424DCB8();
    v51 = v50;

    MEMORY[0x259C05CA0](v49, v51);

    MEMORY[0x259C05CA0](14882, 0xE200000000000000);
    MEMORY[0x259C05CA0](*(v0 + 288), *(v0 + 296));

    sub_2541D8ACC(v43, v42);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = *(v0 + 368);
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v53;
      sub_254148D7C(0, &qword_27F5BAF38, 0x277CCAAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF40, &qword_25425CE98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254254360;
      *(inited + 32) = 0x726F727265;
      *(inited + 40) = 0xE500000000000000;
      swift_getErrorValue();
      v16 = *(v0 + 248);
      v17 = *(v0 + 256);
      *(v0 + 240) = v17;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v16, v17);
      sub_2541D74D0((v0 + 216), (inited + 48));
      __swift_destroy_boxed_opaque_existential_1((v0 + 216));
      v19 = sub_254224B24(inited);
      swift_setDeallocating();
      sub_254132E5C(inited + 32, &qword_27F5BAF48, &qword_25425CEA0);
      *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF50, &qword_25425CEA8);
      *(v0 + 184) = v19;
      v20 = sub_2541D7CD4((v0 + 184), 14);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1((v0 + 184));
      MEMORY[0x259C05CA0](v20, v22);
    }

    else
    {
      v55 = *(v0 + 336);
      v54 = *(v0 + 344);
      v56 = *(v0 + 328);
      v57 = (*(v55 + 32))(v54, v53, v56);
      v58 = MEMORY[0x259C06250](v57);
      v59 = sub_2541D6DBC(v58);
      v61 = v60;

      MEMORY[0x259C05CA0](v59, v61);

      (*(v55 + 8))(v54, v56);
    }

    v23 = *(v0 + 376);
    v24 = *(v0 + 272);
    v25 = *(v0 + 280);
    v26 = *(v0 + 136);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
    sub_25424E7F8();

    v2 = sub_254132E5C(v23, &qword_27F5BAF18, &qword_25425CE78);
    v13 = 0;
  }

  v64 = *(v0 + 521);
  v65 = *(v0 + 496);

  if (v64)
  {
    *(v0 + 520) = v13 & 1;
    *(v0 + 472) = v81;
    v66 = [*(v0 + 320) zoneID];
    *(v0 + 480) = v66;
    v67 = *(MEMORY[0x277CBBE88] + 4);
    v68 = swift_task_alloc();
    *(v0 + 488) = v68;
    *v68 = v0;
    v68[1] = sub_2541D6298;
    v69 = *(v0 + 312);
    v2 = v66;
    v3 = v81;
    v4 = 0;
    v5 = 0;
    v6 = 1;

    return MEMORY[0x28210DF00](v2, v3, v4, v5, v6);
  }

  v70 = *(v0 + 136);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
  sub_25424E7F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v72 = *(v0 + 424);
  v71 = *(v0 + 432);
  v74 = *(v0 + 392);
  v73 = *(v0 + 400);
  v76 = *(v0 + 376);
  v75 = *(v0 + 384);
  v77 = *(v0 + 368);
  v78 = *(v0 + 344);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_2541D6B20()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v11 = *(v0 + 368);
  v12 = *(v0 + 344);

  v7 = *(v0 + 136);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 104, *(v0 + 128));
  sub_25424E7F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v8 = *(v0 + 8);
  v9 = *(v0 + 504);

  return v8();
}

uint64_t sub_2541D6C30(void *a1, void *a2)
{
  v5 = [*(v2 + 16) containerID];
  v6 = [v5 containerIdentifier];

  v7 = sub_25424DCB8();
  v9 = v8;

  MEMORY[0x259C05CA0](v7, v9);

  MEMORY[0x259C05CA0](8236, 0xE200000000000000);
  [a1 scope];
  v10 = CKDatabaseScopeString();
  v11 = sub_25424DCB8();
  v13 = v12;

  MEMORY[0x259C05CA0](v11, v13);

  MEMORY[0x259C05CA0](8236, 0xE200000000000000);
  v14 = [a2 zoneID];
  v15 = [v14 zoneName];

  v16 = sub_25424DCB8();
  v18 = v17;

  MEMORY[0x259C05CA0](v16, v18);

  MEMORY[0x259C05CA0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_2541D6DBC(void *a1)
{
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25424E558();
  v9 = v8;
  v10 = [a1 creationDate];
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v70[3] = v2;
  __swift_allocate_boxed_opaque_existential_1(v70);
  sub_25424D888();

  sub_2541D74D0(v70, v71);
  __swift_destroy_boxed_opaque_existential_1(v70);
  v12 = [a1 modificationDate];
  if (v12)
  {
    v13 = v12;
    v58 = v9;
    v59 = v7;
    v55 = v6;
    v56 = v3;
    v57 = v2;
    v69[3] = v2;
    __swift_allocate_boxed_opaque_existential_1(v69);
    sub_25424D888();

    sub_2541D74D0(v69, v70);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v14 = [a1 values];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    v15 = sub_25424DB78();

    ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF60, &qword_25425CEB0);
    *&v67 = v15;
    sub_2541D74D0(&v67, v69);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    v16 = [objc_msgSend(a1 encryptedValues)];
    swift_unknownObjectRelease();
    v17 = sub_25424DF98();

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF68, &qword_25425CEB8);
    v18 = v17;
    v61 = *(v17 + 16);
    if (v61)
    {
      v19 = 0;
      v20 = (v17 + 40);
      v21 = MEMORY[0x277D84F98];
      v60 = v18;
      while (1)
      {
        if (v19 >= *(v18 + 16))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v23 = *(v20 - 1);
        v24 = *v20;

        v25 = a1;
        v26 = [a1 encryptedValues];
        v27 = sub_25424DCA8();
        v28 = [v26 objectForKeyedSubscript_];
        swift_unknownObjectRelease();

        if (!v28)
        {
          goto LABEL_27;
        }

        ObjectType = swift_getObjectType();
        *&v67 = v28;
        sub_25412DCA8(&v67, &v65);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v21;
        v31 = sub_25422095C(v23, v24);
        v32 = v21[2];
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_25;
        }

        v35 = v30;
        if (v21[3] >= v34)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v21 = v64;
            if (v30)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_2542230E0();
            v21 = v64;
            if (v35)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_254221B7C(v34, isUniquelyReferenced_nonNull_native);
          v36 = sub_25422095C(v23, v24);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_30;
          }

          v31 = v36;
          v21 = v64;
          if (v35)
          {
LABEL_5:
            v22 = (v21[7] + 32 * v31);
            __swift_destroy_boxed_opaque_existential_1(v22);
            sub_25412DCA8(&v65, v22);

            goto LABEL_6;
          }
        }

        v21[(v31 >> 6) + 8] |= 1 << v31;
        v38 = (v21[6] + 16 * v31);
        *v38 = v23;
        v38[1] = v24;
        sub_25412DCA8(&v65, (v21[7] + 32 * v31));
        v39 = v21[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_26;
        }

        v21[2] = v41;
LABEL_6:
        ++v19;
        v20 += 2;
        v18 = v60;
        a1 = v25;
        if (v61 == v19)
        {
          goto LABEL_21;
        }
      }
    }

    v21 = MEMORY[0x277D84F98];
LABEL_21:

    *&v62 = v21;
    sub_2541D74D0(&v62, &v67);
    __swift_destroy_boxed_opaque_existential_1(&v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF40, &qword_25425CE98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25425CD20;
    *(inited + 32) = 0x795464726F636572;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &off_286639078;
    *(inited + 40) = 0xEA00000000006570;
    v43 = v58;
    *(inited + 48) = v59;
    *(inited + 56) = v43;
    *(inited + 88) = 0x64657461657263;
    *(inited + 96) = 0xE700000000000000;
    sub_254140708(v71, inited + 104);
    *(inited + 144) = 0x6465696669646F6DLL;
    *(inited + 152) = 0xE800000000000000;
    sub_254140708(v70, inited + 160);
    *(inited + 200) = 0x7365756C6176;
    *(inited + 208) = 0xE600000000000000;
    sub_254140708(v69, inited + 216);
    *(inited + 256) = 0x6574707972636E65;
    *(inited + 264) = 0xE900000000000064;
    sub_254140708(&v67, inited + 272);
    v44 = sub_254224B24(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF48, &qword_25425CEA0);
    swift_arrayDestroy();
    v45 = [a1 expirationDate];
    if (v45)
    {
      v46 = v55;
      v47 = v45;
      sub_25424D888();

      v48 = v57;
      v66 = v57;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
      v50 = v56;
      (*(v56 + 16))(boxed_opaque_existential_1, v46, v48);
      sub_2541D74D0(&v65, &v62);
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *&v65 = v44;
      sub_2541AE66C(&v62, 0x73657269707865, 0xE700000000000000, v51);
      (*(v50 + 8))(v46, v48);
      v44 = v65;
    }

    sub_254148D7C(0, &qword_27F5BAF38, 0x277CCAAA0);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF50, &qword_25425CEA8);
    *&v62 = v44;
    v52 = sub_2541D7CD4(&v62, 14);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(&v62);
    return v52;
  }

  else
  {
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_25424EB38();
    __break(1u);
  }

  return result;
}

uint64_t sub_2541D74D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v77[4] = *MEMORY[0x277D85DE8];
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  sub_25414076C(a1, v77);
  v12 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    v13 = v74[0];
    a2[3] = v12;
    a2[4] = &off_286639078;
    *a2 = v13;
    goto LABEL_8;
  }

  v14 = MEMORY[0x277D83B88];
  if (swift_dynamicCast())
  {
    v15 = *&v74[0];
    v16 = &off_286639080;
LABEL_7:
    a2[3] = v14;
    a2[4] = v16;
    *a2 = v15;
    goto LABEL_8;
  }

  v14 = MEMORY[0x277D83E88];
  if (swift_dynamicCast())
  {
    v15 = *&v74[0];
    v16 = &off_286639088;
    goto LABEL_7;
  }

  v19 = MEMORY[0x277D83A90];
  if (swift_dynamicCast())
  {
    v20 = v74[0];
    a2[3] = v19;
    a2[4] = &off_286639090;
    *a2 = v20;
    goto LABEL_8;
  }

  v21 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    v22 = *&v74[0];
    a2[3] = v21;
    a2[4] = &off_286639098;
    *a2 = v22;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v24 = v75;
    v23 = v76;
    v25 = v76 >> 62;
    if ((v76 >> 62) > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_38;
      }

      v29 = *(v75 + 16);
      v30 = *(v75 + 24);
    }

    else
    {
      if (!v25)
      {
        if ((v76 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      v29 = v75;
      v30 = v75 >> 32;
    }

    if (v29 != v30)
    {
LABEL_39:
      v46 = objc_opt_self();
      v47 = sub_25424D4F8();
      v70[0] = 0;
      v48 = [v46 JSONObjectWithData:v47 options:0 error:v70];

      v49 = v70[0];
      if (v48)
      {
        sub_25424E5D8();
        swift_unknownObjectRelease();
        sub_25412DCA8(&v71, v74);
        sub_2541D74D0(a2, v74);
        sub_254134D04(v24, v23);
        __swift_destroy_boxed_opaque_existential_1(v74);
      }

      else
      {
        v56 = v49;
        v57 = sub_25424D3A8();

        swift_willThrow();
        v58 = sub_25424D508();
        v60 = v59;
        a2[3] = v12;
        a2[4] = &off_286639078;
        sub_254134D04(v24, v23);
        *a2 = v58;
        a2[1] = v60;
      }

      goto LABEL_8;
    }

LABEL_38:
    a2[3] = v12;
    a2[4] = &off_286639078;
    sub_254134D04(v24, v23);
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    (*(v5 + 32))(v9, v11, v4);
    if (qword_27F5B8460 == -1)
    {
LABEL_20:
      v26 = sub_25424D808();
      __swift_project_value_buffer(v26, qword_27F5BAEE0);
      v27 = sub_25424D7F8();
      a2[3] = v12;
      a2[4] = &off_286639078;
      *a2 = v27;
      a2[1] = v28;
      (*(v5 + 8))(v9, v4);
      goto LABEL_8;
    }

LABEL_48:
    swift_once();
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF68, &qword_25425CEB8);
  if (swift_dynamicCast())
  {
    v4 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
    v31 = sub_25424E878();
    v32 = v31;
    v33 = 0;
    v9 = (v4 + 64);
    v34 = 1 << *(v4 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v4 + 64);
    v5 = (v34 + 63) >> 6;
    v68 = v31 + 64;
    v69 = v4;
    if (v36)
    {
      while (1)
      {
        v37 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
LABEL_33:
        v40 = v37 | (v33 << 6);
        v41 = (*(v69 + 48) + 16 * v40);
        v4 = *v41;
        v12 = v41[1];
        sub_25414076C(*(v69 + 56) + 32 * v40, &v71);

        sub_2541D74D0(v74, &v71);
        __swift_destroy_boxed_opaque_existential_1(&v71);
        *(v68 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v42 = (v32[6] + 16 * v40);
        *v42 = v4;
        v42[1] = v12;
        sub_25412DC4C(v74, v32[7] + 40 * v40);
        v43 = v32[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          break;
        }

        v32[2] = v45;
        if (!v36)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_28:
      v38 = v33;
      while (1)
      {
        v33 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v33 >= v5)
        {

          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF50, &qword_25425CEA8);
          a2[4] = &off_2866390A8;
          *a2 = v32;
          goto LABEL_8;
        }

        v39 = *&v9[8 * v33];
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v36 = (v39 - 1) & v39;
          goto LABEL_33;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF70, &qword_25425CEC0);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(v74, &v71);
    v50 = v72;
    v51 = v73;
    v52 = __swift_project_boxed_opaque_existential_1(&v71, v72);
    MEMORY[0x28223BE20](v52);
    *(&v68 - 4) = v50;
    *(&v68 - 3) = v51;
    *(&v68 - 2) = sub_2541D7F48;
    *(&v68 - 1) = 0;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF78, &qword_25425CEC8);
    v55 = sub_2541D8018(sub_2541D8B94, (&v68 - 6), v50, v53, MEMORY[0x277D84A98], v51, MEMORY[0x277D84AC0], v54);
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF80, &qword_25425CED0);
    a2[4] = &off_2866390A0;
    *a2 = v55;
    __swift_destroy_boxed_opaque_existential_1(&v71);
  }

  else
  {
    v61 = a1[3];
    v62 = __swift_project_boxed_opaque_existential_1(a1, v61);
    v63 = *(*(v61 - 8) + 64);
    MEMORY[0x28223BE20](v62);
    (*(v65 + 16))(&v68 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    v66 = sub_25424DD08();
    a2[3] = v12;
    a2[4] = &off_286639078;
    *a2 = v66;
    a2[1] = v67;
  }

LABEL_8:
  result = __swift_destroy_boxed_opaque_existential_1(v77);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541D7CD4(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_25424DCF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = 0;
  v7 = [ObjCClassFromMetadata dataWithJSONObject:sub_25424EAA8() options:a2 error:&v19];
  swift_unknownObjectRelease();
  v8 = v19;
  if (v7)
  {
    v9 = sub_25424D518();
    v11 = v10;

    sub_25424DCE8();
    v12 = sub_25424DCD8();
    if (v13)
    {
      v14 = v12;
      sub_254134D04(v9, v11);
      v15 = *MEMORY[0x277D85DE8];
      return v14;
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    sub_25424E688();

    v19 = 0xD000000000000025;
    v20 = 0x80000002542512D0;
    v18 = sub_25424D448();
    MEMORY[0x259C05CA0](v18);
  }

  else
  {
    v17 = v8;
    sub_25424D3A8();

    swift_willThrow();
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000021, 0x80000002542512A0);
    swift_getErrorValue();
    sub_25424EA98();
  }

  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t sub_2541D7F4C(uint64_t a1, void (*a2)(uint64_t *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2541D8018(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_25424E598();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_25424DEA8();
  v70 = sub_25424E778();
  v65 = sub_25424E788();
  sub_25424E738();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_25424DE98();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25424E5C8();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_25424E768();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_25424E5C8();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_25424E768();
      sub_25424E5C8();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

unint64_t sub_2541D870C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25424DE88();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2541B0BE0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2541B0BE0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25424DE58();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25424DDA8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25424DDA8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25424DE88();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2541B0BE0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25424DE88();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2541B0BE0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2541B0BE0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25424DDA8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541D8ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF18, &qword_25425CE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541D8B3C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25424EAB8() & 1;
  }
}

uint64_t sub_2541D8B94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_2541D7F4C(a1, *(v1 + 32));
}

uint64_t sub_2541D8BB8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25424EAB8() & 1;
  }
}

uint64_t sub_2541D8C30()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25412F910;

  return (sub_25412FDA0)();
}

void sub_2541D8D04(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_2541D8FDC;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541ED26C;
  v6[3] = &block_descriptor_10;
  v5 = _Block_copy(v6);

  [a1 exitWithExitStatus:a3 reply:v5];
  _Block_release(v5);
}

uint64_t sub_2541D8DE4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2541D8FFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D17DC8]) init];
  v1 = objc_allocWithZone(MEMORY[0x277D17D98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAFC0, &unk_25425CF40);
  v2 = sub_25424DF88();
  v3 = [v1 initWithDelegate:0 filters:v2];

  type metadata accessor for MetricsManager();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v3;
  result = [v0 addObserver:v3 forProtocol:&unk_286640B30];
  off_27F5BAFB0 = v4;
  return result;
}

uint64_t static MetricsManager.sharedInstance.getter()
{
  if (qword_27F5B8468 != -1)
  {
    swift_once();
  }
}

void MetricsManager.submitLogEvent(_:error:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v2 + 16);
    if (a2)
    {
      v7 = sub_25424D398();
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v6 submitLogEvent:v5 error:?];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000013, 0x8000000254251330);
    swift_getObjectType();
    sub_25424EA98();
    sub_25424E858();
    __break(1u);
  }
}

uint64_t MetricsManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t MetricsManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SimpleAsyncCache.__allocating_init()()
{
  v0 = swift_allocObject();
  SimpleAsyncCache.init()();
  return v0;
}

void *SimpleAsyncCache.init()()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v0[14] = sub_25424DB48();
  return v0;
}

uint64_t SimpleAsyncCache.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SimpleAsyncCache.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t SimpleAsyncCache.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_2541D948C, v2, 0);
}

uint64_t sub_2541D948C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  swift_beginAccess();
  v5 = *(v1 + 112);
  v6 = v2[10];
  v7 = v2[11];
  v8 = v2[12];

  sub_25424DBF8();

  v9 = v0[1];

  return v9();
}

uint64_t SimpleAsyncCache.get(_:)()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[14];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];

  return sub_25424DBC8();
}

uint64_t sub_2541D9624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v16 - v12;
  (*(*(a4 - 8) + 16))(&v16 - v12, a1, a4);
  (*(*(a5 - 8) + 16))(&v13[*(TupleTypeMetadata2 + 48)], a2, a5);
  v14 = sub_25424E2E8();
  (*(v10 + 8))(v13, TupleTypeMetadata2);
  return v14 & 1;
}

uint64_t SimpleAsyncCache.set(_:key:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_25424E598();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v19 - v10;
  v12 = *(v5 + 80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v15 + 16))(&v19 - v14, a2, v12);
  v16 = *(v6 - 8);
  (*(v16 + 16))(v11, a1, v6);
  (*(v16 + 56))(v11, 0, 1, v6);
  swift_beginAccess();
  v17 = *(v5 + 96);
  sub_25424DBE8();
  sub_25424DC08();
  return swift_endAccess();
}

uint64_t SimpleAsyncCache.clear(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = sub_25424E598();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v16 - v8;
  v10 = *(v3 + 80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v13 + 16))(&v16 - v12, a1, v10);
  (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
  swift_beginAccess();
  v14 = *(v3 + 96);
  sub_25424DBE8();
  sub_25424DC08();
  return swift_endAccess();
}

uint64_t sub_2541D9B74(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return SimpleAsyncCache.subscript.getter(a1, a2);
}

uint64_t sub_2541D9C20(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2541D9C40, v3, 0);
}

uint64_t sub_2541D9C40()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = SimpleAsyncCache.get(_:)();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2541D9CA0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2541D9CC4, v4, 0);
}

uint64_t sub_2541D9CC4()
{
  v1 = v0[4];
  SimpleAsyncCache.set(_:key:)(v0[2], v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2541D9D28(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2541D9D48, v3, 0);
}

uint64_t sub_2541D9D48()
{
  v1 = v0[3];
  SimpleAsyncCache.clear(_:)(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t static HMVCommands.registerForTaskWithIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541D9E80, 0, 0);
}

uint64_t sub_2541D9E80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2541B244C;

  return sub_25412FDA0(sub_25412FDA0, sub_2541DA040, v3);
}

void sub_2541D9F58(void *a1, uint64_t a2)
{
  v4 = sub_25424DCA8();
  v6[4] = sub_2541DA240;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541ED26C;
  v6[3] = &block_descriptor_11;
  v5 = _Block_copy(v6);

  [a1 hmvutilRegisterForTaskWithIdentifierWithIdentifier:v4 reply:v5];
  _Block_release(v5);
}

void sub_2541DA040(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_2541D9F58(a1, a2);
}

uint64_t sub_2541DA048(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

HomeKitEvents::EventCategory_optional __swiftcall EventCategory.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 3)
  {
    switch(rawValue)
    {
      case 1:
        *v1 = 0;
        return rawValue;
      case 2:
        *v1 = 1;
        return rawValue;
      case 3:
        *v1 = 2;
        return rawValue;
    }

LABEL_14:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 6)
  {
    if (rawValue == 7)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 255)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_14;
  }

  if (rawValue == 4)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 5)
  {
    goto LABEL_14;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_2541DA454()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_25425D180[v1]);
  return sub_25424EC28();
}

uint64_t sub_2541DA4DC()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_25425D180[v1]);
  return sub_25424EC28();
}

BOOL sub_2541DA534(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (qword_25425D180[v6] != qword_25425D180[a1]);
  return v4 != 0;
}

unint64_t sub_2541DA578()
{
  result = qword_27F5BB048;
  if (!qword_27F5BB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB048);
  }

  return result;
}

unint64_t sub_2541DA5D0()
{
  result = qword_27F5BB050;
  if (!qword_27F5BB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB058, &qword_25425D108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB050);
  }

  return result;
}

unint64_t sub_2541DA654()
{
  result = qword_27F5BB060;
  if (!qword_27F5BB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB060);
  }

  return result;
}

uint64_t XPCConnectionError.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

unint64_t sub_2541DA738()
{
  result = qword_27F5BB068;
  if (!qword_27F5BB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB068);
  }

  return result;
}

uint64_t SomeEvent.anyEvent.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_2541DA834(v7);
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
  a1[3] = v2;
  a1[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2541DA834@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for SomeAccessoryEvent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SomeEvent();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541DD76C(v2, v18, type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a1[3] = type metadata accessor for HomeActivityStateEvent(0);
      a1[4] = sub_2541DD83C(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_2541DD7D4(v18, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
    }

    sub_2541DD7D4(v18, v10, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    sub_2541DD76C(v10, v8, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28)
    {
      if (v28 == 1)
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
        v29 = sub_2541DD83C(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
        v30 = type metadata accessor for EnergyKit.LoadSessionEvent;
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
        v29 = sub_2541DD83C(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
        v30 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      }
    }

    else
    {
      SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
      v29 = sub_2541DD83C(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
      v30 = type metadata accessor for EnergyKit.LoadEvent;
    }

    v31 = v30;
    v39 = v29;
    v32 = __swift_allocate_boxed_opaque_existential_1(&v37);
    sub_2541DD7D4(v8, v32, v31);
    sub_25412DC4C(&v37, v40);
    v33 = v41;
    v34 = v42;
    v35 = __swift_project_boxed_opaque_existential_1(v40, v41);
    a1[3] = v33;
    a1[4] = *(v34 + 16);
    v36 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v33 - 8) + 16))(v36, v35, v33);
    v26 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
    v27 = v10;
  }

  else
  {
    sub_2541DD7D4(v18, v14, type metadata accessor for SomeAccessoryEvent);
    sub_254239494(v40);
    v22 = v41;
    v23 = v42;
    v24 = __swift_project_boxed_opaque_existential_1(v40, v41);
    a1[3] = v22;
    a1[4] = *(v23 + 16);
    v25 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    v26 = type metadata accessor for SomeAccessoryEvent;
    v27 = v14;
  }

  sub_2541DD70C(v27, v26);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_2541DACB8(uint64_t a1)
{
  v2 = sub_2541DCFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DACF4(uint64_t a1)
{
  v2 = sub_2541DCFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541DAD30()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x694B796772656E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F737365636361;
  }
}

uint64_t sub_2541DAD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2541DD574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2541DADBC(uint64_t a1)
{
  v2 = sub_2541DCEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DADF8(uint64_t a1)
{
  v2 = sub_2541DCEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541DAE34(uint64_t a1)
{
  v2 = sub_2541DCF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DAE70(uint64_t a1)
{
  v2 = sub_2541DCF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541DAEAC(uint64_t a1)
{
  v2 = sub_2541DCF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541DAEE8(uint64_t a1)
{
  v2 = sub_2541DCF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SomeEvent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB070, &qword_25425D290);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v40 - v4;
  v48 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB078, &qword_25425D298);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v43 = type metadata accessor for HomeActivityStateEvent(0);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB080, &qword_25425D2A0);
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v40 = type metadata accessor for SomeAccessoryEvent();
  v16 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SomeEvent();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB088, &qword_25425D2A8);
  v23 = *(v54 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v54);
  v26 = &v40 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541DCEF4();
  sub_25424EC78();
  sub_2541DD76C(v53, v22, type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v44;
      sub_2541DD7D4(v22, v44, type metadata accessor for HomeActivityStateEvent);
      v56 = 1;
      sub_2541DCF9C();
      v31 = v45;
      v32 = v54;
      sub_25424E9A8();
      sub_2541DD83C(&qword_27F5B9C80, type metadata accessor for HomeActivityStateEvent);
      v33 = v47;
      sub_25424EA18();
      (*(v46 + 8))(v31, v33);
      v34 = type metadata accessor for HomeActivityStateEvent;
    }

    else
    {
      v30 = v49;
      sub_2541DD7D4(v22, v49, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v57 = 2;
      sub_2541DCF48();
      v38 = v50;
      v32 = v54;
      sub_25424E9A8();
      sub_2541DD83C(&qword_27F5BB0A0, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v39 = v52;
      sub_25424EA18();
      (*(v51 + 8))(v38, v39);
      v34 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
    }

    sub_2541DD70C(v30, v34);
    return (*v29)(v26, v32);
  }

  else
  {
    sub_2541DD7D4(v22, v18, type metadata accessor for SomeAccessoryEvent);
    v55 = 0;
    sub_2541DCFF0();
    v35 = v54;
    sub_25424E9A8();
    sub_2541DD83C(&qword_27F5BB0B8, type metadata accessor for SomeAccessoryEvent);
    v36 = v42;
    sub_25424EA18();
    (*(v41 + 8))(v15, v36);
    sub_2541DD70C(v18, type metadata accessor for SomeAccessoryEvent);
    return (*v29)(v26, v35);
  }
}

uint64_t SomeEvent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25424D948();
  v51 = *(v53 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = v47 - v11;
  v12 = sub_25424D8B8();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v47 - v17;
  v19 = type metadata accessor for HomeActivityStateEvent(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SomeAccessoryEvent();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SomeEvent();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541DD76C(v1, v30, type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2541DD7D4(v30, v22, type metadata accessor for HomeActivityStateEvent);
      MEMORY[0x259C06AA0](1);
      v47[0] = sub_2541DD83C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
      sub_25424DC28();
      v32 = type metadata accessor for EventBase(0);
      v33 = *(v32 + 20);
      v34 = sub_2541DD83C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      v35 = v53;
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_25425D868[v22[*(v32 + 24)]]);
      v36 = &v22[*(v19 + 20)];
      MEMORY[0x259C06AA0](*v36);
      if (v36[1] != 2)
      {
        sub_25424EBF8();
      }

      v39 = v50;
      sub_25424EBF8();
      v40 = type metadata accessor for HomeActivityStateEvent.State(0);
      sub_254132DF4(&v36[*(v40 + 24)], v18, &unk_27F5BA1B0, qword_2542544A0);
      v41 = v52;
      v42 = (*(v52 + 48))(v18, 1, v12);
      v47[1] = v34;
      if (v42 == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v43 = v48;
        (*(v41 + 32))(v48, v18, v12);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v41 + 8))(v43, v12);
      }

      v44 = v51;
      sub_254132DF4(&v22[*(v19 + 24)], v39, &unk_27F5B8E50, &qword_254254390);
      if ((*(v44 + 48))(v39, 1, v35) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v45 = v49;
        (*(v44 + 32))(v49, v39, v35);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v44 + 8))(v45, v35);
      }

      v37 = type metadata accessor for HomeActivityStateEvent;
      v38 = v22;
    }

    else
    {
      sub_2541DD7D4(v30, v6, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      MEMORY[0x259C06AA0](2);
      EnergyKit.SomeEnergyKitEvent.hash(into:)(a1);
      v37 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v38 = v6;
    }
  }

  else
  {
    sub_2541DD7D4(v30, v26, type metadata accessor for SomeAccessoryEvent);
    MEMORY[0x259C06AA0](0);
    SomeAccessoryEvent.hash(into:)(a1);
    v37 = type metadata accessor for SomeAccessoryEvent;
    v38 = v26;
  }

  return sub_2541DD70C(v38, v37);
}

uint64_t SomeEvent.hashValue.getter()
{
  sub_25424EBD8();
  SomeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t SomeEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0C0, &qword_25425D2B0);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0C8, &qword_25425D2B8);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0D0, &qword_25425D2C0);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0D8, &qword_25425D2C8);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for SomeEvent();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v61 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_2541DCEF4();
  v33 = v78;
  sub_25424EC68();
  if (!v33)
  {
    v62 = v25;
    v63 = v28;
    v64 = v22;
    v35 = v72;
    v34 = v73;
    v78 = 0;
    v65 = v18;
    v37 = v74;
    v36 = v75;
    v38 = v77;
    v39 = sub_25424E988();
    v40 = (2 * *(v39 + 16)) | 1;
    v80 = v39;
    v81 = v39 + 32;
    v82 = 0;
    v83 = v40;
    v41 = sub_254140884();
    if (v41 == 3 || v82 != v83 >> 1)
    {
      v45 = sub_25424E6F8();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v47 = v65;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v84 = 1;
          sub_2541DCF9C();
          v42 = v78;
          sub_25424E8F8();
          v43 = v36;
          v44 = v76;
          if (v42)
          {
            goto LABEL_9;
          }

          v78 = v30;
          type metadata accessor for HomeActivityStateEvent(0);
          sub_2541DD83C(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent);
          v58 = v62;
          v59 = v68;
          sub_25424E978();
          (*(v69 + 8))(v34, v59);
          (*(v44 + 8))(v17, v77);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v58;
        }

        else
        {
          v84 = 2;
          sub_2541DCF48();
          v53 = v37;
          v54 = v78;
          sub_25424E8F8();
          v55 = v76;
          if (v54)
          {
            goto LABEL_9;
          }

          v43 = v36;
          v78 = v30;
          type metadata accessor for EnergyKit.SomeEnergyKitEvent();
          sub_2541DD83C(&qword_27F5BB0E0, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
          v56 = v64;
          v57 = v70;
          sub_25424E978();
          (*(v71 + 8))(v53, v57);
          (*(v55 + 8))(v17, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v56;
        }

LABEL_17:
        v60 = v78;
        sub_2541DD7D4(v51, v78, type metadata accessor for SomeEvent);
        sub_2541DD7D4(v60, v43, type metadata accessor for SomeEvent);
        return __swift_destroy_boxed_opaque_existential_1(v79);
      }

      v84 = 0;
      sub_2541DCFF0();
      v50 = v78;
      sub_25424E8F8();
      if (!v50)
      {
        v78 = v30;
        type metadata accessor for SomeAccessoryEvent();
        sub_2541DD83C(&qword_27F5BB0E8, type metadata accessor for SomeAccessoryEvent);
        v51 = v63;
        v52 = v67;
        sub_25424E978();
        (*(v66 + 8))(v35, v52);
        (*(v76 + 8))(v17, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v36;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v76 + 8))(v17, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_2541DC5A8()
{
  sub_25424EBD8();
  SomeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541DC5EC()
{
  sub_25424EBD8();
  SomeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t SomeEvent.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomeActivityStateEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SomeEvent();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F0, &unk_254254580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F8, &unk_25425D2D0);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(v16, v15);
    sub_254140708(v15, v14);
    SomeAccessoryEvent.init(_:)(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_2541DD7D4(v11, a2, type metadata accessor for SomeEvent);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (swift_dynamicCast())
  {
    sub_2541DD7D4(v7, v11, type metadata accessor for HomeActivityStateEvent);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA368, &qword_254258CF8);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(v16, v15);
    sub_254140708(v15, v14);
    EnergyKit.SomeEnergyKitEvent.init(_:)(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
    goto LABEL_7;
  }

  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000019, 0x8000000254250CF0);
  v15[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB0F0, &qword_25425D2E0);
  v13 = sub_25424DD08();
  MEMORY[0x259C05CA0](v13);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EA98();
  result = sub_25424E858();
  __break(1u);
  return result;
}