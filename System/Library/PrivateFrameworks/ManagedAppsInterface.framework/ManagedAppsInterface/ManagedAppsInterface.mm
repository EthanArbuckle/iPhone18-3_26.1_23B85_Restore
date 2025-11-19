uint64_t sub_258060588()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2580605C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25806069C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2580607E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t ManagedAppsAppConfigRecordRef.managementKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey + 8);

  return v1;
}

uint64_t ManagedAppsAppConfigRecordRef.appConfigReference.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference + 8);

  return v1;
}

uint64_t ManagedAppsAppConfigRecordRef.legacyAppConfigReference.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference + 8);

  return v1;
}

id ManagedAppsAppConfigRecordRef.__allocating_init(managementKey:appConfigReference:legacyAppConfigReference:extensionConfigs:passwordReferences:identityReferences:certificateReferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = &v18[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v18[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v18[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference];
  *v21 = a5;
  *(v21 + 1) = a6;
  *&v18[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_extensionConfigs] = a7;
  *&v18[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_passwordReferences] = a8;
  *&v18[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_identityReferences] = a9;
  *&v18[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_certificateReferences] = a10;
  v24.receiver = v18;
  v24.super_class = v10;
  return objc_msgSendSuper2(&v24, sel_init);
}

id ManagedAppsAppConfigRecordRef.init(managementKey:appConfigReference:legacyAppConfigReference:extensionConfigs:passwordReferences:identityReferences:certificateReferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = &v10[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v10[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = &v10[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference];
  *v13 = a5;
  *(v13 + 1) = a6;
  *&v10[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_extensionConfigs] = a7;
  *&v10[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_passwordReferences] = a8;
  *&v10[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_identityReferences] = a9;
  *&v10[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_certificateReferences] = a10;
  v15.receiver = v10;
  v15.super_class = type metadata accessor for ManagedAppsAppConfigRecordRef();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t ManagedAppsAppConfigRecordRef.init(coder:)(void *a1)
{
  sub_258061410();
  v2 = sub_25807FE18();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_25807FCD8();
  }

  type metadata accessor for ManagedAppsAppConfigRecordRef();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_258060E10(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey);
  v4 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey + 8);
  v5 = sub_25807FCB8();
  v6 = sub_25807FCB8();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference + 8))
  {
    v7 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference);
    v8 = sub_25807FCB8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_25807FCB8();
  [a1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_extensionConfigs);
  if (v10)
  {
    type metadata accessor for ManagedAppsExtensionConfigRecordRef();
    v10 = sub_25807FD78();
  }

  v11 = sub_25807FCB8();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference + 8))
  {
    v12 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference);
    v13 = sub_25807FCB8();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_25807FCB8();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_passwordReferences);
  if (v15)
  {
    type metadata accessor for ManagedAppsCredentialRef();
    v15 = sub_25807FD78();
  }

  v16 = sub_25807FCB8();
  [a1 encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  v17 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_identityReferences);
  if (v17)
  {
    type metadata accessor for ManagedAppsCredentialRef();
    v17 = sub_25807FD78();
  }

  v18 = sub_25807FCB8();
  [a1 encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_certificateReferences);
  if (v19)
  {
    type metadata accessor for ManagedAppsCredentialRef();
    v19 = sub_25807FD78();
  }

  v20 = sub_25807FCB8();
  [a1 encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();
}

uint64_t sub_258061194()
{
  sub_25807FE78();
  MEMORY[0x259C774A0](0xD000000000000036, 0x8000000258082670);
  MEMORY[0x259C774A0](*(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey), *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey + 8));
  MEMORY[0x259C774A0](0xD00000000000001BLL, 0x80000002580826B0);
  v7 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference);
  v12 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919ED0, &qword_258080AA0);
  v1 = sub_25807FCF8();
  MEMORY[0x259C774A0](v1);

  MEMORY[0x259C774A0](0xD000000000000021, 0x80000002580826D0);
  v8 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference);
  v13 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference + 8);

  v2 = sub_25807FCF8();
  MEMORY[0x259C774A0](v2);

  MEMORY[0x259C774A0](0xD00000000000001BLL, 0x8000000258082700);
  v9 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_passwordReferences);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919ED8, &qword_258080AA8);
  v3 = sub_25807FCF8();
  MEMORY[0x259C774A0](v3);

  MEMORY[0x259C774A0](0xD00000000000001BLL, 0x8000000258082720);
  v10 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_identityReferences);

  v4 = sub_25807FCF8();
  MEMORY[0x259C774A0](v4);

  MEMORY[0x259C774A0](0xD00000000000001ELL, 0x8000000258082740);
  v11 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_certificateReferences);

  v5 = sub_25807FCF8();
  MEMORY[0x259C774A0](v5);

  MEMORY[0x259C774A0](687370, 0xE300000000000000);
  return 0;
}

unint64_t sub_258061410()
{
  result = qword_27F919EC8;
  if (!qword_27F919EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F919EC8);
  }

  return result;
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

uint64_t sub_25806154C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000012;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x656D6567616E616DLL;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_258061640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2580651F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258061680(uint64_t a1)
{
  v2 = sub_258061B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580616BC(uint64_t a1)
{
  v2 = sub_258061B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2580617B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919EE0, &qword_258080AB0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258061B9C();
  sub_258080098();
  v11 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey);
  v12 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey + 8);
  LOBYTE(v19) = 0;
  sub_25807FFA8();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference);
    v14 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference + 8);
    LOBYTE(v19) = 1;
    sub_25807FF88();
    v15 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference);
    v16 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference + 8);
    LOBYTE(v19) = 2;
    sub_25807FF88();
    v19 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_extensionConfigs);
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919EF0, &qword_258080AB8);
    sub_258062228(&qword_27F919EF8, &qword_27F919F00);
    sub_25807FF98();
    v19 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_passwordReferences);
    HIBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919F08, &qword_258080AC0);
    sub_2580622C4(&qword_27F919F10, &qword_27F919F18);
    sub_25807FF98();
    v19 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_identityReferences);
    HIBYTE(v18) = 5;
    sub_25807FF98();
    v19 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_certificateReferences);
    HIBYTE(v18) = 6;
    sub_25807FF98();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258061B9C()
{
  result = qword_27F919EE8;
  if (!qword_27F919EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F919EE8);
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

id ManagedAppsAppConfigRecordRef.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919F20, &qword_258080AC8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258061B9C();
  sub_258080088();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ManagedAppsAppConfigRecordRef();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_25807FF48();
    v13 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_managementKey];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v25) = 1;
    v15 = sub_25807FF28();
    v16 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_appConfigReference];
    *v16 = v15;
    v16[1] = v17;
    LOBYTE(v25) = 2;
    v18 = sub_25807FF28();
    v19 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_legacyAppConfigReference];
    *v19 = v18;
    v19[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919EF0, &qword_258080AB8);
    v24 = 3;
    sub_258062228(&qword_27F919F28, &qword_27F919F30);
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_extensionConfigs] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919F08, &qword_258080AC0);
    v24 = 4;
    v22 = sub_2580622C4(&qword_27F919F38, &qword_27F919F40);
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_passwordReferences] = v25;
    v24 = 5;
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_identityReferences] = v25;
    v24 = 6;
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface29ManagedAppsAppConfigRecordRef_certificateReferences] = v25;
    v21 = type metadata accessor for ManagedAppsAppConfigRecordRef();
    v23.receiver = v1;
    v23.super_class = v21;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
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

uint64_t sub_258062228(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F919EF0, &qword_258080AB8);
    sub_258062360(a2, type metadata accessor for ManagedAppsExtensionConfigRecordRef);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2580622C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F919F08, &qword_258080AC0);
    sub_258062360(a2, type metadata accessor for ManagedAppsCredentialRef);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258062360(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ManagedAppsExtensionConfigRecordRef.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID + 8);

  return v1;
}

uint64_t ManagedAppsExtensionConfigRecordRef.teamID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID + 8);

  return v1;
}

uint64_t ManagedAppsExtensionConfigRecordRef.extensionConfigReference.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference + 8);

  return v1;
}

id ManagedAppsExtensionConfigRecordRef.__allocating_init(bundleID:teamID:extensionConfigReference:passwordReferences:identityReferences:certificateReferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v18[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v18[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference];
  *v21 = a5;
  *(v21 + 1) = a6;
  *&v18[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_passwordReferences] = a7;
  *&v18[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_identityReferences] = a8;
  *&v18[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_certificateReferences] = a9;
  v23.receiver = v18;
  v23.super_class = v9;
  return objc_msgSendSuper2(&v23, sel_init);
}

id ManagedAppsExtensionConfigRecordRef.init(bundleID:teamID:extensionConfigReference:passwordReferences:identityReferences:certificateReferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = &v9[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference];
  *v12 = a5;
  *(v12 + 1) = a6;
  *&v9[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_passwordReferences] = a7;
  *&v9[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_identityReferences] = a8;
  *&v9[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_certificateReferences] = a9;
  v14.receiver = v9;
  v14.super_class = type metadata accessor for ManagedAppsExtensionConfigRecordRef();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t ManagedAppsExtensionConfigRecordRef.init(coder:)(void *a1)
{
  sub_258061410();
  v2 = sub_25807FE18();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_25807FCD8();
  }

  type metadata accessor for ManagedAppsExtensionConfigRecordRef();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2580628F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID);
  v4 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID + 8);
  v5 = sub_25807FCB8();
  v6 = sub_25807FCB8();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID);
  v8 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID + 8);
  v9 = sub_25807FCB8();
  v10 = sub_25807FCB8();
  [a1 encodeObject:v9 forKey:v10];

  if (*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference + 8))
  {
    v11 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference);
    v12 = sub_25807FCB8();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_25807FCB8();
  [a1 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v14 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_passwordReferences);
  if (v14)
  {
    type metadata accessor for ManagedAppsCredentialRef();
    v14 = sub_25807FD78();
  }

  v15 = sub_25807FCB8();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_identityReferences);
  if (v16)
  {
    type metadata accessor for ManagedAppsCredentialRef();
    v16 = sub_25807FD78();
  }

  v17 = sub_25807FCB8();
  [a1 encodeObject:v16 forKey:v17];
  swift_unknownObjectRelease();

  v18 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_certificateReferences);
  if (v18)
  {
    type metadata accessor for ManagedAppsCredentialRef();
    v18 = sub_25807FD78();
  }

  v19 = sub_25807FCB8();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();
}

uint64_t sub_258062BF0()
{
  v1 = v0;
  sub_25807FE78();
  MEMORY[0x259C774A0](0xD00000000000002CLL, 0x80000002580827A0);
  MEMORY[0x259C774A0](*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID), *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID + 8));
  MEMORY[0x259C774A0](0x74202D202020200ALL, 0xEF203A44496D6165);
  MEMORY[0x259C774A0](*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID), *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID + 8));
  MEMORY[0x259C774A0](0xD000000000000018, 0x80000002580827D0);
  v7 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference);
  v11 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919ED0, &qword_258080AA0);
  v2 = sub_25807FCF8();
  MEMORY[0x259C774A0](v2);

  MEMORY[0x259C774A0](0xD00000000000001BLL, 0x8000000258082700);
  v8 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_passwordReferences);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919ED8, &qword_258080AA8);
  v3 = sub_25807FCF8();
  MEMORY[0x259C774A0](v3);

  MEMORY[0x259C774A0](0xD00000000000001BLL, 0x8000000258082720);
  v9 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_identityReferences);

  v4 = sub_25807FCF8();
  MEMORY[0x259C774A0](v4);

  MEMORY[0x259C774A0](0xD00000000000001ELL, 0x8000000258082740);
  v10 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_certificateReferences);

  v5 = sub_25807FCF8();
  MEMORY[0x259C774A0](v5);

  MEMORY[0x259C774A0](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_258062EAC()
{
  v1 = *v0;
  sub_258080058();
  MEMORY[0x259C777F0](v1);
  return sub_258080078();
}

uint64_t sub_258062EF4()
{
  v1 = *v0;
  sub_258080058();
  MEMORY[0x259C777F0](v1);
  return sub_258080078();
}

unint64_t sub_258062F38()
{
  v1 = *v0;
  v2 = 0x4449656C646E7562;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000015;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000018;
  if (v1 == 1)
  {
    v5 = 0x44496D616574;
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

uint64_t sub_258062FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258065448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25806302C(uint64_t a1)
{
  v2 = sub_258063440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258063068(uint64_t a1)
{
  v2 = sub_258063440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258063154(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919F78, &qword_258080AD0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258063440();
  sub_258080098();
  v11 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID);
  v12 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID + 8);
  LOBYTE(v19) = 0;
  sub_25807FFA8();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID);
    v14 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID + 8);
    LOBYTE(v19) = 1;
    sub_25807FFA8();
    v15 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference);
    v16 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference + 8);
    LOBYTE(v19) = 2;
    sub_25807FF88();
    v19 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_passwordReferences);
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919F08, &qword_258080AC0);
    sub_2580622C4(&qword_27F919F10, &qword_27F919F18);
    sub_25807FF98();
    v19 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_identityReferences);
    HIBYTE(v18) = 4;
    sub_25807FF98();
    v19 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_certificateReferences);
    HIBYTE(v18) = 5;
    sub_25807FF98();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_258063440()
{
  result = qword_27F919F80;
  if (!qword_27F919F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F919F80);
  }

  return result;
}

