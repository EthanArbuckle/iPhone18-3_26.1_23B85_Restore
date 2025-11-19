uint64_t type metadata accessor for PeoplePickerSheetViewModifier()
{
  result = qword_1EC6DAF30;
  if (!qword_1EC6DAF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.imageGenerationPeoplePickerSheet(allowsClearingSelection:usesCharacterSharedStorage:isPresented:selectedPerson:sessionUndoManager:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v69 = a8;
  v66 = a7;
  v67 = a9;
  v64 = a5;
  v65 = a1;
  v75 = a3;
  v76 = a4;
  v74 = a2;
  v68 = a10;
  v59 = sub_1D28764E8();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  v63 = *(v13 - 8);
  v62 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v70 = &v57 - v16;
  v77 = sub_1D2872008();
  v60 = *(v77 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v57 - v20;
  v21 = type metadata accessor for PeoplePickerSheetViewModifier();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D389AA70](v22);
  sub_1D22BD1D0(a6, v17, &qword_1EC6DA2E0);
  v79 = 1;
  v25 = &v24[v21[10]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &v24[v21[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v24[v21[12]];
  *v27 = swift_getKeyPath();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v28 = &v24[v21[13]];
  *v28 = swift_getKeyPath();
  *(v28 + 4) = 0;
  v29 = &v24[v21[14]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = &v24[v21[15]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v21[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB8);
  v32 = sub_1D2875808();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D287F500;
  sub_1D28757E8();
  v36 = sub_1D2400610(v35);
  swift_setDeallocating();
  (*(v33 + 8))(v35 + v34, v32);
  swift_deallocClassInstance();
  *&v24[v31] = v36;
  v37 = &v24[v21[17]];
  *v37 = swift_getKeyPath();
  v37[40] = 0;
  v78 = 0x4074A00000000000;
  v38 = *MEMORY[0x1E6980EF8];
  v39 = *(v58 + 104);
  v40 = v59;
  v39(v12, v38, v59);
  sub_1D22BFBB8();
  sub_1D2874748();
  v78 = 0x4075E00000000000;
  v39(v12, v38, v40);
  sub_1D2874748();
  v41 = v21[20];
  *&v24[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v42 = &v24[v21[7]];
  v43 = v76;
  *v42 = v75;
  *(v42 + 1) = v43;
  v42[16] = v64;
  v44 = v70;
  sub_1D22BD1D0(v70, &v24[v21[8]], &qword_1EC6DA2E0);
  *v24 = v65;
  v24[1] = v74;
  v45 = v60;
  v46 = *(v60 + 16);
  v47 = v71;
  v48 = v77;
  v46(&v24[v21[6]], v71, v77);
  v46(v73, v47, v48);
  sub_1D22BD1D0(v44, v72, &qword_1EC6DA2E0);
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = v49 + v61;
  v51 = (*(v63 + 80) + v49 + v61 + 1) & ~*(v63 + 80);
  v52 = (v62 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v45 + 32))(v54 + v49, v73, v77);
  *(v54 + v50) = v74;
  sub_1D234894C(v72, v54 + v51);
  *(v54 + v52) = v66;
  *(v54 + v53) = 0;
  v55 = v54 + ((v53 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v55 = 0u;
  *(v55 + 16) = 0u;
  *(v55 + 32) = v79;
  type metadata accessor for PeoplePickerInternalCoordinator();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2874328();
  sub_1D22BD238(v70, &qword_1EC6DA2E0);
  (*(v45 + 8))(v71, v77);
  MEMORY[0x1D389F9A0](v24, v69, v21, v68);
  return sub_1D2401D78(v24, type metadata accessor for PeoplePickerSheetViewModifier);
}

uint64_t sub_1D23F76F4(void (*a1)(void))
{
  a1();
  sub_1D2875638();
  return v2;
}

uint64_t keypath_get_2Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1D2875638();
  *a2 = v4;
  return result;
}

uint64_t sub_1D23F7834()
{
  swift_getKeyPath();
  sub_1D28767F8();
}

uint64_t View.imageGenerationPeoplePickerClientName(_:)()
{
  swift_getKeyPath();
  sub_1D28767F8();
}

uint64_t sub_1D23F7924()
{
  sub_1D2403360();
  sub_1D2875638();
  return v1;
}

double sub_1D23F7960@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2403360();
  sub_1D2875638();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D23F79B0()
{
  sub_1D2403360();
  sub_1D2870F68();
  return sub_1D2875648();
}

uint64_t View.imageGenerationPeoplePickerCornerRadius(_:)()
{
  swift_getKeyPath();
  sub_1D28767F8();
}

uint64_t sub_1D23F7A98()
{
  sub_1D240330C();
  sub_1D2875638();
  return v1;
}

uint64_t sub_1D23F7AD8@<X0>(uint64_t a1@<X8>)
{
  sub_1D240330C();
  result = sub_1D2875638();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t View.imageGenerationPeoplePickerDragIndicator(_:)()
{
  swift_getKeyPath();
  sub_1D28767F8();
}

uint64_t sub_1D23F7BF8()
{
  sub_1D24032B8();
  sub_1D2875638();
  return v1;
}

uint64_t sub_1D23F7C34@<X0>(_BYTE *a1@<X8>)
{
  sub_1D24032B8();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D23F7CDC()
{
  swift_getKeyPath();
  sub_1D2870F68();
  sub_1D28767F8();
}

uint64_t sub_1D23F7D80(void (*a1)(void))
{
  a1();
  sub_1D2875638();
  return v2;
}

uint64_t keypath_getTm@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1D2875638();
  *a2 = v4;
  return result;
}

uint64_t sub_1D23F7E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  sub_1D2870F68();
  return sub_1D2875648();
}

uint64_t View.onImageGenerationPersonalizationPresentationChange(delegate:)()
{
  swift_getKeyPath();
  sub_1D28767F8();
}

uint64_t sub_1D23F7F3C()
{
  sub_1D24031C8();

  return sub_1D2875638();
}

uint64_t sub_1D23F7FC4(uint64_t a1)
{
  sub_1D22BD1D0(a1, v3, &qword_1EC6DAF80);
  sub_1D22BD1D0(v3, &v2, &qword_1EC6DAF80);
  sub_1D24031C8();
  sub_1D2875648();
  return sub_1D22BD238(v3, &qword_1EC6DAF80);
}

uint64_t sub_1D23F8054@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB8);
  sub_1D2875808();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D287F550;
  sub_1D28757F8();
  sub_1D28757D8();
  v3 = sub_1D2400610(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  *a1 = v3;
  return result;
}

uint64_t sub_1D23F816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D22BB118();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D23F81E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D24035E0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D23F824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D240358C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D23F82B0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB8);
  v2 = sub_1D2875808();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D287F500;
  sub_1D28757F8();
  v6 = sub_1D2400610(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  result = swift_deallocClassInstance();
  *a1 = v6;
  return result;
}

double sub_1D23F83BC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D23F83D0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *&v50 = a6;
  v52 = a3;
  v53 = a7;
  LODWORD(v48) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *&v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v45 - v13;
  v14 = sub_1D2872008();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  MEMORY[0x1D389AA70](v18);
  type metadata accessor for CreationContext();
  swift_allocObject();
  v21 = CreationContext.init(defaultStyle:)(v20);
  type metadata accessor for ServicesFetcher();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  type metadata accessor for ImageConditioningRepresentationsManager();
  v24 = swift_allocObject();
  *(v24 + 24) = 1;
  *(v24 + 40) = v21;
  *(v24 + 48) = v23;
  *(v24 + 32) = v23;
  *(v24 + 16) = v22;
  v49 = v21;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D267E8EC();
  if (a5)
  {
    v54 = a5;
    if (a4)
    {
LABEL_3:
      v25 = a4;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2870F78();
    v54 = v24;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for SessionUndoManager();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
LABEL_6:
  v51 = v15;
  v46 = *(v15 + 16);
  v26 = v55;
  v46(v55, a1, v14);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  v28 = v22;
  v29 = v56;
  MEMORY[0x1D389FF60](v27);
  type metadata accessor for PeoplePickerInternalCoordinator();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 23) = 0;
  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__shouldDismissPeoplePickerTrigger;
  v32 = sub_1D2871818();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__allowsYellowEmojiSkinTone) = 1;
  v33 = (v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  *v33 = 0;
  v33[1] = 0;
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__isGenmojiMacThemeEnabled) = 0;
  v34 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  v35 = type metadata accessor for ImageGenerationPerson();
  (*(*(v35 - 8) + 56))(v30 + v34, 1, 1, v35);
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator____lazy_storage___peoplePickerViewModel) = 0;
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_characterEditingViewModel) = 0;
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_facePickerCarouselViewModel) = 0;
  sub_1D2871A18();
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_servicesFetcher) = v28;
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_representationsManager) = v54;
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_sessionUndoManager) = v25;
  v52 = v14;
  v46((v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle), v26, v14);
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__usesCharacterSharedStorage) = v48 & 1;
  v36 = v47;
  sub_1D22BD1D0(v29, v47, &qword_1EC6D8F80);
  sub_1D2870F78();
  sub_1D2870F78();
  v48 = v25;
  sub_1D2870F78();
  sub_1D234B684(v36);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v45 - 2) = v30;
  *(&v45 - 1) = 0;
  *&v57[0] = v30;
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719D8();

  if (*(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__isGenmojiMacThemeEnabled) == 1)
  {
    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    *(&v45 - 2) = v30;
    *(&v45 - 8) = 0;
    *&v57[0] = v30;
    sub_1D28719D8();
  }

  else
  {
    *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__isGenmojiMacThemeEnabled) = 0;
  }

  v40 = v51;
  v39 = v52;
  if ((*(v50 + 32) & 1) == 0)
  {
    v41 = *(v50 + 16);
    v50 = *v50;
    v47 = v41;
    v42 = SecTaskCreateFromSelf(0);
    if (v42)
    {
      v43 = v42;
      if (sub_1D27E25E4(v42))
      {
        v57[0] = v50;
        v57[1] = v47;
        v58 = 2;
        _s23ImagePlaygroundInternal16ExecutionContextV17setClientIdentityyyAC08GPClientH0OFZ_0(v57);
      }
    }
  }

  sub_1D234B8A0();
  sub_1D254A228();

  sub_1D22BD238(v56, &qword_1EC6D8F80);
  result = (*(v40 + 8))(v55, v39);
  *v53 = v30;
  return result;
}

uint64_t sub_1D23F8A7C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_1D2874AE8();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PeoplePickerSheetViewModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB098);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB090);
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  sub_1D2874278();
  sub_1D2401680(v1, v7, type metadata accessor for PeoplePickerSheetViewModifier);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_1D24019D0(v7, v22 + v21, type metadata accessor for PeoplePickerSheetViewModifier);
  MEMORY[0x1D389FDF0](v10, sub_1D2402824, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  v23 = sub_1D234B8A0();

  swift_getKeyPath();
  v51 = v23;
  sub_1D240321C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v24 = *(v23 + 64);

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = (v24 & 1) == 0;
  v27 = &v13[*(v11 + 36)];
  *v27 = KeyPath;
  v27[1] = sub_1D24036C4;
  v27[2] = v26;
  sub_1D2876438();
  v28 = sub_1D2401FBC();
  sub_1D2876758();
  sub_1D22BD238(v13, &qword_1EC6DB0A0);
  v29 = v43;
  sub_1D2874AB8();
  sub_1D2874C48();
  v51 = v11;
  v52 = v28;
  v30 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D2876A18();
  (*(v46 + 8))(v29, v47);
  (*(v42 + 8))(v17, v30);
  if (qword_1EC6D7E58 != -1)
  {
    swift_once();
  }

  v32 = qword_1EC6D7E60;
  if (qword_1EC6D7E70 != -1)
  {
    swift_once();
  }

  v51 = v32;
  v52 = qword_1EC6D7E78;
  v53 = xmmword_1D2885D00;
  v54 = 0x3FC3333333333333;
  v49 = v30;
  v50 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1D24020A0();
  v33 = v48;
  v34 = v45;
  sub_1D28767B8();
  (*(v44 + 8))(v20, v34);
  v35 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB080) + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D38) + 28);
  v37 = *MEMORY[0x1E697DC10];
  v38 = sub_1D2874448();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  result = swift_getKeyPath();
  *v35 = result;
  return result;
}

uint64_t sub_1D23F9130()
{
  type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  return sub_1D28774F8();
}

uint64_t sub_1D23F91A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41[-v4];
  v6 = type metadata accessor for PeoplePickerSheetViewModifier();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1D2874288();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v41[-v13];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0B8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0D0);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v41[-v16];
  v43 = sub_1D2875798();
  v18 = v17;
  v42 = v19;
  v21 = v20;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED8B0058;
  sub_1D2874268();
  sub_1D2401680(v2, &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PeoplePickerSheetViewModifier);
  v23 = *(v44 + 80);
  v44 = v2;
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  sub_1D24019D0(&v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v25 + v24, type metadata accessor for PeoplePickerSheetViewModifier);
  (*(v9 + 16))(v5, v11, v8);
  v26 = (*(v9 + 56))(v5, 0, 1, v8);
  MEMORY[0x1EEE9AC00](v26);
  *&v41[-48] = v43;
  *&v41[-40] = v18;
  v41[-32] = v42 & 1;
  *&v41[-24] = v21;
  *&v41[-16] = v22;
  sub_1D2870F78();
  sub_1D2877358();

  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  v27 = sub_1D234B8A0();

  swift_getKeyPath();
  v55[0] = v27;
  sub_1D240321C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v27 + 88, v55, &qword_1EC6D9A70);

  LOBYTE(v22) = *(&v56 + 1) == 0;
  sub_1D22BD238(v55, &qword_1EC6D9A70);
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  v30 = v46;
  (*(v48 + 32))(v46, v54, v49);
  v31 = (v30 + *(v47 + 36));
  *v31 = KeyPath;
  v31[1] = sub_1D2402334;
  v31[2] = v29;
  if (qword_1EC6D7E58 != -1)
  {
    swift_once();
  }

  v32 = qword_1EC6D7E60;
  if (qword_1EC6D7E70 != -1)
  {
    swift_once();
  }

  v55[0] = v32;
  v55[1] = qword_1EC6D7E78;
  v56 = xmmword_1D2885D00;
  v57 = 0x3FC3333333333333;
  sub_1D2402228();
  sub_1D24020A0();
  v33 = v50;
  sub_1D28767B8();
  sub_1D22BD238(v30, &qword_1EC6DB0B8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0A8);
  v35 = v53;
  v36 = (v53 + *(v34 + 36));
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D38) + 28);
  v38 = *MEMORY[0x1E697DC10];
  v39 = sub_1D2874448();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  return (*(v51 + 32))(v35, v33, v52);
}

uint64_t sub_1D23F9954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ImageGenerationPerson();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for PeoplePickerSheetViewModifier();
  sub_1D22BD1D0(v5, v2, &qword_1EC6D8F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  sub_1D28774F8();
  sub_1D22BD238(v5, &qword_1EC6D8F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  sub_1D234B8A0();

  sub_1D2546CB4();
}

uint64_t sub_1D23F9AEC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PeoplePickerSheetViewModifier();
  v34 = *(v1 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28764E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeoplePickerView();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFF0);
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  v14 = sub_1D234B8A0();

  *(v10 + 2) = swift_getKeyPath();
  v10[24] = 0;
  v15 = v8[6];
  *&v10[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  swift_storeEnumTagMultiPayload();
  v16 = &v10[v8[7]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v36 = 0x402E000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980F20], v4);
  sub_1D22BFBB8();
  sub_1D2874748();
  *&v10[v8[10]] = 0x3FEB333333333333;
  *v10 = v14;
  *(v10 + 1) = 0;
  v17 = &v10[v8[8]];
  *v17 = 0;
  v17[8] = 1;
  sub_1D2875798();
  v18 = sub_1D240321C(&qword_1EC6D87E0, type metadata accessor for PeoplePickerView);
  sub_1D28769E8();

  sub_1D2401D78(v10, type metadata accessor for PeoplePickerView);
  v19 = v30;
  v35 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFF8);
  v36 = v8;
  v37 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1D22BB9D8(&qword_1EC6DB000, &qword_1EC6DAFF8);
  v20 = v31;
  v21 = v32;
  sub_1D2876F08();
  (*(v11 + 8))(v13, v20);
  v22 = v19;
  sub_1D2401680(v19, v3, type metadata accessor for PeoplePickerSheetViewModifier);
  v23 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v24 = swift_allocObject();
  sub_1D24019D0(v3, v24 + v23, type metadata accessor for PeoplePickerSheetViewModifier);
  v25 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFE8) + 36));
  *v25 = sub_1D2401DE0;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
  sub_1D2401680(v22, v3, type metadata accessor for PeoplePickerSheetViewModifier);
  v26 = swift_allocObject();
  sub_1D24019D0(v3, v26 + v23, type metadata accessor for PeoplePickerSheetViewModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFC8);
  v28 = (v21 + *(result + 36));
  *v28 = 0;
  v28[1] = 0;
  v28[2] = sub_1D2401DF8;
  v28[3] = v26;
  return result;
}

uint64_t sub_1D23FA094(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB050);
  MEMORY[0x1EEE9AC00](v2);
  v46 = v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB058);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB060);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = v38 - v8;
  v9 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB068);
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB070);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v38 - v18;
  if (*a1 == 1)
  {
    v20 = sub_1D2875BC8();
    v38[1] = v38;
    MEMORY[0x1EEE9AC00](v20);
    v42 = v19;
    v21 = v6;
    v38[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0A8);
    v39 = a1;
    sub_1D2402118();
    sub_1D28745C8();
    v22 = sub_1D22BB9D8(&qword_1EC6DB078, &qword_1EC6DB068);
    v23 = v41;
    MEMORY[0x1D389E720](v12, v10, v22);
    (*(v7 + 16))(v15, v23, v21);
    (*(v7 + 56))(v15, 0, 1, v21);
    v47 = v10;
    v48 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v15, v21, OpaqueTypeConformance2);
    sub_1D22BD238(v15, &qword_1EC6DB070);
    v25 = v21;
    v19 = v42;
    (*(v7 + 8))(v23, v25);
    v26 = v12;
    v27 = v39;
    (*(v40 + 8))(v26, v10);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6, v17);
    v28 = sub_1D22BB9D8(&qword_1EC6DB078, &qword_1EC6DB068);
    v47 = v10;
    v48 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v15, v6, v29);
    sub_1D22BD238(v15, &qword_1EC6DB070);
    v27 = a1;
  }

  v30 = sub_1D2875BD8();
  MEMORY[0x1EEE9AC00](v30);
  v38[-2] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB080);
  sub_1D2401E34();
  v31 = v43;
  sub_1D28745C8();
  v32 = *(v2 + 48);
  v33 = v46;
  sub_1D227D674(v19, v46);
  v34 = v44;
  v35 = v33 + v32;
  v36 = v45;
  (*(v44 + 16))(v35, v31, v45);
  sub_1D28759C8();
  (*(v34 + 8))(v31, v36);
  return sub_1D22BD238(v19, &qword_1EC6DB070);
}

uint64_t sub_1D23FA6E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  sub_1D234B8A0();

  sub_1D254A228();

  sub_1D2874338();

  sub_1D2874338();
  v3 = v10[0];
  sub_1D234B8A0();
  swift_getKeyPath();
  v10[0] = v3;
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  sub_1D22BD1D0(v3 + v4, v2, &qword_1EC6D8F80);
  sub_1D2547CB8(v2);

  sub_1D22BD238(v2, &qword_1EC6D8F80);
  sub_1D24CC110(v10);
  v5 = v11;
  if (!v11)
  {
    return sub_1D22BD238(v10, &qword_1EC6DAF80);
  }

  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9 = 3;
  (*(v6 + 8))(&v9, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_1D23FA94C()
{
  type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();

  sub_1D24CC110(v4);
  v0 = v5;
  if (!v5)
  {
    return sub_1D22BD238(v4, &qword_1EC6DAF80);
  }

  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v3 = 3;
  (*(v1 + 16))(&v3, v0, v1);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

double sub_1D23FAA2C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PeoplePickerSheetViewModifier();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  v11 = v24;
  swift_getKeyPath();
  v24 = v11;
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  swift_beginAccess();
  (*(v5 + 16))(v10, v11 + v12, v4);

  sub_1D2871FC8();
  v22 = MEMORY[0x1D389AA00](v10, v7);
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  v14 = v21;
  sub_1D2401680(v21, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeoplePickerSheetViewModifier);
  v15 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v16 = swift_allocObject();
  sub_1D24019D0(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PeoplePickerSheetViewModifier);
  sub_1D2401680(v14, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeoplePickerSheetViewModifier);
  v17 = swift_allocObject();
  sub_1D24019D0(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for PeoplePickerSheetViewModifier);
  sub_1D2401680(v14, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeoplePickerSheetViewModifier);
  v18 = swift_allocObject();
  sub_1D24019D0(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for PeoplePickerSheetViewModifier);
  *a1 = v22 & 1;
  *(a1 + 1) = *v25;
  *(a1 + 4) = *&v25[3];
  *(a1 + 8) = sub_1D24015D0;
  *(a1 + 16) = v16;
  *(a1 + 24) = sub_1D24015E8;
  *(a1 + 32) = v17;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = sub_1D2401604;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_1D23FADE8()
{
  type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  if (*(v2 + 26))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + 26) = 0;
  }
}

uint64_t sub_1D23FAF34(uint64_t a1, char a2)
{
  v4 = sub_1D2875628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeoplePickerSheetViewModifier();
  sub_1D22BD1D0(a1 + *(v8 + 68), &v13, &qword_1EC6DAFC0);
  if (v16 == 1)
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v9 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
LABEL_3:
      v10 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, v9);
      LOBYTE(v13) = a2;
      (*(v10 + 8))(&v13, v9, v10);
      return __swift_destroy_boxed_opaque_existential_0(&v17);
    }
  }

  else
  {
    sub_1D2878A28();
    v12 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_1D22BD238(&v17, &qword_1EC6DAF80);
}

uint64_t sub_1D23FB11C(uint64_t a1, char a2)
{
  v4 = sub_1D2875628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeoplePickerSheetViewModifier();
  sub_1D22BD1D0(a1 + *(v8 + 68), &v13, &qword_1EC6DAFC0);
  if (v16 == 1)
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v9 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
LABEL_3:
      v10 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, v9);
      LOBYTE(v13) = a2;
      (*(v10 + 16))(&v13, v9, v10);
      return __swift_destroy_boxed_opaque_existential_0(&v17);
    }
  }

  else
  {
    sub_1D2878A28();
    v12 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_1D22BD238(&v17, &qword_1EC6DAF80);
}

uint64_t sub_1D23FB304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[2] = a1;
  v3 = sub_1D2875EE8();
  v17[0] = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PeoplePickerSheetViewModifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v2 + *(v10 + 36);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v11) = *(v11 + 16);
  v17[7] = v12;
  v17[8] = v13;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  sub_1D2877518();
  sub_1D2401680(v2, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeoplePickerSheetViewModifier);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1D24019D0(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PeoplePickerSheetViewModifier);
  *v6 = sub_1D2877348();
  (*(v4 + 104))(v6, *MEMORY[0x1E697C8C0], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F18);
  sub_1D22BB9D8(&qword_1EC6D8F20, &qword_1EC6D8F10);
  sub_1D22BAB44();
  sub_1D2876848();

  return (*(v4 + 8))(v6, v17[0]);
}

