uint64_t _s14ClassroomUIKit13EMSDeviceTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2436CC368();
  MEMORY[0x245D3C5D0](v1);
  return sub_2436CC398();
}

uint64_t sub_24366B8DC()
{
  v1 = *v0;
  sub_2436CC368();
  MEMORY[0x245D3C5D0](v1);
  return sub_2436CC398();
}

uint64_t sub_24366B920(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2436CB4E8();

    return sub_2436CB108();
  }

  else
  {
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    sub_2436CB108();
    sub_2436CBF38();
    swift_getWitnessTable();
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    return sub_2436CB108();
  }
}

uint64_t sub_24366BA84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2436CB4E8();
    sub_2436CB108();
  }

  else
  {
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    sub_2436CB108();
    sub_2436CBF38();
    swift_getWitnessTable();
    sub_2436CB178();
    swift_getWitnessTable();
    sub_2436CB458();
    sub_2436CB108();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24366BCAC(uint64_t a1, id *a2)
{
  result = sub_2436CBD18();
  *a2 = 0;
  return result;
}

uint64_t sub_24366BD24(uint64_t a1, id *a2)
{
  v3 = sub_2436CBD28();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24366BDA4@<X0>(uint64_t *a1@<X8>)
{
  sub_2436CBD38();
  v2 = sub_2436CBD08();

  *a1 = v2;
  return result;
}

uint64_t sub_24366BDE8()
{
  v1 = *v0;
  v2 = sub_2436CBD38();
  v3 = MEMORY[0x245D3C020](v2);

  return v3;
}

uint64_t sub_24366BE24()
{
  v1 = *v0;
  sub_2436CBD38();
  sub_2436CBD88();
}

uint64_t sub_24366BE78()
{
  v1 = *v0;
  sub_2436CBD38();
  sub_2436CC368();
  sub_2436CBD88();
  v2 = sub_2436CC398();

  return v2;
}

void *sub_24366BEEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24366BEFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2436CBD38();
  v6 = v5;
  if (v4 == sub_2436CBD38() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2436CC2E8();
  }

  return v9 & 1;
}

uint64_t sub_24366BF84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2436CBD08();

  *a2 = v5;
  return result;
}

uint64_t sub_24366BFCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2436CBD38();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24366BFF8(uint64_t a1)
{
  v2 = sub_24366C56C(&qword_27ED7F620);
  v3 = sub_24366C56C(&unk_27ED7E280);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24366C090(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24366C0A4()
{
  result = qword_27ED7DF30;
  if (!qword_27ED7DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7DF30);
  }

  return result;
}

unint64_t sub_24366C0FC()
{
  result = qword_27ED7DF38;
  if (!qword_27ED7DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7DF38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EMSDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EMSDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EMSBiometryType(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EMSBiometryType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24366C45C(uint64_t a1, int a2)
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

uint64_t sub_24366C47C(uint64_t result, int a2, int a3)
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

void sub_24366C4B8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_24366C56C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24366C634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24366C67C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24366C6DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24366C72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24366C784(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24366C79C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_24366C7D4()
{
  sub_2436CC368();
  MEMORY[0x245D3C5D0](0);
  return sub_2436CC398();
}

uint64_t sub_24366C840()
{
  sub_2436CC368();
  MEMORY[0x245D3C5D0](0);
  return sub_2436CC398();
}

id sub_24366C920()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider;
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CFA608]) init];
    v5 = [v4 makeEasyMAIDSignInRosterProvider];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_24366C9BC()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer;
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer);
  }

  else
  {
    v4 = sub_24366C920();
    v5 = [v4 instructorRosterProviderWithoutKeychain];

    v6 = type metadata accessor for EMSProductionDataSource.RosterProviderContainer();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCC14ClassroomUIKit23EMSProductionDataSourceP33_0E980FA52DC5DDFDA33EF957E6B75ED923RosterProviderContainer_rosterProvider] = v5;
    v12.receiver = v7;
    v12.super_class = v6;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_24366CA74(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EMSUserInterfaceRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_2436CBD08();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_2436CBD08();
    v11 = [v9 objectForKey_];

    if (v11)
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      if (swift_dynamicCast())
      {
        sub_24366CF68(v13[5], v6);
        sub_243671A10(v6, a1);
        v12 = 0;
LABEL_10:
        (*(v3 + 56))(a1, v12, 1, v2);
        return;
      }
    }

    else
    {
      sub_243671AC8(v16, &qword_27ED7E4B0, &qword_2436CDAB8);
    }

    v12 = 1;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_24366CF68(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v43 - v4;
  v6 = sub_2436CAD38();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v10 = qword_27ED7E2F0;
  v11 = unk_27ED7E2F8;

  v12 = sub_24366FE3C(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0 || (sub_243670ED0(*(a1 + 56) + 32 * v12, v47), (swift_dynamicCast() & 1) == 0) || (v15 = objc_allocWithZone(MEMORY[0x277D04C00]), v16 = sub_2436CBD08(), , v17 = [v15 initWithString_], v16, !v17))
  {
LABEL_9:

    v26 = qword_27ED7E2F0;
    v25 = unk_27ED7E2F8;
    sub_243671A74();
    swift_allocError();
    *v27 = v26;
    v27[1] = v25;
    swift_willThrow();

    return;
  }

  v43 = v17;
  *v48 = v17;
  if (!*(a1 + 16) || (v18 = *aDate_1, v19 = unk_27ED7E308, , v20 = sub_24366FE3C(v18, v19), v22 = v21, , (v22 & 1) == 0))
  {

    (*(v44 + 56))(v5, 1, 1, v6);
    goto LABEL_11;
  }

  sub_243670ED0(*(a1 + 56) + 32 * v20, v47);
  v23 = swift_dynamicCast();
  v24 = v44;
  (*(v44 + 56))(v5, v23 ^ 1u, 1, v6);
  if ((*(v24 + 48))(v5, 1, v6) == 1)
  {

LABEL_11:
    sub_243671AC8(v5, &qword_27ED7E4F0, &qword_2436CF910);
    v29 = *aDate_1;
    v28 = unk_27ED7E308;
    sub_243671A74();
    swift_allocError();
    *v30 = v29;
    v30[1] = v28;
    swift_willThrow();

    return;
  }

  (*(v24 + 32))(v9, v5, v6);
  v31 = *(type metadata accessor for EMSUserInterfaceRecord() + 24);
  (*(v24 + 16))(&v48[v31], v9, v6);
  if (*(a1 + 16) && (v32 = aUseridentifier_0[0], v33 = aUseridentifier_0[1], , v34 = sub_24366FE3C(v32, v33), v36 = v35, , (v36 & 1) != 0))
  {
    sub_243670ED0(*(a1 + 56) + 32 * v34, v47);

    if (swift_dynamicCast())
    {
      (*(v44 + 8))(v9, v6);
      v37 = v46;
      v38 = v48;
      *(v48 + 1) = v45;
      *(v38 + 2) = v37;
      return;
    }
  }

  else
  {
  }

  v40 = aUseridentifier_0[0];
  v39 = aUseridentifier_0[1];
  sub_243671A74();
  swift_allocError();
  *v41 = v40;
  v41[1] = v39;
  swift_willThrow();
  v42 = *(v44 + 8);

  v42(v9, v6);

  v42(&v48[v31], v6);
}

void sub_24366D454(uint64_t a1@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2436CBD08();
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    __break(1u);
  }

  v6 = sub_24366D680();

  if (!v1)
  {
    if (v6)
    {
      v8 = objc_opt_self();
      v9 = sub_2436CBC28();

      *&v20 = 0;
      v10 = [v8 dataWithJSONObject:v9 options:0 error:&v20];

      v11 = v20;
      if (v10)
      {
        v12 = sub_2436CACB8();
        v14 = v13;

        v15 = sub_2436CAB18();
        v16 = *(v15 + 48);
        v17 = *(v15 + 52);
        swift_allocObject();
        sub_2436CAB08();
        sub_243671924();
        sub_2436CAAF8();
        sub_243670E7C(v12, v14);

        v18 = v21;
        *a1 = v20;
        *(a1 + 16) = v18;
      }

      else
      {
        v19 = v11;
        sub_2436CAC28();

        swift_willThrow();
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24366D680()
{
  v1 = sub_2436CBD08();
  v2 = [v0 objectForKey_];

  if (!v2)
  {
    return 0;
  }

  sub_2436CBFB8();
  swift_unknownObjectRelease();
  sub_243670ED0(v13, v12);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
    return v13[5];
  }

  else
  {
    v12[0] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4D0, &qword_2436CDAC0);
    v5 = sub_2436CBD68();
    v7 = v6;
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    v12[0] = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4D8, &qword_2436CDAC8);
    v8 = sub_2436CBD68();
    v10 = v9;
    sub_2436719BC();
    swift_allocError();
    *v11 = v5;
    v11[1] = v7;
    v11[2] = v8;
    v11[3] = v10;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }
}

void sub_24366D80C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_2436CBC38();

  v9 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_24366D8C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = v9;
    v10[4] = v6;
    swift_beginAccess();
    v11 = *(a4 + 16);
    swift_unknownObjectRetain();

    [v11 invalidate];
    swift_beginAccess();
    v12 = *(a4 + 16);
    *(a4 + 16) = 0;

    if ((v11 || (swift_beginAccess(), *(a3 + 16) == 1)) && !v6)
    {

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_2436718F0;
      *(v19 + 24) = v10;
      aBlock[4] = sub_2436718FC;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243689660;
      aBlock[3] = &block_descriptor_71;
      v20 = _Block_copy(aBlock);

      v21 = [v18 scheduledTimerWithTimeInterval:0 repeats:v20 block:2.0];

      _Block_release(v20);
      swift_beginAccess();
      v22 = *(a4 + 16);
      *(a4 + 16) = v21;
    }

    else
    {
      swift_beginAccess();
      v13 = *(a4 + 16);
      if (v13)
      {
        [v13 invalidate];
      }

      swift_beginAccess();
      v14 = *(a4 + 16);
      *(a4 + 16) = 0;

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterSubject);
        v17 = Strong;

        aBlock[6] = v6;
        swift_unknownObjectRetain();
        sub_2436CAE48();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    result = swift_beginAccess();
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_24366DC0C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    [v2 invalidate];
  }

  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterSubject);
    v6 = result;

    swift_unknownObjectRetain();
    sub_2436CAE48();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24366DCEC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CFA648]) init];
  v2 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy;
  v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy) = v1;
  v4 = v1;

  if (v4)
  {
    [v4 addObserver_];
  }

  [*(v0 + v2) connect];

  return sub_24366DE24();
}

void sub_24366DD80()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation;
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation);
  if (v2)
  {
    [v2 cancel];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
    if (v3)
    {
      [v3 cancel];
    }
  }

  v4 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy;
  v5 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v5)
  {
    [v5 removeObserver_];
    v5 = *(v0 + v4);
  }

  [v5 disconnect];
  v6 = *(v0 + v4);
  *(v0 + v4) = 0;
}

uint64_t sub_24366DE24()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CFA620]) init];
  v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v2)
  {
    v2 = [v2 enqueuedOperationForRequest_];
  }

  v3 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation;
  v4 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation) = v2;
  if (v4)
  {
    [v4 cancel];

    v2 = *(v0 + v3);
  }

  if (v2)
  {
    v5 = v2;
    [v5 addTarget:v0 selector:sel_fetchSignInHistoryOperationDidFinishWithOperation_ forOperationEvents:6];
  }

  return MEMORY[0x2821F96F8]();
}

void sub_24366DF10(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation;
  v4 = *(v1 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation);
  if (!v4 || (sub_243671B28(0, &qword_27ED7E4A8, 0x277CF9558), v6 = v4, v7 = a1, LOBYTE(a1) = sub_2436CBF18(), v7, v6, (a1 & 1) == 0))
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v19 = sub_2436CADE8();
    __swift_project_value_buffer(v19, qword_27ED7FD78);
    oslog = sub_2436CADC8();
    v20 = sub_2436CBED8();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24366A000, oslog, v20, "Old fetch sign in history operation is still in progress", v21, 2u);
      MEMORY[0x245D3CD90](v21, -1, -1);
    }

LABEL_17:

    return;
  }

  v8 = *(v2 + v3);
  *(v2 + v3) = 0;
  if (v8)
  {
    [v8 cancel];
  }

  v9 = [v7 error];
  if (v9)
  {
    v10 = v9;
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v11 = sub_2436CADE8();
    __swift_project_value_buffer(v11, qword_27ED7FD78);
    v12 = v10;
    oslog = sub_2436CADC8();
    v13 = sub_2436CBEC8();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v33 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      Error.crkui_verboseDescription.getter(v29);
      v18 = sub_2436AFA70(v16, v17, &v33);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_24366A000, oslog, v13, "Failed to fetch sign in history: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D3CD90](v15, -1, -1);
      MEMORY[0x245D3CD90](v14, -1, -1);

      return;
    }

    goto LABEL_17;
  }

  if ([v7 resultObject])
  {
    sub_2436CBFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (*(&v32 + 1))
  {
    sub_243671B28(0, &qword_27ED7E4B8, 0x277CFA628);
    if (swift_dynamicCast())
    {
      v22 = [v30 history];
      if (v22)
      {
        v23 = v22;
        sub_243671B28(0, &qword_27ED7E4C0, 0x277CFA640);
        v24 = sub_2436CBE08();
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      v25 = [v30 isTruncated];
      v26 = [v30 limit];
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v27 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubject);
        *&v33 = v24;
        *(&v33 + 1) = v25;
        *&v34 = v26;

        sub_2436CAE48();
      }
    }
  }

  else
  {
    sub_243671AC8(&v33, &qword_27ED7E4B0, &qword_2436CDAB8);
  }
}

uint64_t sub_24366E48C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E478, &qword_2436CDA50);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster;
  if (*(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster))
  {
    v7 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster);
  }

  else
  {
    v11[1] = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterSubject);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E480, &qword_2436CDA58);
    sub_243671838(&qword_27ED7E488, &qword_27ED7E480, &qword_2436CDA58);
    v8 = v0;
    sub_2436CAF28();

    sub_243671838(&qword_27ED7E490, &qword_27ED7E478, &qword_2436CDA50);
    v7 = sub_2436CAF08();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

void sub_24366E6D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E498, qword_2436CDA60);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v15 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterPassthroughSubscription;
    if (*&Strong[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterPassthroughSubscription])
    {
    }

    else
    {
      v7 = Strong;
      v8 = swift_allocObject();
      *(v8 + 16) = 1;
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = sub_24366C9BC();
      swift_getKeyPath();
      sub_2436CAC78();

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v8;
      v12[4] = v9;
      sub_243671838(&qword_27ED7E4A0, &qword_27ED7E498, qword_2436CDA60);

      v13 = sub_2436CAF68();

      (*(v1 + 8))(v4, v0);
      v14 = *&v7[v6];
      *&v7[v6] = v13;
    }
  }
}

uint64_t sub_24366E944()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history;
  if (*(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history);
  }

  else
  {
    v2 = sub_24366E9AC(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24366E9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E458, &qword_2436CDA40);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v9 - v5;
  v9[1] = *(a1 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubject);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E460, &qword_2436CDA48);
  sub_243671838(&qword_27ED7E468, &qword_27ED7E460, &qword_2436CDA48);
  sub_2436CAF28();

  sub_243671838(&qword_27ED7E470, &qword_27ED7E458, &qword_2436CDA40);
  v7 = sub_2436CAF08();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_24366EC3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount);
    if (v2 == -1)
    {
      __break(1u);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount) = v2 + 1;
      if (!v2)
      {
        sub_24366DCEC();
      }
    }
  }
}

void sub_24366ECB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount);
    v3 = v2 != 0;
    v4 = v2 - 1;
    if (v3)
    {
      *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount) = v4;
      if (!v4)
      {
        sub_24366DD80();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24366ED24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount);
    v3 = v2 != 0;
    v4 = v2 - 1;
    if (v3)
    {
      *(Strong + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount) = v4;
      if (!v4)
      {
        sub_24366DD80();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24366ED98(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v6)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CFA638]);
    v9 = v6;
    v10 = [v8 init];
    if (v10)
    {
      v11 = v10;
      [v10 setItem_];
      v12 = [v9 enqueuedOperationForRequest_];
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = a2;
        v14[4] = a3;
        v21[4] = sub_2436716A0;
        v21[5] = v14;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 1107296256;
        v21[2] = sub_24366F258;
        v21[3] = &block_descriptor_45;
        v15 = _Block_copy(v21);
        v16 = objc_opt_self();
        v17 = v13;

        v18 = [v16 blockOperationWithBlock_];
        _Block_release(v15);

        [v18 addDependency_];
        v19 = [objc_opt_self() mainQueue];
        [v19 addOperation_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_24367160C();
    v20 = swift_allocError();
    a2();
  }
}

