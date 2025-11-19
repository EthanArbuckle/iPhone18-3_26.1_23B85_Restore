void NSManagedObject.managedEntityContextType.getter(char *a1@<X8>)
{
  v3 = [v1 objectID];
  if ([v3 ic_isModernType])
  {

    v4 = 0;
  }

  else
  {
    v5 = [v3 ic_isLegacyType];

    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  *a1 = v4;
}

id NSManagedObjectID.managedEntityContextType.getter@<X0>(char *a1@<X8>)
{
  result = [v1 ic_isModernType];
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = [v1 ic_isLegacyType];
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21502D420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819112552;
  }

  else
  {
    v3 = 0x6E7265646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819112552;
  }

  else
  {
    v5 = 0x6E7265646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2150A6270();
  }

  return v8 & 1;
}

uint64_t sub_21502D4BC@<X0>(char *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21502D51C(uint64_t *a1@<X8>)
{
  v2 = 1819112552;
  if (!*v1)
  {
    v2 = 0x6E7265646F6DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21502D550()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_21502D5C8()
{
  sub_2150A4BB0();
}

uint64_t sub_21502D62C()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t ManagedEntityContextType.description.getter()
{
  if (*v0)
  {
    return 1819112552;
  }

  else
  {
    return 0x6E7265646F6DLL;
  }
}

uint64_t sub_21502D6D0()
{
  if (*v0)
  {
    return 1819112552;
  }

  else
  {
    return 0x6E7265646F6DLL;
  }
}

unint64_t ManagedEntityContextType.debugDescription.getter()
{
  v1 = *v0;
  sub_2150A5B20();

  if (v1)
  {
    v2 = 1819112552;
  }

  else
  {
    v2 = 0x6E7265646F6DLL;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  MEMORY[0x2160617E0](v2, v3);

  return 0xD000000000000019;
}

unint64_t sub_21502D7A4()
{
  result = qword_27CA44178;
  if (!qword_27CA44178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44178);
  }

  return result;
}

uint64_t FastSync.MessageVersion.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A6580();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    type metadata accessor for NotesVersion(0);
    sub_21502D910();
    sub_2150A6290();
    v5 = v7[6];
    __swift_destroy_boxed_opaque_existential_0(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21502D910()
{
  result = qword_27CA44180;
  if (!qword_27CA44180)
  {
    type metadata accessor for NotesVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44180);
  }

  return result;
}

uint64_t FastSync.MessageVersion.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A65A0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_2150A62C0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_21502DA14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A65A0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_2150A62C0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

unint64_t sub_21502DB18()
{
  result = qword_27CA44188;
  if (!qword_27CA44188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44188);
  }

  return result;
}

uint64_t _s14MessageVersionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14MessageVersionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_21502DBC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214D55670(0, &qword_27CA44A30);
    sub_214F737A4();
    sub_2150A5320();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_2150A5A10() || (sub_214D55670(0, &qword_27CA44A30), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_214F420F4();
      return;
    }

LABEL_17:
    v12 = [v11 identifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_2150A4AD0();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21505F4D0(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_21505F4D0((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_21502DE5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_214F86FCC(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_214F50074(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v9, v16, v5);
      v25 = v12;
      v17 = v9;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_214F86FCC(v18 > 1, v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 32;
      --v11;
      v9 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_214F302D4(v4, &qword_27CA41D40);
    return 0;
  }

  return v12;
}

uint64_t sub_21502E120(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_2150A5CE0();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x216062780](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_2150A5CB0();
      sub_2150A5CF0();
      sub_2150A5D00();
      sub_2150A5CC0();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2150A59D0();
    sub_2150A5CE0();
  }

  return v8;
}

uint64_t sub_21502E288()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44190);
  v1 = __swift_project_value_buffer(v0, qword_27CA44190);
  if (qword_27CA415C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42B10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NotesDataType.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t NotesDataObject.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotesDataObject.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NotesDataObject() + 20);

  return sub_214F5D4A4(v3, a1);
}

uint64_t type metadata accessor for NotesDataObject()
{
  result = qword_27CA441E8;
  if (!qword_27CA441E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NotesDataObject.modified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NotesDataObject() + 24);

  return sub_214F5D4A4(v3, a1);
}

uint64_t NotesDataObject.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotesDataObject() + 28));

  return v1;
}

uint64_t NotesDataObject.contentString.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotesDataObject() + 32));

  return v1;
}

uint64_t NotesDataObject.spotlightID.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotesDataObject() + 36));

  return v1;
}

uint64_t NotesDataObject.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NotesDataObject();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NotesDataObject.children.getter()
{
  type metadata accessor for NotesDataObject();
}

id NotesDataManager.init(managedObjectContext:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_didStartSharedContext;
  v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_didStartSharedContext] = 0;
  if (a1)
  {
    *&v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_context] = a1;
LABEL_13:
    v15.receiver = v1;
    v15.super_class = type metadata accessor for NotesDataManager();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  v3 = [objc_opt_self() sharedContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 managedObjectContext];

    if (v5)
    {
      *&v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_context] = v5;
      goto LABEL_13;
    }
  }

  if (qword_27CA41768 != -1)
  {
    swift_once();
  }

  v6 = swift_beginAccess();
  v7 = qword_27CA441A8;
  if (qword_27CA441A8)
  {
    swift_endAccess();
    v8 = v7;
LABEL_12:
    v11 = v7;
    v12 = [v8 managedObjectContext];

    *&v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_context] = v12;
    v1[v2] = 1;
    goto LABEL_13;
  }

  v9 = v1;
  qword_27CA441B0(&v16, v6);
  v10 = v16;
  qword_27CA441A8 = v16;
  swift_endAccess();
  if (v10)
  {
    v8 = v10;
    v7 = 0;
    v1 = v9;
    goto LABEL_12;
  }

  sub_215030504();
  swift_allocError();
  *v14 = 5;
  swift_willThrow();
  type metadata accessor for NotesDataManager();
  return swift_deallocPartialClassInstance();
}

void sub_21502E838()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  type metadata accessor for NotesDataObject();
  v2 = v1;
  sub_2150A56D0();
}

void sub_21502E8CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_context;
  v3 = [*(a1 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context) persistentStoreCoordinator];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A4A90();
    v6 = [v4 ic:v5 managedObjectIDForURIString:?];

    if (v6)
    {
      v7 = [*(a1 + v2) ic:v6 existingObjectWithID:?];
      if (v7)
      {
        v8 = *(a1 + v2);
        v9 = MEMORY[0x28223BE20](v7);
        type metadata accessor for NotesDataObject();
        v10 = v8;
        sub_2150A56D0();
      }

      else
      {
        sub_215030504();
        swift_allocError();
        *v13 = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_215030504();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_215030504();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }
}

uint64_t sub_21502EAD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA441D8);
  sub_2150A56D0();

  return v3;
}

void sub_21502EB60(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  v5 = a2;
  sub_215030B84(a1, &v6, v5);

  *a3 = v6;
}

void sub_21502EBD4(uint64_t *a1, void **a2, uint64_t a3)
{
  v7 = type metadata accessor for NotesDataObject();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a3 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  v25 = a3;
  v26 = v12;
  v27 = v11;
  v14 = v13;
  sub_2150A56D0();
  if (v3)
  {

    if (qword_27CA41760 != -1)
    {
      swift_once();
    }

    v15 = sub_2150A3F30();
    __swift_project_value_buffer(v15, qword_27CA44190);

    v16 = sub_2150A3F10();
    v17 = sub_2150A5560();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_214F7723C(v12, v11, &v28);
      _os_log_impl(&dword_214D51000, v16, v17, "failed to get Notes data object: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x216064AF0](v19, -1, -1);
      MEMORY[0x216064AF0](v18, -1, -1);
    }
  }

  else
  {

    v20 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_2150604E8(0, v20[2] + 1, 1, v20);
      *a2 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_2150604E8(v22 > 1, v23 + 1, 1, v20);
      *a2 = v20;
    }

    v20[2] = v23 + 1;
    sub_2150309AC(v10, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23);
  }
}

void sub_21502EEA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA441D8);
  sub_2150A56D0();
}

void sub_21502EF3C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44208);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v36 - v8);
  v10 = type metadata accessor for NotesDataObject();
  v41 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v36 - v13;
  v14 = objc_opt_self();
  v15 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_context;
  v16 = [v14 predicateForVisibleNotesInContext_];
  v17 = [objc_opt_self() sortDescriptorsForType:(a2 & 1) == 0 ascending:1];
  if (!v17)
  {
    sub_214D55670(0, &qword_27CA44210);
    sub_2150A4ED0();
    v17 = sub_2150A4EB0();
  }

  sub_214D55670(0, &qword_27CA43100);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = *(a1 + v15);
  v20 = v16;
  v21 = [ObjCClassFromMetadata ic:v20 objectsMatchingPredicate:v17 sortDescriptors:0 relationshipKeyPathsForPrefetching:a3 fetchLimit:v19 context:?];

  sub_214D55670(0, &qword_27CA43228);
  v22 = sub_2150A4ED0();

  v23 = sub_21502E120(v22);

  if (v23)
  {
    v24 = (v23 & 0xFFFFFFFFFFFFFF8);
    if (v23 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
    {
      v26 = v44;
      v37 = v20;
      if (!i)
      {
        break;
      }

      v27 = 0;
      v44 = v23 & 0xC000000000000001;
      v20 = (v41 + 48);
      v28 = MEMORY[0x277D84F90];
      v42 = i;
      v43 = v24;
      v39 = v23;
      while (1)
      {
        if (v44)
        {
          v29 = MEMORY[0x216062780](v27, v23);
        }

        else
        {
          if (v27 >= v24[2])
          {
            goto LABEL_25;
          }

          v29 = *(v23 + 8 * v27 + 32);
        }

        v24 = v29;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v46 = v29;
        v31 = v26;
        sub_21502F3DC(&v46, v9);

        if ((*v20)(v9, 1, v10) == 1)
        {
          sub_214F302D4(v9, &qword_27CA44208);
        }

        else
        {
          v32 = v40;
          sub_2150309AC(v9, v40);
          sub_2150309AC(v32, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_2150604E8(0, v28[2] + 1, 1, v28);
          }

          v34 = v28[2];
          v33 = v28[3];
          if (v34 >= v33 >> 1)
          {
            v28 = sub_2150604E8(v33 > 1, v34 + 1, 1, v28);
          }

          v28[2] = v34 + 1;
          sub_2150309AC(v45, v28 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34);
          v26 = v31;
          v23 = v39;
        }

        ++v27;
        v24 = v43;
        if (v30 == v42)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v28 = MEMORY[0x277D84F90];
LABEL_23:

    *v38 = v28;
  }

  else
  {
    sub_215030504();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();
  }
}

uint64_t sub_21502F3DC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = *a1;
  v12 = [*a1 attachments];
  if (v12)
  {
    v13 = v12;
    sub_214D55670(0, &qword_27CA44A30);
    sub_214F737A4();
    v14 = sub_2150A52E0();

    sub_21502DBC4(v14);
    v51 = v15;
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v16 = [v11 title];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2150A4AD0();
    v49 = v19;
    v50 = v18;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v20 = [v11 creationDate];
  if (v20)
  {
    v21 = v20;
    sub_2150A3930();

    v22 = sub_2150A3960();
    (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
  }

  else
  {
    v23 = sub_2150A3960();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  }

  v24 = [v11 modificationDate];
  if (v24)
  {
    v25 = v24;
    sub_2150A3930();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v52 = v10;
  v27 = sub_2150A3960();
  (*(*(v27 - 8) + 56))(v8, v26, 1, v27);
  v28 = [v11 identifier];
  v53 = v2;
  if (v28)
  {
    v29 = v28;
    v30 = v8;
    v31 = sub_2150A4AD0();
    v33 = v32;
  }

  else
  {
    v30 = v8;
    v31 = 0;
    v33 = 0;
  }

  v34 = [v11 searchableString];
  v35 = [v34 string];

  v36 = sub_2150A4AD0();
  v38 = v37;

  v39 = [v11 searchIndexingIdentifier];
  v40 = sub_2150A4AD0();
  v42 = v41;

  v43 = v49;
  *a2 = v50;
  a2[1] = v43;
  v44 = type metadata accessor for NotesDataObject();
  sub_214F71500(v52, a2 + v44[5]);
  sub_214F71500(v30, a2 + v44[6]);
  v45 = (a2 + v44[7]);
  *v45 = v31;
  v45[1] = v33;
  v46 = (a2 + v44[8]);
  *v46 = v36;
  v46[1] = v38;
  v47 = (a2 + v44[9]);
  *v47 = v40;
  v47[1] = v42;
  *(a2 + v44[10]) = 0;
  *(a2 + v44[11]) = v51;
  return (*(*(v44 - 1) + 56))(a2, 0, 1, v44);
}

void sub_21502F7D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA441D8);
  sub_2150A56D0();
}

void sub_21502F86C(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a2;
  v35 = a3;
  v41 = type metadata accessor for NotesDataObject();
  v39 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v35 - v7;
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - v8;
  v47 = MEMORY[0x277D84F90];
  v9 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_34:
    v10 = sub_2150A59D0();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_context;
  v42 = MEMORY[0x277D84F90];
  while (v10 != v11)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x216062780](v11, a1);
    }

    else
    {
      if (v11 >= v9[2])
      {
        goto LABEL_31;
      }

      v13 = *(a1 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v16 = [*(v46 + v12) ic:v13 existingObjectWithID:?];

    ++v11;
    if (v16)
    {
      MEMORY[0x216061A60]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2150A4F10();
      }

      sub_2150A4F70();
      v42 = v47;
      v11 = v15;
    }
  }

  v17 = v42;
  if (v42 >> 62)
  {
    v34 = v42;
    a1 = sub_2150A59D0();
    v17 = v34;
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    a1 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
LABEL_16:
      v18 = 0;
      v36 = v17 & 0xFFFFFFFFFFFFFF8;
      v37 = v17 & 0xC000000000000001;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v37)
        {
          v20 = MEMORY[0x216062780](v18, v17);
        }

        else
        {
          if (v18 >= *(v36 + 16))
          {
            goto LABEL_33;
          }

          v20 = *(v17 + 8 * v18 + 32);
        }

        v21 = v20;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_32;
        }

        v43 = v18 + 1;
        v22 = v12;
        v23 = a1;
        v24 = v22;
        MEMORY[0x28223BE20](v20);
        v9 = &v35 - 4;
        *(&v35 - 2) = v21;
        v26 = v25;
        v27 = v40;
        v28 = v45;
        sub_2150A56D0();
        v45 = v28;
        if (v28)
        {

          return;
        }

        v29 = v38;
        sub_2150309AC(v27, v38);
        sub_2150309AC(v29, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2150604E8(0, v19[2] + 1, 1, v19);
        }

        a1 = v23;
        v31 = v19[2];
        v30 = v19[3];
        v12 = v24;
        if (v31 >= v30 >> 1)
        {
          v19 = sub_2150604E8(v30 > 1, v31 + 1, 1, v19);
        }

        v33 = v43;
        v32 = v44;
        v19[2] = v31 + 1;
        sub_2150309AC(v32, v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31);
        ++v18;
        v17 = v42;
        if (v33 == a1)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_37:

  *v35 = v19;
}

