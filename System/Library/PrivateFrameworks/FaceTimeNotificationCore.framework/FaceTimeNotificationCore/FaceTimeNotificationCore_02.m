unint64_t sub_24A9FAB84()
{
  result = qword_27EF82F18;
  if (!qword_27EF82F18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82F18);
  }

  return result;
}

id WrappedAlertIdentifier.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_24A9DAA40(a1, v3 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_24A9DAAA4(a1);
  return v4;
}

uint64_t AlertIdentifier.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_24A9FEA40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlertIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A9DAA40(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v16 = 0x28656369746F6E2ELL;
    v17 = 0xE800000000000000;
    sub_24A9FD124(&qword_27EF82940, MEMORY[0x277CC95F0]);
    v11 = sub_24A9FF150();
    MEMORY[0x24C222550](v11);

    MEMORY[0x24C222550](41, 0xE100000000000000);
    v12 = v16;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = *v10;
    v14 = v10[1];
    v16 = 0x286C6C61632ELL;
    v17 = 0xE600000000000000;
    MEMORY[0x24C222550](v13, v14);

    MEMORY[0x24C222550](41, 0xE100000000000000);
    return v16;
  }

  return v12;
}

uint64_t sub_24A9FAEB0(uint64_t a1)
{
  v2 = sub_24A9FD16C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9FAEEC(uint64_t a1)
{
  v2 = sub_24A9FD16C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9FAF28()
{
  if (*v0)
  {
    result = 0x656369746F6ELL;
  }

  else
  {
    result = 1819042147;
  }

  *v0;
  return result;
}

uint64_t sub_24A9FAF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1819042147 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A9FF170() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656369746F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A9FF170();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24A9FB030(uint64_t a1)
{
  v2 = sub_24A9FD07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9FB06C(uint64_t a1)
{
  v2 = sub_24A9FD07C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9FB0A8()
{
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](0);
  return sub_24A9FF210();
}

uint64_t sub_24A9FB0EC()
{
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](0);
  return sub_24A9FF210();
}

uint64_t sub_24A9FB12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A9FF170();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A9FB1AC(uint64_t a1)
{
  v2 = sub_24A9FD0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9FB1E8(uint64_t a1)
{
  v2 = sub_24A9FD0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlertIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F30, &qword_24AA02780);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v31 - v4;
  v5 = sub_24A9FEA40();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F38, &qword_24AA02788);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AlertIdentifier(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F40, &qword_24AA02790);
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v39);
  v19 = &v31 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9FD07C();
  sub_24A9FF230();
  sub_24A9DAA40(v38, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v34;
    v22 = v32;
    v23 = v15;
    v24 = v35;
    (*(v34 + 32))(v32, v23, v35);
    v41 = 1;
    sub_24A9FD0D0();
    v25 = v33;
    v26 = v39;
    sub_24A9FF120();
    sub_24A9FD124(&qword_27EF82F58, MEMORY[0x277CC95F0]);
    v27 = v37;
    sub_24A9FF140();
    (*(v36 + 8))(v25, v27);
    (*(v21 + 8))(v22, v24);
  }

  else
  {
    v29 = *v15;
    v28 = v15[1];
    v40 = 0;
    sub_24A9FD16C();
    v26 = v39;
    sub_24A9FF120();
    sub_24A9FF130();

    (*(v31 + 8))(v11, v8);
  }

  return (*(v16 + 8))(v19, v26);
}

uint64_t AlertIdentifier.hash(into:)()
{
  v1 = sub_24A9FEA40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A9DAA40(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C222A90](1);
    sub_24A9FD124(&unk_27EF82950, MEMORY[0x277CC95F0]);
    sub_24A9FEBF0();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
  }
}

uint64_t AlertIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24A9FEA40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlertIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A9FF1E0();
  sub_24A9DAA40(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x24C222A90](1);
    sub_24A9FD124(&unk_27EF82950, MEMORY[0x277CC95F0]);
    sub_24A9FEBF0();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
  }

  return sub_24A9FF210();
}