uint64_t sub_1D23FB5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v181);
  v162 = &v146 - v3;
  v4 = type metadata accessor for PeoplePickerSheetViewModifier();
  v194 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v192 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v5;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v187);
  v157 = &v146 - v6;
  v174 = sub_1D28762C8();
  v150 = *(v174 - 1);
  MEMORY[0x1EEE9AC00](v174);
  v149 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2875628();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for PresentationContentConfiguration();
  MEMORY[0x1EEE9AC00](v146);
  v13 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8FA0);
  MEMORY[0x1EEE9AC00](v151);
  v191 = &v146 - v14;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F88);
  MEMORY[0x1EEE9AC00](v177);
  OpaqueTypeConformance2 = &v146 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F78);
  v153 = *(v16 - 8);
  v154 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v146 - v17;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F68);
  v156 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v155 = &v146 - v18;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F60);
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v179 = &v146 - v19;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F58);
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v159 = &v146 - v20;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F50);
  v164 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v146 - v21;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F40);
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v183 = &v146 - v22;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F30);
  v169 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v186 = &v146 - v23;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFA0);
  v170 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v168 = &v146 - v24;
  v25 = a1;
  v26 = a1 + *(v4 + 52);
  v27 = *v26;
  v28 = *(v26 + 8);
  LODWORD(v26) = *(v26 + 9);
  v195 = v25;
  if (v26 == 1)
  {
    v147 = v28;
    v148 = v27;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v29 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2401268(v27, v28, 0);
    (*(v9 + 8))(v11, v8);
    v148 = v231;
    v147 = v232;
    v25 = v195;
  }

  v184 = v11;
  v185 = v9;
  v30 = *(v4 + 36);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  v189 = v30;
  sub_1D2874338();
  v31 = v231;
  swift_getKeyPath();
  v231 = v31;
  v175 = sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  LODWORD(v30) = *(v31 + 25);

  if (v30 == 1)
  {
    v32 = *(v4 + 60);
  }

  else
  {
    v32 = *(v4 + 40);
  }

  v33 = v25 + v32;
  v34 = *v33;
  if (*(v33 + 8) == 1)
  {
    sub_1D2870F68();
    if (v34)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_1D2870F78();
  sub_1D2878A28();
  v37 = sub_1D28762E8();
  sub_1D2873BE8();

  v38 = v184;
  sub_1D2875618();
  swift_getAtKeyPath();
  sub_1D240124C(v34, 0);
  (*(v185 + 8))(v38, v8);
  v34 = v231;
  if (!v231)
  {
LABEL_9:
    v34 = *(v25 + *(v4 + 64));
    sub_1D2870F68();
  }

LABEL_10:
  v35 = v25 + *(v4 + 56);
  v36 = *v35;
  LODWORD(v35) = *(v35 + 8);
  v190 = v4;
  v166 = v8;
  if (v35 == 1)
  {
    v249 = v36;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v39 = sub_1D28762E8();
    sub_1D2873BE8();

    v40 = v184;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v36, 0);
    (*(v185 + 8))(v40, v8);
    LOBYTE(v36) = v249;
  }

  sub_1D2874338();
  v41 = sub_1D234B8A0();

  swift_getKeyPath();
  v231 = v41;
  sub_1D240321C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v42 = *(v41 + 65);

  if (qword_1EC6D80A0 != -1)
  {
    swift_once();
  }

  v43 = v146;
  v44 = __swift_project_value_buffer(v146, qword_1EC6D80A8);
  sub_1D2401680(v44, v13, type metadata accessor for PresentationContentConfiguration);
  *v13 = v148;
  v13[8] = v147 & 1;

  *(v13 + 2) = v34;
  v13[v43[8]] = v36;
  v13[v43[13]] = v42;
  v45 = v149;
  sub_1D28762B8();
  (*(v150 + 40))(&v13[v43[6]], v45, v174);
  v46 = v43[7];
  sub_1D22BD238(&v13[v46], &qword_1EC6DAFA8);
  v47 = sub_1D2875DE8();
  (*(*(v47 - 8) + 56))(&v13[v46], 1, 1, v47);
  v48 = v151;
  v49 = *(v151 + 10);
  KeyPath = swift_getKeyPath();
  v51 = v191;
  *&v191[v49] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0);
  swift_storeEnumTagMultiPayload();
  v52 = v51 + *(v48 + 11);
  v53 = swift_getKeyPath();
  v212 = 0;
  *v52 = v53;
  *(v52 + 89) = 0;
  sub_1D2401680(v13, v51, type metadata accessor for PresentationContentConfiguration);
  sub_1D23FD2F8(v25, v51 + *(v48 + 9));
  sub_1D2401D78(v13, type metadata accessor for PresentationContentConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  sub_1D2874768();
  v54 = v231;
  v174 = v231;
  sub_1D2874768();
  v55 = v231;
  v151 = v231;
  sub_1D2874768();
  v56 = v231;
  v150 = v231;
  v223 = 0;
  v221 = 0;
  v219 = 0;
  v217 = 0;
  v215 = 0;
  v213 = 0;
  v57 = swift_getKeyPath();
  LOBYTE(v48) = v223;
  LOBYTE(v52) = v221;
  v58 = v219;
  *&v224 = v57;
  *(&v224 + 1) = v54;
  LOBYTE(v225) = v223;
  *(&v225 + 1) = *v222;
  DWORD1(v225) = *&v222[3];
  *(&v225 + 1) = v55;
  LOBYTE(v226) = v221;
  DWORD1(v226) = *&v220[3];
  *(&v226 + 1) = *v220;
  *(&v226 + 1) = 0x4082C00000000000;
  LOBYTE(v227) = v219;
  DWORD1(v227) = *&v218[3];
  *(&v227 + 1) = *v218;
  *(&v227 + 1) = 0x4074A00000000000;
  LOBYTE(v228) = v217;
  LOBYTE(v55) = v217;
  *(&v228 + 1) = *v216;
  DWORD1(v228) = *&v216[3];
  *(&v228 + 1) = v56;
  LOBYTE(v229) = v215;
  LOBYTE(v56) = v215;
  DWORD1(v229) = *&v214[3];
  *(&v229 + 1) = *v214;
  *(&v229 + 1) = 0x4079000000000000;
  v230 = v213;
  LOBYTE(v54) = v213;
  v59 = v51;
  v60 = OpaqueTypeConformance2;
  sub_1D227D560(v59, OpaqueTypeConformance2);
  v61 = v60 + *(v177 + 9);
  v62 = v227;
  v63 = v229;
  *(v61 + 64) = v228;
  *(v61 + 80) = v63;
  *(v61 + 96) = v230;
  v64 = v225;
  *v61 = v224;
  *(v61 + 16) = v64;
  *(v61 + 32) = v226;
  *(v61 + 48) = v62;
  v231 = v57;
  v232 = v174;
  v233 = v48;
  *&v234[3] = *&v222[3];
  *v234 = *v222;
  v235 = v151;
  v236 = v52;
  *&v237[3] = *&v220[3];
  *v237 = *v220;
  v238 = 0x4082C00000000000;
  v239 = v58;
  *v240 = *v218;
  *&v240[3] = *&v218[3];
  v241 = 0x4074A00000000000;
  v242 = v55;
  *v243 = *v216;
  *&v243[3] = *&v216[3];
  v244 = v150;
  v245 = v56;
  *v246 = *v214;
  *&v246[3] = *&v214[3];
  v247 = 0x4079000000000000;
  v248 = v54;
  sub_1D22BD1D0(&v224, &v208, &qword_1EC6D8ED8);
  sub_1D22BD238(&v231, &qword_1EC6D8ED8);
  sub_1D2874338();
  v65 = v208;
  swift_getKeyPath();
  v208 = v65;
  sub_1D28719E8();

  v66 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  v67 = v157;
  sub_1D22BD1D0(v65 + v66, v157, &qword_1EC6D8F80);

  v174 = type metadata accessor for PeoplePickerSheetViewModifier;
  v68 = v192;
  sub_1D2401680(v195, v192, type metadata accessor for PeoplePickerSheetViewModifier);
  v69 = *(v194 + 80);
  v193 += (v69 + 16) & ~v69;
  v194 = (v69 + 16) & ~v69;
  v70 = swift_allocObject();
  v151 = type metadata accessor for PeoplePickerSheetViewModifier;
  sub_1D24019D0(v68, v70 + ((v69 + 16) & ~v69), type metadata accessor for PeoplePickerSheetViewModifier);
  v71 = sub_1D22BAECC();
  v150 = sub_1D22BAFB0();
  v72 = v152;
  v73 = OpaqueTypeConformance2;
  v74 = v177;
  sub_1D2876F48();

  sub_1D22BD238(v67, &qword_1EC6D8F80);
  sub_1D22BD238(v73, &qword_1EC6D8F88);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  MEMORY[0x1D389FF60](v75);
  v76 = v192;
  sub_1D2401680(v195, v192, v174);
  v77 = swift_allocObject();
  v78 = v76;
  sub_1D24019D0(v76, v77 + v194, type metadata accessor for PeoplePickerSheetViewModifier);
  v208 = v74;
  v209 = v187;
  v210 = v71;
  v79 = v150;
  v211 = v150;
  v177 = MEMORY[0x1E6981440];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v154;
  v81 = v155;
  v82 = v79;
  sub_1D2876F48();

  sub_1D22BD238(v67, &qword_1EC6D8F80);
  (*(v153 + 8))(v72, v80);
  sub_1D2874338();
  v83 = v208;
  swift_getKeyPath();
  v208 = v83;
  sub_1D28719E8();

  v84 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__shouldDismissPeoplePickerTrigger;
  swift_beginAccess();
  v85 = v162;
  sub_1D22BD1D0(v83 + v84, v162, &qword_1EC6D8F70);

  sub_1D2401680(v195, v78, v174);
  v191 = v69;
  v86 = swift_allocObject();
  sub_1D24019D0(v78, v86 + v194, v151);
  v208 = v80;
  v209 = v187;
  v210 = OpaqueTypeConformance2;
  v87 = v195;
  v211 = v82;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = sub_1D22BB064();
  v90 = v178;
  sub_1D2876F48();

  sub_1D22BD238(v85, &qword_1EC6D8F70);
  (*(v156 + 8))(v81, v90);
  v91 = v87 + *(v190 + 11);
  v92 = *v91;
  if (*(v91 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v93 = sub_1D28762E8();
    sub_1D2873BE8();

    v94 = v184;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v92, 0);
    (*(v185 + 8))(v94, v166);
    LOBYTE(v92) = v208;
  }

  LOBYTE(v205) = v92 & 1;
  v187 = type metadata accessor for PeoplePickerSheetViewModifier;
  v95 = v192;
  sub_1D2401680(v87, v192, type metadata accessor for PeoplePickerSheetViewModifier);
  v96 = swift_allocObject();
  v177 = type metadata accessor for PeoplePickerSheetViewModifier;
  sub_1D24019D0(v95, v96 + v194, type metadata accessor for PeoplePickerSheetViewModifier);
  v208 = v178;
  v209 = v181;
  v210 = v88;
  v211 = v89;
  v181 = MEMORY[0x1E6981440];
  v97 = swift_getOpaqueTypeConformance2();
  v98 = v159;
  v99 = v160;
  v100 = v179;
  sub_1D2876F48();

  (*(v158 + 8))(v100, v99);
  LOBYTE(v205) = *(v195 + 1);
  sub_1D2401680(v195, v95, v187);
  v101 = swift_allocObject();
  v102 = v194;
  sub_1D24019D0(v95, v101 + v194, type metadata accessor for PeoplePickerSheetViewModifier);
  v208 = v99;
  v103 = MEMORY[0x1E69E6370];
  v209 = MEMORY[0x1E69E6370];
  v210 = v97;
  v211 = MEMORY[0x1E69E6388];
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v163;
  sub_1D2876F48();

  (*(v161 + 8))(v98, v105);
  v106 = v190;
  v107 = v195;
  sub_1D2401680(v195, v95, v187);
  v108 = swift_allocObject();
  sub_1D24019D0(v95, v108 + v102, v177);
  v109 = sub_1D2872008();
  v208 = v105;
  v209 = v103;
  v210 = v104;
  v211 = MEMORY[0x1E69E6388];
  v110 = swift_getOpaqueTypeConformance2();
  v111 = sub_1D240321C(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v112 = v107;
  v113 = v182;
  v181 = v109;
  v114 = v110;
  v179 = v111;
  v115 = v180;
  sub_1D2876F48();

  (*(v164 + 8))(v115, v113);
  v116 = v112 + *(v106 + 12);
  v117 = *v116;
  v118 = *(v116 + 8);
  if (*(v116 + 16) == 1)
  {
    sub_1D2870F68();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v119 = sub_1D28762E8();
    sub_1D2873BE8();

    v120 = v184;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2401258(v117, v118, 0);
    (*(v185 + 8))(v120, v166);
    v117 = v208;
    v118 = v209;
  }

  v205 = v117;
  v206 = v118;
  v190 = type metadata accessor for PeoplePickerSheetViewModifier;
  v121 = v195;
  v122 = v192;
  sub_1D2401680(v195, v192, type metadata accessor for PeoplePickerSheetViewModifier);
  v123 = swift_allocObject();
  v187 = type metadata accessor for PeoplePickerSheetViewModifier;
  sub_1D24019D0(v122, v123 + v194, type metadata accessor for PeoplePickerSheetViewModifier);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48);
  v208 = v182;
  v209 = v181;
  v210 = v114;
  v211 = v179;
  v185 = MEMORY[0x1E6981440];
  v182 = swift_getOpaqueTypeConformance2();
  v184 = sub_1D22BB118();
  v124 = v167;
  v125 = v183;
  sub_1D2876F48();

  (*(v165 + 8))(v125, v124);
  v126 = v121;
  sub_1D2874358();
  v127 = v208;
  v128 = v209;
  v129 = v210;
  swift_getKeyPath();
  v205 = v127;
  v206 = v128;
  v207 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFB0);
  sub_1D2877508();

  v130 = v202;
  v131 = v203;
  LOBYTE(v125) = v204;

  swift_getKeyPath();
  v199 = v130;
  v200 = v131;
  v201 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFB8);
  sub_1D2877508();

  v188 = v196;
  v183 = v197;
  LODWORD(v189) = v198;

  v132 = v192;
  sub_1D2401680(v126, v192, v190);
  v133 = swift_allocObject();
  sub_1D24019D0(v132, v133 + v194, v187);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F38);
  v208 = v124;
  v209 = v180;
  v210 = v182;
  v211 = v184;
  swift_getOpaqueTypeConformance2();
  v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FC8);
  v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8FD0);
  v136 = sub_1D240128C(&qword_1EC6D8FD8, &qword_1EC6D8FC8, &unk_1D287CCE0, sub_1D22BB220);
  v137 = sub_1D240128C(&qword_1EC6D9010, &qword_1EC6D8FD0, &unk_1D287CCE8, sub_1D22BB440);
  v208 = v134;
  v209 = v135;
  v210 = v136;
  v211 = v137;
  swift_getOpaqueTypeConformance2();
  v138 = v168;
  v139 = v171;
  v140 = v186;
  sub_1D2876E48();

  (*(v169 + 8))(v140, v139);
  v141 = v192;
  sub_1D2401680(v195, v192, v190);
  v142 = swift_allocObject();
  sub_1D24019D0(v141, v142 + v194, v187);
  v143 = v173;
  (*(v170 + 32))(v173, v138, v172);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F18);
  v145 = (v143 + *(result + 36));
  *v145 = sub_1D2401580;
  v145[1] = v142;
  v145[2] = 0;
  v145[3] = 0;
  return result;
}

uint64_t sub_1D23FD2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for PeoplePickerSheetViewModifier();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFC8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v16 - v5;
  sub_1D23F9AEC(&v16 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874358();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  swift_getKeyPath();
  v26 = v7;
  v27 = v8;
  v28 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFB0);
  sub_1D2877508();

  v11 = v23;
  v10 = v24;
  v12 = v25;

  swift_getKeyPath();
  v20 = v11;
  v21 = v10;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFB8);
  sub_1D2877508();

  sub_1D2401680(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeoplePickerSheetViewModifier);
  v13 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v14 = swift_allocObject();
  sub_1D24019D0(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PeoplePickerSheetViewModifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFD0);
  sub_1D240128C(&qword_1EC6DAFD8, &qword_1EC6DAFC8, &unk_1D2886220, sub_1D24017D8);
  sub_1D22BB9D8(&qword_1EC6DB008, &qword_1EC6DAFD0);
  sub_1D2876E48();

  return sub_1D22BD238(v6, &qword_1EC6DAFC8);
}

uint64_t sub_1D23FD668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v77 = sub_1D28762C8();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D2875E18();
  v82 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v68 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v70);
  v76 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v68 - v12;
  v13 = sub_1D2875628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PresentationContentConfiguration();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v68 - v21;
  v22 = type metadata accessor for PeoplePickerSheetViewModifier();
  v23 = v22[13];
  v83 = a1;
  v24 = a1 + v23;
  v25 = *v24;
  v26 = *(v24 + 8);
  LODWORD(v24) = *(v24 + 9);
  v72 = v13;
  if (v24 == 1)
  {
    v73 = v26;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v71 = v10;
    v27 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2401268(v25, v26, 0);
    v10 = v71;
    (*(v14 + 8))(v16, v13);
    v25 = v84;
    v73 = v85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  v28 = v84;
  swift_getKeyPath();
  v84 = v28;
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v29 = *(v28 + 25);

  if (v29 == 1)
  {
    v30 = v22[15];
  }

  else
  {
    v30 = v22[10];
  }

  v31 = v83 + v30;
  v32 = *v31;
  if (*(v31 + 8) == 1)
  {
    sub_1D2870F68();
    if (v32)
    {
LABEL_9:
      v71 = v32;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v33 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D240124C(v32, 0);
    (*(v14 + 8))(v16, v72);
    v32 = v84;
    if (v84)
    {
      goto LABEL_9;
    }
  }

  v71 = *(v83 + v22[16]);
  sub_1D2870F68();
LABEL_12:
  v34 = v83 + v22[14];
  if ((*(v34 + 8) & 1) == 0)
  {
    v35 = *v34;
    sub_1D2870F78();
    sub_1D2878A28();
    v36 = v14;
    v37 = v25;
    v38 = sub_1D28762E8();
    sub_1D2873BE8();

    v25 = v37;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v35, 0);
    (*(v36 + 8))(v16, v72);
  }

  v39 = v81;
  sub_1D24CC0C4(v81);
  if (qword_1EC6D80A0 != -1)
  {
    swift_once();
  }

  v72 = v17;
  v40 = __swift_project_value_buffer(v17, qword_1EC6D80A8);
  sub_1D2401680(v40, v19, type metadata accessor for PresentationContentConfiguration);
  v41 = v82;
  v42 = v78;
  (*(v82 + 104))(v10, *MEMORY[0x1E697FF38], v78);
  (*(v41 + 56))(v10, 0, 1, v42);
  v43 = *(v70 + 48);
  v44 = v10;
  v45 = v76;
  sub_1D22BD1D0(v39, v76, &qword_1EC6D99B8);
  sub_1D22BD1D0(v44, v45 + v43, &qword_1EC6D99B8);
  v46 = *(v41 + 48);
  if (v46(v45, 1, v42) == 1)
  {
    sub_1D22BD238(v44, &qword_1EC6D99B8);
    v47 = v46(v45 + v43, 1, v42);
    v48 = v71;
    v49 = v72;
    if (v47 == 1)
    {
      sub_1D22BD238(v45, &qword_1EC6D99B8);
LABEL_24:
      sub_1D2870F68();
      v51 = v48;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v50 = v69;
  sub_1D22BD1D0(v45, v69, &qword_1EC6D99B8);
  if (v46(v45 + v43, 1, v42) == 1)
  {
    sub_1D22BD238(v44, &qword_1EC6D99B8);
    (*(v82 + 8))(v50, v42);
    v49 = v72;
LABEL_21:
    sub_1D22BD238(v45, &qword_1EC6E0DB0);
    goto LABEL_22;
  }

  v70 = v25;
  v52 = v50;
  v53 = v82;
  v54 = v45 + v43;
  v55 = v68;
  (*(v82 + 32))(v68, v54, v42);
  sub_1D240321C(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  v56 = sub_1D2877F98();
  v57 = *(v53 + 8);
  v57(v55, v42);
  sub_1D22BD238(v44, &qword_1EC6D99B8);
  v58 = v52;
  v25 = v70;
  v57(v58, v42);
  v39 = v81;
  sub_1D22BD238(v45, &qword_1EC6D99B8);
  v48 = v71;
  v49 = v72;
  if (v56)
  {
    goto LABEL_24;
  }

LABEL_22:
  v51 = 0;
LABEL_25:

  *(v19 + 2) = v51;
  *v19 = v25;
  v19[8] = v73 & 1;
  v59 = v80;
  sub_1D28762B8();
  (*(v75 + 40))(&v19[v49[6]], v59, v77);
  v19[v49[13]] = 1;
  sub_1D2401960(v39, &v19[v49[10]]);
  v60 = v79;
  sub_1D24019D0(v19, v79, type metadata accessor for PresentationContentConfiguration);

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFD0);
  v62 = v61[10];
  KeyPath = swift_getKeyPath();
  v64 = v74;
  *(v74 + v62) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0);
  swift_storeEnumTagMultiPayload();
  v65 = v64 + v61[11];
  v66 = swift_getKeyPath();
  LOBYTE(v84) = 0;
  *v65 = v66;
  *(v65 + 89) = 0;
  sub_1D2401680(v60, v64, type metadata accessor for PresentationContentConfiguration);
  sub_1D23FE114(v83, v64 + v61[9]);
  return sub_1D2401D78(v60, type metadata accessor for PresentationContentConfiguration);
}

uint64_t sub_1D23FE114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PeoplePickerSheetViewModifier();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = v5;
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB010);
  MEMORY[0x1EEE9AC00](v54);
  v7 = (&v44 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB018);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v44 - v10;
  v11 = *(v4 + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  v51 = a1;
  v50 = v11;
  sub_1D2874338();
  v13 = *(*&v61[0] + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_characterEditingViewModel);
  sub_1D2870F78();

  v14 = 1;
  if (v13)
  {
    v15 = type metadata accessor for CharacterEditingView();
    v48 = a2;
    v16 = v15;
    v47 = v8;
    v17 = *(v15 + 20);
    *(v7 + v17) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
    swift_storeEnumTagMultiPayload();
    v18 = v7 + v16[6];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    v19 = v7 + v16[7];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = v7 + v16[8];
    v46 = v13;
    sub_1D2870F78();
    sub_1D261ECDC(v61);
    v21 = v61[7];
    *(v20 + 6) = v61[6];
    *(v20 + 7) = v21;
    *(v20 + 16) = v62;
    v22 = v61[3];
    *(v20 + 2) = v61[2];
    *(v20 + 3) = v22;
    v23 = v61[5];
    *(v20 + 4) = v61[4];
    *(v20 + 5) = v23;
    v24 = v61[1];
    *v20 = v61[0];
    *(v20 + 1) = v24;
    v56 = v13;
    type metadata accessor for CharacterEditingViewModel();
    sub_1D28772F8();
    v25 = v59;
    *v7 = v58;
    v7[1] = v25;
    KeyPath = swift_getKeyPath();
    v27 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C70) + 36));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C78);
    v29 = v51;
    sub_1D24CC0C4(v27 + *(v28 + 28));
    *v27 = KeyPath;
    v30 = v52;
    v44 = v12;
    v45 = type metadata accessor for PeoplePickerSheetViewModifier;
    sub_1D2401680(v29, v52, type metadata accessor for PeoplePickerSheetViewModifier);
    v31 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v32 = swift_allocObject();
    v49 = type metadata accessor for PeoplePickerSheetViewModifier;
    sub_1D24019D0(v30, v32 + v31, type metadata accessor for PeoplePickerSheetViewModifier);
    v33 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB020) + 36));
    *v33 = sub_1D2401A38;
    v33[1] = v32;
    v33[2] = 0;
    v33[3] = 0;
    sub_1D2401680(v29, v30, type metadata accessor for PeoplePickerSheetViewModifier);
    v34 = swift_allocObject();
    sub_1D24019D0(v30, v34 + v31, type metadata accessor for PeoplePickerSheetViewModifier);
    v35 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB028) + 36));
    *v35 = 0;
    v35[1] = 0;
    v35[2] = sub_1D2401A54;
    v35[3] = v34;
    v36 = swift_getKeyPath();
    v37 = v7 + *(v54 + 36);
    *v37 = v36;
    v37[8] = 1;
    sub_1D2874358();
    v50 = v9;
    v39 = v58;
    v38 = v59;
    v40 = v60;
    swift_getKeyPath();
    v58 = v39;
    v59 = v38;
    v60 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFB0);
    sub_1D2877508();

    LODWORD(v44) = v57;

    sub_1D2401680(v29, v30, v45);
    v41 = swift_allocObject();
    sub_1D24019D0(v30, v41 + v31, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8FD0);
    sub_1D2401B7C();
    a2 = v48;
    sub_1D240128C(&qword_1EC6D9010, &qword_1EC6D8FD0, &unk_1D287CCE8, sub_1D22BB440);
    v9 = v50;
    v8 = v47;
    v42 = v53;
    sub_1D2876E48();

    sub_1D22BD238(v7, &qword_1EC6DB010);
    (*(v9 + 32))(a2, v42, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_1D23FE828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = type metadata accessor for ImageGenerationPerson();
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v27 = v26;
  sub_1D22BD1D0(a2, v20, &qword_1EC6D8F80);
  v28 = *(v27 + 48);
  if (v28(v20, 1, v21) == 1)
  {
    return sub_1D22BD238(v20, &qword_1EC6D8F80);
  }

  sub_1D24019D0(v20, v25, type metadata accessor for ImageGenerationPerson);
  v30 = *(type metadata accessor for PeoplePickerSheetViewModifier() + 32);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  v43 = v30;
  MEMORY[0x1D389FF60]();
  v45 = v25;
  sub_1D2401680(v25, v14, type metadata accessor for ImageGenerationPerson);
  v31 = *(v27 + 56);
  v44 = v27 + 56;
  v41 = v31;
  v31(v14, 0, 1, v21);
  v32 = *(v50 + 48);
  sub_1D22BD1D0(v17, v5, &qword_1EC6D8F80);
  sub_1D22BD1D0(v14, &v5[v32], &qword_1EC6D8F80);
  if (v28(v5, 1, v21) != 1)
  {
    v36 = v47;
    sub_1D22BD1D0(v5, v47, &qword_1EC6D8F80);
    if (v28(&v5[v32], 1, v21) != 1)
    {
      v38 = v46;
      sub_1D24019D0(&v5[v32], v46, type metadata accessor for ImageGenerationPerson);
      v39 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v36, v38);
      sub_1D2401D78(v38, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v14, &qword_1EC6D8F80);
      sub_1D22BD238(v17, &qword_1EC6D8F80);
      sub_1D2401D78(v36, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v5, &qword_1EC6D8F80);
      v34 = v45;
      if (v39)
      {
        return sub_1D2401D78(v34, type metadata accessor for ImageGenerationPerson);
      }

      goto LABEL_9;
    }

    sub_1D22BD238(v14, &qword_1EC6D8F80);
    sub_1D22BD238(v17, &qword_1EC6D8F80);
    sub_1D2401D78(v36, type metadata accessor for ImageGenerationPerson);
    v34 = v45;
LABEL_8:
    sub_1D22BD238(v5, &qword_1EC6DA348);
LABEL_9:
    v37 = v48;
    sub_1D2401680(v34, v48, type metadata accessor for ImageGenerationPerson);
    v41(v37, 0, 1, v21);
    sub_1D22BD1D0(v37, v49, &qword_1EC6D8F80);
    sub_1D28774F8();
    v35 = v37;
    goto LABEL_10;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F80);
  sub_1D22BD238(v17, &qword_1EC6D8F80);
  v33 = v28(&v5[v32], 1, v21);
  v34 = v45;
  if (v33 != 1)
  {
    goto LABEL_8;
  }

  v35 = v5;
LABEL_10:
  sub_1D22BD238(v35, &qword_1EC6D8F80);
  return sub_1D2401D78(v34, type metadata accessor for ImageGenerationPerson);
}

uint64_t sub_1D23FEE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v4 = type metadata accessor for ImageGenerationPerson();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = *(type metadata accessor for PeoplePickerSheetViewModifier() + 36);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  v36 = a3;
  v33 = v19;
  v34 = v18;
  sub_1D2874338();
  v20 = v38;
  swift_getKeyPath();
  v38 = v20;
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();
  v21 = v37;

  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__selectedPerson;
  swift_beginAccess();
  sub_1D22BD1D0(v20 + v22, v17, &qword_1EC6D8F80);

  v23 = *(v8 + 56);
  sub_1D22BD1D0(v21, v10, &qword_1EC6D8F80);
  sub_1D22BD1D0(v17, &v10[v23], &qword_1EC6D8F80);
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D8F80);
    if (v24(&v10[v23], 1, v4) == 1)
    {
      return sub_1D22BD238(v10, &qword_1EC6D8F80);
    }

    goto LABEL_6;
  }

  v26 = v32;
  sub_1D22BD1D0(v10, v32, &qword_1EC6D8F80);
  if (v24(&v10[v23], 1, v4) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D8F80);
    sub_1D2401D78(v26, type metadata accessor for ImageGenerationPerson);
LABEL_6:
    sub_1D22BD238(v10, &qword_1EC6DA348);
LABEL_7:
    sub_1D2874338();
    v27 = v35;
    sub_1D22BD1D0(v21, v35, &qword_1EC6D8F80);
    sub_1D234B684(v27);
  }

  v28 = v31;
  sub_1D24019D0(&v10[v23], v31, type metadata accessor for ImageGenerationPerson);
  v29 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v26, v28);
  sub_1D2401D78(v28, type metadata accessor for ImageGenerationPerson);
  sub_1D22BD238(v17, &qword_1EC6D8F80);
  sub_1D2401D78(v26, type metadata accessor for ImageGenerationPerson);
  result = sub_1D22BD238(v10, &qword_1EC6D8F80);
  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D23FF2D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2871818();
  result = (*(*(v3 - 8) + 48))(a2, 1, v3);
  if (result != 1)
  {
    type metadata accessor for PeoplePickerSheetViewModifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
    return sub_1D28774F8();
  }

  return result;
}

uint64_t sub_1D23FF38C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a2;
  type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  swift_getKeyPath();
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v7 = *(v10 + *a5);

  if (v6 != v7)
  {
    sub_1D2874338();
    if (v6 == *(v10 + *a5))
    {
      *(v10 + *a5) = v6;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D28719D8();
    }
  }

  return result;
}

uint64_t sub_1D23FF550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D2872008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  v13[1] = a3;
  sub_1D2874338();
  v9 = v14;
  swift_getKeyPath();
  v14 = v9;
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__preferredConditioningStyle;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v11(v8, v9 + v10, v5);

  sub_1D240321C(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  LOBYTE(v10) = sub_1D2877F98();
  result = (*(v6 + 8))(v8, v5);
  if ((v10 & 1) == 0)
  {
    sub_1D2874338();
    v11(v8, a2, v5);
    sub_1D234B404(v8);
  }

  return result;
}

uint64_t sub_1D23FF7A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1D2875628();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v8 = a2[1];
  v10 = type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  v11 = v23;
  swift_getKeyPath();
  v23 = v11;
  sub_1D240321C(&qword_1EC6DA3D8, type metadata accessor for PeoplePickerInternalCoordinator);
  sub_1D28719E8();

  v13 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName);
  v12 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator__clientName + 8);
  sub_1D2870F68();

  if (!v12)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!v8)
  {

LABEL_12:
    sub_1D2874338();
    v17 = a3 + *(v10 + 48);
    v18 = *v17;
    v19 = *(v17 + 8);
    if (*(v17 + 16) == 1)
    {
      sub_1D2870F68();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v20 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2401258(v18, v19, 0);
      (*(v21 + 8))(v7, v22);
      v18 = v23;
      v19 = v24;
    }

    sub_1D234B100(v18, v19);
  }

  if (v13 == v9 && v12 == v8)
  {
  }

  v16 = sub_1D2879618();

  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1D23FFA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for PeoplePickerSheetViewModifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19 = *(v6 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  v22 = *(v29 + OBJC_IVAR____TtC23ImagePlaygroundInternal31PeoplePickerInternalCoordinator_facePickerCarouselViewModel);
  v7 = v22;
  sub_1D2870F78();

  v17 = type metadata accessor for PeoplePickerSheetViewModifier;
  sub_1D2401680(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeoplePickerSheetViewModifier);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v21 = v9;
  v16 = type metadata accessor for PeoplePickerSheetViewModifier;
  sub_1D24019D0(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PeoplePickerSheetViewModifier);
  sub_1D2401680(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeoplePickerSheetViewModifier);
  v10 = swift_allocObject();
  v20 = v10;
  sub_1D24019D0(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v8, type metadata accessor for PeoplePickerSheetViewModifier);
  v29 = v7;
  v30 = sub_1D2401598;
  v31 = v9;
  v32 = 0u;
  v33 = 0u;
  v34 = sub_1D24015B4;
  v35 = v10;
  sub_1D2874358();
  v11 = v26;
  v12 = v27;
  v13 = v28;
  swift_getKeyPath();
  v26 = v11;
  v27 = v12;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFB0);
  sub_1D2877508();

  v18 = v24;
  LODWORD(v19) = v25;

  sub_1D2401680(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v14 = swift_allocObject();
  sub_1D24019D0(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v8, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8FD0);
  sub_1D240128C(&qword_1EC6D8FD8, &qword_1EC6D8FC8, &unk_1D287CCE0, sub_1D22BB220);
  sub_1D240128C(&qword_1EC6D9010, &qword_1EC6D8FD0, &unk_1D287CCE8, sub_1D22BB440);
  sub_1D2876E48();
}

uint64_t sub_1D23FFE48()
{
  type metadata accessor for PeoplePickerSheetViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  sub_1D2874338();
  sub_1D234F048();
}

double sub_1D23FFEB0@<D0>(_OWORD *a1@<X8>)
{
  sub_1D24016E8();
  sub_1D2875638();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = *v7;
  *(a1 + 73) = *&v7[9];
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D23FFF7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D240321C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1D240004C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D240321C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_1D240011C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28755A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D2400188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF88);
    v3 = sub_1D2879118();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D28797D8();
      sub_1D2870F68();
      sub_1D2877F38();
      result = sub_1D2879828();
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
          result = sub_1D2879618();
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

