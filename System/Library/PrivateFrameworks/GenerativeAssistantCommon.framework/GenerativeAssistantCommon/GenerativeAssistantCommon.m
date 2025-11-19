uint64_t static GenerativeAssistantProvider.shared.getter()
{
  type metadata accessor for GenerativeAssistantProvider();

  return swift_initStaticObject();
}

uint64_t sub_221C41B2C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_221C41B90@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27CFDF1E0;
  *a1 = qword_27CFDF1D8;
  a1[1] = v2;
}

uint64_t sub_221C41C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_221C41C68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t UIImage.getPlatformData()()
{
  v1 = UIImagePNGRepresentation(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221C56D80();

  return v3;
}

id static UIImage.getPlatformImageFrom(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_221C41EA8(a1, a2);
    v5 = sub_221C56D70();
    v6 = [v4 initWithData_];

    sub_221C41EFC(a1, a2);
    if (v6)
    {
      return v6;
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v8 init];
}

id static UIImage.tryToGetPlatformImageFrom(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_221C41EA8(a1, a2);
  v5 = sub_221C56D70();
  v6 = [v4 initWithData_];

  sub_221C41EFC(a1, a2);
  result = v6;
  if (!v6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_221C41EA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_221C41EFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_221C41F10(a1, a2);
  }

  return a1;
}

uint64_t sub_221C41F10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::Int_optional __swiftcall UIImage.getFileSize()()
{
  v1 = UIImagePNGRepresentation(v0);
  v2 = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = sub_221C56D80();
  v5 = v4;

  v6 = v5;
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      sub_221C41F10(v3, v5);
      v1 = 0;
      goto LABEL_12;
    }

    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    sub_221C41F10(v3, v6);
    v1 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v7)
  {
    sub_221C41F10(v3, v5);
    v1 = BYTE6(v5);
    goto LABEL_12;
  }

  v1 = sub_221C41F10(v3, v6);
  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = HIDWORD(v3) - v3;
LABEL_12:
  v10 = v2 == 0;
LABEL_14:
  result.value = v1;
  result.is_nil = v10;
  return result;
}

Swift::String_optional __swiftcall UIImage.getFileExtension()()
{
  v1 = [v0 CGImage];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = CGImageGetUTType(v1);
  if (!v3)
  {

    v1 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_221C57090();
  v7 = v6;

  v8 = v7;
  v1 = v5;
LABEL_6:
  result.value._object = v8;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_221C420B4()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_27CFDEEF8);
  __swift_project_value_buffer(v0, qword_27CFDEEF8);
  return sub_221C56F80();
}

uint64_t static Logger.platformImage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CFDEEF0 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  v3 = __swift_project_value_buffer(v2, qword_27CFDEEF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_221C422DC(uint64_t a1, int a2)
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

uint64_t sub_221C422FC(uint64_t result, int a2, int a3)
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

void sub_221C42338(uint64_t a1, unint64_t *a2)
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

uint64_t GenerativeAssistantProvider.LLMProvider.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_221C57200();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_221C423FC()
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C42468()
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C424B8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_221C57200();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_221C42528()
{
  type metadata accessor for GenerativeAssistantProvider();
  result = swift_initStaticObject();
  qword_27CFDEF70 = result;
  return result;
}

uint64_t sub_221C42580()
{
  sub_221C56DF0();
  v0 = v7;
  v1 = v8;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  v5[3] = v0;
  v5[4] = *(v1 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v0 - 8) + 16))(boxed_opaque_existential_1, v2, v0);
  sub_221C56E40();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_221C42718()
{
  v0 = sub_221C56E50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C56DF0();
  v5 = v12;
  v6 = v13;
  v7 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v10[3] = v5;
  v10[4] = *(v6 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_221C56FE0();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_221C42884()
{
  result = qword_27CFDEF78;
  if (!qword_27CFDEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEF78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantProvider.LLMProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GenerativeAssistantProvider.LLMProvider(_WORD *result, int a2, int a3)
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

uint64_t SupportedDocumentType.localizedDescription()()
{
  v1 = *(*(sub_221C56DA0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = sub_221C56D50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_221C57070() - 8) + 64);
  MEMORY[0x28223BE20]();
  *v0;
  sub_221C57060();
  if (qword_27CFDEF38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27CFE1130);
  (*(v3 + 16))(v6, v8, v2);
  sub_221C56D90();
  return sub_221C56D60();
}

Swift::String __swiftcall SupportedDocumentType.description()()
{
  v1 = 0xEC000000746E656DLL;
  v2 = 0x75636F4420464450;
  v3 = *v0;
  v4 = 0x75636F4420465452;
  if (v3 != 7)
  {
    v4 = 0x75636F4420545854;
  }

  v5 = 0x6F44207365676150;
  v6 = 0x8000000221C59230;
  if (v3 == 5)
  {
    v6 = 0xEE00746E656D7563;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*v0 > 6u)
  {
    v7 = 0xEC000000746E656DLL;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x65676170626557;
  if (v3 != 3)
  {
    v9 = 0xD000000000000013;
    v8 = 0x8000000221C59250;
  }

  if (v3 >= 2)
  {
    v2 = 0x6F44206567616D49;
    v1 = 0xEE00746E656D7563;
  }

  if (*v0 > 2u)
  {
    v2 = v9;
    v1 = v8;
  }

  if (*v0 <= 4u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  if (*v0 <= 4u)
  {
    v11 = v1;
  }

  else
  {
    v11 = v7;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_221C42E4C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6D75636F44666470;
    v6 = 0x6F44736567616D69;
    if (a1 != 2)
    {
      v6 = 0x4165676170626577;
    }

    if (a1)
    {
      v5 = 0x4165676170626577;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4465746F6E79656BLL;
    v2 = 0x7478655468636972;
    if (a1 != 7)
    {
      v2 = 0x7865546E69616C70;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x44737265626D756ELL;
    if (a1 != 4)
    {
      v3 = 0x636F447365676170;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_221C42FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221C458B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221C43000(uint64_t a1)
{
  v2 = sub_221C44BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4303C(uint64_t a1)
{
  v2 = sub_221C44BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43078(uint64_t a1)
{
  v2 = sub_221C44E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C430B4(uint64_t a1)
{
  v2 = sub_221C44E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C430F0(uint64_t a1)
{
  v2 = sub_221C44CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4312C(uint64_t a1)
{
  v2 = sub_221C44CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43168(uint64_t a1)
{
  v2 = sub_221C44D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C431A4(uint64_t a1)
{
  v2 = sub_221C44D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C431E0(uint64_t a1)
{
  v2 = sub_221C44D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4321C(uint64_t a1)
{
  v2 = sub_221C44D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43258(uint64_t a1)
{
  v2 = sub_221C44ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C43294(uint64_t a1)
{
  v2 = sub_221C44ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C432D0(uint64_t a1)
{
  v2 = sub_221C44C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C4330C(uint64_t a1)
{
  v2 = sub_221C44C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43348(uint64_t a1)
{
  v2 = sub_221C44C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C43384(uint64_t a1)
{
  v2 = sub_221C44C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C433C0(uint64_t a1)
{
  v2 = sub_221C44DD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C433FC(uint64_t a1)
{
  v2 = sub_221C44DD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C43438(uint64_t a1)
{
  v2 = sub_221C44E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C43474(uint64_t a1)
{
  v2 = sub_221C44E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportedDocumentType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF80, &qword_221C57A80);
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v74 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF88, &qword_221C57A88);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v71 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF90, &qword_221C57A90);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v68 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEF98, &qword_221C57A98);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v65 = &v58 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFA0, &qword_221C57AA0);
  v63 = *(v64 - 8);
  v16 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v62 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFA8, &qword_221C57AA8);
  v81 = *(v18 - 8);
  v82 = v18;
  v19 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v80 = &v58 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFB0, &qword_221C57AB0);
  v79 = *(v61 - 8);
  v21 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v78 = &v58 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFB8, &qword_221C57AB8);
  v77 = *(v60 - 8);
  v23 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v25 = &v58 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFC0, &qword_221C57AC0);
  v59 = *(v26 - 8);
  v27 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v58 - v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDEFC8, &qword_221C57AC8);
  v30 = *(v84 - 8);
  v31 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v58 - v32;
  v34 = *v2;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C44BDC();
  v83 = v33;
  sub_221C57300();
  v36 = (v30 + 8);
  if (v34 <= 3)
  {
    v75 = v26;
    v76 = (v30 + 8);
    v42 = v77;
    v43 = v78;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    v47 = v82;
    if (v34 > 1)
    {
      if (v34 != 2)
      {
        v88 = 3;
        sub_221C44DD4();
        v55 = v45;
        v57 = v83;
        v56 = v84;
        sub_221C57240();
        (*(v46 + 8))(v55, v47);
        return (*v76)(v57, v56);
      }

      v87 = 2;
      sub_221C44E28();
      v49 = v83;
      v50 = v84;
      sub_221C57240();
      (*(v44 + 8))(v43, v61);
    }

    else
    {
      if (v34)
      {
        v86 = 1;
        sub_221C44E7C();
        v53 = v83;
        v54 = v84;
        sub_221C57240();
        (*(v42 + 8))(v25, v60);
        return (*v76)(v53, v54);
      }

      v85 = 0;
      sub_221C44ED0();
      v48 = v29;
      v49 = v83;
      v50 = v84;
      sub_221C57240();
      (*(v59 + 8))(v48, v75);
    }

    return (*v76)(v49, v50);
  }

  if (v34 > 5)
  {
    if (v34 == 6)
    {
      v91 = 6;
      sub_221C44CD8();
      v37 = v68;
      v38 = v83;
      v39 = v84;
      sub_221C57240();
      v41 = v69;
      v40 = v70;
    }

    else if (v34 == 7)
    {
      v92 = 7;
      sub_221C44C84();
      v37 = v71;
      v38 = v83;
      v39 = v84;
      sub_221C57240();
      v41 = v72;
      v40 = v73;
    }

    else
    {
      v93 = 8;
      sub_221C44C30();
      v37 = v74;
      v38 = v83;
      v39 = v84;
      sub_221C57240();
      v41 = v75;
      v40 = v76;
    }

    goto LABEL_19;
  }

  if (v34 != 4)
  {
    v90 = 5;
    sub_221C44D2C();
    v37 = v65;
    v38 = v83;
    v39 = v84;
    sub_221C57240();
    v41 = v66;
    v40 = v67;
LABEL_19:
    (*(v41 + 8))(v37, v40);
    return (*v36)(v38, v39);
  }

  v89 = 4;
  sub_221C44D80();
  v52 = v62;
  v38 = v83;
  v39 = v84;
  sub_221C57240();
  (*(v63 + 8))(v52, v64);
  return (*v36)(v38, v39);
}

uint64_t SupportedDocumentType.hashValue.getter()
{
  v1 = *v0;
  sub_221C572C0();
  MEMORY[0x223DA5430](v1);
  return sub_221C572E0();
}

uint64_t SupportedDocumentType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v93 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF020, &qword_221C57AD0);
  v82 = *(v85 - 8);
  v3 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v88 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF028, &qword_221C57AD8);
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v87 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF030, &qword_221C57AE0);
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v92 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF038, &qword_221C57AE8);
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v91 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF040, &qword_221C57AF0);
  v15 = *(v14 - 8);
  v76 = v14;
  v77 = v15;
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v90 = &v64 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF048, &qword_221C57AF8);
  v75 = *(v74 - 8);
  v18 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v89 = &v64 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF050, &qword_221C57B00);
  v73 = *(v72 - 8);
  v20 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v86 = &v64 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF058, &qword_221C57B08);
  v71 = *(v70 - 8);
  v22 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF060, &qword_221C57B10);
  v69 = *(v25 - 8);
  v26 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF068, &qword_221C57B18);
  v30 = *(v29 - 8);
  v31 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v64 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_221C44BDC();
  v36 = v94;
  sub_221C572F0();
  if (v36)
  {
    goto LABEL_12;
  }

  v66 = v28;
  v65 = v25;
  v38 = v89;
  v37 = v90;
  v40 = v91;
  v39 = v92;
  v94 = v30;
  v67 = 0;
  v41 = v93;
  v42 = sub_221C57230();
  if (*(v42 + 16) == 1)
  {
    v68 = *(v42 + 32);
    if (v68 != 9)
    {
      if (v68 <= 3)
      {
        if (v68 <= 1)
        {
          if (v68)
          {
            v97 = 1;
            sub_221C44E7C();
            v58 = v67;
            sub_221C57210();
            if (!v58)
            {
              (*(v71 + 8))(v24, v70);
              (*(v94 + 8))(v33, v29);
              goto LABEL_41;
            }
          }

          else
          {
            v96 = 0;
            sub_221C44ED0();
            v51 = v66;
            v52 = v67;
            sub_221C57210();
            if (!v52)
            {
              (*(v69 + 8))(v51, v65);
              (*(v94 + 8))(v33, v29);
              goto LABEL_41;
            }
          }

LABEL_25:
          (*(v94 + 8))(v33, v29);
          goto LABEL_11;
        }

        if (v68 == 2)
        {
          v98 = 2;
          sub_221C44E28();
          v53 = v86;
          v54 = v67;
          sub_221C57210();
          v55 = v94;
          if (!v54)
          {
            (*(v73 + 8))(v53, v72);
LABEL_40:
            (*(v55 + 8))(v33, v29);
            goto LABEL_41;
          }
        }

        else
        {
          v99 = 3;
          sub_221C44DD4();
          v59 = v67;
          sub_221C57210();
          v55 = v94;
          if (!v59)
          {
            (*(v75 + 8))(v38, v74);
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v68 > 5)
        {
          if (v68 == 6)
          {
            v102 = 6;
            sub_221C44CD8();
            v57 = v67;
            sub_221C57210();
            if (!v57)
            {
              (*(v80 + 8))(v39, v81);
              (*(v94 + 8))(v33, v29);
              goto LABEL_41;
            }
          }

          else if (v68 == 7)
          {
            v103 = 7;
            sub_221C44C84();
            v43 = v87;
            v44 = v67;
            sub_221C57210();
            if (!v44)
            {
              (*(v83 + 8))(v43, v84);
              (*(v94 + 8))(v33, v29);
LABEL_41:
              swift_unknownObjectRelease();
              v49 = v95;
              goto LABEL_42;
            }
          }

          else
          {
            v60 = v41;
            v104 = 8;
            sub_221C44C30();
            v61 = v88;
            v62 = v67;
            sub_221C57210();
            if (!v62)
            {
              (*(v82 + 8))(v61, v85);
              (*(v94 + 8))(v33, v29);
              swift_unknownObjectRelease();
              v49 = v95;
              v41 = v60;
LABEL_42:
              *v41 = v68;
              return __swift_destroy_boxed_opaque_existential_1(v49);
            }
          }

          goto LABEL_25;
        }

        if (v68 == 4)
        {
          v100 = 4;
          sub_221C44D80();
          v56 = v67;
          sub_221C57210();
          v55 = v94;
          if (!v56)
          {
            (*(v77 + 8))(v37, v76);
            goto LABEL_40;
          }
        }

        else
        {
          v101 = 5;
          sub_221C44D2C();
          v63 = v67;
          sub_221C57210();
          v55 = v94;
          if (!v63)
          {
            (*(v78 + 8))(v40, v79);
            goto LABEL_40;
          }
        }
      }

      (*(v55 + 8))(v33, v29);
      goto LABEL_11;
    }
  }

  v45 = sub_221C571A0();
  swift_allocError();
  v47 = v46;
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF070, &qword_221C57B20) + 48);
  *v47 = &type metadata for SupportedDocumentType;
  sub_221C57220();
  sub_221C57190();
  (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
  swift_willThrow();
  (*(v94 + 8))(v33, v29);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v49 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_221C44AD8()
{
  v1 = *v0;
  sub_221C572C0();
  MEMORY[0x223DA5430](v1);
  return sub_221C572E0();
}

uint64_t sub_221C44B20()
{
  v1 = *v0;
  sub_221C572C0();
  MEMORY[0x223DA5430](v1);
  return sub_221C572E0();
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

unint64_t sub_221C44BDC()
{
  result = qword_27CFDEFD0;
  if (!qword_27CFDEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFD0);
  }

  return result;
}

unint64_t sub_221C44C30()
{
  result = qword_27CFDEFD8;
  if (!qword_27CFDEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFD8);
  }

  return result;
}

unint64_t sub_221C44C84()
{
  result = qword_27CFDEFE0;
  if (!qword_27CFDEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFE0);
  }

  return result;
}

unint64_t sub_221C44CD8()
{
  result = qword_27CFDEFE8;
  if (!qword_27CFDEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFE8);
  }

  return result;
}

unint64_t sub_221C44D2C()
{
  result = qword_27CFDEFF0;
  if (!qword_27CFDEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFF0);
  }

  return result;
}

unint64_t sub_221C44D80()
{
  result = qword_27CFDEFF8;
  if (!qword_27CFDEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDEFF8);
  }

  return result;
}

unint64_t sub_221C44DD4()
{
  result = qword_27CFDF000;
  if (!qword_27CFDF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF000);
  }

  return result;
}

unint64_t sub_221C44E28()
{
  result = qword_27CFDF008;
  if (!qword_27CFDF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF008);
  }

  return result;
}

unint64_t sub_221C44E7C()
{
  result = qword_27CFDF010;
  if (!qword_27CFDF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF010);
  }

  return result;
}

unint64_t sub_221C44ED0()
{
  result = qword_27CFDF018;
  if (!qword_27CFDF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF018);
  }

  return result;
}

unint64_t sub_221C44F28()
{
  result = qword_27CFDF078;
  if (!qword_27CFDF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF078);
  }

  return result;
}

