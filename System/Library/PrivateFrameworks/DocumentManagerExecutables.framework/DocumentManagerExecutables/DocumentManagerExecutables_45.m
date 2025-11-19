unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64726177726F66;
    }

    else
    {
      v6 = 1801675106;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x64726177726F66 : 1801675106;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x637241656C707061;
    }

    else
    {
      v6 = 7367034;
    }

    if (a1)
    {
      v7 = 0xEC00000065766968;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x637241656C707061 : 7367034;
      v9 = *(*(v2 + 48) + v4) ? 0xEC00000065766968 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    do
    {
      v12 = (*(v5 + 48) + 32 * v7);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      if (v14 <= 3)
      {
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            if (a2 != 2)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 2;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 2uLL);

            outlined consume of ColumnType(v13, 2uLL);
            v17 = 2;
          }

          else
          {
            if (a2 != 3)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 3;
LABEL_4:
              outlined consume of ColumnType(v10, v11);
              outlined consume of ColumnType(a1, a2);
              goto LABEL_5;
            }

            outlined copy of ColumnType(*v12, 3uLL);

            outlined consume of ColumnType(v13, 3uLL);
            v17 = 3;
          }

          goto LABEL_51;
        }

        if (!v14)
        {
          if (a2)
          {
            outlined copy of ColumnType(a1, a2);
            v10 = v13;
            v11 = 0;
            goto LABEL_4;
          }

          outlined copy of ColumnType(*v12, 0);

          outlined consume of ColumnType(v13, 0);
          v17 = 0;
          goto LABEL_51;
        }

        if (v14 == 1)
        {
          if (a2 != 1)
          {
            outlined copy of ColumnType(a1, a2);
            v10 = v13;
            v11 = 1;
            goto LABEL_4;
          }

          outlined copy of ColumnType(*v12, 1uLL);

          outlined consume of ColumnType(v13, 1uLL);
          v17 = 1;
          goto LABEL_51;
        }
      }

      else
      {
        if (v14 <= 5)
        {
          if (v14 == 4)
          {
            if (a2 != 4)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 4;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 4uLL);

            outlined consume of ColumnType(v13, 4uLL);
            v17 = 4;
          }

          else
          {
            if (a2 != 5)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 5;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 5uLL);

            outlined consume of ColumnType(v13, 5uLL);
            v17 = 5;
          }

          goto LABEL_51;
        }

        switch(v14)
        {
          case 6:
            if (a2 != 6)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 6;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 6uLL);

            outlined consume of ColumnType(v13, 6uLL);
            v17 = 6;
            goto LABEL_51;
          case 7:
            if (a2 != 7)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 7;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 7uLL);

            outlined consume of ColumnType(v13, 7uLL);
            v17 = 7;
            goto LABEL_51;
          case 8:
            if (a2 != 8)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 8;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 8uLL);

            outlined consume of ColumnType(v13, 8uLL);
            v17 = 8;
            goto LABEL_51;
        }
      }

      if (a2 < 9)
      {
        outlined copy of ColumnType(a1, a2);
        outlined copy of ColumnType(v13, v14);
        v10 = v13;
        v11 = v14;
        goto LABEL_4;
      }

      if (v13 != a1 || v14 != a2)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of ColumnType(v13, v14);

        outlined copy of ColumnType(a1, a2);
        outlined copy of ColumnType(v13, v14);
        outlined consume of ColumnType(v13, v14);
        outlined consume of ColumnType(a1, a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

      outlined copy of ColumnType(a1, a2);

      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(a1, a2);
      outlined consume of ColumnType(a1, a2);
      v17 = a2;
LABEL_51:
      outlined consume of ColumnType(a1, v17);
LABEL_52:
      if ((_sSh2eeoiySbShyxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v15, a3) & 1) == 0)
      {
LABEL_55:
        outlined consume of ColumnType(v13, v14);

        goto LABEL_5;
      }

      v20 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(v16, a4);
      outlined consume of ColumnType(v13, v14);

      if (v20)
      {
        return v7;
      }

LABEL_5:
      v7 = (v7 + 1) & v24;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type DOCDeviceModel and conformance DOCDeviceModel()
{
  result = lazy protocol witness table cache variable for type DOCDeviceModel and conformance DOCDeviceModel;
  if (!lazy protocol witness table cache variable for type DOCDeviceModel and conformance DOCDeviceModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDeviceModel and conformance DOCDeviceModel);
  }

  return result;
}

id DOCPreviewLogHandle()
{
  v0 = MEMORY[0x277D062D0];
  v1 = *MEMORY[0x277D062D0];
  if (!*MEMORY[0x277D062D0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCSidebarLogHandle()
{
  v0 = MEMORY[0x277D062E8];
  v1 = *MEMORY[0x277D062E8];
  if (!*MEMORY[0x277D062E8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCAppIntentsLogHandle()
{
  v0 = MEMORY[0x277D06288];
  v1 = *MEMORY[0x277D06288];
  if (!*MEMORY[0x277D06288])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCFileProviderSyncStateLogHandle()
{
  v0 = MEMORY[0x277D062B0];
  v1 = *MEMORY[0x277D062B0];
  if (!*MEMORY[0x277D062B0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCEnumerationLogHandle()
{
  v0 = MEMORY[0x277D062A8];
  v1 = *MEMORY[0x277D062A8];
  if (!*MEMORY[0x277D062A8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCProgressUILogHandle()
{
  v0 = MEMORY[0x277D062D8];
  v1 = *MEMORY[0x277D062D8];
  if (!*MEMORY[0x277D062D8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCApplicationLogHandle()
{
  v0 = MEMORY[0x277D06290];
  v1 = *MEMORY[0x277D06290];
  if (!*MEMORY[0x277D06290])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCAnalyticsLogHandle()
{
  v0 = MEMORY[0x277D06280];
  v1 = *MEMORY[0x277D06280];
  if (!*MEMORY[0x277D06280])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCStateStoreLogHandle()
{
  v0 = MEMORY[0x277D06300];
  v1 = *MEMORY[0x277D06300];
  if (!*MEMORY[0x277D06300])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCDownloadServiceLogHandle()
{
  v0 = MEMORY[0x277D062A0];
  v1 = *MEMORY[0x277D062A0];
  if (!*MEMORY[0x277D062A0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCTestsLogHandle()
{
  v0 = MEMORY[0x277D06308];
  v1 = *MEMORY[0x277D06308];
  if (!*MEMORY[0x277D06308])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCBrowserHistoryLogHandle()
{
  v0 = MEMORY[0x277D06298];
  v1 = *MEMORY[0x277D06298];
  if (!*MEMORY[0x277D06298])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCRenameLogHandle()
{
  v0 = MEMORY[0x277D062E0];
  v1 = *MEMORY[0x277D062E0];
  if (!*MEMORY[0x277D062E0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCPickerLogHandle()
{
  v0 = MEMORY[0x277D062C8];
  v1 = *MEMORY[0x277D062C8];
  if (!*MEMORY[0x277D062C8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCPersonaLogHandle()
{
  v0 = MEMORY[0x277D062C0];
  v1 = *MEMORY[0x277D062C0];
  if (!*MEMORY[0x277D062C0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

uint64_t specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(char a1, char a2, char a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x24C1FAEA0](0xD000000000000032, 0x8000000249BE9940);
    _StringGuts.grow(_:)(26);

    MEMORY[0x24C1FAEA0](*(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason), *(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason + 8));
    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BCD290);

    if (a2)
    {
      if (one-time initialization token for _isAttachedInDebugger != -1)
      {
        swift_once();
      }

      if (_isAttachedInDebugger)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.UI);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v22[0] = v12;
          *v11 = 136315138;
          v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v22);

          *(v11 + 4) = v13;
          v14 = "Skipping DOCGuardAssert() while attached in debugger: %s";
LABEL_16:
          _os_log_impl(&dword_2493AC000, v9, v10, v14, v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x24C1FE850](v12, -1, -1);
          MEMORY[0x24C1FE850](v11, -1, -1);
LABEL_24:

          return a1 & 1;
        }

        goto LABEL_23;
      }
    }

    if ((a3 & 1) != 0 && DOCIsRunningUnitTests()())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.UI);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22[0] = v12;
        *v11 = 136315138;
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v22);

        *(v11 + 4) = v16;
        v14 = "Skipping DOCGuardAssert() while unit-testing: %s";
        goto LABEL_16;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (!DOCIsInternalBuild())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.UI);

      v9 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v9, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v22);
        _os_log_impl(&dword_2493AC000, v9, v18, "assertion failure: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x24C1FE850](v20, -1, -1);
        MEMORY[0x24C1FE850](v19, -1, -1);
      }

      goto LABEL_23;
    }
  }

  return a1 & 1;
}

uint64_t specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    _StringGuts.grow(_:)(26);

    MEMORY[0x24C1FAEA0](*(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason), *(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason + 8));
    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BCD290);

    MEMORY[0x24C1FAEA0](0xD000000000000016, 0x8000000249BE9980);
    MEMORY[0x24C1FAEA0](a5, a6);
    MEMORY[0x24C1FAEA0](0xD000000000000026, 0x8000000249BE99A0);
    if (a2)
    {
      if (one-time initialization token for _isAttachedInDebugger != -1)
      {
        swift_once();
      }

      if (_isAttachedInDebugger)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.UI);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v26[0] = v16;
          *v15 = 136315138;
          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v26);

          *(v15 + 4) = v17;
          v18 = "Skipping DOCGuardAssert() while attached in debugger: %s";
LABEL_16:
          _os_log_impl(&dword_2493AC000, v13, v14, v18, v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x24C1FE850](v16, -1, -1);
          MEMORY[0x24C1FE850](v15, -1, -1);
LABEL_24:

          return a1 & 1;
        }

        goto LABEL_23;
      }
    }

    if ((a3 & 1) != 0 && DOCIsRunningUnitTests()())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26[0] = v16;
        *v15 = 136315138;
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v26);

        *(v15 + 4) = v20;
        v18 = "Skipping DOCGuardAssert() while unit-testing: %s";
        goto LABEL_16;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (!DOCIsInternalBuild())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.UI);

      v13 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v13, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v26);
        _os_log_impl(&dword_2493AC000, v13, v22, "assertion failure: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C1FE850](v24, -1, -1);
        MEMORY[0x24C1FE850](v23, -1, -1);
      }

      goto LABEL_23;
    }
  }

  return a1 & 1;
}

uint64_t specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(char a1, char a2, char a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v45 - v16;
  if ((a1 & 1) == 0)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    v48 = v46;
    v49 = v47;
    MEMORY[0x24C1FAEA0](0xD00000000000004DLL, 0x8000000249BE98D0);
    v18 = [a4 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    MEMORY[0x24C1FAEA0](v19, v21);

    MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BE9920);
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(a5 + v22, v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
    v23 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (v25(v13, 1, v23) == 1)
    {
      v26 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      outlined init with copy of DOCGridLayout.Spec?(a5 + v26, v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      if (v25(v13, 1, v23) != 1)
      {
        outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      }
    }

    else
    {
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v13, v17);
      (*(v24 + 56))(v17, 0, 1, v23);
    }

    if (v25(v17, 1, v23) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
      v27 = 0;
    }

    else
    {
      v27 = *&v17[*(v23 + 28)];

      outlined destroy of DOCHierarchyController.FetchingOperationToken(v17);
    }

    v45[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19DOCConcreteLocationCGSgMd);
    v28 = String.init<A>(describing:)();
    MEMORY[0x24C1FAEA0](v28);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v30 = v48;
    v29 = v49;
    if (a2)
    {
      if (one-time initialization token for _isAttachedInDebugger != -1)
      {
        swift_once();
      }

      if (_isAttachedInDebugger)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.UI);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v48 = v35;
          *v34 = 136315138;
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v48);

          *(v34 + 4) = v36;
          v37 = "Skipping DOCGuardAssert() while attached in debugger: %s";
LABEL_23:
          _os_log_impl(&dword_2493AC000, v32, v33, v37, v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x24C1FE850](v35, -1, -1);
          MEMORY[0x24C1FE850](v34, -1, -1);
LABEL_31:

          return a1 & 1;
        }

        goto LABEL_30;
      }
    }

    if ((a3 & 1) != 0 && DOCIsRunningUnitTests()())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.UI);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v48 = v35;
        *v34 = 136315138;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v48);

        *(v34 + 4) = v39;
        v37 = "Skipping DOCGuardAssert() while unit-testing: %s";
        goto LABEL_23;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (!DOCIsInternalBuild())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.UI);

      v32 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v42 = 136315138;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v48);
        _os_log_impl(&dword_2493AC000, v32, v41, "assertion failure: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v42, -1, -1);
      }

      goto LABEL_30;
    }
  }

  return a1 & 1;
}

unint64_t DOCDisplayMode.analyticsViewMode.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a2 = 0x3020201u >> (8 * result);
  }

  return result;
}

uint64_t static DOCViewStyleSelectorAXIdentifier.identifier(for:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = off_278FA5020[a1];
    [objc_opt_self() viewStyleSelector];
    swift_getObjCClassMetadata();
    v2 = [swift_getObjCClassFromMetadata() *v1];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  return result;
}

uint64_t DOCDisplayMode.image.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_8;
    }

    if (a1 == 3)
    {
      v2 = 0x8000000249BE99D0;
      v1 = 0xD000000000000013;
      goto LABEL_9;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = 0x672E657261757173;
      v2 = 0xEF3278322E646972;
LABEL_9:
      v3 = MEMORY[0x24C1FAD20](v1, v2);
      v4 = [objc_opt_self() systemImageNamed_];

      return v4;
    }

    if (a1 == 1)
    {
LABEL_8:
      v1 = 0x6C75622E7473696CLL;
      v2 = 0xEB0000000074656CLL;
      goto LABEL_9;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCDisplayMode.title.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v11 = _DocumentManagerBundle();
        if (v11)
        {
          v2 = v11;
          v14 = 0x8000000249BE9A50;
          v3 = 0x736E6D756C6F43;
          v4 = 0x617A696C61636F4CLL;
          v5 = 0xEB00000000656C62;
          v10 = 0xD000000000000028;
          v6 = 0xE700000000000000;
          v7.super.isa = v2;
          v8 = 0;
          v9 = 0xE000000000000000;
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

    a1 = _DocumentManagerBundle();
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!a1)
  {
    v1 = _DocumentManagerBundle();
    if (v1)
    {
      v2 = v1;
      v14 = 0x8000000249BE9A20;
      v3 = 0x736E6F6349;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xE500000000000000;
      v7.super.isa = v2;
      v8 = 0;
      v9 = 0xE000000000000000;
LABEL_11:
      v10 = 0xD000000000000026;
LABEL_15:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v7, *&v8, *(&v14 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (a1 == 1)
  {
    a1 = _DocumentManagerBundle();
    if (!a1)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_10:
    v2 = a1;
    v14 = 0x8000000249BE99F0;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v3 = 1953720652;
    v6 = 0xE400000000000000;
    v7.super.isa = v2;
    v8 = 1953720652;
    v9 = 0xE400000000000000;
    goto LABEL_11;
  }

LABEL_19:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCDisplayMode.canDisplay(_:)(DOCConcreteLocation *a1)
{
  v2 = v1;
  v3 = [(DOCConcreteLocation *)a1 fileProviderItem];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isFolder];

    v6 = v2 == 3;
    if (v2 < 3)
    {
LABEL_3:
      v7 = (v5 == 2) | v5;
      return v7 & 1;
    }
  }

  else
  {
    v5 = 2;
    v6 = v2 == 3;
    if (v2 < 3)
    {
      goto LABEL_3;
    }
  }

  if (!v6)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t DOCDisplayMode.debugDescription.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  v2 = DOCDisplayMode.title.getter(a1);
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0x6C70736944434F44;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCDisplayMode()
{
  v1 = *v0;
  _StringGuts.grow(_:)(18);

  v2 = DOCDisplayMode.title.getter(v1);
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0x6C70736944434F44;
}

unint64_t lazy protocol witness table accessor for type DOCDisplayMode and conformance DOCDisplayMode()
{
  result = lazy protocol witness table cache variable for type DOCDisplayMode and conformance DOCDisplayMode;
  if (!lazy protocol witness table cache variable for type DOCDisplayMode and conformance DOCDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDisplayMode and conformance DOCDisplayMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DOCDisplayMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCDisplayMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCDisplayMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables14DOCDisplayModeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCDisplayMode] and conformance [A]);
  }

  return result;
}

uint64_t DOCHierarchyController.ChangeCoordinator.__allocating_init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DOCHierarchyController.ChangeCoordinator.init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static DOCHierarchyController.ChangeCoordinator.log(_:_:)(os_log_type_t a1, uint64_t a2, unint64_t a3)
{
  strcpy(v15, "Coordinator-");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  v7 = (*(v3 + 96))();
  MEMORY[0x24C1FAEA0](v7);

  v9 = v15[0];
  v8 = v15[1];
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = static DOCLog.UI;
  if (os_log_type_enabled(static DOCLog.UI, a1))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v15);
    _os_log_impl(&dword_2493AC000, v10, a1, "[%s] %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);

    JUMPOUT(0x24C1FE850);
  }
}

uint64_t DOCHierarchyController.ChangeCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DOCHierarchyController.SuspendableUIChangeCoordinator.beginSuspendingVisualChanges(timeout:)(Swift::Double timeout)
{
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v23 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  DOCHierarchyController.SuspendableUIChangeCoordinator.addSuspendVisualChangesAssertion(_:_:)(0, 0xD00000000000001DLL, 0x8000000249BE9A80);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v13, v9);
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.beginSuspendingVisualChanges(timeout:);
  v29 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_98;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v21 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v17, v8, v4, v20);
  _Block_release(v20);

  (*(v27 + 8))(v4, v21);
  (*(v25 + 8))(v8, v26);
  v19(v17, v23);
}

void closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.beginSuspendingVisualChanges(timeout:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  v3 = 1 << *(v2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
    v8 = v5;
LABEL_11:
    v5 = (v8 - 1) & v8;
    v10 = *(a1 + 32);
    if (*(v10 + 16))
    {
      v11 = *(*(v2 + 48) + (__clz(__rbit64(v8)) | (v7 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v11);
      v12 = Hasher._finalize()();
      v13 = -1 << *(v10 + 32);
      v14 = v12 & ~v13;
      if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        v15 = ~v13;
        while (v11 != *(*(v10 + 48) + v14))
        {
          v14 = (v14 + 1) & v15;
          if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v16 = static os_log_type_t.info.getter();
        _StringGuts.grow(_:)(21);
        MEMORY[0x24C1FAEA0](0x6F69747265737361, 0xEE00203D2D20736ELL);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x24C1FAEA0](23328, 0xE200000000000000);
        MEMORY[0x24C1FAEA0](0x74756F656D6974, 0xE700000000000000);
        MEMORY[0x24C1FAEA0](93, 0xE100000000000000);
        (*(*a1 + 120))(v16, 0, 0xE000000000000000);

        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v11);
        swift_endAccess();
      }

LABEL_18:
      if (!*(*(a1 + 32) + 16))
      {
        v17 = [*(a1 + 24) dataSource];
        v18 = MEMORY[0x277D85000];
        v19 = (*((*MEMORY[0x277D85000] & *v17) + 0xA8))();

        (*((*v18 & *v19) + 0x1C0))(0);
        v20 = *(a1 + 40);
        if (v20)
        {
          v21 = *(a1 + 48);
          v27 = v21;
          v22 = v20;
          v23 = static os_log_type_t.info.getter();
          (*(*a1 + 120))(v23, 0xD000000000000012, 0x8000000249BEA000);
          [v22 removeFromSuperview];
          if (v21)
          {
            v24 = v27;
            [v24 setUserInteractionEnabled_];
          }

          v25 = *(a1 + 40);
          v26 = *(a1 + 48);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          outlined consume of DOCLocationChange?(v25, v26);
        }

        else
        {
        }
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v8 = *(v2 + 56 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0xD000000000000023;
  }

  if (a1.value._object)
  {
    object = a1.value._object;
  }

  else
  {
    object = 0x8000000249BE9AA0;
  }

  DOCHierarchyController.SuspendableUIChangeCoordinator.removeSuspendVisualChangesAssertion(_:_:)(0, countAndFlagsBits, object);
}

void DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = [v2 hierarchyController];
  v5 = [v2 dataSource];
  v6 = (*((*MEMORY[0x277D85000] & *v5) + 0xA8))();

  v7 = static os_log_type_t.info.getter();
  (*(*v1 + 120))(v7, 0xD000000000000026, 0x8000000249BE9AD0);
  DOCHierarchyController.SuspendableUIChangeCoordinator.addSuspendVisualChangesAssertion(_:_:)(1, 0xD000000000000018, 0x8000000249BE9B00);
  v8 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = v1;
  v12[4] = v4;
  v12[5] = v6;
  v17[4] = partial apply for closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v17[3] = &block_descriptor_3_4;
  v13 = _Block_copy(v17);
  v14 = v3;

  v15 = v4;
  v16 = v6;

  [v8 fetchItemForURL:v11 completionHandler:v13];
  _Block_release(v13);
}

uint64_t endUpdating #1 () in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in endUpdating #1 () in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_148;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v6, v13);
  _Block_release(v13);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v27 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_130_0;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = a3;

  v23 = a5;
  v24 = a6;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27;
  MEMORY[0x24C1FB9A0](0, v18, v14, v20);
  _Block_release(v20);

  (*(v30 + 8))(v14, v11);
  return (*(v28 + 8))(v18, v29);
}

uint64_t closure #1 in closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(void *a1, NSObject *a2, uint64_t a3, char *a4, void *a5)
{
  v90 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v91 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v79 - v20;
  if (a1)
  {
    v87 = v13;
    v88 = v14;
    v89 = v10;
    v22 = a1;
    v23 = [v22 providerDomainID];
    v24 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v23 node:v22];

    [v24 setIsFPV2_];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    LOBYTE(v23) = static NSObject.== infix(_:_:)();

    if (v23)
    {

      goto LABEL_4;
    }

    v27 = static os_log_type_t.info.getter();
    (*(*a3 + 120))(v27, 0xD000000000000027, 0x8000000249BEA050);
    v28 = dispatch_group_create();
    dispatch_group_enter(v28);
    v29 = DOCHierarchyController.effectiveLocations.getter();
    v85 = v9;
    if (v29 >> 62)
    {
      v30 = __CocoaSet.count.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v86 = a2;

    v31 = &selRef_initWithFrame_;
    v84 = v17;
    if (v30 <= 1)
    {
      v60 = [v22 providerDomainID];
      v61 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v60 node:v22];

      v58 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      [v61 setIsFPV2_];
      v62 = swift_allocObject();
      *(v62 + 16) = v28;
      v63 = v28;
      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v61, v61, 0, 1, 0, closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply, v62);

      v57 = &selRef_initWithFrame_;

      v48 = v86;
      v59 = 0x277D05000uLL;
      goto LABEL_21;
    }

    specialized DOCHierarchyController.removeTrailingLocationCount(_:animated:)(1);
    v32 = [v22 providerDomainID];
    v33 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v32 node:v22];

    [v33 setIsFPV2_];
    v83 = swift_allocObject();
    *(v83 + 16) = v28;
    aBlock = 0;
    v94 = 0xE000000000000000;
    v34 = v28;
    _StringGuts.grow(_:)(20);

    aBlock = 0xD000000000000011;
    v94 = 0x8000000249BCC8C0;
    v35 = [v33 shortDescription];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    MEMORY[0x24C1FAEA0](v36, v38);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v82 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(aBlock, v94);

    v39 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v81 = swift_allocBox();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_249BA0290;
    *(v42 + 32) = v33;
    v80 = v33;
    UUID.init()();
    v43 = v39[5];
    v44 = v39[6];
    *(v41 + v39[7]) = v42;
    *(v41 + v43) = 1;
    *(v41 + v44) = 1;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v41, v21);
    (*(*(v39 - 1) + 56))(v21, 0, 1, v39);
    DOCHierarchyController.localOperation.setter(v21);
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v46 = *&a4[v45];
    if (v46 >> 62)
    {
      v47 = __CocoaSet.count.getter();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v86;
    v86 = v28;
    v31 = &selRef_initWithFrame_;
    if (v47 < 2)
    {
LABEL_19:
      v53 = swift_allocObject();
      v54 = v81;
      *(v53 + 16) = a4;
      *(v53 + 24) = v54;
      *(v53 + 32) = v82;
      *(v53 + 40) = partial apply for closure #4 in DOCItemCollectionViewController.notifyContentDidLoad();
      *(v53 + 48) = v83;
      *(v53 + 56) = 0;
      *(v53 + 58) = 0;
      *(v53 + 64) = 0;

      v55 = a4;

      v56 = v80;
      specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v80, 1, v55, partial apply for closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v53);

      v57 = &selRef_initWithFrame_;

      v58 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      v59 = 0x277D05000;
      v28 = v86;
LABEL_21:
      dispatch_group_enter(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19DOCConcreteLocationC_ADtGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = v48;
      v65 = v48;
      v66 = [v22 v31[249]];
      v67 = [objc_allocWithZone(*(v59 + 3752)) v57[12]];

      [v67 v58[452]];
      *(inited + 40) = v67;
      v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19DOCConcreteLocationC_ADTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSo19DOCConcreteLocationC_ABtMd);
      v69 = swift_allocObject();
      v70 = v90;
      *(v69 + 16) = v28;
      v71 = *((*MEMORY[0x277D85000] & *v70) + 0x1E0);
      v72 = v28;
      v71(v68, closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply, v69);

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v73 = static OS_dispatch_queue.main.getter();
      v97 = partial apply for closure #4 in closure #1 in closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
      v98 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v94 = 1107296256;
      v95 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v96 = &block_descriptor_139_0;
      v74 = _Block_copy(&aBlock);

      v75 = v84;
      static DispatchQoS.unspecified.getter();
      v92 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v76 = v87;
      v77 = v85;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v74);

      (*(v89 + 8))(v76, v77);
      (*(v91 + 8))(v75, v88);
    }

    v49 = *&a4[v45];
    if (v49 >> 62)
    {
      v78 = __CocoaSet.count.getter();
      v51 = v78 - 2;
      if (!__OFSUB__(v78, 2))
      {
LABEL_15:
        result = swift_beginAccess();
        v52 = *&a4[v45];
        if ((v52 & 0xC000000000000001) == 0)
        {
          if ((v51 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v51 < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            swift_endAccess();
            goto LABEL_19;
          }

          __break(1u);
          return result;
        }

LABEL_27:
        MEMORY[0x24C1FC540](v51);
        swift_endAccess();
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = v50 - 2;
      if (!__OFSUB__(v50, 2))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_4:
  v25 = static os_log_type_t.info.getter();
  (*(*a3 + 120))(v25, 0xD00000000000002CLL, 0x8000000249BEA020);

  return endUpdating #1 () in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(a3);
}

void DOCHierarchyController.SuspendableUIChangeCoordinator.addSuspendVisualChangesAssertion(_:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = v4[4];
  v9 = *(v8 + 16);
  if ((specialized Set.contains(_:)(a1 & 1, v8) & 1) == 0)
  {
    v10 = static os_log_type_t.info.getter();
    _StringGuts.grow(_:)(21);
    MEMORY[0x24C1FAEA0](0x6F69747265737361, 0xEE00203D2B20736ELL);
    v11 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x24C1FAEA0](23328, 0xE200000000000000);
    MEMORY[0x24C1FAEA0](a2, a3);
    MEMORY[0x24C1FAEA0](93, 0xE100000000000000);
    (*(*v4 + 120))(v10, 0, 0xE000000000000000);

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v11, a1 & 1);
    swift_endAccess();
  }

  if (!v9)
  {
    if (*(v4[4] + 16))
    {
      DOCHierarchyController.SuspendableUIChangeCoordinator.didBeginSuspendingVisualChanges()();
    }
  }
}

void DOCHierarchyController.SuspendableUIChangeCoordinator.removeSuspendVisualChangesAssertion(_:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = v4[4];
  v9 = *(v8 + 16);
  if (specialized Set.contains(_:)(a1 & 1, v8))
  {
    v10 = static os_log_type_t.info.getter();
    _StringGuts.grow(_:)(21);
    MEMORY[0x24C1FAEA0](0x6F69747265737361, 0xEE00203D2D20736ELL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x24C1FAEA0](23328, 0xE200000000000000);
    MEMORY[0x24C1FAEA0](a2, a3);
    MEMORY[0x24C1FAEA0](93, 0xE100000000000000);
    (*(*v4 + 120))(v10, 0, 0xE000000000000000);

    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1 & 1);
    swift_endAccess();
  }

  if (v9)
  {
    if (!*(v4[4] + 16))
    {
      DOCHierarchyController.SuspendableUIChangeCoordinator.didEndSuspendingVisualChanges()();
    }
  }
}

void DOCHierarchyController.SuspendableUIChangeCoordinator.didBeginSuspendingVisualChanges()()
{
  v1 = v0;
  v2 = v0[3];
  v3 = [v2 dataSource];
  v4 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v3) + 0xA8))();

  v5 = (*((*v4 & *v17) + 0x1C0))(1);
  if ((*(*v1 + 144))(v5))
  {
    v6 = static os_log_type_t.info.getter();
    (*(*v1 + 120))(v6, 0x746F687370616E73, 0xEC000000676E6974);
    v7 = [v2 view];
    if (!v7)
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = v7;
    v9 = [v7 snapshotViewAfterScreenUpdates_];

    if (v9)
    {
      v10 = [v2 view];
      if (v10)
      {
        v11 = v10;
        [v10 addSubview_];

        v12 = [v9 window];
        if (v12)
        {
          v13 = v12;
          [v12 setUserInteractionEnabled_];
        }

        v14 = [v9 window];

        v15 = v1[5];
        v16 = v1[6];
        v1[5] = v9;
        v1[6] = v14;

        outlined consume of DOCLocationChange?(v15, v16);
        return;
      }

LABEL_14:
      __break(1u);
      return;
    }
  }
}

void DOCHierarchyController.SuspendableUIChangeCoordinator.didEndSuspendingVisualChanges()()
{
  v1 = v0;
  v2 = [*(v0 + 24) dataSource];
  v3 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();

  (*((*v3 & *v12) + 0x1C0))(0);
  v4 = v1[5];
  if (v4)
  {
    v5 = v1[6];
    v6 = v5;
    v7 = v4;
    v8 = static os_log_type_t.info.getter();
    (*(*v1 + 120))(v8, 0xD000000000000012, 0x8000000249BEA000);
    [v7 removeFromSuperview];
    if (v5)
    {
      v9 = v6;
      [v9 setUserInteractionEnabled_];
    }

    v10 = v1[5];
    v11 = v1[6];
    v1[5] = 0;
    v1[6] = 0;

    outlined consume of DOCLocationChange?(v10, v11);
  }

  else
  {
  }
}

void *DOCHierarchyController.SuspendableUIChangeCoordinator.__allocating_init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x277D84FA0];
  result[5] = 0;
  result[6] = 0;
  result[3] = a2;
  result[4] = v5;
  result[2] = a1;
  return result;
}

void *DOCHierarchyController.SuspendableUIChangeCoordinator.init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FA0];
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = a2;
  v2[4] = v3;
  v2[2] = a1;
  return v2;
}

void DOCHierarchyController.SuspendableUIChangeCoordinator.__ivar_destroyer()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  outlined consume of DOCLocationChange?(v1, v2);
}

uint64_t DOCHierarchyController.SuspendableUIChangeCoordinator.__deallocating_deinit()
{

  outlined consume of DOCLocationChange?(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t DOCHierarchyController.BrowsedLocationRenameCoordinator.isNecessary.getter()
{
  v1 = [*(v0 + 16) sourceIdentifier];
  if (DOCDocumentSourceIdentifierIsICloud(v1))
  {
    goto LABEL_8;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v8 = v7 ^ 1;
LABEL_9:

  return v8 & 1;
}

Swift::Void __swiftcall DOCHierarchyController.BrowsedLocationRenameCoordinator.endSuspendingVisualChanges(afterRenameTo:)(Swift::String_optional afterRenameTo)
{
  v2 = v1;
  object = afterRenameTo.value._object;
  countAndFlagsBits = afterRenameTo.value._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for URL();
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v38 = &v37 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v39 = &v37 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v40 = &v37 - v25;
  v26 = static os_log_type_t.info.getter();
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v43 = 0xD000000000000023;
  v44 = 0x8000000249BE9B20;
  v41 = countAndFlagsBits;
  if (object)
  {
    v27 = object;
  }

  else
  {
    countAndFlagsBits = 7104878;
    v27 = 0xE300000000000000;
  }

  MEMORY[0x24C1FAEA0](countAndFlagsBits, v27);

  (*(*v1 + 15))(v26, v43, v44);

  if (object)
  {
    v28 = [v1[2] fileProviderItem];
    if (!v28)
    {
LABEL_14:
      (*(*v2 + 20))(0xD000000000000024, 0x8000000249BE9B80);
      return;
    }

    v29 = v28;
    v30 = [v28 fileURL];

    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v42;
      (*(v42 + 56))(v8, 0, 1, v13);
    }

    else
    {
      v31 = v42;
      (*(v42 + 56))(v8, 1, 1, v13);
    }

    outlined init with take of URL?(v8, v12);
    if ((*(v31 + 48))(v12, 1, v13))
    {
      outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
      goto LABEL_14;
    }

    (*(v31 + 16))(v16, v12, v13);
    outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
    v33 = v38;
    URL.deletingLastPathComponent()();
    v34 = *(v31 + 8);
    v34(v16, v13);
    v35 = v39;
    URL.appendingPathComponent(_:)();
    v34(v33, v13);
    v36 = v40;
    (*(v31 + 32))(v40, v35, v13);
    (*(*v2 + 21))(v36);
    v34(v36, v13);
  }

  else
  {
    v32 = *(*v1 + 20);

    v32(0xD000000000000022, 0x8000000249BE9B50);
  }
}

id *DOCHierarchyController.SuspendableUIChangeCoordinator.deinit()
{

  outlined consume of DOCLocationChange?(v0[5], v0[6]);
  return v0;
}

uint64_t DOCHierarchyController.BrowsedLocationRenameCoordinator.__deallocating_deinit()
{

  outlined consume of DOCLocationChange?(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

void *DOCHierarchyController.BrowsedLocationMoveCoordinator.__allocating_init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x277D84FA0];
  result[6] = 0;
  result[7] = 0;
  result[4] = v5;
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

uint64_t DOCHierarchyController.BrowsedLocationMoveCoordinator.notificationsController.getter()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC012DOCHierarchyF0C30BrowsedLocationMoveCoordinatorCGMd);
    v1 = swift_allocObject();
    swift_weakInit();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_weakAssign();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v48 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v48 - v16;
  v18 = [*(v3 + 24) hierarchyController];
  v19 = DOCHierarchyController.effectiveLocations.getter();

  type metadata accessor for CoordinationState #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = dispatch_group_create();
  *(v20 + 24) = v21;
  (*(*v4 + 152))(1.0);
  v22 = static os_log_type_t.info.getter();
  v23 = *(*v4 + 120);
  v23(v22, 0xD000000000000028, 0x8000000249BE9EB0);
  dispatch_group_enter(v21);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v20;
  v25[5] = a3;
  v25[6] = v19;
  v25[7] = v4;

  v26 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:), v25);

  v27 = static os_log_type_t.info.getter();
  v23(v27, 0xD000000000000022, 0x8000000249BE9EE0);
  dispatch_group_enter(*(v20 + 24));
  v28 = DOCHierarchyController.BrowsedLocationMoveCoordinator.notificationsController.getter();
  if (one-time initialization token for didFinish != -1)
  {
    swift_once();
  }

  v29 = static DOCMoveOperation.didFinish;
  v57 = type metadata accessor for DOCMoveOperation();
  aBlock[0] = a1;
  v30 = swift_allocObject();
  *(v30 + 16) = v4;
  *(v30 + 24) = v20;
  v31 = objc_opt_self();

  v32 = a1;
  v33 = [v31 mainQueue];
  (*(*v28 + 152))(v29, aBlock, v33, partial apply for closure #2 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:), v30);

  outlined destroy of CharacterSet?(aBlock, &_sypSgMd);
  v34 = swift_allocObject();
  *(v34 + 16) = v4;
  *(v34 + 24) = v4;
  v35 = *(v20 + 24);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  swift_retain_n();
  v36 = v35;
  v37 = static OS_dispatch_queue.main.getter();
  v38 = swift_allocObject();
  v38[2] = v4;
  v38[3] = v32;
  v39 = v48;
  v38[4] = v48;
  v38[5] = partial apply for closure #3 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);
  v38[6] = v34;
  v38[7] = v20;
  v38[8] = v26;
  v58 = partial apply for closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);
  v59 = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v57 = &block_descriptor_90;
  v40 = _Block_copy(aBlock);

  v41 = v26;

  v42 = v32;
  v43 = v39;

  v44 = v49;
  static DispatchQoS.unspecified.getter();
  v55 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v45 = v52;
  v46 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v40);

  (*(v53 + 8))(v45, v46);
  (*(v50 + 8))(v44, v51);
}

