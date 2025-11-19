uint64_t sub_252996B54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HomeAutomationIntentContext(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_252995A10(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_252996C64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252996CAC()
{
  result = qword_27F540DF0;
  if (!qword_27F540DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540DF0);
  }

  return result;
}

uint64_t sub_252996D00(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    sub_252996C64(a2, type metadata accessor for HomeAutomationHomeLocation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252996D9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode;
  v8 = sub_252E36324();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + 24) = *(a1 + 16);
  v16 = *(a1 + 24);
  *(v1 + 32) = v16;
  *(v1 + 40) = *(a1 + 32);
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_attribute;
  swift_beginAccess();
  sub_252956C1C(a1 + v9, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_attribute);
  v15 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_entityNames) = v15;
  v14 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_roomNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_roomNames) = v14;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_zoneNames) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_zoneNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetedHomeName) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_deviceTypes);
  sub_252956C1C(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetState, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetState);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSensorTrippedRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSensorTrippedRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isGarageDoorRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isGarageDoorRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_userDefinedDuration) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_userDefinedDuration);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isOpenRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isCloseRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isLockRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isLockRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isUnlockRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isUnlockRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isDisarmRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isDisarmRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmAwayRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmAwayRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmStayRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmStayRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmNightRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmNightRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTVRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTVRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numericValue) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numericValue);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isInCurrentRoom) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isInCurrentRoom);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isColorRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isColorRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isScheduleRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isScheduleRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSceneRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOnRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOnRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOffRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOffRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTemperatureRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTemperatureRequest);
  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor;
  swift_beginAccess();
  sub_252956C1C(a1 + v10, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetColor);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isJobResumed) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isJobResumed);
  v11 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_secondaryCleanMode;
  swift_beginAccess();
  sub_252956C1C(a1 + v11, v6);
  swift_beginAccess();

  sub_252956C98(v6, v1 + v7);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_serviceAreaNames) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_serviceAreaNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numOverflowServiceAreas) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numOverflowServiceAreas);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isRVC) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isRVC);

  return v1;
}

uint64_t sub_25299726C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540600, &qword_252E3CF90);
    sub_252996C64(a2, MEMORY[0x277D55C48]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntentContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntentContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25299745C()
{
  result = qword_27F540E20;
  if (!qword_27F540E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540E20);
  }

  return result;
}

unint64_t sub_2529974B4()
{
  result = qword_27F540E28;
  if (!qword_27F540E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540E28);
  }

  return result;
}

unint64_t sub_25299750C()
{
  result = qword_27F540E30;
  if (!qword_27F540E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540E30);
  }

  return result;
}

uint64_t sub_252997560()
{
  v0 = sub_252E37DE4();

  if (v0 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2529975D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  if (a1 == 0x6F66696E55736168 && a2 == 0xEF65676E61526D72 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252B3B048(v12);
    v13 = sub_252E36324();
    v14 = (*(*(v13 - 8) + 48))(v12, 1, v13) != 1;
    result = sub_252938BBC(v12);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v14;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000252E6DC30 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252B3B048(v10);
    v16 = sub_252E36324();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      result = sub_252938BBC(v10);
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      *(a3 + 24) = v16;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
      return (*(v17 + 32))(boxed_opaque_existential_0, v10, v16);
    }
  }

  else
  {

    return sub_252CDF514(a1, a2, a3);
  }

  return result;
}

unint64_t sub_252997898(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_45;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_25299EB54();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540610, &qword_252E3CF98);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for HomeAutomationEntityState(0);
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252997BE4(uint64_t a1)
{
  v1 = a1;
  v26 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeAutomationEntityState(0);
    sub_25299EBD8(&qword_27F540E40, type metadata accessor for HomeAutomationEntityState);
    result = sub_252E373E4();
    v1 = v21;
    v3 = v22;
    v5 = v23;
    v4 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v10 = (v5 + 64) >> 6;
  v11 = MEMORY[0x277D84F90];
  v12 = v4;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v12;
    v14 = v6;
    v15 = v12;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_25291AE30();
      return v11;
    }

    while (1)
    {
      MEMORY[0x2530AD700](v18);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v11 = v26;
      v12 = v15;
      v6 = v16;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_252E37904())
      {
        type metadata accessor for HomeAutomationEntityState(0);
        v18 = swift_dynamicCast();
        v15 = v12;
        v16 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_20;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.removeDuplicates()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  MEMORY[0x28223BE20](v8);
  v22 = &v19 - v11;
  v12 = sub_252E36E14();
  v28 = v12;
  if (sub_252E372F4())
  {
    v20 = v6;
    v13 = 0;
    v26 = (v5 + 16);
    v23 = (v5 + 8);
    v24 = (v5 + 32);
    v14 = v22;
    while (1)
    {
      v15 = sub_252E372C4();
      sub_252E37294();
      if (v15)
      {
        v16 = *(v5 + 16);
        v16(v14, (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13), a2);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_252E37A34();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v27 = result;
        v16 = *v26;
        (*v26)(v14, &v27, a2);
        swift_unknownObjectRelease();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_11:
          __break(1u);
          return v28;
        }
      }

      (*v24)(v10, v14, a2);
      v27 = v28;
      sub_252E37304();
      swift_getWitnessTable();
      if ((sub_252E371D4() & 1) == 0)
      {
        v16(v21, v10, a2);
        v14 = v22;
        sub_252E372E4();
      }

      (*v23)(v10, a2);
      ++v13;
      if (v17 == sub_252E372F4())
      {
        return v28;
      }
    }
  }

  return v12;
}

uint64_t sub_252998158(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_252E378C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](i, a3);
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

void *sub_2529982A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_252E36324();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 24);
  if (v11 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v13 = 0;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = v11 & 0xC000000000000001;
    v14 = (v27 + 48);
    v28 = (v27 + 32);
    v15 = MEMORY[0x277D84F90];
    v25 = v11;
    v26 = v10;
    v29 = i;
    while (v31)
    {
      v16 = MEMORY[0x2530ADF00](v13, v11);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v16 + *a1, v6);

      if ((*v14)(v6, 1, v7) == 1)
      {
        sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v18 = a1;
        v19 = *v28;
        (*v28)(v10, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2529F7F74(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_2529F7F74(v20 > 1, v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        v22 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
        v10 = v26;
        v19(v22, v26, v7);
        a1 = v18;
        v11 = v25;
      }

      ++v13;
      if (v17 == v29)
      {
        return v15;
      }
    }

    if (v13 >= *(v30 + 16))
    {
      goto LABEL_18;
    }

    v16 = *(v11 + 8 * v13 + 32);

    v17 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2529985B8(void *a1)
{
  v3 = *(v1 + 24);
  v15 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2530ADF00](v7, v3);
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      v10 = *(result + *a1);

      v11 = swift_unknownObjectRelease();
      if (v10)
      {
        goto LABEL_15;
      }

LABEL_9:
      v7 = v5;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v5 = v7 + 1;
    v8 = *(v3 + 32 + 8 * v7);
    if (!*(v8 + *a1))
    {
      goto LABEL_9;
    }

    v12 = *(v8 + *a1);

LABEL_15:
    MEMORY[0x2530AD700](v11);
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v6 = v15;
  }

  while (v5 != v4);
LABEL_23:
  v14 = sub_252DF8E14(v6);

  return v14;
}

char *sub_25299875C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_252E36324();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 24);
  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v11 = 0;
    v27 = v9 & 0xFFFFFFFFFFFFFF8;
    v28 = v9 & 0xC000000000000001;
    v12 = (v25 + 48);
    v26 = (v25 + 32);
    v13 = MEMORY[0x277D84F90];
    v23 = i;
    v24 = v8;
    while (v28)
    {
      v14 = MEMORY[0x2530ADF00](v11, v9);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v14 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v4);

      if ((*v12)(v4, 1, v5) == 1)
      {
        sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v16 = v9;
        v17 = *v26;
        (*v26)(v8, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2529F7F74(0, v13[2] + 1, 1, v13);
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          v13 = sub_2529F7F74(v18 > 1, v19 + 1, 1, v13);
        }

        v13[2] = v19 + 1;
        v20 = v13 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
        v8 = v24;
        v17(v20, v24, v5);
        v9 = v16;
        i = v23;
      }

      ++v11;
      if (v15 == i)
      {
        goto LABEL_21;
      }
    }

    if (v11 >= *(v27 + 16))
    {
      goto LABEL_18;
    }

    v14 = *(v9 + 8 * v11 + 32);

    v15 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_21:
  v21 = sub_252DF8B58(v13);

  return v21;
}

uint64_t sub_252998A68()
{
  v1 = sub_252997898(*(v0 + 24));
  v2 = v1;
  v10 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      MEMORY[0x2530AD700]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v4;
      if (v6 == i)
      {
        v8 = v10;
        goto LABEL_17;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  return v8;
}

uint64_t sub_252998BC8()
{
  v1 = sub_252997898(*(v0 + 24));
  v17 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_21:
    v16 = v1;
    v2 = sub_252E378C4();
    v1 = v16;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v3;
    while (v4)
    {
      v10 = v1;
      result = MEMORY[0x2530ADF00](v8);
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      v12 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

      v13 = swift_unknownObjectRelease();
      if (v12)
      {
        goto LABEL_15;
      }

      v1 = v10;
LABEL_9:
      v8 = v3;
      if (v3 == v2)
      {
        goto LABEL_23;
      }
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v8 >= *(v5 + 16))
    {
      goto LABEL_20;
    }

    v3 = v8 + 1;
    v9 = *(v6 + 8 * v8);
    if (!*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
    {
      goto LABEL_9;
    }

    v10 = v1;
    v14 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

LABEL_15:
    MEMORY[0x2530AD700](v13);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v7 = v17;
    v1 = v10;
  }

  while (v3 != v2);
LABEL_23:

  return v7;
}

char *sub_252998D84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_252E36324();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252997898(*(v0 + 24));
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = (v26 + 48);
    v27 = (v26 + 32);
    v28 = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = MEMORY[0x277D84F90];
    v24 = v9 & 0xC000000000000001;
    v25 = v9;
    while (v12)
    {
      v15 = MEMORY[0x2530ADF00](v11, v9);
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v4);

      if ((*v13)(v4, 1, v5) == 1)
      {
        sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v17 = i;
        v18 = *v27;
        (*v27)(v29, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2529F7F74(0, *(v14 + 2) + 1, 1, v14);
        }

        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          v14 = sub_2529F7F74(v19 > 1, v20 + 1, 1, v14);
        }

        *(v14 + 2) = v20 + 1;
        v18(&v14[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20], v29, v5);
        i = v17;
        v12 = v24;
        v9 = v25;
      }

      ++v11;
      if (v16 == i)
      {
        goto LABEL_21;
      }
    }

    if (v11 >= *(v28 + 16))
    {
      goto LABEL_18;
    }

    v15 = *(v9 + 8 * v11 + 32);

    v16 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_21:

  v21 = sub_252DF8B58(v14);

  return v21;
}

uint64_t sub_25299909C()
{
  v1 = sub_252997898(*(v0 + 24));
  v19 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_21:
    v16 = v1;
    v2 = sub_252E378C4();
    v1 = v16;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v3;
    while (v4)
    {
      v10 = v1;
      result = MEMORY[0x2530ADF00](v8);
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_34;
      }

      v12 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

      v13 = swift_unknownObjectRelease();
      if (v12)
      {
        goto LABEL_15;
      }

      v1 = v10;
LABEL_9:
      v8 = v3;
      if (v3 == v2)
      {
        goto LABEL_23;
      }
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v8 >= *(v5 + 16))
    {
      goto LABEL_20;
    }

    v3 = v8 + 1;
    v9 = *(v6 + 8 * v8);
    if (!*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
    {
      goto LABEL_9;
    }

    v10 = v1;
    v14 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

LABEL_15:
    MEMORY[0x2530AD700](v13);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v7 = v19;
    v1 = v10;
  }

  while (v3 != v2);
LABEL_23:

  v17 = sub_252DF8E40(v7);

  if (v17 >> 62)
  {
    result = sub_252E378C4();
    if (result != 1)
    {
      goto LABEL_30;
    }

LABEL_25:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2530ADF00](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v18 = *(v17 + 32);
    }

    return v18;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result == 1)
  {
    goto LABEL_25;
  }

LABEL_30:

  return 0;
}

uint64_t sub_2529992EC()
{
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v7 = *(v0 + 24);
    }

    if (sub_252E378C4() == 1)
    {
      goto LABEL_3;
    }

    result = sub_252E378C4();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
LABEL_3:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](0, v2);
        goto LABEL_6;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v2 + 32);

LABEL_6:
        v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

        v6 = sub_252C75BA4(v5);

LABEL_19:
        v11 = sub_252997BE4(v6);

        return v11;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (result < 2)
  {
    v6 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  v1 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v8 = MEMORY[0x2530ADF00](0, v2);
    goto LABEL_15;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = *(v2 + 32);

LABEL_15:
  v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

  v6 = sub_252C75BA4(v9);

  if (v2 >> 62)
  {
    result = sub_252E378C4();
    v10 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      if (v1)
      {
        v13 = MEMORY[0x2530ADF00](v12, v2);
      }

      else
      {
        v13 = *(v2 + 8 * v12 + 32);
      }

      ++v12;
      v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

      v16 = sub_252C75BA4(v15);

      v6 = sub_2529F9DE8(v16, v6);
    }

    while (v10 != v12);
    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_252999524()
{
  v80 = sub_252E36324();
  v1 = *(v80 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v80);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v59 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v67 = &v59 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v69 = &v59 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v68 = &v59 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v59 - v26);
  v28 = sub_252997898(*(v0 + 24));
  v29 = v28;
  v82 = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
    goto LABEL_81;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v31 = MEMORY[0x277D84F90];
  v71 = v4;
  v60 = v16;
  v61 = v21;
  v73 = v27;
  if (v30)
  {
    v81 = v1;
    v1 = 0;
    v27 = (v29 & 0xC000000000000001);
    v16 = v29 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v27)
      {
        MEMORY[0x2530ADF00](v1, v29);
        v21 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v1 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v32 = *(v29 + 8 * v1 + 32);

        v21 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          v30 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      MEMORY[0x2530AD700]();
      v4 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v1;
      if (v21 == v30)
      {
        v1 = v81;
        v31 = v82;
        v4 = v71;
        break;
      }
    }
  }

  v21 = sub_252DF8E6C(v31);

  if (!(v21 >> 62))
  {
    v16 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_68;
    }

    goto LABEL_17;
  }

  v16 = sub_252E378C4();
  if (v16)
  {
LABEL_17:
    v33 = 0;
    v72 = v21 & 0xFFFFFFFFFFFFFF8;
    v78 = (v1 + 56);
    v79 = v21 & 0xC000000000000001;
    v81 = (v1 + 48);
    v63 = (v1 + 32);
    v70 = (v1 + 8);
    v74 = v21;
    v77 = v16;
    while (1)
    {
      if (v79)
      {
        v1 = MEMORY[0x2530ADF00](v33, v21);
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v33 >= *(v72 + 16))
        {
          goto LABEL_76;
        }

        v1 = *(v21 + 8 * v33 + 32);

        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v76 = v4;
          sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
LABEL_33:
          v11 = 0;
          v29 = 0x656E746867697262;
          v27 = &qword_27F540298;
          v4 = &qword_27F540758;
          while (2)
          {
            if (v79)
            {
              v1 = MEMORY[0x2530ADF00](v11, v74);
            }

            else
            {
              if (v11 >= *(v72 + 16))
              {
                goto LABEL_79;
              }

              v1 = *(v74 + 8 * v11 + 32);
            }

            v21 = v11 + 1;
            v40 = v69;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_77;
            }

            v41 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
            sub_252E37024();
            v42 = v80;
            v75(v40, 0, 1, v80);
            v16 = *(v71 + 12);
            v43 = v1 + v41;
            v44 = v65;
            sub_252956C1C(v43, v65);
            sub_252956C1C(v40, v44 + v16);
            if ((v76)(v44, 1, v42) == 1)
            {

              sub_25293847C(v40, v27, &unk_252E3C270);
              if ((v76)(v44 + v16, 1, v42) == 1)
              {
                sub_25293847C(v44, &qword_27F540298, &unk_252E3C270);
                v50 = v62;
LABEL_49:
                v11 = 0;
                v82 = MEMORY[0x277D84F90];
                v29 = &qword_27F540298;
                v27 = &qword_27F540758;
                v51 = v74;
                while (2)
                {
                  if (v79)
                  {
                    v4 = MEMORY[0x2530ADF00](v11, v51);
                  }

                  else
                  {
                    if (v11 >= *(v72 + 16))
                    {
                      goto LABEL_80;
                    }

                    v4 = *(v51 + 8 * v11 + 32);
                  }

                  v21 = v11 + 1;
                  v1 = v67;
                  if (__OFADD__(v11, 1))
                  {
                    goto LABEL_78;
                  }

                  v52 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
                  sub_252E37024();
                  v75(v1, 0, 1, v80);
                  v16 = *(v71 + 12);
                  v53 = v4 + v52;
                  v54 = v80;
                  sub_252956C1C(v53, v50);
                  sub_252956C1C(v1, v50 + v16);
                  if ((v76)(v50, 1, v54) == 1)
                  {
                    sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);
                    if ((v76)(v50 + v16, 1, v54) != 1)
                    {
LABEL_62:
                      sub_25293847C(v50, &qword_27F540758, &unk_252E4D160);
                      goto LABEL_63;
                    }

                    sub_25293847C(v50, &qword_27F540298, &unk_252E3C270);
                  }

                  else
                  {
                    v1 = v60;
                    sub_252956C1C(v50, v60);
                    if ((v76)(v50 + v16, 1, v54) == 1)
                    {
                      sub_25293847C(v67, &qword_27F540298, &unk_252E3C270);
                      (*v70)(v1, v54);
                      goto LABEL_62;
                    }

                    v56 = v66;
                    (*v63)(v66, v50 + v16, v54);
                    sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48]);
                    LODWORD(v73) = sub_252E36EF4();
                    v16 = *v70;
                    (*v70)(v56, v54);
                    sub_25293847C(v67, &qword_27F540298, &unk_252E3C270);
                    (v16)(v1, v54);
                    v27 = &qword_27F540758;
                    sub_25293847C(v50, &qword_27F540298, &unk_252E3C270);
                    if (v73)
                    {
                    }

                    else
                    {
LABEL_63:
                      sub_252E37A94();
                      v55 = *(v82 + 16);
                      sub_252E37AC4();
                      sub_252E37AD4();
                      sub_252E37AA4();
                    }

                    v50 = v62;
                    v51 = v74;
                  }

                  ++v11;
                  if (v21 == v77)
                  {

                    v21 = v82;
                    goto LABEL_68;
                  }

                  continue;
                }
              }