uint64_t sub_221C44F98(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_221C45028(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221C4517C()
{
  result = qword_27CFDF080;
  if (!qword_27CFDF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF080);
  }

  return result;
}

unint64_t sub_221C451D4()
{
  result = qword_27CFDF088;
  if (!qword_27CFDF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF088);
  }

  return result;
}

unint64_t sub_221C4522C()
{
  result = qword_27CFDF090;
  if (!qword_27CFDF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF090);
  }

  return result;
}

unint64_t sub_221C45284()
{
  result = qword_27CFDF098;
  if (!qword_27CFDF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF098);
  }

  return result;
}

unint64_t sub_221C452DC()
{
  result = qword_27CFDF0A0;
  if (!qword_27CFDF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0A0);
  }

  return result;
}

unint64_t sub_221C45334()
{
  result = qword_27CFDF0A8;
  if (!qword_27CFDF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0A8);
  }

  return result;
}

unint64_t sub_221C4538C()
{
  result = qword_27CFDF0B0;
  if (!qword_27CFDF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0B0);
  }

  return result;
}

unint64_t sub_221C453E4()
{
  result = qword_27CFDF0B8;
  if (!qword_27CFDF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0B8);
  }

  return result;
}

unint64_t sub_221C4543C()
{
  result = qword_27CFDF0C0;
  if (!qword_27CFDF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0C0);
  }

  return result;
}

unint64_t sub_221C45494()
{
  result = qword_27CFDF0C8;
  if (!qword_27CFDF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0C8);
  }

  return result;
}

unint64_t sub_221C454EC()
{
  result = qword_27CFDF0D0;
  if (!qword_27CFDF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0D0);
  }

  return result;
}

unint64_t sub_221C45544()
{
  result = qword_27CFDF0D8;
  if (!qword_27CFDF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0D8);
  }

  return result;
}

unint64_t sub_221C4559C()
{
  result = qword_27CFDF0E0;
  if (!qword_27CFDF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0E0);
  }

  return result;
}

unint64_t sub_221C455F4()
{
  result = qword_27CFDF0E8;
  if (!qword_27CFDF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0E8);
  }

  return result;
}

unint64_t sub_221C4564C()
{
  result = qword_27CFDF0F0;
  if (!qword_27CFDF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0F0);
  }

  return result;
}

unint64_t sub_221C456A4()
{
  result = qword_27CFDF0F8;
  if (!qword_27CFDF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF0F8);
  }

  return result;
}

unint64_t sub_221C456FC()
{
  result = qword_27CFDF100;
  if (!qword_27CFDF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF100);
  }

  return result;
}

unint64_t sub_221C45754()
{
  result = qword_27CFDF108;
  if (!qword_27CFDF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF108);
  }

  return result;
}

unint64_t sub_221C457AC()
{
  result = qword_27CFDF110;
  if (!qword_27CFDF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF110);
  }

  return result;
}

unint64_t sub_221C45804()
{
  result = qword_27CFDF118;
  if (!qword_27CFDF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF118);
  }

  return result;
}

unint64_t sub_221C4585C()
{
  result = qword_27CFDF120;
  if (!qword_27CFDF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF120);
  }

  return result;
}

