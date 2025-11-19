__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2259CAEDC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2259CB01C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2259CB03C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2259CB1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

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

uint64_t sub_2259CB588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPSignpost.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2259CB5EC()
{
  result = qword_28105B900;
  if (!qword_28105B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B900);
  }

  return result;
}

uint64_t sub_2259CB640(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2259CB6A0(uint64_t a1)
{
  v2 = type metadata accessor for DIPSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259CB6FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2259CB710(a1, a2);
  }

  return a1;
}

uint64_t sub_2259CB710(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2259CB764()
{
  result = qword_281059B20;
  if (!qword_281059B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2259CB810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2259CB8AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2259CB8CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_2259CBA88(uint64_t a1, unint64_t *a2)
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

unint64_t sub_2259CBC40()
{
  result = qword_27D73AA98;
  if (!qword_27D73AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AA98);
  }

  return result;
}

uint64_t DaemonDefaultsKeys.CloudContainerDefaultsKeys.zoneNames.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonDefaultsKeys.CloudContainerDefaultsKeys.subscriptions.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DaemonDefaultsKeys.CloudContainerDefaultsKeys.changeTokens.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_2259CBE8C()
{
  qword_27D73AB90 = 0xD000000000000013;
  *algn_27D73AB98 = 0x8000000225D15460;
  qword_27D73ABA0 = 0xD00000000000001BLL;
  unk_27D73ABA8 = 0x8000000225D15480;
  qword_27D73ABB0 = 0xD00000000000001BLL;
  unk_27D73ABB8 = 0x8000000225D154A0;
}

uint64_t static DaemonDefaultsKeys.uploadsCloudContainer.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739EE0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27D73AB98;
  v2 = qword_27D73ABA0;
  v3 = unk_27D73ABA8;
  v4 = qword_27D73ABB0;
  v5 = unk_27D73ABB8;
  *a1 = qword_27D73AB90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

void sub_2259CBF74()
{
  qword_27D73ABC0 = 0xD00000000000001BLL;
  *algn_27D73ABC8 = 0x8000000225D153E0;
  qword_27D73ABD0 = 0xD000000000000023;
  unk_27D73ABD8 = 0x8000000225D15400;
  qword_27D73ABE0 = 0xD000000000000023;
  unk_27D73ABE8 = 0x8000000225D15430;
}

uint64_t static DaemonDefaultsKeys.uploadsNonprodCloudContainer.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739EE8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27D73ABC8;
  v2 = qword_27D73ABD0;
  v3 = unk_27D73ABD8;
  v4 = qword_27D73ABE0;
  v5 = unk_27D73ABE8;
  *a1 = qword_27D73ABC0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_2259CFB14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2259CFB5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedInternalDefaultsKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SharedInternalDefaultsKeys(_WORD *result, int a2, int a3)
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

void UserDefaultsConfiguration.deinit()
{
  if (!*(v0 + 24))
  {
    goto LABEL_4;
  }

  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v2 = sub_225CCE444();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_225CCE444();

    [v3 removePersistentDomainForName_];

LABEL_4:

    return;
  }

  __break(1u);
}

void UserDefaultsConfiguration.userDefaults.getter()
{
  if (*(v0 + 24))
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = sub_225CCE444();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      __break(1u);
    }
  }

  else
  {
    v4 = [objc_opt_self() standardUserDefaults];

    v5 = v4;
  }
}

void UserDefaultsConfiguration.__deallocating_deinit()
{
  if (*(v0 + 24))
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v2 = sub_225CCE444();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = sub_225CCE444();

    [v3 removePersistentDomainForName_];
  }

  swift_deallocClassInstance();
}

uint64_t static UserDefaultsConfiguration.standard.getter()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t static UserDefaultsConfiguration.unitTest(disambiguator:)(uint64_t a1, uint64_t a2)
{
  sub_225CCF204();

  MEMORY[0x22AA6CE70](a1, a2);
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000025;
  *(result + 24) = 0x8000000225D15B50;
  return result;
}

uint64_t sub_2259D0578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2259D05C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2259D061C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2259D0634(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259D0664(uint64_t a1)
{
  v2 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_225CCF144();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v39 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v3 & ~(v3 >> 63), 0);
    v32 = v39;
    if (v29)
    {
      result = sub_225CCF464();
    }

    else
    {
      result = sub_225CCF0F4();
      v5 = *(v2 + 36);
    }

    v36 = result;
    v37 = v5;
    v38 = v29 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v27 = v3;
      v28 = v2;
      while (v6 < v3)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_26;
        }

        v13 = v36;
        v14 = v38;
        v30 = v6 + 1;
        v31 = v37;
        sub_225B3D508(&v35, v36, v37, v38, v2);
        v16 = v15;
        v17 = v35;
        v33 = 0;
        v34 = 0xE000000000000000;
        v18 = CBOR.readableString.getter();
        if (v1)
        {

          sub_2259D8B18(v13, v31, v14);
        }

        MEMORY[0x22AA6CE70](v18);

        MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
        v19 = CBOR.readableString.getter();
        MEMORY[0x22AA6CE70](v19);

        v20 = v33;
        v21 = v34;
        v22 = v32;
        v39 = v32;
        v24 = *(v32 + 16);
        v23 = *(v32 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_2259D52A4((v23 > 1), v24 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v21;
        v32 = v22;
        if (v29)
        {
          v2 = v28;
          if (!v14)
          {
            goto LABEL_28;
          }

          if (sub_225CCF494())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADA8);
          v26 = sub_225CCE314();
          sub_225CCF514();
          result = v26(&v33, 0);
        }

        else
        {
          v2 = v28;
          sub_2259D8074(v13, v31, v14, v28);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          result = sub_2259D8B18(v13, v31, v14);
          v36 = v8;
          v37 = v10;
          v38 = v12 & 1;
        }

        ++v6;
        v3 = v27;
        if (v30 == v27)
        {
          sub_2259D8B18(v36, v37, v38);
          return v32;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t COSEKey.publicKeyIdentifier.getter()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCE264();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCE254();
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = xmmword_225CD4150;
  sub_225CCCF44();
  sub_225CCD474();
  v14 = v35;
  if (v35 >> 60 == 15)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v15 = off_28105B918;
    v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v17));
    (*(v1 + 16))(v4, &v15[v16], v0);
    os_unfair_lock_unlock(&v15[v17]);
    v18 = sub_225CCD934();
    v19 = sub_225CCED04();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2259A7000, v18, v19, "Can't fetch EC2 parameters from COSEKey", v20, 2u);
      MEMORY[0x22AA6F950](v20, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v21 = 0;
  }

  else
  {
    v29 = v36;
    v30 = v37;
    v31 = v34;
    sub_2259BEF00(v38, v39);
    sub_225CCCFC4();
    sub_225CCCFC4();
    v22 = v33;
    sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598]);
    v28 = v10;
    sub_225CCDB94();
    sub_2259CB710(v22, *(&v22 + 1));
    sub_2259D7024(v22, *(&v22 + 1));
    sub_2259BEF00(v22, *(&v22 + 1));
    sub_225CCDB84();
    (*(v6 + 8))(v9, v5);
    sub_2259D7204(&qword_27D73AC00, MEMORY[0x277CC5578]);
    v23 = v28;
    v24 = sub_225CCE154();
    v26 = sub_2259D732C(v24, v25);

    v21 = sub_2259D8490(v26);

    sub_2259BEF00(v29, v30);
    sub_2259BEF00(v31, v14);
    (*(v32 + 8))(v13, v23);
  }

  sub_2259BEF00(v33, *(&v33 + 1));
  return v21;
}

BOOL COSEKey.isEC2.getter()
{
  sub_225CCD474();
  v0 = v3 >> 60;
  if (v3 >> 60 != 15)
  {
    sub_2259CB640(v2, &qword_27D73AC08);
  }

  return v0 < 0xF;
}

BOOL COSEKey.isOKP.getter()
{
  sub_225CCD484();
  v0 = v3 >> 60;
  if (v3 >> 60 != 15)
  {
    sub_2259CB640(v2, &qword_27D73AC10);
  }

  return v0 < 0xF;
}

uint64_t COSEKey.publicKeyData.getter()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v37[-v8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37[-v11];
  sub_225CCD474();
  if (v38 >> 60 == 15)
  {
    sub_225CCD484();
    if (v46 >> 60 == 15)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v13 = off_28105B918;
      v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v15));
      (*(v1 + 16))(v5, &v13[v14], v0);
      os_unfair_lock_unlock(&v13[v15]);
      v16 = sub_225CCD934();
      v17 = sub_225CCED04();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2259A7000, v16, v17, "Key is neither EC2 or OKP", v18, 2u);
        MEMORY[0x22AA6F950](v18, -1, -1);
      }

      (*(v1 + 8))(v5, v0);
      return 0;
    }

    sub_2259CB640(&v45, &qword_27D73AC10);
    sub_225CCD484();
    if (v40 >> 60 == 15)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v26 = off_28105B918;
      v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v28));
      (*(v1 + 16))(v9, &v26[v27], v0);
      os_unfair_lock_unlock(&v26[v28]);
      v29 = sub_225CCD934();
      v30 = sub_225CCED04();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2259A7000, v29, v30, "Can't fetch OKP parameters from COSEKey", v31, 2u);
        MEMORY[0x22AA6F950](v31, -1, -1);
      }

      (*(v1 + 8))(v9, v0);
      return 0;
    }

    v36 = v39;
    sub_2259BEF00(v41, v42);
    return v36;
  }

  else
  {
    sub_2259CB640(v37, &qword_27D73AC08);
    sub_225CCD474();
    v19 = v40;
    if (v40 >> 60 == 15)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v20 = off_28105B918;
      v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v22));
      (*(v1 + 16))(v12, &v20[v21], v0);
      os_unfair_lock_unlock(&v20[v22]);
      v23 = sub_225CCD934();
      v24 = sub_225CCED04();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2259A7000, v23, v24, "Can't fetch EC2 parameters from COSEKey", v25, 2u);
        MEMORY[0x22AA6F950](v25, -1, -1);
      }

      (*(v1 + 8))(v12, v0);
      return 0;
    }

    v34 = v41;
    v33 = v42;
    v35 = v39;
    sub_2259BEF00(v43, v44);
    v45 = xmmword_225CD4150;
    sub_225CCCFC4();
    sub_225CCCFC4();
    sub_2259BEF00(v34, v33);
    sub_2259BEF00(v35, v19);
    return v45;
  }
}

uint64_t COSEKey.publicKeyX963Representation.getter()
{
  v16 = *MEMORY[0x277D85DE8];
  result = COSEKey.publicKeyData.getter();
  if (v1 >> 60 != 15)
  {
    v2 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v2 != 2)
      {
        v3 = 0;
        goto LABEL_12;
      }

      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v2)
    {
      v3 = BYTE6(v1);
      goto LABEL_12;
    }

    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_16;
    }

    v3 = v3;
LABEL_12:
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (!v6)
    {
      v8 = v1;
      v9 = result;
      v14 = sub_2259D856C(v7);
      v15 = v10;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC18);
      v13 = sub_2259D8B24(&qword_27D73AC20, &qword_27D73AC18);
      LOBYTE(v11[0]) = 4;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      sub_225CCCF24();
      __swift_destroy_boxed_opaque_existential_0(v11);
      sub_225CCCFC4();
      sub_2259B97A8(v9, v8);
      return v14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t COSEKey.init(ec2CurveIdentifier:publicKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC28);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v111[-v10];
  v12 = sub_225CCD954();
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v111[-v19];
  result = MEMORY[0x28223BE20](v18, v21);
  v25 = &v111[-v24];
  if (a1 != 3)
  {
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        sub_2259BEF00(a2, a3);
LABEL_96:
        v110 = sub_225CCD494();
        return (*(*(v110 - 8) + 56))(a4, 1, 1, v110);
      }

      v26 = a3 >> 62;
      v115 = a4;
      if ((a3 >> 62) <= 1)
      {
        if (!v26)
        {
          if (BYTE6(a3) != 65)
          {
            goto LABEL_51;
          }

LABEL_30:
          sub_2259CB710(a2, a3);
          sub_2259D2468(1, a2, a3, &v116);
          v48 = v116;
          v49 = v117;
          v50 = sub_2259D8490(&unk_2838FB070);
          v25 = v51;
          v52 = sub_2259D8228(v48, v49, v50, v51);
          sub_2259BEF00(v50, v25);
          sub_2259BEF00(v48, v49);
          if (v52)
          {
            v36 = 33;
            v20 = 65;
LABEL_32:
            v12 = 1;
            if (v26)
            {
              goto LABEL_63;
            }

LABEL_71:
            v63 = sub_225CCCFD4();
            v65 = v64;
            sub_225CCCFD4();
            if (v20 >= v36)
            {
              sub_225CCCFD4();
              sub_225CCD464();
              sub_2259BEF00(v63, v65);
              sub_2259BEF00(a2, a3);
              v66 = sub_225CCD494();
              v67 = *(v66 - 8);
              if (!(*(v67 + 48))(v11, 1, v66))
              {
                v68 = v115;
                (*(v67 + 32))(v115, v11, v66);
                return (*(v67 + 56))(v68, 0, 1, v66);
              }

              sub_2259CB640(v11, &qword_27D73AC28);
              goto LABEL_95;
            }

            __break(1u);
            goto LABEL_98;
          }

          goto LABEL_34;
        }

        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          if (HIDWORD(a2) - a2 == 65)
          {
            goto LABEL_30;
          }

LABEL_51:
          if (v26 == 2)
          {
            goto LABEL_68;
          }

          if (v26 == 1)
          {
            if (!__OFSUB__(HIDWORD(a2), a2))
            {
              if (HIDWORD(a2) - a2 == 64)
              {
                goto LABEL_70;
              }

              goto LABEL_89;
            }

            goto LABEL_108;
          }

          if (BYTE6(a3) != 64)
          {
LABEL_89:
            v96 = v23;
            if (qword_28105B910 != -1)
            {
              swift_once();
            }

            v97 = off_28105B918;
            v98 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
            v99 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
            os_unfair_lock_lock((off_28105B918 + v99));
            (*(v96 + 16))(v25, &v97[v98], v12);
            os_unfair_lock_unlock(&v97[v99]);
            sub_2259CB710(a2, a3);
            v100 = sub_225CCD934();
            v101 = sub_225CCED14();
            sub_2259BEF00(a2, a3);
            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v113 = v102;
              v114 = swift_slowAlloc();
              v116 = v114;
              *v102 = 136315138;
              v118 = sub_225B34448(a2, a3);
              v112 = v101;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
              sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
              v103 = sub_225CCE384();
              v105 = v104;

              v106 = sub_2259BE198(v103, v105, &v116);

              v107 = v113;
              *(v113 + 1) = v106;
              v108 = v107;
              _os_log_impl(&dword_2259A7000, v100, v112, "Public key not in expected format for P256 COSEKey: %s", v107, 0xCu);
              v109 = v114;
              __swift_destroy_boxed_opaque_existential_0(v114);
              MEMORY[0x22AA6F950](v109, -1, -1);
              MEMORY[0x22AA6F950](v108, -1, -1);

              sub_2259BEF00(a2, a3);
            }

            else
            {
              sub_2259BEF00(a2, a3);
            }

            (*(v96 + 8))(v25, v12);
            goto LABEL_95;
          }

