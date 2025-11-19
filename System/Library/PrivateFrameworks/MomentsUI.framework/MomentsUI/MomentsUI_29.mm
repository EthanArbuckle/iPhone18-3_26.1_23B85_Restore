uint64_t static CloudSubDB.hasZone(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 16))(a2, a3);
  LOBYTE(a1) = specialized Set.contains(_:)(a1, v4);

  return a1 & 1;
}

uint64_t static CloudSubDB.hasRecordType(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 48))(a3, a4);
  LOBYTE(a2) = specialized Set.contains(_:)(a1, a2, v6);

  return a2 & 1;
}

uint64_t CloudSubDB.hasRecordType(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return (specialized CloudSubDB.hasRecordType(_:))(a1, a2, a3, a4);
}

uint64_t static CloudSubDB.hasRecordClass(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a2, a3);
  v5 = result;
  v6 = result + 40;
  v7 = -*(result + 16);
  v8 = -1;
  while (1)
  {
    v9 = v7 + v8;
    if (v7 + v8 == -1)
    {
LABEL_5:

      return v9 != -1;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v10 = v6 + 16;
    result = static CloudRecord.isRecordClass(_:)(a1, *(v6 - 8));
    v6 = v10;
    if (result)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t CloudSubDB.hasRecordClass(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](CloudSubDB.hasRecordClass(_:), 0, 0);
}

uint64_t CloudSubDB.hasRecordClass(_:)()
{
  v1 = static CloudSubDB.hasRecordClass(_:)(v0[2], v0[3], v0[4]);
  v2 = v0[1];
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t protocol witness for CloudSubDB.hasZone(_:) in conformance CloudDevicesDB()
{
  v1 = *(v0 + 16);
  v2 = specialized static CloudSubDB.zones.getter();
  v3 = specialized Set.contains(_:)(v1, v2);

  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CE925E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSay10Foundation4UUIDVGSg_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGSgMd);
  v4 = lazy protocol witness table accessor for type [UUID]? and conformance <A> A?();
  result = MEMORY[0x21CE925E0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      specialized Set._Variant.insert(_:)(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  result = MEMORY[0x21CE925E0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void specialized static CloudSubDB.makeSurePathExists(url:create:folderOnly:className:)(uint64_t a1, int a2, char a3)
{
  v77 = a2;
  v81[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v70 - v6;
  v76 = type metadata accessor for CocoaError.Code();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v70 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - v16;
  v18 = a1;
  URL.deletingLastPathComponent()();
  v19 = URL.path.getter();
  v21 = v20;
  v79 = v9;
  v80 = *(v9 + 8);
  v80(v17, v8);
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = MEMORY[0x21CE91FC0](v19, v21);

  v81[0] = 0;
  LODWORD(v21) = [v23 createDirectoryIfNeededAtPath:v24 error:v81];

  if (!v21)
  {
    v44 = v81[0];
    _convertNSErrorToError(_:)();

    goto LABEL_9;
  }

  v25 = v81[0];
  if (a3)
  {
    return;
  }

  v26 = [v22 defaultManager];
  v27 = v18;
  v28 = URL.path.getter();
  v29 = MEMORY[0x21CE91FC0](v28);

  v30 = [v26 fileExistsAtPath_];

  if ((v30 & 1) == 0)
  {
    v45 = v79;
    if (v77)
    {
      if (one-time initialization token for database != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static CommonLogger.database);
      v47 = v71;
      (*(v45 + 16))(v71, v18, v8);
      v34 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v48))
      {
        v49 = swift_slowAlloc();
        v50 = v8;
        v51 = swift_slowAlloc();
        v81[0] = v51;
        *v49 = 136315138;
        lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v80(v47, v50);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v81);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_21607C000, v34, v48, "Path exists, file does not exist %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x21CE94770](v51, -1, -1);
        v43 = v49;
        goto LABEL_15;
      }

      v56 = v47;
      goto LABEL_22;
    }

    if (one-time initialization token for database != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static CommonLogger.database);
    v58 = v72;
    (*(v45 + 16))(v72, v18, v8);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v81[0] = v62;
      *v61 = 136315138;
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v58;
      v66 = v65;
      v80(v64, v8);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v66, v81);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_21607C000, v59, v60, "File does not exist %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x21CE94770](v62, -1, -1);
      MEMORY[0x21CE94770](v61, -1, -1);
    }

    else
    {

      v80(v58, v8);
    }

    v68 = v73;
    static CocoaError.fileNoSuchFile.getter();
    v69 = v75;
    (*(v45 + 56))(v75, 1, 1, v8);
    static CocoaError.error(_:userInfo:url:)();
    outlined destroy of UTType?(v69, &_s10Foundation3URLVSgMd);
    (*(v74 + 8))(v68, v76);
LABEL_9:
    swift_willThrow();
    return;
  }

  v31 = v79;
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static CommonLogger.database);
  v33 = v78;
  (*(v31 + 16))(v78, v27, v8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v81[0] = v37;
    *v36 = 136315138;
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v33;
    v41 = v40;
    v80(v39, v8);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v41, v81);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_21607C000, v34, v35, "Path exists, file exists %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x21CE94770](v37, -1, -1);
    v43 = v36;
LABEL_15:
    MEMORY[0x21CE94770](v43, -1, -1);

    return;
  }

  v56 = v33;
LABEL_22:
  v80(v56, v8);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI12DBAssetModelC5StyleO_SayAHGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x21CE925E0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t specialized CloudSubDB.hasZone(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](specialized CloudSubDB.hasZone(_:), 0, 0);
}

uint64_t specialized CloudSubDB.hasZone(_:)()
{
  v1 = v0[2];
  v2 = (*(v0[4] + 16))();
  v3 = specialized Set.contains(_:)(v1, v2);

  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t specialized static CloudSubDB.recordTypes.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v16;
    v6 = v3 + 40;
    do
    {
      v7 = (*(*v6 + 40))();
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v5);

  return v14;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11DBAssetDataC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for DBAssetData();
  v5 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  result = MEMORY[0x21CE925E0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CE925E0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI12DBSuggestionC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for DBSuggestion();
  v5 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  result = MEMORY[0x21CE925E0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo14CKRecordZoneIDC_SayAEGTt0g5Tf4g_nTm(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v11 = type metadata accessor for NSAttributedString(0, j);
    v12 = lazy protocol witness table accessor for type CKRecordZoneID and conformance NSObject(a4, j);
    result = MEMORY[0x21CE925E0](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x21CE93180](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = __CocoaSet.count.getter();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized CloudSubDB.hasRecordType(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](specialized CloudSubDB.hasRecordType(_:), 0, 0);
}

uint64_t specialized CloudSubDB.hasRecordType(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = (*(v0[5] + 48))();
  v4 = specialized Set.contains(_:)(v2, v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t dispatch thunk of CloudSubDB.fetchZones()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.sendZones()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.hasZone(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudSubDB.initialized()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.cancelSync()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.refresh(force:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudSubDB.persistLocalData()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 112) + **(a2 + 112));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.deleteLocalData()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.willFetchChanges()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.willCheckpointChanges()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.didFetchChanges()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 144) + **(a2 + 144));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.hasCKRecord(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudSubDB.dumpCKRecordIDsByZone()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 160) + **(a2 + 160));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudSubDB.lookupCKRecord(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudSubDB.modifyOrCreateCKRecord(_:force:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 176) + **(a4 + 176));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudSubDB.zoneNotFound(_:_:purged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 184) + **(a5 + 184));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CloudSubDB.clearCKRecord(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudSubDB.deleteCKRecord(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 200) + **(a5 + 200));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CloudSubDB.deleteCKRecordZone(_:purged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 208) + **(a4 + 208));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudSubDB.modifyCKRecordZone(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 216) + **(a3 + 216));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudSubDB.dumpRecord(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 224) + **(a3 + 224));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of CloudSubDB.dumpRecord(_:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudSubDB.dumpRecord(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t lazy protocol witness table accessor for type CKRecordZoneID and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSAttributedString(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudDevice.Capability and conformance CloudDevice.Capability()
{
  result = lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability;
  if (!lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability;
  if (!lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability;
  if (!lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability;
  if (!lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability;
  if (!lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UUID]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [UUID]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [UUID]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGSgMd);
    lazy protocol witness table accessor for type [UUID] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UUID]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UUID] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UUID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UUID] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd);
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UUID] and conformance <A> [A]);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static EvergreenCollectionViewCell.registration(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x108);

  return v1(v2);
}

uint64_t static EvergreenCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static EvergreenCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in EvergreenCollectionViewCell.viewModel.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = ((*MEMORY[0x277D85000] & *Strong) + 256) & 0xFFFFFFFFFFFFLL | 0x72C2000000000000;
    v0[7] = *((*MEMORY[0x277D85000] & *Strong) + 0x100);
    v0[8] = v2;
    v0[9] = type metadata accessor for MainActor();
    v0[10] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in EvergreenCollectionViewCell.viewModel.didset, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *(v0 + 56);

  *(v0 + 88) = v1(v2);

  return MEMORY[0x2822009F8](closure #1 in EvergreenCollectionViewCell.viewModel.didset, 0, 0);
}

{
  v16 = v0;
  v1 = v0[11];
  if (!v1 || (v2 = (*(*v1 + 304))(), , !v2))
  {
    v12 = v0[6];
    goto LABEL_13;
  }

  if (v2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_18:
    v12 = v0[6];

    goto LABEL_13;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CE93180](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v5, v3, v4);
    }

    v6 = *(v2 + 32);
  }

  v7 = v6;
  v0[12] = v6;

  v15 = 3;
  v8 = Asset.assetViewModelFor(style:)(&v15);
  v0[13] = v8;
  if (v8)
  {
    v0[14] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v5 = closure #1 in EvergreenCollectionViewCell.viewModel.didset;
    v3 = v9;
    v4 = v11;

    return MEMORY[0x2822009F8](v5, v3, v4);
  }

  v12 = v0[6];

LABEL_13:
  v13 = v0[1];

  return v13();
}

{
  v1 = *(v0 + 48);

  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetView);
  *(v0 + 120) = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](closure #1 in EvergreenCollectionViewCell.viewModel.didset, 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  if (v1)
  {
    v3 = *((*MEMORY[0x277D85000] & *v1) + 0xE0);
    v8 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = closure #1 in EvergreenCollectionViewCell.viewModel.didset;

    return v8(v2);
  }

  else
  {
    v6 = *(v0 + 48);

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](closure #1 in EvergreenCollectionViewCell.viewModel.didset, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t EvergreenCollectionViewCell.viewModel.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  swift_weakAssign();
  if (!swift_weakLoadStrong())
  {
  }

  (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in EvergreenCollectionViewCell.viewModel.didset, v6);

  return outlined destroy of TaskPriority?(v3);
}

uint64_t partial apply for closure #1 in EvergreenCollectionViewCell.viewModel.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in EvergreenCollectionViewCell.viewModel.didset(a1, v4, v5, v6);
}

void (*EvergreenCollectionViewCell.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_viewModel;
  v5[5] = v7;
  v5[6] = v8;
  swift_beginAccess();
  v5[3] = swift_weakLoadStrong();
  return EvergreenCollectionViewCell.viewModel.modify;
}

void EvergreenCollectionViewCell.viewModel.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {
    v4 = *(v3 + 40);

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_weakLoadStrong())
    {
      v5 = *(v3 + 40);
      (*((*MEMORY[0x277D85000] & **(v3 + 32)) + 0x128))();
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v7;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v5, &closure #1 in EvergreenCollectionViewCell.viewModel.didsetpartial apply, v8);

      outlined destroy of TaskPriority?(v5);
    }

    v4 = *(v3 + 40);
  }

  free(v4);

  free(v3);
}

uint64_t closure #1 in EvergreenCollectionViewCell.viewModel.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in EvergreenCollectionViewCell.viewModel.didset(a1, v4, v5, v6);
}

id EvergreenCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EvergreenCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall EvergreenCollectionViewCell.configureViews()()
{
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetView];
  if (v1)
  {
    v2 = v1;
    [v0 addSubview_];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = v0;
    UIView.fillSuper(horizontalMargin:verticalMargin:)(8.0, 3.0);

    v4 = [v2 layer];

    [v4 setCornerRadius_];
    v5 = [v2 heightAnchor];

    v6 = [v2 widthAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 multiplier:0.5];

    v8 = *&v3[OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetGridViewHeightAnchor];
    *&v3[OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetGridViewHeightAnchor] = v7;

    v9 = [v2 heightAnchor];
    v10 = [v2 widthAnchor];

    v11 = [v9 constraintEqualToAnchor:v10 multiplier:1.0];
    v12 = *&v3[OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetSquareGridViewHeightAnchor];
    *&v3[OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetSquareGridViewHeightAnchor] = v11;
  }
}

Swift::Void __swiftcall EvergreenCollectionViewCell.updateGridHeight()()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x100))();
  if (v2)
  {
    v3 = (*(*v2 + 368))(v2);
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21658E210;
    v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetGridViewHeightAnchor);
    *(v5 + 32) = v6;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v7 = v6;
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v3)
    {
      [v4 activateConstraints_];

      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21658E210;
      v10 = *(v0 + OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetSquareGridViewHeightAnchor);
      *(v9 + 32) = v10;
      v11 = v10;
      v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 deactivateConstraints_];
    }

    else
    {
      [v4 deactivateConstraints_];

      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_21658E210;
      v22 = *(v0 + OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetSquareGridViewHeightAnchor);
      *(v21 + 32) = v22;
      v23 = v22;
      v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 activateConstraints_];
    }
  }

  else
  {
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21658E210;
    v15 = *(v1 + OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetGridViewHeightAnchor);
    *(v14 + 32) = v15;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v16 = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints_];

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21658E210;
    v19 = *(v1 + OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetSquareGridViewHeightAnchor);
    *(v18 + 32) = v19;
    v20 = v19;
    v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 deactivateConstraints_];
  }
}

uint64_t EvergreenCollectionViewCell.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id EvergreenCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EvergreenCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized EvergreenCollectionViewCell.init(frame:)()
{
  v1 = v0;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableReflectionViewModel.empty;
  v3 = objc_allocWithZone(type metadata accessor for ReflectionView());
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex] = 0;
  v4 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  v5 = objc_allocWithZone(MEMORY[0x277D75220]);
  v6 = v2;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  *&v3[v7] = closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel();
  v8 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
  *&v3[v8] = closure #1 in variable initialization expression of ReflectionView.categoryLabel();
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = *MEMORY[0x277D76560];
    v11 = one-time initialization token for accessibilityString;
    v12 = v6;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = static ReflectionView.Constants.accessibilityString;
    v14 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v15 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v16 = v12;
    *&v3[v14] = [v15 init];
    swift_unknownObjectWeakInit();
    v17 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 3;
    v44.receiver = v3;
    v44.super_class = type metadata accessor for AssetView();
    v19 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0xE8);
    v21 = v19;
    v20();
    AssetView.setFallBackView()();
    [v21 setIsAccessibilityElement_];
    v22 = [v21 accessibilityTraits];
    if ((v10 & ~v22) != 0)
    {
      v23 = v10;
    }

    else
    {
      v23 = 0;
    }

    [v21 setAccessibilityTraits_];
    v24 = MEMORY[0x21CE91FC0](v13, *(&v13 + 1));
    [v21 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21658CA50;
    v26 = type metadata accessor for UITraitUserInterfaceStyle();
    v27 = MEMORY[0x277D74BF0];
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v28 = v21;
    MEMORY[0x21CE92C30](v25, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v28 handleTraitChange];
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];

    [v28 setClipsToBounds_];
    v29 = *&v28[OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel];
    v30 = v28;
    v31 = v29;
    v32 = [v31 text];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = String.uppercased()();

      v35 = MEMORY[0x21CE91FC0](v34._countAndFlagsBits, v34._object);
      v27 = MEMORY[0x277D74BF0];
    }

    else
    {
      v35 = 0;
    }

    v36 = OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetView;
    [v31 setText_];

    ReflectionView.setupShuffleButton()();
    ReflectionView.setupText()();
    ReflectionView.addConstraints()();

    *&v1[v36] = v19;
    v37 = OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetGridViewHeightAnchor;
    *&v1[v37] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
    v38 = OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetSquareGridViewHeightAnchor;
    *&v1[v38] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
    swift_weakInit();
    v43.receiver = v1;
    v43.super_class = type metadata accessor for EvergreenCollectionViewCell();
    v39 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v40 = *((*MEMORY[0x277D85000] & *v39) + 0x118);
    v41 = v39;
    v40();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_21658CA50;
    *(v42 + 32) = v26;
    *(v42 + 40) = v27;
    MEMORY[0x21CE92C30]();

    swift_unknownObjectRelease();

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized EvergreenCollectionViewCell.init(coder:)()
{
  if (one-time initialization token for empty != -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v1 = static MutableReflectionViewModel.empty;
    v2 = objc_allocWithZone(type metadata accessor for ReflectionView());
    *&v2[OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts] = MEMORY[0x277D84F90];
    *&v2[OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex] = 0;
    v3 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
    v4 = objc_allocWithZone(MEMORY[0x277D75220]);
    v5 = v1;
    *&v2[v3] = [v4 init];
    v6 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
    *&v2[v6] = closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel();
    v7 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
    *&v2[v7] = closure #1 in variable initialization expression of ReflectionView.categoryLabel();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      break;
    }

    __break(1u);
LABEL_4:
    swift_once();
  }

  v8 = v2;
  v36 = v0;
  v9 = *MEMORY[0x277D76560];
  v10 = one-time initialization token for accessibilityString;
  v11 = v5;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static ReflectionView.Constants.accessibilityString;
  v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v14 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v15 = v11;
  *&v8[v13] = [v14 init];
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 3;
  v37.receiver = v8;
  v37.super_class = type metadata accessor for AssetView();
  v18 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = *((*MEMORY[0x277D85000] & *v18) + 0xE8);
  v20 = v18;
  v19();
  AssetView.setFallBackView()();
  [v20 setIsAccessibilityElement_];
  v21 = [v20 accessibilityTraits];
  if ((v9 & ~v21) != 0)
  {
    v22 = v9;
  }

  else
  {
    v22 = 0;
  }

  [v20 setAccessibilityTraits_];
  v23 = MEMORY[0x21CE91FC0](v12, *(&v12 + 1));
  [v20 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21658CA50;
  v25 = type metadata accessor for UITraitUserInterfaceStyle();
  v26 = MEMORY[0x277D74BF0];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = v20;
  MEMORY[0x21CE92C30](v24, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v27 handleTraitChange];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  [v27 setClipsToBounds_];
  v28 = *&v27[OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel];
  v29 = v27;
  v30 = v28;
  v31 = [v30 text];
  if (v31)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = String.uppercased()();

    v31 = MEMORY[0x21CE91FC0](v32._countAndFlagsBits, v32._object);
  }

  v33 = OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetView;
  [v30 setText_];

  ReflectionView.setupShuffleButton()();
  ReflectionView.setupText()();
  ReflectionView.addConstraints()();

  *(v36 + v33) = v18;
  v34 = OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetGridViewHeightAnchor;
  *(v36 + v34) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v35 = OBJC_IVAR____TtC9MomentsUI27EvergreenCollectionViewCell_assetSquareGridViewHeightAnchor;
  *(v36 + v35) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ProtectedAppsManager.authenticate()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_beginAccess();

  specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(v1, partial apply for closure #1 in ProtectedAppsManager.authenticate(), v0);
}

Swift::Void __swiftcall ProtectedAppsManager.subscribeToChanges(apps:)(Swift::OpaquePointer apps)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0xA8))(MEMORY[0x277D84FA0]);
  v3 = *(apps._rawValue + 2);
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
    v5 = (apps._rawValue + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = v4(v22);
      specialized Set._Variant.insert(_:)(&v23, v6, v7);

      v8(v22, 0);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static CommonLogger.viewModel);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = MEMORY[0x277D85000];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136315138;
    (*((*v14 & *v10) + 0xA0))(v16);
    lazy protocol witness table accessor for type ProtectedAppSource and conformance ProtectedAppSource();
    v17 = Set.debugDescription.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v22);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_21607C000, v11, v12, "[subscribeToChanges] monitoring status for sources:%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  if (((*((*v14 & *v10) + 0x88))() & 1) == 0)
  {
    v21 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];
    swift_unknownObjectRelease();
    (*((*v14 & *v10) + 0x90))(1);
    swift_unknownObjectRelease();
  }
}

id ProtectedAppsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ProtectedAppSource.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id ProtectedAppSource.protectionSubject.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = MEMORY[0x21CE91FC0](a1, a2);
  v6 = [v4 applicationWithBundleIdentifier_];

  return v6;
}

uint64_t static ProtectedAppSource.allFixedApps.setter(void *a1)
{
  swift_beginAccess();
  static ProtectedAppSource.allFixedApps = a1;
}

uint64_t key path setter for static ProtectedAppSource.allFixedApps : ProtectedAppSource.Type(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  static ProtectedAppSource.allFixedApps = v1;
}

uint64_t static ProtectedAppSource.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int ProtectedAppSource.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ProtectedAppSource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProtectedAppSource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ProtectedAppSource(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t ProtectedAppSource.init(fixedAppSource:)(unsigned __int8 a1)
{
  v1 = 0x6C7070612E6D6F63;
  if (a1 <= 4u)
  {
    v5 = 0xD000000000000013;
    if (a1 == 3)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v1 = v5;
    }

    v6 = 0xD000000000000011;
    if (!a1)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0xD000000000000012;
    v3 = 0xD000000000000010;
    if (a1 != 6)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ProtectedFixedAppSource(MomentsUI::ProtectedFixedAppSource *a1, MomentsUI::ProtectedFixedAppSource *a2)
{
  v2 = *a2;
  v3 = ProtectedAppSource.init(fixedAppSource:)(*a1);
  v4 = ProtectedAppSource.init(fixedAppSource:)(v2);
  if (v3.bundleIdentifier._countAndFlagsBits == v4.bundleIdentifier._countAndFlagsBits && v3.bundleIdentifier._object == v4.bundleIdentifier._object)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ProtectedFixedAppSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ProtectedAppSource.init(fixedAppSource:)(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProtectedFixedAppSource()
{
  ProtectedAppSource.init(fixedAppSource:)(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProtectedFixedAppSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ProtectedAppSource.init(fixedAppSource:)(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ProtectedFixedAppSource@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ProtectedFixedAppSource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ProtectedFixedAppSource@<X0>(MomentsUI::ProtectedAppSource *a1@<X8>)
{
  v4 = ProtectedAppSource.init(fixedAppSource:)(*v1);
  result = v4.bundleIdentifier._countAndFlagsBits;
  *a1 = v4;
  return result;
}

Swift::Int ProtectedAppChallengeResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

id one-time initialization function for accessGuard()
{
  result = [objc_opt_self() sharedGuard];
  static ProtectedAppsManager.accessGuard = result;
  return result;
}

uint64_t *ProtectedAppsManager.accessGuard.unsafeMutableAddressor()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  return &static ProtectedAppsManager.accessGuard;
}

id static ProtectedAppsManager.accessGuard.getter()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  v1 = static ProtectedAppsManager.accessGuard;

  return v1;
}

uint64_t ProtectedAppsManager.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_delegate;
  swift_beginAccess();
  return outlined init with copy of ProtectedAppsManagerDelegate?(v1 + v3, a1);
}

uint64_t ProtectedAppsManager.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_delegate;
  swift_beginAccess();
  outlined assign with take of ProtectedAppsManagerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t ProtectedAppsManager.monitoring.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProtectedAppsManager.monitoring.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoring;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ProtectedAppsManager.monitoringSubjects.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoringSubjects;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for ProtectedAppsManager.shouldDismissOverlayPostAuthentication : ProtectedAppsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t ProtectedAppsManager.shouldDismissOverlayPostAuthentication.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ProtectedAppsManager.shouldDismissOverlayPostAuthentication.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*ProtectedAppsManager.shouldDismissOverlayPostAuthentication.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.colors.modify;
}

uint64_t key path setter for ProtectedAppsManager.$shouldDismissOverlayPostAuthentication : ProtectedAppsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v6);
}

uint64_t ProtectedAppsManager.$shouldDismissOverlayPostAuthentication.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ProtectedAppsManager.$shouldDismissOverlayPostAuthentication.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ProtectedAppsManager.$shouldDismissOverlayPostAuthentication.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager__shouldDismissOverlayPostAuthentication;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$pendingDBChanges.modify;
}

id ProtectedAppsManager.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = &v0[OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_delegate];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v0[OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoring] = 0;
  *&v0[OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoringSubjects] = MEMORY[0x277D84FA0];
  v6 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager__shouldDismissOverlayPostAuthentication;
  v11 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v6], v4, v1);
  v7 = type metadata accessor for ProtectedAppsManager();
  v10.receiver = v0;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ProtectedAppsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ProtectedAppsManager.shouldDropContentFrom(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = MEMORY[0x21CE91FC0](a1, a2);
  v6 = [v4 applicationWithBundleIdentifier_];

  v7 = [v6 isHidden];
  return v7;
}

uint64_t closure #1 in static ProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4((*(a3 + 16) & 1) == 0);
    }
  }

  return result;
}

uint64_t closure #2 in static ProtectedAppsManager.requiresChallenge(appSources:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if ([a1 BOOLValue])
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static CommonLogger.viewModel);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v30);
      v15 = "protected apps requires authentication, appSource=%s";
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 0;
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static CommonLogger.viewModel);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v30);
      v15 = "protected apps requires no authentication, appSource=%s";
    }

    _os_log_impl(&dword_21607C000, v11, v12, v15, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);
LABEL_17:

    return a6();
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static CommonLogger.viewModel);

  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v29 = a6;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    v30[1] = a4;
    *v21 = 134218242;
    v30[2] = a5;
    lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 4) = StringProtocol.hash.getter();

    *(v21 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E75;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_21607C000, v19, v20, "protected apps unlock, appSource=%ld, error=%s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CE94770](v22, -1, -1);
    MEMORY[0x21CE94770](v21, -1, -1);

    a6 = v29;
  }

  else
  {
  }

  swift_beginAccess();
  *(a3 + 16) = 1;
  return a6();
}

uint64_t closure #1 in static ProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4(*(a3 + 16));
    }
  }

  return result;
}

uint64_t closure #2 in static ProtectedAppsManager.requestAccess(appSources:completion:)(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static CommonLogger.viewModel);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v28);
      *(v12 + 12) = 1024;
      *(v12 + 14) = 1;
      _os_log_impl(&dword_21607C000, v10, v11, "protected apps unlock, appSource=%s, success=%{BOOL}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static CommonLogger.viewModel);

    v17 = a2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v27 = a6;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v28);
      *(v20 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v22 = Error.localizedDescription.getter();
        v24 = v23;
      }

      else
      {
        v24 = 0xE700000000000000;
        v22 = 0x6E776F6E6B6E75;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v28);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_21607C000, v18, v19, "protected apps unlock, appSource=%s, error=%s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);

      a6 = v27;
    }

    else
    {
    }

    swift_beginAccess();
    *(a5 + 16) = 1;
  }

  return a6();
}

void closure #1 in ProtectedAppsManager.authenticate()(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xC0))(0);
  }

  else
  {
    swift_beginAccess();
    v1 = swift_unknownObjectWeakLoadStrong();
    if (!v1)
    {
      return;
    }

    v2 = v1;
    (*((*MEMORY[0x277D85000] & *v1) + 0xC0))(1);
  }
}

