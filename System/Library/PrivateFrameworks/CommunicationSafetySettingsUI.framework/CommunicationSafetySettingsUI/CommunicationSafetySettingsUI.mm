uint64_t sub_21CDC9CF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21CDDBB2C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21CDC9D5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB90, &qword_21CDDCAA8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CDC9DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB90, &qword_21CDDCAA8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_21CDC9E9C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21CDD2EFC();
}

uint64_t sub_21CDC9EC4()
{
  v1 = *(type metadata accessor for SafetyResourcesSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB0, &qword_21CDDCC40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CDDB91C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CDC9FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB90, &qword_21CDDCAA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CDCA090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB90, &qword_21CDDCAA8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CDCA18C()
{
  v1 = type metadata accessor for ImproveNudityDetectionExplainerText(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB0, &qword_21CDDCC40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CDDB91C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CDCA308()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3EC88, &qword_21CDDCE98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3EC80, &qword_21CDDCE90);
  sub_21CDDB7CC();
  sub_21CDD04F8(&qword_27CE3ECA0, &qword_27CE3EC80, &qword_21CDDCE90);
  sub_21CDD16E8(&qword_27CE3ECA8, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21CDCA434@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_21CDCA4F8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_21CDD1C88();
}

uint64_t sub_21CDCA558@<X0>(void *a1@<X8>)
{
  result = sub_21CDDB81C();
  *a1 = v3;
  return result;
}

id sub_21CDCA5F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21CDCA628()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28120E978 = result;
  return result;
}

id static NSBundle.communicationSafetySettingsUI.getter()
{
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28120E978;

  return v0;
}

void static NSBundle.communicationSafetySettingsUI.setter(uint64_t a1)
{
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28120E978;
  qword_28120E978 = a1;
}

uint64_t (*static NSBundle.communicationSafetySettingsUI.modify())()
{
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_21CDCA85C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_21CDCA8A8(uint64_t a1, id *a2)
{
  result = sub_21CDDBB0C();
  *a2 = 0;
  return result;
}

uint64_t sub_21CDCA920(uint64_t a1, id *a2)
{
  v3 = sub_21CDDBB1C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21CDCA9A0@<X0>(uint64_t *a1@<X8>)
{
  sub_21CDDBB2C();
  v2 = sub_21CDDBAFC();

  *a1 = v2;
  return result;
}

uint64_t sub_21CDCA9E4()
{
  v1 = *v0;
  v2 = sub_21CDDBB2C();
  v3 = MEMORY[0x21CF18BF0](v2);

  return v3;
}

uint64_t sub_21CDCAA20()
{
  v1 = *v0;
  sub_21CDDBB2C();
  sub_21CDDBB5C();
}

uint64_t sub_21CDCAA74()
{
  v1 = *v0;
  sub_21CDDBB2C();
  sub_21CDDBE6C();
  sub_21CDDBB5C();
  v2 = sub_21CDDBE8C();

  return v2;
}

uint64_t sub_21CDCAAE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21CDDBB2C();
  v6 = v5;
  if (v4 == sub_21CDDBB2C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CDDBE4C();
  }

  return v9 & 1;
}

uint64_t sub_21CDCAB70(uint64_t a1)
{
  v2 = sub_21CDCADC0(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
  v3 = sub_21CDCADC0(&unk_27CE3EAD0, type metadata accessor for MOUserSafetyScannableServices);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDCAC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21CDDBAFC();

  *a2 = v5;
  return result;
}

uint64_t sub_21CDCAC74(uint64_t a1)
{
  v2 = sub_21CDCADC0(&qword_28120E9A8, type metadata accessor for Name);
  v3 = sub_21CDCADC0(&unk_27CE3EAE0, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDCADC0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21CDCB16C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_21CDDBAFC();

  return v3;
}

uint64_t sub_21CDCB2EC()
{
  sub_21CDDBE6C();
  MEMORY[0x21CF18EE0](0);
  return sub_21CDDBE8C();
}

uint64_t sub_21CDCB358()
{
  sub_21CDDBE6C();
  MEMORY[0x21CF18EE0](0);
  return sub_21CDDBE8C();
}

NudityDetectionPreferencesHelper __swiftcall NudityDetectionPreferencesHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NudityDetectionPreferencesHelper()
{
  result = qword_27CE3EB50;
  if (!qword_27CE3EB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE3EB50);
  }

  return result;
}

unint64_t sub_21CDCB504()
{
  result = qword_28120E980;
  if (!qword_28120E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120E980);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

BOOL sub_21CDCB5A4()
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *(qword_28120EDA0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore);

  v1 = [v0 userSafety];
  v2 = [v1 scanningPolicy];

  if (v2)
  {
    v3 = [v2 policy];

    return v3 != 2;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_21CDCB6AC()
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *(qword_28120EDA0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore);

  v1 = [v0 userSafety];
  v2 = [v1 scanningPolicy];

  if (v2)
  {
    v3 = [v2 policy];

    if (v3)
    {
      if (qword_28120E970 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (qword_28120E970 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_9:
  swift_beginAccess();
  v4 = qword_28120E978;
  v5 = sub_21CDDBAFC();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  v7 = sub_21CDDBB2C();
  return v7;
}

uint64_t sub_21CDCB8C0()
{
  v0 = sub_21CDDB68C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_21CDDBAEC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_21CDDBACC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21CDDB66C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() nudityDetectionRowEnabled])
  {
    v11 = [objc_opt_self() learnMoreAboutSensitiveContentWarningURL];
    sub_21CDDB65C();

    sub_21CDDB64C();
    (*(v7 + 8))(v10, v6);
    sub_21CDDBABC();
    sub_21CDDBAAC();
    sub_21CDDBA9C();

    sub_21CDDBAAC();
    sub_21CDDBADC();
    if (qword_28120E970 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = qword_28120E978;
    sub_21CDDB67C();
    return sub_21CDDBB3C();
  }

  else
  {
    if (qword_28120E970 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = qword_28120E978;
    v15 = sub_21CDDBAFC();
    v16 = [v14 localizedStringForKey:v15 value:0 table:0];

    v17 = sub_21CDDBB2C();
    return v17;
  }
}

uint64_t sub_21CDCBC60(uint64_t a1, uint64_t a2)
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *(qword_28120EDA0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore);

  v5 = [v4 userSafety];
  v6 = [v5 scanningPolicy];

  if (v6)
  {
    v7 = [v6 policy];

    if (v7)
    {

      v8 = sub_21CDD72C4(a1, a2);

      if (v8)
      {
        if (qword_28120E970 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  if (qword_28120E970 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  swift_beginAccess();
  v9 = qword_28120E978;
  v10 = sub_21CDDBAFC();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  v12 = sub_21CDDBB2C();
  return v12;
}

uint64_t _s5FlagsOwet(unsigned int *a1, int a2)
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

_WORD *_s5FlagsOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_21CDCBFA8()
{
  result = qword_27CE3EB58;
  if (!qword_27CE3EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EB58);
  }

  return result;
}

void sub_21CDCC004()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21CDDBAFC();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_28120F2C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21CDCC07C()
{
  v0 = *MEMORY[0x277D26528];
  v1 = sub_21CDDBB2C();
  v3 = v2;
  if (v1 == sub_21CDDBB2C() && v3 == v4)
  {

LABEL_15:
    if (qword_28120E970 == -1)
    {
      goto LABEL_16;
    }

LABEL_37:
    swift_once();
    goto LABEL_16;
  }

  v6 = sub_21CDDBE4C();

  if (v6)
  {
    goto LABEL_15;
  }

  v7 = *MEMORY[0x277D26530];
  v8 = sub_21CDDBB2C();
  v10 = v9;
  if (v8 == sub_21CDDBB2C() && v10 == v11)
  {

LABEL_19:
    if (qword_28120E970 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  v13 = sub_21CDDBE4C();

  if (v13)
  {
    goto LABEL_19;
  }

  v14 = *MEMORY[0x277D26538];
  v15 = sub_21CDDBB2C();
  v17 = v16;
  if (v15 == sub_21CDDBB2C() && v17 == v18)
  {

    goto LABEL_22;
  }

  v24 = sub_21CDDBE4C();

  if (v24)
  {
LABEL_22:
    if (qword_28120E970 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  v25 = *MEMORY[0x277D26540];
  v26 = sub_21CDDBB2C();
  v28 = v27;
  if (v26 == sub_21CDDBB2C() && v28 == v29)
  {

    goto LABEL_28;
  }

  v30 = sub_21CDDBE4C();

  if (v30)
  {
LABEL_28:
    if (qword_28120E970 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  v31 = *MEMORY[0x277D26548];
  v32 = sub_21CDDBB2C();
  v34 = v33;
  if (v32 == sub_21CDDBB2C() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_21CDDBE4C();

    if ((v36 & 1) == 0)
    {
      return 0xD000000000000010;
    }
  }

  if (qword_28120E970 != -1)
  {
    goto LABEL_37;
  }

LABEL_16:
  swift_beginAccess();
  v19 = qword_28120E978;
  v20 = sub_21CDDBAFC();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  v22 = sub_21CDDBB2C();
  return v22;
}

uint64_t sub_21CDCC638@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB60, &qword_21CDDCA40);
  v1 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v67 - v2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB68, &qword_21CDDCA48);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v5 = &v67 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB70, &qword_21CDDCA50);
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v8 = &v67 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB78, &qword_21CDDD560);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v67 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EB80, &qword_21CDDCA58);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3EDC0, &qword_21CDDCA60);
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - v17;
  v19 = *MEMORY[0x277D26528];
  v20 = sub_21CDDBB2C();
  v22 = v21;
  if (v20 != sub_21CDDBB2C() || v22 != v23)
  {
    v24 = sub_21CDDBE4C();

    if (v24)
    {
      goto LABEL_5;
    }

    v33 = *MEMORY[0x277D26530];
    v34 = sub_21CDDBB2C();
    v36 = v35;
    if (v34 == sub_21CDDBB2C() && v36 == v37)
    {
      goto LABEL_10;
    }

    v38 = sub_21CDDBE4C();

    if (v38)
    {
      goto LABEL_12;
    }

    v42 = *MEMORY[0x277D26538];
    v43 = sub_21CDDBB2C();
    v45 = v44;
    if (v43 == sub_21CDDBB2C() && v45 == v46)
    {
      goto LABEL_10;
    }

    v47 = sub_21CDDBE4C();

    if (v47)
    {
      goto LABEL_12;
    }

    v48 = *MEMORY[0x277D26540];
    v49 = sub_21CDDBB2C();
    v51 = v50;
    if (v49 == sub_21CDDBB2C() && v51 == v52)
    {
LABEL_10:

LABEL_12:
      v39 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v40 = sub_21CDDBAFC();
      [v39 initWithBundleIdentifier_];

      v41 = [objc_opt_self() imageDescriptorNamed_];
      sub_21CDDB6AC();
      v28 = v72;
      (*(v72 + 16))(v8, v18, v15);
      goto LABEL_6;
    }

    v53 = sub_21CDDBE4C();

    if (v53)
    {
      goto LABEL_12;
    }

    v54 = *MEMORY[0x277D26548];
    v55 = sub_21CDDBB2C();
    v57 = v56;
    v58 = sub_21CDDBB2C();
    v28 = v72;
    if (v55 == v58 && v57 == v59)
    {
    }

    else
    {
      v60 = sub_21CDDBE4C();

      if ((v60 & 1) == 0)
      {
        v64 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
        v65 = sub_21CDDBAFC();
        [v64 initWithSymbolName_];

        v66 = [objc_opt_self() imageDescriptorNamed_];
        sub_21CDDB6AC();
        (*(v28 + 16))(v8, v18, v15);
        goto LABEL_27;
      }
    }

    v61 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v62 = sub_21CDDBAFC();
    [v61 initWithBundleIdentifier_];

    v63 = [objc_opt_self() imageDescriptorNamed_];
    sub_21CDDB6AC();
    (*(v28 + 16))(v8, v18, v15);
LABEL_27:
    swift_storeEnumTagMultiPayload();
    sub_21CDCD218();
    sub_21CDDB8FC();
    v29 = &qword_27CE3EB78;
    v30 = &qword_21CDDD560;
    sub_21CDCD370(v11, v73, &qword_27CE3EB78, &qword_21CDDD560);
    swift_storeEnumTagMultiPayload();
    sub_21CDCD2F4(&qword_27CE3EDE0, &qword_27CE3EB80, &qword_21CDDCA58, sub_21CDCD2C4);
    sub_21CDCD2C4();
    sub_21CDDB8FC();
    v31 = v11;
    goto LABEL_7;
  }

LABEL_5:
  v25 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v26 = sub_21CDDBAFC();
  [v25 initWithType_];

  v27 = [objc_opt_self() imageDescriptorNamed_];
  sub_21CDDB6AC();
  v28 = v72;
  (*(v72 + 16))(v8, v18, v15);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  sub_21CDCD218();
  sub_21CDDB8FC();
  sub_21CDCD370(v11, v5, &qword_27CE3EB78, &qword_21CDDD560);
  swift_storeEnumTagMultiPayload();
  sub_21CDCD2C4();
  sub_21CDDB8FC();
  sub_21CDCD3D8(v11, &qword_27CE3EB78, &qword_21CDDD560);
  v29 = &qword_27CE3EB80;
  v30 = &qword_21CDDCA58;
  sub_21CDCD370(v14, v73, &qword_27CE3EB80, &qword_21CDDCA58);
  swift_storeEnumTagMultiPayload();
  sub_21CDCD2F4(&qword_27CE3EDE0, &qword_27CE3EB80, &qword_21CDDCA58, sub_21CDCD2C4);
  sub_21CDDB8FC();
  v31 = v14;
LABEL_7:
  sub_21CDCD3D8(v31, v29, v30);
  return (*(v28 + 8))(v18, v15);
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

unint64_t sub_21CDCD218()
{
  result = qword_27CE3EB88;
  if (!qword_27CE3EB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE3EDC0, &qword_21CDDCA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EB88);
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

uint64_t sub_21CDCD2F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CDCD370(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CDCD3D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CDCD444(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21CDCD4A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_21CDCD548()
{
  sub_21CDCD5B4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21CDCD5B4()
{
  if (!qword_27CE3EBA8)
  {
    sub_21CDDB91C();
    v0 = sub_21CDDB74C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE3EBA8);
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

uint64_t sub_21CDCD620(uint64_t a1, int a2)
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

uint64_t sub_21CDCD668(uint64_t result, int a2, int a3)
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

uint64_t sub_21CDCD6DC(uint64_t a1)
{
  v2 = type metadata accessor for SafetyResourcesSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CDD03A0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SafetyResourcesSection);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CDD0408(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SafetyResourcesSection);
  return sub_21CDDB9DC();
}

uint64_t sub_21CDCD824(uint64_t a1)
{
  v2 = sub_21CDDB87C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB0, &qword_21CDDCC40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = sub_21CDDB91C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDCFE44(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    sub_21CDDBC4C();
    v17 = sub_21CDDB92C();
    sub_21CDDB6BC();

    sub_21CDDB86C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21CDDB90C();
  return (*(v12 + 8))(v15, v11);
}

void sub_21CDCDAA4(void *a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D4D388]) init];
    [a1 presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_21CDCDB20@<X0>(uint64_t a1@<X8>)
{
  sub_21CDDB8CC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28120E978;
  result = sub_21CDDB94C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21CDCDC18()
{
  sub_21CDDB8CC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28120E978;
  sub_21CDDB94C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBE0, &qword_21CDDCCA0);
  sub_21CDD04F8(&qword_27CE3EBE8, &qword_27CE3EBE0, &qword_21CDDCCA0);
  return sub_21CDDBA4C();
}

uint64_t sub_21CDCDD98()
{
  type metadata accessor for NudityDetectionRootModel(0);
  sub_21CDCFD94(&qword_27CE3EBD8, type metadata accessor for NudityDetectionRootModel);
  sub_21CDDB7DC();
  swift_getKeyPath();
  sub_21CDDB7FC();

  return sub_21CDDB9EC();
}

uint64_t sub_21CDCDE9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  *a2 = v5;
  return result;
}

void sub_21CDCDF1C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21CDD2EFC();
}

uint64_t sub_21CDCDF44@<X0>(uint64_t a1@<X8>)
{
  sub_21CDDB8CC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28120E978;
  result = sub_21CDDB94C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21CDCE03C()
{
  v1 = type metadata accessor for ImproveNudityDetectionExplainerText(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *v0;
  sub_21CDDB8CC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_28120E978;
  v14 = sub_21CDDB94C();
  v15 = v6;
  v16 = v7 & 1;
  v17 = v8;
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB0, &qword_21CDDCC40);
  swift_storeEnumTagMultiPayload();
  v9 = (v4 + *(v1 + 20));
  *v9 = sub_21CDCE2A4();
  v9[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB8, &qword_21CDDCC48);
  sub_21CDD04F8(&qword_27CE3EBC0, &qword_27CE3EBB8, &qword_21CDDCC48);
  sub_21CDCFD94(&qword_27CE3EBC8, type metadata accessor for ImproveNudityDetectionExplainerText);
  return sub_21CDDBA3C();
}

id sub_21CDCE2A4()
{
  v0 = sub_21CDDB6EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CDDBAFC();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  if (!v6)
  {
    goto LABEL_6;
  }

  result = [objc_opt_self() flowWithBundle_];
  if (result)
  {
    v8 = result;
    v9 = [result localizedButtonTitle];

    if (v9)
    {
      v10 = sub_21CDDBB2C();

LABEL_11:
      return v10;
    }

LABEL_6:
    sub_21CDDB6DC();
    v11 = sub_21CDDB6CC();
    v12 = sub_21CDDBC3C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_21CDCF78C(0xD00000000000001FLL, 0x800000021CDDD960, &v18);
      _os_log_impl(&dword_21CDC8000, v11, v12, "We couldn't find our bundle for %s, falling back to placeholder text", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CF19400](v14, -1, -1);
      MEMORY[0x21CF19400](v13, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    if (qword_28120E970 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = qword_28120E978;
    v16 = sub_21CDDBAFC();
    v6 = [v15 localizedStringForKey:v16 value:0 table:0];

    v10 = sub_21CDDBB2C();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CDCE5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImproveNudityDetectionExplainerText(0);
  v5 = v4 - 8;
  v26 = *(v4 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_21CDDB8BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_21CDDB8AC();
  sub_21CDDB89C();
  v9 = (a1 + *(v5 + 28));
  v10 = *v9;
  v11 = v9[1];
  sub_21CDDB88C();
  sub_21CDDB89C();
  sub_21CDDB8DC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_28120E978;
  v13 = sub_21CDDB94C();
  v15 = v14;
  v17 = v16;
  v25 = v18;
  KeyPath = swift_getKeyPath();
  sub_21CDD03A0(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImproveNudityDetectionExplainerText);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_21CDD0408(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ImproveNudityDetectionExplainerText);
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC60, &qword_21CDDCE70) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC68, &qword_21CDDCE78) + 28);
  result = sub_21CDDB77C();
  *v22 = KeyPath;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v25;
  return result;
}

uint64_t sub_21CDCE8C0(uint64_t a1)
{
  v2 = sub_21CDDB78C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CDDB85C();
}

void sub_21CDCE988()
{
  v0 = sub_21CDDB91C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CDDB6EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CDDBAFC();
  v11 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v11)
  {
    v12 = v11;
    v13 = sub_21CDCF580(v4);
    MEMORY[0x28223BE20](v13);
    *(&v17 - 2) = v12;
    sub_21CDDB90C();
    (*(v1 + 8))(v4, v0);
    sub_21CDDB76C();
  }

  else
  {
    sub_21CDDB6DC();
    v14 = sub_21CDDB6CC();
    v15 = sub_21CDDBC3C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21CDC8000, v14, v15, "Failed to create privacyPresenter for com.apple.onboarding.improvescw", v16, 2u);
      MEMORY[0x21CF19400](v16, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_21CDDB75C();
  }
}

void sub_21CDCEC50(void *a1, void *a2)
{
  v4 = sub_21CDDB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    [a2 setPresentingViewController_];
    [a2 present];
    v9 = v14;
  }

  else
  {
    sub_21CDDB6DC();
    v10 = sub_21CDDB6CC();
    v11 = sub_21CDDBC3C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21CDC8000, v10, v11, "Failed to get hosting controller", v12, 2u);
      MEMORY[0x21CF19400](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21CDCEE0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CDDB8EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC58, &qword_21CDDCE38);
  return sub_21CDCE5D4(v1, a1 + *(v3 + 44));
}

uint64_t sub_21CDCEE60(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(a1 + 16);
  v5 = *a1;
  sub_21CDCFF10(&v5, &v4);

  sub_21CDDBA5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC08, &unk_21CDDCCB0);
  sub_21CDDBA0C();

  sub_21CDCFF6C(&v5);

  sub_21CDCFFC0();
  return sub_21CDDB9EC();
}

uint64_t sub_21CDCEF44()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBF0, &qword_21CDDCCA8);
  sub_21CDD04F8(&qword_27CE3EBF8, &qword_27CE3EBF0, &qword_21CDDCCA8);
  sub_21CDCFEBC();
  return sub_21CDDBA4C();
}

uint64_t sub_21CDCF068(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CDCF0A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21CDCDD98();
}

uint64_t sub_21CDCF0A8@<X0>(uint64_t a1@<X8>)
{
  sub_21CDDB8CC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28120E978;
  result = sub_21CDDB94C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21CDCF1A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CDDB68C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CDDB61C();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CDDBAEC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_21CDDBACC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_21CDDB62C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_21CDDB66C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() learnMoreAboutSensitiveContentWarningURL];
  sub_21CDDB65C();

  sub_21CDDB64C();
  (*(v16 + 8))(v19, v15);
  sub_21CDDBABC();
  sub_21CDDBAAC();
  sub_21CDDBA9C();

  sub_21CDDBAAC();
  sub_21CDDBADC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = [qword_28120E978 bundleURL];
  sub_21CDDB65C();

  (*(v27 + 104))(v8, *MEMORY[0x277CC9118], v28);
  sub_21CDDB67C();
  sub_21CDDB63C();
  result = sub_21CDDB95C();
  *a1 = result;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v25;
  return result;
}

uint64_t sub_21CDCF580@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CDDB87C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB0, &qword_21CDDCC40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_21CDCFE44(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CDDB91C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_21CDDBC4C();
    v16 = sub_21CDDB92C();
    sub_21CDDB6BC();

    sub_21CDDB86C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21CDCF78C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21CDCF858(v11, 0, 0, 1, a1, a2);
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
    sub_21CDCFD34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21CDCF858(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21CDCF964(a5, a6);
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
    result = sub_21CDDBD2C();
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

uint64_t sub_21CDCF964(uint64_t a1, unint64_t a2)
{
  v4 = sub_21CDCF9B0(a1, a2);
  sub_21CDCFAE0(&unk_282E7C4B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21CDCF9B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_21CDCFBCC(v5, 0);
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

  result = sub_21CDDBD2C();
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
        v10 = sub_21CDDBB7C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21CDCFBCC(v10, 0);
        result = sub_21CDDBCEC();
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

uint64_t sub_21CDCFAE0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21CDCFC40(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21CDCFBCC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBD0, &qword_21CDDCC50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21CDCFC40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBD0, &qword_21CDDCC50);
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

uint64_t sub_21CDCFD34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21CDCFD94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CDCFDE4()
{
  v1 = *(type metadata accessor for SafetyResourcesSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CDCD824(v2);
}

uint64_t sub_21CDCFE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB0, &qword_21CDDCC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CDCFEBC()
{
  result = qword_27CE3EC00;
  if (!qword_27CE3EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EC00);
  }

  return result;
}

unint64_t sub_21CDCFFC0()
{
  result = qword_27CE3EC10;
  if (!qword_27CE3EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EC10);
  }

  return result;
}

void sub_21CDD003C()
{
  sub_21CDCD5B4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21CDD00D0()
{
  result = qword_27CE3EC28;
  if (!qword_27CE3EC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3EC30, "h\x1B");
    sub_21CDD04F8(&qword_27CE3EBC0, &qword_27CE3EBB8, &qword_21CDDCC48);
    sub_21CDCFD94(&qword_27CE3EBC8, type metadata accessor for ImproveNudityDetectionExplainerText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EC28);
  }

  return result;
}

unint64_t sub_21CDD01C4()
{
  result = qword_27CE3EC38;
  if (!qword_27CE3EC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3EC40, &qword_21CDDCD38);
    sub_21CDD04F8(&qword_27CE3EBE8, &qword_27CE3EBE0, &qword_21CDDCCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EC38);
  }

  return result;
}

unint64_t sub_21CDD0288()
{
  result = qword_27CE3EC48;
  if (!qword_27CE3EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3EC50, &qword_21CDDCD40);
    sub_21CDD04F8(&qword_27CE3EBF8, &qword_27CE3EBF0, &qword_21CDDCCA8);
    sub_21CDCFEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EC48);
  }

  return result;
}

uint64_t sub_21CDD03A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CDD0408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21CDD0470()
{
  v0 = *(*(type metadata accessor for ImproveNudityDetectionExplainerText(0) - 8) + 80);

  sub_21CDCE988();
}

uint64_t sub_21CDD04F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t NudityDetectionAppsRootView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NudityDetectionRootModel(0);
  sub_21CDD16E8(&qword_27CE3EBD8, type metadata accessor for NudityDetectionRootModel);
  result = sub_21CDDB80C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NudityDetectionAppsRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_21CDDB7CC();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC80, &qword_21CDDCE90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC88, &qword_21CDDCE98);
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - v13;
  v23 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC90, &qword_21CDDCEA0);
  sub_21CDD04F8(&qword_27CE3EC98, &qword_27CE3EC90, &qword_21CDDCEA0);
  sub_21CDDB93C();
  sub_21CDDBA6C();
  v15 = sub_21CDD04F8(&qword_27CE3ECA0, &qword_27CE3EC80, &qword_21CDDCE90);
  v16 = sub_21CDD16E8(&qword_27CE3ECA8, MEMORY[0x277CDDAB8]);
  sub_21CDDB9BC();
  (*(v21 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v24 = v6;
  v25 = v2;
  v26 = v15;
  v27 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_21CDDB97C();
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_21CDD0914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SafetyResourcesSection(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  type metadata accessor for NudityDetectionRootModel(0);
  sub_21CDD16E8(&qword_27CE3EBD8, type metadata accessor for NudityDetectionRootModel);
  sub_21CDDB7DC();
  swift_getKeyPath();
  sub_21CDDB7FC();

  v11 = v24;
  v12 = v25;
  v23 = v26;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EBB0, &qword_21CDDCC40);
  swift_storeEnumTagMultiPayload();
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CDDB71C();

    if (v24)
    {
      v13 = sub_21CDDB80C();
      v15 = v14;
      v16 = sub_21CDDB80C();
      v18 = v17;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v18 = 0;
      v13 = 1;
    }

    sub_21CDD1730(v10, v8);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v23;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ECE0, &qword_21CDDD0B0);
    sub_21CDD1730(v8, a2 + *(v19 + 48));
    v20 = (a2 + *(v19 + 64));

    sub_21CDD1794(v13);
    sub_21CDD17DC(v13);
    *v20 = v13;
    v20[1] = v15;
    v20[2] = v16;
    v20[3] = v18;
    sub_21CDD1820(v10);
    sub_21CDD17DC(v13);
    sub_21CDD1820(v8);
  }

  else
  {
    result = sub_21CDDB7EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CDD0C40@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_21CDDB7CC();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC80, &qword_21CDDCE90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC88, &qword_21CDDCE98);
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - v13;
  v23 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EC90, &qword_21CDDCEA0);
  sub_21CDD04F8(&qword_27CE3EC98, &qword_27CE3EC90, &qword_21CDDCEA0);
  sub_21CDDB93C();
  sub_21CDDBA6C();
  v15 = sub_21CDD04F8(&qword_27CE3ECA0, &qword_27CE3EC80, &qword_21CDDCE90);
  v16 = sub_21CDD16E8(&qword_27CE3ECA8, MEMORY[0x277CDDAB8]);
  sub_21CDDB9BC();
  (*(v21 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v24 = v6;
  v25 = v2;
  v26 = v15;
  v27 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_21CDDB97C();
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_21CDD0FD4(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CDDB71C();

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ECC8, &qword_21CDDD028);
    sub_21CDD04F8(&qword_27CE3ECD0, &qword_27CE3ECC8, &qword_21CDDD028);
    sub_21CDD13D4();
    return sub_21CDDBA1C();
  }

  else
  {
    type metadata accessor for NudityDetectionRootModel(0);
    sub_21CDD16E8(&qword_27CE3EBD8, type metadata accessor for NudityDetectionRootModel);
    result = sub_21CDDB7EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CDD1168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for NudityDetectionEntry(0);
  sub_21CDD16E8(&qword_27CE3ECD8, type metadata accessor for NudityDetectionEntry);

  result = sub_21CDDB79C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21CDD11F0()
{
  v3 = *v0;
  sub_21CDDB8CC();
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28120E978;
  sub_21CDDB94C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ECB0, &qword_21CDDCFB0);
  sub_21CDD1350();
  return sub_21CDDBA2C();
}

unint64_t sub_21CDD1350()
{
  result = qword_27CE3ECB8;
  if (!qword_27CE3ECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3ECB0, &qword_21CDDCFB0);
    sub_21CDD13D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3ECB8);
  }

  return result;
}

unint64_t sub_21CDD13D4()
{
  result = qword_27CE3ECC0;
  if (!qword_27CE3ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3ECC0);
  }

  return result;
}

uint64_t sub_21CDD1428@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_21CDD1A94();

  result = sub_21CDDB96C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21CDD1494()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for NudityDetectionEntry(0);
  sub_21CDD16E8(&qword_27CE3ECD8, type metadata accessor for NudityDetectionEntry);
  sub_21CDDB7AC();
  swift_getKeyPath();
  sub_21CDDB7BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ECF8, &qword_21CDDD178);
  sub_21CDD04F8(&qword_27CE3ED00, &qword_27CE3ECF8, &qword_21CDDD178);
  return sub_21CDDB9EC();
}

uint64_t sub_21CDD15EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  *a2 = v5;
  return result;
}

uint64_t sub_21CDD166C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CDDB72C();
}

uint64_t sub_21CDD16E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CDD1730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyResourcesSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDD1794(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21CDD17DC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21CDD1820(uint64_t a1)
{
  v2 = type metadata accessor for SafetyResourcesSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CDD187C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21CDD18C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21CDD1910()
{
  result = qword_27CE3ECE8;
  if (!qword_27CE3ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3ECF0, &qword_21CDDD0F8);
    sub_21CDD1350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3ECE8);
  }

  return result;
}

uint64_t sub_21CDD19C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_21CDDB9CC();
}