uint64_t sub_221C458B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75636F44666470 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_221C57260() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4165676170626577 && a2 == 0xEC00000046445073 || (sub_221C57260() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F44736567616D69 && a2 == 0xEE00746E656D7563 || (sub_221C57260() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4165676170626577 && a2 == 0xED00006B6E694C73 || (sub_221C57260() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44737265626D756ELL && a2 == 0xEF746E656D75636FLL || (sub_221C57260() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636F447365676170 && a2 == 0xED0000746E656D75 || (sub_221C57260() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4465746F6E79656BLL && a2 == 0xEF746E656D75636FLL || (sub_221C57260() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7478655468636972 && a2 == 0xEC000000656C6946 || (sub_221C57260() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7865546E69616C70 && a2 == 0xED0000656C694674)
  {

    return 8;
  }

  else
  {
    v6 = sub_221C57260();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_221C45BEC()
{
  result = [objc_allocWithZone(type metadata accessor for GMAvailabilityProvider()) init];
  qword_27CFDF128 = result;
  return result;
}

id GMAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GMAvailabilityProvider.shared.getter()
{
  if (qword_27CFDEF18 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDF128;

  return v1;
}

uint64_t sub_221C45CB0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_221C56F10();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_221C56E30();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_221C56EF0();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_221C56F60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C56E00();
  sub_221C56E10();
  (*(v5 + 8))(v8, v20);
  (*(v22 + 104))(v4, *MEMORY[0x277D0E2B8], v23);
  sub_221C56EE0();
  sub_221C56F40();
  (*(v9 + 8))(v12, v21);
  sub_221C56F00();
  return (*(v14 + 8))(v17, v13);
}

BOOL sub_221C45F80()
{
  ObjectType = swift_getObjectType();
  v113 = sub_221C56EB0();
  v109 = *(v113 - 8);
  v0 = *(v109 + 64);
  v1 = MEMORY[0x28223BE20](v113);
  v108 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v112 = &v108 - v3;
  v123 = sub_221C56E80();
  v111 = *(v123 - 8);
  v4 = *(v111 + 64);
  v5 = MEMORY[0x28223BE20](v123);
  v110 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v122 = &v108 - v7;
  v124 = sub_221C56F10();
  v119 = *(v124 - 1);
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v124);
  v118 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_221C56E30();
  v10 = *(v116 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v116);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_221C56EF0();
  v14 = *(v117 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v117);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_221C56F60();
  v18 = *(v115 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v115);
  v21 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_221C56ED0();
  v23 = *(v22 - 8);
  v126 = v22;
  v127 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v121 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v120 = &v108 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v108 - v32;
  sub_221C56E00();
  sub_221C56E10();
  (*(v10 + 8))(v13, v116);
  (*(v119 + 104))(v118, *MEMORY[0x277D0E2B8], v124);
  sub_221C56EE0();
  sub_221C56F40();
  (*(v14 + 8))(v17, v117);
  sub_221C56F00();
  (*(v18 + 8))(v21, v115);
  if (qword_27CFDEF20 != -1)
  {
    swift_once();
  }

  v34 = sub_221C56F90();
  v35 = __swift_project_value_buffer(v34, qword_27CFE1110);
  v37 = v126;
  v36 = v127;
  v38 = *(v127 + 16);
  v38(v31, v33, v126);
  v119 = v35;
  v39 = sub_221C56F70();
  v40 = sub_221C57110();
  v41 = os_log_type_enabled(v39, v40);
  v125 = v33;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v128[0] = v43;
    *v42 = 136446722;
    v44 = sub_221C57330();
    v46 = sub_221C471AC(v44, v45, v128);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_221C471AC(0x5274657373417369, 0xEE00292879646165, v128);
    *(v42 + 22) = 2082;
    sub_221C47EE0(&qword_27CFDF150, MEMORY[0x277D0E280]);
    v47 = sub_221C57250();
    v49 = v48;
    v124 = *(v127 + 8);
    v124(v31, v37);
    v50 = sub_221C471AC(v47, v49, v128);

    *(v42 + 24) = v50;
    _os_log_impl(&dword_221C40000, v39, v40, "%{public}s.%{public}s GM availability: %{public}s", v42, 0x20u);
    swift_arrayDestroy();
    v51 = v43;
    v36 = v127;
    MEMORY[0x223DA5860](v51, -1, -1);
    v52 = v42;
    v33 = v125;
    MEMORY[0x223DA5860](v52, -1, -1);
  }

  else
  {

    v124 = *(v36 + 8);
    v124(v31, v37);
  }

  v53 = v120;
  v54 = v121;
  v38(v120, v33, v37);
  v55 = *(v36 + 88);
  if (v55(v53, v37) != *MEMORY[0x277D0DFA8])
  {
    v72 = v53;
    v73 = v124;
    v124(v72, v37);
    v38(v54, v33, v37);
    if (v55(v54, v37) == *MEMORY[0x277D0DFB0])
    {
      v123 = v36 + 8;
      (*(v36 + 96))(v54, v37);
      v74 = v109;
      v75 = v112;
      v76 = v113;
      (*(v109 + 32))(v112, v54, v113);
      v77 = v108;
      (*(v74 + 16))(v108, v75, v76);
      v78 = sub_221C56F70();
      v79 = sub_221C57100();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v128[0] = v81;
        *v80 = 136446722;
        v82 = sub_221C57330();
        v84 = sub_221C471AC(v82, v83, v128);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2082;
        *(v80 + 14) = sub_221C471AC(0x5274657373417369, 0xEE00292879646165, v128);
        *(v80 + 22) = 2082;
        sub_221C47EE0(&qword_27CFDF138, MEMORY[0x277D0E238]);
        v85 = sub_221C57250();
        v87 = v86;
        v127 = *(v74 + 8);
        (v127)(v77, v76);
        v88 = sub_221C471AC(v85, v87, v128);

        *(v80 + 24) = v88;
        _os_log_impl(&dword_221C40000, v78, v79, "%{public}s.%{public}s GM unavailable with info: %{public}s", v80, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DA5860](v81, -1, -1);
        MEMORY[0x223DA5860](v80, -1, -1);
      }

      else
      {

        v127 = *(v74 + 8);
        (v127)(v77, v76);
      }

      v98 = v112;
      v99 = sub_221C56EA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF130, &qword_221C58450);
      v100 = sub_221C56E90();
      v101 = *(v100 - 8);
      v102 = *(v101 + 72);
      v103 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_221C58430;
      v105 = v104 + v103;
      v106 = *(v101 + 104);
      v106(v105, *MEMORY[0x277D0E0E8], v100);
      v106(v105 + v102, *MEMORY[0x277D0E168], v100);
      v106(v105 + 2 * v102, *MEMORY[0x277D0E190], v100);
      LOBYTE(v101) = sub_221C47764(v104, v99);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (v127)(v98, v113);
      v124(v125, v126);
      if ((v101 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v73(v33, v37);
      v73(v54, v37);
    }

    return 1;
  }

  (*(v36 + 96))(v53, v37);
  v56 = v111;
  v57 = v122;
  v58 = v123;
  (*(v111 + 32))(v122, v53, v123);
  v59 = v110;
  (*(v56 + 16))(v110, v57, v58);
  v60 = sub_221C56F70();
  v61 = sub_221C57100();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v128[0] = v63;
    *v62 = 136446722;
    v64 = sub_221C57330();
    v66 = sub_221C471AC(v64, v65, v128);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2082;
    *(v62 + 14) = sub_221C471AC(0x5274657373417369, 0xEE00292879646165, v128);
    *(v62 + 22) = 2082;
    sub_221C47EE0(&qword_27CFDF148, MEMORY[0x277D0E058]);
    v67 = sub_221C57250();
    v69 = v68;
    v70 = *(v56 + 8);
    v70(v59, v58);
    v71 = sub_221C471AC(v67, v69, v128);

    *(v62 + 24) = v71;
    _os_log_impl(&dword_221C40000, v60, v61, "%{public}s.%{public}s GM restricted with info: %{public}s", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v63, -1, -1);
    MEMORY[0x223DA5860](v62, -1, -1);
  }

  else
  {

    v70 = *(v56 + 8);
    v70(v59, v58);
  }

  v89 = v122;
  v90 = sub_221C56E70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF140, &qword_221C58458);
  v91 = sub_221C56E60();
  v92 = *(v91 - 8);
  v93 = *(v92 + 72);
  v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_221C58440;
  v96 = v95 + v94;
  v97 = *(v92 + 104);
  v97(v96, *MEMORY[0x277D0DFD8], v91);
  v97(v96 + v93, *MEMORY[0x277D0E008], v91);
  LOBYTE(v92) = sub_221C47A40(v95, v90);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v70(v89, v123);
  v124(v125, v126);
  return (v92 & 1) != 0;
}

id GMAvailabilityProvider.init()()
{
  sub_221C56DB0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GMAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221C4701C()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_27CFE1110);
  __swift_project_value_buffer(v0, qword_27CFE1110);
  return sub_221C56F80();
}

uint64_t sub_221C470A0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_221C470EC(void (*a1)(void))
{
  a1();

  return sub_221C57330();
}

uint64_t sub_221C47150(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_221C471AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_221C471AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221C47278(v11, 0, 0, 1, a1, a2);
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
    sub_221C47E80(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_221C47278(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_221C47384(a5, a6);
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
    result = sub_221C571B0();
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

uint64_t sub_221C47384(uint64_t a1, unint64_t a2)
{
  v4 = sub_221C473D0(a1, a2);
  sub_221C47500(&unk_2835237C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_221C473D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_221C475EC(v5, 0);
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

  result = sub_221C571B0();
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
        v10 = sub_221C570D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221C475EC(v10, 0);
        result = sub_221C57160();
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

uint64_t sub_221C47500(uint64_t result)
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

  result = sub_221C47660(result, v12, 1, v3);
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

void *sub_221C475EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF180, &qword_221C584C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_221C47660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF180, &qword_221C584C8);
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

_BYTE **sub_221C47754(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_221C47764(uint64_t a1, uint64_t a2)
{
  v4 = sub_221C56E90();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v25 = *(a1 + 16);
  if (!v25)
  {
    return 1;
  }

  v12 = a2;
  v13 = 0;
  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v26 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v29 = *(v14 + 56);
  v30 = v15;
  v28 = v12 + 56;
  v16 = (v14 - 8);
  while (1)
  {
    v27 = v13;
    v30(v11, v26 + v29 * v13, v4);
    if (*(v12 + 16))
    {
      v17 = *(v12 + 40);
      sub_221C47EE0(&qword_27CFDF188, MEMORY[0x277D0E218]);
      v18 = sub_221C57040();
      v19 = -1 << *(v12 + 32);
      v20 = v18 & ~v19;
      if ((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_4:
    v13 = v27 + 1;
    (*v16)(v11, v4);
    if (v13 == v25)
    {
      return 1;
    }
  }

  v21 = ~v19;
  while (1)
  {
    v30(v8, *(v12 + 48) + v20 * v29, v4);
    sub_221C47EE0(&qword_27CFDF190, MEMORY[0x277D0E218]);
    v22 = sub_221C57050();
    v23 = *v16;
    (*v16)(v8, v4);
    if (v22)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v23(v11, v4);
  return 0;
}

uint64_t sub_221C47A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_221C56E60();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v25 = *(a1 + 16);
  if (!v25)
  {
    return 1;
  }

  v12 = a2;
  v13 = 0;
  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v26 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v29 = *(v14 + 56);
  v30 = v15;
  v28 = v12 + 56;
  v16 = (v14 - 8);
  while (1)
  {
    v27 = v13;
    v30(v11, v26 + v29 * v13, v4);
    if (*(v12 + 16))
    {
      v17 = *(v12 + 40);
      sub_221C47EE0(&qword_27CFDF170, MEMORY[0x277D0E038]);
      v18 = sub_221C57040();
      v19 = -1 << *(v12 + 32);
      v20 = v18 & ~v19;
      if ((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_4:
    v13 = v27 + 1;
    (*v16)(v11, v4);
    if (v13 == v25)
    {
      return 1;
    }
  }

  v21 = ~v19;
  while (1)
  {
    v30(v8, *(v12 + 48) + v20 * v29, v4);
    sub_221C47EE0(&qword_27CFDF178, MEMORY[0x277D0E038]);
    v22 = sub_221C57050();
    v23 = *v16;
    (*v16)(v8, v4);
    if (v22)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v23(v11, v4);
  return 0;
}

uint64_t type metadata accessor for GMAvailabilityProvider()
{
  result = qword_27CFDF160;
  if (!qword_27CFDF160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221C47D70()
{
  result = sub_221C56DC0();
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

uint64_t sub_221C47E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_221C47EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221C47F28()
{
  type metadata accessor for UNGenerativeModelsAvailabilityCache();
  swift_allocObject();
  result = sub_221C47F6C();
  qword_27CFE1128 = result;
  return result;
}

uint64_t sub_221C47F6C()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1A8, &qword_221C58548);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = sub_221C57080();
  *(v0 + 40) = sub_221C47F64;
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v0, *(v0 + 40), *(v0 + 32), 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

uint64_t sub_221C48014()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = *(v0 + 32);
  CFNotificationCenterRemoveObserver(v1, v0, v2, 0);

  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_221C480C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF198, &qword_221C58538);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v32 = v27 - v9;
  v31 = sub_221C56F10();
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_221C56EF0();
  v28 = *(v30 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_221C56F60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a1 + 16);
  if (*(v21 + 16))
  {
    v27[1] = a1;

    v22 = sub_221C4E788(a2, a3);
    if (v23)
    {
      (*(v17 + 16))(v20, *(v21 + 56) + *(v17 + 72) * v22, v16);

      return (*(v17 + 32))(v33, v20, v16);
    }
  }

  (*(v29 + 104))(v12, *MEMORY[0x277D0E2D8], v31);

  sub_221C56EE0();
  v25 = v33;
  sub_221C56F40();
  (*(v28 + 8))(v15, v30);
  v26 = v32;
  (*(v17 + 16))(v32, v25, v16);
  (*(v17 + 56))(v26, 0, 1, v16);
  swift_beginAccess();

  sub_221C48470(v26, a2, a3);
  return swift_endAccess();
}

uint64_t sub_221C48470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF198, &qword_221C58538);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_221C56F60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_221C48628(a1);
    sub_221C48690(a2, a3, v10);

    return sub_221C48628(v10);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_221C48D6C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_221C48628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF198, &qword_221C58538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221C48690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_221C4E788(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_221C48F9C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_221C56F60();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_221C48B80(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_221C56F60();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_221C48800(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_221C56F60();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1A0, &qword_221C58540);
  v46 = a2;
  result = sub_221C571E0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_221C572C0();
      sub_221C570B0();
      result = sub_221C572E0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_221C48B80(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221C57150() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_221C572C0();

      sub_221C570B0();
      v13 = sub_221C572E0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_221C56F60() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221C48D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_221C4E788(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_221C48F9C();
      goto LABEL_7;
    }

    sub_221C48800(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_221C4E788(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_221C57270();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_221C56F60();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_221C48EEC(v12, a2, a3, a1, v18);
}

uint64_t sub_221C48EEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_221C56F60();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_221C48F9C()
{
  v1 = v0;
  v36 = sub_221C56F60();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1A0, &qword_221C58540);
  v4 = *v0;
  v5 = sub_221C571D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_221C4921C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);

    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock(v1 + 4);
    sub_221C49314(v3);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_221C492C0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x277D84F98];
}

uint64_t SiriFeatureFlagManager.isRemoteMontaraEnabled.getter()
{
  v2[3] = &type metadata for SiriFeatureFlags;
  v2[4] = sub_221C49384();
  v0 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_221C49384()
{
  result = qword_27CFDF1B0;
  if (!qword_27CFDF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF1B0);
  }

  return result;
}

uint64_t SiriFeatureFlagManager.description.getter()
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_221C57170();
  v0 = sub_221C57180();
  v2 = v1;

  v8 = v0;
  v9 = v2;
  MEMORY[0x223DA5220](0x6C62616E45736920, 0xEC000000203A6465);
  v7[3] = &type metadata for SiriFeatureFlags;
  v7[4] = sub_221C49384();
  v3 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v4, v5);

  return v8;
}

unint64_t sub_221C49508()
{
  result = qword_27CFDF1B8;
  if (!qword_27CFDF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF1B8);
  }

  return result;
}

uint64_t sub_221C4955C()
{
  sub_221C572C0();
  MEMORY[0x223DA5430](0);
  return sub_221C572E0();
}

uint64_t sub_221C495C8()
{
  sub_221C572C0();
  MEMORY[0x223DA5430](0);
  return sub_221C572E0();
}

uint64_t static SessionPersistenceUtils.isBackToBackRequest(sessionId:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v18 = sub_221C56F90();
    __swift_project_value_buffer(v18, qword_27CFDF1C0);
    v5 = sub_221C56F70();
    v19 = sub_221C57100();
    if (!os_log_type_enabled(v5, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
    v22 = "%s.%s sessionId is nil";
LABEL_22:
    _os_log_impl(&dword_221C40000, v5, v19, v22, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v21, -1, -1);
    MEMORY[0x223DA5860](v20, -1, -1);
LABEL_23:

    return 0;
  }

  v4 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (!v4)
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v23 = sub_221C56F90();
    __swift_project_value_buffer(v23, qword_27CFDF1C0);
    v5 = sub_221C56F70();
    v19 = sub_221C57100();
    if (!os_log_type_enabled(v5, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
    v22 = "%s.%s Cannot retrieve defaults from the extension domain";
    goto LABEL_22;
  }

  v5 = v4;
  v6 = sub_221C57080();
  v7 = [v5 stringForKey:v6];

  if (!v7)
  {
LABEL_9:
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v13 = sub_221C56F90();
    __swift_project_value_buffer(v13, qword_27CFDF1C0);
    v14 = sub_221C56F70();
    v15 = sub_221C570F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
      _os_log_impl(&dword_221C40000, v14, v15, "%s.%s sessionId didn't matched. We are NOT in the same session.", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v17, -1, -1);
      MEMORY[0x223DA5860](v16, -1, -1);
    }

    goto LABEL_23;
  }

  v8 = sub_221C57090();
  v10 = v9;

  if (v8 == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_221C57260();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v25 = sub_221C56F90();
  __swift_project_value_buffer(v25, qword_27CFDF1C0);

  v26 = sub_221C56F70();
  v27 = sub_221C570F0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C59420, &v30);
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_221C471AC(a1, a2, &v30);
    _os_log_impl(&dword_221C40000, v26, v27, "%s.%s sessionId matched. We are still in the same session %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v29, -1, -1);
    MEMORY[0x223DA5860](v28, -1, -1);
  }

  return 1;
}

uint64_t static SessionPersistenceUtils.didConfirmInSession(sessionId:)(uint64_t a1, uint64_t a2)
{
  v4 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_221C57080();
    v7 = [v5 stringForKey_];

    if (!v7)
    {
LABEL_8:
      v13 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV017didConfirmInMediaD09sessionIdSbSS_tFZ_0(a1, a2);

      return v13 & 1;
    }

    v8 = sub_221C57090();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
    }

    else
    {
      v12 = sub_221C57260();

      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v20 = sub_221C56F90();
    __swift_project_value_buffer(v20, qword_27CFDF1C0);
    v21 = sub_221C56F70();
    v22 = sub_221C570F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v25);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C594C0, &v25);
      _os_log_impl(&dword_221C40000, v21, v22, "%s.%s text sessionId matched", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v24, -1, -1);
      MEMORY[0x223DA5860](v23, -1, -1);
    }

    return 1;
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v15 = sub_221C56F90();
    __swift_project_value_buffer(v15, qword_27CFDF1C0);
    v16 = sub_221C56F70();
    v17 = sub_221C57100();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v25);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_221C471AC(0xD00000000000001FLL, 0x8000000221C594C0, &v25);
      _os_log_impl(&dword_221C40000, v16, v17, "%s.%s Cannot retrieve defaults from the extension domain", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v19, -1, -1);
      MEMORY[0x223DA5860](v18, -1, -1);
    }

    return 0;
  }
}

void static SessionPersistenceUtils.setConfirmation(forTextSession:)()
{
  v0 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v0)
  {
    v1 = v0;
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v2 = sub_221C56F90();
    __swift_project_value_buffer(v2, qword_27CFDF1C0);
    v3 = sub_221C56F70();
    v4 = sub_221C570F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v13);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59530, &v13);
      _os_log_impl(&dword_221C40000, v3, v4, "%s.%s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v6, -1, -1);
      MEMORY[0x223DA5860](v5, -1, -1);
    }

    v7 = sub_221C57080();
    oslog = sub_221C57080();
    [v1 setObject:v7 forKey:oslog];
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v8 = sub_221C56F90();
    __swift_project_value_buffer(v8, qword_27CFDF1C0);
    oslog = sub_221C56F70();
    v9 = sub_221C57100();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v13);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59530, &v13);
      _os_log_impl(&dword_221C40000, oslog, v9, "%s.%s Cannot retrieve defaults from the extension domain", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v11, -1, -1);
      MEMORY[0x223DA5860](v10, -1, -1);
    }
  }
}

