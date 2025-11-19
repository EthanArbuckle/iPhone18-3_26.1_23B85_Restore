void (*sub_20CED642C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED6314();
  return sub_20CED6564;
}

uint64_t sub_20CED6570(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__currentState;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__previousState;
  result = swift_beginAccess();
  if (*(v2 + v6) != v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D5638F8();
  }

  if (*(v2 + v4) != a1)
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    sub_20D5638F8();
  }

  return result;
}

uint64_t (*sub_20CED6918(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CED697C;
}

uint64_t sub_20CED697C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20CEDC118(MEMORY[0x277D85B58], &unk_20D5BC550, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID, "Setting utility id %s");
  }

  return result;
}

void (*sub_20CED6BB4(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED6918(v4);
  return sub_20CED6CEC;
}

void sub_20CED6D64()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v5 = qword_281120C18;
  sub_20D565998();
  v6 = v0;
  v7 = sub_20D565968();
  v8 = sub_20D567E98();

  if (os_log_type_enabled(v7, v8))
  {
    v22 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getKeyPath();
    v23 = v6;
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D563908();

    v11 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
    swift_beginAccess();
    v12 = *&v6[v11];
    if (v12)
    {
      v13 = v12;
      v14 = sub_20D564C08();
      if (v15)
      {
        v16 = v15;
        v17 = v14;
      }

      else
      {
        v17 = sub_20D564BE8();
        v16 = v19;
      }

      v18 = v17;
    }

    else
    {
      v16 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_20CEE913C(v18, v16, &v24);

    *(v9 + 4) = v20;
    _os_log_impl(&dword_20CEB6000, v7, v8, "Setting utility config %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);

    (*(v2 + 8))(v4, v22);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_20CEDE284();
}

uint64_t (*sub_20CED7048(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CED70AC;
}

uint64_t sub_20CED70C4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_20CED71A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED4D04(v1);
}

void (*sub_20CED71D0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED7048(v4);
  return sub_20CED7308;
}

void sub_20CED7380(char *a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *&a1[v8];
  *&a1[v8] = a3;
  v10 = a3;
  v11 = a1;

  a5();
}

void sub_20CED7408()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v6 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogo;
  swift_beginAccess();
  if (*(v1 + v6))
  {
    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v7 = qword_281120C18;
    sub_20D565998();
    v8 = sub_20D565968();
    v9 = sub_20D567E98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20CEB6000, v8, v9, "Setting utility logo UIImage", v10, 2u);
      MEMORY[0x20F31FC70](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_20CEE6F44();
  }
}

uint64_t (*sub_20CED7624(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CED7688;
}

void *sub_20CED76B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v6 = a1;
  sub_20D563908();

  v7 = *a4;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = v8;

  return v8;
}

void sub_20CED7814(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED4EA4(v1);
}

uint64_t sub_20CED7844(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = a2;
  v9 = a2;

  return a4();
}

void (*sub_20CED78C0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED7624(v4);
  return sub_20CED79F8;
}

void *sub_20CED7A04()
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage);
  v2 = v1;
  return v1;
}

id sub_20CED7AB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v4 = *(v3 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage);
  *a2 = v4;

  return v4;
}

uint64_t sub_20CED7B74()
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  return sub_20D5663C8();
}

uint64_t sub_20CED7C20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *a2 = *(v3 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__availableUtilities);
  return sub_20D5663C8();
}