uint64_t specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a1;
  v8[4] = v7;
  v8[5] = a2;
  v8[6] = a3;
  v9 = *(a1 + 16);
  if (v9)
  {
    v20 = objc_opt_self();

    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = one-time initialization token for accessGuard;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = static ProtectedAppsManager.accessGuard;
      v15 = MEMORY[0x21CE91FC0](v11, v12);
      v16 = [v20 applicationWithBundleIdentifier_];

      v17 = swift_allocObject();
      v17[2] = v11;
      v17[3] = v12;
      v17[4] = v7;
      v17[5] = partial apply for closure #1 in static ProtectedAppsManager.requestAccess(appSources:completion:);
      v17[6] = v8;
      aBlock[4] = partial apply for closure #2 in static ProtectedAppsManager.requestAccess(appSources:completion:);
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_55_0;
      v18 = _Block_copy(aBlock);

      [v14 authenticateForSubject:v16 completion:v18];
      _Block_release(v18);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

uint64_t specialized static ProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a1;
  v8[4] = v7;
  v8[5] = a2;
  v8[6] = a3;
  v9 = *(a1 + 16);
  if (v9)
  {
    v20 = objc_opt_self();

    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = one-time initialization token for accessGuard;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = static ProtectedAppsManager.accessGuard;
      v15 = MEMORY[0x21CE91FC0](v11, v12);
      v16 = [v20 applicationWithBundleIdentifier_];

      v17 = swift_allocObject();
      v17[2] = v7;
      v17[3] = v11;
      v17[4] = v12;
      v17[5] = partial apply for closure #1 in static ProtectedAppsManager.requiresChallenge(appSources:completion:);
      v17[6] = v8;
      aBlock[4] = partial apply for closure #2 in static ProtectedAppsManager.requiresChallenge(appSources:completion:);
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NotificationApprovedApplicationList?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_29;
      v18 = _Block_copy(aBlock);

      [v14 getIsChallengeCurrentlyRequiredForSubject:v16 completion:v18];
      _Block_release(v18);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type ProtectedAppSource and conformance ProtectedAppSource()
{
  result = lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource;
  if (!lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource;
  if (!lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource);
  }

  return result;
}

unint64_t specialized ProtectedFixedAppSource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ProtectedFixedAppSource.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of ProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ProtectedAppsManager()
{
  result = type metadata singleton initialization cache for ProtectedAppsManager;
  if (!type metadata singleton initialization cache for ProtectedAppsManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized ProtectedAppsManager.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_40:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v33 = (v1 + 32);
  v34 = v1 & 0xFFFFFFFFFFFFFF8;
  v36 = v2;
  v37 = v1;
  v35 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v4)
    {
      v6 = MEMORY[0x21CE93180](v3, v1);
    }

    else
    {
      if (v3 >= *(v34 + 16))
      {
        goto LABEL_39;
      }

      v6 = v33[v3];
    }

    v5 = v6;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_38;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      break;
    }

LABEL_5:

    if (v3 == v2)
    {
      return;
    }
  }

  v39 = v5;
  v1 = v38;
  v8 = (*((*MEMORY[0x277D85000] & *v38) + 0xA0))();
  v9 = 0;
  v11 = v8 + 56;
  v10 = *(v8 + 56);
  v41 = v8;
  v12 = 1 << *(v8 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  if ((v13 & v10) == 0)
  {
LABEL_17:
    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        v5 = v39;
        v2 = v36;
        v1 = v37;
        v4 = v35;
        goto LABEL_5;
      }

      v14 = *(v11 + 8 * v16);
      ++v9;
      if (v14)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  while (1)
  {
    v16 = v9;
LABEL_20:
    v17 = (*(v41 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
    v19 = *v17;
    v18 = v17[1];

    v20 = [v40 bundleIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v22;

    if (v21 == v19 && v1 == v18)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_28;
    }

    v14 &= v14 - 1;

    v9 = v16;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static CommonLogger.viewModel);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v28 = 136315138;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v45);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_21607C000, v26, v27, "[subscribeToChanges] App status changed, validating conditions, appBundleId=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  else
  {
  }

  (*((*MEMORY[0x277D85000] & *v38) + 0x70))(v45);
  if (v45[3])
  {
    outlined init with copy of DBObject(v45, v42);
    outlined destroy of ProtectedAppsManagerDelegate?(v45);
    v31 = v43;
    v32 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v32 + 8))(v31, v32);

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {

    outlined destroy of ProtectedAppsManagerDelegate?(v45);
  }
}

unint64_t lazy protocol witness table accessor for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource()
{
  result = lazy protocol witness table cache variable for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource;
  if (!lazy protocol witness table cache variable for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult()
{
  result = lazy protocol witness table cache variable for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult;
  if (!lazy protocol witness table cache variable for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult()
{
  result = lazy protocol witness table cache variable for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult;
  if (!lazy protocol witness table cache variable for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult);
  }

  return result;
}

void type metadata completion function for ProtectedAppsManager()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined destroy of ProtectedAppsManagerDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_40Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static DBLivePhotoModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
  v5 = (a2 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v6 = v5[1];
  result = (v4 | v6) == 0;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*v3 == *v5 && v4 == v6)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t DBLivePhotoModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  swift_allocObject();
  v23 = specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v23;
}

uint64_t DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  v17 = specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v17;
}

uint64_t DBLivePhotoModel.__allocating_init(from:)(uint64_t a1)
{
  swift_allocObject();
  outlined init with copy of DBObject(a1, v4);
  v2 = DBPhotosFamilyModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBLivePhotoModel.init(from:)(uint64_t a1)
{
  outlined init with copy of DBObject(a1, v4);
  v2 = DBPhotosFamilyModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBLivePhotoModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBLivePhotoModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  v17 = v16;
  v165 = a8;
  v149 = a7;
  v155 = a6;
  v153 = a5;
  *&v167 = a3;
  v150 = v17;
  *&v166 = *v17;
  v140 = type metadata accessor for Date();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v163 = &v130 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v24 - 8);
  v162 = &v130 - v25;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v142 = *(v161 - 8);
  v26 = MEMORY[0x28223BE20](v161);
  v134 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v133 = &v130 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v130 - v30;
  v32 = type metadata accessor for DateInterval();
  v159 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v147 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v158 = &v130 - v35;
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v154 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v157 = &v130 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v144 = &v130 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v130 - v45;
  MEMORY[0x28223BE20](v44);
  LODWORD(v160) = *a16;
  v148 = v37;
  v47 = *(v37 + 16);
  v145 = &v130 - v48;
  v137 = a1;
  v47();
  v146 = v46;
  v136 = a2;
  v164 = v36;
  v152 = (v37 + 16);
  v151 = v47;
  (v47)(v46, a2, v36);
  v49 = *(a4 + 16);
  v156 = v32;
  v143 = MEMORY[0x277D84F90];
  if (v49)
  {
    v169 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v50 = v169;
    v51 = *(v169 + 16);
    v52 = 32;
    v53 = v165;
    do
    {
      v54 = *(a4 + v52);
      v169 = v50;
      v55 = *(v50 + 24);
      if (v51 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v51 + 1, 1);
        v50 = v169;
      }

      *(v50 + 16) = v51 + 1;
      *(v50 + v51 + 32) = v54;
      ++v52;
      ++v51;
      --v49;
    }

    while (v49);

    v32 = v156;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
    v53 = v165;
  }

  v56 = v153;
  if (!v155)
  {
    v56 = 0;
  }

  v153 = v56;
  v57 = 0xE000000000000000;
  if (v155)
  {
    v57 = v155;
  }

  v155 = v57;
  outlined init with copy of DateInterval?(v149, v31);
  v58 = v159;
  v59 = *(v159 + 48);
  if (v59(v31, 1, v32) == 1)
  {
    DateInterval.init()();
    if (v59(v31, 1, v32) != 1)
    {
      outlined destroy of UTType?(v31, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    (*(v58 + 32))(v158, v31, v32);
  }

  v141 = a15;
  if (v53 && (, v60 = PairedPhotoVideo.assetData.getter(), , v60))
  {
    v165 = v60;
  }

  else
  {
    v165 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v61 = v150;
  v62 = v150 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect;
  v63 = *(a9 + 16);
  *v62 = *a9;
  *(v62 + 1) = v63;
  v62[32] = *(a9 + 32);
  v64 = v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect;
  v65 = *(a10 + 16);
  *v64 = *a10;
  *(v64 + 16) = v65;
  *(v64 + 32) = *(a10 + 32);
  v66 = v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect;
  *(v66 + 32) = *(a11 + 32);
  v67 = *(a11 + 16);
  *v66 = *a11;
  *(v66 + 16) = v67;
  v68 = (v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
  *v68 = a12;
  v68[1] = a13;
  v69 = (v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v70 = v141;
  *v69 = a14;
  v69[1] = v70;
  v71 = v144;
  v72 = v164;
  v73 = v151;
  v151(v144, v145, v164);
  v73(v157, v146, v72);
  v132 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v166, &v170);
  LODWORD(v141) = v170;
  v74 = *(v159 + 16);
  v75 = v147;
  v76 = v156;
  v74(v147, v158, v156);
  *(v61 + 16) = 0;
  *&v166 = v61 + 16;
  v131 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v73((v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v71, v72);
  v130 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v73((v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v157, v72);
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v141;
  v77 = v167;
  v152 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v167;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v50;
  v78 = (v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v79 = v155;
  *v78 = v153;
  v78[1] = v79;
  v74((v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v75, v76);
  v80 = v77;
  v81 = v165;
  v82 = specialized Dictionary.compactMapValues<A>(_:)(v165);
  v135 = 0;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v82;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v83 = v82;
  swift_beginAccess();
  *(v61 + 16) = v160;
  v84 = *(v81 + 64);
  *&v167 = v81 + 64;
  v85 = 1 << *(v81 + 32);
  v86 = -1;
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  v87 = v86 & v84;
  v88 = (v85 + 63) >> 6;
  v89 = (v148 + 48);
  v152 = (v148 + 32);
  v90 = (v142 + 56);
  v160 = (v142 + 48);
  v141 = v83;

  v91 = 0;
  v92 = v163;
  v93 = v81;
  v153 = v89;
  v151 = v88;
  v155 = v90;
  v165 = v81;
  while (v87)
  {
    v94 = v91;
LABEL_28:
    v95 = __clz(__rbit64(v87)) | (v94 << 6);
    v96 = *(*(v93 + 56) + 8 * v95);
    v97 = *(*v96 + 192);
    *&v166 = *(*(v93 + 48) + 16 * v95 + 8);

    v97(v98);
    v99 = v164;
    if ((*v89)(v92, 1, v164) == 1)
    {
      outlined destroy of UTType?(v92, &_s10Foundation4UUIDVSgMd);
      v100 = v162;
      v61 = v161;
      (*v90)(v162, 1, 1, v161);
    }

    else
    {
      v101 = *v152;
      (*v152)(v154, v163, v99);
      v61 = v161;
      v102 = *(v161 + 48);
      v100 = v162;
      v101();
      v90 = v155;
      v92 = v163;
      *(v100 + v102) = v96;
      v88 = v151;
      v89 = v153;
      (*v90)(v100, 0, 1, v61);
    }

    v87 &= v87 - 1;

    if ((*v160)(v100, 1, v61) == 1)
    {
      outlined destroy of UTType?(v100, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      v91 = v94;
      v93 = v165;
    }

    else
    {
      v103 = v133;
      outlined init with take of (UUID, DBAssetData)(v100, v133);
      outlined init with take of (UUID, DBAssetData)(v103, v134);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143[2] + 1, 1, v143);
      }

      v105 = v143[2];
      v104 = v143[3];
      if (v105 >= v104 >> 1)
      {
        v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1, v143);
      }

      v106 = v143;
      v143[2] = v105 + 1;
      outlined init with take of (UUID, DBAssetData)(v134, v106 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v105);
      v91 = v94;
      v90 = v155;
      v93 = v165;
    }
  }

  while (1)
  {
    v94 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);

      v128 = *(v148 + 8);
      v129 = v164;
      v128(v61 + v131, v164);
      v128(v61 + v130, v129);

      (*(v159 + 8))(v61 + v92, v156);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_44;
    }

    if (v94 >= v88)
    {
      break;
    }

    v87 = *(v167 + 8 * v94);
    ++v91;
    if (v87)
    {
      goto LABEL_28;
    }
  }

  if (v143[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v107 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v107 = MEMORY[0x277D84F98];
  }

  v108 = v150;
  v109 = v156;
  v168 = v107;

  v111 = v135;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v110, 1, &v168);
  if (!v111)
  {

    v112 = v168;
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    v114 = (v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v114 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v114[1] = v113;
    v115 = swift_allocObject();
    *(v115 + 16) = v112;
    v116 = (v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v116 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v116[1] = v115;
    v117 = (v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v117 = closure #3 in DBAssetModel.init(from:);
    v117[1] = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v141;
    swift_beginAccess();
    v167 = *v114;
    swift_beginAccess();
    v166 = *v116;
    swift_beginAccess();
    v119 = *v117;
    v120 = v117[1];
    v121 = v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v121 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v121 + 8) = v118;
    v122 = v166;
    *(v121 + 16) = v167;
    *(v121 + 32) = v122;
    *(v121 + 48) = v119;
    *(v121 + 56) = v120;

    v123 = v138;
    static Date.now.getter();
    outlined destroy of UTType?(v149, &_s10Foundation12DateIntervalVSgMd);
    v124 = *(v148 + 8);
    v125 = v164;
    v124(v136, v164);
    v124(v137, v125);
    v126 = *(v159 + 8);
    v126(v147, v109);
    v124(v157, v125);
    v124(v144, v125);
    v126(v158, v109);
    v124(v146, v125);
    v124(v145, v125);
    (*(v139 + 32))(v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v123, v140);
    return v108;
  }

LABEL_44:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DBLivePhotoModel()
{
  result = type metadata singleton initialization cache for DBLivePhotoModel;
  if (!type metadata singleton initialization cache for DBLivePhotoModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of DBLivePhotoModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a9 + 32);
  v15 = *(a10 + 32);
  v16 = *(a11 + 32);
  v17 = *(v13 + 448);
  v18 = *(a9 + 16);
  v26[0] = *a9;
  v26[1] = v18;
  v27 = v14;
  v19 = *(a10 + 16);
  v24[0] = *a10;
  v24[1] = v19;
  v25 = v15;
  v20 = *(a11 + 16);
  v22[0] = *a11;
  v22[1] = v20;
  v23 = v16;
  return v17(a1, a2, a3, a4, a5, a6, a7, a8, v26, v24, v22, a12, a13);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS9MomentsUI11CloudDeviceV_G_So10CKRecordIDCs5NeverOTg503_s9e4UI14g16DevicesDBC21dumpi35IDsByZoneSDySSSaySo0G2IDCGGyFAfA0C6H6VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for CloudDevice();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v33 = v1;
    v43 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 64;
    v8 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    v38 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
    result = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    v37 = result;
    v10 = 0;
    v11 = *MEMORY[0x277CBBF28];
    v35 = v9;
    v36 = v11;
    v34 = a1 + 72;
    v39 = a1;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v42 = v10;
      v9 = v5;
      v14 = *(a1 + 56);
      v15 = v40;
      outlined init with copy of CloudDevice(v14 + *(v41 + 72) * v8, v40, type metadata accessor for CloudDevice);
      v17 = *v15;
      v16 = v15[1];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21._countAndFlagsBits = 0x73656369766544;
      v21._object = 0xE700000000000000;
      v22._countAndFlagsBits = v18;
      v22._object = v20;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v21, v22).super.isa;
      v24._countAndFlagsBits = v17;
      v24._object = v16;
      CKRecordID.init(recordName:zoneID:)(v24, isa);
      v25 = v15;
      a1 = v39;
      outlined destroy of CloudDevice(v25, type metadata accessor for CloudDevice);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v12 = 1 << *(a1 + 32);
      if (v8 >= v12)
      {
        goto LABEL_23;
      }

      v26 = *(v7 + 8 * v13);
      if ((v26 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v9;
      LODWORD(v9) = v35;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v8 & 0x3F));
      if (v27)
      {
        v12 = __clz(__rbit64(v27)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v13 << 6;
        v29 = v13 + 1;
        v30 = (v34 + 8 * v13);
        while (v29 < (v12 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = outlined consume of Set<UIScene>.Index._Variant(v8, v35, 0);
            v12 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<UIScene>.Index._Variant(v8, v35, 0);
      }

LABEL_4:
      v10 = v42 + 1;
      v8 = v12;
      if (v42 + 1 == v5)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS9MomentsUI15CloudMetaDeviceV_G_So10CKRecordIDCs5NeverOTg503_s9e4UI14g16DevicesDBC21dumpj36IDsByZoneSDySSSaySo0G2IDCGGyFAfA0C10hI7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for CloudMetaDevice();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v32 = v1;
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 64;
    v8 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    v37 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
    result = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    v36 = result;
    v10 = 0;
    v33 = a1 + 72;
    v34 = v9;
    v35 = *MEMORY[0x277CBBF28];
    v38 = a1;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v41 = v10;
      v9 = v5;
      v13 = *(a1 + 56);
      v14 = v39;
      outlined init with copy of CloudDevice(v13 + *(v40 + 72) * v8, v39, type metadata accessor for CloudMetaDevice);
      v16 = *v14;
      v15 = v14[1];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20._countAndFlagsBits = 0x617461646174656DLL;
      v20._object = 0xED0000656E6F7A5FLL;
      v21._countAndFlagsBits = v17;
      v21._object = v19;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v20, v21).super.isa;
      v23._countAndFlagsBits = v16;
      v23._object = v15;
      CKRecordID.init(recordName:zoneID:)(v23, isa);
      v24 = v14;
      a1 = v38;
      outlined destroy of CloudDevice(v24, type metadata accessor for CloudMetaDevice);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v25 = *(v7 + 8 * v12);
      if ((v25 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v9;
      LODWORD(v9) = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v8 & 0x3F));
      if (v26)
      {
        v11 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v12 << 6;
        v28 = v12 + 1;
        v29 = (v33 + 8 * v12);
        while (v28 < (v11 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = outlined consume of Set<UIScene>.Index._Variant(v8, v34, 0);
            v11 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<UIScene>.Index._Variant(v8, v34, 0);
      }

LABEL_4:
      v10 = v41 + 1;
      v8 = v11;
      if (v41 + 1 == v5)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for CloudDevice();
    v17 = *(v10 - 8);
    outlined init with copy of CloudDevice(v9 + *(v17 + 72) * v8, a4, type metadata accessor for CloudDevice);
    v11 = *(v17 + 56);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for CloudDevice();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a4;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKUnit);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t static CloudDevicesDB.commonSecondaryCapabilities.getter()
{
  if (one-time initialization token for $commonSecondaryCapabilities != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t CloudDevicesDB.becomePrimary()()
{
  v1[29] = v0;
  v1[30] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1[31] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v1[42] = swift_task_alloc();
  v4 = type metadata accessor for CloudDevice();
  v1[43] = v4;
  v1[44] = *(v4 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.becomePrimary(), v0, 0);
}

{
  v139 = v0;
  v1 = v0[29];
  static CloudLog.LogBeginInfo(_:_:)(0, "becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);
  v2 = v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) != 2)
    {
LABEL_17:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v28 = v0[38];
      v29 = v0[35];
      v30 = v0[36];
      v31 = __swift_project_value_buffer(v29, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v30 + 16))(v28, v31, v29);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[38];
      v36 = v0[35];
      v37 = v0[36];
      if (v34)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v138[0] = v39;
        *v38 = 136446466;
        swift_beginAccess();
        v40 = StaticString.description.getter();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v138);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2082;
        *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
        _os_log_impl(&dword_21607C000, v32, v33, "%{public}s.%{public}s Cannot become primary", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v39, -1, -1);
        MEMORY[0x21CE94770](v38, -1, -1);
      }

      (*(v37 + 8))(v35, v36);
      goto LABEL_22;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[42];
  CloudDevicesDB.currentDevice.getter(v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    outlined destroy of UTType?(v0[42], &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_17;
  }

  v7 = v0[46];
  v8 = v0[43];
  outlined init with take of CloudDevice(v0[42], v7, type metadata accessor for CloudDevice);
  v9 = v7 + *(v8 + 40);
  if (*(v9 + 8))
  {
    v10 = -1;
  }

  else
  {
    v10 = *v9;
  }

  CloudDevice.Idiom.init(rawValue:)(v10);
  if (LOBYTE(v138[0]) != 1)
  {
    outlined destroy of CloudDevice(v0[46], type metadata accessor for CloudDevice);
    goto LABEL_17;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v11 = v0[41];
  v12 = v0[35];
  v13 = v0[36];
  v14 = __swift_project_value_buffer(v12, static CloudDevicesDB.Log);
  swift_beginAccess();
  v132 = v14;
  v130 = *(v13 + 16);
  v130(v11, v14, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[41];
  v20 = v0[35];
  v19 = v0[36];
  v137 = v0;
  if (v17)
  {
    v135 = v0[41];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v138[0] = v22;
    *v21 = 136446466;
    swift_beginAccess();
    v23 = StaticString.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v138);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
    _os_log_impl(&dword_21607C000, v15, v16, "%{public}s.%{public}s Becoming Primary", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v22, -1, -1);
    MEMORY[0x21CE94770](v21, -1, -1);

    v26 = *(v19 + 8);
    v27 = v135;
  }

  else
  {

    v26 = *(v19 + 8);
    v27 = v18;
  }

  v136 = v26;
  v26(v27, v20);
  v45 = v0[46];
  v46 = v0[43];
  v47 = v0[34];
  v48 = v0[32];
  v49 = v0[33];
  static Date.now.getter();
  v50 = *(v46 + 28);
  outlined destroy of UTType?(v45 + v50, &_s10Foundation4DateVSgMd);
  v51 = *(v49 + 16);
  v51(v45 + v50, v47, v48);
  v52 = *(v49 + 56);
  v52(v45 + v50, 0, 1, v48);
  v53 = *(v46 + 56);
  outlined destroy of UTType?(v45 + v53, &_s10Foundation4DateVSgMd);
  v51(v45 + v53, v47, v48);
  v128 = v52;
  v52(v45 + v53, 0, 1, v48);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v54 = static DefaultsManager.momentsUI;
  v55 = v137;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
    [v54 setValue:isa forKey:v57];
  }

  v58 = v137[46];
  v59 = v137[43];
  v60 = v137[40];
  v61 = v137[35];
  v63 = v137[31];
  v62 = v137[32];
  v64 = (v58 + *(v59 + 68));

  *v64 = xmmword_21658F9D0;
  static Date.distantPast.getter();
  v128(v63, 0, 1, v62);
  outlined assign with take of Date?(v63, v58 + *(v59 + 72));
  v65 = CloudDevice.description()();
  v130(v60, v132, v61);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v137[40];
  v70 = v137[35];
  if (v68)
  {
    v129 = v137[40];
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v138[0] = v72;
    *v71 = 136446722;
    swift_beginAccess();
    v73 = StaticString.description.getter();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v138);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
    *(v71 + 22) = 2080;
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65._countAndFlagsBits, v65._object, v138);

    *(v71 + 24) = v76;
    _os_log_impl(&dword_21607C000, v66, v67, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v71, 0x20u);
    swift_arrayDestroy();
    v77 = v72;
    v55 = v137;
    MEMORY[0x21CE94770](v77, -1, -1);
    MEMORY[0x21CE94770](v71, -1, -1);

    v79 = v70;
    v78 = v129;
  }

  else
  {

    v78 = v69;
    v79 = v70;
  }

  v136(v78, v79);
  v81 = v55[45];
  v80 = v55[46];
  v82 = *v80;
  v83 = v80[1];
  outlined init with copy of CloudDevice(v80, v81, type metadata accessor for CloudDevice);
  v84 = *(v2 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v138[0] = v84;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v82, v83, isUniquelyReferenced_nonNull_native);

  *(v2 + 8) = v138[0];

  CloudDevicesDB.persistLocalData()();
  v87 = v55[35];
  if (v86)
  {
    v130(v55[37], v132, v87);
    v88 = v86;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    v91 = os_log_type_enabled(v89, v90);
    v92 = v55[46];
    v93 = v55[37];
    v94 = v55[34];
    v95 = v55[35];
    v96 = v55[32];
    v97 = v55[33];
    if (v91)
    {
      v134 = v55[32];
      v98 = swift_slowAlloc();
      v131 = v93;
      v99 = swift_slowAlloc();
      v133 = v92;
      v100 = swift_slowAlloc();
      v138[0] = v100;
      *v98 = 136446722;
      swift_beginAccess();
      v101 = StaticString.description.getter();
      v127 = v95;
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v138);

      *(v98 + 4) = v103;
      *(v98 + 12) = 2082;
      *(v98 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
      *(v98 + 22) = 2112;
      v104 = v86;
      v105 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 24) = v105;
      *v99 = v105;
      _os_log_impl(&dword_21607C000, v89, v90, "%{public}s.%{public}s Failed to persist local data: %@", v98, 0x20u);
      outlined destroy of UTType?(v99, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v99, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v100, -1, -1);
      MEMORY[0x21CE94770](v98, -1, -1);

      v136(v131, v127);
      (*(v97 + 8))(v94, v134);
      v106 = v133;
    }

    else
    {

      v136(v93, v95);
      (*(v97 + 8))(v94, v96);
      v106 = v92;
    }

    outlined destroy of CloudDevice(v106, type metadata accessor for CloudDevice);
    v0 = v55;
LABEL_22:
    static CloudLog.LogEndInfo(_:)("becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v43 = v0[1];

    return v43();
  }

  v130(v55[39], v132, v87);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = v55[46];
    v110 = v55[43];
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v138[0] = v112;
    *v111 = 136446722;
    swift_beginAccess();
    v113 = StaticString.description.getter();
    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v138);

    *(v111 + 4) = v115;
    *(v111 + 12) = 2082;
    *(v111 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
    *(v111 + 22) = 2080;
    swift_beginAccess();
    v116 = (v109 + *(v110 + 32));
    if (v116[1])
    {
      v117 = *v116;
      v118 = v116[1];
    }

    else
    {
      v118 = 0xE700000000000000;
      v117 = 0x6E776F6E6B6E55;
    }

    v123 = v55[39];
    v124 = v55[35];

    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v138);

    *(v111 + 24) = v125;
    _os_log_impl(&dword_21607C000, v107, v108, "%{public}s.%{public}s Became Primary: %s", v111, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v112, -1, -1);
    MEMORY[0x21CE94770](v111, -1, -1);

    v121 = v123;
    v122 = v124;
  }

  else
  {
    v119 = v55[39];
    v120 = v55[35];

    v121 = v119;
    v122 = v120;
  }

  v136(v121, v122);
  v126 = swift_task_alloc();
  v55[47] = v126;
  *v126 = v55;
  v126[1] = CloudDevicesDB.becomePrimary();

  return CloudDevicesDB.checkDB(forceUpdate:)(1);
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.becomePrimary(), v1, 0);
}

{
  v1 = v0[29];
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[48] = v3;
  if (v3 && (type metadata accessor for CloudManager(), swift_dynamicCastClass()))
  {
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[49] = v4;
    *v4 = v0;
    v4[1] = CloudDevicesDB.becomePrimary();

    return specialized CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0x7250656D6F636562, 0xEF29287972616D69, 974);
  }

  else
  {
    v6 = v0[46];
    (*(v0[33] + 8))(v0[34], v0[32]);
    outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
    static CloudLog.LogEndInfo(_:)("becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.becomePrimary(), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[46];
  (*(v0[33] + 8))(v0[34], v0[32]);
  outlined destroy of CloudDevice(v1, type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);

  v2 = v0[1];

  return v2();
}

uint64_t CloudDevicesDB.primaryDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudDevice();
  v24[0] = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) - 2 >= 2)
  {
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state))
    {
      v16 = *(v9 + 8);
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 64);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      while (v19)
      {
LABEL_16:
        outlined init with copy of CloudDevice(*(v16 + 56) + *(v24[0] + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v8, type metadata accessor for CloudDevice);
        outlined init with take of CloudDevice(v8, v6, type metadata accessor for CloudDevice);
        v23 = v6[*(v3 + 60)];
        if (v23 != 2 && (v23 & 1) != 0)
        {

          outlined init with take of CloudDevice(v6, a1, type metadata accessor for CloudDevice);
          return (*(v24[0] + 56))(a1, 0, 1, v3);
        }

        v19 &= v19 - 1;
        result = outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          return (*(v24[0] + 56))(a1, 1, 1, v3);
        }

        v19 = *(v16 + 64 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v15 = *(v24[0] + 56);

      return v15(a1, 1, 1, v3);
    }
  }

  else
  {

    static CloudDevice.primaryPhone(in:)(v10, a1);

    v12 = *(v9 + 8);
    MEMORY[0x28223BE20](v11);
    v24[-2] = a1;

    v13 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #1 in CloudDevicesDB.primaryDevice.getter, &v24[-4], v12);

    *(v9 + 8) = v13;
  }

  return result;
}

uint64_t static CloudDevicesDB.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudDevicesDB.Class = a1;
  unk_27CA92698 = a2;
  byte_27CA926A0 = a3;
  return result;
}

uint64_t static CloudDevicesDB.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudDevicesDB.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudDevicesDB.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudDevicesDB.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudDevicesDB@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t one-time initialization function for cloudRecordTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21658CA50;
  v1 = type metadata accessor for CloudDevice();
  result = lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, type metadata accessor for CloudDevice);
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  static CloudDevicesDB.cloudRecordTypes = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21658E190;
  v1 = type metadata accessor for CloudSyncSnapshot();
  v2 = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance CloudSyncSnapshot, type metadata accessor for CloudSyncSnapshot);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CloudSyncSuggestion();
  v4 = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncSuggestion and conformance CloudSyncSuggestion, type metadata accessor for CloudSyncSuggestion);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CloudSyncAssetData();
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncAssetData and conformance CloudSyncAssetData, type metadata accessor for CloudSyncAssetData);
  *(v0 + 64) = v5;
  *(v0 + 72) = result;
  static CloudSyncDB.cloudRecordTypes = v0;
  return result;
}

uint64_t static CloudDevicesDB.cloudRecordTypes.getter()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloudDevicesDB.cloudRecordTypes.setter(uint64_t a1)
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudDevicesDB.cloudRecordTypes = a1;
}

uint64_t (*static CloudDevicesDB.cloudRecordTypes.modify())()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t key path getter for static CloudDevicesDB.cloudRecordTypes : CloudDevicesDB.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static CloudDevicesDB.cloudRecordTypes;
}

uint64_t key path setter for static CloudDevicesDB.cloudRecordTypes : CloudDevicesDB.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for cloudRecordTypes;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudDevicesDB.cloudRecordTypes = v1;
}

uint64_t one-time initialization function for defaultDeviceDBURL()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, static CloudDevicesDB.defaultDeviceDBURL);
  __swift_project_value_buffer(v4, static CloudDevicesDB.defaultDeviceDBURL);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      strcpy(v13, "Devices.json");
      HIBYTE(v13[6]) = 0;
      v13[7] = -5120;
      (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v8, v4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CloudDevicesDB.Log.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static CloudDevicesDB.defaultDeviceDBURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultDeviceDBURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.defaultDeviceDBURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t key path setter for CloudDevicesDB.cloudManager : CloudDevicesDB(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t CloudDevicesDB.cloudManager.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t CloudDevicesDB.onboarded.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CloudDevicesDB.onboarded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CloudDevicesDB.State.devices.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CloudDevicesDB.State.metaDevices.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CloudDevicesDB.State.CodingKeys()
{
  v1 = 0x53746E756F636361;
  v2 = 0x73656369766564;
  if (*v0 != 2)
  {
    v2 = 0x697665446174656DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CloudDevicesDB.State.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CloudDevicesDB.State.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CloudDevicesDB.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CloudDevicesDB.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudDevicesDB.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI14CloudDevicesDBC5StateV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v17 = v1[1];
  v9 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = v8;
  v18 = 0;
  lazy protocol witness table accessor for type CloudManagerAccountState and conformance CloudManagerAccountState();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v14;
    v12 = v15;
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v12;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI11CloudDeviceVGMd);
    lazy protocol witness table accessor for type [String : CloudDevice] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v11;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI15CloudMetaDeviceVGMd);
    lazy protocol witness table accessor for type [String : CloudMetaDevice] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

MomentsUI::CloudDevicesDB::State __swiftcall CloudDevicesDB.State.init()()
{
  v1 = v0;
  *v0 = 515;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11CloudDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(v2);
  *(v1 + 16) = v3;
  result.metaDevices._rawValue = v5;
  result.devices._rawValue = v4;
  result.accountState = v3;
  result.cloudQuotaExceeded = SBYTE1(v3);
  return result;
}

MomentsUI::CloudDevicesDB::State __swiftcall CloudDevicesDB.State.init(accountState:cloudQuotaExceeded:devices:metaDevices:)(MomentsUI::CloudManagerAccountState_optional accountState, Swift::Bool_optional cloudQuotaExceeded, Swift::OpaquePointer devices, Swift::OpaquePointer metaDevices)
{
  *v4 = *accountState.value;
  *(v4 + 1) = cloudQuotaExceeded;
  *(v4 + 8) = devices;
  *(v4 + 16) = metaDevices;
  result.metaDevices = devices;
  LOBYTE(result.devices._rawValue) = cloudQuotaExceeded;
  result.accountState = accountState;
  return result;
}

uint64_t CloudDevicesDB.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI14CloudDevicesDBC5StateV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = MEMORY[0x277D84F90];
  v15[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11CloudDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v15[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v6;
    v18 = 0;
    lazy protocol witness table accessor for type CloudManagerAccountState and conformance CloudManagerAccountState();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v16;
    LOBYTE(v16) = 1;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI11CloudDeviceVGMd);
    v18 = 2;
    lazy protocol witness table accessor for type [String : CloudDevice] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI15CloudMetaDeviceVGMd);
    v18 = 3;
    lazy protocol witness table accessor for type [String : CloudMetaDevice] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 8))(v8, v5);

    v14 = v16;
    *a2 = v11;
    *(a2 + 1) = v17;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*CloudDevicesDB.devices.modify(void *a1))(void *a1)
{
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  a1[2] = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *a1 = *(v1 + v2 + 8);
  a1[1] = v1;

  return CloudDevicesDB.devices.modify;
}

uint64_t (*CloudDevicesDB.metaDevices.modify(void *a1))(void *a1)
{
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  a1[2] = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *a1 = *(v1 + v2 + 16);
  a1[1] = v1;

  return CloudDevicesDB.metaDevices.modify;
}