LABEL_70:
          while (1)
          {
            v12 = 0;
            v36 = 32;
            v20 = 64;
            if (!v26)
            {
              goto LABEL_71;
            }

LABEL_63:
            if (v26 == 2)
            {
              result = *(a2 + 16);
              v59 = *(a2 + 24);
            }

            else
            {
              result = a2;
              v59 = a2 >> 32;
            }

            if (v59 >= result)
            {
              goto LABEL_71;
            }

            __break(1u);
LABEL_68:
            v61 = *(a2 + 16);
            v60 = *(a2 + 24);
            v29 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v29)
            {
              goto LABEL_110;
            }

            if (v62 != 64)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_104;
      }

      if (v26 != 2)
      {
        goto LABEL_89;
      }

      v46 = *(a2 + 16);
      v45 = *(a2 + 24);
      v29 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (!v29)
      {
        if (v47 == 65)
        {
          goto LABEL_30;
        }

        goto LABEL_51;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v26 = a3 >> 62;
    v115 = a4;
    if ((a3 >> 62) > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_76;
      }

      v28 = *(a2 + 16);
      v27 = *(a2 + 24);
      v29 = __OFSUB__(v27, v28);
      v30 = v27 - v28;
      if (!v29)
      {
        if (v30 != 97)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else
    {
      if (!v26)
      {
        if (BYTE6(a3) != 97)
        {
LABEL_37:
          if (v26 == 2)
          {
            v54 = *(a2 + 16);
            v53 = *(a2 + 24);
            v29 = __OFSUB__(v53, v54);
            v55 = v53 - v54;
            if (v29)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            if (v55 != 96)
            {
              goto LABEL_76;
            }
          }

          else if (v26 == 1)
          {
            if (__OFSUB__(HIDWORD(a2), a2))
            {
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            if (HIDWORD(a2) - a2 != 96)
            {
LABEL_76:
              v26 = v23;
              if (qword_28105B910 == -1)
              {
LABEL_77:
                v69 = off_28105B918;
                v70 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
                v71 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
                os_unfair_lock_lock((off_28105B918 + v71));
                (*(v26 + 16))(v20, &v69[v70], v12);
                os_unfair_lock_unlock(&v69[v71]);
                sub_2259CB710(a2, a3);
                v72 = sub_225CCD934();
                v73 = sub_225CCED14();
                sub_2259BEF00(a2, a3);
                if (os_log_type_enabled(v72, v73))
                {
                  v74 = swift_slowAlloc();
                  v113 = v74;
                  v114 = swift_slowAlloc();
                  v116 = v114;
                  *v74 = 136315138;
                  v118 = sub_225B34448(a2, a3);
                  v112 = v73;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
                  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
                  v75 = sub_225CCE384();
                  v77 = v76;

                  v78 = sub_2259BE198(v75, v77, &v116);

                  v79 = v113;
                  *(v113 + 1) = v78;
                  v80 = v79;
                  _os_log_impl(&dword_2259A7000, v72, v112, "Public key not in expected format for P384 COSEKey: %s", v79, 0xCu);
                  v81 = v114;
                  __swift_destroy_boxed_opaque_existential_0(v114);
                  MEMORY[0x22AA6F950](v81, -1, -1);
                  MEMORY[0x22AA6F950](v80, -1, -1);

                  sub_2259BEF00(a2, a3);
                }

                else
                {
                  sub_2259BEF00(a2, a3);
                }

                (*(v26 + 8))(v20, v12);
                goto LABEL_95;
              }

LABEL_98:
              swift_once();
              goto LABEL_77;
            }
          }

          else if (BYTE6(a3) != 96)
          {
            goto LABEL_76;
          }

          v12 = 0;
          v36 = 48;
          v20 = 96;
          if (v26)
          {
            goto LABEL_63;
          }

          goto LABEL_71;
        }

LABEL_20:
        sub_2259CB710(a2, a3);
        sub_2259D2468(1, a2, a3, &v116);
        v31 = v116;
        v32 = v117;
        v33 = sub_2259D8490(&unk_2838FB098);
        v25 = v34;
        v35 = sub_2259D8228(v31, v32, v33, v34);
        sub_2259BEF00(v33, v25);
        sub_2259BEF00(v31, v32);
        if (v35)
        {
          v36 = 49;
          v20 = 97;
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        if (HIDWORD(a2) - a2 != 97)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

  v26 = a3 >> 62;
  v115 = a4;
  if ((a3 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_82;
    }

    v38 = *(a2 + 16);
    v37 = *(a2 + 24);
    v29 = __OFSUB__(v37, v38);
    v39 = v37 - v38;
    if (v29)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (v39 == 133)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!v26)
    {
      if (BYTE6(a3) != 133)
      {
        goto LABEL_44;
      }

LABEL_25:
      sub_2259CB710(a2, a3);
      sub_2259D2468(1, a2, a3, &v116);
      v40 = v116;
      v41 = v117;
      v42 = sub_2259D8490(&unk_2838FB0C0);
      v25 = v43;
      v44 = sub_2259D8228(v40, v41, v42, v43);
      sub_2259BEF00(v42, v25);
      sub_2259BEF00(v40, v41);
      if (v44)
      {
        v36 = 67;
        v20 = 133;
        goto LABEL_32;
      }

LABEL_34:
      sub_2259BEF00(a2, a3);
LABEL_95:
      a4 = v115;
      goto LABEL_96;
    }

    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (HIDWORD(a2) - a2 == 133)
    {
      goto LABEL_25;
    }
  }

LABEL_44:
  if (v26 == 2)
  {
    v57 = *(a2 + 16);
    v56 = *(a2 + 24);
    v29 = __OFSUB__(v56, v57);
    v58 = v56 - v57;
    if (v29)
    {
      goto LABEL_109;
    }

    if (v58 == 132)
    {
      goto LABEL_62;
    }

    goto LABEL_82;
  }

  if (v26 != 1)
  {
    if (BYTE6(a3) == 132)
    {
      goto LABEL_62;
    }

LABEL_82:
    v82 = v23;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v83 = off_28105B918;
    v84 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v85 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v85));
    (*(v82 + 16))(v16, &v83[v84], v12);
    os_unfair_lock_unlock(&v83[v85]);
    sub_2259CB710(a2, a3);
    v86 = sub_225CCD934();
    v87 = sub_225CCED14();
    sub_2259BEF00(a2, a3);
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v113 = v88;
      v114 = swift_slowAlloc();
      v116 = v114;
      *v88 = 136315138;
      v118 = sub_225B34448(a2, a3);
      v112 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
      v89 = sub_225CCE384();
      v91 = v90;

      v92 = sub_2259BE198(v89, v91, &v116);

      v93 = v113;
      *(v113 + 1) = v92;
      v94 = v93;
      _os_log_impl(&dword_2259A7000, v86, v112, "Public key not in expected format for P384 COSEKey: %s", v93, 0xCu);
      v95 = v114;
      __swift_destroy_boxed_opaque_existential_0(v114);
      MEMORY[0x22AA6F950](v95, -1, -1);
      MEMORY[0x22AA6F950](v94, -1, -1);

      sub_2259BEF00(a2, a3);
    }

    else
    {
      sub_2259BEF00(a2, a3);
    }

    (*(v82 + 8))(v16, v12);
    goto LABEL_95;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    if (HIDWORD(a2) - a2 != 132)
    {
      goto LABEL_82;
    }

LABEL_62:
    v12 = 0;
    v36 = 66;
    v20 = 132;
    if (v26)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t sub_2259D2468@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_225B4DCB0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_225B4DC4C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_225CCCF54();
    v15 = v14;
    result = sub_2259BEF00(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2259D25B0(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD90);
  if (swift_dynamicCast())
  {
    sub_2259A9C20(v38, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_225CCCB84();
    v38[0] = v40;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_2259CB640(v38, &qword_27D73AD98);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v38[0] = a1;
    *(&v38[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v38;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_225CCF354();
  }

  sub_2259D6A5C(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    v38[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v38[0] = sub_2259D89F0(v8);
  *(&v38[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v38[0], v9);
  v10 = sub_2259D6B24(sub_2259D8A90);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v38[0] + 16);
      v18 = *(*&v38[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v38[0]), v38[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v38[0]) - LODWORD(v38[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v38[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v38[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v38[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_225CCCF24();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v38[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_225C15CB8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_225CCE654();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_225CCE684();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_225CCF354();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_225C15CB8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_225CCE664();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_225CCCF44();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_225CCCF44();
    sub_2259B97A8(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_2259B97A8(v35, v6);
LABEL_63:
  v32 = v38[0];
  sub_2259CB710(*&v38[0], *(&v38[0] + 1));

  sub_2259BEF00(v32, *(&v32 + 1));
  return v32;
}

void sub_2259D2AD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD80);
  v16[3] = v8;
  v16[4] = sub_2259D8B24(&qword_27D73AD88, &qword_27D73AD80);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_225B3D3E8((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

unint64_t sub_2259D2BE8(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_225A6D08C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_2259D8390(v3, v4);
    }

    else
    {
      v6 = sub_2259D840C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_2259D2CC4()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](16);
  return sub_225CCFC24();
}

uint64_t sub_2259D2D30()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](16);
  return sub_225CCFC24();
}

uint64_t COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  sub_225CCD2F4();
  v6 = sub_225CCD354();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6))
  {
    sub_2259CB640(v5, &qword_27D73AC30);
    v8 = 1;
  }

  else
  {
    (*(v7 + 32))(a1, v5, v6);
    v8 = 0;
  }

  return (*(v7 + 56))(a1, v8, 1, v6);
}

uint64_t COSE_Sign1.init(fromHexData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v80 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v76 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v78 = &v76 - v11;
  v12 = sub_225CCCA04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2259CB710(a1, a2);
  v17 = sub_2259D7EC8(a1, a2);
  v82 = a2;
  v81 = a1;
  if (!v18)
  {
    v92 = a1;
    v93 = a2;
    sub_2259CB710(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC38);
    if (swift_dynamicCast())
    {
      sub_2259A9C20(v90, &v83);
      __swift_project_boxed_opaque_existential_1(&v83, v86);
      if (sub_225CCF5A4())
      {
        sub_2259BEF00(v81, v82);
        __swift_project_boxed_opaque_existential_1(&v83, v86);
        sub_225CCF594();
        v19 = v3;
        v21 = *(&v90[0] + 1);
        v20 = *&v90[0];
        __swift_destroy_boxed_opaque_existential_0(&v83);
        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_0(&v83);
      a2 = v82;
      a1 = v81;
    }

    else
    {
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      sub_2259CB640(v90, &qword_27D73AC40);
    }

    v17 = sub_2259D6F7C(a1, a2);
  }

  v20 = v17;
  v21 = v18;
  sub_2259BEF00(a1, a2);
  v19 = v3;
LABEL_9:
  v83 = v20;
  v84 = v21;
  sub_225CCC9F4();
  sub_2259D8654();
  sub_225CCF054();
  (*(v13 + 8))(v16, v12);

  v22 = Data.init(base16Encoded:)();
  if (v23 >> 60 == 15)
  {
    v80 = 0x8000000225D15BE0;
    v79 = 0x8000000225D15C10;
    v24 = MEMORY[0x277D84F90];
    v25 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    v31 = v78;
    (*(v30 + 56))(v78, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v31, 1, v29);
    sub_2259CB640(v31, &unk_27D73B050);
    if (v29)
    {
      v32 = 131;
    }

    else
    {
      v32 = 23;
    }

    v33 = sub_225B2C374(v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v33;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v83);

    v35 = v83;
    v36 = sub_225B29AA0(0, 1, 1, v24);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD000000000000018;
    *(v39 + 5) = 0x8000000225D15BC0;
    *(v39 + 6) = 0xD000000000000022;
    *(v39 + 7) = v80;
    *(v39 + 8) = 0xD000000000000012;
    *(v39 + 9) = v79;
    *(v39 + 10) = 188;
    *v28 = v32;
    *(v28 + 8) = v36;
    *(v28 + 16) = 0xD000000000000018;
    *(v28 + 24) = 0x8000000225D15BC0;
    *(v28 + 32) = v35;
    *(v28 + 40) = 0;
    swift_willThrow();
    v77 = 0;
  }

  else
  {
    v40 = v22;
    v41 = v23;
    sub_225CCD3A4();
    swift_allocObject();
    sub_225CCD394();
    sub_225CCD354();
    sub_2259D7204(&qword_27D73AC50, MEMORY[0x277CF3948]);
    sub_225CCD364();
    if (!v19)
    {
      sub_2259BEF00(v81, v82);
      sub_2259B97A8(v40, v41);
    }

    sub_2259B97A8(v40, v41);

    v77 = 0;
    v80 = 0x8000000225D15BE0;
    v79 = 0x8000000225D15C10;
    v26 = v19;
  }

  v42 = v26;
  v43 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v44 = swift_allocError();
  v46 = v45;
  swift_getErrorValue();
  v47 = v89;
  v48 = v26;
  sub_225B21FAC(v47, &v83);

  v49 = v84;
  v78 = v44;
  if (v84)
  {
    v76 = v83;
    v51 = v85;
    v50 = v86;
    v52 = v87;
    v53 = v88;
  }

  else
  {
    v83 = v26;
    v54 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v55 = *&v90[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v57 = [v55 code];
      v58 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v58;
      *(inited + 40) = v57;
      v52 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v59 = v26;
      v50 = 0;
      v51 = 0;
      v49 = MEMORY[0x277D84F90];
      v76 = 131;
    }

    else
    {
      v83 = v26;
      v61 = v26;
      v62 = sub_225CCE954();
      v63 = v76;
      v64 = swift_dynamicCast();
      v65 = *(v62 - 8);
      (*(v65 + 56))(v63, v64 ^ 1u, 1, v62);
      v66 = (*(v65 + 48))(v63, 1, v62);
      sub_2259CB640(v63, &unk_27D73B050);
      if (v66)
      {
        v67 = 131;
      }

      else
      {
        v67 = 23;
      }

      v76 = v67;
      v49 = MEMORY[0x277D84F90];
      v52 = sub_225B2C374(MEMORY[0x277D84F90]);
      v68 = v26;
      v50 = 0;
      v51 = 0;
    }

    v53 = v26;
  }

  v69 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v52;
  sub_225B2C4A0(v43, sub_225B2AC40, 0, v69, &v83);

  v70 = v83;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_225B29AA0(0, *(v49 + 2) + 1, 1, v49);
  }

  v72 = *(v49 + 2);
  v71 = *(v49 + 3);
  if (v72 >= v71 >> 1)
  {
    v49 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v49);
  }

  *(v49 + 2) = v72 + 1;
  v73 = &v49[56 * v72];
  *(v73 + 4) = 0;
  *(v73 + 5) = 0;
  v74 = v80;
  *(v73 + 6) = 0xD000000000000022;
  *(v73 + 7) = v74;
  v75 = v79;
  *(v73 + 8) = 0xD000000000000012;
  *(v73 + 9) = v75;
  *(v73 + 10) = 192;
  *v46 = v76;
  *(v46 + 8) = v49;
  *(v46 + 16) = v51;
  *(v46 + 24) = v50;
  *(v46 + 32) = v70;
  *(v46 + 40) = v53;
  swift_willThrow();

  return sub_2259BEF00(v81, v82);
}

uint64_t COSE_Sign1.init(from:)(uint64_t a1, unint64_t a2)
{
  sub_225CCD3A4();
  swift_allocObject();
  sub_225CCD394();
  sub_225CCD354();
  sub_2259D7204(&qword_27D73AC50, MEMORY[0x277CF3948]);
  sub_225CCD364();
  sub_2259BEF00(a1, a2);
}

uint64_t COSE_Sign1.typ.getter()
{
  v0 = objc_opt_self();
  v1 = MEMORY[0x22AA6BB50]();
  v3 = v2;
  v4 = sub_225CCCF74();
  sub_2259BEF00(v1, v3);
  v5 = [v0 decodeFromData_];

  if (v5)
  {
    v6 = v5;
    CBOR.dictionaryValue(for:)(0x10);
    v8 = v7;

    if (v8)
    {
      v9 = [v8 string];
      if (v9)
      {
        v10 = v9;
        v11 = sub_225CCE474();

        return v11;
      }
    }

    else
    {
    }
  }

  return 0;
}

void CBOR.dictionaryValue(for:)(id a1)
{
  v2 = [v1 dictionary];
  if (v2)
  {
    v3 = v2;
    sub_2259D8718(0, &qword_27D73AC58);
    sub_2259D86A8();
    v4 = sub_225CCE2D4();

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = sub_225CCF474() | 0x8000000000000000;
    }

    else
    {
      v9 = -1 << *(v4 + 32);
      v6 = ~v9;
      v5 = v4 + 64;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v7 = v11 & *(v4 + 64);
      v8 = v4;
    }

    v12 = 0;
    v13 = (v6 + 64) >> 6;
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v14 = v12;
    v15 = v7;
    if (v7)
    {
LABEL_14:
      v7 = (v15 - 1) & v15;
      v16 = (v12 << 9) | (8 * __clz(__rbit64(v15)));
      v17 = *(*(v8 + 56) + v16);
      v18 = *(*(v8 + 48) + v16);
      v19 = v17;
      if (v18)
      {
        while (1)
        {
          v20 = v6;
          v21 = [v18 numeric];
          v22 = [v21 integerValue];

          if (v22 == a1)
          {
            break;
          }

          v6 = v20;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          if (sub_225CCF504())
          {
            swift_dynamicCast();
            v18 = v24;
            swift_dynamicCast();
            v19 = v24;
            if (v24)
            {
              continue;
            }
          }

          goto LABEL_21;
        }

        sub_2259D8710();
      }

      else
      {
LABEL_21:
        sub_2259D8710();
      }
    }

    else
    {
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v13)
        {
          goto LABEL_21;
        }

        v15 = *(v5 + 8 * v12);
        ++v14;
        if (v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

BOOL COSE_Sign1.isTagged.getter()
{
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  sub_225CCD354();
  sub_2259D7204(&qword_27D73AC68, MEMORY[0x277CF3948]);
  v0 = sub_225CCD3F4();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = sub_225CCCF74();
  v5 = [v3 decodeFromData_];

  if (v5)
  {
    v6 = [v5 tag];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 numeric];
      v9 = [v8 integerValue];
      sub_2259BEF00(v0, v2);

      return v9 == 18;
    }
  }

  sub_2259BEF00(v0, v2);
  return 0;
}

id sub_2259D3F94()
{
  result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  qword_27D73ABF0 = result;
  return result;
}

uint64_t CBOR.readableString.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  [v0 type];
  return 0x6E776F6E6B6E7522;
}

void CBOR.dictionaryValue(for:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 dictionary];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_2259D8718(0, &qword_27D73AC58);
  sub_2259D86A8();
  v5 = sub_225CCE2D4();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_225CCF474() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = ~v10;
    v6 = v5 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v5 + 64);
    v9 = v5;
  }

  v13 = 0;
  v14 = (v7 + 64) >> 6;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_225CCF504() || (swift_dynamicCast(), v20 = v32, swift_dynamicCast(), v21 = v32, v17 = v8, !v32))
    {
LABEL_26:
      sub_2259D8710();

      return;
    }

LABEL_19:
    v22 = [v20 string];
    if (v22)
    {
      v23 = v22;
      v24 = v9;
      v25 = sub_225CCE474();
      v27 = v26;

      if (v25 == a1 && v27 == a2)
      {

LABEL_29:
        sub_2259D8710();

        return;
      }

      v29 = sub_225CCF934();

      v9 = v24;
      if (v29)
      {
        goto LABEL_29;
      }
    }

    v8 = v17;
  }

  v15 = v13;
  v16 = v8;
  if (v8)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = (v13 << 9) | (8 * __clz(__rbit64(v16)));
    v19 = *(*(v9 + 56) + v18);
    v20 = *(*(v9 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v14)
    {
      goto LABEL_26;
    }

    v16 = *(v6 + 8 * v13);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_2259D5238(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2259D52A4(char *a1, int64_t a2, char a3)
{
  result = sub_2259D56F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D52C4(char *a1, int64_t a2, char a3)
{
  result = sub_2259D5804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D52E4(char *a1, int64_t a2, char a3)
{
  result = sub_2259D5910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D5304(char *a1, int64_t a2, char a3)
{
  result = sub_2259D6010(a1, a2, a3, *v3, &qword_27D73AD10);
  *v3 = result;
  return result;
}

void *sub_2259D5334(void *a1, int64_t a2, char a3)
{
  result = sub_2259D5A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2259D5354(size_t a1, int64_t a2, char a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73AD60, &unk_225CD4300, type metadata accessor for CredentialBuilderPayloadDetails.Element);
  *v3 = result;
  return result;
}

size_t sub_2259D5398(size_t a1, int64_t a2, char a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73AD58, &unk_225CD42F8, type metadata accessor for ProofingDisplayMessageAction);
  *v3 = result;
  return result;
}

char *sub_2259D53DC(char *a1, int64_t a2, char a3)
{
  result = sub_2259D5B64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D53FC(void *a1, int64_t a2, char a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AD40, &unk_225CD42E0, &qword_27D73AD48);
  *v3 = result;
  return result;
}

char *sub_2259D543C(char *a1, int64_t a2, char a3)
{
  result = sub_2259D5C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D545C(void *a1, int64_t a2, char a3)
{
  result = sub_2259D5D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D547C(void *a1, int64_t a2, char a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AD18, &unk_225CD42C0, &qword_27D73AD20);
  *v3 = result;
  return result;
}

void *sub_2259D54BC(void *a1, int64_t a2, char a3)
{
  result = sub_2259D5EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2259D54DC(size_t a1, int64_t a2, char a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73ACF8, &unk_225CD42A8, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_2259D5520(char *a1, int64_t a2, char a3)
{
  result = sub_2259D6010(a1, a2, a3, *v3, &qword_27D73ACF0);
  *v3 = result;
  return result;
}

char *sub_2259D5550(char *a1, int64_t a2, char a3)
{
  result = sub_2259D610C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D5570(char *a1, int64_t a2, char a3)
{
  result = sub_2259D6210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2259D5590(size_t a1, int64_t a2, char a3)
{
  result = sub_2259D6330(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2259D55B0(size_t a1, int64_t a2, char a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73ACA8, &unk_225CD4260, MEMORY[0x277D6AA08]);
  *v3 = result;
  return result;
}

size_t sub_2259D55F4(size_t a1, int64_t a2, char a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73ACB0, &unk_225CD4268, type metadata accessor for HashDigest);
  *v3 = result;
  return result;
}

char *sub_2259D5638(char *a1, int64_t a2, char a3)
{
  result = sub_2259D66FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D5658(void *a1, int64_t a2, char a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AC78, &unk_225CD4240, &qword_27D73AC80);
  *v3 = result;
  return result;
}

char *sub_2259D5698(char *a1, int64_t a2, char a3)
{
  result = sub_2259D6808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D56B8(void *a1, int64_t a2, char a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AC90, &unk_225CD4250, &qword_27D73AC98);
  *v3 = result;
  return result;
}

char *sub_2259D56F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
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

char *sub_2259D5804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADA0);
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

char *sub_2259D5910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2259D5A30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2259D5B64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD50);
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

char *sub_2259D5C84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD38);
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

void *sub_2259D5D90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2259D5EDC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD00);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2259D6010(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
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

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
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
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_2259D610C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE8);
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

char *sub_2259D6210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE0);
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

size_t sub_2259D6330(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0) - 8);
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

size_t sub_2259D6520(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

char *sub_2259D66FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACA0);
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

char *sub_2259D6808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2259D6928(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

unint64_t sub_2259D6A5C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_225A6D08C(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_225CCCA94();
      swift_allocObject();
      v8 = sub_225CCCA34();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_2259D6B24(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_2259BEF00(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2259BEF00(v6, v5);
    *v3 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_225CCCA44() && __OFSUB__(v6, sub_225CCCA74()))
      {
LABEL_26:
        __break(1u);
      }

      sub_225CCCA94();
      swift_allocObject();
      v13 = sub_225CCCA24();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_2259D6EC8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_2259BEF00(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    sub_225CCCEB4();
    result = sub_2259D6EC8(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

char *sub_2259D6EC8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_225CCCA44();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_225CCCA74();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_225CCCA64();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2259D6F7C(uint64_t a1, unint64_t a2)
{
  sub_2259CB710(a1, a2);
  sub_2259F4494(a1, a2);
  v4 = sub_225CCE594();

  return v4;
}

uint64_t sub_2259D6FE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_225CCE594();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2259D7024(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_225CCE264();
      sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598]);
      return sub_225CCDB74();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2259D724C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_2259D724C(v4, v5);
  }

  sub_225CCE264();
  sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598]);
  return sub_225CCDB74();
}

uint64_t sub_2259D7204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2259D724C(uint64_t a1, uint64_t a2)
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      sub_225CCE264();
      sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598]);
      return sub_225CCDB74();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2259D732C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2259D7494(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *))
{
  v128 = a3;
  v5 = sub_225CCD704();
  v113 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v127 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v125 = (&v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10, v12);
  v131 = (&v100 - v14);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v100 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v111 = &v100 - v20;
  v21 = type metadata accessor for HashDigest();
  v108 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v25 = (&v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23, v26);
  v116 = &v100 - v27;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD0);
  v28 = *(v130 - 8);
  v30 = MEMORY[0x28223BE20](v130, v29);
  v124 = (&v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v30, v32);
  v105 = &v100 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v114 = &v100 - v36;
  v37 = *(a1 + 16);
  v112 = a2;
  v129 = *(a2 + 16);
  if (v129 >= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v129;
  }

  v104 = a1;
  v126 = v5;
  v110 = v28;
  v106 = v37;
  v107 = v18;
  v117 = v38;
  if (!v38)
  {
    v65 = *(v28 + 80);
    v66 = MEMORY[0x277D84F90];
    v67 = *(MEMORY[0x277D84F90] + 24);

    v64 = v66;
    v46 = 0;
    v103 = v65;
    v115 = v67 >> 1;
    v102 = (v65 + 32) & ~v65;
    v132 = v66 + v102;
    v63 = v129;
LABEL_20:
    v68 = v117;
    if (v37 <= v63)
    {
      v80 = v64;
LABEL_55:
      v96 = v80[3];
      if (v96 >= 2)
      {
        v97 = v96 >> 1;
        v54 = __OFSUB__(v97, v115);
        v98 = v97 - v115;
        if (v54)
        {
          goto LABEL_70;
        }

        v80[2] = v98;
      }

      return v80;
    }

    v131 = (v113 + 56);
    v125 = (v113 + 48);
    v124 = (v113 + 32);
    v122 = (v113 + 16);
    v123 = (v113 + 8);
    v69 = v104;
    while (1)
    {
      if (v68 >= v37)
      {
        goto LABEL_61;
      }

      v70 = v64;
      sub_2259D87C8(v69 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v68, v116);
      v71 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_62;
      }

      if (v46 == v63)
      {
        v72 = 1;
        v46 = v63;
      }

      else
      {
        if (v46 >= v63)
        {
          goto LABEL_64;
        }

        (*(v113 + 16))(v111, v112 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v46, v5);
        v54 = __OFADD__(v46++, 1);
        if (v54)
        {
          goto LABEL_65;
        }

        v72 = 0;
      }

      v73 = v111;
      (*v131)(v111, v72, 1, v5);
      sub_2259D88EC(v73, v18, &qword_27D73ACC8);
      if ((*v125)(v18, 1, v5) == 1)
      {
        sub_2259D882C(v116);
        v80 = v70;
        goto LABEL_55;
      }

      v117 = v68;
      v74 = v127;
      (*v124)(v127, v18, v5);
      v128(&v133, v74);
      (*v123)(v74, v5);
      v75 = v133;
      v76 = v134;
      v77 = v105;
      v78 = (v105 + *(v130 + 48));
      sub_2259D8888(v116, v105);
      *v78 = v75;
      v78[1] = v76;
      sub_2259D88EC(v77, v114, &qword_27D73ACD0);
      v79 = v115;
      if (!v115)
      {
        break;
      }

      v80 = v70;
      v81 = v117;
      v82 = v132;
LABEL_50:
      v54 = __OFSUB__(v79, 1);
      v115 = v79 - 1;
      v18 = v107;
      v63 = v129;
      if (v54)
      {
        goto LABEL_63;
      }

      sub_2259D88EC(v114, v82, &qword_27D73ACD0);
      v132 = v82 + *(v110 + 72);
      v68 = v81 + 1;
      v64 = v80;
      v37 = v106;
      if (v71 == v106)
      {
        goto LABEL_55;
      }
    }

    v83 = v70[3];
    if (((v83 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_66;
    }

    v84 = v83 & 0xFFFFFFFFFFFFFFFELL;
    if (v84 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD8);
    v86 = *(v110 + 72);
    v87 = v102;
    v80 = swift_allocObject();
    v88 = _swift_stdlib_malloc_size(v80);
    if (!v86)
    {
      goto LABEL_67;
    }

    v89 = v88 - v87;
    if (v88 - v87 == 0x8000000000000000 && v86 == -1)
    {
      goto LABEL_68;
    }

    v91 = v89 / v86;
    v80[2] = v85;
    v80[3] = 2 * (v89 / v86);
    v92 = v80 + v87;
    v93 = v70;
    v94 = v70[3] >> 1;
    v95 = v94 * v86;
    if (!v70[2])
    {
LABEL_49:
      v82 = &v92[v95];
      v79 = (v91 & 0x7FFFFFFFFFFFFFFFLL) - v94;

      v69 = v104;
      v5 = v126;
      v81 = v117;
      goto LABEL_50;
    }

    if (v80 < v70 || v92 >= v70 + v87 + v95)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v80 == v70)
      {
LABEL_48:
        v93[2] = 0;
        goto LABEL_49;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v93 = v70;
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD8);
  v39 = *(v28 + 72);
  v40 = *(v28 + 80);
  v41 = (v40 + 32) & ~v40;
  v103 = v40;
  v101 = swift_allocObject();
  v42 = _swift_stdlib_malloc_size(v101);
  if (!v39)
  {
    goto LABEL_69;
  }

  if (v42 - v41 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_71;
  }

  v44 = v38;
  v45 = v25;
  v46 = 0;
  v47 = (v42 - v41) / v39;
  v48 = v101;
  *(v101 + 2) = v38;
  v48[3] = 2 * v47;
  v102 = v41;
  v132 = v48 + v41;
  v109 = v113 + 16;
  v121 = (v113 + 48);
  v122 = (v113 + 56);
  v119 = (v113 + 8);
  v120 = (v113 + 32);
  v115 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - v38;
  v49 = a1 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
  v118 = *(v108 + 72);
  v123 = v25;
  while (1)
  {
    sub_2259D87C8(v49, v45);
    if (v46 != v129)
    {
      break;
    }

    v50 = 1;
    v51 = v129;
    v53 = v125;
    v52 = v126;
LABEL_16:
    v55 = v51;
    v56 = v131;
    (*v122)(v131, v50, 1, v52);
    sub_2259D88EC(v56, v53, &qword_27D73ACC8);
    if ((*v121)(v53, 1, v52) == 1)
    {
      goto LABEL_72;
    }

    v57 = v127;
    (*v120)(v127, v53, v52);
    v128(&v133, v57);
    (*v119)(v57, v52);
    v58 = v133;
    v59 = v134;
    v45 = v123;
    v60 = v124;
    v61 = (v124 + *(v130 + 48));
    sub_2259D8888(v123, v124);
    *v61 = v58;
    v61[1] = v59;
    v62 = v132;
    sub_2259D88EC(v60, v132, &qword_27D73ACD0);
    v132 = v62 + v39;
    v49 += v118;
    --v44;
    v46 = v55;
    if (!v44)
    {
      v5 = v126;
      v18 = v107;
      v37 = v106;
      v63 = v129;
      v64 = v101;
      goto LABEL_20;
    }
  }

  v52 = v126;
  if (v46 < v129)
  {
    (*(v113 + 16))(v131, v112 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v46, v126);
    v54 = __OFADD__(v46, 1);
    v51 = v46 + 1;
    v53 = v125;
    if (v54)
    {
      goto LABEL_60;
    }

    v50 = 0;
    goto LABEL_16;
  }

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
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_2259D882C(v123);
  __break(1u);
  return result;
}

uint64_t sub_2259D7EC8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_225CCE594();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_225CCE594();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_225CCCA44();
  if (a1)
  {
    a1 = sub_225CCCA74();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_225CCCA44() || !__OFSUB__(v5, sub_225CCCA74()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_225CCCA64();
  return sub_225CCE594();
}

void sub_2259D8074(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_225CCF4A4() == *(a4 + 36))
    {
      sub_225CCF4B4();
      sub_2259D8718(0, &qword_27D73AC58);
      swift_dynamicCast();
      sub_2259F1A58(v6);
      v5 = v4;

      if (v5)
      {
        sub_225CCF484();
        sub_225CCF4D4();
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

  sub_225CCF114();
}

uint64_t sub_2259D81D8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_225CCF214();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2259D8228(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2259CB710(a3, a4);
          return sub_225BEB284(v13, a2, a3, a4) & 1;
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

uint64_t sub_2259D8390(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_225CCCA94();
  swift_allocObject();
  result = sub_225CCCA34();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_225CCCF14();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2259D840C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_225CCCA94();
  swift_allocObject();
  result = sub_225CCCA34();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2259D8490(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0);
  v10 = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_225B3D3E8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_2259D856C(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_225CCCA94();
      swift_allocObject();
      sub_225CCCA84();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
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

unint64_t sub_2259D8654()
{
  result = qword_281059B70;
  if (!qword_281059B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B70);
  }

  return result;
}

unint64_t sub_2259D86A8()
{
  result = qword_27D73AC60;
  if (!qword_27D73AC60)
  {
    sub_2259D8718(255, &qword_27D73AC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AC60);
  }

  return result;
}

uint64_t sub_2259D8718(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2259D8764()
{
  result = qword_27D73AC70;
  if (!qword_27D73AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AC70);
  }

  return result;
}

uint64_t sub_2259D87C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashDigest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2259D882C(uint64_t a1)
{
  v2 = type metadata accessor for HashDigest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259D8888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashDigest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2259D88EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2259D8954(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_225CCE5F4();

    return sub_225CCE704();
  }

  return result;
}

uint64_t sub_2259D89F0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_225C0217C(result);
    }

    else
    {
      sub_225CCCA94();
      swift_allocObject();
      sub_225CCCA54();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2259D8A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2259D5238(sub_2259D8AF8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2259D8B18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2259D8B24(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Certificate.data.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

void Certificate.wrapped.getter()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_225CCCF74();
  v2 = SecCertificateCreateWithData(v0, v1);

  if (!v2)
  {
    __break(1u);
  }
}

void Certificate.init(_:)(__SecCertificate *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = SecCertificateCopyData(a1);
  v5 = sub_225CCCFA4();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

void Certificate.description.getter()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_225CCCF74();
  v2 = SecCertificateCreateWithData(v0, v1);

  if (v2)
  {
    type metadata accessor for SecCertificate(0);
    sub_225CCE504();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2259D8CD0()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  return sub_225CCFC24();
}

uint64_t sub_2259D8D14()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  return sub_225CCFC24();
}

uint64_t sub_2259D8D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2259D8DF8(uint64_t a1)
{
  v2 = sub_2259D9400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2259D8E34(uint64_t a1)
{
  v2 = sub_2259D9400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Certificate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v8, v9);
  sub_2259D9400();
  sub_225CCFCE4();
  v11 = v8;
  v12 = v9;
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v11, v12);
  return (*(v4 + 8))(v7, v3);
}

uint64_t Certificate.hashValue.getter()
{
  sub_225CCFBD4();
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t Certificate.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259D9400();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_2259D94A8();
    sub_225CCF6E4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2259D91C8()
{
  sub_225CCFBD4();
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_2259D921C()
{
  sub_225CCFBD4();
  sub_225CCCFB4();
  return sub_225CCFC24();
}

void sub_2259D9264()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_225CCCF74();
  v2 = SecCertificateCreateWithData(v0, v1);

  if (v2)
  {
    type metadata accessor for SecCertificate(0);
    sub_225CCE504();
  }

  else
  {
    __break(1u);
  }
}

void Array<A>.wrapped.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_225CCF394();
    v3 = *MEMORY[0x277CBECE8];
    v4 = (a1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_2259CB710(v5, *v4);
      sub_2259CB710(v5, v6);
      v7 = sub_225CCCF74();
      v8 = SecCertificateCreateWithData(v3, v7);

      if (!v8)
      {
        break;
      }

      v4 += 2;
      sub_2259BEF00(v5, v6);
      sub_2259BEF00(v5, v6);
      sub_225CCF364();
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2259D9400()
{
  result = qword_27D73ADC8;
  if (!qword_27D73ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADC8);
  }

  return result;
}

unint64_t sub_2259D9454()
{
  result = qword_27D742090;
  if (!qword_27D742090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742090);
  }

  return result;
}

unint64_t sub_2259D94A8()
{
  result = qword_27D7420A0;
  if (!qword_27D7420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7420A0);
  }

  return result;
}

char *_sSa13CoreIDVSharedAA11CertificateVRszlEySayACGSaySo03SecC3RefaGcfC_0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_225CCF144();
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v23 = MEMORY[0x277D84F90];
  result = sub_2259D52C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AA6DA80](v5, a1);
        v7 = SecCertificateCopyData(v6);
        v8 = sub_225CCCFA4();
        v10 = v9;
        swift_unknownObjectRelease();

        v12 = *(v23 + 16);
        v11 = *(v23 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2259D52C4((v11 > 1), v12 + 1, 1);
        }

        ++v5;
        *(v23 + 16) = v12 + 1;
        v13 = v23 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v2 != v5);
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = *(a1 + v14);
        v16 = SecCertificateCopyData(v15);
        v17 = sub_225CCCFA4();
        v19 = v18;

        v21 = *(v23 + 16);
        v20 = *(v23 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2259D52C4((v20 > 1), v21 + 1, 1);
        }

        *(v23 + 16) = v21 + 1;
        v22 = v23 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v14 += 8;
        --v2;
      }

      while (v2);
    }

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_2259D96C0()
{
  result = qword_27D73ADD8;
  if (!qword_27D73ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADD8);
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

uint64_t sub_2259D9730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2259D9784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2259D97F4()
{
  result = qword_27D73ADE0;
  if (!qword_27D73ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADE0);
  }

  return result;
}

unint64_t sub_2259D984C()
{
  result = qword_27D73ADE8;
  if (!qword_27D73ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADE8);
  }

  return result;
}

unint64_t sub_2259D98A4()
{
  result = qword_27D73ADF0;
  if (!qword_27D73ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADF0);
  }

  return result;
}

CoreIDVShared::COSEMACValidator __swiftcall COSEMACValidator.init(errorCodeInvalidMAC:errorCodeInvalidPublicKey:errorCodeUnknownAlgorithm:)(CoreIDVShared::DIPError::Code errorCodeInvalidMAC, CoreIDVShared::DIPError::Code errorCodeInvalidPublicKey, CoreIDVShared::DIPError::Code errorCodeUnknownAlgorithm)
{
  v4 = *errorCodeInvalidPublicKey;
  v5 = *errorCodeUnknownAlgorithm;
  *v3 = *errorCodeInvalidMAC;
  v3[1] = v4;
  v3[2] = v5;
  result.errorCodeInvalidMAC = errorCodeInvalidMAC;
  return result;
}

uint64_t COSEMACValidator.validateMAC(_:deviceKey:deviceAuthenticationBytes:ephemeralReaderKey:sessionTranscript:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v168 = a6;
  v158 = a5;
  v149 = a4;
  v148 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v139 - v9;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADF8);
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v11);
  v146 = &v139 - v12;
  v151 = sub_225CCDC44();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v13);
  v154 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_225CCDC04();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v15);
  v157 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_225CCDF14();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v17);
  v161 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_225CCDEA4();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v19);
  v167 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_225CCE164();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_225CCDBA4();
  v164 = *(v26 - 8);
  v165 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v166 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v169) = *v6;
  v29 = v6[1];
  v30 = v6[2];
  v31 = COSEKey.publicKeyData.getter();
  if (v32 >> 60 == 15)
  {
    v168 = 0x8000000225D15D10;
    v169 = 0x8000000225D15CE0;
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v10, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v10, 1, v37);
    sub_2259DB318(v10);
    if (!v37)
    {
      v29 = 23;
    }

    v39 = sub_225B2C374(v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170 = v39;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v170);

    v41 = v170;
    v42 = sub_225B29AA0(0, 1, 1, v33);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v45 = &v42[56 * v44];
    *(v45 + 4) = 0xD00000000000002ALL;
    *(v45 + 5) = 0x8000000225D15CB0;
    v46 = v169;
    *(v45 + 6) = 0xD000000000000024;
    *(v45 + 7) = v46;
    v47 = v168;
    *(v45 + 8) = 0xD000000000000058;
    *(v45 + 9) = v47;
    *(v45 + 10) = 43;
    *v36 = v29;
    *(v36 + 8) = v42;
    *(v36 + 16) = 0xD00000000000002ALL;
    *(v36 + 24) = 0x8000000225D15CB0;
    *(v36 + 32) = v41;
    *(v36 + 40) = 0;
    return swift_willThrow();
  }

  v144 = v10;
  v162 = v31;
  v163 = v32;
  if (sub_225CCD304() != 5)
  {
    v170 = 0;
    v171 = 0xE000000000000000;
    sub_225CCF204();

    v170 = 0xD00000000000002FLL;
    v171 = 0x8000000225D15D70;
    v175 = sub_225CCD304();
    v67 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v67);

    v69 = v170;
    v68 = v171;
    v169 = 0x8000000225D15CE0;
    v167 = 0x8000000225D15D10;
    v70 = MEMORY[0x277D84F90];
    v71 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v168 = swift_allocError();
    v73 = v72;
    v74 = sub_225CCE954();
    v75 = *(v74 - 8);
    v76 = v144;
    (*(v75 + 56))(v144, 1, 1, v74);
    LODWORD(v74) = (*(v75 + 48))(v76, 1, v74);
    sub_2259DB318(v76);
    if (v74)
    {
      v77 = v30;
    }

    else
    {
      v77 = 23;
    }

    v78 = sub_225B2C374(v70);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v78;
    sub_225B2C4A0(v71, sub_225B2AC40, 0, v79, &v170);

    v80 = v170;
    v81 = sub_225B29AA0(0, 1, 1, v70);
    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_225B29AA0((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[56 * v83];
    *(v84 + 4) = v69;
    *(v84 + 5) = v68;
    v85 = v169;
    *(v84 + 6) = 0xD000000000000024;
    *(v84 + 7) = v85;
    v86 = v167;
    *(v84 + 8) = 0xD000000000000058;
    *(v84 + 9) = v86;
    *(v84 + 10) = 49;
    *v73 = v77;
    *(v73 + 8) = v81;
    *(v73 + 16) = v69;
    *(v73 + 24) = v68;
    *(v73 + 32) = v80;
    *(v73 + 40) = 0;
    goto LABEL_21;
  }

  v49 = sub_225CCD4B4();
  if (v50 >> 60 == 15)
  {
    v168 = 0x8000000225D15CE0;
    v51 = MEMORY[0x277D84F90];
    v52 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v53;
    v55 = sub_225CCE954();
    v56 = *(v55 - 8);
    v57 = v144;
    (*(v56 + 56))(v144, 1, 1, v55);
    LODWORD(v55) = (*(v56 + 48))(v57, 1, v55);
    sub_2259DB318(v57);
    if (v55)
    {
      v58 = v169;
    }

    else
    {
      v58 = 23;
    }

    v59 = sub_225B2C374(v51);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v59;
    sub_225B2C4A0(v52, sub_225B2AC40, 0, v60, &v170);

    v61 = v170;
    v62 = sub_225B29AA0(0, 1, 1, v51);
    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 2) = v64 + 1;
    v65 = &v62[56 * v64];
    *(v65 + 4) = 0xD000000000000022;
    *(v65 + 5) = 0x8000000225D15DA0;
    v66 = v168;
    *(v65 + 6) = 0xD000000000000024;
    *(v65 + 7) = v66;
    *(v65 + 8) = 0xD000000000000058;
    *(v65 + 9) = 0x8000000225D15D10;
    *(v65 + 10) = 55;
    *v54 = v58;
    *(v54 + 8) = v62;
    *(v54 + 16) = 0xD000000000000022;
    *(v54 + 24) = 0x8000000225D15DA0;
    *(v54 + 32) = v61;
    *(v54 + 40) = 0;
LABEL_21:
    swift_willThrow();
    return sub_2259B97A8(v162, v163);
  }

  v87 = v50;
  v143 = v49;
  sub_225CCD424();
  swift_allocObject();
  v88 = sub_225CCD414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE00);
  sub_2259D8B24(&qword_27D73AE08, &qword_27D73AE00);
  v89 = v177;
  v90 = sub_225CCD3F4();
  if (v89)
  {

    sub_2259B97A8(v143, v87);
    return sub_2259B97A8(v162, v163);
  }

  v92 = v90;
  v93 = v91;
  v177 = v87;
  v94 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540]);
  sub_225CCDB94();
  sub_2259CB710(v92, v93);
  sub_2259DB138(v92, v93);
  v168 = 0;
  sub_2259BEF00(v92, v93);
  v95 = v166;
  sub_225CCDB84();
  (*(v22 + 8))(v25, v21);
  v170 = v162;
  v171 = v163;
  sub_2259CB710(v162, v163);
  v96 = v168;
  sub_225CCDE74();
  if (v96)
  {
    (*(v164 + 8))(v95, v165);
    sub_2259B97A8(v162, v163);

    sub_2259BEF00(v92, v93);
    return sub_2259B97A8(v143, v177);
  }

  else
  {
    v139 = v94;
    v140 = v92;
    v141 = v93;
    v142 = v88;
    v170 = ISO18013SessionCryptarch.PrivateKey.rawRepresentation.getter();
    v171 = v97;
    sub_225CCDEF4();
    v98 = v164;
    v99 = v165;
    sub_225CCDEB4();
    *(&v172 + 1) = v99;
    v173 = sub_2259DB380(&qword_27D73AE18, MEMORY[0x277CC5290]);
    v100 = __swift_allocate_boxed_opaque_existential_1(&v170);
    (*(v98 + 16))(v100, v95, v99);
    __swift_project_boxed_opaque_existential_1(&v170, *(&v172 + 1));
    sub_225CCCB84();
    v101 = v175;
    v102 = v176;
    __swift_destroy_boxed_opaque_existential_0(&v170);
    v170 = v101;
    v171 = v102;
    v175 = sub_2259D25B0(0x79654B63614D45, 0xE700000000000000);
    v176 = v103;
    sub_2259DB42C();
    sub_225CCDBF4();
    sub_2259BEF00(v175, v176);
    sub_2259BEF00(v170, v171);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = xmmword_225CD45E0;
    v105 = sub_225B2C828(inited);
    swift_setDeallocating();
    v170 = v105;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
    sub_2259DB480();
    v106 = sub_225CCD3F4();
    v108 = v107;

    v170 = v106;
    v171 = v108;
    v172 = xmmword_225CD4150;
    v173 = v148;
    v174 = v149;
    sub_2259CB710(v148, v149);
    sub_2259DB4FC();
    v109 = sub_225CCD3F4();
    v168 = 0;
    v111 = v110;
    v112 = v109;
    v113 = v172;
    v115 = v173;
    v114 = v174;
    sub_2259BEF00(v170, v171);
    sub_2259BEF00(v113, *(&v113 + 1));
    sub_2259BEF00(v115, v114);
    v170 = v112;
    v171 = v111;
    v116 = v146;
    sub_225CCDD94();
    v117 = v143;
    v118 = v177;
    v170 = v143;
    v171 = v177;
    sub_2259D8B24(&qword_27D73AE48, &qword_27D73ADF8);
    v119 = v147;
    if (sub_225CCDCB4())
    {
      sub_2259B97A8(v117, v118);
      sub_2259BEF00(v112, v111);
      sub_2259BEF00(v140, v141);

      sub_2259B97A8(v162, v163);
      (*(v145 + 8))(v116, v119);
      (*(v150 + 8))(v154, v151);
      (*(v152 + 8))(v157, v153);
      (*(v155 + 8))(v161, v156);
      (*(v159 + 8))(v167, v160);
      return (*(v164 + 8))(v166, v165);
    }

    else
    {
      v149 = v112;
      v158 = v111;
      v148 = 0x8000000225D15CE0;
      v139 = 0x8000000225D15D10;
      v120 = MEMORY[0x277D84F90];
      v121 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v123 = v122;
      v124 = sub_225CCE954();
      v125 = *(v124 - 8);
      v126 = v144;
      (*(v125 + 56))(v144, 1, 1, v124);
      LODWORD(v124) = (*(v125 + 48))(v126, 1, v124);
      sub_2259DB318(v126);
      if (v124)
      {
        v127 = v169;
      }

      else
      {
        v127 = 23;
      }

      v128 = sub_225B2C374(v120);
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v170 = v128;
      sub_225B2C4A0(v121, sub_225B2AC40, 0, v129, &v170);

      v130 = v170;
      v131 = sub_225B29AA0(0, 1, 1, v120);
      v133 = *(v131 + 2);
      v132 = *(v131 + 3);
      if (v133 >= v132 >> 1)
      {
        v131 = sub_225B29AA0((v132 > 1), v133 + 1, 1, v131);
      }

      v134 = v164;
      v135 = v165;
      *(v131 + 2) = v133 + 1;
      v136 = &v131[56 * v133];
      *(v136 + 4) = 0xD000000000000037;
      *(v136 + 5) = 0x8000000225D15DD0;
      v137 = v148;
      *(v136 + 6) = 0xD000000000000024;
      *(v136 + 7) = v137;
      v138 = v139;
      *(v136 + 8) = 0xD000000000000058;
      *(v136 + 9) = v138;
      *(v136 + 10) = 82;
      *v123 = v127;
      *(v123 + 8) = v131;
      *(v123 + 16) = 0xD000000000000037;
      *(v123 + 24) = 0x8000000225D15DD0;
      *(v123 + 32) = v130;
      *(v123 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v143, v177);
      sub_2259BEF00(v149, v158);
      sub_2259BEF00(v140, v141);

      sub_2259B97A8(v162, v163);
      (*(v145 + 8))(v146, v147);
      (*(v150 + 8))(v154, v151);
      (*(v152 + 8))(v157, v153);
      (*(v155 + 8))(v161, v156);
      (*(v159 + 8))(v167, v160);
      return (*(v134 + 8))(v166, v135);
    }
  }
}