uint64_t sub_21502FCAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v76 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v76 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v76 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v83 = a1;
    v19 = a1;
    v20 = [v18 attachments];
    if (v20)
    {
      v21 = v20;
      sub_214D55670(0, &qword_27CA44A30);
      sub_214F737A4();
      v22 = sub_2150A52E0();

      sub_21502DBC4(v22);
      v81 = v23;
    }

    else
    {
      v81 = MEMORY[0x277D84F90];
    }

    v30 = [v18 title];
    if (v30)
    {
      v31 = v30;
      v77 = sub_2150A4AD0();
      v82 = v32;
    }

    else
    {
      v77 = 0;
      v82 = 0;
    }

    v33 = [v18 creationDate];
    if (v33)
    {
      v34 = v33;
      sub_2150A3930();

      v35 = sub_2150A3960();
      (*(*(v35 - 8) + 56))(v16, 0, 1, v35);
    }

    else
    {
      v36 = sub_2150A3960();
      (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
    }

    v37 = [v18 modificationDate];
    if (v37)
    {
      v38 = v37;
      sub_2150A3930();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = sub_2150A3960();
    (*(*(v40 - 8) + 56))(v14, v39, 1, v40);
    v41 = [v18 identifier];
    v84 = v2;
    if (v41)
    {
      v42 = v41;
      v43 = sub_2150A4AD0();
      v79 = v44;
      v80 = v43;
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v45 = [v18 searchableString];
    v46 = [v45 string];

    v78 = 0;
  }

  else
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (!v24)
    {
      sub_215030504();
      swift_allocError();
      *v47 = 4;
      return swift_willThrow();
    }

    v18 = v24;
    v83 = a1;
    v25 = a1;
    v26 = [v18 title];
    if (v26)
    {
      v27 = v26;
      v28 = sub_2150A4AD0();
      v82 = v29;
    }

    else
    {
      v28 = 0;
      v82 = 0;
    }

    v49 = [v18 creationDate];
    if (v49)
    {
      v50 = v49;
      sub_2150A3930();

      v51 = sub_2150A3960();
      (*(*(v51 - 8) + 56))(v11, 0, 1, v51);
    }

    else
    {
      v52 = sub_2150A3960();
      (*(*(v52 - 8) + 56))(v11, 1, 1, v52);
    }

    v53 = [v18 modificationDate];
    if (v53)
    {
      v54 = v53;
      sub_2150A3930();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v56 = sub_2150A3960();
    (*(*(v56 - 8) + 56))(v8, v55, 1, v56);
    v57 = [v18 identifier];
    v84 = v2;
    if (v57)
    {
      v58 = v57;
      v59 = sub_2150A4AD0();
      v79 = v60;
      v80 = v59;
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v61 = [v18 additionalIndexableText];
    if (v61)
    {
      v46 = v61;
      v77 = v28;
      v81 = MEMORY[0x277D84F90];
      v78 = 1;
    }

    else
    {
      v62 = [v18 summary];
      v81 = MEMORY[0x277D84F90];
      v78 = 1;
      if (!v62)
      {
        v63 = 0;
        v65 = 0;
        goto LABEL_38;
      }

      v46 = v62;
      v77 = v28;
    }

    v16 = v11;
    v14 = v8;
  }

  v63 = sub_2150A4AD0();
  v65 = v64;

  v11 = v16;
  v8 = v14;
  v28 = v77;
LABEL_38:
  v66 = [v18 searchIndexingIdentifier];
  v67 = sub_2150A4AD0();
  v69 = v68;

  v70 = v82;
  *a2 = v28;
  a2[1] = v70;
  v71 = type metadata accessor for NotesDataObject();
  sub_214F71500(v11, a2 + v71[5]);
  result = sub_214F71500(v8, a2 + v71[6]);
  v72 = (a2 + v71[7]);
  v73 = v79;
  *v72 = v80;
  v72[1] = v73;
  v74 = (a2 + v71[8]);
  *v74 = v63;
  v74[1] = v65;
  v75 = (a2 + v71[9]);
  *v75 = v67;
  v75[1] = v69;
  *(a2 + v71[10]) = v78;
  *(a2 + v71[11]) = v81;
  return result;
}

id NotesDataManager.__deallocating_deinit()
{
  if (v0[OBJC_IVAR____TtC11NotesShared16NotesDataManager_didStartSharedContext] == 1)
  {
    [objc_opt_self() clearSharedContext];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesDataManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NotesDataManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2150304E0()
{
  qword_27CA441A8 = 0;
  qword_27CA441B0 = sub_215030A10;
  qword_27CA441B8 = 0;
}

unint64_t sub_215030504()
{
  result = qword_27CA441C8;
  if (!qword_27CA441C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA441C8);
  }

  return result;
}

unint64_t sub_2150305FC()
{
  result = qword_27CA441E0;
  if (!qword_27CA441E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA441E0);
  }

  return result;
}

void sub_215030688()
{
  sub_215030774(319, &qword_280C23178, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_214F938E4();
    if (v1 <= 0x3F)
    {
      sub_215030774(319, &qword_27CA441F8, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_215030774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21503093C()
{
  result = qword_27CA44200;
  if (!qword_27CA44200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44200);
  }

  return result;
}

uint64_t sub_2150309AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesDataObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_215030A10@<X0>(void *a1@<X8>)
{
  result = sub_215030A38();
  *a1 = result;
  return result;
}

void *sub_215030A38()
{
  v0 = objc_opt_self();
  [v0 startSharedContextWithOptions_];
  v1 = [v0 sharedContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 databaseOpenError];
    if (!v3)
    {
      return v2;
    }

    v4 = v3;
  }

  if (qword_27CA41760 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  __swift_project_value_buffer(v5, qword_27CA44190);
  v6 = sub_2150A3F10();
  v7 = sub_2150A5560();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_214D51000, v6, v7, "Cannot create modern note context for Spotlight export — returning nil and exiting shortly", v8, 2u);
    MEMORY[0x216064AF0](v8, -1, -1);
  }

  return 0;
}

uint64_t sub_215030B84(uint64_t result, void **a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      sub_21502EBD4(v9, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t FastSync.MessageContainer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3A00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FastSync.MessageContainer.init(messages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  result = type metadata accessor for FastSync.MessageContainer();
  *(a2 + *(result + 32)) = a1;
  *(a2 + *(result + 28)) = 11;
  return result;
}

uint64_t FastSync.MessageContainer.init<A>(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44218);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2150C25D0;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  v13 = *(a2 - 8);
  (*(v13 + 16))(boxed_opaque_existential_1, a1, a2);
  *(v8 + 72) = 0;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v10 = type metadata accessor for FastSync.MessageContainer();
  *(a4 + *(v10 + 32)) = v8;
  *(a4 + *(v10 + 28)) = 11;
  v11 = *(v13 + 8);

  return v11(a1, a2);
}

__n128 FastSync.MessageContainer.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v17[8] = a3;
  *&v17[16] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v17[24] = 0;
  v9 = *(a2 + 32);
  v10 = *(v4 + v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_21505FE30(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_21505FE30((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[6 * v12];
  result = v16;
  v15 = *v17;
  *(v13 + 57) = *&v17[9];
  *(v13 + 2) = result;
  *(v13 + 3) = v15;
  *(v4 + v9) = v10;
  return result;
}

unint64_t FastSync.MessageContainer.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + *(a2 + 32));
    if (*(v4 + 16) > result)
    {
      return sub_215032F04(v4 + 48 * result + 32, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215031004(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21503108C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FastSync.MessageContainer.count.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_2150310B4(uint64_t **a1, unint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_215031184(v6, *a2, a3);
  return sub_21503113C;
}

void sub_21503113C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_215031184(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x29uLL);
  }

  *a1 = v6;
  FastSync.MessageContainer.subscript.getter(a2, a3, v6);
  return sub_215031210;
}

void sub_215031210(uint64_t *a1)
{
  v1 = *a1;
  sub_215032FE0(*a1);

  free(v1);
}

uint64_t sub_215031250()
{
  swift_getWitnessTable();

  return sub_2150A53B0();
}

uint64_t sub_215031348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2150313D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_215031448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_2150A5DD0();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2150314D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_215031528(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_2150331F8();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_2150315B4()
{
  v0 = sub_2150A5EE0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_215031608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21503167C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2150316E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_215031758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2150317C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2150315B4();
  *a1 = result;
  return result;
}

uint64_t sub_215031800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214D79008(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21503183C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_215031600(a1, a2, *(a3 + 16));
  *a4 = result;
  return result;
}

uint64_t sub_215031868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_215033D9C();
  *a1 = result;
  return result;
}

uint64_t sub_215031894(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2150318E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FastSync.MessageContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v54 = sub_2150A3A00();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16MessageContainerV10CodingKeysOMa();
  swift_getWitnessTable();
  v6 = sub_2150A5FE0();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v52 = a2;
  v10 = type metadata accessor for FastSync.MessageContainer();
  v51 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = *(v11 + 32);
  *&v14[&v46 - v12] = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v65;
  sub_2150A6590();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v53;
  v48 = v14;
  v65 = v10;
  v49 = v13;
  LOBYTE(v60) = 0;
  sub_214FA94F4(&qword_27CA43008);
  v17 = v54;
  sub_2150A5FC0();
  v19 = v49;
  (*(v16 + 32))(v49, v57, v17);
  LOBYTE(v58) = 2;
  sub_215032F8C();
  sub_2150A5FC0();
  *&v19[*(v65 + 28)] = v60;
  LOBYTE(v60) = 1;
  sub_2150A5F00();
  v54 = v9;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  result = sub_2150A6120();
  v47 = a1;
  if (v20)
  {
    v21 = MEMORY[0x277D84F90];
    v22 = v48;
  }

  else
  {
    v23 = v48;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_21505FE30(0, ((result + 1) / 2) & ~((result + 1 + ((result + 1) >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
    v22 = v23;
    *&v23[v49] = v21;
  }

  __swift_project_boxed_opaque_existential_1(v63, v64);
  if ((sub_2150A6150() & 1) == 0)
  {
    v46 = "' that isn't a FastSyncMessage.";
    v53 = "' does not exist.";
    v48 = "Tried to decode type '";
    v57 = "didStartSharedContext";
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
      v27 = sub_2150A6130();
      v29 = v28;
      v30 = sub_2150A5B30();
      if (!v30)
      {
        break;
      }

      v31 = v30;

      v32 = swift_conformsToProtocol2();
      if (!v32)
      {
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_2150A5B20();
        MEMORY[0x2160617E0](0xD000000000000016, v53 | 0x8000000000000000);
        v36 = sub_2150A6670();
        MEMORY[0x2160617E0](v36);

        v35 = 0xD00000000000001FLL;
        v37 = &v67;
        goto LABEL_19;
      }

      v33 = v32;
      if ((sub_215033274() & 1) == 0)
      {
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_2150A5B20();
        MEMORY[0x2160617E0](0x6E697463656A6552, 0xEA00000000002067);
        v38 = sub_2150A6670();
        MEMORY[0x2160617E0](v38);

        v35 = 0xD000000000000029;
        v37 = &v66;
LABEL_19:
        v34 = *(v37 - 32) | 0x8000000000000000;
LABEL_20:
        MEMORY[0x2160617E0](v35, v34);
        sub_2150A5C20();
        v39 = swift_allocError();
        sub_2150A5BE0();

        v60 = v39;
        v62 = 1;
        __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
        UnkeyedDecodingContainer.skip(count:)(1);
        goto LABEL_21;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
      *&v59[8] = v31;
      *&v59[16] = v33;
      __swift_allocate_boxed_opaque_existential_1(&v58);
      sub_2150A6140();
      sub_214F6163C(&v58, &v60);
      v62 = 0;
      __swift_destroy_boxed_opaque_existential_0(&v58);
LABEL_21:
      v24 = v49;
      v40 = v21;
      sub_215032F04(&v60, &v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_21505FE30(0, v21[2] + 1, 1, v21);
      }

      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = sub_21505FE30((v41 > 1), v42 + 1, 1, v40);
      }

      sub_215032FE0(&v60);
      v40[2] = v42 + 1;
      v43 = &v40[6 * v42];
      v44 = v58;
      v45 = *v59;
      *(v43 + 57) = *&v59[9];
      v43[2] = v44;
      v43[3] = v45;
      v21 = v40;
      *&v22[v24] = v40;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      if (sub_2150A6150())
      {
        goto LABEL_10;
      }
    }

    v60 = 0;
    v61 = 0xE000000000000000;
    sub_2150A5B20();

    v60 = 0x272065707954;
    v61 = 0xE600000000000000;
    MEMORY[0x2160617E0](v27, v29);

    v34 = v57 | 0x8000000000000000;
    v35 = 0xD000000000000011;
    goto LABEL_20;
  }

  v24 = v49;
LABEL_10:
  (*(v56 + 8))(v54, v55);
  __swift_destroy_boxed_opaque_existential_0(v63);
  v25 = v51;
  v26 = v65;
  (*(v51 + 16))(v50, v24, v65);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return (*(v25 + 8))(v24, v26);
}

uint64_t FastSync.MessageContainer.encode(to:)(void *a1, unint64_t a2)
{
  v47 = *(a2 + 16);
  _s16MessageContainerV10CodingKeysOMa();
  swift_getWitnessTable();
  v6 = sub_2150A60C0();
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  if (*(*(v2 + *(a2 + 32)) + 16))
  {
    v44 = a2;
    v45 = v3;
    v46 = v7;
    v10 = v2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2150A65B0();
    LOBYTE(v48[0]) = 0;
    sub_2150A3A00();
    sub_214FA94F4(&qword_280C241B8);
    v11 = v9;
    v12 = v45;
    sub_2150A60A0();
    if (v12)
    {
      return (*(v46 + 8))(v9, v6);
    }

    else
    {
      v13 = v44;
      *&v48[0] = *(v10 + *(v44 + 28));
      LOBYTE(v52) = 2;
      sub_215033380();
      sub_2150A60A0();
      v40[1] = 0;
      LOBYTE(v48[0]) = 1;
      v42 = v6;
      v41 = v11;
      sub_2150A6000();
      v26 = *(v10 + *(v13 + 32));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = v26 + 32;
        v44 = "SyncMessageContainer.swift";
        *&v25 = 136315650;
        v43 = v25;
        do
        {
          sub_215032F04(v28, v48);
          if (v50)
          {
            v29 = *&v48[0];
            v54 = *&v48[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
            swift_willThrowTypedImpl();
            v30 = v29;
            if (qword_280C23230 != -1)
            {
              swift_once();
            }

            v31 = sub_2150A3F30();
            __swift_project_value_buffer(v31, qword_280C23238);
            v32 = sub_2150A5570();
            v33 = sub_2150A3F10();
            if (os_log_type_enabled(v33, v32))
            {
              v34 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v51[0] = v45;
              *v34 = v43;
              v35 = sub_2150A5B70();
              v37 = sub_214F7723C(v35, v36, v51);

              *(v34 + 4) = v37;
              *(v34 + 12) = 2048;
              *(v34 + 14) = 190;
              *(v34 + 22) = 2080;
              *&v48[0] = 0;
              *(&v48[0] + 1) = 0xE000000000000000;
              sub_2150A5B20();
              MEMORY[0x2160617E0](0xD000000000000037, v44 | 0x8000000000000000);
              v54 = v29;
              sub_2150A5DB0();
              v38 = sub_214F7723C(*&v48[0], *(&v48[0] + 1), v51);

              *(v34 + 24) = v38;
              _os_log_impl(&dword_214D51000, v33, v32, "Failed assertion at %s:%lu: %s", v34, 0x20u);
              v39 = v45;
              swift_arrayDestroy();
              MEMORY[0x216064AF0](v39, -1, -1);
              MEMORY[0x216064AF0](v34, -1, -1);
            }
          }

          else
          {
            sub_214D7A458(v48, v51);
            sub_2150333D4(v51, &v52);
            __swift_destroy_boxed_opaque_existential_0(v51);
          }

          v28 += 48;
          --v27;
        }

        while (v27);
      }

      __swift_destroy_boxed_opaque_existential_0(&v52);
      return (*(v46 + 8))(v41, v42);
    }
  }

  else
  {
    if (qword_280C23230 != -1)
    {
      swift_once();
    }

    v15 = sub_2150A3F30();
    __swift_project_value_buffer(v15, qword_280C23238);
    v16 = sub_2150A5570();
    v17 = sub_2150A3F10();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v51[0] = v19;
      *v18 = 136315650;
      v20 = sub_2150A5B70();
      v22 = sub_214F7723C(v20, v21, v51);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 176;
      *(v18 + 22) = 2080;
      v52 = 0;
      v53 = 0xE000000000000000;
      memset(v48, 0, sizeof(v48));
      v49 = 7;
      sub_2150A5DB0();
      v23 = sub_214F7723C(v52, v53, v51);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_214D51000, v17, v16, "Failed assertion at %s:%lu: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v19, -1, -1);
      MEMORY[0x216064AF0](v18, -1, -1);
    }

    sub_215003804();
    swift_allocError();
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 7;
    return swift_willThrow();
  }
}

uint64_t FastSync.MessageContainer.description.getter(uint64_t a1)
{
  sub_2150A5B20();
  v3 = sub_2150A6670();

  MEMORY[0x2160617E0](1029990696, 0xE400000000000000);
  sub_2150A3A00();
  sub_214FA94F4(&qword_280C24850);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  MEMORY[0x2160617E0](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  MEMORY[0x2160617E0](0x746C75736572202CLL, 0xEA00000000003D73);
  v6 = *(v1 + *(a1 + 32));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44220);
  v8 = MEMORY[0x216061AA0](v6, v7);
  MEMORY[0x2160617E0](v8);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v3;
}

unint64_t sub_215032B44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2150A4D40();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21505FD24(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21505FD24((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2150A4D10();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2150A4BD0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2150A4BD0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2150A4D40();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21505FD24(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2150A4D40();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21505FD24(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21505FD24((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2150A4BD0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215032F04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_215032F8C()
{
  result = qword_27CA44228;
  if (!qword_27CA44228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44228);
  }

  return result;
}

uint64_t sub_215032FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215033048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_2150A4A40();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21503312C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2150A4A40();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_2150A54D0();
  result = sub_2150A4A40();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2150331FC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2150A60F0() & 1;
  }
}

uint64_t sub_215033274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44360);
  v0 = sub_2150A4B50();
  v10[0] = 46;
  v10[1] = 0xE100000000000000;
  v9[2] = v10;
  v2 = sub_215032B44(0x7FFFFFFFFFFFFFFFLL, 1, sub_214F73280, v9, v0, v1, 0x2EuLL);
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];

    v7 = sub_2150331FC(v3, v4, v5, v6, 0x6168537365746F4ELL, 0xEB00000000646572);
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_215033380()
{
  result = qword_27CA44230;
  if (!qword_27CA44230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44230);
  }

  return result;
}

void sub_2150333D4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_2150A5DE0();
  if (v4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_2150A6200();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_2150A6210();
  }

  else
  {
    if (qword_280C23230 != -1)
    {
      swift_once();
    }

    v5 = sub_2150A3F30();
    __swift_project_value_buffer(v5, qword_280C23238);
    v6 = sub_2150A5570();
    log = sub_2150A3F10();
    if (os_log_type_enabled(log, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315650;
      v9 = sub_2150A5B70();
      v11 = sub_214F7723C(v9, v10, &v15);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 199;
      *(v7 + 22) = 2080;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000033, 0x80000002150E7510);
      v12 = sub_2150A6670();
      MEMORY[0x2160617E0](v12);

      v13 = sub_214F7723C(0, 0xE000000000000000, &v15);

      *(v7 + 24) = v13;
      _os_log_impl(&dword_214D51000, log, v6, "Failed assertion at %s:%lu: %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v8, -1, -1);
      MEMORY[0x216064AF0](v7, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_2150339B0()
{
  result = qword_27CA44240;
  if (!qword_27CA44240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44240);
  }

  return result;
}

uint64_t sub_215033B78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA42760);
    sub_2150339B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_215033C28()
{
  sub_2150A3A00();
  if (v0 <= 0x3F)
  {
    sub_215033CDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_215033CDC()
{
  if (!qword_27CA442D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44220);
    v0 = sub_2150A4FD0();
    if (!v1)
    {
      atomic_store(v0, qword_27CA442D8);
    }
  }
}

uint64_t sub_215033DB8()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44368);
  v1 = __swift_project_value_buffer(v0, qword_27CA44368);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriTranscriptionMethod.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t SiriTranscriptionMethod.init()()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t SiriTranscriptionMethod.prepareForTranscription()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44390);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44398);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215034144, 0, 0);
}

uint64_t sub_215034144()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(type metadata accessor for SiriSpeechRecognitionManager()) init];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;

  v4 = *(v1 + 16);
  v0[14] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_2150342C0;
    v6 = v0[8];

    return sub_215051E98(v6);
  }

  else
  {
    v8 = v0[8];
    (*(v0[10] + 56))(v8, 1, 1, v0[9]);
    sub_214F302D4(v8, &qword_27CA44398);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_215034654;

    return SiriTranscriptionMethod.finishTranscription()();
  }
}

uint64_t sub_2150342C0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_215034894;
  }

  else
  {

    v3 = sub_2150343DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2150343DC()
{
  v1 = v0[13];
  v2 = v0[10];
  v16 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v14 = v0[3];
  (*(v2 + 56))(v3, 0, 1, v4);
  v15 = *(v2 + 32);
  v15(v1, v3, v4);
  type metadata accessor for TranscriptionUpdate(0);
  (*(v5 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_2150A5180();
  v9 = sub_2150A5120();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v2 + 16))(v16, v1, v4);
  v10 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v14;
  v15(&v11[v10], v16, v4);

  sub_214FD26AC(0, 0, v7, &unk_2150CB5D8, v11);

  (*(v2 + 8))(v1, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_215034654()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2150347CC, 0, 0);
  }
}

uint64_t sub_2150347CC()
{
  sub_214F4810C();
  swift_allocError();
  *v1 = 15;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_215034894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SiriTranscriptionMethod.finishTranscription()()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for TranscriptionUpdate(0);
  v1[11] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B0);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215034AA4, 0, 0);
}

uint64_t sub_215034AA4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v0[16] = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  v5 = *(v2 + 48);
  v0[17] = v5;
  v0[18] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  if (!v5(v3 + v4, 1, v1))
  {
    v7 = v0[14];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[11];
    (*(v9 + 16))(v7, v3 + v4, v8);
    *v10 = 1;
    swift_storeEnumTagMultiPayload();
    sub_2150A5140();
    (*(v9 + 8))(v7, v8);
    v6 = 0;
  }

  v11 = v0[15];
  v12 = v0[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8);
  (*(*(v13 - 8) + 56))(v11, v6, 1, v13);
  sub_214F302D4(v11, &qword_27CA443B0);
  v14 = *(v12 + 16);
  v0[19] = v14;
  if (v14)
  {
    v14;
    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = sub_215034DCC;

    return sub_21505385C();
  }

  else
  {
    v17 = v0[17];
    v18 = v0[16];
    v19 = v0[12];
    v20 = v0[8];
    *(v20 + 16) = 0;
    if (!v17(v20 + v18, 1, v19))
    {
      v22 = v0[13];
      v21 = v0[14];
      v23 = v0[12];
      (*(v22 + 16))(v21, v0[8] + v0[16], v23);
      sub_2150A5150();
      (*(v22 + 8))(v21, v23);
    }

    v24 = v0[16];
    v26 = v0[8];
    v25 = v0[9];
    (*(v0[13] + 56))(v25, 1, 1, v0[12]);
    swift_beginAccess();
    sub_215037BF0(v25, v26 + v24);
    swift_endAccess();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_215034DCC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_215035048;
  }

  else
  {

    v3 = sub_215034EE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_215034EE8()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[12];
  *(v1 + 16) = 0;

  if (!v3(v1 + v4, 1, v5))
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    (*(v7 + 16))(v6, v0[8] + v0[16], v8);
    sub_2150A5150();
    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[16];
  v11 = v0[8];
  v10 = v0[9];
  (*(v0[13] + 56))(v10, 1, 1, v0[12]);
  swift_beginAccess();
  sub_215037BF0(v10, v11 + v9);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_215035048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SiriTranscriptionMethod.receiveAudio(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_215035104, 0, 0);
}

uint64_t sub_215035104()
{
  v1 = *(v0[2] + 16);
  if (v1)
  {
    v2 = v0[3];
    v3 = v1;
    sub_215053424(v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2150351A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44390);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EE8);
  v3[9] = swift_task_alloc();
  v5 = sub_2150A3750();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_2150A4120();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF8);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C90);
  v3[15] = swift_task_alloc();
  v6 = sub_2150A3AC0();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215035448, 0, 0);
}