LABEL_35:
              sub_25293847C(v44, &qword_27F540758, &unk_252E4D160);
            }

            else
            {
              v45 = v61;
              sub_252956C1C(v44, v61);
              if ((v76)(v44 + v16, 1, v42) == 1)
              {

                sub_25293847C(v69, v27, &unk_252E3C270);
                (*v70)(v45, v42);
                goto LABEL_35;
              }

              v46 = v29;
              v47 = v27;
              v48 = v66;
              (*v63)(v66, v44 + v16, v42);
              sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48]);
              LODWORD(v73) = sub_252E36EF4();

              v1 = v70;
              v16 = *v70;
              v49 = v48;
              v27 = v47;
              v29 = v46;
              (*v70)(v49, v42);
              sub_25293847C(v69, v27, &unk_252E3C270);
              (v16)(v45, v42);
              v4 = &qword_27F540758;
              sub_25293847C(v44, v27, &unk_252E3C270);
              v50 = v62;
              if (v73)
              {
                goto LABEL_49;
              }
            }

            ++v11;
            if (v21 == v77)
            {
              v21 = v74;
              goto LABEL_68;
            }

            continue;
          }
        }
      }

      v35 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
      v27 = v73;
      sub_252E37024();
      v21 = v80;
      v75 = *v78;
      v75(v27, 0, 1, v80);
      v29 = v4;
      v16 = *(v4 + 12);
      v36 = v1 + v35;
      v37 = v21;
      sub_252956C1C(v36, v11);
      sub_252956C1C(v27, v11 + v16);
      v4 = *v81;
      if ((*v81)(v11, 1, v21) == 1)
      {
        break;
      }

      v38 = v68;
      sub_252956C1C(v11, v68);
      if ((v4)(v11 + v16, 1, v37) == 1)
      {

        sub_25293847C(v73, &qword_27F540298, &unk_252E3C270);
        (*v70)(v38, v37);
LABEL_19:
        sub_25293847C(v11, &qword_27F540758, &unk_252E4D160);
        v4 = v29;
        goto LABEL_20;
      }

      v76 = v4;
      v39 = v66;
      (*v63)(v66, v11 + v16, v37);
      sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48]);
      v29 = v38;
      v21 = v37;
      v64 = sub_252E36EF4();

      v1 = v70;
      v4 = v71;
      v16 = *v70;
      (*v70)(v39, v37);
      v27 = &qword_27F540298;
      sub_25293847C(v73, &qword_27F540298, &unk_252E3C270);
      (v16)(v29, v37);
      sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
      if (v64)
      {
        goto LABEL_33;
      }

LABEL_20:
      ++v33;
      v16 = v77;
      v21 = v74;
      if (v34 == v77)
      {
        goto LABEL_68;
      }
    }

    sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
    if ((v4)(v11 + v16, 1, v21) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

LABEL_68:
  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_70;
    }

LABEL_85:

    return 0;
  }

  result = sub_252E378C4();
  if (result != 1)
  {
    goto LABEL_85;
  }

LABEL_70:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x2530ADF00](0, v21);
    goto LABEL_73;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v58 = *(v21 + 32);

LABEL_73:

    return v58;
  }

  __break(1u);
  return result;
}

uint64_t sub_25299A2D0@<X0>(unint64_t a1@<X8>)
{
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v82 - v7;
  v9 = sub_252997898(*(v1 + 24));
  v10 = v9;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_25:
    v12 = sub_252E378C4();
    v84 = v6;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_26:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v84 = v6;
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_3:
  v13 = 0;
  v85 = v10 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = v13;
    v16 = v14;
    while (1)
    {
      if (v85)
      {
        v17 = MEMORY[0x2530ADF00](v15, v10);
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        v17 = *(v10 + 8 * v15 + 32);

        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v18)
      {
        break;
      }

LABEL_6:

      ++v15;
      if (v13 == v12)
      {
        v14 = v16;
        goto LABEL_27;
      }
    }

    sub_252956C1C(v18 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v8);
    v6 = sub_252E36324();
    v19 = *(v6 - 1);
    if ((*(v19 + 48))(v8, 1, v6) == 1)
    {
      sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
      goto LABEL_6;
    }

    v82 = v11;
    v20 = sub_252E36304();
    v22 = v21;
    (*(v19 + 8))(v8, v6);

    v14 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_2529F7A80(0, *(v16 + 2) + 1, 1, v16);
    }

    v25 = *(v14 + 2);
    v24 = *(v14 + 3);
    v6 = (v25 + 1);
    if (v25 >= v24 >> 1)
    {
      v14 = sub_2529F7A80((v24 > 1), v25 + 1, 1, v14);
    }

    *(v14 + 2) = v6;
    v26 = &v14[16 * v25];
    *(v26 + 4) = v20;
    *(v26 + 5) = v22;
    v11 = v82;
  }

  while (v13 != v12);
LABEL_27:

  v27 = sub_252CC54B8(MEMORY[0x277D84F90]);
  v28 = *(v14 + 2);
  if (!v28)
  {
LABEL_43:

    v50 = 1 << *(v27 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v27 + 64);
    if (v52)
    {
      v53 = 0;
      v54 = __clz(__rbit64(v52));
      v29 = (v52 - 1) & v52;
      v55 = (v50 + 63) >> 6;
LABEL_51:
      v58 = (*(v27 + 48) + 16 * v54);
      v10 = *v58;
      v31 = v58[1];
      v59 = *(*(v27 + 56) + 8 * v54);

      if (!v29)
      {
        goto LABEL_54;
      }

      do
      {
LABEL_52:
        while (1)
        {
          v60 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          v61 = v60 | (v53 << 6);
          v62 = *(*(v27 + 56) + 8 * v61);
          if (v59 < v62)
          {
            break;
          }

          if (!v29)
          {
            goto LABEL_54;
          }
        }

        v64 = (*(v27 + 48) + 16 * v61);
        v10 = *v64;
        v65 = v64[1];

        v31 = v65;
        v59 = v62;
      }

      while (v29);
      while (1)
      {
LABEL_54:
        v63 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
          goto LABEL_75;
        }

        if (v63 >= v55)
        {
          break;
        }

        v29 = *(v27 + 64 + 8 * v63);
        ++v53;
        if (v29)
        {
          v53 = v63;
          goto LABEL_52;
        }
      }

      v29 = v84;
      if (!v31)
      {
        goto LABEL_70;
      }

      v66 = qword_27F53F2C8;

      if (v66 != -1)
      {
        goto LABEL_79;
      }

      goto LABEL_62;
    }

    v56 = 0;
    v55 = (v50 + 63) >> 6;
    v29 = v84;
    while (v55 - 1 != v52)
    {
      v53 = v52 + 1;
      v57 = *(v27 + 8 * v52 + 72);
      v56 -= 64;
      ++v52;
      if (v57)
      {
        v29 = (v57 - 1) & v57;
        v54 = __clz(__rbit64(v57)) - v56;
        goto LABEL_51;
      }
    }

LABEL_70:
    v73 = sub_252E36324();
    v80 = *(*(v73 - 8) + 56);
    v80(v29, 1, 1, v73);
    v80(v83, 1, 1, v73);
LABEL_71:
    sub_252E36324();
    result = (*(*(v73 - 8) + 48))(v29, 1, v73);
    if (result != 1)
    {
      return sub_25293847C(v29, &qword_27F540298, &unk_252E3C270);
    }

    return result;
  }

  v29 = 0;
  v30 = (v14 + 40);
  v31 = 1;
  while (2)
  {
    if (v29 < *(v14 + 2))
    {
      v32 = *(v30 - 1);
      v10 = *v30;

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v27;
      v34 = sub_252A44A10(v32, v10);
      v36 = *(v27 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_76;
      }

      v40 = v35;
      if (*(v27 + 24) >= v39)
      {
        if (v33)
        {
          goto LABEL_35;
        }

        v49 = v34;
        sub_252E035F4();
        v34 = v49;
        v27 = v86;
        if ((v40 & 1) == 0)
        {
LABEL_36:
          *(v27 + 8 * (v34 >> 6) + 64) |= 1 << v34;
          v42 = (*(v27 + 48) + 16 * v34);
          *v42 = v32;
          v42[1] = v10;
          *(*(v27 + 56) + 8 * v34) = 0;
          v43 = *(v27 + 16);
          v38 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v38)
          {
            goto LABEL_78;
          }

          *(v27 + 16) = v44;
          v45 = v34;

          v34 = v45;
        }
      }

      else
      {
        sub_252DFF440(v39, v33);
        v27 = v86;
        v34 = sub_252A44A10(v32, v10);
        if ((v40 & 1) != (v41 & 1))
        {
          result = sub_252E37E24();
          __break(1u);
          return result;
        }

LABEL_35:
        if ((v40 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v46 = *(v27 + 56);
      v47 = *(v46 + 8 * v34);
      v38 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v38)
      {
        goto LABEL_77;
      }

      ++v29;
      *(v46 + 8 * v34) = v48;

      v30 += 2;
      if (v28 == v29)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  swift_once();
LABEL_62:
  v67 = off_27F541CF8;
  if (*(off_27F541CF8 + 2) && (v68 = sub_252A44A10(v10, v31), (v69 & 1) != 0))
  {
    v70 = v68;

    v71 = (v67[7] + v70);
  }

  else
  {
    v71 = &v86;
    v72._countAndFlagsBits = v10;
    v72._object = v31;
    StateSemantic.init(rawValue:)(v72);
  }

  if (*v71 == 77)
  {
    v73 = sub_252E36324();
    v74 = *(*(v73 - 8) + 56);
    v74(v29, 1, 1, v73);
    v75 = v83;
    sub_252E37024();

    v74(v75, 0, 1, v73);
    goto LABEL_71;
  }

  LOBYTE(v86) = *v71;
  StateSemantic.rawValue.getter();
  sub_252E37024();

  v76 = sub_252E36324();
  v77 = *(v76 - 8);
  v78 = *(v77 + 56);
  v78(v29, 0, 1, v76);

  v79 = v83;
  (*(v77 + 32))(v83, v29, v76);
  return (v78)(v79, 0, 1, v76);
}

char *sub_25299AB0C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  result = sub_25299875C();
  v8 = result;
  v9 = *(result + 2);
  if (v9)
  {
    v10 = 0;
    v16[1] = v3 + 16;
    while (v10 < *(v8 + 2))
    {
      v11 = *(v3 + 16);
      v12 = v11(v6, &v8[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10], v2);
      v13 = *(v17 + 24);
      MEMORY[0x28223BE20](v12);
      v16[-2] = v6;
      if (sub_252998158(sub_25299EBB8, &v16[-4], v14))
      {

        v15 = v16[0];
        v11(v16[0], v6, v2);
        (*(v3 + 56))(v15, 0, 1, v2);
        return (*(v3 + 8))(v6, v2);
      }

      ++v10;
      result = (*(v3 + 8))(v6, v2);
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return (*(v3 + 56))(v16[0], 1, 1, v2);
  }

  return result;
}

uint64_t sub_25299AD34(uint64_t *a1, uint64_t a2)
{
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = *a1;
  v21 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
  if (*(v21 + 16) && sub_2529A6CA0(a2, v21))
  {
    goto LABEL_6;
  }

  v31 = v2;
  v22 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type;
  (*(v6 + 16))(v19, a2, v5);
  (*(v6 + 56))(v19, 0, 1, v5);
  v23 = *(v9 + 48);
  sub_252956C1C(v20 + v22, v12);
  sub_252956C1C(v19, &v12[v23]);
  v24 = *(v6 + 48);
  if (v24(v12, 1, v5) != 1)
  {
    sub_252956C1C(v12, v17);
    if (v24(&v12[v23], 1, v5) != 1)
    {
      v26 = v30;
      (*(v6 + 32))(v30, &v12[v23], v5);
      sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48]);
      v25 = sub_252E36EF4();
      v27 = *(v6 + 8);
      v27(v26, v5);
      sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
      v27(v17, v5);
      sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
      return v25 & 1;
    }

    sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
    (*(v6 + 8))(v17, v5);
    goto LABEL_9;
  }

  sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
  if (v24(&v12[v23], 1, v5) != 1)
  {
LABEL_9:
    sub_25293847C(v12, &qword_27F540758, &unk_252E4D160);
    v25 = 0;
    return v25 & 1;
  }

  sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
LABEL_6:
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_25299B138()
{
  v1 = *(v0 + 24);
  v14 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_21:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    while ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2530ADF00](v5, v1);
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_34;
      }

      v8 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);

      v9 = swift_unknownObjectRelease();
      if (v8)
      {
        goto LABEL_15;
      }

LABEL_9:
      v5 = v3;
      if (v3 == v2)
      {
        goto LABEL_23;
      }
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v3 = v5 + 1;
    v6 = *(v1 + 32 + 8 * v5);
    if (!*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room))
    {
      goto LABEL_9;
    }

    v10 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);

LABEL_15:
    MEMORY[0x2530AD700](v9);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v4 = v14;
  }

  while (v3 != v2);
LABEL_23:
  v12 = sub_252DF8E14(v4);

  if (v12 >> 62)
  {
    result = sub_252E378C4();
    if (result != 1)
    {
      goto LABEL_30;
    }

LABEL_25:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v13 = *(v12 + 32);
    }

    return v13;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result == 1)
  {
    goto LABEL_25;
  }

LABEL_30:

  return 0;
}

uint64_t sub_25299B360()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v100 = &v89 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v89 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v89 - v10;
  v102 = MEMORY[0x277D84FA0];
  v12 = *(v0 + 24);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    if (sub_252E378C4() == 1)
    {
      goto LABEL_3;
    }

    result = sub_252E378C4();