void sub_24366EFE4(void *a1, void (*a2)(void *))
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v5 = sub_2436CADE8();
    __swift_project_value_buffer(v5, qword_27ED7FD78);
    v6 = v4;
    v7 = sub_2436CADC8();
    v8 = sub_2436CBEC8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      Error.crkui_verboseDescription.getter(v19);
      v13 = sub_2436AFA70(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_24366A000, v7, v8, "Failed to save sign in history: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x245D3CD90](v10, -1, -1);
      MEMORY[0x245D3CD90](v9, -1, -1);
    }

    v14 = v6;
    a2(v4);
  }

  else
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v15 = sub_2436CADE8();
    __swift_project_value_buffer(v15, qword_27ED7FD78);
    v16 = sub_2436CADC8();
    v17 = sub_2436CBED8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24366A000, v16, v17, "EMSProductionDataSource history saved", v18, 2u);
      MEMORY[0x245D3CD90](v18, -1, -1);
    }

    a2(0);
  }
}

uint64_t sub_24366F258(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24366F29C()
{
  v7 = [objc_allocWithZone(MEMORY[0x277CFA630]) init];
  if (v7)
  {
    v1 = v7;
    v2 = sub_2436CBDF8();
    [v1 setIdentifiers_];
  }

  v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v3)
  {
    v4 = [v3 enqueuedOperationForRequest_];
    if (v4)
    {
      v5 = v4;
      [v5 addTarget:v0 selector:sel_removeSignInHistoryOperationDidFinishWithOperation_ forOperationEvents:6];
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24366F3A4()
{
  [objc_allocWithZone(MEMORY[0x277CFA610]) init];
  v1 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy);
  if (v1)
  {
    v2 = [v1 enqueuedOperationForRequest_];
    if (v2)
    {
      v3 = v2;
      [v3 addTarget:v0 selector:sel_clearSignInHistoryOperationDidFinishWithOperation_ forOperationEvents:6];
    }
  }

  return MEMORY[0x2821F9730]();
}

unint64_t sub_24366F460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E408, &qword_2436CDA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2436CD980;
  v2 = unk_27ED7E2F8;
  *(inited + 32) = qword_27ED7E2F0;
  *(inited + 40) = v2;
  v3 = *v0;

  v4 = [v3 stringValue];
  v5 = sub_2436CBD38();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v9 = *aDate_1;
  v10 = unk_27ED7E308;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 88) = v10;
  v11 = *(type metadata accessor for EMSUserInterfaceRecord() + 24);
  v12 = sub_2436CAD38();
  *(inited + 120) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v0 + v11, v12);
  v14 = aUseridentifier_0[1];
  *(inited + 128) = aUseridentifier_0[0];
  *(inited + 136) = v14;
  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  *(inited + 168) = v8;
  *(inited + 144) = v15;
  *(inited + 152) = v16;

  v17 = sub_243670978(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E410, &qword_2436CDA08);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_24366F5F8()
{
  v16[4] = *MEMORY[0x277D85DE8];
  v1 = sub_2436CAB48();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2436CAB38();
  sub_243670E28();
  v4 = sub_2436CAB28();
  v6 = v5;

  if (!v0)
  {
    v9 = objc_opt_self();
    v10 = sub_2436CACA8();
    v15[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:v15];

    v12 = v15[0];
    if (v11)
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
      sub_243670ED0(v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v16);
        sub_243670E7C(v4, v6);
        result = v14;
      }

      else
      {
        sub_243670F2C();
        swift_allocError();
        swift_willThrow();
        sub_243670E7C(v4, v6);
        result = __swift_destroy_boxed_opaque_existential_0(v16);
      }
    }

    else
    {
      v13 = v12;
      sub_2436CAC28();

      swift_willThrow();
      result = sub_243670E7C(v4, v6);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24366F7F8()
{
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProvider] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___rosterProviderContainer] = 0;
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterSubject;
  v11 = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E480, &qword_2436CDA58);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_2436CAE78();
  v5 = OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubject;
  v12 = 0;
  v13 = 0;
  v11 = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E460, &qword_2436CDA48);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v0[v5] = sub_2436CAE78();
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_studentProxy] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_currentFetchHistoryOperation] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_rosterPassthroughSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource_historySubscriptionCount] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___roster] = 0;
  *&v0[OBJC_IVAR____TtC14ClassroomUIKit23EMSProductionDataSource____lazy_storage___history] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for EMSProductionDataSource();
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_24366F95C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_24366FAE0()
{
  v1 = *v0;
  v2 = sub_24366C9BC();
  v3 = *&v2[OBJC_IVAR____TtCC14ClassroomUIKit23EMSProductionDataSourceP33_0E980FA52DC5DDFDA33EF957E6B75ED923RosterProviderContainer_rosterProvider];
  swift_unknownObjectRetain();

  v4 = [v3 studentDirectoryForLocationIDs_];
  swift_unknownObjectRelease();
  return v4;
}

void sub_24366FC04(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_24366C920();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_24366FDFC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24366D80C;
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);

  [v6 fetchEligibilityForEasyMAIDSignInWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_24366FDC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24366FDFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24366FE3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2436CC368();
  sub_2436CBD88();
  v6 = sub_2436CC398();

  return sub_24366FFD0(a1, a2, v6);
}

unint64_t sub_24366FEB4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2436CBD38();
  sub_2436CC368();
  sub_2436CBD88();
  v4 = sub_2436CC398();

  return sub_243670088(a1, v4);
}

unint64_t sub_24366FF48(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2436CBF08();

  return sub_24367018C(a1, v5);
}

unint64_t sub_24366FF8C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2436CC028();

  return sub_243670260(a1, v5);
}

unint64_t sub_24366FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2436CC2E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_243670088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2436CBD38();
      v9 = v8;
      if (v7 == sub_2436CBD38() && v9 == v10)
      {
        break;
      }

      v12 = sub_2436CC2E8();

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

unint64_t sub_24367018C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2436CBF18();

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

unint64_t sub_243670260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2436713F8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D3C290](v9, a1);
      sub_243671454(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_243670328(void *a1)
{
  v2 = [a1 error];
  if (!v2)
  {
    if ([a1 resultObject])
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (*(&v19 + 1))
    {
      sub_243671B28(0, &qword_27ED7E4B8, 0x277CFA628);
      if (swift_dynamicCast())
      {
        v5 = [v17 history];

        if (v5)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_243671AC8(v20, &qword_27ED7E4B0, &qword_2436CDAB8);
    }

    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v12 = sub_2436CADE8();
    __swift_project_value_buffer(v12, qword_27ED7FD78);
    v5 = sub_2436CADC8();
    v13 = sub_2436CBEC8();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24366A000, v5, v13, "Failed to cast remove sign in history result", v14, 2u);
      MEMORY[0x245D3CD90](v14, -1, -1);
    }

    goto LABEL_21;
  }

  v3 = v2;
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v4 = sub_2436CADE8();
  __swift_project_value_buffer(v4, qword_27ED7FD78);
  v5 = v3;
  oslog = sub_2436CADC8();
  v6 = sub_2436CBEC8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v20[0] = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    Error.crkui_verboseDescription.getter(v16);
    v11 = sub_2436AFA70(v9, v10, v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24366A000, oslog, v6, "Failed to remove sign in history: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245D3CD90](v8, -1, -1);
    MEMORY[0x245D3CD90](v7, -1, -1);

LABEL_21:
    return;
  }
}

void sub_243670660(void *a1)
{
  v2 = [a1 error];
  if (!v2)
  {
    if ([a1 resultObject])
    {
      sub_2436CBFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (*(&v19 + 1))
    {
      sub_243671B28(0, &unk_27ED7E500, 0x277CFA618);
      if (swift_dynamicCast())
      {

        return;
      }
    }

    else
    {
      sub_243671AC8(v20, &qword_27ED7E4B0, &qword_2436CDAB8);
    }

    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v12 = sub_2436CADE8();
    __swift_project_value_buffer(v12, qword_27ED7FD78);
    v5 = sub_2436CADC8();
    v13 = sub_2436CBEC8();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24366A000, v5, v13, "Failed to cast clear sign in history result", v14, 2u);
      MEMORY[0x245D3CD90](v14, -1, -1);
    }

    goto LABEL_20;
  }

  v3 = v2;
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v4 = sub_2436CADE8();
  __swift_project_value_buffer(v4, qword_27ED7FD78);
  v5 = v3;
  oslog = sub_2436CADC8();
  v6 = sub_2436CBEC8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v20[0] = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    Error.crkui_verboseDescription.getter(v16);
    v11 = sub_2436AFA70(v9, v10, v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24366A000, oslog, v6, "Failed to clear sign in history: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245D3CD90](v8, -1, -1);
    MEMORY[0x245D3CD90](v7, -1, -1);

LABEL_20:
    return;
  }
}

unint64_t sub_243670978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E418, &qword_2436CDA10);
    v3 = sub_2436CC238();
    v4 = a1 + 32;

    while (1)
    {
      sub_2436714A8(v4, &v13, &qword_27ED7E410, &qword_2436CDA08);
      v5 = v13;
      v6 = v14;
      result = sub_24366FE3C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24367108C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_243670AA8(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v11 - v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2436CBD08();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    sub_2436714A8(a1, v4, &qword_27ED7E400, &qword_2436CF400);
    v8 = type metadata accessor for EMSUserInterfaceRecord();
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
    {
      sub_243671AC8(v4, &qword_27ED7E400, &qword_2436CF400);
      v9 = 0;
    }

    else
    {
      v12 = sub_24366F460();
      sub_243670FCC(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      v9 = sub_2436CC2D8();
      sub_243671AC8(&v12, &qword_27ED7E3E8, &unk_2436CD9F0);
    }

    v10 = sub_2436CBD08();
    [v7 setObject:v9 forKey:v10];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_243670C8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2436CBD08();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    if (v3)
    {
      v8 = sub_24366F5F8();
      if (v1)
      {

        return;
      }

      v11 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E3E8, &unk_2436CD9F0);
      v9 = sub_2436CC2D8();
      sub_243671AC8(&v11, &qword_27ED7E3E8, &unk_2436CD9F0);
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_2436CBD08();
    [v7 setObject:v9 forKey:v10];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
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

unint64_t sub_243670E28()
{
  result = qword_27ED7E3F0;
  if (!qword_27ED7E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E3F0);
  }

  return result;
}

uint64_t sub_243670E7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243670ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_243670F2C()
{
  result = qword_27ED7E3F8;
  if (!qword_27ED7E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E3F8);
  }

  return result;
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

uint64_t sub_243670FCC(uint64_t a1)
{
  v2 = type metadata accessor for EMSUserInterfaceRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

_OWORD *sub_24367108C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24367109C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E430, &qword_2436CDA28);
    v3 = sub_2436CC238();
    v4 = a1 + 32;

    while (1)
    {
      sub_2436714A8(v4, &v11, &qword_27ED7E438, &qword_2436CDA30);
      v5 = v11;
      result = sub_24366FEB4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24367108C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_2436711C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
    v3 = sub_2436CC238();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_24366FF48(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2436712BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E420, &qword_2436CDA18);
    v3 = sub_2436CC238();
    v4 = a1 + 32;

    while (1)
    {
      sub_2436714A8(v4, v13, &qword_27ED7E428, &qword_2436CDA20);
      result = sub_24366FF8C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_24367108C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2436714A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_243671510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7E440, &qword_2436CDA38);
    v3 = sub_2436CC238();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24366FE3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_24367160C()
{
  result = qword_27ED7E450;
  if (!qword_27ED7E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E450);
  }

  return result;
}

uint64_t sub_243671660()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2436716E4()
{
  MEMORY[0x245D3CDF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
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

uint64_t sub_243671794()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2436717D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 roster];
  *a2 = result;
  return result;
}

uint64_t sub_243671838(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_60Tm(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[3];

  a1(v1[4]);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_2436718F0()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_24366DC0C(v0[2]);
}

uint64_t sub_2436718FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_243671924()
{
  result = qword_27ED7E4C8;
  if (!qword_27ED7E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E4C8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2436719BC()
{
  result = qword_27ED7E4E0;
  if (!qword_27ED7E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E4E0);
  }

  return result;
}

uint64_t sub_243671A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSUserInterfaceRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243671A74()
{
  result = qword_27ED7E4F8;
  if (!qword_27ED7E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E4F8);
  }

  return result;
}

uint64_t sub_243671AC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243671B28(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_243671B70(uint64_t a1, int a2)
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

uint64_t sub_243671BB8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for EMSProductionDataSource.ProductionDataSourceError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EMSProductionDataSource.ProductionDataSourceError(_WORD *result, int a2, int a3)
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

unint64_t sub_243671CF0()
{
  result = qword_27ED7E510;
  if (!qword_27ED7E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E510);
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

uint64_t sub_243671D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_243671DAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_243671E18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  *(&v46 + 1) = a2;
  *&v46 = a1;
  v55 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E580, &qword_2436CDDB0);
  v51 = *(v53 - 8);
  v5 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v45 = (&v45 - v6);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E588, &qword_2436CDDB8) - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E590, &qword_2436CDDC0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E598, &qword_2436CDDC8);
  v47 = *(v50 - 8);
  v16 = *(v47 + 64);
  v17 = MEMORY[0x28223BE20](v50);
  v49 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = sub_24368DF04();
  v60[0] = a1;
  v60[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E560, &qword_2436CDD08);
  sub_2436CBA18();
  v60[0] = v21;
  v56 = v60;
  v57 = sub_24367258C;
  v58 = 0;
  type metadata accessor for EMSConfigurationViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5A0, &qword_2436CDDD0);
  sub_24367373C(&qword_27ED7E5A8, type metadata accessor for EMSConfigurationViewModel);
  sub_2436734D8();
  sub_2436CB618();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_243671838(&qword_27ED7E5B8, &qword_27ED7E590, &qword_2436CDDC0);
  sub_2436732AC();
  v48 = v20;
  sub_2436CB748();

  (*(v12 + 8))(v15, v11);
  v59 = v46;
  sub_2436CB9F8();
  if (v60[0])
  {
    v22 = *(v60[0] + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_actions);

    if (!(v22 >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (sub_2436CC008())
    {
      goto LABEL_4;
    }

LABEL_7:

    v34 = 1;
    v28 = v52;
    v27 = v53;
    goto LABEL_8;
  }

  v22 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_4:
  v23 = sub_2436CB358();
  v24 = v45;
  *v45 = v23;
  *(v24 + 8) = 0x4024000000000000;
  *(v24 + 16) = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5C0, &qword_2436CDE20) + 44);
  *&v59 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5C8, &qword_2436CDE28);
  sub_2436CAD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5D0, &qword_2436CDE30);
  sub_243671838(&qword_27ED7E5D8, &qword_27ED7E5C8, &qword_2436CDE28);
  sub_243671838(&qword_27ED7E5E0, &qword_27ED7E5D0, &qword_2436CDE30);
  sub_24367373C(&qword_27ED7E5E8, type metadata accessor for EMSConfigurationViewModel.Action);
  sub_2436CBAC8();
  v26 = sub_2436CB538();
  sub_2436CAF88();
  v28 = v52;
  v27 = v53;
  v29 = v24 + *(v53 + 36);
  *v29 = v26;
  *(v29 + 8) = v30;
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  *(v29 + 32) = v33;
  *(v29 + 40) = 0;
  sub_243673620(v24, v28);
  v34 = 0;
LABEL_8:
  (*(v51 + 56))(v28, v34, 1, v27);
  v35 = v47;
  v36 = v48;
  v37 = *(v47 + 16);
  v39 = v49;
  v38 = v50;
  v37(v49, v48, v50);
  v40 = v54;
  sub_2436714A8(v28, v54, &qword_27ED7E588, &qword_2436CDDB8);
  v41 = v55;
  v37(v55, v39, v38);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5F0, &qword_2436CDE38);
  sub_2436714A8(v40, &v41[*(v42 + 48)], &qword_27ED7E588, &qword_2436CDDB8);
  sub_243671AC8(v28, &qword_27ED7E588, &qword_2436CDDB8);
  v43 = *(v35 + 8);
  v43(v36, v38);
  sub_243671AC8(v40, &qword_27ED7E588, &qword_2436CDDB8);
  return (v43)(v39, v38);
}

uint64_t sub_24367258C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = (*a1 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title);
  v9 = *v4;
  v10 = v4[1];
  sub_2436732AC();

  *a2 = sub_2436CB698();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
}

uint64_t sub_24367261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243672800(a3, a4, v10);
  v12[0] = v10[0];
  v12[1] = v10[1];
  v13[0] = v11[0];
  *(v13 + 9) = *(v11 + 9);
  type metadata accessor for EMSConfigurationPickerViewModel();
  sub_24367373C(&qword_27ED7E568, type metadata accessor for EMSConfigurationPickerViewModel);
  sub_2436CB0A8();
  swift_getKeyPath();
  sub_2436CB0B8();

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E538, &qword_2436CDCF0);
  sub_243672FA8();
  sub_2436CB828();

  return sub_243671AC8(v12, &qword_27ED7E538, &qword_2436CDCF0);
}