id ManagedAppsExtensionConfigRecordRef.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919F88, &qword_258080AD8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258063440();
  sub_258080088();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ManagedAppsExtensionConfigRecordRef();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_25807FF48();
    v13 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_bundleID];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v25) = 1;
    v15 = sub_25807FF48();
    v16 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_teamID];
    *v16 = v15;
    v16[1] = v17;
    LOBYTE(v25) = 2;
    v18 = sub_25807FF28();
    v19 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_extensionConfigReference];
    *v19 = v18;
    v19[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919F08, &qword_258080AC0);
    v24 = 3;
    v22 = sub_2580622C4(&qword_27F919F38, &qword_27F919F40);
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_passwordReferences] = v25;
    v24 = 4;
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_identityReferences] = v25;
    v24 = 5;
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface35ManagedAppsExtensionConfigRecordRef_certificateReferences] = v25;
    v21 = type metadata accessor for ManagedAppsExtensionConfigRecordRef();
    v23.receiver = v1;
    v23.super_class = v21;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t ManagedAppsCredentialRef.appIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier + 8);

  return v1;
}

uint64_t ManagedAppsCredentialRef.managementKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey);
  v2 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey + 8);

  return v1;
}

id ManagedAppsCredentialRef.__allocating_init(appIdentifier:managementKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ManagedAppsCredentialRef.init(appIdentifier:managementKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for ManagedAppsCredentialRef();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ManagedAppsCredentialRef.init(coder:)(void *a1)
{
  sub_258061410();
  v2 = sub_25807FE18();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_25807FCD8();
  }

  type metadata accessor for ManagedAppsCredentialRef();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_258063CC4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier + 8);
  v5 = sub_25807FCB8();
  v6 = sub_25807FCB8();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey);
  v8 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey + 8);
  v9 = sub_25807FCB8();
  v10 = sub_25807FCB8();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_258063E48(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_25807FCB8();

  return v5;
}

uint64_t sub_258063EB8()
{
  v1 = v0;
  sub_25807FE78();

  MEMORY[0x259C774A0](*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier), *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier + 8));
  MEMORY[0x259C774A0](0xD000000000000010, 0x8000000258082830);
  MEMORY[0x259C774A0](*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey), *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey + 8));
  return 0x746E656449707061;
}

id ManagedAppsCredentialRef.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_258064020()
{
  if (*v0)
  {
    result = 0x656D6567616E616DLL;
  }

  else
  {
    result = 0x746E656449707061;
  }

  *v0;
  return result;
}

uint64_t sub_258064074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656449707061 && a2 == 0xED00007265696669;
  if (v6 || (sub_25807FFC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6567616E616DLL && a2 == 0xED000079654B746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25807FFC8();

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

uint64_t sub_25806416C(uint64_t a1)
{
  v2 = sub_258064420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580641A8(uint64_t a1)
{
  v2 = sub_258064420();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2580641FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_258064288(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919FA0, &qword_258080AE0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258064420();
  sub_258080098();
  v11 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier);
  v12 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier + 8);
  v16[15] = 0;
  sub_25807FFA8();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey);
    v15 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey + 8);
    v16[14] = 1;
    sub_25807FFA8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_258064420()
{
  result = qword_27F919FA8;
  if (!qword_27F919FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F919FA8);
  }

  return result;
}

id ManagedAppsCredentialRef.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F919FB0, &qword_258080AE8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258064420();
  sub_258080088();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ManagedAppsCredentialRef();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    v11 = sub_25807FF48();
    v13 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_appIdentifier];
    *v13 = v11;
    v13[1] = v14;
    v20 = 1;
    v15 = sub_25807FF48();
    v16 = &v1[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsCredentialRef_managementKey];
    *v16 = v15;
    v16[1] = v17;
    v18 = type metadata accessor for ManagedAppsCredentialRef();
    v19.receiver = v1;
    v19.super_class = v18;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_258064718@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_258064A80(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ManagedAppsCredentialRef.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManagedAppsCredentialRef.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ManagedAppsExtensionConfigRecordRef.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedAppsExtensionConfigRecordRef.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppsAppConfigRecordRef.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedAppsAppConfigRecordRef.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258064EE0()
{
  result = qword_27F91A030;
  if (!qword_27F91A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A030);
  }

  return result;
}

unint64_t sub_258064F38()
{
  result = qword_27F91A038;
  if (!qword_27F91A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A038);
  }

  return result;
}

unint64_t sub_258064F90()
{
  result = qword_27F91A040;
  if (!qword_27F91A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A040);
  }

  return result;
}

unint64_t sub_258064FE8()
{
  result = qword_27F91A048;
  if (!qword_27F91A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A048);
  }

  return result;
}

unint64_t sub_258065040()
{
  result = qword_27F91A050;
  if (!qword_27F91A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A050);
  }

  return result;
}

unint64_t sub_258065098()
{
  result = qword_27F91A058;
  if (!qword_27F91A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A058);
  }

  return result;
}

unint64_t sub_2580650F0()
{
  result = qword_27F91A060;
  if (!qword_27F91A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A060);
  }

  return result;
}

unint64_t sub_258065148()
{
  result = qword_27F91A068;
  if (!qword_27F91A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A068);
  }

  return result;
}

unint64_t sub_2580651A0()
{
  result = qword_27F91A070;
  if (!qword_27F91A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A070);
  }

  return result;
}

uint64_t sub_2580651F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6567616E616DLL && a2 == 0xED000079654B746ELL;
  if (v4 || (sub_25807FFC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258082560 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000258082580 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002580825A0 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002580825C0 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002580825E0 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000258082600 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_25807FFC8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_258065448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_25807FFC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_25807FFC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000258082620 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002580825C0 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002580825E0 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000258082600 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_25807FFC8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id ManagedAppsReportedState.__allocating_init(allAppsState:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ManagedAppsReportedState.init(allAppsState:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ManagedAppsReportedState();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ManagedAppsReportedState.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_258061410();
  type metadata accessor for ManagedAppsReportedAppState();
  v5 = sub_25807FE28();
  if (v5)
  {
    sub_258065974(v5, &qword_27F91A228, &qword_258081658, type metadata accessor for ManagedAppsReportedAppState);
    v7 = v6;

    *&v4[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState] = v7;
    v10.receiver = v4;
    v10.super_class = v2;
    v8 = objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v8;
}

id ManagedAppsReportedState.init(coder:)(void *a1)
{
  v2 = v1;
  sub_258061410();
  type metadata accessor for ManagedAppsReportedAppState();
  v4 = sub_25807FE28();
  if (v4)
  {
    sub_258065974(v4, &qword_27F91A228, &qword_258081658, type metadata accessor for ManagedAppsReportedAppState);
    v6 = v5;

    *&v2[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState] = v6;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for ManagedAppsReportedState();
    v7 = objc_msgSendSuper2(&v9, sel_init);
  }

  else
  {

    type metadata accessor for ManagedAppsReportedState();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

void sub_258065974(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_25807FEC8())
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25807FEE8();
  if (v7)
  {
LABEL_4:
    v8 = sub_25807FEB8();
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v13 = -1 << *(a1 + 32);
  v10 = ~v13;
  v9 = a1 + 64;
  v14 = -v13;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v11 = v15 & *(a1 + 64);
  v12 = a1;
LABEL_11:
  v16 = (v10 + 64) >> 6;

  if ((v12 & 0x8000000000000000) != 0)
  {
    if (!sub_25807FED8())
    {
      goto LABEL_22;
    }

    sub_258061410();
    v23 = swift_dynamicCast();
    a4(v23);
    swift_dynamicCast();
    if (!v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = v11;
    v18 = 0;
    if (!v11)
    {
      v19 = 0;
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= v16)
        {
          goto LABEL_22;
        }

        v17 = *(v9 + 8 * v18);
        ++v19;
        if (v17)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_24;
    }

LABEL_17:
    v20 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
    v21 = *(*(v12 + 56) + v20);
    v22 = *(*(v12 + 48) + v20);
    v21;
    if (!v22)
    {
LABEL_22:
      sub_25806992C();

      return;
    }
  }

  sub_25807FCC8();
LABEL_24:
  __break(1u);
}

void sub_258065C9C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState);
  type metadata accessor for ManagedAppsReportedAppState();
  v4 = sub_25807FC88();
  v5 = sub_25807FCB8();
  [a1 encodeObject:v4 forKey:v5];
}

uint64_t sub_258065E1C(uint64_t a1)
{
  swift_getObjectType();
  sub_258065EF0(a1, v9);
  if (!v10)
  {
    sub_258065F60(v9);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState);
  v4 = *&v8[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState];

  sub_258065FC8(v3, v4, type metadata accessor for ManagedAppsReportedAppState);
  v6 = v5;

  return v6 & 1;
}

uint64_t sub_258065EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A0F0, &qword_258081030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258065F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A0F0, &qword_258081030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258065FC8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_13:
      v13 = v10 | (v5 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(a1 + 56) + 8 * v13);

      v18 = v17;
      v19 = sub_2580755B0(v15, v16);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      a3(v22);
      v23 = *(*(a2 + 56) + 8 * v19);
      v24 = sub_25807FE48();

      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        return;
      }

      v12 = *(a1 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id ManagedAppsReportedState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_258066310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53737070416C6C61 && a2 == 0xEC00000065746174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25807FFC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25806639C(uint64_t a1)
{
  v2 = sub_2580665A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580663D8(uint64_t a1)
{
  v2 = sub_2580665A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25806643C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A0F8, &qword_258081038);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2580665A4();
  sub_258080098();
  v11[1] = *(v2 + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A108, &qword_258081040);
  sub_2580665F8();
  sub_25807FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2580665A4()
{
  result = qword_27F91A100;
  if (!qword_27F91A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A100);
  }

  return result;
}

unint64_t sub_2580665F8()
{
  result = qword_27F91A110;
  if (!qword_27F91A110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F91A108, &qword_258081040);
    sub_258067B04(&qword_27F91A118, type metadata accessor for ManagedAppsReportedAppState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A110);
  }

  return result;
}

void *ManagedAppsReportedState.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A120, &qword_258081048);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2580665A4();
  sub_258080088();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ManagedAppsReportedState();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A108, &qword_258081040);
    sub_2580668E0();
    sub_25807FF58();
    *&v3[OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState] = v15;
    v13 = type metadata accessor for ManagedAppsReportedState();
    v14.receiver = v3;
    v14.super_class = v13;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

unint64_t sub_2580668E0()
{
  result = qword_27F91A128;
  if (!qword_27F91A128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F91A108, &qword_258081040);
    sub_258067B04(&qword_27F91A130, type metadata accessor for ManagedAppsReportedAppState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A128);
  }

  return result;
}

void *ManagedAppsReportedAppState.appState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState);
  v2 = v1;
  return v1;
}