void (*sub_20CED7E60(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED7D80();
  return sub_20CED7F98;
}

void sub_20CED8018(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED520C(v1);
}

void (*sub_20CED805C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED7FA4();
  return sub_20CED8194;
}

void sub_20CED8214(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED5248(v1);
}

void (*sub_20CED8258(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED81A0();
  return sub_20CED8390;
}

void (*sub_20CED8508(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED83C4();
  return sub_20CED8640;
}

uint64_t sub_20CED87B0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v6 = a1;
  sub_20D563908();

  v7 = *a4;
  swift_beginAccess();
  v8 = *&v6[v7];

  return v8;
}

uint64_t sub_20CED8898(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_20CED89B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_20CED8AA4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_20CED8B00(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED873C();
  return sub_20CED8C38;
}

uint64_t sub_20CED8E18()
{
  swift_getKeyPath();
  v3 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v1 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_20CED8F28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CED9014(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_20CED9070(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED8CE0();
  return sub_20CED91A8;
}

uint64_t sub_20CED91E8()
{
  v1 = v0;
  sub_20CED9D1C();
  if ((sub_20CEDACCC() & 1) != 0 && (swift_getKeyPath(), sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext), sub_20D563908(), , v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config, swift_beginAccess(), (v3 = *(v1 + v2)) != 0))
  {
    swift_getKeyPath();
    v4 = v3;
    sub_20D563908();

    v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__validFields;
    swift_beginAccess();
    v6 = *(v1 + v5);
    v7 = *&v4[OBJC_IVAR___HUUtilityConfigurationHelper_requiredFields];
    sub_20D5663C8();
    sub_20D5663C8();
    v8 = sub_20CEF088C(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_20CED9368(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_20D565988();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D5633F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey);
  v15 = *(a1 + OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8);
  v30 = a2;
  v35[0] = a2;
  v35[1] = a3;
  sub_20D5663C8();
  sub_20D5633D8();
  sub_20CEF44D8();
  v33 = sub_20D5685A8();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v19 = qword_27C838280;
  sub_20D565998();
  sub_20D5663C8();
  sub_20D5663C8();
  v20 = sub_20D565968();
  v21 = sub_20D567E98();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_20CEE913C(v16, v15, v35);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_20CEE913C(v30, a3, v35);
    _os_log_impl(&dword_20CEB6000, v20, v21, "Updated tafResponses for %s with value: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v23, -1, -1);
    MEMORY[0x20F31FC70](v22, -1, -1);
  }

  (*(v31 + 8))(v10, v32);
  swift_getKeyPath();
  v35[0] = v4;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D5663C8();
  sub_20D5663C8();
  sub_20D563908();

  v35[0] = v4;
  swift_getKeyPath();
  sub_20D563928();

  v24 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tafResponses;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v4 + v24);
  *(v4 + v24) = 0x8000000000000000;
  v26 = v33;
  sub_20CEEF4C8(v33, v18, v16, v15, isUniquelyReferenced_nonNull_native);

  *(v4 + v24) = v34;
  swift_endAccess();
  v35[0] = v4;
  swift_getKeyPath();
  sub_20D563918();

  v27 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    swift_getKeyPath();
    v35[0] = v4;
    sub_20D563908();

    v35[0] = v4;
    swift_getKeyPath();
    sub_20D563928();

    swift_beginAccess();
    sub_20CEE9D8C(&v34, v16, v15);
    swift_endAccess();
  }

  else
  {
    swift_getKeyPath();
    v35[0] = v4;
    sub_20D563908();

    v35[0] = v4;
    swift_getKeyPath();
    sub_20D563928();

    swift_beginAccess();
    sub_20CEEEBBC(v16, v15);
    swift_endAccess();
  }

  v35[0] = v4;
  swift_getKeyPath();
  sub_20D563918();
}

uint64_t sub_20CED993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_20CEEF4C8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_20CEED668(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_20CF9C840();
        v16 = v18;
      }

      result = sub_20D089834(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_20CED9A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_20CEC80B0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_20CEEF74C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_20CEF928C(a1, &qword_27C81BF00);
    sub_20D0894D4(a2, a3, v9);

    return sub_20CEF928C(v9, &qword_27C81BF00);
  }

  return result;
}

uint64_t sub_20CED9B14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_20D563818();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_20CEF928C(a1, &qword_27C81C180);
    sub_20D0895E8(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_20CEF928C(v7, &qword_27C81C180);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_20CEF0090(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

void sub_20CED9D1C()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = sub_20D565988();
  v2 = *(v1 - 1);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v40 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = sub_20CEF3A4C(MEMORY[0x277D84F90]);
  sub_20CED5284(v8);
  v9 = OBJC_IVAR___HUUtilityConfigurationHelper_fields;
  v10 = sub_20D5663C8();
  sub_20CF211AC(v10);

  v11 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820770);
  v12 = sub_20D567A58();

  v39 = 0;
  v13 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v14 = v39;
  if (!v13)
  {
    v26 = v39;
    v17 = sub_20D5635D8();

    swift_willThrow();
    if (qword_28111FAF0 == -1)
    {
LABEL_15:
      v27 = qword_281120C18;
      sub_20D565998();
      v28 = v17;
      v29 = sub_20D565968();
      v30 = sub_20D567EA8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v7;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v31 = 136315394;
        *(v31 + 4) = sub_20CEE913C(0xD00000000000001DLL, 0x800000020D5CCA00, &v39);
        *(v31 + 12) = 2112;
        v35 = v17;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v36;
        *v33 = v36;
        _os_log_impl(&dword_20CEB6000, v29, v30, "%s ERROR fetching MeCard: %@", v31, 0x16u);
        sub_20CEF928C(v33, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v33, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x20F31FC70](v34, -1, -1);
        MEMORY[0x20F31FC70](v31, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v4, v1);
      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_15;
  }

  v15 = objc_allocWithZone(type metadata accessor for AccountDetailsDataModel());
  v16 = v14;
  v17 = v13;
  v1 = AccountDetailsDataModel.init(meContact:)(v17);
  v4 = *&v7[v9];
  if (!(v4 >> 62))
  {
    v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_20:

    return;
  }

  v18 = sub_20D568768();
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_5:
  v37 = v17;
  v38 = v7;
  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_20D5663C8();
  for (i = 0; i != v18; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x20F31DD20](i, v4);
    }

    else
    {
      v20 = *(v4 + 8 * i + 32);
    }

    v21 = v20;
    v23 = *&v20[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey];
    v22 = *&v20[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8];
    sub_20D5663C8();
    v24._countAndFlagsBits = v23;
    v24._object = v22;
    v25 = AccountDetailsDataModel.getInfo(tafFieldKey:)(v24);

    if (v25.value._object)
    {
      sub_20CED9368(v21, v25.value._countAndFlagsBits, v25.value._object);
    }
  }
}

uint64_t sub_20CEDA2B4()
{
  v1 = v0;
  swift_getKeyPath();
  v15 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tafResponses;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (*(v3 + 16))
  {
    sub_20D5663C8();
    v4 = sub_20CEED668(1701667150, 0xE400000000000000);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 16 * v4);
      sub_20D5663C8();

      return v6;
    }
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  swift_getKeyPath();
  sub_20D563908();

  if (*(*(v1 + v2) + 16))
  {
    sub_20D5663C8();
    sub_20CEED668(0x6D614E7473726946, 0xE900000000000065);
    if (v8)
    {
      sub_20D5663C8();

      v9 = sub_20D5677F8();

      [v7 setGivenName_];
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_20D563908();

  if (*(*(v1 + v2) + 16))
  {
    sub_20D5663C8();
    sub_20CEED668(0x656D614E7473614CLL, 0xE800000000000000);
    if (v10)
    {
      sub_20D5663C8();

      v11 = sub_20D5677F8();

      [v7 setFamilyName_];
    }

    else
    {
    }
  }

  v12 = [objc_opt_self() stringFromContact:v7 style:0];
  if (v12)
  {
    v13 = v12;
    v6 = sub_20D567838();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_20CEDA5BC()
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  swift_getKeyPath();
  sub_20D563928();

  swift_beginAccess();
  sub_20CED993C(0, 0, 1701667150, 0xE400000000000000);
  swift_endAccess();
  swift_getKeyPath();
  sub_20D563918();

  swift_getKeyPath();
  sub_20D563908();

  swift_getKeyPath();
  sub_20D563928();

  swift_beginAccess();
  sub_20CED993C(0, 0, 0x6D614E7473726946, 0xE900000000000065);
  swift_endAccess();
  swift_getKeyPath();
  sub_20D563918();

  swift_getKeyPath();
  sub_20D563908();

  swift_getKeyPath();
  sub_20D563928();

  swift_beginAccess();
  sub_20CED993C(0, 0, 0x656D614E7473614CLL, 0xE800000000000000);
  swift_endAccess();
  swift_getKeyPath();
  sub_20D563918();

  swift_getKeyPath();
  sub_20D563908();

  swift_getKeyPath();
  sub_20D563928();

  swift_beginAccess();
  sub_20CEEEBBC(1701667150, 0xE400000000000000);
  swift_endAccess();

  swift_getKeyPath();
  sub_20D563918();

  swift_getKeyPath();
  sub_20D563908();

  swift_getKeyPath();
  sub_20D563928();

  swift_beginAccess();
  sub_20CEEEBBC(0x6D614E7473726946, 0xE900000000000065);
  swift_endAccess();

  swift_getKeyPath();
  sub_20D563918();

  swift_getKeyPath();
  sub_20D563908();

  swift_getKeyPath();
  sub_20D563928();

  swift_beginAccess();
  sub_20CEEEBBC(0x656D614E7473614CLL, 0xE800000000000000);
  swift_endAccess();

  swift_getKeyPath();
  sub_20D563918();
}

uint64_t sub_20CEDAB24()
{
  v1 = v0;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    swift_getKeyPath();
    v4 = v3;
    sub_20D563908();

    v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__validFields;
    swift_beginAccess();
    v6 = *(v1 + v5);
    v7 = *&v4[OBJC_IVAR___HUUtilityConfigurationHelper_requiredFields];
    sub_20D5663C8();
    sub_20D5663C8();
    v8 = sub_20CEF088C(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

char *sub_20CEDACCC()
{
  swift_getKeyPath();
  v22 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v1 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v2 = *(v22 + v1);
  if (!v2)
  {
    v16 = 0;
    return (v16 & 1);
  }

  v3 = *&v2[OBJC_IVAR___HUUtilityConfigurationHelper_fields];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_15:
    v17 = v2;
    v8 = MEMORY[0x277D84F90];
LABEL_16:
    v18 = sub_20CEF30B0(v8);

    v19 = sub_20D5663C8();
    v16 = sub_20CEF088C(v19, v18);

    return (v16 & 1);
  }

  v4 = sub_20D568768();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  v21 = MEMORY[0x277D84F90];
  v5 = v2;
  result = sub_20CEF0AC8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v20 = v2;
    v7 = 0;
    v8 = v21;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F31DD20](v7, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = v9;
      v12 = *&v9[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey];
      v11 = *&v9[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8];
      sub_20D5663C8();

      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20CEF0AC8((v13 > 1), v14 + 1, 1);
      }

      ++v7;
      *(v21 + 16) = v14 + 1;
      v15 = v21 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
    }

    while (v4 != v7);
    v2 = v20;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEDAF54()
{
  v1 = v0;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = *&v3[OBJC_IVAR___HUUtilityConfigurationHelper_fields];
  if (v4 >> 62)
  {
LABEL_28:
    v5 = sub_20D568768();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v3;
  sub_20D5663C8();
  v6 = 0;
  v3 = 0xE500000000000000;
  while (1)
  {
    if (v5 == v6)
    {

      goto LABEL_24;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F31DD20](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (*&v7[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey] == 0x6C69616D45 && *&v7[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8] == 0xE500000000000000)
    {
      break;
    }

    v10 = sub_20D568BF8();

    ++v6;
    if (v10)
    {

      goto LABEL_19;
    }
  }

LABEL_19:
  swift_getKeyPath();
  sub_20D563908();

  v11 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tafResponses;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!*(v12 + 16))
  {
LABEL_23:

LABEL_24:
    v18 = 0;
    return v18 & 1;
  }

  sub_20D5663C8();
  v13 = sub_20CEED668(0x6C69616D45, 0xE500000000000000);
  if ((v14 & 1) == 0)
  {

    goto LABEL_23;
  }

  v15 = (*(v12 + 56) + 16 * v13);
  v16 = *v15;
  v17 = v15[1];
  sub_20D5663C8();

  LOBYTE(v16) = sub_20CF21958(0xD000000000000019, 0x800000020D5CCA20, v16, v17);

  v18 = v16 ^ 1;
  return v18 & 1;
}

id sub_20CEDB240()
{
  swift_beginAccess();
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  v0 = sub_20D567A58();

  return v0;
}

uint64_t (*sub_20CEDB394(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CEDB3F8;
}

uint64_t sub_20CEDB3F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20CEDD5B8(MEMORY[0x277D85B58], &unk_20D5BC738, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__otpFactors, "Setting factors %s");
  }

  return result;
}

id sub_20CEDB46C(void *a1)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v2 = a1;
  sub_20D563908();

  swift_beginAccess();
  sub_20D5663C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  v3 = sub_20D567A58();

  return v3;
}

uint64_t sub_20CEDB5B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  sub_20D567A78();
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v2 = a1;
  sub_20D5638F8();
}

void (*sub_20CEDB6F8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDB394(v4);
  return sub_20CEDB830;
}

id sub_20CEDB8B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *a3 = v7;

  return v7;
}

void sub_20CEDB988(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED56D0(v1);
}

void *sub_20CEDB9CC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

void sub_20CEDBA88(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
  v7 = a2;
}

void (*sub_20CEDBAF4(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDB83C();
  return sub_20CEDBC2C;
}

void (*sub_20CEDBCD8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDBC38();
  return sub_20CEDBE10;
}

uint64_t (*sub_20CEDBE1C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CEDBE80;
}

uint64_t sub_20CEDBE80(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20CEDC118(MEMORY[0x277D85B40], &unk_20D5BC7B0, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__accessToken, "Setting access token %s");
  }

  return result;
}

uint64_t sub_20CEDBF20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, const char *a7)
{
  v13 = (a1 + *a4);
  swift_beginAccess();
  *v13 = a2;
  v13[1] = a3;
  sub_20D5663C8();

  return sub_20CEDC118(a5, a6, a4, a7);
}

void (*sub_20CEDBFD4(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDBE1C(v4);
  return sub_20CEDC10C;
}

uint64_t sub_20CEDC118(uint64_t (*a1)(void), uint64_t a2, void *a3, const char *a4)
{
  v8 = sub_20D565988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v12 = qword_281120C18;
  sub_20D565998();
  v13 = v4;
  v14 = sub_20D565968();
  v15 = a1();

  if (os_log_type_enabled(v14, v15))
  {
    v24 = v8;
    v25 = a4;
    v16 = swift_slowAlloc();
    v17 = a3;
    v18 = swift_slowAlloc();
    v27 = v18;
    *v16 = 136315138;
    swift_getKeyPath();
    v26 = v13;
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D563908();

    v19 = &v13[*v17];
    swift_beginAccess();
    if (v19[1])
    {
      v20 = *v19;
      v21 = v19[1];
    }

    else
    {
      v21 = 0xE300000000000000;
      v20 = 7104878;
    }

    v8 = v24;
    sub_20D5663C8();
    v22 = sub_20CEE913C(v20, v21, &v27);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_20CEB6000, v14, v15, v25, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x20F31FC70](v18, -1, -1);
    MEMORY[0x20F31FC70](v16, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t (*sub_20CEDC3C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CEDC428;
}

uint64_t sub_20CEDC428(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20CEDC118(MEMORY[0x277D85B40], &unk_20D5BC7D8, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__refreshToken, "Setting refresh token %s");
  }

  return result;
}

void (*sub_20CEDC4C8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDC3C4(v4);
  return sub_20CEDC600;
}

uint64_t sub_20CEDC60C()
{
  v1 = sub_20D565988();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_20D5637A8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  swift_getKeyPath();
  v32 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v13 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__expirationDate;
  swift_beginAccess();
  sub_20CEF9178(v0 + v13, v5, &unk_27C8207C0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_20CEF928C(v5, &unk_27C8207C0);
  }

  (*(v7 + 32))(v12, v5, v6);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v15 = qword_281120C18;
  v16 = v30;
  sub_20D565998();
  (*(v7 + 16))(v10, v12, v6);
  v17 = sub_20D565968();
  v18 = sub_20D567E98();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    sub_20CEF5EB0(&qword_2811209E0, MEMORY[0x277CC9578]);
    v21 = sub_20D568BB8();
    v23 = v22;
    v27 = v12;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_20CEE913C(v21, v23, &v31);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_20CEB6000, v17, v18, "Setting expiration date %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F31FC70](v20, -1, -1);
    MEMORY[0x20F31FC70](v19, -1, -1);

    (*(v28 + 8))(v30, v29);
    return (v24)(v27, v6);
  }

  else
  {

    v26 = *(v7 + 8);
    v26(v10, v6);
    (*(v28 + 8))(v16, v29);
    return (v26)(v12, v6);
  }
}

uint64_t (*sub_20CEDCAC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CEDCB24;
}

uint64_t sub_20CEDCB3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__expirationDate;
  swift_beginAccess();
  return sub_20CEF9178(v3 + v4, a2, &unk_27C8207C0);
}