uint64_t sub_215035448()
{
  if (ICInternalSettingsDisableGASRAvailabilityCheck())
  {
    sub_2150A3A10();
  }

  else
  {
    sub_2150A3A70();
  }

  v1 = v0[14];
  v2 = v0[15];
  v32 = v0[11];
  v34 = v0[10];
  v35 = v0[12];
  v36 = v0[9];
  v33 = v0[3];
  (*(v0[17] + 16))();
  v3 = *MEMORY[0x277CDCE30];
  v4 = sub_2150A42A0();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2150A4130();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F00);
  v7 = sub_2150A4140();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2150C25D0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277CDCAB0], v7);
  sub_214F803B8(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F08);
  v11 = sub_2150A4290();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2150C25D0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277CDCDB0], v11);
  sub_214F806D8(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F10);
  v15 = sub_2150A41A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2150C29B0;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x277CDCB08], v15);
  v21(v20 + v17, *MEMORY[0x277CDCB10], v15);
  v21(v20 + 2 * v17, *MEMORY[0x277CDCB28], v15);
  sub_21505578C(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2150A41E0();
  swift_allocObject();
  v22 = sub_2150A41C0();
  v0[20] = v22;
  sub_2150A40E0();
  sub_2150A4110();
  (*(v32 + 16))(v35, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C98);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2150C25D0;
  v24 = sub_215037DE0();
  *(v23 + 32) = v22;
  *(v23 + 40) = v24;
  v25 = sub_2150A4250();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  sub_2150A4240();
  swift_allocObject();

  v26 = sub_2150A4230();
  v27 = swift_task_alloc();
  v0[21] = v27;
  *v27 = v0;
  v27[1] = sub_215035A84;
  v28 = v0[12];
  v29 = v0[13];
  v30 = v0[9];

  return MEMORY[0x28212BC08](v29, v28, v23, v30, 0, v26, 0, 0);
}

uint64_t sub_215035A84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_215035F3C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v4;
    v5[1] = sub_215035C08;

    return MEMORY[0x28212BBF0]();
  }
}

uint64_t sub_215035C08()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_215036044;
  }

  else
  {
    v2 = sub_215035D1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215035D1C()
{
  v1 = v0[20];
  v2 = v0[17];
  v13 = v0[19];
  v12 = v0[16];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  type metadata accessor for TranscriptionUpdate(0);
  (*(v5 + 104))(v3, *MEMORY[0x277D85778], v4);
  sub_2150A5180();
  v8 = sub_2150A5120();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v1;

  sub_215051880(0, 0, v6, &unk_2150CB698, v9);

  (*(v2 + 8))(v13, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_215035F3C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215036044()
{

  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215036154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_2150A4190();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0);
  v5[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for TranscriptionUpdate(0);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2150363D8, 0, 0);
}

uint64_t sub_2150363D8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v0[28] = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  v5 = *(v2 + 48);
  v0[29] = v5;
  v0[30] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  if (!v5(v3 + v4, 1, v1))
  {
    v8 = v0[23];
    v7 = v0[24];
    v10 = v0[21];
    v9 = v0[22];
    (*(v8 + 16))(v7, v3 + v4, v9);
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
    sub_2150A5140();
    (*(v8 + 8))(v7, v9);
    v6 = 0;
  }

  v11 = v0[27];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_214F302D4(v11, &qword_27CA443B0);
  sub_2150A41B0();
  v0[31] = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_215036640;
  v15 = v0[17];
  v16 = v0[14];

  return MEMORY[0x282200310](v16, 0, 0, v0 + 8, v15, AssociatedConformanceWitness);
}

uint64_t sub_215036640()
{

  if (v0)
  {
    v1 = sub_215036DBC;
  }

  else
  {
    v1 = sub_215036750;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_215036750()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[29];
  v6 = v0[28];
  v7 = v0[22];
  if (v4 == 1)
  {
    v8 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);
    v9 = 1;
    if (!v5(v8 + v6, 1, v7))
    {
      v11 = v0[23];
      v10 = v0[24];
      v13 = v0[21];
      v12 = v0[22];
      (*(v11 + 16))(v10, v0[9] + v0[28], v12);
      *v13 = 1;
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v11 + 8))(v10, v12);
      v9 = 0;
    }

    v14 = v0[26];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8);
    (*(*(v15 - 8) + 56))(v14, v9, 1, v15);
    sub_214F302D4(v14, &qword_27CA443B0);
    v16 = swift_task_alloc();
    v0[33] = v16;
    *v16 = v0;
    v16[1] = sub_215036BA4;

    return SiriTranscriptionMethod.finishTranscription()();
  }

  else
  {
    v18 = v0[9];
    (*(v3 + 32))(v0[13], v1, v2);
    swift_beginAccess();
    if (v5(v18 + v6, 1, v7))
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      swift_endAccess();
      v19 = 1;
    }

    else
    {
      v20 = v0[24];
      v21 = v0[22];
      v22 = v0[23];
      v23 = v0[21];
      v25 = v0[12];
      v24 = v0[13];
      v26 = v0[11];
      (*(v22 + 16))(v20, v0[9] + v0[28], v21);
      swift_endAccess();
      (*(v25 + 16))(v23, v24, v26);
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v22 + 8))(v20, v21);
      (*(v25 + 8))(v24, v26);
      v19 = 0;
    }

    v27 = v0[25];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8);
    (*(*(v28 - 8) + 56))(v27, v19, 1, v28);
    sub_214F302D4(v27, &qword_27CA443B0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = swift_task_alloc();
    v0[32] = v30;
    *v30 = v0;
    v30[1] = sub_215036640;
    v31 = v0[17];
    v32 = v0[14];

    return MEMORY[0x282200310](v32, 0, 0, v0 + 8, v31, AssociatedConformanceWitness);
  }
}

uint64_t sub_215036BA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_215036DBC()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_215036EAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  sub_215037BF0(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_215036FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_2150A4190();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443D8);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for TranscriptionUpdate(0);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21503722C, 0, 0);
}

uint64_t sub_21503722C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v0[25] = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  v5 = *(v2 + 48);
  v0[26] = v5;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  if (!v5(v3 + v4, 1, v1))
  {
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    (*(v8 + 16))(v7, v3 + v4, v9);
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
    sub_2150A5140();
    (*(v8 + 8))(v7, v9);
    v6 = 0;
  }

  v11 = v0[24];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_214F302D4(v11, &qword_27CA443B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0);
  sub_2150A5160();
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_215037440;
  v14 = v0[13];
  v15 = v0[14];

  return MEMORY[0x2822003E8](v14, 0, 0, v15);
}

uint64_t sub_215037440()
{

  return MEMORY[0x2822009F8](sub_21503753C, 0, 0);
}

uint64_t sub_21503753C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[26];
  v6 = v0[25];
  v7 = v0[19];
  if (v4 == 1)
  {
    v8 = v0[8];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v9 = 1;
    if (!v5(v8 + v6, 1, v7))
    {
      v11 = v0[20];
      v10 = v0[21];
      v13 = v0[18];
      v12 = v0[19];
      (*(v11 + 16))(v10, v0[8] + v0[25], v12);
      *v13 = 1;
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v11 + 8))(v10, v12);
      v9 = 0;
    }

    v14 = v0[23];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8);
    (*(*(v15 - 8) + 56))(v14, v9, 1, v15);
    sub_214F302D4(v14, &qword_27CA443B0);
    if (qword_27CA41770 != -1)
    {
      swift_once();
    }

    v16 = sub_2150A3F30();
    __swift_project_value_buffer(v16, qword_27CA44368);
    v17 = sub_2150A3F10();
    v18 = sub_2150A5550();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_214D51000, v17, v18, "Recognition stream task completed", v19, 2u);
      MEMORY[0x216064AF0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[8];
    (*(v3 + 32))(v0[12], v1, v2);
    swift_beginAccess();
    if (v5(v22 + v6, 1, v7))
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      swift_endAccess();
      v23 = 1;
    }

    else
    {
      v24 = v0[21];
      v25 = v0[19];
      v26 = v0[20];
      v27 = v0[18];
      v29 = v0[11];
      v28 = v0[12];
      v30 = v0[10];
      (*(v26 + 16))(v24, v0[8] + v0[25], v25);
      swift_endAccess();
      (*(v29 + 16))(v27, v28, v30);
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v26 + 8))(v24, v25);
      (*(v29 + 8))(v28, v30);
      v23 = 0;
    }

    v31 = v0[22];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8);
    (*(*(v32 - 8) + 56))(v31, v23, 1, v32);
    sub_214F302D4(v31, &qword_27CA443B0);
    v33 = swift_task_alloc();
    v0[28] = v33;
    *v33 = v0;
    v33[1] = sub_215037440;
    v34 = v0[13];
    v35 = v0[14];

    return MEMORY[0x2822003E8](v34, 0, 0, v35);
  }
}

uint64_t SiriTranscriptionMethod.__deallocating_deinit()
{
  sub_214F302D4(v0 + OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation, &qword_27CA443A8);

  return swift_deallocClassInstance();
}

uint64_t sub_215037AEC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F53FB0;

  return sub_215036FE4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_215037BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SiriTranscriptionMethod()
{
  result = qword_27CA443C0;
  if (!qword_27CA443C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215037CB4()
{
  sub_215037D7C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_215037D7C()
{
  if (!qword_27CA443D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44388);
    v0 = sub_2150A57E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA443D0);
    }
  }
}

unint64_t sub_215037DE0()
{
  result = qword_27CA43CA0;
  if (!qword_27CA43CA0)
  {
    sub_2150A41E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43CA0);
  }

  return result;
}

uint64_t sub_215037E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214F53FB0;

  return sub_215036154(a1, v4, v5, v7, v6);
}

uint64_t sub_215037F18(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 40); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;

      sub_21503863C(v7, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_215037FA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_215060978(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_215038034()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA443E0);
  v1 = __swift_project_value_buffer(v0, qword_27CA443E0);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TranscriptPostProcessorError.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_215038190(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = sub_2150A4D40();
  v6 = MEMORY[0x216061730](v5);
  v8 = v7;

  v9 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_21505F4D0(0, *(v9 + 2) + 1, 1, v9);
    *a4 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_21505F4D0((v11 > 1), v12 + 1, 1, v9);
    *a4 = v9;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  return 1;
}

unint64_t sub_215038260@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2150A3050();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v9 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 7;
  if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  v11 = v10 | (v9 << 16);

  v44 = v11;
  if (v9)
  {
    v11 = v44;
    do
    {
      sub_2150A4BE0();
      sub_2150A4D10();
      v13 = sub_2150A49D0();

      if ((v13 & 1) == 0)
      {
        break;
      }

      result = sub_2150A4BE0();
      v11 = result;
    }

    while (result >= 0x4000);
  }

  if (4 * v9 < v11 >> 14)
  {
    __break(1u);
  }

  else
  {
    v36 = v8;
    v37 = v7;
    sub_2150A3010();
    sub_214D6E6C4();
    v14 = sub_2150A5880();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v42 = v14;
    v43 = v16;

    sub_2150385A4(v14, v16);
    v18 = v17;

    if (!v18 || (v19 = sub_2150A49E0(), , (v19 & 1) == 0))
    {
      MEMORY[0x2160617E0](46, 0xE100000000000000);
    }

    v20 = v42;
    v21 = v43;

    sub_2150238C4(1);

    v34 = sub_2150A5800();
    v23 = v22;

    v24 = sub_214FBA930(1uLL, v20, v21);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v40 = v34;
    v41 = v23;
    v36 = v24;
    v37 = v26;
    v38 = v28;
    v39 = v30;
    sub_214F99030();
    sub_2150A4C00();

    v36 = v44;
    v37 = v11;
    v38 = v8;
    v39 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44420);
    sub_214F43BCC(&qword_27CA44428, &qword_27CA44420);
    sub_2150A4C00();

    v31 = v41;
    v32 = v35;
    *v35 = v40;
    v32[1] = v31;
  }

  return result;
}

uint64_t sub_2150385A4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_2150A4BE0();
  return sub_2150A4D10();
}

uint64_t sub_21503863C(uint64_t *a1, uint64_t a2)
{
  v26 = a2;
  v35 = sub_2150A3050();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v33 = *a1;
  v34 = v6;
  v31 = 8238;
  v32 = 0xE200000000000000;
  v30 = sub_214D6E6C4();
  result = sub_2150A5870();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v28 = *(result + 16);
    v29 = (v3 + 8);
    v11 = result + 40;
    v24 = v9 - 1;
    v27 = MEMORY[0x277D84F90];
    v25 = result + 40;
    do
    {
      v12 = (v11 + 16 * v10);
      v13 = v10;
      while (1)
      {
        if (v13 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v10 = v13 + 1;
        v33 = v15;
        v34 = v14;

        sub_2150A2FF0();
        v16 = sub_2150A5880();
        v18 = v17;
        (*v29)(v5, v35);

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          break;
        }

        v12 += 2;
        ++v13;
        if (v28 == v10)
        {
          goto LABEL_17;
        }
      }

      v20 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v20;
      if ((result & 1) == 0)
      {
        result = sub_214F86A20(0, *(v20 + 16) + 1, 1);
        v20 = v31;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_214F86A20((v21 > 1), v22 + 1, 1);
        v20 = v31;
      }

      *(v20 + 16) = v22 + 1;
      v27 = v20;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v15;
      *(v23 + 40) = v14;
      v11 = v25;
    }

    while (v24 != v13);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

LABEL_17:

  return sub_215068D7C(v27);
}