LABEL_22:
    if (result < 2)
    {
      v44 = MEMORY[0x277D84FA0];
      goto LABEL_81;
    }

    v94 = v12 & 0xC000000000000001;
    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_89;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(*(v12 + 32) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

      if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
      {
        goto LABEL_91;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_93:
    __break(1u);
    return result;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_22;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_76;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(*(v12 + 32) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

    if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      goto LABEL_78;
    }

LABEL_7:
    v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_79;
    }

    goto LABEL_8;
  }

  __break(1u);
  do
  {
    __break(1u);
LABEL_89:
    v29 = *(MEMORY[0x2530ADF00](0, v12) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

    swift_unknownObjectRelease();
    if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
    {
LABEL_91:
      v98 = v29;
      v30 = sub_252E378C4();
    }

    else
    {
LABEL_27:
      v98 = v29;
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v95 = v12;
    if (v30)
    {
      v97 = v13;
      v101[0] = MEMORY[0x277D84F90];
      result = sub_2529AA380(0, v30 & ~(v30 >> 63), 0);
      if (v30 < 0)
      {
        goto LABEL_93;
      }

      v31 = 0;
      v32 = v101[0];
      v33 = v98;
      v99 = v98 & 0xC000000000000001;
      do
      {
        if (v99)
        {
          v34 = MEMORY[0x2530ADF00](v31, v33);
        }

        else
        {
          v34 = *(v33 + 8 * v31 + 32);
        }

        sub_252956C1C(v34 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v9);
        v35 = sub_252E36324();
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v9, 1, v35) == 1)
        {

          sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
          v37 = 0;
          v38 = 0;
        }

        else
        {
          v39 = sub_252E36314();
          v33 = v98;
          v37 = v39;
          v38 = v40;

          (*(v36 + 8))(v9, v35);
        }

        v101[0] = v32;
        v42 = *(v32 + 16);
        v41 = *(v32 + 24);
        v11 = (v42 + 1);
        if (v42 >= v41 >> 1)
        {
          sub_2529AA380((v41 > 1), v42 + 1, 1);
          v33 = v98;
          v32 = v101[0];
        }

        ++v31;
        *(v32 + 16) = v11;
        v43 = v32 + 16 * v42;
        *(v43 + 32) = v37;
        *(v43 + 40) = v38;
      }

      while (v30 != v31);

      v13 = v97;
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v44 = sub_252C75A1C(v32);

    v102 = v44;
    v12 = MEMORY[0x277D84F90];
    if (v13)
    {
      v47 = v95;
      v48 = sub_252E378C4();
      v45 = v47;
      v46 = v48;
      if (!v48)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v45 = v95;
      v46 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_81;
      }
    }

    v9 = 0;
    v91 = v45 + 32;
    v92 = v45 & 0xFFFFFFFFFFFFFF8;
    v93 = v46;
    while (v94)
    {
      v50 = MEMORY[0x2530ADF00](v9);
      v51 = __OFADD__(v9++, 1);
      if (v51)
      {
        goto LABEL_73;
      }

LABEL_55:
      v52 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
      if (v52 >> 62)
      {
        if (v52 < 0)
        {
          v68 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
        }

        v53 = sub_252E378C4();
        v98 = v50;
        if (!v53)
        {
LABEL_72:
          v11 = v12;
          goto LABEL_48;
        }
      }

      else
      {
        v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v98 = v50;
        if (!v53)
        {
          goto LABEL_72;
        }
      }

      v97 = v9;
      v101[0] = v12;
      v9 = v53 & ~(v53 >> 63);

      v12 = v101;
      sub_2529AA380(0, v9, 0);
      if (v53 < 0)
      {
        goto LABEL_74;
      }

      v96 = v44;
      v54 = 0;
      v55 = v100;
      v11 = v101[0];
      v56 = v52;
      v99 = v52 & 0xC000000000000001;
      v57 = v53;
      do
      {
        if (v99)
        {
          v58 = MEMORY[0x2530ADF00](v54, v56);
        }

        else
        {
          v58 = *(v56 + 8 * v54 + 32);
        }

        sub_252956C1C(v58 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v55);
        v59 = sub_252E36324();
        v60 = *(v59 - 8);
        if ((*(v60 + 48))(v55, 1, v59) == 1)
        {

          sub_25293847C(v55, &qword_27F540298, &unk_252E3C270);
          v61 = 0;
          v62 = 0;
        }

        else
        {
          v63 = sub_252E36314();
          v55 = v100;
          v61 = v63;
          v62 = v64;

          (*(v60 + 8))(v55, v59);
        }

        v101[0] = v11;
        v66 = *(v11 + 2);
        v65 = *(v11 + 3);
        if (v66 >= v65 >> 1)
        {
          sub_2529AA380((v65 > 1), v66 + 1, 1);
          v55 = v100;
          v11 = v101[0];
        }

        ++v54;
        *(v11 + 2) = v66 + 1;
        v67 = &v11[16 * v66];
        *(v67 + 4) = v61;
        *(v67 + 5) = v62;
        v56 = v52;
      }

      while (v57 != v54);
      v44 = v96;

      v12 = MEMORY[0x277D84F90];
      v46 = v93;
      v9 = v97;
LABEL_48:
      v49 = sub_252C75A1C(v11);

      v44 = sub_252DFAE54(v49, v44);

      v102 = v44;
      if (v9 == v46)
      {
        goto LABEL_81;
      }
    }

    if (v9 >= *(v92 + 16))
    {
      goto LABEL_75;
    }

    v50 = *(v91 + 8 * v9);

    v51 = __OFADD__(v9++, 1);
    if (!v51)
    {
      goto LABEL_55;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    v15 = *(MEMORY[0x2530ADF00](0, v12) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

    swift_unknownObjectRelease();
    if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_78:
    v13 = sub_252E378C4();
    if (!v13)
    {
LABEL_79:

      v17 = MEMORY[0x277D84F90];
      goto LABEL_80;
    }

LABEL_8:
    v99 = v15;
    v101[0] = MEMORY[0x277D84F90];
    v12 = v101;
    sub_2529AA380(0, v13 & ~(v13 >> 63), 0);
  }

  while (v13 < 0);
  v16 = 0;
  v17 = v101[0];
  v18 = v99;
  v100 = (v99 & 0xC000000000000001);
  do
  {
    if (v100)
    {
      v19 = MEMORY[0x2530ADF00](v16, v18);
    }

    else
    {
      v19 = *(v18 + 8 * v16 + 32);
    }

    sub_252956C1C(v19 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v11);
    v20 = sub_252E36324();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v11, 1, v20) == 1)
    {

      sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v24 = sub_252E36314();
      v18 = v99;
      v22 = v24;
      v23 = v25;

      (*(v21 + 8))(v11, v20);
    }

    v101[0] = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_2529AA380((v26 > 1), v27 + 1, 1);
      v18 = v99;
      v17 = v101[0];
    }

    ++v16;
    *(v17 + 16) = v27 + 1;
    v28 = v17 + 16 * v27;
    *(v28 + 32) = v22;
    *(v28 + 40) = v23;
  }

  while (v13 != v16);

LABEL_80:
  v44 = sub_252C75A1C(v17);

  v102 = v44;
LABEL_81:
  if (*(v44 + 16) == 1)
  {
    v69 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    v72 = swift_allocObject();
    v73 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v74 = sub_252E36324();
    v75 = *(*(v74 - 8) + 56);
    v76 = 1;
    v75(v72 + v73, 1, 1, v74);
    v77 = -1 << *(v44 + 32);
    v78 = sub_252E37834();
    sub_25299EA80(v78, *(v44 + 36));
    v80 = v79;

    if (v80)
    {
      v81 = v90;
      sub_252E37024();

      v82 = v81;
      v76 = 0;
    }

    else
    {
      v82 = v90;
    }

    v75(v82, v76, 1, v74);
    swift_beginAccess();
    sub_252956BAC(v82, v72 + v73);
    swift_endAccess();
    sub_25293847C(v82, &qword_27F540298, &unk_252E3C270);
    v83 = type metadata accessor for HomeAutomationHomeLocation(0);
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    sub_252956C1C(v72 + v73, v86 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v72 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    v87 = *(*v72 + 48);
    v88 = *(*v72 + 52);
    swift_deallocClassInstance();
    return v86;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_25299BE58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  sub_252B680FC();
  v6 = sub_252B631FC();

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(v6 + 32);

  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v5);

  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v11 = sub_252E36304();
    v13 = v12;
    (*(v9 + 8))(v5, v8);
    v14 = v11 == 1836019570 && v13 == 0xE400000000000000;
    if (v14 || (sub_252E37DB4() & 1) != 0)
    {

      v15 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room;
    }

    else
    {
      v16 = v11 == 1701736314 && v13 == 0xE400000000000000;
      if (v16 || (sub_252E37DB4() & 1) != 0)
      {

        v17 = sub_252C864D8(*(v1 + 24));
        v18 = sub_252DF8E14(v17);

        return v18;
      }

      if (v11 == 1701670760 && v13 == 0xE400000000000000)
      {
      }

      else
      {
        v20 = sub_252E37DB4();

        if ((v20 & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }
      }

      v15 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home;
    }

    return sub_2529985B8(v15);
  }

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  return MEMORY[0x277D84F90];
}