uint64_t CloudDevicesDB.primaryDevicePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PassthroughSubject<CloudDevice?, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t CloudDevicesDB._isRefreshing.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CloudDevicesDB.newlyOnboardedDevicesPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type CurrentValueSubject<[CloudDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t key path getter for CloudDevicesDB.snapshotEventAggregation : CloudDevicesDB@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v11[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v11[3] = v3[3];
  v11[4] = v6;
  v11[2] = v5;
  v11[1] = v4;
  v7 = v3[3];
  a2[2] = v3[2];
  a2[3] = v7;
  a2[4] = v3[4];
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  return outlined init with copy of DateInterval?(v11, v10, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
}

uint64_t key path setter for CloudDevicesDB.snapshotEventAggregation : CloudDevicesDB(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v17 = a1[4];
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v18[0] = *v4;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v18[3] = v4[3];
  v18[4] = v7;
  v18[1] = v5;
  v18[2] = v6;
  v8 = v15;
  v9 = v17;
  v10 = v14;
  v4[3] = v16;
  v4[4] = v9;
  v4[1] = v10;
  v4[2] = v8;
  *v4 = v13;
  outlined init with copy of DateInterval?(&v13, v12, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  return outlined destroy of UTType?(v18, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
}

uint64_t CloudDevicesDB.snapshotEventAggregation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return outlined init with copy of DateInterval?(v10, v9, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
}

uint64_t CloudDevicesDB.snapshotEventAggregation.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v9[4] = v3[4];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  v3[4] = a1[4];
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  return outlined destroy of UTType?(v9, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
}

uint64_t key path setter for CloudDevicesDB.lastSnapshotAnalyticsCreationDate : CloudDevicesDB(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of DateInterval?(a1, &v14 - v9, &_s10Foundation4DateVSgMd);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t CloudDevicesDB.lastSnapshotAnalyticsCreationDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v2 + v4, a2, &_s10Foundation4DateVSgMd);
}

uint64_t CloudDevicesDB.lastSnapshotAnalyticsCreationDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t CloudDevicesDB.__allocating_init(emptyDB:config:)(int a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CloudDevicesDB.init(emptyDB:config:)(a1, a2);
  return v4;
}

uint64_t *CloudDevicesDB.init(emptyDB:config:)(int a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = *v2;
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v49 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_deviceDBURL;
  if (one-time initialization token for defaultDeviceDBURL != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, static CloudDevicesDB.defaultDeviceDBURL);
  v53 = *(v7 + 16);
  v54 = v15;
  v49 = v16;
  v53(v3 + v15);
  v17 = (v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  *v17 = 0;
  v17[1] = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboardedSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded) = 2;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__accountStateSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGenerationSubscription) = 0;
  v18 = (v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration);
  *v18 = 0;
  v18[1] = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpaceSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace) = 3;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__cloudQuotaExceededSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailableSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable) = 2;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailableSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable) = 2;
  v19 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_primaryDeviceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd);
  swift_allocObject();
  *(v3 + v19) = PassthroughSubject.init()();
  v20 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB___isRefreshing;
  LOBYTE(v58[0]) = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(v3 + v20, v14, v11);
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__cancelRefresh) = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__lastFullRefresh;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v3 + v21, 1, 1, v22);
  v24 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_newlyOnboardedDevicesSubject;
  v58[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd);
  swift_allocObject();
  *(v3 + v24) = CurrentValueSubject.init(_:)();
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotEventSubscriber) = 0;
  v25 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotWeeklyAnalytics;
  type metadata accessor for DBSnapshotWeeklyAnalytics();
  swift_allocObject();
  *(v3 + v25) = DBSnapshotWeeklyAnalytics.init()();
  v26 = v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation;
  *v26 = 1;
  *(v26 + 9) = 0;
  *(v26 + 56) = 0u;
  *(v26 + 40) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 8) = 0u;
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotAnalyticsCreationDate, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastUILaunchDate, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21658CA50;
  v28 = MEMORY[0x277D839D8];
  *(v27 + 56) = MEMORY[0x277D839B0];
  *(v27 + 64) = v28;
  *(v27 + 32) = v50 & 1;
  v29 = v51;
  static CloudLog.LogBegin(_:_:)(v27, "init(emptyDB:config:)", 21, 2, v51, &protocol witness table for CloudDevicesDB);

  v30 = v52;
  if (*(v52 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000216583B10), (v32 & 1) != 0))
  {
    outlined init with copy of Any(*(v30 + 56) + 32 * v31, v58);

    v33 = v56;
    v34 = swift_dynamicCast();
    (*(v7 + 56))(v33, v34 ^ 1u, 1, v6);
    v35 = (*(v7 + 48))(v33, 1, v6);
    v36 = v55;
    if (v35 != 1)
    {
      (*(v7 + 32))(v55, v33, v6);
      v37 = v57;
      v38 = v53;
      goto LABEL_10;
    }
  }

  else
  {

    v33 = v56;
    (*(v7 + 56))(v56, 1, 1, v6);
    v36 = v55;
  }

  v38 = v53;
  (v53)(v36, v49, v6);
  v39 = (*(v7 + 48))(v33, 1, v6);
  v37 = v57;
  if (v39 != 1)
  {
    outlined destroy of UTType?(v33, &_s10Foundation3URLVSgMd);
  }

LABEL_10:
  v40 = v54;
  swift_beginAccess();
  (*(v7 + 40))(v3 + v40, v36, v6);
  swift_endAccess();
  v38(v37, v3 + v40, v6);
  v41 = Data.init(contentsOf:options:)();
  v43 = v42;
  (*(v7 + 8))(v37, v6);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type CloudDevicesDB.State and conformance CloudDevicesDB.State();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v41, v43);

  v46 = BYTE1(v58[0]);
  v47 = v58[1];
  v48 = v58[2];
  v44 = v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *v44 = v58[0];
  v44[1] = v46;
  *(v44 + 1) = v47;
  *(v44 + 2) = v48;
  static CloudLog.LogEnd(_:)("init(emptyDB:config:)", 21, 2, v29, &protocol witness table for CloudDevicesDB);
  return v3;
}

uint64_t CloudDevicesDB.initialized()()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GMd);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd);
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v0, 0);
}

{
  v1 = v0[12];
  static CloudLog.LogBegin(_:_:)(0, "initialized()", 13, 2, v0[13], &protocol witness table for CloudDevicesDB);
  v2 = (v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v3 = *v2;
  v0[29] = *v2;
  if (v3)
  {
    v4 = v2[1];
    v0[30] = v4;
    v0[31] = swift_getObjectType();
    v0[32] = *(v4 + 248);
    v0[33] = (v4 + 248) & 0xFFFFFFFFFFFFLL | 0xB8A8000000000000;
    swift_unknownObjectRetain();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[34] = v6;
    v0[35] = v5;

    return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v6, v5);
  }

  else
  {
    v7 = v0[12];
    v8 = [objc_opt_self() defaultCenter];
    v9 = *MEMORY[0x277CBE620];
    v0[6] = partial apply for closure #9 in CloudDevicesDB.initialized();
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v0[5] = &block_descriptor_30;
    v10 = _Block_copy(v0 + 2);

    v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
    v12 = swift_task_alloc();
    v0[67] = v12;
    *v12 = v0;
    v12[1] = CloudDevicesDB.initialized();

    return CloudDevicesDB.checkDB(forceUpdate:)(0);
  }
}

{
  v1 = *(v0 + 240);
  (*(v0 + 256))(*(v0 + 248), v1);
  *(v0 + 288) = *(v1 + 264);
  *(v0 + 296) = (v1 + 264) & 0xFFFFFFFFFFFFLL | 0xBE62000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 288))(*(v0 + 248), v1);
  *(v0 + 304) = *(v1 + 328);
  *(v0 + 312) = (v1 + 328) & 0xFFFFFFFFFFFFLL | 0x5804000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 304))(*(v0 + 248), v1);
  *(v0 + 320) = *(v1 + 280);
  *(v0 + 328) = (v1 + 280) & 0xFFFFFFFFFFFFLL | 0x4AFD000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 320))(*(v0 + 248), v1);
  *(v0 + 336) = *(v1 + 288);
  *(v0 + 344) = (v1 + 288) & 0xFFFFFFFFFFFFLL | 0x75DB000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 336))(*(v0 + 248), v1);
  *(v0 + 352) = *(v1 + 296);
  *(v0 + 360) = (v1 + 296) & 0xFFFFFFFFFFFFLL | 0x9CEE000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 352))(*(v0 + 248), v1);
  *(v0 + 368) = *(v1 + 304);
  *(v0 + 376) = (v1 + 304) & 0xFFFFFFFFFFFFLL | 0xB4E9000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 96);
  (*(v0 + 368))(*(v0 + 248), *(v0 + 240));

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[28];
  v2 = v0[12];
  v3 = lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, type metadata accessor for CloudDevicesDB);
  v0[48] = v3;
  v4 = swift_task_alloc();
  v0[49] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[50] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v2, v3, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #1 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[25];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[51] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #2 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[19];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[53] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #3 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = swift_task_alloc();
  v0[55] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = CloudDevicesDB.initialized();
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #4 in CloudDevicesDB.initialized(), v5, v7);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[24];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[57] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #5 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[23];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[59] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[60] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #6 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[22];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[61] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #7 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotEventSubscriber;
  v0[63] = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotEventSubscriber;
  if (*(v1 + v2))
  {
    swift_unknownObjectRelease();
    v3 = v0[27];
    v25 = v0[26];
    v26 = v0[28];
    v4 = v0[23];
    v5 = v0[20];
    v23 = v0[19];
    v24 = v0[25];
    v6 = v0[18];
    v21 = v0[24];
    v22 = v0[17];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = *(v0[21] + 8);
    v10(v0[22], v5);
    v10(v4, v5);
    v10(v21, v5);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v23, v22);
    v10(v24, v5);
    (*(v3 + 8))(v26, v25);
    v11 = v0[12];
    v12 = [objc_opt_self() defaultCenter];
    v13 = *MEMORY[0x277CBE620];
    v0[6] = partial apply for closure #9 in CloudDevicesDB.initialized();
    v0[7] = v11;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v0[5] = &block_descriptor_30;
    v14 = _Block_copy(v0 + 2);

    v15 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v14];
    _Block_release(v14);

    swift_unknownObjectRelease();
    v16 = swift_task_alloc();
    v0[67] = v16;
    *v16 = v0;
    v16[1] = CloudDevicesDB.initialized();

    return CloudDevicesDB.checkDB(forceUpdate:)(0);
  }

  else
  {
    v18 = v0[30] + 360;
    v0[64] = *v18;
    v0[65] = v18 & 0xFFFFFFFFFFFFLL | 0x1E7D000000000000;
    v19 = v0[34];
    v20 = v0[35];

    return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v19, v20);
  }
}

{
  v1 = *(v0 + 96);
  *(v0 + 528) = (*(v0 + 512))(*(v0 + 248), *(v0 + 240));

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[63];
  v2 = v0[12];
  v3 = v0[13];
  v0[11] = v0[66];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<DBSnapshotAnalytics.SnapshotEvent?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd);
  v5 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();

  *(v2 + v1) = v5;

  v6 = v0[27];
  v25 = v0[26];
  v26 = v0[28];
  v7 = v0[23];
  v8 = v0[20];
  v23 = v0[19];
  v24 = v0[25];
  v9 = v0[18];
  v21 = v0[24];
  v22 = v0[17];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = *(v0[21] + 8);
  v13(v0[22], v8);
  v13(v7, v8);
  v13(v21, v8);
  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v23, v22);
  v13(v24, v8);
  (*(v6 + 8))(v26, v25);
  v14 = v0[12];
  v15 = [objc_opt_self() defaultCenter];
  v16 = *MEMORY[0x277CBE620];
  v0[6] = partial apply for closure #9 in CloudDevicesDB.initialized();
  v0[7] = v14;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v0[5] = &block_descriptor_30;
  v17 = _Block_copy(v0 + 2);

  v18 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v17];
  _Block_release(v17);

  swift_unknownObjectRelease();
  v19 = swift_task_alloc();
  v0[67] = v19;
  *v19 = v0;
  v19[1] = CloudDevicesDB.initialized();

  return CloudDevicesDB.checkDB(forceUpdate:)(0);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  static CloudLog.LogEnd(_:)("initialized()", 13, 2, *(v0 + 104), &protocol witness table for CloudDevicesDB);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v18 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMd);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd);
  Publisher.removeDuplicates(by:)();
  (*(v4 + 16))(v6, v18, v3);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 16) = v20;
  *(v12 + 24) = v10;
  (*(v4 + 32))(v12 + v11, v6, v3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMd);

  v14 = v19;
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v14);
  *(v13 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__accountStateSubscription) = v15;
}

void closure #2 in closure #1 in CloudDevicesDB.initialized()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v15 = *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state);
  if (v12 != 3)
  {
    v31 = v13;
    v32 = a4;
    if (v15 == 3)
    {
      v16 = v13;
      goto LABEL_7;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v19 = 0x65696E6544636374;
      }

      else
      {
        v19 = 0x6E4964656E676973;
      }

      if (v12 == 1)
      {
        v20 = 0xE900000000000064;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      if (v15)
      {
LABEL_19:
        if (v15 == 1)
        {
          v21 = 0x65696E6544636374;
        }

        else
        {
          v21 = 0x6E4964656E676973;
        }

        if (v15 == 1)
        {
          v22 = 0xE900000000000064;
        }

        else
        {
          v22 = 0xE800000000000000;
        }

        if (v19 != v21)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v20 = 0xE900000000000074;
      v19 = 0x754F64656E676973;
      if (v15)
      {
        goto LABEL_19;
      }
    }

    v22 = 0xE900000000000074;
    if (v19 != 0x754F64656E676973)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (v20 == v22)
    {
      v23 = v13;

      goto LABEL_32;
    }

LABEL_31:
    v29[1] = v20;
    v24 = v13;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v25 = v24;

    if ((v30 & 1) == 0)
    {
LABEL_7:
      *(a2 + v14) = v12;
      v17 = 1;
      if (v12 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

LABEL_32:
    v17 = 0;
    if (v12 != 2)
    {
      goto LABEL_33;
    }

LABEL_35:
    (*(v9 + 16))(v11, v32, v8);
    v27 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = v17;
    *(v28 + 32) = a3;
    (*(v9 + 32))(v28 + v27, v11, v8);

    specialized BTask.init(name:operation:)(0xD000000000000036, 0x8000000216584780, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized(), v28);

    return;
  }

  if (v15 != 3)
  {
    v31 = v13;
    v32 = a4;
    v18 = v13;
    v17 = 0;
    if (v15 == 2)
    {
      goto LABEL_35;
    }

LABEL_33:
    CloudDevicesDB.deleteLocalData()();
    if (v26)
    {
    }

    goto LABEL_35;
  }

  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v8 = swift_task_alloc();
  v6[10] = v8;
  *v8 = v6;
  v8[1] = closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized();

  return CloudDevicesDB.checkDB(forceUpdate:)(a4);
}

uint64_t closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized()()
{

  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized(), 0, 0);
}

uint64_t CloudDevicesDB.checkDB(forceUpdate:)(char a1)
{
  *(v2 + 840) = v1;
  *(v2 + 2206) = a1;
  *(v2 + 848) = *v1;
  *(v2 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  *(v2 + 864) = swift_task_alloc();
  *(v2 + 872) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  *(v2 + 880) = swift_task_alloc();
  v3 = type metadata accessor for CloudDevice();
  *(v2 + 888) = v3;
  *(v2 + 896) = *(v3 - 8);
  *(v2 + 904) = swift_task_alloc();
  *(v2 + 912) = swift_task_alloc();
  *(v2 + 920) = swift_task_alloc();
  *(v2 + 928) = swift_task_alloc();
  *(v2 + 936) = swift_task_alloc();
  *(v2 + 944) = swift_task_alloc();
  *(v2 + 952) = swift_task_alloc();
  *(v2 + 960) = swift_task_alloc();
  *(v2 + 968) = swift_task_alloc();
  *(v2 + 976) = swift_task_alloc();
  *(v2 + 984) = swift_task_alloc();
  *(v2 + 992) = swift_task_alloc();
  *(v2 + 1000) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 1008) = v4;
  *(v2 + 1016) = *(v4 - 8);
  *(v2 + 1024) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v2 + 1032) = v5;
  *(v2 + 1040) = *(v5 - 8);
  *(v2 + 1048) = swift_task_alloc();
  *(v2 + 1056) = swift_task_alloc();
  *(v2 + 1064) = swift_task_alloc();
  *(v2 + 1072) = swift_task_alloc();
  *(v2 + 1080) = swift_task_alloc();
  *(v2 + 1088) = swift_task_alloc();
  *(v2 + 1096) = swift_task_alloc();
  *(v2 + 1104) = swift_task_alloc();
  *(v2 + 1112) = swift_task_alloc();
  *(v2 + 1120) = swift_task_alloc();
  *(v2 + 1128) = swift_task_alloc();
  *(v2 + 1136) = swift_task_alloc();
  *(v2 + 1144) = swift_task_alloc();
  *(v2 + 1152) = swift_task_alloc();
  *(v2 + 1160) = swift_task_alloc();
  *(v2 + 1168) = swift_task_alloc();
  *(v2 + 1176) = swift_task_alloc();
  *(v2 + 1184) = swift_task_alloc();
  *(v2 + 1192) = swift_task_alloc();
  *(v2 + 1200) = swift_task_alloc();
  *(v2 + 1208) = swift_task_alloc();
  *(v2 + 1216) = swift_task_alloc();
  *(v2 + 1224) = swift_task_alloc();
  *(v2 + 1232) = swift_task_alloc();
  *(v2 + 1240) = swift_task_alloc();
  *(v2 + 1248) = swift_task_alloc();
  *(v2 + 1256) = swift_task_alloc();
  *(v2 + 1264) = swift_task_alloc();
  *(v2 + 1272) = swift_task_alloc();
  *(v2 + 1280) = swift_task_alloc();
  *(v2 + 1288) = swift_task_alloc();
  *(v2 + 1296) = swift_task_alloc();
  *(v2 + 1304) = swift_task_alloc();
  *(v2 + 1312) = swift_task_alloc();
  *(v2 + 1320) = swift_task_alloc();
  *(v2 + 1328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  *(v2 + 1352) = swift_task_alloc();
  *(v2 + 1360) = swift_task_alloc();
  *(v2 + 1368) = swift_task_alloc();
  *(v2 + 1376) = swift_task_alloc();
  *(v2 + 1384) = swift_task_alloc();
  *(v2 + 1392) = swift_task_alloc();
  *(v2 + 1400) = swift_task_alloc();
  *(v2 + 1408) = swift_task_alloc();
  *(v2 + 1416) = swift_task_alloc();
  *(v2 + 1424) = swift_task_alloc();
  *(v2 + 1432) = swift_task_alloc();
  *(v2 + 1440) = swift_task_alloc();
  *(v2 + 1448) = swift_task_alloc();
  *(v2 + 1456) = swift_task_alloc();
  *(v2 + 1464) = swift_task_alloc();
  *(v2 + 1472) = swift_task_alloc();
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1488) = swift_task_alloc();
  *(v2 + 1496) = swift_task_alloc();
  *(v2 + 1504) = swift_task_alloc();
  *(v2 + 1512) = swift_task_alloc();
  *(v2 + 1520) = swift_task_alloc();
  *(v2 + 1528) = swift_task_alloc();
  *(v2 + 1536) = swift_task_alloc();
  *(v2 + 1544) = swift_task_alloc();
  *(v2 + 1552) = swift_task_alloc();
  *(v2 + 1560) = swift_task_alloc();
  *(v2 + 1568) = swift_task_alloc();
  *(v2 + 1576) = swift_task_alloc();
  *(v2 + 1584) = swift_task_alloc();
  *(v2 + 1592) = swift_task_alloc();
  *(v2 + 1600) = swift_task_alloc();
  *(v2 + 1608) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 1616) = v6;
  *(v2 + 1624) = *(v6 - 8);
  *(v2 + 1632) = swift_task_alloc();
  *(v2 + 1640) = swift_task_alloc();
  *(v2 + 1648) = swift_task_alloc();
  *(v2 + 1656) = swift_task_alloc();
  *(v2 + 1664) = swift_task_alloc();
  *(v2 + 1672) = swift_task_alloc();
  *(v2 + 1680) = swift_task_alloc();
  *(v2 + 1688) = swift_task_alloc();
  *(v2 + 1696) = swift_task_alloc();
  *(v2 + 1704) = swift_task_alloc();
  *(v2 + 1712) = swift_task_alloc();
  *(v2 + 1720) = swift_task_alloc();
  *(v2 + 1728) = swift_task_alloc();
  *(v2 + 1736) = swift_task_alloc();
  *(v2 + 1744) = swift_task_alloc();
  *(v2 + 1752) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  *(v2 + 1760) = swift_task_alloc();
  *(v2 + 1768) = swift_task_alloc();
  *(v2 + 1776) = swift_task_alloc();
  *(v2 + 1784) = swift_task_alloc();
  *(v2 + 1792) = swift_task_alloc();
  *(v2 + 1800) = swift_task_alloc();
  *(v2 + 1808) = swift_task_alloc();
  *(v2 + 1816) = swift_task_alloc();
  *(v2 + 1824) = swift_task_alloc();
  *(v2 + 1832) = swift_task_alloc();
  *(v2 + 1840) = swift_task_alloc();
  *(v2 + 1848) = swift_task_alloc();
  *(v2 + 1856) = swift_task_alloc();
  *(v2 + 1864) = swift_task_alloc();
  *(v2 + 1872) = swift_task_alloc();
  *(v2 + 1880) = swift_task_alloc();
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();
  *(v2 + 1928) = swift_task_alloc();
  *(v2 + 1936) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  v2 = *(*v1 + 840);
  *(*v1 + 2207) = a1;

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v2, 0);
}