uint64_t sub_20CEDCC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_20CEF9178(a1, &v6 - v3, &unk_27C8207C0);
  return sub_20CED5AAC(v4);
}

uint64_t sub_20CEDCCC0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__expirationDate;
  swift_beginAccess();
  return sub_20CEF9178(v5 + v3, a1, &unk_27C8207C0);
}

uint64_t sub_20CEDCD98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_20CEF9178(a2, &v9 - v5, &unk_27C8207C0);
  v7 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__expirationDate;
  swift_beginAccess();
  sub_20CEF4330(v6, a1 + v7);
  swift_endAccess();
  sub_20CEDC60C();
  return sub_20CEF928C(v6, &unk_27C8207C0);
}

void (*sub_20CEDCE8C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDCAC0(v4);
  return sub_20CEDCFC4;
}

id sub_20CEDCFE8()
{
  swift_beginAccess();
  sub_20D5663C8();
  v0 = sub_20D567738();

  return v0;
}

uint64_t sub_20CEDD090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_20D567758();
  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = v7;
}

id sub_20CEDD18C(void *a1)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v2 = a1;
  sub_20D563908();

  swift_beginAccess();
  sub_20D5663C8();

  v3 = sub_20D567738();

  return v3;
}

uint64_t sub_20CEDD408(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
  sub_20D5663C8();
}

void (*sub_20CEDD474(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDD10C();
  return sub_20CEDD5AC;
}

uint64_t sub_20CEDD5B8(uint64_t (*a1)(void), uint64_t a2, uint64_t *a3, const char *a4)
{
  v8 = sub_20D565988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v12 = qword_281120C18;
  sub_20D565998();
  v13 = v4;
  v14 = sub_20D565968();
  v15 = a1();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = a4;
    v19 = v18;
    v31 = v18;
    *v17 = 136315138;
    swift_getKeyPath();
    v30 = v13;
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D563908();

    v20 = *a3;
    swift_beginAccess();
    v21 = *&v13[v20];
    sub_20D5663C8();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
    v23 = MEMORY[0x20F31CF30](v21, v22);
    v25 = v24;

    v26 = sub_20CEE913C(v23, v25, &v31);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_20CEB6000, v14, v15, v28, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x20F31FC70](v19, -1, -1);
    MEMORY[0x20F31FC70](v17, -1, -1);

    return (*(v9 + 8))(v11, v29);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t (*sub_20CEDD888(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CEDD8EC;
}

uint64_t sub_20CEDD8EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20CEDD5B8(MEMORY[0x277D85B40], &unk_20D5BC860, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__serviceLocations, "Setting locations %s");
  }

  return result;
}

uint64_t sub_20CEDD960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
  return sub_20D5663C8();
}

uint64_t sub_20CEDDA4C()
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D5638F8();
}

uint64_t sub_20CEDDB1C()
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  swift_beginAccess();
  return sub_20D5663C8();
}

uint64_t sub_20CEDDBD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5, const char *a6)
{
  v12 = *a3;
  swift_beginAccess();
  *(a1 + v12) = a2;
  sub_20D5663C8();

  return sub_20CEDD5B8(a4, a5, a3, a6);
}

void (*sub_20CEDDC78(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDD888(v4);
  return sub_20CEDDDB0;
}

uint64_t sub_20CEDDE30@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  return sub_20D5663C8();
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_20D5663C8();
  return a5(v7, v6);
}

uint64_t sub_20CEDDF74(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;
  sub_20D5663C8();
  return v5;
}

uint64_t sub_20CEDE03C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
  sub_20D5663C8();
}

void (*sub_20CEDE0AC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CEDDDBC();
  return sub_20CEDE1E4;
}

void sub_20CEDE1F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_20D563918();

  free(v1);
}

void sub_20CEDE284()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v6 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = qword_28111FAF0;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_281120C18;
    sub_20D565998();
    v11 = sub_20D565968();
    v12 = sub_20D567EC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_20CEE913C(0xD00000000000001ALL, 0x800000020D5CD100, &v19);
      _os_log_impl(&dword_20CEB6000, v11, v12, "%s Creating subscription service", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x20F31FC70](v14, -1, -1);
      MEMORY[0x20F31FC70](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v15 = *&v9[OBJC_IVAR___HUUtilityConfigurationHelper_config];
    v16 = objc_allocWithZone(sub_20D564CD8());
    v17 = v15;
    v18 = sub_20D564CC8();
    sub_20CED520C(v18);
  }
}