double sub_243672800@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  *&v27 = a1;
  *(&v27 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E560, &qword_2436CDD08);
  sub_2436CB9F8();
  if (v18)
  {
    type metadata accessor for EMSFlowViewModel();
    swift_allocObject();

    sub_2436A9F68(v4, 0, 0);

    sub_243675768(v5, &v21);
    v17 = v21;
    v6 = v22;
    v7 = v23;
    v8 = sub_2436A990C();
    v10 = v9;

    v24 = v22;
    v25 = v23;
    v26 = v21;
    v27 = v17;
    v28 = v6;
    v29[0] = v7;
    *&v29[8] = v8;
    *&v29[16] = v10;
    v29[24] = 0;
    sub_2436714A8(&v26, &v18, &qword_27ED7E570, &qword_2436CDDA0);
    sub_2436714A8(&v24, &v18, &qword_27ED7E578, &qword_2436CDDA8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E550, &qword_2436CDCF8);
    sub_243671838(&qword_27ED7E548, &qword_27ED7E550, &qword_2436CDCF8);
    sub_2436CB398();

    sub_243671AC8(&v26, &qword_27ED7E570, &qword_2436CDDA0);
    sub_243671AC8(&v24, &qword_27ED7E578, &qword_2436CDDA8);

    v27 = v18;
    v28 = v19;
    *v29 = *v20;
    *&v29[9] = *&v20[9];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    sub_2436732AC();
    v11 = sub_2436CB698();
    LOBYTE(v21) = v12 & 1;
    LOBYTE(v24) = 1;
    *&v18 = v11;
    *(&v18 + 1) = v13;
    LOBYTE(v19) = v12 & 1;
    *(&v19 + 1) = v14;
    v20[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E550, &qword_2436CDCF8);
    sub_243671838(&qword_27ED7E548, &qword_27ED7E550, &qword_2436CDCF8);
    sub_2436CB398();
  }

  v15 = v28;
  *a3 = v27;
  a3[1] = v15;
  a3[2] = *v29;
  result = *&v29[9];
  *(a3 + 41) = *&v29[9];
  return result;
}

uint64_t sub_243672B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_243672BB4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

unint64_t sub_243672C28()
{
  result = sub_24368DF04();
  if (result >> 62)
  {
    v2 = result;
    v3 = sub_2436CC008();
    result = v2;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E560, &qword_2436CDD08);
    return sub_2436CBA08();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x245D3C2F0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_243672D1C(void *a1)
{
  v1 = (*a1 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  v3 = *v1;
  v4 = v1[1];
  sub_2436732AC();

  return sub_2436CBA48();
}

uint64_t sub_243672DD4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E520, &qword_2436CDCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E528, &qword_2436CDCE8);
  sub_243671838(&qword_27ED7E530, &qword_27ED7E520, &qword_2436CDCE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E538, &qword_2436CDCF0);
  sub_243672FA8();
  swift_getOpaqueTypeConformance2();
  sub_2436CB378();
  v7 = swift_allocObject();
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  *(v7 + 4) = v5;
  *(v7 + 5) = v6;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E558, &qword_2436CDD00) + 36));
  *v8 = sub_243673064;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
}

uint64_t sub_243672F90@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_243671E18(v1[4], v1[5], a1);
}

unint64_t sub_243672FA8()
{
  result = qword_27ED7E540;
  if (!qword_27ED7E540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E538, &qword_2436CDCF0);
    sub_243671838(&qword_27ED7E548, &qword_27ED7E550, &qword_2436CDCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E540);
  }

  return result;
}

unint64_t sub_243673064()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_243672C28();
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_2436730C0@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_243672800(v1[4], v1[5], v7);
  v5 = v7[1];
  *a1 = v7[0];
  a1[1] = v5;
  a1[2] = v8[0];
  result = *(v8 + 9);
  *(a1 + 41) = *(v8 + 9);
  return result;
}

uint64_t sub_24367314C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_243673204(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

unint64_t sub_2436732AC()
{
  result = qword_27ED7EBD0;
  if (!qword_27ED7EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EBD0);
  }

  return result;
}

uint64_t sub_243673300(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E5F8, &qword_2436CDE40);
  sub_2436CAD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E600, &qword_2436CDE48);
  sub_243671838(&qword_27ED7E608, &qword_27ED7E5F8, &qword_2436CDE40);
  type metadata accessor for EMSConfigurationViewModel(255);
  sub_24367373C(&qword_27ED7E5A8, type metadata accessor for EMSConfigurationViewModel);
  swift_getOpaqueTypeConformance2();
  sub_24367373C(&qword_27ED7E610, type metadata accessor for EMSConfigurationViewModel);
  return sub_2436CBAC8();
}

unint64_t sub_2436734D8()
{
  result = qword_27ED7E5B0;
  if (!qword_27ED7E5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E5A0, &qword_2436CDDD0);
    type metadata accessor for EMSConfigurationViewModel(255);
    sub_24367373C(&qword_27ED7E5A8, type metadata accessor for EMSConfigurationViewModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E5B0);
  }

  return result;
}

uint64_t sub_243673620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E580, &qword_2436CDDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243673690()
{
  v1 = *(v0 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  v2 = *(v0 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler + 8);
  return v1();
}

uint64_t sub_2436736C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243673700(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_24367373C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243673788()
{
  result = qword_27ED7E618;
  if (!qword_27ED7E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E558, &qword_2436CDD00);
    sub_243671838(&qword_27ED7E620, &qword_27ED7E628, &qword_2436CDE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E618);
  }

  return result;
}

uint64_t EMSFacade.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for EMSConfigurationPickerViewModel();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_24368E240();
  v4 = sub_24368DC28();

  *(v0 + 16) = v4;
  return v0;
}

uint64_t EMSFacade.init()()
{
  v1 = type metadata accessor for EMSConfigurationPickerViewModel();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_24368E240();
  v4 = sub_24368DC28();

  *(v0 + 16) = v4;
  return v0;
}

uint64_t sub_243673914(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  type metadata accessor for EMSFlowViewModel();
  swift_allocObject();

  swift_unknownObjectRetain();
  sub_2436A9F68(v5, a1, a2);

  sub_243675768(v6, v9);
  sub_2436744A4();
  v7 = sub_2436CBA98();

  return v7;
}

uint64_t sub_2436739C8(uint64_t a1, uint64_t a2)
{
  sub_2436744F8(*(v2 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_0(v8, v9);
  (*(v6 + 88))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_243673A60(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_2436CAD38();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CAD98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2436CAD88();
  sub_2436CAD58();
  (*(v9 + 8))(v12, v8);
  v13 = [a1 appleID];
  if (!v13)
  {
    sub_2436CBD38();
    v14 = sub_2436CBD08();

    v13 = v14;
  }

  v35 = v13;
  sub_2436CAD28();
  v15 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (v15)
  {
    v34 = sub_2436CBD38();
  }

  else
  {
    v34 = 0;
  }

  v16 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (v16)
  {
    v33 = sub_2436CBD38();
  }

  else
  {
    v33 = 0;
  }

  v17 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (!v17)
  {
    sub_2436CBD38();
    v17 = sub_2436CBD08();
  }

  v18 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (!v18)
  {
    sub_2436CBD38();
    v18 = sub_2436CBD08();
  }

  v19 = objc_allocWithZone(MEMORY[0x277CFA640]);
  v20 = sub_2436CBD08();

  v21 = sub_2436CACD8();
  v22 = sub_2436CBD08();
  v23 = sub_2436CBD08();
  v32 = v7;
  v24 = v23;
  v25 = sub_2436CBD08();

  v26 = sub_2436CBD08();

  v27 = v35;
  v28 = [v19 initWithIdentifier:v20 appleID:v35 date:v21 deviceName:v22 deviceSerialNumber:v24 userGivenName:v25 userFamilyName:v26 userFullName:v17 userMonogram:v18];

  (*(v36 + 8))(v32, v37);
  sub_2436744F8(*(v38 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v41);
  v29 = v42;
  v30 = v43;
  __swift_project_boxed_opaque_existential_0(v41, v42);
  (*(v30 + 48))(v28, v39, v40, v29, v30);

  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t sub_243673EE8()
{
  v0 = sub_2436CAC58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED7DEF8 != -1)
  {
    swift_once();
  }

  (*(v1 + 16))(v4, qword_27ED83B68 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings13SuccessScreen_title, v0);
  v5 = sub_2436CBD58();
  sub_24369B78C();
  sub_2436CBD58();
  return v5;
}

uint64_t sub_243674030(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  v12 = *a3;
  type metadata accessor for EMSStrings.ProxCard();
  swift_initStaticObject();
  v16 = v12;
  sub_24369BAA4(&v16);
  (*(v5 + 16))(v9, v11, v4);
  v13 = sub_2436CBD58();
  (*(v5 + 8))(v11, v4);
  return v13;
}

uint64_t sub_243674194(_BYTE *a1, char *a2)
{
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  LOBYTE(a1) = *a1;
  v12 = *a2;
  type metadata accessor for EMSStrings.ProxCard();
  swift_initStaticObject();
  v17 = a1;
  v16 = v12;
  sub_24369BE24(&v17, &v16);
  (*(v5 + 16))(v9, v11, v4);
  v13 = sub_2436CBD58();
  (*(v5 + 8))(v11, v4);
  return v13;
}

uint64_t sub_2436742F8()
{
  sub_2436744F8(*(v0 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_0(v4, v5);
  (*(v2 + 40))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_243674398(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  sub_2436744F8(*(v1 + 16) + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_0(v9, v10);
  v7 = v6;
  v8 = v2;
  (*(v4 + 80))(&v7, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t EMSFacade.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t EMSFacade.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2436744A4()
{
  result = qword_27ED7E630;
  if (!qword_27ED7E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E630);
  }

  return result;
}

uint64_t sub_2436744F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243674714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24367475C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2436747CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_24367484C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436748C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E670, &qword_2436CDFB0);
  v31 = *(v27 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E678, &qword_2436CDFB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E668, &qword_2436CDFA8);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = *(a1 + 32);
  type metadata accessor for EMSNavigationStackViewModel();
  sub_2436758D4(&qword_27ED7E638, type metadata accessor for EMSNavigationStackViewModel);
  v29 = v15;
  v30 = v14;
  v28 = v16;
  sub_2436CAFC8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v18 = v34;
  if ((~v34 & 0xF000000000000007) != 0)
  {
    sub_243693598(v34, v9);
    sub_2436755C4(v18);
    v19 = sub_24367519C();
    sub_2436CB7F8();
    v34 = v6;
    v35 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = MEMORY[0x277CE1428];
    v22 = MEMORY[0x277CE1410];
    v23 = v27;
    sub_2436CB848();
    (*(v31 + 8))(v5, v23);
    sub_2436755FC(v9);
    v38 = *a1;
    v24 = swift_allocObject();
    v25 = a1[1];
    *(v24 + 16) = *a1;
    *(v24 + 32) = v25;
    *(v24 + 48) = *(a1 + 32);
    sub_2436756B8(&v38, &v34);
    sub_243675728();
    v34 = v23;
    v35 = v21;
    v36 = OpaqueTypeConformance2;
    v37 = v22;
    swift_getOpaqueTypeConformance2();
    sub_24367546C();
    sub_2436CB7C8();

    return (*(v32 + 8))(v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243674CE0(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E670, &qword_2436CDFB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E678, &qword_2436CDFB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  sub_243693598(*a1, v13 - v9);
  v11 = sub_24367519C();
  sub_2436CB7F8();
  v13[0] = v7;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_2436CB848();
  (*(v3 + 8))(v6, v2);
  return sub_2436755FC(v10);
}

uint64_t sub_243674EA4()
{
  v4 = *(v0 + 32);
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for EMSNavigationStackViewModel();
  sub_2436758D4(&qword_27ED7E638, type metadata accessor for EMSNavigationStackViewModel);
  sub_2436CAFD8();
  swift_getKeyPath();
  sub_2436CB0B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E640, &qword_2436CDF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E648, &qword_2436CDFA0);
  sub_243671838(&qword_27ED7E650, &qword_27ED7E640, &qword_2436CDF98);
  sub_243671838(&qword_27ED7E658, &qword_27ED7E640, &qword_2436CDF98);
  sub_243671838(&qword_27ED7E660, &qword_27ED7E640, &qword_2436CDF98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E668, &qword_2436CDFA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E670, &qword_2436CDFB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E678, &qword_2436CDFB8);
  sub_24367519C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24367546C();
  swift_getOpaqueTypeConformance2();
  return sub_2436CB118();
}

unint64_t sub_24367519C()
{
  result = qword_27ED7E680;
  if (!qword_27ED7E680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E678, &qword_2436CDFB8);
    sub_243675228();
    sub_243675338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E680);
  }

  return result;
}

unint64_t sub_243675228()
{
  result = qword_27ED7E688;
  if (!qword_27ED7E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E690, &qword_2436CDFC0);
    sub_2436758D4(&qword_27ED7E698, type metadata accessor for EMSStudentPickerView);
    sub_2436752E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E688);
  }

  return result;
}

unint64_t sub_2436752E4()
{
  result = qword_27ED7E6A0;
  if (!qword_27ED7E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6A0);
  }

  return result;
}

unint64_t sub_243675338()
{
  result = qword_27ED7E6A8;
  if (!qword_27ED7E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6B0, &qword_2436CDFC8);
    sub_2436753C4();
    sub_243675418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6A8);
  }

  return result;
}

unint64_t sub_2436753C4()
{
  result = qword_27ED7E6B8;
  if (!qword_27ED7E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6B8);
  }

  return result;
}

unint64_t sub_243675418()
{
  result = qword_27ED7E6C0;
  if (!qword_27ED7E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6C0);
  }

  return result;
}

unint64_t sub_24367546C()
{
  result = qword_27ED7E6C8;
  if (!qword_27ED7E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E6C8);
  }

  return result;
}

uint64_t sub_2436754C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_243675544(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243675730(v2);
  return sub_2436CAEE8();
}

uint64_t sub_2436755C4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_2436755D8();
  }

  return result;
}

uint64_t sub_2436755FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E678, &qword_2436CDFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243675664()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_2436756A8();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2436756B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E570, &qword_2436CDDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243675730(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_243675744();
  }

  return result;
}

uint64_t sub_243675768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for EMSFlowViewModel();
  sub_2436758D4(&qword_27ED7E6D0, type metadata accessor for EMSFlowViewModel);
  swift_retain_n();
  v4 = sub_2436CB098();
  v6 = v5;
  swift_retain_n();
  sub_2436A9A24();
  v7 = *(v6 + 40);
  v8 = type metadata accessor for EMSCoursePickerViewModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  sub_24367C7C0(v11);
  v12 = *(v6 + 48);

  sub_243683CEC(v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAEE8();

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_2436758CC;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_2436758D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243675968@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v43 = sub_2436CB2E8();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CAC58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F8, &unk_2436D1420);
  v12 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v14 = &v40 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E700, &qword_2436CE240);
  v15 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E708, &qword_2436CE248);
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v17);
  v45 = &v40 - v19;
  sub_243675F4C(v14);
  v56 = *v1;
  v46 = *(&v56 + 1);
  (*(v8 + 16))(v11, *(&v56 + 1) + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_title, v7);
  v20 = sub_2436CB688();
  v22 = v21;
  v24 = v23;
  v25 = v6;
  v26 = v6;
  v27 = v43;
  (*(v3 + 104))(v26, *MEMORY[0x277CDDDB0], v43);
  sub_2436798E8();
  sub_2436CB778();
  sub_243679F68(v20, v22, v24 & 1);

  (*(v3 + 8))(v25, v27);
  sub_243671AC8(v14, &qword_27ED7E6F8, &unk_2436D1420);
  v28 = [objc_opt_self() systemBackgroundColor];
  v29 = sub_2436CB8E8();
  v30 = sub_2436CB538();
  v31 = v41;
  v32 = &v41[*(v44 + 36)];
  *v32 = v29;
  v32[8] = v30;
  v50 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7E0, &qword_2436CE2B0);
  sub_243679F80();
  sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0);
  v33 = v45;
  sub_2436CB838();
  sub_243671AC8(v31, &qword_27ED7E700, &qword_2436CE240);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v34 = v49;
  sub_2436A1ADC(v54, v49);

  (*(v47 + 8))(v33, v48);
  v54 = v2[1];
  v55 = *(v2 + 32);
  v35 = *(v2 + 5);
  v52 = *(v2 + 6);
  v53 = v35;
  v36 = swift_allocObject();
  v37 = v2[1];
  *(v36 + 16) = *v2;
  *(v36 + 32) = v37;
  *(v36 + 48) = v2[2];
  *(v36 + 64) = *(v2 + 6);
  v38 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E808, &qword_2436CE308) + 36));
  *v38 = 0;
  v38[1] = 0;
  v38[2] = sub_24367A080;
  v38[3] = v36;
  sub_2436714A8(&v56, v51, &qword_27ED7E810, &qword_2436CE310);
  sub_2436714A8(&v54, v51, &qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436714A8(&v53, v51, &qword_27ED7E818, &qword_2436CE318);
  return sub_2436714A8(&v52, v51, &qword_27ED7E820, &unk_2436CE320);
}