uint64_t sub_2259DB138(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_225CCE164();
      sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540]);
      return sub_225CCDB74();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225A8F568(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_225A8F568(v4, v5);
  }

  sub_225CCE164();
  sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540]);
  return sub_225CCDB74();
}

uint64_t sub_2259DB318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259DB380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2259DB42C()
{
  result = qword_27D73AE20;
  if (!qword_27D73AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE20);
  }

  return result;
}

unint64_t sub_2259DB480()
{
  result = qword_27D73AE38;
  if (!qword_27D73AE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE38);
  }

  return result;
}

unint64_t sub_2259DB4FC()
{
  result = qword_27D73AE40;
  if (!qword_27D73AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE40);
  }

  return result;
}

uint64_t __swift_memcpy6_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for COSEMACValidator(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB62 && *(a1 + 6))
  {
    return (*a1 + 64354);
  }

  v3 = *a1;
  v4 = v3 >= 0x49F;
  v5 = v3 - 1183;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for COSEMACValidator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB61)
  {
    *(result + 4) = 0;
    *result = a2 - 64354;
    if (a3 >= 0xFB62)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB62)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1182;
    }
  }

  return result;
}

CoreIDVShared::COSESignatureValidator __swiftcall COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)(CoreIDVShared::DIPError::Code errorCodeUnknownAlgorithm, CoreIDVShared::DIPError::Code errorCodeInvalidPublicKey, CoreIDVShared::DIPError::Code errorCodeMisformattedSignature, CoreIDVShared::DIPError::Code errorCodeInvalidSignature)
{
  v5 = *errorCodeInvalidPublicKey;
  v6 = *errorCodeMisformattedSignature;
  v7 = *errorCodeInvalidSignature;
  *v4 = *errorCodeUnknownAlgorithm;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  result.errorCodeUnknownAlgorithm = errorCodeUnknownAlgorithm;
  return result;
}