uint64_t sub_1D24002F0(uint64_t a1)
{
  v2 = sub_1D2872818();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0E8);
    v9 = sub_1D2879118();
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
      sub_1D240321C(&qword_1EC6DA220, MEMORY[0x1E69A1168]);
      v16 = sub_1D2877EF8();
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
          sub_1D240321C(&qword_1EC6DA228, MEMORY[0x1E69A1168]);
          v23 = sub_1D2877F98();
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

uint64_t sub_1D2400610(uint64_t a1)
{
  v2 = sub_1D2875808();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB108);
    v9 = sub_1D2879118();
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
      sub_1D240321C(&qword_1ED89D6A8, MEMORY[0x1E697C4F8]);
      v16 = sub_1D2877EF8();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D240321C(&qword_1EC6D7910, MEMORY[0x1E697C4F8]);
          v23 = sub_1D2877F98();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t objectdestroyTm_3()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0) - 8);
  v6 = (v4 + v3 + *(*v5 + 80) + 1) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6 + v5[10];
  v8 = type metadata accessor for ImageGenerationPerson();
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
    if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
    {
      v10 = *(v9 + 20);
      v11 = type metadata accessor for ImageGenerationPerson.SkinTone();
      if (!(*(*(v11 - 8) + 48))(v7 + v10, 1, v11))
      {
        v12 = sub_1D28737A8();
        (*(*(v12 - 8) + 8))(v7 + v10, v12);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D2400C0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D2872008() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0) - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v5);
  v11 = *(v1 + v8);
  v12 = *(v1 + v9);

  return sub_1D23F83D0(v1 + v4, v10, v1 + v7, v11, v12, v1 + ((v9 + 11) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyShyAA18PresentationDetentVGSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1D2874F68();
  sub_1D22BB9D8(a4, a2);
  return swift_getWitnessTable();
}

void sub_1D2400E0C()
{
  sub_1D2872008();
  if (v0 <= 0x3F)
  {
    sub_1D240117C(319, &qword_1ED89D080, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1D24011CC(319, &qword_1EC6DA308, &qword_1EC6D8F80, &unk_1D287F3C0, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1D2401124();
        if (v3 <= 0x3F)
        {
          sub_1D24011CC(319, &qword_1EC6DAF48, &qword_1EC6DAF50, &unk_1D2885F08, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D240117C(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1D24011CC(319, &qword_1EC6DAF58, &qword_1EC6D8F48, &unk_1D287CC90, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1D24011CC(319, &qword_1EC6DAF60, &qword_1EC6DAF68, &unk_1D2885F18, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1D240117C(319, &qword_1EC6DAF70, MEMORY[0x1E697DB50], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D22EAFA4();
                    if (v9 <= 0x3F)
                    {
                      sub_1D24011CC(319, &qword_1EC6DAF78, &qword_1EC6DAF80, &unk_1D2885F20, MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1D22BFB5C();
                        if (v11 <= 0x3F)
                        {
                          sub_1D24011CC(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890, MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1D2401124()
{
  if (!qword_1EC6DAF40)
  {
    type metadata accessor for PeoplePickerInternalCoordinator();
    v0 = sub_1D2874368();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DAF40);
    }
  }
}

void sub_1D240117C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D24011CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1D240124C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2401258(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2401268(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D240128C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2401454(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PeoplePickerSheetViewModifier() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1D24014E8(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for PeoplePickerSheetViewModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D23FF7A8(a1, a2, v6);
}

uint64_t sub_1D2401680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D24016E8()
{
  result = qword_1EC6D7928;
  if (!qword_1EC6D7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7928);
  }

  return result;
}

uint64_t sub_1D2401754(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PeoplePickerSheetViewModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D24017D8()
{
  result = qword_1EC6DAFE0;
  if (!qword_1EC6DAFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAFF8);
    type metadata accessor for PeoplePickerView();
    sub_1D240321C(&qword_1EC6D87E0, type metadata accessor for PeoplePickerView);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6DB000, &qword_1EC6DAFF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAFE0);
  }

  return result;
}

uint64_t sub_1D2401960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24019D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D2401AE8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PeoplePickerSheetViewModifier();
  sub_1D23FAA2C(v5);
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

unint64_t sub_1D2401B7C()
{
  result = qword_1EC6DB030;
  if (!qword_1EC6DB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB010);
    sub_1D240128C(&qword_1EC6DB038, &qword_1EC6DB028, &unk_1D28862C8, sub_1D2401C60);
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB030);
  }

  return result;
}

unint64_t sub_1D2401C90()
{
  result = qword_1EC6DB048;
  if (!qword_1EC6DB048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9C70);
    sub_1D240321C(&qword_1EC6DA330, type metadata accessor for CharacterEditingView);
    sub_1D22BB9D8(&qword_1ED89D2F0, &qword_1EC6D9C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB048);
  }

  return result;
}

uint64_t sub_1D2401D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2401E34()
{
  result = qword_1EC6DB088;
  if (!qword_1EC6DB088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB0A0);
    sub_1D2401FBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D24020A0();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D320, &qword_1EC6D9D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB088);
  }

  return result;
}

unint64_t sub_1D2401FBC()
{
  result = qword_1EC6D7C68;
  if (!qword_1EC6D7C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB0A0);
    sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C68);
  }

  return result;
}

unint64_t sub_1D24020A0()
{
  result = qword_1ED8A2910;
  if (!qword_1ED8A2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A2910);
  }

  return result;
}

unint64_t sub_1D2402118()
{
  result = qword_1EC6DB0B0;
  if (!qword_1EC6DB0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB0A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB0B8);
    sub_1D2402228();
    sub_1D24020A0();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D320, &qword_1EC6D9D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB0B0);
  }

  return result;
}

unint64_t sub_1D2402228()
{
  result = qword_1EC6DB0C0;
  if (!qword_1EC6DB0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB0B8);
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB0C0);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{
  v1 = type metadata accessor for PeoplePickerSheetViewModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[6];
  v4 = sub_1D2872008();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[8];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0) + 32);
  v7 = type metadata accessor for ImageGenerationPerson();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
    if (!(*(*(v8 - 8) + 48))(v6, 1, v8))
    {
      v9 = *(v8 + 20);
      v10 = type metadata accessor for ImageGenerationPerson.SkinTone();
      if (!(*(*(v10 - 8) + 48))(v6 + v9, 1, v10))
      {
        v11 = sub_1D28737A8();
        (*(*(v11 - 8) + 8))(v6 + v9, v11);
      }
    }
  }

  v12 = v2 + v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF90);
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF98);

  sub_1D240124C(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_1D2273818(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  sub_1D2401258(*(v2 + v1[12]), *(v2 + v1[12] + 8), *(v2 + v1[12] + 16));
  sub_1D2401268(*(v2 + v1[13]), *(v2 + v1[13] + 8), *(v2 + v1[13] + 9));
  sub_1D2273818(*(v2 + v1[14]), *(v2 + v1[14] + 8));
  sub_1D240124C(*(v2 + v1[15]), *(v2 + v1[15] + 8));

  v14 = v2 + v1[17];
  if (*(v14 + 40))
  {
    if (*(v14 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v14);
    }
  }

  else
  {
  }

  v15 = v1[18];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  v17 = *(*(v16 - 8) + 8);
  v17(v2 + v15, v16);
  v17(v2 + v1[19], v16);
  v18 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1D2875E18();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v2 + v18, 1, v19))
    {
      (*(v20 + 8))(v2 + v18, v19);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D240283C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PeoplePickerSheetViewModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D24028B0()
{
  result = qword_1EC6D7930;
  if (!qword_1EC6D7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7930);
  }

  return result;
}

uint64_t sub_1D2402904(uint64_t a1)
{
  v2 = sub_1D2872CC8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0D8);
    v9 = sub_1D2879118();
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
      sub_1D240321C(&qword_1EC6D8BB8, MEMORY[0x1E69DFDF0]);
      v16 = sub_1D2877EF8();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D240321C(&qword_1EC6D8BB0, MEMORY[0x1E69DFDF0]);
          v23 = sub_1D2877F98();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_1D2402C24(uint64_t a1)
{
  v2 = sub_1D2874AE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0F0);
    v9 = sub_1D2879118();
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
      sub_1D240321C(&qword_1ED89DEF8, MEMORY[0x1E697BFB8]);
      v16 = sub_1D2877EF8();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D240321C(&qword_1ED89DEF0, MEMORY[0x1E697BFB8]);
          v23 = sub_1D2877F98();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_1D2402F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0E0);
    v3 = sub_1D2879118();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1D28780A8();
      sub_1D28797D8();
      v27 = v7;
      sub_1D2877F38();
      v8 = sub_1D2879828();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1D28780A8();
        v18 = v17;
        if (v16 == sub_1D28780A8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1D2879618();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D2403138()
{
  result = qword_1EC6DB0F8;
  if (!qword_1EC6DB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB0F8);
  }

  return result;
}

unint64_t sub_1D24031C8()
{
  result = qword_1EC6DB100;
  if (!qword_1EC6DB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB100);
  }

  return result;
}

uint64_t sub_1D240321C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2403264()
{
  result = qword_1EC6DB110;
  if (!qword_1EC6DB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB110);
  }

  return result;
}

unint64_t sub_1D24032B8()
{
  result = qword_1EC6DB118;
  if (!qword_1EC6DB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB118);
  }

  return result;
}

unint64_t sub_1D240330C()
{
  result = qword_1EC6DB120;
  if (!qword_1EC6DB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB120);
  }

  return result;
}

unint64_t sub_1D2403360()
{
  result = qword_1EC6DB128;
  if (!qword_1EC6DB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB128);
  }

  return result;
}

unint64_t sub_1D24033B4()
{
  result = qword_1ED89D6D8;
  if (!qword_1ED89D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D6D8);
  }

  return result;
}

unint64_t sub_1D2403408()
{
  result = qword_1EC6DB130;
  if (!qword_1EC6DB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB130);
  }

  return result;
}

unint64_t sub_1D24034DC()
{
  result = qword_1EC6DB138;
  if (!qword_1EC6DB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAF50);
    sub_1D22BB9D8(&qword_1EC6DB140, &qword_1EC6DB148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB138);
  }

  return result;
}

unint64_t sub_1D240358C()
{
  result = qword_1EC6DB150;
  if (!qword_1EC6DB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB150);
  }

  return result;
}

unint64_t sub_1D24035E0()
{
  result = qword_1EC6DB158;
  if (!qword_1EC6DB158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAF68);
    sub_1D2403664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB158);
  }

  return result;
}

unint64_t sub_1D2403664()
{
  result = qword_1ED8A6C38;
  if (!qword_1ED8A6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6C38);
  }

  return result;
}

uint64_t sub_1D24036D0()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CD0];

  *(v0 + 24) = 0;
  sub_1D28726D8();
  v5 = sub_1D2873CA8();
  v6 = sub_1D28789F8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D23D7C84(0x6E6F437465736572, 0xEE00292874786574, &v10);
    _os_log_impl(&dword_1D226E000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D24038A0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  if (os_variant_has_internal_ui())
  {
    sub_1D28726D8();
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v37 = a1;
      v38 = v21;
      v22 = a2;
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1D23D7C84(0xD000000000000017, 0x80000001D28B59B0, &v38);
      _os_log_impl(&dword_1D226E000, v17, v18, "%{public}s - environment allows donation()", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v24 = v23;
      a2 = v22;
      a1 = v37;
      MEMORY[0x1D38A3520](v24, -1, -1);
      v25 = v20;
      v6 = v36;
      MEMORY[0x1D38A3520](v25, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v26 = sub_1D28785F8();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v27 = sub_1D2878558();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    *(v28 + 32) = a1;
    *(v28 + 40) = v3;
    *(v28 + 48) = a2 & 1;
    *(v28 + 56) = v6;
    sub_1D22AE01C(0, 0, v9, &unk_1D28868C8, v28);
  }

  else
  {
    sub_1D28726D8();
    v31 = sub_1D2873CA8();
    v32 = sub_1D2878A08();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1D23D7C84(0xD000000000000017, 0x80000001D28B59B0, &v38);
      _os_log_impl(&dword_1D226E000, v31, v32, "%s - not valid environment, will skip donation", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1D38A3520](v34, -1, -1);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    return (*(v11 + 8))(v16, v10);
  }
}

void *_FeedbackManager.__allocating_init(servicesFetcher:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = swift_allocObject();
  v3[2] = MEMORY[0x1E69E7CD0];
  v3[3] = 0;
  v4 = sub_1D2871CC8();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = objc_allocWithZone(sub_1D2877C58());
  v6 = sub_1D2877C48();

  v3[4] = v6;
  return v3;
}

void *_FeedbackManager.init(servicesFetcher:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v1[2] = MEMORY[0x1E69E7CD0];
  v1[3] = 0;
  v5 = sub_1D2871CC8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = objc_allocWithZone(sub_1D2877C58());
  v7 = sub_1D2877C48();

  v1[4] = v7;
  return v1;
}

uint64_t sub_1D2403EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA90);
  v6[4] = swift_task_alloc();
  v7 = sub_1D2871CC8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_1D2878568();
  v6[9] = sub_1D2878558();
  v6[10] = sub_1D2878558();
  v8 = swift_task_alloc();
  v6[11] = v8;
  *v8 = v6;
  v8[1] = sub_1D2403FFC;

  return sub_1D24074F8(0);
}

uint64_t sub_1D2403FFC(uint64_t a1)
{
  *(*v1 + 96) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2404140, v3, v2);
}

uint64_t sub_1D2404140()
{
  v1 = v0[12];

  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[4];
    *v4 = v0[12];
    (*(v3 + 104))(v4, *MEMORY[0x1E699C218], v2);
    (*(v3 + 56))(v4, 0, 1, v2);
  }

  else
  {
    (*(v0[6] + 56))(v0[4], 1, 1, v0[5]);
  }

  v6 = sub_1D28784F8();
  v0[13] = v6;
  v0[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D240424C, v6, v5);
}

uint64_t sub_1D240424C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1D22BD238(v3, &qword_1EC6DAA90);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    if (sub_1D27D8E2C())
    {
      v6 = swift_task_alloc();
      v0[15] = v6;
      *v6 = v0;
      v6[1] = sub_1D24043F8;
      v7 = v0[7];
      v8 = v0[3];

      return sub_1D2406B38(v7, v8);
    }

    else
    {

      return MEMORY[0x1EEE6DFA0](sub_1D2404518, 0, 0);
    }
  }
}

uint64_t sub_1D24043F8()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D24073C0, v3, v2);
}

uint64_t sub_1D2404518()
{
  *(v0 + 128) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24045A4, v2, v1);
}

uint64_t sub_1D24045A4()
{
  v1 = v0[2];

  v2 = *(v1 + 32);
  sub_1D2877C28();

  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1D24073C0, v3, v4);
}

uint64_t sub_1D2404630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA90);
  v6[4] = swift_task_alloc();
  v7 = sub_1D2871CC8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_1D2878568();
  v6[9] = sub_1D2878558();
  v6[10] = sub_1D2878558();
  v8 = swift_task_alloc();
  v6[11] = v8;
  *v8 = v6;
  v8[1] = sub_1D2404780;

  return sub_1D24074F8(0);
}

uint64_t sub_1D2404780(uint64_t a1)
{
  *(*v1 + 96) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24048C4, v3, v2);
}

uint64_t sub_1D24048C4()
{
  v1 = v0[12];

  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[4];
    *v4 = v0[12];
    (*(v3 + 104))(v4, *MEMORY[0x1E699C218], v2);
    (*(v3 + 56))(v4, 0, 1, v2);
  }

  else
  {
    (*(v0[6] + 56))(v0[4], 1, 1, v0[5]);
  }

  v6 = sub_1D28784F8();
  v0[13] = v6;
  v0[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D24049D0, v6, v5);
}

uint64_t sub_1D24049D0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1D22BD238(v3, &qword_1EC6DAA90);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    if (sub_1D27D8E2C())
    {
      v6 = swift_task_alloc();
      v0[15] = v6;
      *v6 = v0;
      v6[1] = sub_1D2404B7C;
      v7 = v0[7];
      v8 = v0[3];

      return sub_1D2406B38(v7, v8);
    }

    else
    {

      return MEMORY[0x1EEE6DFA0](sub_1D2404D38, 0, 0);
    }
  }
}

uint64_t sub_1D2404B7C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D2404C9C, v3, v2);
}

uint64_t sub_1D2404C9C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2404D38()
{
  *(v0 + 128) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2404DC4, v2, v1);
}

uint64_t sub_1D2404DC4()
{
  v1 = v0[2];

  v2 = *(v1 + 32);
  sub_1D2877BF8();

  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1D24073C0, v3, v4);
}

uint64_t sub_1D2404E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA90);
  v6[4] = swift_task_alloc();
  v7 = sub_1D2871CC8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_1D2878568();
  v6[9] = sub_1D2878558();
  v6[10] = sub_1D2878558();
  v8 = swift_task_alloc();
  v6[11] = v8;
  *v8 = v6;
  v8[1] = sub_1D2404FA0;

  return sub_1D24074F8(0);
}

uint64_t sub_1D2404FA0(uint64_t a1)
{
  *(*v1 + 96) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24050E4, v3, v2);
}

uint64_t sub_1D24050E4()
{
  v1 = v0[12];

  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[4];
    *v4 = v0[12];
    (*(v3 + 104))(v4, *MEMORY[0x1E699C218], v2);
    (*(v3 + 56))(v4, 0, 1, v2);
  }

  else
  {
    (*(v0[6] + 56))(v0[4], 1, 1, v0[5]);
  }

  v6 = sub_1D28784F8();
  v0[13] = v6;
  v0[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D24051F0, v6, v5);
}

uint64_t sub_1D24051F0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1D22BD238(v3, &qword_1EC6DAA90);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    if (sub_1D27D8E2C())
    {
      v6 = swift_task_alloc();
      v0[15] = v6;
      *v6 = v0;
      v6[1] = sub_1D24043F8;
      v7 = v0[7];
      v8 = v0[3];

      return sub_1D2406B38(v7, v8);
    }

    else
    {

      return MEMORY[0x1EEE6DFA0](sub_1D240539C, 0, 0);
    }
  }
}

uint64_t sub_1D240539C()
{
  *(v0 + 128) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2405428, v2, v1);
}

uint64_t sub_1D2405428()
{
  v1 = v0[2];

  v2 = *(v1 + 32);
  sub_1D2877BE8();

  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1D24073C0, v3, v4);
}

uint64_t sub_1D24054B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 272) = a6;
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  v7 = sub_1D2873CB8();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  *(v6 + 136) = swift_task_alloc();
  v8 = sub_1D2871818();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  sub_1D2878568();
  *(v6 + 200) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v6 + 208) = v10;
  *(v6 + 216) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D24056A0, v10, v9);
}

uint64_t sub_1D24056A0()
{
  v48 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_1D22BD1D0(v0[8] + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, v3, &qword_1EC6D8F70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[17], &qword_1EC6D8F70);
  }

  else
  {
    v4 = v0[24];
    v5 = v0[9];
    (*(v0[19] + 32))(v4, v0[17], v0[18]);
    swift_beginAccess();
    v6 = *(v5 + 16);
    sub_1D2870F68();
    LOBYTE(v4) = sub_1D25A5DDC(v4, v6);

    v7 = v0[18];
    v8 = v0[19];
    if (v4)
    {
      v9 = v0[24];
      v10 = v0[23];

      sub_1D28726D8();
      (*(v8 + 16))(v10, v9, v7);
      v11 = sub_1D2873CA8();
      v12 = sub_1D2878A18();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[23];
      v15 = v0[24];
      v16 = v0[18];
      v17 = v0[19];
      v18 = v0[16];
      v20 = v0[10];
      v19 = v0[11];
      if (v13)
      {
        v46 = v0[16];
        v21 = swift_slowAlloc();
        v45 = v20;
        v22 = swift_slowAlloc();
        v47 = v22;
        *v21 = 136315138;
        sub_1D2407368();
        v43 = v12;
        v23 = sub_1D28795C8();
        v44 = v15;
        v25 = v24;
        v26 = *(v17 + 8);
        v26(v14, v16);
        v27 = sub_1D23D7C84(v23, v25, &v47);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_1D226E000, v11, v43, "Duplicate feedback id: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1D38A3520](v22, -1, -1);
        MEMORY[0x1D38A3520](v21, -1, -1);

        (*(v19 + 8))(v46, v45);
        v26(v44, v16);
      }

      else
      {

        v41 = *(v17 + 8);
        v41(v14, v16);
        (*(v19 + 8))(v18, v20);
        v41(v15, v16);
      }

      goto LABEL_15;
    }

    v28 = v0[24];
    v30 = v0[21];
    v29 = v0[22];
    (*(v8 + 16))(v30, v28, v0[18]);
    swift_beginAccess();
    sub_1D25B59C8(v29, v30);
    swift_endAccess();
    v31 = *(v8 + 8);
    v31(v29, v7);
    v31(v28, v7);
  }

  if (*(v0[9] + 24) < 3)
  {
    v32 = swift_task_alloc();
    v0[28] = v32;
    *v32 = v0;
    v32[1] = sub_1D2405BCC;

    return sub_1D24074F8(1);
  }

  sub_1D28726D8();
  v34 = sub_1D2873CA8();
  v35 = sub_1D2878A08();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[15];
  v38 = v0[10];
  v39 = v0[11];
  if (v36)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1D226E000, v34, v35, "Skipping donation for this generation, carousel already contains max items", v40, 2u);
    MEMORY[0x1D38A3520](v40, -1, -1);
  }

  (*(v39 + 8))(v37, v38);
LABEL_15:

  v42 = v0[1];

  return v42();
}

uint64_t sub_1D2405BCC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 232) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D2405CF4, v4, v3);
}

uint64_t sub_1D2405CF4()
{
  v1 = v0[29];
  if (v1)
  {
    v13 = (*MEMORY[0x1E699C1C0] + MEMORY[0x1E699C1C0]);
    v1;
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_1D2405F24;
    v3 = v0[20];

    return v13(v3);
  }

  else
  {

    sub_1D28726D8();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[14];
    v9 = v0[10];
    v10 = v0[11];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Build donation returned nil, skipping donation", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v10 + 8))(v8, v9);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1D2405F24()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = v2[26];
    v4 = v2[27];
    v5 = sub_1D2406550;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v3 = v2[26];
    v4 = v2[27];
    v5 = sub_1D2406050;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2406050()
{
  v1 = *(v0 + 232);
  if (*(v0 + 272) == 1)
  {
    v14 = (*MEMORY[0x1E699C620] + MEMORY[0x1E699C620]);
    v2 = swift_task_alloc();
    *(v0 + 256) = v2;
    *v2 = v0;
    v2[1] = sub_1D2406290;

    return v14();
  }

  else
  {

    sub_1D28726D8();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A08();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 232);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Made donation", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v9 = *(v0 + 72);
    result = (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
    v10 = *(v9 + 24);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      *(*(v0 + 72) + 24) = v12;

      v13 = *(v0 + 8);

      return v13();
    }
  }

  return result;
}

uint64_t sub_1D2406290()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_1D2406760;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_1D24063AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D24063AC()
{

  sub_1D28726D8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A08();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Made donation", v5, 2u);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v6 = v0[9];
  result = (*(v0[11] + 8))(v0[13], v0[10]);
  v8 = *(v6 + 24);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v0[9] + 24) = v10;

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_1D2406550()
{
  v1 = v0[31];
  v2 = v0[29];

  sub_1D28726D8();
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  if (v6)
  {
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to donate with error: %@", v9, 0xCu);
    sub_1D22BD238(v10, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
    v7 = v4;
    v4 = v8;
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D2406760()
{
  v1 = v0[33];
  v2 = v0[29];

  sub_1D28726D8();
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  if (v6)
  {
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to donate with error: %@", v9, 0xCu);
    sub_1D22BD238(v10, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
    v7 = v4;
    v4 = v8;
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v13 = v0[1];

  return v13();
}

uint64_t _FeedbackManager.deinit()
{

  return v0;
}

uint64_t _FeedbackManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D24069D8@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = swift_allocObject();
  v5[2] = MEMORY[0x1E69E7CD0];
  v5[3] = 0;
  v6 = sub_1D2871CC8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = objc_allocWithZone(sub_1D2877C58());
  v8 = sub_1D2877C48();

  v5[4] = v8;
  *a1 = v5;
  return result;
}

uint64_t sub_1D2406B38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D2873CB8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50);
  v2[8] = swift_task_alloc();
  v4 = sub_1D2871CA8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_1D2878568();
  v2[12] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2406CCC, v6, v5);
}

uint64_t sub_1D2406CCC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1D22BD1D0(v0[3], v3, &unk_1EC6DDE50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];

    sub_1D22BD238(v4, &unk_1EC6DDE50);
    sub_1D28726D8();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Missing action for remote evaluation.", v7, 2u);
      MEMORY[0x1D38A3520](v7, -1, -1);
    }

    (*(v0[5] + 8))(v0[7], v0[4]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1D2406EE8;
    v11 = v0[11];

    return MEMORY[0x1EEE03F08](v11, 1);
  }
}