uint64_t sub_243675F4C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E780, &unk_2436CE280);
  v2 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v62 = &v61 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E880, &qword_2436CE3E8);
  v4 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v67 = &v61 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E770, &unk_2436D1430);
  v6 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E888, &unk_2436CE3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v61 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E740, &qword_2436CE260);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v64 = &v61 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E890, &qword_2436CE400);
  v17 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v74 = &v61 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E898, &qword_2436CE408);
  v19 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v21 = (&v61 - v20);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E720, &unk_2436CE250);
  v22 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v61 - v27;
  v29 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = *v28;
      v45 = v28[8];
      v46 = v62;
      sub_24367745C(*v28, v62);
      sub_24367A1F8(v44);
      sub_2436714A8(v46, v67, &qword_27ED7E780, &unk_2436CE280);
      swift_storeEnumTagMultiPayload();
      sub_243679A2C();
      sub_243679B9C();
      v47 = v69;
      sub_2436CB398();
      sub_2436714A8(v47, v74, &qword_27ED7E770, &unk_2436D1430);
      swift_storeEnumTagMultiPayload();
      sub_243679974();
      sub_243679B10();
      sub_2436CB398();
      sub_243671AC8(v47, &qword_27ED7E770, &unk_2436D1430);
      return sub_243671AC8(v46, &qword_27ED7E780, &unk_2436CE280);
    }

    *v21 = sub_24367ADD8;
    v21[1] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
    sub_243679A2C();
    sub_2436CB398();
    v58 = &qword_27ED7E720;
    v59 = &unk_2436CE250;
    sub_2436714A8(v24, v74, &qword_27ED7E720, &unk_2436CE250);
    swift_storeEnumTagMultiPayload();
    sub_243679974();
    sub_243679B10();
    sub_2436CB398();
    v41 = v24;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v49 = *v28;
    v50 = v66;
    v51 = (*(v14 + 56))(v66, 1, 1, v13);
    MEMORY[0x28223BE20](v51);
    *(&v61 - 2) = v1;
    *(&v61 - 1) = v49;
    sub_2436CB528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8A0, &qword_2436CE460);
    sub_243671838(&qword_27ED7E8A8, &qword_27ED7E8A0, &qword_2436CE460);
    v52 = v70;
    sub_2436CAFB8();

    v53 = sub_2436CBB48();
    v55 = v54;
    v56 = v52 + *(v71 + 36);
    sub_2436A26F8(v50, v56);
    v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270) + 36));
    *v57 = v53;
    v57[1] = v55;
    sub_243671AC8(v50, &qword_27ED7E888, &unk_2436CE3F0);
    v58 = &qword_27ED7E740;
    v59 = &qword_2436CE260;
    sub_2436714A8(v52, v67, &qword_27ED7E740, &qword_2436CE260);
    swift_storeEnumTagMultiPayload();
    sub_243679A2C();
    sub_243679B9C();
    v60 = v69;
    sub_2436CB398();
    sub_2436714A8(v60, v74, &qword_27ED7E770, &unk_2436D1430);
    swift_storeEnumTagMultiPayload();
    sub_243679974();
    sub_243679B10();
    sub_2436CB398();
    sub_243671AC8(v60, &qword_27ED7E770, &unk_2436D1430);
    v41 = v52;
LABEL_8:
    v42 = v58;
    v43 = v59;
    return sub_243671AC8(v41, v42, v43);
  }

  v31 = v64;
  sub_24367A8C0(v28, v64, qword_27ED7FF30, &unk_2436D1E00);
  v32 = v66;
  sub_2436714A8(v31, v66, qword_27ED7FF30, &unk_2436D1E00);
  v33 = (*(v14 + 56))(v32, 0, 1, v13);
  MEMORY[0x28223BE20](v33);
  v34 = MEMORY[0x277D84F90];
  *(&v61 - 2) = v1;
  *(&v61 - 1) = v34;
  sub_2436CB528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8A0, &qword_2436CE460);
  sub_243671838(&qword_27ED7E8A8, &qword_27ED7E8A0, &qword_2436CE460);
  v35 = v70;
  sub_2436CAFB8();
  v36 = sub_2436CBB48();
  v38 = v37;
  v39 = v35 + *(v71 + 36);
  sub_2436A26F8(v32, v39);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270) + 36));
  *v40 = v36;
  v40[1] = v38;
  sub_243671AC8(v32, &qword_27ED7E888, &unk_2436CE3F0);
  sub_2436714A8(v35, v21, &qword_27ED7E740, &qword_2436CE260);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
  sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
  sub_243679A2C();
  sub_2436CB398();
  sub_2436714A8(v24, v74, &qword_27ED7E720, &unk_2436CE250);
  swift_storeEnumTagMultiPayload();
  sub_243679974();
  sub_243679B10();
  sub_2436CB398();
  sub_243671AC8(v24, &qword_27ED7E720, &unk_2436CE250);
  sub_243671AC8(v35, &qword_27ED7E740, &qword_2436CE260);
  v41 = v64;
  v42 = qword_27ED7FF30;
  v43 = &unk_2436D1E00;
  return sub_243671AC8(v41, v42, v43);
}

uint64_t sub_243676A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E830, &qword_2436CE330);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E838, &qword_2436CE338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = v43 - v8;
  v9 = sub_2436CB418();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E840, &qword_2436CE340);
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E848, &qword_2436CE348);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v49 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v43 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v43 - v24;
  v26 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v26;
  sub_2436CAED8();

  v48 = v25;
  v43[1] = v12;
  v46 = v6;
  if (v54)
  {
    sub_2436CB3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E858, &qword_2436CE3E0);
    sub_24367A0BC();
    sub_2436CAFE8();
    v27 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340);
    v28 = v45;
    MEMORY[0x245D3B690](v16, v13, v27);
    (*(v6 + 16))(v23, v28, v5);
    v44 = *(v6 + 56);
    v44(v23, 0, 1, v5);
    v54 = v13;
    v55 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D3B6A0](v23, v5, OpaqueTypeConformance2);

    sub_243671AC8(v23, &qword_27ED7E848, &qword_2436CE348);
    (*(v6 + 8))(v28, v5);
    (*(v53 + 8))(v16, v13);
  }

  else
  {
    v44 = *(v6 + 56);
    v44(v23, 1, 1, v5);
    v30 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340);
    v54 = v13;
    v55 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D3B6A0](v23, v5, v31);
    sub_243671AC8(v23, &qword_27ED7E848, &qword_2436CE348);
    v28 = v45;
  }

  v32 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v54)
  {
    sub_2436CB3E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E858, &qword_2436CE3E0);
    sub_24367A0BC();
    sub_2436CAFE8();
    v33 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340);
    MEMORY[0x245D3B690](v16, v13, v33);
    v34 = v46;
    (*(v46 + 16))(v23, v28, v5);
    v44(v23, 0, 1, v5);
    v54 = v13;
    v55 = v33;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = v49;
    MEMORY[0x245D3B6A0](v23, v5, v35);

    sub_243671AC8(v23, &qword_27ED7E848, &qword_2436CE348);
    (*(v34 + 8))(v28, v5);
    (*(v53 + 8))(v16, v32);
  }

  else
  {
    v44(v23, 1, 1, v5);
    v37 = sub_243671838(&qword_27ED7E850, &qword_27ED7E840, &qword_2436CE340);
    v54 = v13;
    v55 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v36 = v49;
    MEMORY[0x245D3B6A0](v23, v5, v38);
    sub_243671AC8(v23, &qword_27ED7E848, &qword_2436CE348);
  }

  v39 = v48;
  v40 = v50;
  v41 = *(v51 + 48);
  sub_2436714A8(v48, v50, &qword_27ED7E848, &qword_2436CE348);
  sub_2436714A8(v36, v40 + v41, &qword_27ED7E848, &qword_2436CE348);
  sub_2436CB388();
  sub_243671AC8(v36, &qword_27ED7E848, &qword_2436CE348);
  return sub_243671AC8(v39, &qword_27ED7E848, &qword_2436CE348);
}

uint64_t sub_243677224(uint64_t a1, void *a2)
{
  v3 = sub_2436CAC58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRKUIButtonViewModel();
  sub_24367AB98(&qword_27ED7E878, type metadata accessor for CRKUIButtonViewModel);

  v15[2] = sub_2436CB098();
  v15[3] = v8;
  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  (*(v4 + 16))(v7, qword_27ED83B40 + *a2, v3);
  v9 = sub_2436CB688();
  v11 = v10;
  v13 = v12;
  sub_24367A178();
  sub_2436CB718();
  sub_243679F68(v9, v11, v13 & 1);
}

uint64_t sub_243677400(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E828, &qword_2436D1180);
  return sub_2436CBA08();
}

uint64_t sub_24367745C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E968, &qword_2436CE518);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E970, &unk_2436CE520);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E790, &unk_2436D1440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7A0, &unk_2436CE290);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v25 - v17;
  if (a1)
  {
    if (a1 == 1)
    {
      *v10 = sub_24367ADD8;
      v10[1] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
      sub_243679CE0();
      sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
      sub_2436CB398();
      v19 = &qword_27ED7E790;
      v20 = &unk_2436D1440;
      sub_2436714A8(v14, v6, &qword_27ED7E790, &unk_2436D1440);
      swift_storeEnumTagMultiPayload();
      sub_243679C28();
      sub_2436CB398();
      v21 = v14;
    }

    else
    {
      sub_24367858C(a1, v25 - v17);
      v19 = &qword_27ED7E7A0;
      v20 = &unk_2436CE290;
      sub_2436714A8(v18, v6, &qword_27ED7E7A0, &unk_2436CE290);
      swift_storeEnumTagMultiPayload();
      sub_243679C28();
      sub_243679CE0();
      sub_2436CB398();
      v21 = v18;
    }

    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24367858C(MEMORY[0x277D84F90], v25 - v17);
    sub_2436714A8(v18, v10, &qword_27ED7E7A0, &unk_2436CE290);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
    sub_243679CE0();
    v25[0] = v3;
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
    sub_2436CB398();
    sub_2436714A8(v14, v6, &qword_27ED7E790, &unk_2436D1440);
    swift_storeEnumTagMultiPayload();
    sub_243679C28();
    sub_2436CB398();
    sub_243671AC8(v14, &qword_27ED7E790, &unk_2436D1440);
    v21 = v18;
    v22 = &qword_27ED7E7A0;
    v23 = &unk_2436CE290;
  }

  return sub_243671AC8(v21, v22, v23);
}

uint64_t sub_243677894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v102 = a3;
  v4 = sub_2436CB428();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v101 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8B0, &qword_2436CE468);
  v7 = *(*(v103 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v103);
  v105 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v87 - v10;
  v11 = sub_2436CB338();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v11);
  v93 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8B8, &unk_2436CE470);
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v14);
  v96 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v87 - v19;
  v21 = sub_2436CAC58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C8, &qword_2436CE480);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v100 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v106 = &v87 - v30;
  v98 = a1;
  v31 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_243671AC8(v20, &qword_27ED7E8C0, &unk_2436CE980);
    v32 = (*(v97 + 56))(v106, 1, 1, v14);
  }

  else
  {
    v91 = v21;
    v92 = v22;
    v33 = *(v22 + 32);
    v90 = v25;
    v33(v25, v20, v21);
    v88 = sub_2436CB2F8();
    sub_24367816C(v25, &v123);
    v89 = v14;
    v34 = v123;
    v35 = v124;
    v36 = *(&v124 + 1);
    v37 = v125;
    v38 = BYTE8(v125);
    v120 = 1;
    v119 = v124;
    v118 = BYTE8(v125);
    v39 = sub_2436CB548();
    sub_2436CAF88();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    LOBYTE(v123) = 0;
    v48 = sub_2436CB558();
    sub_2436CAF88();
    v117 = 0;
    v107 = v88;
    v108[0] = 1;
    *&v108[8] = v34;
    v108[24] = v35;
    *&v109 = v36;
    *(&v109 + 1) = v37;
    LOBYTE(v110) = v38;
    BYTE8(v110) = v39;
    *&v111 = v41;
    *(&v111 + 1) = v43;
    *&v112 = v45;
    *(&v112 + 1) = v47;
    LOBYTE(v113) = 0;
    *(&v113 + 1) = *v122;
    DWORD1(v113) = *&v122[3];
    BYTE8(v113) = v48;
    HIDWORD(v113) = *&v121[3];
    *(&v113 + 9) = *v121;
    *&v114 = v49;
    *(&v114 + 1) = v50;
    *&v115 = v51;
    *(&v115 + 1) = v52;
    v116 = 0;
    v53 = v93;
    sub_2436CB328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E920, &qword_2436CE4F8);
    sub_24367A408();
    v54 = v96;
    sub_2436CB7D8();
    (*(v94 + 8))(v53, v95);
    v131 = v114;
    v132 = v115;
    v133 = v116;
    v127 = v110;
    v128 = v111;
    v129 = v112;
    v130 = v113;
    v123 = v107;
    v124 = *v108;
    v125 = *&v108[16];
    v126 = v109;
    sub_243671AC8(&v123, &qword_27ED7E920, &qword_2436CE4F8);
    v55 = sub_2436CB568();
    sub_2436CAF88();
    v56 = v89;
    v57 = v54 + *(v89 + 36);
    *v57 = v55;
    *(v57 + 8) = v58;
    *(v57 + 16) = v59;
    *(v57 + 24) = v60;
    *(v57 + 32) = v61;
    *(v57 + 40) = 0;
    v62 = v106;
    sub_24367A8C0(v54, v106, &qword_27ED7E8B8, &unk_2436CE470);
    (*(v97 + 56))(v62, 0, 1, v56);
    v32 = (*(v92 + 8))(v90, v91);
  }

  v63 = *(v98 + 48);
  MEMORY[0x28223BE20](v32);

  sub_2436CB358();
  LODWORD(v123) = 0;
  sub_24367AB98(&qword_27ED7E8D0, MEMORY[0x277CE0428]);
  sub_2436CC3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8D8, &qword_2436CE4D0);
  sub_24367A220(&qword_27ED7E8E0, &qword_27ED7E8D8, &qword_2436CE4D0, sub_24367A29C);
  v64 = v104;
  sub_2436CBB68();
  v65 = sub_2436CB568();
  sub_2436CAF88();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E910, &qword_2436CE4E8) + 36);
  *v74 = v65;
  *(v74 + 8) = v67;
  *(v74 + 16) = v69;
  *(v74 + 24) = v71;
  *(v74 + 32) = v73;
  *(v74 + 40) = 0;
  v75 = sub_2436CB578();
  sub_2436CAF88();
  v76 = v64 + *(v103 + 36);
  *v76 = v75;
  *(v76 + 8) = v77;
  *(v76 + 16) = v78;
  *(v76 + 24) = v79;
  *(v76 + 32) = v80;
  *(v76 + 40) = 0;
  v81 = v106;
  v82 = v100;
  sub_2436714A8(v106, v100, &qword_27ED7E8C8, &qword_2436CE480);
  v83 = v105;
  sub_2436714A8(v64, v105, &qword_27ED7E8B0, &qword_2436CE468);
  v84 = v102;
  sub_2436714A8(v82, v102, &qword_27ED7E8C8, &qword_2436CE480);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E918, &qword_2436CE4F0);
  sub_2436714A8(v83, v84 + *(v85 + 48), &qword_27ED7E8B0, &qword_2436CE468);
  sub_243671AC8(v64, &qword_27ED7E8B0, &qword_2436CE468);
  sub_243671AC8(v81, &qword_27ED7E8C8, &qword_2436CE480);
  sub_243671AC8(v83, &qword_27ED7E8B0, &qword_2436CE468);
  return sub_243671AC8(v82, &qword_27ED7E8C8, &qword_2436CE480);
}

uint64_t sub_24367816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CAC58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = sub_2436CB688();
  v10 = v9;
  v12 = v11;
  sub_2436CB598();
  v13 = sub_2436CB658();
  v15 = v14;
  v17 = v16;

  sub_243679F68(v8, v10, v12 & 1);

  sub_2436CB5B8();
  v18 = sub_2436CB628();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_243679F68(v13, v15, v17 & 1);

  *a2 = v18;
  *(a2 + 8) = v20;
  v22 &= 1u;
  *(a2 + 16) = v22;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_24366C090(v18, v20, v22);

  sub_243679F68(v18, v20, v22);
}

uint64_t sub_24367833C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803B0, &qword_2436CE510);
  sub_24367A54C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8F0, &qword_2436CE4D8);
  sub_243671838(&qword_27ED7E950, &qword_27ED803B0, &qword_2436CE510);
  sub_24367A29C();
  sub_24367AB98(&qword_27ED7E958, type metadata accessor for EMSCourseTileViewModel);
  return sub_2436CBAC8();
}