uint64_t determineEffectiveRootLocationForReset #1 @Sendable () in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](determineEffectiveRootLocationForReset #1 @Sendable () in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:), 0, 0);
}

uint64_t determineEffectiveRootLocationForReset #1 @Sendable () in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)()
{
  v1 = [*(v0 + 152) fileProviderItem];
  if (v1 && (v2 = v1, v3 = [v1 itemID], *(v0 + 168) = v3, v2, v3))
  {
    v4 = [objc_opt_self() defaultManager];
    *(v0 + 176) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = determineEffectiveRootLocationForReset #1 @Sendable () in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo6FPItemCGs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [FPItem];
    *(v0 + 104) = &block_descriptor_124_1;
    *(v0 + 112) = v5;
    [v4 fetchParentsForItemID:v3 recursively:1 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(0);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = determineEffectiveRootLocationForReset #1 @Sendable () in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);
  }

  else
  {
    v2 = determineEffectiveRootLocationForReset #1 @Sendable () in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1FC540](v4, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    v7 = [v5 itemID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v4);

  v8 = v26;
LABEL_12:
  v25 = v8;
  v9 = *(v0 + 160);
  v23 = v0;
  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v24 = (v23 + 80);
    v11 = v9 & 0xC000000000000001;
    v12 = v9 & 0xFFFFFFFFFFFFFF8;
    v9 = *(v23 + 160) + 32;
    while (!__OFSUB__(i--, 1))
    {
      if (v11)
      {
        v14 = MEMORY[0x24C1FC540](i, *(v23 + 160));
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (i >= *(v12 + 16))
        {
          goto LABEL_31;
        }

        v14 = *(v9 + 8 * i);
      }

      v15 = v14;
      v16 = [v14 fileProviderItem];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 itemID];

        if (v18)
        {
          *v24 = v18;
          v19 = swift_task_alloc();
          *(v19 + 16) = v24;
          v20 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo8FPItemIDCG_TG5TA_0, v19, v25);

          if (v20)
          {
            v21 = v23;

            goto LABEL_26;
          }
        }
      }

      if (!i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
  v21 = v23;

  v15 = 0;
LABEL_26:
  v22 = *(v21 + 8);

  return v22(v15);
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [FPItem](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);

  return determineEffectiveRootLocationForReset #1 @Sendable () in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(a5, a6);
}

uint64_t closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:), 0, 0);
}

uint64_t closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 16);
  *(v1 + 16) = v0[5];

  v4 = static os_log_type_t.info.getter();
  (*(*v2 + 120))(v4, 0xD000000000000025, 0x8000000249BE9FD0);
  dispatch_group_leave(*(v1 + 24));
  v5 = v0[1];

  return v5();
}

void closure #2 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static os_log_type_t.info.getter();
  (*(*a3 + 120))(v6, 0xD00000000000001ALL, 0x8000000249BE9FB0);
  v7 = *(a4 + 24);

  dispatch_group_leave(v7);
}

uint64_t closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v45 = a6;
  v46 = a7;
  v54 = a4;
  v55 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v47 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v44 - v21;
  v23 = static os_log_type_t.info.getter();
  v24 = *(*a1 + 120);
  v24(v23, 0xD00000000000001CLL, 0x8000000249BE9F10);
  v25 = [a2 transferResults];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock[6] = a3;
    lazy protocol witness table accessor for type FPItem and conformance NSObject();
    v28 = a3;
    AnyHashable.init<A>(_:)();
    if (*(v27 + 16))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock);
      if (v30)
      {
        v31 = *(*(v27 + 56) + 8 * v29);
        outlined destroy of AnyHashable(aBlock);

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v44 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v47 + 8);
        (v47)(v18, v53);
        v32 = swift_allocObject();
        v33 = v46;
        v32[2] = v45;
        v32[3] = a1;
        v32[4] = v33;
        v32[5] = v31;
        v34 = v55;
        v32[6] = v54;
        v32[7] = v34;
        aBlock[4] = partial apply for closure #1 in closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);
        aBlock[5] = v32;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_96_1;
        v35 = _Block_copy(aBlock);
        v36 = v31;

        v37 = v33;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v38 = v49;
        v39 = v52;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v40 = v44;
        MEMORY[0x24C1FB940](v22, v15, v38, v35);
        _Block_release(v35);

        (*(v51 + 8))(v38, v39);
        (*(v48 + 8))(v15, v50);
        return (v47)(v22, v53);
      }
    }

    outlined destroy of AnyHashable(aBlock);
  }

  v42 = static os_log_type_t.info.getter();
  v43 = (v24)(v42, 0xD00000000000002DLL, 0x8000000249BE9F30);
  return v54(v43);
}

uint64_t closure #1 in closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1, id *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 16);
  v12 = v11;
  _StringGuts.grow(_:)(40);

  strcpy(v24, "resetting to (");
  HIBYTE(v24[1]) = -18;
  v13 = [a3 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x24C1FAEA0](v14, v16);

  MEMORY[0x24C1FAEA0](0xD000000000000016, 0x8000000249BE9F60);
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19DOCConcreteLocationCSgMd);
  v18 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v18);

  v19 = static os_log_type_t.info.getter();
  (*(*a2 + 15))(v19, v24[0], v24[1]);

  v20 = [a2[3] hierarchyController];
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;

  v22 = a4;

  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a3, v11, 0, 1, 0, partial apply for closure #1 in closure #1 in closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:), v21);
}

uint64_t closure #1 in closure #1 in closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v32 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v30 - v21;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v31 = *(v15 + 8);
  v31(v18, v14);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v24 = a2;
  v25 = v34;
  v23[4] = v33;
  v23[5] = v25;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_105_0;
  v26 = _Block_copy(aBlock);

  v27 = v24;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v30;
  MEMORY[0x24C1FB940](v22, v13, v9, v26);
  _Block_release(v26);

  (*(v37 + 8))(v9, v6);
  (*(v35 + 8))(v13, v36);
  return (v31)(v22, v32);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #4 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(void **a1, void *a2, uint64_t (*a3)(void))
{
  v6 = static os_log_type_t.info.getter();
  (*(*a1 + 15))(v6, 0xD000000000000024, 0x8000000249BE9F80);
  specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(a2, 1, DOCGridLayout.specIconWidth.modify, 0, a1[3]);
  return a3();
}

void *DOCHierarchyController.BrowsedLocationMoveCoordinator.init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FA0];
  v2[6] = 0;
  v2[7] = 0;
  v2[4] = v3;
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

id *DOCHierarchyController.BrowsedLocationMoveCoordinator.deinit()
{

  outlined consume of DOCLocationChange?(v0[5], v0[6]);

  return v0;
}

uint64_t DOCHierarchyController.BrowsedLocationMoveCoordinator.__deallocating_deinit()
{

  outlined consume of DOCLocationChange?(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t DOCFullDocumentManagerViewController.browsedLocationRenameCoordinator.getter()
{
  v1 = [v0 hierarchyController];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      v5 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else if ((v3 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v3 + 8 * v5 + 32);

LABEL_8:
          type metadata accessor for DOCHierarchyController.BrowsedLocationRenameCoordinator();
          v7 = swift_allocObject();
          v8 = MEMORY[0x277D84FA0];
          v7[5] = 0;
          v7[6] = 0;
          v7[3] = v0;
          v7[4] = v8;
          v7[2] = v6;
          v9 = v0;
          if (DOCHierarchyController.BrowsedLocationRenameCoordinator.isNecessary.getter())
          {
            return v7;
          }

          return 0;
        }

        __break(1u);
        return result;
      }

      v6 = MEMORY[0x24C1FC540](v5, v3);

      goto LABEL_8;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = [a5 configuration];
  v12 = [v11 sceneIdentifier];

  v13 = [v10 globalTabbedBrowserControllerForIdentifier_];
  if (v13)
  {
    v14 = v13;
    [v14 switchToTab_];
    v15 = [v14 effectiveFullBrowser];
  }

  else
  {
    v15 = a5;
  }

  if (([a1 isFolder] & 1) != 0 || (isColumnMode #1 () in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v13)) && (a2 & 1) == 0)
  {
    if ([a1 isTrashed])
    {
      v16 = [objc_opt_self() trashedItemsLocation];
    }

    else
    {
      v22 = [a1 providerDomainID];
      v16 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v22 node:a1];
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v29 = partial apply for closure #1 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:);
    v30 = v23;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v28 = &block_descriptor_120;
    v24 = _Block_copy(&v25);

    v21 = v16;

    [v15 revealLocation:v21 animated:1 completion:v24];

    _Block_release(v24);
  }

  else
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = v17;
    v18[6] = v15;
    v29 = partial apply for closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:);
    v30 = v18;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v28 = &block_descriptor_114_0;
    v19 = _Block_copy(&v25);
    v20 = a1;

    v21 = v15;

    [v20 fetchParent_];

    _Block_release(v19);
  }
}

{
  v10 = objc_opt_self();
  v11 = [a5 configuration];
  v12 = [v11 sceneIdentifier];

  v13 = [v10 globalTabbedBrowserControllerForIdentifier_];
  if (v13)
  {
    v14 = v13;
    [v14 switchToTab_];
    v15 = [v14 effectiveFullBrowser];
  }

  else
  {
    v15 = a5;
  }

  if (([a1 isFolder] & 1) != 0 || (isColumnMode #1 () in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v13)) && (a2 & 1) == 0)
  {
    if ([a1 isTrashed])
    {
      v16 = [objc_opt_self() trashedItemsLocation];
    }

    else
    {
      v21 = DOCNode.sourceIdentifier.getter();
      v16 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v21 node:a1];
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    v28 = _sSo36DOCFullDocumentManagerViewControllerC0bC11ExecutablesE6reveal4node19showEnclosingFolder15completionBlockySo7DOCNode_p_SbySbctFyycfU_TA_0;
    v29 = v22;
    v24 = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v27 = &block_descriptor_333_1;
    v23 = _Block_copy(&v24);

    v20 = v16;

    [v15 revealLocation:v20 animated:1 completion:v23];

    _Block_release(v23);
  }

  else
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = v17;
    v18[6] = v15;
    v28 = partial apply for closure #2 in DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:);
    v29 = v18;
    v24 = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v27 = &block_descriptor_327;
    v19 = _Block_copy(&v24);
    swift_unknownObjectRetain();

    v20 = v15;

    [a1 fetchParent_];

    _Block_release(v19);
  }
}

uint64_t specialized static DOCHierarchyController.BrowsedLocationMoveCoordinator.coordinateMove(_:forBrowsedLocation:in:)(char *a1, void *a2, void *a3)
{
  result = [a1 byCopy];
  if (result)
  {
    return 0;
  }

  v7 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceItems];
  if (v7 >> 62)
  {
    if (__CocoaSet.count.getter() == 1)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }

      goto LABEL_4;
    }

    return 0;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return 0;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x24C1FC540](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_7:
    v9 = v8;
    v10 = [a2 fileProviderItem];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        type metadata accessor for DOCHierarchyController.BrowsedLocationMoveCoordinator();
        v13 = swift_allocObject();
        v14 = MEMORY[0x277D84FA0];
        v13[6] = 0;
        v13[7] = 0;
        v13[4] = v14;
        v13[5] = 0;
        v13[2] = a2;
        v13[3] = a3;
        v15 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_destinationFolderItem];
        v16 = a2;
        v17 = a3;
        v18 = [v15 providerDomainID];
        v19 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v18 node:v15];

        [v19 setIsFPV2_];
        DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(a1, v9, v19);

        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion and conformance DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion()
{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion and conformance DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion and conformance DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion and conformance DOCHierarchyController.SuspendableUIChangeCoordinator.VisualChangeAssertion);
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in DOCHierarchyController.BrowsedLocationMoveCoordinator.beginCoordinatedMove(_:of:toParentFolder:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in endUpdating #1 () in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)()
{
  DOCHierarchyController.SuspendableUIChangeCoordinator.removeSuspendVisualChangesAssertion(_:_:)(1, 0xD000000000000018, 0x8000000249BEA080);
  v1 = *(*v0 + 160);

  return v1(0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

Swift::Int DOCCardPopoverAdaptablePresenter.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t DOCCardPopoverAdaptablePresenter.activeStyle.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController))
  {
    return 2;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t key path getter for DOCCardPopoverAdaptablePresenter.willPresentPopoverHandler : DOCCardPopoverAdaptablePresenter@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIPopoverPresentationController) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCardPopoverAdaptablePresenter.willPresentPopoverHandler : DOCCardPopoverAdaptablePresenter(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed DOCValueChangePacer<A>) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCCardPopoverAdaptablePresenter.willPresentCardHandler : DOCCardPopoverAdaptablePresenter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCardPopoverAdaptablePresenter.willPresentCardHandler : DOCCardPopoverAdaptablePresenter(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xC8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCCardPopoverAdaptablePresenter.willPresentPopoverHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t DOCCardPopoverAdaptablePresenter.willPresentPopoverHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id DOCCardPopoverAdaptablePresenter.present(from:presented:source:)(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  [a2 setModalPresentationStyle_];
  v6 = [a2 presentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setDelegate_];
  }

  v8 = [a2 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setDelegate_];
  }

  v10 = [a2 presentationController];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x24C1FAD20](0xD000000000000030, 0x8000000249BEA0A0);
    v13 = [objc_opt_self() defaultCenter];
    v14 = objc_opt_self();
    v15 = v12;
    v16 = v11;
    v17 = [v14 mainQueue];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v27 = partial apply for closure #1 in DOCCardPopoverAdaptablePresenter.present(from:presented:source:);
    v28 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    ObjectType = &block_descriptor_99;
    v21 = _Block_copy(aBlock);

    v22 = [v13 addObserverForName:v15 object:v16 queue:v17 usingBlock:v21];
    _Block_release(v21);

    ObjectType = swift_getObjectType();
    aBlock[0] = v22;
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_ppcDismissObserance;
    swift_beginAccess();
    outlined assign with take of Any?(aBlock, v3 + v23);
    swift_endAccess();
  }

  return [a1 presentViewController:a2 animated:1 completion:0];
}

void closure #1 in DOCCardPopoverAdaptablePresenter.present(from:presented:source:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_isActivelyPresentingPopover) == 1)
      {
        v3 = v2;
        (*((*MEMORY[0x277D85000] & *v1) + 0x168))();
        v2 = v3;
      }
    }

    memset(v5, 0, sizeof(v5));
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_ppcDismissObserance;
    swift_beginAccess();
    outlined assign with take of Any?(v5, v1 + v4);
    swift_endAccess();
  }
}

id DOCCardPopoverAdaptablePresenter.presentUnadaptable(from:presented:source:)(void *a1, void *a2)
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  [a2 setModalPresentationStyle_];
  v5 = [a2 presentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate_];
  }

  return [a1 presentViewController:a2 animated:1 completion:0];
}

void DOCCardPopoverAdaptablePresenter.activePresentationController.didset(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController;
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController);
  if (v4)
  {
    if (!a1 || (type metadata accessor for UIPresentationController(), v6 = v4, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      v10 = MEMORY[0x277D85000];
      if (v9)
      {
        v11 = v9;
        *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_isActivelyPresentingPopover) = 1;
        Strong = swift_unknownObjectWeakLoadStrong();
        v13 = v4;
        if (Strong)
        {
          [Strong setIsActivePopoverSource_];
          swift_unknownObjectRelease();
        }

        v14 = (*((*v10 & *v2) + 0xA8))();
        if (v14)
        {
          v15 = v14;
          v14(v11);
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v15);
        }
      }

      v16 = *(v2 + v3);
      if (v16)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_isActivelyPresentingPopover) = 0;
          v19 = swift_unknownObjectWeakLoadStrong();
          v22 = v16;
          if (v19)
          {
            [v19 setIsActivePopoverSource_];
            swift_unknownObjectRelease();
          }

          v20 = (*((*v10 & *v2) + 0xC0))();
          if (v20)
          {
            v21 = v20;
            v20(v18);
            outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v21);
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCCardPopoverAdaptablePresenter.prepareForPopoverPresentation(_:)(UIPopoverPresentationController a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController) = a1;
  v2 = a1.super.super.isa;
  DOCCardPopoverAdaptablePresenter.activePresentationController.didset(v3);
}