uint64_t sub_1D2406EE8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1D24070CC;
  }

  else
  {
    v5 = sub_1D2407024;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2407024()
{

  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D24070CC()
{
  v1 = v0[16];

  sub_1D28726D8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Unexpected error trying to launch remote evaluation: %@.", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v10 = v0[16];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];

  (*(v12 + 8))(v11, v13);
  (*(v0[10] + 8))(v0[11], v0[9]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D2407290(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D24054B4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1D2407368()
{
  result = qword_1ED8A6C90;
  if (!qword_1ED8A6C90)
  {
    sub_1D2871818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6C90);
  }

  return result;
}

uint64_t dispatch thunk of GenerationStateProvider.generationState(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BC8FC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D24074F8(char a1)
{
  *(v2 + 1168) = v1;
  *(v2 + 2474) = a1;
  v3 = sub_1D2871D58();
  *(v2 + 1176) = v3;
  *(v2 + 1184) = *(v3 - 8);
  *(v2 + 1192) = swift_task_alloc();
  v4 = sub_1D2871CD8();
  *(v2 + 1200) = v4;
  *(v2 + 1208) = *(v4 - 8);
  *(v2 + 1216) = swift_task_alloc();
  *(v2 + 1224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  *(v2 + 1232) = swift_task_alloc();
  *(v2 + 1240) = swift_task_alloc();
  v5 = sub_1D2871F38();
  *(v2 + 1248) = v5;
  *(v2 + 1256) = *(v5 - 8);
  *(v2 + 1264) = swift_task_alloc();
  *(v2 + 1272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v2 + 1280) = swift_task_alloc();
  v6 = sub_1D2873AA8();
  *(v2 + 1288) = v6;
  *(v2 + 1296) = *(v6 - 8);
  *(v2 + 1304) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB160);
  *(v2 + 1312) = v7;
  *(v2 + 1320) = *(v7 - 8);
  *(v2 + 1328) = swift_task_alloc();
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  *(v2 + 1352) = swift_task_alloc();
  *(v2 + 1360) = swift_task_alloc();
  *(v2 + 1368) = swift_task_alloc();
  *(v2 + 1376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB168);
  *(v2 + 1384) = swift_task_alloc();
  sub_1D28718F8();
  *(v2 + 1392) = swift_task_alloc();
  v8 = sub_1D2878048();
  *(v2 + 1400) = v8;
  *(v2 + 1408) = *(v8 - 8);
  *(v2 + 1416) = swift_task_alloc();
  *(v2 + 1424) = swift_task_alloc();
  v9 = sub_1D2871D48();
  *(v2 + 1432) = v9;
  *(v2 + 1440) = *(v9 - 8);
  *(v2 + 1448) = swift_task_alloc();
  v10 = sub_1D2871D28();
  *(v2 + 1456) = v10;
  *(v2 + 1464) = *(v10 - 8);
  *(v2 + 1472) = swift_task_alloc();
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1488) = swift_task_alloc();
  *(v2 + 1496) = swift_task_alloc();
  v11 = sub_1D2871CE8();
  *(v2 + 1504) = v11;
  *(v2 + 1512) = *(v11 - 8);
  *(v2 + 1520) = swift_task_alloc();
  v12 = sub_1D2872A98();
  *(v2 + 1528) = v12;
  *(v2 + 1536) = *(v12 - 8);
  *(v2 + 1544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB170);
  *(v2 + 1552) = swift_task_alloc();
  v13 = sub_1D2872AA8();
  *(v2 + 1560) = v13;
  *(v2 + 1568) = *(v13 - 8);
  *(v2 + 1576) = swift_task_alloc();
  *(v2 + 1584) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA448);
  *(v2 + 1592) = swift_task_alloc();
  v14 = sub_1D2872908();
  *(v2 + 1600) = v14;
  *(v2 + 1608) = *(v14 - 8);
  *(v2 + 1616) = swift_task_alloc();
  *(v2 + 1624) = type metadata accessor for CharacterRecipe();
  *(v2 + 1632) = swift_task_alloc();
  v15 = type metadata accessor for CharacterAsset();
  *(v2 + 1640) = v15;
  *(v2 + 1648) = *(v15 - 8);
  *(v2 + 1656) = swift_task_alloc();
  v16 = sub_1D2872008();
  *(v2 + 1664) = v16;
  *(v2 + 1672) = *(v16 - 8);
  *(v2 + 1680) = swift_task_alloc();
  *(v2 + 1688) = swift_task_alloc();
  *(v2 + 1696) = swift_task_alloc();
  *(v2 + 1704) = swift_task_alloc();
  *(v2 + 1712) = swift_task_alloc();
  *(v2 + 1720) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  *(v2 + 1728) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  *(v2 + 1736) = swift_task_alloc();
  v17 = type metadata accessor for CuratedPrompt();
  *(v2 + 1744) = v17;
  *(v2 + 1752) = *(v17 - 8);
  *(v2 + 1760) = swift_task_alloc();
  *(v2 + 1768) = swift_task_alloc();
  *(v2 + 1776) = swift_task_alloc();
  *(v2 + 1784) = swift_task_alloc();
  *(v2 + 1792) = swift_task_alloc();
  v18 = sub_1D2873CB8();
  *(v2 + 1800) = v18;
  *(v2 + 1808) = *(v18 - 8);
  *(v2 + 1816) = swift_task_alloc();
  *(v2 + 1824) = swift_task_alloc();
  *(v2 + 1832) = swift_task_alloc();
  *(v2 + 1840) = swift_task_alloc();
  *(v2 + 1848) = swift_task_alloc();
  *(v2 + 1856) = swift_task_alloc();
  v19 = sub_1D2872248();
  *(v2 + 1864) = v19;
  *(v2 + 1872) = *(v19 - 8);
  *(v2 + 1880) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v2 + 1888) = swift_task_alloc();
  v20 = type metadata accessor for PlaygroundImage();
  *(v2 + 1896) = v20;
  *(v2 + 1904) = *(v20 - 8);
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();
  v21 = sub_1D2872208();
  *(v2 + 1928) = v21;
  *(v2 + 1936) = *(v21 - 8);
  *(v2 + 1944) = swift_task_alloc();
  *(v2 + 1952) = swift_task_alloc();
  v22 = sub_1D2872428();
  *(v2 + 1960) = v22;
  *(v2 + 1968) = *(v22 - 8);
  *(v2 + 1976) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  *(v2 + 1984) = swift_task_alloc();
  v23 = type metadata accessor for PhotosPersonAsset();
  *(v2 + 1992) = v23;
  *(v2 + 2000) = *(v23 - 8);
  *(v2 + 2008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  *(v2 + 2016) = swift_task_alloc();
  *(v2 + 2024) = swift_task_alloc();
  v24 = sub_1D28722C8();
  *(v2 + 2032) = v24;
  *(v2 + 2040) = *(v24 - 8);
  *(v2 + 2048) = swift_task_alloc();
  v25 = sub_1D28723E8();
  *(v2 + 2056) = v25;
  *(v2 + 2064) = *(v25 - 8);
  *(v2 + 2072) = swift_task_alloc();
  v26 = sub_1D2872278();
  *(v2 + 2080) = v26;
  *(v2 + 2088) = *(v26 - 8);
  *(v2 + 2096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  *(v2 + 2104) = swift_task_alloc();
  *(v2 + 2112) = swift_task_alloc();
  *(v2 + 2120) = swift_task_alloc();
  *(v2 + 2128) = swift_task_alloc();
  *(v2 + 2136) = swift_task_alloc();
  *(v2 + 2144) = swift_task_alloc();
  *(v2 + 2152) = swift_task_alloc();
  *(v2 + 2160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  v27 = swift_task_alloc();
  *(v2 + 2168) = v27;
  v28 = sub_1D2872438();
  *(v2 + 2176) = v28;
  *(v2 + 2184) = *(v28 - 8);
  *(v2 + 2192) = swift_task_alloc();
  *(v2 + 2200) = sub_1D2878568();
  *(v2 + 2208) = sub_1D2878558();
  v29 = swift_task_alloc();
  *(v2 + 2216) = v29;
  *v29 = v2;
  v29[1] = sub_1D2408384;

  return sub_1D2413208(v27);
}

uint64_t sub_1D2408384()
{
  v1 = *v0;

  v3 = sub_1D28784F8();
  *(v1 + 2224) = v3;
  *(v1 + 2232) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D24084CC, v3, v2);
}

unint64_t sub_1D24084CC()
{
  v726 = v0;
  v1 = v0;
  v2 = *(v0 + 2184);
  v3 = *(v1 + 2176);
  v4 = *(v1 + 2168);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {

    sub_1D22BD238(v4, &unk_1EC6DDE30);
    sub_1D28726D8();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v1 + 1816);
    v9 = *(v1 + 1808);
    v10 = *(v1 + 1800);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Failed to retrieve recipe from context or received nil recipe.", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_214;
  }

  v12 = *(v1 + 2160);
  v13 = *(v1 + 1672);
  v14 = *(v1 + 1664);
  (*(v2 + 32))(*(v1 + 2192), v4, v3);
  v15 = sub_1D28722E8();
  v16 = v12;
  v17 = v15;
  v624 = *(v13 + 56);
  v624(v16, 1, 1, v14);
  *(v1 + 2473) = 0;
  v18 = *(v17 + 16);
  v720 = v1;
  if (!v18)
  {
    v621 = 0;
    v19 = 0;
    v633 = 0;
    v627 = 0;
    v634 = 0;
    v615 = 0;
    v616 = 0;
    v20 = 0;
    v21 = 0;
    v30 = 0xF000000000000000;
    v31 = 0xF000000000000000;
    v32 = 0xF000000000000000;
    v666 = MEMORY[0x1E69E7CC0];
    v713 = MEMORY[0x1E69E7CC0];
    v33 = 0;
    goto LABEL_68;
  }

  v621 = 0;
  v19 = 0;
  v633 = 0;
  v627 = 0;
  v634 = 0;
  v615 = 0;
  v616 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = *(v1 + 2088);
  v24 = *(v1 + 2064);
  v25 = *(v1 + 2040);
  v26 = *(v1 + 1968);
  v704 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v619 = (v26 + 32);
  v27 = *(v1 + 1936);
  v618 = (v26 + 8);
  v631 = (v27 + 32);
  v623 = (*(v1 + 1296) + 56);
  v28 = *(v1 + 1872);
  v629 = (v27 + 8);
  v630 = (v27 + 16);
  v645 = (v24 + 32);
  v29 = *(v1 + 1648);
  v642 = (v24 + 8);
  v605 = (v25 + 32);
  v698 = *MEMORY[0x1E696E450];
  v604 = (v29 + 56);
  v603 = (v29 + 48);
  LODWORD(v663) = *MEMORY[0x1E696E468];
  v601 = (v25 + 8);
  v602 = (*(v1 + 2000) + 48);
  v606 = (v28 + 8);
  v607 = (v28 + 32);
  v639 = *MEMORY[0x1E696E470];
  v628 = *MEMORY[0x1E696E448];
  v626 = *MEMORY[0x1E696E460];
  v625 = *MEMORY[0x1E696E458];
  v695 = (v23 + 16);
  v617 = (v23 + 8);
  v681 = (v23 + 96);
  v674 = *(v17 + 16);
  v608 = v18 - 1;
  v30 = 0xF000000000000000;
  v658 = *(v1 + 2096);
  v600 = *(v1 + 2008);
  v613 = *(v1 + 1912);
  v614 = *(v1 + 1920);
  v622 = *(v1 + 1896);
  v610 = *(v1 + 1168);
  v31 = 0xF000000000000000;
  v32 = 0xF000000000000000;
  v666 = MEMORY[0x1E69E7CC0];
  v713 = MEMORY[0x1E69E7CC0];
  v33 = 0;
  v652 = v17;
  v612 = v23;
  while (2)
  {
    v609 = v19;
    v636 = v20;
    v637 = v31;
    v635 = v30;
    v34 = v33;
    v1 = v32;
LABEL_8:
    v611 = v1;
    v35 = v22;
    v1 = v720;
    v33 = v34;
    v34 = v674;
    v687 = v21;
    while (1)
    {
      if (v35 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_114;
      }

      v36 = *(v1 + 2096);
      v37 = *(v1 + 2080);
      (*(v23 + 16))(v36, v704 + *(v23 + 72) * v35, v37);
      v38 = (*(v23 + 88))(v36, v37);
      if (v38 == v698)
      {
        v39 = *(v1 + 2096);
        (*v681)(v39, *(v1 + 2080));
        v40 = *v39;
        v41 = *(v658 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v713 = sub_1D27CC674(0, *(v713 + 2) + 1, 1, v713);
        }

        v43 = *(v713 + 2);
        v42 = *(v713 + 3);
        if (v43 >= v42 >> 1)
        {
          v713 = sub_1D27CC674((v42 > 1), v43 + 1, 1, v713);
        }

        *(v713 + 2) = v43 + 1;
        v44 = &v713[16 * v43];
        *(v44 + 4) = v40;
        *(v44 + 5) = v41;
        goto LABEL_25;
      }

      if (v38 == v663)
      {
        v45 = *(v1 + 2096);
        v46 = *(v1 + 2072);
        v47 = *(v1 + 2056);
        (*v681)(v45, *(v1 + 2080));
        (*v645)(v46, v45, v47);
        v48 = sub_1D2872368();
        v50 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v666 = sub_1D27CC674(0, *(v666 + 2) + 1, 1, v666);
        }

        v52 = *(v666 + 2);
        v51 = *(v666 + 3);
        if (v52 >= v51 >> 1)
        {
          v666 = sub_1D27CC674((v51 > 1), v52 + 1, 1, v666);
        }

        (*v642)(*(v1 + 2072), *(v1 + 2056));
        *(v666 + 2) = v52 + 1;
        v53 = &v666[16 * v52];
        *(v53 + 4) = v48;
        *(v53 + 5) = v50;
LABEL_24:
        v17 = v652;
LABEL_25:
        v34 = v674;
LABEL_26:
        v21 = v687;
        goto LABEL_10;
      }

      if (v38 == v639)
      {
        v54 = *(v1 + 2096);
        v55 = *(v1 + 1952);
        v56 = *(v1 + 1944);
        v57 = *(v1 + 1928);
        (*v681)(v54, *(v1 + 2080));
        (*v631)(v55, v54, v57);
        sub_1D2878C18();
        (*v630)(v56, v55, v57);
        v58 = sub_1D2878BD8();
        if (!v58)
        {
          (*v629)(*(v1 + 1952), *(v1 + 1928));
          v17 = v652;
          goto LABEL_26;
        }

        v59 = v58;
        v60 = [v58 baseImage];
        v632 = v59;
        if (v60)
        {
          v61 = v60;
          v62 = *(v1 + 1920);
          v63 = *(v1 + 1888);
          v64 = *(v720 + 1288);
          v647 = v33;
          *(v614 + 32) = 0;
          *(v614 + 40) = 0;
          v65 = &v62[v622[9]];
          *v65 = 0u;
          *(v65 + 1) = 0u;
          *&v62[v622[10]] = xmmword_1D28809A0;
          v66 = *v623;
          (*v623)(&v62[v622[11]], 1, 1, v64);
          *v62 = v61;
          *(v614 + 8) = 3;
          *(v614 + 24) = 1;
          *(v614 + 16) = 0;
          v62[v622[12]] = 0;
          sub_1D2871808();
          sub_1D2873A08();
          v66(v63, 0, 1, v64);
          v33 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v63);
          v68 = v67;
          sub_1D22D6D4C(v647, v637);
          sub_1D22BD238(v63, &qword_1EC6DAE70);
          v69 = v62;
          v59 = v632;
          sub_1D2415C9C(v69, type metadata accessor for PlaygroundImage);
          v637 = v68;
          v1 = v720;
        }

        else
        {
          sub_1D22D6D4C(v33, v637);
          v33 = 0;
          v637 = 0xF000000000000000;
        }

        v83 = [v59 sketchImage];
        v84 = *(v1 + 1952);
        v85 = *(v1 + 1928);
        if (v83)
        {
          v86 = v83;
          v87 = *(v1 + 1912);
          v88 = *(v1 + 1888);
          v89 = *(v1 + 1288);
          v620 = *(v1 + 1952);
          *(v613 + 32) = 0;
          *(v613 + 40) = 0;
          v90 = &v87[v622[9]];
          *v90 = 0u;
          *(v90 + 1) = 0u;
          *&v87[v622[10]] = xmmword_1D28809A0;
          v91 = *v623;
          (*v623)(&v87[v622[11]], 1, 1, v89);
          *v87 = v86;
          *(v613 + 8) = 3;
          *(v613 + 24) = 1;
          *(v613 + 16) = 0;
          v87[v622[12]] = 1;
          v23 = v612;
          sub_1D2871808();
          sub_1D2873A08();
          v91(v88, 0, 1, v89);
          v92 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v88);
          v94 = v93;

          sub_1D22D6D4C(v636, v635);
          sub_1D22BD238(v88, &qword_1EC6DAE70);
          sub_1D2415C9C(v87, type metadata accessor for PlaygroundImage);
          (*v629)(v620, v85);
          v635 = v94;
          v636 = v92;
        }

        else
        {
          sub_1D22D6D4C(v636, v635);

          (*v629)(v84, v85);
          v635 = 0xF000000000000000;
          v636 = 0;
        }

        goto LABEL_24;
      }

      if (v38 == v628)
      {
        break;
      }

      if (v38 == v626)
      {
        v34 = v33;
        v95 = *(v1 + 2096);
        v96 = *(v1 + 2048);
        v97 = v21;
        v98 = *(v1 + 2032);
        (*v681)(v95, *(v1 + 2080));
        (*v605)(v96, v95, v98);
        v21 = sub_1D2872288();
        v99 = v1;
        v1 = v100;
        sub_1D22D6D4C(v97, v611);
        v101 = *(v610 + 24);
        if (v101)
        {
          v102 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
          swift_beginAccess();
          sub_1D22BD1D0(v101 + v102, v99 + 16, &qword_1EC6D9A58);
          if (*(v99 + 40))
          {
            v103 = *(v99 + 2024);
            v104 = *(v99 + 1640);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
            v105 = swift_dynamicCast();
            (*v604)(v103, v105 ^ 1u, 1, v104);
            goto LABEL_48;
          }
        }

        else
        {
          *(v99 + 48) = 0;
          *(v99 + 16) = 0u;
          *(v99 + 32) = 0u;
        }

        v106 = *(v99 + 2024);
        v107 = *(v99 + 1640);
        sub_1D22BD238(v99 + 16, &qword_1EC6D9A58);
        (*v604)(v106, 1, 1, v107);
LABEL_48:
        v108 = *(v99 + 2048);
        v109 = *(v99 + 2024);
        v687 = *(v99 + 1992);
        v110 = *(v99 + 1984);
        v627 = (*v603)(v109, 1, *(v99 + 1640)) == 0;
        sub_1D22BD238(v109, &unk_1EC6DDDA0);
        v111 = sub_1D23C6DDC();
        v112 = sub_1D2554D28();

        *(swift_task_alloc() + 16) = v108;
        sub_1D274B7A8(sub_1D2415C14, v112, v110);

        if ((*v602)(v110, 1, v687) == 1)
        {
          sub_1D22BD238(*(v99 + 1984), &unk_1EC6DDDC0);
        }

        else
        {
          v113 = *(v99 + 2008);
          v114 = *(v99 + 1984);
          sub_1D238D058(v634);
          sub_1D2415C34(v114, v113, type metadata accessor for PhotosPersonAsset);
          v634 = v600[4];
          v615 = v600[5];
          v616 = v600[6];
          sub_1D2396784(v634);
          sub_1D2415C9C(v113, type metadata accessor for PhotosPersonAsset);
        }

        v22 = v35 + 1;
        (*v601)(*(v99 + 2048), *(v99 + 2032));
        v621 = 1;
        v17 = v652;
        if (v608 == v35)
        {
LABEL_114:
          v32 = v1;
          v1 = v720;
          v33 = v34;
          v30 = v635;
          v20 = v636;
          v31 = v637;
          v19 = v609;
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      v70 = *(v1 + 2096);
      v71 = *(v1 + 2080);
      if (v38 == v625)
      {
        v72 = *(v1 + 1976);
        v73 = *(v1 + 1960);
        (*v681)(v70, v71);
        (*v619)(v72, v70, v73);
        v74 = sub_1D28723F8();
        *(v1 + 2473) = v74 & 1;
        v75 = v1;
        v76 = *(v1 + 2160);
        v77 = v75[269];
        v78 = v75[247];
        v633 = v74;
        if (v74)
        {
          v79 = *(sub_1D23C6B54() + 64);
          sub_1D2870F68();

          *(swift_task_alloc() + 16) = v78;
          sub_1D274B77C(sub_1D2415BF4, v79, v77);

          sub_1D22BD238(v76, &qword_1EC6D9A30);
        }

        else
        {
          v80 = v75[208];
          sub_1D2872418();
          sub_1D2871EA8();
          sub_1D22BD238(v76, &qword_1EC6D9A30);
          v624(v77, 0, 1, v80);
        }

        v81 = v75[247];
        v82 = v75[245];
        sub_1D22EC9BC(v75[269], v75[270], &qword_1EC6D9A30);
        (*v618)(v81, v82);
        v1 = v75;
        v17 = v652;
        v34 = v674;
        v21 = v687;
      }

      else
      {
        (*v617)(*(v1 + 2096), v71);
      }

LABEL_10:
      if (v34 == ++v35)
      {
        v30 = v635;
        v20 = v636;
        v31 = v637;
        v19 = v609;
        v32 = v611;
        goto LABEL_68;
      }
    }

    v115 = *(v1 + 2096);
    v116 = *(v1 + 1880);
    v117 = *(v1 + 1864);
    (*v681)(v115, *(v1 + 2080));
    (*v607)(v116, v115, v117);
    LOBYTE(v115) = sub_1D2872228();
    result = sub_1D2872238();
    v621 = v115;
    if (v119 >> 60 == 15)
    {
      goto LABEL_63;
    }

    if (*(v1 + 2474) != 1)
    {
      goto LABEL_62;
    }

    v120 = (v119 >> 62);
    if ((v119 >> 62) > 1)
    {
      if (v120 != 2)
      {
        goto LABEL_62;
      }

      v123 = *(result + 16);
      v122 = *(result + 24);
      v124 = __OFSUB__(v122, v123);
      v121 = v122 - v123;
      if (v124)
      {
        __break(1u);
        goto LABEL_339;
      }

LABEL_61:
      if (v121 <= 0x80000)
      {
        goto LABEL_62;
      }

LABEL_326:
      v585 = result;
      v586 = v119;

      sub_1D238D058(v634);

      sub_1D28726D8();
      v587 = v586;
      sub_1D22D6CF8(v585, v586);
      v588 = sub_1D2873CA8();
      v589 = sub_1D2878A38();
      if (os_log_type_enabled(v588, v589))
      {
        result = swift_slowAlloc();
        v590 = result;
        *result = 134217984;
        if (v120 == 2)
        {
          v591 = *(v585 + 16);
          v592 = *(v585 + 24);
          v124 = __OFSUB__(v592, v591);
          v593 = v592 - v591;
          if (!v124)
          {
            goto LABEL_336;
          }

          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_332:
            swift_once();
LABEL_209:
            v708 = *(v1 + 2288);
            v363 = *(v1 + 1464);
            v668 = *(v1 + 1456);
            v364 = *(v720 + 1384);
            v365 = *(v720 + 1376);
            v366 = qword_1ED8B0058;
            *(v720 + 2368) = qword_1ED8B0058;
            v367 = v366;
            sub_1D28718C8();
            v677 = v367;
            sub_1D28780E8();
            sub_1D2877FE8();
            sub_1D28718C8();
            sub_1D28780E8();
            v368 = sub_1D2871D18();
            *(v720 + 2376) = v368;
            v369 = *(v368 - 8);
            v370 = *(v369 + 56);
            *(v720 + 2384) = v370;
            *(v720 + 2392) = (v369 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
            v687 = v370;
            v692 = v368;
            v370(v364, 1, 1);
            v1 = v720;
            sub_1D2871D08();
            v372 = v363 + 56;
            v371 = *(v363 + 56);
            *(v720 + 2400) = v371;
            *(v720 + 2408) = v372 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
            v371(v365, 1, 1, v668);
            if (v708 >> 60 != 15)
            {
              v373 = *(v720 + 2288);
              v374 = *(v720 + 2280);
              v375 = *(v720 + 1456);
              v376 = *(v720 + 1448);
              v377 = *(v720 + 1432);
              v378 = *(v720 + 1384);
              v379 = *(v720 + 1376);
              v380 = *(v720 + 1368);
              *v376 = v374;
              v376[1] = v373;
              (v695)(v376, *MEMORY[0x1E699C5F0], v377);
              sub_1D22D6CE4(v374, v373);
              sub_1D22D6CF8(v374, v373);
              sub_1D2877FE8();
              v381 = v677;
              sub_1D28718C8();
              sub_1D28780E8();
              (v687)(v378, 1, 1, v692);
              sub_1D2871D08();
              v382 = v374;
              v1 = v720;
              sub_1D22D6D4C(v382, v373);
              sub_1D22BD238(v379, &qword_1EC6DB160);
              v371(v380, 0, 1, v375);
              sub_1D22EC9BC(v380, v379, &qword_1EC6DB160);
            }

            v383 = *(v1 + 1496);
            v384 = *(v1 + 1464);
            v385 = *(v1 + 1456);
            v669 = *(v1 + 1376);
            v386 = *(v1 + 1360);
            v640 = *(v1 + 1344);
            v387 = *(v1 + 1320);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB180);
            v388 = *(v387 + 72);
            v389 = (*(v387 + 80) + 32) & ~*(v387 + 80);
            v390 = swift_allocObject();
            *(v390 + 16) = xmmword_1D287F550;
            v391 = v390 + v389;
            v635 = *(v384 + 16);
            v636 = v384 + 16;
            v635(v390 + v389, v383, v385);
            v659 = v371;
            v371(v391, 0, 1, v385);
            sub_1D22BD1D0(v669, v391 + v388, &qword_1EC6DB160);
            v648 = v391;
            sub_1D22BD1D0(v391, v386, &qword_1EC6DB160);
            sub_1D22EC9BC(v386, v640, &qword_1EC6DB160);
            v392 = (v384 + 32);
            v670 = v384;
            v643 = *(v384 + 48);
            if (v643(v640, 1, v385) == 1)
            {
              sub_1D22BD238(*(v1 + 1344), &qword_1EC6DB160);
              v393 = MEMORY[0x1E69E7CC0];
              v394 = v391;
            }

            else
            {
              v396 = *v392;
              (*v392)(*(v1 + 1488), *(v1 + 1344), *(v1 + 1456));
              v397 = MEMORY[0x1E69E7CC0];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v397 = sub_1D27CCEC4(0, v397[2] + 1, 1, v397);
              }

              v399 = v397[2];
              v398 = v397[3];
              v393 = v397;
              v394 = v648;
              if (v399 >= v398 >> 1)
              {
                v393 = sub_1D27CCEC4(v398 > 1, v399 + 1, 1, v397);
              }

              v400 = *(v1 + 1488);
              v401 = *(v1 + 1456);
              v393[2] = v399 + 1;
              v396(v393 + ((*(v670 + 80) + 32) & ~*(v670 + 80)) + *(v670 + 72) * v399, v400, v401);
            }

            v402 = *(v1 + 1456);
            v403 = *(v1 + 1360);
            v404 = *(v1 + 1344);
            sub_1D22BD1D0(v394 + v388, v403, &qword_1EC6DB160);
            sub_1D22EC9BC(v403, v404, &qword_1EC6DB160);
            v637 = v392;
            if (v643(v404, 1, v402) == 1)
            {
              sub_1D22BD238(*(v1 + 1344), &qword_1EC6DB160);
            }

            else
            {
              v405 = *v392;
              (*v392)(*(v1 + 1488), *(v1 + 1344), *(v1 + 1456));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v393 = sub_1D27CCEC4(0, v393[2] + 1, 1, v393);
              }

              v407 = v393[2];
              v406 = v393[3];
              if (v407 >= v406 >> 1)
              {
                v393 = sub_1D27CCEC4(v406 > 1, v407 + 1, 1, v393);
              }

              v408 = *(v1 + 1488);
              v409 = *(v1 + 1456);
              v393[2] = v407 + 1;
              v405(v393 + ((*(v670 + 80) + 32) & ~*(v670 + 80)) + *(v670 + 72) * v407, v408, v409);
            }

            v410 = *(v1 + 2272);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();

            if (v410 >> 60 == 15)
            {
              v411 = *(v1 + 2256);
              if (v411 >> 60 == 15)
              {
                v412 = *(v1 + 1456);
                v413 = *(v1 + 1352);
                v414 = 1;
              }

              else
              {
                v421 = *(v1 + 2248);
                v422 = *(v1 + 1456);
                v423 = *(v1 + 1448);
                v424 = *(v1 + 1432);
                v425 = *(v1 + 1384);
                v426 = *(v720 + 1352);
                *v423 = v421;
                v423[1] = v411;
                (v695)(v423, *MEMORY[0x1E699C600], v424);
                sub_1D22D6CE4(v421, v411);
                sub_1D22D6CF8(v421, v411);
                sub_1D2877FE8();
                v427 = v677;
                sub_1D28718C8();
                sub_1D28780E8();
                (v687)(v425, 1, 1, v692);
                sub_1D2871D08();
                sub_1D22D6D4C(v421, v411);
                v413 = v426;
                v1 = v720;
                v414 = 0;
                v412 = v422;
              }

              v659(v413, v414, 1, v412);
            }

            else
            {
              v415 = *(v1 + 2272);
              v416 = *(v1 + 2264);
              v653 = *(v1 + 2256);
              v649 = *(v1 + 1456);
              v417 = *(v1 + 1448);
              v418 = *(v1 + 1432);
              v419 = *(v1 + 1384);
              v420 = *(v1 + 1352);
              *v417 = v416;
              v417[1] = v415;
              (v695)(v417, *MEMORY[0x1E699C5F0], v418);
              sub_1D22D6CF8(v416, v415);
              sub_1D22D6CF8(v416, v415);
              sub_1D2877FE8();
              v678 = v677;
              sub_1D28718C8();
              sub_1D28780E8();
              (v687)(v419, 1, 1, v692);
              sub_1D2871D08();
              v659(v420, 0, 1, v649);
              if (v653 >> 60 == 15)
              {
                sub_1D22D6D4C(*(v1 + 2264), *(v1 + 2272));
              }

              else
              {
                v428 = *(v1 + 2256);
                v429 = *(v1 + 2248);
                v654 = *(v1 + 1480);
                v660 = *(v1 + 1472);
                v709 = *(v1 + 1456);
                v430 = *(v1 + 1448);
                v431 = *(v1 + 1432);
                v432 = *(v1 + 1384);
                *v430 = v429;
                v417[1] = v428;
                (v695)(v430, *MEMORY[0x1E699C600], v431);
                sub_1D22D6CE4(v429, v428);
                sub_1D22D6CF8(v429, v428);
                sub_1D2877FE8();
                v433 = v678;
                sub_1D28718C8();
                sub_1D28780E8();
                (v687)(v432, 1, 1, v692);
                sub_1D2871D08();
                v635(v660, v654, v709);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v393 = sub_1D27CCEC4(0, v393[2] + 1, 1, v393);
                }

                v435 = v393[2];
                v434 = v393[3];
                if (v435 >= v434 >> 1)
                {
                  v393 = sub_1D27CCEC4(v434 > 1, v435 + 1, 1, v393);
                }

                v436 = *(v720 + 2272);
                v437 = *(v720 + 2264);
                v438 = *(v720 + 1480);
                v439 = *(v720 + 1472);
                v440 = *(v720 + 1464);
                v441 = *(v720 + 1456);
                sub_1D22D6D4C(*(v720 + 2248), *(v720 + 2256));
                sub_1D22D6D4C(v437, v436);
                (*(v440 + 8))(v438, v441);
                v1 = v720;
                v393[2] = v435 + 1;
                (*(v670 + 32))(v393 + ((*(v670 + 80) + 32) & ~*(v670 + 80)) + *(v670 + 72) * v435, v439, v441);
              }
            }

            *(v1 + 2416) = v393;
            v442 = *(v1 + 1168);
            v443 = *(v442 + 32);
            *(v1 + 2424) = v443;
            v444 = *(v442 + 40);
            *(v1 + 2432) = v444;
            v445 = *(v442 + 48);
            *(v1 + 2479) = v445;
            if (v445 == 255)
            {
            }

            else
            {
              if (v445)
              {

                sub_1D2415B1C(v443, v444, 1);
                (*(v1 + 2400))(*(v1 + 1336), 1, 1, *(v1 + 1456));
                v695 = v444;
                v701 = v443;
                if (v444 >> 60 == 15)
                {
                  v693 = 0;
                }

                else
                {
                  if (*(v1 + 2477) == 1)
                  {
                    v446 = *(v1 + 2320);
                    v447 = *(v1 + 2112);
                    v448 = *(v1 + 1664);
                    sub_1D22BD1D0(*(v1 + 2160), v447, &qword_1EC6D9A30);
                    v449 = v446(v447, 1, v448);
                    v450 = *(v1 + 2112);
                    if (v449 == 1)
                    {
                      sub_1D22D6CF8(v443, v444);
                      sub_1D22BD238(v450, &qword_1EC6D9A30);
                      goto LABEL_261;
                    }

                    v466 = *(v1 + 1256);
                    v467 = *(v1 + 1248);
                    v468 = *(v1 + 1240);
                    (*(*(v1 + 1672) + 32))(*(v1 + 1688), *(v1 + 2112), *(v1 + 1664));
                    sub_1D22D6CF8(v443, v444);
                    sub_1D2871F58();
                    if ((*(v466 + 48))(v468, 1, v467) == 1)
                    {
                      sub_1D22BD238(*(v1 + 1240), &qword_1EC6D9D58);
                      v469 = 0;
                      v470 = 0xE000000000000000;
                      goto LABEL_266;
                    }

LABEL_265:
                    v471 = *(v1 + 1272);
                    v472 = *(v1 + 1256);
                    v473 = *(v1 + 1248);
                    (*(v472 + 32))(v471, *(v1 + 1240), v473);
                    v469 = sub_1D2871ED8();
                    v470 = v474;
                    (*(v472 + 8))(v471, v473);
LABEL_266:
                    v475 = *(v1 + 1688);
                    v476 = *(v1 + 1672);
                    v477 = *(v1 + 1664);
                    v722 = v469;
                    v723 = v470;
                    sub_1D2870F68();
                    MEMORY[0x1D38A0C50](0x6465746165724320, 0xEE006567616D4920);

                    sub_1D2878058();
                    (*(v476 + 8))(v475, v477);
                  }

                  else
                  {
                    sub_1D22D6CF8(v443, v444);
LABEL_261:
                    sub_1D2877FE8();
                  }

                  v710 = *(v1 + 2400);
                  v655 = *(v1 + 2384);
                  v650 = *(v1 + 2376);
                  v478 = *(v1 + 2368);
                  v479 = *(v1 + 2352);
                  v480 = *(v1 + 1448);
                  v481 = *(v1 + 1432);
                  v482 = *(v1 + 1424);
                  v483 = *(v1 + 1416);
                  v484 = *(v1 + 1408);
                  v485 = *(v1 + 1400);
                  v486 = *(v720 + 1384);
                  v671 = *(v720 + 1368);
                  v684 = *(v720 + 1336);
                  v687 = *(v1 + 1456);
                  *v480 = v701;
                  v480[1] = v695;
                  v479(v480, *MEMORY[0x1E699C5F0], v481);
                  (*(v484 + 16))(v482, v483, v485);
                  v487 = v478;
                  sub_1D22D6CE4(v701, v695);
                  sub_1D28718C8();
                  sub_1D28780E8();
                  v693 = 1;
                  v655(v486, 1, 1, v650);
                  v1 = v720;
                  sub_1D2871D08();
                  sub_1D22D6D4C(v701, v695);
                  (*(v484 + 8))(v483, v485);
                  sub_1D22BD238(v684, &qword_1EC6DB160);
                  v710(v671, 0, 1, v687);
                  sub_1D22EC9BC(v671, v684, &qword_1EC6DB160);
                }

LABEL_268:
                v488 = *(v1 + 2312);
                v489 = *(v1 + 2296);
                v120 = *(v1 + 2478);
                v490 = *(v1 + 2476);
                v491 = *(v1 + 2475);
                v492 = *(v1 + 2160);
                v493 = *(v1 + 2152);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB188);
                v494 = swift_allocObject();
                *(v494 + 16) = xmmword_1D2880100;
                *(v494 + 32) = 0xD000000000000013;
                *(v494 + 40) = 0x80000001D28B5B10;
                *(v494 + 48) = v490;
                *(v494 + 56) = 0xD000000000000017;
                *(v494 + 64) = 0x80000001D28B5B30;
                *(v494 + 72) = v491;
                *(v494 + 80) = 0xD00000000000001ALL;
                *(v494 + 88) = 0x80000001D28B5B50;
                v718 = v488;
                *(v494 + 96) = *(v488 + 16);
                *(v494 + 104) = 0xD000000000000016;
                *(v494 + 112) = 0x80000001D28B5B70;
                v33 = *(v489 + 16);

                *(v494 + 120) = v33;
                *(v494 + 128) = 0xD000000000000016;
                *(v494 + 136) = 0x80000001D28B5B90;
                *(v494 + 144) = v120;
                v495 = sub_1D25D9520(v494);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB190);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                v725 = v495;
                sub_1D22BD1D0(v492, v493, &qword_1EC6D9A30);
                result = sub_1D24198DC(v493);
                if (result != 6)
                {
                  v496 = result;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v722 = v495;
                  result = sub_1D24E91F8(v496 + 1, 0x656C797473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
                  v725 = v495;
                }

                v498 = *(*(v1 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved);
                if (v498 != 2)
                {
                  result = sub_1D25CF12C(v498 & 1, 0, 0x6576615372657375, 0xEB00000000744964);
                }

                v499 = *(v488 + 16);
                if (!v499)
                {
LABEL_294:

LABEL_298:
                  v685 = *(v1 + 2320);
                  v529 = *(v1 + 2475);
                  v530 = *(v1 + 2160);
                  v661 = v530;
                  v672 = *(v1 + 2104);
                  v679 = *(v1 + 1664);
                  v531 = *(v1 + 1368);
                  v532 = *(v1 + 1352);
                  v533 = *(v1 + 1336);
                  v534 = *(v1 + 1328);
                  v535 = *(v1 + 1224);
                  v536 = *(v720 + 1216);
                  v537 = *(v720 + 1208);
                  v538 = *(v720 + 1200);
                  v719 = *(v720 + 1184);
                  v656 = *(v720 + 1176);
                  sub_1D2415184((v720 + 2473), v530, *(v720 + 1168), v535);
                  (*(v537 + 16))(v536, v535, v538);
                  sub_1D22BD1D0(v532, v531, &qword_1EC6DB160);
                  sub_1D22BD1D0(v533, v534, &qword_1EC6DB160);
                  v539 = objc_allocWithZone(sub_1D2871C98());
                  v712 = sub_1D2871C88();
                  v540 = 0xD000000000000014;
                  if (v529)
                  {
                    v541 = "personalization_false";
                  }

                  else
                  {
                    v540 = 0xD000000000000015;
                    v541 = "person_image_not_generated";
                  }

                  v542 = 0xD000000000000013;
                  if (v529)
                  {
                    v542 = 0xD00000000000001ALL;
                    v543 = ":third_party_model";
                  }

                  else
                  {
                    v543 = "is_generic_person_used";
                  }

                  if (v693)
                  {
                    v544 = v540;
                  }

                  else
                  {
                    v544 = v542;
                  }

                  if (v693)
                  {
                    v545 = v541;
                  }

                  else
                  {
                    v545 = v543;
                  }

                  v546 = v545 | 0x8000000000000000;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB198);
                  v547 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1A0) - 8);
                  v548 = (*(*v547 + 80) + 32) & ~*(*v547 + 80);
                  v549 = swift_allocObject();
                  *(v549 + 16) = v663;
                  v550 = v549 + v548;
                  v551 = v547[14];
                  strcpy((v549 + v548), ":sub_feature");
                  *(v550 + 13) = 0;
                  *(v550 + 14) = -5120;
                  v552 = *MEMORY[0x1E699C650];
                  v553 = *(v719 + 104);
                  v553(v550, v552, v656);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
                  v554 = swift_allocObject();
                  *(v554 + 16) = v663;
                  *(v554 + 32) = v544;
                  *(v554 + 40) = v546;
                  *(v550 + v551) = v554;
                  v555 = sub_1D25D961C(v549);
                  swift_setDeallocating();
                  sub_1D22BD238(v550, &qword_1EC6DB1A0);
                  swift_deallocClassInstance();
                  v722 = v555;
                  sub_1D22BD1D0(v661, v672, &qword_1EC6D9A30);
                  if (v685(v672, 1, v679) == 1)
                  {
                    sub_1D22BD238(*(v720 + 2104), &qword_1EC6D9A30);
                  }

                  else
                  {
                    (*(*(v720 + 1672) + 32))(*(v720 + 1680), *(v720 + 2104), *(v720 + 1664));
                    if (sub_1D2871F78())
                    {
                      v558 = *(v720 + 1256);
                      v559 = *(v720 + 1248);
                      v560 = *(v720 + 1232);
                      v561 = *(v720 + 1192);
                      v562 = *(v720 + 1176);
                      *v561 = 0xD000000000000012;
                      v561[1] = 0x80000001D28B5BD0;
                      (v553)(v561, v552, v562, v556, v557);
                      v563 = swift_allocObject();
                      *(v563 + 16) = v663;
                      sub_1D2871F58();
                      if ((*(v558 + 48))(v560, 1, v559) == 1)
                      {
                        sub_1D22BD238(*(v720 + 1232), &qword_1EC6D9D58);
                        v564 = 0;
                        v565 = 0xE000000000000000;
                      }

                      else
                      {
                        v566 = *(v720 + 1264);
                        v567 = *(v720 + 1256);
                        v568 = *(v720 + 1248);
                        (*(v567 + 32))(v566, *(v720 + 1232), v568);
                        v564 = sub_1D2871ED8();
                        v565 = v569;
                        (*(v567 + 8))(v566, v568);
                      }

                      v570 = *(v720 + 1680);
                      v571 = *(v720 + 1672);
                      v572 = *(v720 + 1664);
                      v573 = *(v720 + 1192);
                      *(v563 + 32) = v564;
                      *(v563 + 40) = v565;
                      sub_1D25CF218(v563, v573);
                      (*(v571 + 8))(v570, v572);
                    }

                    else
                    {
                      (*(*(v720 + 1672) + 8))(*(v720 + 1680), *(v720 + 1664));
                    }
                  }

                  v644 = *(v720 + 2280);
                  v646 = *(v720 + 2288);
                  v638 = *(v720 + 2272);
                  v574 = *(v720 + 2264);
                  v575 = *(v720 + 2256);
                  v576 = *(v720 + 2248);
                  v577 = *(v720 + 2184);
                  v689 = *(v720 + 2176);
                  v694 = *(v720 + 2192);
                  v680 = *(v720 + 1520);
                  v686 = *(v720 + 2160);
                  v578 = *(v720 + 1512);
                  v673 = *(v720 + 1504);
                  v579 = *(v720 + 1464);
                  v662 = *(v720 + 1456);
                  v665 = *(v720 + 1496);
                  v657 = *(v720 + 1376);
                  v651 = *(v720 + 1352);
                  v641 = *(v720 + 1336);
                  v580 = *(v720 + 1224);
                  v581 = *(v720 + 1208);
                  v582 = *(v720 + 1200);
                  v583 = v712;
                  sub_1D2871D38();
                  v717 = v583;

                  sub_1D22D6D4C(v701, v695);
                  sub_1D22D6D4C(v576, v575);
                  sub_1D22D6D4C(v574, v638);
                  sub_1D22D6D4C(v644, v646);
                  v584 = v580;
                  v1 = v720;
                  (*(v581 + 8))(v584, v582);
                  sub_1D22BD238(v641, &qword_1EC6DB160);
                  sub_1D22BD238(v651, &qword_1EC6DB160);
                  sub_1D22BD238(v657, &qword_1EC6DB160);
                  (*(v579 + 8))(v665, v662);
                  (*(v578 + 8))(v680, v673);
                  sub_1D22BD238(v686, &qword_1EC6D9A30);
                  (*(v577 + 8))(v694, v689);
                  goto LABEL_215;
                }

                v500 = 0;
                v711 = *(v1 + 1760);
                v501 = *(v1 + 1752);
LABEL_277:
                if (v500 >= *(v718 + 16))
                {
                  goto LABEL_323;
                }

                sub_1D2415B8C(*(v1 + 2312) + ((*(v501 + 80) + 32) & ~*(v501 + 80)) + *(v501 + 72) * v500, *(v1 + 1760), type metadata accessor for CuratedPrompt);
                if (v500 == 8)
                {

                  sub_1D28726D8();
                  v521 = sub_1D2873CA8();
                  v522 = sub_1D2878A18();
                  v523 = os_log_type_enabled(v521, v522);
                  v524 = *(v1 + 1832);
                  v525 = *(v1 + 1808);
                  v526 = *(v1 + 1800);
                  v527 = *(v1 + 1760);
                  if (v523)
                  {
                    v528 = swift_slowAlloc();
                    *v528 = 0;
                    _os_log_impl(&dword_1D226E000, v521, v522, "Tried to log more than 8 bubbles in feedback auxiliary metrics", v528, 2u);
                    MEMORY[0x1D38A3520](v528, -1, -1);
                  }

                  (*(v525 + 8))(v524, v526);
                  sub_1D2415C9C(v527, type metadata accessor for CuratedPrompt);
                  goto LABEL_298;
                }

                ++v500;
                v120 = *(v1 + 1760);
                v722 = 0x4449656C62627562;
                v723 = 0xE800000000000000;
                *(v1 + 1152) = v500;
                v502 = sub_1D28795C8();
                MEMORY[0x1D38A0C50](v502);

                v33 = v722;
                v503 = v723;
                v504 = *v120;
                v505 = *(v711 + 8);
                sub_1D2870F68();
                v506 = sub_1D23BD628(v504, v505);
                v507 = v725;
                if (v508)
                {
                  v509 = sub_1D25D0410(v722, v723);
                  v511 = v510;

                  if (v511)
                  {
                    v722 = v725;
                    if (!swift_isUniquelyReferenced_nonNull_native())
                    {
                      sub_1D24EDCBC();
                      v507 = v722;
                    }

                    sub_1D25D4FD0(v509, v507);
                    goto LABEL_275;
                  }

                  goto LABEL_276;
                }

                v512 = v506;
                v1 = swift_isUniquelyReferenced_nonNull_native();
                v722 = v725;
                result = sub_1D25D0410(v33, v723);
                v513 = *(v725 + 16);
                v514 = (v119 & 1) == 0;
                v124 = __OFADD__(v513, v514);
                v515 = v513 + v514;
                if (v124)
                {
                  goto LABEL_325;
                }

                v516 = v119;
                if (*(v725 + 24) >= v515)
                {
                  if (v1)
                  {
                    goto LABEL_289;
                  }

                  v120 = result;
                  sub_1D24EDCBC();
                  result = v120;
                  v507 = v722;
                  v1 = v720;
                  if ((v516 & 1) == 0)
                  {
LABEL_290:
                    v507[(result >> 6) + 8] |= 1 << result;
                    v518 = (v507[6] + 16 * result);
                    *v518 = v33;
                    v518[1] = v503;
                    *(v507[7] + 8 * result) = v512;
                    v519 = v507[2];
                    v124 = __OFADD__(v519, 1);
                    v520 = v519 + 1;
                    if (v124)
                    {
                      continue;
                    }

                    v507[2] = v520;
LABEL_275:
                    v725 = v507;
LABEL_276:
                    result = sub_1D2415C9C(*(v1 + 1760), type metadata accessor for CuratedPrompt);
                    if (v499 == v500)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_277;
                  }
                }

                else
                {
                  sub_1D24E3658(v515, v1);
                  v507 = v722;
                  result = sub_1D25D0410(v33, v723);
                  if ((v516 & 1) != (v517 & 1))
                  {
                    goto LABEL_316;
                  }

LABEL_289:
                  v1 = v720;
                  if ((v516 & 1) == 0)
                  {
                    goto LABEL_290;
                  }
                }

                *(v507[7] + 8 * result) = v512;

                goto LABEL_275;
              }

              sub_1D28726D8();
              v451 = sub_1D2873CA8();
              v452 = sub_1D2878A08();
              if (os_log_type_enabled(v451, v452))
              {
                v453 = swift_slowAlloc();
                *v453 = 0;
                _os_log_impl(&dword_1D226E000, v451, v452, "Was provided asset type, will build data", v453, 2u);
                MEMORY[0x1D38A3520](v453, -1, -1);
              }

              v454 = *(v1 + 1848);
              v455 = *(v1 + 1808);
              v456 = *(v1 + 1800);

              v457 = *(v455 + 8);
              v457(v454, v456);
              if (v443)
              {
                sub_1D2415B28(v443, v444, v445);
                sub_1D2873A08();
                *(v1 + 2440) = sub_1D2878558();
                v458 = swift_task_alloc();
                *(v1 + 2448) = v458;
                *v458 = v1;
                v458[1] = sub_1D2410A28;
                v459 = *(v1 + 1280);

                return (sub_1D270BEC8)(v459, 1, 0);
              }

              sub_1D28726D8();
              v460 = sub_1D2873CA8();
              v461 = sub_1D2878A18();
              v462 = os_log_type_enabled(v460, v461);
              v463 = *(v1 + 1840);
              v464 = *(v1 + 1800);
              if (v462)
              {
                v465 = swift_slowAlloc();
                *v465 = 0;
                _os_log_impl(&dword_1D226E000, v460, v461, "Photo asset is nil", v465, 2u);
                MEMORY[0x1D38A3520](v465, -1, -1);
              }

              v457(v463, v464);
            }

            break;
          }

          (*(v1 + 2400))(*(v1 + 1336), 1, 1, *(v1 + 1456));
          v693 = 0;
          v695 = 0xF000000000000000;
          v701 = 0;
          goto LABEL_268;
        }

        LODWORD(v593) = HIDWORD(v585) - v585;
        if (__OFSUB__(HIDWORD(v585), v585))
        {
          goto LABEL_340;
        }

        v593 = v593;