uint64_t sub_2150388D8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2150A4BF0();

    return sub_2150A4D40();
  }

  return result;
}

uint64_t sub_215038974(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x277D84F90];
  gotLoadHelper_x8__OBJC_CLASS___NLTokenizer(a1);
  v8 = [objc_allocWithZone(*(v7 + 2528)) initWithUnit_];
  v9 = sub_2150A4A90();
  [v8 setString_];

  [v8 setLanguage_];
  sub_2150A54F0();

  return v11;
}

uint64_t sub_215038A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v12[0] = *(v4 - 1);
      v12[1] = v5;
      sub_215038260(v12, v13);
      v6 = v13[0];
      v7 = v13[1];
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_214F86A20((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_215038B68(void *a1, unint64_t a2, void *a3)
{
  v273 = a2;
  v283 = a1;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44400);
  MEMORY[0x28223BE20](v261);
  v267 = &v258 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44408);
  v263 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v262 = &v258 - v7;
  v282 = sub_2150A3050();
  v278 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v279 = &v258 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_2150A3340();
  MEMORY[0x28223BE20](v272);
  v271 = &v258 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_2150A3400();
  v269 = *(v270 - 1);
  MEMORY[0x28223BE20](v270);
  v268 = &v258 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42338);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v266 = &v258 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v281 = (&v258 - v14);
  v15 = type metadata accessor for TranscriptViewModelSegment(0);
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v275 = &v258 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v274 = &v258 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v258 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v264 = &v258 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v265 = (&v258 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v258 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v258 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v280 = &v258 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v258 - v36;
  if (![a3 audioTranscriptPostProcessingEnabled])
  {
    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v44 = sub_2150A3F30();
    __swift_project_value_buffer(v44, qword_27CA443E0);
    v45 = sub_2150A3F10();
    v46 = sub_2150A5540();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_214D51000, v45, v46, "Audio transcript post-processing disabled by cloud config.", v47, 2u);
      MEMORY[0x216064AF0](v47, -1, -1);
    }

    sub_21503B06C();
    swift_allocError();
    v43 = 1;
    goto LABEL_12;
  }

  if (ICInternalSettingsShouldDisableTranscriptPostProcessing())
  {
    if (qword_27CA41778 == -1)
    {
LABEL_4:
      v38 = sub_2150A3F30();
      __swift_project_value_buffer(v38, qword_27CA443E0);
      v39 = sub_2150A3F10();
      v40 = sub_2150A5540();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_214D51000, v39, v40, "Audio transcript post-processing disabled by user defaults.", v41, 2u);
        MEMORY[0x216064AF0](v41, -1, -1);
      }

      sub_21503B06C();
      swift_allocError();
      v43 = 2;
      goto LABEL_12;
    }

LABEL_175:
    swift_once();
    goto LABEL_4;
  }

  v259 = v6;
  v260 = v3;
  v6 = 0;
  v291 = *(v283 + 16);
  while (v291 != v6)
  {
    sub_214F5456C(v283 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v6++, v37);
    v49 = *&v37[v15[9] + 8];

    sub_214F545D0(v37);
    if (v49)
    {

      sub_21503B06C();
      swift_allocError();
      v43 = 3;
LABEL_12:
      *v42 = v43;
      swift_willThrow();
      return v6;
    }
  }

  if (!v291)
  {
    if (qword_27CA41778 != -1)
    {
      goto LABEL_177;
    }

    goto LABEL_31;
  }

  ShouldPostProcessOnlyTranscriptParagraphs = ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs();
  v284 = v15;
  if (ShouldPostProcessOnlyTranscriptParagraphs)
  {
    if (qword_27CA41778 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_180;
  }

  v289 = MEMORY[0x277D84F90];
  v83 = v16;
  v84 = v291;
  sub_214F86A20(ShouldPostProcessOnlyTranscriptParagraphs, v291, 0);
  v85 = v289;
  v266 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v86 = (v283 + v266);
  v87 = *(v83 + 72);
  v280 = v283 + v266;
  v276 = v87;
  do
  {
    sub_214F5456C(v86, v23);
    v88 = &v23[v15[5]];
    v89 = *v88;
    v90 = *(v88 + 1);

    sub_214F545D0(v23);
    v289 = v85;
    v92 = *(v85 + 16);
    v91 = *(v85 + 24);
    if (v92 >= v91 >> 1)
    {
      sub_214F86A20((v91 > 1), v92 + 1, 1);
      v87 = v276;
      v85 = v289;
    }

    *(v85 + 16) = v92 + 1;
    v93 = v85 + 16 * v92;
    *(v93 + 32) = v89;
    *(v93 + 40) = v90;
    v86 += v87;
    --v84;
    v15 = v284;
  }

  while (v84);
  v265 = v85;
  v95 = v268;
  static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v283, 1, v268);
  sub_2150A3330();
  (*(v269 + 8))(v95, v270);
  sub_214F7E26C();
  v96 = sub_2150A4D20();
  v78 = v97;
  gotLoadHelper_x8__NLLanguageEnglish(v98);
  v100 = **(v99 + 1800);
  v16 = v273;
  v101 = v273;
  if (!v273)
  {
    v102 = v100;
    v101 = v100;
  }

  v103 = sub_2150A4AD0();
  v105 = v104;
  v107 = v103 == sub_2150A4AD0() && v105 == v106;
  v6 = v278;
  if (v107)
  {
    v119 = v16;
  }

  else
  {
    v108 = sub_2150A6270();
    v109 = v16;
    v16 = v101;

    if ((v108 & 1) == 0)
    {

      v110 = qword_27CA41778;
      v111 = v16;
      if (v110 != -1)
      {
        swift_once();
      }

      v112 = sub_2150A3F30();
      __swift_project_value_buffer(v112, qword_27CA443E0);
      v113 = v111;
      v114 = sub_2150A3F10();
      v115 = sub_2150A5540();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v116 = 138412290;
        *(v116 + 4) = v113;
        *v117 = v101;
        v6 = v113;
        _os_log_impl(&dword_214D51000, v114, v115, "Resolved language %@ was not supported. Skipping post-processing.", v116, 0xCu);
        sub_214F302D4(v117, &qword_27CA41DF0);
        MEMORY[0x216064AF0](v117, -1, -1);
        MEMORY[0x216064AF0](v116, -1, -1);
        v118 = v114;
        v114 = v6;
      }

      else
      {
        v118 = v113;
      }

      sub_21503B06C();
      swift_allocError();
      *v165 = 0;
      swift_willThrow();

      return v6;
    }
  }

  if (sub_2150A51A0())
  {

    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v120 = sub_2150A3F30();
    __swift_project_value_buffer(v120, qword_27CA443E0);
    v121 = sub_2150A3F10();
    v122 = sub_2150A5550();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_214D51000, v121, v122, "Cancelled after step 1. Aborting.", v123, 2u);
      MEMORY[0x216064AF0](v123, -1, -1);
    }

    sub_21503B06C();
    swift_allocError();
    *v124 = 4;
    swift_willThrow();

    return v6;
  }

  v277 = sub_2150A4BC0();
  v270 = v101;
  v126 = sub_215038974(v125, v96, v78, v101, 1);

  v283 = *(v126 + 16);
  if (v283)
  {
    v127 = 0;
    v281 = (v6 + 8);
    v105 = (v126 + 40);
    v6 = MEMORY[0x277D84F90];
    while (v127 < *(v126 + 16))
    {
      v16 = *v105;
      v289 = *(v105 - 1);
      v290 = v16;

      v128 = v279;
      sub_2150A3010();
      sub_214D6E6C4();
      v129 = sub_2150A5880();
      v131 = v130;
      (*v281)(v128, v282);
      v289 = v129;
      v290 = v131;

      MEMORY[0x2160617E0](2570, 0xE200000000000000);
      v132 = v6;

      v133 = v289;
      v134 = v290;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_21505F4D0(0, *(v6 + 16) + 1, 1, v6);
      }

      v136 = *(v132 + 2);
      v135 = *(v132 + 3);
      v6 = v132;
      v78 = v136 + 1;
      if (v136 >= v135 >> 1)
      {
        v6 = sub_21505F4D0((v135 > 1), v136 + 1, 1, v6);
      }

      v127 = (v127 + 1);

      *(v6 + 16) = v78;
      v137 = v6 + 16 * v136;
      *(v137 + 32) = v133;
      *(v137 + 40) = v134;
      v105 += 2;
      if (v283 == v127)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_175;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_75:

  v140 = *(v6 + 16);
  if (v140)
  {
    v16 = v140 - 1;

    v141 = sub_2150388D8(v277);
    v143 = v142;
    v145 = v144;
    v105 = v146;

    v126 = MEMORY[0x216061730](v141, v143, v145, v105);
    v78 = v147;

    v277 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_77;
    }
  }

  else
  {
    __break(1u);
  }

  v277 = sub_215060978(v277);
LABEL_77:
  v94 = v260;
  v148 = v277;
  v6 = v278;
  if (v140 > *(v277 + 16))
  {
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v149 = v277 + 16 * v16;
  *(v149 + 32) = v126;
  *(v149 + 40) = v78;

  v150 = sub_2150A51A0();
  v15 = v284;
  if (v150)
  {

    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v151 = sub_2150A3F30();
    __swift_project_value_buffer(v151, qword_27CA443E0);
    v152 = sub_2150A3F10();
    v153 = sub_2150A5550();
    v154 = os_log_type_enabled(v152, v153);
    v155 = v270;
    if (v154)
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&dword_214D51000, v152, v153, "Cancelled after step 2. Aborting.", v156, 2u);
      MEMORY[0x216064AF0](v156, -1, -1);
    }

    sub_21503B06C();
    swift_allocError();
    *v157 = 4;
    swift_willThrow();
    goto LABEL_133;
  }

  v287 = MEMORY[0x277D84F90];
  sub_215037F18(v148, &v287);
  v268 = v287;
  v158 = sub_215038A88(v287);
  if (sub_2150A51A0())
  {

    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v159 = sub_2150A3F30();
    __swift_project_value_buffer(v159, qword_27CA443E0);
    v160 = sub_2150A3F10();
    v161 = sub_2150A5550();
    v162 = os_log_type_enabled(v160, v161);
    v155 = v270;
    if (v162)
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      v164 = "Cancelled after step 3. Aborting.";
LABEL_131:
      _os_log_impl(&dword_214D51000, v160, v161, v164, v163, 2u);
      MEMORY[0x216064AF0](v163, -1, -1);
    }

LABEL_132:

    sub_21503B06C();
    swift_allocError();
    *v215 = 4;
    swift_willThrow();

LABEL_133:

    return v6;
  }

  v260 = v94;
  v289 = v158;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  v167 = sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v271 = v166;
  v269 = v167;
  v168 = sub_2150A4A20();
  v170 = v169;

  v289 = v168;
  v290 = v170;
  v171 = v279;
  sub_2150A2FF0();
  v283 = sub_214D6E6C4();
  v172 = sub_2150A5860();
  v281 = *(v6 + 8);
  v278 = v6 + 8;
  v281(v171, v282);

  v33 = 0;
  v173 = *(v172 + 16);
  v174 = (v172 + 40);
  v6 = MEMORY[0x277D84F90];
LABEL_92:
  v175 = &v174[2 * v33];
  while (1)
  {
    if (v173 == v33)
    {

      v30 = v265[2];
      if (*(v6 + 16) == v30)
      {

LABEL_105:
        v182 = v280;
        v281 = *(v6 + 16);
        if (v281)
        {
          v183 = 0;
          v184 = (v6 + 40);
          v283 = MEMORY[0x277D84F90];
          while (v183 < *(v6 + 16))
          {
            if (v291 == v183)
            {
              goto LABEL_179;
            }

            v33 = v6;
            v185 = *v184;
            v282 = *(v184 - 1);
            v186 = *(v182 + v15[6]);
            v187 = *(v182 + v15[7]);
            v188 = v15[9];
            v189 = v284[10];
            v280 = v182;
            v30 = *(v182 + v188);
            v190 = *(v182 + v188 + 8);
            v16 = v274;
            v191 = &v274[v188];
            v274[v189] = 2;

            _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
            v192 = (v16 + v284[5]);
            *v192 = v282;
            v192[1] = v185;
            *(v16 + v284[6]) = v186;
            *(v16 + v284[7]) = v187;
            *v191 = v30;
            v191[1] = v190;
            *(v16 + v189) = 2;
            v15 = v284;
            *(v16 + v284[8]) = v186 + v187;
            sub_214F5456C(v16, v275);
            v193 = v283;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v193 = sub_21505F724(0, v193[2] + 1, 1, v193);
            }

            v195 = v193[2];
            v194 = v193[3];
            v283 = v193;
            v6 = v33;
            if (v195 >= v194 >> 1)
            {
              v283 = sub_21505F724(v194 > 1, v195 + 1, 1, v283);
            }

            ++v183;
            sub_214F545D0(v274);
            v196 = v283;
            *(v283 + 16) = v195 + 1;
            v197 = v276;
            sub_214F5462C(v275, v196 + v266 + v195 * v276);
            v182 = v280 + v197;
            v184 += 2;
            if (v281 == v183)
            {
              goto LABEL_126;
            }
          }

          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          swift_once();
LABEL_21:
          v51 = sub_2150A3F30();
          __swift_project_value_buffer(v51, qword_27CA443E0);
          v52 = sub_2150A3F10();
          v53 = sub_2150A5540();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_214D51000, v52, v53, "PostProcessOnlyTranscriptParagraphs default was set, so only doing light processing.", v54, 2u);
            MEMORY[0x216064AF0](v54, -1, -1);
          }

          v279 = ((*(v16 + 80) + 32) & ~*(v16 + 80));
          v55 = &v279[v283];
          v56 = v281;
          sub_214F5456C(&v279[v283], v281);
          v274 = *(v16 + 56);
          (v274)(v56, 0, 1, v15);
          v57 = v15[5];
          v273 = v15[6];
          v272 = (v280 + v57);
          v271 = v15[7];
          v6 = MEMORY[0x277D84F90];
          v270 = (v280 + v15[9]);
          v275 = v16 + 56;
          v276 = v33;
          v58 = *(v16 + 72);
          v277 = v16;
          v278 = v58;
          do
          {
            v282 = v55;
            v283 = v6;
            v59 = v280;
            sub_214F5456C(v55, v280);
            sub_214F302D4(v56, &qword_27CA42338);
            sub_214F5456C(v59, v56);
            (v274)(v56, 0, 1, v15);
            v60 = v272[1];
            v289 = *v272;
            v290 = v60;
            v287 = 2570;
            v288 = 0xE200000000000000;
            v285 = 0;
            v286 = 0xE000000000000000;
            sub_214D6E6C4();
            v289 = sub_2150A5890();
            v290 = v61;
            v287 = 46;
            v288 = 0xE100000000000000;
            v285 = 657966;
            v286 = 0xE300000000000000;
            v62 = sub_2150A5890();
            v64 = v63;

            v65 = *(v59 + v273);
            v66 = *(v59 + v271);
            v68 = *v270;
            v67 = v270[1];

            v69 = v59;
            v70 = v276;
            sub_214F545D0(v69);
            v71 = v15[10];
            v72 = (v70 + v15[9]);
            *(v70 + v71) = 2;
            _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
            v73 = (v70 + v284[5]);
            *v73 = v62;
            v73[1] = v64;
            *(v70 + v284[6]) = v65;
            *(v70 + v284[7]) = v66;
            *v72 = v68;
            v72[1] = v67;
            v6 = v283;
            v15 = v284;
            *(v70 + v71) = 2;
            *(v70 + v15[8]) = v65 + v66;
            sub_214F5456C(v70, v30);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21505F724(0, *(v6 + 16) + 1, 1, v6);
            }

            v75 = *(v6 + 16);
            v74 = *(v6 + 24);
            v56 = v281;
            v76 = v282;
            v77 = v277;
            if (v75 >= v74 >> 1)
            {
              v6 = sub_21505F724(v74 > 1, v75 + 1, 1, v6);
            }

            sub_214F545D0(v70);
            *(v6 + 16) = v75 + 1;
            v78 = v278;
            sub_214F5462C(v30, &v279[v6 + v75 * v278]);
            v55 = (v76 + v78);
            --v291;
          }

          while (v291);
          if (!*(v6 + 16))
          {
            sub_214F302D4(v56, &qword_27CA42338);
            return v6;
          }

          v94 = v266;
          sub_21503B0D0(v56, v266);
          if ((*(v77 + 48))(v94, 1, v15) == 1)
          {
            sub_214F302D4(v56, &qword_27CA42338);
            sub_214F302D4(v94, &qword_27CA42338);
            return v6;
          }

          v16 = v56;
          v105 = v265;
          sub_214F5462C(v94, v265);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v139 = *(v6 + 16);
            if (v139)
            {
              goto LABEL_72;
            }

            goto LABEL_188;
          }

LABEL_187:
          v6 = sub_21506098C(v6);
          v139 = *(v6 + 16);
          if (v139)
          {
LABEL_72:
            v78 = (v139 - 1) * v278;
            sub_214F545D0(&v279[v6 + v78]);
            *(v6 + 16) = v139 - 1;
            v94 = v264;
            sub_214F5456C(v105, v264);
            v138 = *(v6 + 24);
            if (v139 <= v138 >> 1)
            {
LABEL_73:
              sub_214F545D0(v105);
              sub_214F302D4(v16, &qword_27CA42338);
              *(v6 + 16) = v139;
              sub_214F5462C(v94, &v279[v6 + v78]);
              return v6;
            }

LABEL_189:
            v6 = sub_21505F724(v138 > 1, v139, 1, v6);
            goto LABEL_73;
          }

LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v283 = MEMORY[0x277D84F90];
LABEL_126:

        if ((sub_2150A51A0() & 1) == 0)
        {

          return v283;
        }

        v155 = v270;
        if (qword_27CA41778 != -1)
        {
          swift_once();
        }

        v214 = sub_2150A3F30();
        __swift_project_value_buffer(v214, qword_27CA443E0);
        v160 = sub_2150A3F10();
        v161 = sub_2150A5550();
        if (os_log_type_enabled(v160, v161))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          v164 = "Cancelled after step 4. Aborting.";
          goto LABEL_131;
        }

        goto LABEL_132;
      }

      if (qword_27CA41778 != -1)
      {
        swift_once();
      }

      v198 = sub_2150A3F30();
      v264 = __swift_project_value_buffer(v198, qword_27CA443E0);
      v199 = sub_2150A3F10();
      v200 = sub_2150A5560();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        _os_log_impl(&dword_214D51000, v199, v200, "There was a difference in word count between the initial and post-processed strings. Ideally this shouldn't happen, but sometimes it is unavoidable. Trying to reconcile this with a diff.", v201, 2u);
        MEMORY[0x216064AF0](v201, -1, -1);
      }

      v202 = *(v6 + 16);
      v203 = MEMORY[0x277D84F90];
      v273 = v6;
      if (v202)
      {
        v272 = v30;
        v285 = MEMORY[0x277D84F90];
        sub_214F86A20(0, v202, 0);
        v204 = v285;
        v205 = v6 + 40;
        do
        {
          v289 = sub_2150A4B40();
          v290 = v206;

          v207 = v279;
          sub_2150A3010();
          v208 = sub_2150A5880();
          v210 = v209;

          v281(v207, v282);

          v285 = v204;
          v212 = *(v204 + 16);
          v211 = *(v204 + 24);
          if (v212 >= v211 >> 1)
          {
            sub_214F86A20((v211 > 1), v212 + 1, 1);
            v204 = v285;
          }

          *(v204 + 16) = v212 + 1;
          v213 = v204 + 16 * v212;
          *(v213 + 32) = v208;
          *(v213 + 40) = v210;
          v205 += 16;
          --v202;
        }

        while (v202);
        v30 = v272;
        v203 = MEMORY[0x277D84F90];
      }

      else
      {
        v204 = MEMORY[0x277D84F90];
      }

      if (v30)
      {
        v285 = v203;
        sub_214F86A20(0, v30, 0);
        v216 = v285;
        v217 = v265 + 5;
        do
        {
          v289 = sub_2150A4B40();
          v290 = v218;

          v219 = v279;
          sub_2150A3010();
          v220 = sub_2150A5880();
          v222 = v221;

          v281(v219, v282);

          v285 = v216;
          v224 = *(v216 + 16);
          v223 = *(v216 + 24);
          if (v224 >= v223 >> 1)
          {
            sub_214F86A20((v223 > 1), v224 + 1, 1);
            v216 = v285;
          }

          *(v216 + 16) = v224 + 1;
          v225 = v216 + 16 * v224;
          *(v225 + 32) = v220;
          *(v225 + 40) = v222;
          v217 += 2;
          --v30;
        }

        while (v30);
      }

      else
      {

        v216 = MEMORY[0x277D84F90];
      }

      v265 = v216;
      v289 = v216;
      v285 = v204;
      v226 = v262;
      sub_2150A4A10();

      v227 = v267;
      v6 = v259;
      (*(v263 + 16))(v267, v226, v259);
      v228 = *(v261 + 36);
      v16 = sub_214F43BCC(&qword_27CA44418, &qword_27CA44408);
      sub_2150A53D0();
      sub_2150A5400();
      v15 = v284;
      if (*(v227 + v228) != v289)
      {
        v269 = v228;
        do
        {
          v78 = v227;
          v237 = sub_2150A5470();
          v30 = *v238;
          v239 = *(v238 + 16);
          v94 = *(v238 + 32);
          v240 = *(v238 + 33);
          v272 = *(v238 + 8);
          v271 = v239;
          sub_21503B0C0();
          v237(&v289, 0);
          v105 = v16;
          sub_2150A5410();
          if (v240)
          {
            v241 = v273;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v241 = sub_215060978(v241);
            }

            v242 = *(v241 + 2);
            if (v30 >= v242)
            {
              goto LABEL_184;
            }

            v243 = v242 - 1;
            memmove(&v241[16 * v30 + 32], &v241[16 * v30 + 48], 16 * (v242 - 1 - v30));
            v273 = v241;
            *(v241 + 2) = v243;
            sub_21503B0C8();

            v15 = v284;
          }

          else
          {
            v233 = v273;
            v78 = *(v273 + 16);
            if (v78 < v30)
            {
              goto LABEL_185;
            }

            v15 = v284;
            if (v30 < 0)
            {
              goto LABEL_186;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v78 >= *(v233 + 3) >> 1)
            {
              v233 = sub_21505F4D0(isUniquelyReferenced_nonNull_native, v78 + 1, 1, v233);
            }

            v234 = &v233[16 * v30];
            swift_arrayDestroy();
            memmove(v234 + 48, v234 + 32, 16 * (*(v233 + 2) - v30));
            v235 = *(v233 + 2) + 1;
            v273 = v233;
            *(v233 + 2) = v235;
            v236 = v271;
            *(v234 + 4) = v272;
            *(v234 + 5) = v236;
          }

          v227 = v267;
          v6 = v259;
          sub_2150A5400();
        }

        while (*(v227 + v269) != v289);
      }

      sub_214F302D4(v227, &qword_27CA44400);
      if (sub_2150A51A0())
      {

        v229 = sub_2150A3F10();
        v230 = sub_2150A5550();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          *v231 = 0;
          _os_log_impl(&dword_214D51000, v229, v230, "Cancelled after step 4a. Aborting.", v231, 2u);
          MEMORY[0x216064AF0](v231, -1, -1);
        }

        sub_21503B06C();
        swift_allocError();
        *v232 = 4;
        swift_willThrow();

        (*(v263 + 8))(v262, v6);
      }

      else
      {
        v6 = v273;
        v245 = *(v273 + 16);
        v33 = MEMORY[0x277D84F90];
        if (v245)
        {
          v285 = MEMORY[0x277D84F90];
          sub_214F86A20(0, v245, 0);
          v33 = v285;
          v30 = v6 + 40;
          do
          {
            v289 = sub_2150A4B40();
            v290 = v246;

            v247 = v279;
            sub_2150A3010();
            v248 = sub_2150A5880();
            v16 = v249;

            v281(v247, v282);

            v285 = v33;
            v251 = *(v33 + 16);
            v250 = *(v33 + 24);
            if (v251 >= v250 >> 1)
            {
              sub_214F86A20((v250 > 1), v251 + 1, 1);
              v33 = v285;
            }

            *(v33 + 16) = v251 + 1;
            v252 = v33 + 16 * v251;
            *(v252 + 32) = v248;
            *(v252 + 40) = v16;
            v30 += 16;
            --v245;
          }

          while (v245);
          v15 = v284;
          v6 = v273;
        }

        v253 = sub_214F8F910(v33, v265);

        if (v253)
        {
          (*(v263 + 8))(v262, v259);
          goto LABEL_105;
        }

        v254 = sub_2150A3F10();
        v255 = sub_2150A5570();
        if (os_log_type_enabled(v254, v255))
        {
          v256 = swift_slowAlloc();
          *v256 = 0;
          _os_log_impl(&dword_214D51000, v254, v255, "The post-processor encountered a discrepancy where diffing was necessary and attempted to diff, however, the attempt was unsuccessful. This is unexpected.", v256, 2u);
          MEMORY[0x216064AF0](v256, -1, -1);
        }

        sub_21503B06C();
        swift_allocError();
        *v257 = 5;
        swift_willThrow();

        (*(v263 + 8))(v262, v259);
      }

      return v6;
    }

    if (v33 >= *(v172 + 16))
    {
      break;
    }

    ++v33;
    v176 = *(v175 - 1);
    v16 = *v175;
    v175 += 2;
    v177 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v177 = v176 & 0xFFFFFFFFFFFFLL;
    }

    if (v177)
    {

      v178 = swift_isUniquelyReferenced_nonNull_native();
      v289 = v6;
      v272 = v174;
      if ((v178 & 1) == 0)
      {
        sub_214F86A20(0, *(v6 + 16) + 1, 1);
        v6 = v289;
      }

      v180 = *(v6 + 16);
      v179 = *(v6 + 24);
      if (v180 >= v179 >> 1)
      {
        sub_214F86A20((v179 > 1), v180 + 1, 1);
        v6 = v289;
      }

      *(v6 + 16) = v180 + 1;
      v181 = v6 + 16 * v180;
      *(v181 + 32) = v176;
      *(v181 + 40) = v16;
      v15 = v284;
      v174 = v272;
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_177:
  swift_once();
LABEL_31:
  v79 = sub_2150A3F30();
  __swift_project_value_buffer(v79, qword_27CA443E0);
  v80 = sub_2150A3F10();
  v81 = sub_2150A5550();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_214D51000, v80, v81, "Tried to post-process zero segments.", v82, 2u);
    MEMORY[0x216064AF0](v82, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21503AFA4()
{
  result = qword_27CA443F8;
  if (!qword_27CA443F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA443F8);
  }

  return result;
}

unint64_t sub_21503B06C()
{
  result = qword_27CA44410;
  if (!qword_27CA44410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44410);
  }

  return result;
}

uint64_t sub_21503B0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21503B14C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44430);
  v1 = __swift_project_value_buffer(v0, qword_27CA44430);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TranscriptSegmentType.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t TranscriptUpdateType.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_21503B378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_21503B464()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
}

uint64_t type metadata accessor for LiveTranscriptionCoordinator()
{
  result = qword_27CA444A8;
  if (!qword_27CA444A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21503B568(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_214F8F9A0(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }
}

uint64_t sub_21503B6B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void (*sub_21503B734(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503B328();
  return sub_21503B86C;
}

uint64_t sub_21503B8C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21503B9B4()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
}

uint64_t sub_21503BA6C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_214F8F9A0(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }
}

uint64_t sub_21503BBB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void (*sub_21503BC38(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503B878();
  return sub_21503BD70;
}

uint64_t sub_21503BDCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21503BEB8()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
}

uint64_t sub_21503BFA4(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_214F8F9A0(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }
}

uint64_t sub_21503C0EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

void (*sub_21503C170(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503BD7C();
  return sub_21503C2A8;
}

id sub_21503C304@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

id sub_21503C3FC()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

void sub_21503C4C0(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  sub_21503C610();
  v5 = v4;
  v6 = sub_2150A5780();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }
}

unint64_t sub_21503C610()
{
  result = qword_27CA44458;
  if (!qword_27CA44458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA44458);
  }

  return result;
}

void sub_21503C65C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void (*sub_21503C6D8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503C2B4();
  return sub_21503C810;
}

uint64_t sub_21503C86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_21503C950()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_21503CA04(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 56) == v2)
  {
    *(v1 + 56) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  return result;
}

void (*sub_21503CB40(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503C81C();
  return sub_21503CC78;
}

uint64_t sub_21503CCD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  return sub_214F43C14(v3 + 64, a2, &qword_27CA44460);
}

uint64_t sub_21503CDA4(uint64_t a1)
{
  sub_214F43C14(a1, v2, &qword_27CA44460);
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B30();

  return sub_214F302D4(v2, &qword_27CA44460);
}

uint64_t sub_21503CEAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  return sub_214F43C14(v1 + 64, a1, &qword_27CA44460);
}

uint64_t sub_21503CF7C(uint64_t a1)
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B30();

  return sub_214F302D4(a1, &qword_27CA44460);
}

uint64_t sub_21503D05C(uint64_t a1, uint64_t a2)
{
  sub_214F43C14(a2, v4, &qword_27CA44460);
  swift_beginAccess();
  sub_215044874(v4, a1 + 64);
  return swift_endAccess();
}

void (*sub_21503D0F0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503CC84();
  return sub_21503D228;
}

id LiveTranscriptionCoordinator.__allocating_init(attachmentModel:)(void *a1)
{
  swift_allocObject();
  v2 = sub_215043664(a1);

  return v2;
}

id LiveTranscriptionCoordinator.init(attachmentModel:)(void *a1)
{
  v2 = sub_215043664(a1);

  return v2;
}

uint64_t sub_21503D2AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_2150439CC(&qword_27CA44470, MEMORY[0x277CC8C40]);
  v14[0] = a1;
  LOBYTE(a1) = sub_2150A4A80();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_21503D54C()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v1 = *(v0 + 32);
  swift_getKeyPath();

  sub_2150A3B40();

  swift_beginAccess();

  sub_21506860C(v2);
  swift_getKeyPath();
  sub_2150A3B40();

  swift_beginAccess();

  sub_21506860C(v3);
  return v1;
}

uint64_t sub_21503D724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  v4 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  v5 = sub_2150A3400();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21503D81C(uint64_t a1)
{
  v2 = sub_2150A3400();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_21503D2AC(v4);
}

uint64_t sub_21503D8E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  v3 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  v4 = sub_2150A3400();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21503D9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

void (*sub_21503DAFC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503D6C4();
  return sub_21503DC34;
}

void sub_21503DC40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2150A3B50();

  free(v1);
}

uint64_t sub_21503DCD4()
{
  v1 = v0;
  v2 = sub_2150A3340();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2150A3400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  v7 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_2150A3330();
  (*(v4 + 8))(v6, v3);
  sub_2150439CC(&qword_27CA42330, MEMORY[0x277CC8B30]);
  return sub_2150A4D20();
}

uint64_t sub_21503DEE8()
{
  v1 = sub_21503D54C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  sub_214F73B44(&unk_2150CB918, v2);
}

uint64_t sub_21503DF70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  v2[4] = swift_task_alloc();
  v3 = sub_2150A3400();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21503E07C, 0, 0);
}

uint64_t sub_21503E07C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v0[2], 1, v2);
  v6 = sub_2150A5120();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v2, v5);
  sub_2150A50A0();

  v8 = sub_2150A5090();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 2) = v8;
  *(v10 + 3) = v11;
  *(v10 + 4) = v7;
  (*(v3 + 32))(&v10[v9], v1, v5);

  sub_214FD26AC(0, 0, v4, &unk_2150CBC08, v10);

  (*(v3 + 8))(v2, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21503E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_2150A3400();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  sub_2150A50A0();
  v5[27] = sub_2150A5090();
  v8 = sub_2150A5010();

  return MEMORY[0x2822009F8](sub_21503E35C, v8, v7);
}

uint64_t sub_21503E35C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[26];
    (*(v0[25] + 16))(v1, v0[23], v0[24]);
    sub_21503D2AC(v1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    v0[21] = v3;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B40();

    swift_beginAccess();
    sub_214F43C14(v3 + 64, (v0 + 2), &qword_27CA44460);

    if (v0[5])
    {
      sub_214F6163C((v0 + 2), (v0 + 7));
      sub_214F302D4((v0 + 2), &qword_27CA44460);
      v4 = v0[10];
      v5 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
      (*(v5 + 8))(v4, v5);
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    else
    {
      sub_214F302D4((v0 + 2), &qword_27CA44460);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_21503E56C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_2150A50A0();
  v2[23] = sub_2150A5090();
  v4 = sub_2150A5010();
  v2[24] = v4;
  v2[25] = v3;

  return MEMORY[0x2822009F8](sub_21503E604, v4, v3);
}

uint64_t sub_21503E604()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsGeneralASR];

  if (v2)
  {
    v3 = v0[22];
    swift_beginAccess();
    if (*(v3 + 56))
    {
      v4 = v0[22];
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v4;
      *(v5 + 24) = 0;
      v0[20] = v4;
      sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
      sub_2150A3B30();
    }

    else
    {
      *(v3 + 56) = 0;
    }

    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_21503E808;

    return SiriTranscriptionMethod.finishTranscription()();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21503E808()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_21503EDE0;
  }

  else
  {
    v5 = sub_21503E944;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

id sub_21503E944()
{
  v1 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 112) = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  if (!*(*(v1 + 24) + 16))
  {

LABEL_13:
    v27 = *(v0 + 176);
    v28 = sub_21503D54C();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;

    sub_214F73B44(&unk_2150CB928, v29);

    v18 = *(v0 + 8);
    goto LABEL_14;
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 120) = v3;
  sub_2150A3B40();

  v4 = *(v1 + 24);
  v5 = objc_opt_self();

  v6 = [v5 sharedConfiguration];
  v7 = sub_215038B68(v4, 0, v6);
  if (v2)
  {
    v8 = *(v0 + 176);

    swift_getKeyPath();
    *(v0 + 128) = v8;
    sub_2150A3B40();

    v9 = *(v1 + 24);
  }

  else
  {
    v9 = v7;
  }

  v10 = [*(v0 + 168) identifier];
  if (!v10)
  {
LABEL_10:
    v19 = *(v0 + 176);
    swift_getKeyPath();
    *(v0 + 136) = v19;
    sub_2150A3B40();

    swift_beginAccess();
    result = [*(v19 + 48) attachment];
    if (result)
    {
      v21 = result;
      v22 = *(v0 + 176);
      v23 = [result managedObjectContext];

      [v23 ic_save];
      v24 = MEMORY[0x277D84F90];
      sub_21503BA6C(MEMORY[0x277D84F90]);
      sub_21503B568(v24);
      swift_getKeyPath();
      *(v0 + 144) = v22;
      sub_2150A3B40();

      result = [*(v19 + 48) audioDocument];
      if (result)
      {
        v25 = result;

        v26 = ICTTAudioDocument.transcriptViewModelSegments.getter();

        sub_21503BFA4(v26);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  fragmentUUID_8._rawValue = v9;
  v11 = *(v0 + 176);
  v12 = v10;
  fragmentUUID = sub_2150A4AD0();
  v14 = v13;

  swift_getKeyPath();
  *(v0 + 152) = v11;
  sub_2150A3B40();

  swift_beginAccess();
  v15 = *(v11 + 48);
  v16._countAndFlagsBits = fragmentUUID;
  v16._object = v14;
  ICAttachmentAudioModel.saveModelDataToSubattachment(transcriptSegments:fragmentUUID:retranscription:)(fragmentUUID_8, v16, 0);
  if (!v17)
  {

    goto LABEL_10;
  }

  v18 = *(v0 + 8);
LABEL_14:

  return v18();
}

uint64_t sub_21503EDE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21503EE44(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for TranscriptViewModelSegment(0);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = sub_2150A3340();
  v2[36] = swift_task_alloc();
  sub_2150A34D0();
  v2[37] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78);
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80);
  v2[41] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88);
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90);
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v7 = sub_2150A33B0();
  v2[49] = v7;
  v2[50] = *(v7 - 8);
  v2[51] = swift_task_alloc();
  v8 = sub_2150A3400();
  v2[52] = v8;
  v2[53] = *(v8 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44478);
  v2[57] = swift_task_alloc();
  v9 = sub_2150A4400();
  v2[58] = v9;
  v2[59] = *(v9 - 8);
  v2[60] = swift_task_alloc();
  v10 = sub_2150A4490();
  v2[61] = v10;
  v2[62] = *(v10 - 8);
  v2[63] = swift_task_alloc();
  v11 = sub_2150A4220();
  v2[64] = v11;
  v2[65] = *(v11 - 8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v12 = sub_2150A4190();
  v2[68] = v12;
  v2[69] = *(v12 - 8);
  v2[70] = swift_task_alloc();
  v13 = type metadata accessor for TranscriptionUpdate(0);
  v2[71] = v13;
  v2[72] = *(v13 - 8);
  v2[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44480);
  v2[74] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44488);
  v2[75] = v14;
  v2[76] = *(v14 - 8);
  v2[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v2[78] = swift_task_alloc();
  v15 = sub_2150A3750();
  v2[79] = v15;
  v2[80] = *(v15 - 8);
  v2[81] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44490);
  v2[82] = v16;
  v2[83] = *(v16 - 8);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = sub_2150A50A0();
  v2[88] = sub_2150A5090();
  v18 = sub_2150A5010();
  v2[89] = v18;
  v2[90] = v17;

  return MEMORY[0x2822009F8](sub_21503F5B8, v18, v17);
}