uint64_t sub_20CEDE534(void *a1)
{
  v41 = sub_20D565988();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 latestResults];
  v6 = MEMORY[0x277D837D0];
  if (v5)
  {
    v7 = v5;
    v8 = sub_20D567758();

    if (*(v8 + 16))
    {
      v9 = sub_20CEED668(0x742D726F74636166, 0xEB00000000657079);
      if (v10)
      {
        sub_20CED43FC(*(v8 + 56) + 32 * v9, &v45);

        sub_20CEC80B0(&v45, &v47);
        goto LABEL_7;
      }
    }
  }

  v48 = v6;
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
LABEL_7:
  v11 = [a1 latestResults];
  if (v11)
  {
    v12 = v11;
    v13 = sub_20D567758();

    v14 = sub_20D567838();
    if (*(v13 + 16))
    {
      v16 = sub_20CEED668(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_20CED43FC(*(v13 + 56) + 32 * v16, &v43);

        sub_20CEC80B0(&v43, &v45);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v46 = v6;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
LABEL_14:
  v19 = [a1 latestResults];
  if (v19)
  {
    v20 = v19;
    v21 = sub_20D567758();

    v22 = sub_20D567838();
    if (*(v21 + 16))
    {
      v24 = sub_20CEED668(v22, v23);
      v26 = v25;

      if (v26)
      {
        sub_20CED43FC(*(v21 + 56) + 32 * v24, v42);

        sub_20CEC80B0(v42, &v43);
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v44 = v6;
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC4A0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v6;
  *(inited + 80) = 0x7954726F74636166;
  *(inited + 88) = 0xEA00000000006570;
  sub_20CED43FC(&v47, inited + 96);
  *(inited + 128) = 0x74616E6974736564;
  *(inited + 136) = 0xEB000000006E6F69;
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(inited + 168) = v6;
  *(inited + 176) = 0x736B6E696C5FLL;
  *(inited + 184) = 0xE600000000000000;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_20D5BC4B0;
  *(v28 + 32) = 0x796669726576;
  *(v28 + 40) = 0xE600000000000000;
  sub_20CED43FC(&v43, v28 + 48);
  *(v28 + 80) = 1684956531;
  *(v28 + 88) = 0xE400000000000000;
  sub_20CED43FC(&v45, v28 + 96);
  v29 = sub_20CEF3B60(v28);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE70);
  swift_arrayDestroy();
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  *(inited + 192) = v29;
  sub_20CEF3B60(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v30 = qword_281120C18;
  sub_20D565998();
  sub_20D5663C8();
  v31 = sub_20D565968();
  v32 = sub_20D567E98();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v42[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_20CEE913C(0xD00000000000001DLL, 0x800000020D5CCA40, v42);
    *(v33 + 12) = 2080;
    v40 = v4;
    v35 = sub_20D567768();
    v37 = sub_20CEE913C(v35, v36, v42);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_20CEB6000, v31, v32, "%s factorDict %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v34, -1, -1);
    MEMORY[0x20F31FC70](v33, -1, -1);

    (*(v2 + 8))(v40, v41);
  }

  else
  {

    (*(v2 + 8))(v4, v41);
  }

  sub_20D564E28();
  v38 = sub_20D564E08();
  sub_20CED56D0(v38);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  return __swift_destroy_boxed_opaque_existential_1(&v47);
}

uint64_t sub_20CEDEC0C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_20D565988();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_20D567C18();
  v2[13] = sub_20D567C08();
  v5 = sub_20D567BA8();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_20CEDED0C, v5, v4);
}

uint64_t sub_20CEDED0C()
{
  v41 = v0;
  v1 = v0[8];
  swift_getKeyPath();
  v0[5] = v1;
  v0[16] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  v0[17] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__subscriptionService;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[18] = v3;
  if (v3)
  {
    v4 = v0[7];
    v5 = *(v4 + 16);
    v3;
    sub_20D5663C8();
    if (v5)
    {
      sub_20CEED668(0x656E6F6850, 0xE500000000000000);
      v4 = v0[7];
      if (v6)
      {
        sub_20D5663C8();
        v7 = sub_20CF21CB4();
        v9 = v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40[0] = v4;
        sub_20CEEF4C8(v7, v9, 0x656E6F6850, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    v0[19] = v4;
    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v11 = qword_281120C18;
    sub_20D565998();
    v12 = sub_20D565968();
    v13 = sub_20D567EC8();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    if (v14)
    {
      v38 = v0[9];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_20CEE913C(0xD000000000000012, 0x800000020D5CCA60, v40);
      *(v18 + 12) = 2080;
      sub_20D5663C8();
      v20 = sub_20D567768();
      v22 = v21;

      v23 = sub_20CEE913C(v20, v22, v40);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_20CEB6000, v12, v13, "%s Submitting information %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v19, -1, -1);
      MEMORY[0x20F31FC70](v18, -1, -1);

      (*(v16 + 8))(v15, v38);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    sub_20D564D98();
    sub_20D5663C8();
    v36 = sub_20D564D58();
    v0[20] = v36;
    v39 = (*MEMORY[0x277D181F8] + MEMORY[0x277D181F8]);
    v37 = swift_task_alloc();
    v0[21] = v37;
    *v37 = v0;
    v37[1] = sub_20CEDF2A8;

    return v39(v4, v36);
  }

  else
  {

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v24 = qword_281120C18;
    sub_20D565998();
    v25 = sub_20D565968();
    v26 = sub_20D567EA8();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_20CEE913C(0xD000000000000012, 0x800000020D5CCA60, v40);
      _os_log_impl(&dword_20CEB6000, v25, v26, "%s Unable to find subscription service", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F31FC70](v32, -1, -1);
      MEMORY[0x20F31FC70](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    sub_20CEF5CA0();
    swift_allocError();
    *v33 = 13;
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_20CEDF2A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
    v6 = sub_20CEDF600;
  }

  else
  {

    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
    v6 = sub_20CEDF3CC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void *sub_20CEDF3CC()
{
  v1 = v0[22];

  if (v1 >> 62)
  {
    v2 = sub_20D568768();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x277D84F90];
  result = sub_20CEF0AE8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v17;
  v6 = v1 & 0xC000000000000001;
  v7 = v0[22] + 32;
  do
  {
    if (v6)
    {
      v8 = MEMORY[0x20F31DD20](v4, v0[22]);
    }

    else
    {
      v8 = *(v7 + 8 * v4);
    }

    v9 = v8;
    v10 = sub_20D564DF8();

    v12 = *(v17 + 16);
    v11 = *(v17 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_20CEF0AE8((v11 > 1), v12 + 1, 1);
    }

    ++v4;
    *(v17 + 16) = v12 + 1;
    *(v17 + 8 * v12 + 32) = v10;
  }

  while (v2 != v4);

LABEL_14:
  v13 = v0[18];
  v14 = v0[8];
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = v5;
  v0[6] = v14;
  sub_20D5638F8();

  v16 = v0[1];

  return v16();
}

uint64_t sub_20CEDF600()
{
  v1 = v0[20];
  v2 = v0[18];

  swift_bridgeObjectRelease_n();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CEDF698()
{
  v1[10] = v0;
  v2 = sub_20D565988();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_20D567C18();
  v1[16] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v1[17] = v4;
  v1[18] = v3;

  return MEMORY[0x2822009F8](sub_20CEDF7A4, v4, v3);
}

uint64_t sub_20CEDF7A4()
{
  v1 = v0[10];
  swift_getKeyPath();
  v0[19] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  v0[5] = v1;
  v0[20] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tafResponses;
  v0[21] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tafResponses;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[22] = v3;
  sub_20D5663C8();
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_20CEDF8F0;

  return sub_20CEDEC0C(v3);
}

uint64_t sub_20CEDF8F0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20CEDFA8C;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20CEDFA0C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20CEDFA0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CEDFA8C()
{
  v30 = v0;
  v1 = v0[24];

  v0[6] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  if ((swift_dynamicCast() & 1) != 0 && (v3 = v0[7], v0[25] = v3, v4 = sub_20D564DE8(), v4 == sub_20D564DE8()))
  {
    v5 = v0[21];
    v6 = v0[10];
    swift_getKeyPath();
    v0[9] = v6;
    sub_20D563908();

    v7 = *(v6 + v5);
    v0[8] = v7;
    sub_20D5663C8();
    v8 = sub_20CEF5CF4(&unk_2823CE210);
    swift_arrayDestroy();
    v9 = sub_20D5663C8();
    v10 = sub_20CED4528(v9);
    LOBYTE(v5) = sub_20CEF088C(v10, v8);

    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_20CEEF4C8(21333, 0xE200000000000000, 0x7972746E756F43, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v0[26] = v7;
      v0[8] = v7;

      v13 = sub_20CF21F20(v12);
      v0[27] = v13;

      sub_20D564D98();
      v14 = sub_20D564D58();
      v0[28] = v14;
      v15 = swift_task_alloc();
      v0[29] = v15;
      *v15 = v0;
      v15[1] = sub_20CEDFEB8;

      return MEMORY[0x282172658](v13, v14);
    }

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v17 = qword_281120C18;
    sub_20D565998();
    v18 = sub_20D565968();
    v19 = sub_20D567EA8();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_20CEE913C(0xD00000000000001BLL, 0x800000020D5CCA80, &v29);
      _os_log_impl(&dword_20CEB6000, v18, v19, "%s Skipping AVS. TAF responses do not contain all AVS required fields.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x20F31FC70](v25, -1, -1);
      MEMORY[0x20F31FC70](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
    v26 = v0[24];
    sub_20CEF5E5C();
    swift_allocError();
    *v27 = v3;
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20CEDFEB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 240) = a1;

  v5 = *(v3 + 224);
  if (v1)
  {

    v6 = *(v4 + 136);
    v7 = *(v4 + 144);
    v8 = sub_20CEE086C;
  }

  else
  {

    v6 = *(v4 + 136);
    v7 = *(v4 + 144);
    v8 = sub_20CEE0000;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_20CEE0000()
{
  v63 = v0;
  v1 = v0[30];
  if (v1 >> 62)
  {
    if (sub_20D568768())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x20F31DD20](0, v0[30]);
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[30] + 32);
LABEL_6:

      v3 = sub_20D564DD8();

      v4 = sub_20D564C48();
      v6 = v5;
      v7 = v0[8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v7;
      sub_20CEEF4C8(v4, v6, 0x4C73736572646441, 0xEC00000031656E69, isUniquelyReferenced_nonNull_native);
      v0[8] = v7;
      v9 = sub_20D564C58();
      sub_20CED993C(v9, v10, 0x4C73736572646441, 0xEC00000032656E69);
      v11 = sub_20D564C68();
      sub_20CED993C(v11, v12, 0x4C73736572646441, 0xEC00000033656E69);
      v13 = sub_20D564C78();
      v15 = v14;
      v16 = v0[8];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CEEF4C8(v13, v15, 2037672259, 0xE400000000000000, v17);
      v0[8] = v16;
      v18 = sub_20D564C88();
      v20 = v19;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CEEF4C8(v18, v20, 0x6574617453, 0xE500000000000000, v21);
      v0[8] = v16;
      v22 = sub_20D564C28();
      v24 = v23;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CEEF4C8(v22, v24, 0x6F436C6174736F50, 0xEA00000000006564, v25);
      v0[8] = v16;
      v26 = sub_20D564C98();
      v28 = v27;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v16;
      sub_20CEEF4C8(v26, v28, 0x7972746E756F43, 0xE700000000000000, v29);
      v30 = v16;
      v0[31] = v16;
      v0[8] = v16;
      if (qword_28111FAF0 != -1)
      {
        swift_once();
      }

      v31 = qword_281120C18;
      sub_20D565998();
      v32 = sub_20D565968();
      v33 = sub_20D567EC8();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[14];
      v37 = v0[11];
      v36 = v0[12];
      if (v34)
      {
        v61 = v0[11];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v62[0] = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_20CEE913C(0xD00000000000001BLL, 0x800000020D5CCA80, v62);
        *(v38 + 12) = 2080;

        v40 = sub_20D567768();
        v60 = v35;
        v42 = v41;

        v43 = sub_20CEE913C(v40, v42, v62);

        *(v38 + 14) = v43;
        _os_log_impl(&dword_20CEB6000, v32, v33, "%s Responses copy %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v39, -1, -1);
        MEMORY[0x20F31FC70](v38, -1, -1);

        (*(v36 + 8))(v60, v61);
      }

      else
      {

        (*(v36 + 8))(v35, v37);
      }

      sub_20D5663C8();
      v44 = swift_task_alloc();
      v0[32] = v44;
      *v44 = v0;
      v44[1] = sub_20CEE06A8;

      return sub_20CEDEC0C(v30);
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_28111FAF0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v46 = qword_281120C18;
  sub_20D565998();
  v47 = sub_20D565968();
  v48 = sub_20D567EA8();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v0[15];
  v51 = v0[11];
  v52 = v0[12];
  if (v49)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62[0] = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_20CEE913C(0xD00000000000001BLL, 0x800000020D5CCA80, v62);
    _os_log_impl(&dword_20CEB6000, v47, v48, "%s Address Verification failed! Will ignore error and throw the first error from submitTAF() received.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x20F31FC70](v54, -1, -1);
    MEMORY[0x20F31FC70](v53, -1, -1);
  }

  (*(v52 + 8))(v50, v51);
  v55 = v0[27];
  v56 = v0[24];
  v57 = v0[25];
  sub_20CEF5E5C();
  swift_allocError();
  *v58 = v57;
  swift_willThrow();

  v59 = v0[1];

  return v59();
}

uint64_t sub_20CEE06A8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20CEE0A78;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20CEE07C4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20CEE07C4()
{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CEE086C()
{
  v17 = v0;

  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_281120C18;
  sub_20D565998();
  v2 = sub_20D565968();
  v3 = sub_20D567EA8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[15];
  v6 = v0[11];
  v7 = v0[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20CEE913C(0xD00000000000001BLL, 0x800000020D5CCA80, &v16);
    _os_log_impl(&dword_20CEB6000, v2, v3, "%s Address Verification failed! Will ignore error and throw the first error from submitTAF() received.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[27];
  v11 = v0[24];
  v12 = v0[25];
  sub_20CEF5E5C();
  swift_allocError();
  *v13 = v12;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_20CEE0A78()
{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CEE0C98(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_20D567C18();
  v2[4] = sub_20D567C08();
  v4 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CEE0D30, v4, v3);
}

uint64_t sub_20CEE0D30()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_20CEE0DE0;

  return sub_20CEDF698();
}

uint64_t sub_20CEE0DE0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 40);
  if (v2)
  {
    v8 = sub_20D5635C8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 40));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_20CEE0F64()
{
  v1[10] = v0;
  v2 = sub_20D565988();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_20D567C18();
  v1[16] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v1[17] = v4;
  v1[18] = v3;

  return MEMORY[0x2822009F8](sub_20CEE1070, v4, v3);
}

uint64_t sub_20CEE1070()
{
  v35 = v0;
  v1 = v0[10];
  swift_getKeyPath();
  v0[8] = v1;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__subscriptionService;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[19] = v3;
  if (v3)
  {
    v4 = v0[10];
    swift_getKeyPath();
    v0[9] = v4;
    v5 = v3;
    sub_20D563908();

    v6 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__selectedOTPMethod;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v0[20] = v7;
    if (v7)
    {
      sub_20D564D98();
      v8 = v7;
      v9 = sub_20D564D58();
      v0[21] = v9;
      v33 = (*MEMORY[0x277D181E8] + MEMORY[0x277D181E8]);
      v10 = swift_task_alloc();
      v0[22] = v10;
      *v10 = v0;
      v10[1] = sub_20CEE15A4;

      return v33(v8, v9);
    }

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v22 = qword_281120C18;
    sub_20D565998();
    v23 = sub_20D565968();
    v24 = sub_20D567EA8();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[12];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_20CEE913C(0x4F74736575716572, 0xEC00000029285054, v34);
      _os_log_impl(&dword_20CEB6000, v23, v24, "%s Unable to find factor", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x20F31FC70](v30, -1, -1);
      MEMORY[0x20F31FC70](v29, -1, -1);
    }

    (*(v28 + 8))(v26, v27);
    sub_20CEF5CA0();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
  }

  else
  {

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v12 = qword_281120C18;
    sub_20D565998();
    v13 = sub_20D565968();
    v14 = sub_20D567EA8();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_20CEE913C(0x4F74736575716572, 0xEC00000029285054, v34);
      _os_log_impl(&dword_20CEB6000, v13, v14, "%s Unable to find subscription service", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x20F31FC70](v20, -1, -1);
      MEMORY[0x20F31FC70](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    sub_20CEF5CA0();
    swift_allocError();
    *v21 = 13;
    swift_willThrow();
  }

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_20CEE15A4(char a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = *(v3 + 136);
    v5 = *(v3 + 144);
    v6 = sub_20CEE18EC;
  }

  else
  {

    v4 = *(v3 + 136);
    v5 = *(v3 + 144);
    v6 = sub_20CEE16C4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20CEE16C4()
{
  v21 = v0;

  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_281120C18;
  sub_20D565998();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v19 = *(v0 + 120);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_20CEE913C(0x4F74736575716572, 0xEC00000029285054, &v20);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_20CEB6000, v2, v3, "%s Requested OTP with result %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);

    (*(v8 + 8))(v19, v7);
  }

  else
  {
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 120);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);

    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v0 + 8);
  v17 = *(v0 + 192);

  return v16(v17);
}

uint64_t sub_20CEE18EC()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_20CEE1B00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_20D567C18();
  v2[4] = sub_20D567C08();
  v4 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CEE1B98, v4, v3);
}

uint64_t sub_20CEE1B98()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_20CEE1C48;

  return sub_20CEE0F64();
}

uint64_t sub_20CEE1C48(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = sub_20D5635C8();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 40));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_20CEE1DD8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_20D5637A8();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  v3[16] = swift_task_alloc();
  v5 = sub_20D565988();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = sub_20D564E58();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  sub_20D567C18();
  v3[27] = sub_20D567C08();
  v8 = sub_20D567BA8();
  v3[28] = v8;
  v3[29] = v7;

  return MEMORY[0x2822009F8](sub_20CEE1FF0, v8, v7);
}

uint64_t sub_20CEE1FF0()
{
  v38 = v0;
  v1 = v0[12];
  swift_getKeyPath();
  v0[8] = v1;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__subscriptionService;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[30] = v3;
  if (v3)
  {
    v4 = v0[12];
    swift_getKeyPath();
    v0[9] = v4;
    v5 = v3;
    sub_20D563908();

    v6 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__selectedOTPMethod;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v0[31] = v7;
    if (v7)
    {
      sub_20D564D98();
      v8 = v7;
      v9 = sub_20D564D58();
      v0[32] = v9;
      v36 = (*MEMORY[0x277D181B8] + MEMORY[0x277D181B8]);
      v10 = swift_task_alloc();
      v0[33] = v10;
      *v10 = v0;
      v10[1] = sub_20CEE255C;
      v11 = v0[26];
      v12 = v0[10];
      v13 = v0[11];

      return v36(v11, v8, v12, v13, v9);
    }

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v25 = qword_281120C18;
    sub_20D565998();
    v26 = sub_20D565968();
    v27 = sub_20D567EA8();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[20];
    v30 = v0[17];
    v31 = v0[18];
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5CCAA0, v37);
      _os_log_impl(&dword_20CEB6000, v26, v27, "%s Unable to find factor", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x20F31FC70](v33, -1, -1);
      MEMORY[0x20F31FC70](v32, -1, -1);
    }

    (*(v31 + 8))(v29, v30);
    sub_20CEF5CA0();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
  }

  else
  {

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v15 = qword_281120C18;
    sub_20D565998();
    v16 = sub_20D565968();
    v17 = sub_20D567EA8();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5CCAA0, v37);
      _os_log_impl(&dword_20CEB6000, v16, v17, "%s Unable to find subscription service", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F31FC70](v23, -1, -1);
      MEMORY[0x20F31FC70](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    sub_20CEF5CA0();
    swift_allocError();
    *v24 = 13;
    swift_willThrow();
  }

  v35 = v0[1];

  return v35(0);
}

uint64_t sub_20CEE255C()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_20CEE2F30;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_20CEE2678;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20CEE2678()
{
  v61 = v0;
  v1 = sub_20D564E38();
  if (v1)
  {

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v2 = qword_281120C18;
    sub_20D565998();
    v3 = v1;
    v4 = sub_20D565968();
    v5 = sub_20D567EC8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_20CEB6000, v4, v5, "Found tokens in verification response: %@", v6, 0xCu);
      sub_20CEF928C(v7, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v7, -1, -1);
      MEMORY[0x20F31FC70](v6, -1, -1);
    }

    v52 = v0[31];
    v53 = v0[30];
    v55 = v0[25];
    v9 = v0[23];
    v56 = v0[24];
    v58 = v0[26];
    v10 = v4;
    v11 = v1;
    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[15];
    v15 = v0[16];
    v16 = v0[14];
    v51 = v0[13];

    v17 = v12;
    v1 = v11;
    (*(v13 + 8))(v9, v17);
    v18 = sub_20D564CE8();
    sub_20CED58B0(v18, v19);
    v20 = sub_20D564CF8();
    sub_20CED58E0(v20, v21);
    sub_20D563788();
    sub_20D564D08();
    sub_20D563738();
    (*(v16 + 8))(v14, v51);
    (*(v16 + 56))(v15, 0, 1, v51);
    sub_20CED5AAC(v15);

    (*(v55 + 8))(v58, v56);
LABEL_7:

    v22 = v0[1];

    return v22(v1 != 0);
  }

  v24 = sub_20D564E48();
  v0[35] = v25;
  if (!v25)
  {

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v38 = qword_281120C18;
    sub_20D565998();
    v39 = sub_20D565968();
    v40 = sub_20D567EA8();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[30];
    v43 = v0[31];
    v45 = v0[25];
    v44 = v0[26];
    v57 = v0[21];
    v59 = v0[24];
    v47 = v0[17];
    v46 = v0[18];
    if (v41)
    {
      v48 = swift_slowAlloc();
      v54 = v44;
      v49 = swift_slowAlloc();
      v60 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5CCAA0, &v60);
      _os_log_impl(&dword_20CEB6000, v39, v40, "%s Account Verification response doesn't contain a token set or auth code.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x20F31FC70](v49, -1, -1);
      v50 = v48;
      v1 = 0;
      MEMORY[0x20F31FC70](v50, -1, -1);

      (*(v46 + 8))(v57, v47);
      (*(v45 + 8))(v54, v59);
    }

    else
    {

      (*(v46 + 8))(v57, v47);
      (*(v45 + 8))(v44, v59);
    }

    goto LABEL_7;
  }

  v26 = v24;
  v27 = v25;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v28 = qword_281120C18;
  sub_20D565998();
  sub_20D5663C8();
  v29 = sub_20D565968();
  v30 = sub_20D567EC8();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[22];
  v33 = v0[17];
  v34 = v0[18];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v60 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_20CEE913C(v26, v27, &v60);
    _os_log_impl(&dword_20CEB6000, v29, v30, "Found auth code in verification response: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x20F31FC70](v36, -1, -1);
    MEMORY[0x20F31FC70](v35, -1, -1);
  }

  (*(v34 + 8))(v32, v33);
  v37 = swift_task_alloc();
  v0[36] = v37;
  *v37 = v0;
  v37[1] = sub_20CEE2CE4;

  return sub_20CEE310C(v26, v27);
}

uint64_t sub_20CEE2CE4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_20CEE3014;
  }

  else
  {
    v5 = sub_20CEE2E38;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20CEE2E38()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[25];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6(1);
}

uint64_t sub_20CEE2F30()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_20CEE3014()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[25];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_20CEE310C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_20D5637A8();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  v3[12] = swift_task_alloc();
  v5 = sub_20D565988();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_20D567C18();
  v3[18] = sub_20D567C08();
  v7 = sub_20D567BA8();
  v3[19] = v7;
  v3[20] = v6;

  return MEMORY[0x2822009F8](sub_20CEE32B0, v7, v6);
}

uint64_t sub_20CEE32B0()
{
  v34 = v0;
  v1 = v0[8];
  swift_getKeyPath();
  v0[5] = v1;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__subscriptionService;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[21] = v3;
  if (v3)
  {
    v4 = qword_27C81A2D8;
    v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_27C838280;
    v0[22] = qword_27C838280;
    v6 = v5;
    sub_20D565998();
    v7 = sub_20D565968();
    v8 = sub_20D567EC8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[14];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_20CEE913C(0xD00000000000001CLL, 0x800000020D5CCAC0, v33);
      _os_log_impl(&dword_20CEB6000, v7, v8, "%s About to generate tokens", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x20F31FC70](v14, -1, -1);
      MEMORY[0x20F31FC70](v13, -1, -1);
    }

    v15 = *(v12 + 8);
    v15(v10, v11);
    v0[23] = v15;
    sub_20D564D98();
    v16 = sub_20D564D58();
    v0[24] = v16;
    v32 = (*MEMORY[0x277D181D0] + MEMORY[0x277D181D0]);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_20CEE3748;
    v19 = v0[6];
    v18 = v0[7];

    return v32(v19, v18, v16);
  }

  else
  {

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v21 = qword_281120C18;
    sub_20D565998();
    v22 = sub_20D565968();
    v23 = sub_20D567EA8();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[14];
    v25 = v0[15];
    v27 = v0[13];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_20CEE913C(0xD00000000000001CLL, 0x800000020D5CCAC0, v33);
      _os_log_impl(&dword_20CEB6000, v22, v23, "%s Unable to find subscription service", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x20F31FC70](v29, -1, -1);
      MEMORY[0x20F31FC70](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
    sub_20CEF5CA0();
    swift_allocError();
    *v30 = 13;
    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_20CEE3748(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 160);
    v6 = sub_20CEE3B50;
  }

  else
  {

    v4 = *(v3 + 152);
    v5 = *(v3 + 160);
    v6 = sub_20CEE3864;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20CEE3864()
{
  v31 = v0;
  v1 = v0[26];
  v2 = v0[22];

  v3 = v2;
  sub_20D565998();
  v4 = v1;
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v29 = v0[23];
    v8 = v0[16];
    v9 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20CEE913C(0xD00000000000001CLL, 0x800000020D5CCAC0, &v30);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_20CEB6000, v5, v6, "%s ---: Tokens %@", v10, 0x16u);
    sub_20CEF928C(v11, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);

    v29(v8, v9);
  }

  else
  {
    v14 = v0[23];
    v15 = v0[16];
    v16 = v0[13];

    v14(v15, v16);
  }

  v17 = v0[26];
  v18 = v0[21];
  v19 = v0[11];
  v20 = v0[12];
  v22 = v0[9];
  v21 = v0[10];
  v23 = sub_20D564CE8();
  sub_20CED58B0(v23, v24);
  v25 = sub_20D564CF8();
  sub_20CED58E0(v25, v26);
  sub_20D563788();
  sub_20D564D08();
  sub_20D563738();
  (*(v21 + 8))(v19, v22);
  (*(v21 + 56))(v20, 0, 1, v22);
  sub_20CED5AAC(v20);

  v27 = v0[1];

  return v27();
}

uint64_t sub_20CEE3B50()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CEE3D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_20D567C18();
  v3[5] = sub_20D567C08();
  v5 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CEE3E28, v5, v4);
}

uint64_t sub_20CEE3E28()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_20D567838();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_20CEE3F04;

  return sub_20CEE310C(v3, v5);
}

uint64_t sub_20CEE3F04()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *v1;

  v7 = *(v3 + 48);
  if (v2)
  {
    v8 = sub_20D5635C8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_20CEE40A4()
{
  v1[22] = v0;
  v2 = sub_20D565988();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  sub_20D567C18();
  v1[26] = sub_20D567C08();
  v3 = sub_20D567BA8();
  v1[27] = v3;
  v1[28] = v4;

  return MEMORY[0x2822009F8](sub_20CEE41CC, v3, v4);
}

uint64_t sub_20CEE41CC()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  swift_getKeyPath();
  v0[16] = v1;
  v0[29] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  v0[30] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v2 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__subscriptionService;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[31] = v3;
  if (v3)
  {
    v4 = v0[22];
    swift_getKeyPath();
    v0[17] = v4;
    v3;
    sub_20D563908();

    v5 = (v4 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__accessToken);
    swift_beginAccess();
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    v0[32] = v8;
    sub_20D564D98();
    sub_20D5663C8();
    v21 = sub_20D564D58();
    v0[33] = v21;
    v22 = MEMORY[0x277D18198];
    v23 = *MEMORY[0x277D18198];
    v24 = swift_task_alloc();
    v0[34] = v24;
    *v24 = v0;
    v24[1] = sub_20CEE45B4;

    return ((v23 + v22))(v7, v8, v21);
  }

  else
  {

    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v9 = qword_281120C18;
    sub_20D565998();
    v10 = sub_20D565968();
    v11 = sub_20D567EA8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[24];
    v13 = v0[25];
    v15 = v0[23];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5CCAE0, v25);
      _os_log_impl(&dword_20CEB6000, v10, v11, "%s Unable to find subscription service", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F31FC70](v17, -1, -1);
      MEMORY[0x20F31FC70](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);

    v18 = v0[1];
    v19 = MEMORY[0x277D84F90];

    return v18(v19);
  }
}

uint64_t sub_20CEE45B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = *(v3 + 216);
    v5 = *(v3 + 224);
    v6 = sub_20CEE4B1C;
  }

  else
  {

    v4 = *(v3 + 216);
    v5 = *(v3 + 224);
    v6 = sub_20CEE470C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20CEE470C()
{
  v1 = *(v0 + 280);

  if (v1 >> 62)
  {
    v2 = sub_20D568768();
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
      v29 = MEMORY[0x277D84F90];
      sub_20CEF0AE8(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
      }

      v3 = 0;
      v4 = v29;
      v5 = v1 & 0xC000000000000001;
      v6 = *(v0 + 288);
      v27 = *(v0 + 280) + 32;
      v28 = v5;
      while (1)
      {
        if (v28)
        {
          v7 = MEMORY[0x20F31DD20](v3, *(v0 + 280));
        }

        else
        {
          v7 = *(v27 + 8 * v3);
        }

        v8 = v7;
        *(v0 + 144) = v7;
        sub_20D563378();
        swift_allocObject();
        sub_20D563368();
        sub_20D564CB8();
        sub_20CEF5EB0(&qword_27C81BE98, MEMORY[0x277D18170]);
        v9 = sub_20D563358();
        if (v6)
        {
        }

        else
        {
          v14 = v9;
          v15 = v10;

          v16 = objc_opt_self();
          v17 = sub_20D5636C8();
          *(v0 + 160) = 0;
          v18 = [v16 JSONObjectWithData:v17 options:0 error:v0 + 160];

          v19 = *(v0 + 160);
          if (v18)
          {
            sub_20D568628();
            sub_20CEF5EF8(v14, v15);
            swift_unknownObjectRelease();
          }

          else
          {
            v20 = v19;
            v21 = sub_20D5635D8();

            swift_willThrow();
            sub_20CEF5EF8(v14, v15);

            v30 = 0u;
            v31 = 0u;
          }

          *(v0 + 16) = v30;
          *(v0 + 32) = v31;
          if (*(v0 + 40))
          {
            sub_20CEC80B0((v0 + 16), (v0 + 48));
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
            if (swift_dynamicCast())
            {
              v11 = *(v0 + 168);
              if (v11)
              {

                goto LABEL_11;
              }
            }
          }
        }

        v11 = MEMORY[0x277D84F98];
LABEL_11:
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_20CEF0AE8((v12 > 1), v13 + 1, 1);
        }

        v6 = 0;
        ++v3;
        *(v29 + 16) = v13 + 1;
        *(v29 + 8 * v13 + 32) = v11;
        if (v2 == v3)
        {

          goto LABEL_24;
        }
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_24:
  v22 = *(v0 + 248);
  v23 = *(v0 + 176);
  swift_getKeyPath();
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  *(v24 + 24) = v4;
  *(v0 + 152) = v23;
  sub_20D5638F8();

  v25 = *(v0 + 8);

  return v25(v4);
}

uint64_t sub_20CEE4B1C()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CEE4BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_20D563818();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = sub_20D565988();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  v5[30] = swift_task_alloc();
  v8 = sub_20D5637A8();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  sub_20D567C18();
  v5[34] = sub_20D567C08();
  v10 = sub_20D567BA8();
  v5[35] = v10;
  v5[36] = v9;

  return MEMORY[0x2822009F8](sub_20CEE4DD4, v10, v9);
}

uint64_t sub_20CEE4DD4()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[22];
  swift_getKeyPath();
  v0[14] = v4;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__expirationDate;
  swift_beginAccess();
  sub_20CEF9178(v4 + v5, v3, &unk_27C8207C0);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v0[32] + 32))(v0[33], v0[30], v0[31]);
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v18 = qword_27C838280;
    sub_20D565998();
    sub_20D5663C8();
    v19 = sub_20D565968();
    v20 = sub_20D567E98();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[29];
    v24 = v0[26];
    v23 = v0[27];
    if (v21)
    {
      v45 = v0[21];
      v46 = v0[29];
      v25 = v0[20];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_20CEE913C(0xD00000000000002ELL, 0x800000020D5CCB00, &v49);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_20CEE913C(v25, v45, &v49);
      _os_log_impl(&dword_20CEB6000, v19, v20, "%s Given address %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v27, -1, -1);
      MEMORY[0x20F31FC70](v26, -1, -1);

      (*(v23 + 8))(v46, v24);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v29 = v0[24];
    v28 = v0[25];
    v31 = v0[22];
    v30 = v0[23];
    v32 = *(v31 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext_home);
    v0[37] = [v32 hf_energyManager];
    v33 = [v32 uniqueIdentifier];
    sub_20D5637E8();

    sub_20D5637B8();
    v0[38] = v34;
    (*(v29 + 8))(v28, v30);
    swift_getKeyPath();
    v0[15] = v31;
    sub_20D563908();

    v35 = v31 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID;
    swift_beginAccess();
    if (*(v35 + 8))
    {
      v36 = *(v35 + 8);
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v0[39] = v36;
    v37 = v0[22];
    swift_getKeyPath();
    v0[16] = v37;
    sub_20D5663C8();
    sub_20D563908();

    v38 = v37 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__accessToken;
    swift_beginAccess();
    if (*(v38 + 8))
    {
      v39 = *(v38 + 8);
    }

    else
    {
      v39 = 0xE000000000000000;
    }

    v0[40] = v39;
    v40 = v0[22];
    swift_getKeyPath();
    v0[17] = v40;
    sub_20D5663C8();
    sub_20D563908();

    v41 = v40 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__refreshToken;
    swift_beginAccess();
    if (*(v41 + 8))
    {
      v42 = *(v41 + 8);
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    v0[41] = v42;
    sub_20D5663C8();
    sub_20CEDA2B4();
    v0[42] = v43;
    v47 = *MEMORY[0x277D13240] + MEMORY[0x277D13240];
    v44 = swift_task_alloc();
    v0[43] = v44;
    *v44 = v0;
    v44[1] = sub_20CEE553C;

    __asm { BR              X8 }
  }

  v6 = v0[30];

  sub_20CEF928C(v6, &unk_27C8207C0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v7 = qword_27C838280;
  sub_20D565998();
  v8 = sub_20D565968();
  v9 = sub_20D567EA8();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[26];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20CEE913C(0xD00000000000002ELL, 0x800000020D5CCB00, &v49);
    _os_log_impl(&dword_20CEB6000, v8, v9, "%s No expiration date found", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F31FC70](v15, -1, -1);
    MEMORY[0x20F31FC70](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_20CEE553C(char a1)
{
  v3 = *v2;
  *(v3 + 352) = v1;

  v4 = *(v3 + 296);

  if (v1)
  {

    v5 = *(v3 + 280);
    v6 = *(v3 + 288);
    v7 = sub_20CEE581C;
  }

  else
  {

    *(v3 + 360) = a1 & 1;

    v5 = *(v3 + 280);
    v6 = *(v3 + 288);
    v7 = sub_20CEE5750;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20CEE5750()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 360);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_20CEE581C()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_20CEE58EC()
{
  v1[2] = v0;
  v2 = sub_20D565988();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_20D567C18();
  v1[6] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_20CEE59E0, v4, v3);
}

uint64_t sub_20CEE59E0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext_home);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_20CEE5A94;

  return sub_20CF2285C(v1);
}

uint64_t sub_20CEE5A94(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_20CEE5BBC, v4, v3);
}

uint64_t sub_20CEE5BBC()
{
  v26 = v0;
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = qword_27C838280;
  sub_20D565998();
  v3 = v1;
  sub_20D5663C8();
  v4 = sub_20D565968();
  v5 = sub_20D567EC8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = v0[4];
    v8 = v0[2];
    v23 = v0[3];
    v24 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = v8;
    *(v9 + 14) = sub_20CEE913C(0x6C697455646E6966, 0xEF29287365697469, &v25);
    *(v9 + 22) = 2080;
    v13 = MEMORY[0x20F31CF30](v6, MEMORY[0x277D837D0]);
    v15 = sub_20CEE913C(v13, v14, &v25);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%@:%s Utilities found: %s", v9, 0x20u);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);

    (*(v7 + 8))(v24, v23);
  }

  else
  {
    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];

    (*(v17 + 8))(v16, v18);
  }

  if (*(v0[10] + 16))
  {
    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    v19[1] = sub_20CEE5EE8;
    v20 = v0[10];

    return sub_20CEE6094(v20);
  }

  else
  {

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_20CEE5EE8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_20CEE602C, v3, v2);
}