uint64_t COSESignatureValidator.validateSignature(of:with:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v72 - v4;
  v6 = *v0;
  v7 = SecCertificateRef.rawECPublicKeyData()();
  if (v8 >> 60 != 15)
  {
    v75 = v7;
    v76 = v8;
    SecCertificateRef.publicKeyAlgorithm()();
    v26 = v78[0];
    if (LOBYTE(v78[0]) == 5)
    {
      v27 = 0x8000000225D15E90;
      v73 = 0x8000000225D15E70;
      v74 = 0x8000000225D15E40;
      v28 = MEMORY[0x277D84F90];
      v29 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v31 = v30;
      v32 = sub_225CCE954();
      v33 = *(v32 - 8);
      (*(v33 + 56))(v5, 1, 1, v32);
      LODWORD(v32) = (*(v33 + 48))(v5, 1, v32);
      sub_2259CB640(v5, &unk_27D73B050);
      if (v32)
      {
        v34 = 1021;
      }

      else
      {
        v34 = 23;
      }

      v35 = sub_225B2C374(v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v35;
      sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v78);

      v37 = v78[0];
      v38 = sub_225B29AA0(0, 1, 1, v28);
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[56 * v40];
      *(v41 + 4) = 0xD00000000000002FLL;
      *(v41 + 5) = 0x8000000225D15E90;
      v42 = v74;
      *(v41 + 6) = 0xD00000000000002ALL;
      *(v41 + 7) = v42;
      v43 = v73;
      *(v41 + 8) = 0xD00000000000001BLL;
      *(v41 + 9) = v43;
      *(v41 + 10) = 47;
      *v31 = v34;
      *(v31 + 8) = v38;
      *(v31 + 16) = 0xD00000000000002FLL;
    }

    else
    {
      v44 = sub_225CCD324();
      if (v45 >> 60 != 15)
      {
        v60 = v44;
        v61 = v45;
        v74 = sub_225CCD304();
        v62 = MEMORY[0x22AA6BB50]();
        v64 = v63;
        sub_225CCD424();
        swift_allocObject();
        sub_2259CB710(v60, v61);
        sub_225CCD414();
        v78[0] = v62;
        v78[1] = v64;
        v79 = xmmword_225CD4150;
        v80 = v60;
        v81 = v61;
        sub_2259E44EC();
        v65 = sub_225CCD3F4();
        if (v1)
        {
          sub_2259B97A8(v60, v61);

          sub_2259B97A8(v75, v76);
          sub_2259BEF00(v62, v64);
          sub_2259BEF00(0, 0xC000000000000000);
          return sub_2259BEF00(v60, v61);
        }

        v72 = v65;
        v73 = v64;
        v67 = v66;

        v78[0] = v6;
        v68 = sub_225CCD334();
        v70 = v69;
        v77 = v26;
        v71 = v72;
        sub_2259DBE5C(v68, v69, v75, v76, &v77, v74, v72, v67);
        sub_2259B97A8(v60, v61);
        sub_2259BEF00(v68, v70);
        sub_2259BEF00(v71, v67);
        sub_2259BEF00(v62, v73);
        sub_2259BEF00(0, 0xC000000000000000);
        sub_2259BEF00(v60, v61);
        return sub_2259B97A8(v75, v76);
      }

      v27 = 0x8000000225D15EC0;
      v73 = 0x8000000225D15E70;
      v74 = 0x8000000225D15E40;
      v46 = MEMORY[0x277D84F90];
      v47 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v31 = v48;
      v49 = sub_225CCE954();
      v50 = *(v49 - 8);
      (*(v50 + 56))(v5, 1, 1, v49);
      LODWORD(v49) = (*(v50 + 48))(v5, 1, v49);
      sub_2259CB640(v5, &unk_27D73B050);
      if (v49)
      {
        v51 = 1024;
      }

      else
      {
        v51 = 23;
      }

      v52 = sub_225B2C374(v46);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v52;
      sub_225B2C4A0(v47, sub_225B2AC40, 0, v53, v78);

      v37 = v78[0];
      v54 = sub_225B29AA0(0, 1, 1, v46);
      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v54);
      }

      *(v54 + 2) = v56 + 1;
      v57 = &v54[56 * v56];
      *(v57 + 4) = 0xD000000000000022;
      *(v57 + 5) = 0x8000000225D15EC0;
      v58 = v74;
      *(v57 + 6) = 0xD00000000000002ALL;
      *(v57 + 7) = v58;
      v59 = v73;
      *(v57 + 8) = 0xD00000000000001BLL;
      *(v57 + 9) = v59;
      *(v57 + 10) = 51;
      *v31 = v51;
      *(v31 + 8) = v54;
      *(v31 + 16) = 0xD000000000000022;
    }

    *(v31 + 24) = v27;
    *(v31 + 32) = v37;
    *(v31 + 40) = 0;
    swift_willThrow();
    return sub_2259B97A8(v75, v76);
  }

  v75 = 0x8000000225D15E70;
  v76 = 0x8000000225D15E40;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v12 = v11;
  v13 = sub_225CCE954();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v5, 1, 1, v13);
  LODWORD(v13) = (*(v14 + 48))(v5, 1, v13);
  sub_2259CB640(v5, &unk_27D73B050);
  if (v13)
  {
    v15 = 1021;
  }

  else
  {
    v15 = 23;
  }

  v16 = sub_225B2C374(v9);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = v16;
  sub_225B2C4A0(v10, sub_225B2AC40, 0, v17, v78);

  v18 = v78[0];
  v19 = sub_225B29AA0(0, 1, 1, v9);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_225B29AA0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[56 * v21];
  *(v22 + 4) = 0xD00000000000002ALL;
  *(v22 + 5) = 0x8000000225D15E10;
  v23 = v76;
  *(v22 + 6) = 0xD00000000000002ALL;
  *(v22 + 7) = v23;
  v24 = v75;
  *(v22 + 8) = 0xD00000000000001BLL;
  *(v22 + 9) = v24;
  *(v22 + 10) = 43;
  *v12 = v15;
  *(v12 + 8) = v19;
  *(v12 + 16) = 0xD00000000000002ALL;
  *(v12 + 24) = 0x8000000225D15E10;
  *(v12 + 32) = v18;
  *(v12 + 40) = 0;
  return swift_willThrow();
}