uint64_t sub_25299C0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v55 = a2;
  v53 = a1;
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = *(v3 + 24);
  v61 = MEMORY[0x277D84F90];
  v40 = v14;
  if (v14 >> 62)
  {
    goto LABEL_49;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v53;
  if (v15)
  {
LABEL_3:
    v43 = v40 & 0xFFFFFFFFFFFFFF8;
    v44 = v40 & 0xC000000000000001;
    v41 = v15;
    v42 = v40 + 32;
    v57 = (v5 + 48);
    v45 = (v5 + 32);
    v47 = (v5 + 8);
    v48 = (v5 + 56);
    v5 = 0;
    v51 = v13;
    while (1)
    {
      if (v44)
      {
        v54 = MEMORY[0x2530ADF00](v5, v40);
        v17 = __OFADD__(v5++, 1);
        if (v17)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v5 >= *(v43 + 16))
        {
          goto LABEL_48;
        }

        v54 = *(v42 + 8 * v5);

        v17 = __OFADD__(v5++, 1);
        if (v17)
        {
          goto LABEL_47;
        }
      }

      v49 = v5;
      v18 = *(v54 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v18 >> 62)
      {
        if (v18 < 0)
        {
          v37 = *(v54 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
        }

        v19 = sub_252E378C4();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;

      if (v19)
      {
        break;
      }

LABEL_34:

LABEL_35:
      v5 = v49;
      if (v49 == v41)
      {
        return v61;
      }
    }

    v20 = 0;
    v59 = v18 & 0xFFFFFFFFFFFFFF8;
    v60 = v18 & 0xC000000000000001;
    v58 = v18;
    while (1)
    {
      if (v60)
      {
        v21 = MEMORY[0x2530ADF00](v20, v18);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v20 >= *(v59 + 16))
        {
          goto LABEL_46;
        }

        v21 = *(v18 + 8 * v20 + 32);

        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v15 = sub_252E378C4();
          v16 = v53;
          if (!v15)
          {
            return MEMORY[0x277D84F90];
          }

          goto LABEL_3;
        }
      }

      v23 = sub_252A481A4(v21 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
      if ((v24 & 1) != 0 || v23 != v16)
      {

        goto LABEL_12;
      }

      v25 = v4;
      v26 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v26)
      {

        v4 = v25;
        v18 = v58;
        goto LABEL_12;
      }

      v27 = v52;
      sub_252956C1C(v26 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v52);
      v56 = *v57;
      if (v56(v27, 1, v25) != 1)
      {
        break;
      }

      sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
      if (*(v26 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
      {
        v28 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

        v13 = v51;
        sub_25296EBC4(v51);

        v4 = v25;
        goto LABEL_24;
      }

      *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
      *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
      v13 = v51;
      sub_252E37024();

      v4 = v25;
      (*v48)(v13, 0, 1, v25);
      v18 = v58;
LABEL_27:
      v32 = sub_252E36304();
      v34 = v33;
      (*v47)(v13, v4);
      if (v32 == v55 && v34 == v50)
      {

        goto LABEL_38;
      }

      v35 = sub_252E37DB4();

      v16 = v53;
      if (v35)
      {

LABEL_38:
        sub_252E37A94();
        v36 = *(v61 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v16 = v53;
        goto LABEL_35;
      }

LABEL_12:
      ++v20;
      if (v22 == v19)
      {
        goto LABEL_34;
      }
    }

    v29 = v46;
    v30 = *v45;
    (*v45)(v46, v27, v25);
    v13 = v51;
    v30(v51, v29, v25);
    v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    (*v48)(v13, 0, 1, v25);
    v4 = v25;
LABEL_24:
    v31 = v56(v13, 1, v4);
    v18 = v58;
    if (v31 == 1)
    {
      sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);

      v16 = v53;
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25299C704(uint64_t a1)
{
  v2 = *(v1 + 24);
  v24 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_32:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  while (1)
  {
    v4 = 0;
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    v22 = v2 & 0xC000000000000001;
    v18 = v2;
    v20 = v2 + 32;
    v19 = v3;
LABEL_6:
    if (v22)
    {
      break;
    }

    if (v4 >= *(v21 + 16))
    {
      goto LABEL_30;
    }

    v5 = *(v20 + 8 * v4);

    v7 = __OFADD__(v4++, 1);
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v3 = sub_252E378C4();
    if (!v3)
    {
      goto LABEL_32;
    }
  }

  v6 = MEMORY[0x2530ADF00](v4, v18);
  v7 = __OFADD__(v4++, 1);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_9:
  v8 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  if (v8 >> 62)
  {
    v9 = sub_252E378C4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v8 & 0xC000000000000001;

  v10 = 0;
  do
  {
    if (v9 == v10)
    {

      goto LABEL_5;
    }

    if (v2)
    {
      v11 = MEMORY[0x2530ADF00](v10, v8);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v11 = *(v8 + 8 * v10 + 32);

      if (__OFADD__(v10, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v12 = sub_252A481A4(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
    v14 = v13;

    ++v10;
  }

  while ((v14 & 1) != 0 || v12 != a1);

  sub_252E37A94();
  v15 = *(v24 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
LABEL_5:
  if (v4 != v19)
  {
    goto LABEL_6;
  }

  v16 = v24;
LABEL_33:
  type metadata accessor for HomeAutomationEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v16;
  return result;
}

uint64_t sub_25299C950(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_252E378C4())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v18 = v2;
    v7 = v2 + 32;
    v2 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
    v21 = v5;
    v22 = result;
    v19 = v7;
    v20 = v6;
    while (2)
    {
      if (v5)
      {
        v9 = MEMORY[0x2530ADF00](v4, v18);
        v10 = __OFADD__(v4++, 1);
        if (!v10)
        {
LABEL_7:
          v11 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
          if (v11 >> 62)
          {
            v12 = sub_252E378C4();
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = 0;
          v2 = v11 & 0xC000000000000001;
          while (v12 != v13)
          {
            if (v2)
            {
              v14 = MEMORY[0x2530ADF00](v13, v11);
              if (__OFADD__(v13, 1))
              {
                goto LABEL_27;
              }
            }

            else
            {
              if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v14 = *(v11 + 8 * v13 + 32);

              if (__OFADD__(v13, 1))
              {
LABEL_27:
                __break(1u);
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }
            }

            v15 = sub_252A481A4(v14 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
            v17 = v16;

            ++v13;
            if ((v17 & 1) == 0 && v15 == a1)
            {

              return 1;
            }
          }

          v5 = v21;
          v7 = v19;
          v6 = v20;
          v2 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
          if (v4 != v22)
          {
            continue;
          }

          return 0;
        }
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v7 + 8 * v4);

        v10 = __OFADD__(v4++, 1);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return result;
}

uint64_t sub_25299CB2C(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v84 = a1;
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v62[1] = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = v62 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v65 = v62 - v11;
  MEMORY[0x28223BE20](v10);
  v76 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v71 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v62 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v62 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v62 - v26;
  v28 = *(v2 + 24);
  v88 = MEMORY[0x277D84F90];
  v70 = v28;
  if (v28 >> 62)
  {
    goto LABEL_71;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
LABEL_3:
    v81 = v25;
    v30 = 0;
    v69 = v28 & 0xC000000000000001;
    v68 = v28 & 0xFFFFFFFFFFFFFF8;
    v67 = v28 + 32;
    v25 = (v4 + 48);
    v79 = (v4 + 32);
    v85 = (v4 + 56);
    v77 = (v4 + 8);
    v63 = xmmword_252E3C290;
    v72 = v19;
    v75 = v22;
    v66 = v29;
    v78 = (v4 + 48);
    while (1)
    {
      if (v69)
      {
        v32 = MEMORY[0x2530ADF00](v30);
        v33 = __OFADD__(v30, 1);
        v34 = v30 + 1;
        if (v33)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v30 >= *(v68 + 16))
        {
          goto LABEL_70;
        }

        v31 = *(v67 + 8 * v30);

        v33 = __OFADD__(v30, 1);
        v34 = v30 + 1;
        if (v33)
        {
          goto LABEL_69;
        }
      }

      v35 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v73 = v32;
      v74 = v34;
      v36 = v35 >> 62 ? sub_252E378C4() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v36)
      {
        break;
      }

LABEL_4:

LABEL_5:
      v30 = v74;
      if (v74 == v66)
      {
        return v88;
      }
    }

    v19 = 0;
    v86 = v35 & 0xFFFFFFFFFFFFFF8;
    v87 = v35 & 0xC000000000000001;
    v82 = v36;
    v83 = v35;
    while (1)
    {
      if (v87)
      {
        v37 = MEMORY[0x2530ADF00](v19, v35);
        v22 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v19 >= *(v86 + 16))
        {
          goto LABEL_68;
        }

        v37 = *(v35 + 8 * v19 + 32);

        v22 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v29 = sub_252E378C4();
          v28 = v70;
          if (!v29)
          {
            return MEMORY[0x277D84F90];
          }

          goto LABEL_3;
        }
      }

      v38 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v38)
      {
        goto LABEL_15;
      }

      v39 = v81;
      sub_252956C1C(v38 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v81);
      v40 = *v25;
      if ((*v25)(v39, 1, v3) != 1)
      {
        v43 = *v79;
        v4 = v76;
        (*v79)(v76, v39, v3);
        goto LABEL_47;
      }

      sub_25293847C(v39, &qword_27F540298, &unk_252E3C270);
      v4 = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      if (!v4)
      {
        *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
        *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
        sub_252E37024();

        goto LABEL_52;
      }

      v41 = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

      if (sub_25296E640())
      {
        v42 = v75;
        sub_252E360D4();

        if (v40(v42, 1, v3) != 1)
        {

          v43 = *v79;
          v44 = &v91;
          goto LABEL_46;
        }
      }

      else
      {
        v42 = v75;
        (*v85)(v75, 1, 1, v3);
      }

      sub_25293847C(v42, &qword_27F540298, &unk_252E3C270);
      v45 = sub_252A47810(v4 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      v46 = qword_2864A0BE8 == v45 || unk_2864A0BF0 == v45;
      if (v46 || v45 != 1)
      {
        v47 = sub_252E37DB4();

        if ((v47 & 1) == 0)
        {
          v42 = v72;
          (*v85)(v72, 1, 1, v3);
LABEL_43:
          sub_25293847C(v42, &qword_27F540298, &unk_252E3C270);
          if (!sub_25296F198())
          {
            v42 = v71;
            (*v85)(v71, 1, 1, v3);
LABEL_50:
            sub_25293847C(v42, &qword_27F540298, &unk_252E3C270);
            if (*(v4 + 32))
            {

              (*v85)(v27, 1, 1, v3);
              v36 = v82;
              v35 = v83;
LABEL_14:
              sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
LABEL_15:

              goto LABEL_16;
            }

            v56 = *(v4 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
            v57 = swift_allocObject();
            *(v57 + 16) = v63;
            *(v57 + 56) = MEMORY[0x277D839F8];
            *(v57 + 64) = MEMORY[0x277D83A80];
            *(v57 + 32) = v56;
            sub_252E36F64();
            sub_252E37024();

LABEL_52:
            v36 = v82;
            v35 = v83;
            (*v85)(v27, 0, 1, v3);
            goto LABEL_53;
          }

          v42 = v71;
          sub_252E36284();

          if (v40(v42, 1, v3) == 1)
          {
            goto LABEL_50;
          }

          v43 = *v79;
          v44 = &v89;
          goto LABEL_46;
        }
      }

      else
      {
      }

      v48 = sub_252E361B4();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      sub_252E361A4();
      v51 = *(v4 + 24);
      v52 = *(v4 + 32);
      sub_252E36134();

      sub_252E36124();

      swift_beginAccess();
      v53 = *(v4 + 16);
      if (v53)
      {
        v54 = v53;

        sub_252E360F4();
      }

      v42 = v72;
      sub_252E361C4();

      if (v40(v42, 1, v3) == 1)
      {
        goto LABEL_43;
      }

      v43 = *v79;
      v44 = &v90;
LABEL_46:
      v4 = *(v44 - 32);
      v43(v4, v42, v3);
LABEL_47:
      v43(v27, v4, v3);
      (*v85)(v27, 0, 1, v3);
      v25 = v78;
      v55 = v40(v27, 1, v3);
      v36 = v82;
      v35 = v83;
      if (v55 == 1)
      {
        goto LABEL_14;
      }

LABEL_53:
      v58 = sub_252E36304();
      v60 = v59;
      (*v77)(v27, v3);
      if (v58 == v84 && v60 == v80)
      {

        goto LABEL_61;
      }

      v4 = sub_252E37DB4();

      if (v4)
      {

LABEL_61:
        sub_252E37A94();
        v4 = *(v88 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_5;
      }

LABEL_16:
      ++v19;
      if (v22 == v36)
      {
        goto LABEL_4;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25299D5A8(uint64_t a1)
{
  v40 = a1;
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v46 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v35 - v13;
  v14 = *(v1 + 24);
  v50 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v16 = 0;
    v44 = v14 & 0xFFFFFFFFFFFFFF8;
    v45 = v14 & 0xC000000000000001;
    v41 = (v3 + 56);
    v42 = i;
    v17 = (v3 + 48);
    v35 = (v3 + 32);
    v38 = (v3 + 8);
    v39 = (v3 + 48);
    v18 = &unk_252E3C270;
    v43 = v14;
    while (v45)
    {
      v3 = MEMORY[0x2530ADF00](v16, v14);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_29;
      }

LABEL_10:
      if (qword_27F53F2A0 != -1)
      {
        swift_once();
      }

      v21 = off_27F541CD0;
      if (*(off_27F541CD0 + 2) && (v22 = sub_252A488EC(v40), (v23 & 1) != 0))
      {
        v49 = *(v21[7] + v22);
        AccessoryTypeSemantic.rawValue.getter();
        sub_252E362F4();
        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = v48;
      (*v41)(v48, v24, 1, v2);
      v26 = *(v47 + 48);
      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v8);
      sub_252956C1C(v25, &v8[v26]);
      v27 = *v17;
      if ((*v17)(v8, 1, v2) == 1)
      {
        sub_25293847C(v48, &qword_27F540298, v18);
        if (v27(&v8[v26], 1, v2) == 1)
        {
          sub_25293847C(v8, &qword_27F540298, v18);
          goto LABEL_21;
        }
      }

      else
      {
        sub_252956C1C(v8, v46);
        if (v27(&v8[v26], 1, v2) != 1)
        {
          v28 = v36;
          v29 = v18;
          v30 = v46;
          (*v35)(v36, &v8[v26], v2);
          sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48]);
          v37 = sub_252E36EF4();
          v31 = *v38;
          (*v38)(v28, v2);
          sub_25293847C(v48, &qword_27F540298, v29);
          v32 = v30;
          v18 = v29;
          v31(v32, v2);
          sub_25293847C(v8, &qword_27F540298, v29);
          if (v37)
          {
LABEL_21:
            sub_252E37A94();
            v33 = *(v50 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          v19 = v42;
          v14 = v43;
          v17 = v39;
          goto LABEL_6;
        }

        sub_25293847C(v48, &qword_27F540298, v18);
        (*v38)(v46, v2);
      }

      sub_25293847C(v8, &qword_27F540758, &unk_252E4D160);
      v19 = v42;
      v14 = v43;
LABEL_6:
      ++v16;
      if (v20 == v19)
      {
        return v50;
      }
    }

    if (v16 >= *(v44 + 16))
    {
      goto LABEL_30;
    }

    v3 = *(v14 + 8 * v16 + 32);

    v20 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_10;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_25299DB10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  sub_25299AB0C(&v13 - v3);
  v5 = sub_252E36324();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v6 == 1)
  {
    return sub_252C88C98(0, 0, 0, 0);
  }

  v7 = *(v0 + 24);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v12 = *(v0 + 24);
    }

    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_4;
    }

    return sub_252C88C98(0, 0, 0, 0);
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return sub_252C88C98(0, 0, 0, 0);
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x2530ADF00](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);

LABEL_7:
    v10 = sub_252999524();
    v11 = sub_252C8A08C(v9, v10);

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_25299DC9C()
{
  v1 = *(v0 + 24);
  v9 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      sub_252C8A08C(v4, 0);

      MEMORY[0x2530AD700](v6);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v3;
      if (v5 == i)
      {
        return v9;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25299DDFC(unint64_t a1)
{
  v133 = sub_252E36324();
  v3 = *(v133 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v133);
  v116 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v112 - v8;
  MEMORY[0x28223BE20](v7);
  v132 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v123 = &v112 - v17;
  MEMORY[0x28223BE20](v16);
  v126 = &v112 - v18;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  inited = swift_initStackObject();
  v20 = MEMORY[0x277D84F90];
  *(inited + 16) = MEMORY[0x277D84F90];
  v135 = v20;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v113 = v1;
    v122 = a1 & 0xC000000000000001;
    v115 = a1 & 0xFFFFFFFFFFFFFF8;
    v117 = a1;
    v114 = a1 + 32;
    v130 = (v3 + 56);
    v119 = (v3 + 32);
    v112 = inited;

    inited = 0;
    v120 = v15;
    v121 = v9;
    v118 = i;
    while (v122)
    {
      v1 = MEMORY[0x2530ADF00](inited, v117);
      v22 = __OFADD__(inited++, 1);
      if (v22)
      {
        goto LABEL_60;
      }

LABEL_10:
      v23 = sub_252CD941C();
      v24 = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_2529F7B8C((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      *&v24[8 * v26 + 32] = v23;
      v27 = sub_252CD94E0();
      v124 = inited;
      if (v28)
      {
        v128 = v24;
      }

      else
      {
        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          v108 = v27;
          v24 = sub_2529F7B8C((v29 > 1), v30 + 1, 1, v24);
          v27 = v108;
        }

        *(v24 + 2) = v30 + 1;
        v128 = v24;
        *&v24[8 * v30 + 32] = v27;
      }

      v31 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      v34 = swift_allocObject();
      v35 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
      v36 = *v130;
      v127 = 1;
      v37 = v133;
      v36(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v133);
      v36(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v37);
      *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
      v38 = MEMORY[0x277D84F90];
      *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
      *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
      v36(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v37);
      *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v38;
      *(v34 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v38;
      v39 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v40 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v131 = v1;
      v41 = v126;
      sub_252E37024();

      v129 = v36;
      v36(v41, 0, 1, v37);
      swift_beginAccess();
      sub_252956BAC(v41, v34 + v35);
      swift_endAccess();
      v42 = v41;
      v43 = v131;
      sub_25293847C(v42, &qword_27F540298, &unk_252E3C270);
      v44 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v45 = [*(v43 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
      if (v45)
      {
        v46 = v45;
        v47 = type metadata accessor for Accessory();
        v48 = *(v47 + 48);
        v49 = *(v47 + 52);
        swift_allocObject();
        v50 = [*(sub_252D4CE7C(v46) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
        v51 = v120;
        v52 = v119;
        if (v50)
        {
          v53 = v50;
          v54 = type metadata accessor for Room();
          v55 = *(v54 + 48);
          v56 = *(v54 + 52);
          swift_allocObject();
          v57 = sub_2529A1E08(v53);

          v58 = *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v59 = *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v60 = v123;
          sub_252E37024();

          v127 = 0;
        }

        else
        {

          v127 = 1;
          v60 = v123;
        }
      }

      else
      {
        v60 = v123;
        v51 = v120;
        v52 = v119;
      }

      v61 = 1;
      (v129)(v60, v127, 1, v133);
      sub_252AD6B04(v60);

      sub_25293847C(v60, &qword_27F540298, &unk_252E3C270);
      v62 = [*(v43 + v44) accessory];
      if (v62)
      {
        v63 = v62;
        v64 = type metadata accessor for Accessory();
        v65 = *(v64 + 48);
        v66 = *(v64 + 52);
        swift_allocObject();
        v67 = [*(sub_252D4CE7C(v63) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
        v68 = v121;
        if (v67)
        {
          v69 = v67;
          v70 = type metadata accessor for Home();
          v71 = *(v70 + 48);
          v72 = *(v70 + 52);
          swift_allocObject();
          v73 = sub_2529E65BC(v69);

          v74 = *(v73 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v75 = *(v73 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          sub_252E37024();

          v61 = 0;
        }

        else
        {

          v61 = 1;
        }
      }

      else
      {
        v68 = v121;
      }

      (v129)(v51, v61, 1, v133);
      v76 = sub_252AD6E30(v51);

      v77 = v51;
      v9 = &qword_27F540298;
      inited = &unk_252E3C270;
      sub_25293847C(v77, &qword_27F540298, &unk_252E3C270);
      v78 = sub_252CD941C();
      v79 = sub_252E25FC4(v78);
      v81 = v126;
      static SemanticMapper.getSemanticKey(for:)(v79, v80 & 1, v126);
      v82 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
      swift_beginAccess();
      v129 = v76;
      sub_252956BAC(v81, v76 + v82);
      swift_endAccess();
      sub_25293847C(v81, &qword_27F540298, &unk_252E3C270);
      v83 = v128;
      v84 = *(v128 + 2);
      v125 = v44;
      if (v84)
      {
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        v85 = v83 + 32;
        v9 = off_27F541CD0;
        v86 = MEMORY[0x277D84F90];
        do
        {
          if (*(v9 + 16))
          {
            v87 = sub_252A488EC(*v85);
            if (v88)
            {
              LOBYTE(v134) = *(*(v9 + 56) + v87);
              AccessoryTypeSemantic.rawValue.getter();
              sub_252E362F4();
              v89 = *v52;
              (*v52)(v132, v68, v133);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v86 = sub_2529F7F74(0, *(v86 + 2) + 1, 1, v86);
              }

              inited = *(v86 + 2);
              v90 = *(v86 + 3);
              if (inited >= v90 >> 1)
              {
                v86 = sub_2529F7F74(v90 > 1, inited + 1, 1, v86);
              }

              *(v86 + 2) = inited + 1;
              v89(&v86[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * inited], v132, v133);
            }
          }

          ++v85;
          --v84;
        }

        while (v84);
      }

      else
      {
        v86 = MEMORY[0x277D84F90];
      }

      v15 = v129;
      v91 = *&v129[OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types];
      *&v129[OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types] = v86;

      v92 = [*(v131 + v125) accessory];
      if (!v92)
      {
        goto LABEL_55;
      }

      a1 = v92;
      v93 = type metadata accessor for Accessory();
      v94 = *(v93 + 48);
      v95 = *(v93 + 52);
      swift_allocObject();
      sub_252D4CE7C(a1);
      v9 = sub_252D523AC();

      if (v9 >> 62)
      {
        v96 = sub_252E378C4();
        if (!v96)
        {
LABEL_54:

LABEL_55:

          v98 = MEMORY[0x277D84F90];
          inited = v124;
          goto LABEL_56;
        }
      }

      else
      {
        v96 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v96)
        {
          goto LABEL_54;
        }
      }

      v134 = MEMORY[0x277D84F90];
      v1 = &v134;
      sub_2529AA4E0(0, v96 & ~(v96 >> 63), 0);
      if (v96 < 0)
      {
        goto LABEL_61;
      }

      v97 = 0;
      v98 = v134;
      v99 = v116;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v100 = MEMORY[0x2530ADF00](v97, v9);
        }

        else
        {
          v100 = *(v9 + 8 * v97 + 32);
        }

        v101 = *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v102 = *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        sub_252E37024();

        v134 = v98;
        v104 = *(v98 + 16);
        v103 = *(v98 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_2529AA4E0(v103 > 1, v104 + 1, 1);
          v99 = v116;
          v98 = v134;
        }

        ++v97;
        *(v98 + 16) = v104 + 1;
        (*(v3 + 32))(v98 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v104, v99, v133);
      }

      while (v96 != v97);

      inited = v124;
      v15 = v129;
LABEL_56:
      sub_252AD6B10(v98);

      v105 = type metadata accessor for HomeAutomationEntityResponse(0);
      v106 = *(v105 + 48);
      v107 = *(v105 + 52);
      swift_allocObject();
      a1 = sub_2529605C0(v15);
      v1 = &v135;
      MEMORY[0x2530AD700]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();

      if (inited == v118)
      {
        v109 = v135;

        inited = v112;

        v1 = v113;
        goto LABEL_65;
      }
    }

    if (inited >= *(v115 + 16))
    {
      goto LABEL_62;
    }

    v1 = *(v114 + 8 * inited);

    v22 = __OFADD__(inited++, 1);
    if (!v22)
    {
      goto LABEL_10;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v109 = MEMORY[0x277D84F90];
LABEL_65:
  v110 = *(inited + 16);
  *(inited + 16) = v109;

  return (v1[17])(inited);
}

uint64_t sub_25299EA80(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *v3;
  if (!v8)
  {
LABEL_10:
    v14 = isUniquelyReferenced_nonNull_native;
    sub_252DB000C();
    isUniquelyReferenced_nonNull_native = v14;
    v9 = v15;
  }

  v10 = (*(v9 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  v11 = *v10;
  v12 = v10[1];
  sub_2529AE52C(isUniquelyReferenced_nonNull_native);
  *v3 = v15;
  return v11;
}

unint64_t sub_25299EB54()
{
  result = qword_27F540E38;
  if (!qword_27F540E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540610, &qword_252E3CF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540E38);
  }

  return result;
}

uint64_t sub_25299EBD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25299EC20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v5 = 0;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xC000000000000001;
  v22 = a1;
  v23 = v4;
  v24 = a1 + 32;
  v27 = a3 & 1;
  do
  {
    if (v26)
    {
      a1 = MEMORY[0x2530ADF00](v5, v22);
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v5 >= *(v25 + 16))
      {
        goto LABEL_34;
      }

      v6 = *(v24 + 8 * v5);

      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v8 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    if (v8 >> 62)
    {
      v9 = sub_252E378C4();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x2530ADF00](v10, v8);
          v11 = a1;
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            v19 = a1;
            v20 = a3;
            v21 = sub_252E378C4();
            a3 = v20;
            v4 = v21;
            a1 = v19;
            if (!v4)
            {
              return MEMORY[0x277D84F90];
            }

            goto LABEL_3;
          }
        }

        v13 = sub_252A481A4(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
        if ((v14 & 1) != 0 || v13 != a2)
        {
        }

        else
        {
          v15 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

          if (v15)
          {
            v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

            if (v16 == v27)
            {

              sub_252E37A94();
              v17 = *(v28 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              a1 = sub_252E37AA4();
              goto LABEL_5;
            }
          }
        }

        ++v10;
      }

      while (v12 != v9);
    }

LABEL_5:
    ;
  }

  while (v5 != v23);
  return v28;
}

uint64_t sub_25299EEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25299EEDC, 0, 0);
}

uint64_t sub_25299EEDC()
{
  v1 = [*(v0 + 32) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 40);
  v5 = sub_252C6CB2C(v3);

  v6 = *(v5 + 24);

  v7 = swift_allocObject();
  *(v0 + 48) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;

  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_25299F044;
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return sub_252C6BEDC(v10, v11, &unk_252E3EF50, v7);
}

uint64_t sub_25299F044()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25299F154(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25299F174, 0, 0);
}

uint64_t sub_25299F174()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25299F248;
  v4 = v0[3];

  return sub_252C11F30(0, v2, v4);
}

uint64_t sub_25299F248(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_25299F36C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25299F5D4(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_25299F424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_25299EEB8(a1, a2, a3);
}

void *sub_25299F4D8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverCapabilityResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_25299F53C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_25299F154(v2, v3);
}

uint64_t sub_25299F5D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25299F63C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_252E33DB4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25299F700, 0, 0);
}

uint64_t sub_25299F700()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = sub_252E34024();
  v0[18] = v8;
  v9 = sub_252E34034();
  v0[19] = v9;
  v10 = v5 == 0x72656767697274 && v7 == 0xE700000000000000;
  if (v10 || (sub_252E37DB4() & 1) != 0)
  {

    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_25299FBD0;
    v12 = v0[14];
    v13 = v0[12];

    return sub_25299FFC8(v13, v9);
  }

  if (v5 == 0x6174616D6F747561 && v7 == 0xEF6B736154656C62)
  {
  }

  else
  {
    v15 = sub_252E37DB4();

    if ((v15 & 1) == 0)
    {
      v29 = v0[14];
      v30 = v0[12];
      sub_252929E74(v29 + 24, (v0 + 2));
      v31 = v0[5];
      v32 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v31);
      v33 = *(v29 + 16);

      sub_252943BD0(sub_2529A1790, v33, 1, v31, v32);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_19;
    }
  }

  v16 = [v8 automatableTask];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for ControlAutomateHomeIntent();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v20 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
      v21 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v22 = v19;

      v23 = [v21 init];
      v0[22] = v23;
      v24 = v23;
      [v24 setUserTask_];
      type metadata accessor for HomeFilter();
      v25 = sub_252E37254();

      [v24 setFilters_];

      [v24 setTime_];
      v26 = swift_task_alloc();
      v0[23] = v26;
      *v26 = v0;
      v26[1] = sub_25299FD54;
      v27 = v0[14];
      v28 = v0[12];

      return sub_2529A0380(v28, v8, v24, v9);
    }
  }

  v36 = v0[14];
  v37 = v0[12];
  sub_252929E74(v36 + 24, (v0 + 7));
  v38 = v0[10];
  v39 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v38);
  v40 = *(v36 + 16);

  sub_252943BD0(sub_2529A17B4, v40, 1, v38, v39);

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
LABEL_19:
  v34 = v0[17];

  v35 = v0[1];

  return v35();
}

uint64_t sub_25299FBD0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_25299FEE0;
  }

  else
  {
    v3 = sub_25299FCE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25299FCE4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25299FD54()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_25299FF50;
  }

  else
  {
    v3 = sub_25299FE68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25299FE68()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 136);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25299FEE0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 168);
  v3 = *(v0 + 136);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25299FF50()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 192);
  v4 = *(v0 + 136);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25299FFC8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_25299FFEC, 0, 0);
}

uint64_t sub_25299FFEC()
{
  v1 = sub_252E2136C([*(v0 + 64) unsupportedReason]);
  if ((v2 & 1) != 0 || (v1 <= 6 ? (v8 = ((1 << v1) & 0x76) == 0) : (v8 = 1), v8))
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    sub_2529515FC(3, 8, 0xD000000000000010, 0x8000000252E6DE90);
    sub_252929E74(v3 + 24, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v3 + 16);

    sub_252943BD0(sub_2529A17B4, v7, 1, v5, v6);
  }

  else
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    v17 = vdupq_n_s64(v1);
    sub_252929E74(v9 + 24, v0 + 16);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = vand_s8(vmovn_s32(vuzp1q_s32(vceqq_s64(v17, xmmword_252E3EF60), vceqq_s64(v17, xmmword_252E3EF70))), 0x1000100010001);
    *(v13 + 24) = vuzp1_s8(v14, v14).u32[0];

    sub_252943BD0(sub_2529A1778, v13, 1, v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2529A0210(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 32) = 0x54726F6972507369;
  *(v10 + 40) = 0xEF6E694D656E4F6FLL;
  v11 = MEMORY[0x277D839B0];
  *(v10 + 16) = xmmword_252E3EF80;
  *(v10 + 48) = a2;
  *(v10 + 72) = v11;
  *(v10 + 80) = 0x646E6F7965427369;
  *(v10 + 88) = 0xEF72616559656E4FLL;
  *(v10 + 96) = a3;
  *(v10 + 120) = v11;
  *(v10 + 128) = 0xD000000000000010;
  *(v10 + 136) = 0x8000000252E6DEE0;
  *(v10 + 144) = a4;
  *(v10 + 168) = v11;
  strcpy((v10 + 176), "isDateInterval");
  *(v10 + 191) = -18;
  *(v10 + 216) = v11;
  *(v10 + 192) = a5;

  sub_252E362B4();
}

uint64_t sub_2529A0380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_2529A03A8, 0, 0);
}