uint64_t sub_243678464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for EMSCourseTileViewModel();
  sub_24367AB98(&qword_27ED7E960, type metadata accessor for EMSCourseTileViewModel);

  v4 = sub_2436CB098();
  v6 = v5;
  sub_2436CBB48();
  sub_2436CB068();
  v7 = sub_2436CB558();
  result = sub_2436CAF88();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  *(a2 + 64) = v7;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_24367858C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E978, &unk_2436D13B0);
  v65 = *(v64 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v50 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E980, &unk_2436CE530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v49 - v8;
  v58 = sub_2436CB0E8();
  v59 = *(v58 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7B0, &qword_2436CE2A0);
  v57 = *(v53 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v14 = &v49 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7A8, &unk_2436D1450);
  v62 = *(v61 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v49 - v16;
  KeyPath = swift_getKeyPath();
  v82 = v2[1];
  v18 = *(v2 + 5);
  v83 = *(v2 + 4);
  v77 = v2[1];
  v78 = *(v2 + 4);
  v79 = v18;
  v19 = v18;
  v54 = v18;

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E828, &qword_2436D1180);
  sub_2436CBA18();
  v51 = v73;
  v20 = v74;
  v21 = v75;
  v22 = v76;
  v23 = v2[1];
  v81 = *v2;
  v77 = v23;
  LOBYTE(v78) = *(v2 + 32);
  v84 = v19;
  v80 = *(v2 + 6);
  v24 = swift_allocObject();
  v25 = v2[1];
  *(v24 + 16) = *v2;
  *(v24 + 32) = v25;
  *(v24 + 48) = v2[2];
  *(v24 + 64) = *(v2 + 6);
  v72 = a1;
  v52 = a1;
  v73 = v51;
  v74 = v20;
  v75 = v21;
  v76 = v22;
  v66 = &v72;
  v67 = KeyPath;
  v68 = sub_24367A600;
  v69 = v24;
  sub_2436714A8(&v81, v70, &qword_27ED7E810, &qword_2436CE310);
  sub_2436714A8(&v77, v70, &qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436714A8(&v84, v70, &qword_27ED7E818, &qword_2436CE318);
  sub_2436714A8(&v80, v70, &qword_27ED7E820, &unk_2436CE320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E988, &qword_2436CE558);
  sub_24367A614();
  sub_24367A220(&qword_27ED7E998, &qword_27ED7E988, &qword_2436CE558, sub_24367A668);
  v26 = v60;
  sub_2436CB618();

  sub_2436CB0D8();
  v27 = sub_243671838(&qword_27ED7E7B8, &qword_27ED7E7B0, &qword_2436CE2A0);
  v28 = MEMORY[0x277CDD980];
  v29 = v56;
  v30 = v53;
  v31 = v58;
  sub_2436CB878();
  v32 = v31;
  (*(v59 + 8))(v11, v31);
  (*(v57 + 8))(v14, v30);
  v73 = v82;
  v74 = v83;
  v75 = v54;
  sub_2436CB9F8();
  v33 = v70[0];
  v34 = v70[1];
  LOBYTE(v14) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
  *&v73 = v30;
  *(&v73 + 1) = v32;
  v74 = v27;
  v75 = v28;
  v35 = 1;
  swift_getOpaqueTypeConformance2();
  sub_243679E90();
  v36 = v61;
  v37 = v64;
  sub_2436CB868();
  v38 = v34;
  v39 = v65;
  v40 = v14;
  v41 = v63;
  sub_24367A874(v33, v38, v40);
  (*(v62 + 8))(v29, v36);
  v42 = sub_2436CBB48();
  v44 = v43;
  if (!*(v52 + 16))
  {
    v45 = v50;
    sub_2436CB478();
    (*(v39 + 32))(v41, v45, v37);
    v35 = 0;
  }

  (*(v39 + 56))(v41, v35, 1, v37);
  v46 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7A0, &unk_2436CE290) + 36);
  sub_24367A8C0(v41, v46, &qword_27ED7E980, &unk_2436CE530);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7D8, &qword_2436CE2A8);
  v48 = (v46 + *(result + 36));
  *v48 = v42;
  v48[1] = v44;
  return result;
}

uint64_t sub_243678D54@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_243678FD0(*a1, &v27);
  v8 = v27;
  v9 = v28;
  v10 = BYTE1(v28);
  v11 = a2[1];
  v26 = *a2;
  v24 = v11;
  v25 = *(a2 + 32);
  v12 = *(a2 + 5);
  v22 = *(a2 + 6);
  v23 = v12;
  v13 = swift_allocObject();
  v14 = a2[1];
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  *(v13 + 48) = a2[2];
  *(v13 + 64) = *(a2 + 6);
  *(v13 + 72) = v5;
  *(v13 + 80) = v6;
  *(v13 + 88) = v7;
  LOBYTE(v19) = v9;
  BYTE1(v19) = v10;
  *(&v19 + 1) = v5;
  *&v20 = v6;
  BYTE8(v20) = v7;
  *&v21 = sub_24367AA20;
  *(&v21 + 1) = v13;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  sub_2436714A8(&v26, &v27, &qword_27ED7E810, &qword_2436CE310);
  sub_2436714A8(&v24, &v27, &qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436714A8(&v23, &v27, &qword_27ED7E818, &qword_2436CE318);
  sub_2436714A8(&v22, &v27, &qword_27ED7E820, &unk_2436CE320);
  sub_2436CB028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9C0, &qword_2436CE570);
  sub_24367A7BC();
  sub_2436CB7B8();
  v29 = v20;
  v30 = v21;
  v31 = 0uLL;
  v27 = v8;
  v28 = v19;
  sub_243671AC8(&v27, &qword_27ED7E9C0, &qword_2436CE570);
  LOBYTE(a2) = sub_2436CB538();
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9B8, &qword_2436CE568) + 36);
  *v15 = a2;
  *(v15 + 8) = xmmword_2436CE090;
  *(v15 + 24) = xmmword_2436CE0A0;
  *(v15 + 40) = 0;
  v16 = sub_2436CB348();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9A8, &qword_2436CE560);
  v18 = (a3 + *(result + 36));
  *v18 = v16;
  v18[1] = sub_2436792B4;
  v18[2] = 0;
  return result;
}

double sub_243678FD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    type metadata accessor for EMSStudentViewModel();
    sub_24367AB98(&qword_27ED7E9F0, type metadata accessor for EMSStudentViewModel);
    swift_retain_n();
    sub_2436CB098();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();
  }

  else
  {
    type metadata accessor for EMSCourseSearchResultViewModel();
    sub_24367AB98(&qword_27ED7EA28, type metadata accessor for EMSCourseSearchResultViewModel);
    swift_retain_n();
    sub_2436CB098();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9F8, &unk_2436CE5D0);
  sub_24367AA38();
  sub_24367AA8C();
  sub_2436CB398();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  return result;
}

uint64_t sub_24367920C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(*(a1 + 8) + 24);
  v7 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider;
  swift_beginAccess();
  sub_2436744F8(v6 + v7, v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  (*(v9 + 40))(a3, a4 & 1, v8, v9);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_2436792E4(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 16) != 255)
  {
    v2 = *a2;
    if (*a2 < 0)
    {
      v7 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = v7[4];
      v8 = v7[5];
      v10 = v7[6];

      v11 = swift_unknownObjectRetain();
      v9(v11);

      swift_unknownObjectRelease();
    }

    else
    {
      v4 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel_selectionHandler);
      v3 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel_selectionHandler + 8);
      v5 = *(v2 + 16);
      v6 = *a2;

      v12 = v5;
      v4();
    }
  }
}

uint64_t sub_2436793D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_243675968(a1);
}

uint64_t sub_243679418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9E0, &qword_2436CE580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9A8, &qword_2436CE560);
  sub_243671838(&qword_27ED7E9E8, &qword_27ED7E9E0, &qword_2436CE580);
  sub_24367A614();
  sub_24367A668();
  return sub_2436CBAB8();
}

uint64_t sub_24367954C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2436CBB08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2436CBB18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EMSCoursePickerViewModel();
  sub_24367AB98(&qword_27ED7E6E8, type metadata accessor for EMSCoursePickerViewModel);
  v12 = sub_2436CB098();
  v22 = v13;
  v23 = v12;
  v24 = 0;
  v25 = 0;
  v26 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
  sub_2436CB9E8();
  v15 = v27;
  v14 = v28;
  v16 = v29;
  v21 = v30;
  *v6 = xmmword_2436CE0B0;
  (*(v3 + 104))(v6, *MEMORY[0x277CDF108], v2);
  sub_2436CBB28();
  v17 = sub_2436CBE28();
  *(v17 + 16) = 2;
  v18 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  (*(v8 + 16))(v18, v11, v7);
  result = (*(v8 + 32))(v18 + *(v8 + 72), v11, v7);
  v20 = v22;
  *a1 = v23;
  *(a1 + 8) = v20;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v21;
  *(a1 + 48) = v17;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14ClassroomUIKit24EMSViewModelSearchResultVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243679828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_243679870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2436798E8()
{
  result = qword_27ED7E710;
  if (!qword_27ED7E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F8, &unk_2436D1420);
    sub_243679974();
    sub_243679B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E710);
  }

  return result;
}

unint64_t sub_243679974()
{
  result = qword_27ED7E718;
  if (!qword_27ED7E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E720, &unk_2436CE250);
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
    sub_243679A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E718);
  }

  return result;
}

unint64_t sub_243679A2C()
{
  result = qword_27ED7E738;
  if (!qword_27ED7E738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E740, &qword_2436CE260);
    sub_243671838(&qword_27ED7E748, &qword_27ED7E750, &qword_2436CE268);
    sub_243671838(&qword_27ED7E758, &qword_27ED7E760, &unk_2436CE270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E738);
  }

  return result;
}

unint64_t sub_243679B10()
{
  result = qword_27ED7E768;
  if (!qword_27ED7E768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E770, &unk_2436D1430);
    sub_243679A2C();
    sub_243679B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E768);
  }

  return result;
}

unint64_t sub_243679B9C()
{
  result = qword_27ED7E778;
  if (!qword_27ED7E778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E780, &unk_2436CE280);
    sub_243679C28();
    sub_243679CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E778);
  }

  return result;
}

unint64_t sub_243679C28()
{
  result = qword_27ED7E788;
  if (!qword_27ED7E788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E790, &unk_2436D1440);
    sub_243679CE0();
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E788);
  }

  return result;
}

unint64_t sub_243679CE0()
{
  result = qword_27ED7E798;
  if (!qword_27ED7E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7A0, &unk_2436CE290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7A8, &unk_2436D1450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F0, &qword_2436CE0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7B0, &qword_2436CE2A0);
    sub_2436CB0E8();
    sub_243671838(&qword_27ED7E7B8, &qword_27ED7E7B0, &qword_2436CE2A0);
    swift_getOpaqueTypeConformance2();
    sub_243679E90();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7D0, &qword_27ED7E7D8, &qword_2436CE2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E798);
  }

  return result;
}

unint64_t sub_243679E90()
{
  result = qword_27ED7E7C0;
  if (!qword_27ED7E7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F0, &qword_2436CE0C0);
    sub_243679F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E7C0);
  }

  return result;
}

unint64_t sub_243679F14()
{
  result = qword_27ED7E7C8;
  if (!qword_27ED7E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E7C8);
  }

  return result;
}

uint64_t sub_243679F68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_243679F80()
{
  result = qword_27ED7E7E8;
  if (!qword_27ED7E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F8, &unk_2436D1420);
    sub_2436798E8();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E7E8);
  }

  return result;
}

unint64_t sub_24367A0BC()
{
  result = qword_27ED7E860;
  if (!qword_27ED7E860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E858, &qword_2436CE3E0);
    sub_24367A178();
    sub_24367AB98(&qword_27ED7E870, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E860);
  }

  return result;
}

unint64_t sub_24367A178()
{
  result = qword_27ED7E868;
  if (!qword_27ED7E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E868);
  }

  return result;
}

unint64_t sub_24367A1F8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_24367A220(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24367A29C()
{
  result = qword_27ED7E8E8;
  if (!qword_27ED7E8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E8F0, &qword_2436CE4D8);
    sub_24367A328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E8E8);
  }

  return result;
}

unint64_t sub_24367A328()
{
  result = qword_27ED7E8F8;
  if (!qword_27ED7E8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E900, &qword_2436CE4E0);
    sub_24367A3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E8F8);
  }

  return result;
}

unint64_t sub_24367A3B4()
{
  result = qword_27ED7E908;
  if (!qword_27ED7E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E908);
  }

  return result;
}

unint64_t sub_24367A408()
{
  result = qword_27ED7E928;
  if (!qword_27ED7E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E920, &qword_2436CE4F8);
    sub_24367A494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E928);
  }

  return result;
}

unint64_t sub_24367A494()
{
  result = qword_27ED7E930;
  if (!qword_27ED7E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E938, &qword_2436CE500);
    sub_243671838(&qword_27ED7E940, &qword_27ED7E948, &qword_2436CE508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E930);
  }

  return result;
}

unint64_t sub_24367A54C()
{
  result = qword_27ED7EBA0;
  if (!qword_27ED7EBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED7EBA0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  if (*(v0 + 48) != 255)
  {
    v2 = *(v0 + 32);

    v3 = *(v0 + 40);
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_24367A614()
{
  result = qword_27ED7E990;
  if (!qword_27ED7E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E990);
  }

  return result;
}

unint64_t sub_24367A668()
{
  result = qword_27ED7E9A0;
  if (!qword_27ED7E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9A8, &qword_2436CE560);
    sub_24367A6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E9A0);
  }

  return result;
}

unint64_t sub_24367A6F4()
{
  result = qword_27ED7E9B0;
  if (!qword_27ED7E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9B8, &qword_2436CE568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9C0, &qword_2436CE570);
    sub_24367A7BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E9B0);
  }

  return result;
}

unint64_t sub_24367A7BC()
{
  result = qword_27ED7E9C8;
  if (!qword_27ED7E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9C0, &qword_2436CE570);
    sub_243671838(&qword_27ED7E9D0, &qword_27ED7E9D8, &qword_2436CE578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E9C8);
  }

  return result;
}

uint64_t sub_24367A874(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24367A8C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24367A928()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24367A960(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

uint64_t sub_24367A9A4()
{
  v1 = *(v0 + 24);

  if (*(v0 + 48) != 255)
  {
    v2 = *(v0 + 32);

    v3 = *(v0 + 40);
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

unint64_t sub_24367AA38()
{
  result = qword_27ED7EA00;
  if (!qword_27ED7EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA00);
  }

  return result;
}

unint64_t sub_24367AA8C()
{
  result = qword_27ED7EA08;
  if (!qword_27ED7EA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E9F8, &unk_2436CE5D0);
    sub_24367AB44();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA08);
  }

  return result;
}

unint64_t sub_24367AB44()
{
  result = qword_27ED7EA10;
  if (!qword_27ED7EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA10);
  }

  return result;
}

uint64_t sub_24367AB98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24367ABE4()
{
  result = qword_27ED7EA30;
  if (!qword_27ED7EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E808, &qword_2436CE308);
    sub_24367AC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA30);
  }

  return result;
}

unint64_t sub_24367AC70()
{
  result = qword_27ED7EA38;
  if (!qword_27ED7EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA40, &unk_2436CE5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E708, &qword_2436CE248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7E0, &qword_2436CE2B0);
    sub_243679F80();
    sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA38);
  }

  return result;
}

uint64_t sub_24367ADE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v7)
  {
    type metadata accessor for CRKUIButtonViewModel();
    sub_24367B2FC(&qword_27ED7E878, type metadata accessor for CRKUIButtonViewModel);
    v3 = sub_2436CB098();
    v5 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    result = sub_2436CB098();
    *a1 = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = result;
    *(a1 + 40) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24367AF3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_24367ADE4(a1);
}

uint64_t sub_24367AF44(uint64_t a1)
{
  v2 = sub_2436CB418();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EA48, &qword_2436CE5F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_2436CB408();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EA50, &qword_2436CE5F8);
  sub_24367B1E8();
  sub_2436CB188();
  v9 = sub_243671838(&qword_27ED7EA68, &qword_27ED7EA48, &qword_2436CE5F0);
  MEMORY[0x245D3B690](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

double sub_24367B0FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    type metadata accessor for EMSSelectionToolbarViewModel();
    sub_24367B2FC(&qword_27ED7EA70, type metadata accessor for EMSSelectionToolbarViewModel);

    sub_2436CB098();
  }

  sub_24367B274();
  sub_2436CB398();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

unint64_t sub_24367B1E8()
{
  result = qword_27ED7EA58;
  if (!qword_27ED7EA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA50, &qword_2436CE5F8);
    sub_24367B274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA58);
  }

  return result;
}

unint64_t sub_24367B274()
{
  result = qword_27ED7EA60;
  if (!qword_27ED7EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EA60);
  }

  return result;
}

uint64_t sub_24367B2FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24367B3B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24367B44C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24367B4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__title;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_2436CAE98();
  v17 = *(v12 + 32);
  v17(v3 + v16, v15, v11);
  v18 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__subtitle;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_2436CAE98();
  v17(v3 + v18, v15, v11);
  v19 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__color;
  v34 = 0;
  type metadata accessor for CRKCourseColorType(0);
  sub_2436CAE98();
  (*(v7 + 32))(v3 + v19, v10, v27);
  v20 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__mascot;
  v34 = 0;
  type metadata accessor for CRKCourseMascotType(0);
  v21 = v28;
  sub_2436CAE98();
  (*(v29 + 32))(v3 + v20, v21, v30);
  v22 = v32;
  *(v3 + 16) = v31;
  v23 = (v3 + OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel_selectionHandler);
  v24 = v33;
  *v23 = v22;
  v23[1] = v24;
  return v3;
}