LABEL_336:
        *(result + 4) = v593;
        sub_1D22D6D4C(v585, v587);
        _os_log_impl(&dword_1D226E000, v588, v589, "Not donating the generation because the imported image is too large to give to feedbackd (%ld bytes)", v590, 0xCu);
        MEMORY[0x1D38A3520](v590, -1, -1);

        sub_1D22D6D4C(v636, v635);
        sub_1D22D6D4C(v33, v637);
        sub_1D22D6D4C(v687, v611);
        sub_1D22D6D4C(v585, v587);
        v1 = v720;
      }

      else
      {

        sub_1D22D6D4C(v636, v635);
        sub_1D22D6D4C(v33, v637);
        sub_1D22D6D4C(v687, v611);
        sub_1D22D6D4C(v585, v587);
        sub_1D22D6D60(v585, v587);
      }

      v594 = *(v1 + 2192);
      v595 = *(v1 + 2184);
      v596 = *(v1 + 2176);
      v597 = *(v1 + 2160);
      v598 = *(v1 + 1880);
      v599 = *(v1 + 1864);
      (*(*(v1 + 1808) + 8))(*(v1 + 1856), *(v1 + 1800));
      (*v606)(v598, v599);
      sub_1D22BD238(v597, &qword_1EC6D9A30);
      (*(v595 + 8))(v594, v596);
LABEL_214:
      v717 = 0;
LABEL_215:

      v395 = *(v1 + 8);

      return v395(v717);
    }

    if (v120)
    {
      LODWORD(v121) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v121 = v121;
        goto LABEL_61;
      }

LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
      return result;
    }

LABEL_62:
    v125 = v119;
    v126 = result;
    v127 = sub_1D2872238();
    v129 = v128;
    sub_1D22D6D4C(v33, v637);
    sub_1D22D6D4C(v126, v125);
    v33 = v127;
    v637 = v129;
LABEL_63:
    v22 = v35 + 1;
    (*v606)(*(v1 + 1880), *(v1 + 1864));
    v130 = v608 == v35;
    v19 = 1;
    v30 = v635;
    v20 = v636;
    v31 = v637;
    v21 = v687;
    v32 = v611;
    if (!v130)
    {
      continue;
    }

    break;
  }

LABEL_68:
  v131 = v32;

  *(v1 + 2304) = v713;
  *(v1 + 2296) = v666;
  *(v1 + 2288) = v131;
  *(v1 + 2280) = v21;
  *(v1 + 2272) = v31;
  *(v1 + 2264) = v33;
  *(v1 + 2256) = v30;
  *(v1 + 2248) = v20;
  *(v1 + 2478) = v627;
  *(v1 + 2477) = v633 & 1;
  *(v1 + 2476) = v19 & 1;
  *(v1 + 2475) = v621 & 1;
  *(v1 + 2240) = 0;
  v132 = *(v713 + 2);
  if (v132)
  {
    v699 = *(v1 + 1752);
    v133 = (v713 + 40);
    v134 = MEMORY[0x1E69E7CC0];
    do
    {
      v135 = *(v1 + 1744);
      v136 = v1;
      v137 = *(v1 + 1736);
      v139 = *(v133 - 1);
      v138 = *v133;
      sub_1D2870F68();
      sub_1D23C7858();
      sub_1D26D06B4(v139, v138, v137);

      if ((*(v699 + 48))(v137, 1, v135) == 1)
      {
        sub_1D22BD238(v136[217], &qword_1EC6DA210);
        v1 = v136;
      }

      else
      {
        v140 = v136[224];
        v141 = v136[223];
        sub_1D2415C34(v136[217], v140, type metadata accessor for CuratedPrompt);
        sub_1D2415B8C(v140, v141, type metadata accessor for CuratedPrompt);
        v1 = v136;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_1D27CCA98(0, v134[2] + 1, 1, v134);
        }

        v143 = v134[2];
        v142 = v134[3];
        if (v143 >= v142 >> 1)
        {
          v134 = sub_1D27CCA98(v142 > 1, v143 + 1, 1, v134);
        }

        v144 = v136[223];
        sub_1D2415C9C(v136[224], type metadata accessor for CuratedPrompt);
        v134[2] = v143 + 1;
        sub_1D2415C34(v144, v134 + ((*(v699 + 80) + 32) & ~*(v699 + 80)) + *(v699 + 72) * v143, type metadata accessor for CuratedPrompt);
      }

      v133 += 2;
      --v132;
    }

    while (v132);
  }

  else
  {
    v134 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 2312) = v134;
  v145 = *(v720 + 2160);
  v146 = *(v720 + 2144);
  v147 = *(v720 + 1728);
  v148 = *(v720 + 1720);
  v149 = *(v720 + 1672);
  v150 = *(v720 + 1664);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA758);
  v151 = swift_allocObject();
  v663 = xmmword_1D287F500;
  *(v151 + 16) = xmmword_1D287F500;
  *(v151 + 32) = 0x74706D6F7270;
  *(v151 + 40) = 0xE600000000000000;
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  *(v151 + 72) = v682;
  *(v151 + 48) = v666;
  sub_1D2870F68();
  v675 = sub_1D25D7270(v151);
  swift_setDeallocating();
  sub_1D22BD238(v151 + 32, &qword_1EC6DA760);
  swift_deallocClassInstance();
  sub_1D2871FC8();
  v624(v146, 0, 1, v150);
  v152 = *(v148 + 48);
  v153 = v145;
  v1 = v720;
  sub_1D22BD1D0(v153, v147, &qword_1EC6D9A30);
  sub_1D22BD1D0(v146, v147 + v152, &qword_1EC6D9A30);
  v154 = *(v149 + 48);
  *(v720 + 2320) = v154;
  *(v720 + 2328) = (v149 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v690 = v154;
  if (v154(v147, 1, v150) == 1)
  {
    v155 = *(v720 + 1664);
    sub_1D22BD238(*(v720 + 2144), &qword_1EC6D9A30);
    if (v154(v147 + v152, 1, v155) == 1)
    {
      sub_1D22BD238(*(v720 + 1728), &qword_1EC6D9A30);
      goto LABEL_86;
    }

LABEL_84:
    sub_1D22BD238(*(v720 + 1728), &unk_1EC6E1D60);
    goto LABEL_89;
  }

  v156 = *(v720 + 1664);
  sub_1D22BD1D0(*(v720 + 1728), *(v720 + 2136), &qword_1EC6D9A30);
  v157 = v154(v147 + v152, 1, v156);
  v158 = *(v720 + 2144);
  v159 = *(v720 + 2136);
  if (v157 == 1)
  {
    v160 = *(v720 + 1672);
    v161 = *(v720 + 1664);
    sub_1D22BD238(*(v720 + 2144), &qword_1EC6D9A30);
    (*(v160 + 8))(v159, v161);
    goto LABEL_84;
  }

  v162 = *(v720 + 1728);
  v163 = *(v720 + 1712);
  v164 = *(v720 + 1672);
  v165 = *(v720 + 1664);
  (*(v164 + 32))(v163, v147 + v152, v165);
  sub_1D2415D48(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v166 = sub_1D2877F98();
  v167 = *(v164 + 8);
  v167(v163, v165);
  sub_1D22BD238(v158, &qword_1EC6D9A30);
  v167(v159, v165);
  v1 = v720;
  sub_1D22BD238(v162, &qword_1EC6D9A30);
  if (v166)
  {
LABEL_86:
    v168 = *(*(v1 + 1168) + 24);
    if (!v168)
    {
      goto LABEL_89;
    }

    v169 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
    swift_beginAccess();
    v170 = *(v168 + v169);
    v171 = *(v170 + 16);
    if (v171)
    {
      v172 = *(v1 + 1776);
      v173 = *(v1 + 1752);
      v174 = *(v1 + 1744);
      v175 = v170 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
      v714 = *(v173 + 72);
      v695 = (v172 + 8);
      sub_1D2870F78();
      sub_1D2870F68();
      v176 = MEMORY[0x1E69E7CC0];
      v687 = MEMORY[0x1E69E7CC0];
      v700 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D2415B8C(v175, *(v1 + 1776), type metadata accessor for CuratedPrompt);
        if (*(v172 + 48 + *(v174 + 92)) == 255)
        {
          v225 = *(v172 + 16);
          v226 = *(v172 + 24);
          sub_1D2870F68();
          v230 = v700;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v230 = sub_1D27CC674(0, *(v700 + 2) + 1, 1, v700);
          }

          v228 = *(v230 + 2);
          v231 = *(v230 + 3);
          v229 = v228 + 1;
          if (v228 >= v231 >> 1)
          {
            v221 = sub_1D27CC674((v231 > 1), v228 + 1, 1, v230);
            v700 = v221;
          }

          else
          {
            v700 = v230;
            v221 = v230;
          }
        }

        else
        {
          v224 = *&v695[*(v174 + 48)];
          v225 = *(v172 + 16);
          v226 = *(v172 + 24);
          sub_1D2870F68();
          if (v224)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v176 = sub_1D27CC674(0, *(v176 + 2) + 1, 1, v176);
            }

            v228 = *(v176 + 2);
            v227 = *(v176 + 3);
            v229 = v228 + 1;
            if (v228 >= v227 >> 1)
            {
              v221 = sub_1D27CC674((v227 > 1), v228 + 1, 1, v176);
              v176 = v221;
            }

            else
            {
              v221 = v176;
            }
          }

          else
          {
            v232 = v687;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v232 = sub_1D27CC674(0, *(v687 + 16) + 1, 1, v687);
            }

            v228 = *(v232 + 2);
            v233 = *(v232 + 3);
            v229 = v228 + 1;
            if (v228 >= v233 >> 1)
            {
              v221 = sub_1D27CC674((v233 > 1), v228 + 1, 1, v232);
              v687 = v221;
            }

            else
            {
              v687 = v232;
              v221 = v232;
            }
          }
        }

        v1 = v720;
        v222 = *(v720 + 1776);
        *(v221 + 2) = v229;
        v223 = &v221[16 * v228];
        *(v223 + 4) = v225;
        *(v223 + 5) = v226;
        sub_1D2415C9C(v222, type metadata accessor for CuratedPrompt);
        v175 += v714;
        --v171;
      }

      while (v171);

      v213 = v700;
      v212 = v687;
    }

    else
    {
      sub_1D2870F78();
      v176 = MEMORY[0x1E69E7CC0];
      v212 = MEMORY[0x1E69E7CC0];
      v213 = MEMORY[0x1E69E7CC0];
    }

    v1 = v720;
    *(v720 + 992) = v682;
    *(v720 + 968) = v176;
    sub_1D23C3FAC((v720 + 968), (v720 + 776));
    v234 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E935C((v720 + 776), 0x73696A6F6D65, 0xE600000000000000, v234);
    *(v720 + 672) = v682;
    *(v720 + 648) = v212;
    sub_1D23C3FAC((v1 + 648), (v1 + 296));
    v235 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E935C((v720 + 296), 0x73696A6F6D6E6567, 0xE800000000000000, v235);
    *(v720 + 224) = v682;
    *(v720 + 200) = v213;
    sub_1D23C3FAC((v1 + 200), (v1 + 1000));
    v236 = swift_isUniquelyReferenced_nonNull_native();
    v722 = v675;
    sub_1D24E935C((v720 + 1000), 0x73746365666665, 0xE700000000000000, v236);

    v120 = v675;
    v154 = v690;
    if (!v627)
    {
LABEL_135:
      v211 = v634;
      goto LABEL_136;
    }
  }

  else
  {
LABEL_89:
    v177 = v134[2];
    v178 = MEMORY[0x1E69E7CC0];
    if (v177)
    {
      v179 = *(v1 + 1768);
      v180 = *(v1 + 1752);
      v722 = MEMORY[0x1E69E7CC0];
      sub_1D23D81B8(0, v177, 0);
      v178 = v722;
      v181 = v134 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
      v182 = *(v180 + 72);
      do
      {
        v183 = *(v1 + 1768);
        sub_1D2415B8C(v181, v183, type metadata accessor for CuratedPrompt);
        v185 = *(v179 + 16);
        v184 = *(v179 + 24);
        sub_1D2870F68();
        sub_1D2415C9C(v183, type metadata accessor for CuratedPrompt);
        v722 = v178;
        v187 = *(v178 + 16);
        v186 = *(v178 + 24);
        if (v187 >= v186 >> 1)
        {
          sub_1D23D81B8((v186 > 1), v187 + 1, 1);
          v178 = v722;
        }

        *(v178 + 16) = v187 + 1;
        v188 = v178 + 16 * v187;
        *(v188 + 32) = v185;
        *(v188 + 40) = v184;
        v181 += v182;
        --v177;
        v1 = v720;
      }

      while (v177);
      v154 = v690;
    }

    *(v1 + 960) = v682;
    *(v1 + 936) = v178;
    sub_1D23C3FAC((v1 + 936), (v1 + 680));
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v722 = v675;
    sub_1D24E935C((v1 + 680), 0x73746365666665, 0xE700000000000000, v189);
    v120 = v675;
    if (!v627)
    {
      goto LABEL_135;
    }
  }

  v190 = v120;
  v191 = *(*(v1 + 1168) + 24);
  if (!v191)
  {
    *(v1 + 88) = 0;
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
    goto LABEL_102;
  }

  v192 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v191 + v192, v1 + 56, &qword_1EC6D9A58);
  if (!*(v1 + 80))
  {
LABEL_102:
    v208 = *(v1 + 2016);
    v209 = *(v1 + 1648);
    v210 = *(v1 + 1640);
    sub_1D22BD238(v1 + 56, &qword_1EC6D9A58);
    (*(v209 + 56))(v208, 1, 1, v210);
    goto LABEL_103;
  }

  v193 = *(v1 + 2016);
  v194 = *(v1 + 1648);
  v195 = *(v1 + 1640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v196 = swift_dynamicCast();
  (*(v194 + 56))(v193, v196 ^ 1u, 1, v195);
  if ((*(v194 + 48))(v193, 1, v195) == 1)
  {
LABEL_103:
    sub_1D22BD238(*(v1 + 2016), &unk_1EC6DDDA0);
    v211 = v634;
    v120 = v190;
    goto LABEL_136;
  }

  v197 = *(v1 + 1656);
  v198 = *(v1 + 1640);
  v199 = *(v1 + 1632);
  v200 = *(v1 + 1624);
  sub_1D2415C34(*(v1 + 2016), v197, type metadata accessor for CharacterAsset);
  v201 = *(v198 + 24);
  sub_1D2415B8C(v197 + v201, v199, type metadata accessor for CharacterRecipe);
  v202 = *(v200 + 20);
  v203 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v205 = v204;
  sub_1D2415C9C(v199 + v202, type metadata accessor for ImageGenerationPerson.SkinTone);
  if (*(v197 + v201) == 3)
  {
    v206 = 0xEB00000000646569;
    v207 = 0x6669636570736E75;
  }

  else
  {
    v207 = sub_1D2873768();
    v206 = v214;
  }

  v215 = *(v720 + 1656);
  if (*(v215 + *(*(v720 + 1640) + 28)))
  {
    v216 = 1702195828;
  }

  else
  {
    v216 = 0x65736C6166;
  }

  if (*(v215 + *(*(v720 + 1640) + 28)))
  {
    v217 = 0xE400000000000000;
  }

  else
  {
    v217 = 0xE500000000000000;
  }

  v722 = v207;
  v723 = v206;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](45, 0xE100000000000000);
  v1 = v720;

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v203, v205);

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](45, 0xE100000000000000);

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v216, v217);

  v218 = v722;
  v219 = v723;
  *(v720 + 192) = MEMORY[0x1E69E6158];
  *(v720 + 168) = v218;
  *(v720 + 176) = v219;
  sub_1D23C3FAC((v1 + 168), (v1 + 136));
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v722 = v190;
  sub_1D24E935C((v720 + 136), 0xD000000000000018, 0x80000001D28B5D60, v220);
  sub_1D2415C9C(v215, type metadata accessor for CharacterAsset);
  v120 = v190;
  v211 = v634;
  v154 = v690;