uint64_t sub_21CDD1A48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 24) + 144))();
  *a1 = result;
  return result;
}

unint64_t sub_21CDD1A94()
{
  result = qword_27CE3ED08;
  if (!qword_27CE3ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3ED08);
  }

  return result;
}

void sub_21CDD1B08(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CDDB72C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  sub_21CDD59EC(v4);
}

uint64_t sub_21CDD1BE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  *a2 = v5;
  return result;
}

uint64_t sub_21CDD1C60(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_21CDD1C88();
}

uint64_t sub_21CDD1C88()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CDDB72C();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CDDB71C();

  v2(v4);
}

uint64_t sub_21CDD1D90()
{
  v1 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey);
  v2 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey + 8);

  return v1;
}

uint64_t sub_21CDD1DE8()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry__enabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3ED48, &qword_21CDDD1F0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_21CDD1EB4@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_21CDD1F1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NudityDetectionEntry(0);
  result = sub_21CDDB6FC();
  *a1 = result;
  return result;
}

uint64_t sub_21CDD1F5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EDD0, &unk_21CDDD550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI28NudityDetectionSystemService_service);
  sub_21CDCC638(v4);

  sub_21CDDB3F0();
  return sub_21CDDB9FC();
}

uint64_t sub_21CDD200C()
{
  sub_21CDDBCFC();
  MEMORY[0x21CF18BD0](0xD000000000000010, 0x800000021CDDDF20);
  v4 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI28NudityDetectionSystemService_service);
  type metadata accessor for MOUserSafetyScannableServices(0);
  sub_21CDDBD8C();
  MEMORY[0x21CF18BD0](0x6C62616E65200920, 0xEC000000203A6465);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  if (v4)
  {
    v1 = 0x64656C62616E65;
  }

  else
  {
    v1 = 0x64656C6261736964;
  }

  if (v4)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  MEMORY[0x21CF18BD0](v1, v2);

  MEMORY[0x21CF18BD0](10, 0xE100000000000000);
  return 0;
}

