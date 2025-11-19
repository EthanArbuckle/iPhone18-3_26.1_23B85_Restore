uint64_t sub_1CAC9146C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, char *))
{
  v19 = a6;
  v8 = sub_1CAD4C404();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CAD4C0F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAD4C0B4();
  sub_1CAD4C3E4();
  v16 = a1;
  v19(v15, a4, v11);

  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1CAC91648(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v9 = *(v2 + v8);
  sub_1CAB23A9C(a1, v7, &qword_1EC4635D0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = *a2;
  swift_beginAccess();

  sub_1CABC6AC8(v7, v9 + v11, &qword_1EC4660A0);
  swift_endAccess();
}

uint64_t sub_1CAC917B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-v12];
  if (a3)
  {
    sub_1CAD4C3E4();
    v14 = sub_1CAD4C404();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_1CAD4C404();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  v16 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v17 = *(a1 + v16);
  sub_1CABA62E4(v13, v9, &qword_1EC4635D0);
  (*(v11 + 56))(v9, 0, 1, v10);
  v18 = *a4;
  swift_beginAccess();

  sub_1CABC6AC8(v9, v17 + v18, &qword_1EC4660A0);
  swift_endAccess();
}

Swift::Void __swiftcall CUIKUpdatedEventProperties.setRecurrenceRule(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = countAndFlagsBits;
  v5[1] = object;

  sub_1CAC8C3BC(v6, v7);
}

Swift::Void __swiftcall CUIKUpdatedEventProperties.setParticipants(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = rawValue;

  sub_1CAC8CEA4(v6);
}

BOOL CUIKUpdatedEventProperties.titleChanged.getter()
{
  v1 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1CAC8C358(v3, v4);
  v5 = sub_1CAC8D214(v3, v4, 0, 1);
  sub_1CAC8C3BC(v3, v4);
  return (v5 & 1) == 0;
}

uint64_t CUIKUpdatedEventProperties.title.getter()
{
  v1 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 16);
  }

  sub_1CAC8C358(v3, v4);
  return v5;
}

Swift::Void __swiftcall CUIKUpdatedEventProperties.merge(changes:)(CUIKUpdatedEventProperties *changes)
{
  swift_beginAccess();
  swift_beginAccess();

  sub_1CAC8E92C(v1);
}

uint64_t _s13CalendarUIKit22UpdatedEventPropertiesC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466098);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  sub_1CAC8C358(v14, v15);
  sub_1CAC8C358(v17, v16);
  v18 = sub_1CAC8D214(v14, v15, v17, v16);
  sub_1CAC8C3BC(v17, v16);
  sub_1CAC8C3BC(v14, v15);
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  swift_beginAccess();
  v21 = *(a2 + 32);
  v22 = *(a2 + 40);
  sub_1CAC8C358(v19, v20);
  sub_1CAC8C358(v21, v22);
  v23 = sub_1CAC8D214(v19, v20, v21, v22);
  sub_1CAC8C3BC(v21, v22);
  sub_1CAC8C3BC(v19, v20);
  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v24 = *(a1 + 48);
  swift_beginAccess();
  v25 = *(a2 + 48);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
LABEL_16:
      v26 = 0;
      return v26 & 1;
    }
  }

  else
  {
    v26 = 0;
    if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return v26 & 1;
    }
  }

  v27 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v27, v13, &qword_1EC466098);
  v28 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate;
  swift_beginAccess();
  sub_1CAB23A9C(a2 + v28, v11, &qword_1EC466098);
  LOBYTE(v28) = sub_1CAC8D3C8(v13, v11);
  sub_1CAB21B68(v11, &qword_1EC466098);
  sub_1CAB21B68(v13, &qword_1EC466098);
  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v29, v13, &qword_1EC466098);
  v30 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime;
  swift_beginAccess();
  sub_1CAB23A9C(a2 + v30, v11, &qword_1EC466098);
  LOBYTE(v30) = sub_1CAC8D3C8(v13, v11);
  sub_1CAB21B68(v11, &qword_1EC466098);
  sub_1CAB21B68(v13, &qword_1EC466098);
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

  v31 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v31, v13, &qword_1EC466098);
  v32 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate;
  swift_beginAccess();
  sub_1CAB23A9C(a2 + v32, v11, &qword_1EC466098);
  LOBYTE(v32) = sub_1CAC8D3C8(v13, v11);
  sub_1CAB21B68(v11, &qword_1EC466098);
  sub_1CAB21B68(v13, &qword_1EC466098);
  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

  v33 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v33, v13, &qword_1EC466098);
  v34 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime;
  swift_beginAccess();
  sub_1CAB23A9C(a2 + v34, v11, &qword_1EC466098);
  LOBYTE(v34) = sub_1CAC8D3C8(v13, v11);
  sub_1CAB21B68(v11, &qword_1EC466098);
  sub_1CAB21B68(v13, &qword_1EC466098);
  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

  v35 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone;
  swift_beginAccess();
  v36 = v54;
  sub_1CAB23A9C(a1 + v35, v54, &qword_1EC4660A0);
  v37 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone;
  swift_beginAccess();
  v38 = v55;
  sub_1CAB23A9C(a2 + v37, v55, &qword_1EC4660A0);
  LOBYTE(v37) = sub_1CAC8D934(v36, v38);
  sub_1CAB21B68(v38, &qword_1EC4660A0);
  sub_1CAB21B68(v36, &qword_1EC4660A0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_16;
  }

  v39 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v39, v36, &qword_1EC4660A0);
  v40 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(a2 + v40, v38, &qword_1EC4660A0);
  LOBYTE(v40) = sub_1CAC8D934(v36, v38);
  sub_1CAB21B68(v38, &qword_1EC4660A0);
  sub_1CAB21B68(v36, &qword_1EC4660A0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_16;
  }

  v41 = (a1 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = (a2 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  sub_1CAC8C358(v43, v42);
  sub_1CAC8C358(v46, v45);
  v47 = sub_1CAC8D214(v43, v42, v46, v45);
  sub_1CAC8C3BC(v46, v45);
  sub_1CAC8C3BC(v43, v42);
  if ((v47 & 1) == 0)
  {
    goto LABEL_16;
  }

  v48 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v49 = *(a1 + v48);
  v50 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v51 = *(a2 + v50);
  sub_1CAC8CE3C(v49);
  sub_1CAC8CE3C(v51);
  v26 = sub_1CAC8DEA0(v49, v51);
  sub_1CAC8CEA4(v51);
  sub_1CAC8CEA4(v49);
  return v26 & 1;
}

uint64_t sub_1CAC926C8(uint64_t a1)
{
  v2 = sub_1CAD4C354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466170);
    v9 = sub_1CAD4E674();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1CAC938C4(&qword_1EC4623E8, MEMORY[0x1E6969AD0]);
      v16 = sub_1CAD4DEA4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1CAC938C4(&qword_1EC4623E0, MEMORY[0x1E6969AD0]);
          v23 = sub_1CAD4DED4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1CAC929E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466190);
    v3 = sub_1CAD4E674();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1CAD4EA84();

      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1CAD4E9E4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1CAC92B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_1CAD4BDC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(a1, v4, &qword_1EC4660A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CAB21B68(v4, &qword_1EC4660A8);
    return 0x3E6C696E3CLL;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_1CAD4BD44();
    if ((v11 & 1) != 0 || (v12 = v10, v13 = sub_1CAD4BD64(), (v14) || (v15 = v13, v16 = sub_1CAD4BCF4(), (v17)) && ((v18 = sub_1CAD4BD24(), (v19) || (v12 = v18, v20 = sub_1CAD4BD84(), (v21) || (v15 = v20, v16 = sub_1CAD4BDA4(), (v22)))
    {
      sub_1CAC938C4(&qword_1EC464740, MEMORY[0x1E6968278]);
      v23 = sub_1CAD4E9B4();
    }

    else
    {
      v24 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E6530];
      *(v25 + 16) = xmmword_1CAD5A590;
      v27 = MEMORY[0x1E69E65A8];
      *(v25 + 56) = v26;
      *(v25 + 64) = v27;
      *(v25 + 32) = v12;
      *(v25 + 96) = v26;
      *(v25 + 104) = v27;
      *(v25 + 72) = v15;
      *(v25 + 136) = v26;
      *(v25 + 144) = v27;
      *(v25 + 112) = v24;
      v23 = sub_1CAD4DFA4();
    }

    v28 = v23;
    (*(v6 + 8))(v8, v5);
    return v28;
  }
}

uint64_t type metadata accessor for UpdatedEventProperties()
{
  result = qword_1EC4660B8;
  if (!qword_1EC4660B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_1CAB23A9C(v6 + v7, a4, a3);
}

void sub_1CAC92F3C()
{
  sub_1CAC9374C(319, &qword_1EC4660C8, &qword_1EC4660A8, &unk_1CAD639C0, sub_1CAC93698);
  if (v0 <= 0x3F)
  {
    sub_1CAC9374C(319, &qword_1EC4660D8, &qword_1EC4635D0, &unk_1CAD599B0, sub_1CAC937BC);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1CAC93698()
{
  result = qword_1EC4660D0;
  if (!qword_1EC4660D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4660A8);
    sub_1CAC938C4(&qword_1EC465A40, MEMORY[0x1E6968278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4660D0);
  }

  return result;
}

void sub_1CAC9374C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = type metadata accessor for UpdatedEventProperties.PropertyStatus();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CAC937BC()
{
  result = qword_1EC4660E0[0];
  if (!qword_1EC4660E0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4635D0);
    sub_1CAC938C4(&qword_1EC464E68, MEMORY[0x1E6969BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4660E0);
  }

  return result;
}

unint64_t type metadata accessor for CUIKUpdatedEventProperties()
{
  result = qword_1EC466168;
  if (!qword_1EC466168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC466168);
  }

  return result;
}

uint64_t sub_1CAC938C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAC93910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1CAC93958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1CAC939C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CC94();
  v14 = 1;
  sub_1CAC93A9C(&v8);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15 = v8;
  v16 = v9;
  v20[2] = v10;
  v20[3] = v11;
  v21 = v12;
  v20[0] = v8;
  v20[1] = v9;
  sub_1CAC93DE4(&v15, &v7);
  sub_1CAC93E54(v20);
  *&v13[7] = v15;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *v13;
  *(a1 + 33) = *&v13[16];
  result = *&v13[32];
  v5 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v5;
  v13[71] = v19;
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 81) = *&v13[64];
  *(a1 + 17) = v3;
  return result;
}

uint64_t sub_1CAC93A9C@<X0>(uint64_t a1@<X8>)
{
  v18 = sub_1CAD4D8F4();
  v17 = sub_1CAD4D8B4();
  KeyPath = swift_getKeyPath();
  sub_1CAD4CD04();
  v2 = CUIKBundle();
  v3 = sub_1CAD4D434();
  v5 = v4;
  v7 = v6;
  sub_1CAD4D8A4();
  v8 = sub_1CAD4D3D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1CABA6128(v3, v5, v7 & 1);

  *a1 = v18;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v17;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12 & 1;
  *(a1 + 48) = v14;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;

  sub_1CABA4F48(v8, v10, v12 & 1);

  sub_1CABA6128(v8, v10, v12 & 1);
}

uint64_t sub_1CAC93C88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466198);
  sub_1CAB23B0C(&qword_1EC4661A0, &qword_1EC466198);

  return sub_1CAD4D9E4();
}

uint64_t sub_1CAC93DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4661A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC93E54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4661A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventDirectoryRecordModelObject.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v26 = (*(v5 + 8))(v4, v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v12 = v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = (*(v18 + 32))(v19, v18);
  v22 = v21;
  *&v27 = v26;
  *(&v27 + 1) = v7;
  *&v28 = v10;
  *(&v28 + 1) = v12;
  *&v29 = v15;
  *(&v29 + 1) = v17;
  *&v30 = v20;
  *(&v30 + 1) = v21;
  v23 = v28;
  *a2 = v27;
  a2[1] = v23;
  v24 = v30;
  a2[2] = v29;
  a2[3] = v24;
  sub_1CABC1A50(&v27, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v26;
  v31[1] = v7;
  v31[2] = v10;
  v31[3] = v12;
  v31[4] = v15;
  v31[5] = v17;
  v31[6] = v20;
  v31[7] = v22;
  return sub_1CABC1AFC(v31);
}

void EventDirectoryRecordModelObject.init(_:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = a1;
  v4 = [v3 preferredAddress];
  if (!v4)
  {

LABEL_6:
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return;
  }

  v5 = v4;
  v25 = sub_1CAD4DF94();
  v7 = v6;

  v8 = [v3 displayName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1CAD4DF94();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v3 firstName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1CAD4DF94();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [v3 lastName];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1CAD4DF94();
    v22 = v21;
  }

  else
  {

    v20 = 0;
    v22 = 0;
  }

  *&v28 = v10;
  *(&v28 + 1) = v12;
  *&v29 = v15;
  *(&v29 + 1) = v17;
  *&v30 = v20;
  *(&v30 + 1) = v22;
  *&v31 = v26;
  *(&v31 + 1) = v7;
  v23 = v29;
  *a2 = v28;
  a2[1] = v23;
  v24 = v31;
  a2[2] = v30;
  a2[3] = v24;
  v32[0] = v10;
  v32[1] = v12;
  v32[2] = v15;
  v32[3] = v17;
  v32[4] = v20;
  v32[5] = v22;
  v32[6] = v26;
  v32[7] = v7;
  sub_1CABC1A50(&v28, v27);
  sub_1CABC1AFC(v32);
}

void __swiftcall EventDirectoryRecordModelObject.init(displayName:firstName:lastName:preferredAddress:)(CalendarUIKit::EventDirectoryRecordModelObject *__return_ptr retstr, Swift::String_optional displayName, Swift::String_optional firstName, Swift::String_optional lastName, Swift::String preferredAddress)
{
  retstr->displayName = displayName;
  retstr->firstName = firstName;
  retstr->lastName = lastName;
  retstr->preferredAddress = preferredAddress;
}

uint64_t EventDirectoryRecordModelObject.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventDirectoryRecordModelObject.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventDirectoryRecordModelObject.firstName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EventDirectoryRecordModelObject.firstName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t EventDirectoryRecordModelObject.lastName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EventDirectoryRecordModelObject.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t EventDirectoryRecordModelObject.preferredAddress.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EventDirectoryRecordModelObject.preferredAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t EventDirectoryRecordModelObject.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[5];
  if (v0[1])
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1CAD4EAA4();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1CAD4EAA4();
  if (!v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (v2)
  {
LABEL_4:
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    goto LABEL_8;
  }

LABEL_7:
  sub_1CAD4EAA4();
LABEL_8:

  return sub_1CAD4E054();
}

uint64_t EventDirectoryRecordModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventDirectoryRecordModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC94558()
{
  sub_1CAD4EA84();
  EventDirectoryRecordModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC9459C()
{
  sub_1CAD4EA84();
  EventDirectoryRecordModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

unint64_t sub_1CAC945DC()
{
  v1 = 0x4E79616C70736964;
  v2 = 0x656D614E7473616CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6D614E7473726966;
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

uint64_t sub_1CAC94668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC95034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC94690(uint64_t a1)
{
  v2 = sub_1CAC94DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC946CC(uint64_t a1)
{
  v2 = sub_1CAC94DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventDirectoryRecordModelObject.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4661C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC94DC8();
  sub_1CAD4EAE4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v9 = sub_1CAD4E824();
    v11 = v10;
    v32 = v9;
    LOBYTE(v37[0]) = 1;
    v12 = sub_1CAD4E824();
    v14 = v13;
    v31 = v12;
    LOBYTE(v37[0]) = 2;
    v15 = sub_1CAD4E824();
    v17 = v16;
    v30 = v15;
    v38 = 3;
    v18 = sub_1CAD4E884();
    v19 = *(v6 + 8);
    v29 = v18;
    v20 = v8;
    v22 = v21;
    v19(v20, v5);
    v23 = v32;
    *&v33 = v32;
    *(&v33 + 1) = v11;
    *&v34 = v31;
    *(&v34 + 1) = v14;
    v24 = v30;
    *&v35 = v30;
    *(&v35 + 1) = v17;
    *&v36 = v29;
    *(&v36 + 1) = v22;
    v25 = v34;
    *a2 = v33;
    a2[1] = v25;
    v26 = v36;
    a2[2] = v35;
    a2[3] = v26;
    sub_1CABC1A50(&v33, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v23;
    v37[1] = v11;
    v37[2] = v31;
    v37[3] = v14;
    v37[4] = v24;
    v37[5] = v17;
    v37[6] = v29;
    v37[7] = v22;
    return sub_1CABC1AFC(v37);
  }
}

uint64_t EventDirectoryRecordModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4661D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC94DC8();
  sub_1CAD4EB04();
  v16 = 0;
  v10 = v12[7];
  sub_1CAD4E904();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1CAD4E904();
  v14 = 2;
  sub_1CAD4E904();
  v13 = 3;
  sub_1CAD4E934();
  return (*(v4 + 8))(v6, v3);
}

uint64_t _s13CalendarUIKit31EventDirectoryRecordModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v30 = a1[5];
      v31 = a2[5];
      v17 = a1[4];
      v18 = a2[7];
      v19 = a2[6];
      v20 = a1[7];
      v21 = a1[6];
      v22 = a2[4];
      v23 = sub_1CAD4E9E4();
      v12 = v22;
      v7 = v21;
      v9 = v20;
      v14 = v19;
      v16 = v18;
      v5 = v17;
      v8 = v30;
      v15 = v31;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v24 = v7;
      v25 = v12;
      v26 = sub_1CAD4E9E4();
      v12 = v25;
      v7 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (v15)
    {
      if (v5 == v12 && v8 == v15)
      {
        goto LABEL_20;
      }

      v27 = v7;
      v28 = sub_1CAD4E9E4();
      v7 = v27;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

  if (v15)
  {
    return 0;
  }

LABEL_20:
  if (v7 == v14 && v9 == v16)
  {
    return 1;
  }

  return sub_1CAD4E9E4();
}

unint64_t sub_1CAC94DC8()
{
  result = qword_1EC4661D0;
  if (!qword_1EC4661D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4661D0);
  }

  return result;
}

unint64_t sub_1CAC94E20()
{
  result = qword_1EC4661E0;
  if (!qword_1EC4661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4661E0);
  }

  return result;
}

uint64_t sub_1CAC94E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAC94EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CAC94F30()
{
  result = qword_1EC4661E8;
  if (!qword_1EC4661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4661E8);
  }

  return result;
}

unint64_t sub_1CAC94F88()
{
  result = qword_1EC4661F0;
  if (!qword_1EC4661F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4661F0);
  }

  return result;
}

unint64_t sub_1CAC94FE0()
{
  result = qword_1EC4661F8[0];
  if (!qword_1EC4661F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4661F8);
  }

  return result;
}

uint64_t sub_1CAC95034(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD768C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1CAC951B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CAC9522C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1CAC95368(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1CAC9557C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4643A0);
  v4 = *(a1 + 16);
  v5 = sub_1CABF25D0();
  v6 = *(a1 + 24);
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v7 = sub_1CAD4C864();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v20 = v4;
  v21 = v6;
  v22 = v1;
  v17 = v4;
  v18 = v6;
  v19 = v1;
  sub_1CAC9597C(sub_1CAC95A50);
  swift_getWitnessTable();
  sub_1CAC06984(v11);
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_1CAC06984(v13);
  return (v14)(v13, v7);
}