void sub_2259DBE5C(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v76 = a6;
  v73 = a3;
  v74 = a4;
  v71 = a1;
  v72 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v67 = &v63 - v14;
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a5;
  v75 = *v8;
  LODWORD(v18) = v8[2];
  v68 = v8[1];
  v69 = v18;
  v70 = v8[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  (*(v16 + 16))(v19, &v21[v22], v15);
  os_unfair_lock_unlock(&v21[v23]);
  v24 = sub_225CCD934();
  v25 = v15;
  v26 = sub_225CCED04();
  if (os_log_type_enabled(v24, v26))
  {
    v64 = v25;
    v65 = a7;
    v66 = a8;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v77 = v28;
    *v27 = 136315394;
    v29 = 0xE700000000000000;
    v30 = 0x313235505F4345;
    v31 = 0xE800000000000000;
    v32 = 0x39313535325F4445;
    if (v20 != 3)
    {
      v32 = 0x3834345F4445;
      v31 = 0xE600000000000000;
    }

    if (v20 != 2)
    {
      v30 = v32;
      v29 = v31;
    }

    v33 = 0x343833505F4345;
    if (!v20)
    {
      v33 = 0x363532505F4345;
    }

    if (v20 <= 1)
    {
      v34 = v33;
    }

    else
    {
      v34 = v30;
    }

    if (v20 <= 1)
    {
      v35 = 0xE700000000000000;
    }

    else
    {
      v35 = v29;
    }

    v36 = sub_2259BE198(v34, v35, &v77);

    *(v27 + 4) = v36;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v76;
    _os_log_impl(&dword_2259A7000, v24, v26, "COSESignatureValidator Validating RFC 8152 signature with public key algorithm %s, signature algorithm %ld", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA6F950](v28, -1, -1);
    MEMORY[0x22AA6F950](v27, -1, -1);

    (*(v16 + 8))(v19, v64);
    a7 = v65;
    a8 = v66;
    if (v20 > 1)
    {
LABEL_17:
      if (v20 == 2)
      {
        if (v76 == -36)
        {
          LOWORD(v77) = v75;
          WORD1(v77) = v68;
          WORD2(v77) = v69;
          HIWORD(v77) = v70;
          sub_2259E0C88(v71, v72, v73, v74, a7, a8);
          return;
        }
      }

      else if (v20 == 3)
      {
        if (v76 == -8)
        {
          LOWORD(v77) = v75;
          WORD1(v77) = v68;
          WORD2(v77) = v69;
          HIWORD(v77) = v70;
          sub_2259E2298(v71, v72, v73, v74, a7, a8);
          return;
        }
      }

      else if (v76 == -8)
      {
        LOWORD(v77) = v75;
        WORD1(v77) = v68;
        WORD2(v77) = v69;
        HIWORD(v77) = v70;
        sub_2259E3148(v71, v72, v73, v74, a7, a8);
        return;
      }

      goto LABEL_31;
    }
  }

  else
  {

    (*(v16 + 8))(v19, v25);
    if (v20 > 1)
    {
      goto LABEL_17;
    }
  }

  if (v20)
  {
    if (v76 == -35)
    {
      LOWORD(v77) = v75;
      WORD1(v77) = v68;
      WORD2(v77) = v69;
      HIWORD(v77) = v70;
      sub_2259DF678(v71, v72, v73, v74, a7, a8);
      return;
    }
  }

  else if (v76 == -7)
  {
    LOWORD(v77) = v75;
    WORD1(v77) = v68;
    WORD2(v77) = v69;
    HIWORD(v77) = v70;
    sub_2259DE068(v71, v72, v73, v74, a7, a8);
    return;
  }

LABEL_31:
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000030, 0x8000000225D15FF0);
  v37 = 0xE700000000000000;
  v38 = 0x313235505F4345;
  v39 = 0xE800000000000000;
  v40 = 0x39313535325F4445;
  if (v20 != 3)
  {
    v40 = 0x3834345F4445;
    v39 = 0xE600000000000000;
  }

  if (v20 != 2)
  {
    v38 = v40;
    v37 = v39;
  }

  v41 = 0x343833505F4345;
  if (!v20)
  {
    v41 = 0x363532505F4345;
  }

  if (v20 <= 1)
  {
    v42 = v41;
  }

  else
  {
    v42 = v38;
  }

  if (v20 <= 1)
  {
    v43 = 0xE700000000000000;
  }

  else
  {
    v43 = v37;
  }

  MEMORY[0x22AA6CE70](v42, v43);

  MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D16030);
  v79 = v76;
  type metadata accessor for COSEAlgorithm(0);
  sub_225CCF434();
  v45 = v77;
  v44 = v78;
  v76 = 0x8000000225D15E40;
  v74 = 0x8000000225D16050;
  v46 = MEMORY[0x277D84F90];
  v47 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v49 = v48;
  v50 = sub_225CCE954();
  v51 = *(v50 - 8);
  v52 = v67;
  (*(v51 + 56))(v67, 1, 1, v50);
  LODWORD(v50) = (*(v51 + 48))(v52, 1, v50);
  sub_2259CB640(v52, &unk_27D73B050);
  if (v50)
  {
    v53 = v75;
  }

  else
  {
    v53 = 23;
  }

  v54 = sub_225B2C374(v46);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v54;
  sub_225B2C4A0(v47, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v77);

  v56 = v77;
  v57 = sub_225B29AA0(0, 1, 1, v46);
  v59 = *(v57 + 2);
  v58 = *(v57 + 3);
  if (v59 >= v58 >> 1)
  {
    v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
  }

  *(v57 + 2) = v59 + 1;
  v60 = &v57[56 * v59];
  *(v60 + 4) = v45;
  *(v60 + 5) = v44;
  v61 = v76;
  *(v60 + 6) = 0xD00000000000002ALL;
  *(v60 + 7) = v61;
  v62 = v74;
  *(v60 + 8) = 0xD00000000000005DLL;
  *(v60 + 9) = v62;
  *(v60 + 10) = 189;
  *v49 = v53;
  *(v49 + 8) = v57;
  *(v49 + 16) = v45;
  *(v49 + 24) = v44;
  *(v49 + 32) = v56;
  *(v49 + 40) = 0;
  swift_willThrow();
}

uint64_t COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = *a5;
  v13 = *v8;
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = a6;
  v15 = sub_225B2C828(inited);
  swift_setDeallocating();
  v31 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
  sub_2259DB480();
  v16 = sub_225CCD3F4();
  if (v9)
  {
  }

  else
  {
    v19 = v16;
    v20 = v17;
    v24 = a1;

    v32 = v20;
    v33 = xmmword_225CD4150;
    v34 = a7;
    v35 = a8;
    sub_2259CB710(a7, a8);
    sub_2259E44EC();
    v31 = v13;
    v30 = v12;
    v21 = sub_225CCD3F4();
    v23 = v22;
    sub_2259DBE5C(v24, a2, a3, a4, &v30, a6, v21, v22);

    sub_2259BEF00(v21, v23);
    sub_2259BEF00(v19, v20);
    sub_2259BEF00(0, 0xC000000000000000);
    return sub_2259BEF00(a7, a8);
  }
}

void COSESignatureValidator.validateReaderAuth<A>(_:authenticationStructure:encoder:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v181 = a6;
  v182 = a3;
  v189 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v183 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v187 = &v170 - v15;
  v190 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v185 = &v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v170 - v20;
  v22 = sub_225CCD954();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v178 = &v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v191 = &v170 - v28;
  v29 = *v6;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v30 = off_28105B918;
  v31 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v32 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v32));
  v33 = *(v23 + 16);
  v175 = v31;
  v174 = v23 + 16;
  v173 = v33;
  v33(v191, &v30[v31], v22);
  v177 = v30;
  v176 = v32;
  os_unfair_lock_unlock(&v30[v32]);
  v34 = *(v190 + 16);
  v179 = a2;
  v34(v21, a2, a4);
  v35 = a4;
  v36 = sub_225CCD934();
  v37 = sub_225CCED04();
  v38 = os_log_type_enabled(v36, v37);
  v186 = v23;
  v180 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v184 = v22;
    v40 = v39;
    v41 = swift_slowAlloc();
    v193 = v41;
    *v40 = 136315138;
    v34(v185, v21, v35);
    v42 = sub_225CCE504();
    v44 = v43;
    (*(v190 + 8))(v21, v35);
    v45 = sub_2259BE198(v42, v44, &v193);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_2259A7000, v36, v37, "Verifying reader signature with authentication structure %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA6F950](v41, -1, -1);
    v46 = v40;
    v22 = v184;
    MEMORY[0x22AA6F950](v46, -1, -1);

    v47 = *(v186 + 8);
  }

  else
  {

    (*(v190 + 8))(v21, v35);
    v47 = *(v23 + 8);
  }

  v47(v191, v22);
  v48 = sub_225CCD334();
  v50 = v49;
  v51 = sub_225CCD344();
  if (!v51)
  {
    goto LABEL_11;
  }

  if (!v51[2])
  {

LABEL_11:
    v191 = v48;
    v190 = v50;
    v189 = 0x8000000225D15F30;
    v57 = MEMORY[0x277D84F90];
    v58 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v59 = swift_allocError();
    v61 = v60;
    v62 = sub_225CCE954();
    v63 = *(v62 - 8);
    v64 = v187;
    (*(v63 + 56))(v187, 1, 1, v62);
    LODWORD(v62) = (*(v63 + 48))(v64, 1, v62);
    sub_2259CB640(v64, &unk_27D73B050);
    if (v62)
    {
      v65 = 437;
    }

    else
    {
      v65 = 23;
    }

    v66 = sub_225B2C374(v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v193 = v66;
    sub_225B2C4A0(v58, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v193);

    v68 = v193;
    v69 = sub_225B29AA0(0, 1, 1, v57);
    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    if (v71 >= v70 >> 1)
    {
      v69 = sub_225B29AA0((v70 > 1), v71 + 1, 1, v69);
    }

    *(v69 + 2) = v71 + 1;
    v72 = &v69[56 * v71];
    *(v72 + 4) = 0xD000000000000031;
    *(v72 + 5) = 0x8000000225D15EF0;
    *(v72 + 6) = 0xD00000000000002ALL;
    *(v72 + 7) = 0x8000000225D15E40;
    v73 = v189;
    *(v72 + 8) = 0xD000000000000036;
    *(v72 + 9) = v73;
    *(v72 + 10) = 122;
    *v61 = v65;
    *(v61 + 8) = v69;
    *(v61 + 16) = 0xD000000000000031;
    *(v61 + 24) = 0x8000000225D15EF0;
    *(v61 + 32) = v68;
    *(v61 + 40) = 0;
    v56 = v59;
    swift_willThrow();
    sub_2259BEF00(v191, v190);
    v189 = 0;
    goto LABEL_17;
  }

  v184 = v22;
  v52 = v51[4];
  v53 = v51[5];
  sub_2259CB710(v52, v53);

  sub_2259CB710(v52, v53);
  v54 = v188;
  v55 = decodeCertificate(fromDER:)();
  if (v54)
  {
    sub_2259BEF00(v48, v50);
    sub_2259BEF00(v52, v53);
    sub_2259BEF00(v52, v53);
    v189 = 0;
    v56 = v54;
  }

  else
  {
    v104 = v55;
    sub_2259BEF00(v52, v53);
    sub_2259BEF00(v52, v53);
    v105 = SecCertificateRef.rawECPublicKeyData()();
    v191 = v48;
    if (v106 >> 60 == 15)
    {
      v188 = v104;
      v190 = v50;
      v189 = 0x8000000225D15E40;
      v185 = 0x8000000225D15F30;
      v107 = MEMORY[0x277D84F90];
      v108 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v186 = swift_allocError();
      v110 = v109;
      v111 = sub_225CCE954();
      v112 = *(v111 - 8);
      v113 = v187;
      (*(v112 + 56))(v187, 1, 1, v111);
      LODWORD(v111) = (*(v112 + 48))(v113, 1, v111);
      sub_2259CB640(v113, &unk_27D73B050);
      if (v111)
      {
        v114 = 438;
      }

      else
      {
        v114 = 23;
      }

      v115 = sub_225B2C374(v107);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v115;
      sub_225B2C4A0(v108, sub_225B2AC40, 0, v116, &v193);

      v117 = v193;
      v118 = sub_225B29AA0(0, 1, 1, v107);
      v120 = *(v118 + 2);
      v119 = *(v118 + 3);
      if (v120 >= v119 >> 1)
      {
        v118 = sub_225B29AA0((v119 > 1), v120 + 1, 1, v118);
      }

      v121 = v190;
      *(v118 + 2) = v120 + 1;
      v122 = &v118[56 * v120];
      *(v122 + 4) = 0xD000000000000022;
      *(v122 + 5) = 0x8000000225D15F90;
      v123 = v189;
      *(v122 + 6) = 0xD00000000000002ALL;
      *(v122 + 7) = v123;
      v124 = v185;
      *(v122 + 8) = 0xD000000000000036;
      *(v122 + 9) = v124;
      *(v122 + 10) = 125;
      *v110 = v114;
      *(v110 + 8) = v118;
      *(v110 + 16) = 0xD000000000000022;
      *(v110 + 24) = 0x8000000225D15F90;
      *(v110 + 32) = v117;
      *(v110 + 40) = 0;
      v56 = v186;
      swift_willThrow();
    }

    else
    {
      v185 = v105;
      v172 = v106;
      SecCertificateRef.publicKeyAlgorithm()();
      v125 = v193;
      if (v193 != 5)
      {
        v143 = sub_225CCD3F4();
        v145 = v144;
        LODWORD(v171) = v125;
        v193 = v143;
        v194 = v144;
        v146 = v143;
        sub_2259CB710(v143, v144);
        sub_2259CB710(v146, v145);
        sub_2259D9454();
        v147 = sub_225CCD3E4();
        v149 = v148;
        v188 = v104;
        v190 = v50;
        v150 = v147;
        sub_2259BEF00(v193, v194);
        sub_2259CB710(v150, v149);
        v182 = v150;
        sub_2259BEF00(v150, v149);
        v181 = v146;
        sub_2259BEF00(v146, v145);
        v187 = v149;
        v151 = sub_225CCD304();
        sub_225CCD424();
        swift_allocObject();
        sub_225CCD414();
        v189 = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 1;
        *(inited + 40) = v151;
        v153 = sub_225B2C828(inited);
        swift_setDeallocating();
        v193 = v153;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
        sub_2259DB480();
        v154 = sub_225CCD3F4();
        v156 = v155;
        v180 = v151;

        v193 = v154;
        v194 = v156;
        v195 = xmmword_225CD4150;
        v196 = v182;
        v197 = v187;
        sub_2259CB710(v182, v187);
        sub_2259E44EC();
        v157 = sub_225CCD3F4();
        v170 = v154;
        v179 = v156;
        v193 = v29;
        LOBYTE(v192) = v171;
        v158 = v190;
        v159 = v180;
        v171 = v157;
        v180 = v160;
        sub_2259DBE5C(v191, v190, v185, v172, &v192, v159, v157, v160);
        v161 = v158;

        sub_2259BEF00(v171, v180);
        sub_2259BEF00(v170, v179);
        sub_2259BEF00(0, 0xC000000000000000);
        v162 = v182;
        v163 = v187;
        sub_2259BEF00(v182, v187);
        v164 = v177;
        v165 = v176;
        os_unfair_lock_lock(&v177[v176]);
        v166 = v178;
        v173(v178, &v164[v175], v184);
        os_unfair_lock_unlock(&v164[v165]);
        v167 = sub_225CCD934();
        v168 = sub_225CCED04();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          *v169 = 0;
          _os_log_impl(&dword_2259A7000, v167, v168, "COSESignatureValidator reader auth successfully validated", v169, 2u);
          MEMORY[0x22AA6F950](v169, -1, -1);
          sub_2259BEF00(v191, v161);
          sub_2259B97A8(v185, v172);

          sub_2259BEF00(v162, v163);
          sub_2259BEF00(v181, v189);
        }

        else
        {
          sub_2259BEF00(v191, v161);
          sub_2259BEF00(v181, v189);
          sub_2259B97A8(v185, v172);

          sub_2259BEF00(v162, v163);
        }

        v47(v166, v184);
        return;
      }

      v188 = v104;
      v190 = v50;
      v189 = 0x8000000225D15E40;
      v184 = 0x8000000225D15F30;
      v126 = MEMORY[0x277D84F90];
      v127 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v186 = swift_allocError();
      v129 = v128;
      v130 = sub_225CCE954();
      v131 = *(v130 - 8);
      v132 = v187;
      (*(v131 + 56))(v187, 1, 1, v130);
      LODWORD(v130) = (*(v131 + 48))(v132, 1, v130);
      sub_2259CB640(v132, &unk_27D73B050);
      if (v130)
      {
        v133 = 438;
      }

      else
      {
        v133 = 23;
      }

      v134 = sub_225B2C374(v126);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v134;
      sub_225B2C4A0(v127, sub_225B2AC40, 0, v135, &v193);

      v136 = v193;
      v137 = sub_225B29AA0(0, 1, 1, v126);
      v139 = *(v137 + 2);
      v138 = *(v137 + 3);
      if (v139 >= v138 >> 1)
      {
        v137 = sub_225B29AA0((v138 > 1), v139 + 1, 1, v137);
      }

      v121 = v190;
      *(v137 + 2) = v139 + 1;
      v140 = &v137[56 * v139];
      *(v140 + 4) = 0xD000000000000025;
      *(v140 + 5) = 0x8000000225D15FC0;
      v141 = v189;
      *(v140 + 6) = 0xD00000000000002ALL;
      *(v140 + 7) = v141;
      v142 = v184;
      *(v140 + 8) = 0xD000000000000036;
      *(v140 + 9) = v142;
      *(v140 + 10) = 128;
      *v129 = v133;
      *(v129 + 8) = v137;
      *(v129 + 16) = 0xD000000000000025;
      *(v129 + 24) = 0x8000000225D15FC0;
      *(v129 + 32) = v136;
      *(v129 + 40) = 0;
      v56 = v186;
      swift_willThrow();
      sub_2259B97A8(v185, v172);
    }

    sub_2259BEF00(v191, v121);
    v189 = 0;
  }