Swift::Void __swiftcall DOCCardPopoverAdaptablePresenter._presentationController(_:prepareAdaptivePresentationController:)(UIPresentationController _, UIPresentationController prepareAdaptivePresentationController)
{
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController) = prepareAdaptivePresentationController;
  v3 = prepareAdaptivePresentationController.super.isa;
  DOCCardPopoverAdaptablePresenter.activePresentationController.didset(v4);
}

Swift::Void __swiftcall DOCCardPopoverAdaptablePresenter.presentationControllerWillDismiss(_:)(UIPresentationController a1)
{
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_isActivelyPresentingPopover) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setIsActivePopoverSource_];

    swift_unknownObjectRelease();
  }
}

id DOCCardPopoverAdaptablePresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCCardPopoverAdaptablePresenter.init()()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_willPresentPopoverHandler];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_willPresentCardHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_ppcDismissObserance];
  *v3 = 0u;
  v3[1] = 0u;
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_isActivelyPresentingPopover] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCCardPopoverAdaptablePresenter();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCCardPopoverAdaptablePresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCCardPopoverAdaptablePresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DOCCardPopoverAdaptablePresenter.Style and conformance DOCCardPopoverAdaptablePresenter.Style()
{
  result = lazy protocol witness table cache variable for type DOCCardPopoverAdaptablePresenter.Style and conformance DOCCardPopoverAdaptablePresenter.Style;
  if (!lazy protocol witness table cache variable for type DOCCardPopoverAdaptablePresenter.Style and conformance DOCCardPopoverAdaptablePresenter.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCardPopoverAdaptablePresenter.Style and conformance DOCCardPopoverAdaptablePresenter.Style);
  }

  return result;
}

unint64_t type metadata accessor for UIPresentationController()
{
  result = lazy cache variable for type metadata for UIPresentationController;
  if (!lazy cache variable for type metadata for UIPresentationController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPresentationController);
  }

  return result;
}

void DOCItemCollectionViewController.setCurrentPrimaryEntity(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for FINodeEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v23 - v14;
  if (a1)
  {
    v16 = a1;
    FINodeEntity.init(item:)(v16, v15);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    outlined init with copy of FINodeEntity(v15, v11);
    type metadata accessor for MainActor();
    v18 = v1;
    v19 = static MainActor.shared.getter();
    v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v19;
    v21[3] = v22;
    v21[4] = v18;
    outlined init with take of FINodeEntity(v11, v21 + v20);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:), v21);

    outlined destroy of FINodeEntity(v15);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  if (a1._rawValue >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.AppIntents);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = v12;
    *v12 = 134218496;
    if (v8 >= 500)
    {
      v14 = 500;
    }

    else
    {
      v14 = v8;
    }

    *(v12 + 4) = v14;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v8;
    *(v12 + 22) = 2048;
    *(v12 + 24) = 500;
    _os_log_impl(&dword_2493AC000, v10, v11, "Donating %ld out of %ld visible items to Siri Vocabulary (corpus capacity: %ld.", v12, 0x20u);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v2;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2]._rawValue = v17;
  v18[3]._rawValue = v19;
  v18[4]._rawValue = v16;
  v18[5]._rawValue = a1._rawValue;
  v18[6]._rawValue = 500;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:), v18);
}

Swift::Void __swiftcall DOCItemCollectionViewController.addChangeViewOptionsInteractions()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xB68))();
  if (!v3)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
    lazy protocol witness table accessor for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent();
    v5 = UIAppIntentInteraction.init<A>(intent:perform:)();
    v6 = (*((*v2 & *v0) + 0x1010))();
    [v6 addInteraction_];

    v7 = *((*v2 & *v1) + 0xB70);
    v8 = v5;
    v7(v5);
    v3 = v8;
  }

  v9 = (*((*v2 & *v1) + 0xB80))();
  if (!v9)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
    lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent();
    v11 = UIAppIntentInteraction.init<A>(intent:perform:)();
    v12 = (*((*v2 & *v1) + 0x1010))();
    [v12 addInteraction_];

    v13 = *((*v2 & *v1) + 0xB88);
    v14 = v11;
    v13(v11);
    v9 = v14;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.removeChangeViewOptionsInteractions()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xB68))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((*v1 & *v0) + 0x1010))();
    [v4 removeInteraction_];

    (*((*v1 & *v0) + 0xB70))(0);
  }

  v5 = (*((*v1 & *v0) + 0xB80))();
  if (v5)
  {
    v7 = v5;
    v6 = (*((*v1 & *v0) + 0x1010))();
    [v6 removeInteraction_];

    (*((*v1 & *v0) + 0xB88))(0);
  }
}

void DOCItemCollectionViewController.updateLinkInteractions(_:)(void *a1)
{
  v56 = a1;
  v2 = type metadata accessor for FINodeEntity();
  v54 = *(v2 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v57 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for TaskPriority();
  v49 = *(*(v12 - 8) + 56);
  v49(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v1;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.updateLinkInteractions(_:), v15);

  v18 = MEMORY[0x277D85000];
  v19 = *MEMORY[0x277D85000] & *v13;
  v50 = *(v19 + 0xB38);
  v51 = v19 + 2872;
  v20 = v50(v17);
  if (v20)
  {
    v21 = v20;
    v22 = (*((*v18 & *v13) + 0x1010))();
    [v22 removeInteraction_];

    (*((*v18 & *v13) + 0xB40))(0);
  }

  v23 = *((*v18 & *v13) + 0xB50);
  v52 = (*v18 & *v13) + 2896;
  v53 = v23;
  v24 = v23();
  if (v24)
  {
    v25 = v24;
    v26 = (*((*v18 & *v13) + 0x1010))();
    [v26 removeInteraction_];

    (*((*v18 & *v13) + 0xB58))(0);
  }

  if (v56)
  {
    v27 = v56;
    v28 = v57;
    FINodeEntity.init(item:)(v27, v57);
    v49(v11, 1, 1, v12);
    v29 = v55;
    outlined init with copy of FINodeEntity(v28, v55);
    v30 = v13;
    v31 = static MainActor.shared.getter();
    v32 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = MEMORY[0x277D85700];
    v33[4] = v30;
    outlined init with take of FINodeEntity(v29, v33 + v32);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in DOCItemCollectionViewController.updateLinkInteractions(_:), v33);

    v34 = type metadata accessor for UIAppIntentInteraction();
    v35 = objc_allocWithZone(v34);
    lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
    v36 = UIAppIntentInteraction.init<A>(intent:perform:)();
    v37 = MEMORY[0x277D85000];
    v38 = (*((*MEMORY[0x277D85000] & *v30) + 0xB40))(v36);
    v39 = v50(v38);
    if (v39)
    {
      v40 = v39;
      v41 = (*((*v37 & *v30) + 0x1010))();
      [v41 addInteraction_];
    }

    v42 = objc_allocWithZone(v34);
    lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();
    v43 = UIAppIntentInteraction.init<A>(intent:perform:)();
    v44 = (*((*v37 & *v30) + 0xB58))(v43);
    v45 = (v53)(v44);
    if (v45)
    {
      v46 = v45;
      v47 = (*((*v37 & *v30) + 0x1010))();
      [v47 addInteraction_];

      outlined destroy of FINodeEntity(v57);
    }

    else
    {
      outlined destroy of FINodeEntity(v57);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.AppIntents);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (a1._rawValue >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    _os_log_impl(&dword_2493AC000, v9, v10, "Change corpus content donated to Siri Vocabulary with %ld items", v11, 0xCu);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  else
  {
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = v2;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2]._rawValue = v15;
  v16[3]._rawValue = v17;
  v16[4]._rawValue = v14;
  v16[5]._rawValue = a1._rawValue;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:), v16);
}

uint64_t closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for FINodeEntity();
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16EntityIdentifierVSgMd);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:), v7, v6);
}

id closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:)()
{
  result = [*(v0 + 16) view];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);

    outlined init with copy of FINodeEntity(v5, v4);
    lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
    EntityIdentifier.init<A>(for:)();
    v6 = type metadata accessor for EntityIdentifier();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    UIView.appEntityIdentifier.setter();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DOCItemCollectionViewController.updateLinkInteractions(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16EntityIdentifierVSgMd);
  v4[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.updateLinkInteractions(_:), v6, v5);
}

uint64_t closure #1 in DOCItemCollectionViewController.updateLinkInteractions(_:)()
{
  v1 = v0[3];
  v2 = v0[2];

  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))(v3);
  v5 = type metadata accessor for EntityIdentifier();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  UIView.appEntityIdentifier.setter();

  v6 = v0[1];

  return v6();
}

uint64_t closure #2 in DOCItemCollectionViewController.updateLinkInteractions(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for FINodeEntity();
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16EntityIdentifierVSgMd);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in DOCItemCollectionViewController.updateLinkInteractions(_:), v7, v6);
}

uint64_t closure #2 in DOCItemCollectionViewController.updateLinkInteractions(_:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))(v5);
  outlined init with copy of FINodeEntity(v4, v2);
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  EntityIdentifier.init<A>(for:)();
  v7 = type metadata accessor for EntityIdentifier();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  UIView.appEntityIdentifier.setter();

  v8 = v0[1];

  return v8();
}

uint64_t closure #3 in DOCItemCollectionViewController.updateLinkInteractions(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  type metadata accessor for MainActor();
  *(v2 + 48) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](closure #3 in DOCItemCollectionViewController.updateLinkInteractions(_:), v4, v3);
}

uint64_t closure #3 in DOCItemCollectionViewController.updateLinkInteractions(_:)()
{
  v1 = v0[2];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVy26DocumentManagerExecutables12FINodeEntityVs5NeverOA2HGMd);
  v1[4] = lazy protocol witness table accessor for type IntentResultContainer<[FINodeEntity]?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<FINodeEntity, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVy26DocumentManagerExecutables12FINodeEntityVs5NeverOA2HGMd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = closure #3 in DOCItemCollectionViewController.updateLinkInteractions(_:);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return CreateFolderIntent.perform()(boxed_opaque_existential_1, v6, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = closure #3 in DOCItemCollectionViewController.updateLinkInteractions(_:);
  }

  else
  {
    v5 = closure #3 in DOCItemCollectionViewController.updateLinkInteractions(_:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);

  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #4 in DOCItemCollectionViewController.updateLinkInteractions(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = a1;
  v2[3] = v3;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v5;
  v2[6] = v4;

  return MEMORY[0x2822009F8](closure #4 in DOCItemCollectionViewController.updateLinkInteractions(_:), v5, v4);
}

uint64_t closure #4 in DOCItemCollectionViewController.updateLinkInteractions(_:)()
{
  v1 = v0[2];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVySay26DocumentManagerExecutables12FINodeEntityVGSgs5NeverOA2JGMd);
  v1[4] = lazy protocol witness table accessor for type IntentResultContainer<[FINodeEntity]?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<[FINodeEntity]?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVySay26DocumentManagerExecutables12FINodeEntityVGSgs5NeverOA2JGMd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = closure #4 in DOCItemCollectionViewController.updateLinkInteractions(_:);
  v4 = v0[3];

  return TrashItemsIntent.perform()(boxed_opaque_existential_1, v4);
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = closure #4 in DOCItemCollectionViewController.updateLinkInteractions(_:);
  }

  else
  {
    v5 = closure #4 in DOCItemCollectionViewController.updateLinkInteractions(_:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);

  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()(uint64_t a1, void *a2, uint64_t a3)
{
  v3[9] = a1;
  v3[10] = a3;
  v3[11] = *a2;
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.addChangeViewOptionsInteractions(), v5, v4);
}

uint64_t closure #1 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    IntentParameter.wrappedValue.getter();
    if (*(v0 + 104))
    {
      if (*(v0 + 104) == 1)
      {
        (*((*MEMORY[0x277D85000] & *v2) + 0xD08))(1);
      }

      else
      {
        (*((*MEMORY[0x277D85000] & *v2) + 0xD08))(0);
      }
    }

    else
    {
      v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xD10))(v0 + 16);
      *v6 = !*v6;
      v5(v0 + 16, 0);
    }

    v7 = *(v0 + 72);
    specialized DOCItemCollectionViewController.updateOverlay(animated:)();
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
    v7[4] = lazy protocol witness table accessor for type IntentResultContainer<[FINodeEntity]?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
    __swift_allocate_boxed_opaque_existential_1(v7);
    static IntentResult.result<>()();

    v4 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v4 = *(v0 + 8);
  }

  return v4();
}

void DOCItemCollectionViewController.setFilenameExtensionVisibility(_:)()
{
  IntentParameter.wrappedValue.getter();
  if (v4)
  {
    if (v4 == 1)
    {
      (*((*MEMORY[0x277D85000] & *v0) + 0xD08))(1);
    }

    else
    {
      (*((*MEMORY[0x277D85000] & *v0) + 0xD08))(0);
    }
  }

  else
  {
    v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xD10))(v3);
    *v2 = !*v2;
    v1(v3, 0);
  }

  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
}

uint64_t closure #2 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()(uint64_t a1, void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *a2;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in DOCItemCollectionViewController.addChangeViewOptionsInteractions(), v5, v4);
}

uint64_t closure #2 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()()
{
  v8 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 40);
    IntentParameter.wrappedValue.getter();
    v7[0] = *(v0 + 72);
    DOCItemCollectionViewController.changeGroupingMode(_:)(v7);
    v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
    v3[4] = lazy protocol witness table accessor for type IntentResultContainer<[FINodeEntity]?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOA3EGMd);
    __swift_allocate_boxed_opaque_existential_1(v3);
    static IntentResult.result<>()();
  }

  else
  {
    lazy protocol witness table accessor for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

void DOCItemCollectionViewController.changeGroupingMode(_:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      v10 = 5;
      v2 = &v10;
    }

    else
    {
      v9 = 10;
      v2 = &v9;
    }

    goto LABEL_29;
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v12 = 4;
      v2 = &v12;
    }

    else
    {
      v13 = 6;
      v2 = &v13;
    }

LABEL_29:
    DOCItemCollectionViewController.groupOption(changeTo:)(v2);
    return;
  }

  v3 = DOCItemCollectionViewController.getAvailableGroupingBehaviors(shouldInsertNoneOption:)(0);
  v4 = *(v3 + 2);
  if (!v4)
  {
LABEL_25:
    LOBYTE(v6) = 0;
LABEL_26:

    v11 = v6;
    v2 = &v11;
    goto LABEL_29;
  }

  v5 = 0;
  while (v5 < *(v3 + 2))
  {
    v6 = v3[v5 + 32];
    if (v6 > 5)
    {
      if (v3[v5 + 32] > 7u && v6 != 8 && v6 != 9)
      {
        goto LABEL_24;
      }
    }

    else if (v3[v5 + 32] <= 2u && v6 != 1 && v6 != 2)
    {
      goto LABEL_30;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_26;
    }

    if (v6 < 4 && v6 != 2 && v6 != 3)
    {
LABEL_30:

      goto LABEL_26;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_26;
    }

LABEL_24:
    if (v4 == ++v5)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

void DOCItemCollectionViewController.addAppIntentInteraction<A>(intent:perform:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAppIntentInteraction();
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  v4 = UIAppIntentInteraction.__allocating_init<A>(intent:perform:)();
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 addInteraction_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:), v8, v7);
}

uint64_t closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:)()
{
  v1 = v0[2];
  specialized DOCItemCollectionViewController.dynamicTerms(forItems:capacity:)(v0[3], v0[4]);
  type metadata accessor for SiriVocabulary.Corpus();
  swift_allocObject();
  v2 = SiriVocabulary.Corpus.init(contents:capacity:)();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0xBA0))(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = (*((*v3 & *v1) + 0xB98))();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:);

  return MEMORY[0x28210B960](v4);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:);
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.AppIntents);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2493AC000, v4, v5, "Dynamic donation to Siri Vocabulary failed with error: %@.", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:), v7, v6);
}

uint64_t closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:)()
{
  v1 = v0[2];
  v0[7] = specialized DOCItemCollectionViewController.dynamicTerms(forItems:capacity:)(v0[3], 500);
  v0[8] = (*((*MEMORY[0x277D85000] & *v1) + 0xB98))();

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:), 0, 0);
}

{
  v1 = v0[7];
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277CB9E98] + MEMORY[0x277CB9E98]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:);

  return v5(partial apply for closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:), v2);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:);
  }

  else
  {

    v2 = closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:), v1, v2);
}

{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:), v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()(a1, a2, v2);
}

uint64_t partial apply for closure #2 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #2 in DOCItemCollectionViewController.addChangeViewOptionsInteractions()(a1, a2, v2);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.updateLinkInteractions(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.updateLinkInteractions(_:)(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for FINodeEntity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for FileEntityIdentifier();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in DOCItemCollectionViewController.updateLinkInteractions(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FINodeEntity() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #2 in DOCItemCollectionViewController.updateLinkInteractions(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_3Tm_3(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(a1, v4, v5, v7, v6);
}