uint64_t sub_1CAC95760(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC06984(v4);
  sub_1CAC06984(v6);
  return (*(v3 + 8))(v6, a2);
}

__n128 sub_1CAC9583C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(a1 + *(type metadata accessor for NavigationButton() + 36));
  sub_1CABA6054();

  v3 = sub_1CAD4D444();
  v5 = v4;
  v7 = v6;
  v8 = sub_1CAD4D414();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1CABA6128(v3, v5, v7 & 1);

  sub_1CAD4DC94();
  sub_1CAD4C9A4();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  *(a2 + 128) = v22;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  result = v19;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  return result;
}

uint64_t sub_1CAC9597C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v1();
  return sub_1CAD4C854();
}

uint64_t EventRecurrenceRuleModel.dateComponents.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1CAD4C374();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1CAD4C404();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1CAD4BDB4();
  v12 = *(a2 + 56);
  result = v12(a1, a2);
  if (result >= 1)
  {
    result = (*(a2 + 48))(a1, a2);
    if (result > 1)
    {
      goto LABEL_7;
    }

    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v14 = v12(a1, a2);
      result = 7 * v14;
      if ((v14 * 7) >> 64 != (7 * v14) >> 63)
      {
        __break(1u);
LABEL_7:
        if (result == 2)
        {
          v12(a1, a2);
          return sub_1CAD4BD74();
        }

        else if (result == 3)
        {
          v12(a1, a2);
          return sub_1CAD4BD54();
        }

        return result;
      }
    }

    else
    {
      v12(a1, a2);
    }

    return sub_1CAD4BD04();
  }

  return result;
}

size_t sub_1CAC95E88@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CABF1BA4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for DisplayPerson(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1CAC97C58(v11, a2, type metadata accessor for DisplayPerson);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1CAC95FBC()
{
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  return *(v0 + 24);
}

uint64_t sub_1CAC9605C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1CAC96104(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CAC96214()
{
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
}

uint64_t sub_1CAC962CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1CAC9638C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1CACA8CB4(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CAC964D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_1CAC9653C()
{
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
}

uint64_t sub_1CAC965F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1CAC966B4()
{
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C414();
}

uint64_t sub_1CAC96780(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t sub_1CAC967E8(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    v11 = v7;
    sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
    sub_1CAD4C424();

    v11 = v7;
    swift_getKeyPath();
    sub_1CAD4C444();

    swift_beginAccess();
    sub_1CAC95E88(a2, v5);
    swift_endAccess();
    v11 = v7;
    swift_getKeyPath();
    sub_1CAD4C434();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for DisplayPerson(0);
  (*(*(v9 - 8) + 56))(v5, v8, 1, v9);
  return sub_1CAC97A60(v5);
}

uint64_t sub_1CAC969F0()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC13CalendarUIKit27AttendeeStatusListViewModel___observationRegistrar;
  v2 = sub_1CAD4C464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CAC96AD4()
{
  result = sub_1CAD4C464();
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

uint64_t sub_1CAC96BD4(uint64_t a1)
{
  v2 = type metadata accessor for AttendeeStatusListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A8);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
  v5 = *(v10[3] + 32);

  v6 = *(v5 + 16);

  v10[1] = 0;
  v10[2] = v6;
  swift_getKeyPath();
  sub_1CAC97BF0(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttendeeStatusListView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1CAC97C58(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AttendeeStatusListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662C8);
  sub_1CAC97D40();
  sub_1CAC97DCC();
  return sub_1CAD4DB64();
}

uint64_t sub_1CAC96E38@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a3;
  v5 = type metadata accessor for AttendeeStatusListView(0);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = type metadata accessor for DisplayPerson(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A8);
  sub_1CAD4DBF4();
  v12 = v22;
  swift_getKeyPath();
  v22 = v12;
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
  v13 = *(v12 + 32);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v13 + 16))
  {
    sub_1CAC97BF0(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v10, type metadata accessor for DisplayPerson);

    v15 = *&v10[*(v7 + 20)];
    sub_1CAC97A04(v10);
    sub_1CAC97BF0(a2, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttendeeStatusListView);
    v16 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v17 = swift_allocObject();
    result = sub_1CAC97C58(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AttendeeStatusListView);
    *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
    v18 = v21;
    *v21 = v15;
    v18[1] = sub_1CAC97E30;
    v18[2] = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC97120@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A8);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
  v4 = *(v8 + 48);

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1CCAA7940](a1, v4);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {

LABEL_5:

    type metadata accessor for SingleAttendeeInfoViewModel(0);
    sub_1CAC9799C(&qword_1EC4650A8, type metadata accessor for SingleAttendeeInfoViewModel);
    sub_1CAD4DC14();
    v6 = sub_1CAD4CD84();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662D8);
    v7 = (a2 + *(result + 36));
    *v7 = v6;
    v7[1] = sub_1CAC3E60C;
    v7[2] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC972FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for DisplayPerson(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  swift_weakInit();
  v15 = OBJC_IVAR____TtC13CalendarUIKit27AttendeeStatusListViewModel___observationRegistrar;
  sub_1CAD4C454();

  swift_weakDestroy();
  swift_weakInit();

  *(v5 + 48) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v44 = *(a3 + 16);
  if (v44)
  {
    v16 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v39 = *(v10 + 72);

    v17 = 0;
    v18 = 0;
    v42 = v14;
    v43 = a4;
    v40 = v5 + 48;
    v41 = v15;
    v38 = v5;
    while (1)
    {
      sub_1CAC97BF0(v16, v14, type metadata accessor for DisplayPerson);
      v19 = type metadata accessor for EventAttendeeModelObject(0);
      v20 = *(a4 + 16);
      v49 = v16;
      v47 = v18;
      if (v20 && (v21 = sub_1CAC1628C(*&v14[*(v19 + 32)], *&v14[*(v19 + 32) + 8]), (v22 & 1) != 0))
      {
        v23 = 0;
        v45 = *(*(a4 + 56) + 8 * v21);
      }

      else
      {
        v45 = 0;
        v23 = 1;
      }

      swift_getKeyPath();
      v51 = v5;
      v46 = sub_1CAC9799C(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);
      sub_1CAD4C424();

      v24 = *(v5 + 24);
      v25 = v50;
      sub_1CAC97BF0(v14, v50, type metadata accessor for DisplayPerson);
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v17;
      v48 = v17;
      type metadata accessor for SingleAttendeeInfoViewModel(0);
      v28 = swift_allocObject();
      v29 = v28 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability;
      *v29 = 0;
      *(v29 + 8) = 1;
      v30 = (v28 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler);
      *v30 = 0;
      v30[1] = 0;

      sub_1CAD4C454();
      *(v28 + 16) = v24;
      sub_1CAC97BF0(v25, v28 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson, type metadata accessor for DisplayPerson);
      if (*(v29 + 8))
      {
        v31 = v45;
        if (!v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v31 = v45;
        if (*v29 == v45)
        {
          v32 = v23;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
LABEL_14:
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v37 - 4) = v28;
          *(&v37 - 3) = v31;
          *(&v37 - 16) = v23;
          v51 = v28;
          sub_1CAC9799C(&qword_1EC4650A8, type metadata accessor for SingleAttendeeInfoViewModel);
          v18 = v47;
          sub_1CAD4C414();

          goto LABEL_15;
        }
      }

      *v29 = v31;
      *(v29 + 8) = v23;
      v18 = v47;
LABEL_15:
      v34 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v34);
      *(&v37 - 4) = v28;
      *(&v37 - 3) = sub_1CAC97974;
      *(&v37 - 2) = v27;
      v51 = v28;
      sub_1CAC9799C(&qword_1EC4650A8, type metadata accessor for SingleAttendeeInfoViewModel);
      sub_1CAD4C414();

      sub_1CAC97A04(v50);

      swift_getKeyPath();
      v5 = v38;
      v51 = v38;

      sub_1CAD4C424();

      v51 = v5;
      swift_getKeyPath();
      sub_1CAD4C444();

      v35 = swift_beginAccess();
      MEMORY[0x1CCAA7460](v35);
      if (*((*(v5 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CAD4E234();
      }

      v17 = v48 + 1;
      sub_1CAD4E264();
      swift_endAccess();
      v51 = v5;
      swift_getKeyPath();
      sub_1CAD4C434();

      v14 = v42;
      sub_1CAC97A04(v42);
      v16 = v49 + v39;
      a4 = v43;
      if (v44 == v17)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1CAC9799C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAC97A04(uint64_t a1)
{
  v2 = type metadata accessor for DisplayPerson(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAC97A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4662A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CAC97B10()
{
  sub_1CAC97B7C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1CAC97B7C()
{
  if (!qword_1EC4662C0)
  {
    type metadata accessor for AttendeeStatusListViewModel(255);
    v0 = sub_1CAD4DC34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4662C0);
    }
  }
}

uint64_t sub_1CAC97BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC97C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC97CC0@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AttendeeStatusListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CAC96E38(a1, v6, a2);
}

unint64_t sub_1CAC97D40()
{
  result = qword_1EC461F08;
  if (!qword_1EC461F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464520);
    sub_1CAC04604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC461F08);
  }

  return result;
}

unint64_t sub_1CAC97DCC()
{
  result = qword_1EC4662D0;
  if (!qword_1EC4662D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4662C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4662D0);
  }

  return result;
}

uint64_t sub_1CAC97E30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttendeeStatusListView(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CAC97120(v4, a1);
}

unint64_t sub_1CAC97ECC()
{
  result = qword_1EC4662E0;
  if (!qword_1EC4662E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4662E8);
    sub_1CAC97F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4662E0);
  }

  return result;
}

unint64_t sub_1CAC97F50()
{
  result = qword_1EC4662F0;
  if (!qword_1EC4662F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4662F8);
    sub_1CAC97DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4662F0);
  }

  return result;
}

void sub_1CAC9801C()
{
  sub_1CAC98884(319, &qword_1EC463108, MEMORY[0x1E69E6370], MEMORY[0x1E6981940]);
  if (v0 <= 0x3F)
  {
    sub_1CAC98884(319, &qword_1EC466318, &type metadata for EventEditPushAction, MEMORY[0x1E6981940]);
    if (v1 <= 0x3F)
    {
      sub_1CAC98820(319, &qword_1EC466320, &qword_1EC465AC8, &unk_1CAD64240, MEMORY[0x1E6981940]);
      if (v2 <= 0x3F)
      {
        sub_1CAC98820(319, &qword_1EC466328, &qword_1EC466330, &unk_1CAD64248, MEMORY[0x1E6981940]);
        if (v3 <= 0x3F)
        {
          sub_1CAC98820(319, &qword_1EC466338, &qword_1EC466340, &unk_1CAD64250, MEMORY[0x1E6981940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1CAC981E4@<X0>(uint64_t a1@<X8>)
{
  swift_weakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  sub_1CAD4DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4661B0);
  sub_1CAD4DAE4();
  v3 = type metadata accessor for PersonEditor(0);
  v4 = type metadata accessor for ModernPersonCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466300);
  sub_1CAD4DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466348);
  sub_1CAD4DAE4();
  v5 = (v1 + *(v3 + 36));
  v13 = *v5;
  v14 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466350);
  sub_1CAD4DAE4();
  swift_weakInit();

  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = BYTE8(v12);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = BYTE8(v12);
  v6 = a1 + v4[8];
  *v6 = v11;
  *(v6 + 8) = v12;
  v7 = a1 + v4[9];
  *v7 = v11;
  *(v7 + 8) = v12;
  v8 = (a1 + v4[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466358);
  sub_1CAD4D984();
  *v8 = v13;
  v8[1] = v14;
  v9 = a1 + v4[11];
  result = sub_1CAD4D984();
  *v9 = v13;
  *(v9 + 8) = v14;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466300);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466300);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1CAC985F4()
{
  sub_1CAC98884(319, &qword_1EC463108, MEMORY[0x1E69E6370], MEMORY[0x1E6981940]);
  if (v0 <= 0x3F)
  {
    sub_1CAC98884(319, &qword_1EC466318, &type metadata for EventEditPushAction, MEMORY[0x1E6981940]);
    if (v1 <= 0x3F)
    {
      sub_1CAC98820(319, &qword_1EC466320, &qword_1EC465AC8, &unk_1CAD64240, MEMORY[0x1E6981940]);
      if (v2 <= 0x3F)
      {
        sub_1CAC98820(319, &qword_1EC466328, &qword_1EC466330, &unk_1CAD64248, MEMORY[0x1E6981940]);
        if (v3 <= 0x3F)
        {
          sub_1CAC98820(319, &qword_1EC466338, &qword_1EC466340, &unk_1CAD64250, MEMORY[0x1E6981940]);
          if (v4 <= 0x3F)
          {
            sub_1CAC98820(319, &qword_1EC466370, &qword_1EC466358, &unk_1CAD642C8, MEMORY[0x1E6981788]);
            if (v5 <= 0x3F)
            {
              sub_1CAC98884(319, &qword_1EC463558, MEMORY[0x1E69E6370], MEMORY[0x1E6981788]);
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

void sub_1CAC98820(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1CAC98884(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1CAC988F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663B8);
  v58 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v57 = (&v56 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - v7;
  v64 = type metadata accessor for DisplayOrganizerPerson(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466300);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = *(a1 + 8);
  v21 = *(a1 + 24);
  v61 = *(a1 + 16);
  v62 = v20;
  v71 = v20;
  v72 = v61;
  v60 = v21;
  LOBYTE(v73) = v21;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](v69);
  v22 = 0;
  v23 = 0;
  v68 = 0;
  if ((v69[0] & 1) == 0)
  {
    type metadata accessor for ModernPersonCell(0);
    sub_1CAD4DAE4();
    v24 = v64;
    sub_1CAD4DB24();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1CAB21B68(v13, &qword_1EC4663C8);
      v22 = 0;
      v23 = 0;
      v68 = 0;
    }

    else
    {
      sub_1CAC9F2EC(v13, v19);
      v25 = v63;
      MEMORY[0x1CCAA6D30](v14);
      v22 = *(v25 + *(v24 + 20));
      sub_1CAC9F3D8(v25, type metadata accessor for DisplayOrganizerPerson);
      v26 = v56;
      sub_1CAC9F2EC(v19, v56);
      v27 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v28 = swift_allocObject();
      sub_1CAC9F2EC(v26, v28 + v27);
      v29 = v22;
      v68 = v28;

      v23 = sub_1CAC9F35C;
    }
  }

  v63 = v23;
  v64 = v22;
  v30 = (a1 + *(type metadata accessor for ModernPersonCell(0) + 32));
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v71 = *v30;
  v72 = v32;
  v73 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466348);
  MEMORY[0x1CCAA6D30](v69);
  v35 = *(v69[0] + 16);

  if (v35)
  {
    v36 = sub_1CAD4CD94();
    v37 = v57;
    *v57 = v36;
    *(v37 + 8) = 0x4030000000000000;
    *(v37 + 16) = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D8);
    sub_1CAC99088(a1, v37 + *(v38 + 44));
    sub_1CAB31D6C(v37, v8);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  (*(v58 + 56))(v8, v39, 1, v65);
  v71 = v62;
  v72 = v61;
  LOBYTE(v73) = v60;
  MEMORY[0x1CCAA6D30](v69, v59);
  if (LOBYTE(v69[0]) == 1)
  {
    v40 = *(a1 + 40);
    v41 = *(a1 + 48);
    v71 = *(a1 + 32);
    v72 = v40;
    LOBYTE(v73) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4661B0);
    sub_1CAD4DAE4();
    v42 = v69[0];
    v43 = v69[1];
    v65 = v70;
    v71 = v31;
    v72 = v32;
    v73 = v33;
    MEMORY[0x1CCAA6D30](v69, v34);
    v44 = *(v69[0] + 16);

    LOBYTE(v69[0]) = v44 != 0;
    sub_1CAD4D984();
    v45 = v71;
    v46 = v72;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v65 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v66;
  sub_1CAB23A9C(v8, v66, &qword_1EC4663C0);
  v62 = v8;
  v49 = v67;
  v48 = v68;
  v50 = v63;
  v51 = v64;
  *v67 = v64;
  v49[1] = v50;
  v49[2] = v48;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663E0);
  sub_1CAB23A9C(v47, v49 + *(v52 + 48), &qword_1EC4663C0);
  v53 = (v49 + *(v52 + 64));
  sub_1CAC9F1CC(v51);
  v54 = v65;
  sub_1CAC9F20C(v42, v43);
  sub_1CAC9F25C(v51);
  sub_1CAC9F29C(v42, v43);
  *v53 = v42;
  v53[1] = v43;
  v53[2] = v54;
  v53[3] = v45;
  v53[4] = v46;
  sub_1CAB21B68(v62, &qword_1EC4663C0);
  sub_1CAC9F29C(v42, v43);
  sub_1CAB21B68(v47, &qword_1EC4663C0);
  return sub_1CAC9F25C(v51);
}

uint64_t sub_1CAC99014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAB23A9C(a1, a2, &qword_1EC4663D0);
  v3 = sub_1CAD4CD84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663E8);
  v5 = (a2 + *(result + 36));
  *v5 = v3;
  v5[1] = sub_1CAC3E60C;
  v5[2] = 0;
  return result;
}

uint64_t sub_1CAC99088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for ModernPersonCell(0);
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663F0);
  MEMORY[0x1EEE9AC00](v70);
  v6 = &v62 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663F8);
  v64 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v8 = &v62 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466400);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v62 - v9;
  v68 = type metadata accessor for AttendeeStatusListView(0);
  MEMORY[0x1EEE9AC00](v68);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466408);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v62 - v15;
  v16 = (a1 + *(v3 + 32));
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  *v87 = v18;
  *&v87[8] = v17;
  v73 = v19;
  v74 = v17;
  *&v87[16] = v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466348);
  MEMORY[0x1CCAA6D30](&v82);
  v20 = *(v82 + 16);

  v65 = v18;
  if (v20 <= 4)
  {
    Strong = swift_weakLoadStrong();
    v32 = *(a1 + 16);
    v33 = *(a1 + 24);
    *v87 = *(a1 + 8);
    *&v87[8] = v32;
    v87[16] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
    MEMORY[0x1CCAA6D30](&v82, v34);
    v35 = v82;
    *v87 = v18;
    *&v87[8] = v74;
    *&v87[16] = v73;
    v30 = v67;
    MEMORY[0x1CCAA6D30](&v82, v67);
    v36 = v82;
    v37 = a1 + *(v3 + 36);
    *v87 = *v37;
    *&v87[8] = *(v37 + 8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466350);
    MEMORY[0x1CCAA6D30](&v82, v38);
    v39 = v82;
    type metadata accessor for AttendeeStatusListViewModel(0);
    swift_allocObject();
    sub_1CAC972FC(Strong, v35, v36, v39);

    sub_1CAC9F184(&qword_1EC466298, type metadata accessor for AttendeeStatusListViewModel);

    sub_1CAD4DC14();
    sub_1CAC9CD14(v11, v69, type metadata accessor for AttendeeStatusListView);
    swift_storeEnumTagMultiPayload();
    sub_1CAC9F184(&qword_1EC466410, type metadata accessor for AttendeeStatusListView);
    v40 = sub_1CAB23B0C(&qword_1EC466418, &qword_1EC4663F0);
    *v87 = v70;
    *&v87[8] = v40;
    swift_getOpaqueTypeConformance2();
    v27 = v75;
    sub_1CAD4CE24();

    sub_1CAC9F3D8(v11, type metadata accessor for AttendeeStatusListView);
    v29 = v73;
    v28 = v74;
  }

  else
  {
    sub_1CAC99A10(v6);
    sub_1CAC9CD14(a1, &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModernPersonCell);
    v21 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v22 = swift_allocObject();
    sub_1CAC9CD7C(&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ModernPersonCell);
    v23 = sub_1CAB23B0C(&qword_1EC466418, &qword_1EC4663F0);
    v24 = v70;
    sub_1CAD4D544();

    sub_1CAB21B68(v6, &qword_1EC4663F0);
    v25 = v64;
    v26 = v71;
    (*(v64 + 16))(v69, v8, v71);
    swift_storeEnumTagMultiPayload();
    sub_1CAC9F184(&qword_1EC466410, type metadata accessor for AttendeeStatusListView);
    *v87 = v24;
    *&v87[8] = v23;
    swift_getOpaqueTypeConformance2();
    v27 = v75;
    sub_1CAD4CE24();
    (*(v25 + 8))(v8, v26);
    v29 = v73;
    v28 = v74;
    v30 = v67;
  }

  v41 = *(a1 + 16);
  v42 = *(a1 + 24);
  *v87 = *(a1 + 8);
  *&v87[8] = v41;
  v87[16] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v82, v43);
  if ((v82 & 1) != 0 || (*v87 = v65, *&v87[8] = v28, *&v87[16] = v29, MEMORY[0x1CCAA6D30](&v82, v30), v44 = *(v82 + 16), , v44 < 2))
  {
    v45 = 0;
    v73 = 0;
    v74 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    LODWORD(v66) = 0;
    v46 = 0;
  }

  else
  {
    v45 = sub_1CAD4CC94();
    v81 = 1;
    sub_1CAC99C90(&v78);
    v82 = v78;
    v83 = v79;
    v84[0] = v80[0];
    *(v84 + 9) = *(v80 + 9);
    *v87 = v78;
    *&v87[16] = v79;
    *v88 = v80[0];
    *&v88[9] = *(v80 + 9);
    sub_1CAB23A9C(&v82, &v77, &qword_1EC466430);
    sub_1CAB21B68(v87, &qword_1EC466430);
    v73 = *(&v82 + 1);
    v74 = v82;
    v70 = *(&v83 + 1);
    v71 = v83;
    v68 = *(&v84[0] + 1);
    v69 = *&v84[0];
    v67 = *&v84[1];
    LODWORD(v66) = BYTE8(v84[1]);
    v46 = v81;
  }

  v64 = v46;
  v47 = v76;
  sub_1CAB23A9C(v27, v76, &qword_1EC466408);
  v48 = v47;
  v49 = v72;
  sub_1CAB23A9C(v48, v72, &qword_1EC466408);
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466420) + 48);
  v65 = v45;
  v82 = v45;
  v51 = v73;
  v52 = v74;
  *&v83 = v46;
  *(&v83 + 1) = v74;
  v54 = v70;
  v53 = v71;
  *&v84[0] = v73;
  *(&v84[0] + 1) = v71;
  v56 = v68;
  v55 = v69;
  *&v84[1] = v70;
  *(&v84[1] + 1) = v69;
  v57 = v67;
  *&v85 = v68;
  *(&v85 + 1) = v67;
  v58 = v66;
  v86 = v66;
  *(v50 + 80) = v66;
  v59 = v83;
  *v50 = v82;
  *(v50 + 16) = v59;
  v60 = v84[1];
  *(v50 + 32) = v84[0];
  *(v50 + 48) = v60;
  *(v50 + 64) = v85;
  sub_1CAB23A9C(&v82, v87, &qword_1EC466428);
  sub_1CAB21B68(v75, &qword_1EC466408);
  *v87 = v65;
  *&v87[8] = 0;
  *&v87[16] = v64;
  *&v87[24] = v52;
  *v88 = v51;
  *&v88[8] = v53;
  *&v88[16] = v54;
  *&v88[24] = v55;
  v89 = v56;
  v90 = v57;
  v91 = v58;
  sub_1CAB21B68(v87, &qword_1EC466428);
  return sub_1CAB21B68(v76, &qword_1EC466408);
}