LABEL_17:
  v74 = v56;
  v75 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v191 = swift_allocError();
  v77 = v76;
  swift_getErrorValue();
  v78 = v198;
  v79 = v56;
  sub_225B21FAC(v78, &v193);

  v80 = v194;
  v190 = 0x8000000225D15F70;
  if (v194)
  {
    v81 = v56;
    v188 = v193;
    v186 = *(&v195 + 1);
    v187 = v195;
    v82 = v196;
    v56 = v197;
  }

  else
  {
    v193 = v56;
    v83 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v84 = v192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v85 = swift_initStackObject();
      *(v85 + 16) = xmmword_225CD30F0;
      *(v85 + 32) = 20;
      v86 = [v84 code];
      v87 = MEMORY[0x277D83BF8];
      *(v85 + 64) = MEMORY[0x277D83B88];
      *(v85 + 72) = v87;
      *(v85 + 40) = v86;
      v82 = sub_225B2C374(v85);
      swift_setDeallocating();
      sub_2259CB640(v85 + 32, &qword_27D73B060);

      v88 = v56;
      v188 = 0;
      v187 = 0;
      v186 = 0;
      v80 = MEMORY[0x277D84F90];
      v81 = v56;
    }

    else
    {
      v193 = v56;
      v89 = v56;
      v90 = sub_225CCE954();
      v91 = v56;
      v92 = v183;
      v93 = swift_dynamicCast();
      v94 = *(v90 - 8);
      (*(v94 + 56))(v92, v93 ^ 1u, 1, v90);
      LODWORD(v94) = (*(v94 + 48))(v92, 1, v90);
      sub_2259CB640(v92, &unk_27D73B050);
      if (v94)
      {
        v95 = 0;
      }

      else
      {
        v95 = 23;
      }

      v188 = v95;
      v80 = MEMORY[0x277D84F90];
      v82 = sub_225B2C374(MEMORY[0x277D84F90]);
      v96 = v91;
      v187 = 0xD00000000000001CLL;
      v186 = 0x8000000225D15F70;
      v81 = v91;
      v56 = v91;
    }
  }

  v97 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v82;
  sub_225B2C4A0(v75, sub_225B2AC40, 0, v97, &v193);

  v98 = v193;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_225B29AA0(0, *(v80 + 2) + 1, 1, v80);
  }

  v100 = *(v80 + 2);
  v99 = *(v80 + 3);
  if (v100 >= v99 >> 1)
  {
    v80 = sub_225B29AA0((v99 > 1), v100 + 1, 1, v80);
  }

  *(v80 + 2) = v100 + 1;
  v101 = &v80[56 * v100];
  v102 = v190;
  *(v101 + 4) = 0xD00000000000001CLL;
  *(v101 + 5) = v102;
  *(v101 + 6) = 0xD00000000000002ALL;
  *(v101 + 7) = 0x8000000225D15E40;
  *(v101 + 8) = 0xD000000000000036;
  *(v101 + 9) = 0x8000000225D15F30;
  *(v101 + 10) = 144;
  *v77 = v188;
  v103 = v187;
  *(v77 + 8) = v80;
  *(v77 + 16) = v103;
  *(v77 + 24) = v186;
  *(v77 + 32) = v98;
  *(v77 + 40) = v56;
  swift_willThrow();
}

void sub_2259DE068(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v179 = a5;
  v180 = a6;
  v198 = a4;
  v199 = a3;
  v190 = a1;
  v191 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v167 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v170 = &v165 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v182 = &v165 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v169 = &v165 - v19;
  v20 = sub_225CCE164();
  v177 = *(v20 - 8);
  v178 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v176 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_225CCDBA4();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v23);
  v187 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_225CCDF54();
  v184 = *(v25 - 8);
  v185 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v188 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v186 = &v165 - v30;
  v197 = sub_225CCDF84();
  v192 = *(v197 - 8);
  v32 = MEMORY[0x28223BE20](v197, v31);
  v193 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v165 - v35;
  v37 = sub_225CCD954();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v175 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v165 - v43;
  v196 = v7[1];
  v189 = v7[2];
  v168 = v7[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v45 = off_28105B918;
  v46 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v47 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v47));
  v48 = v38;
  v49 = *(v38 + 16);
  v172 = v38 + 16;
  v173 = v46;
  v195 = v37;
  v171 = v49;
  v49(v44, &v45[v46], v37);
  v174 = v47;
  os_unfair_lock_unlock(&v45[v47]);
  v50 = sub_225CCD934();
  v51 = sub_225CCED04();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v197;
  v54 = v199;
  if (v52)
  {
    v55 = v36;
    v56 = v197;
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2259A7000, v50, v51, "Validating ES256 signature", v57, 2u);
    v58 = v57;
    v53 = v56;
    v36 = v55;
    v54 = v199;
    MEMORY[0x22AA6F950](v58, -1, -1);
  }

  v61 = *(v48 + 8);
  v59 = v48 + 8;
  v60 = v61;
  v61(v44, v195);
  v202 = v54;
  v203 = v198;
  sub_2259CB710(v54, v198);
  v62 = v193;
  v63 = v194;
  sub_225CCDF74();
  if (v63)
  {
    v64 = 0x8000000225D160B0;
    v198 = "6 public key from data";
    v199 = "te missing public key data";
    v65 = v63;
    v66 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v195 = swift_allocError();
    v68 = v67;
    swift_getErrorValue();
    v69 = v208;
    v70 = v63;
    sub_225B21FAC(v69, &v202);

    v71 = v203;
    v197 = 0x8000000225D160B0;
    if (v203)
    {
      v196 = v202;
      v64 = v205;
      v194 = v204;
      v73 = v206;
      v72 = v207;
    }

    else
    {
      v202 = v63;
      v75 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v76 = v201;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v78 = [v76 code];
        v79 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v79;
        *(inited + 40) = v78;
        v73 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v80 = v63;
        v194 = 0;
        v64 = 0;
        v71 = MEMORY[0x277D84F90];
      }

      else
      {
        v202 = v63;
        v98 = v63;
        v99 = sub_225CCE954();
        v100 = v170;
        v101 = swift_dynamicCast();
        v102 = *(v99 - 8);
        (*(v102 + 56))(v100, v101 ^ 1u, 1, v99);
        LODWORD(v102) = (*(v102 + 48))(v100, 1, v99);
        sub_2259CB640(v100, &unk_27D73B050);
        if (v102)
        {
          v103 = v196;
        }

        else
        {
          v103 = 23;
        }

        v196 = v103;
        v71 = MEMORY[0x277D84F90];
        v73 = sub_225B2C374(MEMORY[0x277D84F90]);
        v104 = v63;
        v194 = 0xD000000000000026;
      }

      v72 = v63;
    }

    v198 |= 0x8000000000000000;
    v199 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v202 = v73;
    sub_225B2C4A0(v66, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v202);

    v106 = v202;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_225B29AA0(0, *(v71 + 2) + 1, 1, v71);
    }

    v108 = *(v71 + 2);
    v107 = *(v71 + 3);
    if (v108 >= v107 >> 1)
    {
      v71 = sub_225B29AA0((v107 > 1), v108 + 1, 1, v71);
    }

    *(v71 + 2) = v108 + 1;
    v109 = &v71[56 * v108];
    v110 = v197;
    *(v109 + 4) = 0xD000000000000026;
    *(v109 + 5) = v110;
    v111 = v199;
    *(v109 + 6) = 0xD00000000000002ALL;
    *(v109 + 7) = v111;
    v112 = v198;
    *(v109 + 8) = 0xD00000000000003BLL;
    *(v109 + 9) = v112;
    *(v109 + 10) = 201;
    *v68 = v196;
    v113 = v194;
    *(v68 + 8) = v71;
    *(v68 + 16) = v113;
    *(v68 + 24) = v64;
    *(v68 + 32) = v106;
    *(v68 + 40) = v72;
    v114 = v195;
    swift_willThrow();
  }

  else
  {
    v194 = v59;
    (*(v192 + 32))(v36, v62, v53);
    v202 = v190;
    v203 = v191;
    sub_2259CB710(v190, v191);
    sub_2259DB42C();
    v74 = v188;
    sub_225CCDF44();
    v166 = v36;
    (*(v184 + 32))(v186, v74, v185);
    v193 = sub_2259E4764(&qword_27D73AE10, MEMORY[0x277CC5540]);
    v81 = v176;
    v82 = v178;
    sub_225CCDB94();
    v83 = v179;
    v84 = v180;
    sub_2259CB710(v179, v180);
    sub_2259DB138(v83, v84);
    v196 = 0;
    sub_2259BEF00(v83, v84);
    sub_225CCDB84();
    (*(v177 + 8))(v81, v82);
    v85 = v174;
    os_unfair_lock_lock(&v45[v174]);
    v86 = v175;
    v87 = v195;
    v171(v175, &v45[v173], v195);
    os_unfair_lock_unlock(&v45[v85]);
    MEMORY[0x28223BE20](v88, v89);
    *(&v165 - 8) = v83;
    *(&v165 - 7) = v84;
    v90 = v183;
    v91 = v187;
    v93 = v198;
    v92 = v199;
    *(&v165 - 6) = v187;
    *(&v165 - 5) = v92;
    v95 = v190;
    v94 = v191;
    *(&v165 - 4) = v93;
    *(&v165 - 3) = v95;
    *(&v165 - 2) = v94;
    Logger.cryptoParam(_:)(sub_2259E4644);
    v96 = v186;
    v97 = v166;
    v60(v86, v87);
    sub_2259E4764(&qword_27D73AE58, MEMORY[0x277CC5290]);
    if (sub_225CCDF64())
    {
      (*(v184 + 8))(v96, v185);
      (*(v192 + 8))(v97, v53);
      (*(v181 + 8))(v91, v90);
      return;
    }

    v198 = 0x8000000225D160E0;
    v199 = 0x8000000225D15E40;
    v115 = MEMORY[0x277D84F90];
    v116 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v117 = swift_allocError();
    v119 = v118;
    v120 = sub_225CCE954();
    v121 = *(v120 - 8);
    v122 = v169;
    (*(v121 + 56))(v169, 1, 1, v120);
    LODWORD(v120) = (*(v121 + 48))(v122, 1, v120);
    sub_2259CB640(v122, &unk_27D73B050);
    if (v120)
    {
      v123 = v168;
    }

    else
    {
      v123 = 23;
    }

    v124 = sub_225B2C374(v115);
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v124;
    sub_225B2C4A0(v116, sub_225B2AC40, 0, v125, &v202);

    v126 = v202;
    v127 = sub_225B29AA0(0, 1, 1, v115);
    v129 = *(v127 + 2);
    v128 = *(v127 + 3);
    if (v129 >= v128 >> 1)
    {
      v127 = sub_225B29AA0((v128 > 1), v129 + 1, 1, v127);
    }

    *(v127 + 2) = v129 + 1;
    v130 = &v127[56 * v129];
    *(v130 + 4) = 0xD00000000000001CLL;
    *(v130 + 5) = 0x8000000225D16170;
    v131 = v199;
    *(v130 + 6) = 0xD00000000000002ALL;
    *(v130 + 7) = v131;
    v132 = v198;
    *(v130 + 8) = 0xD00000000000003BLL;
    *(v130 + 9) = v132;
    *(v130 + 10) = 217;
    *v119 = v123;
    *(v119 + 8) = v127;
    *(v119 + 16) = 0xD00000000000001CLL;
    *(v119 + 24) = 0x8000000225D16170;
    *(v119 + 32) = v126;
    *(v119 + 40) = 0;
    v114 = v117;
    swift_willThrow();
    (*(v184 + 8))(v186, v185);
    (*(v192 + 8))(v166, v197);
    (*(v181 + 8))(v187, v183);
  }

  v197 = 0x8000000225D16120;
  v133 = v114;
  v134 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v196 = swift_allocError();
  v136 = v135;
  swift_getErrorValue();
  v137 = v200;
  v138 = v114;
  sub_225B21FAC(v137, &v202);

  v139 = v203;
  if (v203)
  {
    v140 = v114;
    v141 = v205;
    v194 = v204;
    v195 = v202;
    v142 = v206;
    v114 = v207;
  }

  else
  {
    v202 = v114;
    v143 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v144 = v201;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v145 = swift_initStackObject();
      *(v145 + 16) = xmmword_225CD30F0;
      *(v145 + 32) = 20;
      v146 = [v144 code];
      v147 = MEMORY[0x277D83BF8];
      *(v145 + 64) = MEMORY[0x277D83B88];
      *(v145 + 72) = v147;
      *(v145 + 40) = v146;
      v142 = sub_225B2C374(v145);
      swift_setDeallocating();
      sub_2259CB640(v145 + 32, &qword_27D73B060);

      v148 = v114;
      v194 = 0;
      v195 = 0;
      v141 = 0;
      v139 = MEMORY[0x277D84F90];
    }

    else
    {
      v202 = v114;
      v149 = v114;
      v150 = sub_225CCE954();
      v151 = v182;
      v152 = swift_dynamicCast();
      v153 = *(v150 - 8);
      (*(v153 + 56))(v151, v152 ^ 1u, 1, v150);
      LODWORD(v153) = (*(v153 + 48))(v151, 1, v150);
      sub_2259CB640(v151, &unk_27D73B050);
      if (v153)
      {
        v154 = 0;
      }

      else
      {
        v154 = 23;
      }

      v195 = v154;
      v139 = MEMORY[0x277D84F90];
      v142 = sub_225B2C374(MEMORY[0x277D84F90]);
      v155 = v114;
      v194 = 0xD00000000000001FLL;
      v141 = v197;
    }

    v140 = v114;
  }

  v156 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v142;
  sub_225B2C4A0(v134, sub_225B2AC40, 0, v156, &v202);

  v157 = v202;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v139 = sub_225B29AA0(0, *(v139 + 2) + 1, 1, v139);
  }

  v159 = *(v139 + 2);
  v158 = *(v139 + 3);
  if (v159 >= v158 >> 1)
  {
    v139 = sub_225B29AA0((v158 > 1), v159 + 1, 1, v139);
  }

  *(v139 + 2) = v159 + 1;
  v160 = &v139[56 * v159];
  v161 = v197;
  *(v160 + 4) = 0xD00000000000001FLL;
  *(v160 + 5) = v161;
  v162 = v199;
  *(v160 + 6) = 0xD00000000000002ALL;
  *(v160 + 7) = v162;
  v163 = v198;
  *(v160 + 8) = 0xD00000000000003BLL;
  *(v160 + 9) = v163;
  *(v160 + 10) = 220;
  v164 = v194;
  *v136 = v195;
  *(v136 + 8) = v139;
  *(v136 + 16) = v164;
  *(v136 + 24) = v141;
  *(v136 + 32) = v157;
  *(v136 + 40) = v114;
  swift_willThrow();
}