LABEL_136:
  if (!v211)
  {
    goto LABEL_160;
  }

  v237 = v211 + 64;
  v238 = -1;
  v239 = -1 << *(v211 + 32);
  if (-v239 < 64)
  {
    v238 = ~(-1 << -v239);
  }

  v240 = v238 & *(v211 + 64);
  v241 = (63 - v239) >> 6;
  sub_1D2870F68();
  sub_1D2870F68();
  v242 = 0;
  v701 = v120;
  v705 = v211 + 64;
  while (v240)
  {
    v245 = v242;
LABEL_147:
    v246 = __clz(__rbit64(v240)) | (v245 << 6);
    v247 = *(*(v211 + 48) + v246);
    v248 = (*(v211 + 56) + 32 * v246);
    v249 = *v248;
    v250 = v248[1];
    *(v1 + 2472) = v247;
    sub_1D2870F68();
    sub_1D2870F68();
    v251 = sub_1D2878118();
    v252 = v1;
    v1 = v251;
    v33 = v253;
    *(v252 + 832) = MEMORY[0x1E69E6158];
    *(v252 + 808) = v249;
    *(v252 + 816) = v250;
    sub_1D23C3FAC((v252 + 808), (v252 + 840));
    sub_1D2870F68();
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v722 = v120;
    result = sub_1D25D0410(v1, v33);
    v255 = v120[2];
    v256 = (v119 & 1) == 0;
    v124 = __OFADD__(v255, v256);
    v257 = v255 + v256;
    if (v124)
    {
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
      goto LABEL_326;
    }

    v258 = v119;
    if (v120[3] >= v257)
    {
      if ((v254 & 1) == 0)
      {
        v263 = result;
        sub_1D24EDE24();
        result = v263;
      }
    }

    else
    {
      sub_1D24E38F8(v257, v254);
      result = sub_1D25D0410(v1, v33);
      if ((v258 & 1) != (v259 & 1))
      {
LABEL_316:

        return sub_1D28796E8();
      }
    }

    v240 &= v240 - 1;
    if (v258)
    {
      v243 = result;

      v120 = v722;
      v244 = (*(v722 + 56) + 32 * v243);
      __swift_destroy_boxed_opaque_existential_0(v244);
      v1 = v720;
      sub_1D23C3FAC((v720 + 840), v244);
    }

    else
    {
      v120 = v722;
      *(v722 + 8 * (result >> 6) + 64) |= 1 << result;
      v260 = (v120[6] + 16 * result);
      *v260 = v1;
      v260[1] = v33;
      v1 = v720;
      sub_1D23C3FAC((v720 + 840), (v120[7] + 32 * result));

      v261 = v120[2];
      v124 = __OFADD__(v261, 1);
      v262 = v261 + 1;
      if (v124)
      {
        goto LABEL_324;
      }

      v120[2] = v262;
    }

    v242 = v245;
    v211 = v634;
    v237 = v705;
  }

  while (1)
  {
    v245 = v242 + 1;
    if (__OFADD__(v242, 1))
    {
      __break(1u);
      goto LABEL_265;
    }

    if (v245 >= v241)
    {
      break;
    }

    v240 = *(v237 + 8 * v245);
    ++v242;
    if (v240)
    {
      goto LABEL_147;
    }
  }

  if (v616)
  {
    sub_1D2870F68();
    sub_1D238D058(v211);
    *(v1 + 896) = MEMORY[0x1E69E6158];
    *(v1 + 872) = v615;
    *(v1 + 880) = v616;
    sub_1D23C3FAC((v1 + 872), (v1 + 904));
    v264 = swift_isUniquelyReferenced_nonNull_native();
    v722 = v120;
    sub_1D24E935C((v1 + 904), 0xD000000000000025, 0x80000001D28B5D30, v264);
  }

  else
  {
    sub_1D238D058(v211);
  }

  v154 = v690;
LABEL_160:
  *(v1 + 2336) = v120;
  if ((v633 & 1) != 0 || !os_variant_has_internal_diagnostics())
  {
    v267 = v120;
    goto LABEL_165;
  }

  v265 = *(v1 + 2128);
  v266 = *(v1 + 1664);
  sub_1D22BD1D0(*(v1 + 2160), v265, &qword_1EC6D9A30);
  if (v154(v265, 1, v266) == 1)
  {
    v267 = v120;
    sub_1D22BD238(*(v1 + 2128), &qword_1EC6D9A30);
    goto LABEL_165;
  }

  v296 = *(v1 + 1168);
  (*(*(v1 + 1672) + 32))(*(v1 + 1704), *(v1 + 2128), *(v1 + 1664));
  v297 = v296 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  swift_beginAccess();
  if (!*(v297 + 24))
  {
    v337 = *(v1 + 1608);
    v338 = *(v1 + 1600);
    v339 = *(v1 + 1592);
    (*(*(v1 + 1672) + 8))(*(v1 + 1704), *(v1 + 1664));
    swift_endAccess();
    (*(v337 + 56))(v339, 1, 1, v338);
    sub_1D22BD238(*(v1 + 1592), &qword_1EC6DA448);
    v267 = *(v1 + 2336);
LABEL_165:
    v268 = *(*(v1 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification);
    if (v268)
    {
      *(v1 + 608) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA630);
      *(v1 + 584) = v268;
      sub_1D23C3FAC((v1 + 584), (v1 + 616));
      sub_1D2870F68();
      v269 = swift_isUniquelyReferenced_nonNull_native();
      v722 = v267;
      sub_1D24E935C((v1 + 616), 0xD00000000000001BLL, 0x80000001D28B5A70, v269);
    }

    v270 = *(v1 + 2240);
    v271 = sub_1D27BA2D4();
    *(v1 + 1128) = 20035;
    *(v1 + 1136) = 0xE200000000000000;
    v272 = swift_task_alloc();
    *(v272 + 16) = v1 + 1128;
    v273 = sub_1D286430C(sub_1D234ABBC, v272, v271);

    if ((v273 & 1) == 0)
    {
      v274 = *(v1 + 1168);
      v275 = *(v274 + 80);
      if (v275)
      {
        v276 = *(v274 + 72);
        *(v1 + 544) = MEMORY[0x1E69E6158];
        *(v1 + 520) = v276;
        *(v1 + 528) = v275;
        sub_1D23C3FAC((v1 + 520), (v1 + 552));
        sub_1D2870F68();
        v277 = swift_isUniquelyReferenced_nonNull_native();
        v722 = v267;
        sub_1D24E935C((v1 + 552), 0xD000000000000010, 0x80000001D28B5A20, v277);
      }
    }

    v278 = *(v1 + 2320);
    v279 = *(v1 + 2120);
    v280 = *(v1 + 1664);
    sub_1D22BD1D0(*(v1 + 2160), v279, &qword_1EC6D9A30);
    if (v278(v279, 1, v280) == 1)
    {
      sub_1D22BD238(*(v1 + 2120), &qword_1EC6D9A30);
    }

    else
    {
      (*(*(v1 + 1672) + 32))(*(v1 + 1696), *(v1 + 2120), *(v1 + 1664));
      v281 = sub_1D2871F78();
      v282 = *(v1 + 1696);
      v283 = *(v1 + 1672);
      v284 = *(v1 + 1664);
      if (v281)
      {
        v285 = sub_1D24DC8F0();
        *(v1 + 480) = MEMORY[0x1E69E6158];
        *(v1 + 456) = v285;
        *(v1 + 464) = v286;
        sub_1D23C3FAC((v1 + 456), (v1 + 488));
        v287 = swift_isUniquelyReferenced_nonNull_native();
        v722 = v267;
        sub_1D24E935C((v1 + 488), 0x656C797473, 0xE500000000000000, v287);
        (*(v283 + 8))(v282, v284);
        v288 = v267;
        goto LABEL_176;
      }

      (*(v283 + 8))(*(v1 + 1696), *(v1 + 1664));
    }

    v288 = v267;
LABEL_176:
    v289 = *(v1 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
    v290 = *(v289 + 16);
    if (v290 <= 0xFB)
    {
      v292 = *v289;
      v291 = *(v289 + 8);
      sub_1D233E72C(*v289, v291, *(v289 + 16));
      v293 = sub_1D241441C(v292, v291, v290);
      if (v293 > 2)
      {
        if (v293 == 3)
        {
          v294 = 0xEF676E696B636F6CLL;
          v295 = 0x622074757074754FLL;
        }

        else if (v293 == 4)
        {
          v294 = 0x80000001D28B5CD0;
          v295 = 0xD000000000000016;
        }

        else
        {
          v294 = 0xE500000000000000;
          v295 = 0x726568744FLL;
        }
      }

      else if (v293)
      {
        if (v293 == 1)
        {
          v294 = 0xEE00676E696B636FLL;
          v295 = 0x6C62207475706E49;
        }

        else
        {
          v294 = 0x80000001D28B5CF0;
          v295 = 0xD000000000000015;
        }
      }

      else
      {
        v294 = 0x80000001D28B5D10;
        v295 = 0xD000000000000011;
      }

      *(v1 + 256) = MEMORY[0x1E69E6158];
      *(v1 + 232) = v295;
      *(v1 + 240) = v294;
      sub_1D23C3FAC((v1 + 232), (v1 + 264));
      v307 = swift_isUniquelyReferenced_nonNull_native();
      v722 = v288;
      sub_1D24E935C((v1 + 264), 0x526572756C696166, 0xED00006E6F736165, v307);
      if ((v290 & 0xF0) != 0x10)
      {
        sub_1D2415B64(v292, v291, v290);
        goto LABEL_205;
      }

      v715 = v722;
      *(v1 + 1144) = v292;
      sub_1D2415B78(v292, v291, v290);
      sub_1D233E72C(v292, v291, v290);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v308 = *(v1 + 1584);
        v309 = *(v1 + 1576);
        v310 = *(v1 + 1568);
        v311 = v1;
        v312 = *(v1 + 1560);
        v313 = *(v311 + 1552);
        (*(v310 + 56))(v313, 0, 1, v312);
        (*(v310 + 32))(v308, v313, v312);
        (*(v310 + 16))(v309, v308, v312);
        if ((*(v310 + 88))(v309, v312) == *MEMORY[0x1E69DFCC8])
        {
          v314 = *(v311 + 1576);
          v315 = *(v311 + 1544);
          v316 = *(v311 + 1536);
          v317 = *(v311 + 1528);
          (*(*(v311 + 1568) + 96))(v314, *(v311 + 1560));
          (*(v316 + 32))(v315, v314, v317);
          v318 = sub_1D2872A78();
          v319 = sub_1D268CA90(0xD000000000000010, 0x80000001D28B5C90, v318);
          v321 = v320;

          if (v321)
          {
            *(v311 + 416) = MEMORY[0x1E69E6158];
            *(v311 + 392) = v319;
            *(v311 + 400) = v321;
            sub_1D23C3FAC((v311 + 392), (v311 + 424));
            v322 = swift_isUniquelyReferenced_nonNull_native();
            v722 = v715;
            sub_1D24E935C((v311 + 424), 0x5F74736575716572, 0xEA00000000006469, v322);
          }

          v1 = v311;
          v323 = sub_1D2872A78();
          v324 = sub_1D268CA90(0xD00000000000001DLL, 0x80000001D28B5CB0, v323);
          v326 = v325;

          v327 = *(v311 + 1568);
          v702 = *(v311 + 1560);
          v706 = *(v311 + 1584);
          v696 = *(v311 + 1544);
          v328 = *(v311 + 1536);
          v329 = *(v1 + 1528);
          if (v326)
          {
            *(v1 + 352) = MEMORY[0x1E69E6158];
            *(v1 + 328) = v324;
            *(v1 + 336) = v326;
            sub_1D23C3FAC((v1 + 328), (v1 + 360));
            v330 = swift_isUniquelyReferenced_nonNull_native();
            v722 = v715;
            sub_1D24E935C((v1 + 360), 0x64695F6E656B6F74, 0xE800000000000000, v330);
            sub_1D2415B64(v292, v291, v290);
            sub_1D2415B64(v292, v291, v290);
            (*(v328 + 8))(v696, v329);
            (*(v327 + 8))(v706, v702);
            v288 = v715;
            goto LABEL_205;
          }

          sub_1D2415B64(v292, v291, v290);
          sub_1D2415B64(v292, v291, v290);
          (*(v328 + 8))(v696, v329);
          (*(v327 + 8))(v706, v702);
        }

        else
        {
          v334 = *(v311 + 1576);
          v335 = *(v311 + 1560);
          v336 = *(*(v311 + 1568) + 8);
          v336(*(v311 + 1584), v335);
          sub_1D2415B64(v292, v291, v290);
          sub_1D2415B64(v292, v291, v290);
          v336(v334, v335);
          v1 = v311;
        }
      }

      else
      {
        v331 = *(v1 + 1568);
        v332 = *(v1 + 1560);
        v333 = *(v1 + 1552);
        sub_1D2415B64(v292, v291, v290);
        sub_1D2415B64(v292, v291, v290);
        (*(v331 + 56))(v333, 1, 1, v332);
        sub_1D22BD238(v333, &qword_1EC6DB170);
      }

      v288 = v715;
    }

LABEL_205:
    v724 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB178);
    v722 = v288;
    sub_1D2871CF8();
    if (!v270)
    {
      v358 = *(v1 + 1448);
      v359 = *(v1 + 1440);
      v360 = *(v1 + 1432);
      (*(*(v1 + 1512) + 16))(v358, *(v1 + 1520), *(v1 + 1504));
      v361 = *MEMORY[0x1E699C588];
      v362 = *(v359 + 104);
      *(v1 + 2352) = v362;
      *(v1 + 2360) = (v359 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v695 = v362;
      (v362)(v358, v361, v360);
      sub_1D2877FE8();
      if (qword_1ED89E0E8 != -1)
      {
        goto LABEL_332;
      }

      goto LABEL_209;
    }

    sub_1D28726D8();
    v340 = v270;
    v341 = sub_1D2873CA8();
    v342 = sub_1D2878A18();

    v343 = os_log_type_enabled(v341, v342);
    v691 = *(v1 + 2272);
    v697 = *(v1 + 2280);
    v683 = *(v1 + 2256);
    v688 = *(v1 + 2264);
    v344 = *(v1 + 2248);
    v345 = *(v1 + 2192);
    v346 = *(v1 + 2184);
    v347 = *(v1 + 2176);
    v348 = *(v1 + 2160);
    v707 = *(v1 + 1824);
    v716 = *(v1 + 2288);
    v349 = *(v1 + 1808);
    v703 = *(v1 + 1800);
    if (v343)
    {
      v676 = *(v1 + 2192);
      v350 = (v1 + 1160);
      v667 = *(v1 + 2160);
      v351 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      v722 = v352;
      *v351 = 136380675;
      *v350 = v270;
      v353 = v270;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      v354 = sub_1D2878118();
      v664 = v347;
      v356 = sub_1D23D7C84(v354, v355, &v722);

      *(v351 + 4) = v356;
      _os_log_impl(&dword_1D226E000, v341, v342, "Feedback donation failed: %{private}s", v351, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v352);
      v357 = v352;
      v1 = v720;
      MEMORY[0x1D38A3520](v357, -1, -1);
      MEMORY[0x1D38A3520](v351, -1, -1);

      sub_1D22D6D4C(v344, v683);
      sub_1D22D6D4C(v688, v691);
      sub_1D22D6D4C(v697, v716);

      (*(v349 + 8))(v707, v703);
      sub_1D22BD238(v667, &qword_1EC6D9A30);
      (*(v346 + 8))(v676, v664);
    }

    else
    {

      sub_1D22D6D4C(v344, v683);
      sub_1D22D6D4C(v688, v691);
      sub_1D22D6D4C(v697, v716);

      (*(v349 + 8))(v707, v703);
      sub_1D22BD238(v348, &qword_1EC6D9A30);
      (*(v346 + 8))(v345, v347);
    }

    goto LABEL_214;
  }

  v298 = *(v1 + 2152);
  v299 = *(v1 + 1704);
  v300 = *(v1 + 1672);
  v301 = *(v1 + 1664);
  sub_1D22D7044(v297, v1 + 96);
  swift_endAccess();
  v302 = *(v1 + 120);
  v303 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v302);
  (*(v300 + 16))(v298, v299, v301);
  v624(v298, 0, 1, v301);
  v721 = (*(v303 + 8) + **(v303 + 8));
  v304 = swift_task_alloc();
  *(v1 + 2344) = v304;
  *v304 = v1;
  v304[1] = sub_1D240D934;
  v305 = *(v1 + 2152);
  v306 = *(v1 + 1592);

  return v721(v306, v305, v302, v303);
}

uint64_t sub_1D240D934()
{
  v1 = *v0;
  v2 = *(*v0 + 2152);

  sub_1D22BD238(v2, &qword_1EC6D9A30);
  v3 = *(v1 + 2232);
  v4 = *(v1 + 2224);

  return MEMORY[0x1EEE6DFA0](sub_1D240DA88, v4, v3);
}