uint64_t sub_1CAC99A10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CAD4DC44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1CAD4DC54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = xmmword_1CAD641F0;
  (*(v5 + 104))(v7, *MEMORY[0x1E697D740], v4);
  sub_1CAD4DC64();
  v12 = sub_1CAD4E244();
  *(v12 + 16) = 2;
  v13 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  (*(v9 + 16))(v13, v11, v8);
  (*(v9 + 32))(v13 + *(v9 + 72), v11, v8);
  v14 = v2 + *(type metadata accessor for ModernPersonCell(0) + 32);
  v19[1] = *v14;
  v20 = *(v14 + 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466348);
  MEMORY[0x1CCAA6D30](v19, v15);
  v16 = *(v19[0] + 16);

  *a1 = sub_1CAD4CD94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466438);
  sub_1CAC9A50C(v2, v12, v16 - 30, (a1 + *(v17 + 44)));
}

uint64_t sub_1CAC99C90@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4661B0);
  sub_1CAD4DAE4();
  result = sub_1CAD4DAE4();
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = 1;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  return result;
}

uint64_t sub_1CAC99D50(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_1CAD4E2C4();
  *(v1 + 48) = sub_1CAD4E2B4();
  v3 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC99DE8, v3, v2);
}

uint64_t sub_1CAC99DE8()
{
  v1 = v0[5];

  v2 = sub_1CAC99EA0();
  v3 = (v1 + *(type metadata accessor for ModernPersonCell(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663A0);
  sub_1CAD4D9A4();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1CAC99EA0()
{
  v1 = type metadata accessor for DisplayPerson(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v50 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v53 = v46 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v55 = v46 - v7;
  v8 = v0 + *(type metadata accessor for ModernPersonCell(0) + 32);
  v57 = *v8;
  v58 = *(v8 + 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466348);
  MEMORY[0x1CCAA6D30](&v56, v9);
  sub_1CAC9C7C8(v56);
  v11 = v10;

  v12 = *(v11 + 16);
  if (!v12)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v13 = 0;
  v54 = v11 + 32;
  v46[1] = v1;
  v47 = v12 - 1;
  v14 = MEMORY[0x1E69E7CC0];
  v48 = 30;
  v51 = xmmword_1CAD58380;
  v49 = v2;
  v52 = v12;
  while (2)
  {
    v15 = v13;
    while (1)
    {
      if (v15 >= *(v11 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v57 = *(v54 + 8 * v15);
      swift_bridgeObjectRetain_n();
      sub_1CAC9CC6C(&v57);

      v16 = v57;
      v17 = v57[2];
      if (v17 > 1)
      {
        break;
      }

      if (v17)
      {
        v18 = v11;
        v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v20 = v53;
        sub_1CAC9CD14(v57 + v19, v53, type metadata accessor for DisplayPerson);

        sub_1CAC9CD7C(v20, v55, type metadata accessor for DisplayPerson);
        v21 = v14[2];
        if (v21 && (v22 = v21 - 1, *(v14[v21 + 3] + 16) == 1))
        {
          sub_1CAC9CD14(v55, v50, type metadata accessor for DisplayPerson);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1CABF1BB8(v14);
          }

          if (v21 > v14[2])
          {
            goto LABEL_51;
          }

          v23 = v14 + 4;
          v24 = v14[v22 + 4];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14[v22 + 4] = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = sub_1CAD35268(0, v24[2] + 1, 1, v24);
            v23[v22] = v24;
          }

          v27 = v24[2];
          v26 = v24[3];
          if (v27 >= v26 >> 1)
          {
            v23[v22] = sub_1CAD35268(v26 > 1, v27 + 1, 1, v24);
          }

          sub_1CAC9F3D8(v55, type metadata accessor for DisplayPerson);
          v28 = v23[v22];
          *(v28 + 16) = v27 + 1;
          v29 = v28 + v19 + *(v49 + 72) * v27;
          v2 = v49;
          sub_1CAC9CD7C(v50, v29, type metadata accessor for DisplayPerson);
          v11 = v18;
          v12 = v52;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663A8);
          v30 = swift_allocObject();
          *(v30 + 16) = v51;
          sub_1CAC9CD14(v55, v30 + v19, type metadata accessor for DisplayPerson);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1CAD35290(0, v14[2] + 1, 1, v14);
          }

          v11 = v18;
          v32 = v14[2];
          v31 = v14[3];
          v12 = v52;
          if (v32 >= v31 >> 1)
          {
            v14 = sub_1CAD35290((v31 > 1), v32 + 1, 1, v14);
          }

          sub_1CAC9F3D8(v55, type metadata accessor for DisplayPerson);
          v14[2] = v32 + 1;
          v14[v32 + 4] = v30;
        }
      }

      else
      {
      }

      if (v12 == ++v15)
      {
        goto LABEL_49;
      }
    }

    v33 = v48 - v17;
    if (v48 <= v17)
    {
      if ((v48 & 0x8000000000000000) == 0)
      {
        if (v48 == v17)
        {

          v42 = v16;
          goto LABEL_41;
        }

        if (!v48)
        {
          v42 = MEMORY[0x1E69E7CC0];
          goto LABEL_41;
        }

        v36 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663A8);
        v37 = *(v2 + 72);
        v38 = swift_allocObject();
        v39 = _swift_stdlib_malloc_size(v38);
        if (v37)
        {
          if (v39 - v36 != 0x8000000000000000 || v37 != -1)
          {
            v41 = 2 * ((v39 - v36) / v37);
            v42 = v38;
            v38[2] = v48;
            v38[3] = v41;
            swift_arrayInitWithCopy();
            v2 = v49;
LABEL_41:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1CAD35290(0, v14[2] + 1, 1, v14);
            }

            v44 = v14[2];
            v43 = v14[3];
            if (v44 >= v43 >> 1)
            {
              v14 = sub_1CAD35290((v43 > 1), v44 + 1, 1, v14);
            }

            v48 = 0;
            v14[2] = v44 + 1;
            v14[v44 + 4] = v42;
            goto LABEL_46;
          }

LABEL_54:
          __break(1u);

          __break(1u);
          return result;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1CAD35290(0, v14[2] + 1, 1, v14);
    }

    v35 = v14[2];
    v34 = v14[3];
    if (v35 >= v34 >> 1)
    {
      v14 = sub_1CAD35290((v34 > 1), v35 + 1, 1, v14);
    }

    v14[2] = v35 + 1;
    v14[v35 + 4] = v16;
    v48 = v33;
LABEL_46:
    v13 = v15 + 1;
    if (v47 != v15)
    {
      continue;
    }

    break;
  }

LABEL_49:

  return v14;
}

uint64_t sub_1CAC9A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v54 = a3;
  v62 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466440);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - v11;
  v12 = type metadata accessor for ModernPersonCell(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466448);
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  v21 = (a1 + *(v13 + 48));
  v23 = *v21;
  v22 = v21[1];
  v64 = v23;
  v65 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663A0);
  sub_1CAD4D994();
  v24 = *(v63 + 16);

  v64 = 0;
  v65 = v24;
  KeyPath = swift_getKeyPath();
  v51 = a1;
  sub_1CAC9CD14(a1, &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModernPersonCell);
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  v50 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC9CD7C(v50, v26 + v25, type metadata accessor for ModernPersonCell);
  *(v26 + ((v25 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466450);
  sub_1CAC97D40();
  sub_1CAB23B0C(&qword_1EC466458, &qword_1EC466450);
  v27 = v20;
  v28 = v54;
  sub_1CAD4DB64();
  if (v28 < 1)
  {
    v36 = 1;
    v38 = v59;
    v37 = v60;
    v35 = v55;
  }

  else
  {
    v29 = v50;
    sub_1CAC9CD14(v51, v50, type metadata accessor for ModernPersonCell);
    v30 = swift_allocObject();
    v31 = sub_1CAC9CD7C(v29, v30 + v25, type metadata accessor for ModernPersonCell);
    MEMORY[0x1EEE9AC00](v31);
    v32 = v52;
    sub_1CAD4D9E4();
    v34 = v59;
    v33 = v60;
    v35 = v55;
    (*(v59 + 32))(v55, v32, v60);
    v36 = 0;
    v37 = v33;
    v38 = v34;
  }

  (*(v38 + 56))(v35, v36, 1, v37);
  v40 = v56;
  v39 = v57;
  v41 = *(v57 + 16);
  v42 = v27;
  v43 = v27;
  v44 = v58;
  v41(v56, v43, v58);
  v45 = v61;
  sub_1CAB23A9C(v35, v61, &qword_1EC466440);
  v46 = v62;
  v41(v62, v40, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466460);
  sub_1CAB23A9C(v45, &v46[*(v47 + 48)], &qword_1EC466440);
  sub_1CAB21B68(v35, &qword_1EC466440);
  v48 = *(v39 + 8);
  v48(v42, v44);
  sub_1CAB21B68(v45, &qword_1EC466440);
  return (v48)(v40, v44);
}

uint64_t sub_1CAC9AB10(unint64_t *a1)
{
  v2 = sub_1CAD4CF74();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *a1;
  type metadata accessor for ModernPersonCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663A0);
  result = sub_1CAD4D994();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(v6 + 16))
  {

    v5 = sub_1CAD4CDA4();
    MEMORY[0x1EEE9AC00](v5);
    sub_1CAC9F184(&qword_1EC4649F8, MEMORY[0x1E697FCA8]);
    sub_1CAD4EB84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466468);
    sub_1CAC9F7F0();
    sub_1CAD4DD04();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC9AD10(uint64_t a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464520);
  type metadata accessor for GridAttendee(0);
  sub_1CAC97D40();
  sub_1CAC9F184(&qword_1EC466478, type metadata accessor for GridAttendee);
  return sub_1CAD4DB64();
}

unint64_t *sub_1CAC9AE28@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v6 = *(type metadata accessor for DisplayPerson(0) - 8);
    return sub_1CAC9CD14(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a3, type metadata accessor for DisplayPerson);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC9AF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC462E98 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6530];
  *(v4 + 16) = xmmword_1CAD58380;
  v6 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  sub_1CAD4DF64();

  sub_1CABA6054();
  v7 = sub_1CAD4D444();
  v9 = v8;
  v11 = v10;
  sub_1CAD4D304();
  sub_1CAD4D274();

  v12 = sub_1CAD4D424();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_1CABA6128(v7, v9, v11 & 1);

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_1CAC9B0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466380);
  sub_1CAB23B0C(&qword_1EC466388, &qword_1EC466380);
  sub_1CAD4DBC4();
  v7 = v2 + *(v4 + 40);
  v17[1] = *v7;
  v18 = *(v7 + 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466348);
  MEMORY[0x1CCAA6D30](v17, v8);
  v9 = v17[0];
  sub_1CAC9CD14(v2, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ModernPersonCell);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1CAC9CD7C(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for ModernPersonCell);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466390) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466398);
  result = sub_1CAD4E2E4();
  *(v12 + *(v13 + 40)) = v9;
  *v12 = &unk_1CAD64348;
  v12[1] = v11;
  return result;
}

uint64_t sub_1CAC9B304()
{
  v2 = *(type metadata accessor for ModernPersonCell(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CABCCCB0;

  return sub_1CAC99D50(v0 + v3);
}

double sub_1CAC9B3D0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CAD4CC84();
  v17 = 0;
  sub_1CAC9B50C(v2, &v12);
  v19 = v13;
  v20 = v14;
  v21[0] = v15[0];
  *(v21 + 9) = *(v15 + 9);
  v18 = v12;
  v22[2] = v14;
  v23[0] = v15[0];
  *(v23 + 9) = *(v15 + 9);
  v22[0] = v12;
  v22[1] = v13;
  sub_1CAB23A9C(&v18, v11, &qword_1EC466530);
  sub_1CAB21B68(v22, &qword_1EC466530);
  *&v16[23] = v19;
  *&v16[39] = v20;
  *&v16[55] = v21[0];
  *&v16[64] = *(v21 + 9);
  *&v16[7] = v18;
  v5 = v17;
  v6 = sub_1CAD4D304();
  KeyPath = swift_getKeyPath();
  v8 = *v16;
  *(a1 + 33) = *&v16[16];
  v9 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v9;
  result = *&v16[64];
  *(a1 + 81) = *&v16[64];
  *a1 = v4;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v5;
  *(a1 + 17) = v8;
  *(a1 + 104) = KeyPath;
  *(a1 + 112) = v6;
  return result;
}

uint64_t sub_1CAC9B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for EventAttendeeModelObject(0) + 44));
  switch(v4)
  {
    case 4:
      v5 = sub_1CAD4D8F4();
      v6 = sub_1CAD4D884();
      break;
    case 3:
      v5 = sub_1CAD4D8F4();
      v6 = sub_1CAD4D804();
      break;
    case 2:
      v5 = sub_1CAD4D8F4();
      v6 = sub_1CAD4D864();
      break;
    default:
      v5 = sub_1CAD4D8F4();
      v6 = sub_1CAD4D8B4();
      break;
  }

  v7 = v6;
  KeyPath = swift_getKeyPath();
  if (!*(a1 + 8))
  {
    if (!*(a1 + 24))
    {
      if (qword_1EC462ED8 != -1)
      {
        swift_once();
      }
    }
  }

  sub_1CABA6054();

  v9 = sub_1CAD4D444();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_getKeyPath();
  *a2 = v5;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13 & 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;

  sub_1CABA4F48(v9, v11, v13 & 1);

  sub_1CABA6128(v9, v11, v13 & 1);
}

uint64_t sub_1CAC9B794@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466538);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  v17 = *v1;
  v16 = *(v1 + 3);
  v7 = swift_allocObject();
  v8 = *(v1 + 1);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = v1[4];
  v13 = v1;
  sub_1CAC546A8(&v17, &v15);

  sub_1CAB23A9C(&v16, &v15, &qword_1EC463610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466540);
  sub_1CAC9FCD4();
  sub_1CAD4D9E4();
  v15 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D994();
  if (v14 == 1)
  {
    v9 = sub_1CAD4D8B4();
  }

  else
  {
    v9 = sub_1CAD4D8A4();
  }

  v10 = v9;
  (*(v4 + 32))(a1, v6, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466560);
  *(a1 + *(result + 36)) = v10;
  return result;
}