void static SessionPersistenceUtils.setConfirmation(forMediaSession:)()
{
  v0 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v0)
  {
    v1 = v0;
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v2 = sub_221C56F90();
    __swift_project_value_buffer(v2, qword_27CFDF1C0);
    v3 = sub_221C56F70();
    v4 = sub_221C570F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v13);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_221C471AC(0xD000000000000021, 0x8000000221C59560, &v13);
      _os_log_impl(&dword_221C40000, v3, v4, "%s.%s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v6, -1, -1);
      MEMORY[0x223DA5860](v5, -1, -1);
    }

    v7 = sub_221C57080();
    oslog = sub_221C57080();
    [v1 setObject:v7 forKey:oslog];
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v8 = sub_221C56F90();
    __swift_project_value_buffer(v8, qword_27CFDF1C0);
    oslog = sub_221C56F70();
    v9 = sub_221C57100();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v13);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_221C471AC(0xD000000000000021, 0x8000000221C59560, &v13);
      _os_log_impl(&dword_221C40000, oslog, v9, "%s.%s Cannot retrieve defaults from the extension domain", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v11, -1, -1);
      MEMORY[0x223DA5860](v10, -1, -1);
    }
  }
}

uint64_t SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.getter()
{
  v1 = *(v0 + 8);
  sub_221C4D110(v1, *(v0 + 16));
  return v1;
}

uint64_t SessionPersistenceUtils.SessionStoredValues.visualIntelligenceImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_221C41EFC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void static SessionPersistenceUtils.storedValuesForSession(sessionId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v25 = sub_221C56F90();
    __swift_project_value_buffer(v25, qword_27CFDF1C0);
    v26 = sub_221C56F70();
    v27 = sub_221C57100();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_27;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
    v30 = "%s.%s Missing sessionId";
    goto LABEL_26;
  }

  v6 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v6)
  {
    v7 = v6;
    v8 = sub_221C57080();
    v9 = [v7 stringForKey_];

    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = sub_221C57090();
    v12 = v11;

    if (v10 == a1 && v12 == a2)
    {
    }

    else
    {
      v14 = sub_221C57260();

      if ((v14 & 1) == 0)
      {
        if (qword_27CFDEF30 != -1)
        {
          swift_once();
        }

        v15 = sub_221C56F90();
        __swift_project_value_buffer(v15, qword_27CFDF1C0);
        v16 = sub_221C56F70();
        v17 = sub_221C570F0();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v78 = v19;
          *v18 = 136315394;
          *(v18 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
          *(v18 + 12) = 2080;
          *(v18 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
          _os_log_impl(&dword_221C40000, v16, v17, "%s.%s sessionId not matched for removeAttachmentKey", v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DA5860](v19, -1, -1);
          MEMORY[0x223DA5860](v18, -1, -1);
        }

LABEL_14:
        v20 = sub_221C57080();
        v21 = [v7 stringForKey_];

        if (v21)
        {
          v22 = sub_221C57090();
          v24 = v23;

          if (v22 == a1 && v24 == a2)
          {

LABEL_35:
            if (qword_27CFDEF30 != -1)
            {
              swift_once();
            }

            v42 = sub_221C56F90();
            __swift_project_value_buffer(v42, qword_27CFDF1C0);
            v43 = sub_221C56F70();
            v44 = sub_221C570F0();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v78 = v46;
              *v45 = 136315394;
              *(v45 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
              *(v45 + 12) = 2080;
              *(v45 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
              _os_log_impl(&dword_221C40000, v43, v44, "%s.%s sessionId matched for selectAlternateAttachmentKey", v45, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223DA5860](v46, -1, -1);
              MEMORY[0x223DA5860](v45, -1, -1);
            }

            v40 = 0;
            v39 = 1;
            goto LABEL_46;
          }

          v41 = sub_221C57260();

          if (v41)
          {
            goto LABEL_35;
          }

          if (qword_27CFDEF30 != -1)
          {
            swift_once();
          }

          v47 = sub_221C56F90();
          __swift_project_value_buffer(v47, qword_27CFDF1C0);
          v48 = sub_221C56F70();
          v49 = sub_221C570F0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v78 = v51;
            *v50 = 136315394;
            *(v50 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
            *(v50 + 12) = 2080;
            *(v50 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
            _os_log_impl(&dword_221C40000, v48, v49, "%s.%s sessionId not matched for selectAlternateAttachmentKey", v50, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DA5860](v51, -1, -1);
            MEMORY[0x223DA5860](v50, -1, -1);
          }
        }

        v39 = 0;
        v40 = 0;
        goto LABEL_46;
      }
    }

    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v34 = sub_221C56F90();
    __swift_project_value_buffer(v34, qword_27CFDF1C0);
    v35 = sub_221C56F70();
    v36 = sub_221C570F0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
      _os_log_impl(&dword_221C40000, v35, v36, "%s.%s sessionId matched for removeAttachmentKey", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v38, -1, -1);
      MEMORY[0x223DA5860](v37, -1, -1);
    }

    v39 = 0;
    v40 = 1;
LABEL_46:
    v52 = sub_221C57080();
    v53 = [v7 stringForKey_];

    if (v53)
    {
      v54 = v40;
      v55 = v39;
      v56 = sub_221C57090();
      v58 = v57;

      if (v56 == a1 && v58 == a2)
      {
      }

      else
      {
        v59 = sub_221C57260();

        if ((v59 & 1) == 0)
        {
          v39 = v55;
          if (qword_27CFDEF30 != -1)
          {
            swift_once();
          }

          v73 = sub_221C56F90();
          __swift_project_value_buffer(v73, qword_27CFDF1C0);
          v74 = sub_221C56F70();
          v75 = sub_221C570F0();
          v40 = v54;
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v78 = v77;
            *v76 = 136315394;
            *(v76 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
            *(v76 + 12) = 2080;
            *(v76 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
            _os_log_impl(&dword_221C40000, v74, v75, "%s.%s sessionId not matched for visual intelligence image data", v76, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DA5860](v77, -1, -1);
            MEMORY[0x223DA5860](v76, -1, -1);
          }

          _s25GenerativeAssistantCommon23SessionPersistenceUtilsV40clearStoredVisualIntelligenceImageValuesyyFZ_0();
          goto LABEL_67;
        }
      }

      v60 = sub_221C57080();
      v61 = [v7 dataForKey_];

      if (v61)
      {
        v32 = sub_221C56D80();
        v33 = v62;

        if (qword_27CFDEF30 != -1)
        {
          swift_once();
        }

        v63 = sub_221C56F90();
        __swift_project_value_buffer(v63, qword_27CFDF1C0);
        v64 = sub_221C56F70();
        v65 = sub_221C570F0();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v78 = v67;
          *v66 = 136315394;
          *(v66 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
          *(v66 + 12) = 2080;
          *(v66 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
          _os_log_impl(&dword_221C40000, v64, v65, "%s.%s found visual intelligence image data", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DA5860](v67, -1, -1);
          MEMORY[0x223DA5860](v66, -1, -1);
        }

        v39 = v55;
        sub_221C41EFC(0, 0xF000000000000000);
        v40 = v54;
        goto LABEL_68;
      }

      v39 = v55;
      if (qword_27CFDEF30 != -1)
      {
        swift_once();
      }

      v68 = sub_221C56F90();
      __swift_project_value_buffer(v68, qword_27CFDF1C0);
      v69 = sub_221C56F70();
      v70 = sub_221C570F0();
      v40 = v54;
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v78 = v72;
        *v71 = 136315394;
        *(v71 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
        _os_log_impl(&dword_221C40000, v69, v70, "%s.%s visual intelligence image data not found", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA5860](v72, -1, -1);
        MEMORY[0x223DA5860](v71, -1, -1);
      }
    }

LABEL_67:

    v32 = 0;
    v33 = 0xF000000000000000;
LABEL_68:
    *a3 = v40;
    *(a3 + 1) = v39;
    goto LABEL_69;
  }

  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v31 = sub_221C56F90();
  __swift_project_value_buffer(v31, qword_27CFDF1C0);
  v26 = sub_221C56F70();
  v27 = sub_221C57100();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v78);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_221C471AC(0xD000000000000022, 0x8000000221C595E0, &v78);
    v30 = "%s.%s Cannot retrieve defaults from the Siri domain";
LABEL_26:
    _os_log_impl(&dword_221C40000, v26, v27, v30, v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v29, -1, -1);
    MEMORY[0x223DA5860](v28, -1, -1);
  }

LABEL_27:

  v32 = 0;
  *a3 = 0;
  v33 = 0xF000000000000000;
LABEL_69:
  *(a3 + 8) = v32;
  *(a3 + 16) = v33;
}

void static SessionPersistenceUtils.setRemoveAttachment(forSession:)()
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v0 = sub_221C56F90();
  __swift_project_value_buffer(v0, qword_27CFDF1C0);
  v1 = sub_221C56F70();
  v2 = sub_221C570F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59750, &v12);
    _os_log_impl(&dword_221C40000, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v4, -1, -1);
    MEMORY[0x223DA5860](v3, -1, -1);
  }

  v5 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v5)
  {
    v6 = v5;
    v7 = sub_221C57080();
    oslog = sub_221C57080();
    [v6 setObject:v7 forKey:oslog];
  }

  else
  {
    oslog = sub_221C56F70();
    v8 = sub_221C57100();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_221C471AC(0xD000000000000020, 0x8000000221C59750, &v12);
      _os_log_impl(&dword_221C40000, oslog, v8, "%s.%s Cannot retrieve defaults from the Siri domain", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v10, -1, -1);
      MEMORY[0x223DA5860](v9, -1, -1);
    }
  }
}

void static SessionPersistenceUtils.setDidSelectAlternateAttachment(_:forSession:)(char a1)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  __swift_project_value_buffer(v2, qword_27CFDF1C0);
  v3 = sub_221C56F70();
  v4 = sub_221C570F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v14);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_221C471AC(0xD00000000000002ELL, 0x8000000221C59780, &v14);
    _os_log_impl(&dword_221C40000, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v6, -1, -1);
    MEMORY[0x223DA5860](v5, -1, -1);
  }

  v7 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = sub_221C57080();
    }

    else
    {
      v9 = 0;
    }

    oslog = sub_221C57080();
    [v8 setObject:v9 forKey:oslog];

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_221C56F70();
    v10 = sub_221C57100();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v14);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_221C471AC(0xD00000000000002ELL, 0x8000000221C59780, &v14);
      _os_log_impl(&dword_221C40000, oslog, v10, "%s.%s Cannot retrieve defaults from the Siri domain", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v12, -1, -1);
      MEMORY[0x223DA5860](v11, -1, -1);
    }
  }
}

void static SessionPersistenceUtils.setVisualIntelligenceImageData(_:forSession:)(uint64_t a1, unint64_t a2)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v4 = sub_221C56F90();
  __swift_project_value_buffer(v4, qword_27CFDF1C0);
  v5 = sub_221C56F70();
  v6 = sub_221C570F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v19);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_221C471AC(0xD00000000000002DLL, 0x8000000221C597B0, &v19);
    _os_log_impl(&dword_221C40000, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v8, -1, -1);
    MEMORY[0x223DA5860](v7, -1, -1);
  }

  v9 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v9)
  {
    if (a2 >> 60 != 15)
    {
      v17 = v9;
      sub_221C41EA8(a1, a2);
      v10 = sub_221C57080();
      v11 = sub_221C57080();
      [v17 setObject:v10 forKey:v11];

      v12 = sub_221C56D70();
      v13 = sub_221C57080();
      [v17 setObject:v12 forKey:v13];

      sub_221C41EFC(a1, a2);
      return;
    }
  }

  else
  {
    v18 = sub_221C56F70();
    v14 = sub_221C57100();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v19);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_221C471AC(0xD00000000000002DLL, 0x8000000221C597B0, &v19);
      _os_log_impl(&dword_221C40000, v18, v14, "%s.%s Cannot retrieve defaults from the Siri domain", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v16, -1, -1);
      MEMORY[0x223DA5860](v15, -1, -1);
    }

    v9 = v18;
  }
}

void static SessionPersistenceUtils.clearStoredValuesForSession()()
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v0 = sub_221C56F90();
  __swift_project_value_buffer(v0, qword_27CFDF1C0);
  v1 = sub_221C56F70();
  v2 = sub_221C570F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_221C471AC(0xD00000000000001DLL, 0x8000000221C597E0, &v12);
    _os_log_impl(&dword_221C40000, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v4, -1, -1);
    MEMORY[0x223DA5860](v3, -1, -1);
  }

  v5 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v5)
  {
    v6 = v5;
    v7 = sub_221C57080();
    [v6 setURL:0 forKey:v7];

    oslog = sub_221C57080();
    [v6 setURL:0 forKey:oslog];
  }

  else
  {
    oslog = sub_221C56F70();
    v8 = sub_221C57100();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_221C471AC(0xD00000000000001DLL, 0x8000000221C597E0, &v12);
      _os_log_impl(&dword_221C40000, oslog, v8, "%s.%s Cannot retrieve defaults from the Siri domain", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v10, -1, -1);
      MEMORY[0x223DA5860](v9, -1, -1);
    }
  }
}

uint64_t sub_221C4C410()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_27CFDF1C0);
  __swift_project_value_buffer(v0, qword_27CFDF1C0);
  return sub_221C56F80();
}

uint64_t static Logger.sessionPersistenceUtils.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  v3 = __swift_project_value_buffer(v2, qword_27CFDF1C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_221C57090();
    v8 = v7;

    if (v6 == a1 && v8 == a2)
    {
    }

    else
    {
      v10 = sub_221C57260();

      if ((v10 & 1) == 0)
      {
        v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v12 = sub_221C57080();
        v13 = [v11 initWithSuiteName_];

        return v13;
      }
    }

    return [objc_opt_self() standardUserDefaults];
  }

  else
  {
    if (qword_27CFDEF30 != -1)
    {
      swift_once();
    }

    v15 = sub_221C56F90();
    __swift_project_value_buffer(v15, qword_27CFDF1C0);
    v16 = sub_221C56F70();
    v17 = sub_221C57100();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v20);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_221C471AC(0xD000000000000018, 0x8000000221C59890, &v20);
      _os_log_impl(&dword_221C40000, v16, v17, "%s.%s Cannot retrieve bundle id", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v19, -1, -1);
      MEMORY[0x223DA5860](v18, -1, -1);
    }

    return 0;
  }
}