uint64_t sub_24367B7A0()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__subtitle, v2);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__color;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel__mascot;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel_selectionHandler + 8);

  v9 = *(*v0 + 12);
  v10 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t type metadata accessor for EMSCourseTileViewModel()
{
  result = qword_27ED7EAB0;
  if (!qword_27ED7EAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24367B980()
{
  sub_24367BAD8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24367BB28(319, &qword_27ED7EAC0, type metadata accessor for CRKCourseColorType);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24367BB28(319, &qword_27ED7EAC8, type metadata accessor for CRKCourseMascotType);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24367BAD8()
{
  if (!qword_27ED80310)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED80310);
    }
  }
}

void sub_24367BB28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2436CAEF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24367BB80()
{
  result = qword_27ED7EAD0;
  if (!qword_27ED7EAD0)
  {
    sub_24367A54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EAD0);
  }

  return result;
}

uint64_t sub_24367BBD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSCourseTileViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

id sub_24367BC18@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = v2;
  return v2;
}

id sub_24367BC54(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a1 / 255.0;
  v6 = a2 / 255.0;
  v7 = a3 / 255.0;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:v5 green:v6 blue:v7 alpha:a4];
}

id sub_24367BCD4(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  sub_24367BEEC();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (v1 == 2)
  {
    v3 = 0.756862745;
    v4 = 0.776470588;
    v5 = 1.0;
  }

  else
  {
    v3 = 0.556862745;
    v4 = 0.576470588;
    v5 = 0.3;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:v5];
}

id sub_24367BD6C(double a1)
{
  swift_getObjectType();
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [v1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4];
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHue:v7 saturation:v6 * a1 brightness:v5 alpha:v4];
}

unint64_t sub_24367BEEC()
{
  result = qword_27ED7EAE0;
  if (!qword_27ED7EAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED7EAE0);
  }

  return result;
}

uint64_t sub_24367BF38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

void sub_24367BFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  LOBYTE(a1) = sub_2436ABDA8(a1);
  sub_243671AC8(v14, &unk_27ED7EB80, &qword_2436CE410);
  if (a1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_243671AC8(v12, &unk_27ED7EB80, &qword_2436CE410);
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = 0;

    sub_2436CAEE8();
    v20 = sub_2436CAC58();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = sub_2436CAC58();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436714A8(v7, v33, &qword_27ED7E8C0, &unk_2436CE980);

      sub_2436CAEE8();
      sub_243671AC8(v7, &qword_27ED7E8C0, &unk_2436CE980);
      swift_getKeyPath();
      swift_getKeyPath();
      v37 = 1;

      sub_2436CAEE8();
      v22 = &unk_27ED7EB80;
      v23 = &qword_2436CE410;
      v21 = v12;
      goto LABEL_10;
    }

    sub_243671AC8(v12, &unk_27ED7EB80, &qword_2436CE410);
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = 1;

    sub_2436CAEE8();
    if (qword_27ED7DED0 != -1)
    {
      swift_once();
    }

    v16 = qword_27ED83B40;
    v17 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_subtitle;
    v18 = sub_2436CAC58();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v7, v16 + v17, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436714A8(v7, v33, &qword_27ED7E8C0, &unk_2436CE980);

  sub_2436CAEE8();
  v21 = v7;
  v22 = &qword_27ED7E8C0;
  v23 = &unk_2436CE980;
LABEL_10:
  sub_243671AC8(v21, v22, v23);
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v25 = sub_2436CADE8();
  __swift_project_value_buffer(v25, qword_27ED7FD78);

  v26 = sub_2436CADC8();
  v27 = sub_2436CBED8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v28 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    v30 = sub_2436CBD68();
    v32 = sub_2436AFA70(v30, v31, &v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_24366A000, v26, v27, "New course picker content: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x245D3CD90](v29, -1, -1);
    MEMORY[0x245D3CD90](v28, -1, -1);
  }
}

uint64_t sub_24367C6A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();
}

uint64_t sub_24367C740()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24367C7C0(void *a1)
{
  v2 = v1;
  v139 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC20, &unk_2436CED70);
  v3 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v107 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF0, &qword_2436D1DE0);
  v5 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v111 = &v107 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC30, &unk_2436CED80);
  v117 = *(v118 - 8);
  v7 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v107 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v108 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v138 = &v107 - v13;
  v14 = type metadata accessor for EMSUserInterfaceRecord();
  v136 = *(v14 - 8);
  v137 = v14;
  v15 = *(v136 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v110 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v17;
  MEMORY[0x28223BE20](v16);
  v113 = &v107 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v19 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v107 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC48, &unk_2436CEDA0);
  v134 = *(v21 - 8);
  v135 = v21;
  v22 = *(v134 + 64);
  MEMORY[0x28223BE20](v21);
  v133 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v129 = *(v24 - 8);
  v130 = v24;
  v25 = *(v129 + 64);
  MEMORY[0x28223BE20](v24);
  v128 = &v107 - v26;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC10, &unk_2436CED60);
  v127 = *(v141 - 8);
  v27 = *(v127 + 64);
  MEMORY[0x28223BE20](v141);
  v126 = &v107 - v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v29 = *(*(v123 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v123);
  v122 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v121 = &v107 - v32;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v125 = *(v140 - 8);
  v33 = *(v125 + 64);
  MEMORY[0x28223BE20](v140);
  v124 = &v107 - v34;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC00, &unk_2436CED50);
  v35 = *(v120 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v120);
  v38 = &v107 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v107 - v44;
  *(v2 + 32) = sub_2436711C4(MEMORY[0x277D84F90]);
  v119 = v2;
  v46 = v2 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_title;
  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  v47 = qword_27ED83B40;
  v48 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_title;
  v49 = sub_2436CAC58();
  v50 = *(v49 - 8);
  (*(v50 + 16))(v46, v47 + v48, v49);
  v51 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__subtitle;
  (*(v50 + 56))(v45, 1, 1, v49);
  sub_2436714A8(v45, v43, &qword_27ED7E8C0, &unk_2436CE980);
  sub_2436CAE98();
  sub_243671AC8(v45, &qword_27ED7E8C0, &unk_2436CE980);
  v52 = v119;
  (*(v35 + 32))(v119 + v51, v38, v120);
  v53 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__showHistoryButton;
  LOBYTE(v143) = 1;
  v54 = v124;
  sub_2436CAE98();
  v125 = *(v125 + 32);
  v55 = v140;
  (v125)(v52 + v53, v54, v140);
  v120 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__content;
  v56 = v121;
  swift_storeEnumTagMultiPayload();
  sub_2436714A8(v56, v122, &unk_27ED7EB80, &qword_2436CE410);
  v57 = v126;
  sub_2436CAE98();
  sub_243671AC8(v56, &unk_27ED7EB80, &qword_2436CE410);
  (*(v127 + 32))(v52 + v120, v57, v141);
  v58 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__viewHistoryButton;
  v143 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB90, &qword_2436CE990);
  v59 = v128;
  sub_2436CAE98();
  v60 = v130;
  v61 = *(v129 + 32);
  v61(v52 + v58, v59, v130);
  v62 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__addedToStack;
  LOBYTE(v143) = 0;
  sub_2436CAE98();
  (v125)(v52 + v62, v54, v55);
  v63 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__cancelButton;
  v143 = 0;
  sub_2436CAE98();
  v61(v52 + v63, v59, v60);
  *(v52 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_inputSubscription) = 0;
  *(v52 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription) = 0;
  swift_weakInit();
  v64 = v139;
  *(v52 + 16) = v139;
  sub_2436744F8((v64 + 2), &v143);

  v65 = sub_2436C5BA4(&v143);
  *(v52 + 24) = v65;
  v66 = v64[5];
  v67 = v64[6];
  __swift_project_boxed_opaque_existential_0(v64 + 2, v66);

  v68 = sub_2436C4784(v66, v67);
  v69 = type metadata accessor for EMSSearchBarViewModel();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_24368A650(v65, v68, 0, 1);

  swift_beginAccess();
  v142 = v72;
  sub_2436CAE98();
  swift_endAccess();
  v73 = sub_24367F738();
  swift_getKeyPath();
  swift_getKeyPath();
  v143 = v73;

  sub_2436CAEE8();
  v74 = sub_24367F9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  v143 = v74;

  sub_2436CAEE8();
  v75 = v64[5];
  v76 = v64[6];
  __swift_project_boxed_opaque_existential_0(v64 + 2, v75);
  v142 = (*(v76 + 8))(v75, v76);
  v77 = *(v52 + 24);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  sub_2436CAEA8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0);
  sub_243671838(&qword_27ED7FEB0, &qword_27ED7EC40, &unk_2436CED90);
  v78 = v133;
  sub_2436CADF8();
  swift_allocObject();
  swift_weakInit();
  sub_243671838(&unk_27ED7EC70, &qword_27ED7EC48, &unk_2436CEDA0);

  v79 = v135;
  v80 = sub_2436CAF68();

  (*(v134 + 8))(v78, v79);
  v81 = *(v52 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_inputSubscription);
  *(v52 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_inputSubscription) = v80;

  v82 = v64[5];
  v83 = v64[6];
  __swift_project_boxed_opaque_existential_0(v64 + 2, v82);
  v84 = v138;
  (*(v83 + 32))(v82, v83);
  v85 = v136;
  v86 = v137;
  v87 = v64;
  if ((*(v136 + 48))(v84, 1, v137) == 1)
  {

    sub_243671AC8(v84, &qword_27ED7E400, &qword_2436CF400);
  }

  else
  {
    v88 = v85;
    v89 = v113;
    sub_243671A10(v84, v113);
    v90 = v87[5];
    v91 = v87[6];
    __swift_project_boxed_opaque_existential_0(v87 + 2, v90);
    v92 = v108;
    (*(v85 + 56))(v108, 1, 1, v86);
    (*(v91 + 72))(v92, v90, v91);
    sub_243671AC8(v92, &qword_27ED7E400, &qword_2436CF400);
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v93 = sub_2436CADE8();
    __swift_project_value_buffer(v93, qword_27ED7FD78);
    v94 = sub_2436CADC8();
    v95 = sub_2436CBED8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_24366A000, v94, v95, "Found lastAssignedCourseIdentifier, waiting for student picker vm to load", v96, 2u);
      MEMORY[0x245D3CD90](v96, -1, -1);
    }

    swift_beginAccess();
    sub_2436CAEA8();
    swift_endAccess();
    swift_beginAccess();
    sub_2436CAEA8();
    swift_endAccess();
    sub_243671838(&qword_27ED7FF00, &qword_27ED7FEF0, &qword_2436D1DE0);
    sub_243671838(&qword_27ED7EC80, &unk_27ED7EC20, &unk_2436CED70);
    v97 = v116;
    sub_2436CADF8();
    v98 = swift_allocObject();
    swift_weakInit();

    v99 = v110;
    sub_243682B6C(v89, v110);
    v100 = (*(v88 + 80) + 24) & ~*(v88 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = v98;
    sub_243671A10(v99, v101 + v100);
    v102 = swift_allocObject();
    *(v102 + 16) = sub_243682CC8;
    *(v102 + 24) = v101;
    sub_243671838(&qword_27ED7EC88, &unk_27ED7EC30, &unk_2436CED80);
    v103 = v118;
    v104 = sub_2436CAF68();

    (*(v117 + 8))(v97, v103);
    sub_243670FCC(v89);
    v105 = *(v52 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription);
    *(v52 + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription) = v104;
  }

  return v52;
}

uint64_t sub_24367D968(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24367DEFC(v1, v2, v3);
  }

  return result;
}

void sub_24367D9E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for EMSUserInterfaceRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v46 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  if (a1)
  {
    v47 = a4;
    sub_2436714A8(a2, &v46 - v19, &unk_27ED7EB80, &qword_2436CE410);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = v47;
    sub_243671AC8(v20, &unk_27ED7EB80, &qword_2436CE410);
    if (EnumCaseMultiPayload == 1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v24 = *(Strong + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription);
        *(Strong + OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription) = 0;

        v22 = v47;
      }

      v25 = v22 + *(v7 + 24);
      sub_2436CACF8();
      if (*MEMORY[0x277CFA5F0] <= -v26)
      {
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v34 = sub_2436CADE8();
        __swift_project_value_buffer(v34, qword_27ED7FD78);
        sub_243682B6C(v22, v14);
        sub_243682B6C(v22, v11);
        v35 = sub_2436CADC8();
        v36 = sub_2436CBED8();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v48 = v39;
          *v37 = 136446466;
          v40 = *(v7 + 24);
          sub_2436CAD38();
          sub_243682DDC();
          v41 = sub_2436CC2B8();
          v43 = v42;
          sub_243670FCC(v14);
          v44 = sub_2436AFA70(v41, v43, &v48);

          *(v37 + 4) = v44;
          *(v37 + 12) = 2114;
          v45 = *v11;
          sub_243670FCC(v11);
          *(v37 + 14) = v45;
          *v38 = v45;
          _os_log_impl(&dword_24366A000, v35, v36, "Date: %{public}s of lastAssignedCourseIdentifier: %{public}@ is more than 24 hours ago", v37, 0x16u);
          sub_243671AC8(v38, &unk_27ED7ECA0, &unk_2436CEDC0);
          MEMORY[0x245D3CD90](v38, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x245D3CD90](v39, -1, -1);
          MEMORY[0x245D3CD90](v37, -1, -1);
        }

        else
        {

          sub_243670FCC(v11);
          sub_243670FCC(v14);
        }
      }

      else
      {
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v27 = sub_2436CADE8();
        __swift_project_value_buffer(v27, qword_27ED7FD78);
        sub_243682B6C(v22, v16);
        v28 = sub_2436CADC8();
        v29 = sub_2436CBED8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138543362;
          v32 = *v16;
          sub_243670FCC(v16);
          *(v30 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&dword_24366A000, v28, v29, "Pushing ViewModel for lastAssignedCourseIdentifier: %{public}@", v30, 0xCu);
          sub_243671AC8(v31, &unk_27ED7ECA0, &unk_2436CEDC0);
          MEMORY[0x245D3CD90](v31, -1, -1);
          v33 = v30;
          v22 = v47;
          MEMORY[0x245D3CD90](v33, -1, -1);
        }

        else
        {

          sub_243670FCC(v16);
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24367F584(*v22, *(v22 + 8), *(v22 + 16));
        }
      }
    }
  }
}