uint64_t sub_21CDD2188()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry__enabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3ED48, &qword_21CDDD1F0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

void *sub_21CDD2264(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = v5 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp__displayScale;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = (v5 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp_iconBundleID);
  *v10 = 0;
  v10[1] = 0;
  v11 = [a4 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_21CDDBB2C();
    v15 = v14;

    *(v5 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp_application) = a4;
    v5[2] = 0;
    v5[3] = 0xE000000000000000;
    v5[4] = a1;
    v5[5] = a2;
    swift_beginAccess();
    v16 = a4;

    sub_21CDDB70C();
    swift_endAccess();
    v17 = (v5 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey);
    *v17 = v13;
    v17[1] = v15;
    sub_21CDDB508(0, &qword_27CE3EE28, 0x277CC1E90);

    v18 = sub_21CDD25CC();
    v25 = v18;
    if (v18)
    {

      v26 = [v25 localizedName];
      v27 = sub_21CDDBB2C();
      v29 = v28;

      v30 = v5[3];
      v5[2] = v27;
      v5[3] = v29;

      v31 = [v25 bundleIdentifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_21CDDBB2C();
        v35 = v34;
      }

      else
      {

        v33 = 0;
        v35 = 0;
      }

      v42 = (v5 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp_iconBundleID);
      v43 = *(v5 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp_iconBundleID + 8);
      *v42 = v33;
      v42[1] = v35;
    }

    else
    {
      v19 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v20 = sub_21CDD782C(v13, v15, 1);
      if (v20)
      {
        v36 = v20;

        v37 = [v36 localizedName];
        v38 = sub_21CDDBB2C();
        v40 = v39;

        v41 = v5[3];
        v5[2] = v38;
        v5[3] = v40;
      }

      else
      {

        v21 = v5[3];
        v5[2] = v13;
        v5[3] = v15;
      }
    }
  }

  else
  {

    sub_21CDDB3E4(*v9, v9[8]);
    v22 = v10[1];

    type metadata accessor for NudityDetectionApp(0);
    v23 = *(*v5 + 48);
    v24 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id sub_21CDD25CC()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21CDDBAFC();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_21CDDB60C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_21CDD26A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3EDC0, &qword_21CDDCA60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey;
  v4 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey);
  v5 = *(v3 + 8);
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

  v7 = sub_21CDDBAFC();

  [v6 initWithBundleIdentifier_];

  v8 = [objc_opt_self() imageDescriptorNamed_];
  sub_21CDDB6AC();
  sub_21CDD04F8(&qword_27CE3EB88, &unk_27CE3EDC0, &qword_21CDDCA60);
  return sub_21CDDB9FC();
}

unint64_t sub_21CDD280C()
{
  sub_21CDDBCFC();

  v1 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey);
  v2 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey + 8);

  MEMORY[0x21CF18BD0](v1, v2);

  MEMORY[0x21CF18BD0](0x6C62616E65200920, 0xEC000000203A6465);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  if (v6)
  {
    v3 = 0x64656C62616E65;
  }

  else
  {
    v3 = 0x64656C6261736964;
  }

  if (v6)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  MEMORY[0x21CF18BD0](v3, v4);

  MEMORY[0x21CF18BD0](10, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_21CDD296C()
{
  sub_21CDDB3E4(*(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp__displayScale), *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp__displayScale + 8));

  v1 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp_iconBundleID + 8);
}

uint64_t sub_21CDD29C8()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry__enabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3ED48, &qword_21CDDD1F0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey + 8];

  v6 = *&v0[OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp__displayScale];
  v7 = v0[OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp__displayScale + 8];

  sub_21CDDB3E4(v6, v7);

  v8 = *&v0[OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp_iconBundleID + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_21CDD2AF4()
{
  v0 = type metadata accessor for NudityDetectionRootModel(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = NudityDetectionRootModel.init()();
  qword_28120EDA0 = v3;
  return result;
}

uint64_t NudityDetectionRootModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NudityDetectionRootModel.init()();
  return v3;
}

uint64_t static NudityDetectionRootModel.shared.getter()
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NudityDetectionRootModel.shared.setter(uint64_t a1)
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28120EDA0 = a1;
}

uint64_t (*static NudityDetectionRootModel.shared.modify())()
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDD2CEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  return v1;
}

uint64_t sub_21CDD2D60@<X0>(void *a1@<X8>)
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_28120EDA0;
}

uint64_t sub_21CDD2DE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28120ED98;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28120EDA0 = v1;
}

uint64_t sub_21CDD2E90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  return v1;
}

void sub_21CDD2EFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CDDB72C();
  if (qword_28120E9B0 != -1)
  {
    swift_once();
  }

  v0 = qword_28120F2C0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  v1 = sub_21CDDBBEC();
  v2 = sub_21CDDBAFC();
  [v0 setValue:v1 forKey:v2];
}

id sub_21CDD3034()
{
  v0 = objc_allocWithZone(MEMORY[0x277D26578]);
  v1 = sub_21CDDBAFC();
  v2 = sub_21CDDBAFC();
  v3 = [v0 initWithName:v1 sharedContainer:v2];

  v4 = [v3 userSafety];
  v5 = [v4 scanningPolicy];

  if (!v5 || (v6 = [v5 policy], v5, !v6))
  {
    [v3 setActive_];
  }

  [v3 setSyncToWatch_];
  return v3;
}

