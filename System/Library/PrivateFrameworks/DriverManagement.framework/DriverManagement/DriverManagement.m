uint64_t sub_21C56548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DriverKitDriverSource();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C565538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DriverKitDriverSource();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C5656C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C565700()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C565748()
{
  MEMORY[0x21CF0CA90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C565780()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C5657C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C5657F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C565848()
{
  sub_21C57D614(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C56589C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriverApp();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C565908(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for DriverKitDriverApp();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C56598C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C5659C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C5659FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C565A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C581E8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C565B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21C581E8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C565BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21C567950(a1, a2);
  }

  return a1;
}

uint64_t DriverKitDriver.driverIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for DriverKitDriver()
{
  result = qword_28120D408;
  if (!qword_28120D408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DriverKitDriver.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for DriverKitDriver() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DriverKitDriver.usageText.getter()
{
  v1 = (v0 + *(type metadata accessor for DriverKitDriver() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DriverKitDriver.init(driverIdentifier:source:displayName:usageText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  v14 = type metadata accessor for DriverKitDriver();
  result = sub_21C567054(a3, a8 + v14[5], type metadata accessor for DriverKitDriverSource);
  v16 = (a8 + v14[6]);
  *v16 = a4;
  v16[1] = a5;
  v17 = (a8 + v14[7]);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

BOOL sub_21C566460(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t _s16DriverManagement0a3KitA0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for DriverKitDriverApp();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DriverKitDriverSource();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21C5824AC() & 1) == 0)
  {
    goto LABEL_10;
  }

  v35 = type metadata accessor for DriverKitDriver();
  v17 = *(v35 + 20);
  v18 = *(v13 + 48);
  sub_21C566FEC(a1 + v17, v16, type metadata accessor for DriverKitDriverSource);
  sub_21C566FEC(a2 + v17, &v16[v18], type metadata accessor for DriverKitDriverSource);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      goto LABEL_13;
    }

LABEL_9:
    sub_21C56711C(v16);
    goto LABEL_10;
  }

  sub_21C566FEC(v16, v12, type metadata accessor for DriverKitDriverSource);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_21C5670BC(v12, type metadata accessor for DriverKitDriverApp);
    goto LABEL_9;
  }

  sub_21C567054(&v16[v18], v8, type metadata accessor for DriverKitDriverApp);
  v22 = _s16DriverManagement0a3KitA3AppO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_21C5670BC(v8, type metadata accessor for DriverKitDriverApp);
  sub_21C5670BC(v12, type metadata accessor for DriverKitDriverApp);
  if ((v22 & 1) == 0)
  {
    sub_21C5670BC(v16, type metadata accessor for DriverKitDriverSource);
    v20 = 0;
    return v20 & 1;
  }

LABEL_13:
  sub_21C5670BC(v16, type metadata accessor for DriverKitDriverSource);
  v23 = v35;
  v24 = *(v35 + 24);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_20;
    }

LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

  if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_21C5824AC() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_20:
  v29 = *(v23 + 28);
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  v20 = (v31 | v33) == 0;
  if (v31 && v33)
  {
    if (*v30 == *v32 && v31 == v33)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_21C5824AC();
    }
  }

  return v20 & 1;
}

BOOL _s16DriverManagement0a3KitA0V1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v47 = type metadata accessor for SettingsApplicationRecord();
  v4 = *(*(v47 - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE838, &qword_21C582F68);
  v8 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v54 = &v47 - v9;
  v10 = type metadata accessor for DriverKitDriverApp();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v17 = v16 - 8;
  v18 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = a1[1];
  v57 = *a1;
  v58 = v21;
  v22 = a2[1];
  v55 = *a2;
  v56 = v22;
  sub_21C566F98();
  v50 = sub_21C58226C();
  v23 = v50 == -1;
  v24 = *(type metadata accessor for DriverKitDriver() + 20);
  v25 = *(v17 + 56);
  sub_21C566FEC(a1 + v24, v20, type metadata accessor for DriverKitDriverSource);
  sub_21C566FEC(a2 + v24, &v20[v25], type metadata accessor for DriverKitDriverSource);
  v26 = *(v11 + 48);
  LODWORD(a2) = v26(v20, 1, v10);
  v27 = v26(&v20[v25], 1, v10);
  if (a2 != 1)
  {
    if (v27 == 1)
    {
      v28 = type metadata accessor for DriverKitDriverApp;
      v29 = v20;
LABEL_6:
      sub_21C5670BC(v29, v28);
      return 0;
    }

    v30 = v53;
    sub_21C567054(v20, v53, type metadata accessor for DriverKitDriverApp);
    v31 = v52;
    sub_21C567054(&v20[v25], v52, type metadata accessor for DriverKitDriverApp);
    v32 = *(v51 + 48);
    v33 = v54;
    sub_21C566FEC(v30, v54, type metadata accessor for DriverKitDriverApp);
    sub_21C566FEC(v31, v33 + v32, type metadata accessor for DriverKitDriverApp);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C5670BC(v31, type metadata accessor for DriverKitDriverApp);
      sub_21C5670BC(v30, type metadata accessor for DriverKitDriverApp);
      sub_21C5670BC(v33, type metadata accessor for DriverKitDriverApp);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_21C5670BC(v33 + v32, type metadata accessor for DriverKitDriverApp);
      return EnumCaseMultiPayload != 1 || v50 == -1;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C5670BC(v31, type metadata accessor for DriverKitDriverApp);
        sub_21C5670BC(v30, type metadata accessor for DriverKitDriverApp);
        sub_21C5670BC(v33 + v32, type metadata accessor for DriverKitDriverApp);
        v28 = type metadata accessor for SettingsApplicationRecord;
        v29 = v33;
        goto LABEL_6;
      }

      v36 = v48;
      sub_21C567054(v33, v48, type metadata accessor for SettingsApplicationRecord);
      v37 = v33 + v32;
      v38 = v49;
      sub_21C567054(v37, v49, type metadata accessor for SettingsApplicationRecord);
      v39 = *(v47 + 36);
      v40 = *(v36 + v39 + 8);
      v57 = *(v36 + v39);
      v58 = v40;
      v41 = (v38 + v39);
      v43 = *v41;
      v42 = v41[1];
      v55 = v43;
      v56 = v42;
      v44 = sub_21C58226C();
      sub_21C5670BC(v38, type metadata accessor for SettingsApplicationRecord);
      sub_21C5670BC(v36, type metadata accessor for SettingsApplicationRecord);
      sub_21C5670BC(v31, type metadata accessor for DriverKitDriverApp);
      sub_21C5670BC(v30, type metadata accessor for DriverKitDriverApp);
      v45 = v50;
      if (v44)
      {
        v45 = v44;
      }

      return v45 == -1;
    }
  }

  if (v27 != 1)
  {
    sub_21C5670BC(&v20[v25], type metadata accessor for DriverKitDriverSource);
    return 1;
  }

  return v23;
}

unint64_t sub_21C566DEC()
{
  result = qword_27CDDE830;
  if (!qword_27CDDE830)
  {
    type metadata accessor for DriverKitDriver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE830);
  }

  return result;
}