uint64_t AlertIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F70, &qword_24AA02798);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v50 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F78, &qword_24AA027A0);
  v55 = *(v59 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F80, &qword_24AA027A8);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for AlertIdentifier(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v50 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24A9FD07C();
  v25 = v62;
  sub_24A9FF220();
  if (!v25)
  {
    v51 = v20;
    v52 = v22;
    v62 = v17;
    v26 = v58;
    v27 = v59;
    v28 = v60;
    v53 = v13;
    v29 = v12;
    v30 = sub_24A9FF110();
    v31 = v30;
    if (*(v30 + 16) == 1)
    {
      if (*(v30 + 32))
      {
        v65 = 1;
        sub_24A9FD0D0();
        v32 = v28;
        sub_24A9FF0D0();
        v33 = v61;
        sub_24A9FEA40();
        v59 = v31;
        sub_24A9FD124(&qword_27EF82F90, MEMORY[0x277CC95F0]);
        v40 = v62;
        v41 = v56;
        sub_24A9FF100();
        (*(v57 + 8))(v32, v41);
        (*(v33 + 8))(v29, v9);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v42 = v40;
      }

      else
      {
        v64 = 0;
        sub_24A9FD16C();
        v38 = v26;
        sub_24A9FF0D0();
        v39 = v61;
        v62 = v12;
        v43 = v27;
        v45 = sub_24A9FF0F0();
        v47 = v46;
        (*(v55 + 8))(v38, v43);
        (*(v39 + 8))(v62, v9);
        swift_unknownObjectRelease();
        v48 = v51;
        *v51 = v45;
        v48[1] = v47;
        swift_storeEnumTagMultiPayload();
        v42 = v48;
      }

      v49 = v52;
      sub_24A9DAB00(v42, v52);
      sub_24A9DAB00(v49, v54);
    }

    else
    {
      v34 = sub_24A9FF000();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F88, &unk_24AA027B0) + 48);
      *v36 = v53;
      sub_24A9FF0E0();
      sub_24A9FEFF0();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v61 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_24A9FC09C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_24A9FEA40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A9FF1E0();
  sub_24A9DAA40(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x24C222A90](1);
    sub_24A9FD124(&unk_27EF82950, MEMORY[0x277CC95F0]);
    sub_24A9FEBF0();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
  }

  return sub_24A9FF210();
}

id WrappedAlertIdentifier.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_24A9DAA40(a1, v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_24A9DAAA4(a1);
  return v4;
}

uint64_t static WrappedAlertIdentifier.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EF82F20 = a1;
  return result;
}