size_t specialized DOCItemCollectionViewController.dynamicTerms(forItems:capacity:)(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v43, v5);
  v42 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SiriVocabulary.DynamicTerm();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 0)
  {
LABEL_39:
    __break(1u);
  }

  else
  {
    v2 = a1 >> 62;
    if (!(a1 >> 62))
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (v11 >= v13)
      {
        goto LABEL_10;
      }

      goto LABEL_50;
    }
  }

  v36 = __CocoaSet.count.getter();
  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  if (v36 >= a2)
  {
    v37 = a2;
  }

  else
  {
    v37 = v36;
  }

  if (v36 < 0)
  {
    v37 = a2;
  }

  if (a2)
  {
    v13 = v37;
  }

  else
  {
    v13 = 0;
  }

  v11 = __CocoaSet.count.getter();
  if (v11 >= v13)
  {
LABEL_10:
    if ((a1 & 0xC000000000000001) != 0)
    {

      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
          _ArrayBuffer._typeCheckSlowPath(_:)(i);
        }
      }

      a2 = v10;
      if (!v2)
      {
        goto LABEL_15;
      }
    }

    else
    {

      a2 = v10;
      if (!v2)
      {
LABEL_15:
        v15 = 0;
        v16 = a1 & 0xFFFFFFFFFFFFFF8;
        v17 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_18:
        v21 = MEMORY[0x277D84F90];
        v45 = MEMORY[0x277D84F90];
        v2 = v16;
        swift_unknownObjectRetain();
        a1 = v15;
        v44 = v21;
LABEL_19:
        v22 = a1;
        while (v13 != v22)
        {
          if (a1 < v15 || v22 >= v13)
          {
            __break(1u);
            goto LABEL_39;
          }

          v10 = (v22 + 1);
          v23 = [*(v17 + 8 * v22) fpfs_fpItem];
          v22 = v10;
          if (v23)
          {
            MEMORY[0x24C1FB090]();
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v44 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v44 = v45;
            a1 = v10;
            goto LABEL_19;
          }
        }

        swift_unknownObjectRelease_n();
        v11 = v44;
        if (v44 >> 62)
        {
          goto LABEL_51;
        }

        v24 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_29;
        }

LABEL_52:

        return MEMORY[0x277D84F90];
      }
    }

    v16 = _CocoaArrayWrapper.subscript.getter();
    v17 = v18;
    v15 = v19;
    v13 = v20 >> 1;
    goto LABEL_18;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  v38 = v11;
  v24 = __CocoaSet.count.getter();
  v11 = v38;
  if (!v24)
  {
    goto LABEL_52;
  }

LABEL_29:
  v25 = v11;
  v45 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v45;
    v29 = v25;
    v39[1] = v7 + 32;
    v40 = v25 & 0xC000000000000001;
    do
    {
      if (v40)
      {
        v30 = MEMORY[0x24C1FC540](v27, v29);
      }

      else
      {
        v30 = *(v29 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = [v30 filename];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v31;
      FINodeEntity.init(item:)(v33, v42);
      lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
      SiriVocabulary.DynamicTerm.init<A>(_:entity:)();

      v45 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1);
        v28 = v45;
      }

      ++v27;
      *(v28 + 16) = v35 + 1;
      (*(v7 + 32))(v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, a2, v41);
      v29 = v44;
    }

    while (v24 != v27);

    return v28;
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x24C1FE850);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IntentResultContainer<[FINodeEntity]?, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>(unint64_t *a1, uint64_t *a2)
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

void DOCActionUIOperation.presentingViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCActionUIOperation.presentingViewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCActionUIOperation_presentingViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

id DOCActionUIOperation.__allocating_init(alertPresenting:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id DOCActionUIOperation.init(alertPresenting:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCActionUIOperation();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

void closure #1 in DOCActionUIOperation.present(actions:title:message:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  if (a2)
  {
    v10 = MEMORY[0x24C1FAD20]();
    if (a4)
    {
LABEL_3:
      v11 = MEMORY[0x24C1FAD20](a3, a4);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v32 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  if (a5 >> 62)
  {
    v12 = __CocoaSet.count.getter();
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](i, a5);
    }

    else
    {
      v14 = *(a5 + 8 * i + 32);
    }

    v15 = v14;
    [v32 addAction_];
  }

LABEL_15:
  if (a5 >> 62)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 != 1)
  {
    goto LABEL_27;
  }

  a5 = v32;
  v12 = [a5 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAlertAction);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v17;
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_41:

    __break(1u);
    goto LABEL_42;
  }

LABEL_40:
  v18 = __CocoaSet.count.getter();
  if (!v18)
  {
    goto LABEL_41;
  }

LABEL_21:
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_43:
    v21 = MEMORY[0x24C1FC540](v20, v11);
    goto LABEL_26;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v20 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    __break(1u);
    return;
  }

  v21 = *(v11 + 8 * v20 + 32);
LABEL_26:
  v22 = v21;

  [a5 setPreferredAction_];

LABEL_27:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249B9FA70;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 32) = 0xD00000000000001FLL;
  *(v23 + 40) = 0x8000000249BEA400;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  if (a4)
  {
    v26 = a3;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (a4)
  {
    v27 = a4;
  }

  *(v23 + 64) = v25;
  *(v23 + 72) = v26;
  *(v23 + 80) = v27;

  os_log(_:dso:log:type:_:)();

  v29 = (*((*MEMORY[0x277D85000] & *a6) + 0x130))(v28);
  v30 = v32;
  if (v29)
  {
    v31 = v29;
    [v29 presentViewController:v32 animated:1 completion:0];

    v30 = v32;
  }
}

uint64_t DOCActionUIOperation.presentErrorAlert(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = v3;
  v9 = a1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCActionUIOperation.presentErrorAlert(_:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = (*((*MEMORY[0x277D85000] & *a1) + 0x130))();
  if (v6)
  {
    v7 = v6;
    v8 = _convertErrorToNSError(_:)();
    if (a3)
    {
      v9[4] = a3;
      v9[5] = a4;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v9[3] = &block_descriptor_98;
      a3 = _Block_copy(v9);
    }

    DOCPresentAlertForErrorWithForceHandler();
    _Block_release(a3);
  }
}

id DOCActionUIOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCDeletePreflightUIOperation.__allocating_init(items:alertPresenting:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCDeletePreflightUIOperation_items] = a1;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v5;
  v8.super_class = type metadata accessor for DOCActionUIOperation();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id DOCDeletePreflightUIOperation.init(items:alertPresenting:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCDeletePreflightUIOperation_items] = a1;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DOCActionUIOperation();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id DOCDeletePreflightUIOperation.main(with:previousOperationError:)()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v35._object = 0x8000000249BC9970;
    v3._countAndFlagsBits = 0x6574656C6544;
    v3._object = 0xE600000000000000;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0xD00000000000001BLL;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v35);

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      v36._object = 0x8000000249BD2AF0;
      v8._countAndFlagsBits = 0x6C65636E6143;
      v8._object = 0xE600000000000000;
      v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v9.value._object = 0xEB00000000656C62;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v36);

      v12 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCDeletePreflightUIOperation_items];
      type metadata accessor for DOCDeleteOperation();
      static DOCDeleteOperation.confirmationStrings(for:)(v12, &aBlock);
      v29 = aBlock;
      v27 = v32;
      v28 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_249BA1010;
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      v15 = v0;
      v16 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

      v33 = partial apply for closure #1 in DOCDeletePreflightUIOperation.main(with:previousOperationError:);
      v34 = v14;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      v32 = &block_descriptor_100;
      v17 = _Block_copy(&aBlock);

      v18 = objc_opt_self();
      v19 = [v18 actionWithTitle:v16 style:2 handler:v17];
      _Block_release(v17);

      *(v13 + 32) = v19;
      v20 = swift_allocObject();
      *(v20 + 16) = v15;
      v21 = v15;
      v22 = MEMORY[0x24C1FAD20](v11._countAndFlagsBits, v11._object);

      v33 = partial apply for closure #2 in DOCDeletePreflightUIOperation.main(with:previousOperationError:);
      v34 = v20;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      v32 = &block_descriptor_9_6;
      v23 = _Block_copy(&aBlock);

      v24 = [v18 actionWithTitle:v22 style:1 handler:v23];
      _Block_release(v23);

      *(v13 + 40) = v24;
      v25 = swift_allocObject();
      *(v25 + 16) = v29;
      *(v25 + 32) = v28;
      *(v25 + 40) = v27;
      *(v25 + 48) = v13;
      *(v25 + 56) = v21;
      v26 = v21;
      DOCRunInMainThread(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DOCDeletePreflightUIOperation.main(with:previousOperationError:)(uint64_t a1, void *a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCDeletePreflightUIOperation_items);
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
  v6[0] = v3;
  v4 = *((*MEMORY[0x277D85000] & *a2) + 0xE0);

  v4(v6, 0);
  return outlined destroy of Any?(v6);
}

uint64_t closure #2 in DOCDeletePreflightUIOperation.main(with:previousOperationError:)(uint64_t a1, void *a2)
{
  memset(v5, 0, sizeof(v5));
  v3 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:{0, 0, 0}];
  (*((*MEMORY[0x277D85000] & *a2) + 0xE0))(v5, v3);

  return outlined destroy of Any?(v5);
}

uint64_t DOCCreateNewFolderPostflightUIOperation.folderName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName);

  return v1;
}

id DOCCreateNewFolderPostflightUIOperation.__allocating_init(folderName:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName];
  *v8 = a1;
  *(v8 + 1) = a2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v11.receiver = v7;
  v11.super_class = type metadata accessor for DOCActionUIOperation();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id DOCCreateNewFolderPostflightUIOperation.init(folderName:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName];
  *v5 = a1;
  *(v5 + 1) = a2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v3;
  v8.super_class = type metadata accessor for DOCActionUIOperation();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id DOCCreateNewFolderPostflightUIOperation.main(with:previousOperationError:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
    if (NSError.isFilenameCollisionError.getter())
    {
      v6 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName);
      v5 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName + 8);
      if (one-time initialization token for renameCollisionBaseString != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_249B9A480;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v7 + 32) = v6;
      *(v7 + 40) = v5;

      v8 = String.init(format:_:)();
      v10 = v9;
      result = _DocumentManagerBundle();
      if (result)
      {
        v12 = result;
        v36._object = 0xE200000000000000;
        v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v13.value._object = 0xEB00000000656C62;
        v14._countAndFlagsBits = 19279;
        v14._object = 0xE200000000000000;
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        v36._countAndFlagsBits = 19279;
        v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v36);

        v17 = swift_allocObject();
        *(v17 + 16) = v3;
        *(v17 + 24) = v4;
        v18 = v3;
        v19 = v4;
        v20 = MEMORY[0x24C1FAD20](v16._countAndFlagsBits, v16._object);

        aBlock[4] = partial apply for closure #1 in DOCCreateNewFolderPostflightUIOperation.main(with:previousOperationError:);
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        aBlock[3] = &block_descriptor_21_3;
        v21 = _Block_copy(aBlock);

        v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
        _Block_release(v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_249BA0290;
        *(v23 + 32) = v22;
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = 0;
        v24[4] = v8;
        v24[5] = v10;
        v24[6] = v23;
        v24[7] = v18;
        v25 = v18;
        v26 = v22;
        DOCRunInMainThread(_:)();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_249B9FA70;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v28 + 32) = 0xD000000000000022;
      *(v28 + 40) = 0x8000000249BEA2B0;
      *(v28 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      *(v28 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
      *(v28 + 72) = v4;
      v29 = v4;
      os_log(_:dso:log:type:_:)();

      v30 = swift_allocObject();
      *(v30 + 16) = v3;
      *(v30 + 24) = v29;
      v31 = *((*MEMORY[0x277D85000] & *v3) + 0x158);
      v32 = v29;
      v3;
      v33 = v32;
      v31();
    }
  }

  else
  {
    v27 = *((*MEMORY[0x277D85000] & *v2) + 0xE0);

    return v27();
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCCreateNewFolderPostflightUIOperation.main(with:previousOperationError:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  memset(v4, 0, sizeof(v4));
  (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(v4, v1);
  return outlined destroy of Any?(v4);
}

id DOCActionUIOperation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void *DOCItemCollectionViewController.FolderMenuHeader.init(node:iconThumbnail:showExtensions:)(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v57 = a3;
  v7 = type metadata accessor for Date();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for UTType();
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader_needsFolderSizeMetadataLoad] = 1;
  *&v3[OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader_node] = a1;
  v15 = objc_allocWithZone(type metadata accessor for DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController());
  swift_unknownObjectRetain();
  v16 = swift_unknownObjectRetain();
  v61 = a2;
  v17 = DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.init(forThumbnail:)(v16);
  ObjectType = v4;
  *&v4[OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader_iconDelivery] = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  v19 = v17;
  v20 = [v18 init];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIImage);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = swift_allocObject();
  v60 = v19;
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.FolderMenuHeader.init(node:iconThumbnail:showExtensions:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderWriting?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  aBlock[3] = &block_descriptor_101;
  v23 = _Block_copy(aBlock);

  [v20 registerObjectOfClass:ObjCClassFromMetadata visibility:3 loadHandler:v23];
  _Block_release(v23);
  v24 = [objc_allocWithZone(MEMORY[0x277CD46B8]) init];
  [v24 setType_];
  v25 = [objc_allocWithZone(MEMORY[0x277CD46A0]) init];
  v26 = objc_allocWithZone(MEMORY[0x277CD46B0]);
  v59 = v20;
  v27 = [v26 initWithItemProvider:v20 properties:v24 placeholderImage:0];
  [v25 setThumbnail_];

  static UTType.folder.getter();
  v28 = UTType.identifier.getter();
  v30 = v29;
  (*(v11 + 8))(v14, v56);
  v31 = MEMORY[0x24C1FAD20](v28, v30);

  [v25 setType_];

  swift_getObjectType();
  v32 = [a1 doc_creationDate];
  if (v32)
  {
    v33 = v32;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v34.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v54 + 8))(v10, v55);
  }

  else
  {
    v34.super.isa = 0;
  }

  [v25 setCreationDate_];

  v35 = DOCNode.displayName(withHiddenPathExtension:)(v57 & 1);
  countAndFlagsBits = v35._countAndFlagsBits;
  object = v35._object;
  if (one-time initialization token for _sharedNavItemForMenuTitleFormatting != -1)
  {
    swift_once();
  }

  v38 = static DOCItemCollectionViewController.FolderMenuHeader._sharedNavItemForMenuTitleFormatting;
  v39 = MEMORY[0x24C1FAD20](v35._countAndFlagsBits, v35._object);
  [v38 setTitle_];

  v40 = [v38 title];
  if (v40)
  {
    v41 = v40;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    object = v43;
  }

  v44 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

  [v25 setName_];

  v45 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  [v45 setSpecialization_];
  v46 = type metadata accessor for DOCItemCollectionViewController.FolderMenuHeader();
  v62.receiver = ObjectType;
  v62.super_class = v46;
  v47 = objc_msgSendSuper2(&v62, sel_initWithMetadata_, v45);
  v48 = v47;
  if (*(v47 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader_needsFolderSizeMetadataLoad) == 1)
  {
    *(v47 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader_needsFolderSizeMetadataLoad) = 0;
    ObjectType = swift_getObjectType();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v50 = v48;

    v51 = v24;
    v52 = static OS_dispatch_queue.main.getter();
    DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(v52, partial apply for closure #1 in DOCItemCollectionViewController.FolderMenuHeader.loadFolderSizeMetadata(), v49, ObjectType);

    v24 = v51;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v48;
}

uint64_t closure #1 in DOCItemCollectionViewController.FolderMenuHeader.init(node:iconThumbnail:showExtensions:)(void (*a1)(void, void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *((*MEMORY[0x277D85000] & *Strong) + 0xA8);
    v6 = Strong;

    v5(a1, a2);
  }

  else
  {
    a1(0, 0);
  }

  return 0;
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderWriting?, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> (), v4);

  return v5;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t static DOCItemCollectionViewController.FolderMenuHeader._effectiveMenuTitle(forNodeDisplayName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _sharedNavItemForMenuTitleFormatting != -1)
  {
    swift_once();
  }

  v4 = static DOCItemCollectionViewController.FolderMenuHeader._sharedNavItemForMenuTitleFormatting;
  v5 = MEMORY[0x24C1FAD20](a1, a2);
  [v4 setTitle_];

  v6 = [v4 title];
  if (v6)
  {
    v7 = v6;
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a1;
}

uint64_t *DOCItemCollectionViewController.FolderMenuHeader._sharedNavItemForMenuTitleFormatting.unsafeMutableAddressor()
{
  if (one-time initialization token for _sharedNavItemForMenuTitleFormatting != -1)
  {
    swift_once();
  }

  return &static DOCItemCollectionViewController.FolderMenuHeader._sharedNavItemForMenuTitleFormatting;
}

id one-time initialization function for _sharedNavItemForMenuTitleFormatting()
{
  result = [objc_allocWithZone(MEMORY[0x277D757A8]) init];
  static DOCItemCollectionViewController.FolderMenuHeader._sharedNavItemForMenuTitleFormatting = result;
  return result;
}

id static DOCItemCollectionViewController.FolderMenuHeader._sharedNavItemForMenuTitleFormatting.getter()
{
  if (one-time initialization token for _sharedNavItemForMenuTitleFormatting != -1)
  {
    swift_once();
  }

  v1 = static DOCItemCollectionViewController.FolderMenuHeader._sharedNavItemForMenuTitleFormatting;

  return v1;
}