uint64_t NudityDetectionRootModel.init()()
{
  v1 = v0;
  v49 = sub_21CDDB6EC();
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v49);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED28, &unk_21CDDD1D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v14 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel__detectionEntries;
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ECC8, &qword_21CDDD028);
  sub_21CDDB70C();
  (*(v10 + 32))(v1 + v14, v13, v9);
  v15 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D26568]) init];
  v16 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectivePublisher;
  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3ED30, &qword_21CDDD1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CDDD190;
  v19 = *MEMORY[0x277D26520];
  *(inited + 32) = *MEMORY[0x277D26520];
  v20 = v19;
  sub_21CDDA110(inited);
  swift_setDeallocating();
  sub_21CDDA304(inited + 32);
  type metadata accessor for Name(0);
  sub_21CDDA778(&qword_28120E9A8, type metadata accessor for Name);
  v21 = sub_21CDDBBFC();

  v22 = [v17 publisherForGroups_];

  *(v1 + v16) = v22;
  *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectivePublisherSink) = 0;
  v23 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_localStore;
  *(v1 + v23) = sub_21CDD3034();
  v24 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy;
  *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy) = 0;
  sub_21CDDB6DC();
  v25 = sub_21CDDB6CC();
  v26 = sub_21CDDBC5C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_21CDC8000, v25, v26, "init NudityDetectionModel", v27, 2u);
    MEMORY[0x21CF19400](v27, -1, -1);
  }

  v28 = *(v2 + 8);
  v28(v8, v49);
  v29 = [*(v1 + v23) userSafety];
  v30 = [v29 scanningPolicy];

  v31 = *(v1 + v24);
  *(v1 + v24) = v30;

  v32 = *(v1 + v24);
  if (v32 && [v32 policy])
  {
    v33 = [*(v1 + v23) active];
  }

  else
  {
    v33 = 0;
  }

  swift_beginAccess();
  v51 = v33;
  sub_21CDDB70C();
  swift_endAccess();
  if (qword_28120E9B0 != -1)
  {
    swift_once();
  }

  v34 = qword_28120F2C0;
  v35 = sub_21CDDBAFC();
  LOBYTE(v34) = [v34 BOOLForKey_];

  swift_beginAccess();
  v51 = v34;
  sub_21CDDB70C();
  swift_endAccess();
  sub_21CDDB6DC();

  v36 = sub_21CDDB6CC();
  v37 = sub_21CDDBC5C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore);
    *(v38 + 4) = v40;
    *v39 = v40;
    v41 = v40;
    _os_log_impl(&dword_21CDC8000, v36, v37, "effective publisher: %@", v38, 0xCu);
    sub_21CDCD3D8(v39, &qword_27CE3ED40, &qword_21CDDD1E8);
    MEMORY[0x21CF19400](v39, -1, -1);
    MEMORY[0x21CF19400](v38, -1, -1);
  }

  v28(v6, v49);
  v42 = *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectivePublisher);
  aBlock[4] = sub_21CDDA360;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CDD3E90;
  aBlock[3] = &block_descriptor;
  v43 = _Block_copy(aBlock);

  v44 = v42;

  v45 = [v44 sinkWithReceiveInput_];
  _Block_release(v43);

  v46 = *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectivePublisherSink);
  *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectivePublisherSink) = v45;
  swift_unknownObjectRelease();
  sub_21CDD3F40();
  return v1;
}

void sub_21CDD3848(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CDDB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v33 = "8D951C99FindClass";
  sub_21CDDB6DC();

  v12 = sub_21CDDB6CC();
  v13 = sub_21CDDBC5C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    type metadata accessor for Name(0);
    v31 = v9;
    sub_21CDDA778(&qword_28120E9A8, type metadata accessor for Name);
    v17 = sub_21CDDBC1C();
    v19 = sub_21CDCF78C(v17, v18, &v34);
    v9 = v31;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_21CDC8000, v12, v13, "effective store publisher updated: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CF19400](v16, -1, -1);
    v20 = v15;
    a2 = v32;
    MEMORY[0x21CF19400](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v11, v4);
  if (sub_21CDD3D3C(*MEMORY[0x277D26520], a1))
  {
    sub_21CDDB6DC();
    v22 = sub_21CDDB6CC();
    v23 = sub_21CDDBC5C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v4;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21CDC8000, v22, v23, "updating our effective store", v25, 2u);
      v26 = v25;
      v4 = v24;
      MEMORY[0x21CF19400](v26, -1, -1);
    }

    v21(v9, v4);
    v27 = [objc_allocWithZone(MEMORY[0x277D26568]) init];
    v28 = *(a2 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore);
    *(a2 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore) = v27;

    v29 = [objc_opt_self() defaultCenter];
    v30 = sub_21CDDBAFC();
    [v29 postNotificationName:v30 object:a2];
  }
}

uint64_t sub_21CDD3C24(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_21CDDBCCC();
  }

  else if (*(a2 + 16) && (sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550), v5 = *(a2 + 40), v6 = sub_21CDDBC6C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_21CDDBC7C();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21CDD3D3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_21CDDBB2C();
  sub_21CDDBE6C();
  sub_21CDDBB5C();
  v4 = sub_21CDDBE8C();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_21CDDBB2C();
      v11 = v10;
      if (v9 == sub_21CDDBB2C() && v11 == v12)
      {
        break;
      }

      v14 = sub_21CDDBE4C();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_21CDD3E90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for Name(0);
  sub_21CDDA778(&qword_28120E9A8, type metadata accessor for Name);
  v3 = sub_21CDDBC0C();

  v2(v3);
}

void sub_21CDD3F40()
{
  v1 = v0;
  v2 = sub_21CDDB6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v157 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v155 = &v149 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v149 - v9;
  sub_21CDDB6DC();

  v11 = sub_21CDDB6CC();
  v12 = sub_21CDDBC5C();

  v13 = os_log_type_enabled(v11, v12);
  v152 = v2;
  v151 = v3;
  v156 = "8D951C99FindClass";
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v160[0] = v15;
    *v14 = 136315138;
    v159 = *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
    v16 = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EE08, &qword_21CDDD570);
    v17 = sub_21CDDBB4C();
    v19 = sub_21CDCF78C(v17, v18, v160);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_21CDC8000, v11, v12, "reload entries from policy: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CF19400](v15, -1, -1);
    MEMORY[0x21CF19400](v14, -1, -1);
  }

  v158 = *(v3 + 8);
  v158(v10, v2);
  v164 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED88, &qword_21CDDD3F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CDDD1A0;
  v21 = *MEMORY[0x277D26528];
  *(inited + 32) = *MEMORY[0x277D26528];
  v22 = *MEMORY[0x277D26530];
  v23 = *MEMORY[0x277D26548];
  *(inited + 40) = *MEMORY[0x277D26530];
  *(inited + 48) = v23;
  v24 = *MEMORY[0x277D26538];
  v25 = *MEMORY[0x277D26540];
  *(inited + 56) = *MEMORY[0x277D26538];
  *(inited + 64) = v25;

  v26 = v21;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = sub_21CDDA828(inited, v1, &v164);
  v150 = 0;

  swift_setDeallocating();
  type metadata accessor for MOUserSafetyScannableServices(0);
  v153 = v32;
  swift_arrayDestroy();
  v149 = v31;
  v163 = v31;
  v33 = v155;
  sub_21CDDB6DC();

  v34 = sub_21CDDB6CC();
  v35 = sub_21CDDBC5C();

  v36 = os_log_type_enabled(v34, v35);
  v154 = v1;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v160[0] = v38;
    *v37 = 136315138;
    v39 = [*(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore) userSafety];
    v40 = [v39 allowedClients];

    if (v40)
    {
      sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
      sub_21CDDA7C0();
      v41 = sub_21CDDBC0C();
    }

    else
    {
      v41 = 0;
    }

    v43 = v157;
    v159 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EE00, &qword_21CDDD568);
    v44 = sub_21CDDBB4C();
    v46 = sub_21CDCF78C(v44, v45, v160);

    *(v37 + 4) = v46;
    _os_log_impl(&dword_21CDC8000, v34, v35, "reload apps from effective store: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x21CF19400](v38, -1, -1);
    MEMORY[0x21CF19400](v37, -1, -1);

    v42 = v152;
    v158(v155, v152);
  }

  else
  {

    v42 = v152;
    v158(v33, v152);
    v43 = v157;
  }

  v162 = MEMORY[0x277D84F90];
  v47 = v154;
  v48 = [*(v154 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore) userSafety];
  v49 = [v48 &selRef_presentViewController_animated_completion_ + 7];

  if (v49)
  {
    sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
    sub_21CDDA7C0();
    v50 = sub_21CDDBC0C();
  }

  else
  {
    v50 = MEMORY[0x277D84FA0];
  }

  sub_21CDDAE40(v50, v47, &v162);
  v52 = v51;

  v161 = v52;
  sub_21CDD5640(&v161);
  sub_21CDDB6DC();
  v53 = sub_21CDDB6CC();
  v54 = sub_21CDDBC5C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = v42;
    v57 = swift_slowAlloc();
    v160[0] = v57;
    *v55 = 136315394;
    v58 = type metadata accessor for NudityDetectionEntry(0);

    v60 = MEMORY[0x21CF18C10](v59, v58);
    v62 = v61;

    v63 = sub_21CDCF78C(v60, v62, v160);

    *(v55 + 4) = v63;
    *(v55 + 12) = 2080;
    swift_beginAccess();

    v65 = MEMORY[0x21CF18C10](v64, v58);
    v67 = v66;

    v68 = sub_21CDCF78C(v65, v67, v160);
    v47 = v154;

    *(v55 + 14) = v68;
    _os_log_impl(&dword_21CDC8000, v53, v54, "loadedServices: %s,\napps: %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF19400](v57, -1, -1);
    MEMORY[0x21CF19400](v55, -1, -1);

    v69 = v157;
    v70 = v56;
  }

  else
  {

    v69 = v43;
    v70 = v42;
  }

  v158(v69, v70);
  swift_beginAccess();
  v71 = v161;
  swift_beginAccess();

  sub_21CDD57F8(v72);
  swift_endAccess();
  v73 = v163;
  swift_getKeyPath();
  swift_getKeyPath();
  v159 = v73;

  sub_21CDDB72C();
  v74 = v162;
  isUniquelyReferenced_nonNull_native = (v162 >> 62);
  if (v162 >> 62)
  {
    goto LABEL_99;
  }

  if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    if (!v164[2])
    {

      return;
    }

    goto LABEL_18;
  }

  while (1)
  {
LABEL_18:
    v151 = v73;
    v152 = v71;
    v71 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy;
    v76 = *(v47 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
    if (v76 && (v77 = [v76 allServices]) != 0)
    {
      v78 = v77;
      sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
      sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
      v79 = sub_21CDDBA8C();
    }

    else
    {
      v79 = sub_21CDDB0E8(MEMORY[0x277D84F90]);
    }

    v150 = v71;
    v80 = *&v71[v154];
    v157 = isUniquelyReferenced_nonNull_native;
    if (v80 && (v81 = [v80 allApplications]) != 0)
    {
      v82 = v81;
      sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
      v71 = sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
      sub_21CDDA7C0();
      v47 = sub_21CDDBA8C();
    }

    else
    {
      v47 = sub_21CDDB1E0(MEMORY[0x277D84F90]);
    }

    v156 = v74;
    v74 = v164;
    isUniquelyReferenced_nonNull_native = v164[2];
    if (isUniquelyReferenced_nonNull_native)
    {
      break;
    }

LABEL_46:
    v149 = v74;
    if (v157)
    {
      v74 = v156;
      isUniquelyReferenced_nonNull_native = sub_21CDDBDAC();
      if (!isUniquelyReferenced_nonNull_native)
      {
LABEL_88:
        v140 = objc_opt_self();
        sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
        sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
        v141 = sub_21CDDBA7C();

        sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
        sub_21CDDA7C0();
        v142 = sub_21CDDBA7C();

        v143 = [v140 nudityDetectionPolicyWithAllServices:v141 allApplications:v142];

        v144 = v154;
        v145 = v150;
        v146 = *&v150[v154];
        *&v150[v154] = v143;

        v147 = [*(v144 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_localStore) userSafety];
        v148 = *&v145[v144];
        [v147 setScanningPolicy_];

        return;
      }
    }

    else
    {
      v74 = v156;
      isUniquelyReferenced_nonNull_native = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_88;
      }
    }

    v73 = 0;
    v157 = (v74 & 0xC000000000000001);
    v155 = (v74 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v157)
      {
        v108 = MEMORY[0x21CF18D70](v73, v74);
      }

      else
      {
        if (v73 >= *(v155 + 2))
        {
          goto LABEL_95;
        }

        v108 = *(v74 + 8 * v73 + 32);
      }

      v109 = v108;
      v107 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v110 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v111 = [v110 initWithBool_];
      v112 = v47 & 0xC000000000000001;
      if (v111)
      {
        v71 = v111;
        if (v112)
        {
          if (v47 < 0)
          {
            v113 = v47;
          }

          else
          {
            v113 = v47 & 0xFFFFFFFFFFFFFF8;
          }

          v114 = sub_21CDDBDAC();
          if (__OFADD__(v114, 1))
          {
            goto LABEL_94;
          }

          v47 = sub_21CDD7E70(v113, v114 + 1);
        }

        v158 = (v73 + 1);
        v115 = v79;
        v116 = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v159 = v47;
        v117 = v47;
        v47 = v109;
        v119 = sub_21CDD7BD4(v109);
        v120 = *(v117 + 16);
        v121 = (v118 & 1) == 0;
        v122 = v120 + v121;
        if (__OFADD__(v120, v121))
        {
          goto LABEL_93;
        }

        v74 = v118;
        if (*(v117 + 24) >= v122)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21CDD8EAC();
          }
        }

        else
        {
          sub_21CDD80BC(v122, isUniquelyReferenced_nonNull_native);
          v123 = sub_21CDD7BD4(v109);
          if ((v74 & 1) != (v124 & 1))
          {
            goto LABEL_101;
          }

          v119 = v123;
        }

        isUniquelyReferenced_nonNull_native = v116;
        v132 = v159;
        v79 = v115;
        if (v74)
        {
          v105 = *(v159 + 7);
          v106 = *(v105 + 8 * v119);
          *(v105 + 8 * v119) = v71;

          v107 = v158;
          v47 = v132;
        }

        else
        {
          *(v159 + (v119 >> 6) + 8) |= 1 << v119;
          *(v132[6] + 8 * v119) = v47;
          *(v132[7] + 8 * v119) = v71;
          v133 = v132[2];
          v94 = __OFADD__(v133, 1);
          v134 = v133 + 1;
          v107 = v158;
          if (v94)
          {
            goto LABEL_97;
          }

          v47 = v132;
          v132[2] = v134;
        }

        v74 = v156;
      }

      else if (v112)
      {
        if (v47 < 0)
        {
          v125 = v47;
        }

        else
        {
          v125 = v47 & 0xFFFFFFFFFFFFFF8;
        }

        v71 = v109;
        v126 = sub_21CDDBDBC();

        if (v126)
        {
          swift_unknownObjectRelease();

          v127 = sub_21CDDBDAC();
          v128 = sub_21CDD7E70(v125, v127);

          v129 = sub_21CDD7BD4(v71);
          v47 = v130;

          if ((v47 & 1) == 0)
          {
            goto LABEL_98;
          }

          v131 = *(*(v128 + 56) + 8 * v129);
          sub_21CDD85E8(v129, v128);

          v47 = v128;
        }

        else
        {
        }
      }

      else
      {
        v135 = sub_21CDD7BD4(v109);
        if (v136)
        {
          v137 = v135;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v159 = v47;
          if ((v138 & 1) == 0)
          {
            sub_21CDD8EAC();
            v47 = v159;
          }

          v139 = *(*(v47 + 56) + 8 * v137);
          sub_21CDD85E8(v137, v47);
        }

        else
        {
        }
      }

      ++v73;
      if (v107 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_88;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    if (!sub_21CDDBDAC())
    {
      goto LABEL_17;
    }
  }

  v83 = 0;
  v158 = (v164 + 4);
  while (1)
  {
    if (v83 >= *(v74 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    v86 = *(v158 + v83);
    v87 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v71 = v86;
    v88 = [v87 initWithBool_];
    if (!v88)
    {
      v98 = sub_21CDD7C18(v71);
      if (v99)
      {
        v100 = v98;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v159 = v79;
        if (!v101)
        {
          sub_21CDD900C();
          v79 = v159;
        }

        sub_21CDD8774(v100, v79);
      }

      else
      {
      }

      goto LABEL_29;
    }

    v73 = v88;
    v89 = v47;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v79;
    v90 = sub_21CDD7C18(v71);
    v92 = v79[2];
    v93 = (v91 & 1) == 0;
    v94 = __OFADD__(v92, v93);
    v95 = v92 + v93;
    if (v94)
    {
      goto LABEL_92;
    }

    v96 = v91;
    if (v79[3] < v95)
    {
      break;
    }

    if ((v47 & 1) == 0)
    {
      v104 = v90;
      sub_21CDD900C();
      v90 = v104;
    }

LABEL_42:
    v47 = v89;
    v79 = v159;
    if (v96)
    {
      v84 = *(v159 + 7);
      v85 = *(v84 + 8 * v90);
      *(v84 + 8 * v90) = v73;
    }

    else
    {
      *(v159 + (v90 >> 6) + 8) |= 1 << v90;
      *(v79[6] + 8 * v90) = v71;
      *(v79[7] + 8 * v90) = v73;
      v102 = v79[2];
      v94 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v94)
      {
        goto LABEL_96;
      }

      v79[2] = v103;
    }

LABEL_29:
    if (isUniquelyReferenced_nonNull_native == ++v83)
    {
      goto LABEL_46;
    }
  }

  sub_21CDD8324(v95, v47);
  v90 = sub_21CDD7C18(v71);
  if ((v96 & 1) == (v97 & 1))
  {
    goto LABEL_42;
  }

  sub_21CDDBE5C();
  __break(1u);
LABEL_101:
  sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
  sub_21CDDBE5C();
  __break(1u);
}