double sub_1CAC9B998@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D994();
  v3 = sub_1CAD4CC94();
  v29 = 1;
  sub_1CAC9BCA4(&v30);
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v21 = v30;
  v22 = v31;
  v28 = v35;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[0] = v30;
  v27[1] = v31;
  if (v11 == 1)
  {
    sub_1CAB23A9C(&v21, &v11, &qword_1EC466568);
    sub_1CAB21B68(v27, &qword_1EC466568);
    *&v10[39] = v23;
    *&v10[55] = v24;
    *&v10[71] = v25;
    *&v10[87] = v26;
    *&v10[7] = v21;
    *&v10[23] = v22;
    v16 = *&v10[32];
    v17 = *&v10[48];
    *v18 = *&v10[64];
    *&v18[15] = *&v10[79];
    v14 = *v10;
    v4 = v29;
    v29 = 0;
    v11 = v3;
    v12 = 0;
    v13 = v4;
    v15 = *&v10[16];
  }

  else
  {
    sub_1CAB23A9C(&v21, &v11, &qword_1EC466568);
    sub_1CAB21B68(v27, &qword_1EC466568);
    *(&v20[2] + 7) = v23;
    *(&v20[3] + 7) = v24;
    *(&v20[4] + 7) = v25;
    *(v20 + 7) = v21;
    *(&v20[5] + 7) = v26;
    *(&v20[1] + 7) = v22;
    v5 = v29;
    v29 = 1;
    v11 = v3;
    v12 = 0;
    v13 = v5;
    v16 = v20[2];
    v17 = v20[3];
    *v18 = v20[4];
    *&v18[15] = *(&v20[4] + 15);
    v14 = v20[0];
    v15 = v20[1];
  }

  v19 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466558);
  sub_1CAB23B0C(&qword_1EC466550, &qword_1EC466558);
  sub_1CAD4CE24();
  v6 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v6;
  *(a2 + 96) = v36;
  *(a2 + 112) = v37;
  v7 = v31;
  *a2 = v30;
  *(a2 + 16) = v7;
  result = *&v32;
  v9 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_1CAC9BCA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4D8F4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  if (qword_1EC462E90 != -1)
  {
    swift_once();
  }

  sub_1CABA6054();

  v3 = sub_1CAD4D444();
  v5 = v4;
  v7 = v6 & 1;
  *a1 = v2;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6 & 1;
  *(a1 + 80) = v8;

  sub_1CABA4F48(v3, v5, v7);

  sub_1CABA6128(v3, v5, v7);
}

__n128 sub_1CAC9BE58@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4CC94();
  sub_1CAC9BF84(a1 & 1, &v14);
  v13 = v14;
  v5 = v15;
  v6 = BYTE8(v15);
  v7 = v16;
  v22 = 0;
  v21 = BYTE8(v15);
  v8 = sub_1CAD4D254();
  KeyPath = swift_getKeyPath();
  sub_1CAD4DC94();
  sub_1CAD4C9A4();
  *a2 = v4;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v13;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = v8;
  v10 = v19;
  *(a2 + 144) = v18;
  *(a2 + 160) = v10;
  *(a2 + 176) = v20;
  v11 = v15;
  *(a2 + 80) = v14;
  *(a2 + 96) = v11;
  result = v17;
  *(a2 + 112) = v16;
  *(a2 + 128) = result;
  return result;
}

uint64_t sub_1CAC9BF84@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1 & 1;
  v4 = sub_1CAD4D8F4();
  if (v3)
  {
    if (qword_1EC462EF0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EC462EE8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_1CABA6054();
  v5 = sub_1CAD4D444();
  v7 = v6;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v9 = v8 & 1;
  *(a2 + 24) = v8 & 1;
  *(a2 + 32) = v10;

  sub_1CABA4F48(v5, v7, v9);

  sub_1CABA6128(v5, v7, v9);
}

uint64_t sub_1CAC9C0F4@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_1CAD4CD74();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466570);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = v1[24];
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466578);
  sub_1CAC9FE00();
  sub_1CAD4D9E4();
  sub_1CAD4CD64();
  sub_1CAB23B0C(&qword_1EC4665A8, &qword_1EC466570);
  sub_1CAC9F184(&qword_1EC463280, MEMORY[0x1E697C548]);
  v15 = v18;
  v14 = v19;
  sub_1CAD4D4E4();
  (*(v2 + 8))(v4, v15);
  (*(v6 + 8))(v8, v5);
  v16 = sub_1CAD4CFC4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4665B0);
  *(v14 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_1CAC9C3C4@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a1;
  v27 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4665B8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4665C0);
  v14 = sub_1CAD4C904();
  v26 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v24 - v19;
  a2(v18);
  sub_1CAC9C724(v24, &v30);
  sub_1CAC9FF70();
  sub_1CAD4C854();
  *&v11[*(v8 + 36)] = 0;
  sub_1CAD4DC94();
  sub_1CAC9FFC4();
  sub_1CAD4D4B4();
  sub_1CAB21B68(v11, &qword_1EC4665B8);
  (*(v25 + 8))(v13, a3);
  v21 = sub_1CAB23B0C(&qword_1EC4665E0, &qword_1EC4665C0);
  v28 = a4;
  v29 = v21;
  swift_getWitnessTable();
  sub_1CAC06984(v17);
  v22 = *(v26 + 8);
  v22(v17, v14);
  sub_1CAC06984(v20);
  return (v22)(v20, v14);
}

void sub_1CAC9C724(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695CE28]);
  v5 = a1;
  v6 = [v4 init];
  [v6 setIncludeIncludeManagedAppleIDs_];
  v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  *a2 = v5;
  a2[1] = v7;
}

double sub_1CAC9C7C8(uint64_t a1)
{
  v2 = type metadata accessor for DisplayPerson(0) - 8;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v15;
    v17 = *(v11 + 72);
    v18 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1CAC9CD14(v16, v13, type metadata accessor for DisplayPerson);
      v25 = *&v13[*(type metadata accessor for EventAttendeeModelObject(0) + 44)];
      if (v25 < 2)
      {
        sub_1CAC9CD14(v13, v39, type metadata accessor for DisplayPerson);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1CAD35268(0, v18[2] + 1, 1, v18);
        }

        v27 = v18[2];
        v29 = v18[3];
        v28 = v27 + 1;
        if (v27 >= v29 >> 1)
        {
          v23 = sub_1CAD35268(v29 > 1, v27 + 1, 1, v18);
          v24 = v39;
          v18 = v23;
        }

        else
        {
          v23 = v18;
          v24 = v39;
        }
      }

      else if (v25 == 3)
      {
        sub_1CAC9CD14(v13, v34, type metadata accessor for DisplayPerson);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = v37;
        }

        else
        {
          v23 = sub_1CAD35268(0, v37[2] + 1, 1, v37);
        }

        v27 = v23[2];
        v30 = v23[3];
        v28 = v27 + 1;
        if (v27 >= v30 >> 1)
        {
          v23 = sub_1CAD35268(v30 > 1, v27 + 1, 1, v23);
          v24 = v34;
          v37 = v23;
        }

        else
        {
          v37 = v23;
          v24 = v34;
        }
      }

      else if (v25 == 2)
      {
        sub_1CAC9CD14(v13, v33, type metadata accessor for DisplayPerson);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = v38;
        }

        else
        {
          v23 = sub_1CAD35268(0, v38[2] + 1, 1, v38);
        }

        v27 = v23[2];
        v26 = v23[3];
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v23 = sub_1CAD35268(v26 > 1, v27 + 1, 1, v23);
          v24 = v33;
          v38 = v23;
        }

        else
        {
          v38 = v23;
          v24 = v33;
        }
      }

      else
      {
        sub_1CAC9CD14(v13, v35, type metadata accessor for DisplayPerson);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = v36;
        }

        else
        {
          v23 = sub_1CAD35268(0, v36[2] + 1, 1, v36);
        }

        v27 = v23[2];
        v31 = v23[3];
        v28 = v27 + 1;
        if (v27 >= v31 >> 1)
        {
          v23 = sub_1CAD35268(v31 > 1, v27 + 1, 1, v23);
          v24 = v35;
          v36 = v23;
        }

        else
        {
          v36 = v23;
          v24 = v35;
        }
      }

      sub_1CAC9F3D8(v13, type metadata accessor for DisplayPerson);
      v23[2] = v28;
      sub_1CAC9CD7C(v24, v23 + v15 + v27 * v17, type metadata accessor for DisplayPerson);
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663B0);
  v19 = swift_allocObject();
  *&result = 4;
  *(v19 + 16) = xmmword_1CAD5B6C0;
  v22 = v36;
  v21 = v37;
  *(v19 + 32) = v38;
  *(v19 + 40) = v22;
  *(v19 + 48) = v21;
  *(v19 + 56) = v18;
  return result;
}