void sub_21C566E6C()
{
  type metadata accessor for DriverKitDriverSource();
  if (v0 <= 0x3F)
  {
    sub_21C566F00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C566F00()
{
  if (!qword_28120D220)
  {
    v0 = sub_21C58225C();
    if (!v1)
    {
      atomic_store(v0, &qword_28120D220);
    }
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

unint64_t sub_21C566F98()
{
  result = qword_28120D230;
  if (!qword_28120D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D230);
  }

  return result;
}

uint64_t sub_21C566FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C567054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C5670BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C56711C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t DriverKitDriverApp.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsApplicationRecord();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DriverKitDriverApp();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C5674C4(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = v9[1];
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_21C5822DC();

    v23 = 0xD00000000000002CLL;
    v24 = 0x800000021C585FA0;
    v22[0] = sub_21C567534(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE848, &qword_21C582F90);
    sub_21C5678A4();
    v12 = sub_21C58204C();
    v14 = v13;

    MEMORY[0x21CF0C040](v12, v14);

    sub_21C567950(v10, v11);
    return v23;
  }

  else
  {
    sub_21C5679A4(v9, v5);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_21C5822DC();

    v23 = 544239681;
    v24 = 0xE400000000000000;
    if (v5[1])
    {
      v16 = *v5;
      v17 = v5[1];
    }

    else
    {
      v17 = 0x800000021C585FD0;
      v16 = 0xD000000000000016;
    }

    MEMORY[0x21CF0C040](v16, v17);

    MEMORY[0x21CF0C040](0xD00000000000001DLL, 0x800000021C585FF0);
    v22[0] = sub_21C567534(*(v5 + *(v2 + 32)), *(v5 + *(v2 + 32) + 8));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE848, &qword_21C582F90);
    sub_21C5678A4();
    v18 = sub_21C58204C();
    v20 = v19;

    MEMORY[0x21CF0C040](v18, v20);

    v15 = v23;
    sub_21C567DA8(v5, type metadata accessor for SettingsApplicationRecord);
  }

  return v15;
}

uint64_t type metadata accessor for DriverKitDriverApp()
{
  result = qword_28120D3F8;
  if (!qword_28120D3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C5674C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriverApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C567534(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    sub_21C56D4A8(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
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
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_21C581DDC();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_21C581DFC();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_21C581DDC();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_21C581DFC();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21C582F80;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_21C58207C();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        sub_21C56D4A8((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_21C5678A4()
{
  result = qword_28120D210;
  if (!qword_28120D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDE848, &qword_21C582F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D210);
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

uint64_t sub_21C567950(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21C5679A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s16DriverManagement0a3KitA3AppO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for DriverKitDriverApp();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v29 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v29 - v19);
  sub_21C5674C4(a1, &v29 - v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21C5679A4(v20, v10);
    sub_21C5674C4(a2, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21C5679A4(v15, v8);
      v25 = sub_21C568214(*&v10[*(v4 + 32)], *&v10[*(v4 + 32) + 8], *&v8[*(v4 + 32)], *&v8[*(v4 + 32) + 8]);
      sub_21C567DA8(v8, type metadata accessor for SettingsApplicationRecord);
      sub_21C567DA8(v10, type metadata accessor for SettingsApplicationRecord);
      return v25 & 1;
    }

    sub_21C567DA8(v15, type metadata accessor for DriverKitDriverApp);
    v26 = type metadata accessor for SettingsApplicationRecord;
    v27 = v10;
    goto LABEL_7;
  }

  v21 = *v20;
  v22 = v20[1];
  sub_21C5674C4(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21C567950(v21, v22);
    v26 = type metadata accessor for DriverKitDriverApp;
    v27 = v18;
LABEL_7:
    sub_21C567DA8(v27, v26);
    v25 = 0;
    return v25 & 1;
  }

  v23 = *v18;
  v24 = v18[1];
  v25 = sub_21C568214(v21, v22, *v18, v24);
  sub_21C567950(v21, v22);
  sub_21C567950(v23, v24);
  return v25 & 1;
}

uint64_t sub_21C567D04()
{
  result = type metadata accessor for SettingsApplicationRecord();
  if (v1 <= 0x3F)
  {
    result = sub_21C567D78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C567D78()
{
  result = qword_28120D4E8;
  if (!qword_28120D4E8)
  {
    result = MEMORY[0x277CC9318];
    atomic_store(MEMORY[0x277CC9318], &qword_28120D4E8);
  }

  return result;
}

uint64_t sub_21C567DA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t ApprovalStateUpdateStatus.description.getter(uint64_t a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_21C567E40()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

BOOL static ApprovalStateUpdateStatus.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(a2 + 32);
      v5 = *(a2 + 40);
      v7 = *(a2 + 48);
      if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
      {
        v9 = *(a1 + 16);
        if ((sub_21C5824AC() & 1) == 0)
        {
          return 0;
        }
      }

      if (v3 >> 60 == 15)
      {
        if (v5 >> 60 != 15 || v4 != v7)
        {
          return 0;
        }
      }

      else if (v5 >> 60 == 15 || (sub_21C568214(v2, v3, v6, v5) & 1) == 0 || v4 != v7)
      {
        return 0;
      }

      return (sub_21C581ECC() & 1) != 0;
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_21C567FA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return _s16DriverManagement26ApprovalStateUpdateRequestC2eeoiySbAC_ACtFZ_0(v2, v3);
  }
}

uint64_t sub_21C567FCC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21C56815C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21C567950(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_21C56D278(v14, a3, a4, &v13);
  v10 = v4;
  sub_21C567950(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_21C56815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21C581DDC();
  v11 = result;
  if (result)
  {
    result = sub_21C581DFC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21C581DEC();
  sub_21C56D278(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_21C568214(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21C568474(a3, a4);
          return sub_21C567FCC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21C568388(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_21C5683D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21C56842C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_21C568444(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_21C568474(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21C5684CC()
{
  v0 = sub_21C57FCBC(&unk_282E305F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA20, &qword_21C584200);
  result = swift_arrayDestroy();
  off_28120D3C0 = v0;
  return result;
}

DriverManagement::ApprovalState_optional __swiftcall ApprovalState.init(fromString:)(Swift::String fromString)
{
  if (qword_28120D3B8 != -1)
  {
    countAndFlagsBits = fromString._countAndFlagsBits;
    object = fromString._object;
    swift_once();
    fromString._countAndFlagsBits = countAndFlagsBits;
    fromString._object = object;
  }

  v1 = off_28120D3C0;
  if (*(off_28120D3C0 + 2))
  {
    v2 = sub_21C56D824(fromString._countAndFlagsBits, fromString._object, MEMORY[0x277D83758], sub_21C56D8B8);
    v4 = v3;

    if (v4)
    {
      return *(v1[7] + v2);
    }
  }

  else
  {
  }

  return 3;
}

_BYTE *sub_21C568624(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_21C58229C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_21C56E89C(&v5, v3, *(a1 + 36), 0, a1);
  }
}

Swift::Bool __swiftcall ApprovalState.canTransitionTo(_:)(DriverManagement::ApprovalState a1)
{
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2 == a1;
}

DriverManagement::ApprovalState_optional __swiftcall ApprovalState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_21C5686D8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21C568730(uint64_t a1)
{
  if (qword_28120D3B8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  MEMORY[0x28223BE20](a1);
  v3 = sub_21C56EB88(v2, v1);
  v4 = sub_21C568624(v3);
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C568808()
{
  v1 = *v0;
  if (qword_28120D3B8 != -1)
  {
    swift_once();
  }

  v2 = MEMORY[0x28223BE20](off_28120D3C0);
  v3 = sub_21C56EB88(v2, sub_21C5721BC);
  v4 = sub_21C568624(v3);
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t ApprovalState.debugDescription.getter()
{
  v6 = sub_21C58249C();
  MEMORY[0x21CF0C040](10272, 0xE200000000000000);
  if (qword_28120D3B8 != -1)
  {
    swift_once();
  }

  v0 = MEMORY[0x28223BE20](off_28120D3C0);
  v1 = sub_21C56EB88(v0, sub_21C5721BC);
  v2 = sub_21C568624(v1);
  v4 = v3;

  if (v4)
  {
    MEMORY[0x21CF0C040](v2, v4);

    MEMORY[0x21CF0C040](41, 0xE100000000000000);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21C568AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_21C5822DC();

    v6 = 0xD000000000000010;
  }

  else
  {
    sub_21C5822DC();

    v6 = 0xD000000000000012;
  }

  MEMORY[0x21CF0C040](a1, a2);
  return v6;
}

uint64_t sub_21C568B9C()
{
  if (*v0)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x7261507473726966;
  }
}

uint64_t sub_21C568BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261507473726966 && a2 == 0xEA00000000007974;
  if (v6 || (sub_21C5824AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21C5824AC();

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

uint64_t sub_21C568CC4(uint64_t a1)
{
  v2 = sub_21C56ED4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C568D00(uint64_t a1)
{
  v2 = sub_21C56ED4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21C568D48@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21C568D78(uint64_t a1)
{
  v2 = sub_21C56EE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C568DB4(uint64_t a1)
{
  v2 = sub_21C56EE48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21C568E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x800000021C586150 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21C5824AC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21C568EA8(uint64_t a1)
{
  v2 = sub_21C56EDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C568EE4(uint64_t a1)
{
  v2 = sub_21C56EDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApprovalDBEntrySource.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v26 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE858, &qword_21C583100);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE860, &qword_21C583108);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE868, &unk_21C583110);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C56ED4C();
  v18 = v26;
  sub_21C58255C();
  if (v18 >> 60 == 15)
  {
    LOBYTE(v27) = 0;
    sub_21C56EE48();
    sub_21C58243C();
    (*(v8 + 8))(v11, v22);
  }

  else
  {
    LOBYTE(v27) = 1;
    sub_21C56EDA0();
    sub_21C58243C();
    v27 = v23;
    v28 = v18;
    sub_21C56EDF4();
    v20 = v25;
    sub_21C58247C();
    (*(v24 + 8))(v7, v20);
  }

  return (*(v13 + 8))(v16, v12);
}

void *sub_21C569250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21C56F128(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t ApprovalDBEntrySource.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    return MEMORY[0x21CF0C480](0);
  }

  MEMORY[0x21CF0C480](1);

  return sub_21C581EBC();
}

uint64_t ApprovalDBEntrySource.hashValue.getter(uint64_t a1, unint64_t a2)
{
  sub_21C58250C();
  if (a2 >> 60 == 15)
  {
    MEMORY[0x21CF0C480](0);
  }

  else
  {
    MEMORY[0x21CF0C480](1);
    sub_21C581EBC();
  }

  return sub_21C58253C();
}

uint64_t sub_21C56938C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21C58250C();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x21CF0C480](0);
  }

  else
  {
    MEMORY[0x21CF0C480](1);
    sub_21C581EBC();
  }

  return sub_21C58253C();
}

uint64_t sub_21C569404()
{
  if (v0[1] >> 60 == 15)
  {
    return MEMORY[0x21CF0C480](0);
  }

  v2 = *v0;
  MEMORY[0x21CF0C480](1);

  return sub_21C581EBC();
}

uint64_t sub_21C569484()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21C58250C();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x21CF0C480](0);
  }

  else
  {
    MEMORY[0x21CF0C480](1);
    sub_21C581EBC();
  }

  return sub_21C58253C();
}

uint64_t static ApprovalDBEntrySource.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    return a4 >> 60 == 15;
  }

  if (a4 >> 60 == 15)
  {
    return 0;
  }

  return sub_21C568214(a1, a2, a3, a4);
}

uint64_t sub_21C569530(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  return sub_21C568214(*a1, v3, *a2, v4);
}

uint64_t ApprovalDBEntrySource.description.getter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0x6D6574737973;
  }

  sub_21C5822DC();

  sub_21C567534(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE848, &qword_21C582F90);
  sub_21C5709BC(&qword_28120D210, &qword_27CDDE848, &qword_21C582F90);
  v5 = sub_21C58204C();
  v7 = v6;

  MEMORY[0x21CF0C040](v5, v7);

  return 0xD000000000000024;
}

uint64_t ApprovalDBEntry.init(driverIdentifier:source:approvalState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

unint64_t sub_21C5696C8()
{
  v1 = 0x656372756F73;
  if (*v0 != 1)
  {
    v1 = 0x6C61766F72707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21C569730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21C56F774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21C569764(uint64_t a1)
{
  v2 = sub_21C56F640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C5697A0(uint64_t a1)
{
  v2 = sub_21C56F640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApprovalDBEntry.description.getter()
{
  v10 = *v0;
  v11 = v10;
  sub_21C56F5E4(&v11, v9);
  MEMORY[0x21CF0C040](544106784, 0xE400000000000000);
  v1 = ApprovalDBEntrySource.description.getter(*(v0 + 2), *(v0 + 3));
  MEMORY[0x21CF0C040](v1);

  MEMORY[0x21CF0C040](8250, 0xE200000000000000);
  v2 = *(v0 + 32);
  if (qword_28120D3B8 != -1)
  {
    swift_once();
  }

  v3 = MEMORY[0x28223BE20](off_28120D3C0);
  v4 = sub_21C56EB88(v3, sub_21C5721BC);
  v5 = sub_21C568624(v4);
  v7 = v6;

  if (v7)
  {
    MEMORY[0x21CF0C040](v5, v7);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ApprovalDBEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE880, &qword_21C583120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C56F640();
  sub_21C58255C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_21C58245C();
  if (!v2)
  {
    v16 = *(v3 + 1);
    v17 = v16;
    v15[23] = 1;
    sub_21C56F694(&v17, v15);
    sub_21C56F6CC();
    sub_21C58247C();
    sub_21C565BD8(v16, *(&v16 + 1));
    LOBYTE(v16) = *(v3 + 32);
    v15[0] = 2;
    sub_21C56F720();
    sub_21C58247C();
  }

  return (*(v6 + 8))(v9, v5);
}

double ApprovalDBEntry.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C56F89C(a1, v6);
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

double sub_21C569B38@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C56F89C(a1, v6);
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

BOOL sub_21C569B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s16DriverManagement15ApprovalDBEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t sub_21C569BE8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE978, &qword_21C584190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C571A54();
  sub_21C58255C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE988, &qword_21C584198);
  sub_21C571AA8(&qword_27CDDE990, sub_21C571B20);
  sub_21C58247C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21C569D8C(uint64_t a1)
{
  v2 = sub_21C571A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C569DC8(uint64_t a1)
{
  v2 = sub_21C571A54();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21C569E04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21C56FBE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ApprovalDB.entries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*ApprovalDB.entries.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_21C569ECC;
}

uint64_t sub_21C569ECC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *v3 = v4;
  }

  else
  {
    v7 = a1[2];

    *v3 = v4;
  }

  return result;
}

char *sub_21C569F40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v5 = *(a5 + 16);
  if (!v5)
  {
LABEL_155:
    v16 = 3;
LABEL_156:
    v72 = *MEMORY[0x277D85DE8];
    return v16;
  }

  v6 = a4;
  v7 = a3;
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 == 0xC000000000000000;
  }

  v11 = !v10;
  v92 = v11;
  v85 = HIDWORD(a3);
  v88 = HIDWORD(a3) - a3;
  v12 = __OFSUB__(HIDWORD(a3), a3);
  v87 = v12;
  __n = BYTE6(a4);
  v94 = a4 >> 62;
  v86 = a3;
  v83 = (a3 >> 32) - a3;
  v84 = a3 >> 32;
  v13 = (a5 + 64);
  v95 = a4 >> 60;
  while (1)
  {
    v15 = *(v13 - 2);
    v14 = *(v13 - 1);
    v16 = *v13;
    v17 = *(v13 - 4) == a1 && *(v13 - 3) == a2;
    if (v17 || (v18 = *(v13 - 3), v19 = *v13, v20 = sub_21C5824AC(), v16 = v19, (v20 & 1) != 0))
    {
      if (v14 >> 60 == 15)
      {
        if (v95 > 0xE)
        {
          goto LABEL_156;
        }

        goto LABEL_13;
      }

      if (v95 < 0xF)
      {
        break;
      }
    }

LABEL_13:
    v13 += 40;
    if (!--v5)
    {
      goto LABEL_155;
    }
  }

  v21 = v14 >> 62;
  if (v14 >> 62 != 3)
  {
    v23 = v94;
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_43;
      }

      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_160;
      }

      if (v94 > 1)
      {
        goto LABEL_44;
      }
    }

    else if (v21)
    {
      LODWORD(v26) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_161;
      }

      v26 = v26;
      if (v94 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v26 = BYTE6(v14);
      if (v94 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_40:
    v30 = __n;
    if (v23)
    {
      v30 = v88;
      if (v87)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_46;
  }

  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v14 == 0xC000000000000000;
  }

  v23 = v94;
  v25 = !v22 || v94 < 3;
  if (((v25 | v92) & 1) == 0)
  {
    goto LABEL_156;
  }

LABEL_43:
  v26 = 0;
  if (v23 <= 1)
  {
    goto LABEL_40;
  }

LABEL_44:
  if (v23 != 2)
  {
    if (!v26)
    {
      goto LABEL_156;
    }

    goto LABEL_13;
  }

  v32 = *(v7 + 16);
  v31 = *(v7 + 24);
  v29 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v29)
  {
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
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
  }

LABEL_46:
  if (v26 != v30)
  {
    goto LABEL_13;
  }

  if (v26 < 1)
  {
    goto LABEL_156;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      memset(__s1, 0, 14);
      if (!v94)
      {
LABEL_75:
        __s2 = v7;
        v97 = BYTE2(v7);
        v98 = BYTE3(v7);
        v99 = v85;
        v100 = BYTE5(v7);
        v101 = BYTE6(v7);
        v102 = HIBYTE(v7);
        v103 = v6;
        v104 = BYTE2(v6);
        v105 = BYTE3(v6);
        v106 = BYTE4(v6);
        v107 = BYTE5(v6);
        v48 = v16;
        v49 = memcmp(__s1, &__s2, __n);
        v16 = v48;
        if (!v49)
        {
          goto LABEL_156;
        }

        goto LABEL_13;
      }

      v89 = v16;
      if (v94 != 2)
      {
        if (v84 < v86)
        {
          goto LABEL_165;
        }

        sub_21C57029C(v15, v14);
        v57 = sub_21C581DDC();
        if (!v57)
        {
          goto LABEL_188;
        }

        v58 = v57;
        v59 = sub_21C581DFC();
        if (__OFSUB__(v86, v59))
        {
          goto LABEL_170;
        }

        v36 = (v86 - v59 + v58);
        result = sub_21C581DEC();
        if (!v36)
        {
          goto LABEL_189;
        }

LABEL_109:
        if (result >= v83)
        {
          v60 = v83;
        }

        else
        {
          v60 = result;
        }

        result = __s1;
        goto LABEL_151;
      }

      v75 = *(v7 + 24);
      v81 = *(v7 + 16);

      sub_21C57029C(v15, v14);
      v45 = sub_21C581DDC();
      if (v45)
      {
        v46 = sub_21C581DFC();
        v47 = v81;
        if (__OFSUB__(v81, v46))
        {
          goto LABEL_176;
        }

        v45 = &v81[v45 - v46];
      }

      else
      {
        v47 = v81;
      }

      v66 = v75 - v47;
      if (__OFSUB__(v75, v47))
      {
        goto LABEL_169;
      }

      result = sub_21C581DEC();
      if (!v45)
      {
        goto LABEL_190;
      }

LABEL_130:
      if (result >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = result;
      }

      v65 = memcmp(__s1, v45, v67);

      sub_21C565BD8(v15, v14);
      v6 = a4;
      goto LABEL_152;
    }

    v89 = v16;
    v38 = *(v15 + 16);

    sub_21C57029C(v15, v14);
    v39 = sub_21C581DDC();
    if (v39)
    {
      v40 = v39;
      v41 = sub_21C581DFC();
      if (__OFSUB__(v38, v41))
      {
        goto LABEL_163;
      }

      v79 = (v38 - v41 + v40);
    }

    else
    {
      v79 = 0;
    }

    v7 = a3;
    v6 = a4;
    sub_21C581DEC();
    if (v94 != 2)
    {
      if (v94 == 1)
      {
        if (v84 < v86)
        {
          goto LABEL_168;
        }

        v36 = sub_21C581DDC();
        if (v36)
        {
          v50 = sub_21C581DFC();
          if (__OFSUB__(v86, v50))
          {
            goto LABEL_179;
          }

          v36 += v86 - v50;
        }

        v51 = sub_21C581DEC();
        v52 = v83;
        if (v51 < v83)
        {
          v52 = v51;
        }

        result = v79;
        if (!v79)
        {
          goto LABEL_193;
        }

        if (!v36)
        {
          goto LABEL_192;
        }

LABEL_100:
        if (result == v36)
        {
          goto LABEL_157;
        }

LABEL_150:
        v60 = v52;
LABEL_151:
        v65 = memcmp(result, v36, v60);

        sub_21C565BD8(v15, v14);
LABEL_152:
        v7 = a3;
LABEL_153:
        v16 = v89;
        if (!v65)
        {
          goto LABEL_156;
        }

        goto LABEL_13;
      }

      result = v79;
      LODWORD(__s1[0]) = a3;
      BYTE4(__s1[0]) = v85;
      *(__s1 + 5) = *(&a3 + 5);
      HIBYTE(__s1[0]) = HIBYTE(a3);
      LODWORD(__s1[1]) = a4;
      WORD2(__s1[1]) = WORD2(a4);
      if (!v79)
      {
        goto LABEL_191;
      }

LABEL_122:
      v65 = memcmp(result, __s1, __n);

      sub_21C565BD8(v15, v14);
      goto LABEL_153;
    }

    v73 = *(a3 + 24);
    v77 = *(a3 + 16);
    v36 = sub_21C581DDC();
    if (v36)
    {
      v61 = sub_21C581DFC();
      v62 = v77;
      if (__OFSUB__(v77, v61))
      {
        goto LABEL_177;
      }

      v36 += v77 - v61;
    }

    else
    {
      v62 = v77;
    }

    v68 = v73 - v62;
    if (__OFSUB__(v73, v62))
    {
      goto LABEL_172;
    }

    v69 = sub_21C581DEC();
    if (v69 >= v68)
    {
      v52 = v68;
    }

    else
    {
      v52 = v69;
    }

    result = v79;
    if (!v79)
    {
      goto LABEL_195;
    }

    if (!v36)
    {
      goto LABEL_194;
    }

LABEL_149:
    v6 = a4;
    if (result == v36)
    {
LABEL_157:

      sub_21C565BD8(v15, v14);
      v16 = v89;
      goto LABEL_156;
    }

    goto LABEL_150;
  }

  if (!v21)
  {
    __s1[0] = v15;
    LOWORD(__s1[1]) = v14;
    BYTE2(__s1[1]) = BYTE2(v14);
    BYTE3(__s1[1]) = BYTE3(v14);
    BYTE4(__s1[1]) = BYTE4(v14);
    BYTE5(__s1[1]) = BYTE5(v14);
    if (!v94)
    {
      goto LABEL_75;
    }

    v89 = v16;
    if (v94 == 1)
    {
      if (v84 < v86)
      {
        goto LABEL_166;
      }

      sub_21C57029C(v15, v14);
      v33 = sub_21C581DDC();
      if (!v33)
      {
        goto LABEL_187;
      }

      v34 = v33;
      v35 = sub_21C581DFC();
      if (__OFSUB__(v86, v35))
      {
        goto LABEL_171;
      }

      v36 = (v86 - v35 + v34);
      result = sub_21C581DEC();
      if (!v36)
      {
        goto LABEL_186;
      }

      goto LABEL_109;
    }

    v76 = *(v7 + 24);
    v82 = *(v7 + 16);

    sub_21C57029C(v15, v14);
    v45 = sub_21C581DDC();
    if (v45)
    {
      v55 = sub_21C581DFC();
      v56 = v82;
      if (__OFSUB__(v82, v55))
      {
        goto LABEL_175;
      }

      v45 = &v82[v45 - v55];
    }

    else
    {
      v56 = v82;
    }

    v66 = v76 - v56;
    if (__OFSUB__(v76, v56))
    {
      goto LABEL_167;
    }

    result = sub_21C581DEC();
    if (!v45)
    {
      goto LABEL_185;
    }

    goto LABEL_130;
  }

  v89 = v16;
  if (v15 > v15 >> 32)
  {
    goto LABEL_162;
  }

  sub_21C57029C(v15, v14);
  v42 = sub_21C581DDC();
  if (v42)
  {
    v43 = v42;
    v44 = sub_21C581DFC();
    if (__OFSUB__(v15, v44))
    {
      goto LABEL_164;
    }

    v80 = (v15 - v44 + v43);
  }

  else
  {
    v80 = 0;
  }

  v6 = a4;
  sub_21C581DEC();
  v7 = a3;
  if (v94 == 2)
  {
    v74 = *(a3 + 24);
    v78 = *(a3 + 16);
    v36 = sub_21C581DDC();
    if (v36)
    {
      v63 = sub_21C581DFC();
      v64 = v78;
      if (__OFSUB__(v78, v63))
      {
        goto LABEL_178;
      }

      v36 += v78 - v63;
    }

    else
    {
      v64 = v78;
    }

    v70 = v74 - v64;
    if (__OFSUB__(v74, v64))
    {
      goto LABEL_174;
    }

    v71 = sub_21C581DEC();
    if (v71 >= v70)
    {
      v52 = v70;
    }

    else
    {
      v52 = v71;
    }

    result = v80;
    if (!v80)
    {
      goto LABEL_184;
    }

    if (!v36)
    {
      goto LABEL_183;
    }

    goto LABEL_149;
  }

  if (v94 != 1)
  {
    result = v80;
    LODWORD(__s1[0]) = a3;
    BYTE4(__s1[0]) = v85;
    *(__s1 + 5) = *(&a3 + 5);
    HIBYTE(__s1[0]) = HIBYTE(a3);
    LODWORD(__s1[1]) = a4;
    WORD2(__s1[1]) = WORD2(a4);
    if (!v80)
    {
      goto LABEL_196;
    }

    goto LABEL_122;
  }

  if (v84 < v86)
  {
    goto LABEL_173;
  }

  v36 = sub_21C581DDC();
  if (v36)
  {
    v53 = sub_21C581DFC();
    if (__OFSUB__(v86, v53))
    {
      goto LABEL_180;
    }

    v36 += v86 - v53;
  }

  v54 = sub_21C581DEC();
  v52 = v83;
  if (v54 < v83)
  {
    v52 = v54;
  }

  result = v80;
  if (!v80)
  {
    goto LABEL_182;
  }

  if (v36)
  {
    goto LABEL_100;
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  sub_21C581DEC();
  __break(1u);
LABEL_188:
  result = sub_21C581DEC();
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

uint64_t sub_21C56A900()
{
  v1 = *v0;
  sub_21C58250C();
  MEMORY[0x21CF0C480](v1);
  return sub_21C58253C();
}

uint64_t sub_21C56A948()
{
  v1 = *v0;
  sub_21C58250C();
  MEMORY[0x21CF0C480](v1);
  return sub_21C58253C();
}

uint64_t sub_21C56A98C()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 12406;
  }

  *v0;
  return result;
}

uint64_t sub_21C56A9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12406 && a2 == 0xE200000000000000;
  if (v5 || (sub_21C5824AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21C5824AC();

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

uint64_t sub_21C56AA90(uint64_t a1)
{
  v2 = sub_21C56FB40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C56AACC(uint64_t a1)
{
  v2 = sub_21C56FB40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApprovalDB.encode(to:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8A0, &qword_21C583128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C56FB40();
  sub_21C58255C();
  v13 = a2;
  v12[15] = 0;
  sub_21C56FB94();
  sub_21C58247C();
  if (!v2)
  {
    v12[14] = 1;
    sub_21C58246C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21C56ACC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21C56FD9C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21C56AD28()
{
  sub_21C58250C();
  MEMORY[0x21CF0C480](0);
  return sub_21C58253C();
}

uint64_t sub_21C56AD6C()
{
  sub_21C58250C();
  MEMORY[0x21CF0C480](0);
  return sub_21C58253C();
}

uint64_t sub_21C56ADAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21C5824AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21C56AE34(uint64_t a1)
{
  v2 = sub_21C56FF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C56AE70(uint64_t a1)
{
  v2 = sub_21C56FF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApprovalSettingsState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8B8, &qword_21C583130);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C56FF60();
  sub_21C58255C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8C0, &qword_21C583138);
  sub_21C571D7C(&qword_27CDDE8C8, sub_21C56FFB4);
  sub_21C58247C();
  return (*(v5 + 8))(v8, v4);
}

void *sub_21C56B050@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21C570008(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21C56B09C(uint64_t a1, uint64_t a2)
{
  v140 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_170:
    result = 1;
LABEL_173:
    v93 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_172:
    result = 0;
    goto LABEL_173;
  }

  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
    goto LABEL_13;
  }

  while (1)
  {
    v12 = v3;
    do
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
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
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
      }

      if (v3 >= v8)
      {
        goto LABEL_170;
      }

      v13 = *(v4 + 8 * v3);
      ++v12;
    }

    while (!v13);
    v10 = __clz(__rbit64(v13));
    v11 = (v13 - 1) & v13;
LABEL_13:
    v125 = a1;
    v14 = *(a1 + 48) + 72 * (v10 | (v3 << 6));
    v135 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v139 = *(v14 + 64);
    v137 = v16;
    v138 = v15;
    v136 = v17;
    v18 = *(a2 + 40);
    sub_21C58250C();
    sub_21C571D14(&v135, &__s2);
    ApprovalSettingsStateEntry.hash(into:)();
    v19 = sub_21C58253C();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_171:
      sub_21C571D4C(&v135);
      goto LABEL_172;
    }

    v123 = v11;
    v124 = v8;
    v22 = ~v20;
    v23 = v135;
    while (1)
    {
      v24 = *(a2 + 48) + 72 * v21;
      v130 = *v24;
      v26 = *(v24 + 32);
      v25 = *(v24 + 48);
      v27 = *(v24 + 16);
      v134 = *(v24 + 64);
      v133 = v25;
      v131 = v27;
      v132 = v26;
      if (v130 != v23 && (sub_21C5824AC() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (*(&v131 + 1))
      {
        if (!*(&v136 + 1) || v131 != v136 && (sub_21C5824AC() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v136 + 1))
      {
        goto LABEL_16;
      }

      if (*(&v132 + 1))
      {
        if (!*(&v137 + 1) || v132 != v137 && (sub_21C5824AC() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v137 + 1))
      {
        goto LABEL_16;
      }

      v28 = *(&v138 + 1);
      if (*(&v133 + 1) >> 60 == 15)
      {
        if (*(&v138 + 1) >> 60 == 15)
        {
          goto LABEL_31;
        }

        goto LABEL_16;
      }

      if (*(&v138 + 1) >> 60 == 15)
      {
        goto LABEL_16;
      }

      v29 = *(&v133 + 1) >> 62;
      v30 = *(&v138 + 1) >> 62;
      if (*(&v133 + 1) >> 62 == 3)
      {
        v31 = 0;
        if (v133 == __PAIR128__(0xC000000000000000, 0) && *(&v138 + 1) >> 62 == 3)
        {
          v31 = 0;
          if (v138 == __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

      if (v29 <= 1)
      {
        if (!v29)
        {
          v31 = BYTE14(v133);
          if (v30 > 1)
          {
            break;
          }

          goto LABEL_55;
        }

        LODWORD(v31) = DWORD1(v133) - v133;
        if (__OFSUB__(DWORD1(v133), v133))
        {
          goto LABEL_177;
        }

        v31 = v31;
LABEL_54:
        if (v30 > 1)
        {
          break;
        }

        goto LABEL_55;
      }

      if (v29 == 2)
      {
        v37 = *(v133 + 16);
        v36 = *(v133 + 24);
        v34 = __OFSUB__(v36, v37);
        v31 = v36 - v37;
        if (v34)
        {
          goto LABEL_178;
        }

        goto LABEL_54;
      }

      v31 = 0;
      if (v30 > 1)
      {
        break;
      }

LABEL_55:
      if (!v30)
      {
        v35 = BYTE14(v138);
        goto LABEL_57;
      }

      if (__OFSUB__(DWORD1(v138), v138))
      {
        goto LABEL_175;
      }

      if (v31 == DWORD1(v138) - v138)
      {
        goto LABEL_61;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_171;
      }
    }

    if (v30 != 2)
    {
      if (v31)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    v33 = *(v138 + 16);
    v32 = *(v138 + 24);
    v34 = __OFSUB__(v32, v33);
    v35 = v32 - v33;
    if (v34)
    {
      goto LABEL_176;
    }

LABEL_57:
    if (v31 != v35)
    {
      goto LABEL_16;
    }

LABEL_61:
    if (v31 >= 1)
    {
      break;
    }

LABEL_31:
    if (v134 != v139)
    {
      goto LABEL_16;
    }

    sub_21C571D4C(&v135);
    a1 = v125;
    v7 = v123;
    v8 = v124;
    if (v123)
    {
      goto LABEL_7;
    }
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      __s1[0] = v133;
      LODWORD(__s1[1]) = DWORD2(v133);
      WORD2(__s1[1]) = WORD6(v133);
      if (v30)
      {
        if (v30 == 1)
        {
          v100 = (v138 >> 32) - v138;
          v111 = v138;
          if (v138 >> 32 < v138)
          {
            goto LABEL_183;
          }

          sub_21C571D14(&v130, &__s2);
          v38 = sub_21C581DDC();
          if (!v38)
          {
            goto LABEL_213;
          }

          v39 = v38;
          v40 = sub_21C581DFC();
          if (__OFSUB__(v111, v40))
          {
            goto LABEL_187;
          }

          v41 = (v111 - v40 + v39);
          v42 = sub_21C581DEC();
          if (!v41)
          {
            goto LABEL_212;
          }

LABEL_109:
          if (v42 >= v100)
          {
            v68 = v100;
          }

          else
          {
            v68 = v42;
          }

          v69 = __s1;
LABEL_165:
          p_s2 = v41;
LABEL_166:
          v91 = memcmp(v69, p_s2, v68);
          sub_21C571D4C(&v130);
          if (v91)
          {
            goto LABEL_16;
          }

          goto LABEL_31;
        }

        v106 = *(v138 + 24);
        v117 = *(v138 + 16);
        sub_21C571D14(&v130, &__s2);
        v60 = sub_21C581DDC();
        if (v60)
        {
          v61 = v60;
          v62 = sub_21C581DFC();
          v63 = v117;
          if (__OFSUB__(v117, v62))
          {
            goto LABEL_192;
          }

          v64 = (v117 - v62 + v61);
        }

        else
        {
          v64 = 0;
          v63 = v117;
        }

        v122 = v64;
        v81 = v106 - v63;
        if (__OFSUB__(v106, v63))
        {
          goto LABEL_185;
        }

        v82 = sub_21C581DEC();
        p_s2 = v122;
        if (!v122)
        {
          goto LABEL_211;
        }

LABEL_130:
        if (v82 >= v81)
        {
          v68 = v81;
        }

        else
        {
          v68 = v82;
        }

        v69 = __s1;
        goto LABEL_166;
      }

LABEL_86:
      __s2 = v138;
      v128 = DWORD2(v138);
      v129 = WORD6(v138);
      if (memcmp(__s1, &__s2, BYTE14(v138)))
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    v102 = *(&v138 + 1) >> 62;
    v113 = v138;
    v98 = v133;
    if (v133 > v133 >> 32)
    {
      goto LABEL_179;
    }

    sub_21C571D14(&v130, &__s2);
    v45 = sub_21C581DDC();
    if (v45)
    {
      v95 = v45;
      v46 = sub_21C581DFC();
      if (__OFSUB__(v98, v46))
      {
        goto LABEL_181;
      }

      v99 = (v98 + v95 - v46);
    }

    else
    {
      v99 = 0;
    }

    sub_21C581DEC();
    if (v102 != 2)
    {
      v56 = v113;
      if (v102 == 1)
      {
        v57 = v113;
        v116 = (v113 >> 32) - v113;
        if (v56 >> 32 < v56)
        {
          goto LABEL_190;
        }

        v58 = sub_21C581DDC();
        if (v58)
        {
          v105 = v58;
          v59 = sub_21C581DFC();
          if (__OFSUB__(v57, v59))
          {
            goto LABEL_197;
          }

          v41 = (v57 - v59 + v105);
        }

        else
        {
          v41 = 0;
        }

        v90 = sub_21C581DEC();
        v87 = v116;
        if (v90 < v116)
        {
          v87 = v90;
        }

        v69 = v99;
        if (!v99)
        {
          goto LABEL_207;
        }

        if (!v41)
        {
          goto LABEL_208;
        }

        goto LABEL_162;
      }

      v69 = v99;
      __s2 = v113;
      LOWORD(v128) = v28;
      BYTE2(v128) = BYTE2(v28);
      HIBYTE(v128) = BYTE3(v28);
      LOBYTE(v129) = BYTE4(v28);
      HIBYTE(v129) = BYTE5(v28);
      if (!v99)
      {
        goto LABEL_206;
      }

LABEL_122:
      v68 = BYTE6(v28);
      p_s2 = &__s2;
      goto LABEL_166;
    }

    v108 = *(v113 + 16);
    v120 = *(v113 + 24);
    v75 = sub_21C581DDC();
    if (v75)
    {
      v76 = v75;
      v77 = sub_21C581DFC();
      v78 = v108;
      if (__OFSUB__(v108, v77))
      {
        goto LABEL_195;
      }

      v79 = (v108 - v77 + v76);
    }

    else
    {
      v79 = 0;
      v78 = v108;
    }

    v110 = v79;
    v88 = v120 - v78;
    if (__OFSUB__(v120, v78))
    {
      goto LABEL_191;
    }

    v89 = sub_21C581DEC();
    if (v89 >= v88)
    {
      v85 = v88;
    }

    else
    {
      v85 = v89;
    }

    v69 = v99;
    if (!v99)
    {
      goto LABEL_210;
    }

    p_s2 = v110;
    if (!v110)
    {
      goto LABEL_209;
    }

LABEL_155:
    if (v69 != p_s2)
    {
      v68 = v85;
      goto LABEL_166;
    }

    goto LABEL_163;
  }

  if (v29 == 2)
  {
    v101 = *(&v138 + 1) >> 62;
    v112 = v138;
    v96 = *(v133 + 16);
    sub_21C571D14(&v130, &__s2);
    v43 = sub_21C581DDC();
    if (v43)
    {
      v94 = v43;
      v44 = sub_21C581DFC();
      if (__OFSUB__(v96, v44))
      {
        goto LABEL_180;
      }

      v97 = &v96[v94 - v44];
    }

    else
    {
      v97 = 0;
    }

    sub_21C581DEC();
    if (v101 == 2)
    {
      v107 = *(v112 + 16);
      v119 = *(v112 + 24);
      v70 = sub_21C581DDC();
      if (v70)
      {
        v71 = v70;
        v72 = sub_21C581DFC();
        v73 = v107;
        if (__OFSUB__(v107, v72))
        {
          goto LABEL_194;
        }

        v74 = (v107 - v72 + v71);
      }

      else
      {
        v74 = 0;
        v73 = v107;
      }

      v109 = v74;
      v83 = v119 - v73;
      if (__OFSUB__(v119, v73))
      {
        goto LABEL_189;
      }

      v84 = sub_21C581DEC();
      if (v84 >= v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = v84;
      }

      v69 = v97;
      if (!v97)
      {
        goto LABEL_204;
      }

      p_s2 = v109;
      if (!v109)
      {
        goto LABEL_205;
      }

      goto LABEL_155;
    }

    v52 = v112;
    if (v101 != 1)
    {
      v69 = v97;
      __s2 = v112;
      LOWORD(v128) = v28;
      BYTE2(v128) = BYTE2(v28);
      HIBYTE(v128) = BYTE3(v28);
      LOBYTE(v129) = BYTE4(v28);
      HIBYTE(v129) = BYTE5(v28);
      if (!v97)
      {
        goto LABEL_201;
      }

      goto LABEL_122;
    }

    v53 = v112;
    v115 = (v112 >> 32) - v112;
    if (v52 >> 32 < v52)
    {
      goto LABEL_184;
    }

    v54 = sub_21C581DDC();
    if (v54)
    {
      v104 = v54;
      v55 = sub_21C581DFC();
      if (__OFSUB__(v53, v55))
      {
        goto LABEL_196;
      }

      v41 = (v53 - v55 + v104);
    }

    else
    {
      v41 = 0;
    }

    v86 = sub_21C581DEC();
    v87 = v115;
    if (v86 < v115)
    {
      v87 = v86;
    }

    v69 = v97;
    if (!v97)
    {
      goto LABEL_202;
    }

    if (!v41)
    {
      goto LABEL_203;
    }

LABEL_162:
    if (v69 != v41)
    {
      v68 = v87;
      goto LABEL_165;
    }

LABEL_163:
    sub_21C571D4C(&v130);
    goto LABEL_31;
  }

  memset(__s1, 0, 14);
  if (!v30)
  {
    goto LABEL_86;
  }

  if (v30 == 2)
  {
    v103 = *(v138 + 24);
    v114 = *(v138 + 16);
    sub_21C571D14(&v130, &__s2);
    v47 = sub_21C581DDC();
    if (v47)
    {
      v48 = v47;
      v49 = sub_21C581DFC();
      v50 = v114;
      if (__OFSUB__(v114, v49))
      {
        goto LABEL_193;
      }

      v51 = (v114 - v49 + v48);
    }

    else
    {
      v51 = 0;
      v50 = v114;
    }

    v121 = v51;
    v81 = v103 - v50;
    if (__OFSUB__(v103, v50))
    {
      goto LABEL_186;
    }

    v82 = sub_21C581DEC();
    p_s2 = v121;
    if (!v121)
    {
      goto LABEL_200;
    }

    goto LABEL_130;
  }

  v100 = (v138 >> 32) - v138;
  v118 = v138;
  if (v138 >> 32 < v138)
  {
    goto LABEL_182;
  }

  sub_21C571D14(&v130, &__s2);
  v65 = sub_21C581DDC();
  if (v65)
  {
    v66 = v65;
    v67 = sub_21C581DFC();
    if (__OFSUB__(v118, v67))
    {
      goto LABEL_188;
    }

    v41 = (v118 - v67 + v66);
    v42 = sub_21C581DEC();
    if (!v41)
    {
      goto LABEL_199;
    }

    goto LABEL_109;
  }

  sub_21C581DEC();
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  result = sub_21C581DEC();
  __break(1u);
  return result;
}

unint64_t ApprovalSettingsState.debugDescription.getter(uint64_t a1)
{
  sub_21C5822DC();

  *&v36 = 0xD000000000000017;
  *(&v36 + 1) = 0x800000021C586080;
  *&v32 = *(a1 + 16);

  v2 = sub_21C58249C();
  MEMORY[0x21CF0C040](v2);

  MEMORY[0x21CF0C040](0x73656972746E6520, 0xEA00000000000A3ALL);
  v3 = 0xD000000000000017;
  v48 = v36;
  v4 = -1 << *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = ~v4;
  v7 = -v4;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v42 = a1;
  v43 = a1 + 56;
  v44 = v6;
  v45 = 0;
  v46 = v8 & v5;
  v47 = 0;
  sub_21C56C018(&v32);
  *&v37[41] = *&v35[9];
  *&v37[16] = v34;
  *&v37[32] = *v35;
  v36 = v32;
  *v37 = v33;
  v9 = *(&v32 + 1);
  v10 = v33;
  v41 = v35[24];
  v39 = *&v37[24];
  v40 = *&v37[40];
  v38 = *&v37[8];
  if (v33)
  {
    do
    {
      v49 = v9;
      v50 = v10;
      v51 = v38;
      v52 = v39;
      v53 = v40;
      v54 = v41;
      *&v32 = 0x207865646E492020;
      *(&v32 + 1) = 0xE800000000000000;
      v14 = sub_21C58249C();
      MEMORY[0x21CF0C040](v14);

      MEMORY[0x21CF0C040](2618, 0xE200000000000000);
      MEMORY[0x21CF0C040](v32, *(&v32 + 1));

      v15 = ApprovalSettingsStateEntry.debugDescription.getter();
      v18 = sub_21C56C378(0x7FFFFFFFFFFFFFFFuLL, 1, v15, v16, v17);
      v19 = *(v18 + 16);
      if (v19)
      {
        v31 = MEMORY[0x277D84F90];
        sub_21C56D4A8(0, v19, 0);
        v20 = v31;
        v21 = (v18 + 56);
        do
        {
          v22 = *(v21 - 3);
          v23 = *(v21 - 2);
          v24 = *(v21 - 1);
          v25 = *v21;
          *&v32 = 538976288;
          *(&v32 + 1) = 0xE400000000000000;

          v26 = MEMORY[0x21CF0C010](v22, v23, v24, v25);
          MEMORY[0x21CF0C040](v26);

          v27 = v32;
          v29 = *(v31 + 16);
          v28 = *(v31 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_21C56D4A8((v28 > 1), v29 + 1, 1);
          }

          *(v31 + 16) = v29 + 1;
          *(v31 + 16 * v29 + 32) = v27;
          v21 += 4;
          --v19;
        }

        while (v19);
      }

      else
      {

        v20 = MEMORY[0x277D84F90];
      }

      *&v32 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE848, &qword_21C582F90);
      sub_21C5709BC(&qword_28120D210, &qword_27CDDE848, &qword_21C582F90);
      v11 = sub_21C58204C();
      v13 = v12;

      *&v32 = v11;
      *(&v32 + 1) = v13;

      MEMORY[0x21CF0C040](10, 0xE100000000000000);

      MEMORY[0x21CF0C040](v32, *(&v32 + 1));

      sub_21C5701C4(&v36);
      sub_21C56C018(&v32);
      v36 = v32;
      *v37 = v33;
      *&v37[16] = v34;
      *&v37[32] = *v35;
      *&v37[41] = *&v35[9];
      v9 = *(&v32 + 1);
      v10 = v33;
      v41 = v35[24];
      v39 = *&v37[24];
      v40 = *&v37[40];
      v38 = *&v37[8];
    }

    while (v33);
    v3 = v48;
  }

  sub_21C5701BC();
  return v3;
}

uint64_t sub_21C56C018@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  if (!v3)
  {
    v5 = (v1[2] + 64) >> 6;
    if (v5 <= v2 + 1)
    {
      v6 = v2 + 1;
    }

    else
    {
      v6 = (v1[2] + 64) >> 6;
    }

    v7 = v6 - 1;
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        v1[3] = v7;
        v1[4] = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
        *(a1 + 57) = 0u;
        return result;
      }

      v3 = *(v1[1] + 8 * v4);
      ++v2;
      if (v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = v1[3];
LABEL_10:
  v8 = *(*v1 + 48) + 72 * (__clz(__rbit64(v3)) | (v4 << 6));
  v17 = *v8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  v21 = *(v8 + 64);
  v19 = v10;
  v20 = v11;
  v18 = v9;
  v1[3] = v4;
  v1[4] = (v3 - 1) & v3;
  v12 = v1[5];
  if (__OFADD__(v12, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[5] = v12 + 1;
  *a1 = v12;
  v13 = v17;
  *(a1 + 24) = v18;
  v14 = v20;
  *(a1 + 40) = v19;
  *(a1 + 56) = v14;
  *(a1 + 72) = v21;
  *(a1 + 8) = v13;
  return sub_21C571D14(&v17, v16);
}

uint64_t ApprovalSettingsStateEntry.debugDescription.getter()
{
  v1 = v0;
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_21C5822DC();
  v13 = v15;
  MEMORY[0x21CF0C040](0xD000000000000013, 0x800000021C5860A0);
  MEMORY[0x21CF0C040](*v1, v1[1]);
  MEMORY[0x21CF0C040](0x79616C707369440ALL, 0xEF203A656D614E20);
  v14 = *(v0 + 16);
  v15 = v14;
  sub_21C57022C(&v15, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8E0, &qword_21C583148);
  v2 = sub_21C58208C();
  MEMORY[0x21CF0C040](v2);

  MEMORY[0x21CF0C040](0x542065676173550ALL, 0xED0000203A747865);
  v14 = *(v0 + 32);
  v12 = *(v0 + 32);
  sub_21C57022C(&v14, v11);
  v3 = sub_21C58208C();
  MEMORY[0x21CF0C040](v3);

  MEMORY[0x21CF0C040](0x3A656372756F530ALL, 0xE900000000000020);
  v4 = ApprovalDBEntrySource.description.getter(v1[6], v1[7]);
  MEMORY[0x21CF0C040](v4);

  MEMORY[0x21CF0C040](0xD000000000000011, 0x800000021C5860C0);
  LOBYTE(v1) = *(v0 + 64);
  if (qword_28120D3B8 != -1)
  {
    swift_once();
  }

  v5 = MEMORY[0x28223BE20](off_28120D3C0);
  v6 = sub_21C56EB88(v5, sub_21C5721BC);
  v7 = sub_21C568624(v6);
  v9 = v8;

  if (v9)
  {
    MEMORY[0x21CF0C040](v7, v9);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21C56C378@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_21C579F7C((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21C58212C();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_21C579F7C(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = MEMORY[0x277D84F90];
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = sub_21C58211C();
        v9 = v19;
        result = sub_21C56E4A0(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = sub_21C5820CC();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = sub_21C5820CC();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = sub_21C58212C();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_21C579F7C(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_21C579F7C((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_21C5820CC();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_21C58212C();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_21C579F7C(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_21C579F7C((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t ApprovalSettingsStateEntry.driverIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ApprovalSettingsStateEntry.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ApprovalSettingsStateEntry.usageText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ApprovalSettingsStateEntry.source.getter()
{
  v1 = *(v0 + 48);
  sub_21C57029C(v1, *(v0 + 56));
  return v1;
}

unint64_t sub_21C56C834()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x7865546567617375;
  v4 = 0x656372756F73;
  if (v1 != 3)
  {
    v4 = 0x6C61766F72707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_21C56C8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21C570304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21C56C91C(uint64_t a1)
{
  v2 = sub_21C5702B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21C56C958(uint64_t a1)
{
  v2 = sub_21C5702B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApprovalSettingsStateEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8E8, &qword_21C583150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C5702B0();
  sub_21C58255C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_21C58245C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 1;
    sub_21C58244C();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v20) = 2;
    sub_21C58244C();
    v20 = *(v3 + 3);
    v21 = v20;
    v19[23] = 3;
    sub_21C56F694(&v21, v19);
    sub_21C56F6CC();
    sub_21C58247C();
    sub_21C565BD8(v20, *(&v20 + 1));
    LOBYTE(v20) = *(v3 + 64);
    v19[0] = 4;
    sub_21C56F720();
    sub_21C58247C();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 ApprovalSettingsStateEntry.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C5704D0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_21C56CC44@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C5704D0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_21C56CCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s16DriverManagement26ApprovalSettingsStateEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

uint64_t ApprovalSettingsStateEntry.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21C5820BC();
  if (v0[3])
  {
    v3 = v0[2];
    sub_21C58252C();
    sub_21C5820BC();
    if (v0[5])
    {
LABEL_3:
      v4 = v0[4];
      sub_21C58252C();
      sub_21C5820BC();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21C58252C();
    if (v0[5])
    {
      goto LABEL_3;
    }
  }

  sub_21C58252C();
LABEL_6:
  if (v0[7] >> 60 == 15)
  {
    MEMORY[0x21CF0C480](0);
  }

  else
  {
    v5 = v0[6];
    MEMORY[0x21CF0C480](1);
    sub_21C581EBC();
  }

  return MEMORY[0x21CF0C480](*(v0 + 64));
}

uint64_t ApprovalSettingsStateEntry.hashValue.getter()
{
  sub_21C58250C();
  ApprovalSettingsStateEntry.hash(into:)();
  return sub_21C58253C();
}

uint64_t sub_21C56CE28()
{
  sub_21C58250C();
  ApprovalSettingsStateEntry.hash(into:)();
  return sub_21C58253C();
}

uint64_t sub_21C56CE6C()
{
  sub_21C58250C();
  ApprovalSettingsStateEntry.hash(into:)();
  return sub_21C58253C();
}

uint64_t ApprovalStateUpdateRequest.__allocating_init(entry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  sub_21C581EDC();
  return v9;
}

uint64_t ApprovalStateUpdateRequest.init(entry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21C581EEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v12;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  sub_21C581EDC();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC16DriverManagement26ApprovalStateUpdateRequest_timestamp, v11, v7);
  return v3;
}

char *ApprovalStateUpdateRequest.deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);

  sub_21C565BD8(v2, v3);
  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC16DriverManagement26ApprovalStateUpdateRequest_timestamp;
  v6 = sub_21C581EEC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t ApprovalStateUpdateRequest.__deallocating_deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);

  sub_21C565BD8(v2, v3);
  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC16DriverManagement26ApprovalStateUpdateRequest_timestamp;
  v6 = sub_21C581EEC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

unint64_t ApprovalStateUpdateRequest.description.getter()
{
  sub_21C5822DC();

  sub_21C581EEC();
  sub_21C5708C8();
  v1 = sub_21C58249C();
  MEMORY[0x21CF0C040](v1);

  MEMORY[0x21CF0C040](8250, 0xE200000000000000);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v2 = ApprovalDBEntry.description.getter();
  MEMORY[0x21CF0C040](v2);

  return 0xD000000000000014;
}

uint64_t sub_21C56D278@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21C581DDC();
    if (v10)
    {
      v11 = sub_21C581DFC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21C581DEC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21C581DDC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21C581DFC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21C581DEC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_21C56D4A8(char *a1, int64_t a2, char a3)
{
  result = sub_21C56D4E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C56D4C8(size_t a1, int64_t a2, char a3)
{
  result = sub_21C56D5F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21C56D4E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9C8, &qword_21C5841B8);
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

size_t sub_21C56D5F4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9B8, &qword_21C5841A8);
  v10 = *(type metadata accessor for DriverKitDriver() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DriverKitDriver() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21C56D824(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_21C58250C();
  a3(v12, a1, a2);
  v9 = sub_21C58253C();

  return a4(a1, a2, v9);
}

unint64_t sub_21C56D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21C5824AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21C56D970(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_139:
    v63 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v75 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v72 = v14;
  __n = BYTE6(a2);
  v70 = a1;
  v71 = HIDWORD(a1) - a1;
  v66 = (a1 >> 32) - a1;
  v67 = a1 >> 32;
  v73 = v10;
  v74 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v75) & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v71;
          if (v72)
          {
            __break(1u);
LABEL_140:
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_139;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      goto LABEL_139;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_21C568474(v17, v16);
      v35 = sub_21C581DDC();
      if (v35)
      {
        v40 = sub_21C581DFC();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_21C581DEC();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v65 = *(a1 + 24);
        v37 = sub_21C581DDC();
        if (v37)
        {
          v60 = sub_21C581DFC();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v65, v59);
        v61 = v65 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_21C581DEC();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v67 < v70)
        {
          goto LABEL_154;
        }

        v37 = sub_21C581DDC();
        if (v37)
        {
          v41 = sub_21C581DFC();
          if (__OFSUB__(v70, v41))
          {
            goto LABEL_161;
          }

          v37 += v70 - v41;
        }

        result = sub_21C581DEC();
        v39 = v66;
        if (result < v66)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v68;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_21C568474(v17, v16);
      v32 = sub_21C581DDC();
      if (v32)
      {
        v49 = sub_21C581DFC();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_21C581DEC();
      v7 = v69;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v67 < v70)
    {
      goto LABEL_146;
    }

    sub_21C568474(v17, v16);
    v29 = sub_21C581DDC();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_21C581DFC();
    if (__OFSUB__(v70, v31))
    {
      goto LABEL_152;
    }

    v32 = v70 - v31 + v30;
    result = sub_21C581DEC();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v66)
    {
      v50 = v66;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_21C567950(v17, v16);
LABEL_135:
    v10 = v73;
    v4 = v74;
    if (!v62)
    {
      goto LABEL_139;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_139;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_21C568474(v17, v16);
    v35 = sub_21C581DDC();
    if (v35)
    {
      v36 = sub_21C581DFC();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_21C581DEC();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v64 = *(a1 + 24);
      v37 = sub_21C581DDC();
      if (v37)
      {
        v57 = sub_21C581DFC();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v64, v56);
      v58 = v64 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_21C581DEC();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v67 < v70)
      {
        goto LABEL_148;
      }

      v37 = sub_21C581DDC();
      if (v37)
      {
        v38 = sub_21C581DFC();
        if (__OFSUB__(v70, v38))
        {
          goto LABEL_159;
        }

        v37 += v70 - v38;
      }

      result = sub_21C581DEC();
      v39 = v66;
      if (result < v66)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_21C567950(v17, v16);
        goto LABEL_139;
      }

      v62 = memcmp(v35, v37, v39);
      sub_21C567950(v17, v16);
      v7 = v69;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v68;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v78 = BYTE2(a1);
    v79 = BYTE3(a1);
    v80 = v68;
    v81 = BYTE5(a1);
    v82 = BYTE6(a1);
    v83 = HIBYTE(a1);
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      goto LABEL_139;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_21C568474(v17, v16);
    v32 = sub_21C581DDC();
    if (v32)
    {
      v44 = sub_21C581DFC();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_21C581DEC();
    v7 = v69;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v67 < v70)
  {
    goto LABEL_147;
  }

  sub_21C568474(v17, v16);
  v51 = sub_21C581DDC();
  if (v51)
  {
    v52 = v51;
    v53 = sub_21C581DFC();
    if (__OFSUB__(v70, v53))
    {
      goto LABEL_151;
    }

    v32 = v70 - v53 + v52;
    result = sub_21C581DEC();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_21C581DEC();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_21C581DEC();
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
LABEL_177:
  __break(1u);
  return result;
}

void *sub_21C56E1D4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_21C56EA28(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_21C56E264(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA18, &unk_21C584780);
  result = sub_21C5823BC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + v16);
    v21 = *(v9 + 40);
    sub_21C58250C();

    sub_21C5820BC();
    result = sub_21C58253C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21C56E4A0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_21C56E5F0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_21C5822CC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_21C58232C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_21C56E5F0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_21C56E688(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_21C56E6FC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_21C56E688(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21C56E820(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21C56E6FC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_21C58232C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_21C56E820(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21C58210C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CF0C060](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_BYTE *sub_21C56E89C(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s16DriverManagement26ApprovalStateUpdateRequestC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v8 && (sub_21C5824AC() & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15 && (sub_21C568214(v2, v3, v6, v5) & 1) != 0 && v4 == v7)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v5 >> 60 != 15 || v4 != v7)
  {
    return 0;
  }

LABEL_17:

  return sub_21C581ECC();
}

uint64_t sub_21C56EA28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a3 + 56) + v14);

    LOBYTE(v18) = a4(v16, v17, v18);

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_21C56E264(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_21C56E264(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C56EB88(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_21C56EA28(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_21C56E1D4(v11, v6, v4, a2);
  result = MEMORY[0x21CF0CA30](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
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

unint64_t sub_21C56ED4C()
{
  result = qword_28120D3A0;
  if (!qword_28120D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D3A0);
  }

  return result;
}

unint64_t sub_21C56EDA0()
{
  result = qword_27CDDE870;
  if (!qword_27CDDE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE870);
  }

  return result;
}

unint64_t sub_21C56EDF4()
{
  result = qword_27CDDE878;
  if (!qword_27CDDE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE878);
  }

  return result;
}

unint64_t sub_21C56EE48()
{
  result = qword_28120D388;
  if (!qword_28120D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D388);
  }

  return result;
}

BOOL sub_21C56EE9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v4 = (a1 + 64);
  v5 = v2 + 1;
  do
  {
    v6 = --v5 == 0;
    if (!v5)
    {
      break;
    }

    v7 = *v4;
    v9 = *(v4 - 2);
    v8 = *(v4 - 1);
    v10 = *(v4 - 4);
    v11 = *(v4 - 3);

    sub_21C57029C(v9, v8);
    v12 = sub_21C569F40(v10, v11, v9, v8, a2);

    sub_21C565BD8(v9, v8);
    if (v12 == 3)
    {
      break;
    }

    v4 += 40;
  }

  while (v7 == v12);
  return v6;
}

BOOL _s16DriverManagement15ApprovalDBEntryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_21C5824AC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 >> 60 != 15)
  {
    if (v6 >> 60 == 15 || (sub_21C568214(*(a1 + 16), v5, *(a2 + 16), v6) & 1) == 0)
    {
      return 0;
    }

    return *(a1 + 32) == *(a2 + 32);
  }

  if (v6 >> 60 == 15)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

BOOL _s16DriverManagement26ApprovalSettingsStateEntryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_21C5824AC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_21C5824AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (sub_21C5824AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      return *(a1 + 64) == *(a2 + 64);
    }
  }

  else if (v11 >> 60 != 15 && (sub_21C568214(*(a1 + 48), v10, *(a2 + 48), v11) & 1) != 0)
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  return 0;
}

void *sub_21C56F128(uint64_t *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9F0, &qword_21C5841D8);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9F8, &qword_21C5841E0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA00, &qword_21C5841E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v35 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21C56ED4C();
  v17 = v33;
  sub_21C58254C();
  if (!v17)
  {
    v33 = v10;
    v18 = sub_21C58242C();
    v19 = v9;
    if (*(v18 + 16) == 1)
    {
      if (*(v18 + 32))
      {
        LOBYTE(v34) = 1;
        sub_21C56EDA0();
        v20 = v4;
        sub_21C5823CC();
        v21 = v33;
        sub_21C571E9C();
        v29 = v30;
        sub_21C58241C();
        (*(v32 + 8))(v20, v29);
        (*(v21 + 8))(v13, v19);
        swift_unknownObjectRelease();
        v16 = v34;
      }

      else
      {
        LOBYTE(v34) = 0;
        sub_21C56EE48();
        v26 = v13;
        sub_21C5823CC();
        v27 = v33;
        (*(v31 + 8))(v8, v5);
        (*(v27 + 8))(v26, v9);
        swift_unknownObjectRelease();
        v16 = 0;
      }
    }

    else
    {
      v22 = sub_21C58231C();
      swift_allocError();
      v24 = v23;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA08, &unk_21C5841F0) + 48);
      *v24 = &type metadata for ApprovalDBEntrySource;
      v16 = v13;
      sub_21C5823DC();
      sub_21C58230C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v33 + 8))(v13, v9);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v16;
}

unint64_t sub_21C56F640()
{
  result = qword_27CDDE888;
  if (!qword_27CDDE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE888);
  }

  return result;
}

unint64_t sub_21C56F6CC()
{
  result = qword_27CDDE890;
  if (!qword_27CDDE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE890);
  }

  return result;
}

unint64_t sub_21C56F720()
{
  result = qword_27CDDE898;
  if (!qword_27CDDE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE898);
  }

  return result;
}

uint64_t sub_21C56F774(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021C586170 == a2 || (sub_21C5824AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_21C5824AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453)
  {

    return 2;
  }

  else
  {
    v5 = sub_21C5824AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21C56F89C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9E8, &qword_21C5841D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C56F640();
  sub_21C58254C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_21C5823FC();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  sub_21C571C6C();
  sub_21C58241C();
  v19 = v22;
  v20 = v23;
  v24 = 2;
  sub_21C571CC0();
  sub_21C58241C();
  (*(v6 + 8))(v9, v5);
  v14 = v22;

  v16 = v19;
  v15 = v20;
  sub_21C57029C(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);

  result = sub_21C565BD8(v16, v15);
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_21C56FB40()
{
  result = qword_27CDDE8A8;
  if (!qword_27CDDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE8A8);
  }

  return result;
}

unint64_t sub_21C56FB94()
{
  result = qword_27CDDE8B0;
  if (!qword_27CDDE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE8B0);
  }

  return result;
}

void *sub_21C56FBE8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9A0, &qword_21C5841A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C571A54();
  sub_21C58254C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE988, &qword_21C584198);
    sub_21C571AA8(&qword_27CDDE9A8, sub_21C571BC0);
    sub_21C58241C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_21C56FD9C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9D8, &qword_21C5841C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_21C56FB40();
  sub_21C58254C();
  if (!v1)
  {
    v10[7] = 0;
    sub_21C571E48();
    sub_21C58241C();
    v8 = v11;
    v10[6] = 1;
    sub_21C58240C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21C56FF60()
{
  result = qword_28120D358;
  if (!qword_28120D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D358);
  }

  return result;
}

unint64_t sub_21C56FFB4()
{
  result = qword_27CDDE8D0;
  if (!qword_27CDDE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE8D0);
  }

  return result;
}

void *sub_21C570008(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9D0, &qword_21C5841C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C56FF60();
  sub_21C58254C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8C0, &qword_21C583138);
    sub_21C571D7C(&qword_28120D1F8, sub_21C571DF4);
    sub_21C58241C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_21C5701C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8D8, &qword_21C583140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C57022C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE8E0, &qword_21C583148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C57029C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21C568474(a1, a2);
  }

  return a1;
}

unint64_t sub_21C5702B0()
{
  result = qword_28120D328;
  if (!qword_28120D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D328);
  }

  return result;
}

uint64_t sub_21C570304(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021C586170 == a2 || (sub_21C5824AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_21C5824AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865546567617375 && a2 == 0xE900000000000074 || (sub_21C5824AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_21C5824AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v5 = sub_21C5824AC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21C5704D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE9C0, &qword_21C5841B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C5702B0();
  sub_21C58254C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  v11 = sub_21C5823FC();
  v29 = v12;
  LOBYTE(v35) = 1;
  v13 = sub_21C5823EC();
  v28 = v14;
  v26 = v13;
  LOBYTE(v35) = 2;
  v25 = sub_21C5823EC();
  v27 = v15;
  LOBYTE(v30) = 3;
  sub_21C571C6C();
  sub_21C58241C();
  v24 = v35;
  v43 = 4;
  sub_21C571CC0();
  sub_21C58241C();
  (*(v6 + 8))(v9, v5);
  v42 = v44;
  v17 = v28;
  v16 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v18 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v19 = v25;
  v20 = v27;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  v33 = v24;
  v34 = v44;
  sub_21C571D14(&v30, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v35 = v11;
  *(&v35 + 1) = v16;
  v36 = v18;
  v37 = v17;
  v38 = v19;
  v39 = v20;
  v40 = v24;
  v41 = v42;
  result = sub_21C571D4C(&v35);
  v22 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v22;
  *(a2 + 64) = v34;
  v23 = v31;
  *a2 = v30;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_21C5708C8()
{
  result = qword_27CDDE8F0;
  if (!qword_27CDDE8F0)
  {
    sub_21C581EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE8F0);
  }

  return result;
}

unint64_t sub_21C570924()
{
  result = qword_27CDDE8F8;
  if (!qword_27CDDE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE8F8);
  }

  return result;
}

uint64_t sub_21C5709BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21C570A08()
{
  result = qword_27CDDE910;
  if (!qword_27CDDE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE910);
  }

  return result;
}

unint64_t sub_21C570A60()
{
  result = qword_28120D310;
  if (!qword_28120D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D310);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_16DriverManagement21ApprovalDBEntrySourceO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21C570B24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C570B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_21C570BC8(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
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

uint64_t sub_21C570C1C(uint64_t a1, int a2)
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

uint64_t sub_21C570C64(uint64_t result, int a2, int a3)
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

uint64_t sub_21C570CB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21C570D00(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21C570D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_21C570DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ApprovalStateUpdateRequest()
{
  result = qword_27CDDE918;
  if (!qword_27CDDE918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C570E80()
{
  result = sub_21C581EEC();
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

uint64_t getEnumTagSinglePayload for ApprovalSettingsStateEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ApprovalSettingsStateEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21C5710B4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_21C571144(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21C571204(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21C571294(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21C571378()
{
  result = qword_27CDDE928;
  if (!qword_27CDDE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE928);
  }

  return result;
}

unint64_t sub_21C5713D0()
{
  result = qword_27CDDE930;
  if (!qword_27CDDE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE930);
  }

  return result;
}

unint64_t sub_21C571428()
{
  result = qword_27CDDE938;
  if (!qword_27CDDE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE938);
  }

  return result;
}

unint64_t sub_21C571480()
{
  result = qword_27CDDE940;
  if (!qword_27CDDE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE940);
  }

  return result;
}

unint64_t sub_21C5714D8()
{
  result = qword_27CDDE948;
  if (!qword_27CDDE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE948);
  }

  return result;
}

unint64_t sub_21C571530()
{
  result = qword_27CDDE950;
  if (!qword_27CDDE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE950);
  }

  return result;
}

unint64_t sub_21C571588()
{
  result = qword_28120D318;
  if (!qword_28120D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D318);
  }

  return result;
}

unint64_t sub_21C5715E0()
{
  result = qword_28120D320;
  if (!qword_28120D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D320);
  }

  return result;
}

unint64_t sub_21C571638()
{
  result = qword_28120D348;
  if (!qword_28120D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D348);
  }

  return result;
}

unint64_t sub_21C571690()
{
  result = qword_28120D350;
  if (!qword_28120D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D350);
  }

  return result;
}

unint64_t sub_21C5716E8()
{
  result = qword_27CDDE958;
  if (!qword_27CDDE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE958);
  }

  return result;
}

unint64_t sub_21C571740()
{
  result = qword_27CDDE960;
  if (!qword_27CDDE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE960);
  }

  return result;
}

unint64_t sub_21C571798()
{
  result = qword_27CDDE968;
  if (!qword_27CDDE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE968);
  }

  return result;
}

unint64_t sub_21C5717F0()
{
  result = qword_27CDDE970;
  if (!qword_27CDDE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE970);
  }

  return result;
}

unint64_t sub_21C571848()
{
  result = qword_28120D378;
  if (!qword_28120D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D378);
  }

  return result;
}

unint64_t sub_21C5718A0()
{
  result = qword_28120D380;
  if (!qword_28120D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D380);
  }

  return result;
}

unint64_t sub_21C5718F8()
{
  result = qword_28120D368;
  if (!qword_28120D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D368);
  }

  return result;
}

unint64_t sub_21C571950()
{
  result = qword_28120D370;
  if (!qword_28120D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D370);
  }

  return result;
}

unint64_t sub_21C5719A8()
{
  result = qword_28120D390;
  if (!qword_28120D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D390);
  }

  return result;
}

unint64_t sub_21C571A00()
{
  result = qword_28120D398;
  if (!qword_28120D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D398);
  }

  return result;
}

unint64_t sub_21C571A54()
{
  result = qword_27CDDE980;
  if (!qword_27CDDE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE980);
  }

  return result;
}

uint64_t sub_21C571AA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDE988, &qword_21C584198);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C571B20()
{
  result = qword_27CDDE998;
  if (!qword_27CDDE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE998);
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

unint64_t sub_21C571BC0()
{
  result = qword_27CDDE9B0;
  if (!qword_27CDDE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE9B0);
  }

  return result;
}

unint64_t sub_21C571C18()
{
  result = qword_28120D3B0;
  if (!qword_28120D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D3B0);
  }

  return result;
}

unint64_t sub_21C571C6C()
{
  result = qword_28120D360;
  if (!qword_28120D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D360);
  }

  return result;
}

unint64_t sub_21C571CC0()
{
  result = qword_28120D3A8;
  if (!qword_28120D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D3A8);
  }

  return result;
}

uint64_t sub_21C571D7C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDE8C0, &qword_21C583138);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C571DF4()
{
  result = qword_28120D308;
  if (!qword_28120D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D308);
  }

  return result;
}

unint64_t sub_21C571E48()
{
  result = qword_27CDDE9E0;
  if (!qword_27CDDE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDE9E0);
  }

  return result;
}

unint64_t sub_21C571E9C()
{
  result = qword_27CDDEA10;
  if (!qword_27CDDEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDEA10);
  }

  return result;
}

uint64_t sub_21C571EF0(unsigned int *a1, int a2)
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

_WORD *sub_21C571F40(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21C571FEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21C572034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_21C572098()
{
  result = qword_27CDDEA28;
  if (!qword_27CDDEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDEA28);
  }

  return result;
}

unint64_t sub_21C5720F0()
{
  result = qword_27CDDEA30;
  if (!qword_27CDDEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDEA30);
  }

  return result;
}