id ManagedAppsReportedAppState.__allocating_init(appState:extensionsState:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState] = a1;
  *&v5[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ManagedAppsReportedAppState.init(appState:extensionsState:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState] = a1;
  *&v2[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedAppsReportedAppState();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ManagedAppsReportedAppState.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for ManagedAppsReportedStateItem();
  v5 = sub_25807FE18();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState;
    *&v4[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState] = v5;
    v7 = v5;
    sub_258061410();
    v8 = v7;
    v9 = sub_25807FE28();
    if (v9)
    {
      sub_258065974(v9, &qword_27F91A220, &qword_258081650, type metadata accessor for ManagedAppsReportedStateItem);
      v11 = v10;

      *&v4[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState] = v11;
      v14.receiver = v4;
      v14.super_class = v2;
      v12 = objc_msgSendSuper2(&v14, sel_init);

      return v12;
    }

    a1 = *&v4[v6];
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id ManagedAppsReportedAppState.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for ManagedAppsReportedStateItem();
  v4 = sub_25807FE18();
  if (v4)
  {
    v5 = OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState;
    *&v2[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState] = v4;
    v6 = v4;
    sub_258061410();
    v7 = v6;
    v8 = sub_25807FE28();
    if (v8)
    {
      sub_258065974(v8, &qword_27F91A220, &qword_258081650, type metadata accessor for ManagedAppsReportedStateItem);
      v10 = v9;

      *&v2[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState] = v10;
      v13.receiver = v2;
      v13.super_class = type metadata accessor for ManagedAppsReportedAppState();
      v11 = objc_msgSendSuper2(&v13, sel_init);

      return v11;
    }

    a1 = *&v2[v5];
  }

  type metadata accessor for ManagedAppsReportedAppState();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_258066E14(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState);
  v4 = sub_25807FCB8();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState);
  type metadata accessor for ManagedAppsReportedStateItem();
  v6 = sub_25807FC88();
  v7 = sub_25807FCB8();
  [a1 encodeObject:v6 forKey:v7];
}

uint64_t sub_25806702C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_258065EF0(a1, v15);
  if (!v16)
  {
    sub_258065F60(v15);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState);
  v5 = *&v14[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState];
  if (v4)
  {
    if (v5)
    {
      type metadata accessor for ManagedAppsReportedStateItem();
      v6 = v5;
      v7 = v4;
      v8 = sub_25807FE48();

      if (v8)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_9;
  }

  if (v5)
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_6:
  v9 = *(v2 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState);
  v10 = *&v14[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState];

  sub_258065FC8(v9, v10, type metadata accessor for ManagedAppsReportedStateItem);
  v12 = v11;

  return v12 & 1;
}

uint64_t sub_258067190()
{
  sub_25807FE78();
  MEMORY[0x259C774A0](0xD000000000000030, 0x8000000258082F30);
  v1 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A148, &qword_258081050);
  v2 = sub_25807FCF8();
  MEMORY[0x259C774A0](v2);

  MEMORY[0x259C774A0](0xD000000000000018, 0x8000000258082F70);
  v3 = *(v0 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState);
  type metadata accessor for ManagedAppsReportedStateItem();
  v4 = sub_25807FCA8();
  MEMORY[0x259C774A0](v4);

  MEMORY[0x259C774A0](687370, 0xE300000000000000);
  return 0;
}

uint64_t sub_258067320()
{
  if (*v0)
  {
    result = 0x6F69736E65747865;
  }

  else
  {
    result = 0x6574617453707061;
  }

  *v0;
  return result;
}

uint64_t sub_258067368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617453707061 && a2 == 0xE800000000000000;
  if (v6 || (sub_25807FFC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEF6574617453736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25807FFC8();

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

uint64_t sub_25806744C(uint64_t a1)
{
  v2 = sub_258067714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258067488(uint64_t a1)
{
  v2 = sub_258067714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258067528(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A150, &qword_258081058);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258067714();
  sub_258080098();
  v13 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState);
  HIBYTE(v12) = 0;
  type metadata accessor for ManagedAppsReportedStateItem();
  sub_258067B04(&qword_27F91A160, type metadata accessor for ManagedAppsReportedStateItem);
  sub_25807FF98();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A168, &qword_258081060);
    sub_258067768();
    sub_25807FFB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_258067714()
{
  result = qword_27F91A158;
  if (!qword_27F91A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A158);
  }

  return result;
}

unint64_t sub_258067768()
{
  result = qword_27F91A170;
  if (!qword_27F91A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F91A168, &qword_258081060);
    sub_258067B04(&qword_27F91A160, type metadata accessor for ManagedAppsReportedStateItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A170);
  }

  return result;
}

id ManagedAppsReportedAppState.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A178, &qword_258081068);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258067714();
  sub_258080088();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ManagedAppsReportedAppState();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ManagedAppsReportedStateItem();
    v15 = 0;
    sub_258067B04(&qword_27F91A180, type metadata accessor for ManagedAppsReportedStateItem);
    sub_25807FF38();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A168, &qword_258081060);
    v15 = 1;
    sub_258067B48();
    sub_25807FF58();
    *&v1[OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState] = v16;
    v12 = type metadata accessor for ManagedAppsReportedAppState();
    v14.receiver = v1;
    v14.super_class = v12;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_258067B04(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258067B48()
{
  result = qword_27F91A188;
  if (!qword_27F91A188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F91A168, &qword_258081060);
    sub_258067B04(&qword_27F91A180, type metadata accessor for ManagedAppsReportedStateItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A188);
  }

  return result;
}

id ManagedAppsReportedStateItem.__allocating_init(configState:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ManagedAppsReportedStateItem.init(configState:)(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ManagedAppsReportedStateItem();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t ManagedAppsReportedStateItem.init(coder:)(void *a1)
{
  sub_258061410();
  v2 = sub_25807FE18();
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v3 = v2;
    sub_25807FCD8();
  }

  type metadata accessor for ManagedAppsReportedStateItem();
  swift_deallocPartialClassInstance();
  return 0;
}

ManagedAppsInterface::ManagedAppsReportedConfigState_optional __swiftcall ManagedAppsReportedConfigState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25807FEF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_258067ED8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState))
  {
    *(v1 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState);
  }

  v3 = sub_25807FCB8();

  v4 = sub_25807FCB8();
  [a1 encodeObject:v3 forKey:v4];
}

uint64_t ManagedAppsReportedConfigState.rawValue.getter()
{
  v1 = 0x64696C61766E69;
  if (*v0 != 1)
  {
    v1 = 0x64696C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_25806807C(uint64_t a1)
{
  swift_getObjectType();
  sub_258065EF0(a1, v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      v3 = v10[OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState];
      if (*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState))
      {
        if (*(v1 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState) == 1)
        {
          v4 = 0xE700000000000000;
          v5 = 0x64696C61766E69;
          if (!v10[OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState])
          {
LABEL_19:
            v8 = 0xE700000000000000;
            if (v5 != 0x6E776F6E6B6E75)
            {
              goto LABEL_22;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v4 = 0xE500000000000000;
          v5 = 0x64696C6176;
          if (!v10[OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState])
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v4 = 0xE700000000000000;
        v5 = 0x6E776F6E6B6E75;
        if (!v10[OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState])
        {
          goto LABEL_19;
        }
      }

      if (v3 == 1)
      {
        v7 = 0x64696C61766E69;
      }

      else
      {
        v7 = 0x64696C6176;
      }

      if (v3 == 1)
      {
        v8 = 0xE700000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      if (v5 != v7)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (v4 == v8)
      {
        v6 = 1;
LABEL_23:

        return v6 & 1;
      }

LABEL_22:
      v6 = sub_25807FFC8();
      goto LABEL_23;
    }
  }

  else
  {
    sub_258065F60(v11);
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t sub_258068208(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_25807FE58();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_258065F60(v10);
  return v8 & 1;
}

uint64_t static ManagedAppsReportedStateItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState);
  v3 = *(a2 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState);
  v4 = 0xE700000000000000;
  v5 = 0x64696C61766E69;
  if (v2 != 1)
  {
    v5 = 0x64696C6176;
    v4 = 0xE500000000000000;
  }

  if (*(a1 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (*(a2 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState))
  {
    if (v3 == 1)
    {
      v8 = 0x64696C61766E69;
    }

    else
    {
      v8 = 0x64696C6176;
    }

    if (v3 == 1)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    if (v6 != 0x6E776F6E6B6E75)
    {
LABEL_21:
      v10 = sub_25807FFC8();
      goto LABEL_22;
    }
  }

  if (v7 != v9)
  {
    goto LABEL_21;
  }

  v10 = 1;
LABEL_22:

  return v10 & 1;
}

id sub_2580683B0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_25807FCB8();

  return v5;
}

uint64_t sub_258068420()
{
  sub_25807FE78();
  MEMORY[0x259C774A0](0xD000000000000033, 0x8000000258082FD0);
  if (*(v0 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState))
  {
    if (*(v0 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState) == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64696C61766E69;
    }

    else
    {
      v1 = 0xE500000000000000;
      v2 = 0x64696C6176;
    }
  }

  else
  {
    v1 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x259C774A0](v2, v1);

  MEMORY[0x259C774A0](687370, 0xE300000000000000);
  return 0;
}

uint64_t sub_258068568()
{
  sub_258080058();
  MEMORY[0x259C777F0](0);
  return sub_258080078();
}

uint64_t sub_2580685AC()
{
  sub_258080058();
  MEMORY[0x259C777F0](0);
  return sub_258080078();
}

uint64_t sub_25806860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74536769666E6F63 && a2 == 0xEB00000000657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25807FFC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258068698(uint64_t a1)
{
  v2 = sub_258068F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2580686D4(uint64_t a1)
{
  v2 = sub_258068F68();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_258068728(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_258068760(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A198, &qword_258081070);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258068F68();
  sub_258080098();
  v11[15] = *(v2 + OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState);
  sub_258068FBC();
  sub_25807FFB8();
  return (*(v5 + 8))(v8, v4);
}

void *ManagedAppsReportedStateItem.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A1B0, &qword_258081078);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258068F68();
  sub_258080088();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ManagedAppsReportedStateItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_258069010();
    sub_25807FF58();
    v3[OBJC_IVAR____TtC20ManagedAppsInterface28ManagedAppsReportedStateItem_configState] = v15;
    v13 = type metadata accessor for ManagedAppsReportedStateItem();
    v14.receiver = v3;
    v14.super_class = v13;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t sub_258068B0C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_258068B90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64696C61766E69;
  if (v2 != 1)
  {
    v5 = 0x64696C6176;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64696C61766E69;
  if (*a2 != 1)
  {
    v8 = 0x64696C6176;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25807FFC8();
  }

  return v11 & 1;
}

uint64_t sub_258068C88()
{
  v1 = *v0;
  sub_258080058();
  sub_25807FD08();

  return sub_258080078();
}

uint64_t sub_258068D28()
{
  *v0;
  *v0;
  sub_25807FD08();
}

uint64_t sub_258068DB4()
{
  v1 = *v0;
  sub_258080058();
  sub_25807FD08();

  return sub_258080078();
}

void sub_258068E5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64696C61766E69;
  if (v2 != 1)
  {
    v5 = 0x64696C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_258068F68()
{
  result = qword_27F91A1A0;
  if (!qword_27F91A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1A0);
  }

  return result;
}

unint64_t sub_258068FBC()
{
  result = qword_27F91A1A8;
  if (!qword_27F91A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1A8);
  }

  return result;
}

unint64_t sub_258069010()
{
  result = qword_27F91A1B8;
  if (!qword_27F91A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1B8);
  }

  return result;
}

unint64_t sub_258069068()
{
  result = qword_27F91A1C0;
  if (!qword_27F91A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppsReportedConfigState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManagedAppsReportedConfigState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ManagedAppsServiceBundleID(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ManagedAppsServiceBundleID(_WORD *result, int a2, int a3)
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

unint64_t sub_2580695C4()
{
  result = qword_27F91A1D0;
  if (!qword_27F91A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1D0);
  }

  return result;
}

unint64_t sub_25806961C()
{
  result = qword_27F91A1D8;
  if (!qword_27F91A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1D8);
  }

  return result;
}

unint64_t sub_258069674()
{
  result = qword_27F91A1E0;
  if (!qword_27F91A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1E0);
  }

  return result;
}

unint64_t sub_2580696CC()
{
  result = qword_27F91A1E8;
  if (!qword_27F91A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1E8);
  }

  return result;
}

unint64_t sub_258069724()
{
  result = qword_27F91A1F0;
  if (!qword_27F91A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1F0);
  }

  return result;
}

unint64_t sub_25806977C()
{
  result = qword_27F91A1F8;
  if (!qword_27F91A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A1F8);
  }

  return result;
}

unint64_t sub_2580697D4()
{
  result = qword_27F91A200;
  if (!qword_27F91A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A200);
  }

  return result;
}

unint64_t sub_25806982C()
{
  result = qword_27F91A208;
  if (!qword_27F91A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A208);
  }

  return result;
}

unint64_t sub_258069884()
{
  result = qword_27F91A210;
  if (!qword_27F91A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A210);
  }

  return result;
}

unint64_t sub_2580698D8()
{
  result = qword_27F91A218;
  if (!qword_27F91A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A218);
  }

  return result;
}