uint64_t sub_1CAC9CC6C(void **a1)
{
  v2 = *(type metadata accessor for DisplayPerson(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CACED514(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1CAC9CDE4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1CAC9CD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC9CD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC9CDE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAD4E9A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DisplayPerson(0);
        v6 = sub_1CAD4E244();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DisplayPerson(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CAC9D444(v8, v9, a1, v4);
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
    return sub_1CAC9CF10(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CAC9CF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = type metadata accessor for DisplayPerson(0);
  v8 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v42 - v15;
  v44 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v51 = -v18;
    v20 = a1 - a3;
    v52 = v17;
    v43 = v18;
    v21 = v17 + v18 * a3;
    v50 = v12;
    v49 = &v42 - v15;
LABEL_7:
    v48 = a3;
    v45 = v21;
    v46 = v20;
    v47 = v19;
    v22 = v19;
    while (1)
    {
      sub_1CAC9CD14(v21, v16, type metadata accessor for DisplayPerson);
      sub_1CAC9CD14(v22, v12, type metadata accessor for DisplayPerson);
      v23 = type metadata accessor for EventAttendeeModelObject(0);
      v58[3] = v23;
      v24 = sub_1CAC9F184(&qword_1EC463970, type metadata accessor for EventAttendeeModelObject);
      v58[4] = v24;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      sub_1CAC9CD14(v16, boxed_opaque_existential_1, type metadata accessor for EventAttendeeModelObject);
      v57[3] = v23;
      v57[4] = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(v57);
      sub_1CAC9CD14(v12, v26, type metadata accessor for EventAttendeeModelObject);
      v27 = *(v23 + 48);
      v28 = *(boxed_opaque_existential_1 + v27);
      v29 = *(v26 + v27);
      if (v28 == 2)
      {
        if (v29 != 2)
        {
          goto LABEL_5;
        }
      }

      else if (v29 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1(v58);
        __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_24:
        sub_1CAC9F3D8(v12, type metadata accessor for DisplayPerson);
        result = sub_1CAC9F3D8(v16, type metadata accessor for DisplayPerson);
        goto LABEL_25;
      }

      v30 = boxed_opaque_existential_1[1];
      v59 = *boxed_opaque_existential_1;
      v32 = *v26;
      v31 = v26[1];
      sub_1CAB299C0(v58, v56);
      sub_1CAB299C0(v57, v55);
      if (v30)
      {
        if (!v31)
        {
          __swift_destroy_boxed_opaque_existential_1(v56);
          __swift_destroy_boxed_opaque_existential_1(v55);
          __swift_destroy_boxed_opaque_existential_1(v58);
          __swift_destroy_boxed_opaque_existential_1(v57);
          v12 = v50;
          v16 = v49;
          goto LABEL_24;
        }

        v33 = __swift_project_boxed_opaque_existential_1(v56, v56[3]);
        v34 = __swift_project_boxed_opaque_existential_1(v55, v55[3]);
        v35 = sub_1CABC7A80(v59, v30, v32, v31, v33, v34);
        v12 = v50;
        v16 = v49;
      }

      else
      {
        v12 = v50;
        v16 = v49;
        if (v31 || boxed_opaque_existential_1[3] || (v36 = *(v23 + 32), v37 = *(boxed_opaque_existential_1 + v36), v38 = *(boxed_opaque_existential_1 + v36 + 8), v39 = (v26 + v36), v37 == *v39) && v38 == v39[1])
        {
          __swift_destroy_boxed_opaque_existential_1(v56);
          __swift_destroy_boxed_opaque_existential_1(v55);
LABEL_5:
          __swift_destroy_boxed_opaque_existential_1(v58);
          __swift_destroy_boxed_opaque_existential_1(v57);
          sub_1CAC9F3D8(v12, type metadata accessor for DisplayPerson);
          result = sub_1CAC9F3D8(v16, type metadata accessor for DisplayPerson);
LABEL_6:
          a3 = v48 + 1;
          v19 = v47 + v43;
          v20 = v46 - 1;
          v21 = v45 + v43;
          if (v48 + 1 == v44)
          {
            return result;
          }

          goto LABEL_7;
        }

        v35 = sub_1CAD4E9E4();
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
      __swift_destroy_boxed_opaque_existential_1(v55);
      __swift_destroy_boxed_opaque_existential_1(v58);
      __swift_destroy_boxed_opaque_existential_1(v57);
      sub_1CAC9F3D8(v12, type metadata accessor for DisplayPerson);
      result = sub_1CAC9F3D8(v16, type metadata accessor for DisplayPerson);
      if ((v35 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_25:
      if (!v52)
      {
        __break(1u);
        return result;
      }

      v40 = v53;
      sub_1CAC9CD7C(v21, v53, type metadata accessor for DisplayPerson);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1CAC9CD7C(v40, v22, type metadata accessor for DisplayPerson);
      v22 += v51;
      v21 += v51;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_1CAC9D444(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v178 = a1;
  v202 = type metadata accessor for EventAttendeeModelObject(0);
  v8 = MEMORY[0x1EEE9AC00](v202);
  v196 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v193 = &v172 - v10;
  v200 = type metadata accessor for DisplayPerson(0);
  v186 = *(v200 - 8);
  v11 = MEMORY[0x1EEE9AC00](v200);
  v181 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v199 = &v172 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v172 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v204 = &v172 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v188 = &v172 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v187 = &v172 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v176 = &v172 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v175 = &v172 - v27;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_146:
    a4 = *v178;
    if (!*v178)
    {
      goto LABEL_184;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_148:
      v215 = v30;
      v168 = *(v30 + 2);
      if (v168 >= 2)
      {
        while (*a3)
        {
          v169 = *&v30[16 * v168];
          v170 = *&v30[16 * v168 + 24];
          sub_1CAC9E6A0(*a3 + *(v186 + 72) * v169, *a3 + *(v186 + 72) * *&v30[16 * v168 + 16], *a3 + *(v186 + 72) * v170, a4);
          if (v5)
          {
          }

          if (v170 < v169)
          {
            goto LABEL_171;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1CACED054(v30);
          }

          if (v168 - 2 >= *(v30 + 2))
          {
            goto LABEL_172;
          }

          v171 = &v30[16 * v168];
          *v171 = v169;
          *(v171 + 1) = v170;
          v215 = v30;
          result = sub_1CACECFC8(v168 - 1);
          v30 = v215;
          v168 = *(v215 + 2);
          if (v168 <= 1)
          {
          }
        }

        goto LABEL_182;
      }
    }

LABEL_178:
    result = sub_1CACED054(v30);
    v30 = result;
    goto LABEL_148;
  }

  v173 = a4;
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v195 = v17;
  v174 = a3;
LABEL_4:
  v194 = v30;
  v179 = v29;
  if (v29 + 1 >= v28)
  {
    v40 = v29 + 1;
    goto LABEL_46;
  }

  v189 = v28;
  v177 = v5;
  v31 = a3;
  v32 = v29;
  v33 = *v31;
  v34 = *(v186 + 72);
  v35 = *v31 + v34 * (v29 + 1);
  v36 = v175;
  sub_1CAC9CD14(v35, v175, type metadata accessor for DisplayPerson);
  v37 = v176;
  sub_1CAC9CD14(v33 + v34 * v32, v176, type metadata accessor for DisplayPerson);
  LODWORD(v201) = _s13CalendarUIKit21compareDisplayPersons7person17person2SbAA0D6PersonV_AFtF_0(v36, v37);
  sub_1CAC9F3D8(v37, type metadata accessor for DisplayPerson);
  result = sub_1CAC9F3D8(v36, type metadata accessor for DisplayPerson);
  v38 = v32 + 2;
  v203 = v34;
  a4 = v33 + v34 * v38;
  while (1)
  {
    v40 = v189;
    if (v189 == v38)
    {
      break;
    }

    v41 = v187;
    sub_1CAC9CD14(a4, v187, type metadata accessor for DisplayPerson);
    v42 = v188;
    sub_1CAC9CD14(v35, v188, type metadata accessor for DisplayPerson);
    v43 = v202;
    v213 = v202;
    v44 = sub_1CAC9F184(&qword_1EC463970, type metadata accessor for EventAttendeeModelObject);
    v214 = v44;
    v45 = __swift_allocate_boxed_opaque_existential_1(&v212);
    sub_1CAC9CD14(v41, v45, type metadata accessor for EventAttendeeModelObject);
    v210 = v43;
    v211 = v44;
    v46 = __swift_allocate_boxed_opaque_existential_1(&v209);
    sub_1CAC9CD14(v42, v46, type metadata accessor for EventAttendeeModelObject);
    v47 = *(v43 + 48);
    v48 = *(v45 + v47);
    v49 = *(v46 + v47);
    if (v48 == 2)
    {
      v30 = v194;
      if (v49 == 2)
      {
        goto LABEL_15;
      }

      v39 = 0;
    }

    else
    {
      v30 = v194;
      if (v49 != 2)
      {
LABEL_15:
        v50 = *v45;
        v51 = v45[1];
        v53 = *v46;
        v52 = v46[1];
        sub_1CAB299C0(&v212, &v207);
        sub_1CAB299C0(&v209, &v205);
        if (v51)
        {
          if (v52)
          {
            v54 = __swift_project_boxed_opaque_existential_1(&v207, v208);
            v55 = __swift_project_boxed_opaque_existential_1(&v205, v206);
            v39 = sub_1CABC7A80(v50, v51, v53, v52, v54, v55);
          }

          else
          {
            v39 = 1;
          }

LABEL_21:
          v30 = v194;
LABEL_22:
          v17 = v195;
        }

        else
        {
          if (v52)
          {
            v39 = 0;
            goto LABEL_21;
          }

          v30 = v194;
          if (v45[3])
          {
            v39 = 0;
            goto LABEL_22;
          }

          v56 = *(v202 + 32);
          v57 = *(v45 + v56);
          v58 = *(v45 + v56 + 8);
          v59 = (v46 + v56);
          v17 = v195;
          if (v57 == *v59 && v58 == v59[1])
          {
            v39 = 0;
          }

          else
          {
            v39 = sub_1CAD4E9E4();
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v207);
        __swift_destroy_boxed_opaque_existential_1(&v205);
        goto LABEL_7;
      }

      v39 = 1;
    }

    v17 = v195;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(&v212);
    __swift_destroy_boxed_opaque_existential_1(&v209);
    sub_1CAC9F3D8(v188, type metadata accessor for DisplayPerson);
    result = sub_1CAC9F3D8(v187, type metadata accessor for DisplayPerson);
    ++v38;
    a4 += v203;
    v35 += v203;
    if ((v201 ^ v39))
    {
      v40 = v38 - 1;
      break;
    }
  }

  v5 = v177;
  a3 = v174;
  v29 = v179;
  if (v201)
  {
    if (v40 < v179)
    {
      goto LABEL_175;
    }

    if (v179 < v40)
    {
      v60 = v40;
      v61 = v203 * (v40 - 1);
      v62 = v40 * v203;
      v189 = v40;
      v63 = v179;
      v64 = v179 * v203;
      do
      {
        if (v63 != --v60)
        {
          v65 = *a3;
          if (!*a3)
          {
            goto LABEL_181;
          }

          a4 = v65 + v64;
          sub_1CAC9CD7C(v65 + v64, v181, type metadata accessor for DisplayPerson);
          if (v64 < v61 || a4 >= v65 + v62)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1CAC9CD7C(v181, v65 + v61, type metadata accessor for DisplayPerson);
          v30 = v194;
        }

        ++v63;
        v61 -= v203;
        v62 -= v203;
        v64 += v203;
      }

      while (v63 < v60);
      v17 = v195;
      v29 = v179;
      v40 = v189;
    }
  }

LABEL_46:
  v66 = a3[1];
  if (v40 >= v66)
  {
    goto LABEL_55;
  }

  if (__OFSUB__(v40, v29))
  {
    goto LABEL_174;
  }

  if (v40 - v29 >= v173)
  {
LABEL_55:
    a4 = v40;
    if (v40 < v29)
    {
      goto LABEL_173;
    }

    goto LABEL_56;
  }

  if (__OFADD__(v29, v173))
  {
    goto LABEL_176;
  }

  if (v29 + v173 >= v66)
  {
    a4 = a3[1];
  }

  else
  {
    a4 = v29 + v173;
  }

  if (a4 < v29)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v40 == a4)
  {
    goto LABEL_55;
  }

  v177 = v5;
  v113 = *a3;
  v114 = *(v186 + 72);
  v115 = *a3 + v114 * (v40 - 1);
  v197 = -v114;
  v116 = v29 - v40;
  v198 = v113;
  v180 = v114;
  v117 = v113 + v40 * v114;
  v182 = a4;
  while (2)
  {
    v189 = v40;
    v183 = v117;
    v184 = v116;
    v118 = v116;
    v185 = v115;
LABEL_110:
    v203 = v118;
    v119 = v204;
    sub_1CAC9CD14(v117, v204, type metadata accessor for DisplayPerson);
    sub_1CAC9CD14(v115, v17, type metadata accessor for DisplayPerson);
    v120 = v202;
    v213 = v202;
    v121 = sub_1CAC9F184(&qword_1EC463970, type metadata accessor for EventAttendeeModelObject);
    v214 = v121;
    v122 = __swift_allocate_boxed_opaque_existential_1(&v212);
    sub_1CAC9CD14(v119, v122, type metadata accessor for EventAttendeeModelObject);
    v210 = v120;
    v211 = v121;
    v123 = __swift_allocate_boxed_opaque_existential_1(&v209);
    sub_1CAC9CD14(v17, v123, type metadata accessor for EventAttendeeModelObject);
    v124 = *(v120 + 48);
    v125 = *(v122 + v124);
    v126 = *(v123 + v124);
    if (v125 != 2)
    {
      if (v126 != 2)
      {
        goto LABEL_114;
      }

      goto LABEL_130;
    }

    if (v126 != 2)
    {
      goto LABEL_107;
    }

LABEL_114:
    v127 = v122[1];
    v201 = *v122;
    v128 = *v123;
    v129 = v123[1];
    sub_1CAB299C0(&v212, &v207);
    sub_1CAB299C0(&v209, &v205);
    if (!v127)
    {
      if (!v129 && !v122[3])
      {
        v157 = *(v202 + 32);
        v158 = *(v122 + v157);
        v159 = *(v122 + v157 + 8);
        v160 = (v123 + v157);
        if (v158 != *v160 || v159 != v160[1])
        {
          v161 = sub_1CAD4E9E4();
          goto LABEL_138;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v207);
      __swift_destroy_boxed_opaque_existential_1(&v205);
LABEL_107:
      __swift_destroy_boxed_opaque_existential_1(&v212);
      __swift_destroy_boxed_opaque_existential_1(&v209);
      sub_1CAC9F3D8(v17, type metadata accessor for DisplayPerson);
      sub_1CAC9F3D8(v204, type metadata accessor for DisplayPerson);
LABEL_108:
      v40 = v189 + 1;
      v115 = v185 + v180;
      v116 = v184 - 1;
      v117 = v183 + v180;
      a4 = v182;
      if (v189 + 1 != v182)
      {
        continue;
      }

      v5 = v177;
      a3 = v174;
      if (v182 < v179)
      {
        goto LABEL_173;
      }

LABEL_56:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1CACED068(0, *(v30 + 2) + 1, 1, v30);
        v30 = result;
      }

      v68 = *(v30 + 2);
      v67 = *(v30 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        result = sub_1CACED068((v67 > 1), v68 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 2) = v69;
      v70 = &v30[16 * v68];
      *(v70 + 4) = v179;
      *(v70 + 5) = a4;
      v182 = a4;
      a4 = *v178;
      if (!*v178)
      {
        goto LABEL_183;
      }

      if (!v68)
      {
LABEL_3:
        v28 = a3[1];
        v29 = v182;
        if (v182 >= v28)
        {
          goto LABEL_146;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v71 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v30 + 4);
          v73 = *(v30 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_75:
          if (v75)
          {
            goto LABEL_162;
          }

          v88 = &v30[16 * v69];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_165;
          }

          v94 = &v30[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_168;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_169;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v69 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v98 = &v30[16 * v69];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_89:
        if (v93)
        {
          goto LABEL_164;
        }

        v101 = &v30[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_167;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_96:
        v109 = v71 - 1;
        if (v71 - 1 >= v69)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
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
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        if (!*a3)
        {
          goto LABEL_180;
        }

        v110 = *&v30[16 * v109 + 32];
        v111 = *&v30[16 * v71 + 40];
        sub_1CAC9E6A0(*a3 + *(v186 + 72) * v110, *a3 + *(v186 + 72) * *&v30[16 * v71 + 32], *a3 + *(v186 + 72) * v111, a4);
        if (v5)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1CACED054(v30);
        }

        if (v109 >= *(v30 + 2))
        {
          goto LABEL_159;
        }

        v112 = &v30[16 * v109];
        *(v112 + 4) = v110;
        *(v112 + 5) = v111;
        v215 = v30;
        result = sub_1CACECFC8(v71);
        v30 = v215;
        v69 = *(v215 + 2);
        v17 = v195;
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v30[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_160;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_161;
      }

      v83 = &v30[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_163;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_166;
      }

      if (v87 >= v79)
      {
        v105 = &v30[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_170;
        }

        if (v74 < v108)
        {
          v71 = v69 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  if (!v129)
  {
    __swift_destroy_boxed_opaque_existential_1(&v207);
    __swift_destroy_boxed_opaque_existential_1(&v205);
LABEL_130:
    __swift_destroy_boxed_opaque_existential_1(&v212);
    __swift_destroy_boxed_opaque_existential_1(&v209);
    sub_1CAC9F3D8(v17, type metadata accessor for DisplayPerson);
    result = sub_1CAC9F3D8(v204, type metadata accessor for DisplayPerson);
    goto LABEL_139;
  }

  v130 = __swift_project_boxed_opaque_existential_1(&v207, v208);
  v131 = __swift_project_boxed_opaque_existential_1(&v205, v206);
  v190 = v128;
  v132 = v193;
  sub_1CAC9CD14(v130, v193, type metadata accessor for EventAttendeeModelObject);
  sub_1CAC9CD14(v131, v196, type metadata accessor for EventAttendeeModelObject);
  v133 = [objc_opt_self() sharedDefaults];
  v134 = [v133 sortOrder];

  v135 = v202;
  v136 = (v132 + *(v202 + 40));
  v137 = *v136;
  v138 = v136[1];

  v139 = sub_1CABC739C(v201, v127, v137, v138);
  v140 = v139;
  if (v134 == 2)
  {
    v141 = &selRef_givenName;
  }

  else
  {
    v141 = &selRef_familyName;
  }

  if (v134 == 2)
  {
    v142 = &selRef_familyName;
  }

  else
  {
    v142 = &selRef_givenName;
  }

  v143 = [v139 *v141];
  v191 = sub_1CAD4DF94();
  v201 = v144;

  v145 = [v140 *v142];
  sub_1CAD4DF94();
  v192 = v146;

  v147 = (v196 + *(v135 + 40));
  v148 = *v147;
  v149 = v147[1];

  v150 = sub_1CABC739C(v190, v129, v148, v149);
  v151 = v150;
  if (v134 == 2)
  {
    v152 = [v150 givenName];
    v153 = sub_1CAD4DF94();
    v155 = v154;

    v156 = [v151 familyName];
  }

  else
  {
    v162 = [v150 familyName];
    v153 = sub_1CAD4DF94();
    v155 = v163;

    v156 = [v151 givenName];
  }

  v164 = v156;
  sub_1CAD4DF94();

  if (v191 == v153)
  {
    v30 = v194;
    if (v155 == v201)
    {

      v161 = 0;
      goto LABEL_137;
    }
  }

  else
  {
    v30 = v194;
  }

  v161 = sub_1CAD4E9E4();

LABEL_137:

  sub_1CAC9F3D8(v193, type metadata accessor for EventAttendeeModelObject);
  sub_1CAC9F3D8(v196, type metadata accessor for EventAttendeeModelObject);
  v17 = v195;
LABEL_138:
  __swift_destroy_boxed_opaque_existential_1(&v207);
  __swift_destroy_boxed_opaque_existential_1(&v205);
  __swift_destroy_boxed_opaque_existential_1(&v212);
  __swift_destroy_boxed_opaque_existential_1(&v209);
  sub_1CAC9F3D8(v17, type metadata accessor for DisplayPerson);
  result = sub_1CAC9F3D8(v204, type metadata accessor for DisplayPerson);
  if ((v161 & 1) == 0)
  {
    goto LABEL_108;
  }

LABEL_139:
  v165 = v203;
  if (v198)
  {
    v166 = v199;
    sub_1CAC9CD7C(v117, v199, type metadata accessor for DisplayPerson);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CAC9CD7C(v166, v115, type metadata accessor for DisplayPerson);
    v115 += v197;
    v117 += v197;
    v167 = __CFADD__(v165, 1);
    v118 = v165 + 1;
    if (v167)
    {
      goto LABEL_108;
    }

    goto LABEL_110;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
  return result;
}

uint64_t sub_1CAC9E6A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v81 = type metadata accessor for DisplayPerson(0);
  v8 = MEMORY[0x1EEE9AC00](v81);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v73 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v73 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v73 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_97;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_98;
  }

  v21 = (a2 - a1) / v19;
  v97 = a1;
  v96 = a4;
  if (v21 < v20 / v19)
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = a4 + v22;
    v95 = a4 + v22;
    if (v22 < 1 || a2 >= a3)
    {
      goto LABEL_95;
    }

    v79 = a3;
    v77 = v14;
    v76 = v19;
    v78 = v17;
    while (1)
    {
      v83 = a1;
      v84 = a2;
      sub_1CAC9CD14(a2, v17, type metadata accessor for DisplayPerson);
      sub_1CAC9CD14(a4, v14, type metadata accessor for DisplayPerson);
      v25 = type metadata accessor for EventAttendeeModelObject(0);
      v93 = v25;
      v26 = sub_1CAC9F184(&qword_1EC463970, type metadata accessor for EventAttendeeModelObject);
      v94 = v26;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
      sub_1CAC9CD14(v17, boxed_opaque_existential_1, type metadata accessor for EventAttendeeModelObject);
      v90 = v25;
      v91 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(v89);
      sub_1CAC9CD14(v14, v28, type metadata accessor for EventAttendeeModelObject);
      v29 = *(v25 + 48);
      v30 = *(boxed_opaque_existential_1 + v29);
      v31 = *(v28 + v29);
      if (v30 == 2)
      {
        if (v31 != 2)
        {
          __swift_destroy_boxed_opaque_existential_1(v92);
          __swift_destroy_boxed_opaque_existential_1(v89);
          v32 = v79;
          v33 = v83;
LABEL_36:
          sub_1CAC9F3D8(v14, type metadata accessor for DisplayPerson);
          v17 = v78;
          sub_1CAC9F3D8(v78, type metadata accessor for DisplayPerson);
          a2 = v84;
          goto LABEL_37;
        }
      }

      else if (v31 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1(v92);
        __swift_destroy_boxed_opaque_existential_1(v89);
        a2 = v84;
        v32 = v79;
        v17 = v78;
        v33 = v83;
LABEL_44:
        sub_1CAC9F3D8(v14, type metadata accessor for DisplayPerson);
        sub_1CAC9F3D8(v17, type metadata accessor for DisplayPerson);
LABEL_45:
        if (v33 < a2 || v33 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v33 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
        goto LABEL_51;
      }

      v82 = a4;
      v34 = *boxed_opaque_existential_1;
      v35 = boxed_opaque_existential_1[1];
      v37 = *v28;
      v36 = v28[1];
      sub_1CAB299C0(v92, v87);
      sub_1CAB299C0(v89, v85);
      if (v35)
      {
        a2 = v84;
        v17 = v78;
        v33 = v83;
        if (!v36)
        {
          __swift_destroy_boxed_opaque_existential_1(v87);
          __swift_destroy_boxed_opaque_existential_1(v85);
          __swift_destroy_boxed_opaque_existential_1(v92);
          __swift_destroy_boxed_opaque_existential_1(v89);
          a4 = v82;
          v32 = v79;
          v19 = v76;
          v14 = v77;
          goto LABEL_44;
        }

        v38 = __swift_project_boxed_opaque_existential_1(v87, v88);
        v39 = __swift_project_boxed_opaque_existential_1(v85, v86);
        v40 = sub_1CABC7A80(v34, v35, v37, v36, v38, v39);
        a4 = v82;
        v19 = v76;
        v14 = v77;
      }

      else
      {
        v19 = v76;
        v33 = v83;
        if (v36 || boxed_opaque_existential_1[3] || (v41 = *(v25 + 32), v42 = *(boxed_opaque_existential_1 + v41), v43 = *(boxed_opaque_existential_1 + v41 + 8), v44 = (v28 + v41), v42 == *v44) && v43 == v44[1])
        {
          __swift_destroy_boxed_opaque_existential_1(v87);
          __swift_destroy_boxed_opaque_existential_1(v85);
          __swift_destroy_boxed_opaque_existential_1(v92);
          __swift_destroy_boxed_opaque_existential_1(v89);
          a4 = v82;
          v32 = v79;
          v14 = v77;
          goto LABEL_36;
        }

        v40 = sub_1CAD4E9E4();
        a2 = v84;
        a4 = v82;
        v14 = v77;
        v17 = v78;
      }

      __swift_destroy_boxed_opaque_existential_1(v87);
      __swift_destroy_boxed_opaque_existential_1(v85);
      __swift_destroy_boxed_opaque_existential_1(v92);
      __swift_destroy_boxed_opaque_existential_1(v89);
      sub_1CAC9F3D8(v14, type metadata accessor for DisplayPerson);
      sub_1CAC9F3D8(v17, type metadata accessor for DisplayPerson);
      v32 = v79;
      if (v40)
      {
        goto LABEL_45;
      }

LABEL_37:
      if (v33 < a4 || v33 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v33 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v96 = a4 + v19;
      a4 += v19;
LABEL_51:
      a1 = v33 + v19;
      v97 = a1;
      if (a4 >= v80 || a2 >= v32)
      {
        goto LABEL_95;
      }
    }
  }

  v23 = v20 / v19 * v19;
  if (a4 < a2 || a2 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v45 = a4 + v23;
  if (v23 < 1)
  {
    goto LABEL_94;
  }

  v46 = -v19;
  v47 = a4 + v23;
  v82 = a4;
  v76 = -v19;
  while (2)
  {
    while (2)
    {
      v74 = v45;
      v48 = a2;
      a2 += v46;
      v84 = a2;
      v77 = v48;
      while (1)
      {
        if (v48 <= a1)
        {
          v97 = v48;
          v95 = v74;
          goto LABEL_95;
        }

        v49 = a3;
        v75 = v45;
        v79 = v47;
        v50 = v47 + v46;
        v78 = (v47 + v46);
        v51 = v80;
        sub_1CAC9CD14(v50, v80, type metadata accessor for DisplayPerson);
        v52 = v83;
        sub_1CAC9CD14(a2, v83, type metadata accessor for DisplayPerson);
        v53 = type metadata accessor for EventAttendeeModelObject(0);
        v93 = v53;
        v54 = sub_1CAC9F184(&qword_1EC463970, type metadata accessor for EventAttendeeModelObject);
        v94 = v54;
        v55 = __swift_allocate_boxed_opaque_existential_1(v92);
        sub_1CAC9CD14(v51, v55, type metadata accessor for EventAttendeeModelObject);
        v90 = v53;
        v91 = v54;
        v56 = __swift_allocate_boxed_opaque_existential_1(v89);
        sub_1CAC9CD14(v52, v56, type metadata accessor for EventAttendeeModelObject);
        v57 = *(v53 + 48);
        v58 = *(v55 + v57);
        v59 = *(v56 + v57);
        if (v58 == 2)
        {
          if (v59 != 2)
          {
            v60 = 0;
LABEL_67:
            a2 = v84;
            v46 = v76;
            v47 = v79;
            goto LABEL_78;
          }
        }

        else if (v59 == 2)
        {
          v60 = 1;
          goto LABEL_67;
        }

        v62 = *v55;
        v61 = v55[1];
        v64 = *v56;
        v63 = v56[1];
        sub_1CAB299C0(v92, v87);
        sub_1CAB299C0(v89, v85);
        if (v61)
        {
          if (v63)
          {
            v65 = __swift_project_boxed_opaque_existential_1(v87, v88);
            v66 = __swift_project_boxed_opaque_existential_1(v85, v86);
            v60 = sub_1CABC7A80(v62, v61, v64, v63, v65, v66);
          }

          else
          {
            v60 = 1;
          }
        }

        else if (v63 || v55[3] || (v67 = *(v53 + 32), v68 = *(v55 + v67), v69 = *(v55 + v67 + 8), v70 = (v56 + v67), v68 == *v70) && v69 == v70[1])
        {
          v60 = 0;
        }

        else
        {
          v60 = sub_1CAD4E9E4();
        }

        a2 = v84;
        v46 = v76;
        v47 = v79;
        __swift_destroy_boxed_opaque_existential_1(v87);
        __swift_destroy_boxed_opaque_existential_1(v85);
LABEL_78:
        a3 = &v49[v46];
        __swift_destroy_boxed_opaque_existential_1(v92);
        __swift_destroy_boxed_opaque_existential_1(v89);
        sub_1CAC9F3D8(v83, type metadata accessor for DisplayPerson);
        sub_1CAC9F3D8(v80, type metadata accessor for DisplayPerson);
        if (v60)
        {
          break;
        }

        v71 = v78;
        v45 = v78;
        if (v49 < v47 || a3 >= v47)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v49 != v47)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v47 = v45;
        v48 = v77;
        if (v71 <= v82)
        {
          a2 = v77;
          goto LABEL_94;
        }
      }

      if (v49 >= v77 && a3 < v77)
      {
        v72 = v82;
        v45 = v75;
        if (v49 != v77)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v47 <= v72)
        {
          goto LABEL_94;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v45 = v75;
    if (v47 > v82)
    {
      continue;
    }

    break;
  }

LABEL_94:
  v97 = a2;
  v95 = v45;
LABEL_95:
  sub_1CACE85CC(&v97, &v96, &v95);
  return 1;
}

uint64_t sub_1CAC9F184(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1CAC9F1CC(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_1CAC9F20C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1CAC9F25C(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CAC9F29C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1CAC9F2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC9F35C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CAC99014(v4, a1);
}

uint64_t sub_1CAC9F3D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_7()
{
  v1 = v0;
  v2 = type metadata accessor for ModernPersonCell(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  swift_weakDestroy();

  v6 = v0 + v4 + *(v2 + 28);

  v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466300) + 32);
  v8 = type metadata accessor for DisplayOrganizerPerson(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v13 = v5;

    v9 = *(type metadata accessor for EventOrganizerModelObject(0) + 28);
    v10 = sub_1CAD4BFF4();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v5 = v13;
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1CAC9F6DC(unint64_t *a1)
{
  type metadata accessor for ModernPersonCell(0);

  return sub_1CAC9AB10(a1);
}

unint64_t sub_1CAC9F7F0()
{
  result = qword_1EC466470;
  if (!qword_1EC466470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466468);
    sub_1CAC9F184(&qword_1EC466478, type metadata accessor for GridAttendee);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466470);
  }

  return result;
}

uint64_t sub_1CAC9F8DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAC9F924(uint64_t result, int a2, int a3)
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

uint64_t sub_1CAC9F9A0()
{
  result = type metadata accessor for DisplayPerson(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CAC9FA0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CAC9FA60()
{
  result = qword_1EC466510;
  if (!qword_1EC466510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466390);
    sub_1CAC9FB18();
    sub_1CAB23B0C(&qword_1EC466528, &qword_1EC466398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466510);
  }

  return result;
}

unint64_t sub_1CAC9FB18()
{
  result = qword_1EC466518;
  if (!qword_1EC466518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466520);
    sub_1CAB23B0C(&qword_1EC466388, &qword_1EC466380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466518);
  }

  return result;
}

unint64_t sub_1CAC9FCD4()
{
  result = qword_1EC466548;
  if (!qword_1EC466548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466540);
    sub_1CAB23B0C(&qword_1EC466550, &qword_1EC466558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466548);
  }

  return result;
}

unint64_t sub_1CAC9FE00()
{
  result = qword_1EC466580;
  if (!qword_1EC466580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466578);
    sub_1CAC9FE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466580);
  }

  return result;
}

unint64_t sub_1CAC9FE8C()
{
  result = qword_1EC466588;
  if (!qword_1EC466588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466590);
    sub_1CAB23B0C(&qword_1EC466598, &qword_1EC4665A0);
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466588);
  }

  return result;
}

unint64_t sub_1CAC9FF70()
{
  result = qword_1EC466E00;
  if (!qword_1EC466E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466E00);
  }

  return result;
}

unint64_t sub_1CAC9FFC4()
{
  result = qword_1EC4665C8;
  if (!qword_1EC4665C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4665B8);
    sub_1CAB23B0C(&qword_1EC4665D0, &qword_1EC4665D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4665C8);
  }

  return result;
}

unint64_t sub_1CACA008C()
{
  result = qword_1EC4665E8;
  if (!qword_1EC4665E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4665F0);
    sub_1CAB23B0C(&qword_1EC4665F8, &qword_1EC466600);
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4665E8);
  }

  return result;
}

unint64_t sub_1CACA0170()
{
  result = qword_1EC466608;
  if (!qword_1EC466608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466560);
    sub_1CAB23B0C(&qword_1EC466610, &qword_1EC466538);
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466608);
  }

  return result;
}

unint64_t sub_1CACA0254()
{
  result = qword_1EC466618;
  if (!qword_1EC466618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4665B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466570);
    sub_1CAD4CD74();
    sub_1CAB23B0C(&qword_1EC4665A8, &qword_1EC466570);
    sub_1CAC9F184(&qword_1EC463280, MEMORY[0x1E697C548]);
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466618);
  }

  return result;
}

unint64_t sub_1CACA03D0()
{
  result = qword_1EC466620;
  if (!qword_1EC466620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466620);
  }

  return result;
}

uint64_t sub_1CACA0428(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 0x696669746E656469;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEA00000000007265;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x68746150656C6966;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001CAD724D0;
  }

  else
  {
    v3 = 0x6E6964616F4C7369;
    v4 = 0xE900000000000067;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 0x696669746E656469;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA00000000007265;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x68746150656C6966)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001CAD724D0;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE900000000000067;
    if (v3 != 0x6E6964616F4C7369)
    {
LABEL_31:
      v7 = sub_1CAD4E9E4();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1CACA05C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C70727570;
  v6 = 0xE500000000000000;
  if (a1 != 5)
  {
    v5 = 0x6E776F7262;
    v4 = 0xE500000000000000;
  }

  v7 = 0x6E65657267;
  if (a1 != 3)
  {
    v7 = 1702194274;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x65676E61726FLL;
  if (a1 != 1)
  {
    v8 = 0x776F6C6C6579;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 6579570;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x65676E61726FLL)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x776F6C6C6579)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 6579570)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xE600000000000000;
        if (v9 != 0x656C70727570)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v11 = 0xE500000000000000;
      v12 = 2003792482;
    }

    else
    {
      if (a2 != 3)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1702194274)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v11 = 0xE500000000000000;
      v12 = 1701147239;
    }

    if (v9 != (v12 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000))
    {
LABEL_39:
      v13 = sub_1CAD4E9E4();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

void sub_1CACA07A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1CAD4C524();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466660);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v57 - v9;
  v10 = sub_1CAD4BFF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - v14;
  v59 = sub_1CAD4D8F4();
  a2[4] = v59;
  v16 = type metadata accessor for EventAttachmentModelObject();
  v17 = v16[7];
  v58 = v11;
  v18 = *(v11 + 56);
  v18(a2 + v17, 1, 1, v10);
  v19 = (a2 + v16[8]);
  *v19 = 0;
  v19[1] = 0;
  v20 = a1;
  v21 = [a1 fileName];
  v66 = v10;
  if (v21)
  {
    v22 = v21;
    v23 = sub_1CAD4DF94();
    v25 = v24;

    v60 = v23;
    a2[2] = v23;
    a2[3] = v25;
  }

  else
  {
    if (qword_1EC462E88 != -1)
    {
      swift_once();
    }

    v26 = unk_1EC47DF50;
    v60 = qword_1EC47DF48;
    a2[2] = qword_1EC47DF48;
    a2[3] = v26;
  }

  v27 = [v20 localURL];
  if (v27)
  {
    v28 = v27;
    sub_1CAD4BFC4();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v66;
  v18(v15, v29, 1, v66);
  sub_1CABD4E34(v15, a2 + v17);
  v31 = [v20 UUID];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1CAD4DF94();
    v35 = v34;
  }

  else
  {
    v36 = [v20 URLForPendingFileCopy];
    if (!v36)
    {
      __break(1u);
      return;
    }

    v37 = v36;
    v38 = v57;
    sub_1CAD4BFC4();

    v33 = sub_1CAD4BFA4();
    v35 = v39;
    (*(v58 + 8))(v38, v30);
  }

  v40 = v16[10];
  v41 = v16[11];
  *a2 = v33;
  a2[1] = v35;
  *(a2 + v16[9]) = 0;
  *(a2 + v40) = [v20 autoArchived];
  *(a2 + v41) = [v20 URLWrapperForPendingFileCopy];
  v42 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v43 = sub_1CAD4DF54();
  v44 = [v42 initWithString_];

  v45 = [v44 pathExtension];
  sub_1CAD4DF94();

  sub_1CAD4C504();
  v46 = v62;
  sub_1CAD4C4F4();
  v47 = v63;
  sub_1CAB23A9C(v46, v63, &qword_1EC466660);
  v49 = v64;
  v48 = v65;
  if ((*(v64 + 48))(v47, 1, v65) == 1)
  {
    sub_1CAB21B68(v46, &qword_1EC466660);
    sub_1CAB21B68(v47, &qword_1EC466660);
    v50 = 0;
  }

  else
  {
    sub_1CAD4C4E4();
    v50 = v51;
    sub_1CAB21B68(v46, &qword_1EC466660);
    (*(v49 + 8))(v47, v48);
  }

  v52 = sub_1CAD4DF54();

  if (v50)
  {
    v53 = sub_1CAD4DF54();
  }

  else
  {
    v53 = 0;
  }

  v54 = [objc_opt_self() documentProxyForName:v52 type:v53 MIMEType:0];

  v55 = objc_opt_self();
  if ([v55 _iconForResourceProxy_format_] || objc_msgSend(v55, sel__iconForResourceProxy_format_, v54, 6) || objc_msgSend(v55, sel__iconForResourceProxy_format_, v54, 4) || objc_msgSend(v55, sel__iconForResourceProxy_format_, v54, 7))
  {
    v56 = sub_1CAD4D8E4();

    a2[4] = v56;
  }

  else
  {
  }
}

uint64_t EventAttachmentModelObject.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1CACA0E90()
{
  sub_1CAD4EA84();
  sub_1CAD4E054();

  return sub_1CAD4EAC4();
}

uint64_t sub_1CACA0F78()
{
  sub_1CAD4E054();
}

uint64_t sub_1CACA104C()
{
  sub_1CAD4EA84();
  sub_1CAD4E054();

  return sub_1CAD4EAC4();
}

uint64_t sub_1CACA1130@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CACA2A30();
  *a1 = result;
  return result;
}

void sub_1CACA1160(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xE800000000000000;
  v6 = 0x68746150656C6966;
  v7 = 0x80000001CAD724D0;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x6E6964616F4C7369;
    v7 = 0xE900000000000067;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1CACA1204()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x68746150656C6966;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E6964616F4C7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CACA12A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CACA2A30();
  *a1 = result;
  return result;
}

uint64_t sub_1CACA12D8(uint64_t a1)
{
  v2 = sub_1CACA2570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACA1314(uint64_t a1)
{
  v2 = sub_1CACA2570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventAttachmentModelObject.hash(into:)()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1CAD4E054();
  sub_1CAD4E054();
  v8 = type metadata accessor for EventAttachmentModelObject();
  sub_1CAB23A9C(v0 + *(v8 + 28), v7, &qword_1EC465450);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_1CAD4EAA4();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_1CAD4EAA4();
  sub_1CACA2A7C(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
  sub_1CAD4DEB4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t type metadata accessor for EventAttachmentModelObject()
{
  result = qword_1EC462278;
  if (!qword_1EC462278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventAttachmentModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466628);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACA2570();
  sub_1CAD4EB04();
  v8[15] = 0;
  sub_1CAD4E934();
  if (!v1)
  {
    v8[14] = 1;
    sub_1CAD4E934();
    type metadata accessor for EventAttachmentModelObject();
    v8[13] = 2;
    sub_1CAD4BFF4();
    sub_1CACA2A7C(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    v8[12] = 3;
    sub_1CAD4E904();
    v8[11] = 4;
    sub_1CAD4E944();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t EventAttachmentModelObject.hashValue.getter()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1CAD4EA84();
  sub_1CAD4E054();
  sub_1CAD4E054();
  v8 = type metadata accessor for EventAttachmentModelObject();
  sub_1CAB23A9C(v0 + *(v8 + 28), v7, &qword_1EC465450);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1CAD4EAA4();
    sub_1CACA2A7C(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1CAD4EAC4();
}

uint64_t EventAttachmentModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466638);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for EventAttachmentModelObject();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10[4] = sub_1CAD4D8F4();
  v11 = v8[7];
  v12 = sub_1CAD4BFF4();
  v13 = *(*(v12 - 8) + 56);
  v30 = v11;
  v13(v10 + v11, 1, 1, v12);
  *(v10 + v8[10]) = 0;
  *(v10 + v8[11]) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACA2570();
  v28 = v7;
  v14 = v29;
  sub_1CAD4EAE4();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1CAB21B68(v10 + v30, &qword_1EC465450);
  }

  else
  {
    v15 = v25;
    v35 = 0;
    *v10 = sub_1CAD4E884();
    v10[1] = v16;
    v29 = v16;
    v34 = 1;
    v10[2] = sub_1CAD4E884();
    v10[3] = v17;
    v33 = 2;
    sub_1CACA2A7C(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
    v23 = 0;
    sub_1CAD4E874();
    sub_1CABD4E34(v15, v10 + v30);
    v32 = 3;
    v18 = sub_1CAD4E824();
    v19 = (v10 + v8[8]);
    *v19 = v18;
    v19[1] = v20;
    v31 = 4;
    v21 = sub_1CAD4E894();
    (*(v26 + 8))(v28, v27);
    *(v10 + v8[9]) = v21 & 1;
    sub_1CAC3F328(v10, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CAC3F3F0(v10);
  }
}

uint64_t sub_1CACA1EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1CAD4EA84();
  sub_1CAD4E054();
  sub_1CAD4E054();
  sub_1CAB23A9C(v2 + *(a2 + 28), v10, &qword_1EC465450);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1CAD4EAA4();
    sub_1CACA2A7C(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1CAD4EAC4();
}

uint64_t _s13CalendarUIKit26EventAttachmentModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1CAD4E9E4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1CAD4E9E4() & 1) == 0 || (sub_1CAD4D944() & 1) == 0)
  {
    return 0;
  }

  v34 = v7;
  v35 = type metadata accessor for EventAttachmentModelObject();
  v14 = *(v35 + 28);
  v15 = *(v11 + 48);
  sub_1CAB23A9C(a1 + v14, v13, &qword_1EC465450);
  sub_1CAB23A9C(a2 + v14, &v13[v15], &qword_1EC465450);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1CAB23A9C(v13, v10, &qword_1EC465450);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = &v13[v15];
      v19 = v34;
      (*(v5 + 32))(v34, v18, v4);
      sub_1CACA2A7C(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
      v20 = sub_1CAD4DED4();
      v21 = *(v5 + 8);
      v21(v19, v4);
      v21(v10, v4);
      sub_1CAB21B68(v13, &qword_1EC465450);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_1CAB21B68(v13, &qword_1EC463DA0);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1CAB21B68(v13, &qword_1EC465450);
LABEL_17:
  v22 = v35;
  v23 = *(v35 + 32);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (*(a1 + v22[9]) == *(a2 + v22[9]) && *(a1 + v22[10]) == *(a2 + v22[10]))
  {
    v28 = v22[11];
    v29 = *(a1 + v28);
    v30 = *(a2 + v28);
    if (v29)
    {
      if (v30)
      {
        sub_1CACA278C();
        v31 = v30;
        v32 = v29;
        v33 = sub_1CAD4E494();

        if (v33)
        {
          return 1;
        }
      }
    }

    else if (!v30)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1CACA2570()
{
  result = qword_1EC466630;
  if (!qword_1EC466630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466630);
  }

  return result;
}

void sub_1CACA2634()
{
  sub_1CACA2738(319, &qword_1EDA5F898, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1CABDB2B0();
    if (v1 <= 0x3F)
    {
      sub_1CACA2738(319, &qword_1EC461E78, sub_1CACA278C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CACA2738(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAD4E4D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CACA278C()
{
  result = qword_1EC461E80;
  if (!qword_1EC461E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC461E80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityOption(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AvailabilityOption(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CACA292C()
{
  result = qword_1EC466648;
  if (!qword_1EC466648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466648);
  }

  return result;
}

unint64_t sub_1CACA2984()
{
  result = qword_1EC466650;
  if (!qword_1EC466650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466650);
  }

  return result;
}

unint64_t sub_1CACA29DC()
{
  result = qword_1EC466658;
  if (!qword_1EC466658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466658);
  }

  return result;
}

uint64_t sub_1CACA2A30()
{
  v0 = sub_1CAD4E7F4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CACA2A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CACA2AC4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CAD4E604())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1CACB9D7C(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_1CAD4E604();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x1CCAA7940](0, a1);
LABEL_10:
  v6 = v5;
  sub_1CAD4E374();

  return 0;
}

uint64_t sub_1CACA2C4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CACB9F1C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1CABD3CDC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1CACB9F1C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id EKRecurrenceRuleModelWrapper.recurrenceEnd.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 recurrenceEnd];
  *a1 = result;
  return result;
}

uint64_t EKRecurrenceRuleModelWrapper.firstDayOfTheWeek.getter()
{
  v1 = [*v0 firstDayOfTheWeekRaw];
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        return 1;
      case 1:
        return 2;
      case 2:
        return 3;
    }

    return 0;
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      return 6;
    }

    if (v1 == 6)
    {
      return 7;
    }

    return 0;
  }

  if (v1 == 3)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

char *EKRecurrenceRuleModelWrapper.daysOfTheWeek.getter()
{
  v1 = [*v0 daysOfTheWeek];
  if (!v1)
  {
    return v1;
  }

  sub_1CABD4070(0, &qword_1EC466668);
  v2 = sub_1CAD4E214();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v3 = sub_1CAD4E604();
  if (!v3)
  {
LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1CACB9D9C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v1 = v10;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA7940](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v8 = v10[2];
      v7 = v10[3];
      if (v8 >= v7 >> 1)
      {
        v9 = v6;
        sub_1CACB9D9C((v7 > 1), v8 + 1, 1);
        v6 = v9;
      }

      ++v5;
      v10[2] = v8 + 1;
      v10[v8 + 4] = v6;
    }

    while (v3 != v5);

    return v1;
  }

  __break(1u);
  return result;
}

id sub_1CACA3060(SEL *a1)
{
  result = [*v1 *a1];
  if (result)
  {
    v3 = result;
    sub_1CABD4070(0, &qword_1EC463960);
    v4 = sub_1CAD4E214();

    v5 = sub_1CACA2AC4(v4);

    return v5;
  }

  return result;
}

id sub_1CACA3104@<X0>(void *a1@<X8>)
{
  result = [*v1 recurrenceEnd];
  *a1 = result;
  return result;
}

id sub_1CACA3198(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [*v3 *a3];
  if (result)
  {
    v5 = result;
    sub_1CABD4070(0, &qword_1EC463960);
    v6 = sub_1CAD4E214();

    v7 = sub_1CACA2AC4(v6);

    return v7;
  }

  return result;
}

uint64_t EKRecurrenceEndModelWrapper.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 endDate];
  if (v3)
  {
    v4 = v3;
    sub_1CAD4C0B4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1CAD4C0F4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1CACA33A8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 endDate];
  if (v3)
  {
    v4 = v3;
    sub_1CAD4C0B4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1CAD4C0F4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t type metadata accessor for EditShareeView()
{
  result = qword_1EC466678;
  if (!qword_1EC466678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CACA3538()
{
  sub_1CACA364C(319, &qword_1EC463A50, MEMORY[0x1E697BF88], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1CACA364C(319, &qword_1EC466688, type metadata accessor for EKShareeWithData, MEMORY[0x1E6981A98]);
    if (v1 <= 0x3F)
    {
      sub_1CABA5BAC();
      if (v2 <= 0x3F)
      {
        sub_1CAC4E548();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CACA364C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CACA36CC(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EditShareeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  sub_1CAD4DBF4();
  v4 = *(v20 + 24);
  v5 = *(v20 + 32);
  sub_1CABF2B60(v4, v5);

  sub_1CAD4DBF4();
  v6 = *(v20 + 16);

  v7 = [v6 name];

  if (v7)
  {
    v8 = sub_1CAD4DF94();
    v10 = v9;

    sub_1CAD4DBF4();
    v11 = *(v20 + 16);

    v12 = [v11 emailAddress];

    if (v12)
    {
      v13 = sub_1CAD4DF94();
      v15 = v14;

      if (a1)
      {
LABEL_4:
        v16 = sub_1CAD4D8F4();
        v17 = sub_1CAD4D304();
        KeyPath = swift_getKeyPath();
        v19 = sub_1CAD4D8B4();
LABEL_7:
        *a2 = v8;
        a2[1] = v10;
        a2[2] = v13;
        a2[3] = v15;
        a2[4] = v4;
        a2[5] = v5;
        a2[6] = v16;
        a2[7] = KeyPath;
        a2[8] = v17;
        a2[9] = v19;
        a2[10] = 0x4043000000000000;
        return;
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
      if (a1)
      {
        goto LABEL_4;
      }
    }

    v16 = 0;
    KeyPath = 0;
    v17 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CACA38B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466770);
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for EditShareeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  sub_1CAD4DBF4();
  v1 = *(v7 + 16);

  v2 = objc_allocWithZone(MEMORY[0x1E695CE28]);
  v3 = v1;
  v4 = [v2 init];
  [v4 setIncludeIncludeManagedAppleIDs_];
  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  sub_1CACA6880();
  sub_1CAD4D614();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466778);
  sub_1CAB23B0C(&qword_1EC466780, &qword_1EC466778);
  swift_getOpaqueTypeConformance2();
  return sub_1CAD4C854();
}

uint64_t sub_1CACA3AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466698);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-v3];
  *v4 = sub_1CAD4CD94();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4666A8);
  sub_1CACA3C9C(a1, &v4[*(v5 + 44)]);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A70);
  sub_1CAB23B0C(&qword_1EC4666A0, &qword_1EC466698);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
  v7 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  v11 = v6;
  v12 = v7;
  swift_getOpaqueTypeConformance2();
  sub_1CAD4D734();
  return sub_1CAB21B68(v4, &qword_1EC466698);
}

uint64_t sub_1CACA3C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4C944();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4666B0);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41[-v8];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4666B8);
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v41[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4666C0);
  v13 = *(v12 - 8);
  v51 = v12;
  v52 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v41[-v14];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4666C8);
  v47 = *(v49 - 8);
  v15 = MEMORY[0x1EEE9AC00](v49);
  v45 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v41[-v17];
  v56 = sub_1CAD4CC94();
  v59 = 1;
  sub_1CACA4470(&v72);
  v66 = *&v73[80];
  v67[0] = *&v73[96];
  *(v67 + 10) = *&v73[106];
  v62 = *&v73[16];
  v63 = *&v73[32];
  v64 = *&v73[48];
  v65 = *&v73[64];
  v60 = v72;
  v61 = *v73;
  v68[6] = *&v73[80];
  v69[0] = *&v73[96];
  *(v69 + 10) = *&v73[106];
  v68[2] = *&v73[16];
  v68[3] = *&v73[32];
  v68[4] = *&v73[48];
  v68[5] = *&v73[64];
  v68[0] = v72;
  v68[1] = *v73;
  sub_1CAB23A9C(&v60, &v70, &qword_1EC4666D0);
  sub_1CAB21B68(v68, &qword_1EC4666D0);
  *&v58[87] = v65;
  *&v58[103] = v66;
  *&v58[119] = v67[0];
  *&v58[129] = *(v67 + 10);
  *&v58[23] = v61;
  *&v58[39] = v62;
  *&v58[55] = v63;
  *&v58[71] = v64;
  *&v58[7] = v60;
  v42 = v59;
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4666D8);
  sub_1CAB23B0C(&qword_1EC4666E0, &qword_1EC4666D8);
  sub_1CAD4D354();
  v18 = sub_1CAB23B0C(&qword_1EC4666E8, &qword_1EC4666B0);
  v19 = v11;
  sub_1CAD4D5A4();
  (*(v44 + 8))(v9, v7);
  v20 = v46;
  sub_1CAD4DCF4();
  *&v72 = v7;
  *(&v72 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1CACA65D4(&qword_1EC464398, MEMORY[0x1E697C1F8]);
  v23 = v43;
  v24 = v48;
  v25 = v53;
  sub_1CAD4D794();
  (*(v54 + 8))(v20, v25);
  (*(v50 + 8))(v19, v24);
  *&v72 = v24;
  *(&v72 + 1) = v25;
  *v73 = OpaqueTypeConformance2;
  *&v73[8] = v22;
  swift_getOpaqueTypeConformance2();
  v26 = v55;
  v27 = v51;
  sub_1CAD4D664();
  (*(v52 + 8))(v23, v27);
  v28 = v47;
  v29 = *(v47 + 16);
  v30 = v45;
  v31 = v49;
  v29(v45, v26, v49);
  v70 = v56;
  LOBYTE(v26) = v42;
  v71[0] = v42;
  *&v71[113] = *&v58[112];
  *&v71[97] = *&v58[96];
  *&v71[129] = *&v58[128];
  v71[145] = v58[144];
  *&v71[33] = *&v58[32];
  *&v71[49] = *&v58[48];
  *&v71[65] = *&v58[64];
  *&v71[81] = *&v58[80];
  *&v71[1] = *v58;
  *&v71[17] = *&v58[16];
  v32 = *&v71[128];
  *(a2 + 128) = *&v71[112];
  *(a2 + 144) = v32;
  *(a2 + 160) = *&v71[144];
  v33 = *&v71[64];
  *(a2 + 64) = *&v71[48];
  *(a2 + 80) = v33;
  v34 = *&v71[96];
  *(a2 + 96) = *&v71[80];
  *(a2 + 112) = v34;
  v35 = *v71;
  *a2 = v70;
  *(a2 + 16) = v35;
  v36 = *&v71[32];
  *(a2 + 32) = *&v71[16];
  *(a2 + 48) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4666F0);
  v29((a2 + *(v37 + 48)), v30, v31);
  v38 = a2 + *(v37 + 64);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1CAB23A9C(&v70, &v72, &qword_1EC4666F8);
  v39 = *(v28 + 8);
  v39(v55, v31);
  v39(v30, v31);
  *&v73[97] = *&v58[96];
  *&v73[113] = *&v58[112];
  *&v73[129] = *&v58[128];
  *&v73[33] = *&v58[32];
  *&v73[49] = *&v58[48];
  *&v73[65] = *&v58[64];
  *&v73[81] = *&v58[80];
  *&v73[1] = *v58;
  v72 = v56;
  v73[0] = v26;
  v73[145] = v58[144];
  *&v73[17] = *&v58[16];
  return sub_1CAB21B68(&v72, &qword_1EC4666F8);
}

void sub_1CACA4470(uint64_t a1@<X8>)
{
  type metadata accessor for EditShareeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  sub_1CAD4DBF4();
  v1 = *(v51 + 16);

  v2 = [v1 name];

  if (v2)
  {
    sub_1CAD4DF94();

    sub_1CABA6054();
    v3 = sub_1CAD4D444();
    v5 = v4;
    v7 = v6;
    sub_1CAD4D244();
    v8 = sub_1CAD4D424();
    v10 = v9;
    v12 = v11;

    sub_1CABA6128(v3, v5, v7 & 1);

    sub_1CAD4D8A4();
    v13 = sub_1CAD4D3E4();
    v15 = v14;
    LOBYTE(v5) = v16;
    sub_1CABA6128(v8, v10, v12 & 1);

    sub_1CAD4D294();
    v17 = sub_1CAD4D394();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1CABA6128(v13, v15, v5 & 1);

    LOBYTE(v13) = sub_1CAD4D1E4();
    sub_1CAD4C5F4();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v80 = v21 & 1;
    v77 = 0;
    LOBYTE(v15) = sub_1CAD4D204();
    sub_1CAD4C5F4();
    v81 = 0;
    *&v44 = v17;
    *(&v44 + 1) = v19;
    LOBYTE(v45) = v21 & 1;
    *(&v45 + 1) = *v79;
    DWORD1(v45) = *&v79[3];
    *(&v45 + 1) = v23;
    LOBYTE(v46) = v13;
    *(&v46 + 1) = *v78;
    DWORD1(v46) = *&v78[3];
    *(&v46 + 1) = v25;
    *&v47 = v27;
    *(&v47 + 1) = v29;
    *&v48 = v31;
    BYTE8(v48) = 0;
    HIDWORD(v48) = *(v83 + 3);
    *(&v48 + 9) = v83[0];
    LOBYTE(v49) = v15;
    DWORD1(v49) = *&v82[3];
    *(&v49 + 1) = *v82;
    *(&v49 + 1) = v32;
    *v50 = v33;
    *&v50[8] = v34;
    *&v50[16] = v35;
    v50[24] = 0;
    v53 = v46;
    v54 = v47;
    v51 = v44;
    v52 = v45;
    *(v57 + 9) = *&v50[9];
    v56 = v49;
    v57[0] = *v50;
    v55 = v48;
    v43[127] = 1;
    v36 = v44;
    v37 = v45;
    v38 = v47;
    *(a1 + 32) = v46;
    *(a1 + 48) = v38;
    *a1 = v36;
    *(a1 + 16) = v37;
    v39 = v55;
    v40 = v56;
    v41 = v57[1];
    *(a1 + 96) = v57[0];
    *(a1 + 112) = v41;
    *(a1 + 64) = v39;
    *(a1 + 80) = v40;
    *(a1 + 128) = 0;
    *(a1 + 136) = 256;
    v58[0] = v17;
    v58[1] = v19;
    v59 = v21 & 1;
    *&v60[3] = *&v79[3];
    *v60 = *v79;
    v61 = v23;
    v62 = v13;
    *&v63[3] = *&v78[3];
    *v63 = *v78;
    v64 = v25;
    v65 = v27;
    v66 = v29;
    v67 = v31;
    v68 = 0;
    *&v69[3] = *(v83 + 3);
    *v69 = v83[0];
    v70 = v15;
    *&v71[3] = *&v82[3];
    *v71 = *v82;
    v72 = v32;
    v73 = v33;
    v74 = v34;
    v75 = v35;
    v76 = 0;
    sub_1CAB23A9C(&v44, v43, &qword_1EC466788);
    sub_1CAB21B68(v58, &qword_1EC466788);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CACA4830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466700) - 8;
  v3 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466708);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466710);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466718);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466720);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v48 = a1;
  v49 = sub_1CAD4D854();
  sub_1CAD4D604();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466728);
  sub_1CAB23B0C(&qword_1EC466730, &qword_1EC466728);
  sub_1CACA6390();
  v44 = v17;
  sub_1CAD4DBD4();
  v18 = objc_opt_self();
  v19 = [v18 cuik_tertiaryGroupedBackgroundColor];
  v49 = sub_1CAD4D7D4();
  v20 = sub_1CAD4DAA4();
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466740) + 36)] = v20;
  v47 = a1;
  sub_1CACA5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466748);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466750);
  v22 = sub_1CACA6454();
  v49 = v21;
  v50 = MEMORY[0x1E69E6370];
  v51 = v22;
  v52 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464DD8);
  v24 = sub_1CAC1ADF0();
  v49 = v23;
  v50 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v45;
  sub_1CAD4DBD4();
  v26 = [v18 cuik_tertiaryGroupedBackgroundColor];
  v49 = sub_1CAD4D7D4();
  *(v25 + *(v8 + 44)) = sub_1CAD4DAA4();
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  v27 = v40;
  sub_1CAD4DBC4();
  v28 = [v18 cuik_tertiaryGroupedBackgroundColor];
  v49 = sub_1CAD4D7D4();
  *&v27[*(v37 + 44)] = sub_1CAD4DAA4();
  v29 = v27;
  v30 = v39;
  sub_1CAB23A9C(v44, v39, &qword_1EC466720);
  v31 = v41;
  sub_1CAB23A9C(v25, v41, &qword_1EC466710);
  v32 = v42;
  sub_1CAB23A9C(v29, v42, &qword_1EC466700);
  v33 = v43;
  sub_1CAB23A9C(v30, v43, &qword_1EC466720);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466768);
  sub_1CAB23A9C(v31, v33 + *(v34 + 48), &qword_1EC466710);
  sub_1CAB23A9C(v32, v33 + *(v34 + 64), &qword_1EC466700);
  sub_1CAB21B68(v29, &qword_1EC466700);
  sub_1CAB21B68(v45, &qword_1EC466710);
  sub_1CAB21B68(v44, &qword_1EC466720);
  sub_1CAB21B68(v32, &qword_1EC466700);
  sub_1CAB21B68(v31, &qword_1EC466710);
  return sub_1CAB21B68(v30, &qword_1EC466720);
}