uint64_t sub_2529A03A8()
{
  v1 = sub_252E21380([*(v0 + 80) unsupportedReason]);
  if (v2)
  {
    goto LABEL_2;
  }

  if (v1 <= 3)
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        v45 = *(v0 + 88);
        v46 = *(v0 + 56);
        sub_252929E74(v45 + 24, v0 + 16);
        v5 = *(v0 + 40);
        v6 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
        v7 = *(v45 + 16);

        v8 = sub_2529A1754;
        goto LABEL_3;
      }

      if (v1 != 3)
      {
        goto LABEL_2;
      }
    }

LABEL_21:
    v28 = v1;
    v29 = [*(v0 + 72) filters];
    if (v29)
    {
      v30 = v29;
      v31 = *(v0 + 72);
      type metadata accessor for HomeFilter();
      v32 = sub_252E37264();

      type metadata accessor for HomeStore();
      v33 = static HomeStore.shared.getter();
      v34 = [v31 userTask];
      v35 = HomeStore.services(matching:supporting:)(v32, v34);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        v47 = *(v0 + 64);
        type metadata accessor for HomeAutomationEntityResponses();
        v38 = sub_252DE9FF0(v47, v35);
        goto LABEL_28;
      }

      sub_252929F10(v35, 1);
    }

    v38 = 0;
LABEL_28:
    v48 = *(v0 + 88);
    v49 = *(v0 + 56);
    v50 = *(v0 + 64);
    sub_252929E74(v48 + 24, v0 + 16);
    v51 = *(v0 + 40);
    v52 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v51);
    v53 = swift_allocObject();
    *(v53 + 16) = v48;
    *(v53 + 24) = v50;
    *(v53 + 32) = v38;
    *(v53 + 40) = v28;
    *(v53 + 48) = 0;

    v54 = v50;

    sub_252943BD0(sub_2529A1744, v53, 1, v51, v52);

    goto LABEL_4;
  }

  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v39 = *(v0 + 88);
      v40 = *(v0 + 56);
      sub_252929E74(v39 + 24, v0 + 16);
      v41 = *(v0 + 40);
      v42 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v41);
      v43 = *(v39 + 16);

      v44 = sub_2529A14E0();
      (*(v42 + 56))(sub_2529A14BC, v43, 1, v44, 0, 0, v41, v42);

      goto LABEL_4;
    }

    v9 = *(v0 + 88);
    v10 = *(v0 + 56);
    sub_2529515FC(3, 11, 0xD000000000000037, 0x8000000252E6DD30);
    sub_252929E74(v9 + 24, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v9 + 16);

    v8 = sub_2529A17B4;
    goto LABEL_3;
  }

  if (v1 == 6)
  {
    goto LABEL_21;
  }

  if (v1 != 7)
  {
LABEL_2:
    v3 = *(v0 + 88);
    v4 = *(v0 + 56);
    sub_2529515FC(3, 8, 0xD000000000000017, 0x8000000252E6DD10);
    sub_252929E74(v3 + 24, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v3 + 16);

    v8 = sub_2529A17B4;
    goto LABEL_3;
  }

  v13 = [*(v0 + 64) automatableTask];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for ControlAutomateHomeIntent();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(v0 + 88);
      v17 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v18 = *(v0 + 56);
      v19 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
      v20 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v21 = v17;

      v22 = [v20 init];
      [v22 setUserTask_];
      type metadata accessor for HomeFilter();
      v23 = sub_252E37254();

      [v22 setFilters_];

      [v22 setTime_];
      sub_252929E74(v16 + 24, v0 + 16);
      v24 = *(v0 + 40);
      v25 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
      v26 = swift_allocObject();
      *(v26 + 16) = v16;
      *(v26 + 24) = v22;

      v27 = v22;
      sub_252943BD0(sub_2529A14B4, v26, 1, v24, v25);

      goto LABEL_4;
    }
  }

  v55 = *(v0 + 88);
  v56 = *(v0 + 56);
  sub_252929E74(v55 + 24, v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  v7 = *(v55 + 16);

  v8 = sub_2529A17B4;
LABEL_3:
  sub_252943BD0(v8, v7, 1, v5, v6);
LABEL_4:

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2529A09DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v34 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v34[0] = *(a1 + 16);

  sub_252C51E70();
  if (!v16)
  {
    sub_252C51FFC();
    if (v18)
    {

      sub_252C51FFC();
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v20)
      {
        goto LABEL_10;
      }

      sub_252C4BEAC();
      if (!v21)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    sub_252E37024();

    v22 = sub_252E36324();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    goto LABEL_11;
  }

  sub_252C51E70();
  if (v17)
  {
    goto LABEL_9;
  }

LABEL_10:
  v23 = sub_252E36324();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
LABEL_11:
  sub_252C4BEAC();
  if (v24)
  {
    sub_252E37024();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_252E36324();
  v27 = *(v26 - 8);
  v28 = 1;
  (*(v27 + 56))(v13, v25, 1, v26);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v28 = sub_252C4B680(0x29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_252E3C280;
  *(v29 + 32) = 0xD00000000000001ELL;
  *(v29 + 40) = 0x8000000252E6DE40;
  sub_252956C1C(v15, v10);
  v30 = *(v27 + 48);
  if (v30(v10, 1, v26) == 1)
  {
    sub_252938BBC(v10);
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
  }

  else
  {
    *(v29 + 72) = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v29 + 48));
    (*(v27 + 32))(boxed_opaque_existential_0, v10, v26);
  }

  *(v29 + 80) = 0x656D614E656D6F68;
  *(v29 + 88) = 0xE800000000000000;
  sub_252956C1C(v13, v7);
  if (v30(v7, 1, v26) == 1)
  {
    sub_252938BBC(v7);
    *(v29 + 96) = 0u;
    *(v29 + 112) = 0u;
  }

  else
  {
    *(v29 + 120) = v26;
    v32 = __swift_allocate_boxed_opaque_existential_0((v29 + 96));
    (*(v27 + 32))(v32, v7, v26);
  }

  *(v29 + 128) = 0x7571655256547369;
  *(v29 + 136) = 0xEB00000000747365;
  *(v29 + 168) = MEMORY[0x277D839B0];
  *(v29 + 144) = v28 & 1;
  sub_252E362B4();

  sub_252938BBC(v13);
  return sub_252938BBC(v15);
}