Swift::Void __swiftcall WrappedAlertIdentifier.encode(with:)(NSCoder with)
{
  v2 = sub_24A9FE8E0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_24A9FE8D0();
  type metadata accessor for AlertIdentifier(0);
  sub_24A9FD124(&qword_27EF82F98, type metadata accessor for AlertIdentifier);
  v5 = sub_24A9FE8C0();
  v7 = v6;

  v10[0] = v5;
  v10[1] = v7;
  v8 = sub_24A9FF160();
  sub_24A9CE38C(v10);
  v9 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id WrappedAlertIdentifier.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82FA0, &qword_24AA01290);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AlertIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24AA00690;
  *(v14 + 32) = sub_24A9FD1C0();
  sub_24A9FEE40();

  if (v33)
  {
    if (swift_dynamicCast())
    {
      v28 = ObjectType;
      v15 = v30;
      v16 = v31;
      v17 = sub_24A9FE8B0();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      sub_24A9FE8A0();
      sub_24A9FD124(&qword_27EF82FC0, type metadata accessor for AlertIdentifier);
      sub_24A9FE890();
      sub_24A9CE4C0(v15, v16);

      (*(v10 + 56))(v8, 0, 1, v9);
      sub_24A9DAB00(v8, v13);
      sub_24A9DAB00(v13, v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
      v29.receiver = v1;
      v29.super_class = v28;
      v26 = objc_msgSendSuper2(&v29, sel_init);

      return v26;
    }
  }

  else
  {
    sub_24A9C994C(v32, &qword_27EF826D0, "*4");
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v20 = sub_24A9FEA90();
  __swift_project_value_buffer(v20, qword_27EF84B68);
  v21 = sub_24A9FEA70();
  v22 = sub_24A9FED90();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24A9BF000, v21, v22, "Failed to decode alert identifier", v23, 2u);
    MEMORY[0x24C223120](v23, -1, -1);
  }

  v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t WrappedAlertIdentifier.description.getter()
{
  v1 = type metadata accessor for AlertIdentifier(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_24A9DAA40(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_24A9FEC70();
}

id WrappedAlertIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WrappedAlertIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s24FaceTimeNotificationCore15AlertIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A9FEA40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A88, &qword_24AA01560);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v31 - v19;
  v21 = (&v31 + *(v18 + 56) - v19);
  sub_24A9DAA40(a1, &v31 - v19);
  sub_24A9DAA40(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24A9DAA40(v20, v15);
    v25 = *v15;
    v24 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v21 && v24 == v21[1])
      {
        v29 = v21[1];
      }

      else
      {
        v27 = v21[1];
        v28 = sub_24A9FF170();

        if ((v28 & 1) == 0)
        {
          sub_24A9DAAA4(v20);
          goto LABEL_8;
        }
      }

      sub_24A9DAAA4(v20);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_24A9C994C(v20, &qword_27EF82A88, &qword_24AA01560);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_24A9DAA40(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, v21, v4);
  v22 = sub_24A9FEA10();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v13, v4);
  sub_24A9DAAA4(v20);
  return v22 & 1;
}

unint64_t sub_24A9FD07C()
{
  result = qword_27EF82F48;
  if (!qword_27EF82F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F48);
  }

  return result;
}

unint64_t sub_24A9FD0D0()
{
  result = qword_27EF82F50;
  if (!qword_27EF82F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F50);
  }

  return result;
}

uint64_t sub_24A9FD124(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A9FD16C()
{
  result = qword_27EF82F60;
  if (!qword_27EF82F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F60);
  }

  return result;
}

unint64_t sub_24A9FD1C0()
{
  result = qword_27EF82FB0;
  if (!qword_27EF82FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82FB0);
  }

  return result;
}

uint64_t sub_24A9FD254@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27EF82F20;
  return result;
}

uint64_t sub_24A9FD2A0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27EF82F20 = v1;
  return result;
}

uint64_t sub_24A9FD338()
{
  result = sub_24A9FEA40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24A9FD3CC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A9FD404()
{
  result = type metadata accessor for AlertIdentifier(319);
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

uint64_t sub_24A9FD500(unsigned int *a1, int a2)
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

_WORD *sub_24A9FD550(_WORD *result, int a2, int a3)
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

unint64_t sub_24A9FD5E0()
{
  result = qword_27EF82FF0;
  if (!qword_27EF82FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82FF0);
  }

  return result;
}

unint64_t sub_24A9FD638()
{
  result = qword_27EF82FF8;
  if (!qword_27EF82FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82FF8);
  }

  return result;
}

unint64_t sub_24A9FD690()
{
  result = qword_27EF83000;
  if (!qword_27EF83000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83000);
  }

  return result;
}

unint64_t sub_24A9FD6E8()
{
  result = qword_27EF83008;
  if (!qword_27EF83008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83008);
  }

  return result;
}

unint64_t sub_24A9FD740()
{
  result = qword_27EF83010;
  if (!qword_27EF83010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83010);
  }

  return result;
}

unint64_t sub_24A9FD798()
{
  result = qword_27EF83018;
  if (!qword_27EF83018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83018);
  }

  return result;
}

unint64_t sub_24A9FD7F0()
{
  result = qword_27EF83020;
  if (!qword_27EF83020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83020);
  }

  return result;
}

unint64_t sub_24A9FD848()
{
  result = qword_27EF83028;
  if (!qword_27EF83028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83028);
  }

  return result;
}