uint64_t sub_1D240DA88()
{
  v397 = v0;
  v1 = v0 + 1128;
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1600);
  v4 = *(v0 + 1592);
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  v5 = (*(v2 + 48))(v4, 1, v3);
  v6 = MEMORY[0x1E69E6158];
  if (v5 == 1)
  {
    (*(*(v0 + 1672) + 8))(*(v0 + 1704), *(v0 + 1664));
    sub_1D22BD238(*(v0 + 1592), &qword_1EC6DA448);
    v7 = *(v0 + 2336);
  }

  else
  {
    v8 = *(v0 + 2336);
    v9 = *(v0 + 1704);
    v10 = *(v0 + 1672);
    v11 = *(v0 + 1664);
    v12 = *(v0 + 1616);
    v13 = *(v0 + 1608);
    v14 = *(v0 + 1600);
    (*(v13 + 32))(v12, *(v0 + 1592), v14);
    v15 = sub_1D28728F8();
    *(v0 + 736) = MEMORY[0x1E69E6158];
    *(v0 + 712) = v15;
    *(v0 + 720) = v16;
    sub_1D23C3FAC((v0 + 712), (v0 + 744));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v393 = v8;
    sub_1D24E935C((v0 + 744), 0x69746172656E6567, 0xEF65746174536E6FLL, isUniquelyReferenced_nonNull_native);
    v18 = v12;
    v1 = v0 + 1128;
    (*(v13 + 8))(v18, v14);
    v6 = MEMORY[0x1E69E6158];
    (*(v10 + 8))(v9, v11);
    v7 = v8;
  }

  v19 = *(*(v0 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification);
  if (v19)
  {
    *(v0 + 608) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA630);
    *(v0 + 584) = v19;
    sub_1D23C3FAC((v0 + 584), (v0 + 616));
    sub_1D2870F68();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v393 = v7;
    sub_1D24E935C((v0 + 616), 0xD00000000000001BLL, 0x80000001D28B5A70, v20);
  }

  v21 = *(v0 + 2240);
  v22 = sub_1D27BA2D4();
  *(v0 + 1128) = 20035;
  *(v0 + 1136) = 0xE200000000000000;
  v23 = swift_task_alloc();
  *(v23 + 16) = v1;
  v24 = sub_1D286430C(sub_1D234ABBC, v23, v22);

  if ((v24 & 1) == 0)
  {
    v25 = *(v0 + 1168);
    v26 = *(v25 + 80);
    if (v26)
    {
      v27 = *(v25 + 72);
      *(v0 + 544) = v6;
      *(v0 + 520) = v27;
      *(v0 + 528) = v26;
      sub_1D23C3FAC((v0 + 520), (v0 + 552));
      sub_1D2870F68();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v393 = v7;
      sub_1D24E935C((v0 + 552), 0xD000000000000010, 0x80000001D28B5A20, v28);
    }
  }

  v29 = *(v0 + 2320);
  v30 = *(v0 + 2120);
  v31 = *(v0 + 1664);
  sub_1D22BD1D0(*(v0 + 2160), v30, &qword_1EC6D9A30);
  if (v29(v30, 1, v31) == 1)
  {
    sub_1D22BD238(*(v0 + 2120), &qword_1EC6D9A30);
  }

  else
  {
    (*(*(v0 + 1672) + 32))(*(v0 + 1696), *(v0 + 2120), *(v0 + 1664));
    v32 = sub_1D2871F78();
    v33 = *(v0 + 1696);
    v34 = *(v0 + 1672);
    v35 = *(v0 + 1664);
    if (v32)
    {
      v36 = sub_1D24DC8F0();
      *(v0 + 480) = v6;
      *(v0 + 456) = v36;
      *(v0 + 464) = v37;
      sub_1D23C3FAC((v0 + 456), (v0 + 488));
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v393 = v7;
      sub_1D24E935C((v0 + 488), 0x656C797473, 0xE500000000000000, v38);
      (*(v34 + 8))(v33, v35);
    }

    else
    {
      (*(v34 + 8))(*(v0 + 1696), *(v0 + 1664));
    }
  }

  v39 = *(v0 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
  v40 = *(v39 + 16);
  if (v40 <= 0xFB)
  {
    v42 = *v39;
    v41 = *(v39 + 8);
    sub_1D233E72C(*v39, v41, *(v39 + 16));
    v43 = sub_1D241441C(v42, v41, v40);
    if (v43 > 2)
    {
      if (v43 == 3)
      {
        v44 = 0xEF676E696B636F6CLL;
        v45 = 0x622074757074754FLL;
      }

      else if (v43 == 4)
      {
        v44 = 0x80000001D28B5CD0;
        v45 = 0xD000000000000016;
      }

      else
      {
        v44 = 0xE500000000000000;
        v45 = 0x726568744FLL;
      }
    }

    else if (v43)
    {
      if (v43 == 1)
      {
        v44 = 0xEE00676E696B636FLL;
        v45 = 0x6C62207475706E49;
      }

      else
      {
        v44 = 0x80000001D28B5CF0;
        v45 = 0xD000000000000015;
      }
    }

    else
    {
      v44 = 0x80000001D28B5D10;
      v45 = 0xD000000000000011;
    }

    *(v0 + 256) = v6;
    *(v0 + 232) = v45;
    *(v0 + 240) = v44;
    sub_1D23C3FAC((v0 + 232), (v0 + 264));
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v393 = v7;
    sub_1D24E935C((v0 + 264), 0x526572756C696166, 0xED00006E6F736165, v46);
    if ((v40 & 0xF0) == 0x10)
    {
      *(v0 + 1144) = v42;
      sub_1D2415B78(v42, v41, v40);
      sub_1D233E72C(v42, v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v382 = v41;
        v47 = *(v0 + 1584);
        v48 = *(v0 + 1576);
        v49 = *(v0 + 1568);
        v50 = *(v0 + 1560);
        v51 = *(v0 + 1552);
        (*(v49 + 56))(v51, 0, 1, v50);
        (*(v49 + 32))(v47, v51, v50);
        (*(v49 + 16))(v48, v47, v50);
        if ((*(v49 + 88))(v48, v50) == *MEMORY[0x1E69DFCC8])
        {
          v52 = *(v0 + 1576);
          v53 = *(v0 + 1544);
          v54 = *(v0 + 1536);
          v55 = *(v0 + 1528);
          (*(*(v0 + 1568) + 96))(v52, *(v0 + 1560));
          (*(v54 + 32))(v53, v52, v55);
          v56 = sub_1D2872A78();
          v57 = sub_1D268CA90(0xD000000000000010, 0x80000001D28B5C90, v56);
          v59 = v58;

          if (v59)
          {
            *(v0 + 416) = MEMORY[0x1E69E6158];
            *(v0 + 392) = v57;
            *(v0 + 400) = v59;
            sub_1D23C3FAC((v0 + 392), (v0 + 424));
            v60 = swift_isUniquelyReferenced_nonNull_native();
            v393 = v7;
            sub_1D24E935C((v0 + 424), 0x5F74736575716572, 0xEA00000000006469, v60);
          }

          v61 = sub_1D2872A78();
          v62 = sub_1D268CA90(0xD00000000000001DLL, 0x80000001D28B5CB0, v61);
          v64 = v63;

          v65 = *(v0 + 1584);
          v66 = *(v0 + 1568);
          v370 = *(v0 + 1544);
          v373 = *(v0 + 1560);
          v67 = *(v0 + 1536);
          v365 = *(v0 + 1528);
          if (v64)
          {
            *(v0 + 352) = MEMORY[0x1E69E6158];
            *(v0 + 328) = v62;
            *(v0 + 336) = v64;
            sub_1D23C3FAC((v0 + 328), (v0 + 360));
            v68 = swift_isUniquelyReferenced_nonNull_native();
            v393 = v7;
            sub_1D24E935C((v0 + 360), 0x64695F6E656B6F74, 0xE800000000000000, v68);
          }

          sub_1D2415B64(v42, v382, v40);
          sub_1D2415B64(v42, v382, v40);
          (*(v67 + 8))(v370, v365);
          (*(v66 + 8))(v65, v373);
        }

        else
        {
          v72 = *(v0 + 1576);
          v73 = *(v0 + 1560);
          v74 = *(*(v0 + 1568) + 8);
          v74(*(v0 + 1584), v73);
          sub_1D2415B64(v42, v382, v40);
          sub_1D2415B64(v42, v382, v40);
          v74(v72, v73);
        }
      }

      else
      {
        v69 = *(v0 + 1568);
        v70 = *(v0 + 1560);
        v71 = *(v0 + 1552);
        sub_1D2415B64(v42, v41, v40);
        sub_1D2415B64(v42, v41, v40);
        (*(v69 + 56))(v71, 1, 1, v70);
        sub_1D22BD238(v71, &qword_1EC6DB170);
      }
    }

    else
    {
      sub_1D2415B64(v42, v41, v40);
    }
  }

  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB178);
  v393 = v7;
  sub_1D2871CF8();
  if (v21)
  {

    sub_1D28726D8();
    v75 = v21;
    v76 = sub_1D2873CA8();
    v77 = sub_1D2878A18();

    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 2288);
    v366 = *(v0 + 2272);
    v371 = *(v0 + 2280);
    v359 = *(v0 + 2256);
    v362 = *(v0 + 2264);
    v355 = *(v0 + 2248);
    v80 = *(v0 + 2192);
    v81 = *(v0 + 2184);
    v82 = *(v0 + 2176);
    v83 = *(v0 + 2160);
    v383 = *(v0 + 1824);
    v84 = *(v0 + 1808);
    v374 = *(v0 + 1800);
    if (v78)
    {
      v348 = *(v0 + 2160);
      v85 = swift_slowAlloc();
      v343 = v79;
      v86 = swift_slowAlloc();
      v393 = v86;
      *v85 = 136380675;
      *(v0 + 1160) = v21;
      v87 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      v88 = sub_1D2878118();
      v337 = v82;
      v90 = sub_1D23D7C84(v88, v89, &v393);

      *(v85 + 4) = v90;
      _os_log_impl(&dword_1D226E000, v76, v77, "Feedback donation failed: %{private}s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x1D38A3520](v86, -1, -1);
      MEMORY[0x1D38A3520](v85, -1, -1);

      sub_1D22D6D4C(v355, v359);
      sub_1D22D6D4C(v362, v366);
      sub_1D22D6D4C(v371, v343);

      (*(v84 + 8))(v383, v374);
      sub_1D22BD238(v348, &qword_1EC6D9A30);
      (*(v81 + 8))(v80, v337);
    }

    else
    {

      sub_1D22D6D4C(v355, v359);
      sub_1D22D6D4C(v362, v366);
      sub_1D22D6D4C(v371, v79);

      (*(v84 + 8))(v383, v374);
      sub_1D22BD238(v83, &qword_1EC6D9A30);
      (*(v81 + 8))(v80, v82);
    }

    v388 = 0;
    goto LABEL_148;
  }

  v91 = *(v0 + 1448);
  v92 = *(v0 + 1440);
  v93 = *(v0 + 1432);
  (*(*(v0 + 1512) + 16))(v91, *(v0 + 1520), *(v0 + 1504));
  v94 = *MEMORY[0x1E699C588];
  v95 = *(v92 + 104);
  *(v0 + 2352) = v95;
  *(v0 + 2360) = (v92 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v360 = v95;
  v95(v91, v94, v93);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_157:
    swift_once();
  }

  v384 = *(v0 + 2288);
  v96 = *(v0 + 1464);
  v375 = *(v0 + 1456);
  v97 = *(v0 + 1384);
  v367 = *(v0 + 1376);
  v98 = qword_1ED8B0058;
  *(v0 + 2368) = qword_1ED8B0058;
  v99 = v98;
  sub_1D28718C8();
  v344 = v99;
  sub_1D28780E8();
  sub_1D2877FE8();
  sub_1D28718C8();
  sub_1D28780E8();
  v100 = sub_1D2871D18();
  *(v0 + 2376) = v100;
  v101 = *(v100 - 8);
  v102 = *(v101 + 56);
  *(v0 + 2384) = v102;
  *(v0 + 2392) = (v101 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v356 = v100;
  v349 = v102;
  (v102)(v97, 1, 1);
  sub_1D2871D08();
  v103 = *(v96 + 56);
  *(v0 + 2400) = v103;
  *(v0 + 2408) = (v96 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v103(v367, 1, 1, v375);
  if (v384 >> 60 != 15)
  {
    v104 = *(v0 + 2288);
    v105 = *(v0 + 2280);
    v385 = *(v0 + 1456);
    v106 = *(v0 + 1448);
    v107 = *(v0 + 1432);
    v108 = *(v0 + 1384);
    v109 = *(v0 + 1376);
    v110 = *(v0 + 1368);
    *v106 = v105;
    v106[1] = v104;
    v360(v106, *MEMORY[0x1E699C5F0], v107);
    sub_1D22D6CE4(v105, v104);
    sub_1D22D6CF8(v105, v104);
    sub_1D2877FE8();
    v111 = v344;
    sub_1D28718C8();
    sub_1D28780E8();
    v349(v108, 1, 1, v356);
    sub_1D2871D08();
    sub_1D22D6D4C(v105, v104);
    sub_1D22BD238(v109, &qword_1EC6DB160);
    v103(v110, 0, 1, v385);
    sub_1D22EC9BC(v110, v109, &qword_1EC6DB160);
  }

  v112 = *(v0 + 1496);
  v113 = *(v0 + 1464);
  v114 = *(v0 + 1456);
  v386 = *(v0 + 1376);
  v115 = *(v0 + 1360);
  v376 = *(v0 + 1344);
  v116 = *(v0 + 1320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB180);
  v117 = v103;
  v118 = *(v116 + 72);
  v119 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_1D287F550;
  v121 = v120 + v119;
  v326 = *(v113 + 16);
  v326(v120 + v119, v112, v114);
  v338 = v117;
  v117(v121, 0, 1, v114);
  v329 = v118;
  sub_1D22BD1D0(v386, v121 + v118, &qword_1EC6DB160);
  v387 = v121;
  sub_1D22BD1D0(v121, v115, &qword_1EC6DB160);
  sub_1D22EC9BC(v115, v376, &qword_1EC6DB160);
  v122 = (v113 + 32);
  v123 = *(v113 + 48);
  if (v123(v376, 1, v114) == 1)
  {
    sub_1D22BD238(*(v0 + 1344), &qword_1EC6DB160);
    v377 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v124 = *v122;
    (*v122)(*(v0 + 1488), *(v0 + 1344), *(v0 + 1456));
    v125 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = sub_1D27CCEC4(0, v125[2] + 1, 1, v125);
    }

    v127 = v125[2];
    v126 = v125[3];
    if (v127 >= v126 >> 1)
    {
      v125 = sub_1D27CCEC4(v126 > 1, v127 + 1, 1, v125);
    }

    v128 = *(v0 + 1488);
    v129 = *(v0 + 1456);
    v125[2] = v127 + 1;
    v377 = v125;
    v124(v125 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v127, v128, v129);
  }

  v130 = *(v0 + 1456);
  v131 = *(v0 + 1360);
  v132 = *(v0 + 1344);
  sub_1D22BD1D0(v387 + v329, v131, &qword_1EC6DB160);
  sub_1D22EC9BC(v131, v132, &qword_1EC6DB160);
  if (v123(v132, 1, v130) == 1)
  {
    sub_1D22BD238(*(v0 + 1344), &qword_1EC6DB160);
  }

  else
  {
    v133 = *v122;
    (*v122)(*(v0 + 1488), *(v0 + 1344), *(v0 + 1456));
    v134 = v377;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v134 = sub_1D27CCEC4(0, v377[2] + 1, 1, v377);
    }

    v136 = v134[2];
    v135 = v134[3];
    if (v136 >= v135 >> 1)
    {
      v134 = sub_1D27CCEC4(v135 > 1, v136 + 1, 1, v134);
    }

    v137 = *(v0 + 1488);
    v138 = *(v0 + 1456);
    v134[2] = v136 + 1;
    v377 = v134;
    v133(v134 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v136, v137, v138);
  }

  v139 = *(v0 + 2272);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  if (v139 >> 60 == 15)
  {
    v140 = *(v0 + 2256);
    if (v140 >> 60 == 15)
    {
      v141 = *(v0 + 1456);
      v142 = *(v0 + 1352);
      v143 = 1;
    }

    else
    {
      v150 = *(v0 + 2248);
      v151 = *(v0 + 1456);
      v152 = *(v0 + 1448);
      v153 = *(v0 + 1432);
      v154 = *(v0 + 1384);
      v155 = *(v0 + 1352);
      *v152 = v150;
      v152[1] = v140;
      v360(v152, *MEMORY[0x1E699C600], v153);
      sub_1D22D6CE4(v150, v140);
      sub_1D22D6CF8(v150, v140);
      sub_1D2877FE8();
      v156 = v344;
      sub_1D28718C8();
      sub_1D28780E8();
      v349(v154, 1, 1, v356);
      sub_1D2871D08();
      sub_1D22D6D4C(v150, v140);
      v142 = v155;
      v143 = 0;
      v141 = v151;
    }

    v338(v142, v143, 1, v141);
    goto LABEL_66;
  }

  v330 = v113;
  v144 = *(v0 + 2272);
  v145 = *(v0 + 2264);
  v389 = *(v0 + 2256);
  v333 = *(v0 + 1456);
  v146 = *(v0 + 1448);
  v147 = *(v0 + 1432);
  v148 = *(v0 + 1384);
  v149 = *(v0 + 1352);
  *v146 = v145;
  v146[1] = v144;
  v360(v146, *MEMORY[0x1E699C5F0], v147);
  sub_1D22D6CF8(v145, v144);
  sub_1D22D6CF8(v145, v144);
  sub_1D2877FE8();
  v345 = v344;
  sub_1D28718C8();
  sub_1D28780E8();
  v349(v148, 1, 1, v356);
  sub_1D2871D08();
  v338(v149, 0, 1, v333);
  if (v389 >> 60 == 15)
  {
    sub_1D22D6D4C(*(v0 + 2264), *(v0 + 2272));
LABEL_66:
    v157 = v377;
    goto LABEL_72;
  }

  v158 = *(v0 + 2256);
  v159 = *(v0 + 2248);
  v339 = *(v0 + 1480);
  v368 = *(v0 + 1472);
  v390 = *(v0 + 1456);
  v160 = *(v0 + 1448);
  v161 = *(v0 + 1432);
  v162 = *(v0 + 1384);
  *v160 = v159;
  v146[1] = v158;
  v360(v160, *MEMORY[0x1E699C600], v161);
  sub_1D22D6CE4(v159, v158);
  sub_1D22D6CF8(v159, v158);
  sub_1D2877FE8();
  v163 = v345;
  sub_1D28718C8();
  sub_1D28780E8();
  v349(v162, 1, 1, v356);
  sub_1D2871D08();
  v326(v368, v339, v390);
  v157 = v377;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v157 = sub_1D27CCEC4(0, v377[2] + 1, 1, v377);
  }

  v165 = v157[2];
  v164 = v157[3];
  if (v165 >= v164 >> 1)
  {
    v157 = sub_1D27CCEC4(v164 > 1, v165 + 1, 1, v157);
  }

  v166 = *(v0 + 2272);
  v167 = *(v0 + 2264);
  v168 = *(v0 + 1480);
  v169 = *(v0 + 1472);
  v170 = *(v0 + 1464);
  v171 = *(v0 + 1456);
  sub_1D22D6D4C(*(v0 + 2248), *(v0 + 2256));
  sub_1D22D6D4C(v167, v166);
  (*(v170 + 8))(v168, v171);
  v157[2] = v165 + 1;
  (*(v330 + 32))(v157 + ((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v165, v169, v171);
LABEL_72:
  *(v0 + 2416) = v157;
  v172 = *(v0 + 1168);
  v173 = *(v172 + 32);
  *(v0 + 2424) = v173;
  v174 = *(v172 + 40);
  *(v0 + 2432) = v174;
  v175 = *(v172 + 48);
  *(v0 + 2479) = v175;
  if (v175 == 255)
  {

LABEL_89:
    (*(v0 + 2400))(*(v0 + 1336), 1, 1, *(v0 + 1456));
    v363 = 0;
    v369 = 0xF000000000000000;
    v372 = 0;
    goto LABEL_97;
  }

  if ((v175 & 1) == 0)
  {
    sub_1D28726D8();
    v181 = sub_1D2873CA8();
    v182 = sub_1D2878A08();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_1D226E000, v181, v182, "Was provided asset type, will build data", v183, 2u);
      MEMORY[0x1D38A3520](v183, -1, -1);
    }

    v184 = *(v0 + 1848);
    v185 = *(v0 + 1808);
    v186 = *(v0 + 1800);

    v187 = *(v185 + 8);
    v187(v184, v186);
    if (v173)
    {
      sub_1D2415B28(v173, v174, v175);
      sub_1D2873A08();
      *(v0 + 2440) = sub_1D2878558();
      v188 = swift_task_alloc();
      *(v0 + 2448) = v188;
      *v188 = v0;
      v188[1] = sub_1D2410A28;
      v189 = *(v0 + 1280);

      return (sub_1D270BEC8)(v189, 1, 0);
    }

    sub_1D28726D8();
    v191 = sub_1D2873CA8();
    v192 = sub_1D2878A18();
    v193 = os_log_type_enabled(v191, v192);
    v194 = *(v0 + 1840);
    v195 = *(v0 + 1800);
    if (v193)
    {
      v196 = swift_slowAlloc();
      *v196 = 0;
      _os_log_impl(&dword_1D226E000, v191, v192, "Photo asset is nil", v196, 2u);
      MEMORY[0x1D38A3520](v196, -1, -1);
    }

    v187(v194, v195);
    goto LABEL_89;
  }

  sub_1D2415B1C(v173, v174, 1);
  (*(v0 + 2400))(*(v0 + 1336), 1, 1, *(v0 + 1456));
  v369 = v174;
  v372 = v173;
  if (v174 >> 60 != 15)
  {
    if (*(v0 + 2477) == 1)
    {
      v176 = *(v0 + 2320);
      v177 = *(v0 + 2112);
      v178 = *(v0 + 1664);
      sub_1D22BD1D0(*(v0 + 2160), v177, &qword_1EC6D9A30);
      v179 = v176(v177, 1, v178);
      v180 = *(v0 + 2112);
      if (v179 != 1)
      {
        v197 = *(v0 + 1256);
        v198 = *(v0 + 1248);
        v199 = *(v0 + 1240);
        (*(*(v0 + 1672) + 32))(*(v0 + 1688), *(v0 + 2112), *(v0 + 1664));
        sub_1D22D6CF8(v173, v174);
        sub_1D2871F58();
        if ((*(v197 + 48))(v199, 1, v198) == 1)
        {
          sub_1D22BD238(*(v0 + 1240), &qword_1EC6D9D58);
          v200 = 0;
          v201 = 0xE000000000000000;
        }

        else
        {
          v202 = *(v0 + 1272);
          v203 = *(v0 + 1256);
          v204 = *(v0 + 1248);
          (*(v203 + 32))(v202, *(v0 + 1240), v204);
          v200 = sub_1D2871ED8();
          v201 = v205;
          (*(v203 + 8))(v202, v204);
        }

        v206 = *(v0 + 1688);
        v207 = *(v0 + 1672);
        v208 = *(v0 + 1664);
        v393 = v200;
        v394 = v201;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](0x6465746165724320, 0xEE006567616D4920);

        sub_1D2878058();
        (*(v207 + 8))(v206, v208);
        goto LABEL_96;
      }

      sub_1D22D6CF8(v173, v174);
      sub_1D22BD238(v180, &qword_1EC6D9A30);
    }

    else
    {
      sub_1D22D6CF8(v173, v174);
    }

    sub_1D2877FE8();
LABEL_96:
    v378 = *(v0 + 2400);
    v340 = *(v0 + 2384);
    v334 = *(v0 + 2376);
    v209 = *(v0 + 2368);
    v210 = *(v0 + 2352);
    v360 = *(v0 + 1456);
    v211 = *(v0 + 1448);
    v212 = *(v0 + 1432);
    v213 = *(v0 + 1424);
    v214 = *(v0 + 1416);
    v215 = *(v0 + 1408);
    v216 = *(v0 + 1400);
    v331 = *(v0 + 1384);
    v350 = *(v0 + 1368);
    v357 = *(v0 + 1336);
    *v211 = v372;
    v211[1] = v174;
    v210(v211, *MEMORY[0x1E699C5F0], v212);
    (*(v215 + 16))(v213, v214, v216);
    v217 = v209;
    sub_1D22D6CE4(v372, v174);
    sub_1D28718C8();
    sub_1D28780E8();
    v363 = 1;
    v340(v331, 1, 1, v334);
    sub_1D2871D08();
    sub_1D22D6D4C(v372, v174);
    (*(v215 + 8))(v214, v216);
    sub_1D22BD238(v357, &qword_1EC6DB160);
    v378(v350, 0, 1, v360);
    sub_1D22EC9BC(v350, v357, &qword_1EC6DB160);
    goto LABEL_97;
  }

  v363 = 0;
LABEL_97:
  v218 = *(v0 + 2312);
  v219 = *(v0 + 2296);
  v220 = *(v0 + 2478);
  v221 = *(v0 + 2476);
  v222 = *(v0 + 2475);
  v223 = *(v0 + 2160);
  v224 = *(v0 + 2152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB188);
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_1D2880100;
  *(v225 + 32) = 0xD000000000000013;
  *(v225 + 40) = 0x80000001D28B5B10;
  *(v225 + 48) = v221;
  *(v225 + 56) = 0xD000000000000017;
  *(v225 + 64) = 0x80000001D28B5B30;
  *(v225 + 72) = v222;
  *(v225 + 80) = 0xD00000000000001ALL;
  *(v225 + 88) = 0x80000001D28B5B50;
  v379 = v218;
  *(v225 + 96) = *(v218 + 16);
  *(v225 + 104) = 0xD000000000000016;
  *(v225 + 112) = 0x80000001D28B5B70;
  v226 = *(v219 + 16);

  *(v225 + 120) = v226;
  *(v225 + 128) = 0xD000000000000016;
  *(v225 + 136) = 0x80000001D28B5B90;
  *(v225 + 144) = v220;
  v227 = sub_1D25D9520(v225);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB190);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v396 = v227;
  sub_1D22BD1D0(v223, v224, &qword_1EC6D9A30);
  v228 = sub_1D24198DC(v224);
  if (v228 != 6)
  {
    v229 = v228;
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v393 = v227;
    sub_1D24E91F8(v229 + 1, 0x656C797473, 0xE500000000000000, v230);
    v396 = v227;
  }

  v231 = *(*(v0 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved);
  if (v231 != 2)
  {
    sub_1D25CF12C(v231 & 1, 0, 0x6576615372657375, 0xEB00000000744964);
  }

  v232 = v218;
  v233 = *(v218 + 16);
  if (!v233)
  {
LABEL_123:

    goto LABEL_127;
  }

  v234 = 0;
  v391 = *(v0 + 1760);
  v235 = *(v0 + 1752);
  while (1)
  {
    if (v234 >= *(v232 + 16))
    {
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    sub_1D2415B8C(*(v0 + 2312) + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v234, *(v0 + 1760), type metadata accessor for CuratedPrompt);
    if (v234 == 8)
    {
      break;
    }

    ++v234;
    v236 = *(v0 + 1760);
    v393 = 0x4449656C62627562;
    v394 = 0xE800000000000000;
    *(v0 + 1152) = v234;
    v237 = sub_1D28795C8();
    MEMORY[0x1D38A0C50](v237);

    v239 = v393;
    v238 = v394;
    v240 = *v236;
    v241 = *(v391 + 8);
    sub_1D2870F68();
    v242 = sub_1D23BD628(v240, v241);
    v243 = v396;
    if ((v244 & 1) == 0)
    {
      v248 = v242;
      v249 = swift_isUniquelyReferenced_nonNull_native();
      v393 = v396;
      v250 = sub_1D25D0410(v239, v394);
      v252 = *(v396 + 16);
      v253 = (v251 & 1) == 0;
      v254 = __OFADD__(v252, v253);
      v255 = v252 + v253;
      if (v254)
      {
        goto LABEL_155;
      }

      v256 = v251;
      if (*(v396 + 24) < v255)
      {
        sub_1D24E3658(v255, v249);
        v243 = v393;
        v250 = sub_1D25D0410(v239, v394);
        if ((v256 & 1) != (v257 & 1))
        {

          return sub_1D28796E8();
        }

        goto LABEL_118;
      }

      if (v249)
      {
LABEL_118:
        v232 = v379;
        if ((v256 & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v261 = v250;
        sub_1D24EDCBC();
        v250 = v261;
        v243 = v393;
        v232 = v379;
        if ((v256 & 1) == 0)
        {
LABEL_119:
          v243[(v250 >> 6) + 8] |= 1 << v250;
          v258 = (v243[6] + 16 * v250);
          *v258 = v239;
          v258[1] = v238;
          *(v243[7] + 8 * v250) = v248;
          v259 = v243[2];
          v254 = __OFADD__(v259, 1);
          v260 = v259 + 1;
          if (v254)
          {
            goto LABEL_156;
          }

          v243[2] = v260;
          goto LABEL_104;
        }
      }

      *(v243[7] + 8 * v250) = v248;

      goto LABEL_104;
    }

    v245 = sub_1D25D0410(v393, v394);
    v247 = v246;

    if ((v247 & 1) == 0)
    {
      goto LABEL_105;
    }

    v393 = v396;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1D24EDCBC();
      v243 = v393;
    }

    sub_1D25D4FD0(v245, v243);
LABEL_104:
    v396 = v243;
LABEL_105:
    sub_1D2415C9C(*(v0 + 1760), type metadata accessor for CuratedPrompt);
    if (v233 == v234)
    {
      goto LABEL_123;
    }
  }

  sub_1D28726D8();
  v262 = sub_1D2873CA8();
  v263 = sub_1D2878A18();
  v264 = os_log_type_enabled(v262, v263);
  v265 = *(v0 + 1832);
  v266 = *(v0 + 1808);
  v267 = *(v0 + 1800);
  v268 = *(v0 + 1760);
  if (v264)
  {
    v269 = swift_slowAlloc();
    *v269 = 0;
    _os_log_impl(&dword_1D226E000, v262, v263, "Tried to log more than 8 bubbles in feedback auxiliary metrics", v269, 2u);
    MEMORY[0x1D38A3520](v269, -1, -1);
  }

  (*(v266 + 8))(v265, v267);
  sub_1D2415C9C(v268, type metadata accessor for CuratedPrompt);
LABEL_127:
  v353 = *(v0 + 2320);
  v380 = *(v0 + 2475);
  v341 = *(v0 + 2160);
  v346 = *(v0 + 2104);
  v351 = *(v0 + 1664);
  v270 = *(v0 + 1368);
  v271 = *(v0 + 1352);
  v272 = *(v0 + 1336);
  v273 = *(v0 + 1328);
  v274 = *(v0 + 1224);
  v275 = *(v0 + 1216);
  v276 = *(v0 + 1208);
  v277 = *(v0 + 1200);
  v392 = *(v0 + 1184);
  v335 = *(v0 + 1176);
  sub_1D2415184((v0 + 2473), v341, *(v0 + 1168), v274);
  (*(v276 + 16))(v275, v274, v277);
  sub_1D22BD1D0(v271, v270, &qword_1EC6DB160);
  sub_1D22BD1D0(v272, v273, &qword_1EC6DB160);
  v278 = objc_allocWithZone(sub_1D2871C98());
  v361 = sub_1D2871C88();
  v279 = 0xD000000000000014;
  if (v380)
  {
    v280 = "personalization_false";
  }

  else
  {
    v279 = 0xD000000000000015;
    v280 = "person_image_not_generated";
  }

  v281 = 0xD000000000000013;
  if (v380)
  {
    v281 = 0xD00000000000001ALL;
    v282 = ":third_party_model";
  }

  else
  {
    v282 = "is_generic_person_used";
  }

  if (v363)
  {
    v283 = v279;
  }

  else
  {
    v283 = v281;
  }

  if (v363)
  {
    v284 = v280;
  }

  else
  {
    v284 = v282;
  }

  v285 = v284 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB198);
  v286 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1A0) - 8);
  v287 = (*(*v286 + 80) + 32) & ~*(*v286 + 80);
  v288 = swift_allocObject();
  *(v288 + 16) = xmmword_1D287F500;
  v289 = v288 + v287;
  v290 = v286[14];
  strcpy(v289, ":sub_feature");
  *(v289 + 13) = 0;
  *(v289 + 14) = -5120;
  v291 = *MEMORY[0x1E699C650];
  v292 = *(v392 + 104);
  v292(v289, v291, v335);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v293 = swift_allocObject();
  *(v293 + 16) = xmmword_1D287F500;
  *(v293 + 32) = v283;
  *(v293 + 40) = v285;
  *(v289 + v290) = v293;
  v294 = sub_1D25D961C(v288);
  swift_setDeallocating();
  sub_1D22BD238(v289, &qword_1EC6DB1A0);
  swift_deallocClassInstance();
  v393 = v294;
  sub_1D22BD1D0(v341, v346, &qword_1EC6D9A30);
  if (v353(v346, 1, v351) == 1)
  {
    sub_1D22BD238(*(v0 + 2104), &qword_1EC6D9A30);
  }

  else
  {
    (*(*(v0 + 1672) + 32))(*(v0 + 1680), *(v0 + 2104), *(v0 + 1664));
    if (sub_1D2871F78())
    {
      v297 = *(v0 + 1256);
      v298 = *(v0 + 1248);
      v299 = *(v0 + 1232);
      v300 = *(v0 + 1192);
      v301 = *(v0 + 1176);
      *v300 = 0xD000000000000012;
      v300[1] = 0x80000001D28B5BD0;
      (v292)(v300, v291, v301, v295, v296);
      v302 = swift_allocObject();
      *(v302 + 16) = xmmword_1D287F500;
      sub_1D2871F58();
      if ((*(v297 + 48))(v299, 1, v298) == 1)
      {
        sub_1D22BD238(*(v0 + 1232), &qword_1EC6D9D58);
        v303 = 0;
        v304 = 0xE000000000000000;
      }

      else
      {
        v305 = *(v0 + 1264);
        v306 = *(v0 + 1256);
        v307 = *(v0 + 1248);
        (*(v306 + 32))(v305, *(v0 + 1232), v307);
        v303 = sub_1D2871ED8();
        v304 = v308;
        (*(v306 + 8))(v305, v307);
      }

      v309 = *(v0 + 1680);
      v310 = *(v0 + 1672);
      v311 = *(v0 + 1664);
      v312 = *(v0 + 1192);
      *(v302 + 32) = v303;
      *(v302 + 40) = v304;
      sub_1D25CF218(v302, v312);
      (*(v310 + 8))(v309, v311);
    }

    else
    {
      (*(*(v0 + 1672) + 8))(*(v0 + 1680), *(v0 + 1664));
    }
  }

  v327 = *(v0 + 2280);
  v328 = *(v0 + 2288);
  v323 = *(v0 + 2264);
  v324 = *(v0 + 2272);
  v313 = *(v0 + 2256);
  v314 = *(v0 + 2248);
  v381 = *(v0 + 2192);
  v315 = *(v0 + 2184);
  v364 = *(v0 + 2176);
  v354 = *(v0 + 1520);
  v358 = *(v0 + 2160);
  v316 = *(v0 + 1512);
  v347 = *(v0 + 1496);
  v352 = *(v0 + 1504);
  v317 = *(v0 + 1464);
  v336 = *(v0 + 1376);
  v342 = *(v0 + 1456);
  v332 = *(v0 + 1352);
  v325 = *(v0 + 1336);
  v318 = *(v0 + 1224);
  v319 = *(v0 + 1208);
  v320 = *(v0 + 1200);
  v321 = v361;
  sub_1D2871D38();
  v388 = v321;

  sub_1D22D6D4C(v372, v369);
  sub_1D22D6D4C(v314, v313);
  sub_1D22D6D4C(v323, v324);
  sub_1D22D6D4C(v327, v328);
  (*(v319 + 8))(v318, v320);
  sub_1D22BD238(v325, &qword_1EC6DB160);
  sub_1D22BD238(v332, &qword_1EC6DB160);
  sub_1D22BD238(v336, &qword_1EC6DB160);
  (*(v317 + 8))(v347, v342);
  (*(v316 + 8))(v354, v352);
  sub_1D22BD238(v358, &qword_1EC6D9A30);
  (*(v315 + 8))(v381, v364);
LABEL_148:

  v322 = *(v0 + 8);

  return v322(v388);
}