uint64_t sub_2529A0E28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *(a1 + 16);
  type metadata accessor for HomeAutomationAutomation.Builder();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;

  *(v10 + 16) = sub_252DF1700([a2 trigger]);
  v11 = sub_252E1DFD0(v10);
  v12 = [a2 automatableTask];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for ControlAutomateHomeIntent();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v16 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
      v17 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v18 = v15;

      v19 = [v17 init];
      [v19 setUserTask_];
      type metadata accessor for HomeFilter();
      v20 = sub_252E37254();

      [v19 setFilters_];

      [v19 setTime_];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v21 = sub_252B680FC();
  swift_beginAccess();
  v22 = *(v21 + 16);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 504 * v23 - 472);
    memcpy(__dst, v24, sizeof(__dst));
    memmove(__src, v24, 0x1F8uLL);
    GEOLocationCoordinate2DMake(__src);
    sub_2529353AC(__dst, v35);

    memcpy(v35, __src, 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v35);
  }

  memcpy(__src, v35, sizeof(__src));
  v25 = sub_252953488(v19, __src, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_252E3EF90;
  *(v26 + 32) = 0x6974616D6F747561;
  *(v26 + 40) = 0xEA00000000006E6FLL;
  v27 = type metadata accessor for HomeAutomationAutomation();
  *(v26 + 48) = v11;
  *(v26 + 72) = v27;
  strcpy((v26 + 80), "intentContext");
  *(v26 + 94) = -4864;
  v28 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v26 + 96) = v25;
  *(v26 + 120) = v28;
  *(v26 + 128) = 0x65736E6F70736572;
  *(v26 + 136) = 0xE900000000000073;
  if (a3)
  {
    v29 = type metadata accessor for HomeAutomationEntityResponses();
    v30 = a3;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    *(v26 + 152) = 0;
    *(v26 + 160) = 0;
  }

  *(v26 + 144) = v30;
  *(v26 + 168) = v29;
  *(v26 + 176) = 0xD000000000000014;
  v31 = MEMORY[0x277D839B0];
  *(v26 + 184) = 0x8000000252E6DDD0;
  *(v26 + 192) = (a4 == 6) & ~a5;
  *(v26 + 216) = v31;
  *(v26 + 224) = 0x6974656C65447369;
  *(v26 + 232) = 0xEF726F7272456E6FLL;
  *(v26 + 264) = v31;
  *(v26 + 240) = 0;

  sub_252E362B4();
}

uint64_t sub_2529A1240()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_2529A12AC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_25299F63C(a1, a2);
}

uint64_t sub_2529A1378()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v2 = sub_252E34024();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2529A13F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeUnsupportedValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_2529A14E0()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), v23);

  sub_252C97064(0xD000000000000015, 0x8000000252E6A2B0, 0x6E6F6D6D6F43, 0xE600000000000000, v23);
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v2)
  {
    v3 = sub_252E33C64();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = sub_252E33C54();
    v21[3] = v3;
    v21[4] = MEMORY[0x277D5BD58];
    v21[0] = v6;
    sub_252E33F34();
    v7 = *(v3 + 48);
    v8 = *(v3 + 52);
    swift_allocObject();
    sub_252E33C54();
    v9 = sub_252E334C4();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_252E334B4();
    v22[3] = v9;
    v22[4] = MEMORY[0x277D5B808];
    v22[0] = v12;
    sub_252947E5C(1u);
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    v16 = sub_252E36AC4();
    v17 = sub_252E374D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_252BE2CE0(0xD000000000000015, 0x8000000252E6A2B0, v23);
      _os_log_impl(&dword_252917000, v16, v17, "Unable to get localized string for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2530AED00](v19, -1, -1);
      MEMORY[0x2530AED00](v18, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t sub_2529A17B8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_252E378C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_2529A18DC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_252E34804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

void *sub_2529A1AB0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_2529A1BC4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_25293F638(0, &qword_27F540E58, 0x277CD1EE0);
    sub_2529A3D38();
    sub_252E373E4();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_252E37904())
        {
          sub_25293F638(0, &qword_27F540E58, 0x277CD1EE0);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_25291AE30();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2529A1E08(void *a1)
{
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = a1;
  v8 = a1;
  v9 = [v8 uniqueIdentifier];
  sub_252E32E64();

  v10 = [v8 name];
  v11 = sub_252E36F34();
  v13 = v12;

  v14 = [v8 assistantIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252E36F34();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0;
  }

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v7, v3);
  v19 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v19 = v11;
  v19[1] = v13;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
  v20 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v20 = v16;
  v20[1] = v18;
  return v1;
}

void *sub_2529A1FD4(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_2529A2020(a1);
}

void *sub_2529A2020(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v56 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v56;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v16);
    type metadata accessor for Room();
    v17 = *(*v60 + 48);
    v18 = *(*v60 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v57[0]) = 0;
  sub_252950ADC(&qword_27F540498);
  sub_252E37C64();
  v20 = v3;
  LOBYTE(v58) = 1;
  sub_252950A60();
  sub_252E37C64();
  v21 = v56;
  v22 = v6;
  v23 = v57[0];
  LOBYTE(v57[0]) = 2;
  v52 = sub_252E37C04();
  v53 = v23;
  v54 = v24;
  LOBYTE(v57[0]) = 3;
  v25 = sub_252E37BA4();
  v46 = v15;
  v48 = v11;
  v50 = v26;
  v51 = v20;
  v27 = v25;
  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = sub_2529D9884();

  MEMORY[0x28223BE20](v30);
  v32 = v52;
  v31 = v53;
  *(&v44 - 6) = v22;
  *(&v44 - 5) = v32;
  *(&v44 - 4) = v54;
  *(&v44 - 3) = v27;
  v45 = v27;
  *(&v44 - 2) = v50;
  *(&v44 - 1) = v31;
  v33 = sub_2529A17B8(sub_2529A3DC0, (&v44 - 8), v29);
  v47 = 0;

  v49 = v33;
  if (!v33)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    v39 = __swift_project_value_buffer(v38, qword_27F544CB8);
    sub_252CC4050(0xD000000000000021, 0x8000000252E6DFB0, 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 43);
    strcpy(v57, "identifier: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v40 = sub_252E37D94();
    MEMORY[0x2530AD570](v40);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);

    v57[0] = 0x203A656D616ELL;
    v57[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v52, v54);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_252E379F4();

    v57[0] = 0xD000000000000015;
    v57[1] = 0x8000000252E6AA20;
    v58 = v45;
    v59 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v41 = sub_252E36F94();
    MEMORY[0x2530AD570](v41);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    strcpy(v57, "entityType: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    v58 = v53;
    v42 = sub_252E36F94();
    MEMORY[0x2530AD570](v42);

    v14 = v39;
    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v46 + 8))(v48, v7);
    (*(v55 + 8))(v22, v51);
    v16 = v21;
    goto LABEL_4;
  }

  v34 = v49;

  v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate);

  v14 = v60;
  *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v35;
  sub_252929E74(v21, v57);
  v36 = v47;
  v37 = Entity.init(from:)(v57);
  if (v36)
  {
    (*(v15 + 8))(v48, v7);

    (*(v55 + 8))(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v14 = v37;
    (*(v15 + 8))(v48, v7);

    v43 = *(v55 + 8);

    v43(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14;
}

BOOL sub_2529A2878(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 3;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 3;
      }
    }
  }

  return 0;
}

uint64_t sub_2529A2974(void *a1)
{
  v2 = v1;
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = sub_2529F2818(a1);

  v8 = v2;
  v7[2] = &v8;
  LOBYTE(v2) = sub_252A00B58(sub_2529A3DA0, v7, v5);

  return v2 & 1;
}

uint64_t sub_2529A2A0C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v2 = sub_252E37264();

  v39 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v38 = *MEMORY[0x277CCE8C8];
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_31;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 matterNodeID];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = [v8 matterNodeID];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 unsignedLongLongValue];

        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v14 = sub_252E37434();
      v16 = v15;
      if (v14 == sub_252E36F34() && v16 == v17)
      {
      }

      else
      {
        v18 = sub_252E37DB4();

        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (([v8 isBridged] & 1) == 0)
      {
        v23 = type metadata accessor for MatterAccessory();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        v26 = swift_allocObject();
        v27 = [v8 matterNodeID];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 unsignedLongLongValue];

          *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v29;
          if (!v29)
          {
LABEL_25:
            if (qword_27F53F4B0 != -1)
            {
              swift_once();
            }

            v30 = sub_252E36AD4();
            __swift_project_value_buffer(v30, qword_27F544CB8);
            sub_252E379F4();

            v31 = [v8 name];
            v32 = sub_252E36F34();
            v34 = v33;

            MEMORY[0x2530AD570](v32, v34);

            MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
            sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

            v5 = v2 & 0xC000000000000001;
            v6 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          v22 = v8;
          goto LABEL_17;
        }

        *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
        goto LABEL_25;
      }

LABEL_16:
      v19 = type metadata accessor for Accessory();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      v22 = v8;
LABEL_17:
      sub_252D4CE7C(v22);
      MEMORY[0x2530AD700]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      sub_252E372D4();
      ++v4;
      if (v9 == i)
      {
        v36 = v39;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_34:

  return v36;
}

uint64_t sub_2529A2E84()
{
  type metadata accessor for HomeStore();
  v0 = static HomeStore.shared.getter();
  v1 = sub_2529D8DC0();

  if (v1 >> 62)
  {
LABEL_15:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v14 = OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate;
      v15 = v1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v4 = MEMORY[0x2530ADF00](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v4;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = *(v1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        v6 = OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate;
        v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) rooms];
        sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
        v8 = sub_252E37264();

        v9 = sub_252C75928(v8);

        v18 = v9;
        sub_252DA6C70(&v17, [*(v4 + v6) roomForEntireHome]);

        v10 = sub_2529A39B4(v18, sub_252E11384, sub_252E08104);

        v18 = *(v16 + v14);
        MEMORY[0x28223BE20](v11);
        v13[2] = &v18;
        LOBYTE(v9) = sub_252A00B74(sub_2529A3C14, v13, v10);

        if (v9)
        {
          goto LABEL_13;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t sub_2529A30FC()
{
  v1 = v0;
  v2 = sub_2529A2A0C();
  if (v2 >> 62)
  {
    v12 = sub_252E378C4();

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
    v11 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v14 = *(v13 + 8);

    return v11;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_252E379F4();
  v5 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v4 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v16 = v5;
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6DF40);
  v6 = sub_2529A2A0C();
  v7 = type metadata accessor for Accessory();
  v8 = MEMORY[0x2530AD730](v6, v7);
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return v16;
}

char *sub_2529A3254()
{
  v1 = v0;
  v2 = sub_2529A2A0C();
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v17 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v18 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    return sub_252AD24A4();
  }

  v16 = sub_252E378C4();

  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = sub_2529A2A0C();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_19:

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529508A0();
    v19 = sub_252E36EA4();
    v21 = v20;

    sub_252E379F4();
    v23 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v22 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E6DF60);
    MEMORY[0x2530AD570](v19, v21);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
    v24 = sub_252AD24A4();

    return v24;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_5:
  v26 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v25 = v1;
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      (*(*v9 + 472))();
      v10 = sub_252AD24A4();
      v12 = v11;

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2529AA3A0((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v6 != v8);

    v1 = v25;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t Room.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t Room.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2529A3834(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E50, &qword_252E3F0A8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_2529A39B4(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_252E378C4();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_25291AE30();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void sub_2529A3A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540248, &unk_252E3F0B0);
      v7 = *(sub_252E36324() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_252E36324() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_2529A3C14(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  return sub_252E37694() & 1;
}

uint64_t type metadata accessor for Room()
{
  result = qword_2814B0998;
  if (!qword_2814B0998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2529A3D38()
{
  result = qword_27F540E60;
  if (!qword_27F540E60)
  {
    sub_25293F638(255, &qword_27F540E58, 0x277CD1EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540E60);
  }

  return result;
}

uint64_t sub_2529A3E00(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529A3ED0, 0, 0);
}

uint64_t sub_2529A3ED0()
{
  v1 = [*(v0 + 112) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    v4 = v3 == 2;
  }

  else
  {
    v5 = *(v0 + 112);
    sub_252C515AC();
    v4 = 0;
  }

  v6 = *(v0 + 112);
  if (sub_252C6E240(v6) == 2)
  {
    v7 = 70.0;
  }

  else
  {
    v7 = 21.0;
  }

  v8 = sub_252C6E240(v6);
  v9 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v10 = sub_252E36F04();
  v11 = [v9 initWithIdentifier:0 displayString:v10];

  v12 = v11;
  [v12 setDoubleValue_];
  [v12 setUnit_];
  [v12 setType_];

  v13 = sub_252D0842C();
  if (v13 && (v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , v14))
  {
    v15 = sub_25296E640();
  }

  else
  {
    v15 = 0;
  }

  *(v0 + 168) = v15;
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 112);
  v19 = swift_allocObject();
  *(v0 + 176) = v19;
  *(v19 + 16) = v16;
  *(v19 + 24) = v4;
  *(v19 + 32) = v15;

  *(v0 + 280) = sub_252DC6D48(v18, v17);
  if (v17)
  {
    v20 = *(v0 + 128);
    v21 = *(v20 + 48);
    v22 = *(v0 + 120);
    v23 = *__swift_project_boxed_opaque_existential_1((v20 + 24), v21);

    if (v4)
    {
      v25 = 256;
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_252C05A94(v24, v25);
    *(v0 + 184) = v26;
    v27 = *(MEMORY[0x277D55BE8] + 4);
    v37 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

    v28 = swift_task_alloc();
    *(v0 + 192) = v28;
    *v28 = v0;
    v28[1] = sub_2529A4318;

    return v37(0xD00000000000002BLL, 0x8000000252E6E0A0, v26);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 160);
    v31 = *(v0 + 128);
    v32 = sub_252E36AD4();
    __swift_project_value_buffer(v32, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v33 = *(v31 + 96);
    __swift_project_boxed_opaque_existential_1((v31 + 72), v33);
    sub_252AD7CC4();
    v34 = swift_task_alloc();
    *(v0 + 240) = v34;
    *v34 = v0;
    v34[1] = sub_2529A46A0;
    v35 = *(v0 + 160);

    return sub_252BDB88C(v0 + 16, &unk_252E3F138, v19, v35, 0, 0, 0, v33);
  }
}

uint64_t sub_2529A4318(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 184);
  v8 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v6 = sub_2529A4604;
  }

  else
  {
    v6 = sub_2529A444C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529A444C()
{
  v1 = v0[21];
  v2 = v0[15];

  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_2529A44F0;
  v4 = v0[16];

  return sub_252E174F4(v2);
}

uint64_t sub_2529A44F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_2529A496C;
  }

  else
  {
    v5 = sub_2529A4810;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529A4604()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[15];

  v4 = v0[26];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529A46A0()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 248) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2529A4EC8;
  }

  else
  {
    v6 = sub_2529A4D98;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529A4810()
{
  v1 = *(v0 + 200);
  *(v0 + 96) = v1;
  v2 = (v0 + 96);
  v3 = *(v0 + 224);
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

  v8 = *(v0 + 152);
  v9 = *(v0 + 128);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 264) = v12;
  *v12 = v0;
  v12[1] = sub_2529A4A08;
  v13 = *(v0 + 280);
  v14 = *(v0 + 152);

  return sub_252BDB88C(v0 + 56, &unk_252E3F140, v11, v14, 0, 0, v13, v10);
}

uint64_t sub_2529A496C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);

  v3 = *(v0 + 232);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2529A4A08()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 272) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_2529A4CE0;
  }

  else
  {
    v8 = *(v2 + 256);

    v7 = sub_2529A4B88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2529A4B88()
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

  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v10 = *(v0 + 176);
  v11 = *(v0 + 120);
  v12 = *(v0 + 104);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v15 = *(v0 + 152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2529A4CE0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 176);
  v4 = *(v0 + 120);

  v5 = *(v0 + 272);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2529A4D98()
{
  v1 = v0[16];
  v2 = v0[14];
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

  v8 = v0[22];
  v9 = v0[13];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2529A4EC8()
{
  v1 = v0[22];

  v2 = v0[31];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2529A4F50(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2529A4F74, 0, 0);
}

uint64_t sub_2529A4F74()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));

  if (v1)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_252C05A94(v4, v5);
  *(v0 + 32) = v6;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_2529A5084;

  return v10(0xD00000000000002BLL, 0x8000000252E6E0A0, v6);
}

uint64_t sub_2529A5084(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v8 = sub_2529A523C;
  }

  else
  {
    *(v4 + 56) = a1;
    v8 = sub_2529A51D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2529A51D0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_2529A523C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2529A52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_2529A3E00(a1, a2, a3);
}

void *sub_2529A5380@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BackToComfortableTemperatureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_2529A53E4(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      if (v4 == 6 && (sub_252CCFCB8() & 1) != 0)
      {
        v5 = *(sub_252B680FC() + 49);

        return v5;
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  return 0;
}

uint64_t sub_2529A5474()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529A4F50(v2, v3, v4);
}