unint64_t sub_24A9FD8A0()
{
  result = qword_27EF83030;
  if (!qword_27EF83030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83030);
  }

  return result;
}

uint64_t sub_24A9FD910(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void XPCConnectionHolder.setConnection(_:exportedObject:)(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    __break(1u);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    [a1 setExportedObject_];
    swift_unknownObjectRelease();
    [a1 setExportedInterface_];
    [a1 setRemoteObjectInterface_];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_24A9FE1BC;
    v19 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_24A9FD910;
    v17 = &block_descriptor_3;
    v7 = _Block_copy(&aBlock);

    [a1 setInterruptionHandler_];
    _Block_release(v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_24A9FE2F0;
    v19 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_24A9FD910;
    v17 = &block_descriptor_4;
    v9 = _Block_copy(&aBlock);

    [a1 setInvalidationHandler_];
    _Block_release(v9);
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v10 = sub_24A9FEA90();
    __swift_project_value_buffer(v10, qword_27EF84B68);
    v11 = sub_24A9FEA70();
    v12 = sub_24A9FEDA0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A9BF000, v11, v12, "Activate XPC connection.", v13, 2u);
      MEMORY[0x24C223120](v13, -1, -1);
    }

    [a1 activate];
  }
}

uint64_t sub_24A9FDC50()
{
  MEMORY[0x24C2231C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id XPCConnectionHolder.__allocating_init(remote:exported:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_remoteInterface] = a1;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_exportedInterface] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_24A9FDD60@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A9FE85C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A9CF0A8(v4);
}

uint64_t sub_24A9FDE00(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A9FE834;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A9CF0A8(v3);
  return sub_24A9CF118(v8);
}

uint64_t XPCConnectionHolder.onInvalidate.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_24A9CF0A8(v3);
  return v3;
}

uint64_t XPCConnectionHolder.onInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24A9CF118(v6);
}

id XPCConnectionHolder.init(remote:exported:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_remoteInterface] = a1;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_exportedInterface] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_24A9FE074()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v2 = sub_24A9FEA90();
    __swift_project_value_buffer(v2, qword_27EF84B68);
    v3 = sub_24A9FEA70();
    v4 = sub_24A9FEDA0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A9BF000, v3, v4, "Connection interrupted.", v5, 2u);
      MEMORY[0x24C223120](v5, -1, -1);
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      [v6 invalidate];
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24A9FE1DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v2 = sub_24A9FEA90();
    __swift_project_value_buffer(v2, qword_27EF84B68);
    v3 = sub_24A9FEA70();
    v4 = sub_24A9FEDA0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A9BF000, v3, v4, "Connection invalidated.", v5, 2u);
      MEMORY[0x24C223120](v5, -1, -1);
    }

    XPCConnectionHolder.destroyConnection()();
  }
}

Swift::Void __swiftcall XPCConnectionHolder.destroyConnection()()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v4 = sub_24A9FEA90();
    __swift_project_value_buffer(v4, qword_27EF84B68);
    v5 = sub_24A9FEA70();
    v6 = sub_24A9FEDA0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A9BF000, v5, v6, "Destroy xpc connection.", v7, 2u);
      MEMORY[0x24C223120](v7, -1, -1);
    }

    [v3 setExportedObject_];
    [v3 setInvalidationHandler_];
    [v3 setInterruptionHandler_];
    [v3 invalidate];
    v8 = v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate;
    swift_beginAccess();
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 8);

      v9(v11);
      sub_24A9CF118(v9);
    }

    swift_unknownObjectWeakAssign();
  }
}

id XPCConnectionHolder.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v3 = sub_24A9FEA90();
  __swift_project_value_buffer(v3, qword_27EF84B68);
  v4 = sub_24A9FEA70();
  v5 = sub_24A9FEDA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A9BF000, v4, v5, "Connection holder destroyed.", v6, 2u);
    MEMORY[0x24C223120](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id XPCConnectionHolder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24A9FE6EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24A9FE748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A9FE7FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A9FE834()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A9FE85C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}