unint64_t sub_21C572148()
{
  result = qword_27CDDEA38;
  if (!qword_27CDDEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDEA38);
  }

  return result;
}

uint64_t sub_21C572240()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  return v1;
}

id sub_21C5722B4()
{
  result = [objc_allocWithZone(type metadata accessor for DriverManager()) init];
  static DriverManager.shared = result;
  return result;
}

uint64_t *DriverManager.shared.unsafeMutableAddressor()
{
  if (qword_28120D428 != -1)
  {
    swift_once();
  }

  return &static DriverManager.shared;
}

id static DriverManager.shared.getter()
{
  if (qword_28120D428 != -1)
  {
    swift_once();
  }

  v1 = static DriverManager.shared;

  return v1;
}

id static DriverManager.sharedManager()()
{
  v0 = sub_21C581F5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v5 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v1 + 8))(v4, v0);
  if (qword_28120D428 != -1)
  {
    swift_once();
  }

  v6 = static DriverManager.shared;

  return v6;
}

id DriverManager.addObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C581F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v9 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v5 + 8))(v8, v4);
  v10 = *(v2 + OBJC_IVAR____SwiftDriverManager_observerLock);
  [v10 lock];
  v11 = OBJC_IVAR____SwiftDriverManager_observers;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (v12 >> 62)
  {
LABEL_18:
    v13 = sub_21C58238C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v13 != i; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CF0C250](i, v12);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v15 = *(v12 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    swift_unknownObjectRelease();
    if (v15 == a1)
    {

      return [v10 unlock];
    }
  }

  swift_beginAccess();
  v16 = swift_unknownObjectRetain();
  MEMORY[0x21CF0C0C0](v16);
  if (*((*(v2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((*(v2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_21C58218C();
  }

  sub_21C5821AC();
  swift_endAccess();
  return [v10 unlock];
}

id DriverManager.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C581F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v9 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v5 + 8))(v8, v4);
  v10 = *(v2 + OBJC_IVAR____SwiftDriverManager_observerLock);
  [v10 lock];
  v11 = OBJC_IVAR____SwiftDriverManager_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v12 = sub_21C57CBB8((v2 + v11), a1);
  swift_unknownObjectRelease();
  v13 = *(v2 + v11);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v16 = *(v2 + v11);
    }

    v14 = sub_21C58238C();
    if (v14 >= v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v12)
    {
LABEL_3:
      sub_21C57CF0C(v12, v14);
      swift_endAccess();
      return [v10 unlock];
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_21C572B44(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

Swift::Int __swiftcall DriverManager.driverCount()()
{
  v1 = v0;
  v2 = sub_21C581F5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v7 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v3 + 8))(v6, v2);
  v8 = *(v1 + OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock);
  [v8 lock];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  if (v12 >> 62)
  {
    v9 = sub_21C58238C();
  }

  else
  {
    v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v8 unlock];
  return v9;
}

Swift::Int __swiftcall DriverManager.thirdPartyDriverCount()()
{
  v1 = v0;
  v2 = type metadata accessor for DriverKitDriverSource();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21C581F5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v11 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v7 + 8))(v10, v6);
  v12 = *(v1 + OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock);
  [v12 lock];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  v13 = v36;
  v36 = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21C58238C())
  {
    v34 = v12;
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v17 = v13 & 0xFFFFFFFFFFFFFF8;
    v18 = &OBJC_IVAR____SwiftDriverApprovalState_driver;
    v35 = v5;
    while (1)
    {
      if (v16)
      {
        v25 = MEMORY[0x21CF0C250](v15, v13);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_15;
        }

        v25 = *(v13 + 8 * v15 + 32);
      }

      v26 = v25;
      v12 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v27 = *v18;
      v28 = type metadata accessor for DriverKitDriver();
      sub_21C57D47C(v26 + *(v28 + 20) + v27, v5, type metadata accessor for DriverKitDriverSource);
      v29 = type metadata accessor for DriverKitDriverApp();
      if ((*(*(v29 - 8) + 48))(v5, 1, v29) == 1)
      {
      }

      else
      {
        sub_21C57D4E4(v5, type metadata accessor for DriverKitDriverSource);
        sub_21C58233C();
        v19 = v17;
        v20 = v16;
        v21 = i;
        v22 = v13;
        v23 = v18;
        v24 = *(v36 + 16);
        sub_21C58235C();
        v18 = v23;
        v13 = v22;
        i = v21;
        v16 = v20;
        v17 = v19;
        v5 = v35;
        sub_21C58236C();
        sub_21C58234C();
      }

      ++v15;
      if (v12 == i)
      {
        v30 = v36;
        v12 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_18:

  [v12 unlock];
  if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    v31 = sub_21C58238C();
  }

  else
  {
    v31 = *(v30 + 16);
  }

  return v31;
}