uint64_t sub_2529A5520()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252BA2CEC(v2);
}

uint64_t sub_2529A55C8(uint64_t a1)
{
  v115 = MEMORY[0x277D84F90];
  v103 = *(a1 + 16);
  if (!v103)
  {
    return v115;
  }

  v1 = 0;
  v104 = a1;
  v2 = a1 + 32;
  v108 = 0x8000000252E679B0;
  v109 = 0x8000000252E679D0;
  v106 = 0x8000000252E67960;
  v107 = 0x8000000252E67980;
  v105 = 0x8000000252E67940;
  v100 = 0;
  v102 = a1 + 32;
  do
  {
    memcpy(v114, (v2 + 504 * v1), sizeof(v114));
    v3 = v114[47];
    ++v1;
    v4 = *(v114[47] + 16);
    sub_2529353AC(v114, v113);
    v5 = (v3 + 32);

    while (2)
    {
      if (v4)
      {
        switch(*v5)
        {
          case 1:

            break;
          default:
            v6 = sub_252E37DB4();

            ++v5;
            --v4;
            if ((v6 & 1) == 0)
            {
              continue;
            }

            break;
        }

        sub_252935408(v114);

        v12 = 0;
        v13 = MEMORY[0x277D84F90];
        v14 = v102;
        v15 = v103;
        while (v12 < v15)
        {
          memcpy(v113, (v14 + 504 * v12), sizeof(v113));
          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_56;
          }

          v17 = v113[47];
          v18 = *(v113[47] + 16);
          sub_2529353AC(v113, v112);
          v19 = (v17 + 32);
          while (2)
          {
            if (v18)
            {
              switch(*v19)
              {
                case 1:

                  goto LABEL_30;
                default:
                  v20 = sub_252E37DB4();

                  ++v19;
                  --v18;
                  if ((v20 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_30;
              }
            }

            break;
          }

          v21 = v113[24];
          if ((sub_2529A78B0(10, v113[24]) || sub_2529A78B0(9, v21)) && sub_2529A78C8(1, v113[17]) && (memcpy(v112, v113, sizeof(v112)), sub_252A13A70(), (v22 & 1) == 0))
          {
LABEL_30:
            v110[0] = v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA480(0, *(v13 + 16) + 1, 1);
              v13 = v110[0];
            }

            v24 = *(v13 + 16);
            v23 = *(v13 + 24);
            v15 = v103;
            if (v24 >= v23 >> 1)
            {
              sub_2529AA480((v23 > 1), v24 + 1, 1);
              v13 = v110[0];
            }

            *(v13 + 16) = v24 + 1;
            memcpy((v13 + 504 * v24 + 32), v113, 0x1F8uLL);
          }

          else
          {
            sub_252935408(v113);
            v15 = v103;
          }

          v14 = v102;
          if (v12 == v15)
          {
            v101 = v13;
            if (qword_27F53F520 == -1)
            {
              goto LABEL_36;
            }

            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        swift_once();
LABEL_36:
        v25 = sub_252E36AD4();
        __swift_project_value_buffer(v25, qword_27F544E08);
        v113[0] = 0;
        v113[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E6E0D0);
        v26 = MEMORY[0x2530AD730](v101, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v26);

        sub_252CC3D90(v113[0], v113[1], 0xD000000000000098, 0x8000000252E6E120);

        sub_252CC3D90(0xD000000000000027, 0x8000000252E6E1C0, 0xD000000000000098, 0x8000000252E6E120);
        v27 = 0;
        v104 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v27 >= v15)
          {
            goto LABEL_57;
          }

          v28 = (v14 + 504 * v27);
          memcpy(v113, v28, sizeof(v113));
          v16 = __OFADD__(v27++, 1);
          if (v16)
          {
            goto LABEL_58;
          }

          v29 = memcpy(v112, v28, sizeof(v112));
          MEMORY[0x28223BE20](v29);
          v99 = v112;
          sub_2529353AC(v113, v110);
          if ((sub_2529EDA1C(sub_25295AD78, v98, v101) & 1) == 0)
          {
            goto LABEL_47;
          }

          v30 = *(v113[47] + 16);
          v31 = (v113[47] + 32);

          while (2)
          {
            if (v30)
            {
              switch(*v31)
              {
                case 1:

                  break;
                default:
                  v32 = sub_252E37DB4();

                  ++v31;
                  --v30;
                  if ((v32 & 1) == 0)
                  {
                    continue;
                  }

                  break;
              }

              v14 = v102;
              v15 = v103;
LABEL_47:
              v33 = v104;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v111 = v33;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2529AA480(0, *(v104 + 16) + 1, 1);
                v104 = v111;
              }

              v36 = *(v104 + 16);
              v35 = *(v104 + 24);
              if (v36 >= v35 >> 1)
              {
                sub_2529AA480((v35 > 1), v36 + 1, 1);
                v104 = v111;
              }

              v37 = v104;
              *(v104 + 16) = v36 + 1;
              memcpy((v37 + 504 * v36 + 32), v113, 0x1F8uLL);
              if (v27 == v15)
              {
LABEL_52:

                return v104;
              }
            }

            else
            {

              sub_252935408(v113);
              v14 = v102;
              v15 = v103;
              if (v27 == v103)
              {
                goto LABEL_52;
              }
            }

            break;
          }
        }
      }

      break;
    }

    sub_252935408(v114);

    v2 = v102;
  }

  while (v1 != v103);
  v7 = 32;
  v8 = v103;
  v9 = v104;
  do
  {
    memcpy(v114, (v104 + v7), sizeof(v114));
    v10 = v114[24];
    sub_2529353AC(v114, v113);
    if (sub_2529A78B0(10, v10))
    {
      sub_252935408(v114);
    }

    else
    {
      v11 = sub_2529A78B0(9, v10);
      sub_252935408(v114);
      if (!v11)
      {
        return v115;
      }
    }

    v7 += 504;
    --v8;
  }

  while (v8);
  v39 = MEMORY[0x277D84F90];
  v40 = 32;
  v41 = v103;
  do
  {
    memcpy(v114, (v9 + v40), sizeof(v114));
    if (LOBYTE(v114[39]) != 2 && (v114[39] & 1) != 0 && !*(v114[50] + 16) && !*(v114[51] + 16) && !*(v114[52] + 16) && !*(v114[53] + 16) && !*(v114[54] + 16) && !*(v114[55] + 16) && !*(v114[56] + 16) && !*(v114[57] + 16))
    {
      if (!*(v114[58] + 16) && !*(v114[59] + 16) && !*(v114[60] + 16))
      {
        sub_2529353AC(v114, v113);
        v112[0] = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v39 + 16) + 1, 1);
          v39 = v112[0];
        }

        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2529AA480((v42 > 1), v43 + 1, 1);
          v39 = v112[0];
        }

        *(v39 + 16) = v43 + 1;
        memcpy((v39 + 504 * v43 + 32), v114, 0x1F8uLL);
      }

      v9 = v104;
    }

    v40 += 504;
    --v41;
  }

  while (v41);
  v44 = 0;
  v109 = MEMORY[0x277D84F90];
  do
  {
    v45 = 504 * v44 + 32;
    v46 = v44;
    v47 = v103;
    while (1)
    {
      if (v46 >= v47)
      {
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      memcpy(v114, (v104 + v45), sizeof(v114));
      v44 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_153;
      }

      v48 = memcpy(v113, (v104 + v45), sizeof(v113));
      MEMORY[0x28223BE20](v48);
      v99 = v113;
      sub_2529353AC(v114, v112);
      if ((sub_2529EDA1C(sub_25295AD98, v98, v39) & 1) == 0)
      {
        break;
      }

      sub_252935408(v114);
      ++v46;
      v45 += 504;
      v47 = v103;
      if (v44 == v103)
      {
        goto LABEL_92;
      }
    }

    v49 = v109;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v110[0] = v49;
    if ((v50 & 1) == 0)
    {
      sub_2529AA480(0, *(v49 + 16) + 1, 1);
      v49 = v110[0];
    }

    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_2529AA480((v51 > 1), v52 + 1, 1);
      v49 = v110[0];
    }

    *(v49 + 16) = v52 + 1;
    v109 = v49;
    memcpy((v49 + 504 * v52 + 32), v114, 0x1F8uLL);
  }

  while (v44 != v103);
LABEL_92:
  v115 = v109;
  v53 = *(v39 + 16);
  if (v53)
  {
    v54 = 0;
    v108 = v53 - 1;
    v55 = MEMORY[0x277D84F90];
LABEL_94:
    v56 = (v39 + 32 + 504 * v54);
    v57 = v54;
    while (v57 < *(v39 + 16))
    {
      memcpy(v114, v56, sizeof(v114));
      v54 = v57 + 1;
      v58 = v114[17];
      sub_2529353AC(v114, v113);
      if (sub_2529A78C8(5, v58))
      {
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v55;
        if ((v59 & 1) == 0)
        {
          sub_2529AA480(0, *(v55 + 16) + 1, 1);
          v55 = v112[0];
        }

        v60 = v55;
        v61 = *(v55 + 16);
        v62 = *(v60 + 24);
        if (v61 >= v62 >> 1)
        {
          sub_2529AA480((v62 > 1), v61 + 1, 1);
          v60 = v112[0];
        }

        *(v60 + 16) = v61 + 1;
        memcpy((v60 + 504 * v61 + 32), v114, 0x1F8uLL);
        v55 = v60;
        if (v108 != v57)
        {
          goto LABEL_94;
        }

LABEL_104:
        v63 = 0;
        v64 = v39 + 32;
        v65 = MEMORY[0x277D84F90];
        v107 = v39 + 32;
LABEL_105:
        v66 = v65;
        v67 = (v64 + 504 * v63);
        v68 = v63;
        while (v68 < *(v39 + 16))
        {
          memcpy(v114, v67, sizeof(v114));
          v63 = v68 + 1;
          v69 = v114[17];
          sub_2529353AC(v114, v113);
          if (sub_2529A78C8(1, v69))
          {
            v65 = v66;
            v70 = swift_isUniquelyReferenced_nonNull_native();
            v112[0] = v66;
            v71 = v55;
            if ((v70 & 1) == 0)
            {
              sub_2529AA480(0, *(v65 + 16) + 1, 1);
              v65 = v112[0];
            }

            v73 = *(v65 + 16);
            v72 = *(v65 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_2529AA480((v72 > 1), v73 + 1, 1);
              v65 = v112[0];
            }

            *(v65 + 16) = v73 + 1;
            memcpy((v65 + 504 * v73 + 32), v114, 0x1F8uLL);
            v64 = v107;
            v55 = v71;
            if (v108 != v68)
            {
              goto LABEL_105;
            }

            goto LABEL_117;
          }

          sub_252935408(v114);
          v67 += 504;
          ++v68;
          if (v53 == v63)
          {
            v65 = v66;
            goto LABEL_117;
          }
        }

        goto LABEL_156;
      }

      sub_252935408(v114);
      v56 += 504;
      ++v57;
      if (v53 == v54)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_155;
  }

  v55 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
LABEL_117:
  v107 = v55;
  v108 = v65;
  v74 = *(v39 + 16);
  if (v74)
  {
    v75 = 0;
    v76 = v39 + 32;
    v106 = v74 - 1;
    v77 = MEMORY[0x277D84F90];
LABEL_119:
    v78 = (v76 + 504 * v75);
    v79 = v75;
    while (v79 < *(v39 + 16))
    {
      memcpy(v114, v78, sizeof(v114));
      v75 = v79 + 1;
      v80 = v114[17];
      sub_2529353AC(v114, v113);
      if (sub_2529A78C8(20, v80))
      {
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v77;
        v105 = v76;
        if ((v81 & 1) == 0)
        {
          sub_2529AA480(0, *(v77 + 16) + 1, 1);
          v77 = v112[0];
        }

        v65 = v108;
        v83 = *(v77 + 16);
        v82 = *(v77 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_2529AA480((v82 > 1), v83 + 1, 1);
          v65 = v108;
          v77 = v112[0];
        }

        *(v77 + 16) = v83 + 1;
        memcpy((v77 + 504 * v83 + 32), v114, 0x1F8uLL);
        v76 = v105;
        if (v106 != v79)
        {
          goto LABEL_119;
        }

        goto LABEL_131;
      }

      sub_252935408(v114);
      v78 += 504;
      ++v79;
      if (v74 == v75)
      {
        v65 = v108;
        goto LABEL_131;
      }
    }

    goto LABEL_157;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_131:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402D8, &qword_252E3C110);
  v84 = swift_allocObject();
  v84[4] = v107;
  v84[5] = v65;
  v84[6] = v77;

  v85 = 0;
  v86 = MEMORY[0x277D84F90];
LABEL_132:
  v87 = 3;
  if (v85 > 3)
  {
    v87 = v85;
  }

  while (v85 != 3)
  {
    if (v87 == v85)
    {
      goto LABEL_154;
    }

    v88 = v84[v85++ + 4];
    if (*(v88 + 16))
    {

      v89 = swift_isUniquelyReferenced_nonNull_native();
      v114[0] = v86;
      if ((v89 & 1) == 0)
      {
        sub_2529AA5E0(0, *(v86 + 16) + 1, 1);
        v86 = v114[0];
      }

      v91 = *(v86 + 16);
      v90 = *(v86 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_2529AA5E0((v90 > 1), v91 + 1, 1);
        v86 = v114[0];
      }

      *(v86 + 16) = v91 + 1;
      *(v86 + 8 * v91 + 32) = v88;
      goto LABEL_132;
    }
  }

  v92 = v104;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402E0, &qword_252E3C118);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v93 = *(v86 + 16);

  if (v93 < 2)
  {

    if (qword_27F53F520 == -1)
    {
LABEL_144:
      v94 = sub_252E36AD4();
      __swift_project_value_buffer(v94, qword_27F544E08);
      sub_252CC3D90(0xD000000000000030, 0x8000000252E6E1F0, 0xD000000000000098, 0x8000000252E6E120);
    }

LABEL_158:
    swift_once();
    goto LABEL_144;
  }

  v96 = v107;
  v95 = v108;
  if (*(v107 + 16))
  {

    v97 = v96;
    goto LABEL_150;
  }

  if (*(v77 + 16))
  {

    v97 = v77;
    goto LABEL_150;
  }

  v97 = v95;
  if (*(v95 + 16))
  {
LABEL_150:
    sub_25297AA34(v97);
    return v115;
  }

  return v92;
}

BOOL Array<A>.containsResume()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 runState];

    v4 = v5 + 1;
  }

  while (v8 != 17);
  return v3 != v5;
}

uint64_t Array<A>.contains(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = 0;
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
    v28 = a2 & 0xC000000000000001;
    v26 = a2 + 32;
    v25 = a2;
LABEL_5:
    if (v28)
    {
      v4 = MEMORY[0x2530ADF00](v3, v25);
    }

    else
    {
      if (v3 >= *(v27 + 16))
      {
        goto LABEL_31;
      }

      v4 = *(v26 + 8 * v3);
    }

    v5 = v4;
    if (!__OFADD__(v3++, 1))
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v23 = a2;
    v24 = sub_252E378C4();
    a2 = v23;
    v2 = v24;
    if (!v24)
    {
      return 0;
    }
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v13 = *v8++;
      v12 = v13;
      if (v13 != 14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA460(0, *(v9 + 16) + 1, 1);
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2529AA460((v10 > 1), v11 + 1, 1);
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + 8 * v11 + 32) = v12;
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v14 = *(v9 + 16);
  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = 0;
  while (2)
  {
    if (v15 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v16 = *(v9 + 32 + 8 * v15++);
    v17 = [v5 cleanModes];
    v18 = sub_252E37264();

    v19 = *(v18 + 16);
    v20 = 32;
    do
    {
      if (!v19)
      {

        if (v3 == v2)
        {
          return 0;
        }

        goto LABEL_5;
      }

      v21 = *(v18 + v20);
      v20 += 8;
      --v19;
    }

    while (v21 != v16);

    if (v15 != v14)
    {
      continue;
    }

    break;
  }

LABEL_28:

  return 1;
}

BOOL sub_2529A6C5C(uint64_t a1, uint64_t a2)
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

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_2529A6CA0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_252E36324() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_2529AECD4(&qword_27F540760, MEMORY[0x277D55C48]);
  }

  while ((sub_252E36EF4() & 1) == 0);
  return v4 != v5;
}