uint64_t sub_24367DEFC(void *a1, uint64_t a2, int a3)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  v7 = *(v73 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v60 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  v10 = *(v71 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v60 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v13 = *(v69 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v64 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v60 - v24;
  if (a2)
  {
    v74 = v3;
    v26 = *(a2 + 16);
    if (v26)
    {
      v60 = v23;
      v61 = &v60 - v24;
      v62 = a3;
      v63 = v22;
      v77 = MEMORY[0x277D84F90];
      sub_2436C19E8(0, v26, 0);
      v27 = v77;
      v66 = (v10 + 32);
      v67 = (v13 + 32);
      v65 = (v7 + 32);
      v28 = (a2 + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        v31 = swift_allocObject();
        swift_weakInit();
        if (v30 == 1)
        {
          v32 = type metadata accessor for EMSStudentViewModel();
          v33 = *(v32 + 48);
          v34 = *(v32 + 52);
          v35 = swift_allocObject();
          ObjectType = swift_getObjectType();
          v37 = swift_unknownObjectRetain_n();
          v38 = sub_24369E7E0(v37, sub_2436829E8, v31, v35, ObjectType);
          swift_unknownObjectRelease();

          v39 = v38 | 0x8000000000000000;
        }

        else
        {
          v40 = type metadata accessor for EMSCourseSearchResultViewModel();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          v39 = swift_allocObject();
          v43 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__title;
          v75 = 0;
          v76 = 0xE000000000000000;
          swift_unknownObjectRetain_n();

          v44 = v68;
          sub_2436CAE98();
          (*v67)(v39 + v43, v44, v69);
          v45 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__color;
          v75 = 0;
          type metadata accessor for CRKCourseColorType(0);
          v46 = v70;
          sub_2436CAE98();
          (*v66)(v39 + v45, v46, v71);
          v47 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__mascot;
          v75 = 0;
          type metadata accessor for CRKCourseMascotType(0);
          v48 = v72;
          sub_2436CAE98();
          (*v65)(v39 + v47, v48, v73);
          *(v39 + 16) = [v29 identifier];
          v49 = (v39 + OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel_selectionHandler);
          *v49 = sub_2436829B4;
          v49[1] = v31;

          v50 = [v29 name];
          v51 = sub_2436CBD38();
          v53 = v52;

          sub_2436C7DA0(v51, v53, [v29 color], objc_msgSend(v29, sel_mascot));
          swift_unknownObjectRelease();
        }

        v77 = v27;
        v55 = *(v27 + 16);
        v54 = *(v27 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_2436C19E8((v54 > 1), v55 + 1, 1);
          v27 = v77;
        }

        *(v27 + 16) = v55 + 1;
        v56 = v27 + 24 * v55;
        *(v56 + 32) = v39;
        *(v56 + 40) = v29;
        *(v56 + 48) = v30;
        v28 += 16;
        --v26;
      }

      while (v26);
      v57 = v62 & 1;
      v58 = v61;
      *v61 = v27;
      v25 = v58;
      v58[8] = v57;
      swift_storeEnumTagMultiPayload();
      v22 = v63;
    }

    else
    {
      *v25 = (a3 & 1) != 0;
      v25[8] = 0;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_24367E840(a1, (&v60 - v24));
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436714A8(v25, v64, &unk_27ED7EB80, &qword_2436CE410);

  sub_2436CAEE8();
  sub_24367BFD4(v22);
  sub_243671AC8(v22, &unk_27ED7EB80, &qword_2436CE410);
  return sub_243671AC8(v25, &unk_27ED7EB80, &qword_2436CE410);
}

uint64_t sub_24367E5D8(uint64_t a1)
{
  v1 = a1;
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2436CC008();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v28 = MEMORY[0x277D84F90];
    sub_2436CC0E8();
    result = sub_2436CC118();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2436CC0E8();
  v5 = -1 << *(v1 + 32);
  result = sub_2436CBFD8();
  v6 = *(v1 + 36);
  v25 = result;
  v26 = v6;
  v27 = 0;
LABEL_7:
  v7 = 0;
  v22 = v2;
  while (v7 < v2)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v25;
    v16 = v26;
    v17 = v27;
    sub_243682648(v24, v25, v26, v27, v1);

    v19 = v1;
    sub_2436CC0C8();
    v20 = *(v28 + 16);
    sub_2436CC0F8();
    sub_2436CC108();
    result = sub_2436CC0D8();
    if (v23)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_2436CC148())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBD8, &unk_2436CEB40);
      v21 = sub_2436CBC48();
      sub_2436CC1C8();
      result = v21(v24, 0);
    }

    else
    {
      sub_2436824E4(v15, v16, v17, v1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_2436829A8(v15, v16, v17);
      v25 = v9;
      v26 = v11;
      v27 = v13 & 1;
      v1 = v19;
      v2 = v22;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_2436829A8(v25, v26, v27);
      return v28;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24367E840@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 1)
  {
    sub_24367ED8C(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
    goto LABEL_11;
  }

  sub_24367ED8C(a1);
  v4 = *(v2 + 32);

  sub_24367E5D8(v5);

  v21 = sub_2436C3A90(v6);
  sub_2436804D8(&v21);

  v7 = v21;
  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    v8 = v21;
    v9 = sub_2436CC008();
    v7 = v8;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (*(v21 + 16))
  {
LABEL_6:
    *a2 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
    goto LABEL_11;
  }

  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  v10 = qword_27ED83B40;
  v11 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextTitle;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  v13 = v12[7];
  v14 = sub_2436CAC58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(a2 + v13, v10 + v11, v14);
  v17 = v12[8];
  v16(a2 + v17, v10 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextSubtitle, v14);
  (*(v15 + 56))(a2 + v17, 0, 1, v14);
  v18 = v12[9];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC0, &qword_2436CEB30);
  (*(*(v19 - 8) + 56))(a2 + v18, 1, 1, v19);
  *a2 = 0x64746E6564757473;
  a2[1] = 0xEB000000006B7365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
LABEL_11:

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_24367EB08(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v11 = v27;
  v10 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v12 = v27;
  v13 = v28;
  v27 = v11;
  v28 = v10;
  v25 = v12;
  v26 = v13;
  sub_2436732AC();
  v14 = sub_2436CBF58();

  if (!v14)
  {
    v15 = [*(v8 + 16) stringValue];
    v16 = sub_2436CBD38();
    v18 = v17;

    v19 = [*(v9 + 16) stringValue];
    v20 = sub_2436CBD38();
    v22 = v21;

    v27 = v16;
    v28 = v18;
    v25 = v20;
    v26 = v22;
    v23 = sub_2436CADB8();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v14 = sub_2436CBF98();
    sub_243671AC8(v7, &qword_27ED7EBC8, &qword_2436CEB38);
  }

  return v14 == -1;
}

uint64_t sub_24367ED8C(void *a1)
{
  if (a1)
  {
    v1 = [a1 courses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
    v2 = sub_2436CBE08();

    v3 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_3;
    }

LABEL_59:
    v48 = v3;
    v4 = sub_2436CC008();
    v3 = v48;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_60:

    v6 = MEMORY[0x277D84F98];
LABEL_61:
    v49 = *(v55 + 32);
    *(v55 + 32) = v6;
  }

  v3 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_59;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_60;
  }

LABEL_4:
  v5 = 0;
  v54 = v3 & 0xC000000000000001;
  v51 = v3 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F98];
  v52 = v4;
  v53 = v3;
  while (v54)
  {
    v9 = MEMORY[0x245D3C2F0](v5);
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_62;
    }

LABEL_13:
    v11 = [v9 identifier];
    v12 = *(v55 + 32);
    v56 = v10;
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = v11;
      v14 = sub_2436CC1A8();

      if (v14)
      {
        type metadata accessor for EMSCourseTileViewModel();
        swift_dynamicCast();
        v15 = v58;
        goto LABEL_19;
      }

LABEL_21:

      goto LABEL_22;
    }

    if (*(v12 + 16))
    {

      v16 = sub_24366FF48(v11);
      if (v17)
      {
        v15 = *(*(v12 + 56) + 8 * v16);

LABEL_19:

        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_22:
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v11;
    v20 = type metadata accessor for EMSCourseTileViewModel();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v15 = sub_24367B4B8(v11, sub_243682860, v19);
LABEL_23:
    v23 = [v9 name];
    v24 = sub_2436CBD38();
    v57 = v25;

    v26 = [objc_msgSend(v9 location)];
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = sub_2436CBD38();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v30 = [v9 color];
    v31 = [v9 mascot];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v58 == v24 && v59 == v57)
    {
    }

    else
    {
      v32 = sub_2436CC2E8();

      if ((v32 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v58 = v24;
        v59 = v57;

        sub_2436CAEE8();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v58 == v27 && v59 == v29)
    {
    }

    else
    {
      v33 = sub_2436CC2E8();

      if ((v33 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v58 = v27;
        v59 = v29;

        sub_2436CAEE8();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v58 != v30)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v58 = v30;

      sub_2436CAEE8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v58 != v31)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2436CAEE8();
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v34 = v6;
      }

      else
      {
        v34 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v35 = sub_2436CC008();
      if (__OFADD__(v35, 1))
      {
        goto LABEL_64;
      }

      v6 = sub_2436822B0(v34, v35 + 1);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v6;
    v37 = sub_24366FF48(v11);
    v39 = *(v6 + 16);
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_63;
    }

    v43 = v38;
    if (*(v6 + 24) < v42)
    {
      sub_2436B80A8(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_24366FF48(v11);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_67;
      }

LABEL_52:
      if (v43)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_52;
    }

    v47 = v37;
    sub_2436B8A0C();
    v37 = v47;
    if (v43)
    {
LABEL_5:
      v7 = *(v6 + 56);
      v8 = *(v7 + 8 * v37);
      *(v7 + 8 * v37) = v15;

      swift_unknownObjectRelease();

      goto LABEL_6;
    }

LABEL_53:
    *(v6 + 8 * (v37 >> 6) + 64) |= 1 << v37;
    *(*(v6 + 48) + 8 * v37) = v11;
    *(*(v6 + 56) + 8 * v37) = v15;

    swift_unknownObjectRelease();
    v45 = *(v6 + 16);
    v41 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v41)
    {
      goto LABEL_65;
    }

    *(v6 + 16) = v46;
LABEL_6:
    ++v5;
    v3 = v53;
    if (v56 == v52)
    {

      goto LABEL_61;
    }
  }

  if (v5 >= *(v51 + 16))
  {
    goto LABEL_66;
  }

  v9 = *(v3 + 8 * v5 + 32);
  swift_unknownObjectRetain();
  v10 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_13;
  }

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
  sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
  result = sub_2436CC318();
  __break(1u);
  return result;
}

uint64_t sub_24367F584(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v9 = Strong;
  sub_243671B28(0, &unk_27ED7FF20, 0x277D82BB8);
  v10 = *(v9 + 16);
  v11 = sub_2436CBF18();

  if ((v11 & 1) == 0)
  {

LABEL_4:
    v12 = *(v4 + 16);
    v13 = type metadata accessor for EMSStudentPickerViewModel();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();

    v16 = a1;
    v9 = sub_2436B180C(v12, v16);
  }

  swift_weakAssign();
  v17 = (v9 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate);
  v18 = *(v9 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate + 8);
  *v17 = a2;
  *(v17 + 1) = a3;

  v19 = *(*(v4 + 16) + 72);
  swift_unownedRetainStrong();

  sub_243683944(v9 | 0x4000000000000000);
}

uint64_t sub_24367F6D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24367F584(a2, 0, 0);
  }

  return result;
}

uint64_t sub_24367F738()
{
  v0 = sub_2436CAD98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2436CAD88();
  v6 = sub_2436CAD58();
  v8 = v7;
  v9 = *(v1 + 8);

  v9(v4, v0);
  v10 = type metadata accessor for CRKUIButtonViewModel();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v18 = 0;
  sub_2436CAE98();
  *(v13 + 16) = v6;
  *(v13 + 24) = v8;
  swift_beginAccess();
  v16 = xmmword_2436CE930;
  v17 = 0x80;
  sub_2436CAE98();
  swift_endAccess();

  v14 = (v13 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v14 = sub_2436804D0;
  v14[1] = v5;
  return v13;
}

uint64_t sub_24367F8FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    v3 = type metadata accessor for EMSHistoryViewModel();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v7 = sub_2436BACC4(v6);

    v8 = *(*(v2 + 16) + 72);
    swift_unownedRetainStrong();
    sub_243683944(v7 | 0x8000000000000000);
  }

  return result;
}

uint64_t sub_24367F9B4()
{
  v0 = sub_2436CAD98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED7DED0 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_27ED83B40 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_cancelButtonLabel, v5);
  v10 = sub_2436CBD58();
  v12 = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  sub_2436CAD88();
  v14 = sub_2436CAD58();
  v16 = v15;
  v17 = *(v1 + 8);

  v17(v4, v0);
  v18 = type metadata accessor for CRKUIButtonViewModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v26 = 0;
  sub_2436CAE98();
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  swift_beginAccess();
  v24[0] = v10;
  v24[1] = v12;
  v25 = 0;
  sub_2436CAE98();
  swift_endAccess();

  v22 = (v21 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v22 = sub_2436804C8;
  v22[1] = v13;
  return v21;
}

uint64_t sub_24367FC5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (*(v1 + 56))
    {
      v2 = *(v1 + 64);
      v3 = *(v1 + 56);
      ObjectType = swift_getObjectType();
      v5 = *(v2 + 8);
      swift_unknownObjectRetain();
      v5(ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24367FD10(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    sub_2436A9D1C(a1);
  }

  return result;
}

uint64_t sub_24367FD8C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24367F584(a1, 0, 0);
  }

  return result;
}

char *sub_24367FDF4()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_title;
  v5 = sub_2436CAC58();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__searchBar;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF8, &qword_2436CED48);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__subtitle;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC00, &unk_2436CED50);
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__showHistoryButton;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v12 = *(*(v11 - 8) + 8);
  v12(&v0[v10], v11);
  v13 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__content;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC10, &unk_2436CED60);
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__viewHistoryButton;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v17 = *(*(v16 - 8) + 8);
  v17(&v0[v15], v16);
  v12(&v0[OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__addedToStack], v11);
  v17(&v0[OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel__cancelButton], v16);
  v18 = *&v0[OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_inputSubscription];

  v19 = *&v0[OBJC_IVAR____TtC14ClassroomUIKit24EMSCoursePickerViewModel_lastUsedCourseSubscription];

  swift_weakDestroy();
  return v0;
}

uint64_t sub_243680070()
{
  sub_24367FDF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSCoursePickerViewModel()
{
  result = qword_27ED7EB48;
  if (!qword_27ED7EB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368011C()
{
  v0 = sub_2436CAC58();
  if (v1 <= 0x3F)
  {
    v13 = *(v0 - 8) + 64;
    sub_243680354();
    if (v3 <= 0x3F)
    {
      v14 = *(v2 - 8) + 64;
      sub_2436803FC(319, &unk_27ED7EB60, &qword_27ED7E8C0, &unk_2436CE980);
      if (v5 <= 0x3F)
      {
        v15 = *(v4 - 8) + 64;
        sub_2436803AC();
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_2436803FC(319, &qword_27ED7EB78, &unk_27ED7EB80, &qword_2436CE410);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            sub_2436803FC(319, &unk_27ED7F740, &unk_27ED7EB90, &qword_2436CE990);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_243680354()
{
  if (!qword_27ED7EB58)
  {
    type metadata accessor for EMSSearchBarViewModel();
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7EB58);
    }
  }
}

void sub_2436803AC()
{
  if (!qword_27ED7EB70)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7EB70);
    }
  }
}

void sub_2436803FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2436CAEF8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243680450@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSCoursePickerViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_243680490()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436804D8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C466C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_243680D40(v6);
  return sub_2436CC0D8();
}

uint64_t sub_2436805E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_243680670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436806E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_243680760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_24368082C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436808B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2436714A8(a1, &v13 - v9, &qword_27ED7E8C0, &unk_2436CE980);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436714A8(v10, v8, &qword_27ED7E8C0, &unk_2436CE980);

  sub_2436CAEE8();
  return sub_243671AC8(v10, &qword_27ED7E8C0, &unk_2436CE980);
}

uint64_t sub_2436809FC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();
}

uint64_t sub_243680A74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB80, &qword_2436CE410);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_2436714A8(a1, &v16 - v12, &unk_27ED7EB80, &qword_2436CE410);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436714A8(v13, v8, &unk_27ED7EB80, &qword_2436CE410);

  sub_2436CAEE8();
  sub_24367BFD4(v11);
  sub_243671AC8(v11, &unk_27ED7EB80, &qword_2436CE410);
  return sub_243671AC8(v13, &unk_27ED7EB80, &qword_2436CE410);
}

uint64_t sub_243680C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_243680CD0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_243680D40(unint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = v34 - v5;
  v6 = a1[1];
  result = sub_2436CC2A8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EMSCourseTileViewModel();
        v10 = sub_2436CBE28();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v33 = v10 & 0xFFFFFFFFFFFFFF8;
      v43 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v44 = v9;
      sub_243681118(&v43, &v41, a1, v8);
      *(v33 + 16) = 0;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v6 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v6 >= 2)
  {
    v34[1] = v1;
    v35 = v6;
    v11 = *a1;
    v12 = -1;
    v13 = 1;
    v45 = *a1;
    do
    {
      v37 = v13;
      v38 = v12;
      v14 = *(v45 + 8 * v13);
      v36 = v11;
      do
      {
        v15 = *v11;
        swift_getKeyPath();
        swift_getKeyPath();

        sub_2436CAED8();

        v16 = v43;
        v17 = v44;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_2436CAED8();

        v18 = v43;
        v19 = v44;
        v43 = v16;
        v44 = v17;
        v41 = v18;
        v42 = v19;
        sub_2436732AC();
        v20 = sub_2436CBF58();

        if (v20)
        {

          if (v20 != -1)
          {
            break;
          }
        }

        else
        {
          v21 = [*(v14 + 16) stringValue];
          v40 = sub_2436CBD38();
          v23 = v22;

          v24 = [*(v15 + 16) stringValue];
          v25 = sub_2436CBD38();
          v27 = v26;

          v43 = v40;
          v44 = v23;
          v41 = v25;
          v42 = v27;
          v28 = sub_2436CADB8();
          v29 = v39;
          (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
          v30 = sub_2436CBF98();
          sub_243671AC8(v29, &qword_27ED7EBC8, &qword_2436CEB38);

          if (v30 != -1)
          {
            break;
          }
        }

        if (!v45)
        {
          goto LABEL_23;
        }

        v31 = *v11;
        v14 = v11[1];
        *v11 = v14;
        v11[1] = v31;
        --v11;
      }

      while (!__CFADD__(v12++, 1));
      v13 = v37 + 1;
      v11 = v36 + 1;
      v12 = v38 - 1;
    }

    while (v37 + 1 != v35);
  }

  return result;
}