void _s25GenerativeAssistantCommon23SessionPersistenceUtilsV03setD0010forCurrentD00H3KeyySS_SStFZ_0(uint64_t a1, unint64_t a2)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v4 = sub_221C56F90();
  __swift_project_value_buffer(v4, qword_27CFDF1C0);

  v5 = sub_221C56F70();
  v6 = sub_221C570F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_221C471AC(0xD000000000000025, 0x8000000221C59860, &v16);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_221C471AC(a1, a2, &v16);
    _os_log_impl(&dword_221C40000, v5, v6, "%s.%s Storing current session %s.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v8, -1, -1);
    MEMORY[0x223DA5860](v7, -1, -1);
  }

  v9 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (v9)
  {
    v10 = v9;
    v11 = sub_221C57080();
    oslog = sub_221C57080();
    [v10 setObject:v11 forKey:oslog];
  }

  else
  {
    oslog = sub_221C56F70();
    v12 = sub_221C57100();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v16);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_221C471AC(0xD000000000000025, 0x8000000221C59860, &v16);
      _os_log_impl(&dword_221C40000, oslog, v12, "%s.%s Cannot retrieve defaults from the extension domain", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v14, -1, -1);
      MEMORY[0x223DA5860](v13, -1, -1);
    }
  }
}

uint64_t _s25GenerativeAssistantCommon23SessionPersistenceUtilsV017didConfirmInMediaD09sessionIdSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v4 = sub_221C56F90();
  __swift_project_value_buffer(v4, qword_27CFDF1C0);
  v5 = sub_221C56F70();
  v6 = sub_221C570F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    _os_log_impl(&dword_221C40000, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v8, -1, -1);
    MEMORY[0x223DA5860](v7, -1, -1);
  }

  v9 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0xD00000000000003FLL, 0x8000000221C591B0);
  if (!v9)
  {
    v10 = sub_221C56F70();
    v16 = sub_221C57100();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
      _os_log_impl(&dword_221C40000, v10, v16, "%s.%s Cannot retrieve defaults from the extension domain", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v18, -1, -1);
      MEMORY[0x223DA5860](v17, -1, -1);
    }

    goto LABEL_22;
  }

  v10 = v9;
  v11 = sub_221C57080();
  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
    v19 = sub_221C56F70();
    v20 = sub_221C570F0();
    if (!os_log_type_enabled(v19, v20))
    {
LABEL_21:

LABEL_22:
      return 0;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    v23 = "%s.%s no media sessionId stored";
LABEL_20:
    _os_log_impl(&dword_221C40000, v19, v20, v23, v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v22, -1, -1);
    MEMORY[0x223DA5860](v21, -1, -1);
    goto LABEL_21;
  }

  v13 = sub_221C57090();
  v15 = v14;

  if (v13 != a1 || v15 != a2)
  {
    v24 = sub_221C57260();

    if (v24)
    {
      goto LABEL_15;
    }

    v19 = sub_221C56F70();
    v20 = sub_221C570F0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_21;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    v23 = "%s.%s sessionId not matched";
    goto LABEL_20;
  }

LABEL_15:
  v25 = sub_221C56F70();
  v26 = sub_221C570F0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v30);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_221C471AC(0xD000000000000024, 0x8000000221C59830, &v30);
    _os_log_impl(&dword_221C40000, v25, v26, "%s.%s media sessionId matched", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v28, -1, -1);
    MEMORY[0x223DA5860](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_221C4D110(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_221C41EA8(a1, a2);
  }

  return a1;
}

void _s25GenerativeAssistantCommon23SessionPersistenceUtilsV40clearStoredVisualIntelligenceImageValuesyyFZ_0()
{
  if (qword_27CFDEF30 != -1)
  {
    swift_once();
  }

  v0 = sub_221C56F90();
  __swift_project_value_buffer(v0, qword_27CFDF1C0);
  v1 = sub_221C56F70();
  v2 = sub_221C570F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_221C471AC(0xD00000000000002ALL, 0x8000000221C59800, &v12);
    _os_log_impl(&dword_221C40000, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v4, -1, -1);
    MEMORY[0x223DA5860](v3, -1, -1);
  }

  v5 = _s25GenerativeAssistantCommon23SessionPersistenceUtilsV12userDefaults9forDomainSo06NSUserH0CSgSS_tFZ_0(0x6C7070612E6D6F63, 0xEE00697269732E65);
  if (v5)
  {
    v6 = v5;
    v7 = sub_221C57080();
    [v6 removeObjectForKey_];

    oslog = sub_221C57080();
    [v6 removeObjectForKey_];
  }

  else
  {
    oslog = sub_221C56F70();
    v8 = sub_221C57100();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_221C471AC(0xD000000000000017, 0x8000000221C58660, &v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_221C471AC(0xD00000000000002ALL, 0x8000000221C59800, &v12);
      _os_log_impl(&dword_221C40000, oslog, v8, "%s.%s Cannot retrieve defaults from the Siri domain", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v10, -1, -1);
      MEMORY[0x223DA5860](v9, -1, -1);
    }
  }
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_221C4D4AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_221C4D500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t static GATError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27CFDF1D8;

  return v0;
}

uint64_t static GATError.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27CFDF1D8 = a1;
  off_27CFDF1E0 = a2;
}

uint64_t sub_221C4D660(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27CFDF1D8 = v2;
  off_27CFDF1E0 = v1;
}

uint64_t GATError.errorCode.getter()
{
  result = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      return *v0 + 2;
    }
  }

  return result;
}

unint64_t GATError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1E8, &qword_221C587D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221C587A0;
    *(inited + 32) = 0xD000000000000012;
    v4 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x8000000221C59900;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = v2;
    v6 = v1;
    v7 = 1;
    goto LABEL_5;
  }

  if (!*(v0 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1E8, &qword_221C587D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221C587A0;
    *(inited + 32) = 0xD000000000000010;
    v4 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x8000000221C59920;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = v2;
    v6 = v1;
    v7 = 0;
LABEL_5:
    sub_221C4ECA4(v5, v6, v7);
    v8 = sub_221C4EB94(inited);
    swift_setDeallocating();
    sub_221C4ECE0(v4, &qword_27CFDF1F0, &qword_221C587D8);
    return v8;
  }

  v10 = MEMORY[0x277D84F90];

  return sub_221C4EB94(v10);
}

uint64_t static GATError.fromNSError(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_221C57090();
  v7 = v6;

  swift_beginAccess();
  if (v5 == qword_27CFDF1D8 && v7 == off_27CFDF1E0)
  {
  }

  else
  {
    v9 = sub_221C57260();

    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  result = [a1 code];
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        *a2 = 0;
        *(a2 + 8) = 0;
LABEL_22:
        v16 = 2;
        goto LABEL_29;
      case 4:
        v11 = xmmword_221C587C0;
        goto LABEL_21;
      case 5:
        v11 = xmmword_221C587B0;
LABEL_21:
        *a2 = v11;
        goto LABEL_22;
    }

LABEL_28:
    *a2 = 0;
    *(a2 + 8) = 0;
    v16 = -1;
    goto LABEL_29;
  }

  if (!result)
  {
    v17 = [a1 userInfo];
    v18 = sub_221C57030();

    if (*(v18 + 16))
    {
      v19 = sub_221C4E788(0xD000000000000010, 0x8000000221C59920);
      if (v20)
      {
        sub_221C47E80(*(v18 + 56) + 32 * v19, v23);

        result = swift_dynamicCast();
        if (result)
        {
          *a2 = v21;
          *(a2 + 8) = v22;
          *(a2 + 16) = 0;
          return result;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if (result != 1)
  {
    goto LABEL_28;
  }

  v12 = [a1 userInfo];
  v13 = sub_221C57030();

  if (!*(v13 + 16) || (v14 = sub_221C4E788(0xD000000000000012, 0x8000000221C59900), (v15 & 1) == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_221C47E80(*(v13 + 56) + 32 * v14, v23);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

  *a2 = v21;
  *(a2 + 8) = v22;
  v16 = 1;
LABEL_29:
  *(a2 + 16) = v16;
  return result;
}

uint64_t sub_221C4DB1C()
{
  swift_beginAccess();
  v0 = qword_27CFDF1D8;

  return v0;
}

uint64_t sub_221C4DB70()
{
  result = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      return *v0 + 2;
    }
  }

  return result;
}

uint64_t sub_221C4DB9C(uint64_t a1)
{
  v2 = sub_221C4F154();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_221C4DBD8(uint64_t a1)
{
  v2 = sub_221C4F154();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_221C4DC94()
{
  v1 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221C4DCD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_221C4DD88(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_221C4DE08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

id CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = &v5[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDomain];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v5[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode] = a3;
  v10 = &v5[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDescription];
  *v10 = a4;
  *(v10 + 1) = a5;

  v11 = sub_221C57080();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1E8, &qword_221C587D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221C587A0;
  v13 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_221C57090();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v14;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  sub_221C4EB94(inited);
  swift_setDeallocating();
  sub_221C4ECE0(inited + 32, &qword_27CFDF1F0, &qword_221C587D8);
  v15 = sub_221C57020();

  v18.receiver = v5;
  v18.super_class = type metadata accessor for CustomErrorWithLocalizedDescription();
  v16 = objc_msgSendSuper2(&v18, sel_initWithDomain_code_userInfo_, v11, a3, v15);

  return v16;
}

id CustomErrorWithLocalizedDescription.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CustomErrorWithLocalizedDescription.init(coder:)(void *a1)
{
  v3 = sub_221C57080();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_221C57140();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v17;
      v5 = v18;
      goto LABEL_9;
    }
  }

  else
  {
    sub_221C4ECE0(&v22, &qword_27CFDF210, &qword_221C587E0);
  }

  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E55;
LABEL_9:
  v7 = &v1[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDomain];
  *v7 = v6;
  v7[1] = v5;
  v8 = sub_221C57080();
  v9 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode] = v9;
  v10 = sub_221C57080();
  v11 = [a1 decodeObjectForKey_];

  if (v11)
  {
    sub_221C57140();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      v13 = v17;
      v12 = v18;
      goto LABEL_17;
    }
  }

  else
  {
    sub_221C4ECE0(&v22, &qword_27CFDF210, &qword_221C587E0);
  }

  v12 = 0xE700000000000000;
  v13 = 0x6E776F6E6B6E55;
LABEL_17:
  v14 = &v1[OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDescription];
  *v14 = v13;
  v14[1] = v12;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for CustomErrorWithLocalizedDescription();
  v15 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

uint64_t sub_221C4E384()
{
  v1 = (v0 + OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDescription);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_221C56D40();
}

uint64_t sub_221C4E46C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

id CustomErrorWithLocalizedDescription.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_221C57080();

  if (a4)
  {
    v9 = sub_221C57020();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id CustomErrorWithLocalizedDescription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomErrorWithLocalizedDescription();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221C4E660()
{
  v1 = [*v0 helpAnchor];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221C57090();

  return v3;
}

uint64_t sub_221C4E6CC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorCode;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_221C4E718()
{
  v1 = (*v0 + OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDescription);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_221C56D40();
}

unint64_t sub_221C4E788(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_221C572C0();
  sub_221C570B0();
  v6 = sub_221C572E0();

  return sub_221C4E800(a1, a2, v6);
}

unint64_t sub_221C4E800(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_221C57260())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s25GenerativeAssistantCommon8GATErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_221C57260();
      sub_221C4ECA4(v6, v5, 0);
      sub_221C4ECA4(v3, v2, 0);
      sub_221C4F1A8(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_27;
    }

    sub_221C4ECA4(v17, v2, 0);
    sub_221C4ECA4(v3, v2, 0);
    sub_221C4F1A8(v3, v2, 0);
    v16 = v3;
    v19 = v2;
    v20 = 0;
    goto LABEL_39;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_10;
        }

        sub_221C4F1A8(*a1, v2, 2u);
        v16 = 3;
      }

      else
      {
        if (v7 != 2 || v6 != 2 || v5)
        {
          goto LABEL_10;
        }

        sub_221C4F1A8(*a1, v2, 2u);
        v16 = 2;
      }
    }

    else
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_221C4F1A8(*a1, v2, 2u);
          v14 = 1;
          sub_221C4F1A8(1, 0, 2u);
          return v14;
        }

        goto LABEL_10;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_10:
        sub_221C4ECA4(*a2, *(a2 + 8), v7);
        sub_221C4ECA4(v3, v2, v4);
        sub_221C4F1A8(v3, v2, v4);
        sub_221C4F1A8(v6, v5, v7);
        return 0;
      }

      sub_221C4F1A8(*a1, v2, 2u);
      v16 = 0;
    }

    v19 = 0;
    v20 = 2;
LABEL_39:
    sub_221C4F1A8(v16, v19, v20);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v14 = 1;
    sub_221C4ECA4(*a1, v2, 1u);
    sub_221C4ECA4(v3, v2, 1u);
    sub_221C4F1A8(v3, v2, 1u);
    sub_221C4F1A8(v3, v2, 1u);
    return v14;
  }

  v9 = *a1;
  v10 = sub_221C57260();
  sub_221C4ECA4(v6, v5, 1u);
  sub_221C4ECA4(v3, v2, 1u);
  sub_221C4F1A8(v3, v2, 1u);
  v11 = v6;
  v12 = v5;
  v13 = 1;
LABEL_27:
  sub_221C4F1A8(v11, v12, v13);
  return v10 & 1;
}

unint64_t sub_221C4EB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF230, &qword_221C58A78);
    v3 = sub_221C571F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_221C4F1C0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_221C4E788(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221C4F230(&v15, (v3[7] + 32 * result));
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

uint64_t sub_221C4ECA4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_221C4ECE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_221C4ED40()
{
  result = qword_27CFDF218;
  if (!qword_27CFDF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF218);
  }

  return result;
}

unint64_t sub_221C4ED94()
{
  result = qword_27CFDF220;
  if (!qword_27CFDF220)
  {
    type metadata accessor for CustomErrorWithLocalizedDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF220);
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t get_enum_tag_for_layout_string_25GenerativeAssistantCommon8GATErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_221C4EE6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_221C4EEB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_221C4EEF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_221C4F154()
{
  result = qword_27CFDF228;
  if (!qword_27CFDF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF228);
  }

  return result;
}