id sub_21503F5B8()
{
  v30 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsGeneralASR];

  if (!v2)
  {
LABEL_4:

    v7 = v0[1];

    return v7();
  }

  v3 = v0[30];
  swift_getKeyPath();
  v0[20] = v3;
  v0[91] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  v0[92] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  result = [*(v3 + 48) audioDocument];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  v6 = [result isCallRecording];

  if (v6)
  {
    goto LABEL_4;
  }

  if (qword_27CA41780 != -1)
  {
    swift_once();
  }

  v8 = sub_2150A3F30();
  v0[93] = v8;
  __swift_project_value_buffer(v8, qword_27CA44430);

  v9 = sub_2150A3F10();
  v10 = sub_2150A5550();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[30];
  if (!v11)
  {

    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = v28;
  *v13 = 136315138;
  swift_getKeyPath();
  v0[28] = v12;
  sub_2150A3B40();

  v14 = [*(v3 + 48) attachment];

  if (!v14)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v15 = [v14 identifier];

  if (v15)
  {
    v16 = sub_2150A4AD0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = sub_214F7723C(v16, v18, &v29);

  *(v13 + 4) = v19;
  _os_log_impl(&dword_214D51000, v9, v10, "Transcribing from live recording for attachment %s", v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x216064AF0](v28, -1, -1);
  MEMORY[0x216064AF0](v13, -1, -1);

LABEL_16:
  v20 = v0[80];
  v21 = v0[79];
  v22 = v0[78];
  sub_214F43C14(v0[29], v22, &qword_27CA41D40);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    sub_214F302D4(v0[78], &qword_27CA41D40);
    v23 = swift_task_alloc();
    v0[96] = v23;
    *v23 = v0;
    v23[1] = sub_215040020;
    v24 = v0[84];

    return SiriTranscriptionMethod.prepareForTranscription()(v24);
  }

  else
  {
    (*(v0[80] + 32))(v0[81], v0[78], v0[79]);
    v25 = swift_task_alloc();
    v0[94] = v25;
    *v25 = v0;
    v25[1] = sub_21503FBFC;
    v26 = v0[85];
    v27 = v0[81];

    return sub_2150351A8(v26, v27);
  }
}

uint64_t sub_21503FBFC()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = *(v2 + 720);
  v4 = *(v2 + 712);
  if (v0)
  {
    v5 = sub_2150416C0;
  }

  else
  {
    v5 = sub_21503FD38;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21503FD38()
{
  (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
  v1 = *(v0 + 760);
  v2 = *(v0 + 240);
  (*(*(v0 + 664) + 32))(*(v0 + 688), *(v0 + 680), *(v0 + 656));
  swift_getKeyPath();
  *(v0 + 168) = v2;
  sub_2150A3B40();

  v3 = [*(v2 + 48) audioDocument];
  if (v3)
  {
    v7 = v3;
    v8 = *(v0 + 240);
    v9 = ICTTAudioDocument.transcriptViewModelSegments.getter();

    sub_21503BFA4(v9);
    v10 = sub_21503D54C();
    *(v0 + 784) = *(v8 + 120);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;

    sub_214F73B44(&unk_2150CB960, v11);

    swift_beginAccess();
    if (*(v8 + 56) == 1)
    {
      *(v8 + 56) = 1;
    }

    else
    {
      v12 = *(v0 + 240);
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 1;
      *(v0 + 176) = v12;
      sub_2150A3B30();
    }

    sub_2150A5160();
    swift_beginAccess();
    *(v0 + 880) = *MEMORY[0x277CDCBB8];
    *(v0 + 884) = *MEMORY[0x277CDCBA0];
    *(v0 + 792) = v1;
    v14 = sub_2150A5090();
    *(v0 + 800) = v14;
    v15 = swift_task_alloc();
    *(v0 + 808) = v15;
    *v15 = v0;
    v15[1] = sub_215040428;
    v6 = *(v0 + 600);
    v3 = *(v0 + 592);
    v5 = MEMORY[0x277D85700];
    v4 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822003E8](v3, v4, v5, v6);
}

uint64_t sub_215040020()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  v3 = *(v2 + 720);
  v4 = *(v2 + 712);
  if (v0)
  {
    v5 = sub_2150418BC;
  }

  else
  {
    v5 = sub_21504015C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21504015C()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 240);
  (*(*(v0 + 664) + 32))(*(v0 + 688), *(v0 + 672), *(v0 + 656));
  swift_getKeyPath();
  *(v0 + 168) = v2;
  sub_2150A3B40();

  v3 = [*(v2 + 48) audioDocument];
  if (v3)
  {
    v7 = v3;
    v8 = *(v0 + 240);
    v9 = ICTTAudioDocument.transcriptViewModelSegments.getter();

    sub_21503BFA4(v9);
    v10 = sub_21503D54C();
    *(v0 + 784) = *(v8 + 120);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;

    sub_214F73B44(&unk_2150CB960, v11);

    swift_beginAccess();
    if (*(v8 + 56) == 1)
    {
      *(v8 + 56) = 1;
    }

    else
    {
      v12 = *(v0 + 240);
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 1;
      *(v0 + 176) = v12;
      sub_2150A3B30();
    }

    sub_2150A5160();
    swift_beginAccess();
    *(v0 + 880) = *MEMORY[0x277CDCBB8];
    *(v0 + 884) = *MEMORY[0x277CDCBA0];
    *(v0 + 792) = v1;
    v14 = sub_2150A5090();
    *(v0 + 800) = v14;
    v15 = swift_task_alloc();
    *(v0 + 808) = v15;
    *v15 = v0;
    v15[1] = sub_215040428;
    v6 = *(v0 + 600);
    v3 = *(v0 + 592);
    v5 = MEMORY[0x277D85700];
    v4 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822003E8](v3, v4, v5, v6);
}

uint64_t sub_215040428()
{
  v1 = *v0;

  v2 = *(v1 + 720);
  v3 = *(v1 + 712);

  return MEMORY[0x2822009F8](sub_21504056C, v3, v2);
}

uint64_t sub_21504056C()
{
  v1 = *(v0 + 592);
  if ((*(*(v0 + 576) + 48))(v1, 1, *(v0 + 568)) == 1)
  {
    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
    v2 = swift_task_alloc();
    *(v0 + 816) = v2;
    *v2 = v0;
    v2[1] = sub_215041390;

    return sub_215041C90();
  }

  else
  {
    sub_215043A14(v1, *(v0 + 584), type metadata accessor for TranscriptionUpdate);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(v0 + 880);
      v5 = *(v0 + 536);
      v6 = *(v0 + 528);
      v7 = *(v0 + 520);
      v8 = *(v0 + 512);
      (*(*(v0 + 552) + 32))(*(v0 + 560), *(v0 + 584), *(v0 + 544));
      sub_2150A4150();
      v9 = *(v7 + 104);
      v9(v6, v4, v8);
      v10 = sub_2150A4210();
      v11 = *(v7 + 8);
      v11(v6, v8);
      v12 = (v11)(v5, v8);
      if (v10 & 1) != 0 || (v13 = *(v0 + 884), v14 = *(v0 + 536), v15 = *(v0 + 528), v16 = *(v0 + 512), sub_2150A4150(), v9(v15, v13, v16), v17 = sub_2150A4210(), v11(v15, v16), v12 = (v11)(v14, v16), (v17))
      {
        v18 = MEMORY[0x216060D20](v12);
        if (*(v18 + 16))
        {
          v19 = *(v0 + 456);
          v20 = *(v0 + 416);
          v21 = *(v0 + 424);
          v22 = *(v21 + 16);
          v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
          v22(v19, v18 + v23, v20);

          (*(v21 + 56))(v19, 0, 1, v20);
          sub_214F302D4(v19, &qword_27CA44478);
          v24 = sub_21503B568(MEMORY[0x277D84F90]);
          v25 = MEMORY[0x216060D20](v24);
          if (*(v25 + 16))
          {
            v27 = *(v0 + 440);
            v26 = *(v0 + 448);
            v28 = *(v0 + 416);
            v29 = *(v0 + 424);
            v30 = v22;
            v31 = *(v0 + 400);
            v32 = *(v0 + 408);
            v100 = *(v0 + 384);
            v101 = *(v0 + 392);
            v102 = *(v0 + 368);
            v103 = *(v0 + 360);
            v105 = *(v0 + 376);
            v106 = *(v0 + 328);
            v109 = *(v0 + 312);
            v112 = *(v0 + 304);
            v30(v27, v25 + v23, v28);

            (*(v29 + 32))(v26, v27, v28);
            sub_2150A33D0();
            sub_2150A4260();
            sub_2150439CC(&qword_27CA41EB0, MEMORY[0x277CDCCE0]);
            sub_2150A33C0();
            (*(v31 + 8))(v32, v101);
            (*(v102 + 16))(v105, v100, v103);
            sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90);
            sub_2150A4D60();
            sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88);
            sub_2150A5850();
            v33 = *(v109 + 48);
            v34 = v33(v106, 1, v112);
            v35 = MEMORY[0x277D84F90];
            if (v34 != 1)
            {
              v104 = v33;
              do
              {
                v64 = *(v0 + 320);
                sub_214F548A8(*(v0 + 328), v64);
                if ((*(v64 + 48) & 1) == 0)
                {
                  v65 = *(v0 + 320);
                  v66 = *(v0 + 272);
                  v110 = *(v0 + 264);
                  v113 = v35;
                  v67 = *(v0 + 248);
                  v69 = *(v65 + 32);
                  v68 = *(v65 + 40);
                  v70 = *(v65 + 8);
                  v71 = *(v65 + 16);
                  *(v0 + 832) = *v65;
                  *(v0 + 840) = v70;
                  *(v0 + 848) = v71;
                  *(v0 + 864) = v69;
                  *(v0 + 872) = v68;
                  sub_2150A5730();
                  v73 = v72 + 0.0;
                  sub_2150A54E0();
                  sub_2150A5730();
                  v75 = v74 + 0.0 - v73;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8);
                  sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8);
                  sub_2150A3430();
                  sub_2150A3440();
                  sub_2150A3330();
                  sub_2150439CC(&qword_27CA42330, MEMORY[0x277CC8B30]);
                  v76 = sub_2150A4D20();
                  v78 = v77;
                  v79 = v67[10];
                  v80 = (v66 + v67[9]);
                  *(v66 + v79) = 2;
                  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
                  v81 = (v66 + v67[5]);
                  *v81 = v76;
                  v81[1] = v78;
                  *(v66 + v67[6]) = v73;
                  *(v66 + v67[7]) = v75;
                  *v80 = 0;
                  v80[1] = 0;
                  *(v66 + v79) = 2;
                  v82 = v67[8];
                  v35 = v113;
                  *(v66 + v82) = v73 + v75;
                  sub_214F5456C(v66, v110);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v35 = sub_21505F724(0, v113[2] + 1, 1, v113);
                  }

                  v84 = v35[2];
                  v83 = v35[3];
                  if (v84 >= v83 >> 1)
                  {
                    v35 = sub_21505F724(v83 > 1, v84 + 1, 1, v35);
                  }

                  v58 = *(v0 + 424);
                  v57 = *(v0 + 432);
                  v59 = *(v0 + 416);
                  v60 = *(v0 + 264);
                  v61 = *(v0 + 256);
                  sub_214F545D0(*(v0 + 272));
                  (*(v58 + 8))(v57, v59);
                  v35[2] = v84 + 1;
                  sub_215043A14(v60, v35 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v84, type metadata accessor for TranscriptViewModelSegment);
                  v33 = v104;
                }

                v62 = *(v0 + 328);
                v63 = *(v0 + 304);
                sub_214F302D4(*(v0 + 320), &qword_27CA41E78);
                sub_2150A5850();
              }

              while (v33(v62, 1, v63) != 1);
            }

            v36 = *(v0 + 448);
            v38 = *(v0 + 416);
            v37 = *(v0 + 424);
            v39 = *(v0 + 384);
            v40 = *(v0 + 360);
            v41 = *(v0 + 368);
            (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
            (*(v41 + 8))(v39, v40);
            (*(v37 + 8))(v36, v38);
          }

          else
          {

            if (qword_27CA417C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(*(v0 + 744), qword_27CA446F8);
            v51 = sub_2150A3F10();
            v52 = sub_2150A5560();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_214D51000, v51, v52, "got an empty result", v53, 2u);
              MEMORY[0x216064AF0](v53, -1, -1);
            }

            v35 = MEMORY[0x277D84F90];
          }

          v54 = *(v0 + 240);
          swift_getKeyPath();
          *(v0 + 200) = v54;
          sub_2150A3B40();

          *(v0 + 208) = v54;
          swift_getKeyPath();
          sub_2150A3B60();

          swift_beginAccess();
          sub_21506860C(v35);
          swift_endAccess();
          *(v0 + 216) = v54;
          swift_getKeyPath();
          sub_2150A3B50();

          v55 = sub_21503D54C();
          v56 = swift_allocObject();
          *(v56 + 16) = v55;
          *(v56 + 24) = v54;

          sub_214F73B44(&unk_2150CB980, v56);
        }

        else
        {
          v42 = *(v0 + 456);
          v43 = *(v0 + 416);
          v44 = *(v0 + 424);

          (*(v44 + 56))(v42, 1, 1, v43);
          sub_214F302D4(v42, &qword_27CA44478);
        }

        v45 = *(v0 + 792);
      }

      else
      {
        v45 = *(v0 + 792);
        v46 = *(v0 + 560);
        v47 = sub_2150A4180();
        v48 = swift_task_alloc();
        *(v48 + 16) = v46;
        v49 = sub_215058BBC(sub_2150439AC, v48, v47);

        LOBYTE(v47) = sub_214F8F9A0(v50, v49);

        if (v47)
        {
          *(*(v0 + 240) + 16) = v49;
        }

        else
        {
          v85 = *(v0 + 240);
          swift_getKeyPath();
          v86 = swift_task_alloc();
          *(v86 + 16) = v85;
          *(v86 + 24) = v49;
          *(v0 + 184) = v85;
          sub_2150A3B30();
        }

        v87 = *(v0 + 784);
        v88 = *(v0 + 504);
        v111 = *(v0 + 496);
        v114 = *(v0 + 488);
        v89 = *(v0 + 464);
        v107 = *(v0 + 480);
        v108 = *(v0 + 472);
        v90 = *(v0 + 240);
        v91 = sub_21503D54C();
        v92 = swift_allocObject();
        *(v92 + 16) = v91;
        *(v92 + 24) = v90;
        v93 = swift_allocObject();
        v93[2] = v87;
        v93[3] = &unk_2150CB970;
        v93[4] = v92;
        *(v0 + 48) = sub_214F74808;
        *(v0 + 56) = v93;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_214F44018;
        *(v0 + 40) = &block_descriptor_18;
        v94 = _Block_copy((v0 + 16));

        sub_2150A4440();
        *(v0 + 192) = MEMORY[0x277D84F90];
        sub_2150439CC(&qword_280C24570, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28);
        sub_214F43BCC(&qword_280C24550, &unk_27CA41A28);
        sub_2150A5930();
        MEMORY[0x216062180](0, v88, v107, v94);
        _Block_release(v94);

        (*(v108 + 8))(v107, v89);
        (*(v111 + 8))(v88, v114);
      }

      (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
      *(v0 + 792) = v45;
    }

    v95 = sub_2150A5090();
    *(v0 + 800) = v95;
    v96 = swift_task_alloc();
    *(v0 + 808) = v96;
    *v96 = v0;
    v96[1] = sub_215040428;
    v97 = *(v0 + 600);
    v98 = *(v0 + 592);
    v99 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v98, v95, v99, v97);
  }
}