void closure #1 in DOCItemCollectionViewController.FolderMenuHeader.loadFolderSizeMetadata()(uint64_t a1)
{
  if ((*(a1 + 25) & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    v1 = *a1;
    if (*a1 >= 1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = [Strong metadata];
        v5 = [v4 specialization];

        if (v5)
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClassUnconditional();
          [v6 setSize_];
          v7 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
          [v7 setSpecialization_];
          [v3 setMetadata_];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.delivered.getter()
{
  v1 = OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_delivered;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.delivered.setter(char a1)
{
  v3 = OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_delivered;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconThumbnail.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconThumbnail;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion : DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCDocumentSource?, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion : DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconProvidingDidLoadCompletion);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconProvidingDidLoadCompletion);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
  DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.didset(partial apply for closure #1 in DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.didset, &block_descriptor_32_2);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
}

uint64_t (*DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.modify;
}

uint64_t DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.didset(partial apply for closure #1 in DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.didset, &block_descriptor_32_2);
  }

  return result;
}

char *DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.init(forThumbnail:)(uint64_t a1)
{
  v21 = a1;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v19 = OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_serialQueue;
  v10 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18[0] = "mProviderWriting>@NSError>8";
  v18[1] = v10;
  static DispatchQoS.userInitiated.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v20);
  *&v1[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_delivered] = 0;
  v11 = &v1[OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconProvidingDidLoadCompletion];
  *v11 = 0;
  v11[1] = 0;
  *&v1[OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconThumbnail] = v21;
  v12 = type metadata accessor for DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController();
  v23.receiver = v1;
  v23.super_class = v12;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v23, sel_init);
  v14 = OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconThumbnail;
  swift_beginAccess();
  v15 = *&v13[v14];
  v16 = v13;
  [v15 addListener_];

  swift_unknownObjectRelease();
  return v16;
}

id DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconThumbnail;
  swift_beginAccess();
  [*&v0[v1] removeListener_];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void closure #1 in DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xC8))();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.deliverIconIfReady()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x70))() & 1) == 0)
  {
    v2 = *((*v1 & *v0) + 0x88);
    v3 = [v2() isLoading];
    v4 = swift_unknownObjectRelease();
    if ((v3 & 1) == 0)
    {
      v5 = (*((*v1 & *v0) + 0xA0))(v4);
      if (v5)
      {
        v6 = v5;
        v7 = (*((*v1 & *v0) + 0x78))(1);
        [(v2)(v7) removeListener_];
        v8 = swift_unknownObjectRelease();
        v9 = [(v2)(v8) thumbnail];
        swift_unknownObjectRelease();
        v10 = v9;
        v6(v9, 0);

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
      }
    }
  }
}

id DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCItemCollectionViewController.FolderMenuHeader.__allocating_init(url:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithURL_];

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id DOCItemCollectionViewController.FolderMenuHeader.__allocating_init(metadata:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMetadata_];

  return v3;
}

id DOCItemCollectionViewController.FolderMenuHeader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionViewController.FolderMenuHeader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCItemCollectionViewController.getDocumentMenuHeaderThumbnail(for:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v23 - v4;
  v6 = type metadata accessor for ImageOptions();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = v23 - v14;
  v16 = [v0 traitCollection];
  [v16 displayScale];

  v17 = type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
  v19 = (*((*MEMORY[0x277D85000] & *v1) + 0x11C0))(v18);
  if (v19)
  {
    (*(*v19 + 184))(v23);

    v25[8] = v23[8];
    v25[9] = v23[9];
    v26[0] = v24[0];
    *(v26 + 9) = *(v24 + 9);
    v25[4] = v23[4];
    v25[5] = v23[5];
    v25[6] = v23[6];
    v25[7] = v23[7];
    v25[0] = v23[0];
    v25[1] = v23[1];
    v25[2] = v23[2];
    v25[3] = v23[3];
    v20 = [v1 traitCollection];
    [v20 displayScale];
    UITraitCollection._ifColorForIconFolderTintComponents.getter();
    ImageOptions.init(size:scale:isFolded:folderTintComponents:)();

    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v25);
    (*(v7 + 8))(v15, v6);
    (*(v7 + 32))(v15, v10, v6);
  }

  (*(v7 + 16))(v10, v15, v6);
  objc_allocWithZone(type metadata accessor for NodeThumbnail());

  swift_unknownObjectRetain();
  v21 = NodeThumbnail.init(node:imageOptions:imageCache:)();
  (*(v7 + 8))(v15, v6);
  return v21;
}

uint64_t DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.didset(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_serialQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v5);
  (*(v9 + 8))(v12, v17);
}

uint64_t String.init(_:)(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  v2 = String.init<A>(_:)();

  return v2;
}

uint64_t String.append(_:)(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  v1 = String.init<A>(_:)();
  MEMORY[0x24C1FAEA0](v1);
}

uint64_t String.insert(_:at:)(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  String.init<A>(_:)();
  lazy protocol witness table accessor for type String and conformance String();
  String.insert<A>(contentsOf:at:)();
}

id NSAttributedString.init(_:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  v4 = MEMORY[0x24C1FAD20](v3);

  v5 = [v2 initWithString_];

  return v5;
}

void NSMutableAttributedString.appendUnicode(_:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v5 = (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  v6 = MEMORY[0x24C1FAD20](v5);

  v7 = [v4 initWithString_];

  [v2 appendAttributedString_];
}

void @objc NSMutableAttributedString.appendUnicode(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = *((*MEMORY[0x277D85000] & *a3) + 0x58);
  v7 = a3;
  v11 = a1;
  v8 = v6();
  v9 = MEMORY[0x24C1FAD20](v8);

  v10 = [v5 initWithString_];

  [v11 appendAttributedString_];
}

void NSMutableAttributedString.insertUnicode(_:at:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  v8 = MEMORY[0x24C1FAD20](v7);

  v9 = [v6 initWithString_];

  [v3 insertAttributedString:v9 atIndex:a2];
}

void @objc NSMutableAttributedString.insertUnicode(_:at:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = *((*MEMORY[0x277D85000] & *a3) + 0x58);
  v9 = a3;
  v13 = a1;
  v10 = v8();
  v11 = MEMORY[0x24C1FAD20](v10);

  v12 = [v7 initWithString_];

  [v13 insertAttributedString:v12 atIndex:a4];
}

Swift::Void __swiftcall DOCItemCollectionViewController.resetProtectedAppAuthenticationState(locationProtected:)(Swift::Bool locationProtected)
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D85000];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v9 = 136316162;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x8000000249BEA670, &v19);
      *(v9 + 12) = 1024;
      *(v9 + 14) = (*((*MEMORY[0x277D85000] & *v4) + 0xAB0))() & 1;
      *(v9 + 18) = 1024;
      *(v9 + 20) = (*((*MEMORY[0x277D85000] & *v4) + 0xAE0))() & 1;

      *(v9 + 24) = 2080;
      (*((*MEMORY[0x277D85000] & *v4) + 0xC70))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

      *(v9 + 26) = v14;
      *(v9 + 34) = 2112;
      *(v9 + 36) = v4;
      *v10 = v4;
      v15 = v4;
      _os_log_impl(&dword_2493AC000, v5, v6, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d observedNode: %s self: %@", v9, 0x2Cu);
      outlined destroy of NSObject?(v10);
      MEMORY[0x24C1FE850](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      v16 = v9;
      v8 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    else
    {
    }

    (*((*v8 & *v4) + 0xAB8))(locationProtected);
    (*((*v8 & *v4) + 0xAD0))(0);
    v17 = objc_opt_self();
    v18 = [v17 areAnimationsEnabled];
    [v17 setAnimationsEnabled_];
    DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
    specialized DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(1, v4, v18, specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:));
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.beginProtectedAppAuthentication()()
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13[0] = v7;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BEA6B0, v13);
      *(v5 + 12) = 2112;
      *(v5 + 14) = v2;
      *v6 = v2;
      v8 = v2;
      _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s authenticateLocationWithNoUI viewController: %@", v5, 0x16u);
      outlined destroy of NSObject?(v6);
      MEMORY[0x24C1FE850](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }

    v9 = [objc_opt_self() sharedManager];
    v10 = (*((*MEMORY[0x277D85000] & *v2) + 0xC70))();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = partial apply for closure #1 in DOCItemCollectionViewController.beginProtectedAppAuthentication();
    v13[5] = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v13[3] = &block_descriptor_102;
    v12 = _Block_copy(v13);

    [v9 authenticateLocationWithNoUI:v10 completion:v12];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.startObservingAppProtectionNotifications()()
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BEA6E0, &v15);
      *(v5 + 12) = 2112;
      *(v5 + 14) = v2;
      *v6 = v2;
      v8 = v2;
      _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s: self: %@", v5, 0x16u);
      outlined destroy of NSObject?(v6);
      MEMORY[0x24C1FE850](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }

    v9 = objc_opt_self();
    v10 = [v9 defaultCenter];
    [v10 addObserver:v2 selector:sel_appProtectionStatusChangedWithNotification_ name:*MEMORY[0x277D060A8] object:0];

    v11 = [v9 defaultCenter];
    [v11 addObserver:v2 selector:sel_setProtectedStateToLockedForDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v12 = [v9 defaultCenter];
    [v12 addObserver:v2 selector:sel_setProtectedStateToLockedForDidEnterBackground name:*MEMORY[0x277CCA0C8] object:0];

    v13 = [v9 defaultCenter];
    [v13 addObserver:v2 selector:sel_updateProtectedStateForDidEnterForeground name:*MEMORY[0x277D76758] object:0];

    v14 = [v9 defaultCenter];
    [v14 addObserver:v2 selector:sel_updateProtectedStateForDidEnterForeground name:*MEMORY[0x277CCA0D0] object:0];
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 136316162;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BEA710, &v23);
    *(v7 + 12) = 1024;
    *(v7 + 14) = (*((*v6 & *v2) + 0xAB0))() & 1;
    *(v7 + 18) = 1024;
    *(v7 + 20) = (*((*MEMORY[0x277D85000] & *v2) + 0xAE0))() & 1;

    *(v7 + 24) = 2080;
    (*((*MEMORY[0x277D85000] & *v2) + 0xC70))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);
    v6 = MEMORY[0x277D85000];

    *(v7 + 26) = v12;
    *(v7 + 34) = 2112;
    *(v7 + 36) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d observedNode: %s self: %@", v7, 0x2Cu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  else
  {
  }

  v15 = *((*v6 & *v2) + 0xAE0);
  if (v15(v14))
  {
    showAppProtectionShieldUI #1 () in DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()(v2);
  }

  else
  {
    teardownAppProtectionShieldUI #1 () in DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()(v2);
  }

  v16 = v2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315650;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BEA710, &v23);
    *(v19 + 4) = v21;
    *(v19 + 12) = 1024;
    v22 = (*((*MEMORY[0x277D85000] & *v16) + 0xAB0))(v21);
    *(v19 + 14) = v22 & 1;
    *(v19 + 18) = 1024;
    *(v19 + 20) = v15(v22) & 1;

    _os_log_impl(&dword_2493AC000, v17, v18, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d reloading contents of item collection", v19, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  else
  {
  }

  DOCItemCollectionViewController.reloadCollectionForAppProtectionStateChange()();
}

Swift::Void __swiftcall DOCItemCollectionViewController.stopObservingAppProtectionNotifications()()
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000249BEA750, &v15);
      *(v5 + 12) = 2112;
      *(v5 + 14) = v2;
      *v6 = v2;
      v8 = v2;
      _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s: self: %@", v5, 0x16u);
      outlined destroy of NSObject?(v6);
      MEMORY[0x24C1FE850](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }

    v9 = objc_opt_self();
    v10 = [v9 defaultCenter];
    [v10 removeObserver:v2 name:*MEMORY[0x277D060A8] object:0];

    v11 = [v9 defaultCenter];
    [v11 removeObserver:v2 name:*MEMORY[0x277D76660] object:0];

    v12 = [v9 defaultCenter];
    [v12 removeObserver:v2 name:*MEMORY[0x277D76758] object:0];

    v13 = [v9 defaultCenter];
    [v13 removeObserver:v2 name:*MEMORY[0x277CCA0C8] object:0];

    v14 = [v9 defaultCenter];
    [v14 removeObserver:v2 name:*MEMORY[0x277CCA0D0] object:0];
  }
}

uint64_t showAppProtectionShieldUI #1 () in DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x1018);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    [v4 setHidden_];
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BEA8B0, &v20);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = a1;
    *(v10 + 22) = 2080;
    v13 = v7;
    v3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionViewCSgMd);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_2493AC000, v8, v9, "[PROTECTED APPS] %s: self: %@ collectionViewIfLoaded: %s", v10, 0x20u);
    outlined destroy of NSObject?(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    v17 = v10;
    v2 = MEMORY[0x277D85000];
    MEMORY[0x24C1FE850](v17, -1, -1);
  }

  return (*((*v2 & *v7) + 0xA40))(v18);
}

uint64_t teardownAppProtectionShieldUI #1 () in DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x1018);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    [v4 setHidden_];
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000249BEA8D0, &v20);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = a1;
    *(v10 + 22) = 2080;
    v13 = v7;
    v3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionViewCSgMd);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_2493AC000, v8, v9, "[PROTECTED APPS] %s: self: %@ collectionViewIfLoaded: %s", v10, 0x20u);
    outlined destroy of NSObject?(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    v17 = v10;
    v2 = MEMORY[0x277D85000];
    MEMORY[0x24C1FE850](v17, -1, -1);
  }

  return (*((*v2 & *v7) + 0xA40))(v18);
}

void specialized DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(char a1, void *a2, char a3, void (*a4)(uint64_t, void, void, void *, void))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = MEMORY[0x277D85000];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136316162;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BEA780, &v26);
    v23 = a3;
    *(v12 + 12) = 1024;
    *(v12 + 14) = (*((*v11 & *v7) + 0xAB0))() & 1;
    *(v12 + 18) = 1024;
    *(v12 + 20) = (*((*v11 & *v7) + 0xAE0))() & 1;

    *(v12 + 24) = 2080;
    v15 = v11;
    (*((*v11 & *v7) + 0xC70))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);

    *(v12 + 26) = v18;
    a3 = v23;
    *(v12 + 34) = 2112;
    *(v12 + 36) = v7;
    *v13 = v7;
    v19 = v7;
    _os_log_impl(&dword_2493AC000, v8, v9, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d observedNode: %s self: %@", v12, 0x2Cu);
    outlined destroy of NSObject?(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  else
  {
    v15 = MEMORY[0x277D85000];
  }

  v20 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v20)
  {
    v21 = (*((*v15 & *v20) + 0x290))();
    if ((*((*v15 & *v7) + 0xBD8))() == 2)
    {
      v22 = [objc_opt_self() sharedManager];
      a4(v21, 0, a1 & 1, v7, a3 & 1);
    }

    else
    {
      [objc_opt_self() setAnimationsEnabled_];
    }
  }

  else
  {
    [objc_opt_self() setAnimationsEnabled_];
  }
}

void specialized DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(char a1, void *a2)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x277D85000];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136316162;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BEA780, &v22);
    *(v10 + 12) = 1024;
    *(v10 + 14) = (*((*v9 & *v5) + 0xAB0))() & 1;
    *(v10 + 18) = 1024;
    *(v10 + 20) = (*((*v9 & *v5) + 0xAE0))() & 1;

    *(v10 + 24) = 2080;
    (*((*v9 & *v5) + 0xC70))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v10 + 26) = v15;
    *(v10 + 34) = 2112;
    *(v10 + 36) = v5;
    *v11 = v5;
    v16 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d observedNode: %s self: %@", v10, 0x2Cu);
    outlined destroy of NSObject?(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {
  }

  v18 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v18)
  {
    v19 = (*((*v9 & *v18) + 0x290))(v17);
    if ((*((*v9 & *v5) + 0xBD8))(v19) == 2)
    {
      v20 = [objc_opt_self() sharedManager];
      v21 = v5;
      specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v19, 0, a1 & 1, v21);
    }

    else
    {
    }
  }
}

uint64_t DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = MEMORY[0x277D85000];
  if (v11)
  {
    v28 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = a1;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v13 = 136316162;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BEA780, &v29);
    *(v13 + 12) = 1024;
    *(v13 + 14) = (*((*v12 & *v8) + 0xAB0))() & 1;
    *(v13 + 18) = 1024;
    *(v13 + 20) = (*((*v12 & *v8) + 0xAE0))() & 1;

    *(v13 + 24) = 2080;
    (*((*v12 & *v8) + 0xC70))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

    *(v13 + 26) = v18;
    *(v13 + 34) = 2112;
    *(v13 + 36) = v8;
    *v14 = v8;
    v19 = v8;
    _os_log_impl(&dword_2493AC000, v9, v10, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d observedNode: %s self: %@", v13, 0x2Cu);
    outlined destroy of NSObject?(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    swift_arrayDestroy();
    v20 = v15;
    a1 = v27;
    MEMORY[0x24C1FE850](v20, -1, -1);
    v21 = v13;
    a2 = v28;
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  else
  {
  }

  v22 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v22)
  {
    return a2();
  }

  v23 = (*((*v12 & *v22) + 0x290))();
  if ((*((*v12 & *v8) + 0xBD8))() == 2)
  {
    v24 = [objc_opt_self() sharedManager];
    v25 = v8;

    specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v23, 0, a1 & 1, v25, a2, a3);
  }

  else
  {
    a2();
  }
}

id specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(unint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  v39 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
    v36 = v3;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:
    v9 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = a2;
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  v6 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](v6, a1);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    v38 = v7;
    if (closure #1 in closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(&v38, v3))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v3 = v36;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_14;
    }
  }

  if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(a1 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v9 = v39;
  if (v39 < 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v37 = *(v9 + 16);
  if (!v37)
  {
    goto LABEL_35;
  }

  while (2)
  {
    v10 = 0;
    v11 = v9 & 0xC000000000000001;
    v12 = &unk_2810DF000;
    v13 = static Logger.UI;
    v33 = v9;
    v32 = v9 & 0xC000000000000001;
    while (2)
    {
      if (v11)
      {
        v14 = MEMORY[0x24C1FC540](v10, v9);
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        goto LABEL_26;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_33;
      }

      v14 = *(v9 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v15 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
LABEL_26:
        if (v12[150] != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, v13);
        swift_unknownObjectRetain();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v39 = v35;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BEA780, &v39);
          *(v19 + 12) = 2080;
          v34 = v18;
          v20 = v15;
          v21 = v13;
          v22 = v12;
          v23 = [v14 description];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v12 = v22;
          v13 = v21;
          v15 = v20;
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v39);

          *(v19 + 14) = v27;
          v11 = v32;
          _os_log_impl(&dword_2493AC000, v17, v34, "[PROTECTED APPS] %s: recursively collapsing node: %s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v35, -1, -1);
          v28 = v19;
          v9 = v33;
          MEMORY[0x24C1FE850](v28, -1, -1);
        }

        DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(v14);
        swift_unknownObjectRelease();
        ++v10;
        if (v15 == v37)
        {
          goto LABEL_35;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v37 = __CocoaSet.count.getter();
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v29 = objc_opt_self();

  return [v29 setAnimationsEnabled_];
}

uint64_t specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
    v26 = v2;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:
    v8 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = a2;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  v5 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1FC540](v5, a1);
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    v28 = v6;
    if (closure #1 in closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(&v28, v2))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v2 = v26;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_14;
    }
  }

  if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(a1 + 8 * v5 + 32);
  swift_unknownObjectRetain();
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v8 = v29;
  if (v29 < 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v27 = *(v8 + 16);
  if (!v27)
  {
    goto LABEL_35;
  }

  while (2)
  {
    v9 = 0;
    v25 = v8 & 0xC000000000000001;
    v22 = v8;
    while (2)
    {
      if (v25)
      {
        v10 = MEMORY[0x24C1FC540](v9, v8);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        goto LABEL_26;
      }

      if (v9 >= *(v8 + 16))
      {
        goto LABEL_33;
      }

      v10 = *(v8 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v11 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
LABEL_26:
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.UI);
        swift_unknownObjectRetain();
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v13, v14))
        {
          v23 = v14;
          v15 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v29 = v24;
          *v15 = 136315394;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BEA780, &v29);
          *(v15 + 12) = 2080;
          v16 = [v10 description];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

          *(v15 + 14) = v20;
          v8 = v22;
          _os_log_impl(&dword_2493AC000, v13, v23, "[PROTECTED APPS] %s: recursively collapsing node: %s", v15, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v24, -1, -1);
          MEMORY[0x24C1FE850](v15, -1, -1);
        }

        DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(v10);
        swift_unknownObjectRelease();
        ++v9;
        if (v11 == v27)
        {
          goto LABEL_35;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_35:
}

uint64_t closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a2;
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
    v31 = v3;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:
    v9 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = a2;
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  v6 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](v6, a1);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    v33 = v7;
    if (closure #1 in closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(&v33, v3))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v3 = v31;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_14;
    }
  }

  if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(a1 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v9 = v34;
  if (v34 < 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v32 = *(v9 + 16);
  if (!v32)
  {
    goto LABEL_35;
  }

  while (2)
  {
    v10 = 0;
    v30 = v9 & 0xC000000000000001;
    v11 = &unk_2810DF000;
    v29 = v9;
    while (2)
    {
      if (v30)
      {
        v12 = MEMORY[0x24C1FC540](v10, v9);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        goto LABEL_26;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_33;
      }

      v12 = *(v9 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v13 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
LABEL_26:
        if (v11[150] != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.UI);
        swift_unknownObjectRetain();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        v17 = v16;
        if (os_log_type_enabled(v15, v16))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v34 = v19;
          *v18 = 136315394;
          *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BEA780, &v34);
          *(v18 + 12) = 2080;
          v20 = [v12 description];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v34);

          *(v18 + 14) = v24;
          v11 = &unk_2810DF000;
          _os_log_impl(&dword_2493AC000, v15, v17, "[PROTECTED APPS] %s: recursively collapsing node: %s", v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v19, -1, -1);
          v25 = v18;
          v9 = v29;
          MEMORY[0x24C1FE850](v25, -1, -1);
        }

        DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(v12);
        swift_unknownObjectRelease();
        ++v10;
        if (v13 == v32)
        {
          goto LABEL_35;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v32 = __CocoaSet.count.getter();
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_35:

  return a3(v26);
}

id closure #1 in closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(id *a1, uint64_t a2)
{
  v3 = *a1;
  result = [*a1 isFolder];
  if (!result)
  {
    v6 = 0;
    return (v6 & 1);
  }

  v5 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v5)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v5) + 0x128))(v3);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    swift_unknownObjectRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315650;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BEA780, &v17);
      *(v10 + 12) = 2080;
      v12 = [v3 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v17);

      *(v10 + 14) = v16;
      *(v10 + 22) = 1024;
      *(v10 + 24) = v6 & 1;
      _os_log_impl(&dword_2493AC000, v8, v9, "[PROTECTED APPS] %s: node requiring authentication: %s isExpanded: %{BOOL}d", v10, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    return (v6 & 1);
  }

  __break(1u);
  return result;
}

void closure #1 in DOCItemCollectionViewController.beginProtectedAppAuthentication()(char a1, void *a2)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = a2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315906;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BEA6B0, v21);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    *(v8 + 18) = 2080;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v21);

    *(v8 + 20) = v13;
    *(v8 + 28) = 2080;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCItemCollectionViewControllerCSgMd);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v21);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_2493AC000, v6, v7, "[PROTECTED APPS] %s authenticateLocationWithNoUI success: %{BOOL}d error: %s viewController: %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xAD0))(a1 & 1);
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
  }
}

void DOCItemCollectionViewController.updateProtectedState()()
{
  v1 = v0;
  if ([objc_opt_self() protectedAppsEnabled])
  {
    v2 = MEMORY[0x277D85000];
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xAB0);
    v4 = v3();
    v5 = *((*v2 & *v0) + 0xC70);
    v6 = v5();
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() sharedManager];
      v9 = [v8 nodeRequiresAuthentication:v7 Sync:?];

      (*((*v2 & *v1) + 0xAB8))(v9);
      (*((*v2 & *v1) + 0xAD0))(0);
      swift_unknownObjectRelease();
    }

    else
    {
      (*((*v2 & *v0) + 0xAB8))();
      (*((*v2 & *v0) + 0xAD0))(0);
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v21 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v4;
      v16 = swift_slowAlloc();
      v22 = v16;
      *v13 = 136316162;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEA890, &v22);
      *(v13 + 12) = 1024;
      *(v13 + 14) = v15 & 1;
      *(v13 + 18) = 1024;
      *(v13 + 20) = v3() & 1;

      *(v13 + 24) = 2080;
      v5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

      *(v13 + 26) = v19;
      *(v13 + 34) = 2112;
      *(v13 + 36) = v21;
      *v14 = v1;
      v20 = v21;
      _os_log_impl(&dword_2493AC000, v11, v12, "[PROTECTED APPS] %s: changed from: %{BOOL}d to locationIsProtected: %{BOOL}d observedNode: %s self: %@", v13, 0x2Cu);
      outlined destroy of NSObject?(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    else
    {
    }
  }
}

void DOCItemCollectionViewController.setProtectedStateToLockedForDidEnterBackground()()
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = MEMORY[0x277D85000];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v7 = 136316162;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BEA850, &v16);
      *(v7 + 12) = 1024;
      *(v7 + 14) = (*((*v6 & *v2) + 0xAB0))() & 1;
      *(v7 + 18) = 1024;
      *(v7 + 20) = (*((*v6 & *v2) + 0xAE0))() & 1;

      *(v7 + 24) = 2080;
      (*((*v6 & *v2) + 0xC70))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

      *(v7 + 26) = v12;
      *(v7 + 34) = 2112;
      *(v7 + 36) = v2;
      *v8 = v2;
      v13 = v2;
      _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d observedNode: %s self: %@", v7, 0x2Cu);
      outlined destroy of NSObject?(v8);
      MEMORY[0x24C1FE850](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    else
    {
    }

    (*((*v6 & *v2) + 0xAD0))(0);
    v14 = objc_opt_self();
    v15 = [v14 areAnimationsEnabled];
    [v14 setAnimationsEnabled_];
    DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
    specialized DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(0, v2, v15, specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:));
  }
}

uint64_t DOCItemCollectionViewController.updateProtectedStateForDidEnterForeground()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v7 = 136316162;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BEA820, aBlock);
    *(v7 + 12) = 1024;
    *(v7 + 14) = (*((*v6 & *v2) + 0xAB0))() & 1;
    *(v7 + 18) = 1024;
    *(v7 + 20) = (*((*v6 & *v2) + 0xAE0))() & 1;

    *(v7 + 24) = 2080;
    (*((*v6 & *v2) + 0xC70))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, aBlock);

    *(v7 + 26) = v12;
    *(v7 + 34) = 2112;
    *(v7 + 36) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s: locationIsProtected: %{BOOL}d shouldShowAppProtectionShieldUI: %{BOOL}d observedNode: %s self: %@", v7, 0x2Cu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  else
  {
  }

  DOCItemCollectionViewController.updateProtectedState()();
  result = [objc_opt_self() protectedAppsEnabled];
  if (result)
  {
    result = (*((*v6 & *v2) + 0xAE0))();
    if (result)
    {
      result = (*((*v6 & *v2) + 0xC70))();
      if (result)
      {
        v15 = result;
        v16 = [objc_opt_self() sharedManager];
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.updateProtectedStateForDidEnterForeground();
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_4_0;
        v18 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [v16 authenticateLocationWithNoUI:v15 completion:v18];
        _Block_release(v18);

        return swift_unknownObjectRelease_n();
      }
    }
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.updateProtectedStateForDidEnterForeground()(char a1, void *a2)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = a2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315906;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BEA820, v21);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    *(v8 + 18) = 2080;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v21);

    *(v8 + 20) = v13;
    *(v8 + 28) = 2080;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables31DOCItemCollectionViewControllerCSgMd);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v21);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_2493AC000, v6, v7, "[PROTECTED APPS] %s authenticateLocationWithNoUI success: %{BOOL}d error: %s viewController: %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xAD0))(a1 & 1);
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
  }
}

void DOCItemCollectionViewController.appProtectionStatusChanged(notification:)(uint64_t a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  (*(v4 + 16))(v7, a1, v3);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000249BEA7D0, &v21);
    *(v12 + 12) = 2080;
    lazy protocol witness table accessor for type Notification and conformance Notification();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v9;
    v18 = v9;
    _os_log_impl(&dword_2493AC000, v10, v11, "[PROTECTED APPS] %s: notification: %s self: %@", v12, 0x20u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    v19 = v20;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v19, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  DOCItemCollectionViewController.updateProtectedState()();
  DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
  specialized DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(1, v9);
}

unint64_t lazy protocol witness table accessor for type Notification and conformance Notification()
{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    type metadata accessor for Notification();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

uint64_t DOCConcreteSelectionLocation.__allocating_init(selectedNodes:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    swift_getObjectType();
    v4 = DOCNode.sourceIdentifier.getter();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      v5 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v6 = [objc_allocWithZone(v1) initWithSourceIdentifier:v4 node:v5];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes;
    swift_beginAccess();
    *&v6[v7] = a1;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t DOCConcreteSelectionLocation.selectedNodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id DOCConcreteSelectionLocation.__allocating_init(sourceIdentifier:node:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithSourceIdentifier:a1 node:a2];

  swift_unknownObjectRelease();
  return v4;
}

id DOCConcreteSelectionLocation.init(sourceIdentifier:node:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes] = MEMORY[0x277D84F90];
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithSourceIdentifier_node_, a1, a2);

  swift_unknownObjectRelease();
  return v5;
}

id DOCConcreteSelectionLocation.__allocating_init(sourceIdentifier:title:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = MEMORY[0x24C1FAD20](a2, a3);

  v9 = [v7 initWithSourceIdentifier:a1 title:v8];

  return v9;
}

id DOCConcreteSelectionLocation.init(sourceIdentifier:title:)(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes] = MEMORY[0x277D84F90];
  v5 = MEMORY[0x24C1FAD20](a2, a3);

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  v6 = objc_msgSendSuper2(&v8, sel_initWithSourceIdentifier_title_, a1, v5);

  return v6;
}

id @objc DOCConcreteSelectionLocation.init(sourceIdentifier:node:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes] = MEMORY[0x277D84F90];
  v9.receiver = a1;
  v9.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  return objc_msgSendSuper2(&v9, *a5, a3, a4);
}

id DOCConcreteSelectionLocation.__allocating_init(taggedItemsSourceRepresentedTag:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithTaggedItemsSourceRepresentedTag_];

  return v3;
}

id DOCConcreteSelectionLocation.init(taggedItemsSourceRepresentedTag:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes] = MEMORY[0x277D84F90];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithTaggedItemsSourceRepresentedTag_, a1);

  return v3;
}

id DOCConcreteSelectionLocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCConcreteSelectionLocation.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCConcreteSelectionLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCConcreteSelectionLocation.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCConcreteSelectionLocation_selectedNodes] = MEMORY[0x277D84F90];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCConcreteSelectionLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCConcreteSelectionLocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCInterfaceSystemAppearance_Default.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 0x73697370696C6C65;
  result[3] = 0xEF656C637269632ELL;
  result[4] = 0x73697370696C6C65;
  result[5] = 0xE800000000000000;
  return result;
}

void *DOCInterfaceSystemAppearance_Default.init()()
{
  result = v0;
  v0[2] = 0x73697370696C6C65;
  v0[3] = 0xEF656C637269632ELL;
  v0[4] = 0x73697370696C6C65;
  v0[5] = 0xE800000000000000;
  return result;
}

id @objc DOCInterfaceSystemAppearance_Default.ellipsisMenuItemImageName.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  v3 = MEMORY[0x24C1FAD20](v1, v2);

  return v3;
}

uint64_t DOCInterfaceSystemAppearance_xrOS.ellipsisMenuItemImageName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id @objc DOCInterfaceSystemAppearance_Default.ellipsisMenuItemSmallImageName.getter(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v3 = MEMORY[0x24C1FAD20](v1, v2);

  return v3;
}

uint64_t DOCInterfaceSystemAppearance_xrOS.ellipsisMenuItemSmallImageName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCInterfaceSystemAppearance_Default.deinit()
{

  return v0;
}

uint64_t DOCInterfaceSystemAppearance_Default.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *DOCInterfaceSystemAppearance_xrOS.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 0x73697370696C6C65;
  result[3] = 0xE800000000000000;
  result[4] = 0x73697370696C6C65;
  result[5] = 0xE800000000000000;
  return result;
}

void *DOCInterfaceSystemAppearance_xrOS.init()()
{
  result = v0;
  v0[2] = 0x73697370696C6C65;
  v0[3] = 0xE800000000000000;
  v0[4] = 0x73697370696C6C65;
  v0[5] = 0xE800000000000000;
  return result;
}

uint64_t DOCFileProviderSyncStateObserver.__allocating_init(for:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DOCFileProviderSyncStateObserver.init(for:)(a1);
  return v2;
}

uint64_t DOCFileProviderSyncStateObserver.init(for:)(uint64_t a1)
{
  v15 = a1;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11, v2);
  v3 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10[1] = "@NSString16@0:8";
  v13 = *MEMORY[0x277D85268];
  v12 = *(v5 + 104);
  v12(v8);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  v10[3] = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v10[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = [objc_opt_self() hashTableWithOptions_];
  *(v1 + 40) = 0;
  (v12)(v8, v13, v14);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  *(v1 + 16) = v15;
  return v1;
}

id *DOCFileProviderSyncStateObserver.deinit()
{
  DOCFileProviderSyncStateObserver.stopObserving()();

  outlined destroy of CharacterSet?((v0 + 7), &_sypSgMd);
  outlined destroy of CharacterSet?((v0 + 11), &_sypSgMd);

  return v0;
}

uint64_t DOCFileProviderSyncStateObserver.__deallocating_deinit()
{
  DOCFileProviderSyncStateObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t DOCFileProviderSyncStateObserver.providerProgressURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [*(v1 + 16) storageURLs];
  v5 = type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = [*(v2 + 16) storageURLs];
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v9 + 16))
    {
      v23 = *(v5 - 8);
      (*(v23 + 16))(a1, v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v5);

      v10 = v23;
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BEAC80);
    v12 = [*(v2 + 16) description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    MEMORY[0x24C1FAEA0](v13, v15);

    MEMORY[0x24C1FAEA0](0xD00000000000002ALL, 0x8000000249BEACA0);
    if ((DOCIsInternalBuild() & 1) == 0)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.UI);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v24);
        _os_log_impl(&dword_2493AC000, v17, v18, "assertion failure: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x24C1FE850](v20, -1, -1);
        MEMORY[0x24C1FE850](v19, -1, -1);
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  v10 = *(v5 - 8);
  v11 = 1;
LABEL_13:
  v21 = *(v10 + 56);

  return v21(a1, v11, 1, v5);
}

uint64_t closure #1 in DOCFileProviderSyncStateObserver.addListener(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(a2 + 32) addObject_];
    if ((*(a2 + 40) & 1) == 0)
    {
      *(a2 + 40) = 1;
      DOCFileProviderSyncStateObserver.startObserving()();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCFileProviderSyncStateObserver.addListener(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 24);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v14, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v7);
  (*(v11 + 8))(v14, v20);
}

uint64_t closure #1 in DOCFileProviderSyncStateObserver.removeListener(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(a2 + 32) removeObject_];
    if (*(a2 + 40) == 1 && ![*(a2 + 32) count])
    {
      DOCFileProviderSyncStateObserver.stopObserving()();
      result = swift_unknownObjectRelease();
      *(a2 + 40) = 0;
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t DOCFileProviderSyncStateObserver.notifyListeners(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = partial apply for closure #1 in DOCFileProviderSyncStateObserver.notifyListeners(_:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_71_1;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void closure #1 in DOCFileProviderSyncStateObserver.notifyListeners(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCFileProviderSyncStateObserverListener_pMd);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](v8, v6);
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    ++v8;
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v9;

    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();
  }

  while (v7 != v8);
LABEL_10:
}

uint64_t DOCFileProviderSyncStateObserver.startObserving()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  aBlock[4] = a1;
  v22 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);
  v15 = v13;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

void closure #1 in DOCFileProviderSyncStateObserver.startObserving()(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  if ([*(a1 + 16) isMainiCloudDriveDomain])
  {
    a2();
  }

  v6 = *(a1 + 16);
  if ([v6 isiCloudDriveProvider])
  {
  }

  else
  {
    v7 = [v6 isUsingFPFS];

    if (!v7)
    {
      return;
    }
  }

  a3();
}