uint64_t ManagedAppsDaemonClient.ManagedAppsDaemonClientError.description.getter()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    return 0xD00000000000001FLL;
  }

  if (v1 == 2)
  {
    return 0x6C616E7265746E49;
  }

  v3 = *v0;

  sub_25807FE78();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F919ED0, &qword_258080AA0);
  v4 = sub_25807FCF8();
  MEMORY[0x259C774A0](v4);

  return 0xD000000000000021;
}

id sub_258069AE4()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (!v1)
  {
    v3 = *(v0 + 16);
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_25807FCB8();

    v2 = [v4 initWithMachServiceName:v5 options:4096];

    v6 = [objc_opt_self() interfaceWithProtocol_];
    sub_25807F894();
    [v2 setRemoteObjectInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v19 = sub_258078B70;
    v20 = v7;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_258069EAC;
    v18 = &block_descriptor_660;
    v8 = _Block_copy(&v15);

    [v2 setInvalidationHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v19 = sub_258078B78;
    v20 = v9;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_258069EAC;
    v18 = &block_descriptor_664;
    v10 = _Block_copy(&v15);

    [v2 setInterruptionHandler_];
    _Block_release(v10);
    [v2 resume];
    v11 = *(v0 + 24);
    *(v0 + 24) = v2;
    v12 = v2;
  }

  v13 = v1;
  return v2;
}

void sub_258069D6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27F919E60 != -1)
    {
      swift_once();
    }

    v2 = sub_25807FC78();
    __swift_project_value_buffer(v2, qword_27F91CCE0);
    v3 = sub_25807FC58();
    v4 = sub_25807FE08();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25805F000, v3, v4, "ManagedApps connection invalidation handler called", v5, 2u);
      MEMORY[0x259C77C60](v5, -1, -1);
    }

    v6 = sub_258069AE4();
    if (v6)
    {
      v7 = v6;
      [v6 invalidate];

      v8 = *(v1 + 24);
      *(v1 + 24) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_258069EAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_258069EF0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27F919E60 != -1)
    {
      swift_once();
    }

    v2 = sub_25807FC78();
    __swift_project_value_buffer(v2, qword_27F91CCE0);
    v3 = sub_25807FC58();
    v4 = sub_25807FE08();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25805F000, v3, v4, "ManagedApps connection interruption handler called", v5, 2u);
      MEMORY[0x259C77C60](v5, -1, -1);
    }

    v6 = *(v1 + 24);
    *(v1 + 24) = 0;
  }
}

id sub_25806A00C()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (!v1)
  {
    v3 = *(v0 + 16);
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_25807FCB8();

    v2 = [v4 initWithMachServiceName:v5 options:4096];

    v6 = [objc_opt_self() interfaceWithProtocol_];
    [v2 setRemoteObjectInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v19 = sub_258078B60;
    v20 = v7;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_258069EAC;
    v18 = &block_descriptor_652;
    v8 = _Block_copy(&v15);

    [v2 setInvalidationHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v19 = sub_258078B68;
    v20 = v9;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_258069EAC;
    v18 = &block_descriptor_656;
    v10 = _Block_copy(&v15);

    [v2 setInterruptionHandler_];
    _Block_release(v10);
    [v2 resume];
    v11 = *(v0 + 32);
    *(v0 + 32) = v2;
    v12 = v2;
  }

  v13 = v1;
  return v2;
}

void sub_25806A290()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27F919E60 != -1)
    {
      swift_once();
    }

    v2 = sub_25807FC78();
    __swift_project_value_buffer(v2, qword_27F91CCE0);
    v3 = sub_25807FC58();
    v4 = sub_25807FE08();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25805F000, v3, v4, "ManagedApps public connection invalidation handler called", v5, 2u);
      MEMORY[0x259C77C60](v5, -1, -1);
    }

    v6 = sub_25806A00C();
    if (v6)
    {
      v7 = v6;
      [v6 invalidate];

      v8 = *(v1 + 32);
      *(v1 + 32) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25806A3D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27F919E60 != -1)
    {
      swift_once();
    }

    v2 = sub_25807FC78();
    __swift_project_value_buffer(v2, qword_27F91CCE0);
    v3 = sub_25807FC58();
    v4 = sub_25807FE08();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25805F000, v3, v4, "ManagedApps public connection interruption handler called", v5, 2u);
      MEMORY[0x259C77C60](v5, -1, -1);
    }

    v6 = *(v1 + 32);
    *(v1 + 32) = 0;
  }
}

void *ManagedAppsDaemonClient.__allocating_init(scope:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *ManagedAppsDaemonClient.init(scope:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

id ManagedAppsDaemonClient.deinit()
{
  if (*(v0 + 32))
  {
    result = sub_25806A00C();
    if (!result)
    {
      __break(1u);
      goto LABEL_9;
    }

    v2 = result;
    [result invalidate];

    v3 = *(v0 + 32);
    *(v0 + 32) = 0;
  }

  v4 = *(v0 + 24);
  if (!v4)
  {
LABEL_7:

    return v0;
  }

  result = sub_258069AE4();
  if (result)
  {
    v5 = result;
    [result invalidate];

    v6 = *(v0 + 24);
    *(v0 + 24) = 0;

    v4 = *(v0 + 24);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t ManagedAppsDaemonClient.__deallocating_deinit()
{
  if (*(v0 + 32))
  {
    v1 = sub_25806A00C();
    if (!v1)
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = v1;
    [v1 invalidate];

    v5 = *(v0 + 32);
    *(v0 + 32) = 0;
  }

  v6 = *(v0 + 24);
  if (!v6)
  {
    goto LABEL_7;
  }

  v1 = sub_258069AE4();
  if (!v1)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x2821FE8D8](v1, v2, v3);
  }

  v7 = v1;
  [v1 invalidate];

  v8 = *(v0 + 24);
  *(v0 + 24) = 0;

  v6 = *(v0 + 24);
LABEL_7:

  v1 = v0;
  v2 = 40;
  v3 = 7;

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

id sub_25806A684(void (*a1)(void), uint64_t a2)
{
  result = sub_258069AE4();
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    aBlock[4] = sub_258078D28;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_530;
    v8 = _Block_copy(aBlock);

    v9 = [v6 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
      return v16;
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v10 = sub_25807FC78();
      __swift_project_value_buffer(v10, qword_27F91CCE0);
      v11 = sub_25807FC58();
      v12 = sub_25807FDE8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_25805F000, v11, v12, "Failed to get remote object", v13, 2u);
        MEMORY[0x259C77C60](v13, -1, -1);
      }

      sub_258078278();
      v14 = swift_allocError();
      *v15 = 0xD00000000000001BLL;
      v15[1] = 0x80000002580837C0;
      a1();

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25806A8F4(void *a1, uint64_t a2, void (*a3)(void))
{
  if (qword_27F919E60 != -1)
  {
    swift_once();
  }

  v6 = sub_25807FC78();
  __swift_project_value_buffer(v6, qword_27F91CCE0);

  v7 = a1;
  v8 = sub_25807FC58();
  v9 = sub_25807FDE8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    if (*(a2 + 16))
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x61646567616E616DLL;
    }

    if (*(a2 + 16))
    {
      v14 = 0x80000002580837E0;
    }

    else
    {
      v14 = 0xEC00000064737070;
    }

    v15 = sub_258075008(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_25805F000, v8, v9, "Failed to connect to %s with error %@", v10, 0x16u);
    sub_2580782CC(v11);
    MEMORY[0x259C77C60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C77C60](v12, -1, -1);
    MEMORY[0x259C77C60](v10, -1, -1);
  }

  swift_getErrorValue();
  v18 = sub_258080008();
  v20 = v19;
  sub_258078278();
  v21 = swift_allocError();
  *v22 = v18;
  v22[1] = v20;
  a3();
}

void sub_25806AB54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_25806ABBC(void *a1, uint64_t a2, void (*a3)(__int128 *, void *))
{
  if (qword_27F919E60 != -1)
  {
    swift_once();
  }

  v6 = sub_25807FC78();
  __swift_project_value_buffer(v6, qword_27F91CCE0);

  v7 = a1;
  v8 = sub_25807FC58();
  v9 = sub_25807FDE8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v24 = v12;
    *v10 = 136315394;
    if (*(a2 + 16))
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x61646567616E616DLL;
    }

    if (*(a2 + 16))
    {
      v14 = 0x80000002580837E0;
    }

    else
    {
      v14 = 0xEC00000064737070;
    }

    v15 = sub_258075008(v13, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_25805F000, v8, v9, "Failed to connect to %s with error %@", v10, 0x16u);
    sub_2580782CC(v11);
    MEMORY[0x259C77C60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C77C60](v12, -1, -1);
    MEMORY[0x259C77C60](v10, -1, -1);
  }

  v24 = xmmword_258081680;
  swift_getErrorValue();
  v18 = sub_258080008();
  v20 = v19;
  sub_258078278();
  v21 = swift_allocError();
  *v22 = v18;
  v22[1] = v20;
  a3(&v24, v21);

  return sub_2580784F4(v24, *(&v24 + 1));
}

void sub_25806AE38(void *a1, uint64_t a2, void (*a3)(uint64_t *, void *))
{
  if (qword_27F919E60 != -1)
  {
    swift_once();
  }

  v6 = sub_25807FC78();
  __swift_project_value_buffer(v6, qword_27F91CCE0);

  v7 = a1;
  v8 = sub_25807FC58();
  v9 = sub_25807FDE8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v10 = 136315394;
    if (*(a2 + 16))
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x61646567616E616DLL;
    }

    if (*(a2 + 16))
    {
      v14 = 0x80000002580837E0;
    }

    else
    {
      v14 = 0xEC00000064737070;
    }

    v15 = sub_258075008(v13, v14, v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_25805F000, v8, v9, "Failed to connect to %s with error %@", v10, 0x16u);
    sub_2580782CC(v11);
    MEMORY[0x259C77C60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C77C60](v12, -1, -1);
    MEMORY[0x259C77C60](v10, -1, -1);
  }

  v23[0] = 0;
  v23[1] = 0;
  swift_getErrorValue();
  v18 = sub_258080008();
  v20 = v19;
  sub_258078278();
  v21 = swift_allocError();
  *v22 = v18;
  v22[1] = v20;
  a3(v23, v21);
}

void sub_25806B0A4(void *a1, uint64_t a2, void (*a3)(uint64_t **, void *))
{
  if (qword_27F919E60 != -1)
  {
    swift_once();
  }

  v6 = sub_25807FC78();
  __swift_project_value_buffer(v6, qword_27F91CCE0);

  v7 = a1;
  v8 = sub_25807FC58();
  v9 = sub_25807FDE8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    if (*(a2 + 16))
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x61646567616E616DLL;
    }

    if (*(a2 + 16))
    {
      v14 = 0x80000002580837E0;
    }

    else
    {
      v14 = 0xEC00000064737070;
    }

    v15 = sub_258075008(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_25805F000, v8, v9, "Failed to connect to %s with error %@", v10, 0x16u);
    sub_2580782CC(v11);
    MEMORY[0x259C77C60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C77C60](v12, -1, -1);
    MEMORY[0x259C77C60](v10, -1, -1);
  }

  v23 = 0;
  swift_getErrorValue();
  v18 = sub_258080008();
  v20 = v19;
  sub_258078278();
  v21 = swift_allocError();
  *v22 = v18;
  v22[1] = v20;
  a3(&v23, v21);
}

uint64_t sub_25806B330()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A230, &qword_2580816C0);
  *v2 = v0;
  v2[1] = sub_25806B418;
  v4 = *(v0 + 32);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x80000002580832A0, sub_25806B6F4, v4, v3);
}

uint64_t sub_25806B418()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_25806B52C;
  }

  else
  {
    v3 = sub_258078CFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_25806B544(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2B8, &qword_258081A28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_258078AD0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806B780;
  aBlock[3] = &block_descriptor_646;
  v11 = _Block_copy(aBlock);

  [a2 getConfigDetailsData_];
  _Block_release(v11);
}

uint64_t sub_25806B6FC(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2B8, &qword_258081A28);
    return sub_25807FD98();
  }

  else
  {
    sub_258078AF8(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2B8, &qword_258081A28);
    return sub_25807FDA8();
  }
}

uint64_t sub_25806B780(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_25807FC48();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_2580784F4(v4, v9);
}

uint64_t sub_25806B84C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A238, &qword_2580816D0);
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x80000002580832C0, sub_25806BA48, v4, v3);
}

uint64_t sub_25806B934()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_258078D00;
  }

  else
  {
    v3 = sub_258078EFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25806BA90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_25807FD88();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t ManagedAppsDaemonClient.getPassword(with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_25806BB4C, 0, 0);
}