uint64_t sub_243681118(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v120 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v125 = &v115 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v120;
    if (!*v120)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_96:
      v133 = v15;
      v111 = *(v15 + 2);
      if (v111 >= 2)
      {
        while (*a3)
        {
          v112 = *&v15[16 * v111];
          v113 = *&v15[16 * v111 + 24];
          sub_243681BD4((*a3 + 8 * v112), (*a3 + 8 * *&v15[16 * v111 + 16]), (*a3 + 8 * v113), v5);
          if (v6)
          {
          }

          if (v113 < v112)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_2436C3A7C(v15);
          }

          if (v111 - 2 >= *(v15 + 2))
          {
            goto LABEL_121;
          }

          v114 = &v15[16 * v111];
          *v114 = v112;
          *(v114 + 1) = v113;
          v133 = v15;
          result = sub_2436C39F0(v111 - 1);
          v15 = v133;
          v111 = *(v133 + 2);
          if (v111 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_2436C3A7C(v15);
    v15 = result;
    goto LABEL_96;
  }

  v119 = a4;
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v115 = a3;
LABEL_4:
  v16 = v14 + 1;
  if (v14 + 1 < v13)
  {
    v5 = *a3;
    v131 = *(*a3 + 8 * v16);
    v129 = *(v5 + 8 * v14);

    LODWORD(v128) = sub_24367EB08(&v131, &v129);
    if (v6)
    {
    }

    v16 = v14 + 2;
    if (v14 + 2 < v13)
    {
      v127 = v13;
      v117 = v15;
      v118 = 0;
      v116 = v14;
      v17 = (v5 + 8 * v14 + 16);
      do
      {
        v124 = v16;
        v5 = *(v17 - 1);
        v28 = *v17;
        swift_getKeyPath();
        swift_getKeyPath();

        sub_2436CAED8();

        v29 = v131;
        v30 = v132;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_2436CAED8();

        v31 = v131;
        v32 = v132;
        v131 = v29;
        v132 = v30;
        v129 = v31;
        v130 = v32;
        sub_2436732AC();
        v33 = sub_2436CBF58();

        if (v33)
        {

          if ((v128 & 1) == (v33 != -1))
          {
LABEL_12:
            v15 = v117;
            v6 = v118;
            a3 = v115;
            v16 = v124;
            goto LABEL_14;
          }
        }

        else
        {
          v18 = [*(v28 + 16) stringValue];
          v126 = sub_2436CBD38();
          v20 = v19;

          v21 = [*(v5 + 16) stringValue];
          v22 = sub_2436CBD38();
          v24 = v23;

          v131 = v126;
          v132 = v20;
          v129 = v22;
          v130 = v24;
          v25 = sub_2436CADB8();
          v26 = v125;
          (*(*(v25 - 8) + 56))(v125, 1, 1, v25);
          v27 = sub_2436CBF98();
          sub_243671AC8(v26, &qword_27ED7EBC8, &qword_2436CEB38);

          if (((v128 ^ (v27 != -1)) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v16 = v124 + 1;
        ++v17;
      }

      while (v127 != v124 + 1);
      v16 = v127;
      v15 = v117;
      v6 = v118;
      a3 = v115;
LABEL_14:
      v14 = v116;
    }

    if (v128)
    {
      if (v16 < v14)
      {
        goto LABEL_126;
      }

      if (v14 < v16)
      {
        v34 = 8 * v16 - 8;
        v35 = 8 * v14;
        v36 = v16;
        v37 = v14;
        do
        {
          if (v37 != --v36)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v39 = *(v38 + v35);
            *(v38 + v35) = *(v38 + v34);
            *(v38 + v34) = v39;
          }

          ++v37;
          v34 -= 8;
          v35 += 8;
        }

        while (v37 < v36);
      }
    }
  }

  v40 = a3[1];
  if (v16 >= v40)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v16, v14))
  {
    goto LABEL_123;
  }

  if (v16 - v14 >= v119)
  {
    goto LABEL_43;
  }

  v41 = v14 + v119;
  if (__OFADD__(v14, v119))
  {
    goto LABEL_124;
  }

  if (v41 >= v40)
  {
    v41 = a3[1];
  }

  if (v41 < v14)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v16 == v41)
  {
    goto LABEL_43;
  }

  v117 = v15;
  v118 = v6;
  v126 = *a3;
  v42 = (v126 + 8 * v16 - 8);
  v116 = v14;
  v43 = v14 - v16;
  v121 = v41;
LABEL_33:
  v123 = v42;
  v124 = v16;
  v44 = *(v126 + 8 * v16);
  v122 = v43;
  v45 = v43;
  while (1)
  {
    v127 = v45;
    v46 = *v42;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2436CAED8();

    v47 = v131;
    v48 = v132;
    swift_getKeyPath();
    swift_getKeyPath();
    v128 = v46;
    sub_2436CAED8();

    v49 = v131;
    v50 = v132;
    v131 = v47;
    v132 = v48;
    v129 = v49;
    v130 = v50;
    sub_2436732AC();
    v51 = sub_2436CBF58();

    if (v51)
    {

      if (v51 != -1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v52 = [*(v44 + 16) stringValue];
      v53 = sub_2436CBD38();
      v5 = v54;

      v55 = [*(v128 + 16) stringValue];
      v56 = sub_2436CBD38();
      v58 = v57;

      v131 = v53;
      v132 = v5;
      v129 = v56;
      v130 = v58;
      v59 = sub_2436CADB8();
      v60 = v125;
      (*(*(v59 - 8) + 56))(v125, 1, 1, v59);
      v61 = sub_2436CBF98();
      sub_243671AC8(v60, &qword_27ED7EBC8, &qword_2436CEB38);

      if (v61 != -1)
      {
        goto LABEL_32;
      }
    }

    v62 = v127;
    if (!v126)
    {
      break;
    }

    v63 = *v42;
    v44 = v42[1];
    *v42 = v44;
    v42[1] = v63;
    --v42;
    v64 = __CFADD__(v62, 1);
    v45 = v62 + 1;
    if (v64)
    {
LABEL_32:
      v16 = v124 + 1;
      v42 = v123 + 1;
      v43 = v122 - 1;
      if (v124 + 1 != v121)
      {
        goto LABEL_33;
      }

      v16 = v121;
      v15 = v117;
      v6 = v118;
      a3 = v115;
      v14 = v116;
LABEL_43:
      if (v16 < v14)
      {
        goto LABEL_122;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2436C1290(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v66 = *(v15 + 2);
      v65 = *(v15 + 3);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        result = sub_2436C1290((v65 > 1), v66 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v67;
      v68 = &v15[16 * v66];
      *(v68 + 4) = v14;
      *(v68 + 5) = v16;
      v14 = v16;
      v69 = *v120;
      if (!*v120)
      {
        goto LABEL_132;
      }

      if (v66)
      {
        while (1)
        {
          v5 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v70 = *(v15 + 4);
            v71 = *(v15 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_63:
            if (v73)
            {
              goto LABEL_111;
            }

            v86 = &v15[16 * v67];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_114;
            }

            v92 = &v15[16 * v5 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_118;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                v5 = v67 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          v96 = &v15[16 * v67];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_77:
          if (v91)
          {
            goto LABEL_113;
          }

          v99 = &v15[16 * v5];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_116;
          }

          if (v102 < v90)
          {
            goto LABEL_3;
          }

LABEL_84:
          v107 = v5 - 1;
          if (v5 - 1 >= v67)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v108 = *&v15[16 * v107 + 32];
          v109 = *&v15[16 * v5 + 40];
          sub_243681BD4((*a3 + 8 * v108), (*a3 + 8 * *&v15[16 * v5 + 32]), (*a3 + 8 * v109), v69);
          if (v6)
          {
          }

          if (v109 < v108)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_2436C3A7C(v15);
          }

          if (v107 >= *(v15 + 2))
          {
            goto LABEL_108;
          }

          v110 = &v15[16 * v107];
          *(v110 + 4) = v108;
          *(v110 + 5) = v109;
          v133 = v15;
          result = sub_2436C39F0(v5);
          v15 = v133;
          v67 = *(v133 + 2);
          if (v67 <= 1)
          {
            goto LABEL_3;
          }
        }

        v74 = &v15[16 * v67 + 32];
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_109;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_110;
        }

        v81 = &v15[16 * v67];
        v83 = *v81;
        v82 = *(v81 + 1);
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_112;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_115;
        }

        if (v85 >= v77)
        {
          v103 = &v15[16 * v5 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_119;
          }

          if (v72 < v106)
          {
            v5 = v67 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_63;
      }

LABEL_3:
      v13 = a3[1];
      if (v14 >= v13)
      {
        goto LABEL_94;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_243681BD4(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v58 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 < v13 >> 3)
  {
    if (a4 != a1 || &a1[8 * v12] <= a4)
    {
      memmove(a4, a1, 8 * v12);
    }

    v71 = &a4[8 * v12];
    if (a2 - a1 < 8)
    {
LABEL_10:
      a2 = a1;
      goto LABEL_41;
    }

    while (1)
    {
      if (a2 >= a3)
      {
        goto LABEL_10;
      }

      v64 = a1;
      v65 = a2;
      v17 = *a2;
      v66 = a4;
      v18 = *a4;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2436CAED8();

      v20 = v69;
      v19 = v70;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      v21 = v69;
      v22 = v70;
      v69 = v20;
      v70 = v19;
      v67 = v21;
      v68 = v22;
      sub_2436732AC();
      v23 = sub_2436CBF58();

      if (v23)
      {

        if (v23 != -1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = [*(v17 + 16) stringValue];
        v62 = sub_2436CBD38();
        v63 = v25;
        v26 = v25;

        v27 = [*(v18 + 16) stringValue];
        v28 = sub_2436CBD38();
        v30 = v29;

        v69 = v62;
        v70 = v26;
        v67 = v28;
        v68 = v30;
        v31 = sub_2436CADB8();
        v32 = v61;
        (*(*(v31 - 8) + 56))(v61, 1, 1, v31);
        v33 = sub_2436CBF98();
        sub_243671AC8(v32, &qword_27ED7EBC8, &qword_2436CEB38);

        if (v33 != -1)
        {
LABEL_19:
          a2 = v65;
          v16 = v66;
          a4 = v66 + 8;
          v15 = v64;
          if (v64 == v66)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v15 = *v16;
          goto LABEL_13;
        }
      }

      v15 = v64;
      v16 = v65;
      a2 = v65 + 8;
      a4 = v66;
      if (v64 != v65)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v15 + 8;
      if (a4 >= v71)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != a2 || &a2[8 * v14] <= a4)
  {
    memmove(a4, a2, 8 * v14);
  }

  v71 = &a4[8 * v14];
  if (a3 - a2 >= 8 && a2 > a1)
  {
    v66 = a4;
    v64 = a1;
LABEL_27:
    v65 = a2;
    v34 = a2 - 8;
    v35 = a3 - 8;
    v36 = v71;
    v62 = v34;
    do
    {
      v63 = v35;
      v38 = *(v36 - 1);
      v36 -= 8;
      v37 = v38;
      v39 = *v34;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2436CAED8();

      v41 = v69;
      v40 = v70;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      v42 = v69;
      v43 = v70;
      v69 = v41;
      v70 = v40;
      v67 = v42;
      v68 = v43;
      sub_2436732AC();
      v44 = sub_2436CBF58();

      if (v44)
      {
      }

      else
      {
        v45 = [*(v37 + 16) stringValue];
        v59 = sub_2436CBD38();
        v60 = v46;
        v47 = v46;

        v48 = [*(v39 + 16) stringValue];
        v49 = sub_2436CBD38();
        v51 = v50;

        v69 = v59;
        v70 = v47;
        v67 = v49;
        v68 = v51;
        v52 = sub_2436CADB8();
        v53 = v61;
        (*(*(v52 - 8) + 56))(v61, 1, 1, v52);
        v44 = sub_2436CBF98();
        sub_243671AC8(v53, &qword_27ED7EBC8, &qword_2436CEB38);
      }

      a3 = v63;
      v54 = v63 + 8;
      if (v44 == -1)
      {
        a4 = v66;
        v55 = v64;
        v56 = v62;
        if (v54 != v65)
        {
          *v63 = *v62;
        }

        if (v71 <= a4 || (a2 = v56, v56 <= v55))
        {
          a2 = v56;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

      a4 = v66;
      if (v54 != v71)
      {
        *v63 = *v36;
      }

      v35 = a3 - 8;
      v71 = v36;
      v34 = v62;
    }

    while (v36 > a4);
    v71 = v36;
    a2 = v65;
  }

LABEL_41:
  if (a2 != a4 || a2 >= &a4[(v71 - a4 + (v71 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v71 - a4) / 8));
  }

  return 1;
}

uint64_t sub_2436822B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
    v2 = sub_2436CC228();
    v20 = v2;
    sub_2436CC128();
    v3 = sub_2436CC1B8();
    if (v3)
    {
      v4 = v3;
      sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for EMSCourseTileViewModel();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_2436B80A8(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_2436CBF08();
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
        v5 = sub_2436CC1B8();
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

void sub_2436824E4(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_2436CC158() == *(a4 + 36))
    {
      sub_2436CC168();
      sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
      swift_dynamicCast();
      sub_24366FF48(v8);
      v6 = v5;

      if (v6)
      {
        sub_2436CC138();
        sub_2436CC188();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_2436CBFE8();
  v7 = *(a4 + 36);
}

void sub_243682648(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_2436CC198();
      sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
      swift_dynamicCast();
      type metadata accessor for EMSCourseTileViewModel();
      swift_dynamicCast();
      *a1 = v11;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_2436CC158() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2436CC168();
  sub_243671B28(0, &qword_27ED7EBA0, 0x277D04C00);
  swift_dynamicCast();
  a2 = sub_24366FF48(v11);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  *a1 = *(*(a5 + 56) + 8 * a2);
  v10;
}

uint64_t sub_243682820()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436829A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_243682B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSUserInterfaceRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243682BD0()
{
  v1 = (type metadata accessor for EMSUserInterfaceRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 16);

  v7 = v1[8];
  v8 = sub_2436CAD38();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_243682CC8(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EMSUserInterfaceRecord() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_24367D9E0(a1, a2, v6, v7);
}

uint64_t sub_243682D4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243682D84(unsigned __int8 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC90, &qword_2436CEDB8);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_243682DDC()
{
  result = qword_27ED7EC98;
  if (!qword_27ED7EC98)
  {
    sub_2436CAD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EC98);
  }

  return result;
}

uint64_t sub_243682E34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243682EA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243682F1C()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED00, &qword_2436CEEF0);
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED08, &qword_2436CEEF8);
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v31 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED10, &qword_2436CEF00);
  v33 = *(v31 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF8, &qword_2436CEEE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECF0, &qword_2436CEEE0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__root;
  v38 = 0xF000000000000007;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ECE0, &unk_2436CEDF0);
  sub_2436CAE98();
  (*(v16 + 32))(v1 + v20, v19, v15);
  v21 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel__path;
  v38 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E640, &qword_2436CDF98);
  sub_2436CAE98();
  (*(v11 + 32))(v1 + v21, v14, v10);
  v22 = OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel_pathSubscription;
  *(v1 + OBJC_IVAR____TtC14ClassroomUIKit27EMSNavigationStackViewModel_pathSubscription) = 0;
  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  v38 = 0;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED18, &qword_2436CEF08);
  sub_243671838(&qword_27ED7ED20, &qword_27ED7ED10, &qword_2436CEF00);
  v24 = v31;
  v23 = v32;
  sub_2436CAF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED28, &qword_2436CEF10);
  sub_243671838(&qword_27ED7ED30, &qword_27ED7ED00, &qword_2436CEEF0);
  v25 = v35;
  sub_2436CAF18();
  (*(v37 + 8))(v23, v25);
  sub_243671838(&qword_27ED7ED38, &qword_27ED7ED08, &qword_2436CEEF8);
  v26 = v34;
  v27 = sub_2436CAF08();
  (*(v36 + 8))(v6, v26);
  (*(v33 + 8))(v9, v24);
  v38 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7ED40, &qword_2436CEF18);
  sub_243671838(&unk_27ED7ED48, &qword_27ED7ED40, &qword_2436CEF18);
  v28 = sub_2436CAF68();

  v29 = *(v1 + v22);
  *(v1 + v22) = v28;

  return v1;
}

uint64_t sub_2436834F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (*(a2 + 16) < v2)
    {
      v3 = result;

      v15 = sub_2436BBCCC(a2);

      v5 = v3 + 24;
      v14 = v5;
      while ((sub_24368370C(*(v5 + 8 * v2), v15) & 1) == 0)
      {
        sub_243675744();
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v6 = sub_2436CADE8();
        __swift_project_value_buffer(v6, qword_27ED7FD78);
        sub_243675744();
        v7 = sub_2436CADC8();
        v8 = sub_2436CBED8();
        sub_2436755D8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v16 = v10;
          *v9 = 136446210;
          sub_243675744();
          v11 = sub_2436CBD68();
          v13 = sub_2436AFA70(v11, v12, &v16);
          v5 = v14;

          *(v9 + 4) = v13;
          _os_log_impl(&dword_24366A000, v7, v8, "Popping screen: %{public}s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v10);
          MEMORY[0x245D3CD90](v10, -1, -1);
          MEMORY[0x245D3CD90](v9, -1, -1);
          sub_2436755D8();

          if (!--v2)
          {
          }
        }

        else
        {

          sub_2436755D8();
          if (!--v2)
          {
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24368370C(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_2436CC368();
  sub_2436933F8(v13, a1);
  v5 = sub_2436CC398();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  v9 = a1 & 0xC000000000000000;
  while (1)
  {
    v10 = *(*(a2 + 48) + 8 * v7);
    v11 = v10 >> 62;
    if ((v10 >> 62) <= 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v9 != 0x8000000000000000)
      {
        goto LABEL_5;
      }
    }

    else if (a1 >> 62 != 3)
    {
      goto LABEL_5;
    }

LABEL_4:
    if (((v10 ^ a1) & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      return 1;
    }

LABEL_5:
    v7 = (v7 + 1) & v8;
    if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (v9 != 0x4000000000000000)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a1 >> 62 || v10 != a1)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_243683848()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v0 = *(v3 + 16);
  if (v0)
  {
    v1 = *(v3 + 8 * v0 + 24);
    sub_243675744();

    return v1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v1 = v3;
  if ((~v3 & 0xF000000000000007) != 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}