void *sub_21CDD50F0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_21CDDBDBC();

    if (v4)
    {
      sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_21CDD7BD4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void *sub_21CDD51B4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  result = [*a1 bundleIdentifier];
  if (result)
  {
    v10 = result;
    v11 = sub_21CDDBB2C();
    v13 = v12;

    sub_21CDDB508(0, &qword_27CE3EE28, 0x277CC1E90);

    v14 = sub_21CDD25CC();
    if (v4)
    {

LABEL_4:

      result = 0;
      goto LABEL_5;
    }

    if (!v14)
    {
      goto LABEL_4;
    }

    v15 = sub_21CDDAC8C(v11, v13);

    if (v15)
    {
      v50 = a3;
      v54 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED88, &qword_21CDDD3F8);
      inited = swift_initStackObject();
      v53 = &v50;
      *(inited + 32) = *MEMORY[0x277D26528];
      v52 = inited + 32;
      *(inited + 16) = xmmword_21CDDD1A0;
      v17 = *MEMORY[0x277D26530];
      v18 = *MEMORY[0x277D26548];
      *(inited + 40) = *MEMORY[0x277D26530];
      *(inited + 48) = v18;
      v19 = *MEMORY[0x277D26538];
      v20 = *MEMORY[0x277D26540];
      *(inited + 56) = *MEMORY[0x277D26538];
      *(inited + 64) = v20;
      v55 = v15;
      MEMORY[0x28223BE20]();
      v51 = v15;
      v49[2] = &v55;
      v22 = v21;
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v27 = sub_21CDD9D48(sub_21CDDB5EC, v49, inited);
      swift_setDeallocating();
      type metadata accessor for MOUserSafetyScannableServices(0);
      swift_arrayDestroy();

      if (v27)
      {
        result = 0;
        a4 = v54;
        goto LABEL_5;
      }

      a4 = v54;
      a3 = v50;
    }

    v28 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy;
    v29 = *(a2 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
    v30 = 0x278322000uLL;
    if (!v29)
    {
      goto LABEL_15;
    }

    v31 = [v29 allApplications];
    if (!v31)
    {
      goto LABEL_15;
    }

    v32 = v31;
    sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
    sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
    sub_21CDDA7C0();
    v30 = 0x278322000;
    v33 = sub_21CDDBA8C();

    v34 = sub_21CDD50F0(v8, v33);

    if (v34)
    {
    }

    else
    {
LABEL_15:
      v35 = v8;
      MEMORY[0x21CF18C00]();
      if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21CDDBBBC();
        v30 = 0x278322000;
      }

      sub_21CDDBBDC();
    }

    v36 = swift_allocObject();
    *(v36 + 16) = a2;
    *(v36 + 24) = v8;
    v37 = *(a2 + v28);
    if (v37)
    {
      v38 = v8;

      v39 = [v37 *(v30 + 2528)];
      if (v39)
      {
        v40 = v39;
        sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
        sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
        sub_21CDDA7C0();
        v41 = sub_21CDDBA8C();

        v42 = sub_21CDD50F0(v38, v41);

        if (v42)
        {
          v43 = [v42 BOOLValue];

LABEL_24:
          v45 = type metadata accessor for NudityDetectionApp(0);
          v46 = *(v45 + 48);
          v47 = *(v45 + 52);
          swift_allocObject();
          result = sub_21CDD2264(sub_21CDDB550, v36, v43, v8);
          goto LABEL_5;
        }
      }
    }

    else
    {
      v44 = v8;
    }

    v43 = 1;
    goto LABEL_24;
  }

LABEL_5:
  *a4 = result;
  return result;
}