uint64_t CloudDevicesDB.checkDB(forceUpdate:)()
{
  v934 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 2206);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D839B0];
  *(v3 + 16) = xmmword_21658CA50;
  v5 = MEMORY[0x277D839D8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  static CloudLog.LogBeginInfo(_:_:)(v3, "checkDB(forceUpdate:)", 21, 2, v1, &protocol witness table for CloudDevicesDB);

  swift_beginAccess();
  v6 = static CloudManager.deviceID;
  v7 = qword_2811A6948;
  *(v0 + 1944) = qword_2811A6948;
  if (!v6 && v7 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_297;
  }

  v8 = objc_opt_self();

  v9 = [v8 mainBundle];
  v10 = [v9 bundleIdentifier];

  if (!v10)
  {

LABEL_297:
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, *(v0 + 848), &protocol witness table for CloudDevicesDB);

    v683 = *(v0 + 8);

    return v683();
  }

  v909 = v6;
  v11 = *(v0 + 1936);
  v12 = *(v0 + 1928);
  v13 = *(v0 + 896);
  v14 = *(v0 + 888);
  v15 = *(v0 + 840);
  v886 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v921 = v17;
  *(v0 + 1952) = v17;
  swift_beginAccess();
  v18 = static CloudManager.currentID;
  v19 = qword_2811A6918;
  *(v0 + 1960) = static CloudManager.currentID;
  *(v0 + 1968) = v19;
  v20 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *(v0 + 1976) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v21 = v15 + v20;
  v22 = *(v21 + 8);

  specialized Dictionary.subscript.getter(v18, v19, v22, v11);

  v23 = *(v13 + 56);
  *(v0 + 1984) = v23;
  *(v0 + 1992) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v12, 1, 1, v14);
  v24 = *(v13 + 48);
  *(v0 + 2000) = v24;
  *(v0 + 2008) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v25 = v24(v11, 1, v14);
  *(v0 + 2200) = v25;
  if (v25 == 1)
  {
    v26 = v21;
    v869 = v23;
    v861 = v24;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 1752);
    v28 = *(v0 + 1624);
    v29 = *(v0 + 1616);
    v30 = __swift_project_value_buffer(v29, static CloudDevicesDB.Log);
    swift_beginAccess();
    v828 = v30;
    v826 = *(v28 + 16);
    v826(v27, v30, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1752);
    v35 = *(v0 + 1624);
    v36 = *(v0 + 1616);
    v865 = v26;
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v932 = v38;
      *v37 = 136446466;
      swift_beginAccess();
      v39 = StaticString.description.getter();
      v854 = v34;
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v932);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
      _os_log_impl(&dword_21607C000, v31, v32, "%{public}s.%{public}s Restoring device state from defaults", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v38, -1, -1);
      MEMORY[0x21CE94770](v37, -1, -1);

      (*(v35 + 8))(v854, v36);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    v46 = *(v0 + 1600);
    v47 = *(v0 + 1592);
    v48 = *(v0 + 1584);
    v49 = *(v0 + 1576);
    v50 = *(v0 + 1568);
    v51 = *(v0 + 1040);
    v52 = *(v0 + 1032);
    static DefaultsManager.Cloud.registrationDate.getter(*(v0 + 1608));
    static DefaultsManager.Cloud.onboardingDate.getter(v46);
    static DefaultsManager.Cloud.lastInformedOfNewlyOnboardedDevices.getter(v47);
    static DefaultsManager.Cloud.becamePrimaryDate.getter(v48);
    static DefaultsManager.Cloud.declinedPrimaryDate.getter(v49);
    outlined init with copy of DateInterval?(v48, v50, &_s10Foundation4DateVSgMd);
    v53 = *(v51 + 48);
    v54 = v53(v50, 1, v52);
    v55 = *(v0 + 1568);
    if (v54 == 1)
    {
      v56 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v55, 1, v56) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1568), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1328), *(v0 + 1568), *(v0 + 1032));
    }

    v64 = *(v0 + 1560);
    v65 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1576), v64, &_s10Foundation4DateVSgMd);
    v66 = v53(v64, 1, v65);
    v67 = *(v0 + 1560);
    if (v66 == 1)
    {
      v68 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v67, 1, v68) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1560), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1320), *(v0 + 1560), *(v0 + 1032));
    }

    v69 = *(v0 + 1552);
    v70 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1608), v69, &_s10Foundation4DateVSgMd);
    v71 = v53(v69, 1, v70);
    v72 = *(v0 + 1552);
    if (v71 == 1)
    {
      v73 = *(v0 + 1032);
      static Date.distantFuture.getter();
      if (v53(v72, 1, v73) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1552), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1312), *(v0 + 1552), *(v0 + 1032));
    }

    v74 = *(v0 + 1544);
    v75 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1600), v74, &_s10Foundation4DateVSgMd);
    v76 = v53(v74, 1, v75);
    v77 = *(v0 + 1544);
    if (v76 == 1)
    {
      v78 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v77, 1, v78) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1544), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1304), *(v0 + 1544), *(v0 + 1032));
    }

    v79 = *(v0 + 1536);
    v80 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1592), v79, &_s10Foundation4DateVSgMd);
    v81 = v53(v79, 1, v80);
    v82 = *(v0 + 1536);
    if (v81 == 1)
    {
      v83 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v82, 1, v83) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1536), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1296), v82, *(v0 + 1032));
    }

    v84 = *(v0 + 1920);
    v85 = *(v0 + 1520);
    v86 = *(v0 + 1512);
    v836 = *(v0 + 1504);
    v87 = *(v0 + 1032);
    v88 = *(v0 + 1024);
    v89 = *(v0 + 1016);
    v855 = *(v0 + 1008);
    v90 = *(v0 + 888);
    v91 = *(*(v0 + 1040) + 56);
    (v91)(*(v0 + 1528), 1, 1, v87);
    (v91)(v85, 1, 1, v87);
    (v91)(v86, 1, 1, v87);
    (v91)(v836, 1, 1, v87);
    static Date.now.getter();
    static Date.distantPast.getter();
    static Date.distantPast.getter();

    UUID.init()();
    v92 = UUID.uuidString.getter();
    v94 = v93;
    (*(v89 + 8))(v88, v855);
    *v84 = v92;
    *(v84 + 8) = v94;
    *(v84 + 16) = 0u;
    *(v84 + 32) = 0u;
    v794 = v90[7];
    (v91)(v84 + v794, 1, 1, v87);
    v95 = (v84 + v90[8]);
    *v95 = 0;
    v95[1] = 0;
    v96 = (v84 + v90[9]);
    *v96 = 0;
    v96[1] = 0;
    v796 = v96;
    v97 = v84 + v90[10];
    *v97 = 0;
    v856 = 1;
    v798 = v97;
    *(v97 + 8) = 1;
    v98 = (v84 + v90[11]);
    *v98 = 0;
    v98[1] = 0;
    v800 = v98;
    v99 = (v84 + v90[12]);
    *v99 = 0;
    v99[1] = 0;
    v801 = v99;
    v802 = v90[13];
    *(v84 + v802) = MEMORY[0x277D84F90];
    v803 = v84 + v90[14];
    v91();
    *(v84 + v90[15]) = 2;
    v807 = v84 + v90[16];
    v91();
    v100 = (v84 + v90[17]);
    *v100 = 0;
    v100[1] = 0;
    v805 = v100;
    v808 = v84 + v90[18];
    v91();
    v810 = v84 + v90[19];
    v91();
    v820 = v84 + v90[20];
    v91();
    v101 = v84 + v90[21];
    (v91)(v101, 1, 1, v87);
    v837 = v84 + v90[22];
    v91();
    v824 = v84 + v90[23];
    v91();
    v822 = v84 + v90[24];
    v91();
    v814 = v84 + v90[25];
    v91();
    v816 = v84 + v90[26];
    *v816 = xmmword_21658E040;
    v102 = (v84 + v90[27]);
    *v102 = 0;
    v102[1] = 0;
    v812 = v102;
    v818 = v84 + v90[28];
    *v818 = xmmword_21658E040;
    v103 = v84 + v90[29];
    v844 = v91;
    (v91)(v103, 1, 1, v87);
    v104 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v104 = v909 & 0xFFFFFFFFFFFFLL;
    }

    if (v104)
    {
      v857 = v101;
      v105 = HIBYTE(v921) & 0xF;
      v106 = v886;
      if ((v921 & 0x2000000000000000) == 0)
      {
        v105 = v886 & 0xFFFFFFFFFFFFLL;
      }

      v107 = v921;
      if (v105)
      {
        v876 = v103;
        v832 = *(v0 + 1920);
        v108 = *(v0 + 1288);
        v109 = *(v0 + 1040);
        v110 = *(v0 + 1032);
        *(v84 + 16) = v909;
        *(v84 + 24) = v7;
        *(v84 + 32) = v886;
        *(v84 + 40) = v921;
        v932 = v909;
        v933 = v7;

        MEMORY[0x21CE92100](46, 0xE100000000000000);

        MEMORY[0x21CE92100](v886, v921);

        v111 = v933;
        *v832 = v932;
        *(v84 + 8) = v111;
        outlined destroy of UTType?(v84 + v794, &_s10Foundation4DateVSgMd);
        (*(v109 + 16))(v84 + v794, v108, v110);
        (v844)(v84 + v794, 0, 1, v110);
        *v95 = specialized static CloudDevice._getDeviceName()();
        v95[1] = v112;
        *v796 = specialized static CloudDevice._getOSVersion()();
        v796[1] = v113;
        *v798 = specialized static CloudDevice._getIdiom()();
        *(v798 + 8) = 0;
        v114 = static Locale.preferredLanguages.getter();
        if (v114[2])
        {
          v116 = v114[4];
          v115 = v114[5];
        }

        else
        {

          v115 = 0xE200000000000000;
          v116 = 28261;
        }

        v912 = *(v0 + 1928);
        v923 = *(v0 + 1920);
        v899 = *(v0 + 1608);
        v833 = *(v0 + 1600);
        v829 = *(v0 + 1592);
        v827 = *(v0 + 1584);
        v799 = *(v0 + 1576);
        v791 = *(v0 + 1528);
        v792 = *(v0 + 1520);
        v793 = *(v0 + 1512);
        v795 = *(v0 + 1504);
        v163 = *(v0 + 1328);
        v786 = *(v0 + 1320);
        v788 = *(v0 + 1312);
        v789 = *(v0 + 1304);
        v790 = *(v0 + 1296);
        v164 = *(v0 + 1288);
        v787 = *(v0 + 1280);
        v797 = *(v0 + 1272);
        v165 = *(v0 + 1040);
        v166 = *(v0 + 1032);
        v889 = *(v0 + 888);
        *v800 = v116;
        v800[1] = v115;
        *v801 = specialized static CloudDevice._getProductType()();
        v801[1] = v167;
        (*(v165 + 8))(v164, v166);
        *(v84 + v802) = MEMORY[0x277D84F90];
        outlined destroy of UTType?(v803, &_s10Foundation4DateVSgMd);
        v168 = *(v165 + 32);
        v168(v803, v163, v166);
        (v844)(v803, 0, 1, v166);
        outlined destroy of UTType?(v807, &_s10Foundation4DateVSgMd);
        v168(v807, v786, v166);
        (v844)(v807, 0, 1, v166);
        *v805 = xmmword_21658F9D0;
        outlined destroy of UTType?(v808, &_s10Foundation4DateVSgMd);
        v168(v808, v787, v166);
        (v844)(v808, 0, 1, v166);
        outlined destroy of UTType?(v810, &_s10Foundation4DateVSgMd);
        v168(v810, v788, v166);
        (v844)(v810, 0, 1, v166);
        outlined destroy of UTType?(v820, &_s10Foundation4DateVSgMd);
        v168(v820, v789, v166);
        (v844)(v820, 0, 1, v166);
        outlined destroy of UTType?(v857, &_s10Foundation4DateVSgMd);
        v168(v857, v790, v166);
        (v844)(v857, 0, 1, v166);
        outlined assign with take of Date?(v791, v837);
        outlined assign with take of Date?(v792, v824);
        outlined assign with take of Date?(v793, v822);
        outlined assign with take of Date?(v795, v814);
        outlined consume of Data?(*v816, *(v816 + 8));
        *v816 = xmmword_21658E040;
        *v812 = 0;
        v812[1] = 0;
        outlined consume of Data?(*v818, *(v818 + 8));
        *v818 = xmmword_21658E040;
        outlined destroy of UTType?(v876, &_s10Foundation4DateVSgMd);
        v168(v876, v797, v166);
        (v844)(v876, 0, 1, v166);
        outlined destroy of UTType?(v799, &_s10Foundation4DateVSgMd);
        outlined destroy of UTType?(v827, &_s10Foundation4DateVSgMd);
        outlined destroy of UTType?(v829, &_s10Foundation4DateVSgMd);
        outlined destroy of UTType?(v833, &_s10Foundation4DateVSgMd);
        outlined destroy of UTType?(v899, &_s10Foundation4DateVSgMd);
        outlined destroy of UTType?(v912, &_s9MomentsUI11CloudDeviceVSgMd);
        v23 = v869;
        v869(v923, 0, 1, v889);
        outlined init with take of URL?(v923, v912, &_s9MomentsUI11CloudDeviceVSgMd);
        v21 = v865;
        v24 = v861;
        goto LABEL_143;
      }

      v856 = 2;
    }

    else
    {
      v106 = v909;
      v107 = v7;
    }

    v871 = *(v0 + 1928);
    v874 = *(v0 + 1936);
    v840 = *(v0 + 1920);
    v888 = *(v0 + 1744);
    v911 = *(v0 + 1616);
    v864 = *(v0 + 1600);
    v867 = *(v0 + 1608);
    v863 = *(v0 + 1592);
    v845 = *(v0 + 1576);
    v850 = *(v0 + 1584);
    v815 = *(v0 + 1528);
    v811 = *(v0 + 1520);
    v809 = *(v0 + 1512);
    v806 = *(v0 + 1504);
    v838 = *(v0 + 1328);
    v823 = *(v0 + 1320);
    v819 = *(v0 + 1312);
    v817 = *(v0 + 1304);
    v813 = *(v0 + 1296);
    v825 = *(v0 + 1288);
    v821 = *(v0 + 1280);
    v804 = *(v0 + 1272);
    v139 = *(v0 + 1040);
    v140 = *(v0 + 1032);

    v141 = type metadata accessor for EncodingError();
    v142 = swift_allocError();
    v144 = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v144[3] = MEMORY[0x277D837D0];
    *v144 = v106;
    v144[1] = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_21658CA50;
    *(v145 + 56) = &type metadata for CloudDevice.CodingKeys;
    *(v145 + 64) = lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();
    *(v145 + 32) = v856;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v141 - 8) + 104))(v144, *MEMORY[0x277D841A8], v141);
    swift_willThrow();
    v146 = *(v139 + 8);
    v146(v804, v140);
    outlined destroy of UTType?(v806, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v809, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v811, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v815, &_s10Foundation4DateVSgMd);
    v146(v813, v140);
    v146(v817, v140);
    v146(v819, v140);
    v146(v821, v140);
    v146(v823, v140);
    v146(v838, v140);
    v146(v825, v140);
    outlined destroy of CloudDevice(v840, type metadata accessor for CloudDevice);

    outlined destroy of UTType?(v845, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v850, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v863, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v864, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v867, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v871, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v874, &_s9MomentsUI11CloudDeviceVSgMd);
    v826(v888, v828, v911);
    v147 = v142;
    v148 = v142;
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v0 + 1744);
    v153 = *(v0 + 1624);
    v154 = *(v0 + 1616);
    if (v151)
    {
      v930 = *(v0 + 1616);
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v932 = v157;
      *v155 = 136446722;
      swift_beginAccess();
      v158 = StaticString.description.getter();
      v922 = v152;
      v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159, &v932);

      *(v155 + 4) = v160;
      *(v155 + 12) = 2082;
      *(v155 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
      *(v155 + 22) = 2112;
      v161 = v142;
      v162 = _swift_stdlib_bridgeErrorToNSError();
      *(v155 + 24) = v162;
      *v156 = v162;

      _os_log_impl(&dword_21607C000, v149, v150, "%{public}s.%{public}s Check failed: %@", v155, 0x20u);
      outlined destroy of UTType?(v156, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v156, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v157, -1, -1);
      MEMORY[0x21CE94770](v155, -1, -1);

      (*(v153 + 8))(v922, v930);
    }

    else
    {

      (*(v153 + 8))(v152, v154);
    }

    goto LABEL_248;
  }

  v42 = *(v0 + 1912);
  v43 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1936), v42, &_s9MomentsUI11CloudDeviceVSgMd);
  v44 = v24(v42, 1, v43);
  v45 = *(v0 + 1912);
  if (v44 == 1)
  {
    outlined destroy of UTType?(v45, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_143;
  }

  v866 = v21;
  v57 = *(v0 + 1496);
  v58 = *(v0 + 1040);
  v59 = *(v0 + 1032);
  outlined init with take of CloudDevice(v45, *(v0 + 1000), type metadata accessor for CloudDevice);
  static DefaultsManager.Cloud.onboardingDate.getter(v57);
  v60 = *(v58 + 48);
  v61 = v60(v57, 1, v59);
  v62 = *(v0 + 1496);
  if (v61 == 1)
  {
    v63 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v62, 1, v63) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1496), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1264), *(v0 + 1496), *(v0 + 1032));
  }

  v117 = *(v0 + 1488);
  v118 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 80), v117, &_s10Foundation4DateVSgMd);
  v119 = v60(v117, 1, v118);
  v120 = *(v0 + 1488);
  if (v119 == 1)
  {
    v121 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v120, 1, v121) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1488), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1256), *(v0 + 1488), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v122 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v124 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
      [v122 setValue:isa forKey:v124];
    }
  }

  v125 = *(v0 + 1480);
  v126 = *(v0 + 1032);
  v887 = *(*(v0 + 888) + 76);
  v898 = *(v0 + 1000);
  outlined init with copy of DateInterval?(v898 + v887, v125, &_s10Foundation4DateVSgMd);
  v127 = v60(v125, 1, v126);
  v128 = *(v0 + 1480);
  if (v127 == 1)
  {
    v129 = *(v0 + 1032);
    static Date.distantFuture.getter();
    if (v60(v128, 1, v129) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1480), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1248), *(v0 + 1480), *(v0 + 1032));
  }

  v130 = *(v0 + 1240);
  v131 = *(v0 + 1040);
  v132 = *(v0 + 1032);
  static Date.distantFuture.getter();
  v133 = static Date.== infix(_:_:)();
  v910 = *(v131 + 8);
  v910(v130, v132);
  v862 = v24;
  v870 = v23;
  if (v133)
  {
    v134 = *(v0 + 1000) + *(*(v0 + 888) + 112);
    v135 = specialized static CloudSyncDB.getCKRecord(_:)(*v134, *(v134 + 8));
    if (v135)
    {
      v136 = v135;
      v137 = [v135 creationDate];

      if (v137)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v138 = 0;
      }

      else
      {
        v138 = 1;
      }

      v169 = *(v0 + 1472);
      v170 = *(v0 + 1464);
      v171 = *(v0 + 1032);
      v172 = *(*(v0 + 1040) + 56);
      v172(v170, v138, 1, v171);
      outlined init with take of URL?(v170, v169, &_s10Foundation4DateVSgMd);
      if (v60(v169, 1, v171) != 1)
      {
        v877 = v172;
        (*(*(v0 + 1040) + 32))(*(v0 + 1232), *(v0 + 1472), *(v0 + 1032));
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v173 = *(v0 + 1736);
        v174 = *(v0 + 1624);
        v175 = *(v0 + 1616);
        v858 = *(v0 + 1232);
        v176 = *(v0 + 1224);
        v177 = *(v0 + 1040);
        v178 = *(v0 + 1032);
        v179 = __swift_project_value_buffer(v175, static CloudDevicesDB.Log);
        swift_beginAccess();
        (*(v174 + 16))(v173, v179, v175);
        v851 = *(v177 + 16);
        v851(v176, v858, v178);
        v180 = Logger.logObject.getter();
        v846 = static os_log_type_t.info.getter();
        v181 = os_log_type_enabled(v180, v846);
        v182 = *(v0 + 1928);
        v183 = *(v0 + 1736);
        v184 = *(v0 + 1624);
        v185 = *(v0 + 1616);
        v186 = *(v0 + 1224);
        v187 = *(v0 + 1032);
        if (v181)
        {
          v841 = *(v0 + 1616);
          v188 = swift_slowAlloc();
          v834 = swift_slowAlloc();
          v932 = v834;
          *v188 = 136446722;
          swift_beginAccess();
          v189 = StaticString.description.getter();
          v830 = v183;
          v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v190, &v932);

          *(v188 + 4) = v191;
          *(v188 + 12) = 2082;
          *(v188 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
          *(v188 + 22) = 2080;
          lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v192 = dispatch thunk of CustomStringConvertible.description.getter();
          v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v192, v193, &v932);

          *(v188 + 24) = v194;
          v910(v186, v187);
          _os_log_impl(&dword_21607C000, v180, v846, "%{public}s.%{public}s Importing registration date from CloudKit: %s", v188, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v834, -1, -1);
          MEMORY[0x21CE94770](v188, -1, -1);

          (*(v184 + 8))(v830, v841);
        }

        else
        {

          v910(v186, v187);
          (*(v184 + 8))(v183, v185);
        }

        outlined destroy of UTType?(v182, &_s9MomentsUI11CloudDeviceVSgMd);
        v195 = *(v0 + 1928);
        v847 = *(v0 + 1248);
        v196 = *(v0 + 1232);
        v197 = *(v0 + 1040);
        v198 = *(v0 + 1032);
        v199 = *(v0 + 1000);
        v842 = *(v0 + 888);
        outlined destroy of UTType?(v898 + v887, &_s10Foundation4DateVSgMd);
        v851(v898 + v887, v196, v198);
        v877(v898 + v887, 0, 1, v198);
        outlined init with copy of CloudDevice(v199, v195, type metadata accessor for CloudDevice);
        v870(v195, 0, 1, v842);
        (*(v197 + 40))(v847, v196, v198);
        goto LABEL_80;
      }
    }

    else
    {
      (*(*(v0 + 1040) + 56))(*(v0 + 1472), 1, 1, *(v0 + 1032));
    }

    outlined destroy of UTType?(*(v0 + 1472), &_s10Foundation4DateVSgMd);
  }

LABEL_80:
  v200 = *(v0 + 1456);
  v201 = *(v0 + 1032);
  static DefaultsManager.Cloud.registrationDate.getter(v200);
  v202 = v60(v200, 1, v201);
  v203 = *(v0 + 1456);
  if (v202 == 1)
  {
    v204 = *(v0 + 1032);
    static Date.distantFuture.getter();
    if (v60(v203, 1, v204) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1456), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1216), *(v0 + 1456), *(v0 + 1032));
  }

  if (static Date.< infix(_:_:)())
  {
    (*(*(v0 + 1040) + 16))(*(v0 + 1208), *(v0 + 1248), *(v0 + 1032));
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v205 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v206 = Date._bridgeToObjectiveC()().super.isa;
      v207 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581140);
      [v205 setValue:v206 forKey:v207];
    }

    v910(*(v0 + 1208), *(v0 + 1032));
  }

  v208 = *(v0 + 1240);
  v209 = *(v0 + 1032);
  static Date.distantPast.getter();
  lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v210 = dispatch thunk of static Equatable.== infix(_:_:)();
  v910(v208, v209);
  if ((v210 & 1) == 0)
  {
    v211 = *(v0 + 1240);
    v212 = *(v0 + 1032);
    static Date.distantFuture.getter();
    v213 = dispatch thunk of static Equatable.== infix(_:_:)();
    v910(v211, v212);
    if (v213 & 1) == 0 && (static Date.< infix(_:_:)())
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v214 = *(v0 + 1728);
      v215 = *(v0 + 1624);
      v216 = *(v0 + 1616);
      v878 = *(v0 + 1256);
      v217 = *(v0 + 1200);
      v218 = *(v0 + 1040);
      v219 = *(v0 + 1032);
      v220 = __swift_project_value_buffer(v216, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v215 + 16))(v214, v220, v216);
      v859 = *(v218 + 16);
      v859(v217, v878, v219);
      v221 = Logger.logObject.getter();
      v222 = static os_log_type_t.info.getter();
      v223 = os_log_type_enabled(v221, v222);
      v224 = *(v0 + 1928);
      v225 = *(v0 + 1728);
      v226 = *(v0 + 1624);
      v227 = *(v0 + 1616);
      if (v223)
      {
        v831 = *(v0 + 1200);
        v228 = *(v0 + 1032);
        v852 = *(v0 + 1616);
        v229 = swift_slowAlloc();
        v843 = swift_slowAlloc();
        v932 = v843;
        *v229 = 136446978;
        v848 = v224;
        swift_beginAccess();
        v230 = StaticString.description.getter();
        v835 = v225;
        v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v230, v231, &v932);

        *(v229 + 4) = v232;
        *(v229 + 12) = 2082;
        *(v229 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
        *(v229 + 22) = 2080;
        swift_beginAccess();
        lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        v233 = dispatch thunk of CustomStringConvertible.description.getter();
        v235 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v234, &v932);

        *(v229 + 24) = v235;
        *(v229 + 32) = 2080;
        v236 = dispatch thunk of CustomStringConvertible.description.getter();
        v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v236, v237, &v932);

        *(v229 + 34) = v238;
        v910(v831, v228);
        _os_log_impl(&dword_21607C000, v221, v222, "%{public}s.%{public}s Adjusting registration date: %s to %s", v229, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v843, -1, -1);
        MEMORY[0x21CE94770](v229, -1, -1);

        (*(v226 + 8))(v835, v852);
        v239 = v848;
      }

      else
      {
        v240 = *(v0 + 1200);
        v241 = *(v0 + 1032);

        v910(v240, v241);
        (*(v226 + 8))(v225, v227);
        v239 = v224;
      }

      outlined destroy of UTType?(v239, &_s9MomentsUI11CloudDeviceVSgMd);
      v242 = *(v0 + 1928);
      v243 = *(v0 + 1256);
      v849 = *(v0 + 1248);
      v853 = *(v0 + 1192);
      v244 = *(v0 + 1040);
      v245 = *(v0 + 1032);
      v839 = *(v0 + 1000);
      v246 = *(v0 + 888);
      outlined destroy of UTType?(v898 + v887, &_s10Foundation4DateVSgMd);
      v859(v898 + v887, v243, v245);
      (*(v244 + 56))(v898 + v887, 0, 1, v245);
      outlined init with copy of CloudDevice(v839, v242, type metadata accessor for CloudDevice);
      v870(v242, 0, 1, v246);
      swift_beginAccess();
      (*(v244 + 24))(v849, v243, v245);
      v859(v853, v849, v245);
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v247 = static DefaultsManager.momentsUI;
      if (static DefaultsManager.momentsUI)
      {
        v248 = Date._bridgeToObjectiveC()().super.isa;
        v249 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581140);
        [v247 setValue:v248 forKey:v249];
      }

      v910(*(v0 + 1192), *(v0 + 1032));
    }
  }

  v250 = *(v0 + 1448);
  v251 = *(v0 + 1032);
  static DefaultsManager.Cloud.lastInformedOfNewlyOnboardedDevices.getter(v250);
  v252 = v60(v250, 1, v251);
  v253 = *(v0 + 1448);
  if (v252 == 1)
  {
    v254 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v253, 1, v254) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1448), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1184), *(v0 + 1448), *(v0 + 1032));
  }

  v255 = *(v0 + 1440);
  v256 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 84), v255, &_s10Foundation4DateVSgMd);
  v257 = v60(v255, 1, v256);
  v258 = *(v0 + 1440);
  if (v257 == 1)
  {
    v259 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v258, 1, v259) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1440), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1176), *(v0 + 1440), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v260 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v261 = Date._bridgeToObjectiveC()().super.isa;
      v262 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581160);
      [v260 setValue:v261 forKey:v262];
    }
  }

  v263 = *(v0 + 1432);
  v264 = *(v0 + 1032);
  static DefaultsManager.Cloud.becamePrimaryDate.getter(v263);
  v265 = v60(v263, 1, v264);
  v266 = *(v0 + 1432);
  if (v265 == 1)
  {
    v267 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v266, 1, v267) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1432), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1168), *(v0 + 1432), *(v0 + 1032));
  }

  v268 = *(v0 + 1424);
  v269 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 56), v268, &_s10Foundation4DateVSgMd);
  v270 = v60(v268, 1, v269);
  v271 = *(v0 + 1424);
  if (v270 == 1)
  {
    v272 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v271, 1, v272) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1424), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1160), *(v0 + 1424), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v273 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v274 = Date._bridgeToObjectiveC()().super.isa;
      v275 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
      [v273 setValue:v274 forKey:v275];
    }
  }

  v276 = *(v0 + 1416);
  v277 = *(v0 + 1032);
  static DefaultsManager.Cloud.declinedPrimaryDate.getter(v276);
  v278 = v60(v276, 1, v277);
  v279 = *(v0 + 1416);
  if (v278 == 1)
  {
    v280 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v279, 1, v280) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1416), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1152), *(v0 + 1416), *(v0 + 1032));
  }

  v281 = *(v0 + 1408);
  v282 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 64), v281, &_s10Foundation4DateVSgMd);
  v283 = v60(v281, 1, v282);
  v284 = *(v0 + 1408);
  if (v283 == 1)
  {
    v285 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v284, 1, v285) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1408), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1144), *(v0 + 1408), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v286 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v287 = Date._bridgeToObjectiveC()().super.isa;
      v288 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
      [v286 setValue:v287 forKey:v288];
    }
  }

  v860 = *(v0 + 1256);
  v900 = *(v0 + 1248);
  v289 = *(v0 + 1216);
  v290 = *(v0 + 1184);
  v291 = *(v0 + 1176);
  v292 = *(v0 + 1168);
  v293 = *(v0 + 1160);
  v294 = *(v0 + 1152);
  v295 = *(v0 + 1032);
  v879 = *(v0 + 1264);
  v890 = *(v0 + 1000);
  v910(*(v0 + 1144), v295);
  v910(v294, v295);
  v910(v293, v295);
  v910(v292, v295);
  v910(v291, v295);
  v910(v290, v295);
  v910(v289, v295);
  v910(v860, v295);
  v910(v879, v295);
  v910(v900, v295);
  outlined destroy of CloudDevice(v890, type metadata accessor for CloudDevice);
  v21 = v866;
  v24 = v862;
  v23 = v870;
LABEL_143:
  v296 = *(v0 + 1896);
  v297 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v296, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v24(v296, 1, v297) == 1)
  {
    v298 = *(v0 + 1896);
    v299 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1904), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v24(v298, 1, v299) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1896), &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v300 = *(v0 + 1904);
    v301 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1896), v300, type metadata accessor for CloudDevice);
    v23(v300, 0, 1, v301);
  }

  v302 = *(v0 + 1904);
  if (v24(v302, 1, *(v0 + 888)) != 1)
  {
    v309 = *(v0 + 840);
    outlined init with take of CloudDevice(v302, *(v0 + 992), type metadata accessor for CloudDevice);
    v310 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration;
    *(v0 + 2016) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration;
    v311 = (v309 + v310);
    v313 = *v311;
    v312 = v311[1];
    *(v0 + 2024) = v312;
    v314 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace;
    *(v0 + 2032) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace;
    *(v0 + 2204) = *(v309 + v314);
    v315 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable;
    v316 = *(v21 + 1);
    *(v0 + 2040) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable;
    v317 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable;
    v318 = *(v309 + v315);
    *(v0 + 2048) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable;
    v319 = *(v309 + v317);

    v320 = swift_task_alloc();
    *(v0 + 2056) = v320;
    *v320 = v0;
    v320[1] = CloudDevicesDB.checkDB(forceUpdate:);
    v321 = *(v0 + 840);

    return CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(v321, v313, v312, (v0 + 2204), v316, v318, v319);
  }

  outlined destroy of UTType?(v302, &_s9MomentsUI11CloudDeviceVSgMd);
  v303 = *(v0 + 2000);
  v304 = *(v0 + 1880);
  v305 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v304, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v303(v304, 1, v305) == 1)
  {
    v306 = *(v0 + 2000);
    v307 = *(v0 + 1880);
    v308 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1888), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v306(v307, 1, v308) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1880), &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v323 = *(v0 + 1984);
    v324 = *(v0 + 1888);
    v325 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1880), v324, type metadata accessor for CloudDevice);
    v323(v324, 0, 1, v325);
  }

  v326 = *(v0 + 1888);
  if ((*(v0 + 2000))(v326, 1, *(v0 + 888)) == 1)
  {
    outlined destroy of UTType?(v326, &_s9MomentsUI11CloudDeviceVSgMd);
  }

  else
  {
    v327 = *(v0 + 840);
    outlined init with take of CloudDevice(v326, *(v0 + 984), type metadata accessor for CloudDevice);
    v328 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
    swift_beginAccess();
    v329 = *(v327 + v328);
    v330 = *(v0 + 984);
    if (v329 != 2)
    {
      if ((CloudDevice.onboarded.getter() ^ v329))
      {
        if (v329)
        {
          v331 = *(v0 + 1136);
          v332 = *(v0 + 1040);
          v333 = *(v0 + 1032);
          v334 = *(v0 + 984);
          v335 = *(v0 + 888);
          static Date.now.getter();
          v336 = *(v335 + 80);
          outlined destroy of UTType?(v334 + v336, &_s10Foundation4DateVSgMd);
          (*(v332 + 16))(v334 + v336, v331, v333);
          (*(v332 + 56))(v334 + v336, 0, 1, v333);
          if (one-time initialization token for momentsUI != -1)
          {
            swift_once();
          }

          v337 = (v0 + 1136);
        }

        else
        {
          v338 = *(v0 + 1400);
          v339 = *(v0 + 1040);
          v340 = *(v0 + 1032);
          v341 = *(v0 + 984);
          v342 = *(v0 + 888);
          static Date.distantPast.getter();
          (*(v339 + 56))(v338, 0, 1, v340);
          outlined assign with take of Date?(v338, v341 + *(v342 + 80));
          static Date.distantPast.getter();
          if (one-time initialization token for momentsUI != -1)
          {
            swift_once();
          }

          v337 = (v0 + 1128);
        }

        v343 = static DefaultsManager.momentsUI;
        v344 = *v337;
        if (static DefaultsManager.momentsUI)
        {
          v345 = Date._bridgeToObjectiveC()().super.isa;
          v346 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
          [v343 setValue:v345 forKey:v346];
        }

        (*(*(v0 + 1040) + 8))(v344, *(v0 + 1032));
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v347 = *(v0 + 1712);
        v348 = *(v0 + 1624);
        v349 = *(v0 + 1616);
        v350 = __swift_project_value_buffer(v349, static CloudDevicesDB.Log);
        swift_beginAccess();
        (*(v348 + 16))(v347, v350, v349);
        v351 = Logger.logObject.getter();
        v352 = static os_log_type_t.info.getter();
        v353 = os_log_type_enabled(v351, v352);
        v354 = *(v0 + 1928);
        v355 = *(v0 + 1712);
        v356 = *(v0 + 1624);
        v357 = *(v0 + 1616);
        if (v353)
        {
          v924 = *(v0 + 1712);
          v358 = swift_slowAlloc();
          v913 = v354;
          v359 = swift_slowAlloc();
          v932 = v359;
          *v358 = 136446722;
          swift_beginAccess();
          v360 = StaticString.description.getter();
          v362 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v360, v361, &v932);

          *(v358 + 4) = v362;
          *(v358 + 12) = 2082;
          *(v358 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
          *(v358 + 22) = 1024;
          *(v358 + 24) = v329 & 1;
          _os_log_impl(&dword_21607C000, v351, v352, "%{public}s.%{public}s Updating onboarding state to %{BOOL}d", v358, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v359, -1, -1);
          MEMORY[0x21CE94770](v358, -1, -1);

          (*(v356 + 8))(v924, v357);
          v363 = v913;
        }

        else
        {

          (*(v356 + 8))(v355, v357);
          v363 = v354;
        }

        outlined destroy of UTType?(v363, &_s9MomentsUI11CloudDeviceVSgMd);
        v364 = *(v0 + 1984);
        v365 = *(v0 + 1928);
        v366 = *(v0 + 984);
        v367 = *(v0 + 888);
        outlined init with copy of CloudDevice(v366, v365, type metadata accessor for CloudDevice);
        v364(v365, 0, 1, v367);
        v330 = v366;
      }

      else
      {
        v330 = *(v0 + 984);
      }
    }

    outlined destroy of CloudDevice(v330, type metadata accessor for CloudDevice);
  }

  v368 = *(v0 + 2000);
  v369 = *(v0 + 1864);
  v370 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v369, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v368(v369, 1, v370) == 1)
  {
    v371 = *(v0 + 2000);
    v372 = *(v0 + 1864);
    v373 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1872), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v371(v372, 1, v373) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1864), &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v374 = *(v0 + 1984);
    v375 = *(v0 + 1872);
    v376 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1864), v375, type metadata accessor for CloudDevice);
    v374(v375, 0, 1, v376);
  }

  v377 = *(v0 + 1872);
  v378 = *(v0 + 888);
  if ((*(v0 + 2000))(v377, 1, v378) == 1)
  {
    outlined destroy of UTType?(v377, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_231;
  }

  v379 = *(v0 + 976);
  outlined init with take of CloudDevice(v377, v379, type metadata accessor for CloudDevice);
  v380 = (v379 + *(v378 + 68));
  v381 = v380[1];
  if (v381)
  {
    v914 = (v379 + *(v378 + 68));
    v925 = v380[1];
    v382 = *v380;
    if (*v380)
    {
      v383 = 0;
    }

    else
    {
      v383 = v381 == 0xE000000000000000;
    }

    v384 = v383;
    if (v383 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v891 = v384;
      v901 = v382;
      v385 = *(v0 + 1392);
      v386 = *(v0 + 1040);
      v387 = *(v0 + 1032);
      v388 = *(v0 + 976);
      v389 = *(v0 + 880);
      v390 = *(v0 + 872);
      v391 = *(*(v0 + 888) + 72);

      static Date.distantPast.getter();
      (*(v386 + 56))(v385, 0, 1, v387);
      v392 = *(v390 + 48);
      outlined init with copy of DateInterval?(v388 + v391, v389, &_s10Foundation4DateVSgMd);
      outlined init with copy of DateInterval?(v385, v389 + v392, &_s10Foundation4DateVSgMd);
      v393 = *(v386 + 48);
      if (v393(v389, 1, v387) == 1)
      {
        v394 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd);
        if (v393(v389 + v392, 1, v394) == 1)
        {
          v395 = *(v0 + 880);

          v396 = &_s10Foundation4DateVSgMd;
LABEL_195:
          outlined destroy of UTType?(v395, v396);
          goto LABEL_230;
        }

        goto LABEL_198;
      }

      v397 = *(v0 + 1032);
      outlined init with copy of DateInterval?(*(v0 + 880), *(v0 + 1384), &_s10Foundation4DateVSgMd);
      v398 = v393(v389 + v392, 1, v397);
      v399 = *(v0 + 1392);
      v400 = *(v0 + 1384);
      if (v398 == 1)
      {
        v401 = *(v0 + 1040);
        v402 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd);
        (*(v401 + 8))(v400, v402);
LABEL_198:
        outlined destroy of UTType?(*(v0 + 880), &_s10Foundation4DateVSg_ADtMd);
        v381 = v925;
        v382 = v901;
        goto LABEL_201;
      }

      v403 = *(v0 + 1240);
      v404 = *(v0 + 1040);
      v405 = *(v0 + 1032);
      v880 = *(v0 + 880);
      (*(v404 + 32))(v403, v389 + v392, v405);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v406 = dispatch thunk of static Equatable.== infix(_:_:)();
      v407 = *(v404 + 8);
      v407(v403, v405);
      outlined destroy of UTType?(v399, &_s10Foundation4DateVSgMd);
      v407(v400, v405);
      outlined destroy of UTType?(v880, &_s10Foundation4DateVSgMd);
      v381 = v925;
      v382 = v901;
      v384 = v891;
      if (v406)
      {
LABEL_229:

        goto LABEL_230;
      }
    }

    else
    {
    }

LABEL_201:
    v408 = *(v0 + 2000);
    v409 = *(v0 + 1856);
    v410 = *(v0 + 888);
    v411 = *(v0 + 840) + *(v0 + 1976);
    static Date.now.getter();
    v412 = *(v411 + 8);

    specialized Dictionary.subscript.getter(v382, v381, v412, v409);

    LODWORD(v410) = v408(v409, 1, v410);
    outlined destroy of UTType?(v409, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v410 == 1)
    {
      v413 = *(v0 + 1400);
      v414 = *(v0 + 1120);
      v415 = *(v0 + 1040);
      v416 = *(v0 + 1032);
      v417 = *(v0 + 976);
      v418 = *(v0 + 888);
      v419 = *(v418 + 28);
      outlined destroy of UTType?(v417 + v419, &_s10Foundation4DateVSgMd);
      (*(v415 + 16))(v417 + v419, v414, v416);
      v420 = *(v415 + 56);
      v420(v417 + v419, 0, 1, v416);

      *v914 = xmmword_21658F9D0;
      static Date.distantPast.getter();
      v420(v413, 0, 1, v416);
      outlined assign with take of Date?(v413, v417 + *(v418 + 72));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v421 = *(v0 + 1704);
      v422 = *(v0 + 1624);
      v423 = *(v0 + 1616);
      v424 = __swift_project_value_buffer(v423, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v422 + 16))(v421, v424, v423);
      v425 = Logger.logObject.getter();
      v426 = static os_log_type_t.info.getter();
      v427 = os_log_type_enabled(v425, v426);
      v428 = *(v0 + 1928);
      v429 = *(v0 + 1704);
      v430 = *(v0 + 1624);
      v431 = *(v0 + 1616);
      v432 = *(v0 + 1120);
      v433 = *(v0 + 1040);
      v434 = *(v0 + 1032);
      if (v427)
      {
        v915 = *(v0 + 1616);
        v435 = swift_slowAlloc();
        v902 = v432;
        v436 = swift_slowAlloc();
        v932 = v436;
        *v435 = 136446466;
        swift_beginAccess();
        v437 = StaticString.description.getter();
        v881 = v428;
        v439 = v429;
        v440 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v437, v438, &v932);

        *(v435 + 4) = v440;
        *(v435 + 12) = 2082;
        *(v435 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);

        _os_log_impl(&dword_21607C000, v425, v426, "%{public}s.%{public}s Cleanup invalid nomination", v435, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v436, -1, -1);
        MEMORY[0x21CE94770](v435, -1, -1);

        (*(v430 + 8))(v439, v915);
        (*(v433 + 8))(v902, v434);
        v441 = v881;