uint64_t sub_1CACA4F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for EditShareeView();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466750);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  (*(v6 + 8))(v8, v5);
  sub_1CAD4DA64();
  v12 = sub_1CAD4D864();
  KeyPath = swift_getKeyPath();
  v24 = v12;
  v14 = sub_1CAD4C754();
  v15 = &v11[*(v9 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  sub_1CAD4DBF4();
  v16 = v24;
  swift_getKeyPath();
  v24 = v16;
  sub_1CACA65D4(&qword_1EC464308, type metadata accessor for EKShareeWithData);
  sub_1CAD4C424();

  LOBYTE(KeyPath) = *(v16 + 40);

  LOBYTE(v24) = KeyPath;
  v17 = v21;
  sub_1CACA6284(a1, v21);
  v18 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v19 = swift_allocObject();
  sub_1CACA62E8(v17, v19 + v18);
  sub_1CACA6454();
  sub_1CAD4D754();

  return sub_1CAB21B68(v11, &qword_1EC466750);
}

uint64_t sub_1CACA52BC@<X0>(uint64_t a1@<X8>)
{
  sub_1CAD4CD04();
  v2 = CUIKBundle();
  result = sub_1CAD4D434();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_1CACA537C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for EditShareeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  sub_1CAD4DBF4();
  v3 = *(v5 + 16);

  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v3 setShareeAccessLevel_];
}