void *DOCFileProviderSyncStateObserver.downloadingProgress.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

void DOCFileProviderSyncStateObserver.downloadingProgress.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

void *DOCFileProviderSyncStateObserver.uploadingProgress.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void DOCFileProviderSyncStateObserver.uploadingProgress.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t DOCFileProviderSyncStateObserver.startFetchingProgressUpdates()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v34 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for FileProviderSyncState != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.FileProviderSyncState);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v10;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v18 = [*(v1 + 16) domainFullDisplayName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, aBlock);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_2493AC000, v12, v13, "Starting observation of %s progress updates.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v23 = v17;
    v10 = v35;
    MEMORY[0x24C1FE850](v23, -1, -1);
    v24 = v15;
    v6 = v36;
    MEMORY[0x24C1FE850](v24, -1, -1);
  }

  DOCFileProviderSyncStateObserver.providerProgressURL.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd);
  }

  (*(v7 + 32))(v10, v5, v6);
  v26 = objc_opt_self();
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in DOCFileProviderSyncStateObserver.startFetchingProgressUpdates();
  *(v31 + 24) = v30;
  aBlock[4] = _sSo10NSProgressCIeg_SgIeghgo_ABIegh_SgIeghgo_TRTA_0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed @Sendable () -> ())?);
  aBlock[3] = &block_descriptor_59_3;
  v32 = _Block_copy(aBlock);

  v33 = [v26 addSubscriberForFileURL:v29 withPublishingHandler:v32];
  _Block_release(v32);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  outlined assign with take of Any?(aBlock, v1 + 88);
  return swift_endAccess();
}

void (*closure #1 in DOCFileProviderSyncStateObserver.startFetchingProgressUpdates()(void *a1))()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v12 = DOCGridLayout.specIconWidth.modify;
  if (Strong)
  {
    v13 = Strong;
    DOCFileProviderSyncStateObserver.providerProgressURL.getter(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd);
      goto LABEL_9;
    }

    (*(v7 + 32))(v10, v5, v6);
    v14 = *(v13 + 16);
    v15 = FPProviderDomain.shouldUseDSEnumeration.getter();

    if (v15)
    {
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      v19 = [a1 fp:v17 isGlobalProgressForDomainAt:?];

      (*(v7 + 8))(v10, v6);
      if ((v19 & 1) == 0)
      {

        return DOCGridLayout.specIconWidth.modify;
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

LABEL_9:
    if ([a1 isDownloadingOperation])
    {
      DOCFileProviderSyncStateObserver.logProgress(_:isDownloading:isPublishing:)(a1, 1, 1);
      v20 = *(*v13 + 416);
      v21 = a1;
      v20(a1);
    }

    else
    {
      if (![a1 isUploadingOperation])
      {
LABEL_15:
        v24 = swift_allocObject();
        *(v24 + 16) = v13;
        *(v24 + 24) = a1;
        v25 = a1;
        return partial apply for closure #3 in closure #1 in DOCFileProviderSyncStateObserver.startFetchingProgressUpdates();
      }

      DOCFileProviderSyncStateObserver.logProgress(_:isDownloading:isPublishing:)(a1, 0, 1);
      v22 = *(*v13 + 440);
      v23 = a1;
      v22(a1);
    }

    if (*(v13 + 40) == 1)
    {
      DOCFileProviderSyncStateObserver.notifyListeners(_:)(closure #1 in closure #3 in closure #1 in DOCFileProviderSyncStateObserver.startFetchingProgressUpdates(), 0);
    }

    goto LABEL_15;
  }

  return v12;
}

void closure #3 in closure #1 in DOCFileProviderSyncStateObserver.startFetchingProgressUpdates()(_BYTE *a1, id a2)
{
  if ([a2 isDownloadingOperation])
  {
    v4 = (*(*a1 + 408))();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
      v6 = a2;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        DOCFileProviderSyncStateObserver.logProgress(_:isDownloading:isPublishing:)(v6, 1, 0);
        (*(*a1 + 416))(0);
        goto LABEL_9;
      }
    }
  }

  if ([a2 isUploadingOperation])
  {
    v8 = (*(*a1 + 432))();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
      v10 = a2;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        DOCFileProviderSyncStateObserver.logProgress(_:isDownloading:isPublishing:)(v10, 0, 0);
        (*(*a1 + 440))(0);
LABEL_9:
        if (a1[40] == 1)
        {
          DOCFileProviderSyncStateObserver.notifyListeners(_:)(closure #1 in closure #3 in closure #1 in DOCFileProviderSyncStateObserver.startFetchingProgressUpdates(), 0);
        }
      }
    }
  }
}

uint64_t DOCFileProviderSyncStateObserver.stopFetchingProgressUpdates()()
{
  v1 = v0;
  if (one-time initialization token for FileProviderSyncState != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.FileProviderSyncState);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = [*(v1 + 16) domainFullDisplayName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "Stopping observation of %s progress updates.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of Any?(v1 + 88, &v14);
  if (!*(&v15 + 1))
  {
    return outlined destroy of CharacterSet?(&v14, &_sypSgMd);
  }

  outlined init with take of Any(&v14, v16);
  v12 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  [v12 removeSubscriber_];
  swift_unknownObjectRelease();
  v14 = 0u;
  v15 = 0u;
  swift_beginAccess();
  outlined assign with take of Any?(&v14, v1 + 88);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

void *DOCFileProviderSyncStateObserver.syncStateInAppMessage.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

void DOCFileProviderSyncStateObserver.syncStateInAppMessage.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

id DOCFileProviderSyncStateObserver.quotaMessagingProvider.getter()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);
  }

  else
  {
    v3 = [objc_opt_self() shared];
    v4 = *(v0 + 144);
    *(v0 + 144) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t DOCFileProviderSyncStateObserver.startObservingUpdates.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t DOCFileProviderSyncStateObserver.startFetchingQuotaUpdates()()
{
  v1 = v0;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v2);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchTime();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13, v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 536))(1, v16);
  if (one-time initialization token for FileProviderSyncState != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.FileProviderSyncState);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = v8;
    v44 = v13;
    v23 = v22;
    v24 = swift_slowAlloc();
    v42 = v14;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    v26 = v18;
    v27 = [*(v1 + 16) domainFullDisplayName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

    *(v23 + 4) = v31;
    v18 = v26;
    _os_log_impl(&dword_2493AC000, v20, v21, "Starting observation of %s quota updates.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v32 = v25;
    v14 = v42;
    MEMORY[0x24C1FE850](v32, -1, -1);
    v33 = v23;
    v8 = v43;
    v13 = v44;
    MEMORY[0x24C1FE850](v33, -1, -1);
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v14 + 104))(v18, *MEMORY[0x277D851C8], v13);
  v44 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v18, v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v45 + 8);
  v35 = v47;
  v34(v8, v47);
  aBlock[4] = partial apply for closure #1 in DOCFileProviderSyncStateObserver.startFetchingQuotaUpdates();
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_46_2;
  v36 = _Block_copy(aBlock);

  v37 = v49;
  static DispatchQoS.unspecified.getter();
  v53 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v38 = v51;
  v39 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v44;
  MEMORY[0x24C1FB940](v12, v37, v38, v36);
  _Block_release(v36);

  (*(v48 + 8))(v38, v39);
  (*(v50 + 8))(v37, v52);
  v34(v12, v35);
}

uint64_t closure #1 in DOCFileProviderSyncStateObserver.startFetchingQuotaUpdates()(uint64_t a1)
{
  result = (*(*a1 + 528))(a1);
  if (result)
  {
    v3 = DOCFileProviderSyncStateObserver.quotaMessagingProvider.getter();
    [v3 startObservingUpdates];

    v4 = [objc_opt_self() defaultCenter];
    v5 = [objc_opt_self() currentInAppMessageChangedNotification];
    if (!v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = MEMORY[0x24C1FAD20](v6);
    }

    v7 = [objc_opt_self() mainQueue];
    v8 = swift_allocObject();
    swift_weakInit();
    v13 = partial apply for closure #1 in closure #1 in DOCFileProviderSyncStateObserver.startFetchingQuotaUpdates();
    v14 = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    ObjectType = &block_descriptor_52;
    v9 = _Block_copy(aBlock);

    v10 = [v4 addObserverForName:v5 object:0 queue:v7 usingBlock:v9];
    _Block_release(v9);

    ObjectType = swift_getObjectType();
    aBlock[0] = v10;
    swift_beginAccess();
    outlined assign with take of Any?(aBlock, a1 + 56);
    return swift_endAccess();
  }

  return result;
}

void closure #1 in closure #1 in DOCFileProviderSyncStateObserver.startFetchingQuotaUpdates()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = DOCFileProviderSyncStateObserver.quotaMessagingProvider.getter();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    v4 = [v2 fetchMessageFromNotification_];

    DOCFileProviderSyncStateObserver.logQuotaMessage(_:)(v4);
    v5 = *(*v1 + 488);
    v6 = v4;
    v5(v4);
    if (v1[40] == 1)
    {
      DOCFileProviderSyncStateObserver.notifyListeners(_:)(closure #1 in closure #1 in closure #1 in DOCFileProviderSyncStateObserver.startFetchingQuotaUpdates(), 0);
    }
  }
}

uint64_t DOCFileProviderSyncStateObserver.stopFetchingQuotaUpdates()()
{
  v1 = v0;
  (*(*v0 + 536))(0);
  if (one-time initialization token for FileProviderSyncState != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.FileProviderSyncState);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136315138;
    v7 = [*(v1 + 16) domainFullDisplayName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v17);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "Stopping observation of %s quota updates.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = DOCFileProviderSyncStateObserver.quotaMessagingProvider.getter();
  [v12 stopObservingUpdates];

  swift_beginAccess();
  outlined init with copy of Any?(v1 + 56, &v15);
  if (!v16)
  {
    return outlined destroy of CharacterSet?(&v15, &_sypSgMd);
  }

  outlined init with take of Any(&v15, v17);
  v13 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  [v13 removeObserver_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

void DOCFileProviderSyncStateObserver.logQuotaMessage(_:)(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    if (one-time initialization token for FileProviderSyncState == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

  v3 = 4271950;
  v55 = a1;
  v4 = [v55 contentTypeDescription];
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [v55 title];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 4271950;
  }

  v21 = [v55 subTitle];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0xE300000000000000;
    v23 = 4271950;
  }

  v26 = [v55 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCICloudQuotaInAppAction);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v53 = v23;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_13;
    }

LABEL_18:

    v32 = 0xE300000000000000;
    goto LABEL_19;
  }

  v53 = v23;
  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x24C1FC540](0, v27);
    goto LABEL_16;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v27 + 32);
LABEL_16:
    v29 = v28;

    v30 = [v29 title];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

LABEL_19:
    v33 = v25;
    if (one-time initialization token for FileProviderSyncState != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.FileProviderSyncState);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v11;
      v38 = v6;
      v39 = swift_slowAlloc();
      v50 = v9;
      v52 = swift_slowAlloc();
      v56 = v52;
      *v39 = 136316162;
      v40 = [*(v2 + 16) domainFullDisplayName];
      v51 = v3;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v33;
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v56);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v38, &v56);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2080;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v37, &v56);

      *(v39 + 24) = v47;
      *(v39 + 32) = 2080;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v42, &v56);

      *(v39 + 34) = v48;
      *(v39 + 42) = 2080;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v32, &v56);

      *(v39 + 44) = v49;
      _os_log_impl(&dword_2493AC000, v35, v36, "Publishing %s quota message: content type = %s, title = %s, subtitle = %s, action = %s.", v39, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v52, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_5:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.FileProviderSyncState);

  v55 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v55, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v14 = 136315138;
    v16 = [*(v2 + 16) domainFullDisplayName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v56);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2493AC000, v55, v13, "Unpublishing %s quota message", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
LABEL_23:

    return;
  }

LABEL_25:
}

void DOCFileProviderSyncStateObserver.logProgress(_:isDownloading:isPublishing:)(void *a1, char a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v5 = 0x696873696C627550;
  }

  else
  {
    v5 = 0x73696C6275706E55;
  }

  if (a3)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xEC000000676E6968;
  }

  if (a2)
  {
    v7 = 0x64616F6C6E776F64;
  }

  else
  {
    v7 = 0x6E6964616F6C7075;
  }

  if (a2)
  {
    v8 = 0xEB00000000676E69;
  }

  else
  {
    v8 = 0xE900000000000067;
  }

  v9 = [a1 localizedDescription];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 4271950;
  }

  if (one-time initialization token for FileProviderSyncState != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.FileProviderSyncState);

  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315906;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v27);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    v19 = [*(v4 + 16) domainFullDisplayName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v27);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v27);

    *(v16 + 24) = v24;
    *(v16 + 32) = 2080;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v27);

    *(v16 + 34) = v25;
    _os_log_impl(&dword_2493AC000, oslog, v15, "%s %s %s progress: %s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t NSNotification.SubscriptionsController.__allocating_init(observee:)()
{
  swift_allocObject();
  v0 = specialized NSNotification.SubscriptionsController.init(observee:)();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NSNotification.SubscriptionsController.deinit()
{
  (*(*v0 + 160))();
  MEMORY[0x24C1FE970](v0 + 16);

  return v0;
}

uint64_t NSNotification.SubscriptionsController.__deallocating_deinit()
{
  NSNotification.SubscriptionsController.deinit();

  return swift_deallocClassInstance();
}

uint64_t NSNotification.SubscriptionsController.startObserving(_:object:queue:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x24C1FAD20]();
  v12 = (*(*v6 + 152))(v11, a3, a4, a5, a6);

  return v12;
}

uint64_t closure #1 in NSNotification.SubscriptionsController.startObserving(_:object:queue:handler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      a3(Strong, a1);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall NSNotification.SubscriptionsController.invalidateAll()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = (*(v1 + 48) + 16 * (v8 | (v7 << 6)));
    v10 = *v9;
    v11 = v9[1];

    swift_unknownObjectRetain();
    specialized NSNotification.SubscriptionsController.removeRegistration(_:endObserving:)(v10, v11);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t NSNotificationCenter.Observance.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSNotificationCenter.Observance();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = [objc_opt_self() defaultCenter];
  outlined init with copy of Any?(a2, aBlock);
  v12 = v29;
  if (v29)
  {
    v13 = __swift_project_boxed_opaque_existential_1(aBlock, v29);
    v27 = a3;
    v14 = a5;
    v15 = a4;
    v16 = a1;
    v17 = *(v12 - 1);
    v18 = MEMORY[0x28223BE20](v13, v13);
    v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v20, v12);
    a1 = v16;
    a4 = v15;
    a5 = v14;
    a3 = v27;
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    v21 = 0;
  }

  v22 = swift_allocObject();
  v22[2] = v10;
  v22[3] = a4;
  v22[4] = a5;
  v30 = partial apply for closure #1 in NSNotificationCenter.doc_observeOnce(forName:object:queue:using:);
  v31 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v29 = &block_descriptor_9_7;
  v23 = _Block_copy(aBlock);

  v24 = [v11 addObserverForName:a1 object:v21 queue:a3 usingBlock:v23];
  _Block_release(v23);

  swift_unknownObjectRelease();
  *(v10 + 16) = v24;

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  return a3();
}

id DOCItemCollectionLoadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCItemCollectionLoadingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_label;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_label] = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_activity] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249BA1010;
  v13 = *&v4[v10];
  *(v12 + 32) = v11;
  *(v12 + 40) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for UIView();
  v15 = v11;
  v16 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v14 initWithArrangedSubviews_];

  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_stackView] = v18;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for DOCItemCollectionLoadingView();
  v19 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  DOCItemCollectionLoadingView.setup()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249B9A480;
  v21 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v22 = MEMORY[0x277D74DB8];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v19;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

void DOCItemCollectionLoadingView.effectiveAppearanceDidChange(_:)(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCItemCollectionLoadingView();
  objc_msgSendSuper2(&v4, sel_effectiveAppearanceDidChange_, a1);
  v3 = [a1 backgroundColor];
  [v1 setBackgroundColor_];
}

Swift::Void __swiftcall DOCItemCollectionLoadingView.updateForChangedContentSizeCategory()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_activity];
  if (v1)
  {
    v4 = 101;
  }

  else
  {
    v4 = 100;
  }

  [v3 setActivityIndicatorViewStyle_];
}

void DOCItemCollectionLoadingView.setup()()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_label];
  v4 = [v1 secondaryLabelColor];
  [v3 setTextColor_];

  v5 = _DocumentManagerBundle();
  if (v5)
  {
    v6 = v5;
    v26._object = 0x8000000249BEADF0;
    v7._countAndFlagsBits = 0x474E4944414F4CLL;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v7._object = 0xE700000000000000;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD000000000000046;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v26);

    v11 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    [v3 setText_];

    v12 = [objc_opt_self() preferredFontForTextStyle_];
    [v3 setFont_];

    [v3 setAdjustsFontForContentSizeCategory_];
    v13 = [v0 traitCollection];
    v14 = [v13 preferredContentSizeCategory];

    LOBYTE(v13) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v15 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_activity];
    if (v13)
    {
      v16 = 101;
    }

    else
    {
      v16 = 100;
    }

    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_activity] setActivityIndicatorViewStyle_];
    [v15 startAnimating];
    v17 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_stackView];
    [v17 setAlignment_];
    [v17 setAxis_];
    [v17 setSpacing_];
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v18 = [v17 centerXAnchor];
    v19 = [v0 safeAreaLayoutGuide];
    v20 = [v19 centerXAnchor];

    v21 = [v18 constraintEqualToAnchor_];
    [v21 setActive_];

    v22 = [v17 centerYAnchor];
    v23 = [v0 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    [v24 setActive_];
  }

  else
  {
    __break(1u);
  }
}