uint64_t sub_25806BB4C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_25806BC54;
  v7 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x80000002580832E0, sub_25806BFC0, v4, v7);
}

uint64_t sub_25806BC54()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_25806BD8C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_25806BD70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25806BD8C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_25806BDF0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A298, &qword_258081A08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  v9 = sub_25807FCB8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_258078A24;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806C064;
  aBlock[3] = &block_descriptor_634;
  v12 = _Block_copy(aBlock);

  [a2 getPasswordWith:v9 :v12];
  _Block_release(v12);
}

void sub_25806BFC0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_25806BDF0(a1, *(v1 + 16));
}

uint64_t sub_25806BFCC(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A298, &qword_258081A08);
    return sub_25807FD98();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A298, &qword_258081A08);
    return sub_25807FDA8();
  }
}

uint64_t sub_25806C064(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_25807FCE8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_25806C11C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A238, &qword_2580816D0);
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x8000000258083300, sub_25806C204, v4, v3);
}

uint64_t ManagedAppsDaemonClient.getCertificate(with:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_25806C270, 0, 0);
}

uint64_t sub_25806C270()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  type metadata accessor for SecCertificate(0);
  *v6 = v0;
  v6[1] = sub_25806C37C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x8000000258083320, sub_25806C668, v4, v7);
}

uint64_t sub_25806C37C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_258078CE0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_258078EFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_25806C498(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2B0, &qword_258081A20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  v9 = sub_25807FCB8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_25807895C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806B780;
  aBlock[3] = &block_descriptor_622;
  v12 = _Block_copy(aBlock);

  [a2 getCertificateWith:v9 :v12];
  _Block_release(v12);
}

void sub_25806C668(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_25806C498(a1, *(v1 + 16));
}

void sub_25806C674(int a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2B0, &qword_258081A20);
    sub_25807FD98();
    return;
  }

  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_25807FC38();
    v5 = SecCertificateCreateWithData(0, v4);

    if (!v5)
    {
      sub_258078278();
      swift_allocError();
      *v6 = xmmword_258081690;
      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2B0, &qword_258081A20);
    sub_25807FDA8();
  }
}

uint64_t sub_25806C77C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A238, &qword_2580816D0);
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x8000000258083340, sub_25806CA0C, v4, v3);
}

void sub_25806C864(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2A8, &qword_258081A18);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806BA90;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [a2 *a6];
  _Block_release(v18);
}

uint64_t sub_25806CA54(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2A8, &qword_258081A18);
    return sub_25807FD98();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2A8, &qword_258081A18);
    return sub_25807FDA8();
  }
}

uint64_t ManagedAppsDaemonClient.getIdentity(with:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_25806CB0C, 0, 0);
}

uint64_t sub_25806CB0C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  type metadata accessor for SecIdentity(0);
  *v6 = v0;
  v6[1] = sub_25806CC18;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x8000000258083360, sub_25806CF84, v4, v7);
}

uint64_t sub_25806CC18()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_25806CD50;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_25806CD34;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25806CD50()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_25806CDB4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2A0, &qword_258081A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  v9 = sub_25807FCB8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_2580788B0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258078EE8;
  aBlock[3] = &block_descriptor_610;
  v12 = _Block_copy(aBlock);

  [a2 getIdentityWith:v9 :v12];
  _Block_release(v12);
}

void sub_25806CF84(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_25806CDB4(a1, *(v1 + 16));
}

void sub_25806CF90(void *a1, id a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v16[0] = a2;
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2A0, &qword_258081A10);
    sub_25807FD98();
    goto LABEL_4;
  }

  if (!a1)
  {
    sub_258078278();
    v11 = swift_allocError();
    *v12 = xmmword_2580816A0;
    v16[0] = v11;
    goto LABEL_3;
  }

  v5 = objc_opt_self();
  v16[0] = 0;
  v6 = a1;
  v7 = [v5 createIdentityFromEndpoint:v6 error:v16];
  v8 = v16[0];
  v9 = v5;
  if (v7)
  {
    v10 = v8;
    v16[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2A0, &qword_258081A10);
    sub_25807FDA8();
  }

  else
  {
    v13 = v8;
    v14 = sub_25807FBD8();

    swift_willThrow();
    v16[0] = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2A0, &qword_258081A10);
    sub_25807FD98();
  }

LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t ManagedAppsDaemonClient.reportConfigDetailsState(code:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25806D158, 0, 0);
}

uint64_t sub_25806D158()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_25806D268;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000026, 0x8000000258083380, sub_25806D568, v3, v6);
}

uint64_t sub_25806D268()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_25806CD50;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_25806D384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = aBlock - v12;
  if (a5)
  {
    a5 = sub_25807FCB8();
  }

  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_258078EE4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806D574;
  aBlock[3] = &block_descriptor_604;
  v16 = _Block_copy(aBlock);

  [a2 reportConfigDetailsStateWithCode_reason:a3 :{a5, v16}];
  _Block_release(v16);
}

void sub_25806D574(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_25806D600()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000027, 0x80000002580833B0, sub_25806D7EC, v3, v4);
}

uint64_t sub_25806D6D8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_258078D04;
  }

  else
  {
    v3 = sub_258078CFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25806D854()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x80000002580833E0, sub_25806D92C, v3, v4);
}

uint64_t sub_25806D994()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000026, 0x8000000258083410, sub_25806DA6C, v3, v4);
}

uint64_t sub_25806DAD4()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000258083440, sub_25806DD54, v3, v4);
}

void sub_25806DBAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A298, &qword_258081A08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806C064;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [a2 *a6];
  _Block_release(v18);
}

uint64_t sub_25806DD9C(int a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A298, &qword_258081A08);
    return sub_25807FD98();
  }

  if (!a2)
  {
    sub_258078278();
    swift_allocError();
    *v5 = xmmword_2580816A0;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A298, &qword_258081A08);
  return sub_25807FDA8();
}

uint64_t sub_25806DE7C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A230, &qword_2580816C0);
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v4 = *(v0 + 32);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x80000002580832A0, sub_258078EE0, v4, v3);
}

uint64_t sub_25806DF88()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A238, &qword_2580816D0);
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x80000002580832C0, sub_258078EDC, v4, v3);
}

uint64_t sub_25806E070(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = *v2;
  return MEMORY[0x2822009F8](sub_25806E098, 0, 0);
}

uint64_t sub_25806E098()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_25806E1A0;
  v7 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x80000002580832E0, sub_258078D24, v4, v7);
}

uint64_t sub_25806E1A0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_258078CE4;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_258078CFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25806E2E0()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A238, &qword_2580816D0);
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x8000000258083300, sub_258078ED8, v4, v3);
}

uint64_t sub_25806E3C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_25806E3F0, 0, 0);
}

uint64_t sub_25806E3F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  type metadata accessor for SecCertificate(0);
  *v6 = v0;
  v6[1] = sub_25806C37C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x8000000258083320, sub_258078D20, v4, v7);
}

uint64_t sub_25806E520()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A238, &qword_2580816D0);
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x8000000258083340, sub_258078ED4, v4, v3);
}

uint64_t sub_25806E608(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_25806E630, 0, 0);
}

uint64_t sub_25806E630()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  type metadata accessor for SecIdentity(0);
  *v6 = v0;
  v6[1] = sub_25806C37C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x8000000258083360, sub_258078D1C, v4, v7);
}

uint64_t sub_25806E73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_25806E764, 0, 0);
}

uint64_t sub_25806E764()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_25806E874;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000026, 0x8000000258083380, sub_258078CD8, v3, v6);
}

uint64_t sub_25806E874()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_258078CE0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25806E9B4()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000027, 0x80000002580833B0, sub_258078ED0, v3, v4);
}

uint64_t sub_25806EAB0()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x80000002580833E0, sub_258078ECC, v3, v4);
}

uint64_t sub_25806EBAC()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000026, 0x8000000258083410, sub_258078EC8, v3, v4);
}

uint64_t sub_25806ECA8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25806D6D8;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000258083440, sub_258078EC4, v3, v4);
}