uint64_t sub_1CACA5414()
{
  sub_1CAD4CD04();
  v0 = CUIKBundle();
  v1 = sub_1CAD4D434();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1CAD4D1F4();
  sub_1CAD4C5F4();
  *&v14 = v1;
  *(&v14 + 1) = v3;
  LOBYTE(v15) = v5 & 1;
  *(&v15 + 1) = v7;
  LOBYTE(v16) = v8;
  *(&v16 + 1) = v9;
  *v17 = v10;
  *&v17[8] = v11;
  *&v17[16] = v12;
  v17[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DD8);
  sub_1CAC1ADF0();
  sub_1CAD4D5A4();
  v18[2] = v16;
  v19[0] = *v17;
  *(v19 + 9) = *&v17[9];
  v18[0] = v14;
  v18[1] = v15;
  return sub_1CAB21B68(v18, &qword_1EC464DD8);
}

uint64_t sub_1CACA5580(uint64_t a1)
{
  v2 = type metadata accessor for EditShareeView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-v6];
  sub_1CAD4C5A4();
  v8 = sub_1CAD4C5C4();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1CACA6284(a1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1CACA62E8(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = a1;
  return sub_1CAD4D9D4();
}

uint64_t sub_1CACA574C(uint64_t a1)
{
  v2 = sub_1CAD4C784();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditShareeView();
  (*(a1 + *(v6 + 24)))();
  sub_1CABF188C(v5);
  sub_1CAD4C774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1CACA5840@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CCF4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CAD4CCE4();
  sub_1CAD4CCD4();
  type metadata accessor for EditShareeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  sub_1CAD4DBF4();
  v3 = *(v16 + 16);

  v4 = [v3 firstName];

  if (v4)
  {
    sub_1CAD4DF94();

    sub_1CABA6054();
    v5 = sub_1CAD4D444();
  }

  else
  {
    sub_1CAD4CD04();
    v5 = sub_1CAD4D434();
  }

  v8 = v5;
  v9 = v6;
  v10 = v7;
  sub_1CAD4CCB4();
  sub_1CABA6128(v8, v9, v10 & 1);

  sub_1CAD4CCD4();
  sub_1CAD4CD14();
  v11 = CUIKBundle();
  result = sub_1CAD4D434();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1CACA5A84(uint64_t a1)
{
  v2 = sub_1CAD4CF14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1CAD4CF04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CAD4C6E4();
  v7 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  MEMORY[0x1CCAA6200](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CACA5C70(uint64_t a1)
{
  v2 = type metadata accessor for EditShareeView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  v7 = CUIKBundle();
  sub_1CAD4C184();
  v12[1] = sub_1CAD4DFC4();
  v12[2] = v8;
  sub_1CACA6284(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1CACA62E8(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1CABA6054();
  return sub_1CAD4DA04();
}

uint64_t sub_1CACA5E74(uint64_t a1)
{
  v15 = sub_1CAD4CC04();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_1CAD4C784();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(a1, v7, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1CAD4E3F4();
    v12 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_1CAD4C774();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1CACA60F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A70);
  sub_1CAB23B0C(&qword_1EC4666A0, &qword_1EC466698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
  sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1CAD4C924();
}

uint64_t sub_1CACA6284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditShareeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACA62E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditShareeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CACA6390()
{
  result = qword_1EC466738;
  if (!qword_1EC466738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466718);
    sub_1CACA65D4(&qword_1EC462018, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466738);
  }

  return result;
}

unint64_t sub_1CACA6454()
{
  result = qword_1EC466758;
  if (!qword_1EC466758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466750);
    sub_1CAB23B0C(&qword_1EC466760, &qword_1EC464970);
    sub_1CAB23B0C(&qword_1EC463FF8, &qword_1EC464000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466758);
  }

  return result;
}

uint64_t sub_1CACA6558(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditShareeView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1CACA65D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for EditShareeView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CAD4C784();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466670);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1CACA67A0(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for EditShareeView();

  sub_1CACA537C(a1, a2);
}

double sub_1CACA6820@<D0>(uint64_t a1@<X8>)
{
  sub_1CACA36CC(0, v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

unint64_t sub_1CACA6880()
{
  result = qword_1EC468530;
  if (!qword_1EC468530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC468530);
  }

  return result;
}

uint64_t EventCalendarModel.isDelegate.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 104))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    v10 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v6 = v9;
    v5 = AssociatedTypeWitness;
  }

  (*(v6 + 8))(v8, v5);
  return v10 & 1;
}

uint64_t EventCalendarModel.displayColor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))(&v3);
  if (v4 == 255)
  {
    return 0;
  }

  else
  {
    return CalendarColor.displayColor.getter();
  }
}