void sub_2259DF678(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v179 = a5;
  v180 = a6;
  v198 = a4;
  v199 = a3;
  v190 = a1;
  v191 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v167 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v170 = &v165 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v182 = &v165 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v169 = &v165 - v19;
  v20 = sub_225CCE174();
  v177 = *(v20 - 8);
  v178 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v176 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_225CCDBB4();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v23);
  v187 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_225CCE034();
  v184 = *(v25 - 8);
  v185 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v188 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v186 = &v165 - v30;
  v197 = sub_225CCE064();
  v192 = *(v197 - 8);
  v32 = MEMORY[0x28223BE20](v197, v31);
  v193 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v165 - v35;
  v37 = sub_225CCD954();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v175 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v165 - v43;
  v196 = v7[1];
  v189 = v7[2];
  v168 = v7[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v45 = off_28105B918;
  v46 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v47 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v47));
  v48 = v38;
  v49 = *(v38 + 16);
  v172 = v38 + 16;
  v173 = v46;
  v195 = v37;
  v171 = v49;
  v49(v44, &v45[v46], v37);
  v174 = v47;
  os_unfair_lock_unlock(&v45[v47]);
  v50 = sub_225CCD934();
  v51 = sub_225CCED04();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v197;
  v54 = v199;
  if (v52)
  {
    v55 = v36;
    v56 = v197;
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2259A7000, v50, v51, "Validating ES384 signature", v57, 2u);
    v58 = v57;
    v53 = v56;
    v36 = v55;
    v54 = v199;
    MEMORY[0x22AA6F950](v58, -1, -1);
  }

  v61 = *(v48 + 8);
  v59 = v48 + 8;
  v60 = v61;
  v61(v44, v195);
  v202 = v54;
  v203 = v198;
  sub_2259CB710(v54, v198);
  v62 = v193;
  v63 = v194;
  sub_225CCE054();
  if (v63)
  {
    v64 = 0x8000000225D16190;
    v198 = "4 public key from data";
    v199 = "te missing public key data";
    v65 = v63;
    v66 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v195 = swift_allocError();
    v68 = v67;
    swift_getErrorValue();
    v69 = v208;
    v70 = v63;
    sub_225B21FAC(v69, &v202);

    v71 = v203;
    v197 = 0x8000000225D16190;
    if (v203)
    {
      v196 = v202;
      v64 = v205;
      v194 = v204;
      v73 = v206;
      v72 = v207;
    }

    else
    {
      v202 = v63;
      v75 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v76 = v201;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v78 = [v76 code];
        v79 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v79;
        *(inited + 40) = v78;
        v73 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v80 = v63;
        v194 = 0;
        v64 = 0;
        v71 = MEMORY[0x277D84F90];
      }

      else
      {
        v202 = v63;
        v98 = v63;
        v99 = sub_225CCE954();
        v100 = v170;
        v101 = swift_dynamicCast();
        v102 = *(v99 - 8);
        (*(v102 + 56))(v100, v101 ^ 1u, 1, v99);
        LODWORD(v102) = (*(v102 + 48))(v100, 1, v99);
        sub_2259CB640(v100, &unk_27D73B050);
        if (v102)
        {
          v103 = v196;
        }

        else
        {
          v103 = 23;
        }

        v196 = v103;
        v71 = MEMORY[0x277D84F90];
        v73 = sub_225B2C374(MEMORY[0x277D84F90]);
        v104 = v63;
        v194 = 0xD000000000000026;
      }

      v72 = v63;
    }

    v198 |= 0x8000000000000000;
    v199 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v202 = v73;
    sub_225B2C4A0(v66, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v202);

    v106 = v202;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_225B29AA0(0, *(v71 + 2) + 1, 1, v71);
    }

    v108 = *(v71 + 2);
    v107 = *(v71 + 3);
    if (v108 >= v107 >> 1)
    {
      v71 = sub_225B29AA0((v107 > 1), v108 + 1, 1, v71);
    }

    *(v71 + 2) = v108 + 1;
    v109 = &v71[56 * v108];
    v110 = v197;
    *(v109 + 4) = 0xD000000000000026;
    *(v109 + 5) = v110;
    v111 = v199;
    *(v109 + 6) = 0xD00000000000002ALL;
    *(v109 + 7) = v111;
    v112 = v198;
    *(v109 + 8) = 0xD00000000000003BLL;
    *(v109 + 9) = v112;
    *(v109 + 10) = 233;
    *v68 = v196;
    v113 = v194;
    *(v68 + 8) = v71;
    *(v68 + 16) = v113;
    *(v68 + 24) = v64;
    *(v68 + 32) = v106;
    *(v68 + 40) = v72;
    v114 = v195;
    swift_willThrow();
  }

  else
  {
    v194 = v59;
    (*(v192 + 32))(v36, v62, v53);
    v202 = v190;
    v203 = v191;
    sub_2259CB710(v190, v191);
    sub_2259DB42C();
    v74 = v188;
    sub_225CCE024();
    v166 = v36;
    (*(v184 + 32))(v186, v74, v185);
    v193 = sub_2259E4764(&qword_27D73AE60, MEMORY[0x277CC5550]);
    v81 = v176;
    v82 = v178;
    sub_225CCDB94();
    v83 = v179;
    v84 = v180;
    sub_2259CB710(v179, v180);
    sub_225A9EC88(v83, v84, v81);
    v196 = 0;
    sub_2259BEF00(v83, v84);
    sub_225CCDB84();
    (*(v177 + 8))(v81, v82);
    v85 = v174;
    os_unfair_lock_lock(&v45[v174]);
    v86 = v175;
    v87 = v195;
    v171(v175, &v45[v173], v195);
    os_unfair_lock_unlock(&v45[v85]);
    MEMORY[0x28223BE20](v88, v89);
    *(&v165 - 8) = v83;
    *(&v165 - 7) = v84;
    v90 = v183;
    v91 = v187;
    v93 = v198;
    v92 = v199;
    *(&v165 - 6) = v187;
    *(&v165 - 5) = v92;
    v95 = v190;
    v94 = v191;
    *(&v165 - 4) = v93;
    *(&v165 - 3) = v95;
    *(&v165 - 2) = v94;
    Logger.cryptoParam(_:)(sub_2259E468C);
    v96 = v186;
    v97 = v166;
    v60(v86, v87);
    sub_2259E4764(&qword_27D73AE68, MEMORY[0x277CC52C8]);
    if (sub_225CCE044())
    {
      (*(v184 + 8))(v96, v185);
      (*(v192 + 8))(v97, v53);
      (*(v181 + 8))(v91, v90);
      return;
    }

    v198 = 0x8000000225D161C0;
    v199 = 0x8000000225D15E40;
    v115 = MEMORY[0x277D84F90];
    v116 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v117 = swift_allocError();
    v119 = v118;
    v120 = sub_225CCE954();
    v121 = *(v120 - 8);
    v122 = v169;
    (*(v121 + 56))(v169, 1, 1, v120);
    LODWORD(v120) = (*(v121 + 48))(v122, 1, v120);
    sub_2259CB640(v122, &unk_27D73B050);
    if (v120)
    {
      v123 = v168;
    }

    else
    {
      v123 = 23;
    }

    v124 = sub_225B2C374(v115);
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v124;
    sub_225B2C4A0(v116, sub_225B2AC40, 0, v125, &v202);

    v126 = v202;
    v127 = sub_225B29AA0(0, 1, 1, v115);
    v129 = *(v127 + 2);
    v128 = *(v127 + 3);
    if (v129 >= v128 >> 1)
    {
      v127 = sub_225B29AA0((v128 > 1), v129 + 1, 1, v127);
    }

    *(v127 + 2) = v129 + 1;
    v130 = &v127[56 * v129];
    *(v130 + 4) = 0xD00000000000001CLL;
    *(v130 + 5) = 0x8000000225D16250;
    v131 = v199;
    *(v130 + 6) = 0xD00000000000002ALL;
    *(v130 + 7) = v131;
    v132 = v198;
    *(v130 + 8) = 0xD00000000000003BLL;
    *(v130 + 9) = v132;
    *(v130 + 10) = 248;
    *v119 = v123;
    *(v119 + 8) = v127;
    *(v119 + 16) = 0xD00000000000001CLL;
    *(v119 + 24) = 0x8000000225D16250;
    *(v119 + 32) = v126;
    *(v119 + 40) = 0;
    v114 = v117;
    swift_willThrow();
    (*(v184 + 8))(v186, v185);
    (*(v192 + 8))(v166, v197);
    (*(v181 + 8))(v187, v183);
  }

  v197 = 0x8000000225D16200;
  v133 = v114;
  v134 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v196 = swift_allocError();
  v136 = v135;
  swift_getErrorValue();
  v137 = v200;
  v138 = v114;
  sub_225B21FAC(v137, &v202);

  v139 = v203;
  if (v203)
  {
    v140 = v114;
    v141 = v205;
    v194 = v204;
    v195 = v202;
    v142 = v206;
    v114 = v207;
  }

  else
  {
    v202 = v114;
    v143 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v144 = v201;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v145 = swift_initStackObject();
      *(v145 + 16) = xmmword_225CD30F0;
      *(v145 + 32) = 20;
      v146 = [v144 code];
      v147 = MEMORY[0x277D83BF8];
      *(v145 + 64) = MEMORY[0x277D83B88];
      *(v145 + 72) = v147;
      *(v145 + 40) = v146;
      v142 = sub_225B2C374(v145);
      swift_setDeallocating();
      sub_2259CB640(v145 + 32, &qword_27D73B060);

      v148 = v114;
      v194 = 0;
      v195 = 0;
      v141 = 0;
      v139 = MEMORY[0x277D84F90];
    }

    else
    {
      v202 = v114;
      v149 = v114;
      v150 = sub_225CCE954();
      v151 = v182;
      v152 = swift_dynamicCast();
      v153 = *(v150 - 8);
      (*(v153 + 56))(v151, v152 ^ 1u, 1, v150);
      LODWORD(v153) = (*(v153 + 48))(v151, 1, v150);
      sub_2259CB640(v151, &unk_27D73B050);
      if (v153)
      {
        v154 = 0;
      }

      else
      {
        v154 = 23;
      }

      v195 = v154;
      v139 = MEMORY[0x277D84F90];
      v142 = sub_225B2C374(MEMORY[0x277D84F90]);
      v155 = v114;
      v194 = 0xD00000000000001ELL;
      v141 = v197;
    }

    v140 = v114;
  }

  v156 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v142;
  sub_225B2C4A0(v134, sub_225B2AC40, 0, v156, &v202);

  v157 = v202;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v139 = sub_225B29AA0(0, *(v139 + 2) + 1, 1, v139);
  }

  v159 = *(v139 + 2);
  v158 = *(v139 + 3);
  if (v159 >= v158 >> 1)
  {
    v139 = sub_225B29AA0((v158 > 1), v159 + 1, 1, v139);
  }

  *(v139 + 2) = v159 + 1;
  v160 = &v139[56 * v159];
  v161 = v197;
  *(v160 + 4) = 0xD00000000000001ELL;
  *(v160 + 5) = v161;
  v162 = v199;
  *(v160 + 6) = 0xD00000000000002ALL;
  *(v160 + 7) = v162;
  v163 = v198;
  *(v160 + 8) = 0xD00000000000003BLL;
  *(v160 + 9) = v163;
  *(v160 + 10) = 251;
  v164 = v194;
  *v136 = v195;
  *(v136 + 8) = v139;
  *(v136 + 16) = v164;
  *(v136 + 24) = v141;
  *(v136 + 32) = v157;
  *(v136 + 40) = v114;
  swift_willThrow();
}

void sub_2259E0C88(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v179 = a5;
  v180 = a6;
  v198 = a4;
  v199 = a3;
  v190 = a1;
  v191 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v167 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v170 = &v165 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v182 = &v165 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v169 = &v165 - v19;
  v20 = sub_225CCE184();
  v177 = *(v20 - 8);
  v178 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v176 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_225CCDBC4();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v23);
  v187 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_225CCE114();
  v184 = *(v25 - 8);
  v185 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v188 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v186 = &v165 - v30;
  v197 = sub_225CCE144();
  v192 = *(v197 - 8);
  v32 = MEMORY[0x28223BE20](v197, v31);
  v193 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v165 - v35;
  v37 = sub_225CCD954();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v175 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v165 - v43;
  v196 = v7[1];
  v189 = v7[2];
  v168 = v7[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v45 = off_28105B918;
  v46 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v47 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v47));
  v48 = v38;
  v49 = *(v38 + 16);
  v172 = v38 + 16;
  v173 = v46;
  v195 = v37;
  v171 = v49;
  v49(v44, &v45[v46], v37);
  v174 = v47;
  os_unfair_lock_unlock(&v45[v47]);
  v50 = sub_225CCD934();
  v51 = sub_225CCED04();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v197;
  v54 = v199;
  if (v52)
  {
    v55 = v36;
    v56 = v197;
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2259A7000, v50, v51, "Validating ES512 signature", v57, 2u);
    v58 = v57;
    v53 = v56;
    v36 = v55;
    v54 = v199;
    MEMORY[0x22AA6F950](v58, -1, -1);
  }

  v61 = *(v48 + 8);
  v59 = v48 + 8;
  v60 = v61;
  v61(v44, v195);
  v202 = v54;
  v203 = v198;
  sub_2259CB710(v54, v198);
  v62 = v193;
  v63 = v194;
  sub_225CCE134();
  if (v63)
  {
    v64 = 0x8000000225D16270;
    v198 = "1 public key from data";
    v199 = "te missing public key data";
    v65 = v63;
    v66 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v195 = swift_allocError();
    v68 = v67;
    swift_getErrorValue();
    v69 = v208;
    v70 = v63;
    sub_225B21FAC(v69, &v202);

    v71 = v203;
    v197 = 0x8000000225D16270;
    if (v203)
    {
      v196 = v202;
      v64 = v205;
      v194 = v204;
      v73 = v206;
      v72 = v207;
    }

    else
    {
      v202 = v63;
      v75 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v76 = v201;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v78 = [v76 code];
        v79 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v79;
        *(inited + 40) = v78;
        v73 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v80 = v63;
        v194 = 0;
        v64 = 0;
        v71 = MEMORY[0x277D84F90];
      }

      else
      {
        v202 = v63;
        v98 = v63;
        v99 = sub_225CCE954();
        v100 = v170;
        v101 = swift_dynamicCast();
        v102 = *(v99 - 8);
        (*(v102 + 56))(v100, v101 ^ 1u, 1, v99);
        LODWORD(v102) = (*(v102 + 48))(v100, 1, v99);
        sub_2259CB640(v100, &unk_27D73B050);
        if (v102)
        {
          v103 = v196;
        }

        else
        {
          v103 = 23;
        }

        v196 = v103;
        v71 = MEMORY[0x277D84F90];
        v73 = sub_225B2C374(MEMORY[0x277D84F90]);
        v104 = v63;
        v194 = 0xD000000000000026;
      }

      v72 = v63;
    }

    v198 |= 0x8000000000000000;
    v199 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v202 = v73;
    sub_225B2C4A0(v66, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v202);

    v106 = v202;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_225B29AA0(0, *(v71 + 2) + 1, 1, v71);
    }

    v108 = *(v71 + 2);
    v107 = *(v71 + 3);
    if (v108 >= v107 >> 1)
    {
      v71 = sub_225B29AA0((v107 > 1), v108 + 1, 1, v71);
    }

    *(v71 + 2) = v108 + 1;
    v109 = &v71[56 * v108];
    v110 = v197;
    *(v109 + 4) = 0xD000000000000026;
    *(v109 + 5) = v110;
    v111 = v199;
    *(v109 + 6) = 0xD00000000000002ALL;
    *(v109 + 7) = v111;
    v112 = v198;
    *(v109 + 8) = 0xD00000000000003BLL;
    *(v109 + 9) = v112;
    *(v109 + 10) = 265;
    *v68 = v196;
    v113 = v194;
    *(v68 + 8) = v71;
    *(v68 + 16) = v113;
    *(v68 + 24) = v64;
    *(v68 + 32) = v106;
    *(v68 + 40) = v72;
    v114 = v195;
    swift_willThrow();
  }

  else
  {
    v194 = v59;
    (*(v192 + 32))(v36, v62, v53);
    v202 = v190;
    v203 = v191;
    sub_2259CB710(v190, v191);
    sub_2259DB42C();
    v74 = v188;
    sub_225CCE104();
    v166 = v36;
    (*(v184 + 32))(v186, v74, v185);
    v193 = sub_2259E4764(&qword_27D73AE70, MEMORY[0x277CC5560]);
    v81 = v176;
    v82 = v178;
    sub_225CCDB94();
    v83 = v179;
    v84 = v180;
    sub_2259CB710(v179, v180);
    sub_225A9EEAC(v83, v84, v81);
    v196 = 0;
    sub_2259BEF00(v83, v84);
    sub_225CCDB84();
    (*(v177 + 8))(v81, v82);
    v85 = v174;
    os_unfair_lock_lock(&v45[v174]);
    v86 = v175;
    v87 = v195;
    v171(v175, &v45[v173], v195);
    os_unfair_lock_unlock(&v45[v85]);
    MEMORY[0x28223BE20](v88, v89);
    *(&v165 - 8) = v83;
    *(&v165 - 7) = v84;
    v90 = v183;
    v91 = v187;
    v93 = v198;
    v92 = v199;
    *(&v165 - 6) = v187;
    *(&v165 - 5) = v92;
    v95 = v190;
    v94 = v191;
    *(&v165 - 4) = v93;
    *(&v165 - 3) = v95;
    *(&v165 - 2) = v94;
    Logger.cryptoParam(_:)(sub_2259E46D4);
    v96 = v186;
    v97 = v166;
    v60(v86, v87);
    sub_2259E4764(&qword_27D73AE78, MEMORY[0x277CC52E8]);
    if (sub_225CCE124())
    {
      (*(v184 + 8))(v96, v185);
      (*(v192 + 8))(v97, v53);
      (*(v181 + 8))(v91, v90);
      return;
    }

    v198 = 0x8000000225D162A0;
    v199 = 0x8000000225D15E40;
    v115 = MEMORY[0x277D84F90];
    v116 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v117 = swift_allocError();
    v119 = v118;
    v120 = sub_225CCE954();
    v121 = *(v120 - 8);
    v122 = v169;
    (*(v121 + 56))(v169, 1, 1, v120);
    LODWORD(v120) = (*(v121 + 48))(v122, 1, v120);
    sub_2259CB640(v122, &unk_27D73B050);
    if (v120)
    {
      v123 = v168;
    }

    else
    {
      v123 = 23;
    }

    v124 = sub_225B2C374(v115);
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v124;
    sub_225B2C4A0(v116, sub_225B2AC40, 0, v125, &v202);

    v126 = v202;
    v127 = sub_225B29AA0(0, 1, 1, v115);
    v129 = *(v127 + 2);
    v128 = *(v127 + 3);
    if (v129 >= v128 >> 1)
    {
      v127 = sub_225B29AA0((v128 > 1), v129 + 1, 1, v127);
    }

    *(v127 + 2) = v129 + 1;
    v130 = &v127[56 * v129];
    *(v130 + 4) = 0xD00000000000001CLL;
    *(v130 + 5) = 0x8000000225D16330;
    v131 = v199;
    *(v130 + 6) = 0xD00000000000002ALL;
    *(v130 + 7) = v131;
    v132 = v198;
    *(v130 + 8) = 0xD00000000000003BLL;
    *(v130 + 9) = v132;
    *(v130 + 10) = 280;
    *v119 = v123;
    *(v119 + 8) = v127;
    *(v119 + 16) = 0xD00000000000001CLL;
    *(v119 + 24) = 0x8000000225D16330;
    *(v119 + 32) = v126;
    *(v119 + 40) = 0;
    v114 = v117;
    swift_willThrow();
    (*(v184 + 8))(v186, v185);
    (*(v192 + 8))(v166, v197);
    (*(v181 + 8))(v187, v183);
  }

  v197 = 0x8000000225D162E0;
  v133 = v114;
  v134 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v196 = swift_allocError();
  v136 = v135;
  swift_getErrorValue();
  v137 = v200;
  v138 = v114;
  sub_225B21FAC(v137, &v202);

  v139 = v203;
  if (v203)
  {
    v140 = v114;
    v141 = v205;
    v194 = v204;
    v195 = v202;
    v142 = v206;
    v114 = v207;
  }

  else
  {
    v202 = v114;
    v143 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v144 = v201;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v145 = swift_initStackObject();
      *(v145 + 16) = xmmword_225CD30F0;
      *(v145 + 32) = 20;
      v146 = [v144 code];
      v147 = MEMORY[0x277D83BF8];
      *(v145 + 64) = MEMORY[0x277D83B88];
      *(v145 + 72) = v147;
      *(v145 + 40) = v146;
      v142 = sub_225B2C374(v145);
      swift_setDeallocating();
      sub_2259CB640(v145 + 32, &qword_27D73B060);

      v148 = v114;
      v194 = 0;
      v195 = 0;
      v141 = 0;
      v139 = MEMORY[0x277D84F90];
    }

    else
    {
      v202 = v114;
      v149 = v114;
      v150 = sub_225CCE954();
      v151 = v182;
      v152 = swift_dynamicCast();
      v153 = *(v150 - 8);
      (*(v153 + 56))(v151, v152 ^ 1u, 1, v150);
      LODWORD(v153) = (*(v153 + 48))(v151, 1, v150);
      sub_2259CB640(v151, &unk_27D73B050);
      if (v153)
      {
        v154 = 0;
      }

      else
      {
        v154 = 23;
      }

      v195 = v154;
      v139 = MEMORY[0x277D84F90];
      v142 = sub_225B2C374(MEMORY[0x277D84F90]);
      v155 = v114;
      v194 = 0xD00000000000001ELL;
      v141 = v197;
    }

    v140 = v114;
  }

  v156 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v142;
  sub_225B2C4A0(v134, sub_225B2AC40, 0, v156, &v202);

  v157 = v202;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v139 = sub_225B29AA0(0, *(v139 + 2) + 1, 1, v139);
  }

  v159 = *(v139 + 2);
  v158 = *(v139 + 3);
  if (v159 >= v158 >> 1)
  {
    v139 = sub_225B29AA0((v158 > 1), v159 + 1, 1, v139);
  }

  *(v139 + 2) = v159 + 1;
  v160 = &v139[56 * v159];
  v161 = v197;
  *(v160 + 4) = 0xD00000000000001ELL;
  *(v160 + 5) = v161;
  v162 = v199;
  *(v160 + 6) = 0xD00000000000002ALL;
  *(v160 + 7) = v162;
  v163 = v198;
  *(v160 + 8) = 0xD00000000000003BLL;
  *(v160 + 9) = v163;
  *(v160 + 10) = 283;
  v164 = v194;
  *v136 = v195;
  *(v136 + 8) = v139;
  *(v136 + 16) = v164;
  *(v136 + 24) = v141;
  *(v136 + 32) = v157;
  *(v136 + 40) = v114;
  swift_willThrow();
}