uint64_t sub_25806ED80(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_2580759B8(a1, a2);
  v6 = v5;
  _Block_release(a2);
  if (v6)
  {
    v9[4] = sub_258078CEC;
    v9[5] = v4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_25806B780;
    v9[3] = &block_descriptor_366;
    v7 = _Block_copy(v9);

    [v6 getConfigDetailsData_];
    _Block_release(v7);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t ManagedAppsDaemonClient.getConfigDetailsData(_:)(void (*a1)(void, unint64_t, void *), uint64_t a2)
{
  v3 = v2;

  v6 = sub_258075CF8(v3, a1, a2);

  if (v6)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_25806B780;
    v9[3] = &block_descriptor;
    v8 = _Block_copy(v9);

    [v6 getConfigDetailsData_];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_25806EFC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_25807FBC8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_25807FC38();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_25806F0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_25807FD78();
    if (a2)
    {
LABEL_3:
      v6 = sub_25807FBC8();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_25806F190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  sub_258076604(a3, a4);
  v8 = v7;
  _Block_release(a4);
  if (v8)
  {
    v9 = sub_25807FCB8();
    v11[4] = sub_258078CE8;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_25806C064;
    v11[3] = &block_descriptor_352;
    v10 = _Block_copy(v11);

    [v8 getPasswordWith:v9 :v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void ManagedAppsDaemonClient.getPassword(with:_:)(uint64_t a1, uint64_t a2, void (*a3)(void, void, void *), uint64_t a4)
{
  v5 = v4;

  v8 = sub_258076944(v5, a3, a4);

  if (v8)
  {
    v9 = sub_25807FCB8();
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_25806C064;
    v11[3] = &block_descriptor_30;
    v10 = _Block_copy(v11);

    [v8 getPasswordWith:v9 :v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }
}

void sub_25806F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_25807FCB8();
    if (a3)
    {
LABEL_3:
      v7 = sub_25807FBC8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_25806F554(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  sub_2580759B8(a3, a4);
  v8 = v7;
  _Block_release(a4);
  if (v8)
  {
    v9 = sub_25807FCB8();
    v11[4] = sub_2580784AC;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_25806B780;
    v11[3] = &block_descriptor_325;
    v10 = _Block_copy(v11);

    [v8 getCertificateWith:v9 :v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void ManagedAppsDaemonClient.getCertificate(with:_:)(uint64_t a1, uint64_t a2, void (*a3)(void, unint64_t, void *), uint64_t a4)
{
  v5 = v4;

  v8 = sub_258075CF8(v5, a3, a4);

  if (v8)
  {
    v9 = sub_25807FCB8();
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_25806B780;
    v11[3] = &block_descriptor_36;
    v10 = _Block_copy(v11);

    [v8 getCertificateWith:v9 :v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25806F7EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  _Block_copy(a2);
  sub_258075FEC(a1, a2);
  v13 = v12;
  _Block_release(a2);
  if (v13)
  {
    v16[4] = a4;
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_25806BA90;
    v16[3] = a5;
    v14 = _Block_copy(v16);

    [v13 *a6];
    _Block_release(v14);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_25806F938(void (*a1)(void, void *), uint64_t a2, uint64_t a3, SEL *a4)
{

  v9 = sub_25807632C(v4, a1, a2);

  if (v9)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_25806BA90;
    v12[3] = a3;
    v11 = _Block_copy(v12);

    [v9 *a4];
    _Block_release(v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_25806FAAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  sub_258076C20(a3, a4);
  v8 = v7;
  _Block_release(a4);
  if (v8)
  {
    v9 = sub_25807FCB8();
    v11[4] = sub_258078CF4;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_258078EE8;
    v11[3] = &block_descriptor_287;
    v10 = _Block_copy(v11);

    [v8 getIdentityWith:v9 :v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void ManagedAppsDaemonClient.getIdentity(with:_:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v5 = v4;

  v8 = sub_258076F60(v5, a3, a4);

  if (v8)
  {
    v9 = sub_25807FCB8();
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_258078EE8;
    v11[3] = &block_descriptor_42;
    v10 = _Block_copy(v11);

    [v8 getIdentityWith:v9 :v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25806FD44(uint64_t a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_25807FCE8();
  v10 = v9;
  _Block_copy(v7);

  a5(v8, v10, a1, v7);
  _Block_release(v7);
}

void sub_25806FDE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  _Block_copy(a5);
  sub_2580756E0(a4, a5);
  v11 = v10;
  _Block_release(a5);
  if (v11)
  {
    if (a3)
    {
      a3 = sub_25807FCB8();
    }

    v13[4] = sub_258078EF8;
    v13[5] = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_25806D574;
    v13[3] = &block_descriptor_281;
    v12 = _Block_copy(v13);

    [v11 reportConfigDetailsStateWithCode_reason:a1 :{a3, v12}];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void ManagedAppsDaemonClient.reportConfigDetailsState(code:reason:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_25806A684(a4, a5);
  if (v9)
  {
    v10 = v9;
    if (a3)
    {
      v11 = sub_25807FCB8();
    }

    else
    {
      v11 = 0;
    }

    v13[4] = a4;
    v13[5] = a5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_25806D574;
    v13[3] = &block_descriptor_45;
    v12 = _Block_copy(v13);

    [v10 reportConfigDetailsStateWithCode_reason:a1 :{v11, v12}];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }
}

void sub_258070120(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_25807FBC8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2580701C8(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  _Block_copy(v11);

  sub_2580702DC(v12, v11, a4, a5, a6, a7);
  _Block_release(v11);
}

uint64_t sub_2580702DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  _Block_copy(a2);
  sub_258076604(a1, a2);
  v13 = v12;
  _Block_release(a2);
  if (v13)
  {
    v16[4] = a4;
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_25806C064;
    v16[3] = a5;
    v14 = _Block_copy(v16);

    [v13 *a6];
    _Block_release(v14);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_258070428(void (*a1)(void, void, void *), uint64_t a2, uint64_t a3, SEL *a4)
{

  v9 = sub_258076944(v4, a1, a2);

  if (v9)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_25806C064;
    v12[3] = a3;
    v11 = _Block_copy(v12);

    [v9 *a4];
    _Block_release(v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25807056C, 0, 0);
}

uint64_t sub_25807056C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_25807067C;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000002FLL, 0x8000000258083520, sub_258077238, v5, v9);
}

uint64_t sub_25807067C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2580707B0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_258070798;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2580707B0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_258070814(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v19 - v13;
  v15 = sub_25807FCB8();
  if (a7)
  {
    a7 = sub_25807FCB8();
  }

  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = sub_2580787E0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806D574;
  aBlock[3] = &block_descriptor_523;
  v18 = _Block_copy(aBlock);

  [a2 setAppConfigWithRecordID_appConfigRecord_persona:v15 :{v20, a7, v18}];
  _Block_release(v18);
}

uint64_t ManagedAppsDaemonClient.removeAppConfig(recordID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_258070A3C, 0, 0);
}

uint64_t sub_258070A3C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_258070B40;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ALL, 0x8000000258083550, sub_25807723C, v4, v7);
}

uint64_t sub_258070B40()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_258070C5C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258070C5C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t ManagedAppsDaemonClient.updateAppBundleID(for:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_258070CE8, 0, 0);
}

uint64_t sub_258070CE8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v9;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_258070DFC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000020, 0x8000000258083570, sub_258077288, v4, v7);
}

uint64_t sub_258070DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_25806BD8C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_258070F18(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  v9 = sub_25807FCB8();
  v10 = sub_25807FCB8();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_258078EE4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806D574;
  aBlock[3] = &block_descriptor_511;
  v13 = _Block_copy(aBlock);

  [a2 updateAppBundleIDFor_bundleID:v9 :{v10, v13}];
  _Block_release(v13);
}

uint64_t ManagedAppsDaemonClient.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_258071138, 0, 0);
}

uint64_t sub_258071138()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_258071244;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000043, 0x80000002580835A0, sub_2580772A0, v4, v8);
}

uint64_t sub_258071244()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_258078CE4;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_258071360(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = aBlock - v11;
  v13 = sub_25807FCB8();
  sub_2580773A4();
  v14 = sub_25807FD78();
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = sub_258078EE4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806D574;
  aBlock[3] = &block_descriptor_505;
  v17 = _Block_copy(aBlock);

  [a2 updateAppCodeIdentityFor_appCodeIdentity_extensionCodeIdentities:v13 :{a5, v14, v17}];
  _Block_release(v17);
}

uint64_t ManagedAppsDaemonClient.activateAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_258071588, 0, 0);
}

uint64_t sub_258071588()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25807168C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000017, 0x80000002580835F0, sub_2580772B8, v4, v7);
}

uint64_t sub_25807168C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_258078EF0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t ManagedAppsDaemonClient.disableAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2580717CC, 0, 0);
}

uint64_t sub_2580717CC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25807168C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000016, 0x8000000258083610, sub_258077304, v4, v7);
}

uint64_t ManagedAppsDaemonClient.completeRemovalOfAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2580718F4, 0, 0);
}

uint64_t sub_2580718F4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25807168C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000020, 0x8000000258083630, sub_258077350, v4, v7);
}

void sub_2580719F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v20 = a2;
  v21 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v20 - v14;
  v16 = sub_25807FCB8();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806D574;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  [v20 *v21];
  _Block_release(v19);
}

uint64_t sub_258071BDC()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = type metadata accessor for ManagedAppsReportedState();
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x8000000258083660, sub_25807739C, v4, v3);
}

void sub_258071CB8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A290, &qword_258081A00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_258078720;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258078EE8;
  aBlock[3] = &block_descriptor_481;
  v11 = _Block_copy(aBlock);

  [a2 getAllAppConfigState_];
  _Block_release(v11);
}

uint64_t sub_258071E68(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A290, &qword_258081A00);
    return sub_25807FD98();
  }

  if (!a1)
  {
    sub_258078278();
    swift_allocError();
    *v5 = xmmword_2580816A0;
    goto LABEL_3;
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A290, &qword_258081A00);
  return sub_25807FDA8();
}

void sub_258071F20(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_258071FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x2822009F8](sub_258071FD8, 0, 0);
}

uint64_t sub_258071FD8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_2580720E8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000002FLL, 0x8000000258083520, sub_258078EC0, v5, v9);
}

uint64_t sub_2580720E8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_258078EF4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258072204(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25807222C, 0, 0);
}

uint64_t sub_25807222C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25807168C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ALL, 0x8000000258083550, sub_258078D18, v4, v7);
}

uint64_t sub_258072330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_25807235C, 0, 0);
}

uint64_t sub_25807235C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v9;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_258071244;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000020, 0x8000000258083570, sub_258078EBC, v4, v7);
}

uint64_t sub_258072470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_25807249C, 0, 0);
}

uint64_t sub_25807249C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_258071244;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000043, 0x80000002580835A0, sub_258078EB8, v4, v8);
}

uint64_t sub_2580725A8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2580725D0, 0, 0);
}

uint64_t sub_2580725D0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25807168C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000017, 0x80000002580835F0, sub_258078D14, v4, v7);
}

uint64_t sub_2580726D4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2580726FC, 0, 0);
}

uint64_t sub_2580726FC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25807168C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000016, 0x8000000258083610, sub_258078D10, v4, v7);
}

uint64_t sub_258072800(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_258072828, 0, 0);
}

uint64_t sub_258072828()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25807168C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000020, 0x8000000258083630, sub_258078D0C, v4, v7);
}

uint64_t sub_258072950()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = type metadata accessor for ManagedAppsReportedState();
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x8000000258083660, sub_258078EB4, v4, v3);
}

void sub_258072A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  _Block_copy(a7);
  sub_2580756E0(a6, a7);
  v13 = v12;
  _Block_release(a7);
  if (v13)
  {
    v14 = sub_25807FCB8();
    if (a5)
    {
      a5 = sub_25807FCB8();
    }

    v16[4] = sub_258078EF8;
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_25806D574;
    v16[3] = &block_descriptor_234;
    v15 = _Block_copy(v16);

    [v13 setAppConfigWithRecordID_appConfigRecord_persona:v14 :{a3, a5, v15}];
    _Block_release(v15);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v11 = sub_25806A684(a6, a7);
  if (v11)
  {
    v12 = v11;
    v13 = sub_25807FCB8();
    if (a5)
    {
      a5 = sub_25807FCB8();
    }

    v15[4] = a6;
    v15[5] = a7;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_25806D574;
    v15[3] = &block_descriptor_76;
    v14 = _Block_copy(v15);

    [v12 setAppConfigWithRecordID_appConfigRecord_persona:v13 :{a3, a5, v14}];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }
}

void sub_258072E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a6;
  _Block_copy(a6);
  sub_2580756E0(a5, a6);
  v10 = v9;
  _Block_release(a6);
  if (v10)
  {
    v11 = sub_25807FCB8();
    v12 = sub_25807FCB8();
    v14[4] = sub_258078EF8;
    v14[5] = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_25806D574;
    v14[3] = &block_descriptor_220;
    v13 = _Block_copy(v14);

    [v10 updateAppBundleIDFor_bundleID:v11 :{v12, v13}];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void ManagedAppsDaemonClient.updateAppBundleID(for:bundleID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v8 = sub_25806A684(a5, a6);
  if (v8)
  {
    v9 = v8;
    v10 = sub_25807FCB8();
    v11 = sub_25807FCB8();
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_25806D574;
    v13[3] = &block_descriptor_82;
    v12 = _Block_copy(v13);

    [v9 updateAppBundleIDFor_bundleID:v10 :{v11, v12}];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }
}

void sub_2580731A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a6;
  _Block_copy(a6);
  sub_2580756E0(a5, a6);
  v11 = v10;
  _Block_release(a6);
  if (v11)
  {
    v12 = sub_25807FCB8();
    sub_2580773A4();
    v13 = sub_25807FD78();
    v15[4] = sub_258078EF8;
    v15[5] = v9;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_25806D574;
    v15[3] = &block_descriptor_213;
    v14 = _Block_copy(v15);

    [v11 updateAppCodeIdentityFor_appCodeIdentity_extensionCodeIdentities:v12 :{a3, v13, v14}];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void ManagedAppsDaemonClient.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v9 = sub_25806A684(a5, a6);
  if (v9)
  {
    v10 = v9;
    v11 = sub_25807FCB8();
    sub_2580773A4();
    v12 = sub_25807FD78();
    v14[4] = a5;
    v14[5] = a6;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_25806D574;
    v14[3] = &block_descriptor_85;
    v13 = _Block_copy(v14);

    [v10 updateAppCodeIdentityFor_appCodeIdentity_extensionCodeIdentities:v11 :{a3, v12, v13}];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }
}

void sub_2580735EC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = sub_25806A684(a3, a4);
  if (v10)
  {
    v11 = v10;
    v12 = sub_25807FCB8();
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_25806D574;
    v14[3] = a5;
    v13 = _Block_copy(v14);

    [v11 *a6];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }
}

void sub_25807371C(int a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  _Block_copy(v12);
  v14 = a3;

  sub_2580756E0(v15, v12);
  v17 = v16;
  _Block_release(v12);
  if (v17)
  {
    v19[4] = a6;
    v19[5] = v13;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_25806D574;
    v19[3] = a7;
    v18 = _Block_copy(v19);

    [v17 *a8];

    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_258073898(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_2580773F0(a1, a2);
  v6 = v5;
  _Block_release(a2);
  if (v6)
  {
    v9[4] = sub_2580783C8;
    v9[5] = v4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_258078EE8;
    v9[3] = &block_descriptor_172;
    v7 = _Block_copy(v9);

    [v6 getAllAppConfigState_];
    _Block_release(v7);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t ManagedAppsDaemonClient.getAllAppConfigState(_:)(void (*a1)(void, void *), uint64_t a2)
{
  v3 = v2;

  v6 = sub_258077730(v3, a1, a2);

  if (v6)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_258078EE8;
    v9[3] = &block_descriptor_97;
    v8 = _Block_copy(v9);

    [v6 getAllAppConfigState_];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_258073ADC(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
}

void sub_258073B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25807FBC8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_258073BD8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_258073CA8;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x29286863756F74, 0xE700000000000000, sub_258077A08, v3, v4);
}

uint64_t sub_258073CA8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_258078E98;
  }

  else
  {
    v3 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258073DDC()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A248, &qword_258081778);
  *v2 = v0;
  v2[1] = sub_258073ECC;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x61746144706D7564, 0xEE00292865736162, sub_258077A50, v4, v3);
}

uint64_t sub_258073ECC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_258073FE0;
  }

  else
  {
    v3 = sub_258078EFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258073FF8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A280, &qword_2580819F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_258078584;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258074254;
  aBlock[3] = &block_descriptor_458;
  v11 = _Block_copy(aBlock);

  [a2 dumpDatabase_];
  _Block_release(v11);
}

uint64_t sub_2580741A8(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A280, &qword_2580819F0);
    return sub_25807FD98();
  }

  else
  {
    if (!a1)
    {
      sub_2580785AC(MEMORY[0x277D84F90]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A280, &qword_2580819F0);
    return sub_25807FDA8();
  }
}