uint64_t sub_20CEE602C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CEE6094(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = type metadata accessor for Utility();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v4 = sub_20D565988();
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = sub_20D567C18();
  v2[54] = sub_20D567C08();

  return MEMORY[0x2822009F8](sub_20CEE61D4, 0, 0);
}

uint64_t sub_20CEE61D4()
{
  v1 = v0[44];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BEA0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BEA8);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_20CEE62F0;

  return MEMORY[0x282200600](v0 + 41, v2, v3, 0, 0, &unk_20D5BC960, v4, v2);
}

uint64_t sub_20CEE62F0()
{

  return MEMORY[0x2822009F8](sub_20CEE6408, 0, 0);
}

uint64_t sub_20CEE6408()
{
  *(v0 + 456) = *(v0 + 328);
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CEE6488, v2, v1);
}

uint64_t sub_20CEE6488()
{
  v93 = v0;
  v1 = *(v0 + 456);

  v92[0] = v1;
  sub_20D5663C8();
  sub_20CEF1AAC(v92);

  v2 = v92[0];
  v3 = sub_20D564B68();
  *(v0 + 312) = v3;
  *(v0 + 320) = sub_20CEF5EB0(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 288));
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v3);
  LOBYTE(v3) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  if (v3)
  {
    if (qword_28111FAF0 == -1)
    {
LABEL_3:
      v5 = qword_281120C18;
      sub_20D565998();

      v6 = sub_20D565968();
      v7 = sub_20D567EC8();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 416);
      v10 = *(v0 + 392);
      v11 = *(v0 + 400);
      if (v8)
      {
        v89 = *(v0 + 416);
        v12 = v2;
        v13 = *(v0 + 368);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v92[0] = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5CCB30, v92);
        *(v14 + 12) = 2080;
        v16 = MEMORY[0x20F31CF30](v12, v13);
        v18 = sub_20CEE913C(v16, v17, v92);
        v2 = v12;

        *(v14 + 14) = v18;
        _os_log_impl(&dword_20CEB6000, v6, v7, "%s Sorted utility list %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v15, -1, -1);
        MEMORY[0x20F31FC70](v14, -1, -1);

        (*(v11 + 8))(v89, v10);
      }

      else
      {

        (*(v11 + 8))(v9, v10);
      }

      v66 = *(v0 + 360);
      swift_getKeyPath();
      v67 = swift_task_alloc();
      *(v67 + 16) = v66;
      *(v67 + 24) = v2;
      *(v0 + 344) = v66;
      sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
      sub_20D5638F8();

      goto LABEL_30;
    }