uint64_t sub_1CACA6D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CAB23A9C(a3, v25 - v10, &unk_1EC4679C0);
  v12 = sub_1CAD4E304();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CAB21B68(v11, &unk_1EC4679C0);
  }

  else
  {
    sub_1CAD4E2F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CAD4E2A4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CAD4E014() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1CAB21B68(a3, &unk_1EC4679C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CAB21B68(a3, &unk_1EC4679C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1CACA709C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v77 = v2;
  v78 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[9];
    v62 = v5[8];
    v63 = v9;
    v10 = v5[9];
    v64 = v5[10];
    v11 = v5[3];
    v12 = v5[5];
    v58 = v5[4];
    v59 = v12;
    v13 = v5[5];
    v14 = v5[7];
    v60 = v5[6];
    v61 = v14;
    v15 = v5[1];
    v55[0] = *v5;
    v55[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v56 = v5[2];
    v57 = v16;
    v52 = v62;
    v53 = v10;
    v54 = v5[10];
    v48 = v58;
    v49 = v13;
    v50 = v60;
    v51 = v8;
    v44 = v18;
    v45 = v17;
    v46 = v56;
    v47 = v11;
    v19 = v6[7];
    v20 = v6[9];
    v72 = v6[8];
    v73 = v20;
    v21 = v6[9];
    v74 = v6[10];
    v22 = v6[3];
    v23 = v6[5];
    v68 = v6[4];
    v69 = v23;
    v24 = v6[5];
    v25 = v6[7];
    v70 = v6[6];
    v71 = v25;
    v26 = v6[1];
    v65[0] = *v6;
    v65[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v66 = v6[2];
    v67 = v27;
    v41 = v72;
    v42 = v21;
    v43 = v6[10];
    v37 = v68;
    v38 = v24;
    v39 = v70;
    v40 = v19;
    v33 = v29;
    v34 = v28;
    v35 = v66;
    v36 = v22;
    sub_1CABD3C1C(v55, v32);
    sub_1CABD3C1C(v65, v32);
    v30 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v44, &v33);
    v75[8] = v41;
    v75[9] = v42;
    v75[10] = v43;
    v75[4] = v37;
    v75[5] = v38;
    v75[6] = v39;
    v75[7] = v40;
    v75[0] = v33;
    v75[1] = v34;
    v75[2] = v35;
    v75[3] = v36;
    sub_1CABD3C78(v75);
    v76[8] = v52;
    v76[9] = v53;
    v76[10] = v54;
    v76[4] = v48;
    v76[5] = v49;
    v76[6] = v50;
    v76[7] = v51;
    v76[0] = v44;
    v76[1] = v45;
    v76[2] = v46;
    v76[3] = v47;
    sub_1CABD3C78(v76);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 11;
    v5 += 11;
  }

  return 1;
}

uint64_t sub_1CACA7288(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v125 = v2;
  v126 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[9];
    v109 = v5[8];
    v110 = v9;
    v10 = v5[9];
    v111 = v5[10];
    v11 = v5[3];
    v12 = v5[5];
    v105 = v5[4];
    v106 = v12;
    v13 = v5[5];
    v14 = v5[7];
    v107 = v5[6];
    v108 = v14;
    v15 = v5[1];
    v102[0] = *v5;
    v102[1] = v15;
    v16 = v5[3];
    v17 = *v5;
    v18 = v5[1];
    v103 = v5[2];
    v104 = v16;
    v19 = v6[7];
    v20 = v6[9];
    v120 = v6[8];
    v121 = v20;
    v21 = v6[9];
    v122 = v6[10];
    v22 = v6[3];
    v23 = v6[5];
    v116 = v6[4];
    v117 = v23;
    v25 = v6[5];
    v24 = v6[6];
    v26 = v24;
    v119 = v6[7];
    v118 = v24;
    v27 = v6[1];
    v112 = *v6;
    v113 = v27;
    v28 = v6[3];
    v30 = *v6;
    v29 = v6[1];
    v114 = v6[2];
    v115 = v28;
    v31 = v5[7];
    v32 = v5[9];
    v123[8] = v5[8];
    v123[9] = v32;
    v123[10] = v5[10];
    v33 = v5[3];
    v34 = v5[5];
    v123[4] = v5[4];
    v123[5] = v34;
    v35 = v5[6];
    v123[7] = v31;
    v123[6] = v35;
    v36 = v5[1];
    v123[0] = *v5;
    v123[1] = v36;
    v37 = v5[2];
    v123[3] = v33;
    v123[2] = v37;
    v123[19] = v120;
    v123[20] = v21;
    v123[21] = v6[10];
    v123[15] = v116;
    v123[16] = v25;
    v123[17] = v26;
    v123[18] = v19;
    v123[11] = v30;
    v123[12] = v29;
    v123[13] = v114;
    v123[14] = v22;
    v124[8] = v109;
    v124[9] = v10;
    v124[10] = v5[10];
    v124[4] = v105;
    v124[5] = v13;
    v124[7] = v8;
    v124[6] = v107;
    v124[0] = v17;
    v124[1] = v18;
    v124[3] = v11;
    v124[2] = v103;
    if (sub_1CACACF10(v124) == 1)
    {
      v87 = i;
      v38 = sub_1CAB32D60(v124);
      v99 = v120;
      v100 = v121;
      v101 = v122;
      v95 = v116;
      v96 = v117;
      v97 = v118;
      v98 = v119;
      v91 = v112;
      v92 = v113;
      v93 = v114;
      v94 = v115;
      v39 = sub_1CACACF10(&v91);
      v40 = sub_1CAB32D60(&v91);
      if (v39 != 1)
      {
        goto LABEL_42;
      }

      v41 = v40;
      v42 = *(v38 + 8);
      v43 = *(v38 + 16);
      v45 = *(v38 + 24);
      v44 = *(v38 + 32);
      v47 = *(v38 + 40);
      v46 = *(v38 + 48);
      v48 = *(v38 + 56);
      v49 = v40[1];
      v50 = v40[2];
      v52 = v40[3];
      v51 = v40[4];
      v53 = v40[5];
      v54 = v40[6];
      v55 = v40[7];
      if (v42)
      {
        if (!v49 || (*v38 != *v40 || v42 != v49) && (v83 = *(v38 + 56), v85 = v40[7], v81 = v40[4], v82 = v40[6], v79 = v40[2], v80 = *(v38 + 48), v56 = *(v38 + 32), v57 = v40[5], v58 = *(v38 + 16), v59 = sub_1CAD4E9E4(), v50 = v79, v46 = v80, v43 = v58, v53 = v57, v44 = v56, v48 = v83, v55 = v85, v51 = v81, v54 = v82, (v59 & 1) == 0))
        {
LABEL_42:
          sub_1CACACF1C(&v112, v90);
          sub_1CACACF1C(v102, v90);
          sub_1CAB21B68(v123, &qword_1EC4667F0);
          return 0;
        }
      }

      else if (v49)
      {
        goto LABEL_42;
      }

      if (v45)
      {
        if (!v52)
        {
          goto LABEL_42;
        }

        if (v43 != v50 || v45 != v52)
        {
          v84 = v48;
          v86 = v55;
          v69 = v46;
          v70 = v44;
          v71 = v53;
          v72 = v51;
          v73 = sub_1CAD4E9E4();
          v51 = v72;
          v53 = v71;
          v44 = v70;
          v46 = v69;
          v48 = v84;
          v55 = v86;
          if ((v73 & 1) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      else if (v52)
      {
        goto LABEL_42;
      }

      if (v47)
      {
        if (!v53)
        {
          goto LABEL_42;
        }

        if (v44 != v51 || v47 != v53)
        {
          v74 = v46;
          v75 = sub_1CAD4E9E4();
          v46 = v74;
          if ((v75 & 1) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      else if (v53)
      {
        goto LABEL_42;
      }

      if (v46 == v54 && v48 == v55)
      {
        sub_1CACACF1C(&v112, v90);
        sub_1CACACF1C(v102, v90);
        sub_1CAB21B68(v123, &qword_1EC4667F0);
      }

      else
      {
        v76 = sub_1CAD4E9E4();
        sub_1CACACF1C(&v112, v90);
        sub_1CACACF1C(v102, v90);
        sub_1CAB21B68(v123, &qword_1EC4667F0);
        if ((v76 & 1) == 0)
        {
          return 0;
        }
      }

      if (*(v38 + 64) != *(v41 + 64))
      {
        return 0;
      }

      if (*(v38 + 65) != *(v41 + 65))
      {
        return 0;
      }

      v77 = v41[9];
      i = v87;
      if (*(v38 + 72) != v77)
      {
        return 0;
      }
    }

    else
    {
      v60 = sub_1CAB32D60(v124);
      v99 = v120;
      v100 = v121;
      v101 = v122;
      v95 = v116;
      v96 = v117;
      v97 = v118;
      v98 = v119;
      v91 = v112;
      v92 = v113;
      v93 = v114;
      v94 = v115;
      v61 = sub_1CACACF10(&v91);
      v62 = sub_1CAB32D60(&v91);
      if (v61 == 1)
      {
        goto LABEL_42;
      }

      v90[7] = v60[7];
      v90[8] = v60[8];
      v90[9] = v60[9];
      v90[10] = v60[10];
      v90[3] = v60[3];
      v90[4] = v60[4];
      v90[5] = v60[5];
      v90[6] = v60[6];
      v90[0] = *v60;
      v90[1] = v60[1];
      v90[2] = v60[2];
      v63 = v62[9];
      v89[8] = v62[8];
      v89[9] = v63;
      v89[10] = v62[10];
      v64 = v62[5];
      v89[4] = v62[4];
      v89[5] = v64;
      v65 = v62[7];
      v89[6] = v62[6];
      v89[7] = v65;
      v66 = v62[1];
      v89[0] = *v62;
      v89[1] = v66;
      v67 = v62[3];
      v89[2] = v62[2];
      v89[3] = v67;
      sub_1CACACF1C(&v112, v88);
      sub_1CACACF1C(v102, v88);
      sub_1CACACF1C(v102, v88);
      sub_1CACACF1C(&v112, v88);
      sub_1CACACF1C(&v112, v88);
      sub_1CACACF1C(v102, v88);
      v68 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(v90, v89);
      sub_1CAB21B68(v123, &qword_1EC4667F0);
      sub_1CACACF78(&v112);
      sub_1CACACF78(v102);
      sub_1CACACF78(&v112);
      sub_1CACACF78(v102);
      if ((v68 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 11;
    v5 += 11;
  }

  return 1;
}

uint64_t sub_1CACA788C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v39 = a1;
      do
      {
        v5 = *(a1 + v4 + 40);
        v6 = *(a1 + v4 + 48);
        v8 = *(a1 + v4 + 56);
        v7 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 72);
        v10 = *(a1 + v4 + 80);
        v11 = *(a1 + v4 + 88);
        v12 = v3 + v4;
        v13 = *(v12 + 40);
        v14 = *(v12 + 48);
        v16 = *(v12 + 56);
        v15 = *(v12 + 64);
        v18 = *(v12 + 72);
        v17 = *(v12 + 80);
        v19 = *(v12 + 88);
        v45 = *(v12 + 96);
        v46 = *(a1 + v4 + 96);
        v41 = *(a1 + v4 + 104);
        v42 = *(v12 + 104);
        v43 = *(a1 + v4 + 97);
        v44 = *(v12 + 97);
        if (v5)
        {
          if (!v13)
          {
            return 0;
          }

          if (*(a1 + v4 + 32) != *(v12 + 32) || v5 != v13)
          {
            v37 = *(v12 + 64);
            v38 = *(v12 + 88);
            v35 = *(v12 + 72);
            v36 = *(v12 + 80);
            v20 = *(a1 + v4 + 88);
            v21 = *(a1 + v4 + 72);
            v22 = *(a1 + v4 + 64);
            v23 = *(a1 + v4 + 48);
            v24 = *(v12 + 48);
            v25 = sub_1CAD4E9E4();
            v14 = v24;
            v6 = v23;
            v15 = v37;
            v19 = v38;
            v7 = v22;
            v9 = v21;
            v11 = v20;
            v18 = v35;
            v17 = v36;
            if ((v25 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v13)
        {
          return 0;
        }

        if (v8)
        {
          if (!v16)
          {
            return 0;
          }

          if (v6 != v14 || v8 != v16)
          {
            v26 = v15;
            v27 = v11;
            v28 = v9;
            v29 = v7;
            v30 = sub_1CAD4E9E4();
            v15 = v26;
            v7 = v29;
            v9 = v28;
            v11 = v27;
            if ((v30 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v16)
        {
          return 0;
        }

        if (v9)
        {
          if (!v18)
          {
            return 0;
          }

          if (v7 != v15 || v9 != v18)
          {
            v31 = v11;
            v32 = sub_1CAD4E9E4();
            v11 = v31;
            if ((v32 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v18)
        {
          return 0;
        }

        if (v10 == v17 && v11 == v19)
        {
          result = 0;
          if (v46 != v45)
          {
            return result;
          }
        }

        else
        {
          v34 = sub_1CAD4E9E4();
          result = 0;
          if (v34 & 1) == 0 || ((v46 ^ v45))
          {
            return result;
          }
        }

        if (((v43 ^ v44) & 1) != 0 || v41 != v42)
        {
          return result;
        }

        v4 += 80;
        --v2;
        a1 = v39;
        v3 = a2;
      }

      while (v2);
    }
  }

  return 1;
}

uint64_t sub_1CACA7AE0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1CACA7B58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CACA7BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CAD4E9E4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1CACA7C44(uint64_t a1, uint64_t a2)
{
  v52 = sub_1CAD4BFF4();
  v4 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v39 - v10;
  v47 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v12 = MEMORY[0x1EEE9AC00](v47);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v39 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v17 || a1 == a2)
  {
    v37 = 1;
    return v37 & 1;
  }

  v41 = v6;
  v42 = v9;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v40 = (v4 + 32);
  v43 = (v4 + 8);
  v45 = *(v14 + 72);
  v46 = (v4 + 48);
  v21 = &qword_1EC465450;
  v23 = v47;
  v22 = v48;
  while (1)
  {
    v51 = v19;
    sub_1CACAD014(v19, v16, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    sub_1CACAD014(v20, v22, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    v24 = v16[1];
    v25 = v22[1];
    if (v24)
    {
      if (!v25 || (*v16 != *v22 || v24 != v25) && (sub_1CAD4E9E4() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v25)
    {
      goto LABEL_23;
    }

    v50 = v17;
    v26 = *(v23 + 20);
    v27 = *(v49 + 48);
    sub_1CAB23A9C(v16 + v26, v11, v21);
    sub_1CAB23A9C(v22 + v26, &v11[v27], v21);
    v28 = v21;
    v29 = *v46;
    if ((*v46)(v11, 1, v52) != 1)
    {
      break;
    }

    if (v29(&v11[v27], 1, v52) != 1)
    {
      goto LABEL_22;
    }

    sub_1CAB21B68(v11, v21);
    v30 = v50;
LABEL_17:
    v36 = *(v16 + *(v23 + 24)) ^ *(v22 + *(v23 + 24));
    sub_1CACAD07C(v22, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    sub_1CACAD07C(v16, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    if ((v36 & 1) == 0)
    {
      v20 += v45;
      v19 = v51 + v45;
      v17 = v30 - 1;
      if (v17)
      {
        continue;
      }
    }

    v37 = v36 ^ 1;
    return v37 & 1;
  }

  v31 = v42;
  sub_1CAB23A9C(v11, v42, v21);
  if (v29(&v11[v27], 1, v52) != 1)
  {
    v32 = v41;
    v33 = v52;
    (*v40)(v41, &v11[v27], v52);
    sub_1CACACFCC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
    v44 = sub_1CAD4DED4();
    v34 = *v43;
    v35 = v32;
    v22 = v48;
    (*v43)(v35, v33);
    v34(v31, v33);
    sub_1CAB21B68(v11, v28);
    v23 = v47;
    v21 = v28;
    v30 = v50;
    if ((v44 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  (*v43)(v31, v52);
LABEL_22:
  sub_1CAB21B68(v11, &qword_1EC463DA0);
LABEL_23:
  sub_1CACAD07C(v22, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
  sub_1CACAD07C(v16, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
LABEL_24:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_1CACA81C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v8;
  v9 = type metadata accessor for EventAlarmTrigger();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v48 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v48 - v18);
  v56 = type metadata accessor for EventAlarmModelObject();
  v20 = MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v48 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v61 = v22;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v49 = (v5 + 32);
  v50 = (v5 + 8);
  v51 = *(v21 + 72);
  v52 = v19;
  v28 = v55;
  v48 = v9;
  while (1)
  {
    v57 = v26;
    sub_1CACAD014(v26, v28, type metadata accessor for EventAlarmModelObject);
    v58 = v27;
    v30 = v27;
    v31 = v61;
    sub_1CACAD014(v30, v61, type metadata accessor for EventAlarmModelObject);
    if (*(v28 + *(v56 + 20)) != *(v31 + *(v56 + 20)))
    {
      sub_1CACAD07C(v31, type metadata accessor for EventAlarmModelObject);
      v46 = v28;
      v47 = type metadata accessor for EventAlarmModelObject;
      goto LABEL_18;
    }

    sub_1CACAD014(v28, v19, type metadata accessor for EventAlarmTrigger);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = v19;
    if (EnumCaseMultiPayload != 1)
    {
      v34 = *v19;
      sub_1CACAD014(v61, v17, type metadata accessor for EventAlarmTrigger);
      v35 = swift_getEnumCaseMultiPayload();
      v33 = v17;
      if (v35 != 1)
      {
        sub_1CACAD07C(v61, type metadata accessor for EventAlarmModelObject);
        sub_1CACAD07C(v28, type metadata accessor for EventAlarmModelObject);
        v29 = v58;
        if (v34 != *v17)
        {
          return 0;
        }

        goto LABEL_6;
      }
    }

    sub_1CACAD07C(v33, type metadata accessor for EventAlarmTrigger);
    sub_1CACAD014(v28, v14, type metadata accessor for EventAlarmTrigger);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1CACAD07C(v61, type metadata accessor for EventAlarmModelObject);
      sub_1CACAD07C(v28, type metadata accessor for EventAlarmModelObject);
      v47 = type metadata accessor for EventAlarmTrigger;
      v46 = v14;
      goto LABEL_18;
    }

    v36 = *v49;
    (*v49)(v59, v14, v4);
    v37 = v61;
    sub_1CACAD014(v61, v60, type metadata accessor for EventAlarmTrigger);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v38 = v17;
    v39 = v59;
    v40 = v4;
    v41 = v54;
    v36(v54, v60, v40);
    v53 = sub_1CAD4C0A4();
    v42 = *v50;
    v43 = v41;
    v4 = v40;
    v44 = v39;
    v17 = v38;
    v28 = v55;
    (*v50)(v43, v4);
    v42(v44, v4);
    sub_1CACAD07C(v37, type metadata accessor for EventAlarmModelObject);
    sub_1CACAD07C(v28, type metadata accessor for EventAlarmModelObject);
    v29 = v58;
    if ((v53 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v19 = v52;
    v27 = v29 + v51;
    v26 = v57 + v51;
    if (!--v24)
    {
      return 1;
    }
  }

  (*v50)(v59, v4);
  sub_1CACAD07C(v37, type metadata accessor for EventAlarmModelObject);
  sub_1CACAD07C(v28, type metadata accessor for EventAlarmModelObject);
  v47 = type metadata accessor for EventAlarmTrigger;
  v46 = v60;
LABEL_18:
  sub_1CACAD07C(v46, v47);
  return 0;
}

uint64_t sub_1CACA8870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1CACAD014(v20, v17, a4);
        sub_1CACAD014(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1CACAD07C(v14, a6);
        sub_1CACAD07C(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1CACA8A64(unint64_t a1, uint64_t a2)
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

    v4 = sub_1CABD4070(0, &qword_1EC465288);
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
          v15 = MEMORY[0x1CCAA7940](v12 - 4, v3);
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

        v16 = MEMORY[0x1CCAA7940](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1CAD4E494();

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
      v18 = sub_1CAD4E494();

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
    v5 = sub_1CAD4E604();
  }

  result = sub_1CAD4E604();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}