LABEL_212:
        outlined destroy of UTType?(v441, &_s9MomentsUI11CloudDeviceVSgMd);
        v447 = *(v0 + 1984);
        v448 = *(v0 + 1928);
        v449 = *(v0 + 888);
        outlined init with copy of CloudDevice(*(v0 + 976), v448, type metadata accessor for CloudDevice);
        v447(v448, 0, 1, v449);
        goto LABEL_230;
      }

      (*(v430 + 8))(v429, v431);
      (*(v433 + 8))(v432, v434);
LABEL_211:
      v441 = v428;
      goto LABEL_212;
    }

    if (v384)
    {
      goto LABEL_228;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v442 = *(v0 + 2000);
      v443 = *(v0 + 1848);
      v444 = *(v0 + 888);
      CloudDevicesDB.primaryDevice.getter(v443);
      v445 = v442(v443, 1, v444);
      v446 = *(v0 + 1848);
      if (v445 == 1)
      {
        outlined destroy of UTType?(v446, &_s9MomentsUI11CloudDeviceVSgMd);
      }

      else
      {
        v450 = v382;
        v451 = *(v0 + 1376);
        v452 = *(v0 + 1040);
        v453 = *(v0 + 1032);
        v454 = *(v0 + 968);
        v455 = *(v0 + 888);
        outlined init with take of CloudDevice(v446, v454, type metadata accessor for CloudDevice);
        outlined init with copy of DateInterval?(v454 + *(v455 + 56), v451, &_s10Foundation4DateVSgMd);
        v456 = *(v452 + 48);
        v457 = v456(v451, 1, v453);
        v458 = *(v0 + 1376);
        if (v457 == 1)
        {
          v459 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v456(v458, 1, v459) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1376), &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1112), *(v0 + 1376), *(v0 + 1032));
        }

        v460 = *(v0 + 1368);
        v461 = *(v0 + 1032);
        v462 = *(*(v0 + 888) + 72);
        v903 = *(v0 + 976);
        outlined init with copy of DateInterval?(v903 + v462, v460, &_s10Foundation4DateVSgMd);
        v463 = v456(v460, 1, v461);
        v464 = *(v0 + 1368);
        if (v463 == 1)
        {
          v465 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v456(v464, 1, v465) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1368), &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1104), *(v0 + 1368), *(v0 + 1032));
        }

        v466 = *(v0 + 1112);
        v467 = *(v0 + 1104);
        v468 = *(v0 + 1040);
        v469 = *(v0 + 1032);
        v470 = static Date.> infix(_:_:)();
        v471 = *(v468 + 8);
        v471(v467, v469);
        v471(v466, v469);
        if (v470)
        {
          v892 = v471;
          v472 = *(v0 + 1400);
          v473 = *(v0 + 1120);
          v474 = *(v0 + 1040);
          v475 = *(v0 + 1032);
          v476 = *(v0 + 976);
          v477 = *(*(v0 + 888) + 28);
          outlined destroy of UTType?(v476 + v477, &_s10Foundation4DateVSgMd);
          (*(v474 + 16))(v476 + v477, v473, v475);
          v478 = *(v474 + 56);
          v478(v476 + v477, 0, 1, v475);

          *v914 = xmmword_21658F9D0;
          static Date.distantPast.getter();
          v478(v472, 0, 1, v475);
          outlined assign with take of Date?(v472, v903 + v462);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v479 = *(v0 + 1696);
          v480 = *(v0 + 1624);
          v481 = *(v0 + 1616);
          v482 = __swift_project_value_buffer(v481, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v480 + 16))(v479, v482, v481);
          v483 = Logger.logObject.getter();
          v484 = static os_log_type_t.info.getter();
          v485 = os_log_type_enabled(v483, v484);
          v428 = *(v0 + 1928);
          v486 = *(v0 + 1696);
          v487 = *(v0 + 1624);
          v916 = *(v0 + 1616);
          v488 = *(v0 + 1120);
          v489 = *(v0 + 1032);
          v490 = *(v0 + 968);
          if (!v485)
          {

            (*(v487 + 8))(v486, v916);
            outlined destroy of CloudDevice(v490, type metadata accessor for CloudDevice);
            v892(v488, v489);
            goto LABEL_211;
          }

          v904 = *(v0 + 1032);
          v491 = swift_slowAlloc();
          v932 = swift_slowAlloc();
          v872 = v488;
          v492 = v932;
          *v491 = 136446466;
          swift_beginAccess();
          v493 = StaticString.description.getter();
          v875 = v428;
          v495 = v486;
          v496 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v493, v494, &v932);

          *(v491 + 4) = v496;
          *(v491 + 12) = 2082;
          *(v491 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);

          _os_log_impl(&dword_21607C000, v483, v484, "%{public}s.%{public}s Cleanup stale nomination", v491, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v492, -1, -1);
          MEMORY[0x21CE94770](v491, -1, -1);

          (*(v487 + 8))(v495, v916);
          outlined destroy of CloudDevice(v490, type metadata accessor for CloudDevice);
          v892(v872, v904);
          goto LABEL_328;
        }

        outlined destroy of CloudDevice(*(v0 + 968), type metadata accessor for CloudDevice);
        v382 = v450;
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_228:
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));
      goto LABEL_229;
    }

    v689 = *(v0 + 2000);
    v690 = *(v0 + 1840);
    v691 = *(v0 + 888);
    v692 = *(*(v0 + 840) + *(v0 + 1976) + 8);

    specialized Dictionary.subscript.getter(v382, v381, v692, v690);

    v693 = v689(v690, 1, v691);
    v395 = *(v0 + 1840);
    if (v693 == 1)
    {
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));

      v396 = &_s9MomentsUI11CloudDeviceVSgMd;
      goto LABEL_195;
    }

    v702 = *(v0 + 1360);
    v703 = *(v0 + 1040);
    v704 = *(v0 + 1032);
    v705 = *(v0 + 960);
    v706 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1840), v705, type metadata accessor for CloudDevice);
    outlined init with copy of DateInterval?(v705 + *(v706 + 64), v702, &_s10Foundation4DateVSgMd);
    v707 = *(v703 + 48);
    v708 = v707(v702, 1, v704);
    v709 = *(v0 + 1360);
    if (v708 == 1)
    {
      v710 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v707(v709, 1, v710) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1360), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1096), *(v0 + 1360), *(v0 + 1032));
    }

    v733 = *(v0 + 1352);
    v734 = *(v0 + 1032);
    v735 = *(v0 + 976);
    v736 = *(*(v0 + 888) + 72);
    outlined init with copy of DateInterval?(v735 + v736, v733, &_s10Foundation4DateVSgMd);
    v737 = v707(v733, 1, v734);
    v738 = *(v0 + 1352);
    if (v737 == 1)
    {
      v739 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v707(v738, 1, v739) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1352), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1088), *(v0 + 1352), *(v0 + 1032));
    }

    v740 = *(v0 + 1096);
    v741 = *(v0 + 1088);
    v742 = *(v0 + 1040);
    v743 = *(v0 + 1032);
    v744 = static Date.> infix(_:_:)();
    v745 = *(v742 + 8);
    v745(v741, v743);
    v745(v740, v743);
    if ((v744 & 1) == 0)
    {
      v771 = *(v0 + 1120);
      v772 = *(v0 + 1032);
      v773 = *(v0 + 960);

      outlined destroy of CloudDevice(v773, type metadata accessor for CloudDevice);
      v745(v771, v772);
      goto LABEL_230;
    }

    v908 = v745;
    v746 = *(v0 + 1400);
    v747 = *(v0 + 1120);
    v748 = *(v0 + 1040);
    v749 = *(v0 + 1032);
    v750 = *(v0 + 976);
    v751 = *(*(v0 + 888) + 28);
    outlined destroy of UTType?(v750 + v751, &_s10Foundation4DateVSgMd);
    (*(v748 + 16))(v750 + v751, v747, v749);
    v752 = *(v748 + 56);
    v752(v750 + v751, 0, 1, v749);

    *v914 = xmmword_21658F9D0;
    static Date.distantPast.getter();
    v752(v746, 0, 1, v749);
    outlined assign with take of Date?(v746, v735 + v736);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v753 = *(v0 + 1688);
    v754 = *(v0 + 1624);
    v755 = *(v0 + 1616);
    v756 = __swift_project_value_buffer(v755, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v754 + 16))(v753, v756, v755);
    v757 = Logger.logObject.getter();
    v758 = static os_log_type_t.info.getter();
    v759 = os_log_type_enabled(v757, v758);
    v428 = *(v0 + 1928);
    v760 = *(v0 + 1688);
    v761 = *(v0 + 1624);
    v920 = *(v0 + 1616);
    v762 = *(v0 + 1120);
    v763 = *(v0 + 1032);
    v764 = *(v0 + 960);
    if (!v759)
    {

      (*(v761 + 8))(v760, v920);
      outlined destroy of CloudDevice(v764, type metadata accessor for CloudDevice);
      v908(v762, v763);
      goto LABEL_211;
    }

    v897 = *(v0 + 1032);
    v765 = swift_slowAlloc();
    v932 = swift_slowAlloc();
    v873 = v762;
    v766 = v932;
    *v765 = 136446466;
    swift_beginAccess();
    v767 = StaticString.description.getter();
    v875 = v428;
    v769 = v760;
    v770 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v767, v768, &v932);

    *(v765 + 4) = v770;
    *(v765 + 12) = 2082;
    *(v765 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);

    _os_log_impl(&dword_21607C000, v757, v758, "%{public}s.%{public}s Cleanup stale nomination", v765, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v766, -1, -1);
    MEMORY[0x21CE94770](v765, -1, -1);

    (*(v761 + 8))(v769, v920);
    outlined destroy of CloudDevice(v764, type metadata accessor for CloudDevice);
    v908(v873, v897);
LABEL_328:
    v441 = v875;
    goto LABEL_212;
  }

LABEL_230:
  outlined destroy of CloudDevice(*(v0 + 976), type metadata accessor for CloudDevice);
LABEL_231:
  v497 = *(v0 + 2000);
  v498 = *(v0 + 1824);
  v499 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v498, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v497(v498, 1, v499) == 1)
  {
    v500 = *(v0 + 2000);
    v501 = *(v0 + 1824);
    v502 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1832), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v500(v501, 1, v502) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1824), &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v503 = *(v0 + 1984);
    v504 = *(v0 + 1832);
    v505 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1824), v504, type metadata accessor for CloudDevice);
    v503(v504, 0, 1, v505);
  }

  v506 = *(v0 + 1832);
  v507 = *(v0 + 888);
  if ((*(v0 + 2000))(v506, 1, v507) != 1)
  {
    v508 = *(v0 + 1344);
    v509 = *(v0 + 1040);
    v510 = *(v0 + 1032);
    v511 = *(v0 + 952);
    outlined init with take of CloudDevice(v506, v511, type metadata accessor for CloudDevice);
    v512 = *(v507 + 56);
    outlined init with copy of DateInterval?(v511 + v512, v508, &_s10Foundation4DateVSgMd);
    v513 = *(v509 + 48);
    if (v513(v508, 1, v510) == 1)
    {
      v514 = *(v0 + 952);
      outlined destroy of UTType?(*(v0 + 1344), &_s10Foundation4DateVSgMd);
LABEL_243:
      v526 = v514;
      goto LABEL_244;
    }

    v882 = v512;
    v893 = v511;
    v515 = *(v0 + 1240);
    v516 = *(v0 + 1040);
    v517 = *(v0 + 1032);
    v926 = *(v516 + 32);
    v926(*(v0 + 1080), *(v0 + 1344), v517);
    static Date.distantPast.getter();
    v518 = static Date.> infix(_:_:)();
    v519 = *(v516 + 8);
    v519(v515, v517);
    if ((v518 & 1) == 0)
    {
      v514 = *(v0 + 952);
      v519(*(v0 + 1080), *(v0 + 1032));
      goto LABEL_243;
    }

    v520 = *(v0 + 2000);
    v521 = *(v0 + 1816);
    v522 = *(v0 + 888);
    CloudDevicesDB.primaryDevice.getter(v521);
    v523 = v520(v521, 1, v522);
    v524 = *(v0 + 1816);
    if (v523 == 1)
    {
      v525 = *(v0 + 952);
      v519(*(v0 + 1080), *(v0 + 1032));
      outlined destroy of UTType?(v524, &_s9MomentsUI11CloudDeviceVSgMd);
      v526 = v525;
LABEL_244:
      outlined destroy of CloudDevice(v526, type metadata accessor for CloudDevice);
      goto LABEL_245;
    }

    v685 = *(v0 + 952);
    v686 = *(v0 + 944);
    outlined init with take of CloudDevice(*(v0 + 1816), v686, type metadata accessor for CloudDevice);
    if (*v686 == *v685 && v686[1] == v685[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v687 = *(v0 + 952);
      v688 = *(v0 + 944);
      v519(*(v0 + 1080), *(v0 + 1032));
      outlined destroy of CloudDevice(v688, type metadata accessor for CloudDevice);
      v526 = v687;
      goto LABEL_244;
    }

    v694 = *(v0 + 1336);
    v695 = *(v0 + 1032);
    v696 = *(v0 + 944);
    static Date.now.getter();
    outlined init with copy of DateInterval?(v696 + *(v507 + 56), v694, &_s10Foundation4DateVSgMd);
    v697 = v513(v694, 1, v695);
    v698 = *(v0 + 1336);
    if (v697 == 1)
    {
      v699 = *(v0 + 1080);
      v700 = *(v0 + 1032);
      v701 = *(v0 + 944);
      v519(*(v0 + 1072), v700);
      v519(v699, v700);
      outlined destroy of CloudDevice(v701, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v698, &_s10Foundation4DateVSgMd);
LABEL_338:
      v526 = *(v0 + 952);
      goto LABEL_244;
    }

    v711 = *(v0 + 1240);
    v712 = *(v0 + 1032);
    v926(*(v0 + 1064), *(v0 + 1336), v712);
    static Date.distantPast.getter();
    v713 = static Date.> infix(_:_:)();
    v714 = v712;
    v715 = v519;
    v519(v711, v714);
    if (v713)
    {
      Date.timeIntervalSince(_:)();
      if (v716 > 86400.0)
      {
        v717 = *(v0 + 1984);
        v718 = *(v0 + 1928);
        v719 = *(v0 + 1400);
        v720 = *(v0 + 1040);
        v721 = *(v0 + 1032);
        v722 = *(v0 + 952);
        v723 = *(v0 + 888);
        static Date.distantPast.getter();
        v724 = *(v720 + 56);
        v724(v719, 0, 1, v721);
        outlined assign with take of Date?(v719, v893 + v882);
        static Date.distantPast.getter();
        outlined destroy of UTType?(v718, &_s9MomentsUI11CloudDeviceVSgMd);
        v724(v719, 0, 1, v721);
        outlined assign with take of Date?(v719, v722 + *(v723 + 64));
        outlined init with copy of CloudDevice(v722, v718, type metadata accessor for CloudDevice);
        v717(v718, 0, 1, v723);
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v725 = static DefaultsManager.momentsUI;
        v726 = *(v0 + 1056);
        v727 = *(v0 + 1032);
        if (static DefaultsManager.momentsUI)
        {
          v728 = Date._bridgeToObjectiveC()().super.isa;
          v729 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
          [v725 setValue:v728 forKey:v729];

          v730 = v519;
          v519(v726, v727);
          static Date.distantPast.getter();
          v731 = Date._bridgeToObjectiveC()().super.isa;
          v732 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
          [v725 setValue:v731 forKey:v732];
        }

        else
        {
          v730 = v519;
          v519(v726, v727);
          static Date.distantPast.getter();
        }

        v781 = *(v0 + 1080);
        v782 = *(v0 + 1072);
        v783 = *(v0 + 1064);
        v784 = *(v0 + 1032);
        v785 = *(v0 + 944);
        v730(*(v0 + 1048), v784);
        v730(v783, v784);
        v730(v782, v784);
        v730(v781, v784);
        v780 = v785;
        goto LABEL_337;
      }

      v774 = *(v0 + 1080);
      v775 = *(v0 + 1072);
      v776 = *(v0 + 1064);
      v777 = *(v0 + 1032);
      v778 = *(v0 + 944);
      v779 = v777;
      v715 = v519;
    }

    else
    {
      v774 = *(v0 + 1080);
      v775 = *(v0 + 1072);
      v776 = *(v0 + 1064);
      v777 = *(v0 + 1032);
      v778 = *(v0 + 944);
      v779 = v777;
    }

    v715(v776, v779);
    v715(v775, v777);
    v715(v774, v777);
    v780 = v778;
LABEL_337:
    outlined destroy of CloudDevice(v780, type metadata accessor for CloudDevice);
    goto LABEL_338;
  }

  outlined destroy of UTType?(v506, &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_245:
  v527 = *(v0 + 2000);
  v528 = *(v0 + 1808);
  v529 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v528, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v527(v528, 1, v529) == 1)
  {
    v530 = *(v0 + 1808);
    outlined destroy of UTType?(*(v0 + 1928), &_s9MomentsUI11CloudDeviceVSgMd);
  }

  else
  {
    outlined init with take of CloudDevice(*(v0 + 1808), *(v0 + 936), type metadata accessor for CloudDevice);
    v553 = CloudDevice.description()();
    *(v0 + 2080) = v553._object;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v554 = *(v0 + 1680);
    v555 = *(v0 + 1624);
    v556 = *(v0 + 1616);
    v557 = __swift_project_value_buffer(v556, static CloudDevicesDB.Log);
    *(v0 + 2088) = v557;
    swift_beginAccess();
    v558 = *(v555 + 16);
    *(v0 + 2096) = v558;
    *(v0 + 2104) = (v555 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v907 = v558;
    v558(v554, v557, v556);
    swift_bridgeObjectRetain_n();
    v559 = Logger.logObject.getter();
    v560 = static os_log_type_t.debug.getter();
    v561 = os_log_type_enabled(v559, v560);
    v562 = *(v0 + 1680);
    v563 = *(v0 + 1624);
    v928 = *(v0 + 1616);
    if (v561)
    {
      v564 = swift_slowAlloc();
      v565 = swift_slowAlloc();
      v932 = v565;
      *v564 = 136446722;
      swift_beginAccess();
      v566 = StaticString.description.getter();
      v883 = v562;
      v568 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v566, v567, &v932);

      *(v564 + 4) = v568;
      *(v564 + 12) = 2082;
      *(v564 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
      *(v564 + 22) = 2080;

      v569 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v553._countAndFlagsBits, v553._object, &v932);

      *(v564 + 24) = v569;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_21607C000, v559, v560, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v564, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v565, -1, -1);
      MEMORY[0x21CE94770](v564, -1, -1);

      v570 = *(v563 + 8);
      v570(v883, v928);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v570 = *(v563 + 8);
      v570(v562, v928);
    }

    *(v0 + 2112) = v570;
    v622 = *(v0 + 1968);
    v623 = *(v0 + 1960);
    v624 = *(v0 + 928);
    v625 = *(v0 + 840) + *(v0 + 1976);
    v626 = *(v625 + 8);
    outlined init with copy of CloudDevice(*(v0 + 936), v624, type metadata accessor for CloudDevice);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v932 = v626;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v624, v623, v622, isUniquelyReferenced_nonNull_native);

    *(v625 + 8) = v932;

    CloudDevicesDB.persistLocalData()();
    if (v628)
    {
      v907(*(v0 + 1632), v557, *(v0 + 1616));
      v629 = v628;
      v630 = v628;
      v631 = Logger.logObject.getter();
      v632 = static os_log_type_t.error.getter();
      v633 = os_log_type_enabled(v631, v632);
      v634 = *(v0 + 1928);
      v635 = *(v0 + 1632);
      v636 = *(v0 + 1616);
      v637 = *(v0 + 936);
      if (v633)
      {
        v896 = *(v0 + 1616);
        v638 = swift_slowAlloc();
        v885 = v635;
        v639 = swift_slowAlloc();
        v932 = swift_slowAlloc();
        v640 = v932;
        *v638 = 136446722;
        swift_beginAccess();
        v641 = StaticString.description.getter();
        v868 = v637;
        v643 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v641, v642, &v932);

        *(v638 + 4) = v643;
        *(v638 + 12) = 2082;
        *(v638 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
        *(v638 + 22) = 2112;
        v644 = v628;
        v645 = _swift_stdlib_bridgeErrorToNSError();
        *(v638 + 24) = v645;
        *v639 = v645;

        _os_log_impl(&dword_21607C000, v631, v632, "%{public}s.%{public}s Failed to persist local data: %@", v638, 0x20u);
        outlined destroy of UTType?(v639, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v639, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v640, -1, -1);
        MEMORY[0x21CE94770](v638, -1, -1);

        v570(v885, v896);
        outlined destroy of CloudDevice(v868, type metadata accessor for CloudDevice);
      }

      else
      {

        v570(v635, v636);
        outlined destroy of CloudDevice(v637, type metadata accessor for CloudDevice);
      }

      outlined destroy of UTType?(v634, &_s9MomentsUI11CloudDeviceVSgMd);
      v682 = *(v0 + 1936);
      goto LABEL_296;
    }

    v646 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v647 = *v646;
    *(v0 + 2120) = *v646;
    if (v647)
    {
      v648 = *(v0 + 936);
      v929 = v646[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
      v918 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v649 = *(v918 - 8);
      v650 = (*(v649 + 80) + 32) & ~*(v649 + 80);
      v651 = swift_allocObject();
      *(v0 + 2128) = v651;
      *(v651 + 16) = xmmword_21658CA50;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
      v652 = *v648;
      v653 = v648[1];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
      v654 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v656 = v655;
      swift_unknownObjectRetain();

      v657._countAndFlagsBits = 0x73656369766544;
      v657._object = 0xE700000000000000;
      v658._countAndFlagsBits = v654;
      v658._object = v656;
      v659 = CKRecordZoneID.init(zoneName:ownerName:)(v657, v658).super.isa;
      v660._countAndFlagsBits = v652;
      v660._object = v653;
      *(v651 + v650) = CKRecordID.init(recordName:zoneID:)(v660, v659);
      (*(v649 + 104))(v651 + v650, *MEMORY[0x277CBBC68], v918);
      ObjectType = swift_getObjectType();
      v662 = swift_task_alloc();
      *(v0 + 2136) = v662;
      *v662 = v0;
      v662[1] = CloudDevicesDB.checkDB(forceUpdate:);

      return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v651, 0xD000000000000015, 0x8000000216583B60, 1653, ObjectType, v929);
    }

    v530 = *(v0 + 1928);
    v684 = *(v0 + 936);

    outlined destroy of CloudDevice(v684, type metadata accessor for CloudDevice);
  }

  outlined destroy of UTType?(v530, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(*(v0 + 1936), &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_248:
  CloudDevicesDB.primaryDevice.getter(*(v0 + 1800));
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v531 = *(v0 + 1800);
  v532 = *(v0 + 1792);
  v533 = *(v0 + 1656);
  v534 = *(v0 + 1624);
  v535 = *(v0 + 1616);
  v536 = __swift_project_value_buffer(v535, static CloudDevicesDB.Log);
  swift_beginAccess();
  v927 = v536;
  v917 = *(v534 + 16);
  v917(v533, v536, v535);
  outlined init with copy of DateInterval?(v531, v532, &_s9MomentsUI11CloudDeviceVSgMd);
  v537 = Logger.logObject.getter();
  v538 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v537, v538))
  {
    v894 = *(v0 + 2000);
    v539 = *(v0 + 1792);
    v540 = *(v0 + 1784);
    v541 = *(v0 + 888);
    v542 = swift_slowAlloc();
    v905 = swift_slowAlloc();
    v932 = v905;
    *v542 = 136446722;
    swift_beginAccess();
    v543 = StaticString.description.getter();
    v545 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v543, v544, &v932);

    *(v542 + 4) = v545;
    *(v542 + 12) = 2082;
    *(v542 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
    *(v542 + 22) = 2080;
    outlined init with copy of DateInterval?(v539, v540, &_s9MomentsUI11CloudDeviceVSgMd);
    v546 = v894(v540, 1, v541);
    v547 = *(v0 + 1784);
    if (v546 == 1)
    {
      outlined destroy of UTType?(*(v0 + 1784), &_s9MomentsUI11CloudDeviceVSgMd);
      v548 = 0xE500000000000000;
      v549 = 0x3E6C696E3CLL;
    }

    else
    {
      v549 = *v547;
      v548 = v547[1];

      outlined destroy of CloudDevice(v547, type metadata accessor for CloudDevice);
    }

    v571 = *(v0 + 1792);
    v572 = *(v0 + 1656);
    v573 = *(v0 + 1624);
    v574 = *(v0 + 1616);
    v575 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v549, v548, &v932);

    *(v542 + 24) = v575;
    outlined destroy of UTType?(v571, &_s9MomentsUI11CloudDeviceVSgMd);
    _os_log_impl(&dword_21607C000, v537, v538, "%{public}s.%{public}s newPrimary = %s", v542, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v905, -1, -1);
    MEMORY[0x21CE94770](v542, -1, -1);

    v906 = *(v573 + 8);
    v906(v572, v574);
  }

  else
  {
    v550 = *(v0 + 1656);
    v551 = *(v0 + 1624);
    v552 = *(v0 + 1616);
    outlined destroy of UTType?(*(v0 + 1792), &_s9MomentsUI11CloudDeviceVSgMd);

    v906 = *(v551 + 8);
    v906(v550, v552);
  }

  v576 = *(v0 + 2000);
  v577 = *(v0 + 1800);
  v578 = *(v0 + 1776);
  v579 = *(v0 + 888);
  v580 = *(v0 + 864);
  v581 = *(v0 + 856);

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v578);
  v582 = *(v581 + 48);
  outlined init with copy of DateInterval?(v578, v580, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v577, v580 + v582, &_s9MomentsUI11CloudDeviceVSgMd);
  v583 = v576(v580, 1, v579);
  v584 = *(v0 + 2000);
  if (v583 == 1)
  {
    v585 = *(v0 + 888);
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v584(v580 + v582, 1, v585) == 1)
    {
      outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_267:
      v593 = *(v0 + 1648);
      v594 = *(v0 + 1616);

      v596 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v595);

      v917(v593, v927, v594);
      swift_bridgeObjectRetain_n();
      v597 = Logger.logObject.getter();
      v598 = static os_log_type_t.debug.getter();
      v599 = os_log_type_enabled(v597, v598);
      v600 = *(v0 + 1648);
      v601 = *(v0 + 1616);
      if (v599)
      {
        v884 = *(v0 + 888);
        v602 = swift_slowAlloc();
        v603 = swift_slowAlloc();
        v932 = v603;
        *v602 = 136446722;
        v895 = v600;
        swift_beginAccess();
        v604 = StaticString.description.getter();
        v606 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v604, v605, &v932);

        *(v602 + 4) = v606;
        *(v602 + 12) = 2082;
        *(v602 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
        *(v602 + 22) = 2080;

        v608 = MEMORY[0x21CE922B0](v607, v884);
        v610 = v609;

        v611 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v608, v610, &v932);

        *(v602 + 24) = v611;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v597, v598, "%{public}s.%{public}s newlyOnboarded = %s", v602, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v603, -1, -1);
        MEMORY[0x21CE94770](v602, -1, -1);

        v612 = v895;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v612 = v600;
      }

      v906(v612, v601);
      *(v0 + 832) = v596;

      CurrentValueSubject.send(_:)();

      goto LABEL_271;
    }

    goto LABEL_265;
  }

  v586 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 864), *(v0 + 1768), &_s9MomentsUI11CloudDeviceVSgMd);
  v587 = v584(v580 + v582, 1, v586);
  v588 = *(v0 + 1776);
  v589 = *(v0 + 1768);
  if (v587 == 1)
  {
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v589, type metadata accessor for CloudDevice);
LABEL_265:
    outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    goto LABEL_271;
  }

  v590 = *(v0 + 928);
  v591 = *(v0 + 864);
  outlined init with take of CloudDevice(v580 + v582, v590, type metadata accessor for CloudDevice);
  v592 = specialized static CloudDevice.== infix(_:_:)(v589, v590);
  outlined destroy of CloudDevice(v590, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v588, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of CloudDevice(v589, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v591, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v592)
  {
    goto LABEL_267;
  }

LABEL_271:
  v613 = (v0 + 1800);
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_293:
    v682 = *v613;
LABEL_296:
    outlined destroy of UTType?(v682, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_297;
  }

  v614 = *(v0 + 2000);
  v615 = *(v0 + 1760);
  v616 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1800), v615, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v614(v615, 1, v616) == 1)
  {
    outlined destroy of UTType?(*v613, &_s9MomentsUI11CloudDeviceVSgMd);
    v613 = (v0 + 1760);
    goto LABEL_293;
  }

  v617 = *(v0 + 904);
  v618 = *(v0 + 888);
  outlined init with take of CloudDevice(*(v0 + 1760), v617, type metadata accessor for CloudDevice);
  v619 = (v617 + *(v618 + 108));
  if (v619[1])
  {
    v620 = *v619;
    v621 = v619[1];
  }

  else
  {
    v663 = *(v0 + 904);
    v620 = *v663;
    v621 = v663[1];
  }

  *(v0 + 2152) = v621;
  *(v0 + 2144) = v620;
  v917(*(v0 + 1640), v927, *(v0 + 1616));
  swift_bridgeObjectRetain_n();

  v664 = Logger.logObject.getter();
  v665 = static os_log_type_t.error.getter();
  v666 = os_log_type_enabled(v664, v665);
  v667 = *(v0 + 1640);
  v668 = *(v0 + 1616);
  if (v666)
  {
    v931 = *(v0 + 1616);
    v669 = swift_slowAlloc();
    v670 = swift_slowAlloc();
    v932 = v670;
    *v669 = 136446722;
    swift_beginAccess();
    v671 = StaticString.description.getter();
    v919 = v667;
    v673 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v671, v672, &v932);

    *(v669 + 4) = v673;
    *(v669 + 12) = 2082;
    *(v669 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v932);
    *(v669 + 22) = 2080;

    v674 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v620, v621, &v932);

    *(v669 + 24) = v674;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v664, v665, "%{public}s.%{public}s generation: %s", v669, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v670, -1, -1);
    MEMORY[0x21CE94770](v669, -1, -1);

    v675 = v919;
    v676 = v931;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v675 = v667;
    v676 = v668;
  }

  v906(v675, v676);
  v677 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v678 = *v677;
  *(v0 + 2160) = *v677;
  if (!v678)
  {

    outlined destroy of CloudDevice(*(v0 + 904), type metadata accessor for CloudDevice);
    goto LABEL_293;
  }

  v679 = v677[1];
  *(v0 + 2168) = v679;
  *(v0 + 2176) = swift_getObjectType();
  *(v0 + 2184) = *(v679 + 144);
  *(v0 + 2192) = (v679 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v681 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v681, v680);
}