uint64_t sub_215041390()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 720);
  v4 = *(v2 + 712);
  if (v0)
  {
    v5 = sub_215041A94;
  }

  else
  {
    v5 = sub_2150414CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2150414CC()
{
  v1 = v0[86];
  v2 = v0[83];
  v3 = v0[82];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2150416C0()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2150418BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215041A94()
{
  v1 = v0[86];
  v2 = v0[83];
  v3 = v0[82];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215041C90()
{
  v1[10] = v0;
  sub_2150A50A0();
  v1[11] = sub_2150A5090();
  v3 = sub_2150A5010();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_215041D28, v3, v2);
}

uint64_t sub_215041D28()
{
  v1 = v0[10];
  swift_beginAccess();
  if (*(v1 + 56))
  {
    v2 = v0[10];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[9] = v2;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  else
  {
    *(v1 + 56) = 0;
  }

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_215041EB0;

  return SiriTranscriptionMethod.finishTranscription()();
}

uint64_t sub_215041EB0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_21504213C;
  }

  else
  {
    v5 = sub_215041FEC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

id sub_215041FEC()
{
  v1 = v0[10];
  swift_getKeyPath();
  v0[8] = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  result = [*(v1 + 48) attachment];
  if (result)
  {
    v3 = result;

    v4 = [v3 objectID];

    sub_2150423D8(v4);
    v5 = v0[1];

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21504213C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2150421A0(uint64_t *a1)
{
  v3 = *a1;
  v2[2] = v1;
  v2[3] = v3;
  sub_2150A50A0();
  v2[4] = sub_2150A5090();
  v5 = sub_2150A5010();
  v2[5] = v5;
  v2[6] = v4;

  return MEMORY[0x2822009F8](sub_21504223C, v5, v4);
}

uint64_t sub_215042264()
{
  v1 = *(v0[7] + 16);
  if (v1)
  {
    v2 = v0[3];
    v3 = v1;
    sub_215053424(v2);
    v0[8] = 0;
  }

  v4 = v0[5];
  v5 = v0[6];

  return MEMORY[0x2822009F8](sub_215042310, v4, v5);
}

uint64_t sub_215042310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215042374()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2150423D8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  swift_getKeyPath();
  v17 = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v7 = [*(v1 + 48) attachment];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 managedObjectContext];

    if (v9)
    {
      v10 = sub_2150A5120();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      sub_2150A50A0();

      v11 = v9;
      v12 = a1;
      v13 = sub_2150A5090();
      v14 = swift_allocObject();
      v15 = MEMORY[0x277D85700];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v2;
      v14[5] = v11;
      v14[6] = v12;
      sub_214FD26AC(0, 0, v6, &unk_2150CB9A8, v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2150425EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  v6[32] = sub_2150A3340();
  v6[33] = swift_task_alloc();
  v7 = sub_2150A3400();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();
  sub_2150A50A0();
  v6[37] = sub_2150A5090();
  v9 = sub_2150A5010();
  v6[38] = v9;
  v6[39] = v8;

  return MEMORY[0x2822009F8](sub_215042714, v9, v8);
}

uint64_t sub_215042714()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsOnDeviceSummary];

  if (v2)
  {
    v4 = v0[35];
    v3 = v0[36];
    v5 = v0[34];
    v6 = v0[29];
    type metadata accessor for SummarizationManager();
    swift_getKeyPath();
    v0[28] = v6;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator);
    sub_2150A3B40();

    v7 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
    swift_beginAccess();
    (*(v4 + 16))(v3, v6 + v7, v5);
    sub_2150A3330();
    (*(v4 + 8))(v3, v5);
    sub_2150439CC(&qword_27CA42330, MEMORY[0x277CC8B30]);
    v8 = sub_2150A4D20();
    v10 = v9;
    v0[40] = v9;
    v11 = swift_task_alloc();
    v0[41] = v11;
    *v11 = v0;
    v11[1] = sub_2150429AC;

    return static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 10), v8, v10);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2150429AC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_2150431A4;
  }

  else
  {

    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_215042AC8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_215042AC8()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 80);
    v5 = swift_allocObject();
    *(v0 + 344) = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
    *(v5 + 40) = v1;
    v6 = *(v0 + 112);
    *(v5 + 48) = *(v0 + 96);
    *(v5 + 64) = v6;
    *(v5 + 80) = *(v0 + 128);
    *(v5 + 96) = *(v0 + 144);
    v7 = v3;
    v8 = v2;

    return MEMORY[0x2822009F8](sub_215042BD4, 0, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_215042BD4()
{
  v1 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_215042C4C, 0, 0);
}

uint64_t sub_215042C4C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 19;
  v5 = v0[43];
  v6 = v0[30];
  v1[2] = v2;
  v1[3] = sub_215042DB8;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  v8[2] = sub_215044684;
  v8[3] = v5;
  v8[4] = v7;
  v1[23] = sub_215009A2C;
  v1[24] = v8;
  v1[19] = MEMORY[0x277D85DD0];
  v1[20] = 1107296256;
  v1[21] = sub_214F44018;
  v1[22] = &block_descriptor_120;
  v9 = _Block_copy(v4);

  [v6 performBlock_];
  _Block_release(v9);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_215042DB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_215042F68;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v1[30];

    v4 = v1[38];
    v5 = v1[39];
    v3 = sub_215042EF4;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_215042EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215042F68()
{
  v1 = v0[30];
  swift_willThrow();

  v2 = v0[38];
  v3 = v0[39];

  return MEMORY[0x2822009F8](sub_215042FE8, v2, v3);
}

uint64_t sub_215042FE8()
{

  v1 = *(v0 + 352);
  if (qword_27CA41780 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA44430);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "failed to generate topline summary: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2150431A4()
{

  v1 = *(v0 + 336);
  if (qword_27CA41780 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA44430);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "failed to generate topline summary: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_21504336C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 objectWithID_];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = [v6 audioModel]) != 0)
  {
    v8 = v7;
    v9 = *(a3 + 48);
    *&v16.modelVersion.value._object = *(a3 + 32);
    *&v16.attributionIcon.value._object = v9;
    v16.attributionProvider.value._object = *(a3 + 64);
    v10 = *(a3 + 16);
    v16.text = *a3;
    *&v16.isSafe = v10;
    ICAttachmentAudioModel.saveTopLineSummaryToAttachment(summarizationResult:)(&v16);
    if (v11)
    {
    }

    else
    {
      [a1 ic_save];
    }
  }

  else
  {

    if (qword_27CA41780 != -1)
    {
      swift_once();
    }

    v12 = sub_2150A3F30();
    __swift_project_value_buffer(v12, qword_27CA44430);
    v13 = sub_2150A3F10();
    v14 = sub_2150A5560();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_214D51000, v13, v14, "could not fetch attachment to generate topline summary", v15, 2u);
      MEMORY[0x216064AF0](v15, -1, -1);
    }
  }
}

uint64_t LiveTranscriptionCoordinator.deinit()
{

  sub_214F302D4(v0 + 64, &qword_27CA44460);

  v1 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  v2 = sub_2150A3400();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  v4 = sub_2150A3B80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LiveTranscriptionCoordinator.__deallocating_deinit()
{
  LiveTranscriptionCoordinator.deinit();

  return swift_deallocClassInstance();
}

id sub_215043664(void *a1)
{
  v2 = v1;
  v4 = sub_2150A3400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v8;
  *(v1 + 32) = v8;
  *(v1 + 56) = 0;
  type metadata accessor for CancellableTaskQueue();
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  swift_allocObject();
  *(v1 + 112) = sub_214F738F8(0xD00000000000002ALL, 0x80000002150E77B0);
  swift_allocObject();
  *(v1 + 120) = sub_214F738F8(0xD000000000000025, 0x80000002150E77E0);
  sub_2150A33F0();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript, v7, v4);
  sub_2150A3B70();
  *(v1 + 48) = a1;
  type metadata accessor for SiriTranscriptionMethod();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388);
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  *(v2 + 40) = v9;
  result = [a1 audioDocument];
  if (result)
  {
    v13 = result;
    v14 = ICTTAudioDocument.transcriptViewModelSegments.getter();

    sub_21503BFA4(v14);
    v15 = sub_21503D54C();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v2;

    sub_214F73B44(&unk_2150CBC18, v16);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215043914()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214F557A8;

  return sub_21503DF70(v2, v3);
}

uint64_t sub_2150439CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_215043A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_215043A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_215043AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F557A8;

  return sub_2150425EC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_215043B9C()
{
  result = qword_27CA44498;
  if (!qword_27CA44498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44498);
  }

  return result;
}

unint64_t sub_215043BF4()
{
  result = qword_27CA444A0;
  if (!qword_27CA444A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA444A0);
  }

  return result;
}

uint64_t sub_215043C84()
{
  result = sub_2150A3400();
  if (v1 <= 0x3F)
  {
    result = sub_2150A3B80();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.updateTranscriptFromModel(subattachment:)(uint64_t a1)
{
  v6 = (*(*v1 + 592) + **(*v1 + 592));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214F557A8;

  return v6(a1);
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.transcribe(file:)(uint64_t a1)
{
  v6 = (*(*v1 + 608) + **(*v1 + 608));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214F557A8;

  return v6(a1);
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.finishTranscription()()
{
  v4 = (*(*v0 + 616) + **(*v0 + 616));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_214F53FB0;

  return v4();
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.receiveAudio(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 624) + **(*v1 + 624));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214F557A8;

  return v6(a1);
}

uint64_t sub_2150446A4(uint64_t a1)
{
  v4 = *(sub_2150A3400() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F557A8;

  return sub_21503E268(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2150447DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214F53FB0;

  return sub_21503DF70(v2, v3);
}

uint64_t sub_215044874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44460);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_215044934()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_27CA558F8 = result;
  return result;
}

id sub_215044968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2150CBC20;
  v1 = *MEMORY[0x277CBD018];
  *(v0 + 32) = *MEMORY[0x277CBD018];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 descriptorForRequiredKeysForStyle_];
  v5 = *MEMORY[0x277CBCFC0];
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  v8 = *MEMORY[0x277CBD098];
  *(v0 + 56) = *MEMORY[0x277CBD098];
  qword_27CA55900 = v0;
  v6 = v5;

  return v8;
}

uint64_t sub_215044A4C()
{
  if (qword_27CA41788 != -1)
  {
    swift_once();
  }

  v0 = qword_27CA558F8;
  v1 = sub_2150A4A90();
  if (qword_27CA41790 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA444C0);
  v2 = sub_2150A4EB0();
  v3 = [v0 ic:v1 contactForHandleString:v2 keysToFetch:?];

  if (v3)
  {
    v4 = [objc_opt_self() stringFromContact:v3 style:0];
    if (v4)
    {
      v5 = v4;
      v6 = sub_2150A4AD0();

      return v6;
    }
  }

  return 0;
}

void sub_215044BBC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214F48160();
    sub_21504A1BC(&qword_27CA41E30, sub_214F48160);
    sub_2150A5320();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_2150A5A10() || (sub_214F48160(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_214F420F4();
      return;
    }

LABEL_17:
    v12 = [v11 identifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_2150A4AD0();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21505F4D0(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_21505F4D0((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_215044E64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v58 = sub_2150A3750();
  v8 = *(v58 - 8);
  v9 = MEMORY[0x28223BE20](v58);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v48 - v11;
  v53 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214F48160();
    sub_21504A1BC(&qword_27CA41E30, sub_214F48160);
    result = sub_2150A5320();
    a1 = v61;
    v13 = v62;
    v14 = v63;
    v15 = v64;
    v16 = v65;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v15 = 0;
  }

  v52 = v14;
  v20 = (v14 + 64) >> 6;
  v56 = (v8 + 56);
  v57 = (v8 + 48);
  v49 = v8;
  v50 = (v8 + 32);
  v54 = MEMORY[0x277D84F90];
  v55 = v20;
  v21 = v16;
  while (a1 < 0)
  {
    v25 = sub_2150A5A10();
    if (!v25 || (v60 = v25, sub_214F48160(), swift_dynamicCast(), (v24 = v66) == 0))
    {
LABEL_30:
      sub_214F420F4();
      return v54;
    }

LABEL_17:
    v26 = v24;
    v27 = [v26 media];
    if (v27)
    {
      v28 = v13;
      v29 = v21;
      v30 = a1;
      v31 = v7;
      v32 = v27;
      v33 = [v32 mediaURL];
      v34 = v59;
      if (v33)
      {
        v35 = v33;
        sub_2150A36F0();

        v34 = v59;
        v36 = *v56;
        v37 = v59;
        v38 = 0;
      }

      else
      {
        v36 = *v56;
        v37 = v59;
        v38 = 1;
      }

      v39 = v58;
      v36(v37, v38, 1, v58);

      v7 = v31;
      a1 = v30;
      v21 = v29;
      v13 = v28;
      v20 = v55;
    }

    else
    {
      v39 = v58;
      v34 = v59;
      (*v56)(v59, 1, 1, v58);
    }

    sub_214F48094(v34, v7);

    if ((*v57)(v7, 1, v39) == 1)
    {
      result = sub_214F302D4(v7, &qword_27CA41D40);
    }

    else
    {
      v40 = v13;
      v41 = v21;
      v42 = *v50;
      v43 = v48;
      v44 = v58;
      (*v50)(v48, v7, v58);
      v42(v51, v43, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_215060348(0, v54[2] + 1, 1, v54);
      }

      v46 = v54[2];
      v45 = v54[3];
      v21 = v41;
      if (v46 >= v45 >> 1)
      {
        v54 = sub_215060348(v45 > 1, v46 + 1, 1, v54);
      }

      v13 = v40;
      v47 = v54;
      v54[2] = v46 + 1;
      result = (v42)(v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v46, v51, v58);
      v20 = v55;
    }
  }

  v22 = v15;
  v23 = v21;
  if (v21)
  {
LABEL_13:
    v21 = (v23 - 1) & v23;
    v24 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_30;
    }

    v23 = *(v13 + 8 * v15);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2150453B8()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA444C8);
  v1 = __swift_project_value_buffer(v0, qword_27CA444C8);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_215045480()
{
  result = [objc_allocWithZone(type metadata accessor for Transcription()) init];
  qword_27CA444E0 = result;
  return result;
}

id Transcription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static Transcription.shared.getter()
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CA444E0;

  return v0;
}

void static Transcription.shared.setter(uint64_t a1)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CA444E0;
  qword_27CA444E0 = a1;
}

uint64_t (*static Transcription.shared.modify())()
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_21504576C@<X0>(void *a1@<X8>)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CA444E0;
  *a1 = qword_27CA444E0;

  return v2;
}

void sub_2150457F8(id *a1)
{
  v1 = qword_27CA417A0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CA444E0;
  qword_27CA444E0 = v2;
}

id sub_215045880()
{
  v1 = *(v0 + OBJC_IVAR___ICTranscription__currentlyTranscribingAttachment);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_2150458D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_215045988(uint64_t a1)
{
  v3 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_215045A40()
{
  v1 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v3;
}

void sub_215045AAC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___ICTranscription_workerContext);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v8[4] = sub_214F48104;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_214F44018;
    v8[3] = &block_descriptor_19;
    v5 = _Block_copy(v8);
    v6 = v2;
    v7 = a1;

    [v6 performBlock_];
    _Block_release(v5);
  }
}

uint64_t sub_215045BA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  type metadata accessor for Transcription();
  v13 = 0;
  sub_215045E78(&v13, a1);
  v6 = v5;
  v8 = v7;
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  v9 = sub_2150A5120();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v6;
  v10[5] = v8;
  sub_214FD26AC(0, 0, v4, &unk_2150CBCD8, v10);
}