void sub_2259E2298(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v146 = a3;
  v138 = a5;
  v139 = a6;
  v149 = a4;
  v136 = a1;
  v137 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v129 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v130 = &v128 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v132 = &v128 - v15;
  v16 = sub_225CCDB64();
  v140 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v143 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v142 = &v128 - v21;
  v22 = sub_225CCD954();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v135 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v128 - v28;
  v147 = *(v6 + 2);
  v131 = *(v6 + 6);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v30 = off_28105B918;
  v31 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v32 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v32));
  v144 = v23;
  v133 = *(v23 + 16);
  v134 = v31;
  v148 = v22;
  v133(v29, &v30[v31], v22);
  os_unfair_lock_unlock(&v30[v32]);
  v33 = sub_225CCD934();
  v34 = sub_225CCED04();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2259A7000, v33, v34, "Validating Ed25519 signature", v35, 2u);
    MEMORY[0x22AA6F950](v35, -1, -1);
  }

  v141 = v16;

  v36 = v148;
  v144 = *(v144 + 8);
  (v144)(v29);
  v37 = v146;
  v153 = v146;
  v154 = v149;
  sub_2259CB710(v146, v149);
  v38 = v143;
  v39 = v145;
  sub_225CCDB54();
  if (v39)
  {
    v148 = "ve25519 public key from data";
    v149 = "te missing public key data";
    v40 = v39;
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v146 = swift_allocError();
    v43 = v42;
    swift_getErrorValue();
    v44 = v159;
    v45 = v39;
    sub_225B21FAC(v44, &v153);

    v46 = v154;
    v145 = 0x8000000225D16350;
    if (v154)
    {
      v147 = v153;
      v47 = v156;
      v144 = v155;
      v49 = v157;
      v48 = v158;
    }

    else
    {
      v153 = v39;
      v57 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v58 = v150;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v60 = [v58 code];
        v61 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v61;
        *(inited + 40) = v60;
        v49 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v62 = v39;
        v144 = 0;
        v47 = 0;
        v46 = MEMORY[0x277D84F90];
      }

      else
      {
        v153 = v39;
        v81 = v39;
        v82 = sub_225CCE954();
        v83 = v129;
        v84 = swift_dynamicCast();
        v85 = *(v82 - 8);
        (*(v85 + 56))(v83, v84 ^ 1u, 1, v82);
        LODWORD(v85) = (*(v85 + 48))(v83, 1, v82);
        sub_2259CB640(v83, &unk_27D73B050);
        if (v85)
        {
          v86 = v147;
        }

        else
        {
          v86 = 23;
        }

        v147 = v86;
        v46 = MEMORY[0x277D84F90];
        v49 = sub_225B2C374(MEMORY[0x277D84F90]);
        v87 = v39;
        v144 = 0xD00000000000002CLL;
        v47 = 0x8000000225D16350;
      }

      v48 = v39;
    }

    v148 |= 0x8000000000000000;
    v149 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v49;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v153);

    v89 = v153;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_225B29AA0(0, *(v46 + 2) + 1, 1, v46);
    }

    v91 = *(v46 + 2);
    v90 = *(v46 + 3);
    if (v91 >= v90 >> 1)
    {
      v46 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v46);
    }

    *(v46 + 2) = v91 + 1;
    v92 = &v46[56 * v91];
    v93 = v145;
    *(v92 + 4) = 0xD00000000000002CLL;
    *(v92 + 5) = v93;
    v94 = v149;
    *(v92 + 6) = 0xD00000000000002ALL;
    *(v92 + 7) = v94;
    v95 = v148;
    *(v92 + 8) = 0xD00000000000003DLL;
    *(v92 + 9) = v95;
    *(v92 + 10) = 295;
    *v43 = v147;
    v96 = v144;
    *(v43 + 8) = v46;
    *(v43 + 16) = v96;
    *(v43 + 24) = v47;
    *(v43 + 32) = v89;
    *(v43 + 40) = v48;
    v80 = v146;
    swift_willThrow();
  }

  else
  {
    v147 = 0;
    (*(v140 + 32))(v142, v38, v141);
    os_unfair_lock_lock(&v30[v32]);
    v50 = v135;
    v133(v135, &v30[v134], v36);
    os_unfair_lock_unlock(&v30[v32]);
    v51 = v149;
    sub_2259CB710(v37, v149);
    v53 = v138;
    v52 = v139;
    sub_2259CB710(v138, v139);
    v54 = v136;
    v55 = v137;
    sub_2259CB710(v136, v137);
    sub_225B41700(v50, v53, v52, v37, v51, v54, v55);
    sub_2259BEF00(v54, v55);
    sub_2259BEF00(v37, v51);
    sub_2259BEF00(v53, v52);
    (v144)(v50, v148);
    v153 = v54;
    v154 = v55;
    v150 = v53;
    v151 = v52;
    v56 = v142;
    sub_2259DB42C();
    if (sub_225CCDB44())
    {
      (*(v140 + 8))(v56, v141);
      return;
    }

    v148 = 0x8000000225D16380;
    v149 = 0x8000000225D15E40;
    v63 = MEMORY[0x277D84F90];
    v64 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v146 = swift_allocError();
    v66 = v65;
    v67 = sub_225CCE954();
    v68 = *(v67 - 8);
    v69 = v132;
    (*(v68 + 56))(v132, 1, 1, v67);
    LODWORD(v67) = (*(v68 + 48))(v69, 1, v67);
    sub_2259CB640(v69, &unk_27D73B050);
    if (v67)
    {
      v70 = v131;
    }

    else
    {
      v70 = 23;
    }

    v71 = sub_225B2C374(v63);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v71;
    sub_225B2C4A0(v64, sub_225B2AC40, 0, v72, &v153);

    v73 = v153;
    v74 = sub_225B29AA0(0, 1, 1, v63);
    v76 = *(v74 + 2);
    v75 = *(v74 + 3);
    if (v76 >= v75 >> 1)
    {
      v74 = sub_225B29AA0((v75 > 1), v76 + 1, 1, v74);
    }

    *(v74 + 2) = v76 + 1;
    v77 = &v74[56 * v76];
    *(v77 + 4) = 0xD00000000000001CLL;
    *(v77 + 5) = 0x8000000225D163F0;
    v78 = v149;
    *(v77 + 6) = 0xD00000000000002ALL;
    *(v77 + 7) = v78;
    v79 = v148;
    *(v77 + 8) = 0xD00000000000003DLL;
    *(v77 + 9) = v79;
    *(v77 + 10) = 303;
    *v66 = v70;
    *(v66 + 8) = v74;
    *(v66 + 16) = 0xD00000000000001CLL;
    *(v66 + 24) = 0x8000000225D163F0;
    *(v66 + 32) = v73;
    *(v66 + 40) = 0;
    v80 = v146;
    swift_willThrow();
    (*(v140 + 8))(v142, v141);
  }

  v147 = 0x8000000225D163C0;
  v97 = v80;
  v146 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v99 = v98;
  swift_getErrorValue();
  v100 = v152;
  v101 = v80;
  sub_225B21FAC(v100, &v153);

  v102 = v154;
  if (v154)
  {
    v144 = v155;
    v145 = v153;
    v143 = v156;
    v103 = v157;
    v104 = v158;
  }

  else
  {
    v142 = 0;
    v153 = v80;
    v105 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v106 = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v107 = swift_initStackObject();
      *(v107 + 16) = xmmword_225CD30F0;
      *(v107 + 32) = 20;
      v108 = [v106 code];
      v109 = MEMORY[0x277D83BF8];
      *(v107 + 64) = MEMORY[0x277D83B88];
      *(v107 + 72) = v109;
      *(v107 + 40) = v108;
      v103 = sub_225B2C374(v107);
      swift_setDeallocating();
      sub_2259CB640(v107 + 32, &qword_27D73B060);

      v110 = v80;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v102 = MEMORY[0x277D84F90];
    }

    else
    {
      v153 = v80;
      v111 = v80;
      v112 = sub_225CCE954();
      v113 = v130;
      v114 = swift_dynamicCast();
      v115 = *(v112 - 8);
      (*(v115 + 56))(v113, v114 ^ 1u, 1, v112);
      LODWORD(v115) = (*(v115 + 48))(v113, 1, v112);
      sub_2259CB640(v113, &unk_27D73B050);
      if (v115)
      {
        v116 = 0;
      }

      else
      {
        v116 = 23;
      }

      v145 = v116;
      v102 = MEMORY[0x277D84F90];
      v103 = sub_225B2C374(MEMORY[0x277D84F90]);
      v117 = v80;
      v143 = v147;
      v144 = 0xD000000000000024;
    }

    v104 = v80;
  }

  v118 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v103;
  sub_225B2C4A0(v146, sub_225B2AC40, 0, v118, &v153);

  v119 = v153;
  v120 = v80;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v102 = sub_225B29AA0(0, *(v102 + 2) + 1, 1, v102);
  }

  v122 = *(v102 + 2);
  v121 = *(v102 + 3);
  if (v122 >= v121 >> 1)
  {
    v102 = sub_225B29AA0((v121 > 1), v122 + 1, 1, v102);
  }

  *(v102 + 2) = v122 + 1;
  v123 = &v102[56 * v122];
  v124 = v147;
  *(v123 + 4) = 0xD000000000000024;
  *(v123 + 5) = v124;
  v125 = v149;
  *(v123 + 6) = 0xD00000000000002ALL;
  *(v123 + 7) = v125;
  v126 = v148;
  *(v123 + 8) = 0xD00000000000003DLL;
  *(v123 + 9) = v126;
  *(v123 + 10) = 306;
  v127 = v144;
  *v99 = v145;
  *(v99 + 8) = v102;
  *(v99 + 16) = v127;
  *(v99 + 24) = v143;
  *(v99 + 32) = v119;
  *(v99 + 40) = v104;
  swift_willThrow();
}

void sub_2259E3148(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v146 = a3;
  v138 = a5;
  v139 = a6;
  v149 = a4;
  v136 = a1;
  v137 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v129 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v130 = &v128 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v132 = &v128 - v15;
  v16 = sub_225CCE244();
  v140 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v143 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v142 = &v128 - v21;
  v22 = sub_225CCD954();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v135 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v128 - v28;
  v147 = *(v6 + 2);
  v131 = *(v6 + 6);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v30 = off_28105B918;
  v31 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v32 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v32));
  v144 = v23;
  v133 = *(v23 + 16);
  v134 = v31;
  v148 = v22;
  v133(v29, &v30[v31], v22);
  os_unfair_lock_unlock(&v30[v32]);
  v33 = sub_225CCD934();
  v34 = sub_225CCED04();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2259A7000, v33, v34, "Validating Ed448 signature", v35, 2u);
    MEMORY[0x22AA6F950](v35, -1, -1);
  }

  v141 = v16;

  v36 = v148;
  v144 = *(v144 + 8);
  (v144)(v29);
  v37 = v146;
  v153 = v146;
  v154 = v149;
  sub_2259CB710(v146, v149);
  v38 = v143;
  v39 = v145;
  sub_225CCE234();
  if (v39)
  {
    v40 = 0x8000000225D16410;
    v148 = "ve448 public key from data";
    v149 = "te missing public key data";
    v41 = v39;
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v146 = swift_allocError();
    v44 = v43;
    swift_getErrorValue();
    v45 = v159;
    v46 = v39;
    sub_225B21FAC(v45, &v153);

    v47 = v154;
    v145 = 0x8000000225D16410;
    if (v154)
    {
      v147 = v153;
      v40 = v156;
      v144 = v155;
      v49 = v157;
      v48 = v158;
    }

    else
    {
      v153 = v39;
      v57 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v58 = v150;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v60 = [v58 code];
        v61 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v61;
        *(inited + 40) = v60;
        v49 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v62 = v39;
        v144 = 0;
        v40 = 0;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
        v153 = v39;
        v81 = v39;
        v82 = sub_225CCE954();
        v83 = v129;
        v84 = swift_dynamicCast();
        v85 = *(v82 - 8);
        (*(v85 + 56))(v83, v84 ^ 1u, 1, v82);
        LODWORD(v85) = (*(v85 + 48))(v83, 1, v82);
        sub_2259CB640(v83, &unk_27D73B050);
        if (v85)
        {
          v86 = v147;
        }

        else
        {
          v86 = 23;
        }

        v147 = v86;
        v47 = MEMORY[0x277D84F90];
        v49 = sub_225B2C374(MEMORY[0x277D84F90]);
        v87 = v39;
        v144 = 0xD00000000000002ALL;
      }

      v48 = v39;
    }

    v148 |= 0x8000000000000000;
    v149 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v49;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v153);

    v89 = v153;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
    }

    v91 = *(v47 + 2);
    v90 = *(v47 + 3);
    if (v91 >= v90 >> 1)
    {
      v47 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v47);
    }

    *(v47 + 2) = v91 + 1;
    v92 = &v47[56 * v91];
    v93 = v145;
    *(v92 + 4) = 0xD00000000000002ALL;
    *(v92 + 5) = v93;
    v94 = v149;
    *(v92 + 6) = 0xD00000000000002ALL;
    *(v92 + 7) = v94;
    v95 = v148;
    *(v92 + 8) = 0xD00000000000003BLL;
    *(v92 + 9) = v95;
    *(v92 + 10) = 318;
    *v44 = v147;
    v96 = v144;
    *(v44 + 8) = v47;
    *(v44 + 16) = v96;
    *(v44 + 24) = v40;
    *(v44 + 32) = v89;
    *(v44 + 40) = v48;
    v80 = v146;
    swift_willThrow();
  }

  else
  {
    v147 = 0;
    (*(v140 + 32))(v142, v38, v141);
    os_unfair_lock_lock(&v30[v32]);
    v50 = v135;
    v133(v135, &v30[v134], v36);
    os_unfair_lock_unlock(&v30[v32]);
    v51 = v149;
    sub_2259CB710(v37, v149);
    v53 = v138;
    v52 = v139;
    sub_2259CB710(v138, v139);
    v54 = v136;
    v55 = v137;
    sub_2259CB710(v136, v137);
    sub_225B41700(v50, v53, v52, v37, v51, v54, v55);
    sub_2259BEF00(v54, v55);
    sub_2259BEF00(v37, v51);
    sub_2259BEF00(v53, v52);
    (v144)(v50, v148);
    v153 = v54;
    v154 = v55;
    v150 = v53;
    v151 = v52;
    v56 = v142;
    sub_2259DB42C();
    if (sub_225CCE224())
    {
      (*(v140 + 8))(v56, v141);
      return;
    }

    v148 = 0x8000000225D16440;
    v149 = 0x8000000225D15E40;
    v63 = MEMORY[0x277D84F90];
    v64 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v146 = swift_allocError();
    v66 = v65;
    v67 = sub_225CCE954();
    v68 = *(v67 - 8);
    v69 = v132;
    (*(v68 + 56))(v132, 1, 1, v67);
    LODWORD(v67) = (*(v68 + 48))(v69, 1, v67);
    sub_2259CB640(v69, &unk_27D73B050);
    if (v67)
    {
      v70 = v131;
    }

    else
    {
      v70 = 23;
    }

    v71 = sub_225B2C374(v63);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v71;
    sub_225B2C4A0(v64, sub_225B2AC40, 0, v72, &v153);

    v73 = v153;
    v74 = sub_225B29AA0(0, 1, 1, v63);
    v76 = *(v74 + 2);
    v75 = *(v74 + 3);
    if (v76 >= v75 >> 1)
    {
      v74 = sub_225B29AA0((v75 > 1), v76 + 1, 1, v74);
    }

    *(v74 + 2) = v76 + 1;
    v77 = &v74[56 * v76];
    *(v77 + 4) = 0xD00000000000001ALL;
    *(v77 + 5) = 0x8000000225D164B0;
    v78 = v149;
    *(v77 + 6) = 0xD00000000000002ALL;
    *(v77 + 7) = v78;
    v79 = v148;
    *(v77 + 8) = 0xD00000000000003BLL;
    *(v77 + 9) = v79;
    *(v77 + 10) = 326;
    *v66 = v70;
    *(v66 + 8) = v74;
    *(v66 + 16) = 0xD00000000000001ALL;
    *(v66 + 24) = 0x8000000225D164B0;
    *(v66 + 32) = v73;
    *(v66 + 40) = 0;
    v80 = v146;
    swift_willThrow();
    (*(v140 + 8))(v142, v141);
  }

  v147 = 0x8000000225D16480;
  v97 = v80;
  v146 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v99 = v98;
  swift_getErrorValue();
  v100 = v152;
  v101 = v80;
  sub_225B21FAC(v100, &v153);

  v102 = v154;
  if (v154)
  {
    v144 = v155;
    v145 = v153;
    v143 = v156;
    v103 = v157;
    v104 = v158;
  }

  else
  {
    v142 = 0;
    v153 = v80;
    v105 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v106 = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v107 = swift_initStackObject();
      *(v107 + 16) = xmmword_225CD30F0;
      *(v107 + 32) = 20;
      v108 = [v106 code];
      v109 = MEMORY[0x277D83BF8];
      *(v107 + 64) = MEMORY[0x277D83B88];
      *(v107 + 72) = v109;
      *(v107 + 40) = v108;
      v103 = sub_225B2C374(v107);
      swift_setDeallocating();
      sub_2259CB640(v107 + 32, &qword_27D73B060);

      v110 = v80;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v102 = MEMORY[0x277D84F90];
    }

    else
    {
      v153 = v80;
      v111 = v80;
      v112 = sub_225CCE954();
      v113 = v130;
      v114 = swift_dynamicCast();
      v115 = *(v112 - 8);
      (*(v115 + 56))(v113, v114 ^ 1u, 1, v112);
      LODWORD(v115) = (*(v115 + 48))(v113, 1, v112);
      sub_2259CB640(v113, &unk_27D73B050);
      if (v115)
      {
        v116 = 0;
      }

      else
      {
        v116 = 23;
      }

      v145 = v116;
      v102 = MEMORY[0x277D84F90];
      v103 = sub_225B2C374(MEMORY[0x277D84F90]);
      v117 = v80;
      v143 = v147;
      v144 = 0xD000000000000022;
    }

    v104 = v80;
  }

  v118 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v103;
  sub_225B2C4A0(v146, sub_225B2AC40, 0, v118, &v153);

  v119 = v153;
  v120 = v80;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v102 = sub_225B29AA0(0, *(v102 + 2) + 1, 1, v102);
  }

  v122 = *(v102 + 2);
  v121 = *(v102 + 3);
  if (v122 >= v121 >> 1)
  {
    v102 = sub_225B29AA0((v121 > 1), v122 + 1, 1, v102);
  }

  *(v102 + 2) = v122 + 1;
  v123 = &v102[56 * v122];
  v124 = v147;
  *(v123 + 4) = 0xD000000000000022;
  *(v123 + 5) = v124;
  v125 = v149;
  *(v123 + 6) = 0xD00000000000002ALL;
  *(v123 + 7) = v125;
  v126 = v148;
  *(v123 + 8) = 0xD00000000000003BLL;
  *(v123 + 9) = v126;
  *(v123 + 10) = 329;
  v127 = v144;
  *v99 = v145;
  *(v99 + 8) = v102;
  *(v99 + 16) = v127;
  *(v99 + 24) = v143;
  *(v99 + 32) = v119;
  *(v99 + 40) = v104;
  swift_willThrow();
}