{
  v523 = v0;
  if ((*(v0 + 2207) & 1) != 0 || *(v0 + 2206))
  {
    v9 = *(v0 + 2048);
    v10 = *(v0 + 2040);
    v11 = *(v0 + 2032);
    v12 = *(v0 + 840);
    v13 = v12 + *(v0 + 1976);
    v14 = (v12 + *(v0 + 2016));
    v16 = *v14;
    v15 = v14[1];
    *(v0 + 2064) = v15;
    *(v0 + 2205) = *(v12 + v11);
    v17 = *(v12 + v10);
    v18 = *(v12 + v9);
    v19 = *(v13 + 1);

    v20 = swift_task_alloc();
    *(v0 + 2072) = v20;
    *v20 = v0;
    v20[1] = CloudDevicesDB.checkDB(forceUpdate:);
    v21 = *(v0 + 840);

    return CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(v21, v16, v15, (v0 + 2205), v19, v17, v18);
  }

  outlined destroy of CloudDevice(*(v0 + 992), type metadata accessor for CloudDevice);
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v2, &_s9MomentsUI11CloudDeviceVSgMd);
  v4 = v1(v2, 1, v3);
  v5 = *(v0 + 1888);
  v6 = *(v0 + 1880);
  v7 = *(v0 + 888);
  if (v4 == 1)
  {
    v8 = *(v0 + 2000);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1888), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v8(v6, 1, v7) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1880), &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v23 = *(v0 + 1984);
    outlined init with take of CloudDevice(*(v0 + 1880), *(v0 + 1888), type metadata accessor for CloudDevice);
    v23(v5, 0, 1, v7);
  }

  v24 = *(v0 + 1888);
  if ((*(v0 + 2000))(v24, 1, *(v0 + 888)) == 1)
  {
    outlined destroy of UTType?(v24, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_32;
  }

  v25 = *(v0 + 840);
  outlined init with take of CloudDevice(v24, *(v0 + 984), type metadata accessor for CloudDevice);
  v26 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  swift_beginAccess();
  v27 = *(v25 + v26);
  v28 = *(v0 + 984);
  if (v27 != 2)
  {
    if ((CloudDevice.onboarded.getter() ^ v27))
    {
      if (v27)
      {
        v29 = *(v0 + 1136);
        v30 = *(v0 + 1040);
        v31 = *(v0 + 1032);
        v32 = *(v0 + 984);
        v33 = *(v0 + 888);
        static Date.now.getter();
        v34 = *(v33 + 80);
        outlined destroy of UTType?(v32 + v34, &_s10Foundation4DateVSgMd);
        (*(v30 + 16))(v32 + v34, v29, v31);
        (*(v30 + 56))(v32 + v34, 0, 1, v31);
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v35 = (v0 + 1136);
        v36 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
LABEL_18:
          v37 = *v35;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v39 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
          [v36 setValue:isa forKey:v39];

LABEL_25:
          (*(*(v0 + 1040) + 8))(v37, *(v0 + 1032));
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v45 = *(v0 + 1712);
          v46 = *(v0 + 1624);
          v47 = *(v0 + 1616);
          v48 = __swift_project_value_buffer(v47, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v46 + 16))(v45, v48, v47);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.info.getter();
          v51 = os_log_type_enabled(v49, v50);
          v52 = *(v0 + 1928);
          v53 = *(v0 + 1712);
          v54 = *(v0 + 1624);
          v55 = *(v0 + 1616);
          if (v51)
          {
            v516 = *(v0 + 1712);
            v56 = swift_slowAlloc();
            v509 = v52;
            v57 = swift_slowAlloc();
            v522[0] = v57;
            *v56 = 136446722;
            swift_beginAccess();
            v58 = StaticString.description.getter();
            v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v522);

            *(v56 + 4) = v60;
            *(v56 + 12) = 2082;
            *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);
            *(v56 + 22) = 1024;
            *(v56 + 24) = v27 & 1;
            _os_log_impl(&dword_21607C000, v49, v50, "%{public}s.%{public}s Updating onboarding state to %{BOOL}d", v56, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v57, -1, -1);
            MEMORY[0x21CE94770](v56, -1, -1);

            (*(v54 + 8))(v516, v55);
            v61 = v509;
          }

          else
          {

            (*(v54 + 8))(v53, v55);
            v61 = v52;
          }

          outlined destroy of UTType?(v61, &_s9MomentsUI11CloudDeviceVSgMd);
          v62 = *(v0 + 1984);
          v63 = *(v0 + 1928);
          v64 = *(v0 + 984);
          v65 = *(v0 + 888);
          outlined init with copy of CloudDevice(v64, v63, type metadata accessor for CloudDevice);
          v62(v63, 0, 1, v65);
          v28 = v64;
          goto LABEL_31;
        }
      }

      else
      {
        v40 = *(v0 + 1400);
        v41 = *(v0 + 1040);
        v42 = *(v0 + 1032);
        v43 = *(v0 + 984);
        v44 = *(v0 + 888);
        static Date.distantPast.getter();
        (*(v41 + 56))(v40, 0, 1, v42);
        outlined assign with take of Date?(v40, v43 + *(v44 + 80));
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v35 = (v0 + 1128);
        v36 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
          goto LABEL_18;
        }
      }

      v37 = *v35;
      goto LABEL_25;
    }

    v28 = *(v0 + 984);
  }

LABEL_31:
  outlined destroy of CloudDevice(v28, type metadata accessor for CloudDevice);
LABEL_32:
  v66 = *(v0 + 2000);
  v67 = *(v0 + 1864);
  v68 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v67, &_s9MomentsUI11CloudDeviceVSgMd);
  v69 = v66(v67, 1, v68);
  v70 = *(v0 + 1872);
  v71 = *(v0 + 1864);
  v72 = *(v0 + 888);
  if (v69 == 1)
  {
    v73 = *(v0 + 2000);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1872), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v73(v71, 1, v72) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1864), &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v74 = *(v0 + 1984);
    outlined init with take of CloudDevice(*(v0 + 1864), *(v0 + 1872), type metadata accessor for CloudDevice);
    v74(v70, 0, 1, v72);
  }

  v75 = *(v0 + 1872);
  v76 = *(v0 + 888);
  if ((*(v0 + 2000))(v75, 1, v76) == 1)
  {
    outlined destroy of UTType?(v75, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_86;
  }

  v77 = *(v0 + 976);
  outlined init with take of CloudDevice(v75, v77, type metadata accessor for CloudDevice);
  v78 = (v77 + *(v76 + 68));
  v79 = v78[1];
  if (v79)
  {
    v510 = (v77 + *(v76 + 68));
    v517 = v78[1];
    v80 = *v78;
    if (*v78)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79 == 0xE000000000000000;
    }

    v82 = v81;
    if (v81 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v495 = v82;
      v501 = v80;
      v83 = *(v0 + 1392);
      v84 = *(v0 + 1040);
      v85 = *(v0 + 1032);
      v86 = *(v0 + 976);
      v87 = *(v0 + 880);
      v88 = *(v0 + 872);
      v89 = *(*(v0 + 888) + 72);

      static Date.distantPast.getter();
      (*(v84 + 56))(v83, 0, 1, v85);
      v90 = *(v88 + 48);
      outlined init with copy of DateInterval?(v86 + v89, v87, &_s10Foundation4DateVSgMd);
      outlined init with copy of DateInterval?(v83, v87 + v90, &_s10Foundation4DateVSgMd);
      v91 = *(v84 + 48);
      if (v91(v87, 1, v85) == 1)
      {
        v92 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd);
        if (v91(v87 + v90, 1, v92) == 1)
        {
          v93 = *(v0 + 880);

          v94 = &_s10Foundation4DateVSgMd;
LABEL_50:
          outlined destroy of UTType?(v93, v94);
          goto LABEL_85;
        }

        goto LABEL_53;
      }

      v95 = *(v0 + 1032);
      outlined init with copy of DateInterval?(*(v0 + 880), *(v0 + 1384), &_s10Foundation4DateVSgMd);
      v96 = v91(v87 + v90, 1, v95);
      v97 = *(v0 + 1392);
      v98 = *(v0 + 1384);
      if (v96 == 1)
      {
        v99 = *(v0 + 1040);
        v100 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd);
        (*(v99 + 8))(v98, v100);
LABEL_53:
        outlined destroy of UTType?(*(v0 + 880), &_s10Foundation4DateVSg_ADtMd);
        v79 = v517;
        v80 = v501;
        goto LABEL_56;
      }

      v101 = *(v0 + 1240);
      v102 = *(v0 + 1040);
      v103 = *(v0 + 1032);
      v488 = *(v0 + 880);
      (*(v102 + 32))(v101, v87 + v90, v103);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v104 = dispatch thunk of static Equatable.== infix(_:_:)();
      v105 = *(v102 + 8);
      v105(v101, v103);
      outlined destroy of UTType?(v97, &_s10Foundation4DateVSgMd);
      v105(v98, v103);
      outlined destroy of UTType?(v488, &_s10Foundation4DateVSgMd);
      v79 = v517;
      v80 = v501;
      v82 = v495;
      if (v104)
      {
LABEL_84:

        goto LABEL_85;
      }
    }

    else
    {
    }

LABEL_56:
    v106 = *(v0 + 2000);
    v107 = *(v0 + 1856);
    v108 = *(v0 + 888);
    v109 = *(v0 + 840) + *(v0 + 1976);
    static Date.now.getter();
    v110 = *(v109 + 8);

    specialized Dictionary.subscript.getter(v80, v79, v110, v107);

    LODWORD(v108) = v106(v107, 1, v108);
    outlined destroy of UTType?(v107, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v108 == 1)
    {
      v111 = *(v0 + 1400);
      v112 = *(v0 + 1120);
      v113 = *(v0 + 1040);
      v114 = *(v0 + 1032);
      v115 = *(v0 + 976);
      v116 = *(v0 + 888);
      v117 = *(v116 + 28);
      outlined destroy of UTType?(v115 + v117, &_s10Foundation4DateVSgMd);
      (*(v113 + 16))(v115 + v117, v112, v114);
      v118 = *(v113 + 56);
      v118(v115 + v117, 0, 1, v114);

      *v510 = xmmword_21658F9D0;
      static Date.distantPast.getter();
      v118(v111, 0, 1, v114);
      outlined assign with take of Date?(v111, v115 + *(v116 + 72));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v119 = *(v0 + 1704);
      v120 = *(v0 + 1624);
      v121 = *(v0 + 1616);
      v122 = __swift_project_value_buffer(v121, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v120 + 16))(v119, v122, v121);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.info.getter();
      v125 = os_log_type_enabled(v123, v124);
      v126 = *(v0 + 1928);
      v127 = *(v0 + 1704);
      v128 = *(v0 + 1624);
      v129 = *(v0 + 1616);
      v130 = *(v0 + 1120);
      v131 = *(v0 + 1040);
      v132 = *(v0 + 1032);
      if (v125)
      {
        v511 = *(v0 + 1616);
        v133 = swift_slowAlloc();
        v502 = v130;
        v134 = swift_slowAlloc();
        v522[0] = v134;
        *v133 = 136446466;
        swift_beginAccess();
        v135 = StaticString.description.getter();
        v489 = v126;
        v137 = v127;
        v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, v522);

        *(v133 + 4) = v138;
        *(v133 + 12) = 2082;
        *(v133 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);

        _os_log_impl(&dword_21607C000, v123, v124, "%{public}s.%{public}s Cleanup invalid nomination", v133, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v134, -1, -1);
        MEMORY[0x21CE94770](v133, -1, -1);

        (*(v128 + 8))(v137, v511);
        (*(v131 + 8))(v502, v132);
        v139 = v489;
LABEL_67:
        outlined destroy of UTType?(v139, &_s9MomentsUI11CloudDeviceVSgMd);
        v145 = *(v0 + 1984);
        v146 = *(v0 + 1928);
        v147 = *(v0 + 888);
        outlined init with copy of CloudDevice(*(v0 + 976), v146, type metadata accessor for CloudDevice);
        v145(v146, 0, 1, v147);
        goto LABEL_85;
      }

      (*(v128 + 8))(v127, v129);
      (*(v131 + 8))(v130, v132);
LABEL_66:
      v139 = v126;
      goto LABEL_67;
    }

    if (v82)
    {
      goto LABEL_83;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v140 = *(v0 + 2000);
      v141 = *(v0 + 1848);
      v142 = *(v0 + 888);
      CloudDevicesDB.primaryDevice.getter(v141);
      v143 = v140(v141, 1, v142);
      v144 = *(v0 + 1848);
      if (v143 == 1)
      {
        outlined destroy of UTType?(v144, &_s9MomentsUI11CloudDeviceVSgMd);
      }

      else
      {
        v148 = v80;
        v149 = *(v0 + 1376);
        v150 = *(v0 + 1040);
        v151 = *(v0 + 1032);
        v152 = *(v0 + 968);
        v153 = *(v0 + 888);
        outlined init with take of CloudDevice(v144, v152, type metadata accessor for CloudDevice);
        outlined init with copy of DateInterval?(v152 + *(v153 + 56), v149, &_s10Foundation4DateVSgMd);
        v154 = *(v150 + 48);
        v155 = v154(v149, 1, v151);
        v156 = *(v0 + 1376);
        if (v155 == 1)
        {
          v157 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v154(v156, 1, v157) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1376), &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1112), *(v0 + 1376), *(v0 + 1032));
        }

        v158 = *(v0 + 1368);
        v159 = *(v0 + 1032);
        v160 = *(*(v0 + 888) + 72);
        v503 = *(v0 + 976);
        outlined init with copy of DateInterval?(v503 + v160, v158, &_s10Foundation4DateVSgMd);
        v161 = v154(v158, 1, v159);
        v162 = *(v0 + 1368);
        if (v161 == 1)
        {
          v163 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v154(v162, 1, v163) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1368), &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1104), *(v0 + 1368), *(v0 + 1032));
        }

        v164 = *(v0 + 1112);
        v165 = *(v0 + 1104);
        v166 = *(v0 + 1040);
        v167 = *(v0 + 1032);
        v168 = static Date.> infix(_:_:)();
        v169 = *(v166 + 8);
        v169(v165, v167);
        v169(v164, v167);
        if (v168)
        {
          v496 = v169;
          v170 = *(v0 + 1400);
          v171 = *(v0 + 1120);
          v172 = *(v0 + 1040);
          v173 = *(v0 + 1032);
          v174 = *(v0 + 976);
          v175 = *(*(v0 + 888) + 28);
          outlined destroy of UTType?(v174 + v175, &_s10Foundation4DateVSgMd);
          (*(v172 + 16))(v174 + v175, v171, v173);
          v176 = *(v172 + 56);
          v176(v174 + v175, 0, 1, v173);

          *v510 = xmmword_21658F9D0;
          static Date.distantPast.getter();
          v176(v170, 0, 1, v173);
          outlined assign with take of Date?(v170, v503 + v160);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v177 = *(v0 + 1696);
          v178 = *(v0 + 1624);
          v179 = *(v0 + 1616);
          v180 = __swift_project_value_buffer(v179, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v178 + 16))(v177, v180, v179);
          v181 = Logger.logObject.getter();
          v182 = static os_log_type_t.info.getter();
          v183 = os_log_type_enabled(v181, v182);
          v126 = *(v0 + 1928);
          v184 = *(v0 + 1696);
          v185 = *(v0 + 1624);
          v512 = *(v0 + 1616);
          v186 = *(v0 + 1120);
          v187 = *(v0 + 1032);
          v188 = *(v0 + 968);
          if (!v183)
          {

            (*(v185 + 8))(v184, v512);
            outlined destroy of CloudDevice(v188, type metadata accessor for CloudDevice);
            v496(v186, v187);
            goto LABEL_66;
          }

          v504 = *(v0 + 1032);
          v189 = swift_slowAlloc();
          v522[0] = swift_slowAlloc();
          v483 = v186;
          v190 = v522[0];
          *v189 = 136446466;
          swift_beginAccess();
          v191 = StaticString.description.getter();
          v485 = v126;
          v193 = v184;
          v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v191, v192, v522);

          *(v189 + 4) = v194;
          *(v189 + 12) = 2082;
          *(v189 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);

          _os_log_impl(&dword_21607C000, v181, v182, "%{public}s.%{public}s Cleanup stale nomination", v189, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v190, -1, -1);
          MEMORY[0x21CE94770](v189, -1, -1);

          (*(v185 + 8))(v193, v512);
          outlined destroy of CloudDevice(v188, type metadata accessor for CloudDevice);
          v496(v483, v504);
          goto LABEL_180;
        }

        outlined destroy of CloudDevice(*(v0 + 968), type metadata accessor for CloudDevice);
        v80 = v148;
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_83:
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));
      goto LABEL_84;
    }

    v386 = *(v0 + 2000);
    v387 = *(v0 + 1840);
    v388 = *(v0 + 888);
    v389 = *(*(v0 + 840) + *(v0 + 1976) + 8);

    specialized Dictionary.subscript.getter(v80, v79, v389, v387);

    v390 = v386(v387, 1, v388);
    v93 = *(v0 + 1840);
    if (v390 == 1)
    {
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));

      v94 = &_s9MomentsUI11CloudDeviceVSgMd;
      goto LABEL_50;
    }

    v399 = *(v0 + 1360);
    v400 = *(v0 + 1040);
    v401 = *(v0 + 1032);
    v402 = *(v0 + 960);
    v403 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1840), v402, type metadata accessor for CloudDevice);
    outlined init with copy of DateInterval?(v402 + *(v403 + 64), v399, &_s10Foundation4DateVSgMd);
    v404 = *(v400 + 48);
    v405 = v404(v399, 1, v401);
    v406 = *(v0 + 1360);
    if (v405 == 1)
    {
      v407 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v404(v406, 1, v407) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1360), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1096), *(v0 + 1360), *(v0 + 1032));
    }

    v429 = *(v0 + 1352);
    v430 = *(v0 + 1032);
    v431 = *(v0 + 976);
    v432 = *(*(v0 + 888) + 72);
    outlined init with copy of DateInterval?(v431 + v432, v429, &_s10Foundation4DateVSgMd);
    v433 = v404(v429, 1, v430);
    v434 = *(v0 + 1352);
    if (v433 == 1)
    {
      v435 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v404(v434, 1, v435) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1352), &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1088), *(v0 + 1352), *(v0 + 1032));
    }

    v436 = *(v0 + 1096);
    v437 = *(v0 + 1088);
    v438 = *(v0 + 1040);
    v439 = *(v0 + 1032);
    v440 = static Date.> infix(_:_:)();
    v441 = *(v438 + 8);
    v441(v437, v439);
    v441(v436, v439);
    if ((v440 & 1) == 0)
    {
      v467 = *(v0 + 1120);
      v468 = *(v0 + 1032);
      v469 = *(v0 + 960);

      outlined destroy of CloudDevice(v469, type metadata accessor for CloudDevice);
      v441(v467, v468);
      goto LABEL_85;
    }

    v508 = v441;
    v442 = *(v0 + 1400);
    v443 = *(v0 + 1120);
    v444 = *(v0 + 1040);
    v445 = *(v0 + 1032);
    v446 = *(v0 + 976);
    v447 = *(*(v0 + 888) + 28);
    outlined destroy of UTType?(v446 + v447, &_s10Foundation4DateVSgMd);
    (*(v444 + 16))(v446 + v447, v443, v445);
    v448 = *(v444 + 56);
    v448(v446 + v447, 0, 1, v445);

    *v510 = xmmword_21658F9D0;
    static Date.distantPast.getter();
    v448(v442, 0, 1, v445);
    outlined assign with take of Date?(v442, v431 + v432);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v449 = *(v0 + 1688);
    v450 = *(v0 + 1624);
    v451 = *(v0 + 1616);
    v452 = __swift_project_value_buffer(v451, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v450 + 16))(v449, v452, v451);
    v453 = Logger.logObject.getter();
    v454 = static os_log_type_t.info.getter();
    v455 = os_log_type_enabled(v453, v454);
    v126 = *(v0 + 1928);
    v456 = *(v0 + 1688);
    v457 = *(v0 + 1624);
    v515 = *(v0 + 1616);
    v458 = *(v0 + 1120);
    v459 = *(v0 + 1032);
    v460 = *(v0 + 960);
    if (!v455)
    {

      (*(v457 + 8))(v456, v515);
      outlined destroy of CloudDevice(v460, type metadata accessor for CloudDevice);
      v508(v458, v459);
      goto LABEL_66;
    }

    v500 = *(v0 + 1032);
    v461 = swift_slowAlloc();
    v522[0] = swift_slowAlloc();
    v484 = v458;
    v462 = v522[0];
    *v461 = 136446466;
    swift_beginAccess();
    v463 = StaticString.description.getter();
    v485 = v126;
    v465 = v456;
    v466 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v463, v464, v522);

    *(v461 + 4) = v466;
    *(v461 + 12) = 2082;
    *(v461 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);

    _os_log_impl(&dword_21607C000, v453, v454, "%{public}s.%{public}s Cleanup stale nomination", v461, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v462, -1, -1);
    MEMORY[0x21CE94770](v461, -1, -1);

    (*(v457 + 8))(v465, v515);
    outlined destroy of CloudDevice(v460, type metadata accessor for CloudDevice);
    v508(v484, v500);
LABEL_180:
    v139 = v485;
    goto LABEL_67;
  }

LABEL_85:
  outlined destroy of CloudDevice(*(v0 + 976), type metadata accessor for CloudDevice);