BOOL sub_2529A6DAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701670771;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = a1;
  do
  {
    v7 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v9 = *v4;
    if (v9 <= 1)
    {
      if (*v4)
      {
        v10 = 1701670771;
      }

      else
      {
        v10 = 6647407;
      }

      if (*v4)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
      }
    }

    else if (v9 == 2)
    {
      v11 = 0xE300000000000000;
      v10 = 7105633;
    }

    else
    {
      if (v9 == 3)
      {
        v10 = 1752461154;
      }

      else
      {
        v10 = 0x747065637865;
      }

      if (v9 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }
    }

    if (v5 == 3)
    {
      v12 = 1752461154;
    }

    else
    {
      v12 = 0x747065637865;
    }

    if (v5 == 3)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    if (v5 == 2)
    {
      v12 = 7105633;
      v13 = 0xE300000000000000;
    }

    if (v5)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v2 = 6647407;
      v14 = 0xE300000000000000;
    }

    if (v5 <= 1)
    {
      v15 = v2;
    }

    else
    {
      v15 = v12;
    }

    if (v5 <= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (v10 == v15 && v11 == v16)
    {

      return v7 != 0;
    }

    v6 = sub_252E37DB4();

    v2 = 1701670771;
    ++v4;
  }

  while ((v6 & 1) == 0);
  return v7 != 0;
}

BOOL sub_2529A6F34(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA0000000000746ELL;
    v9 = 0x69685F6573756F68;
    switch(*v4)
    {
      case 1:
        v8 = 0xE900000000000074;
        v9 = 0x6E69685F6D6F6F72;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v9 = 0x657265685F6E69;
        break;
      case 3:
        v8 = 0xE500000000000000;
        v9 = 0x6572656874;
        break;
      case 4:
        v8 = 0xE400000000000000;
        v9 = 1936287860;
        break;
      case 5:
        v9 = 0x725F6E6F6D6D6F63;
        v8 = 0xEC000000736D6F6FLL;
        break;
      case 6:
        v8 = 0xE400000000000000;
        v9 = 1819042152;
        break;
      case 7:
        v8 = 0xE700000000000000;
        v9 = 0x6E65686374696BLL;
        break;
      case 8:
        v10 = 1769367916;
        goto LABEL_25;
      case 9:
        v10 = 1768843620;
LABEL_25:
        v9 = v10 | 0x6F72676E00000000;
        v8 = 0xEA00000000006D6FLL;
        break;
      case 0xA:
        v8 = 0xE800000000000000;
        v9 = 0x65636E6172746E65;
        break;
      case 0xB:
        v8 = 0xE800000000000000;
        v9 = 0x6D6F6F7268746162;
        break;
      case 0xC:
        v8 = 0xE600000000000000;
        v9 = 0x65636966666FLL;
        break;
      case 0xD:
        v8 = 0xE700000000000000;
        v11 = 1919182178;
        goto LABEL_27;
      case 0xE:
        v9 = 0x625F72657473616DLL;
        v8 = 0xEE006D6F6F726465;
        break;
      case 0xF:
        v8 = 0xE800000000000000;
        v9 = 0x746E656D65736162;
        break;
      case 0x10:
        v8 = 0xE400000000000000;
        v9 = 1685217657;
        break;
      case 0x11:
        v8 = 0xE300000000000000;
        v9 = 7174503;
        break;
      case 0x12:
        v9 = 0x6F6F725F79616C70;
        v8 = 0xE90000000000006DLL;
        break;
      case 0x13:
        v8 = 0xE700000000000000;
        v11 = 1918858868;
LABEL_27:
        v9 = v11 | 0x6D6F6F00000000;
        break;
      case 0x14:
        v8 = 0xE800000000000000;
        v9 = 0x706F68736B726F77;
        break;
      default:
        break;
    }

    v12 = 0xEA0000000000746ELL;
    v13 = 0x69685F6573756F68;
    switch(a1)
    {
      case 1:
        v12 = 0xE900000000000074;
        if (v9 == 0x6E69685F6D6F6F72)
        {
          goto LABEL_66;
        }

        goto LABEL_2;
      case 2:
        v12 = 0xE700000000000000;
        if (v9 != 0x657265685F6E69)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 3:
        v12 = 0xE500000000000000;
        if (v9 != 0x6572656874)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 4:
        v12 = 0xE400000000000000;
        if (v9 != 1936287860)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 5:
        v12 = 0xEC000000736D6F6FLL;
        if (v9 != 0x725F6E6F6D6D6F63)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 6:
        v12 = 0xE400000000000000;
        if (v9 != 1819042152)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 7:
        v12 = 0xE700000000000000;
        if (v9 != 0x6E65686374696BLL)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 8:
        v13 = 0x6F72676E6976696CLL;
        v12 = 0xEA00000000006D6FLL;
        goto LABEL_65;
      case 9:
        v12 = 0xEA00000000006D6FLL;
        if (v9 != 0x6F72676E696E6964)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 10:
        v12 = 0xE800000000000000;
        if (v9 != 0x65636E6172746E65)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 11:
        v12 = 0xE800000000000000;
        if (v9 != 0x6D6F6F7268746162)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 12:
        v12 = 0xE600000000000000;
        if (v9 != 0x65636966666FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 13:
        v12 = 0xE700000000000000;
        v14 = 1919182178;
        goto LABEL_69;
      case 14:
        v12 = 0xEE006D6F6F726465;
        if (v9 != 0x625F72657473616DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 15:
        v12 = 0xE800000000000000;
        if (v9 != 0x746E656D65736162)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 16:
        v12 = 0xE400000000000000;
        if (v9 != 1685217657)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 17:
        v12 = 0xE300000000000000;
        if (v9 != 7174503)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 18:
        v12 = 0xE90000000000006DLL;
        if (v9 != 0x6F6F725F79616C70)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 19:
        v12 = 0xE700000000000000;
        v14 = 1918858868;
LABEL_69:
        if (v9 != (v14 | 0x6D6F6F00000000))
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 20:
        v12 = 0xE800000000000000;
        if (v9 != 0x706F68736B726F77)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      default:
LABEL_65:
        if (v9 != v13)
        {
          goto LABEL_2;
        }

LABEL_66:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_252E37DB4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_2529A7478(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEB00000000656D6FLL;
    v9 = 0x48746E6572727563;
    switch(*v4)
    {
      case 1:
        v9 = 0x6C706552726F6F64;
        v8 = 0xEF746E656D656361;
        break;
      case 2:
        v9 = 0x4966664F6E727574;
        v8 = 0xEC0000005654416ELL;
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = 0x7972616D697270;
        break;
      case 4:
        v8 = 0xE600000000000000;
        v9 = 0x656372756F73;
        break;
      case 5:
        v9 = 0xD000000000000012;
        v8 = 0x8000000252E67940;
        break;
      case 6:
        v9 = 0xD000000000000010;
        v8 = 0x8000000252E67960;
        break;
      case 7:
        v9 = 0x45656C6946636F76;
        v8 = 0xED0000797469746ELL;
        break;
      case 8:
        v9 = 0xD000000000000014;
        v8 = 0x8000000252E67980;
        break;
      case 9:
        v9 = 0x636E657265666572;
        v8 = 0xEE00656D6F486465;
        break;
      case 0xA:
        v9 = 0xD000000000000010;
        v8 = 0x8000000252E679B0;
        break;
      case 0xB:
        v9 = 0x6465766C6F736572;
        v8 = 0xEE00797469746E45;
        break;
      case 0xC:
        v9 = 0xD00000000000001FLL;
        v8 = 0x8000000252E679D0;
        break;
      default:
        break;
    }

    v10 = 0x48746E6572727563;
    v11 = 0xEB00000000656D6FLL;
    switch(a1)
    {
      case 1:
        v11 = 0xEF746E656D656361;
        if (v9 == 0x6C706552726F6F64)
        {
          goto LABEL_41;
        }

        goto LABEL_2;
      case 2:
        v11 = 0xEC0000005654416ELL;
        if (v9 != 0x4966664F6E727574)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 3:
        v11 = 0xE700000000000000;
        if (v9 != 0x7972616D697270)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 4:
        v11 = 0xE600000000000000;
        if (v9 != 0x656372756F73)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 5:
        v11 = 0x8000000252E67940;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 6:
        v11 = 0x8000000252E67960;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 7:
        v11 = 0xED0000797469746ELL;
        if (v9 != 0x45656C6946636F76)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 8:
        v11 = 0x8000000252E67980;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 9:
        v12 = 0x636E657265666572;
        v13 = 0x656D6F486465;
        goto LABEL_27;
      case 10:
        v10 = 0xD000000000000010;
        v11 = 0x8000000252E679B0;
        goto LABEL_40;
      case 11:
        v12 = 0x6465766C6F736572;
        v13 = 0x797469746E45;
LABEL_27:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 12:
        v11 = 0x8000000252E679D0;
        if (v9 != 0xD00000000000001FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      default:
LABEL_40:
        if (v9 != v10)
        {
          goto LABEL_2;
        }

LABEL_41:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_252E37DB4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_2529A78F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = a3(*v6);
    v11 = v10;
    if (v9 == a3(a1) && v11 == v12)
    {

      return v7 != 0;
    }

    v14 = sub_252E37DB4();

    ++v6;
  }

  while ((v14 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_2529A79C8(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + ((v7 << 9) | (8 * v8))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529A7A64(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_252938414(v16, v13, &qword_27F540298, &unk_252E3C270);
    sub_252938414(v32, &v13[v19], &qword_27F540298, &unk_252E3C270);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_252938414(v13, v33, &qword_27F540298, &unk_252E3C270);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_2529AECD4(&qword_27F540760, MEMORY[0x277D55C48]);
    v29 = sub_252E36EF4();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_25293847C(v13, &qword_27F540758, &unk_252E4D160);
    goto LABEL_5;
  }

  sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
  return 1;
}

BOOL sub_2529A7E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v15 = *v5;
    v8 = a3();
    v10 = v9;
    if (v8 == a3() && v10 == v11)
    {

      return v6 != 0;
    }

    v13 = sub_252E37DB4();

    ++v5;
  }

  while ((v13 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2529A7F24(uint64_t *a1, unint64_t a2)
{
  v4 = sub_2529FE6DC(&unk_2864A35A0);
  if (a2 >> 62)
  {
    goto LABEL_78;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_72:

    return 13;
  }

  while (1)
  {
    v6 = 0;
    v63 = a2 & 0xC000000000000001;
    v64 = v4;
    v59 = a2 & 0xFFFFFFFFFFFFFF8;
    v60 = a2;
    v58 = a2 + 32;
    v61 = v5;
    v62 = a1;
LABEL_4:
    if (v63)
    {
      v7 = MEMORY[0x2530ADF00](v6, v60);
      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (!v8)
      {
        break;
      }

      goto LABEL_76;
    }

    if (v6 >= *(v59 + 16))
    {
      goto LABEL_77;
    }

    v7 = *(v58 + 8 * v6);
    v8 = __OFADD__(v6, 1);
    v9 = v6 + 1;
    if (!v8)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v5 = sub_252E378C4();
    if (!v5)
    {
      goto LABEL_72;
    }
  }

  v65 = v9;
  v66 = v7;
  if (!a1)
  {
    v33 = [v7 cleanModes];
    v34 = sub_252E37264();

    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = (v34 + 32);
      v37 = MEMORY[0x277D84F90];
      do
      {
        v39 = *v36++;
        v38 = v39;
        if (v39 <= 0xF)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_2529F7F9C(0, *(v37 + 2) + 1, 1, v37);
          }

          v41 = *(v37 + 2);
          v40 = *(v37 + 3);
          if (v41 >= v40 >> 1)
          {
            v37 = sub_2529F7F9C((v40 > 1), v41 + 1, 1, v37);
          }

          *(v37 + 2) = v41 + 1;
          *&v37[8 * v41 + 32] = v38;
        }

        --v35;
      }

      while (v35);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    a1 = sub_252C75B70(v37);
    goto LABEL_46;
  }

  v10 = v7;
  v11 = a1;
  v12 = [v10 cleanModes];
  v13 = sub_252E37264();

  v14 = *(v13 + 16);
  if (!v14)
  {

    v16 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (v26)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  do
  {
    v17 = *(v13 + 32 + 8 * v15);
    v18 = [v11 cleanModes];
    v19 = sub_252E37264();

    v20 = *(v19 + 16);
    v21 = 32;
    do
    {
      if (!v20)
      {

        goto LABEL_14;
      }

      v22 = *(v19 + v21);
      v21 += 8;
      --v20;
    }

    while (v22 != v17);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA3C0(0, *(v16 + 16) + 1, 1);
      v16 = v68;
    }

    v25 = *(v16 + 16);
    v24 = *(v16 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2529AA3C0((v24 > 1), v25 + 1, 1);
      v16 = v68;
    }

    *(v16 + 16) = v25 + 1;
    *(v16 + 8 * v25 + 32) = v17;
LABEL_14:
    ++v15;
  }

  while (v15 != v14);

  v4 = v64;
  v26 = *(v16 + 16);
  if (!v26)
  {
LABEL_42:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

LABEL_24:
  v27 = (v16 + 32);
  v28 = MEMORY[0x277D84F90];
  do
  {
    v30 = *v27++;
    v29 = v30;
    if (v30 <= 0xF)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_2529F7F9C(0, *(v28 + 2) + 1, 1, v28);
      }

      v32 = *(v28 + 2);
      v31 = *(v28 + 3);
      if (v32 >= v31 >> 1)
      {
        v28 = sub_2529F7F9C((v31 > 1), v32 + 1, 1, v28);
      }

      *(v28 + 2) = v32 + 1;
      *&v28[8 * v32 + 32] = v29;
    }

    --v26;
  }

  while (v26);
LABEL_43:

  a1 = sub_252C75B70(v28);

LABEL_46:

  if (*(v4 + 16) <= a1[2] >> 3)
  {
    v68 = a1;
    a1 = &v68;
    sub_2529AA700(v4);
    v42 = v68;
  }

  else
  {
    v42 = sub_2529AADC0(v4, a1);
  }

  v43 = 1 << *(v42 + 32);
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  a2 = v44 & *(v42 + 56);
  v4 = (v43 + 63) >> 6;

  v45 = 0;
  v67 = MEMORY[0x277D84F90];
  while (a2)
  {
LABEL_58:
    v47 = *(*(v42 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(a2)))));
    if (qword_27F53F6E8 != -1)
    {
      swift_once();
    }

    a2 &= a2 - 1;
    v48 = off_27F545908;
    if (*(off_27F545908 + 2) && (v49 = sub_252A488EC(v47), (v50 & 1) != 0))
    {
      v53 = *(v48[7] + v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_2529F80F0(0, *(v67 + 2) + 1, 1, v67);
      }

      v55 = *(v67 + 2);
      v54 = *(v67 + 3);
      a1 = (v55 + 1);
      if (v55 >= v54 >> 1)
      {
        v67 = sub_2529F80F0((v54 > 1), v55 + 1, 1, v67);
      }

      *(v67 + 2) = a1;
      v67[v55 + 32] = v53;
    }

    else
    {
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v51 = sub_252E36AD4();
      v52 = __swift_project_value_buffer(v51, qword_27F544CD0);
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E6E290);
      sub_252E37AE4();
      a1 = v52;
      sub_252CC4050(v68, v69, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000013, 0x8000000252E6E350, 65);
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v46 >= v4)
    {
      break;
    }

    a2 = *(v42 + 56 + 8 * v46);
    ++v45;
    if (a2)
    {
      v45 = v46;
      goto LABEL_58;
    }
  }

  if (!*(v67 + 2))
  {

    a1 = v62;
    v4 = v64;
    v6 = v65;
    if (v65 != v61)
    {
      goto LABEL_4;
    }

    goto LABEL_72;
  }

  if (*(v67 + 2))
  {
    v57 = v67[32];

    return v57;
  }

  else
  {
    __break(1u);
  }

  return result;
}