uint64_t sub_221C4F1A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_221C4F1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF1F0, &qword_221C587D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_221C4F230(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t DirectInvocationClientID.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_221C57200();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_221C4F2C8()
{
  result = qword_27CFDF238;
  if (!qword_27CFDF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF238);
  }

  return result;
}

uint64_t sub_221C4F31C()
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C4F390()
{
  sub_221C572C0();
  sub_221C570B0();
  return sub_221C572E0();
}

uint64_t sub_221C4F3E4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_221C57200();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_221C4F478()
{
  result = qword_280FA8C10;
  if (!qword_280FA8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA8C10);
  }

  return result;
}

uint64_t sub_221C4F4E4(char a1)
{
  v4[3] = &type metadata for GenerativeAssistantFeatureFlags;
  v4[4] = sub_221C4F478();
  LOBYTE(v4[0]) = a1;
  v2 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t GenerativeAssistantFeatureFlagManager.description.getter()
{
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_221C57170();
  v19 = 0;
  v20 = 0xE000000000000000;
  v0 = sub_221C57180();
  MEMORY[0x223DA5220](v0);

  MEMORY[0x223DA5220](0x6C62616E45736920, 0xEC000000203A6465);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v1 = sub_221C4F478();
  v18 = v1;
  v2 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v3, v4);

  MEMORY[0x223DA5220](2604, 0xE200000000000000);
  LOBYTE(v16[0]) = 2;
  sub_221C571C0();
  MEMORY[0x223DA5220](0x62616E4520736920, 0xED0000203A64656CLL);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v18 = v1;
  LOBYTE(v16[0]) = 2;
  v5 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v6, v7);

  MEMORY[0x223DA5220](2604, 0xE200000000000000);
  LOBYTE(v16[0]) = 3;
  sub_221C571C0();
  MEMORY[0x223DA5220](0x62616E4520736920, 0xED0000203A64656CLL);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v18 = v1;
  LOBYTE(v16[0]) = 3;
  v8 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v9, v10);

  MEMORY[0x223DA5220](2604, 0xE200000000000000);
  v11 = sub_221C57180();
  MEMORY[0x223DA5220](v11);

  MEMORY[0x223DA5220](0x6C62616E45736920, 0xEC000000203A6465);
  v17 = &type metadata for GenerativeAssistantFeatureFlags;
  v18 = v1;
  LOBYTE(v16[0]) = 1;
  v12 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v12)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x223DA5220](v13, v14);

  MEMORY[0x223DA5220](44, 0xE100000000000000);
  return v19;
}

uint64_t sub_221C4F884(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for GenerativeAssistantFeatureFlags;
  v6[4] = sub_221C4F478();
  LOBYTE(v6[0]) = a3;
  v4 = sub_221C56DD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4 & 1;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeAssistantFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221C4FAA4()
{
  result = qword_27CFDF240;
  if (!qword_27CFDF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF240);
  }

  return result;
}

const char *sub_221C4FB0C()
{
  v1 = "Boomerang";
  v2 = "MultiImageGeneration";
  if (*v0 != 2)
  {
    v2 = "TextContentStream";
  }

  if (*v0)
  {
    v1 = "DataDetector";
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

GenerativeAssistantCommon::Partner_optional __swiftcall Partner.init(requestedPartnerId:)(Swift::String_optional requestedPartnerId)
{
  v2 = v1;
  if (requestedPartnerId.value._object)
  {
    object = requestedPartnerId.value._object;
    if (sub_221C56DE0() == requestedPartnerId.value._countAndFlagsBits && v4 == object)
    {
    }

    else
    {
      v6 = sub_221C57260();

      if ((v6 & 1) == 0)
      {
        v5 = 1;
        goto LABEL_9;
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

LABEL_9:
  *v2 = v5;
  return requestedPartnerId.value._countAndFlagsBits;
}

uint64_t Partner.requestedPartnerId.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return sub_221C56DE0();
  }
}

uint64_t Partner.hashValue.getter()
{
  v1 = *v0;
  sub_221C572C0();
  MEMORY[0x223DA5430](v1);
  return sub_221C572E0();
}

unint64_t sub_221C4FCF8()
{
  result = qword_27CFDF248;
  if (!qword_27CFDF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF248);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Partner(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Partner(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221C4FEDC()
{
  v0 = sub_221C56D50();
  __swift_allocate_value_buffer(v0, qword_27CFE1130);
  v1 = __swift_project_value_buffer(v0, qword_27CFE1130);
  *v1 = type metadata accessor for ResourceBundleHelper();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_221C4FF78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "com.apple.visualIntelligence";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (v3)
    {
      v4 = "GenerativeAssistant.composition";
    }

    else
    {
      v4 = "com.apple.visualIntelligence";
    }
  }

  else if (a1 == 2)
  {
    v4 = "GenerativeAssistant.mediaQA";
    v5 = 0xD00000000000001DLL;
  }

  else if (a1 == 3)
  {
    v4 = "GenerativeAssistant.knowledge";
    v5 = 0xD000000000000025;
  }

  else
  {
    v4 = "ant.knowledgeFallback";
    v5 = 0xD00000000000002CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v2 = "GenerativeAssistant.composition";
    }
  }

  else if (a2 == 2)
  {
    v2 = "GenerativeAssistant.mediaQA";
    v6 = 0xD00000000000001DLL;
  }

  else if (a2 == 3)
  {
    v2 = "GenerativeAssistant.knowledge";
    v6 = 0xD000000000000025;
  }

  else
  {
    v2 = "ant.knowledgeFallback";
    v6 = 0xD00000000000002CLL;
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_221C57260();
  }

  return v7 & 1;
}

GenerativeAssistantCommon::GenerativeAssistantUseCase_optional __swiftcall GenerativeAssistantUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221C57200();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GenerativeAssistantUseCase.rawValue.getter()
{
  v1 = 0xD00000000000001BLL;
  v2 = *v0;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000025;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002CLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_221C501DC()
{
  result = qword_27CFDF250;
  if (!qword_27CFDF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF250);
  }

  return result;
}

uint64_t sub_221C50230()
{
  v1 = *v0;
  sub_221C572C0();
  sub_221C570B0();

  return sub_221C572E0();
}

uint64_t sub_221C50304()
{
  *v0;
  *v0;
  *v0;
  sub_221C570B0();
}

uint64_t sub_221C503C4()
{
  v1 = *v0;
  sub_221C572C0();
  sub_221C570B0();

  return sub_221C572E0();
}

unint64_t sub_221C504A0@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001BLL;
  v3 = *v1;
  v4 = "GenerativeAssistant.mediaQA";
  v5 = 0xD00000000000001DLL;
  v6 = "GenerativeAssistant.knowledge";
  v7 = 0xD000000000000025;
  result = 0xD00000000000002CLL;
  if (v3 != 3)
  {
    v7 = 0xD00000000000002CLL;
    v6 = "ant.knowledgeFallback";
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v9 = "GenerativeAssistant.composition";
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v9 = "com.apple.visualIntelligence";
  }

  if (*v1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantUseCase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeAssistantUseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221C50684()
{
  v0 = sub_221C56F90();
  __swift_allocate_value_buffer(v0, qword_280FA8BF8);
  __swift_project_value_buffer(v0, qword_280FA8BF8);
  return sub_221C56F80();
}

uint64_t static Logger.restrictions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_221C56F90();
  v3 = __swift_project_value_buffer(v2, qword_280FA8BF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_221C507B0()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v2 = result;
  v3 = [result isExternalIntelligenceSignInAllowed];

  if (v3)
  {
    v4 = 0;
    if (AFMontaraRestricted())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = GenerativeAssistantRestrictionManager.isSignedIn.getter();
  if ((AFMontaraRestricted() & 1) == 0)
  {
LABEL_6:
    if (sub_221C55CA4())
    {
      goto LABEL_7;
    }

    if (sub_221C50E1C())
    {
      if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) == 0)
      {
        goto LABEL_7;
      }

      GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
      if (!v15)
      {
        goto LABEL_7;
      }

      v16 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
      v18 = sub_221C51178(v16, v17);

      if (v4 & 1 | ((v18 & 1) == 0))
      {
        goto LABEL_7;
      }
    }

    else if (v4)
    {
      goto LABEL_7;
    }

    result = [v0 sharedConnection];
    if (result)
    {
      v19 = result;
      v5 = [result isExternalIntelligenceAllowed];

      goto LABEL_8;
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v6 = sub_221C56F90();
  __swift_project_value_buffer(v6, qword_280FA8BF8);
  v7 = sub_221C56F70();
  v8 = sub_221C570F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67110144;
    *(v9 + 4) = v5;
    *(v9 + 8) = 1024;
    *(v9 + 10) = AFMontaraRestricted();
    *(v9 + 14) = 1024;
    *(v9 + 16) = sub_221C55CA4() & 1;
    *(v9 + 20) = 1024;
    v14 = 0;
    if (sub_221C50E1C())
    {
      if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) == 0 || (GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter(), !v10) || (, v11 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter(), v13 = sub_221C51178(v11, v12), , (v13 & 1) == 0))
      {
        v14 = 1;
      }
    }

    *(v9 + 22) = v14;
    *(v9 + 26) = 1024;
    *(v9 + 28) = v4 & 1;
    _os_log_impl(&dword_221C40000, v7, v8, "Montara: isMontaraAllowed %{BOOL}d -- afMontaraRestricted %{BOOL}d isMisconfigured %{BOOL}d userNeedsToSignInToWorkspace %{BOOL}d userShouldBeAnonymous %{BOOL}d", v9, 0x20u);
    MEMORY[0x223DA5860](v9, -1, -1);
  }

  return v5;
}

uint64_t GenerativeAssistantRestrictions.isMontaraAllowed.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = v5[8];
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31[-v14];
  if ((*(v16 + 96))(v13))
  {
    v17 = 0;
  }

  else
  {
    v17 = (*(a2 + 72))(a1, a2);
  }

  v33 = *(a2 + 32);
  v34 = (a2 + 32);
  if (v33(a1, a2) & 1) != 0 || (GenerativeAssistantRestrictions.isMisconfigured.getter(a1, a2) & 1) != 0 || (((*(a2 + 144))(a1, a2) | v17))
  {
    v18 = 0;
  }

  else
  {
    v18 = (*(a2 + 104))(a1, a2);
  }

  v35 = v17;
  v36 = v18;
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v19 = sub_221C56F90();
  __swift_project_value_buffer(v19, qword_280FA8BF8);
  v20 = v5[2];
  v20(v15, v2, a1);
  v20(v12, v2, a1);
  v20(v9, v2, a1);
  v21 = sub_221C56F70();
  v22 = sub_221C570F0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67110144;
    v24 = v36;
    *(v23 + 4) = v36 & 1;
    *(v23 + 8) = 1024;
    v32 = v22;
    v25 = v33(a1, a2) & 1;
    v34 = v21;
    v26 = v5[1];
    v26(v15, a1);
    *(v23 + 10) = v25;
    *(v23 + 14) = 1024;
    v27 = GenerativeAssistantRestrictions.isMisconfigured.getter(a1, a2) & 1;
    v26(v12, a1);
    *(v23 + 16) = v27;
    *(v23 + 20) = 1024;
    v28 = (*(a2 + 144))(a1, a2) & 1;
    v26(v9, a1);
    v21 = v34;
    *(v23 + 22) = v28;
    *(v23 + 26) = 1024;
    *(v23 + 28) = v35 & 1;
    _os_log_impl(&dword_221C40000, v21, v32, "Montara: isMontaraAllowed %{BOOL}d -- afMontaraRestricted %{BOOL}d isMisconfigured %{BOOL}d userNeedsToSignInToWorkspace %{BOOL}d userShouldBeAnonymous %{BOOL}d", v23, 0x20u);
    MEMORY[0x223DA5860](v23, -1, -1);
  }

  else
  {
    v29 = v5[1];
    v29(v9, a1);
    v29(v12, a1);
    v29(v15, a1);
    v24 = v36;
  }

  return v24 & 1;
}

BOOL sub_221C50E1C()
{
  sub_221C562A4(&v9);
  v1 = v9;
  v0 = v10;
  if (v10 == 1)
  {
    v2 = 1;
  }

  else
  {
    sub_221C565A8(v9, v10);
    v2 = v0;
  }

  sub_221C56594(v1, v2);
  sub_221C56594(0, 1uLL);
  sub_221C56594(v1, v2);
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v3 = sub_221C56F90();
  __swift_project_value_buffer(v3, qword_280FA8BF8);
  v4 = sub_221C56F70();
  v5 = sub_221C570F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_221C471AC(0xD000000000000024, 0x8000000221C59B50, &v9);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v0 != 1;
    _os_log_impl(&dword_221C40000, v4, v5, "%s: %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223DA5860](v7, -1, -1);
    MEMORY[0x223DA5860](v6, -1, -1);
  }

  return v0 != 1;
}

BOOL GenerativeAssistantRestrictions.isExternalIntelligenceSignInRequired.getter(uint64_t a1, uint64_t a2)
{
  GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter(a1, a2, &v11);
  v3 = v11;
  v2 = v12;
  if (v12 == 1)
  {
    v4 = 1;
  }

  else
  {
    sub_221C565A8(v11, v12);
    v4 = v2;
  }

  sub_221C56594(v3, v4);
  sub_221C56594(0, 1uLL);
  sub_221C56594(v3, v4);
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v5 = sub_221C56F90();
  __swift_project_value_buffer(v5, qword_280FA8BF8);
  v6 = sub_221C56F70();
  v7 = sub_221C570F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_221C471AC(0xD000000000000024, 0x8000000221C59B50, &v11);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v2 != 1;
    _os_log_impl(&dword_221C40000, v6, v7, "%s: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DA5860](v9, -1, -1);
    MEMORY[0x223DA5860](v8, -1, -1);
  }

  return v2 != 1;
}

uint64_t sub_221C51178(uint64_t a1, uint64_t a2)
{
  v3 = sub_221C56CD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C562A4(&v42);
  v8 = v43;
  if (!v43)
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v14 = sub_221C56F90();
    __swift_project_value_buffer(v14, qword_280FA8BF8);
    v15 = sub_221C56F70();
    v16 = sub_221C57100();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_28;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v41);
    v19 = "%s: an empty value for allowedExternalIntelligenceWorkspaceIDs was provided, unable to validate any credentials.";
    goto LABEL_27;
  }

  if (v43 != 1)
  {
    v20 = v42;
    if (a2)
    {
      v41[0] = sub_221C570A0();
      v41[1] = v21;
      sub_221C56CC0();
      sub_221C565BC();
      v22 = sub_221C57130();
      v24 = v23;
      (*(v4 + 8))(v7, v3);

      if (v20 == v22 && v8 == v24)
      {
        sub_221C56594(v20, v8);
      }

      else
      {
        v26 = sub_221C57260();
        sub_221C56594(v20, v8);
        if ((v26 & 1) == 0)
        {
          if (qword_280FA8BF0 != -1)
          {
            swift_once();
          }

          v27 = sub_221C56F90();
          __swift_project_value_buffer(v27, qword_280FA8BF8);

          v28 = sub_221C56F70();
          v29 = sub_221C57100();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v41[0] = v31;
            *v30 = 136315394;
            *(v30 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v41);
            *(v30 + 12) = 2080;
            v32 = sub_221C471AC(v22, v24, v41);

            *(v30 + 14) = v32;
            _os_log_impl(&dword_221C40000, v28, v29, "%s: %s is not allowed", v30, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DA5860](v31, -1, -1);
            MEMORY[0x223DA5860](v30, -1, -1);
          }

          else
          {
          }

          return 0;
        }
      }

      if (qword_280FA8BF0 != -1)
      {
        swift_once();
      }

      v35 = sub_221C56F90();
      __swift_project_value_buffer(v35, qword_280FA8BF8);

      v36 = sub_221C56F70();
      v37 = sub_221C570F0();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41[0] = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v41);
        *(v38 + 12) = 2080;
        v40 = sub_221C471AC(v22, v24, v41);

        *(v38 + 14) = v40;
        _os_log_impl(&dword_221C40000, v36, v37, "%s: workspace id %s matched. User signed in with an accepted workspace.", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA5860](v39, -1, -1);
        MEMORY[0x223DA5860](v38, -1, -1);
      }

      else
      {
      }

      return 1;
    }

    sub_221C56594(v42, v43);
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v33 = sub_221C56F90();
    __swift_project_value_buffer(v33, qword_280FA8BF8);
    v15 = sub_221C56F70();
    v16 = sub_221C57100();
    if (!os_log_type_enabled(v15, v16))
    {
LABEL_28:

      return 0;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v41);
    v19 = "%s: a workspace is required, but the credentials have none";