LABEL_35:
    swift_once();
    goto LABEL_3;
  }

  v19 = v2[2];
  if (v19)
  {
    v20 = *(v0 + 376);
    v87 = *(v0 + 384);
    v21 = v2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE40);
    v22 = v21;
    v23 = MEMORY[0x277D84F90];
    v86 = *(v20 + 72);
    v24 = &unk_27C81BE70;
    v25 = &unk_20D5C0FD0;
    while (1)
    {
      v88 = v22;
      v90 = v19;
      v26 = *(v0 + 384);
      sub_20CEF8F9C(v22, v26, type metadata accessor for Utility);
      *(v0 + 48) = 0x656D614E676E6F6CLL;
      *(v0 + 56) = 0xE800000000000000;
      v27 = v87[5];
      *(v0 + 64) = v87[4];
      *(v0 + 72) = v27;
      v28 = MEMORY[0x277D837D0];
      *(v0 + 88) = MEMORY[0x277D837D0];
      *(v0 + 96) = 1701667182;
      *(v0 + 104) = 0xE400000000000000;
      v29 = v24;
      v30 = v87[3];
      *(v0 + 112) = v87[2];
      *(v0 + 120) = v30;
      *(v0 + 136) = v28;
      *(v0 + 144) = 0x497974696C697475;
      *(v0 + 152) = 0xE900000000000044;
      v31 = v87[1];
      *(v0 + 160) = *v26;
      *(v0 + 168) = v31;
      *(v0 + 184) = v28;
      *(v0 + 192) = 1869049708;
      *(v0 + 200) = 0xE400000000000000;
      v32 = v25;
      v33 = v23;
      v34 = v87[6];
      v35 = v34;
      sub_20D5663C8();
      v24 = v29;
      sub_20D5663C8();
      sub_20D5663C8();
      sub_20CEF9004(v26, type metadata accessor for Utility);
      *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BEC0);
      *(v0 + 208) = v34;
      v23 = v33;
      v25 = v32;
      v36 = sub_20D568AD8();

      sub_20CEF9178(v0 + 48, v0 + 240, v29);
      v2 = *(v0 + 240);
      v37 = *(v0 + 248);
      v38 = sub_20CEED668(v2, v37);
      if (v39)
      {
        break;
      }

      v40 = v36 + 8;
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
      v41 = (v36[6] + 16 * v38);
      *v41 = v2;
      v41[1] = v37;
      sub_20CEC80B0((v0 + 256), (v36[7] + 32 * v38));
      v42 = v36[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_34;
      }

      v36[2] = v44;
      sub_20CEF9178(v0 + 96, v0 + 240, v29);
      v2 = *(v0 + 240);
      v45 = *(v0 + 248);
      v46 = sub_20CEED668(v2, v45);
      if (v47)
      {
        break;
      }

      *(v40 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v48 = (v36[6] + 16 * v46);
      *v48 = v2;
      v48[1] = v45;
      sub_20CEC80B0((v0 + 256), (v36[7] + 32 * v46));
      v49 = v36[2];
      v43 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v43)
      {
        goto LABEL_34;
      }

      v36[2] = v50;
      sub_20CEF9178(v0 + 144, v0 + 240, v29);
      v2 = *(v0 + 240);
      v51 = *(v0 + 248);
      v52 = sub_20CEED668(v2, v51);
      if (v53)
      {
        break;
      }

      *(v40 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v54 = (v36[6] + 16 * v52);
      *v54 = v2;
      v54[1] = v51;
      sub_20CEC80B0((v0 + 256), (v36[7] + 32 * v52));
      v55 = v36[2];
      v43 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v43)
      {
        goto LABEL_34;
      }

      v36[2] = v56;
      sub_20CEF9178(v0 + 192, v0 + 240, v29);
      v2 = *(v0 + 240);
      v57 = *(v0 + 248);
      v58 = sub_20CEED668(v2, v57);
      if (v59)
      {
        break;
      }

      *(v40 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      v60 = (v36[6] + 16 * v58);
      *v60 = v2;
      v60[1] = v57;
      sub_20CEC80B0((v0 + 256), (v36[7] + 32 * v58));
      v61 = v36[2];
      v43 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v43)
      {
        goto LABEL_34;
      }

      v36[2] = v62;

      __swift_instantiateConcreteTypeFromMangledNameV2(v29);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_20CEE8C94(0, v23[2] + 1, 1, v23, &qword_27C81C2D0, &unk_20D5BCFD8, &unk_27C820E30);
      }

      v63 = v88;
      v65 = v23[2];
      v64 = v23[3];
      if (v65 >= v64 >> 1)
      {
        v23 = sub_20CEE8C94((v64 > 1), v65 + 1, 1, v23, &qword_27C81C2D0, &unk_20D5BCFD8, &unk_27C820E30);
        v63 = v88;
      }

      v23[2] = v65 + 1;
      v23[v65 + 4] = v36;
      v22 = v63 + v86;
      v19 = v90 - 1;
      if (v90 == 1)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_24:
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v68 = qword_281120C18;
  sub_20D565998();
  v69 = sub_20D565968();
  v70 = sub_20D567EC8();
  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 400);
  v73 = *(v0 + 408);
  v74 = *(v0 + 392);
  if (v71)
  {
    v91 = *(v0 + 408);
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v92[0] = v76;
    *v75 = 136315394;
    *(v75 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5CCB30, v92);
    *(v75 + 12) = 2080;
    sub_20D5663C8();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
    v78 = MEMORY[0x20F31CF30](v23, v77);
    v80 = v79;

    v81 = sub_20CEE913C(v78, v80, v92);

    *(v75 + 14) = v81;
    _os_log_impl(&dword_20CEB6000, v69, v70, "%s Sorted utility list %s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v76, -1, -1);
    MEMORY[0x20F31FC70](v75, -1, -1);

    (*(v72 + 8))(v91, v74);
  }

  else
  {

    (*(v72 + 8))(v73, v74);
  }

  v82 = *(v0 + 360);
  swift_getKeyPath();
  v83 = swift_task_alloc();
  *(v83 + 16) = v82;
  *(v83 + 24) = v23;
  *(v0 + 336) = v82;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D5663C8();
  sub_20D5638F8();
  swift_bridgeObjectRelease_n();
LABEL_30:

  v84 = *(v0 + 8);

  return v84();
}