uint64_t sub_21CDD5640(unint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_21CDDA01C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v25[0] = v26;
  v25[1] = v3;
  result = sub_21CDDBE3C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v21 = v1;
      v8 = -1;
      v9 = 1;
      sub_21CDD1A94();
      v10 = v26;
      do
      {
        v11 = *(v26 + 8 * v9);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          v16 = *(v11 + 16);
          v15 = *(v11 + 24);
          v23 = v16;
          v24 = v15;
          v17 = *(v14 + 16);
          v18 = *(v14 + 24);
          v22[0] = v17;
          v22[1] = v18;
          result = sub_21CDDBC8C();
          if (result != -1)
          {
            break;
          }

          v19 = *v13;
          v11 = v13[1];
          *v13 = v11;
          v13[1] = v19;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
      v1 = v21;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for NudityDetectionEntry(0);
      v7 = sub_21CDDBBCC();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v23 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v6;
    sub_21CDD916C(&v23, v22, v25, v5);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_21CDD57F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21CDDBDAC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_21CDDBDAC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_21CDD7B34(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21CDD9E78(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_21CDD58E8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_21CDD8AB4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_21CDD7C18(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_21CDD900C();
        v13 = v16;
      }

      sub_21CDD8774(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

void sub_21CDD59EC(int a1)
{
  v2 = v1;
  v4 = sub_21CDDB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDDB6DC();
  v9 = sub_21CDDB6CC();
  v10 = sub_21CDDBC5C();
  v11 = os_log_type_enabled(v9, v10);
  v96 = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = v2;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v12 = 136315138;
    if (a1)
    {
      v15 = 0x64656C62616E65;
    }

    else
    {
      v15 = 0x64656C6261736964;
    }

    if (a1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    v17 = sub_21CDCF78C(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_21CDC8000, v9, v10, "toggle all %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    v2 = v13;
    MEMORY[0x21CF19400](v18, -1, -1);
    MEMORY[0x21CF19400](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v19 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy;
  v20 = *(v2 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
  v21 = &unk_28120F000;
  if (v20 && [v20 policy])
  {
    goto LABEL_68;
  }

  v94 = v19;
  aBlock[0] = MEMORY[0x277D84F98];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CDDB71C();

  v22 = v100;
  if (v100 >> 62)
  {
LABEL_66:
    v23 = sub_21CDDBDAC();
    v95 = v2;
    if (v23)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

  v23 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v95 = v2;
  if (!v23)
  {
LABEL_67:

    v81 = objc_opt_self();
    type metadata accessor for MOUserSafetyScannableServices(0);
    sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
    sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
    v82 = sub_21CDDBA7C();

    sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
    sub_21CDDA7C0();
    v83 = sub_21CDDBA7C();

    v84 = [v81 nudityDetectionPolicyWithAllServices:v82 allApplications:v83];

    v85 = v94;
    v2 = v95;
    v86 = *(v95 + v94);
    *(v95 + v94) = v84;

    v21 = &unk_28120F000;
    v87 = [*(v2 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_localStore) userSafety];
    v88 = *(v2 + v85);
    [v87 setScanningPolicy_];

LABEL_68:
    v89 = v96 & 1;
    [*(v2 + v21[94]) setActive_];
    v90 = sub_21CDDBAFC();
    v91 = swift_allocObject();
    *(v91 + 16) = v89;
    aBlock[4] = sub_21CDDB2D8;
    aBlock[5] = v91;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CDD64D4;
    aBlock[3] = &block_descriptor_106;
    v92 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v92);

    return;
  }

LABEL_13:
  v2 = 0;
  v97 = v22 & 0xFFFFFFFFFFFFFF8;
  v98 = v22 & 0xC000000000000001;
  v24 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v98)
    {
      v28 = MEMORY[0x21CF18D70](v2, v22);
      v29 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v2 >= *(v97 + 16))
      {
        goto LABEL_62;
      }

      v28 = *(v22 + 8 * v2 + 32);

      v29 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
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
        goto LABEL_66;
      }
    }

    v99 = v29;
    type metadata accessor for NudityDetectionSystemService(0);
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      break;
    }

LABEL_40:
    type metadata accessor for NudityDetectionApp(0);
    v58 = swift_dynamicCastClass();
    if (v58)
    {
      v59 = *(v58 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI18NudityDetectionApp_application);
      v60 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v61 = v59;
      v62 = [v60 initWithBool_];
      if (v62)
      {
        v63 = v62;
        v64 = aBlock[0];
        if ((aBlock[0] & 0xC000000000000001) != 0)
        {
          if (aBlock[0] >= 0)
          {
            v64 = aBlock[0] & 0xFFFFFFFFFFFFFF8;
          }

          v65 = sub_21CDDBDAC();
          if (__OFADD__(v65, 1))
          {
            goto LABEL_63;
          }

          v66 = v24;
          v64 = sub_21CDD7E70(v64, v65 + 1);
          aBlock[0] = v64;
        }

        else
        {
          v66 = v24;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v64;
        v68 = sub_21CDD7BD4(v61);
        v70 = *(v64 + 16);
        v71 = (v69 & 1) == 0;
        v56 = __OFADD__(v70, v71);
        v72 = v70 + v71;
        if (v56)
        {
          goto LABEL_61;
        }

        v73 = v69;
        if (*(v64 + 24) >= v72)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_53;
          }

          v78 = v68;
          sub_21CDD8EAC();
          v68 = v78;
          v75 = v100;
          if ((v73 & 1) == 0)
          {
            goto LABEL_56;
          }

LABEL_54:
          v76 = v75[7];
          v77 = *(v76 + 8 * v68);
          *(v76 + 8 * v68) = v63;
        }

        else
        {
          sub_21CDD80BC(v72, isUniquelyReferenced_nonNull_native);
          v68 = sub_21CDD7BD4(v61);
          if ((v73 & 1) != (v74 & 1))
          {
            goto LABEL_70;
          }

LABEL_53:
          v75 = v100;
          if (v73)
          {
            goto LABEL_54;
          }

LABEL_56:
          v75[(v68 >> 6) + 8] |= 1 << v68;
          *(v75[6] + 8 * v68) = v61;
          *(v75[7] + 8 * v68) = v63;

          v79 = v75[2];
          v56 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v56)
          {
            goto LABEL_65;
          }

          v75[2] = v80;
        }

        aBlock[0] = v75;
        v24 = v66;
        goto LABEL_15;
      }

      v25 = sub_21CDD7D24(v61);
    }

LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v100) = 1;

    sub_21CDDB72C();
    v27 = *(v28 + 32);
    v26 = *(v28 + 40);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CDDB71C();

    v27(v100);

    ++v2;
    if (v99 == v23)
    {
      goto LABEL_67;
    }
  }

  v31 = *(v30 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI28NudityDetectionSystemService_service);
  v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v33 = v31;
  v34 = [v32 initWithBool_];
  if (!v34)
  {
    v49 = sub_21CDD7C18(v33);
    if (v50)
    {
      v51 = v49;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v24;
      if (!v52)
      {
        sub_21CDD900C();
        v24 = v100;
      }

      sub_21CDD8774(v51, v24);
    }

    goto LABEL_40;
  }

  v35 = v34;
  v36 = v23;
  v37 = v22;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v100 = v24;
  v39 = sub_21CDD7C18(v33);
  v41 = v24;
  v42 = v39;
  v43 = *(v41 + 16);
  v44 = (v40 & 1) == 0;
  v45 = v43 + v44;
  if (__OFADD__(v43, v44))
  {
    goto LABEL_60;
  }

  v22 = v40;
  if (*(v41 + 24) >= v45)
  {
    if (v38)
    {
      v48 = v100;
      if (v40)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_21CDD900C();
      v48 = v100;
      if (v22)
      {
LABEL_36:
        v53 = v48[7];
        v54 = *(v53 + 8 * v42);
        *(v53 + 8 * v42) = v35;

        v22 = v37;
        v23 = v36;
        v24 = v48;
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  sub_21CDD8324(v45, v38);
  v46 = sub_21CDD7C18(v33);
  if ((v22 & 1) == (v47 & 1))
  {
    v42 = v46;
    v48 = v100;
    if (v22)
    {
      goto LABEL_36;
    }

LABEL_38:
    v48[(v42 >> 6) + 8] |= 1 << v42;
    *(v48[6] + 8 * v42) = v33;
    *(v48[7] + 8 * v42) = v35;

    v55 = v48[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_64;
    }

    v24 = v48;
    v48[2] = v57;
    v22 = v37;
    v23 = v36;
    goto LABEL_40;
  }

  type metadata accessor for MOUserSafetyScannableServices(0);
  sub_21CDDBE5C();
  __break(1u);
LABEL_70:
  sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
  sub_21CDDBE5C();
  __break(1u);
}

unint64_t sub_21CDD6408(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EDA8, &qword_21CDDD4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CDDD190;
  *(inited + 32) = 0x64656C62616E65;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v3 = sub_21CDDB2E0(inited);
  swift_setDeallocating();
  sub_21CDCD3D8(inited + 32, &qword_27CE3EDB0, &qword_21CDDD4A8);
  return v3;
}

id sub_21CDD64D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_21CDDB508(0, &qword_27CE3EDA0, 0x277D82BB8);
    v5 = sub_21CDDBA7C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_21CDD6570(void *a1, int a2)
{
  v3 = v2;
  v6 = sub_21CDDB6EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDDB6DC();
  v11 = a1;
  v12 = sub_21CDDB6CC();
  v13 = sub_21CDDBC5C();

  v14 = os_log_type_enabled(v12, v13);
  v48 = a2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v47 = v7;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    v49 = v18;
    *v17 = 136315394;
    v19 = sub_21CDDBB2C();
    v21 = sub_21CDCF78C(v19, v20, &v49);
    v46 = v6;
    v22 = v11;
    v23 = v3;
    v24 = v21;

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    if (v16)
    {
      v25 = 0x64656C62616E65;
    }

    else
    {
      v25 = 0x64656C6261736964;
    }

    if (v16)
    {
      v26 = 0xE700000000000000;
    }

    else
    {
      v26 = 0xE800000000000000;
    }

    v27 = sub_21CDCF78C(v25, v26, &v49);
    v3 = v23;
    v11 = v22;

    *(v17 + 14) = v27;
    _os_log_impl(&dword_21CDC8000, v12, v13, "toggle service %s: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF19400](v18, -1, -1);
    MEMORY[0x21CF19400](v17, -1, -1);

    (*(v47 + 8))(v10, v46);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v28 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy;
  v29 = *(v3 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
  if (v29)
  {
    v30 = v29;
    if ([v30 policy] == 1)
    {
      v31 = [v30 allServices];
      if (v31)
      {
        v32 = v31;
        v33 = v3;
        type metadata accessor for MOUserSafetyScannableServices(0);
        sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
        sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
        v34 = sub_21CDDBA8C();

        v49 = v34;
        v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        v36 = v11;
        sub_21CDD58E8([v35 initWithBool_], v36);
        v37 = sub_21CDDBA7C();
        v38 = [v30 allApplications];
        if (v38)
        {
          v39 = v38;
          sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
          sub_21CDDA7C0();
          sub_21CDDBA8C();
        }

        else
        {
          sub_21CDDB1E0(MEMORY[0x277D84F90]);
        }

        v40 = objc_opt_self();
        sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
        sub_21CDDA7C0();
        v41 = sub_21CDDBA7C();

        v42 = [v40 nudityDetectionPolicyWithAllServices:v37 allApplications:v41];

        v43 = *(v33 + v28);
        *(v33 + v28) = v42;

        v44 = [*(v33 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_localStore) userSafety];
        v45 = *(v33 + v28);
        [v44 setScanningPolicy_];
      }
    }
  }
}

void sub_21CDD6A70(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_21CDDB6EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDDB6DC();
  v11 = a1;
  v12 = sub_21CDDB6CC();
  v13 = sub_21CDDBC5C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v45 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2080;
    v46 = v3;
    if (a2)
    {
      v18 = 0x64656C62616E65;
    }

    else
    {
      v18 = 0x64656C6261736964;
    }

    v44 = v6;
    v19 = a2;
    if (a2)
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = 0xE800000000000000;
    }

    v21 = v11;
    v22 = sub_21CDCF78C(v18, v20, &v48);
    a2 = v19;

    *(v15 + 14) = v22;
    v3 = v46;
    _os_log_impl(&dword_21CDC8000, v12, v13, "toggle app %@: %s", v15, 0x16u);
    sub_21CDCD3D8(v16, &qword_27CE3ED40, &qword_21CDDD1E8);
    MEMORY[0x21CF19400](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x21CF19400](v17, -1, -1);
    MEMORY[0x21CF19400](v15, -1, -1);

    (*(v45 + 8))(v10, v44);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v23 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy;
  v24 = *(v3 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
  if (v24)
  {
    v25 = v24;
    if ([v25 policy] == 1)
    {
      v26 = [v25 allApplications];
      if (v26)
      {
        v27 = v26;
        v46 = v3;
        sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
        sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
        sub_21CDDA7C0();
        v28 = sub_21CDDBA8C();

        v48 = v28;
        v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        if (v29)
        {
          v30 = v29;
          if ((v28 & 0xC000000000000001) != 0)
          {
            if (v28 >= 0)
            {
              v28 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v31 = sub_21CDDBDAC();
            if (__OFADD__(v31, 1))
            {
              __break(1u);
              return;
            }

            v28 = sub_21CDD7E70(v28, v31 + 1);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v28;
          sub_21CDD893C(v30, v11, isUniquelyReferenced_nonNull_native);
          v48 = v47;
        }

        else
        {
        }

        v33 = [v25 allServices];
        if (v33)
        {
          v34 = v33;
          type metadata accessor for MOUserSafetyScannableServices(0);
          sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
          sub_21CDDBA8C();
        }

        else
        {
          sub_21CDDB0E8(MEMORY[0x277D84F90]);
        }

        v35 = objc_opt_self();
        type metadata accessor for MOUserSafetyScannableServices(0);
        sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
        v36 = sub_21CDDBA7C();

        v37 = sub_21CDDBA7C();

        v38 = [v35 nudityDetectionPolicyWithAllServices:v36 allApplications:v37];

        v39 = v46;
        v40 = *(v46 + v23);
        *(v46 + v23) = v38;

        v41 = [*(v39 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_localStore) userSafety];
        v42 = *(v39 + v23);
        [v41 setScanningPolicy_];
      }
    }
  }
}

BOOL sub_21CDD6FF0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore) userSafety];
  v2 = [v1 scanningPolicy];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 policy];

  return v3 == 2;
}

uint64_t sub_21CDD7078(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CDDAC8C(a1, a2);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED88, &qword_21CDDD3F8);
    inited = swift_initStackObject();
    *(inited + 32) = *MEMORY[0x277D26528];
    *(inited + 16) = xmmword_21CDDD1A0;
    v6 = *MEMORY[0x277D26530];
    v7 = *MEMORY[0x277D26548];
    *(inited + 40) = *MEMORY[0x277D26530];
    *(inited + 48) = v7;
    v8 = *MEMORY[0x277D26538];
    v9 = *MEMORY[0x277D26540];
    *(inited + 56) = *MEMORY[0x277D26538];
    *(inited + 64) = v9;
    v25 = v4;
    MEMORY[0x28223BE20](inited);
    v24[2] = &v25;
    v11 = v10;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = sub_21CDD9D48(sub_21CDDAE20, v24, inited);
    swift_setDeallocating();
    type metadata accessor for MOUserSafetyScannableServices(0);
    swift_arrayDestroy();

    return v16 & 1;
  }

  v18 = [*(v2 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore) userSafety];
  v19 = [v18 allowedClients];

  if (!v19)
  {
    v16 = 0;
    return v16 & 1;
  }

  sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
  sub_21CDDA7C0();
  v20 = sub_21CDDBC0C();

  v21 = objc_allocWithZone(MEMORY[0x277D26550]);
  v22 = sub_21CDDBAFC();
  v23 = [v21 initWithBundleIdentifier_];

  LOBYTE(v22) = sub_21CDD3C24(v23, v20);

  return v22 & 1;
}

uint64_t sub_21CDD72C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CDDAC8C(a1, a2);
  if (!v3)
  {
    v9 = objc_allocWithZone(MEMORY[0x277D26550]);
    v10 = sub_21CDDBAFC();
    v4 = [v9 initWithBundleIdentifier_];

    v11 = sub_21CDD73D4(v4);
LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [*(v2 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore) userSafety];
  v6 = [v5 scanningPolicy];

  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [v6 policy];

  if (v7 == 1)
  {
    v11 = sub_21CDD7534(v4);
    goto LABEL_9;
  }

  if (v7 != 2)
  {
    goto LABEL_7;
  }

  v8 = 1;
LABEL_10:

  return v8 & 1;
}

uint64_t sub_21CDD73D4(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectiveStore) userSafety];
  v4 = [v3 scanningPolicy];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 policy];

  if (v5 == 1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
    if (v7)
    {
      v8 = [v7 allApplications];
      if (v8)
      {
        v9 = v8;
        sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
        sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
        sub_21CDDA7C0();
        v10 = sub_21CDDBA8C();

        v11 = sub_21CDD50F0(a1, v10);

        if (v11)
        {
          v12 = [v11 BOOLValue];

          return v12;
        }
      }
    }
  }

  else if (v5 != 2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_21CDD7534(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy);
  if (v3)
  {
    v4 = [v3 allServices];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for MOUserSafetyScannableServices(0);
      sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
      sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
      v6 = sub_21CDDBA8C();

      if (*(v6 + 16))
      {
        v7 = sub_21CDD7C18(a1);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 8 * v7);

          v10 = [v9 BOOLValue];

          return v10;
        }
      }
    }
  }

  return 1;
}