LABEL_27:
    _os_log_impl(&dword_221C40000, v15, v16, v19, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x223DA5860](v18, -1, -1);
    MEMORY[0x223DA5860](v17, -1, -1);
    goto LABEL_28;
  }

  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v9 = sub_221C56F90();
  __swift_project_value_buffer(v9, qword_280FA8BF8);
  v10 = sub_221C56F70();
  v11 = sub_221C570F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v41);
    _os_log_impl(&dword_221C40000, v10, v11, "%s: no workspace restriction", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223DA5860](v13, -1, -1);
    MEMORY[0x223DA5860](v12, -1, -1);
  }

  return 1;
}

Swift::Bool __swiftcall GenerativeAssistantRestrictions.workspaceAllowed(workspaceId:)(Swift::String_optional workspaceId)
{
  v3 = v2;
  v4 = v1;
  object = workspaceId.value._object;
  v6 = sub_221C56CD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter(v4, v3, &v45);
  v11 = v46;
  if (!v46)
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v18 = sub_221C56F90();
    __swift_project_value_buffer(v18, qword_280FA8BF8);
    v19 = sub_221C56F70();
    v20 = sub_221C57100();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_28;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v44);
    v23 = "%s: an empty value for allowedExternalIntelligenceWorkspaceIDs was provided, unable to validate any credentials.";
    goto LABEL_27;
  }

  if (v46 == 1)
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v12 = sub_221C56F90();
    __swift_project_value_buffer(v12, qword_280FA8BF8);
    v13 = sub_221C56F70();
    v14 = sub_221C570F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v44);
      _os_log_impl(&dword_221C40000, v13, v14, "%s: no workspace restriction", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x223DA5860](v16, -1, -1);
      MEMORY[0x223DA5860](v15, -1, -1);
    }

    return 1;
  }

  v24 = v45;
  if (object)
  {
    v44[0] = sub_221C570A0();
    v44[1] = v25;
    sub_221C56CC0();
    sub_221C565BC();
    v26 = sub_221C57130();
    v28 = v27;
    (*(v7 + 8))(v10, v6);

    if (v24 == v26 && v11 == v28)
    {
      sub_221C56594(v24, v11);
    }

    else
    {
      v30 = sub_221C57260();
      sub_221C56594(v24, v11);
      if ((v30 & 1) == 0)
      {
        if (qword_280FA8BF0 != -1)
        {
          swift_once();
        }

        v31 = sub_221C56F90();
        __swift_project_value_buffer(v31, qword_280FA8BF8);

        v32 = sub_221C56F70();
        v33 = sub_221C57100();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v44[0] = v35;
          *v34 = 136315394;
          *(v34 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v44);
          *(v34 + 12) = 2080;
          v36 = sub_221C471AC(v26, v28, v44);

          *(v34 + 14) = v36;
          _os_log_impl(&dword_221C40000, v32, v33, "%s: %s is not allowed", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DA5860](v35, -1, -1);
          MEMORY[0x223DA5860](v34, -1, -1);
        }

        else
        {
        }

        return 0;
      }
    }

    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v38 = sub_221C56F90();
    __swift_project_value_buffer(v38, qword_280FA8BF8);

    v39 = sub_221C56F70();
    v40 = sub_221C570F0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v44);
      *(v41 + 12) = 2080;
      v43 = sub_221C471AC(v26, v28, v44);

      *(v41 + 14) = v43;
      _os_log_impl(&dword_221C40000, v39, v40, "%s: workspace id %s matched. User signed in with an accepted workspace.", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA5860](v42, -1, -1);
      MEMORY[0x223DA5860](v41, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  sub_221C56594(v45, v46);
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v37 = sub_221C56F90();
  __swift_project_value_buffer(v37, qword_280FA8BF8);
  v19 = sub_221C56F70();
  v20 = sub_221C57100();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_221C471AC(0xD00000000000001ELL, 0x8000000221C59B80, v44);
    v23 = "%s: a workspace is required, but the credentials have none";
LABEL_27:
    _os_log_impl(&dword_221C40000, v19, v20, v23, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x223DA5860](v22, -1, -1);
    MEMORY[0x223DA5860](v21, -1, -1);
  }

LABEL_28:

  return 0;
}

uint64_t sub_221C52030(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221C520D4;

  return GenerativeAssistantRestrictions.signOutIfRestricted()(a1, a2);
}

uint64_t sub_221C520D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_221C521E4()
{
  v16 = v0;
  if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) == 0)
  {
LABEL_5:
    v8 = *(v0 + 8);

    return v8();
  }

  v1 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
  v3 = v2;
  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result isExternalIntelligenceSignInAllowed];

  if (v6)
  {
    v7 = sub_221C51178(v1, v3);

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v9 = sub_221C56F90();
  __swift_project_value_buffer(v9, qword_280FA8BF8);
  v10 = sub_221C56F70();
  v11 = sub_221C570F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_221C471AC(0xD000000000000025, 0x8000000221C59010, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_221C471AC(0xD000000000000015, 0x8000000221C59BA0, &v15);
    _os_log_impl(&dword_221C40000, v10, v11, "%s.%s External intelligence sign in is restricted -- signing out.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v13, -1, -1);
    MEMORY[0x223DA5860](v12, -1, -1);
  }

  v14 = swift_task_alloc();
  *(v0 + 16) = v14;
  *v14 = v0;
  v14[1] = sub_221C52484;

  return GenerativeAssistantRestrictionManager.openAIAuthenticatorSignOut()();
}

uint64_t sub_221C52484()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_221C525B0;
  }

  else
  {
    v3 = sub_221C52598;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t GenerativeAssistantRestrictions.signOutIfRestricted()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221C525EC, 0, 0);
}