void sub_20CEE6F44()
{
  swift_getKeyPath();
  v5 = v0;
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v1 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogo;
  swift_beginAccess();
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  v4 = v2;
  sub_20CED5054(v2);
}

void sub_20CEE70AC(void *a1)
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v3 = *(v1 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [a1 customIconContainerView];
  if (!v5)
  {

LABEL_5:
    v23 = sub_20D5677F8();
    v8 = HUImageNamed(v23);

    v22 = sub_20D5677F8();
    [a1 setIcon:v8 accessibilityLabel:v22];
    goto LABEL_6;
  }

  v6 = v5;
  v7 = v4;
  [v6 addSubview_];
  v8 = v6;
  v9 = sub_20D5677F8();
  [v8 setAccessibilityIdentifier_];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20D5BC4C0;
  v12 = [v7 centerXAnchor];

  v13 = [v8 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [v7 centerYAnchor];

  v16 = [v8 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v11 + 40) = v17;
  v18 = [v7 heightAnchor];

  v19 = [v18 constraintEqualToConstant_];
  *(v11 + 48) = v19;
  v20 = [v7 widthAnchor];

  v21 = [v20 constraintEqualToConstant_];
  *(v11 + 56) = v21;
  sub_20CECF940(0, &qword_28111FEC0);
  v22 = sub_20D567A58();

  [v10 activateConstraints_];

LABEL_6:
}

uint64_t sub_20CEE746C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t))
{
  v8 = sub_20D567838();
  v10 = v9;
  v11 = a3;
  v12 = a1;
  a5(v11, v8, v10);
}

id UtilityOnboardingContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UtilityOnboardingContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t UtilityOnboardingMethod.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20CEE77C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20CEF616C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_20CEE77F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_20D568D48();
    MEMORY[0x20F31E200](v13);
    result = sub_20D568D98();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEE7968(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_20D568D48();
    sub_20D5663C8();
    sub_20D5678C8();
    v16 = sub_20D568D98();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_20D568BF8() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEE7B20(unint64_t a1, unint64_t a2)
{
  sub_20CECF940(0, &qword_28111FFF0);
  if (a2 >> 62)
  {
    v4 = sub_20D568A98();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_20D568858();
    v6 = 0xD000000000000046;
    v5 = 0x800000020D5CD0B0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_20D568858();
  v5 = 0x800000020D5CD060;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x20F31CDB0](v6, v5);
  v8 = sub_20D568E18();
  MEMORY[0x20F31CDB0](v8);

  MEMORY[0x20F31CDB0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_20D568E18();
  MEMORY[0x20F31CDB0](v9);

  result = sub_20D568A68();
  __break(1u);
  return result;
}

char *sub_20CEE7CFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_20CEE7E24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CEE7F6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D470);
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

void *sub_20CEE809C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DBA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CEE81E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20CEE83B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20CEE84D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C7A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20CEE868C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C170);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CEE87C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_20CEE88C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CEE89EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_20CEE8B44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821640);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_20CEE8C94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_20CEE8DC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20CEE8F60(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_20CEE913C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_20D5663C8();
  v6 = sub_20CEE9208(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_20CED43FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20CEE9208(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20CEE9314(a5, a6);
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
    result = sub_20D568898();
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

uint64_t sub_20CEE9314(uint64_t a1, unint64_t a2)
{
  v3 = sub_20CEE9360(a1, a2);
  sub_20CEE9490(&unk_2823CE1E8);
  return v3;
}

uint64_t sub_20CEE9360(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20CEE957C(v5, 0);
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

  result = sub_20D568898();
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
        v10 = sub_20D567918();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CEE957C(v10, 0);
        result = sub_20D568848();
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

uint64_t sub_20CEE9490(uint64_t result)
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

  result = sub_20CEE95F0(result, v11, 1, v3);
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

void *sub_20CEE957C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C2E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CEE95F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C2E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_20CEE96E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &qword_27C81AE50);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF80128(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C03F4(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &qword_27C81AE50);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEB21C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEE991C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &unk_27C81AE40);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF80318(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0408(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &unk_27C81AE40);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEB3AC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEE9B54(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &unk_27C81A3F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF80508(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0430(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &unk_27C81A3F0);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEB53C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEE9D8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20D568D48();
  sub_20D5678C8();
  v8 = sub_20D568D98();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20D568BF8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_20D5663C8();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_20D5663C8();
    sub_20CEEB6CC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20CEE9EDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20CEF5EB0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  v33 = a2;
  v11 = sub_20D5677B8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20CEF5EB0(qword_27C820680, MEMORY[0x277CC95F0]);
      v21 = sub_20D5677E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20CEEB84C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20CEEA1BC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &qword_281120AC0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF806F8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C041C(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &qword_281120AC0);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEBAF0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEEA3F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF808E8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0A14(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18);

    *v3 = v19;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEBC80(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEEA624(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &qword_28111FB80);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF80ADC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0A28(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &qword_28111FB80);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEBE14(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEEA85C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &qword_28111FEA8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF80CCC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0A3C(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &qword_28111FEA8);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEBFA4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEEAA94(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &qword_28111FB10);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF80EBC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0A50(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &qword_28111FB10);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEC134(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEEACCC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &unk_27C81D480);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF810AC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0A78(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &unk_27C81D480);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEC2C4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEEAF04(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_20D5663C8();
    v9 = sub_20D568778();

    if (v9)
    {

      sub_20CECF940(0, &unk_27C81BF40);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20D568768();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20CF8129C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D0C0A8C(v20 + 1);
    }

    v18 = v8;
    sub_20D0C5E50(v18);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20CECF940(0, &unk_27C81BF40);
  v11 = sub_20D5683E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20CEEC454(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20D5683F8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20CEEB13C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_20D568D38();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_20CEEC5E4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_20CEEB21C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C03F4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&qword_27C81C038);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &qword_27C81C038);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &qword_27C81AE50);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEB3AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0408(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&qword_27C81C240);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &qword_27C81C240);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &unk_27C81AE40);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEB53C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0430(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&unk_27C820E90);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &unk_27C820E90);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &unk_27C81A3F0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

uint64_t sub_20CEEB6CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20D0C0444();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20CEEC704();
      goto LABEL_16;
    }

    sub_20CEECD18();
  }

  v10 = *v4;
  sub_20D568D48();
  sub_20D5678C8();
  result = sub_20D568D98();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20D568BF8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20D568C58();
  __break(1u);
  return result;
}

uint64_t sub_20CEEB84C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C06A4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_20CEEC860();
      goto LABEL_12;
    }

    sub_20CEECF50();
  }

  v12 = *v3;
  sub_20CEF5EB0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  v13 = sub_20D5677B8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20CEF5EB0(qword_27C820680, MEMORY[0x277CC95F0]);
      v21 = sub_20D5677E8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20D568C58();
  __break(1u);
  return result;
}

void sub_20CEEBAF0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C041C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&unk_27C820C70);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &unk_27C820C70);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &qword_281120AC0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEBC80(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0A14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&qword_27C81C1A0);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &qword_27C81C1A0);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEBE14(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0A28(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&unk_27C81C1E0);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &unk_27C81C1E0);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &qword_28111FB80);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEBFA4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0A3C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&qword_27C81C1C0);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &qword_27C81C1C0);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &qword_28111FEA8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEC134(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0A50(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&unk_27C81C140);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &unk_27C81C140);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &qword_28111FB10);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEC2C4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0A78(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&unk_27C820E80);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &unk_27C820E80);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &unk_27C81D480);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

void sub_20CEEC454(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0A8C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20CEECA98(&qword_27C81BF50);
      goto LABEL_12;
    }

    sub_20CEED26C(v6 + 1, &qword_27C81BF50);
  }

  v8 = *v3;
  v9 = sub_20D5683E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20CECF940(0, &unk_27C81BF40);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20D5683F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20D568C58();
  __break(1u);
}

uint64_t sub_20CEEC5E4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D0C0CC0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_20CEECBD8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20CEED478();
  }

  v8 = *v3;
  result = sub_20D568D38();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20D568C58();
  __break(1u);
  return result;
}

void *sub_20CEEC704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2E0);
  v2 = *v0;
  v3 = sub_20D568808();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_20D5663C8();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20CEEC860()
{
  v1 = v0;
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C0F0);
  v6 = *v0;
  v7 = sub_20D568808();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_20CEECA98(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_20D568808();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_20CEECBD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820EA0);
  v2 = *v0;
  v3 = sub_20D568808();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CEECD18()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2E0);
  result = sub_20D568818();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_20D568D48();
      sub_20D5663C8();
      sub_20D5678C8();
      result = sub_20D568D98();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CEECF50()
{
  v1 = v0;
  v32 = sub_20D563818();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C0F0);
  v6 = sub_20D568818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20CEF5EB0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      result = sub_20D5677B8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20CEED26C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_20D568818();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_20D5683E8();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_20CEED478()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820EA0);
  result = sub_20D568818();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_20D568D38();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_20CEED668(uint64_t a1, uint64_t a2)
{
  sub_20D568D48();
  sub_20D5678C8();
  v4 = sub_20D568D98();

  return sub_20CEEDF9C(a1, a2, v4);
}