uint64_t sub_258074254(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A270, &qword_2580819E0);
    v4 = sub_25807FC98();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_258074324()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_258074400;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x7461446573617265, 0xEF29286573616261, sub_258077A58, v3, v4);
}

uint64_t sub_258074400()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_258074514;
  }

  else
  {
    v3 = sub_258078D3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_25807452C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25806D574;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [a2 *a6];
  _Block_release(v18);
}

uint64_t sub_2580746D4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
    return sub_25807FD98();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A278, &qword_2580819E8);
    return sub_25807FDA8();
  }
}

uint64_t sub_25807476C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_258073CA8;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x29286863756F74, 0xE700000000000000, sub_258078EB0, v3, v4);
}

uint64_t sub_258074860()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A248, &qword_258081778);
  *v2 = v0;
  v2[1] = sub_25806B934;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x61746144706D7564, 0xEE00292865736162, sub_258078EAC, v4, v3);
}

uint64_t sub_258074974()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_258073CA8;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x7461446573617265, 0xEF29286573616261, sub_258078EA8, v3, v4);
}

uint64_t sub_258074A94(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_258077AA0(a1, a2);
  v6 = v5;
  _Block_release(a2);
  if (v6)
  {
    v9[4] = sub_258078394;
    v9[5] = v4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_258074254;
    v9[3] = &block_descriptor_146;
    v7 = _Block_copy(v9);

    [v6 dumpDatabase_];
    _Block_release(v7);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t ManagedAppsDaemonClient.dumpDatabase(_:)(void (*a1)(void, void *), uint64_t a2)
{
  v3 = v2;

  v6 = sub_258077DE0(v3, a1, a2);

  if (v6)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_258074254;
    v9[3] = &block_descriptor_109;
    v8 = _Block_copy(v9);

    [v6 dumpDatabase_];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_258074CD8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A270, &qword_2580819E0);
    v5 = sub_25807FC88();
  }

  if (a2)
  {
    v6 = sub_25807FBC8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id sub_258074DA4(void (*a1)(void), uint64_t a2, uint64_t a3, SEL *a4)
{
  result = sub_25806A684(a1, a2);
  if (result)
  {
    v9 = result;
    v11[4] = a1;
    v11[5] = a2;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_25806D574;
    v11[3] = a3;
    v10 = _Block_copy(v11);

    [v9 *a4];
    _Block_release(v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_258074EA4(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  _Block_copy(v10);

  sub_2580756E0(v12, v10);
  v14 = v13;
  _Block_release(v10);
  if (v14)
  {
    v17[4] = a5;
    v17[5] = v11;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_25806D574;
    v17[3] = a6;
    v15 = _Block_copy(v17);

    [v14 *a7];

    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_258075008(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2580750D4(v11, 0, 0, 1, a1, a2);
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
    sub_258078334(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2580750D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2580751E0(a5, a6);
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
    result = sub_25807FEA8();
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

uint64_t sub_2580751E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25807522C(a1, a2);
  sub_25807535C(&unk_28693B150);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25807522C(uint64_t a1, unint64_t a2)
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

  v6 = sub_258075448(v5, 0);
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

  result = sub_25807FEA8();
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
        v10 = sub_25807FD28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258075448(v10, 0);
        result = sub_25807FE68();
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

uint64_t sub_25807535C(uint64_t result)
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

  result = sub_2580754BC(result, v12, 1, v3);
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

void *sub_258075448(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A268, &qword_2580819D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2580754BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A268, &qword_2580819D8);
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

unint64_t sub_2580755B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258080058();
  sub_25807FD08();
  v6 = sub_258080078();

  return sub_258075628(a1, a2, v6);
}

unint64_t sub_258075628(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25807FFC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_2580756E0(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = sub_258069AE4();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = sub_258078EF8;
    v7[4] = v4;
    aBlock[4] = sub_258078234;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_139;
    v8 = _Block_copy(aBlock);

    v9 = [v6 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v10 = sub_25807FC78();
      __swift_project_value_buffer(v10, qword_27F91CCE0);
      v11 = sub_25807FC58();
      v12 = sub_25807FDE8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_25805F000, v11, v12, "Failed to get remote object", v13, 2u);
        MEMORY[0x259C77C60](v13, -1, -1);
      }

      sub_258078278();
      v14 = swift_allocError();
      *v15 = 0xD00000000000001BLL;
      v15[1] = 0x80000002580837C0;
      v16 = sub_25807FBC8();
      (a2)[2](a2, v16);
    }
  }

  else
  {
    _Block_release(a2);
    __break(1u);
  }
}

void sub_2580759B8(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_258078CEC;
  *(v5 + 24) = v4;
  _Block_copy(a2);

  v6 = sub_258069AE4();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_2580784B4;
    v8[4] = v5;
    aBlock[4] = sub_2580784E8;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_338;
    v9 = _Block_copy(aBlock);

    v10 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v11 = sub_25807FC78();
      __swift_project_value_buffer(v11, qword_27F91CCE0);
      v12 = sub_25807FC58();
      v13 = sub_25807FDE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25805F000, v12, v13, "Failed to get remote object", v14, 2u);
        MEMORY[0x259C77C60](v14, -1, -1);
      }

      sub_258078278();
      v15 = swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000002580837C0;
      _Block_copy(a2);
      v17 = sub_25807FBC8();
      (a2)[2](a2, 0, v17);

      _Block_release(a2);
    }
  }

  else
  {

    _Block_release(a2);
    __break(1u);
  }
}

uint64_t sub_258075CF8(uint64_t a1, void (*a2)(void, unint64_t, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_258069AE4();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_258078D38;
    v9[4] = v6;
    aBlock[4] = sub_258078D30;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_574;
    v10 = _Block_copy(aBlock);

    v11 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
      v12 = v20;
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v13 = sub_25807FC78();
      __swift_project_value_buffer(v13, qword_27F91CCE0);
      v14 = sub_25807FC58();
      v15 = sub_25807FDE8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25805F000, v14, v15, "Failed to get remote object", v16, 2u);
        MEMORY[0x259C77C60](v16, -1, -1);
      }

      sub_258078278();
      v17 = swift_allocError();
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x80000002580837C0;
      a2(0, 0xF000000000000000, v17);

      return 0;
    }

    return v12;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258075FEC(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_258078CF8;
  *(v5 + 24) = v4;
  _Block_copy(a2);

  v6 = sub_258069AE4();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_258078480;
    v8[4] = v5;
    aBlock[4] = sub_258078D08;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_319;
    v9 = _Block_copy(aBlock);

    v10 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v11 = sub_25807FC78();
      __swift_project_value_buffer(v11, qword_27F91CCE0);
      v12 = sub_25807FC58();
      v13 = sub_25807FDE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25805F000, v12, v13, "Failed to get remote object", v14, 2u);
        MEMORY[0x259C77C60](v14, -1, -1);
      }

      sub_258078278();
      v15 = swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000002580837C0;
      _Block_copy(a2);
      v17 = sub_25807FBC8();
      (a2)[2](a2, 0, v17);

      _Block_release(a2);
    }
  }

  else
  {

    _Block_release(a2);
    __break(1u);
  }
}

uint64_t sub_25807632C(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_258069AE4();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_258078EA4;
    v9[4] = v6;
    aBlock[4] = sub_258078D08;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_563;
    v10 = _Block_copy(aBlock);

    v11 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
      v12 = v20;
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v13 = sub_25807FC78();
      __swift_project_value_buffer(v13, qword_27F91CCE0);
      v14 = sub_25807FC58();
      v15 = sub_25807FDE8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25805F000, v14, v15, "Failed to get remote object", v16, 2u);
        MEMORY[0x259C77C60](v16, -1, -1);
      }

      sub_258078278();
      v17 = swift_allocError();
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x80000002580837C0;
      a2(0, v17);

      return 0;
    }

    return v12;
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_258076604(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_258078CE8;
  *(v5 + 24) = v4;
  _Block_copy(a2);

  v6 = sub_258069AE4();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_258078438;
    v8[4] = v5;
    aBlock[4] = sub_25807846C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_253;
    v9 = _Block_copy(aBlock);

    v10 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v11 = sub_25807FC78();
      __swift_project_value_buffer(v11, qword_27F91CCE0);
      v12 = sub_25807FC58();
      v13 = sub_25807FDE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25805F000, v12, v13, "Failed to get remote object", v14, 2u);
        MEMORY[0x259C77C60](v14, -1, -1);
      }

      sub_258078278();
      v15 = swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000002580837C0;
      _Block_copy(a2);
      v17 = sub_25807FBC8();
      (a2)[2](a2, 0, v17);

      _Block_release(a2);
    }
  }

  else
  {

    _Block_release(a2);
    __break(1u);
  }
}

uint64_t sub_258076944(uint64_t a1, void (*a2)(void, void, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_258069AE4();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_258078D34;
    v9[4] = v6;
    aBlock[4] = sub_258078D2C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_552;
    v10 = _Block_copy(aBlock);

    v11 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
      v12 = v20;
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v13 = sub_25807FC78();
      __swift_project_value_buffer(v13, qword_27F91CCE0);
      v14 = sub_25807FC58();
      v15 = sub_25807FDE8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25805F000, v14, v15, "Failed to get remote object", v16, 2u);
        MEMORY[0x259C77C60](v16, -1, -1);
      }

      sub_258078278();
      v17 = swift_allocError();
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x80000002580837C0;
      a2(0, 0, v17);

      return 0;
    }

    return v12;
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_258076C20(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_258078CF4;
  *(v5 + 24) = v4;
  _Block_copy(a2);

  v6 = sub_258069AE4();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_258078E9C;
    v8[4] = v5;
    aBlock[4] = sub_258078D08;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_300;
    v9 = _Block_copy(aBlock);

    v10 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v11 = sub_25807FC78();
      __swift_project_value_buffer(v11, qword_27F91CCE0);
      v12 = sub_25807FC58();
      v13 = sub_25807FDE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25805F000, v12, v13, "Failed to get remote object", v14, 2u);
        MEMORY[0x259C77C60](v14, -1, -1);
      }

      sub_258078278();
      v15 = swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000002580837C0;
      _Block_copy(a2);
      v17 = sub_25807FBC8();
      (a2)[2](a2, 0, v17);

      _Block_release(a2);
    }
  }

  else
  {

    _Block_release(a2);
    __break(1u);
  }
}

uint64_t sub_258076F60(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_258069AE4();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_258078E9C;
    v9[4] = v6;
    aBlock[4] = sub_258078D08;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_541;
    v10 = _Block_copy(aBlock);

    v11 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
      v12 = v20;
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v13 = sub_25807FC78();
      __swift_project_value_buffer(v13, qword_27F91CCE0);
      v14 = sub_25807FC58();
      v15 = sub_25807FDE8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25805F000, v14, v15, "Failed to get remote object", v16, 2u);
        MEMORY[0x259C77C60](v16, -1, -1);
      }

      sub_258078278();
      v17 = swift_allocError();
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x80000002580837C0;
      a2(0, v17);

      return 0;
    }

    return v12;
  }

  else
  {

    __break(1u);
  }

  return result;
}

unint64_t sub_2580773A4()
{
  result = qword_27F91A240;
  if (!qword_27F91A240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F91A240);
  }

  return result;
}

void sub_2580773F0(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_258078CF4;
  *(v5 + 24) = v4;
  _Block_copy(a2);

  v6 = sub_258069AE4();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_2580783E4;
    v8[4] = v5;
    aBlock[4] = sub_258078410;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_185;
    v9 = _Block_copy(aBlock);

    v10 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v11 = sub_25807FC78();
      __swift_project_value_buffer(v11, qword_27F91CCE0);
      v12 = sub_25807FC58();
      v13 = sub_25807FDE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25805F000, v12, v13, "Failed to get remote object", v14, 2u);
        MEMORY[0x259C77C60](v14, -1, -1);
      }

      sub_258078278();
      v15 = swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000002580837C0;
      _Block_copy(a2);
      v17 = sub_25807FBC8();
      (a2)[2](a2, 0, v17);

      _Block_release(a2);
    }
  }

  else
  {

    _Block_release(a2);
    __break(1u);
  }
}