uint64_t NudityDetectionRootModel.deinit()
{
  v1 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel__detectionEntries;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED28, &unk_21CDDD1D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel__nudityDetectionEnabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3ED48, &qword_21CDDD1F0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel__nudityDetectionAnalyticsEnabled, v4);

  v6 = *(v0 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_effectivePublisherSink);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NudityDetectionRootModel.__deallocating_deinit()
{
  NudityDetectionRootModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21CDD77EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NudityDetectionRootModel(0);
  result = sub_21CDDB6FC();
  *a1 = result;
  return result;
}

id sub_21CDD782C(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21CDDBAFC();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_21CDDB60C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

char *sub_21CDD7908(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EE20, &qword_21CDDD578);
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

void *sub_21CDD7A0C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED88, &qword_21CDDD3F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for MOUserSafetyScannableServices(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21CDD7B34(uint64_t a1)
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
    sub_21CDDBDAC();
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
  result = sub_21CDDBD1C();
  *v1 = result;
  return result;
}

unint64_t sub_21CDD7BD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21CDDBC6C();

  return sub_21CDD8C1C(a1, v5);
}

unint64_t sub_21CDD7C18(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21CDDBB2C();
  sub_21CDDBE6C();
  sub_21CDDBB5C();
  v4 = sub_21CDDBE8C();

  return sub_21CDD8CF0(a1, v4);
}

unint64_t sub_21CDD7CAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21CDDBE6C();
  sub_21CDDBB5C();
  v6 = sub_21CDDBE8C();

  return sub_21CDD8DF4(a1, a2, v6);
}