unint64_t DriverManager.driverApprovalStates(filter:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a1;
  v5 = type metadata accessor for SettingsApplicationRecord();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DriverKitDriverApp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = type metadata accessor for DriverKitDriverSource();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v50 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v53 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v52 = &v46 - v21;
  v22 = *(v3 + OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock);
  [v22 lock];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  v23 = v57;
  v57 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
    goto LABEL_32;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v50; v24; i = v50)
  {
    v46 = v22;
    v51 = v14;
    v26 = 0;
    v55 = v23 & 0xFFFFFFFFFFFFFF8;
    v56 = v23 & 0xC000000000000001;
    v22 = (v9 + 48);
    v14 = v53;
    v54 = v24;
    while (1)
    {
      if (v56)
      {
        v27 = MEMORY[0x21CF0C250](v26, v23);
      }

      else
      {
        if (v26 >= *(v55 + 16))
        {
          goto LABEL_31;
        }

        v27 = *(v23 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v9 = OBJC_IVAR____SwiftDriverApprovalState_driver;
      v30 = &v27[*(type metadata accessor for DriverKitDriver() + 20)];
      if (!a2)
      {
        v31 = &v30[v9];
        v9 = v52;
        sub_21C57D47C(v31, v52, type metadata accessor for DriverKitDriverSource);
        if ((*v22)(v9, 1, v8) != 1)
        {
          v32 = type metadata accessor for DriverKitDriverSource;
          v33 = v9;
LABEL_17:
          sub_21C57D4E4(v33, v32);
LABEL_18:
          v9 = &v57;
          sub_21C58233C();
          v34 = v8;
          v35 = *(v57 + 16);
          sub_21C58235C();
          v8 = v34;
          v14 = v53;
          sub_21C58236C();
          sub_21C58234C();
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      if (a2 != 1)
      {
        sub_21C57D47C(&v30[v9], v14, type metadata accessor for DriverKitDriverSource);
        if ((*v22)(v14, 1, v8) != 1)
        {
          v36 = v51;
          sub_21C57D544(v14, v51, type metadata accessor for DriverKitDriverApp);
          v37 = v49;
          sub_21C57D47C(v36, v49, type metadata accessor for DriverKitDriverApp);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v38 = v37;
            v9 = type metadata accessor for DriverKitDriverApp;
            sub_21C57D4E4(v36, type metadata accessor for DriverKitDriverApp);
            v39 = v38;
            v14 = v53;
            sub_21C57D4E4(v39, type metadata accessor for DriverKitDriverApp);
            i = v50;
            goto LABEL_6;
          }

          v40 = v37;
          v9 = v48;
          sub_21C57D544(v40, v48, type metadata accessor for SettingsApplicationRecord);
          v41 = *(v9 + 8);
          if (v41)
          {
            i = v50;
            if (*v9 == v47 && v41 == a2)
            {
              sub_21C57D4E4(v9, type metadata accessor for SettingsApplicationRecord);
              v32 = type metadata accessor for DriverKitDriverApp;
              v33 = v51;
              goto LABEL_17;
            }

            v42 = sub_21C5824AC();
            v43 = v9;
            v9 = v42;
            sub_21C57D4E4(v43, type metadata accessor for SettingsApplicationRecord);
            sub_21C57D4E4(v51, type metadata accessor for DriverKitDriverApp);
            if (v9)
            {
              goto LABEL_18;
            }
          }

          else
          {
            sub_21C57D4E4(v9, type metadata accessor for SettingsApplicationRecord);
            sub_21C57D4E4(v51, type metadata accessor for DriverKitDriverApp);
            i = v50;
          }
        }

LABEL_5:

        goto LABEL_6;
      }

      sub_21C57D47C(&v30[v9], i, type metadata accessor for DriverKitDriverSource);
      if ((*v22)(i, 1, v8) == 1)
      {
        goto LABEL_18;
      }

      sub_21C57D4E4(i, type metadata accessor for DriverKitDriverSource);
LABEL_6:
      ++v26;
      if (v29 == v54)
      {
        v44 = v57;
        v22 = v46;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v24 = sub_21C58238C();
  }

  v44 = MEMORY[0x277D84F90];
LABEL_34:

  [v22 unlock];
  return v44;
}

Swift::Int __swiftcall DriverManager.driverCount(forAppID:)(Swift::String forAppID)
{
  v2 = v1;
  object = forAppID._object;
  countAndFlagsBits = forAppID._countAndFlagsBits;
  v3 = type metadata accessor for SettingsApplicationRecord();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DriverKitDriverApp();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v11;
  v12 = type metadata accessor for DriverKitDriverSource();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21C581F5C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v21 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v17 + 8))(v20, v16);
  v22 = *(v2 + OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock);
  [v22 lock];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  v23 = v54;
  v54 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21C58238C())
  {
    v44 = v22;
    v51 = v10;
    v52 = v6;
    v25 = 0;
    v26 = v23 & 0xC000000000000001;
    v53 = v23 & 0xFFFFFFFFFFFFFF8;
    v22 = (v45 + 48);
    v10 = v48;
    v50 = v23 & 0xC000000000000001;
    while (1)
    {
      if (v26)
      {
        v27 = MEMORY[0x21CF0C250](v25, v23);
      }

      else
      {
        if (v25 >= *(v53 + 16))
        {
          goto LABEL_24;
        }

        v27 = *(v23 + 8 * v25 + 32);
      }

      v28 = v27;
      v6 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = OBJC_IVAR____SwiftDriverApprovalState_driver;
      v30 = type metadata accessor for DriverKitDriver();
      sub_21C57D47C(v28 + *(v30 + 20) + v29, v15, type metadata accessor for DriverKitDriverSource);
      if ((*v22)(v15, 1, v52) == 1)
      {
      }

      else
      {
        v31 = v23;
        v32 = i;
        sub_21C57D544(v15, v10, type metadata accessor for DriverKitDriverApp);
        v33 = v10;
        v34 = v10;
        v35 = v51;
        sub_21C57D47C(v33, v51, type metadata accessor for DriverKitDriverApp);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          sub_21C57D4E4(v34, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v35, type metadata accessor for DriverKitDriverApp);
          v10 = v34;
          i = v32;
          v23 = v31;
          v26 = v50;
        }

        else
        {
          v36 = v49;
          sub_21C57D544(v35, v49, type metadata accessor for SettingsApplicationRecord);
          v37 = v36[1];
          if (!v37)
          {
            v10 = v48;
            sub_21C57D4E4(v48, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v36, type metadata accessor for SettingsApplicationRecord);
            i = v32;
            v23 = v31;
LABEL_20:

            v26 = v50;
            goto LABEL_5;
          }

          v10 = v48;
          i = v32;
          if (*v36 == countAndFlagsBits && v37 == object)
          {
            sub_21C57D4E4(v48, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v49, type metadata accessor for SettingsApplicationRecord);
            v23 = v31;
          }

          else
          {
            v38 = sub_21C5824AC();
            sub_21C57D4E4(v10, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v49, type metadata accessor for SettingsApplicationRecord);
            v23 = v31;
            if ((v38 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          sub_21C58233C();
          v39 = *(v54 + 16);
          sub_21C58235C();
          sub_21C58236C();
          sub_21C58234C();
          v26 = v50;
        }
      }

LABEL_5:
      ++v25;
      if (v6 == i)
      {
        v40 = v54;
        v22 = v44;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_27:

  [v22 unlock];
  if ((v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
  {
    v41 = sub_21C58238C();
  }

  else
  {
    v41 = *(v40 + 16);
  }

  return v41;
}

Swift::Void __swiftcall DriverManager.refresh()()
{
  v1 = v0;
  v2 = sub_21C581FEC();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21C58200C();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21C581F5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v15 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v11 + 8))(v14, v10);
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  v16 = sub_21C58220C();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  aBlock[4] = sub_21C57D02C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C57D650;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  v19 = v1;

  sub_21C581FFC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
  sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440);
  sub_21C58228C();
  MEMORY[0x21CF0C180](0, v9, v5, v18);
  _Block_release(v18);

  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

uint64_t sub_21C574284()
{
  v1 = v0;
  v2 = sub_21C58201C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21C581F5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v12 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v8 + 8))(v11, v7);
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  *v6 = sub_21C58220C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  LOBYTE(v12) = sub_21C58202C();
  result = (*(v3 + 8))(v6, v2);
  if (v12)
  {
    v14 = *&v1[OBJC_IVAR____SwiftDriverManager_client];
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = v1;
    DriverKitDaemonClient.getApprovalStateForSettings(_:)(sub_21C57D39C, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_21C574540()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_21C5821FC();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21C5821EC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_21C58200C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_21C581F5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v14 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v10 + 8))(v13, v9);
  type metadata accessor for DriverKitDaemonClient();
  v15 = swift_allocObject();
  v15[3] = 0;
  v15[4] = 0;
  v15[2] = 0;
  *&v1[OBJC_IVAR____SwiftDriverManager_client] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&v1[OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock] = v16;
  swift_beginAccess();
  v29 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA40, &qword_21C5843F0);
  sub_21C581F7C();
  swift_endAccess();
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  sub_21C581FFC();
  v30 = v17;
  sub_21C57D34C(&qword_28120D1F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA80, &qword_21C584570);
  sub_21C5709BC(&qword_28120D200, &qword_27CDDEA80, &qword_21C584570);
  sub_21C58228C();
  (*(v25 + 104))(v24, *MEMORY[0x277D85260], v26);
  *&v1[OBJC_IVAR____SwiftDriverManager_launchServicesQueue] = sub_21C58222C();
  v18 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&v1[OBJC_IVAR____SwiftDriverManager_observerLock] = v18;
  *&v1[OBJC_IVAR____SwiftDriverManager_observers] = MEMORY[0x277D84F90];
  v28.receiver = v1;
  v28.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v28, sel_init);
  v20 = *&v19[OBJC_IVAR____SwiftDriverManager_client];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v19;

  DriverKitDaemonClient.registerForApprovalsChangeNotification(_:)(sub_21C57D394, v21);

  return v22;
}

void sub_21C574A2C()
{
  v0 = sub_21C581FEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21C58200C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_21C5821BC();
    v21 = v5;
    sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
    v12 = sub_21C58224C();
    v20 = v6;
    v13 = MEMORY[0x277D84F90];
    sub_21C581F2C();

    sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
    v19 = sub_21C58220C();
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    aBlock[4] = sub_21C57D658;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C57D650;
    aBlock[3] = &block_descriptor_22;
    v15 = _Block_copy(aBlock);
    v16 = v11;

    sub_21C581FFC();
    aBlock[0] = v13;
    sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
    sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440);
    sub_21C58228C();
    v17 = v19;
    MEMORY[0x21CF0C180](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    sub_21C5821CC();
    sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
    v18 = sub_21C58224C();
    sub_21C581F2C();
  }
}

id DriverManager.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____SwiftDriverManager_client];

  sub_21C57EA14();
  sub_21C58209C();
  sub_21C58209C();

  xpc_set_event();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_21C574FF4(uint64_t a1, uint64_t a2)
{
  v161 = a2;
  *&v162 = a1;
  v160 = type metadata accessor for DriverKitDriver();
  KeyPath = *(v160 - 8);
  v3 = *(KeyPath + 64);
  v4 = MEMORY[0x28223BE20](v160);
  v147 = (&v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v170 = &v146 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v146 - v9;
  MEMORY[0x28223BE20](v8);
  v159 = &v146 - v11;
  v12 = type metadata accessor for SettingsApplicationRecord();
  v150 = *(v12 - 8);
  v13 = *(v150 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v149 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v148 = &v146 - v16;
  v17 = type metadata accessor for DriverKitDriverSource();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v163 = (&v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_21C58201C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_21C581F5C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  v153 = sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v30 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v26 + 8))(v29, v25);
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  *v24 = sub_21C58220C();
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  LOBYTE(v30) = sub_21C58202C();
  (*(v21 + 8))(v24, v20);
  if (v30)
  {
    v151 = v10;
    v174 = MEMORY[0x277D84F90];
    v31 = v162 + 56;
    v32 = 1 << *(v162 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v162 + 56);
    v35 = (v32 + 63) >> 6;

    v37 = 0;
    v152 = xmmword_21C582F80;
    v38 = v161;
    v39 = v163;
    v158 = v35;
    v157 = v31;
    v156 = KeyPath;
    if (v34)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_113;
      }

      if (v40 >= v35)
      {
        break;
      }

      v34 = *(v31 + 8 * v40);
      ++v37;
      if (v34)
      {
        v37 = v40;
        do
        {
LABEL_9:
          v41 = *(v36 + 48) + 72 * (__clz(__rbit64(v34)) | (v37 << 6));
          v42 = *(v41 + 8);
          v43 = *(v41 + 16);
          v44 = *(v41 + 24);
          v164 = *v41;
          v165 = v43;
          v45 = *(v41 + 32);
          v46 = *(v41 + 40);
          v48 = *(v41 + 48);
          v47 = *(v41 + 56);
          LODWORD(v166) = *(v41 + 64);
          v167 = v48;
          v168 = v47;
          if (v47 >> 60 == 15)
          {
            v49 = type metadata accessor for DriverKitDriverApp();
            (*(*(v49 - 8) + 56))(v39, 1, 1, v49);

            sub_21C57029C(v48, v47);
            v50 = v46;
            v51 = v164;
          }

          else
          {
            v155 = v45;
            v52 = *(v38 + 16);
            v154 = v46;

            sub_21C57029C(v48, v47);
            sub_21C57029C(v48, v47);
            if (v52 && (v53 = sub_21C56D7F8(v48, v47), (v54 & 1) != 0))
            {
              v55 = v149;
              sub_21C57D47C(*(v38 + 56) + *(v150 + 72) * v53, v149, type metadata accessor for SettingsApplicationRecord);
              sub_21C565BD8(v48, v47);
              v56 = v55;
              v57 = v148;
              sub_21C57D544(v56, v148, type metadata accessor for SettingsApplicationRecord);
              sub_21C57D544(v57, v39, type metadata accessor for SettingsApplicationRecord);
              v58 = type metadata accessor for DriverKitDriverApp();
              swift_storeEnumTagMultiPayload();
              (*(*(v58 - 8) + 56))(v39, 0, 1, v58);
              v45 = v155;
              v51 = v164;
            }

            else
            {
              sub_21C5821CC();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
              v59 = v44;
              v60 = swift_allocObject();
              *(v60 + 16) = v152;
              *(v60 + 56) = MEMORY[0x277D837D0];
              *(v60 + 64) = sub_21C57D07C();
              v51 = v164;
              *(v60 + 32) = v164;
              *(v60 + 40) = v42;

              v61 = sub_21C58224C();
              v39 = v163;
              sub_21C581F2C();
              v44 = v59;

              *v39 = v48;
              v39[1] = v47;
              v62 = type metadata accessor for DriverKitDriverApp();
              swift_storeEnumTagMultiPayload();
              (*(*(v62 - 8) + 56))(v39, 0, 1, v62);
              v45 = v155;
            }

            v50 = v154;
          }

          v63 = v160;
          v64 = v159;
          sub_21C57D47C(v39, &v159[*(v160 + 20)], type metadata accessor for DriverKitDriverSource);
          *v64 = v51;
          v64[1] = v42;
          v65 = (v64 + *(v63 + 24));
          *v65 = v165;
          v65[1] = v44;
          v66 = (v64 + *(v63 + 28));
          *v66 = v45;
          v66[1] = v50;
          v67 = type metadata accessor for DriverApprovalState();
          v68 = objc_allocWithZone(v67);
          sub_21C57D47C(v64, v68 + OBJC_IVAR____SwiftDriverApprovalState_driver, type metadata accessor for DriverKitDriver);
          swift_beginAccess();
          LOBYTE(v173) = v166;

          sub_21C581F7C();
          swift_endAccess();
          swift_beginAccess();
          v173 = 0;
          sub_21C581F7C();
          swift_endAccess();
          v172.receiver = v68;
          v172.super_class = v67;
          objc_msgSendSuper2(&v172, sel_init);
          v69 = sub_21C57D4E4(v64, type metadata accessor for DriverKitDriver);
          MEMORY[0x21CF0C0C0](v69);
          if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v70 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21C58218C();
          }

          v34 &= v34 - 1;
          sub_21C5821AC();

          sub_21C565BD8(v167, v168);
          v39 = v163;
          sub_21C57D4E4(v163, type metadata accessor for DriverKitDriverSource);
          v38 = v161;
          v36 = v162;
          v35 = v158;
          v31 = v157;
          KeyPath = v156;
        }

        while (v34);
      }
    }

    sub_21C576678(&v174);
    v164 = 0;
    v166 = *(v169 + OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock);
    [v166 lock];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21C581FBC();

    v25 = *v171;
    if (*v171 >> 62)
    {
      goto LABEL_118;
    }

    v71 = *((*v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
LABEL_117:
    __break(1u);
LABEL_118:
    v71 = sub_21C58238C();
  }

  v72 = v151;
  if (v71)
  {
    *v171 = MEMORY[0x277D84F90];
    sub_21C56D4C8(0, v71 & ~(v71 >> 63), 0);
    if (v71 < 0)
    {
      __break(1u);
      goto LABEL_129;
    }

    v73 = 0;
    v74 = *v171;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x21CF0C250](v73, v25);
        sub_21C57D47C(v75 + OBJC_IVAR____SwiftDriverApprovalState_driver, v72, type metadata accessor for DriverKitDriver);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_21C57D47C(*(v25 + 8 * v73 + 32) + OBJC_IVAR____SwiftDriverApprovalState_driver, v72, type metadata accessor for DriverKitDriver);
      }

      *v171 = v74;
      v77 = *(v74 + 16);
      v76 = *(v74 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_21C56D4C8(v76 > 1, v77 + 1, 1);
        v74 = *v171;
      }

      ++v73;
      *(v74 + 16) = v77 + 1;
      sub_21C57D544(v72, v74 + ((*(KeyPath + 80) + 32) & ~*(KeyPath + 80)) + *(KeyPath + 72) * v77, type metadata accessor for DriverKitDriver);
    }

    while (v71 != v73);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v78 = v174;
  v79 = v174 >> 62;
  if (v174 >> 62)
  {
    v25 = sub_21C58238C();
  }

  else
  {
    v25 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = MEMORY[0x277D84F90];
  if (!v25)
  {
    v82 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  *v171 = MEMORY[0x277D84F90];
  sub_21C56D4C8(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v81 = 0;
  v82 = *v171;
  do
  {
    if ((v78 & 0xC000000000000001) != 0)
    {
      v83 = MEMORY[0x21CF0C250](v81, v78);
      sub_21C57D47C(v83 + OBJC_IVAR____SwiftDriverApprovalState_driver, v170, type metadata accessor for DriverKitDriver);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_21C57D47C(*(v78 + 8 * v81 + 32) + OBJC_IVAR____SwiftDriverApprovalState_driver, v170, type metadata accessor for DriverKitDriver);
    }

    *v171 = v82;
    v85 = *(v82 + 16);
    v84 = *(v82 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_21C56D4C8(v84 > 1, v85 + 1, 1);
      v82 = *v171;
    }

    ++v81;
    *(v82 + 16) = v85 + 1;
    sub_21C57D544(v170, v82 + ((*(KeyPath + 80) + 32) & ~*(KeyPath + 80)) + *(KeyPath + 72) * v85, type metadata accessor for DriverKitDriver);
  }

  while (v25 != v81);
  v80 = MEMORY[0x277D84F90];
LABEL_46:
  sub_21C5766F0(v74, v82);
  v87 = v86;

  LODWORD(v165) = v87;
  if (v87)
  {
    v170 = v78 & 0xFFFFFFFFFFFFFF8;
    if (v79)
    {
      v88 = sub_21C58238C();
    }

    else
    {
      v88 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v88 != 0;
    if (v88)
    {
      LODWORD(v161) = 1;
      v94 = 0;
      v95 = 0;
      v168 = v78 & 0xC000000000000001;
      v162 = xmmword_21C5843E0;
      v167 = v88;
      while (2)
      {
        LODWORD(v163) = v95;
        v96 = v94 + 4;
        while (1)
        {
          v97 = v96 - 4;
          if (v168)
          {
            v98 = MEMORY[0x21CF0C250](v96 - 4, v78);
          }

          else
          {
            if (v97 >= *(v170 + 16))
            {
              goto LABEL_115;
            }

            v98 = *(v78 + 8 * v96);
          }

          v99 = v98;
          v94 = v96 - 3;
          if (__OFADD__(v97, 1))
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          sub_21C581FBC();

          KeyPath = *v171;
          if ((*v171 & 0xC000000000000001) != 0)
          {
            v100 = MEMORY[0x21CF0C250](v96 - 4, *v171);
          }

          else
          {
            if (v97 >= *((*v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_116;
            }

            v100 = *(*v171 + 8 * v96);
          }

          v101 = v100;

          swift_getKeyPath();
          v25 = &unk_21C5845C0;
          swift_getKeyPath();
          sub_21C581FBC();

          v102 = v171[0];
          swift_getKeyPath();
          KeyPath = swift_getKeyPath();
          sub_21C581FBC();

          if (v102 != v171[0])
          {
            break;
          }

          ++v96;
          if (v94 == v167)
          {
            v93 = v163;
            goto LABEL_81;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21C581FBC();

        if ((*v171 & 0xC000000000000001) != 0)
        {
          v103 = MEMORY[0x21CF0C250](v96 - 4, *v171);
        }

        else
        {
          if (v97 >= *((*v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_132;
          }

          v103 = *(*v171 + 8 * v96);
        }

        v163 = v103;

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21C581FBC();

        v104 = v171[0];
        swift_getKeyPath();
        swift_getKeyPath();
        v171[0] = v104;
        sub_21C581FCC();
        v25 = sub_21C5821BC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
        v105 = swift_allocObject();
        *(v105 + 16) = v162;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21C581FBC();

        if ((*v171 & 0xC000000000000001) != 0)
        {
          v106 = MEMORY[0x21CF0C250](v96 - 4, *v171);
        }

        else
        {
          if (v97 >= *((*v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_133;
          }

          v106 = *(*v171 + 8 * v96);
        }

        v107 = v106;

        v108 = v147;
        sub_21C57D47C(v107 + OBJC_IVAR____SwiftDriverApprovalState_driver, v147, type metadata accessor for DriverKitDriver);

        v109 = *v108;
        v110 = v108[1];

        sub_21C57D4E4(v108, type metadata accessor for DriverKitDriver);
        *(v105 + 56) = MEMORY[0x277D837D0];
        v111 = sub_21C57D07C();
        *(v105 + 64) = v111;
        *(v105 + 32) = v109;
        *(v105 + 40) = v110;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21C581FBC();

        v112 = v171[0];
        if (qword_28120D3B8 != -1)
        {
          swift_once();
        }

        v113 = MEMORY[0x28223BE20](off_28120D3C0);
        *(&v146 - 16) = v112;
        v114 = v164;
        v115 = sub_21C56EB88(v113, sub_21C57D5AC);
        v164 = v114;
        v116 = sub_21C568624(v115);
        KeyPath = v117;

        if (!KeyPath)
        {
          goto LABEL_134;
        }

        *(v105 + 96) = MEMORY[0x277D837D0];
        *(v105 + 104) = v111;
        *(v105 + 72) = v116;
        *(v105 + 80) = KeyPath;
        v118 = sub_21C58224C();
        sub_21C581F2C();

        v95 = 1;
        if (v94 != v167)
        {
          continue;
        }

        break;
      }

LABEL_113:
      v93 = v161;
    }

LABEL_81:

    v119 = 0x278315000;
    if ((v93 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_93;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v89 = sub_21C581FAC();
  v91 = *v90;
  *v90 = v80;

  v89(v171, 0);

  if (v79)
  {
    v92 = sub_21C58238C();
    if (!v92)
    {
LABEL_92:

      v119 = 0x278315000uLL;
LABEL_93:
      v127 = v169;
      v128 = *(v169 + OBJC_IVAR____SwiftDriverManager_observerLock);
      [v128 lock];
      sub_21C5821BC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_21C5843E0;
      v130 = OBJC_IVAR____SwiftDriverManager_observers;
      swift_beginAccess();
      v131 = *(v127 + v130);
      if (v131 >> 62)
      {
        if (v131 < 0)
        {
          v144 = *(v127 + v130);
        }

        v132 = sub_21C58238C();
        v131 = *(v169 + v130);
      }

      else
      {
        v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v133 = v165;
      v134 = MEMORY[0x277D83C10];
      *(v129 + 56) = MEMORY[0x277D83B88];
      *(v129 + 64) = v134;
      *(v129 + 32) = v132;
      if (v131 >> 62)
      {
        v135 = sub_21C58238C();
      }

      else
      {
        v135 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v136 = sub_21C57D07C();
      v137 = 115;
      if (v135 <= 1)
      {
        v137 = 0;
      }

      v138 = 0xE000000000000000;
      *(v129 + 96) = MEMORY[0x277D837D0];
      *(v129 + 104) = v136;
      if (v135 > 1)
      {
        v138 = 0xE100000000000000;
      }

      *(v129 + 72) = v137;
      *(v129 + 80) = v138;
      v139 = sub_21C58224C();
      sub_21C581F2C();

      v140 = *(v169 + v130);
      if (v140 >> 62)
      {
        if (v140 < 0)
        {
          v145 = *(v169 + v130);
        }

        v141 = sub_21C58238C();
        if (!v141)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v141)
        {
LABEL_110:
          [v128 *(v119 + 2856)];
LABEL_111:
          [v166 *(v119 + 2856)];
          return;
        }
      }

      if (v141 >= 1)
      {

        for (i = 0; i != v141; ++i)
        {
          if ((v140 & 0xC000000000000001) != 0)
          {
            v143 = MEMORY[0x21CF0C250](i, v140);
          }

          else
          {
            v143 = *(v140 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v143 approvalStateDidChange_];
          swift_unknownObjectRelease();
        }

        goto LABEL_110;
      }

      goto LABEL_130;
    }
  }

  else
  {
    v92 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v92)
    {
      goto LABEL_92;
    }
  }

  if (v92 >= 1)
  {
    v120 = 0;
    do
    {
      if ((v78 & 0xC000000000000001) != 0)
      {
        v121 = MEMORY[0x21CF0C250](v120, v78);
      }

      else
      {
        v121 = *(v78 + 8 * v120 + 32);
      }

      v122 = v121;
      swift_getKeyPath();
      swift_getKeyPath();
      v123 = v122;
      v124 = sub_21C581FAC();
      v126 = v125;
      MEMORY[0x21CF0C0C0]();
      if (*((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21C58218C();
      }

      ++v120;
      sub_21C5821AC();
      v124(v171, 0);
    }

    while (v92 != v120);
    goto LABEL_92;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}