uint64_t sub_258077730(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_258069AE4();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_258078E9C;
    v9[4] = v6;
    aBlock[4] = sub_258078D08;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_475;
    v10 = _Block_copy(aBlock);

    v11 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
      v12 = v20;
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v13 = sub_25807FC78();
      __swift_project_value_buffer(v13, qword_27F91CCE0);
      v14 = sub_25807FC58();
      v15 = sub_25807FDE8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25805F000, v14, v15, "Failed to get remote object", v16, 2u);
        MEMORY[0x259C77C60](v16, -1, -1);
      }

      sub_258078278();
      v17 = swift_allocError();
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x80000002580837C0;
      a2(0, v17);

      return 0;
    }

    return v12;
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_258077AA0(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_258078CF0;
  *(v5 + 24) = v4;
  _Block_copy(a2);

  v6 = sub_258069AE4();
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_25807839C;
    v8[4] = v5;
    aBlock[4] = sub_258078D08;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_159;
    v9 = _Block_copy(aBlock);

    v10 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v11 = sub_25807FC78();
      __swift_project_value_buffer(v11, qword_27F91CCE0);
      v12 = sub_25807FC58();
      v13 = sub_25807FDE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25805F000, v12, v13, "Failed to get remote object", v14, 2u);
        MEMORY[0x259C77C60](v14, -1, -1);
      }

      sub_258078278();
      v15 = swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000002580837C0;
      _Block_copy(a2);
      v17 = sub_25807FBC8();
      (a2)[2](a2, 0, v17);

      _Block_release(a2);
    }
  }

  else
  {

    _Block_release(a2);
    __break(1u);
  }
}

uint64_t sub_258077DE0(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_258069AE4();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_258078EA0;
    v9[4] = v6;
    aBlock[4] = sub_258078D08;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25806AB54;
    aBlock[3] = &block_descriptor_446;
    v10 = _Block_copy(aBlock);

    v11 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_25807FE58();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A250, &qword_2580819C8);
    if (swift_dynamicCast())
    {
      v12 = v20;
    }

    else
    {
      if (qword_27F919E60 != -1)
      {
        swift_once();
      }

      v13 = sub_25807FC78();
      __swift_project_value_buffer(v13, qword_27F91CCE0);
      v14 = sub_25807FC58();
      v15 = sub_25807FDE8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25805F000, v14, v15, "Failed to get remote object", v16, 2u);
        MEMORY[0x259C77C60](v16, -1, -1);
      }

      sub_258078278();
      v17 = swift_allocError();
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x80000002580837C0;
      a2(0, v17);

      return 0;
    }

    return v12;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ManagedAppsInterface0aB12DaemonClientC0abdE5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258078138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25807819C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_2580781EC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
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

unint64_t sub_258078278()
{
  result = qword_27F91A258;
  if (!qword_27F91A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A258);
  }

  return result;
}

uint64_t sub_2580782CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A260, &qword_2580819D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258078334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25807839C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2580783E4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_258078438(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], a2);
}

uint64_t sub_258078480(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2580784B4(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], a2);
}

uint64_t sub_2580784F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258078508(a1, a2);
  }

  return a1;
}

uint64_t sub_258078508(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2580785AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A288, &qword_2580819F8);
    v3 = sub_25807FEE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2580755B0(v5, v6);
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

uint64_t sub_258078748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t objectdestroy_135Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258078984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t objectdestroy_448Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_258078AF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258078B0C(a1, a2);
  }

  return a1;
}

uint64_t sub_258078B0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static DMCFeatureOverrides.managedAppBundleID(defaultValue:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_25807FCB8();
  v4 = [v2 stringForDefaultsKey_];

  if (v4)
  {
    a1 = sub_25807FCE8();
  }

  else
  {
  }

  return a1;
}

uint64_t static DMCFeatureOverrides.managedAppTeamID(defaultValue:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_25807FCB8();
  v4 = [v2 stringForDefaultsKey_];

  if (v4)
  {
    a1 = sub_25807FCE8();
  }

  else
  {
  }

  return a1;
}

id static DMCFeatureOverrides.managedAppSignatureOverride()()
{
  v0 = objc_opt_self();
  v1 = sub_25807FCB8();
  v2 = [v0 BOOLForDefaultsKey_];

  return v2;
}

uint64_t sub_258079118()
{
  v0 = sub_25807FC78();
  __swift_allocate_value_buffer(v0, qword_27F91CCE0);
  __swift_project_value_buffer(v0, qword_27F91CCE0);
  return sub_25807FC68();
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

uint64_t sub_258079200()
{
  v0 = sub_25807FC78();
  __swift_allocate_value_buffer(v0, qword_27F91CCF8);
  __swift_project_value_buffer(v0, qword_27F91CCF8);
  return sub_25807FC68();
}

unint64_t sub_258079280(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    return 0xD000000000000011;
  }

  sub_25807FE78();

  MEMORY[0x259C774A0](a1, a2);
  return 0xD000000000000024;
}

uint64_t sub_258079358(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A310, &qword_258081C18);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A318, &qword_258081C20);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A320, &qword_258081C28);
  v26 = *(v12 - 8);
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A328, &qword_258081C30);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v25 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25807B794();
  sub_258080098();
  if (!v34)
  {
    v36 = 1;
    sub_25807B83C();
    sub_25807FF78();
    v22 = v28;
    sub_25807FFA8();
    v23 = v27;
    goto LABEL_5;
  }

  if (v34 == 1)
  {
    v37 = 2;
    sub_25807B7E8();
    v11 = v29;
    sub_25807FF78();
    v22 = v31;
    sub_25807FFA8();
    v23 = v30;
LABEL_5:
    (*(v23 + 8))(v11, v22);
    return (*(v17 + 8))(v20, v16);
  }

  v35 = 0;
  sub_25807B890();
  sub_25807FF78();
  (*(v26 + 8))(v15, v12);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_258079738()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_2580797A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25807B01C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2580797DC(uint64_t a1)
{
  v2 = sub_25807B794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258079818(uint64_t a1)
{
  v2 = sub_25807B794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258079860(uint64_t a1)
{
  v2 = sub_25807B7E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25807989C(uint64_t a1)
{
  v2 = sub_25807B7E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2580798D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25807FFC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258079958(uint64_t a1)
{
  v2 = sub_25807B83C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258079994(uint64_t a1)
{
  v2 = sub_25807B83C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2580799DC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_258079A0C(uint64_t a1)
{
  v2 = sub_25807B890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258079A48(uint64_t a1)
{
  v2 = sub_25807B890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258079A84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25807B14C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_258079AE0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_258079B10(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_258079B68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_258079B98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static DMCPersonaHelper.perform(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_258079CB4, 0, 0);
}

id sub_258079CB4()
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v0[15] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    result = [objc_opt_self() sharedManager];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result currentPersona];
    v0[19] = v5;

    if (!v5)
    {
      if (qword_27F919E68 != -1)
      {
        swift_once();
      }

      v38 = sub_25807FC78();
      __swift_project_value_buffer(v38, qword_27F91CCF8);
      v39 = sub_25807FC58();
      v40 = sub_25807FDE8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_25805F000, v39, v40, "Failed to get current persona", v41, 2u);
        MEMORY[0x259C77C60](v41, -1, -1);
      }

      sub_25807AE34();
      swift_allocError();
      *v42 = 0xD00000000000001FLL;
      *(v42 + 8) = 0x80000002580838C0;
      *(v42 + 16) = 0;
      swift_willThrow();
      goto LABEL_32;
    }

    v0[11] = 0;
    v6 = [v5 copyCurrentPersonaContextWithError_];
    v0[20] = v6;
    v7 = v0[11];
    if (!v6)
    {
      v43 = v7;
      v44 = sub_25807FBD8();

      swift_willThrow();
      if (qword_27F919E68 != -1)
      {
        swift_once();
      }

      v45 = sub_25807FC78();
      __swift_project_value_buffer(v45, qword_27F91CCF8);
      v46 = v44;
      v47 = sub_25807FC58();
      v48 = sub_25807FDE8();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v44;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_25805F000, v47, v48, "copyCurrentPersonaContext failed with error %@", v49, 0xCu);
        sub_2580782CC(v50);
        MEMORY[0x259C77C60](v50, -1, -1);
        MEMORY[0x259C77C60](v49, -1, -1);
      }

      swift_getErrorValue();
      v54 = v0[2];
      v53 = v0[3];
      v55 = v0[4];
      v56 = sub_258080008();
      v58 = v57;
      sub_25807AE34();
      swift_allocError();
      *v59 = v56;
      *(v59 + 8) = v58;
      *(v59 + 16) = 1;
      swift_willThrow();

      goto LABEL_32;
    }

    v8 = v6;
    v9 = v0[15];
    v10 = v7;
    v11 = sub_25807FCB8();
    v12 = [v5 createPersonaContextForBackgroundProcessingWithPersonaUniqueString_];

    if (v12)
    {
      if (qword_27F919E68 != -1)
      {
        swift_once();
      }

      v13 = sub_25807FC78();
      __swift_project_value_buffer(v13, qword_27F91CCF8);
      v14 = v12;
      v15 = sub_25807FC58();
      v16 = sub_25807FDE8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v14;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_25805F000, v15, v16, "createPersonaContextForBackgroundProcessing failed with error %@", v17, 0xCu);
        sub_2580782CC(v18);
        MEMORY[0x259C77C60](v18, -1, -1);
        MEMORY[0x259C77C60](v17, -1, -1);
      }

      swift_getErrorValue();
      v22 = v0[8];
      v21 = v0[9];
      v23 = v0[10];
      v24 = sub_258080008();
      v26 = v25;
      sub_25807AE34();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 1;
      swift_willThrow();

LABEL_32:
      v60 = v0[1];
      v61 = *MEMORY[0x277D85DE8];

      return v60();
    }

    v63 = (v0[17] + *v0[17]);
    v62 = *(v0[17] + 4);
    v34 = swift_task_alloc();
    v0[21] = v34;
    *v34 = v0;
    v35 = sub_25807A454;
  }

  else
  {
LABEL_14:
    if (qword_27F919E68 != -1)
    {
      swift_once();
    }

    v28 = sub_25807FC78();
    __swift_project_value_buffer(v28, qword_27F91CCF8);
    v29 = sub_25807FC58();
    v30 = sub_25807FDD8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_25805F000, v29, v30, "No persona ID", v31, 2u);
      MEMORY[0x259C77C60](v31, -1, -1);
    }

    v32 = v0[17];

    v63 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[23] = v34;
    *v34 = v0;
    v35 = sub_25807A80C;
  }

  v34[1] = v35;
  v36 = v0[18];
  v37 = *MEMORY[0x277D85DE8];

  return v63();
}

uint64_t sub_25807A454()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_25807A950;
  }

  else
  {
    v3 = sub_25807A594;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25807A594()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 152) restorePersonaWithSavedPersonaContext_];
  if (v1)
  {
    v2 = v1;
    if (qword_27F919E68 != -1)
    {
      swift_once();
    }

    v3 = sub_25807FC78();
    __swift_project_value_buffer(v3, qword_27F91CCF8);
    v4 = v2;
    v5 = sub_25807FC58();
    v6 = sub_25807FDF8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_25805F000, v5, v6, "restorePersona failed with error %@", v7, 0xCu);
      sub_2580782CC(v8);
      MEMORY[0x259C77C60](v8, -1, -1);
      MEMORY[0x259C77C60](v7, -1, -1);
    }

    v11 = *(v0 + 160);

    swift_getErrorValue();
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = sub_258080008();
    v17 = v16;
    sub_25807AE34();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 1;

    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    swift_willThrow();

    v21 = *(v0 + 8);
    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {

    v23 = *(v0 + 152);
    v21 = *(v0 + 8);
    v24 = *MEMORY[0x277D85DE8];
  }

  return v21();
}

uint64_t sub_25807A80C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 184);
  v6 = *v0;

  v2 = *(v6 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_25807A950()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = [*(v0 + 152) restorePersonaWithSavedPersonaContext_];
  if (v2)
  {
    v3 = v2;
    if (qword_27F919E68 != -1)
    {
      swift_once();
    }

    v4 = sub_25807FC78();
    __swift_project_value_buffer(v4, qword_27F91CCF8);
    v5 = v3;
    v6 = sub_25807FC58();
    v7 = sub_25807FDF8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v5;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_25805F000, v6, v7, "restorePersona failed with error %@", v8, 0xCu);
      sub_2580782CC(v9);
      MEMORY[0x259C77C60](v9, -1, -1);
      MEMORY[0x259C77C60](v8, -1, -1);
    }

    v12 = *(v0 + 160);

    swift_getErrorValue();
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = sub_258080008();
    v18 = v17;
    sub_25807AE34();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    *(v19 + 16) = 1;

    goto LABEL_8;
  }

  if (v1)
  {
LABEL_8:
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    swift_willThrow();

    v22 = *(v0 + 8);
    v23 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  v25 = *(v0 + 152);

  v22 = *(v0 + 8);
  v26 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v22();
}