uint64_t sub_1D2410A28()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2410B64, v1, v0);
}

uint64_t sub_1D2410B64()
{
  v1 = v0[238];
  v2 = v0[237];
  v3 = v0[160];

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[160];
    (*(v0[162] + 8))(v0[163], v0[161]);
    sub_1D22BD238(v4, &unk_1EC6DE5A0);
    v5 = v0[279];
    v6 = v0[278];
    v7 = sub_1D2412190;
  }

  else
  {
    v8 = v0[236];
    v9 = v0[163];
    v10 = v0[162];
    v11 = v0[161];
    v12 = v0[160];
    (*(v10 + 16))(v8, v9, v11);
    (*(v10 + 56))(v8, 0, 1, v11);
    v0[307] = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v8);
    v0[308] = v13;
    sub_1D22BD238(v8, &qword_1EC6DAE70);
    (*(v10 + 8))(v9, v11);
    sub_1D2415C9C(v12, type metadata accessor for PlaygroundImage);
    v5 = v0[279];
    v6 = v0[278];
    v7 = sub_1D2410D10;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

unint64_t sub_1D2410D10()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2479);

  sub_1D2415B40(v2, v1, v3);
  v4 = *(v0 + 2464);
  v153 = *(v0 + 2456);
  (*(v0 + 2400))(*(v0 + 1336), 1, 1, *(v0 + 1456));
  v154 = v4;
  v151 = v4 >> 60;
  if (v4 >> 60 == 15)
  {
    goto LABEL_12;
  }

  if (*(v0 + 2477) == 1)
  {
    v5 = *(v0 + 2320);
    v6 = *(v0 + 2112);
    v7 = *(v0 + 1664);
    sub_1D22BD1D0(*(v0 + 2160), v6, &qword_1EC6D9A30);
    v8 = v5(v6, 1, v7);
    v9 = *(v0 + 2112);
    if (v8 != 1)
    {
      v10 = *(v0 + 1256);
      v11 = *(v0 + 1248);
      v12 = *(v0 + 1240);
      (*(*(v0 + 1672) + 32))(*(v0 + 1688), *(v0 + 2112), *(v0 + 1664));
      sub_1D22D6CF8(v153, v154);
      sub_1D2871F58();
      if ((*(v10 + 48))(v12, 1, v11) == 1)
      {
        sub_1D22BD238(*(v0 + 1240), &qword_1EC6D9D58);
      }

      else
      {
        v13 = *(v0 + 1272);
        v14 = *(v0 + 1256);
        v15 = *(v0 + 1248);
        (*(v14 + 32))(v13, *(v0 + 1240), v15);
        sub_1D2871ED8();
        (*(v14 + 8))(v13, v15);
      }

      v16 = *(v0 + 1688);
      v17 = *(v0 + 1672);
      v18 = *(v0 + 1664);
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](0x6465746165724320, 0xEE006567616D4920);

      sub_1D2878058();
      (*(v17 + 8))(v16, v18);
      goto LABEL_11;
    }

    sub_1D22D6CF8(v153, v154);
    sub_1D22BD238(v9, &qword_1EC6D9A30);
  }

  else
  {
    sub_1D22D6CF8(v153, v4);
  }

  sub_1D2877FE8();
LABEL_11:
  v155 = *(v0 + 2400);
  v136 = *(v0 + 2384);
  v19 = *(v0 + 2368);
  v20 = *(v0 + 2352);
  v148 = *(v0 + 1456);
  v21 = *(v0 + 1448);
  v22 = *(v0 + 1432);
  v23 = *(v0 + 1424);
  v24 = *(v0 + 1416);
  v25 = *(v0 + 1408);
  v26 = *(v0 + 1400);
  v131 = *(v0 + 1384);
  v133 = *(v0 + 2376);
  v141 = *(v0 + 1368);
  v146 = *(v0 + 1336);
  *v21 = v153;
  v21[1] = v154;
  v20(v21, *MEMORY[0x1E699C5F0], v22);
  (*(v25 + 16))(v23, v24, v26);
  v27 = v19;
  sub_1D22D6CE4(v153, v154);
  sub_1D28718C8();
  sub_1D28780E8();
  v136(v131, 1, 1, v133);
  sub_1D2871D08();
  sub_1D22D6D4C(v153, v154);
  (*(v25 + 8))(v24, v26);
  sub_1D22BD238(v146, &qword_1EC6DB160);
  v155(v141, 0, 1, v148);
  sub_1D22EC9BC(v141, v146, &qword_1EC6DB160);
LABEL_12:
  v28 = *(v0 + 2312);
  v29 = *(v0 + 2296);
  v30 = *(v0 + 2478);
  v31 = *(v0 + 2476);
  v32 = *(v0 + 2475);
  v159 = *(v0 + 2160);
  v33 = *(v0 + 2152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB188);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D2880100;
  *(v34 + 32) = 0xD000000000000013;
  *(v34 + 40) = 0x80000001D28B5B10;
  *(v34 + 48) = v31;
  *(v34 + 56) = 0xD000000000000017;
  *(v34 + 64) = 0x80000001D28B5B30;
  *(v34 + 72) = v32;
  *(v34 + 80) = 0xD00000000000001ALL;
  *(v34 + 88) = 0x80000001D28B5B50;
  v156 = v28;
  *(v34 + 96) = *(v28 + 16);
  *(v34 + 104) = 0xD000000000000016;
  *(v34 + 112) = 0x80000001D28B5B70;
  v35 = *(v29 + 16);

  *(v34 + 120) = v35;
  *(v34 + 128) = 0xD000000000000016;
  *(v34 + 136) = 0x80000001D28B5B90;
  *(v34 + 144) = v30;
  v36 = sub_1D25D9520(v34);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB190);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v163 = v36;
  sub_1D22BD1D0(v159, v33, &qword_1EC6D9A30);
  result = sub_1D24198DC(v33);
  if (result != 6)
  {
    v38 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1D24E91F8(v38 + 1, 0x656C797473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v163 = v36;
  }

  v40 = *(*(v0 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved);
  if (v40 != 2)
  {
    result = sub_1D25CF12C(v40 & 1, 0, 0x6576615372657375, 0xEB00000000744964);
  }

  v41 = v28;
  v42 = *(v28 + 16);
  if (!v42)
  {
LABEL_37:

    goto LABEL_41;
  }

  v43 = 0;
  v160 = *(v0 + 1760);
  v44 = *(v0 + 1752);
  while (1)
  {
    if (v43 >= *(v41 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return result;
    }

    sub_1D2415B8C(*(v0 + 2312) + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, *(v0 + 1760), type metadata accessor for CuratedPrompt);
    if (v43 == 8)
    {
      break;
    }

    ++v43;
    v45 = *(v0 + 1760);
    *(v0 + 1152) = v43;
    v46 = sub_1D28795C8();
    MEMORY[0x1D38A0C50](v46);

    v47 = *v45;
    v48 = *(v160 + 8);
    sub_1D2870F68();
    v49 = sub_1D23BD628(v47, v48);
    if (v50)
    {
      v51 = sub_1D25D0410(0x4449656C62627562, 0xE800000000000000);
      v53 = v52;

      if (v53)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D24EDCBC();
        }

        sub_1D25D4FD0(v51, v163);
      }

      goto LABEL_19;
    }

    v54 = v49;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1D25D0410(0x4449656C62627562, 0xE800000000000000);
    v57 = v163[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_68;
    }

    v61 = v56;
    if (v163[3] < v60)
    {
      sub_1D24E3658(v60, v55);
      result = sub_1D25D0410(0x4449656C62627562, 0xE800000000000000);
      if ((v61 & 1) != (v62 & 1))
      {

        return sub_1D28796E8();
      }

LABEL_32:
      v41 = v156;
      if (v61)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

    if (v55)
    {
      goto LABEL_32;
    }

    v66 = result;
    sub_1D24EDCBC();
    result = v66;
    v41 = v156;
    if (v61)
    {
LABEL_18:
      *(v163[7] + 8 * result) = v54;

      goto LABEL_19;
    }

LABEL_33:
    v163[(result >> 6) + 8] |= 1 << result;
    v63 = (v163[6] + 16 * result);
    *v63 = 0x4449656C62627562;
    v63[1] = 0xE800000000000000;
    *(v163[7] + 8 * result) = v54;
    v64 = v163[2];
    v59 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v59)
    {
      goto LABEL_69;
    }

    v163[2] = v65;
LABEL_19:
    result = sub_1D2415C9C(*(v0 + 1760), type metadata accessor for CuratedPrompt);
    if (v42 == v43)
    {
      goto LABEL_37;
    }
  }

  sub_1D28726D8();
  v67 = sub_1D2873CA8();
  v68 = sub_1D2878A18();
  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v0 + 1832);
  v71 = *(v0 + 1808);
  v72 = *(v0 + 1800);
  v73 = *(v0 + 1760);
  if (v69)
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_1D226E000, v67, v68, "Tried to log more than 8 bubbles in feedback auxiliary metrics", v74, 2u);
    MEMORY[0x1D38A3520](v74, -1, -1);
  }

  (*(v71 + 8))(v70, v72);
  sub_1D2415C9C(v73, type metadata accessor for CuratedPrompt);
LABEL_41:
  v144 = *(v0 + 2320);
  v157 = *(v0 + 2475);
  v137 = *(v0 + 2160);
  v139 = *(v0 + 2104);
  v142 = *(v0 + 1664);
  v75 = *(v0 + 1368);
  v76 = *(v0 + 1352);
  v77 = *(v0 + 1336);
  v78 = *(v0 + 1328);
  v79 = *(v0 + 1224);
  v80 = *(v0 + 1216);
  v81 = *(v0 + 1208);
  v82 = *(v0 + 1200);
  v161 = *(v0 + 1184);
  v134 = *(v0 + 1176);
  sub_1D2415184((v0 + 2473), v137, *(v0 + 1168), v79);
  (*(v81 + 16))(v80, v79, v82);
  sub_1D22BD1D0(v76, v75, &qword_1EC6DB160);
  sub_1D22BD1D0(v77, v78, &qword_1EC6DB160);
  v83 = objc_allocWithZone(sub_1D2871C98());
  v149 = sub_1D2871C88();
  v84 = 0xD000000000000015;
  v85 = "personalization_false";
  v86 = ":third_party_model";
  if (v157)
  {
    v84 = 0xD000000000000014;
  }

  else
  {
    v85 = "person_image_not_generated";
  }

  v87 = 0xD00000000000001ALL;
  if (!v157)
  {
    v87 = 0xD000000000000013;
    v86 = "is_generic_person_used";
  }

  if (v151 >= 0xF)
  {
    v88 = v87;
  }

  else
  {
    v88 = v84;
  }

  if (v151 >= 0xF)
  {
    v89 = v86;
  }

  else
  {
    v89 = v85;
  }

  v90 = v89 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB198);
  v91 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1A0) - 8);
  v92 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1D287F500;
  v94 = v93 + v92;
  v95 = v91[14];
  strcpy(v94, ":sub_feature");
  *(v94 + 13) = 0;
  *(v94 + 14) = -5120;
  v96 = *MEMORY[0x1E699C650];
  v97 = *(v161 + 104);
  v97(v94, v96, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1D287F500;
  *(v98 + 32) = v88;
  *(v98 + 40) = v90;
  *(v94 + v95) = v98;
  sub_1D25D961C(v93);
  swift_setDeallocating();
  sub_1D22BD238(v94, &qword_1EC6DB1A0);
  swift_deallocClassInstance();
  sub_1D22BD1D0(v137, v139, &qword_1EC6D9A30);
  if (v144(v139, 1, v142) == 1)
  {
    sub_1D22BD238(*(v0 + 2104), &qword_1EC6D9A30);
    goto LABEL_58;
  }

  (*(*(v0 + 1672) + 32))(*(v0 + 1680), *(v0 + 2104), *(v0 + 1664));
  if (sub_1D2871F78())
  {
    v101 = *(v0 + 1256);
    v102 = *(v0 + 1248);
    v103 = *(v0 + 1232);
    v104 = *(v0 + 1192);
    v105 = *(v0 + 1176);
    *v104 = 0xD000000000000012;
    v104[1] = 0x80000001D28B5BD0;
    (v97)(v104, v96, v105, v99, v100);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1D287F500;
    sub_1D2871F58();
    if ((*(v101 + 48))(v103, 1, v102) == 1)
    {
      sub_1D22BD238(*(v0 + 1232), &qword_1EC6D9D58);
      v107 = 0;
      v108 = 0xE000000000000000;
    }

    else
    {
      v110 = *(v0 + 1264);
      v111 = *(v0 + 1256);
      v112 = *(v0 + 1248);
      (*(v111 + 32))(v110, *(v0 + 1232), v112);
      v107 = sub_1D2871ED8();
      v108 = v113;
      (*(v111 + 8))(v110, v112);
    }

    v114 = *(v0 + 1680);
    v115 = *(v0 + 1672);
    v116 = *(v0 + 1664);
    v117 = *(v0 + 1192);
    *(v106 + 32) = v107;
    *(v106 + 40) = v108;
    sub_1D25CF218(v106, v117);
    (*(v115 + 8))(v114, v116);
    v109 = v149;
  }

  else
  {
    (*(*(v0 + 1672) + 8))(*(v0 + 1680), *(v0 + 1664));
LABEL_58:
    v109 = v149;
  }

  v130 = *(v0 + 2280);
  v132 = *(v0 + 2288);
  v128 = *(v0 + 2272);
  v127 = *(v0 + 2264);
  v118 = *(v0 + 2256);
  v119 = *(v0 + 2248);
  v158 = *(v0 + 2192);
  v120 = *(v0 + 2184);
  v150 = *(v0 + 2160);
  v152 = *(v0 + 2176);
  v121 = *(v0 + 1512);
  v145 = *(v0 + 1504);
  v147 = *(v0 + 1520);
  v122 = *(v0 + 1464);
  v140 = *(v0 + 1456);
  v143 = *(v0 + 1496);
  v135 = *(v0 + 1352);
  v138 = *(v0 + 1376);
  v129 = *(v0 + 1336);
  v126 = *(v0 + 1224);
  v123 = *(v0 + 1208);
  v124 = *(v0 + 1200);
  v162 = v109;
  sub_1D2871D38();

  sub_1D22D6D4C(v153, v154);
  sub_1D22D6D4C(v119, v118);
  sub_1D22D6D4C(v127, v128);
  sub_1D22D6D4C(v130, v132);
  (*(v123 + 8))(v126, v124);
  sub_1D22BD238(v129, &qword_1EC6DB160);
  sub_1D22BD238(v135, &qword_1EC6DB160);
  sub_1D22BD238(v138, &qword_1EC6DB160);
  (*(v122 + 8))(v143, v140);
  (*(v121 + 8))(v147, v145);
  sub_1D22BD238(v150, &qword_1EC6D9A30);
  (*(v120 + 8))(v158, v152);

  v125 = *(v0 + 8);

  return v125(v162);
}

unint64_t sub_1D2412190()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2479);

  sub_1D2415B40(v2, v1, v3);
  (*(v0 + 2400))(*(v0 + 1336), 1, 1, *(v0 + 1456));
  v4 = *(v0 + 2312);
  v5 = *(v0 + 2296);
  v6 = *(v0 + 2478);
  v7 = *(v0 + 2476);
  v8 = *(v0 + 2475);
  v122 = *(v0 + 2160);
  v9 = *(v0 + 2152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB188);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D2880100;
  *(v10 + 32) = 0xD000000000000013;
  *(v10 + 40) = 0x80000001D28B5B10;
  *(v10 + 48) = v7;
  *(v10 + 56) = 0xD000000000000017;
  *(v10 + 64) = 0x80000001D28B5B30;
  *(v10 + 72) = v8;
  *(v10 + 80) = 0xD00000000000001ALL;
  *(v10 + 88) = 0x80000001D28B5B50;
  v126 = v4;
  *(v10 + 96) = *(v4 + 16);
  *(v10 + 104) = 0xD000000000000016;
  *(v10 + 112) = 0x80000001D28B5B70;
  v11 = *(v5 + 16);

  *(v10 + 120) = v11;
  *(v10 + 128) = 0xD000000000000016;
  *(v10 + 136) = 0x80000001D28B5B90;
  *(v10 + 144) = v6;
  v12 = sub_1D25D9520(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB190);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v129 = v12;
  sub_1D22BD1D0(v122, v9, &qword_1EC6D9A30);
  result = sub_1D24198DC(v9);
  if (result != 6)
  {
    v14 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1D24E91F8(v14 + 1, 0x656C797473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v129 = v12;
  }

  v16 = *(*(v0 + 1168) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved);
  if (v16 != 2)
  {
    result = sub_1D25CF12C(v16 & 1, 0, 0x6576615372657375, 0xEB00000000744964);
  }

  v17 = v4;
  v18 = *(v4 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    v125 = v0;
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      sub_1D2415B8C(*(v0 + 2312) + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, *(v0 + 1760), type metadata accessor for CuratedPrompt);
      if (v19 == 8)
      {

        sub_1D28726D8();
        v47 = sub_1D2873CA8();
        v48 = sub_1D2878A18();
        v49 = os_log_type_enabled(v47, v48);
        v50 = *(v0 + 1832);
        v51 = *(v0 + 1808);
        v52 = *(v0 + 1800);
        v53 = *(v0 + 1760);
        if (v49)
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_1D226E000, v47, v48, "Tried to log more than 8 bubbles in feedback auxiliary metrics", v54, 2u);
          MEMORY[0x1D38A3520](v54, -1, -1);
        }

        (*(v51 + 8))(v50, v52);
        sub_1D2415C9C(v53, type metadata accessor for CuratedPrompt);
        goto LABEL_31;
      }

      ++v19;
      v22 = *(v0 + 1760);
      *(v0 + 1152) = v19;
      v23 = sub_1D28795C8();
      MEMORY[0x1D38A0C50](v23);

      v24 = *v22;
      v25 = *(v20 + 8);
      sub_1D2870F68();
      v26 = sub_1D23BD628(v24, v25);
      if (v27)
      {
        v28 = sub_1D25D0410(0x4449656C62627562, 0xE800000000000000);
        v30 = v29;

        if (v30)
        {
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1D24EDCBC();
          }

          sub_1D25D4FD0(v28, v129);
        }

        goto LABEL_9;
      }

      v31 = v26;
      v32 = v21;
      v33 = v18;
      v34 = v20;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1D25D0410(0x4449656C62627562, 0xE800000000000000);
      v37 = v129[2];
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_52;
      }

      v41 = v36;
      if (v129[3] < v40)
      {
        break;
      }

      if (v35)
      {
        goto LABEL_22;
      }

      v46 = result;
      sub_1D24EDCBC();
      result = v46;
      v20 = v34;
      if ((v41 & 1) == 0)
      {
LABEL_23:
        v129[(result >> 6) + 8] |= 1 << result;
        v43 = (v129[6] + 16 * result);
        *v43 = 0x4449656C62627562;
        v43[1] = 0xE800000000000000;
        *(v129[7] + 8 * result) = v31;
        v44 = v129[2];
        v39 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v39)
        {
          goto LABEL_53;
        }

        v18 = v33;
        v129[2] = v45;
        v17 = v126;
        goto LABEL_8;
      }

LABEL_7:
      *(v129[7] + 8 * result) = v31;

      v17 = v126;
      v18 = v33;
LABEL_8:
      v21 = v32;
      v0 = v125;
LABEL_9:
      result = sub_1D2415C9C(*(v0 + 1760), type metadata accessor for CuratedPrompt);
      if (v18 == v19)
      {
        goto LABEL_27;
      }
    }

    sub_1D24E3658(v40, v35);
    result = sub_1D25D0410(0x4449656C62627562, 0xE800000000000000);
    if ((v41 & 1) != (v42 & 1))
    {

      return sub_1D28796E8();
    }

LABEL_22:
    v20 = v34;
    if ((v41 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

LABEL_27:

LABEL_31:
  v117 = *(v0 + 2320);
  v123 = *(v0 + 2475);
  v111 = *(v0 + 2160);
  v113 = *(v0 + 2104);
  v115 = *(v0 + 1664);
  v55 = *(v0 + 1368);
  v56 = *(v0 + 1352);
  v57 = *(v0 + 1336);
  v58 = *(v0 + 1328);
  v59 = *(v0 + 1224);
  v60 = *(v0 + 1216);
  v61 = *(v0 + 1208);
  v62 = *(v0 + 1200);
  v127 = *(v0 + 1184);
  v109 = *(v0 + 1176);
  sub_1D2415184((v0 + 2473), v111, *(v0 + 1168), v59);
  (*(v61 + 16))(v60, v59, v62);
  sub_1D22BD1D0(v56, v55, &qword_1EC6DB160);
  sub_1D22BD1D0(v57, v58, &qword_1EC6DB160);
  v63 = objc_allocWithZone(sub_1D2871C98());
  v120 = sub_1D2871C88();
  if (v123)
  {
    v64 = 0xD00000000000001ALL;
  }

  else
  {
    v64 = 0xD000000000000013;
  }

  if (v123)
  {
    v65 = ":third_party_model";
  }

  else
  {
    v65 = "is_generic_person_used";
  }

  v66 = v65 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB198);
  v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1A0) - 8);
  v68 = (*(*v67 + 80) + 32) & ~*(*v67 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1D287F500;
  v70 = v69 + v68;
  v71 = v67[14];
  strcpy(v70, ":sub_feature");
  *(v70 + 13) = 0;
  *(v70 + 14) = -5120;
  v72 = *MEMORY[0x1E699C650];
  v73 = *(v127 + 104);
  v73(v70, v72, v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1D287F500;
  *(v74 + 32) = v64;
  *(v74 + 40) = v66;
  *(v70 + v71) = v74;
  sub_1D25D961C(v69);
  swift_setDeallocating();
  sub_1D22BD238(v70, &qword_1EC6DB1A0);
  swift_deallocClassInstance();
  sub_1D22BD1D0(v111, v113, &qword_1EC6D9A30);
  if (v117(v113, 1, v115) == 1)
  {
    sub_1D22BD238(*(v0 + 2104), &qword_1EC6D9A30);
  }

  else
  {
    (*(*(v0 + 1672) + 32))(*(v0 + 1680), *(v0 + 2104), *(v0 + 1664));
    if (sub_1D2871F78())
    {
      v77 = *(v0 + 1256);
      v78 = *(v0 + 1248);
      v79 = *(v0 + 1232);
      v80 = *(v0 + 1192);
      v81 = *(v0 + 1176);
      *v80 = 0xD000000000000012;
      v80[1] = 0x80000001D28B5BD0;
      (v73)(v80, v72, v81, v75, v76);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1D287F500;
      sub_1D2871F58();
      if ((*(v77 + 48))(v79, 1, v78) == 1)
      {
        sub_1D22BD238(*(v0 + 1232), &qword_1EC6D9D58);
        v83 = 0;
        v84 = 0xE000000000000000;
      }

      else
      {
        v85 = *(v0 + 1264);
        v86 = *(v0 + 1256);
        v87 = *(v0 + 1248);
        (*(v86 + 32))(v85, *(v0 + 1232), v87);
        v83 = sub_1D2871ED8();
        v84 = v88;
        (*(v86 + 8))(v85, v87);
      }

      v89 = *(v0 + 1680);
      v90 = *(v0 + 1672);
      v91 = *(v0 + 1664);
      v92 = *(v0 + 1192);
      *(v82 + 32) = v83;
      *(v82 + 40) = v84;
      sub_1D25CF218(v82, v92);
      (*(v90 + 8))(v89, v91);
    }

    else
    {
      (*(*(v0 + 1672) + 8))(*(v0 + 1680), *(v0 + 1664));
    }
  }

  v93 = v120;
  v106 = *(v0 + 2280);
  v107 = *(v0 + 2288);
  v103 = *(v0 + 2264);
  v104 = *(v0 + 2272);
  v94 = *(v0 + 2256);
  v95 = *(v0 + 2248);
  v96 = *(v0 + 2184);
  v121 = *(v0 + 2176);
  v124 = *(v0 + 2192);
  v118 = *(v0 + 1520);
  v119 = *(v0 + 2160);
  v97 = *(v0 + 1512);
  v114 = *(v0 + 1496);
  v116 = *(v0 + 1504);
  v98 = *(v0 + 1464);
  v110 = *(v0 + 1376);
  v112 = *(v0 + 1456);
  v108 = *(v0 + 1352);
  v105 = *(v0 + 1336);
  v102 = *(v0 + 1224);
  v99 = *(v0 + 1208);
  v100 = *(v0 + 1200);
  v128 = v93;
  sub_1D2871D38();

  sub_1D22D6D4C(0, 0xF000000000000000);
  sub_1D22D6D4C(v95, v94);
  sub_1D22D6D4C(v103, v104);
  sub_1D22D6D4C(v106, v107);
  (*(v99 + 8))(v102, v100);
  sub_1D22BD238(v105, &qword_1EC6DB160);
  sub_1D22BD238(v108, &qword_1EC6DB160);
  sub_1D22BD238(v110, &qword_1EC6DB160);
  (*(v98 + 8))(v114, v112);
  (*(v97 + 8))(v118, v116);
  sub_1D22BD238(v119, &qword_1EC6D9A30);
  (*(v96 + 8))(v124, v121);

  v101 = *(v0 + 8);

  return v101(v128);
}

uint64_t sub_1D2413208(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1D2873CB8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  v2[15] = swift_task_alloc();
  v4 = sub_1D2872438();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D2878568();
  v2[20] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[21] = v6;
  v2[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D24133D0, v6, v5);
}

uint64_t sub_1D24133D0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_1D22BD1D0(*(v0 + 48) + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, v3, &unk_1EC6DDE30);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);

    v58 = *(v16 + 32);
    v58(v15, v18, v17);
    sub_1D28726D8();
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A08();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D226E000, v19, v20, "Recipe was directly provided, using that instead of context.", v21, 2u);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = *(v0 + 56);
    v27 = *(v0 + 64);
    v28 = *(v0 + 40);

    (*(v27 + 8))(v25, v26);
    v58(v28, v22, v24);
    (*(v23 + 56))(v28, 0, 1, v24);
    goto LABEL_16;
  }

  v4 = *(v0 + 48);
  sub_1D22BD238(*(v0 + 120), &unk_1EC6DDE30);
  v5 = *(v4 + 24);
  *(v0 + 184) = v5;
  if (v5)
  {
    sub_1D2870F78();
    sub_1D28726D8();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A08();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "Context was provided, will create recipe from recipe factory.", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v9 = *(v0 + 104);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);

    (*(v11 + 8))(v9, v10);
    type metadata accessor for GenerationRecipeFactory();
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_1D2413A48;
    v13 = *(v0 + 40);

    return sub_1D2462694(v13, v5);
  }

  v29 = *(v0 + 48);
  v30 = *(v29 + 32);
  *(v0 + 200) = v30;
  v31 = *(v29 + 40);
  *(v0 + 208) = v31;
  v32 = *(v29 + 48);
  *(v0 + 280) = v32;
  if (v32 == 255 || (v32 & 1) != 0)
  {

    sub_1D28726D8();
    v33 = sub_1D2873CA8();
    v34 = sub_1D2878A18();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D226E000, v33, v34, "Couldn't build recipe from input provided", v35, 2u);
      MEMORY[0x1D38A3520](v35, -1, -1);
    }

    v36 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 64);
    v38 = *(v0 + 72);
    v40 = *(v0 + 56);
    v41 = *(v0 + 40);

    (*(v39 + 8))(v38, v40);
    (*(v37 + 56))(v41, 1, 1, v36);
    goto LABEL_16;
  }

  sub_1D2415B1C(v30, v31, 0);
  sub_1D28726D8();
  v43 = sub_1D2873CA8();
  v44 = sub_1D2878A08();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D226E000, v43, v44, "Asset type was provided, will build recipe from asset.", v45, 2u);
    MEMORY[0x1D38A3520](v45, -1, -1);
  }

  v46 = *(v0 + 96);
  v47 = *(v0 + 56);
  v48 = *(v0 + 64);

  v49 = *(v48 + 8);
  *(v0 + 216) = v49;
  v49(v46, v47);
  if (!v30)
  {

    sub_1D28726D8();
    v52 = sub_1D2873CA8();
    v53 = sub_1D2878A18();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1D226E000, v52, v53, "Asset type was provided but asset is nil", v54, 2u);
      MEMORY[0x1D38A3520](v54, -1, -1);

      sub_1D2415B40(0, v31, v32);
    }

    else
    {
    }

    v55 = *(v0 + 128);
    v56 = *(v0 + 136);
    v57 = *(v0 + 40);
    v49(*(v0 + 80), *(v0 + 56));
    (*(v56 + 56))(v57, 1, 1, v55);
LABEL_16:

    v42 = *(v0 + 8);

    return v42();
  }

  *(v0 + 224) = sub_1D2878558();
  v51 = sub_1D28784F8();
  *(v0 + 232) = v51;
  *(v0 + 240) = v50;

  return MEMORY[0x1EEE6DFA0](sub_1D2413C64, v51, v50);
}