uint64_t sub_221C525EC()
{
  v27 = v0;
  v1 = v0[4];
  if (((*(v0[3] + 72))(v0[2]) & 1) == 0)
  {
LABEL_4:
    v8 = v0[1];

    return v8();
  }

  v2 = v0[3];
  v3 = v0[2];
  v4 = (*(v2 + 80))(v3, v2);
  v6 = v5;
  if ((*(v2 + 96))(v3, v2))
  {
    v7 = v0[4];
    LOBYTE(v7) = (*(v0[3] + 128))(v4, v6, v0[2]);

    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v10 = sub_221C56F90();
  __swift_project_value_buffer(v10, qword_280FA8BF8);
  v11 = sub_221C56F70();
  v12 = sub_221C570F0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[2];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315394;
    v16 = sub_221C57330();
    v18 = sub_221C471AC(v16, v17, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_221C471AC(0xD000000000000015, 0x8000000221C59BA0, &v26);
    _os_log_impl(&dword_221C40000, v11, v12, "%s.%s External intelligence sign in is restricted -- signing out.", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA5860](v15, -1, -1);
    MEMORY[0x223DA5860](v14, -1, -1);
  }

  v24 = (v0[3] + 88);
  v25 = (*v24 + **v24);
  v19 = (*v24)[1];
  v20 = swift_task_alloc();
  v0[5] = v20;
  *v20 = v0;
  v20[1] = sub_221C52948;
  v21 = v0[3];
  v22 = v0[4];
  v23 = v0[2];

  return v25(v23, v21);
}

uint64_t sub_221C52948()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_221C52A40()
{
  if (sub_221C50E1C())
  {
    if ((GenerativeAssistantRestrictionManager.isSignedIn.getter() & 1) != 0 && (GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter(), v0))
    {

      v1 = GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter();
      v3 = sub_221C51178(v1, v2);

      v4 = v3 ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t GenerativeAssistantRestrictions.userNeedsToSignInToWorkspace.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 112))())
  {
    if (((*(a2 + 72))(a1, a2) & 1) != 0 && (v4 = *(a2 + 80), v4(a1, a2), v5))
    {

      v6 = v4(a1, a2);
      v7 = (*(a2 + 128))(v6);

      v8 = v7 ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_221C52B9C()
{
  v0 = sub_221C56E30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C56E20();
  v5 = sub_221C56E10();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_27CFDF258 = v5;
  unk_27CFDF260 = v7;
  return result;
}

uint64_t static GenerativeAssistantRestrictionManager.useCase.getter()
{
  if (qword_27CFDEF40 != -1)
  {
    swift_once();
  }

  v0 = qword_27CFDF258;

  return v0;
}

uint64_t sub_221C53658(uint64_t a1, uint64_t a2)
{
  v3 = sub_221C56E90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_221C56C44(&qword_27CFDF188, MEMORY[0x277D0E218]), v9 = sub_221C57040(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_221C56C44(&qword_27CFDF190, MEMORY[0x277D0E218]);
      v17 = sub_221C57050();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_221C53870(uint64_t a1, uint64_t a2)
{
  v3 = sub_221C56E60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_221C56C44(&qword_27CFDF170, MEMORY[0x277D0E038]), v9 = sub_221C57040(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_221C56C44(&qword_27CFDF178, MEMORY[0x277D0E038]);
      v17 = sub_221C57050();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t GenerativeAssistantRestrictionManager.isMontaraHardDisabled.getter()
{
  v0 = sub_221C56E60();
  v80 = *(v0 - 8);
  v81 = v0;
  v1 = *(v80 + 64);
  MEMORY[0x28223BE20](v0);
  v79 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_221C56E80();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  MEMORY[0x28223BE20](v3);
  v83 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221C56E90();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_221C56EB0();
  v78 = *(v82 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221C56F60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_221C56ED0();
  v16 = *(v86 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v86);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v71 - v22;
  if (qword_27CFDEF28 != -1)
  {
    v21 = swift_once();
  }

  v24 = qword_27CFE1128;
  if (qword_27CFDEF40 != -1)
  {
    v21 = swift_once();
  }

  v25 = *(v24 + 24);
  v26 = MEMORY[0x28223BE20](v21);
  *(&v71 - 4) = v24;
  *(&v71 - 3) = v27;
  v72 = v28;
  v73 = v27;
  *(&v71 - 2) = v28;
  MEMORY[0x28223BE20](v26);
  *(&v71 - 2) = sub_221C56C90;
  *(&v71 - 1) = v29;
  os_unfair_lock_lock(v25 + 4);
  sub_221C56CA8();
  os_unfair_lock_unlock(v25 + 4);
  v30 = v23;
  sub_221C56F00();
  (*(v12 + 8))(v15, v11);
  v31 = v16;
  v32 = v86;
  (*(v16 + 16))(v20, v30, v86);
  v33 = (*(v16 + 88))(v20, v32);
  if (v33 != *MEMORY[0x277D0DFA8])
  {
    if (v33 == *MEMORY[0x277D0DFB0])
    {
      (*(v16 + 96))(v20, v32);
      v53 = v77;
      v54 = v78;
      (*(v78 + 32))(v77, v20, v82);
      v55 = sub_221C56EA0();
      v57 = v74;
      v56 = v75;
      v58 = v76;
      (*(v75 + 104))(v74, *MEMORY[0x277D0E0F0], v76);
      v59 = sub_221C53658(v57, v55);

      (*(v56 + 8))(v57, v58);
      if (v59)
      {
        v60 = v54;
        v61 = v82;
        if (qword_280FA8BF0 != -1)
        {
          swift_once();
        }

        v62 = sub_221C56F90();
        __swift_project_value_buffer(v62, qword_280FA8BF8);
        v63 = sub_221C56F70();
        v64 = sub_221C57100();
        v65 = v53;
        if (os_log_type_enabled(v63, v64))
        {
          v66 = v30;
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v87[0] = v68;
          *v67 = 136446210;
          *(v67 + 4) = sub_221C471AC(v73, v72, v87);
          _os_log_impl(&dword_221C40000, v63, v64, "GenerativeAssistantRestrictionManager: use case %{public}s is unavailable(useCaseDisabled)", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x223DA5860](v68, -1, -1);
          MEMORY[0x223DA5860](v67, -1, -1);

          (*(v60 + 8))(v65, v61);
          (*(v31 + 8))(v66, v32);
        }

        else
        {

          (*(v60 + 8))(v53, v61);
          (*(v31 + 8))(v30, v32);
        }

        return 1;
      }

      (*(v54 + 8))(v53, v82);
      (*(v31 + 8))(v30, v32);
    }

    else
    {
      v69 = *(v16 + 8);
      v69(v30, v32);
      v69(v20, v32);
    }

    return 0;
  }

  v82 = v30;
  (*(v16 + 96))(v20, v32);
  v34 = v84;
  v35 = v85;
  v36 = v32;
  v37 = v83;
  (*(v84 + 32))(v83, v20, v85);
  v38 = sub_221C56E70();
  v40 = v79;
  v39 = v80;
  v41 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x277D0DFE0], v81);
  v42 = sub_221C53870(v40, v38);

  (*(v39 + 8))(v40, v41);
  if ((v42 & 1) == 0)
  {
    (*(v34 + 8))(v37, v35);
    (*(v31 + 8))(v82, v36);
    return 0;
  }

  v43 = v36;
  if (qword_280FA8BF0 != -1)
  {
    swift_once();
  }

  v44 = sub_221C56F90();
  __swift_project_value_buffer(v44, qword_280FA8BF8);
  v45 = sub_221C56F70();
  v46 = sub_221C57100();
  v47 = os_log_type_enabled(v45, v46);
  v48 = v35;
  v49 = v37;
  v50 = v82;
  if (v47)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v87[0] = v52;
    *v51 = 136446210;
    *(v51 + 4) = sub_221C471AC(v73, v72, v87);
    _os_log_impl(&dword_221C40000, v45, v46, "GenerativeAssistantRestrictionManager: use case %{public}s is restricted(useCaseDisabled)", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x223DA5860](v52, -1, -1);
    MEMORY[0x223DA5860](v51, -1, -1);
  }

  (*(v34 + 8))(v49, v48);
  (*(v31 + 8))(v50, v43);
  return 1;
}

uint64_t GenerativeAssistantRestrictionManager.isMontaraAvailable.getter()
{
  if (AFMontaraRestricted())
  {
    v0 = 0;
  }

  else
  {
    v0 = GenerativeAssistantRestrictionManager.isMontaraHardDisabled.getter() ^ 1;
  }

  return v0 & 1;
}

BOOL GenerativeAssistantRestrictionManager.isAppleIntelligenceDoneDownloading.getter()
{
  if (qword_27CFDEF18 != -1)
  {
    swift_once();
  }

  return sub_221C45F80();
}

id sub_221C54AD4(SEL *a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GenerativeAssistantRestrictionManager.isSignedIn.getter()
{
  v0 = sub_221C56E50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF278, &qword_221C58F60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v21 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF280, &qword_221C58F68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v21 - v9;
  if (qword_27CFDEF10 != -1)
  {
    swift_once();
  }

  sub_221C56DF0();
  v11 = v23;
  v12 = v24;
  v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v21[3] = v11;
  v21[4] = *(v12 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_221C56FE0();
  (*(v1 + 8))(v4, v0);
  v15 = sub_221C57010();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_221C4ECE0(v7, &qword_27CFDF278, &qword_221C58F60);
    v17 = sub_221C56FD0();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  sub_221C56FF0();
  (*(v16 + 8))(v7, v15);
  v18 = sub_221C56FD0();
  v19 = 1;
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_221C4ECE0(v10, &qword_27CFDF280, &qword_221C58F68);
  return v19;
}

uint64_t GenerativeAssistantRestrictionManager.openAICredentialsWorkspaceId.getter()
{
  v0 = sub_221C56FB0();
  v29 = *(v0 - 8);
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_221C56E50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF278, &qword_221C58F60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v28 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF280, &qword_221C58F68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v28 - v13;
  if (qword_27CFDEF10 != -1)
  {
    swift_once();
  }

  sub_221C56DF0();
  v15 = v32;
  v16 = v33;
  v17 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v30[3] = v15;
  v30[4] = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_221C56FE0();
  (*(v5 + 8))(v8, v4);
  v19 = sub_221C57010();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    v21 = &qword_27CFDF278;
    v22 = &qword_221C58F60;
    v23 = v11;
LABEL_7:
    sub_221C4ECE0(v23, v21, v22);
    return 0;
  }

  sub_221C56FF0();
  (*(v20 + 8))(v11, v19);
  v24 = sub_221C56FD0();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    v21 = &qword_27CFDF280;
    v22 = &qword_221C58F68;
    v23 = v14;
    goto LABEL_7;
  }

  sub_221C56FC0();
  (*(v25 + 8))(v14, v24);
  v27 = sub_221C56FA0();
  (*(v29 + 8))(v3, v0);
  return v27;
}

uint64_t GenerativeAssistantRestrictionManager.openAIAuthenticatorSignOut()()
{
  v1 = sub_221C56E50();
  v0[12] = v1;
  v2 = *(v1 - 8);
  v0[13] = v2;
  v3 = *(v2 + 64) + 15;
  v0[14] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF278, &qword_221C58F60) - 8) + 64) + 15;
  v0[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221C5537C, 0, 0);
}

uint64_t sub_221C5537C()
{
  if (qword_27CFDEF10 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_221C56DF0();
  v5 = v0[5];
  v6 = v0[6];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[10] = v5;
  v0[11] = *(v6 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
  sub_221C56E40();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_221C56FE0();
  (*(v4 + 8))(v1, v3);
  v9 = sub_221C57010();
  v0[16] = v9;
  v10 = *(v9 - 8);
  v0[17] = v10;
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_221C4ECE0(v0[15], &qword_27CFDF278, &qword_221C58F60);
    v12 = v0[14];
    v11 = v0[15];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = *(MEMORY[0x277CEAC60] + 4);
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_221C555BC;
    v17 = v0[15];

    return MEMORY[0x28213D120]();
  }
}

uint64_t sub_221C555BC()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221C5571C, 0, 0);
  }

  else
  {
    (*(v3[17] + 8))(v3[15], v3[16]);
    v5 = v3[14];
    v4 = v3[15];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_221C5571C()
{
  v1 = v0[14];
  (*(v0[17] + 8))(v0[15], v0[16]);

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

id GenerativeAssistantRestrictionManager.allowedExternalIntelligenceWorkspaceIDs.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result allowedExternalIntelligenceWorkspaceIDs];

    if (v2)
    {
      v3 = sub_221C570E0();
    }

    else
    {
      v3 = 0;
    }

    v4 = qword_280FA8BF0;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_221C56F90();
    __swift_project_value_buffer(v5, qword_280FA8BF8);
    v6 = sub_221C56F70();
    v7 = sub_221C570F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFDF288, &qword_221C58F78);
      v10 = sub_221C57120();
      v12 = sub_221C471AC(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_221C40000, v6, v7, "allowedExternalIntelligenceWorkspaceIDs %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DA5860](v9, -1, -1);
      MEMORY[0x223DA5860](v8, -1, -1);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221C55A14()
{
  if (AFMontaraRestricted())
  {
    v0 = 0;
  }

  else
  {
    v0 = GenerativeAssistantRestrictionManager.isMontaraHardDisabled.getter() ^ 1;
  }

  return v0 & 1;
}

BOOL sub_221C55A44()
{
  if (qword_27CFDEF18 != -1)
  {
    swift_once();
  }

  return sub_221C45F80();
}

uint64_t sub_221C55AD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221C56C8C;

  return GenerativeAssistantRestrictionManager.openAIAuthenticatorSignOut()();
}

id sub_221C55B78(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = result;
    v6 = [result *a3];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221C55BF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221C56C8C;

  return sub_221C521C8();
}

uint64_t sub_221C55CA4()
{
  sub_221C562A4(&v15);
  v0 = v16;
  if (v16)
  {
    sub_221C56594(v15, v16);
    sub_221C56594(0, 0);
  }

  else
  {
    sub_221C56594(v15, 0);
    sub_221C56594(0, 0);
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v1 = sub_221C56F90();
    __swift_project_value_buffer(v1, qword_280FA8BF8);
    v2 = sub_221C56F70();
    v3 = sub_221C57100();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v15);
      _os_log_impl(&dword_221C40000, v2, v3, "%s: allowedExternalIntelligenceWorkspaceIDs is set but empty.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x223DA5860](v5, -1, -1);
      MEMORY[0x223DA5860](v4, -1, -1);
    }
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v7 = result;
    v8 = [result isExternalIntelligenceSignInAllowed];

    if ((v8 & 1) != 0 || !sub_221C50E1C())
    {
      v14 = 0;
    }

    else
    {
      if (qword_280FA8BF0 != -1)
      {
        swift_once();
      }

      v9 = sub_221C56F90();
      __swift_project_value_buffer(v9, qword_280FA8BF8);
      v10 = sub_221C56F70();
      v11 = sub_221C57100();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v15);
        _os_log_impl(&dword_221C40000, v10, v11, "%s: allowExternalIntelligenceIntegrationsSignIn does not allow sign in, but allowedExternalIntelligenceWorkspaceIDs requires it.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x223DA5860](v13, -1, -1);
        MEMORY[0x223DA5860](v12, -1, -1);
      }

      v14 = 1;
    }

    if (v0)
    {
      return v14;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GenerativeAssistantRestrictions.isMisconfigured.getter(uint64_t a1, uint64_t a2)
{
  GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter(a1, a2, &v17);
  v4 = v18;
  if (v18)
  {
    sub_221C56594(v17, v18);
    sub_221C56594(0, 0);
  }

  else
  {
    sub_221C56594(v17, 0);
    sub_221C56594(0, 0);
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v5 = sub_221C56F90();
    __swift_project_value_buffer(v5, qword_280FA8BF8);
    v6 = sub_221C56F70();
    v7 = sub_221C57100();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v17);
      _os_log_impl(&dword_221C40000, v6, v7, "%s: allowedExternalIntelligenceWorkspaceIDs is set but empty.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DA5860](v9, -1, -1);
      MEMORY[0x223DA5860](v8, -1, -1);
    }
  }

  if (((*(a2 + 96))(a1, a2) & 1) != 0 || ((*(a2 + 112))(a1, a2) & 1) == 0)
  {
    v15 = 0;
  }

  else
  {
    if (qword_280FA8BF0 != -1)
    {
      swift_once();
    }

    v10 = sub_221C56F90();
    __swift_project_value_buffer(v10, qword_280FA8BF8);
    v11 = sub_221C56F70();
    v12 = sub_221C57100();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221C471AC(0x6E6F6373694D7369, 0xEF64657275676966, &v17);
      _os_log_impl(&dword_221C40000, v11, v12, "%s: allowExternalIntelligenceIntegrationsSignIn does not allow sign in, but allowedExternalIntelligenceWorkspaceIDs requires it.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x223DA5860](v14, -1, -1);
      MEMORY[0x223DA5860](v13, -1, -1);
    }

    v15 = 1;
  }

  if (v4)
  {
    return v15;
  }

  else
  {
    return 1;
  }
}

void *sub_221C562A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_221C56CD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = GenerativeAssistantRestrictionManager.allowedExternalIntelligenceWorkspaceIDs.getter();
  if (result)
  {
    if (result[2])
    {
      v9 = result[4];
      v8 = result[5];
      v14[0] = sub_221C570A0();
      v14[1] = v10;
      sub_221C56CC0();
      sub_221C565BC();
      v11 = sub_221C57130();
      v13 = v12;

      (*(v3 + 8))(v6, v2);

      *a1 = v11;
      a1[1] = v13;
    }

    else
    {

      *a1 = 0;
      a1[1] = 0;
    }
  }

  else
  {
    *a1 = xmmword_221C58F40;
  }

  return result;
}

void *GenerativeAssistantRestrictions.externalIntelligenceWorkspaceRestriction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_221C56CD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a2 + 120))(a1, a2);
  if (result)
  {
    if (result[2])
    {
      v13 = result[4];
      v12 = result[5];
      v18[0] = sub_221C570A0();
      v18[1] = v14;
      sub_221C56CC0();
      sub_221C565BC();
      v15 = sub_221C57130();
      v17 = v16;

      (*(v7 + 8))(v10, v6);

      *a3 = v15;
      a3[1] = v17;
    }

    else
    {

      *a3 = 0;
      a3[1] = 0;
    }
  }

  else
  {
    *a3 = xmmword_221C58F40;
  }

  return result;
}

uint64_t sub_221C56594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_221C565A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_221C565BC()
{
  result = qword_27CFDF268;
  if (!qword_27CFDF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFDF268);
  }

  return result;
}

uint64_t sub_221C56630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t _s25GenerativeAssistantCommon40ExternalIntelligenceWorkspaceRestrictionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_221C56594(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_221C56594(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_221C57260();
      sub_221C565A8(v4, v5);
      sub_221C565A8(v2, v3);
      sub_221C56594(v2, v3);
      sub_221C56594(v4, v5);
      return v11 & 1;
    }

    sub_221C565A8(v9, v3);
    sub_221C565A8(v2, v3);
    sub_221C56594(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_221C565A8(*a2, *(a2 + 8));
    sub_221C565A8(v2, v3);
    sub_221C56594(v2, v3);
    sub_221C56594(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_221C56594(*a1, 1uLL);
  sub_221C56594(v4, 1uLL);
  return v6;
}

uint64_t dispatch thunk of GenerativeAssistantRestrictions.openAIAuthenticatorSignOut()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221C56C8C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GenerativeAssistantRestrictions.signOutIfRestricted()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 136);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221C520D4;

  return v9(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_25GenerativeAssistantCommon40ExternalIntelligenceWorkspaceRestrictionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_221C56B64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221C56BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_221C56C14(void *result, int a2)
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

uint64_t sub_221C56C44(unint64_t *a1, void (*a2)(uint64_t))
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