LABEL_86:
  v195 = *(v0 + 2000);
  v196 = *(v0 + 1824);
  v197 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v196, &_s9MomentsUI11CloudDeviceVSgMd);
  v198 = v195(v196, 1, v197);
  v199 = *(v0 + 1832);
  v200 = *(v0 + 1824);
  v201 = *(v0 + 888);
  if (v198 == 1)
  {
    v202 = *(v0 + 2000);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1832), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v202(v200, 1, v201) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1824), &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v203 = *(v0 + 1984);
    outlined init with take of CloudDevice(*(v0 + 1824), *(v0 + 1832), type metadata accessor for CloudDevice);
    v203(v199, 0, 1, v201);
  }

  v204 = *(v0 + 1832);
  v205 = *(v0 + 888);
  if ((*(v0 + 2000))(v204, 1, v205) == 1)
  {
    outlined destroy of UTType?(v204, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_100;
  }

  v206 = *(v0 + 1344);
  v207 = *(v0 + 1040);
  v208 = *(v0 + 1032);
  v209 = *(v0 + 952);
  outlined init with take of CloudDevice(v204, v209, type metadata accessor for CloudDevice);
  v210 = *(v205 + 56);
  outlined init with copy of DateInterval?(v209 + v210, v206, &_s10Foundation4DateVSgMd);
  v211 = *(v207 + 48);
  if (v211(v206, 1, v208) == 1)
  {
    v212 = *(v0 + 952);
    outlined destroy of UTType?(*(v0 + 1344), &_s10Foundation4DateVSgMd);
LABEL_98:
    v224 = v212;
    goto LABEL_99;
  }

  v490 = v210;
  v497 = v209;
  v213 = *(v0 + 1240);
  v214 = *(v0 + 1040);
  v215 = *(v0 + 1032);
  v518 = *(v214 + 32);
  v518(*(v0 + 1080), *(v0 + 1344), v215);
  static Date.distantPast.getter();
  v216 = static Date.> infix(_:_:)();
  v217 = *(v214 + 8);
  v217(v213, v215);
  if ((v216 & 1) == 0)
  {
    v212 = *(v0 + 952);
    v217(*(v0 + 1080), *(v0 + 1032));
    goto LABEL_98;
  }

  v218 = *(v0 + 2000);
  v219 = *(v0 + 1816);
  v220 = *(v0 + 888);
  CloudDevicesDB.primaryDevice.getter(v219);
  v221 = v218(v219, 1, v220);
  v222 = *(v0 + 1816);
  if (v221 != 1)
  {
    v382 = *(v0 + 952);
    v383 = *(v0 + 944);
    outlined init with take of CloudDevice(*(v0 + 1816), v383, type metadata accessor for CloudDevice);
    if (*v383 == *v382 && v383[1] == v382[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v384 = *(v0 + 952);
      v385 = *(v0 + 944);
      v217(*(v0 + 1080), *(v0 + 1032));
      outlined destroy of CloudDevice(v385, type metadata accessor for CloudDevice);
      v224 = v384;
      goto LABEL_99;
    }

    v391 = *(v0 + 1336);
    v392 = *(v0 + 1032);
    v393 = *(v0 + 944);
    static Date.now.getter();
    outlined init with copy of DateInterval?(v393 + *(v205 + 56), v391, &_s10Foundation4DateVSgMd);
    v394 = v211(v391, 1, v392);
    v395 = *(v0 + 1336);
    if (v394 == 1)
    {
      v396 = *(v0 + 1080);
      v397 = *(v0 + 1032);
      v398 = *(v0 + 944);
      v217(*(v0 + 1072), v397);
      v217(v396, v397);
      outlined destroy of CloudDevice(v398, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v395, &_s10Foundation4DateVSgMd);
LABEL_190:
      v224 = *(v0 + 952);
      goto LABEL_99;
    }

    v408 = *(v0 + 1240);
    v409 = *(v0 + 1032);
    v518(*(v0 + 1064), *(v0 + 1336), v409);
    static Date.distantPast.getter();
    v410 = static Date.> infix(_:_:)();
    v411 = v409;
    v412 = v217;
    v217(v408, v411);
    if (v410)
    {
      Date.timeIntervalSince(_:)();
      if (v413 > 86400.0)
      {
        v414 = *(v0 + 1984);
        v415 = *(v0 + 1928);
        v416 = *(v0 + 1400);
        v417 = *(v0 + 1040);
        v418 = *(v0 + 1032);
        v419 = *(v0 + 952);
        v420 = *(v0 + 888);
        static Date.distantPast.getter();
        v421 = *(v417 + 56);
        v421(v416, 0, 1, v418);
        outlined assign with take of Date?(v416, v497 + v490);
        static Date.distantPast.getter();
        outlined destroy of UTType?(v415, &_s9MomentsUI11CloudDeviceVSgMd);
        v421(v416, 0, 1, v418);
        outlined assign with take of Date?(v416, v419 + *(v420 + 64));
        outlined init with copy of CloudDevice(v419, v415, type metadata accessor for CloudDevice);
        v414(v415, 0, 1, v420);
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v422 = static DefaultsManager.momentsUI;
        v423 = *(v0 + 1056);
        v424 = *(v0 + 1032);
        if (static DefaultsManager.momentsUI)
        {
          v425 = Date._bridgeToObjectiveC()().super.isa;
          v426 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
          [v422 setValue:v425 forKey:v426];

          v217(v423, v424);
          static Date.distantPast.getter();
          v427 = Date._bridgeToObjectiveC()().super.isa;
          v428 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
          [v422 setValue:v427 forKey:v428];
        }

        else
        {
          v217(v423, v424);
          static Date.distantPast.getter();
        }

        v477 = *(v0 + 1080);
        v478 = *(v0 + 1072);
        v479 = *(v0 + 1064);
        v480 = *(v0 + 1032);
        v481 = *(v0 + 944);
        v217(*(v0 + 1048), v480);
        v217(v479, v480);
        v217(v478, v480);
        v217(v477, v480);
        v476 = v481;
        goto LABEL_189;
      }

      v470 = *(v0 + 1080);
      v471 = *(v0 + 1072);
      v472 = *(v0 + 1064);
      v473 = *(v0 + 1032);
      v474 = *(v0 + 944);
      v475 = v473;
      v412 = v217;
    }

    else
    {
      v470 = *(v0 + 1080);
      v471 = *(v0 + 1072);
      v472 = *(v0 + 1064);
      v473 = *(v0 + 1032);
      v474 = *(v0 + 944);
      v475 = v473;
    }

    v412(v472, v475);
    v412(v471, v473);
    v412(v470, v473);
    v476 = v474;
LABEL_189:
    outlined destroy of CloudDevice(v476, type metadata accessor for CloudDevice);
    goto LABEL_190;
  }

  v223 = *(v0 + 952);
  v217(*(v0 + 1080), *(v0 + 1032));
  outlined destroy of UTType?(v222, &_s9MomentsUI11CloudDeviceVSgMd);
  v224 = v223;
LABEL_99:
  outlined destroy of CloudDevice(v224, type metadata accessor for CloudDevice);
LABEL_100:
  v225 = *(v0 + 2000);
  v226 = *(v0 + 1808);
  v227 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v226, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v225(v226, 1, v227) == 1)
  {
    v228 = *(v0 + 1808);
    outlined destroy of UTType?(*(v0 + 1928), &_s9MomentsUI11CloudDeviceVSgMd);
  }

  else
  {
    outlined init with take of CloudDevice(*(v0 + 1808), *(v0 + 936), type metadata accessor for CloudDevice);
    v248 = CloudDevice.description()();
    *(v0 + 2080) = v248._object;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v249 = *(v0 + 1680);
    v250 = *(v0 + 1624);
    v251 = *(v0 + 1616);
    v252 = __swift_project_value_buffer(v251, static CloudDevicesDB.Log);
    *(v0 + 2088) = v252;
    swift_beginAccess();
    v253 = *(v250 + 16);
    *(v0 + 2096) = v253;
    *(v0 + 2104) = (v250 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v506 = v253;
    v253(v249, v252, v251);
    swift_bridgeObjectRetain_n();
    v254 = Logger.logObject.getter();
    v255 = static os_log_type_t.debug.getter();
    v256 = os_log_type_enabled(v254, v255);
    v257 = *(v0 + 1680);
    v258 = *(v0 + 1624);
    v519 = *(v0 + 1616);
    if (v256)
    {
      v259 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v522[0] = v260;
      *v259 = 136446722;
      swift_beginAccess();
      v261 = StaticString.description.getter();
      v492 = v257;
      v263 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v261, v262, v522);

      *(v259 + 4) = v263;
      *(v259 + 12) = 2082;
      *(v259 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);
      *(v259 + 22) = 2080;

      v264 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v248._countAndFlagsBits, v248._object, v522);

      *(v259 + 24) = v264;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_21607C000, v254, v255, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v259, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v260, -1, -1);
      MEMORY[0x21CE94770](v259, -1, -1);

      v265 = *(v258 + 8);
      v265(v492, v519);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v265 = *(v258 + 8);
      v265(v257, v519);
    }

    *(v0 + 2112) = v265;
    v269 = *(v0 + 1968);
    v270 = *(v0 + 1960);
    v271 = *(v0 + 928);
    v272 = *(v0 + 840) + *(v0 + 1976);
    v273 = *(v272 + 8);
    outlined init with copy of CloudDevice(*(v0 + 936), v271, type metadata accessor for CloudDevice);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v522[0] = v273;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v271, v270, v269, isUniquelyReferenced_nonNull_native);

    *(v272 + 8) = v522[0];

    CloudDevicesDB.persistLocalData()();
    if (v275)
    {
      v506(*(v0 + 1632), v252, *(v0 + 1616));
      v276 = v275;
      v277 = v275;
      v278 = Logger.logObject.getter();
      v279 = static os_log_type_t.error.getter();
      v280 = os_log_type_enabled(v278, v279);
      v281 = *(v0 + 1928);
      v282 = *(v0 + 1632);
      v283 = *(v0 + 1616);
      v284 = *(v0 + 936);
      if (v280)
      {
        v493 = *(v0 + 1616);
        v285 = swift_slowAlloc();
        v486 = v282;
        v286 = swift_slowAlloc();
        v522[0] = swift_slowAlloc();
        v287 = v522[0];
        *v285 = 136446722;
        swift_beginAccess();
        v288 = StaticString.description.getter();
        v482 = v284;
        v290 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v288, v289, v522);

        *(v285 + 4) = v290;
        *(v285 + 12) = 2082;
        *(v285 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);
        *(v285 + 22) = 2112;
        v291 = v275;
        v292 = _swift_stdlib_bridgeErrorToNSError();
        *(v285 + 24) = v292;
        *v286 = v292;

        _os_log_impl(&dword_21607C000, v278, v279, "%{public}s.%{public}s Failed to persist local data: %@", v285, 0x20u);
        outlined destroy of UTType?(v286, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v286, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v287, -1, -1);
        MEMORY[0x21CE94770](v285, -1, -1);

        v265(v486, v493);
        outlined destroy of CloudDevice(v482, type metadata accessor for CloudDevice);
      }

      else
      {

        v265(v282, v283);
        outlined destroy of CloudDevice(v284, type metadata accessor for CloudDevice);
      }

      outlined destroy of UTType?(v281, &_s9MomentsUI11CloudDeviceVSgMd);
      v310 = (v0 + 1936);
      goto LABEL_150;
    }

    v293 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v294 = *v293;
    *(v0 + 2120) = *v293;
    if (v294)
    {
      v295 = *(v0 + 936);
      v520 = v293[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
      v514 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v296 = *(v514 - 8);
      v297 = (*(v296 + 80) + 32) & ~*(v296 + 80);
      v298 = swift_allocObject();
      *(v0 + 2128) = v298;
      *(v298 + 16) = xmmword_21658CA50;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
      v299 = *v295;
      v300 = v295[1];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
      v301 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v303 = v302;
      swift_unknownObjectRetain();

      v304._countAndFlagsBits = 0x73656369766544;
      v304._object = 0xE700000000000000;
      v305._countAndFlagsBits = v301;
      v305._object = v303;
      v306 = CKRecordZoneID.init(zoneName:ownerName:)(v304, v305).super.isa;
      v307._countAndFlagsBits = v299;
      v307._object = v300;
      *(v298 + v297) = CKRecordID.init(recordName:zoneID:)(v307, v306);
      (*(v296 + 104))(v298 + v297, *MEMORY[0x277CBBC68], v514);
      ObjectType = swift_getObjectType();
      v309 = swift_task_alloc();
      *(v0 + 2136) = v309;
      *v309 = v0;
      v309[1] = CloudDevicesDB.checkDB(forceUpdate:);

      return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v298, 0xD000000000000015, 0x8000000216583B60, 1653, ObjectType, v520);
    }

    v228 = *(v0 + 1928);
    v361 = *(v0 + 936);

    outlined destroy of CloudDevice(v361, type metadata accessor for CloudDevice);
  }

  outlined destroy of UTType?(v228, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(*(v0 + 1936), &_s9MomentsUI11CloudDeviceVSgMd);
  CloudDevicesDB.primaryDevice.getter(*(v0 + 1800));
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v229 = *(v0 + 1800);
  v230 = *(v0 + 1792);
  v231 = *(v0 + 1656);
  v232 = *(v0 + 1624);
  v233 = *(v0 + 1616);
  v234 = __swift_project_value_buffer(v233, static CloudDevicesDB.Log);
  swift_beginAccess();
  v513 = v234;
  v505 = *(v232 + 16);
  v505(v231, v234, v233);
  outlined init with copy of DateInterval?(v229, v230, &_s9MomentsUI11CloudDeviceVSgMd);
  v235 = Logger.logObject.getter();
  v236 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v235, v236))
  {
    v491 = *(v0 + 2000);
    v237 = *(v0 + 1792);
    v238 = *(v0 + 1784);
    v239 = *(v0 + 888);
    v240 = swift_slowAlloc();
    v498 = swift_slowAlloc();
    v522[0] = v498;
    *v240 = 136446722;
    swift_beginAccess();
    v241 = StaticString.description.getter();
    v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v242, v522);

    *(v240 + 4) = v243;
    *(v240 + 12) = 2082;
    *(v240 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);
    *(v240 + 22) = 2080;
    outlined init with copy of DateInterval?(v237, v238, &_s9MomentsUI11CloudDeviceVSgMd);
    v244 = v491(v238, 1, v239);
    v245 = *(v0 + 1784);
    if (v244 == 1)
    {
      outlined destroy of UTType?(*(v0 + 1784), &_s9MomentsUI11CloudDeviceVSgMd);
      v246 = 0xE500000000000000;
      v247 = 0x3E6C696E3CLL;
    }

    else
    {
      v247 = *v245;
      v246 = v245[1];

      outlined destroy of CloudDevice(v245, type metadata accessor for CloudDevice);
    }

    v311 = *(v0 + 1792);
    v312 = *(v0 + 1656);
    v313 = *(v0 + 1624);
    v314 = *(v0 + 1616);
    v315 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v247, v246, v522);

    *(v240 + 24) = v315;
    outlined destroy of UTType?(v311, &_s9MomentsUI11CloudDeviceVSgMd);
    _os_log_impl(&dword_21607C000, v235, v236, "%{public}s.%{public}s newPrimary = %s", v240, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v498, -1, -1);
    MEMORY[0x21CE94770](v240, -1, -1);

    v499 = *(v313 + 8);
    v499(v312, v314);
  }

  else
  {
    v266 = *(v0 + 1656);
    v267 = *(v0 + 1624);
    v268 = *(v0 + 1616);
    outlined destroy of UTType?(*(v0 + 1792), &_s9MomentsUI11CloudDeviceVSgMd);

    v499 = *(v267 + 8);
    v499(v266, v268);
  }

  v316 = *(v0 + 2000);
  v317 = *(v0 + 1800);
  v318 = *(v0 + 1776);
  v319 = *(v0 + 888);
  v320 = *(v0 + 864);
  v321 = *(v0 + 856);

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v318);
  v322 = *(v321 + 48);
  outlined init with copy of DateInterval?(v318, v320, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v317, v320 + v322, &_s9MomentsUI11CloudDeviceVSgMd);
  v323 = v316(v320, 1, v319);
  v324 = *(v0 + 2000);
  if (v323 == 1)
  {
    v325 = *(v0 + 888);
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd);
    if (v324(v320 + v322, 1, v325) == 1)
    {
      outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_131:
      v333 = *(v0 + 1648);
      v334 = *(v0 + 1616);

      v336 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v335);

      v505(v333, v513, v334);
      swift_bridgeObjectRetain_n();
      v337 = Logger.logObject.getter();
      v338 = static os_log_type_t.debug.getter();
      v339 = os_log_type_enabled(v337, v338);
      v340 = *(v0 + 1648);
      v341 = *(v0 + 1616);
      if (v339)
      {
        v487 = *(v0 + 888);
        v342 = swift_slowAlloc();
        v343 = swift_slowAlloc();
        v522[0] = v343;
        *v342 = 136446722;
        v494 = v340;
        swift_beginAccess();
        v344 = StaticString.description.getter();
        v346 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v344, v345, v522);

        *(v342 + 4) = v346;
        *(v342 + 12) = 2082;
        *(v342 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);
        *(v342 + 22) = 2080;

        v348 = MEMORY[0x21CE922B0](v347, v487);
        v350 = v349;

        v351 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v348, v350, v522);

        *(v342 + 24) = v351;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v337, v338, "%{public}s.%{public}s newlyOnboarded = %s", v342, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v343, -1, -1);
        MEMORY[0x21CE94770](v342, -1, -1);

        v352 = v494;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v352 = v340;
      }

      v499(v352, v341);
      *(v0 + 832) = v336;

      CurrentValueSubject.send(_:)();

      goto LABEL_135;
    }

    goto LABEL_129;
  }

  v326 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 864), *(v0 + 1768), &_s9MomentsUI11CloudDeviceVSgMd);
  v327 = v324(v320 + v322, 1, v326);
  v328 = *(v0 + 1776);
  v329 = *(v0 + 1768);
  if (v327 == 1)
  {
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v329, type metadata accessor for CloudDevice);
LABEL_129:
    outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    goto LABEL_135;
  }

  v330 = *(v0 + 928);
  v331 = *(v0 + 864);
  outlined init with take of CloudDevice(v320 + v322, v330, type metadata accessor for CloudDevice);
  v332 = specialized static CloudDevice.== infix(_:_:)(v329, v330);
  outlined destroy of CloudDevice(v330, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v328, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of CloudDevice(v329, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v331, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v332)
  {
    goto LABEL_131;
  }

LABEL_135:
  v310 = (v0 + 1800);
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_150:
    outlined destroy of UTType?(*v310, &_s9MomentsUI11CloudDeviceVSgMd);
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, *(v0 + 848), &protocol witness table for CloudDevicesDB);

    v381 = *(v0 + 8);

    return v381();
  }

  v353 = *(v0 + 2000);
  v354 = *(v0 + 1760);
  v355 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1800), v354, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v353(v354, 1, v355) == 1)
  {
    outlined destroy of UTType?(*v310, &_s9MomentsUI11CloudDeviceVSgMd);
    v310 = (v0 + 1760);
    goto LABEL_150;
  }

  v356 = *(v0 + 904);
  v357 = *(v0 + 888);
  outlined init with take of CloudDevice(*(v0 + 1760), v356, type metadata accessor for CloudDevice);
  v358 = (v356 + *(v357 + 108));
  if (v358[1])
  {
    v359 = *v358;
    v360 = v358[1];
  }

  else
  {
    v362 = *(v0 + 904);
    v359 = *v362;
    v360 = v362[1];
  }

  *(v0 + 2152) = v360;
  *(v0 + 2144) = v359;
  v505(*(v0 + 1640), v513, *(v0 + 1616));
  swift_bridgeObjectRetain_n();

  v363 = Logger.logObject.getter();
  v364 = static os_log_type_t.error.getter();
  v365 = os_log_type_enabled(v363, v364);
  v366 = *(v0 + 1640);
  v367 = *(v0 + 1616);
  if (v365)
  {
    v521 = *(v0 + 1616);
    v368 = swift_slowAlloc();
    v369 = swift_slowAlloc();
    v522[0] = v369;
    *v368 = 136446722;
    swift_beginAccess();
    v370 = StaticString.description.getter();
    v507 = v366;
    v372 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v370, v371, v522);

    *(v368 + 4) = v372;
    *(v368 + 12) = 2082;
    *(v368 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v522);
    *(v368 + 22) = 2080;

    v373 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v360, v522);

    *(v368 + 24) = v373;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v363, v364, "%{public}s.%{public}s generation: %s", v368, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v369, -1, -1);
    MEMORY[0x21CE94770](v368, -1, -1);

    v374 = v507;
    v375 = v521;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v374 = v366;
    v375 = v367;
  }

  v499(v374, v375);
  v376 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v377 = *v376;
  *(v0 + 2160) = *v376;
  if (!v377)
  {

    outlined destroy of CloudDevice(*(v0 + 904), type metadata accessor for CloudDevice);
    goto LABEL_150;
  }

  v378 = v376[1];
  *(v0 + 2168) = v378;
  *(v0 + 2176) = swift_getObjectType();
  *(v0 + 2184) = *(v378 + 144);
  *(v0 + 2192) = (v378 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v380 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v380, v379);
}

{
  v1 = *(*v0 + 840);

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  v531 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = v0[215];
  v2 = v0[203];
  v3 = v0[202];
  v4 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[241];
  v9 = v0[215];
  v10 = v0[203];
  v11 = v0[202];
  if (v7)
  {
    v523 = v0[241];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v530[0] = v13;
    *v12 = 136446466;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v530);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);
    _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Device environment changed", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
    v17 = v523;
  }

  else
  {

    (*(v10 + 8))(v9, v11);
    v17 = v8;
  }

  outlined destroy of UTType?(v17, &_s9MomentsUI11CloudDeviceVSgMd);
  v18 = v0[248];
  v19 = v0[241];
  v20 = v0[111];
  outlined init with take of CloudDevice(v0[124], v19, type metadata accessor for CloudDevice);
  v18(v19, 0, 1, v20);
  v21 = v0[250];
  v22 = v0[235];
  v23 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v22, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v21(v22, 1, v23) == 1)
  {
    v24 = v0[250];
    v25 = v0[235];
    v26 = v0[111];
    outlined init with copy of DateInterval?(v0[242], v0[236], &_s9MomentsUI11CloudDeviceVSgMd);
    if (v24(v25, 1, v26) != 1)
    {
      outlined destroy of UTType?(v0[235], &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v27 = v0[248];
    v28 = v0[236];
    v29 = v0[111];
    outlined init with take of CloudDevice(v0[235], v28, type metadata accessor for CloudDevice);
    v27(v28, 0, 1, v29);
  }

  v30 = v0[236];
  if ((v0[250])(v30, 1, v0[111]) == 1)
  {
    outlined destroy of UTType?(v30, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_32;
  }

  v31 = v0[105];
  outlined init with take of CloudDevice(v30, v0[123], type metadata accessor for CloudDevice);
  v32 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = v0[123];
  if (v33 != 2)
  {
    if ((CloudDevice.onboarded.getter() ^ v33))
    {
      if (v33)
      {
        v35 = v0[142];
        v36 = v0[130];
        v37 = v0[129];
        v38 = v0[123];
        v39 = v0[111];
        static Date.now.getter();
        v40 = *(v39 + 80);
        outlined destroy of UTType?(v38 + v40, &_s10Foundation4DateVSgMd);
        (*(v36 + 16))(v38 + v40, v35, v37);
        (*(v36 + 56))(v38 + v40, 0, 1, v37);
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v41 = v0 + 142;
        v42 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
LABEL_18:
          v43 = *v41;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v45 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
          [v42 setValue:isa forKey:v45];

LABEL_25:
          (*(v0[130] + 8))(v43, v0[129]);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v51 = v0[214];
          v52 = v0[203];
          v53 = v0[202];
          v54 = __swift_project_value_buffer(v53, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v52 + 16))(v51, v54, v53);
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.info.getter();
          v57 = os_log_type_enabled(v55, v56);
          v58 = v0[241];
          v59 = v0[214];
          v60 = v0[203];
          v61 = v0[202];
          if (v57)
          {
            v524 = v0[214];
            v62 = swift_slowAlloc();
            v516 = v58;
            v63 = swift_slowAlloc();
            v530[0] = v63;
            *v62 = 136446722;
            swift_beginAccess();
            v64 = StaticString.description.getter();
            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v530);

            *(v62 + 4) = v66;
            *(v62 + 12) = 2082;
            *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);
            *(v62 + 22) = 1024;
            *(v62 + 24) = v33 & 1;
            _os_log_impl(&dword_21607C000, v55, v56, "%{public}s.%{public}s Updating onboarding state to %{BOOL}d", v62, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v63, -1, -1);
            MEMORY[0x21CE94770](v62, -1, -1);

            (*(v60 + 8))(v524, v61);
            v67 = v516;
          }

          else
          {

            (*(v60 + 8))(v59, v61);
            v67 = v58;
          }

          outlined destroy of UTType?(v67, &_s9MomentsUI11CloudDeviceVSgMd);
          v68 = v0[248];
          v69 = v0[241];
          v70 = v0[123];
          v71 = v0[111];
          outlined init with copy of CloudDevice(v70, v69, type metadata accessor for CloudDevice);
          v68(v69, 0, 1, v71);
          v34 = v70;
          goto LABEL_31;
        }
      }

      else
      {
        v46 = v0[175];
        v47 = v0[130];
        v48 = v0[129];
        v49 = v0[123];
        v50 = v0[111];
        static Date.distantPast.getter();
        (*(v47 + 56))(v46, 0, 1, v48);
        outlined assign with take of Date?(v46, v49 + *(v50 + 80));
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v41 = v0 + 141;
        v42 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
          goto LABEL_18;
        }
      }

      v43 = *v41;
      goto LABEL_25;
    }

    v34 = v0[123];
  }

LABEL_31:
  outlined destroy of CloudDevice(v34, type metadata accessor for CloudDevice);