uint64_t sub_21CDD7D24(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_21CDD7BD4(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_21CDD85E8(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_21CDD8EAC();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_21CDDBDBC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_21CDDBDAC();
  v8 = sub_21CDD7E70(v4, v7);

  v9 = sub_21CDD7BD4(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_21CDD85E8(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_21CDD7E70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED90, &qword_21CDDD400);
    v2 = sub_21CDDBE0C();
    v20 = v2;
    sub_21CDDBD9C();
    v3 = sub_21CDDBDCC();
    if (v3)
    {
      v4 = v3;
      sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_21CDD80BC(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_21CDDBC6C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_21CDDBDCC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21CDD80BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED90, &qword_21CDDD400);
  result = sub_21CDDBDFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_21CDDBC6C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21CDD8324(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED98, &qword_21CDDD408);
  v38 = a2;
  result = sub_21CDDBDFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_21CDDBB2C();
      sub_21CDDBE6C();
      sub_21CDDBB5C();
      v27 = sub_21CDDBE8C();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_21CDD85E8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CDDBC9C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_21CDDBC6C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_21CDD8774(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CDDBC9C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_21CDDBB2C();
      sub_21CDDBE6C();
      v11 = v10;
      sub_21CDDBB5C();
      v12 = sub_21CDDBE8C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_21CDD893C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21CDD7BD4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_21CDD80BC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_21CDD7BD4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
        sub_21CDDBE5C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_21CDD8EAC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_21CDD8AB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21CDD7C18(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_21CDD8324(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_21CDD7C18(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for MOUserSafetyScannableServices(0);
        sub_21CDDBE5C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_21CDD900C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

unint64_t sub_21CDD8C1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21CDDBC7C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CDD8CF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21CDDBB2C();
      v9 = v8;
      if (v7 == sub_21CDDBB2C() && v9 == v10)
      {
        break;
      }

      v12 = sub_21CDDBE4C();

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

unint64_t sub_21CDD8DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21CDDBE4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_21CDD8EAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED90, &qword_21CDDD400);
  v2 = *v0;
  v3 = sub_21CDDBDEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_21CDD900C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED98, &qword_21CDDD408);
  v2 = *v0;
  v3 = sub_21CDDBDEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_21CDD916C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_129:
    v4 = *v97;
    if (!*v97)
    {
      goto LABEL_167;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_131;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v9 >= v5)
    {
      v5 = v9;
    }

    else
    {
      v10 = *(*a3 + 8 * v9);
      v11 = 8 * v8;
      v12 = (*a3 + 8 * v8);
      v14 = *v12;
      v13 = v12 + 2;
      v120 = *(v10 + 16);
      v125 = *(v10 + 24);
      v110 = *(v14 + 16);
      v115 = *(v14 + 24);
      v4 = sub_21CDD1A94();
      result = sub_21CDDBC8C();
      v15 = result;
      __dst = v8;
      v16 = v8 + 2;
      while (v5 != v16)
      {
        v17 = *(v13 - 1);
        v121 = *(*v13 + 16);
        v126 = *(*v13 + 24);
        v111 = *(v17 + 16);
        v116 = *(v17 + 24);
        result = sub_21CDDBC8C();
        ++v16;
        ++v13;
        if ((v15 == -1) == (result != -1))
        {
          v5 = v16 - 1;
          break;
        }
      }

      v8 = __dst;
      if (v15 == -1)
      {
        if (v5 < __dst)
        {
          goto LABEL_160;
        }

        if (__dst < v5)
        {
          v18 = 8 * v5 - 8;
          v19 = v5;
          v20 = __dst;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_164;
              }

              v21 = *(v22 + v11);
              *(v22 + v11) = *(v22 + v18);
              *(v22 + v18) = v21;
            }

            ++v20;
            v18 -= 8;
            v11 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v5 >= v23)
    {
      v26 = v5;
      if (v5 < v8)
      {
        goto LABEL_154;
      }
    }

    else
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_157;
      }

      v24 = v5;
      if (v5 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_158;
        }

        if (v8 + a4 >= v23)
        {
          v25 = a3[1];
        }

        else
        {
          v25 = (v8 + a4);
        }

        if (v25 < v8)
        {
          goto LABEL_159;
        }

        if (v5 != v25)
        {
          v106 = v7;
          v84 = *a3;
          v4 = sub_21CDD1A94();
          v85 = v84 + 8 * v24 - 8;
          __dstb = v8;
          v86 = v8 - v24;
          do
          {
            v7 = v25;
            v87 = *(v84 + 8 * v24);
            v88 = v86;
            v89 = v85;
            do
            {
              v124 = *(v87 + 16);
              v129 = *(v87 + 24);
              v114 = *(*v89 + 16);
              v119 = *(*v89 + 24);
              if (sub_21CDDBC8C() != -1)
              {
                break;
              }

              if (!v84)
              {
                goto LABEL_161;
              }

              v90 = *v89;
              v87 = v89[1];
              *v89 = v87;
              v89[1] = v90;
              --v89;
            }

            while (!__CFADD__(v88++, 1));
            ++v24;
            v85 += 8;
            --v86;
          }

          while (v24 != v25);
          v26 = v25;
          v7 = v106;
          v8 = __dstb;
          if (v25 >= __dstb)
          {
            goto LABEL_31;
          }

LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
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
          result = sub_21CDD9D34(v7);
          v7 = result;
LABEL_131:
          v92 = *(v7 + 2);
          if (v92 >= 2)
          {
            while (*a3)
            {
              v93 = *&v7[16 * v92];
              v94 = *&v7[16 * v92 + 24];
              sub_21CDD99F8((*a3 + 8 * v93), (*a3 + 8 * *&v7[16 * v92 + 16]), (*a3 + 8 * v94), v4);
              if (v98)
              {
              }

              if (v94 < v93)
              {
                goto LABEL_155;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_21CDD9D34(v7);
              }

              if (v92 - 2 >= *(v7 + 2))
              {
                goto LABEL_156;
              }

              v95 = &v7[16 * v92];
              *v95 = v93;
              *(v95 + 1) = v94;
              result = sub_21CDD9CA8(v92 - 1);
              v92 = *(v7 + 2);
              if (v92 <= 1)
              {
              }
            }

            goto LABEL_166;
          }
        }
      }

      v26 = v5;
      if (v5 < v8)
      {
        goto LABEL_154;
      }
    }

LABEL_31:
    v99 = v26;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21CDD7908(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v4 = *(v7 + 2);
    v27 = *(v7 + 3);
    v28 = v4 + 1;
    if (v4 >= v27 >> 1)
    {
      result = sub_21CDD7908((v27 > 1), v4 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v28;
    v29 = &v7[16 * v4];
    *(v29 + 4) = v8;
    *(v29 + 5) = v99;
    __dsta = *v97;
    if (!*v97)
    {
      goto LABEL_165;
    }

    if (v4)
    {
      break;
    }

LABEL_3:
    v6 = v99;
    v5 = a3[1];
    if (v99 >= v5)
    {
      goto LABEL_129;
    }
  }

  while (1)
  {
    v30 = v28 - 1;
    if (v28 >= 4)
    {
      v35 = &v7[16 * v28 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v4 = __dsta;
      if (v41)
      {
        goto LABEL_143;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_144;
      }

      v42 = &v7[16 * v28];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_146;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_149;
      }

      if (v46 >= v38)
      {
        v64 = &v7[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_153;
        }

        if (v33 < v67)
        {
          v30 = v28 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    v4 = __dsta;
    if (v28 == 3)
    {
      v31 = *(v7 + 4);
      v32 = *(v7 + 5);
      v41 = __OFSUB__(v32, v31);
      v33 = v32 - v31;
      v34 = v41;
LABEL_50:
      if (v34)
      {
        goto LABEL_145;
      }

      v47 = &v7[16 * v28];
      v49 = *v47;
      v48 = *(v47 + 1);
      v50 = __OFSUB__(v48, v49);
      v51 = v48 - v49;
      v52 = v50;
      if (v50)
      {
        goto LABEL_148;
      }

      v53 = &v7[16 * v30 + 32];
      v55 = *v53;
      v54 = *(v53 + 1);
      v41 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v41)
      {
        goto LABEL_151;
      }

      if (__OFADD__(v51, v56))
      {
        goto LABEL_152;
      }

      if (v51 + v56 >= v33)
      {
        if (v33 < v56)
        {
          v30 = v28 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v57 = &v7[16 * v28];
    v59 = *v57;
    v58 = *(v57 + 1);
    v41 = __OFSUB__(v58, v59);
    v51 = v58 - v59;
    v52 = v41;
LABEL_64:
    if (v52)
    {
      goto LABEL_147;
    }

    v60 = &v7[16 * v30];
    v62 = *(v60 + 4);
    v61 = *(v60 + 5);
    v41 = __OFSUB__(v61, v62);
    v63 = v61 - v62;
    if (v41)
    {
      goto LABEL_150;
    }

    if (v63 < v51)
    {
      goto LABEL_3;
    }

LABEL_71:
    if (v30 - 1 >= v28)
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v68 = *a3;
    if (!*a3)
    {
      break;
    }

    v101 = v30 - 1;
    v102 = v30;
    v69 = *&v7[16 * v30 + 32];
    v70 = *&v7[16 * v30 + 40];
    v104 = *&v7[16 * v30 + 16];
    v105 = v7;
    v71 = (v68 + 8 * v104);
    v72 = 8 * v69;
    v73 = (v68 + 8 * v69);
    v103 = v70;
    v7 = (8 * v70);
    v74 = (v68 + 8 * v70);
    v75 = 8 * v69 - 8 * v104;
    v76 = 8 * v70 - 8 * v69;
    if (v75 >= v76)
    {
      if (v73 != v4 || v74 <= v4)
      {
        memmove(v4, (v68 + 8 * v69), 8 * v70 - 8 * v69);
      }

      v4 += v76;
      if (v76 < 1 || v72 <= 8 * v104)
      {
LABEL_108:
        v77 = __dsta;
        v80 = v73;
      }

      else
      {
        sub_21CDD1A94();
        do
        {
          v80 = v73 - 8;
          v74 -= 8;
          v81 = v4;
          while (1)
          {
            v7 = v74 + 8;
            v82 = *(v81 - 1);
            v81 -= 8;
            v123 = *(v82 + 16);
            v128 = *(v82 + 24);
            v113 = *(*v80 + 16);
            v118 = *(*v80 + 24);
            if (sub_21CDDBC8C() == -1)
            {
              break;
            }

            if (v7 != v4)
            {
              *v74 = *v81;
            }

            v74 -= 8;
            v4 = v81;
            if (v81 <= __dsta)
            {
              v4 = v81;
              goto LABEL_108;
            }
          }

          if (v7 != v73)
          {
            *v74 = *v80;
          }

          v77 = __dsta;
          if (v4 <= __dsta)
          {
            break;
          }

          v73 -= 8;
        }

        while (v71 < v80);
      }
    }

    else
    {
      if (v71 != v4 || v73 <= v4)
      {
        memmove(v4, (v68 + 8 * v104), 8 * v69 - 8 * v104);
      }

      v4 += v75;
      if (v75 >= 1 && v7 > v72)
      {
        sub_21CDD1A94();
        v77 = __dsta;
        while (1)
        {
          v122 = *(*v73 + 16);
          v127 = *(*v73 + 24);
          v112 = *(*v77 + 16);
          v117 = *(*v77 + 24);
          if (sub_21CDDBC8C() != -1)
          {
            break;
          }

          v78 = v73;
          v79 = v71 == v73;
          v73 += 8;
          if (!v79)
          {
            goto LABEL_82;
          }

LABEL_83:
          v71 += 8;
          if (v77 >= v4 || v73 >= v74)
          {
            goto LABEL_106;
          }
        }

        v78 = v77;
        v79 = v71 == v77;
        v77 += 8;
        if (v79)
        {
          goto LABEL_83;
        }

LABEL_82:
        *v71 = *v78;
        goto LABEL_83;
      }

      v77 = __dsta;
LABEL_106:
      v80 = v71;
    }

    if (v80 != v77 || v80 >= &v77[(v4 - v77 + ((v4 - v77) < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v80, v77, 8 * ((v4 - v77) / 8));
    }

    if (v103 < v104)
    {
      goto LABEL_141;
    }

    v4 = v105;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_21CDD9D34(v105);
    }

    if (v102 > *(v4 + 16))
    {
      goto LABEL_142;
    }

    v83 = v4 + 16 * v101;
    *(v83 + 32) = v104;
    *(v83 + 40) = v103;
    result = sub_21CDD9CA8(v102);
    v7 = v4;
    v28 = *(v4 + 16);
    if (v28 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_21CDD99F8(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_21CDD1A94();
      do
      {
        v31 = v6;
        v17 = v6 - 8;
        v5 -= 8;
        v18 = v14;
        while (1)
        {
          v19 = v5 + 8;
          v20 = *(v18 - 1);
          v18 -= 8;
          v6 = v17;
          v21 = *v17;
          v28 = *(v20 + 16);
          v30 = *(v20 + 24);
          v24 = *(v21 + 16);
          v26 = *(v21 + 24);
          if (sub_21CDDBC8C() == -1)
          {
            break;
          }

          if (v19 != v14)
          {
            *v5 = *v18;
          }

          v5 -= 8;
          v14 = v18;
          v17 = v6;
          if (v18 <= v4)
          {
            v14 = v18;
            v6 = v31;
            goto LABEL_39;
          }
        }

        if (v19 != v31)
        {
          *v5 = *v6;
        }
      }

      while (v14 > v4 && v6 > v7);
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_21CDD1A94();
      while (1)
      {
        v27 = *(*v6 + 16);
        v29 = *(*v6 + 24);
        v23 = *(*v4 + 16);
        v25 = *(*v4 + 24);
        if (sub_21CDDBC8C() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_21CDD9CA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CDD9D34(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21CDD9D48(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t (*sub_21CDD9DF0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CF18D70](a2, a3);
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
    *v3 = v5;
    return sub_21CDD9E70;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CDD9E78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21CDDBDAC();
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
      result = sub_21CDDBDAC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21CDD04F8(&unk_27CE3EE10, &qword_27CE3ECC8, &qword_21CDDD028);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ECC8, &qword_21CDDD028);
            v9 = sub_21CDD9DF0(v13, i, a3);
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
        type metadata accessor for NudityDetectionEntry(0);
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

uint64_t sub_21CDDA01C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21CDDBDAC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_21CDDBD1C();
}

uint64_t sub_21CDDA080(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21CDDBB2C();
  v6 = v5;
  if (v4 == sub_21CDDBB2C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CDDBE4C();
  }

  return v9 & 1;
}

uint64_t sub_21CDDA110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3EE30, &unk_21CDDD5B0);
    v3 = sub_21CDDBCDC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_21CDDBB2C();
      sub_21CDDBE6C();
      v29 = v7;
      sub_21CDDBB5C();
      v9 = sub_21CDDBE8C();

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
        v18 = sub_21CDDBB2C();
        v20 = v19;
        if (v18 == sub_21CDDBB2C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_21CDDBE4C();

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

uint64_t sub_21CDDA304(uint64_t a1)
{
  type metadata accessor for Name(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21CDDA3B4()
{
  sub_21CDDA45C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21CDDA45C()
{
  if (!qword_28120E9D0)
  {
    v0 = sub_21CDDB73C();
    if (!v1)
    {
      atomic_store(v0, &qword_28120E9D0);
    }
  }
}

void sub_21CDDA5C4()
{
  sub_21CDDA708();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21CDDA45C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CDDA708()
{
  if (!qword_28120E9D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3ECC8, &qword_21CDDD028);
    v0 = sub_21CDDB73C();
    if (!v1)
    {
      atomic_store(v0, qword_28120E9D8);
    }
  }
}

uint64_t sub_21CDDA778(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CDDA7C0()
{
  result = qword_28120E9C0;
  if (!qword_28120E9C0)
  {
    sub_21CDDB508(255, &qword_28120E9C8, 0x277D26550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120E9C0);
  }

  return result;
}

uint64_t sub_21CDDA828(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v49 = MEMORY[0x277D84F90];
    sub_21CDDBD5C();
    v7 = (a1 + 32);
    v47 = a2;
    v48 = OBJC_IVAR____TtC29CommunicationSafetySettingsUI24NudityDetectionRootModel_scanningPolicy;
    while (1)
    {
      v23 = *v7;
      v24 = *(a2 + v48);
      if (!v24)
      {
        break;
      }

      v25 = v23;
      v26 = [v24 allServices];
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = v26;
      type metadata accessor for MOUserSafetyScannableServices(0);
      sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
      sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
      v28 = sub_21CDDBA8C();

      if (!*(v28 + 16))
      {

        goto LABEL_12;
      }

      sub_21CDD7C18(v25);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      v37 = swift_allocObject();
      *(v37 + 16) = a2;
      *(v37 + 24) = v23;
      v38 = *(a2 + v48);
      if (v38)
      {
        v39 = v23;

        v40 = [v38 allServices];
        if (v40)
        {
          v41 = v40;
          type metadata accessor for MOUserSafetyScannableServices(0);
          sub_21CDDB508(0, &qword_27CE3ED78, 0x277CCABB0);
          sub_21CDDA778(&qword_27CE3ED80, type metadata accessor for MOUserSafetyScannableServices);
          v42 = sub_21CDDBA8C();

          if (*(v42 + 16) && (v43 = sub_21CDD7C18(v39), (v44 & 1) != 0))
          {
            v45 = *(*(v42 + 56) + 8 * v43);

            [v45 BOOLValue];
          }

          else
          {
          }
        }
      }

      else
      {
        v8 = v23;
      }

      v9 = type metadata accessor for NudityDetectionSystemService(0);
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      v12 = swift_allocObject();
      *(v12 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI28NudityDetectionSystemService_service) = v23;
      v13 = sub_21CDDBB2C();
      v15 = v14;
      v12[2] = 0;
      v12[3] = 0xE000000000000000;
      v12[4] = sub_21CDDB5BC;
      v12[5] = v37;
      swift_beginAccess();
      v16 = v23;

      sub_21CDDB70C();
      swift_endAccess();
      v17 = (v12 + OBJC_IVAR____TtC29CommunicationSafetySettingsUI20NudityDetectionEntry_defaultsKey);
      *v17 = v13;
      v17[1] = v15;

      v18 = sub_21CDCC07C();
      v20 = v19;

      v21 = v12[3];
      v12[2] = v18;
      v12[3] = v20;

      sub_21CDDBD3C();
      v22 = *(v49 + 16);
      sub_21CDDBD6C();
      sub_21CDDBD7C();
      sub_21CDDBD4C();
      ++v7;
      --v4;
      a2 = v47;
      if (!v4)
      {
        return v49;
      }
    }

    v31 = v23;
LABEL_12:
    v32 = *a3;
    v33 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_21CDD7A0C(0, v32[2] + 1, 1, v32);
      *a3 = v32;
    }

    v36 = v32[2];
    v35 = v32[3];
    if (v36 >= v35 >> 1)
    {
      v32 = sub_21CDD7A0C((v35 > 1), v36 + 1, 1, v32);
      *a3 = v32;
    }

    v32[2] = v36 + 1;
    v32[v36 + 4] = v33;
    goto LABEL_17;
  }

  return result;
}

id sub_21CDDAC8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000021CDDD8C0 == a2 || (sub_21CDDBE4C() & 1) != 0)
  {
    v4 = MEMORY[0x277D26538];
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CDDD8E0 == a2 || (sub_21CDDBE4C() & 1) != 0)
  {
    v4 = MEMORY[0x277D26530];
  }

  else if (a1 == 0xD000000000000019 && 0x800000021CDDD8A0 == a2 || (sub_21CDDBE4C() & 1) != 0 || a1 == 0xD000000000000010 && 0x800000021CDDDE90 == a2 || (sub_21CDDBE4C() & 1) != 0)
  {
    v4 = MEMORY[0x277D26540];
  }

  else
  {
    if ((a1 != 0xD000000000000012 || 0x800000021CDDD880 != a2) && (sub_21CDDBE4C() & 1) == 0)
    {
      return 0;
    }

    v4 = MEMORY[0x277D26548];
  }

  v5 = *v4;
  v6 = *v4;
  return v5;
}

void sub_21CDDAE40(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a1;
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21CDDBCAC();
    sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550);
    sub_21CDDA7C0();
    sub_21CDDBC2C();
    v5 = v23[1];
    v6 = v23[2];
    v7 = v23[3];
    v8 = v23[4];
    v9 = v23[5];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = (a1 + 56);
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

    v9 = (v12 & *(a1 + 56));

    v8 = 0;
  }

  while ((v5 & 0x8000000000000000) != 0)
  {
    v18 = sub_21CDDBCBC();
    if (!v18 || (v22 = v18, sub_21CDDB508(0, &qword_28120E9C8, 0x277D26550), swift_dynamicCast(), v17 = v23[0], v15 = v8, v16 = v9, !v23[0]))
    {
LABEL_22:
      sub_21CDDB500();
      return;
    }

LABEL_18:
    v23[0] = v17;
    sub_21CDD51B4(v23, a2, a3, &v22);
    if (v4)
    {

      sub_21CDDB500();

      return;
    }

    if (v22)
    {
      MEMORY[0x21CF18C00]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21CDDBBBC();
      }

      sub_21CDDBBDC();
    }

    v8 = v15;
    v9 = v16;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = v6[v15];
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_21CDDB0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED98, &qword_21CDDD408);
    v3 = sub_21CDDBE1C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_21CDD7C18(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDDB1E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3ED90, &qword_21CDDD400);
    v3 = sub_21CDDBE1C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_21CDD7BD4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDDB2E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3EDB8, &qword_21CDDD4B0);
    v3 = sub_21CDDBE1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21CDD7CAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CDDB3E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_21CDDB3F0()
{
  result = qword_27CE3EDD8;
  if (!qword_27CE3EDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3EDD0, &unk_21CDDD550);
    sub_21CDDB47C();
    sub_21CDCD2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EDD8);
  }

  return result;
}

unint64_t sub_21CDDB47C()
{
  result = qword_27CE3EDE0;
  if (!qword_27CE3EDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3EB80, &qword_21CDDCA58);
    sub_21CDCD2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3EDE0);
  }

  return result;
}

uint64_t sub_21CDDB508(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_21CDDB550(char a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_21CDD6A70(v3, a1);
}

uint64_t objectdestroy_130Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_21CDDB5BC(int a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_21CDD6570(v3, a1);
}