void sub_215045E78(uint64_t *a1, void *a2)
{
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v101 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v83 - v10;
  v11 = *a1;
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  v12 = swift_beginAccess();
  v13 = *(qword_27CA444E0 + OBJC_IVAR___ICTranscription_workerContext);
  if (!v13)
  {
    sub_21501CFCC();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    return;
  }

  v96 = v6;
  v97 = v7;
  v95 = v2;
  MEMORY[0x28223BE20](v12);
  *(&v83 - 2) = v13;
  *(&v83 - 1) = a2;
  sub_214F48160();
  v14 = v13;
  sub_2150A56D0();
  if (v3)
  {

    return;
  }

  v94 = a2;
  v16 = v99;
  v17 = v11;
  v99 = v11;
  sub_215019F9C(&v99, v16);
  v18 = [v16 identifier];
  if (v18)
  {
    v19 = v18;
    v91 = sub_2150A4AD0();
    v93 = v20;
  }

  else
  {
    v91 = 0;
    v93 = 0xE000000000000000;
  }

  v21 = [v16 note];
  if (v21 && (v22 = v21, v23 = [v21 identifier], v22, v23))
  {
    v90 = sub_2150A4AD0();
    v25 = v24;
  }

  else
  {
    v90 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = [v16 subAttachments];
  if (!v26)
  {
    goto LABEL_22;
  }

  v27 = v26;
  v92 = v25;
  sub_21504A1BC(&qword_27CA41E30, sub_214F48160);
  v28 = sub_2150A52E0();

  sub_215044BBC(v28);
  v30 = v29;

  if (!v30[2])
  {

LABEL_22:

    sub_21501CFCC();
    swift_allocError();
    v43 = 4;
LABEL_26:
    *v42 = v43;
    swift_willThrow();

    return;
  }

  v89 = v30;
  v31 = v30[4];
  v32 = v30[5];

  v33 = [v16 subAttachments];
  if (!v33)
  {
    goto LABEL_25;
  }

  v88 = v31;
  v34 = v33;
  v35 = sub_2150A52E0();

  v36 = sub_215044E64(v35);

  if (!*(v36 + 2))
  {

LABEL_25:

    sub_21501CFCC();
    swift_allocError();
    v43 = 3;
    goto LABEL_26;
  }

  v37 = v17;
  v38 = v96;
  v39 = v97;
  v40 = *(v97 + 16);
  v85 = *(v97 + 80);
  v86 = (v85 + 32) & ~v85;
  v87 = v32;
  v41 = v98;
  v40(v98, &v36[v86], v96);
  if (!v37)
  {
    (*(v39 + 8))(v41, v38);

    v44 = swift_allocObject();
    v45 = v94;
    v44[2] = v95;
    v44[3] = v45;
    v44[4] = v89;
    v44[5] = v36;
    v44[6] = v14;
LABEL_43:
    v82 = v45;
    return;
  }

  v84 = v36;
  if (*(v37 + 16))
  {

LABEL_42:
    v69 = *(v39 + 32);
    v97 = v39 + 32;
    v98 = v69;
    (v69)(v101, v41, v38);
    v70 = v86;
    v89 = (v8 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    v74 = v94;
    *(v73 + 16) = v95;
    *(v73 + 24) = v74;
    (v98)(v73 + v70, v101, v96);
    v75 = v90;
    *(v73 + v89) = v37;
    *(v73 + v84) = v14;
    v76 = (v73 + v71);
    v77 = v91;
    v78 = v92;
    *v76 = v75;
    v76[1] = v78;
    v79 = (v73 + v72);
    *v79 = v77;
    v79[1] = v93;
    v80 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
    v45 = v74;
    v81 = v87;
    *v80 = v88;
    v80[1] = v81;
    goto LABEL_43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2150C29C0;
  v47 = [v16 audioModel];
  if (!v47)
  {
    goto LABEL_33;
  }

  v48 = v47;
  v49 = [v47 audioDocument];

  if (!v49)
  {
    __break(1u);
    goto LABEL_45;
  }

  v50 = [v49 localSpeakerHandle];

  if (v50 && (v99 = 0, v100 = 0, sub_2150A4AC0(), v50, (v51 = v100) != 0))
  {
    *(v46 + 32) = v99;
    *(v46 + 40) = v51;
  }

  else
  {
LABEL_33:
    v52 = objc_opt_self();
    v53 = sub_2150A4A90();
    v54 = [v52 localizedFrameworkStringForKey:v53 value:0 table:0 allowSiri:1];

    v55 = sub_2150A4AD0();
    v57 = v56;

    *(v46 + 32) = v55;
    *(v46 + 40) = v57;
  }

  v58 = [v16 &selRef_supportsOnDeviceSummary + 6];
  if (!v58)
  {

    goto LABEL_40;
  }

  v59 = v58;
  v60 = [v58 audioDocument];

  if (v60)
  {

    v61 = [v60 remoteSpeakerHandle];

    if (v61)
    {
      v99 = 0;
      v100 = 0;
      sub_2150A4AC0();

      v62 = v100;
      if (v100)
      {
        *(v46 + 48) = v99;
        *(v46 + 56) = v62;

LABEL_41:
        v37 = v46;
        v38 = v96;
        v39 = v97;
        v41 = v98;
        goto LABEL_42;
      }
    }

LABEL_40:
    v63 = objc_opt_self();
    v64 = sub_2150A4A90();
    v65 = [v63 localizedFrameworkStringForKey:v64 value:0 table:0 allowSiri:1];

    v66 = sub_2150A4AD0();
    v68 = v67;

    *(v46 + 48) = v66;
    *(v46 + 56) = v68;

    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
}

void sub_2150467C4(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR___ICTranscription_workerContext);
  if (v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v10[4] = sub_215046BB8;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_214F44018;
    v10[3] = &block_descriptor_6;
    v7 = _Block_copy(v10);
    v8 = v3;

    v9 = a2;

    [v8 performBlock_];
    _Block_release(v7);
  }
}

uint64_t sub_2150468CC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  type metadata accessor for Transcription();
  v15 = a1;

  sub_215045E78(&v15, a2);
  v8 = v7;
  v10 = v9;

  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  v11 = sub_2150A5120();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v8;
  v12[5] = v10;
  sub_214FD26AC(0, 0, v6, &unk_2150CBCA8, v12);
}

uint64_t sub_215046C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2150A5120();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215046CF8, 0, 0);
}

uint64_t sub_215046CF8()
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 80) = *(qword_27CA444E0 + OBJC_IVAR___ICTranscription_queue);

  sub_2150A5100();
  sub_2150A3C00();
  sub_21504A1BC(&qword_27CA44518, MEMORY[0x277D36070]);
  v2 = sub_2150A5010();

  return MEMORY[0x2822009F8](sub_215046E30, v2, v1);
}

uint64_t sub_215046E30()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  sub_2150A3BF0();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

id Transcription.init()()
{
  v1 = v0;
  v2 = sub_2150A5120();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR___ICTranscription_queue;
  sub_2150A3C00();
  sub_2150A5100();
  *&v0[v3] = sub_2150A3BE0();
  v4 = OBJC_IVAR___ICTranscription__currentlyTranscribingAttachment;
  v5 = [objc_allocWithZone(MEMORY[0x277CBE448]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44508);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *&v1[v4] = v6;
  v7 = OBJC_IVAR___ICTranscription__downloadingModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44510);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  *&v1[v7] = v8;
  v9 = [objc_opt_self() sharedContext];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 workerManagedObjectContext];
  }

  else
  {
    v11 = 0;
  }

  *&v1[OBJC_IVAR___ICTranscription_workerContext] = v11;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for Transcription();
  return objc_msgSendSuper2(&v13, sel_init);
}

id Transcription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Transcription();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2150472CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v14;
  *(v8 + 344) = v13;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  *(v8 + 280) = a1;
  *(v8 + 288) = a2;
  *(v8 + 368) = sub_2150A3340();
  *(v8 + 376) = swift_task_alloc();
  v9 = sub_2150A3400();
  *(v8 + 384) = v9;
  *(v8 + 392) = *(v9 - 8);
  *(v8 + 400) = swift_task_alloc();
  v10 = sub_2150A3C30();
  *(v8 + 408) = v10;
  *(v8 + 416) = *(v10 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215047448, 0, 0);
}

uint64_t sub_215047448()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  sub_21504A068(v0[36]);
  v5 = [objc_opt_self() sharedInstance];
  sub_2150A56F0();

  (*(v4 + 104))(v2, *MEMORY[0x277D36088], v3);
  v6 = sub_2150A3C10();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  v8 = swift_task_alloc();
  v0[55] = v8;
  *v8 = v0;
  v8[1] = sub_2150475AC;
  v9 = v0[36];

  return sub_21501A134(v6 & 1, v9);
}

uint64_t sub_2150475AC()
{
  v2 = *v1;
  v2[56] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_215047848, 0, 0);
  }

  else
  {
    type metadata accessor for CallRecordingTranscriber();
    v3 = swift_task_alloc();
    v2[57] = v3;
    *v3 = v2;
    v3[1] = sub_215047734;
    v4 = v2[42];
    v5 = v2[43];
    v6 = v2[40];
    v7 = v2[41];
    v8 = v2[38];
    v9 = v2[39];
    v10 = v2[36];
    v11 = v2[37];

    return sub_214F48304(v11, v8, v9, v10, v6, v7, v4, v5);
  }
}

uint64_t sub_215047734(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_215047E78;
  }

  else
  {
    v4 = sub_215047A14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_215047848()
{
  v1 = *(v0 + 448);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "call transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_215047A14()
{
  v1 = v0[58];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  type metadata accessor for SummarizationManager();
  static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v1, 1, v2);
  sub_2150A3330();
  (*(v3 + 8))(v2, v4);
  sub_21504A1BC(&qword_27CA42330, MEMORY[0x277CC8B30]);
  v5 = sub_2150A4D20();
  v7 = v6;
  v0[60] = v6;
  v8 = swift_task_alloc();
  v0[61] = v8;
  *v8 = v0;
  v8[1] = sub_215047B70;

  return static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 11), v5, v7);
}

uint64_t sub_215047B70()
{
  *(*v1 + 496) = v0;

  if (v0)
  {

    v2 = sub_215048044;
  }

  else
  {
    v2 = sub_215047CB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215047CB4()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 312);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 104);
  v8 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = v8;
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v1;
  *(v9 + 48) = v3;
  *(v9 + 56) = v2;
  v10 = *(v0 + 64);
  *(v9 + 96) = *(v0 + 48);
  *(v9 + 112) = v10;
  *(v9 + 128) = *(v0 + 80);
  v11 = *(v0 + 32);
  *(v9 + 64) = *(v0 + 16);
  *(v9 + 80) = v11;
  *(v0 + 264) = sub_21504A204;
  *(v0 + 272) = v9;
  *(v0 + 232) = MEMORY[0x277D85DD0];
  *(v0 + 240) = 1107296256;
  *(v0 + 248) = sub_214F44018;
  *(v0 + 256) = &block_descriptor_40;
  v12 = _Block_copy((v0 + 232));
  v13 = v5;
  v14 = v4;

  sub_215019A34(v0 + 16, v0 + 160);

  [v14 performBlock_];
  _Block_release(v12);
  sub_214F302D4(v0 + 16, &qword_27CA43C80);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_215047E78()
{
  v1 = *(v0 + 472);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "call transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_215048044()
{
  v1 = *(v0 + 496);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "call transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_215048210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  v5[42] = a2;
  v5[43] = a3;
  v5[41] = a1;
  v5[46] = sub_2150A3340();
  v5[47] = swift_task_alloc();
  v6 = sub_2150A3400();
  v5[48] = v6;
  v5[49] = *(v6 - 8);
  v5[50] = swift_task_alloc();
  v7 = sub_2150A3750();
  v5[51] = v7;
  v5[52] = *(v7 - 8);
  v5[53] = swift_task_alloc();
  v5[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44520);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2150483A0, 0, 0);
}

uint64_t sub_2150483A0()
{
  sub_21504A068(*(v0 + 336));
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_215048450;
  v2 = *(v0 + 336);

  return sub_21501A134(0, v2);
}

uint64_t sub_215048450()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_215048820;
  }

  else
  {
    v2 = sub_215048564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215048564()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v1[2];
  v0[58] = v3;

  if (v3 && (v4 = v0[54], v5 = v0[52], v0[59] = MEMORY[0x277D84F90], v0[60] = 0, v0[61] = v1[4], v0[62] = v1[5], *(v2 + 16)))
  {
    v6 = v0[55];
    v7 = v0[53];
    v8 = v0[51];
    v9 = *(v4 + 48);
    (*(v5 + 16))(v6 + v9, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v8);
    (*(v5 + 32))(v7, v6 + v9, v8);

    v10 = swift_task_alloc();
    v0[63] = v10;
    *v10 = v0;
    v10[1] = sub_2150489F0;
    v11 = v0[53];

    return sub_21501A6E0(v11, 0, 0, 0);
  }

  else
  {

    v14 = v0[49];
    v13 = v0[50];
    v15 = v0[48];

    type metadata accessor for SummarizationManager();
    static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(MEMORY[0x277D84F90], 1, v13);

    sub_2150A3330();
    (*(v14 + 8))(v13, v15);
    sub_21504A1BC(&qword_27CA42330, MEMORY[0x277CC8B30]);
    v16 = sub_2150A4D20();
    v18 = v17;
    v0[66] = v17;
    v19 = swift_task_alloc();
    v0[67] = v19;
    *v19 = v0;
    v19[1] = sub_215048B38;

    return static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 2), v16, v18);
  }
}

uint64_t sub_215048820()
{
  v1 = *(v0 + 456);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "offline audio transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2150489F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {

    v4 = sub_215049384;
  }

  else
  {
    v4 = sub_215048C54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_215048B38()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_2150497A8;
  }

  else
  {

    v2 = sub_21504956C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_215048C54()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = [objc_opt_self() sharedConfiguration];
  v4 = sub_215038B68(v2, 0, v3);
  if (v1)
  {
    v6 = v0[52];
    v5 = v0[53];
    v7 = v0[51];

    (*(v6 + 8))(v5, v7);

    sub_215049A40();
    if (qword_27CA41798 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA444C8);
    v9 = v1;
    v10 = sub_2150A3F10();
    v11 = sub_2150A5560();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_214D51000, v10, v11, "offline audio transcription failed: %@", v12, 0xCu);
      sub_214F302D4(v13, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v13, -1, -1);
      MEMORY[0x216064AF0](v12, -1, -1);
    }

    else
    {
    }

    v26 = v0[1];

    v26();
    return;
  }

  v16 = v0[59];

  v17 = v4[2];
  v18 = *(v16 + 16);
  v19 = v18 + v17;
  if (__OFADD__(v18, v17))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0[59];
  if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v19 <= *(v21 + 24) >> 1)
  {
    if (v4[2])
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if (v18 <= v19)
  {
    v27 = v18 + v17;
  }

  else
  {
    v27 = v18;
  }

  v21 = sub_21505F724(isUniquelyReferenced_nonNull_native, v27, 1, v0[59]);
  if (!v4[2])
  {
LABEL_22:

    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_10:
  v22 = (*(v21 + 24) >> 1) - *(v21 + 16);
  type metadata accessor for TranscriptViewModelSegment(0);
  if (v22 < v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  swift_arrayInitWithCopy();

  if (v17)
  {
    v23 = *(v21 + 16);
    v24 = __OFADD__(v23, v17);
    v25 = v23 + v17;
    if (!v24)
    {
      *(v21 + 16) = v25;
      goto LABEL_23;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_23:
  v29 = v0[61];
  v28 = v0[62];
  v59 = v0[58];
  v30 = v0[52];
  v57 = v0[51];
  v58 = v0[53];
  v31 = v0[45];
  v32 = v0[41];
  v33 = v0[42];
  v56 = v0[60] + 1;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  *(v34 + 32) = v31;
  *(v34 + 40) = v4;
  *(v34 + 48) = v29;
  *(v34 + 56) = v28;
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 96) = 0u;
  *(v34 + 112) = 0u;
  *(v34 + 128) = 0;
  v0[33] = sub_21504A2E4;
  v0[34] = v34;
  v0[29] = MEMORY[0x277D85DD0];
  v0[30] = 1107296256;
  v0[31] = sub_214F44018;
  v0[32] = &block_descriptor_49;
  v35 = _Block_copy(v0 + 29);
  v36 = v33;
  v37 = v31;

  [v37 performBlock_];
  _Block_release(v35);
  (*(v30 + 8))(v58, v57);
  if (v56 == v59 || (v38 = v0[60] + 1, v0[59] = v21, v0[60] = v38, v39 = v0[44], v40 = v0[43] + 16 * v38, v0[61] = *(v40 + 32), v0[62] = *(v40 + 40), v41 = *(v39 + 16), v38 == v41))
  {

    v43 = v0[49];
    v42 = v0[50];
    v44 = v0[48];

    type metadata accessor for SummarizationManager();
    static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v21, 1, v42);

    sub_2150A3330();
    (*(v43 + 8))(v42, v44);
    sub_21504A1BC(&qword_27CA42330, MEMORY[0x277CC8B30]);
    v45 = sub_2150A4D20();
    v47 = v46;
    v0[66] = v46;
    v48 = swift_task_alloc();
    v0[67] = v48;
    *v48 = v0;
    v48[1] = sub_215048B38;

    static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 2), v45, v47);
    return;
  }

  if (v38 >= v41)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v49 = v0[55];
  v51 = v0[52];
  v50 = v0[53];
  v52 = v0[51];
  v53 = *(v0[54] + 48);
  (*(v51 + 16))(v49 + v53, v39 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v52);
  (*(v51 + 32))(v50, v49 + v53, v52);

  v54 = swift_task_alloc();
  v0[63] = v54;
  *v54 = v0;
  v54[1] = sub_2150489F0;
  v55 = v0[53];

  sub_21501A6E0(v55, 0, 0, 0);
}

uint64_t sub_215049384()
{
  (*(v0[52] + 8))(v0[53], v0[51]);
  v1 = v0[65];
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "offline audio transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21504956C()
{
  v1 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  *(v0 + 104) = v1;
  v2 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v2;
  *(v0 + 152) = *(v0 + 80);
  v3 = *(v0 + 96);
  if (v3 && (v4 = *(v0 + 360), v5 = *(v0 + 328), v6 = *(v0 + 336), v7 = *(v0 + 88), v8 = swift_allocObject(), *(v8 + 16) = v5, *(v8 + 24) = v6, *(v8 + 32) = v4, *(v8 + 40) = v7, *(v8 + 48) = v3, v9 = *(v0 + 48), *(v8 + 56) = *(v0 + 32), *(v8 + 72) = v9, *(v8 + 88) = *(v0 + 64), *(v8 + 104) = *(v0 + 80), v10 = swift_allocObject(), *(v10 + 16) = sub_215019A24, *(v10 + 24) = v8, *(v0 + 312) = sub_214F5D418, *(v0 + 320) = v10, *(v0 + 280) = MEMORY[0x277D85DD0], *(v0 + 288) = 1107296256, *(v0 + 296) = sub_214F34100, *(v0 + 304) = &block_descriptor_59, v11 = _Block_copy((v0 + 280)), v12 = v6, v13 = v4, sub_215019A34(v0 + 88, v0 + 160), , , [v13 performBlockAndWait_], _Block_release(v11), LOBYTE(v11) = swift_isEscapingClosureAtFileLocation(), , , result = sub_214F302D4(v0 + 88, &qword_27CA43C80), (v11 & 1) != 0))
  {
    __break(1u);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}