LABEL_32:
  v72 = v0[250];
  v73 = v0[233];
  v74 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v73, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v72(v73, 1, v74) == 1)
  {
    v75 = v0[250];
    v76 = v0[233];
    v77 = v0[111];
    outlined init with copy of DateInterval?(v0[242], v0[234], &_s9MomentsUI11CloudDeviceVSgMd);
    if (v75(v76, 1, v77) != 1)
    {
      outlined destroy of UTType?(v0[233], &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v78 = v0[248];
    v79 = v0[234];
    v80 = v0[111];
    outlined init with take of CloudDevice(v0[233], v79, type metadata accessor for CloudDevice);
    v78(v79, 0, 1, v80);
  }

  v81 = v0[234];
  v82 = v0[111];
  if ((v0[250])(v81, 1, v82) == 1)
  {
    outlined destroy of UTType?(v81, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_86;
  }

  v83 = v0[122];
  outlined init with take of CloudDevice(v81, v83, type metadata accessor for CloudDevice);
  v84 = (v83 + *(v82 + 68));
  v85 = v84[1];
  if (v85)
  {
    v517 = (v83 + *(v82 + 68));
    v525 = v84[1];
    v86 = *v84;
    if (*v84)
    {
      v87 = 0;
    }

    else
    {
      v87 = v85 == 0xE000000000000000;
    }

    v88 = v87;
    if (v87 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v502 = v88;
      v508 = v86;
      v89 = v0[174];
      v90 = v0[130];
      v91 = v0[129];
      v92 = v0[122];
      v93 = v0[110];
      v94 = v0[109];
      v95 = *(v0[111] + 72);

      static Date.distantPast.getter();
      (*(v90 + 56))(v89, 0, 1, v91);
      v96 = *(v94 + 48);
      outlined init with copy of DateInterval?(v92 + v95, v93, &_s10Foundation4DateVSgMd);
      outlined init with copy of DateInterval?(v89, v93 + v96, &_s10Foundation4DateVSgMd);
      v97 = *(v90 + 48);
      if (v97(v93, 1, v91) == 1)
      {
        v98 = v0[129];
        outlined destroy of UTType?(v0[174], &_s10Foundation4DateVSgMd);
        if (v97(v93 + v96, 1, v98) == 1)
        {
          v99 = v0[110];

          v100 = &_s10Foundation4DateVSgMd;
LABEL_50:
          outlined destroy of UTType?(v99, v100);
          goto LABEL_85;
        }

        goto LABEL_53;
      }

      v101 = v0[129];
      outlined init with copy of DateInterval?(v0[110], v0[173], &_s10Foundation4DateVSgMd);
      v102 = v97(v93 + v96, 1, v101);
      v103 = v0[174];
      v104 = v0[173];
      if (v102 == 1)
      {
        v105 = v0[130];
        v106 = v0[129];
        outlined destroy of UTType?(v0[174], &_s10Foundation4DateVSgMd);
        (*(v105 + 8))(v104, v106);
LABEL_53:
        outlined destroy of UTType?(v0[110], &_s10Foundation4DateVSg_ADtMd);
        v85 = v525;
        v86 = v508;
        goto LABEL_56;
      }

      v107 = v0[155];
      v108 = v0[130];
      v109 = v0[129];
      v495 = v0[110];
      (*(v108 + 32))(v107, v93 + v96, v109);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v110 = dispatch thunk of static Equatable.== infix(_:_:)();
      v111 = *(v108 + 8);
      v111(v107, v109);
      outlined destroy of UTType?(v103, &_s10Foundation4DateVSgMd);
      v111(v104, v109);
      outlined destroy of UTType?(v495, &_s10Foundation4DateVSgMd);
      v85 = v525;
      v86 = v508;
      v88 = v502;
      if (v110)
      {
LABEL_84:

        goto LABEL_85;
      }
    }

    else
    {
    }

LABEL_56:
    v112 = v0[250];
    v113 = v0[232];
    v114 = v0[111];
    v115 = v0[105] + v0[247];
    static Date.now.getter();
    v116 = *(v115 + 8);

    specialized Dictionary.subscript.getter(v86, v85, v116, v113);

    LODWORD(v114) = v112(v113, 1, v114);
    outlined destroy of UTType?(v113, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v114 == 1)
    {
      v117 = v0[175];
      v118 = v0[140];
      v119 = v0[130];
      v120 = v0[129];
      v121 = v0[122];
      v122 = v0[111];
      v123 = *(v122 + 28);
      outlined destroy of UTType?(v121 + v123, &_s10Foundation4DateVSgMd);
      (*(v119 + 16))(v121 + v123, v118, v120);
      v124 = *(v119 + 56);
      v124(v121 + v123, 0, 1, v120);

      *v517 = xmmword_21658F9D0;
      static Date.distantPast.getter();
      v124(v117, 0, 1, v120);
      outlined assign with take of Date?(v117, v121 + *(v122 + 72));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v125 = v0[213];
      v126 = v0[203];
      v127 = v0[202];
      v128 = __swift_project_value_buffer(v127, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v126 + 16))(v125, v128, v127);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.info.getter();
      v131 = os_log_type_enabled(v129, v130);
      v132 = v0[241];
      v133 = v0[213];
      v134 = v0[203];
      v135 = v0[202];
      v136 = v0[140];
      v137 = v0[130];
      v138 = v0[129];
      if (v131)
      {
        v518 = v0[202];
        v139 = swift_slowAlloc();
        v509 = v136;
        v140 = swift_slowAlloc();
        v530[0] = v140;
        *v139 = 136446466;
        swift_beginAccess();
        v141 = StaticString.description.getter();
        v496 = v132;
        v143 = v133;
        v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v530);

        *(v139 + 4) = v144;
        *(v139 + 12) = 2082;
        *(v139 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);

        _os_log_impl(&dword_21607C000, v129, v130, "%{public}s.%{public}s Cleanup invalid nomination", v139, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v140, -1, -1);
        MEMORY[0x21CE94770](v139, -1, -1);

        (*(v134 + 8))(v143, v518);
        (*(v137 + 8))(v509, v138);
        v145 = v496;
LABEL_67:
        outlined destroy of UTType?(v145, &_s9MomentsUI11CloudDeviceVSgMd);
        v151 = v0[248];
        v152 = v0[241];
        v153 = v0[111];
        outlined init with copy of CloudDevice(v0[122], v152, type metadata accessor for CloudDevice);
        v151(v152, 0, 1, v153);
        goto LABEL_85;
      }

      (*(v134 + 8))(v133, v135);
      (*(v137 + 8))(v136, v138);
LABEL_66:
      v145 = v132;
      goto LABEL_67;
    }

    if (v88)
    {
      goto LABEL_83;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v146 = v0[250];
      v147 = v0[231];
      v148 = v0[111];
      CloudDevicesDB.primaryDevice.getter(v147);
      v149 = v146(v147, 1, v148);
      v150 = v0[231];
      if (v149 == 1)
      {
        outlined destroy of UTType?(v150, &_s9MomentsUI11CloudDeviceVSgMd);
      }

      else
      {
        v154 = v86;
        v155 = v0[172];
        v156 = v0[130];
        v157 = v0[129];
        v158 = v0[121];
        v159 = v0[111];
        outlined init with take of CloudDevice(v150, v158, type metadata accessor for CloudDevice);
        outlined init with copy of DateInterval?(v158 + *(v159 + 56), v155, &_s10Foundation4DateVSgMd);
        v160 = *(v156 + 48);
        v161 = v160(v155, 1, v157);
        v162 = v0[172];
        if (v161 == 1)
        {
          v163 = v0[129];
          static Date.distantPast.getter();
          if (v160(v162, 1, v163) != 1)
          {
            outlined destroy of UTType?(v0[172], &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          (*(v0[130] + 32))(v0[139], v0[172], v0[129]);
        }

        v164 = v0[171];
        v165 = v0[129];
        v166 = *(v0[111] + 72);
        v510 = v0[122];
        outlined init with copy of DateInterval?(v510 + v166, v164, &_s10Foundation4DateVSgMd);
        v167 = v160(v164, 1, v165);
        v168 = v0[171];
        if (v167 == 1)
        {
          v169 = v0[129];
          static Date.distantPast.getter();
          if (v160(v168, 1, v169) != 1)
          {
            outlined destroy of UTType?(v0[171], &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          (*(v0[130] + 32))(v0[138], v0[171], v0[129]);
        }

        v170 = v0[139];
        v171 = v0[138];
        v172 = v0[130];
        v173 = v0[129];
        v174 = static Date.> infix(_:_:)();
        v175 = *(v172 + 8);
        v175(v171, v173);
        v175(v170, v173);
        if (v174)
        {
          v503 = v175;
          v176 = v0[175];
          v177 = v0[140];
          v178 = v0[130];
          v179 = v0[129];
          v180 = v0[122];
          v181 = *(v0[111] + 28);
          outlined destroy of UTType?(v180 + v181, &_s10Foundation4DateVSgMd);
          (*(v178 + 16))(v180 + v181, v177, v179);
          v182 = *(v178 + 56);
          v182(v180 + v181, 0, 1, v179);

          *v517 = xmmword_21658F9D0;
          static Date.distantPast.getter();
          v182(v176, 0, 1, v179);
          outlined assign with take of Date?(v176, v510 + v166);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v183 = v0[212];
          v184 = v0[203];
          v185 = v0[202];
          v186 = __swift_project_value_buffer(v185, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v184 + 16))(v183, v186, v185);
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.info.getter();
          v189 = os_log_type_enabled(v187, v188);
          v132 = v0[241];
          v190 = v0[212];
          v191 = v0[203];
          v519 = v0[202];
          v192 = v0[140];
          v193 = v0[129];
          v194 = v0[121];
          if (!v189)
          {

            (*(v191 + 8))(v190, v519);
            outlined destroy of CloudDevice(v194, type metadata accessor for CloudDevice);
            v503(v192, v193);
            goto LABEL_66;
          }

          v511 = v0[129];
          v195 = swift_slowAlloc();
          v530[0] = swift_slowAlloc();
          v490 = v192;
          v196 = v530[0];
          *v195 = 136446466;
          swift_beginAccess();
          v197 = StaticString.description.getter();
          v492 = v132;
          v199 = v190;
          v200 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v198, v530);

          *(v195 + 4) = v200;
          *(v195 + 12) = 2082;
          *(v195 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);

          _os_log_impl(&dword_21607C000, v187, v188, "%{public}s.%{public}s Cleanup stale nomination", v195, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v196, -1, -1);
          MEMORY[0x21CE94770](v195, -1, -1);

          (*(v191 + 8))(v199, v519);
          outlined destroy of CloudDevice(v194, type metadata accessor for CloudDevice);
          v503(v490, v511);
          goto LABEL_180;
        }

        outlined destroy of CloudDevice(v0[121], type metadata accessor for CloudDevice);
        v86 = v154;
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_83:
      (*(v0[130] + 8))(v0[140], v0[129]);
      goto LABEL_84;
    }

    v393 = v0[250];
    v394 = v0[230];
    v395 = v0[111];
    v396 = *(v0[105] + v0[247] + 8);

    specialized Dictionary.subscript.getter(v86, v85, v396, v394);

    v397 = v393(v394, 1, v395);
    v99 = v0[230];
    if (v397 == 1)
    {
      (*(v0[130] + 8))(v0[140], v0[129]);

      v100 = &_s9MomentsUI11CloudDeviceVSgMd;
      goto LABEL_50;
    }

    v406 = v0[170];
    v407 = v0[130];
    v408 = v0[129];
    v409 = v0[120];
    v410 = v0[111];
    outlined init with take of CloudDevice(v0[230], v409, type metadata accessor for CloudDevice);
    outlined init with copy of DateInterval?(v409 + *(v410 + 64), v406, &_s10Foundation4DateVSgMd);
    v411 = *(v407 + 48);
    v412 = v411(v406, 1, v408);
    v413 = v0[170];
    if (v412 == 1)
    {
      v414 = v0[129];
      static Date.distantPast.getter();
      if (v411(v413, 1, v414) != 1)
      {
        outlined destroy of UTType?(v0[170], &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(v0[130] + 32))(v0[137], v0[170], v0[129]);
    }

    v436 = v0[169];
    v437 = v0[129];
    v438 = v0[122];
    v439 = *(v0[111] + 72);
    outlined init with copy of DateInterval?(v438 + v439, v436, &_s10Foundation4DateVSgMd);
    v440 = v411(v436, 1, v437);
    v441 = v0[169];
    if (v440 == 1)
    {
      v442 = v0[129];
      static Date.distantPast.getter();
      if (v411(v441, 1, v442) != 1)
      {
        outlined destroy of UTType?(v0[169], &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(v0[130] + 32))(v0[136], v0[169], v0[129]);
    }

    v443 = v0[137];
    v444 = v0[136];
    v445 = v0[130];
    v446 = v0[129];
    v447 = static Date.> infix(_:_:)();
    v448 = *(v445 + 8);
    v448(v444, v446);
    v448(v443, v446);
    if ((v447 & 1) == 0)
    {
      v474 = v0[140];
      v475 = v0[129];
      v476 = v0[120];

      outlined destroy of CloudDevice(v476, type metadata accessor for CloudDevice);
      v448(v474, v475);
      goto LABEL_85;
    }

    v515 = v448;
    v449 = v0[175];
    v450 = v0[140];
    v451 = v0[130];
    v452 = v0[129];
    v453 = v0[122];
    v454 = *(v0[111] + 28);
    outlined destroy of UTType?(v453 + v454, &_s10Foundation4DateVSgMd);
    (*(v451 + 16))(v453 + v454, v450, v452);
    v455 = *(v451 + 56);
    v455(v453 + v454, 0, 1, v452);

    *v517 = xmmword_21658F9D0;
    static Date.distantPast.getter();
    v455(v449, 0, 1, v452);
    outlined assign with take of Date?(v449, v438 + v439);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v456 = v0[211];
    v457 = v0[203];
    v458 = v0[202];
    v459 = __swift_project_value_buffer(v458, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v457 + 16))(v456, v459, v458);
    v460 = Logger.logObject.getter();
    v461 = static os_log_type_t.info.getter();
    v462 = os_log_type_enabled(v460, v461);
    v132 = v0[241];
    v463 = v0[211];
    v464 = v0[203];
    v522 = v0[202];
    v465 = v0[140];
    v466 = v0[129];
    v467 = v0[120];
    if (!v462)
    {

      (*(v464 + 8))(v463, v522);
      outlined destroy of CloudDevice(v467, type metadata accessor for CloudDevice);
      v515(v465, v466);
      goto LABEL_66;
    }

    v507 = v0[129];
    v468 = swift_slowAlloc();
    v530[0] = swift_slowAlloc();
    v491 = v465;
    v469 = v530[0];
    *v468 = 136446466;
    swift_beginAccess();
    v470 = StaticString.description.getter();
    v492 = v132;
    v472 = v463;
    v473 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v470, v471, v530);

    *(v468 + 4) = v473;
    *(v468 + 12) = 2082;
    *(v468 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);

    _os_log_impl(&dword_21607C000, v460, v461, "%{public}s.%{public}s Cleanup stale nomination", v468, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v469, -1, -1);
    MEMORY[0x21CE94770](v468, -1, -1);

    (*(v464 + 8))(v472, v522);
    outlined destroy of CloudDevice(v467, type metadata accessor for CloudDevice);
    v515(v491, v507);
LABEL_180:
    v145 = v492;
    goto LABEL_67;
  }

LABEL_85:
  outlined destroy of CloudDevice(v0[122], type metadata accessor for CloudDevice);
LABEL_86:
  v201 = v0[250];
  v202 = v0[228];
  v203 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v202, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v201(v202, 1, v203) == 1)
  {
    v204 = v0[250];
    v205 = v0[228];
    v206 = v0[111];
    outlined init with copy of DateInterval?(v0[242], v0[229], &_s9MomentsUI11CloudDeviceVSgMd);
    if (v204(v205, 1, v206) != 1)
    {
      outlined destroy of UTType?(v0[228], &_s9MomentsUI11CloudDeviceVSgMd);
    }
  }

  else
  {
    v207 = v0[248];
    v208 = v0[229];
    v209 = v0[111];
    outlined init with take of CloudDevice(v0[228], v208, type metadata accessor for CloudDevice);
    v207(v208, 0, 1, v209);
  }

  v210 = v0[229];
  v211 = v0[111];
  if ((v0[250])(v210, 1, v211) == 1)
  {
    outlined destroy of UTType?(v210, &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_100;
  }

  v212 = v0[168];
  v213 = v0[130];
  v214 = v0[129];
  v215 = v0[119];
  outlined init with take of CloudDevice(v210, v215, type metadata accessor for CloudDevice);
  v216 = *(v211 + 56);
  outlined init with copy of DateInterval?(v215 + v216, v212, &_s10Foundation4DateVSgMd);
  v217 = *(v213 + 48);
  if (v217(v212, 1, v214) == 1)
  {
    v218 = v0[119];
    outlined destroy of UTType?(v0[168], &_s10Foundation4DateVSgMd);
LABEL_98:
    v230 = v218;
    goto LABEL_99;
  }

  v497 = v216;
  v504 = v215;
  v219 = v0[155];
  v220 = v0[130];
  v221 = v0[129];
  v526 = *(v220 + 32);
  v526(v0[135], v0[168], v221);
  static Date.distantPast.getter();
  v222 = static Date.> infix(_:_:)();
  v223 = *(v220 + 8);
  v223(v219, v221);
  if ((v222 & 1) == 0)
  {
    v218 = v0[119];
    v223(v0[135], v0[129]);
    goto LABEL_98;
  }

  v224 = v0[250];
  v225 = v0[227];
  v226 = v0[111];
  CloudDevicesDB.primaryDevice.getter(v225);
  v227 = v224(v225, 1, v226);
  v228 = v0[227];
  if (v227 != 1)
  {
    v389 = v0[119];
    v390 = v0[118];
    outlined init with take of CloudDevice(v0[227], v390, type metadata accessor for CloudDevice);
    if (*v390 == *v389 && v390[1] == v389[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v391 = v0[119];
      v392 = v0[118];
      v223(v0[135], v0[129]);
      outlined destroy of CloudDevice(v392, type metadata accessor for CloudDevice);
      v230 = v391;
      goto LABEL_99;
    }

    v398 = v0[167];
    v399 = v0[129];
    v400 = v0[118];
    static Date.now.getter();
    outlined init with copy of DateInterval?(v400 + *(v211 + 56), v398, &_s10Foundation4DateVSgMd);
    v401 = v217(v398, 1, v399);
    v402 = v0[167];
    if (v401 == 1)
    {
      v403 = v0[135];
      v404 = v0[129];
      v405 = v0[118];
      v223(v0[134], v404);
      v223(v403, v404);
      outlined destroy of CloudDevice(v405, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v402, &_s10Foundation4DateVSgMd);
LABEL_190:
      v230 = v0[119];
      goto LABEL_99;
    }

    v415 = v0[155];
    v416 = v0[129];
    v526(v0[133], v0[167], v416);
    static Date.distantPast.getter();
    v417 = static Date.> infix(_:_:)();
    v418 = v416;
    v419 = v223;
    v223(v415, v418);
    if (v417)
    {
      Date.timeIntervalSince(_:)();
      if (v420 > 86400.0)
      {
        v421 = v0[248];
        v422 = v0[241];
        v423 = v0[175];
        v424 = v0[130];
        v425 = v0[129];
        v426 = v0[119];
        v427 = v0[111];
        static Date.distantPast.getter();
        v428 = *(v424 + 56);
        v428(v423, 0, 1, v425);
        outlined assign with take of Date?(v423, v504 + v497);
        static Date.distantPast.getter();
        outlined destroy of UTType?(v422, &_s9MomentsUI11CloudDeviceVSgMd);
        v428(v423, 0, 1, v425);
        outlined assign with take of Date?(v423, v426 + *(v427 + 64));
        outlined init with copy of CloudDevice(v426, v422, type metadata accessor for CloudDevice);
        v421(v422, 0, 1, v427);
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v429 = static DefaultsManager.momentsUI;
        v430 = v0[132];
        v431 = v0[129];
        if (static DefaultsManager.momentsUI)
        {
          v432 = Date._bridgeToObjectiveC()().super.isa;
          v433 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
          [v429 setValue:v432 forKey:v433];

          v223(v430, v431);
          static Date.distantPast.getter();
          v434 = Date._bridgeToObjectiveC()().super.isa;
          v435 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
          [v429 setValue:v434 forKey:v435];
        }

        else
        {
          v223(v430, v431);
          static Date.distantPast.getter();
        }

        v484 = v0[135];
        v485 = v0[134];
        v486 = v0[133];
        v487 = v0[129];
        v488 = v0[118];
        v223(v0[131], v487);
        v223(v486, v487);
        v223(v485, v487);
        v223(v484, v487);
        v483 = v488;
        goto LABEL_189;
      }

      v477 = v0[135];
      v478 = v0[134];
      v479 = v0[133];
      v480 = v0[129];
      v481 = v0[118];
      v482 = v480;
      v419 = v223;
    }

    else
    {
      v477 = v0[135];
      v478 = v0[134];
      v479 = v0[133];
      v480 = v0[129];
      v481 = v0[118];
      v482 = v480;
    }

    v419(v479, v482);
    v419(v478, v480);
    v419(v477, v480);
    v483 = v481;
LABEL_189:
    outlined destroy of CloudDevice(v483, type metadata accessor for CloudDevice);
    goto LABEL_190;
  }

  v229 = v0[119];
  v223(v0[135], v0[129]);
  outlined destroy of UTType?(v228, &_s9MomentsUI11CloudDeviceVSgMd);
  v230 = v229;
LABEL_99:
  outlined destroy of CloudDevice(v230, type metadata accessor for CloudDevice);
LABEL_100:
  v231 = v0[250];
  v232 = v0[226];
  v233 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v232, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v231(v232, 1, v233) == 1)
  {
    v234 = v0[226];
    outlined destroy of UTType?(v0[241], &_s9MomentsUI11CloudDeviceVSgMd);
  }

  else
  {
    outlined init with take of CloudDevice(v0[226], v0[117], type metadata accessor for CloudDevice);
    v254 = CloudDevice.description()();
    v0[260] = v254._object;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v255 = v0[210];
    v256 = v0[203];
    v257 = v0[202];
    v258 = __swift_project_value_buffer(v257, static CloudDevicesDB.Log);
    v0[261] = v258;
    swift_beginAccess();
    v259 = *(v256 + 16);
    v0[262] = v259;
    v0[263] = (v256 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v513 = v259;
    v259(v255, v258, v257);
    swift_bridgeObjectRetain_n();
    v260 = Logger.logObject.getter();
    v261 = static os_log_type_t.debug.getter();
    v262 = os_log_type_enabled(v260, v261);
    v263 = v0[210];
    v264 = v0[203];
    v527 = v0[202];
    if (v262)
    {
      v265 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      v530[0] = v266;
      *v265 = 136446722;
      swift_beginAccess();
      v267 = StaticString.description.getter();
      v499 = v263;
      v269 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v267, v268, v530);

      *(v265 + 4) = v269;
      *(v265 + 12) = 2082;
      *(v265 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);
      *(v265 + 22) = 2080;

      v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v254._countAndFlagsBits, v254._object, v530);

      *(v265 + 24) = v270;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_21607C000, v260, v261, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v265, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v266, -1, -1);
      MEMORY[0x21CE94770](v265, -1, -1);

      v271 = *(v264 + 8);
      v271(v499, v527);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v271 = *(v264 + 8);
      v271(v263, v527);
    }

    v0[264] = v271;
    v275 = v0[246];
    v276 = v0[245];
    v277 = v0[116];
    v278 = v0[105] + v0[247];
    v279 = *(v278 + 8);
    outlined init with copy of CloudDevice(v0[117], v277, type metadata accessor for CloudDevice);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v530[0] = v279;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v277, v276, v275, isUniquelyReferenced_nonNull_native);

    *(v278 + 8) = v530[0];

    CloudDevicesDB.persistLocalData()();
    if (v281)
    {
      v513(v0[204], v258, v0[202]);
      v282 = v281;
      v283 = v281;
      v284 = Logger.logObject.getter();
      v285 = static os_log_type_t.error.getter();
      v286 = os_log_type_enabled(v284, v285);
      v287 = v0[241];
      v288 = v0[204];
      v289 = v0[202];
      v290 = v0[117];
      if (v286)
      {
        v500 = v0[202];
        v291 = swift_slowAlloc();
        v493 = v288;
        v292 = swift_slowAlloc();
        v530[0] = swift_slowAlloc();
        v293 = v530[0];
        *v291 = 136446722;
        swift_beginAccess();
        v294 = StaticString.description.getter();
        v489 = v290;
        v296 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v294, v295, v530);

        *(v291 + 4) = v296;
        *(v291 + 12) = 2082;
        *(v291 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);
        *(v291 + 22) = 2112;
        v297 = v281;
        v298 = _swift_stdlib_bridgeErrorToNSError();
        *(v291 + 24) = v298;
        *v292 = v298;

        _os_log_impl(&dword_21607C000, v284, v285, "%{public}s.%{public}s Failed to persist local data: %@", v291, 0x20u);
        outlined destroy of UTType?(v292, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v292, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v293, -1, -1);
        MEMORY[0x21CE94770](v291, -1, -1);

        v271(v493, v500);
        outlined destroy of CloudDevice(v489, type metadata accessor for CloudDevice);
      }

      else
      {

        v271(v288, v289);
        outlined destroy of CloudDevice(v290, type metadata accessor for CloudDevice);
      }

      outlined destroy of UTType?(v287, &_s9MomentsUI11CloudDeviceVSgMd);
      v317 = v0 + 242;
      goto LABEL_150;
    }

    v299 = (v0[105] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v300 = *v299;
    v0[265] = *v299;
    if (v300)
    {
      v301 = v0[117];
      v528 = v299[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
      v521 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v302 = *(v521 - 8);
      v303 = (*(v302 + 80) + 32) & ~*(v302 + 80);
      v304 = swift_allocObject();
      v0[266] = v304;
      *(v304 + 16) = xmmword_21658CA50;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
      v305 = *v301;
      v306 = v301[1];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
      v307 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v309 = v308;
      swift_unknownObjectRetain();

      v310._countAndFlagsBits = 0x73656369766544;
      v310._object = 0xE700000000000000;
      v311._countAndFlagsBits = v307;
      v311._object = v309;
      v312 = CKRecordZoneID.init(zoneName:ownerName:)(v310, v311).super.isa;
      v313._countAndFlagsBits = v305;
      v313._object = v306;
      *(v304 + v303) = CKRecordID.init(recordName:zoneID:)(v313, v312);
      (*(v302 + 104))(v304 + v303, *MEMORY[0x277CBBC68], v521);
      ObjectType = swift_getObjectType();
      v315 = swift_task_alloc();
      v0[267] = v315;
      *v315 = v0;
      v315[1] = CloudDevicesDB.checkDB(forceUpdate:);

      return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v304, 0xD000000000000015, 0x8000000216583B60, 1653, ObjectType, v528);
    }

    v234 = v0[241];
    v368 = v0[117];

    outlined destroy of CloudDevice(v368, type metadata accessor for CloudDevice);
  }

  outlined destroy of UTType?(v234, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(v0[242], &_s9MomentsUI11CloudDeviceVSgMd);
  CloudDevicesDB.primaryDevice.getter(v0[225]);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v235 = v0[225];
  v236 = v0[224];
  v237 = v0[207];
  v238 = v0[203];
  v239 = v0[202];
  v240 = __swift_project_value_buffer(v239, static CloudDevicesDB.Log);
  swift_beginAccess();
  v520 = v240;
  v512 = *(v238 + 16);
  v512(v237, v240, v239);
  outlined init with copy of DateInterval?(v235, v236, &_s9MomentsUI11CloudDeviceVSgMd);
  v241 = Logger.logObject.getter();
  v242 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v241, v242))
  {
    v498 = v0[250];
    v243 = v0[224];
    v244 = v0[223];
    v245 = v0[111];
    v246 = swift_slowAlloc();
    v505 = swift_slowAlloc();
    v530[0] = v505;
    *v246 = 136446722;
    swift_beginAccess();
    v247 = StaticString.description.getter();
    v249 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v247, v248, v530);

    *(v246 + 4) = v249;
    *(v246 + 12) = 2082;
    *(v246 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);
    *(v246 + 22) = 2080;
    outlined init with copy of DateInterval?(v243, v244, &_s9MomentsUI11CloudDeviceVSgMd);
    v250 = v498(v244, 1, v245);
    v251 = v0[223];
    if (v250 == 1)
    {
      outlined destroy of UTType?(v0[223], &_s9MomentsUI11CloudDeviceVSgMd);
      v252 = 0xE500000000000000;
      v253 = 0x3E6C696E3CLL;
    }

    else
    {
      v253 = *v251;
      v252 = v251[1];

      outlined destroy of CloudDevice(v251, type metadata accessor for CloudDevice);
    }

    v318 = v0[224];
    v319 = v0[207];
    v320 = v0[203];
    v321 = v0[202];
    v322 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v253, v252, v530);

    *(v246 + 24) = v322;
    outlined destroy of UTType?(v318, &_s9MomentsUI11CloudDeviceVSgMd);
    _os_log_impl(&dword_21607C000, v241, v242, "%{public}s.%{public}s newPrimary = %s", v246, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v505, -1, -1);
    MEMORY[0x21CE94770](v246, -1, -1);

    v506 = *(v320 + 8);
    v506(v319, v321);
  }

  else
  {
    v272 = v0[207];
    v273 = v0[203];
    v274 = v0[202];
    outlined destroy of UTType?(v0[224], &_s9MomentsUI11CloudDeviceVSgMd);

    v506 = *(v273 + 8);
    v506(v272, v274);
  }

  v323 = v0[250];
  v324 = v0[225];
  v325 = v0[222];
  v326 = v0[111];
  v327 = v0[108];
  v328 = v0[107];

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v325);
  v329 = *(v328 + 48);
  outlined init with copy of DateInterval?(v325, v327, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v324, v327 + v329, &_s9MomentsUI11CloudDeviceVSgMd);
  v330 = v323(v327, 1, v326);
  v331 = v0[250];
  if (v330 == 1)
  {
    v332 = v0[111];
    outlined destroy of UTType?(v0[222], &_s9MomentsUI11CloudDeviceVSgMd);
    if (v331(v327 + v329, 1, v332) == 1)
    {
      outlined destroy of UTType?(v0[108], &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_131:
      v340 = v0[206];
      v341 = v0[202];

      v343 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v342);

      v512(v340, v520, v341);
      swift_bridgeObjectRetain_n();
      v344 = Logger.logObject.getter();
      v345 = static os_log_type_t.debug.getter();
      v346 = os_log_type_enabled(v344, v345);
      v347 = v0[206];
      v348 = v0[202];
      if (v346)
      {
        v494 = v0[111];
        v349 = swift_slowAlloc();
        v350 = swift_slowAlloc();
        v530[0] = v350;
        *v349 = 136446722;
        v501 = v347;
        swift_beginAccess();
        v351 = StaticString.description.getter();
        v353 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v351, v352, v530);

        *(v349 + 4) = v353;
        *(v349 + 12) = 2082;
        *(v349 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);
        *(v349 + 22) = 2080;

        v355 = MEMORY[0x21CE922B0](v354, v494);
        v357 = v356;

        v358 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v355, v357, v530);

        *(v349 + 24) = v358;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v344, v345, "%{public}s.%{public}s newlyOnboarded = %s", v349, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v350, -1, -1);
        MEMORY[0x21CE94770](v349, -1, -1);

        v359 = v501;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v359 = v347;
      }

      v506(v359, v348);
      v0[104] = v343;

      CurrentValueSubject.send(_:)();

      goto LABEL_135;
    }

    goto LABEL_129;
  }

  v333 = v0[111];
  outlined init with copy of DateInterval?(v0[108], v0[221], &_s9MomentsUI11CloudDeviceVSgMd);
  v334 = v331(v327 + v329, 1, v333);
  v335 = v0[222];
  v336 = v0[221];
  if (v334 == 1)
  {
    outlined destroy of UTType?(v0[222], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v336, type metadata accessor for CloudDevice);
LABEL_129:
    outlined destroy of UTType?(v0[108], &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    goto LABEL_135;
  }

  v337 = v0[116];
  v338 = v0[108];
  outlined init with take of CloudDevice(v327 + v329, v337, type metadata accessor for CloudDevice);
  v339 = specialized static CloudDevice.== infix(_:_:)(v336, v337);
  outlined destroy of CloudDevice(v337, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v335, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of CloudDevice(v336, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v338, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v339)
  {
    goto LABEL_131;
  }

LABEL_135:
  v317 = v0 + 225;
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_150:
    outlined destroy of UTType?(*v317, &_s9MomentsUI11CloudDeviceVSgMd);
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, v0[106], &protocol witness table for CloudDevicesDB);

    v388 = v0[1];

    return v388();
  }

  v360 = v0[250];
  v361 = v0[220];
  v362 = v0[111];
  outlined init with copy of DateInterval?(v0[225], v361, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v360(v361, 1, v362) == 1)
  {
    outlined destroy of UTType?(*v317, &_s9MomentsUI11CloudDeviceVSgMd);
    v317 = v0 + 220;
    goto LABEL_150;
  }

  v363 = v0[113];
  v364 = v0[111];
  outlined init with take of CloudDevice(v0[220], v363, type metadata accessor for CloudDevice);
  v365 = (v363 + *(v364 + 108));
  if (v365[1])
  {
    v366 = *v365;
    v367 = v365[1];
  }

  else
  {
    v369 = v0[113];
    v366 = *v369;
    v367 = v369[1];
  }

  v0[269] = v367;
  v0[268] = v366;
  v512(v0[205], v520, v0[202]);
  swift_bridgeObjectRetain_n();

  v370 = Logger.logObject.getter();
  v371 = static os_log_type_t.error.getter();
  v372 = os_log_type_enabled(v370, v371);
  v373 = v0[205];
  v374 = v0[202];
  if (v372)
  {
    v529 = v0[202];
    v375 = swift_slowAlloc();
    v376 = swift_slowAlloc();
    v530[0] = v376;
    *v375 = 136446722;
    swift_beginAccess();
    v377 = StaticString.description.getter();
    v514 = v373;
    v379 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v377, v378, v530);

    *(v375 + 4) = v379;
    *(v375 + 12) = 2082;
    *(v375 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v530);
    *(v375 + 22) = 2080;

    v380 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v366, v367, v530);

    *(v375 + 24) = v380;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v370, v371, "%{public}s.%{public}s generation: %s", v375, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v376, -1, -1);
    MEMORY[0x21CE94770](v375, -1, -1);

    v381 = v514;
    v382 = v529;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v381 = v373;
    v382 = v374;
  }

  v506(v381, v382);
  v383 = (v0[105] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v384 = *v383;
  v0[270] = *v383;
  if (!v384)
  {

    outlined destroy of CloudDevice(v0[113], type metadata accessor for CloudDevice);
    goto LABEL_150;
  }

  v385 = v383[1];
  v0[271] = v385;
  v0[272] = swift_getObjectType();
  v0[273] = *(v385 + 144);
  v0[274] = (v385 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v387 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v387, v386);
}

{
  v1 = *(*v0 + 840);

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  v146 = v0;
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 936);
  if (*(v0 + 2200) == 1)
  {
    v5 = *(v0 + 920);
    v1(*(v0 + 1672), v2, v3);
    outlined init with copy of CloudDevice(v4, v5, type metadata accessor for CloudDevice);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2112);
    v10 = *(v0 + 1928);
    v141 = *(v0 + 1616);
    v143 = *(v0 + 1672);
    v11 = *(v0 + 936);
    v12 = *(v0 + 920);
    if (v8)
    {
      v129 = *(v0 + 888);
      v133 = *(v0 + 1928);
      v13 = swift_slowAlloc();
      v132 = v9;
      v14 = swift_slowAlloc();
      v145[0] = v14;
      *v13 = 136446722;
      v131 = v11;
      swift_beginAccess();
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v145);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
      *(v13 + 22) = 2080;
      v18 = (v12 + *(v129 + 32));
      v19 = v18[1];
      if (v19)
      {
        v20 = *v18;
      }

      else
      {
        v20 = 0x6E776F6E6B6E55;
      }

      if (v19)
      {
        v21 = v18[1];
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v145);

      *(v13 + 24) = v22;

      outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
      v23 = "%{public}s.%{public}s Created new local device record: %s";
LABEL_18:
      _os_log_impl(&dword_21607C000, v6, v7, v23, v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);

      swift_unknownObjectRelease();
      v132(v143, v141);
      outlined destroy of CloudDevice(v131, type metadata accessor for CloudDevice);
      v34 = v133;
      goto LABEL_20;
    }
  }

  else
  {
    v24 = *(v0 + 912);
    v1(*(v0 + 1664), v2, v3);
    outlined init with copy of CloudDevice(v4, v24, type metadata accessor for CloudDevice);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2112);
    v10 = *(v0 + 1928);
    v141 = *(v0 + 1616);
    v143 = *(v0 + 1664);
    v11 = *(v0 + 936);
    v12 = *(v0 + 912);
    if (v25)
    {
      v130 = *(v0 + 888);
      v133 = *(v0 + 1928);
      v13 = swift_slowAlloc();
      v132 = v9;
      v14 = swift_slowAlloc();
      v145[0] = v14;
      *v13 = 136446722;
      v131 = v11;
      swift_beginAccess();
      v26 = StaticString.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v145);

      *(v13 + 4) = v28;
      *(v13 + 12) = 2082;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
      *(v13 + 22) = 2080;
      v29 = (v12 + *(v130 + 32));
      v30 = v29[1];
      if (v30)
      {
        v31 = *v29;
      }

      else
      {
        v31 = 0x6E776F6E6B6E55;
      }

      if (v30)
      {
        v32 = v29[1];
      }

      else
      {
        v32 = 0xE700000000000000;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v145);

      *(v13 + 24) = v33;

      outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
      v23 = "%{public}s.%{public}s Updated new local device record: %s";
      goto LABEL_18;
    }
  }

  swift_unknownObjectRelease();
  outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);

  v9(v143, v141);
  outlined destroy of CloudDevice(v11, type metadata accessor for CloudDevice);
  v34 = v10;
LABEL_20:
  outlined destroy of UTType?(v34, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(*(v0 + 1936), &_s9MomentsUI11CloudDeviceVSgMd);
  CloudDevicesDB.primaryDevice.getter(*(v0 + 1800));
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1800);
  v36 = *(v0 + 1792);
  v37 = *(v0 + 1656);
  v38 = *(v0 + 1624);
  v39 = *(v0 + 1616);
  v40 = __swift_project_value_buffer(v39, static CloudDevicesDB.Log);
  swift_beginAccess();
  v142 = v40;
  v139 = *(v38 + 16);
  v139(v37, v40, v39);
  outlined init with copy of DateInterval?(v35, v36, &_s9MomentsUI11CloudDeviceVSgMd);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v135 = *(v0 + 2000);
    v43 = *(v0 + 1792);
    v44 = *(v0 + 1784);
    v45 = *(v0 + 888);
    v46 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v145[0] = v137;
    *v46 = 136446722;
    swift_beginAccess();
    v47 = StaticString.description.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v145);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2082;
    *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
    *(v46 + 22) = 2080;
    outlined init with copy of DateInterval?(v43, v44, &_s9MomentsUI11CloudDeviceVSgMd);
    v50 = v135(v44, 1, v45);
    v51 = *(v0 + 1784);
    if (v50 == 1)
    {
      outlined destroy of UTType?(*(v0 + 1784), &_s9MomentsUI11CloudDeviceVSgMd);
      v52 = 0xE500000000000000;
      v53 = 0x3E6C696E3CLL;
    }

    else
    {
      v53 = *v51;
      v52 = v51[1];

      outlined destroy of CloudDevice(v51, type metadata accessor for CloudDevice);
    }

    v57 = *(v0 + 1792);
    v58 = *(v0 + 1656);
    v59 = *(v0 + 1624);
    v60 = *(v0 + 1616);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, v145);

    *(v46 + 24) = v61;
    outlined destroy of UTType?(v57, &_s9MomentsUI11CloudDeviceVSgMd);
    _os_log_impl(&dword_21607C000, v41, v42, "%{public}s.%{public}s newPrimary = %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v137, -1, -1);
    MEMORY[0x21CE94770](v46, -1, -1);

    v138 = *(v59 + 8);
    v138(v58, v60);
  }

  else
  {
    v54 = *(v0 + 1656);
    v55 = *(v0 + 1624);
    v56 = *(v0 + 1616);
    outlined destroy of UTType?(*(v0 + 1792), &_s9MomentsUI11CloudDeviceVSgMd);

    v138 = *(v55 + 8);
    v138(v54, v56);
  }

  v62 = *(v0 + 2000);
  v63 = *(v0 + 1800);
  v64 = *(v0 + 1776);
  v65 = *(v0 + 888);
  v66 = *(v0 + 864);
  v67 = *(v0 + 856);

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v64);
  v68 = *(v67 + 48);
  outlined init with copy of DateInterval?(v64, v66, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v63, v66 + v68, &_s9MomentsUI11CloudDeviceVSgMd);
  v69 = v62(v66, 1, v65);
  v70 = *(v0 + 2000);
  if (v69 != 1)
  {
    v72 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 864), *(v0 + 1768), &_s9MomentsUI11CloudDeviceVSgMd);
    v73 = v70(v66 + v68, 1, v72);
    v74 = *(v0 + 1776);
    v75 = *(v0 + 1768);
    if (v73 != 1)
    {
      v76 = *(v0 + 928);
      v77 = *(v0 + 864);
      outlined init with take of CloudDevice(v66 + v68, v76, type metadata accessor for CloudDevice);
      v78 = specialized static CloudDevice.== infix(_:_:)(v75, v76);
      outlined destroy of CloudDevice(v76, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v74, &_s9MomentsUI11CloudDeviceVSgMd);
      outlined destroy of CloudDevice(v75, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v77, &_s9MomentsUI11CloudDeviceVSgMd);
      if ((v78 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v75, type metadata accessor for CloudDevice);
LABEL_33:
    outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    goto LABEL_39;
  }

  v71 = *(v0 + 888);
  outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd);
  if (v70(v66 + v68, 1, v71) != 1)
  {
    goto LABEL_33;
  }

  outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_35:
  v79 = *(v0 + 1648);
  v80 = *(v0 + 1616);

  v82 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v81);

  v139(v79, v142, v80);
  swift_bridgeObjectRetain_n();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = *(v0 + 1648);
  v87 = *(v0 + 1616);
  if (v85)
  {
    v134 = *(v0 + 888);
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v145[0] = v89;
    *v88 = 136446722;
    v136 = v86;
    swift_beginAccess();
    v90 = StaticString.description.getter();
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v145);

    *(v88 + 4) = v92;
    *(v88 + 12) = 2082;
    *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
    *(v88 + 22) = 2080;

    v94 = MEMORY[0x21CE922B0](v93, v134);
    v96 = v95;

    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v145);

    *(v88 + 24) = v97;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v83, v84, "%{public}s.%{public}s newlyOnboarded = %s", v88, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v89, -1, -1);
    MEMORY[0x21CE94770](v88, -1, -1);

    v98 = v136;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v98 = v86;
  }

  v138(v98, v87);
  *(v0 + 832) = v82;

  CurrentValueSubject.send(_:)();

LABEL_39:
  v99 = (v0 + 1800);
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_53:
    outlined destroy of UTType?(*v99, &_s9MomentsUI11CloudDeviceVSgMd);
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, *(v0 + 848), &protocol witness table for CloudDevicesDB);

    v127 = *(v0 + 8);

    return v127();
  }

  v100 = *(v0 + 2000);
  v101 = *(v0 + 1760);
  v102 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1800), v101, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v100(v101, 1, v102) == 1)
  {
    outlined destroy of UTType?(*v99, &_s9MomentsUI11CloudDeviceVSgMd);
    v99 = (v0 + 1760);
    goto LABEL_53;
  }

  v103 = *(v0 + 904);
  v104 = *(v0 + 888);
  outlined init with take of CloudDevice(*(v0 + 1760), v103, type metadata accessor for CloudDevice);
  v105 = (v103 + *(v104 + 108));
  if (v105[1])
  {
    v106 = *v105;
    v107 = v105[1];
  }

  else
  {
    v108 = *(v0 + 904);
    v106 = *v108;
    v107 = v108[1];
  }

  *(v0 + 2152) = v107;
  *(v0 + 2144) = v106;
  v139(*(v0 + 1640), v142, *(v0 + 1616));
  swift_bridgeObjectRetain_n();

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();
  v111 = os_log_type_enabled(v109, v110);
  v112 = *(v0 + 1640);
  v113 = *(v0 + 1616);
  if (v111)
  {
    v144 = *(v0 + 1616);
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v145[0] = v115;
    *v114 = 136446722;
    swift_beginAccess();
    v116 = StaticString.description.getter();
    v140 = v112;
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v145);

    *(v114 + 4) = v118;
    *(v114 + 12) = 2082;
    *(v114 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
    *(v114 + 22) = 2080;

    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v145);

    *(v114 + 24) = v119;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v109, v110, "%{public}s.%{public}s generation: %s", v114, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v115, -1, -1);
    MEMORY[0x21CE94770](v114, -1, -1);

    v120 = v140;
    v121 = v144;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v120 = v112;
    v121 = v113;
  }

  v138(v120, v121);
  v122 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v123 = *v122;
  *(v0 + 2160) = *v122;
  if (!v123)
  {

    outlined destroy of CloudDevice(*(v0 + 904), type metadata accessor for CloudDevice);
    goto LABEL_53;
  }

  v124 = v122[1];
  *(v0 + 2168) = v124;
  *(v0 + 2176) = swift_getObjectType();
  *(v0 + 2184) = *(v124 + 144);
  *(v0 + 2192) = (v124 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v126 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v126, v125);
}

{
  v1 = *(v0 + 840);
  (*(v0 + 2184))(*(v0 + 2144), *(v0 + 2152), *(v0 + 2176), *(v0 + 2168));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  outlined destroy of CloudDevice(v0[113], type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v0[225], &_s9MomentsUI11CloudDeviceVSgMd);
  static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, v0[106], &protocol witness table for CloudDevicesDB);

  v1 = v0[1];

  return v1();
}