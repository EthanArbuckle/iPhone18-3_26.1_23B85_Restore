unint64_t sub_1C4BC3EAC()
{
  result = qword_1EC0C46A0;
  if (!qword_1EC0C46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C46A0);
  }

  return result;
}

unint64_t sub_1C4BC3F04()
{
  result = qword_1EC0C46A8;
  if (!qword_1EC0C46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C46A8);
  }

  return result;
}

unint64_t sub_1C4BC3F5C()
{
  result = qword_1EDDFB0F0;
  if (!qword_1EDDFB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0F0);
  }

  return result;
}

unint64_t sub_1C4BC3FB4()
{
  result = qword_1EDDFB0F8;
  if (!qword_1EDDFB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0F8);
  }

  return result;
}

unint64_t sub_1C4BC400C()
{
  result = qword_1EDDFD610;
  if (!qword_1EDDFD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD610);
  }

  return result;
}

unint64_t sub_1C4BC4064()
{
  result = qword_1EDDFD618;
  if (!qword_1EDDFD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD618);
  }

  return result;
}

void sub_1C4BC40B8()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v2;
  v8 = sub_1C4EF98F8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v18 = *v4;
  v17 = v4[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C43FDF98(&xmmword_1EDDFEC78);
  v20 = 2 * (v19 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C43FDF98(&xmmword_1EDDFFAE0);
  if (!v21)
  {
    v20 |= 4uLL;
  }

  sub_1C44F920C();
  if (static NSUserDefaults.viewDatabaseArtifactLoggingEnabled.getter())
  {
    v22 = 9;
  }

  else
  {
    v22 = 8;
  }

  sub_1C4BC42E8(v6);
  (*(v11 + 16))(v16, v6, v8);
  v23 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1C44F999C(v16, v20 | v22);
  if (v1)
  {
    (*(v11 + 8))(v6, v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v26;
    (*(v11 + 8))(v6, v8);
    v2[2] = v27;
  }

  sub_1C43FBC80();
}

void sub_1C4BC42E8(uint64_t a1)
{
  v75 = a1;
  v1 = sub_1C4EF98F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v64 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - v9;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = (v2 + 16);
  v72 = v11;
  v73 = (v2 + 8);
  *&v16 = 136315394;
  v67 = v16;
  v66 = v8;
  while (1)
  {
    LODWORD(v74) = v12;
    v17 = *(&unk_1F43DA1E8 + v13 + 32);
    v18 = sub_1C442B738(v72, qword_1EDE2DF70);
    v19 = *v15;
    (*v15)(v10, v75, v1);
    v69 = v18;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CB8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v70 = v19;
      v23 = v22;
      v24 = swift_slowAlloc();
      v76[0] = v24;
      *v23 = v67;
      sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0]);
      v25 = sub_1C4F02858();
      v68 = 0;
      v26 = v15;
      v28 = v27;
      v71 = *v73;
      v71(v10, v1);
      v29 = sub_1C441D828(v25, v28, v76);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v30 = v17 ? 0x6552616D65686373 : 0x6574707572726F63;
      v31 = v17 ? 0xEB00000000746573 : 0xE900000000000064;
      v32 = sub_1C441D828(v30, v31, v76);

      *(v23 + 14) = v32;
      v15 = v26;
      v14 = v68;
      _os_log_impl(&dword_1C43F8000, v20, v21, "ViewDatabaseArtifact: %s: checking for %s", v23, 0x16u);
      swift_arrayDestroy();
      v33 = v24;
      v8 = v66;
      MEMORY[0x1C6942830](v33, -1, -1);
      v34 = v23;
      v19 = v70;
      MEMORY[0x1C6942830](v34, -1, -1);
    }

    else
    {

      v71 = *v73;
      v71(v10, v1);
    }

    v35 = sub_1C4B6EBCC(v75, v17);
    if (v14)
    {
      break;
    }

    if (v35)
    {
      v70 = v19;
      v19(v8, v75, v1);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CB8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v17;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v74 = v15;
        v41 = v40;
        v76[0] = v40;
        *v39 = v67;
        sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0]);
        v42 = sub_1C4F02858();
        v43 = v8;
        v45 = v44;
        v71(v43, v1);
        v46 = sub_1C441D828(v42, v45, v76);

        *(v39 + 4) = v46;
        *(v39 + 12) = 2080;
        if (v38)
        {
          v47 = 0x6552616D65686373;
        }

        else
        {
          v47 = 0x6574707572726F63;
        }

        if (v38)
        {
          v48 = 0xEB00000000746573;
        }

        else
        {
          v48 = 0xE900000000000064;
        }

        v49 = sub_1C441D828(v47, v48, v76);

        *(v39 + 14) = v49;
        _os_log_impl(&dword_1C43F8000, v36, v37, "ViewDatabaseArtifact: %s: Encountered %s. Truncating database", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v41, -1, -1);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      else
      {

        v71(v8, v1);
      }

      sub_1C4BC4B2C(v75);
      sub_1C4B6E9F4();
      return;
    }

    v12 = 1;
    v13 = 1u;
    if (v74)
    {
      return;
    }
  }

  v50 = v65;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v72, qword_1EDE2E088);
  v19(v50, v75, v1);
  v51 = v14;
  v52 = sub_1C4F00968();
  v53 = sub_1C4F01CE8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = v1;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v76[0] = v57;
    *v54 = v67;
    sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0]);
    v58 = sub_1C4F02858();
    v60 = v59;
    v71(v50, v55);
    v61 = sub_1C441D828(v58, v60, v76);

    *(v54 + 4) = v61;
    *(v54 + 12) = 2112;
    v62 = v14;
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 14) = v63;
    *v56 = v63;
    _os_log_impl(&dword_1C43F8000, v52, v53, "ViewDatabaseArtifact: %s: startup failed to recover from a special state. Will truncate entire file: %@", v54, 0x16u);
    sub_1C45B4B90(v56);
    MEMORY[0x1C6942830](v56, -1, -1);
    sub_1C440962C(v57);
    MEMORY[0x1C6942830](v57, -1, -1);
    MEMORY[0x1C6942830](v54, -1, -1);
  }

  else
  {

    v71(v50, v1);
  }

  sub_1C4BC4B2C(v75);
}

uint64_t ViewDatabaseArtifact.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ViewDatabaseArtifact.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1C4BC4B2C(uint64_t a1)
{
  v2 = sub_1C4EF98F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0]);
    v12 = sub_1C4F02858();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1C441D828(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v8, v9, "ViewDatabaseArtifact: truncating database at %s", v10, 0xCu);
    sub_1C440962C(v11);
    MEMORY[0x1C6942830](v11, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v16 = objc_opt_self();
  sub_1C4EF98D8();
  v17 = sub_1C4F01108();

  [v16 truncateDatabaseAtPath_];
}

uint64_t ViewDatabaseArtifact.hash(into:)()
{
  v1 = sub_1C4EF98F8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, *(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v1);
  sub_1C4BC5D8C(&qword_1EDDFFA00, 255, MEMORY[0x1E6968FB0]);
  sub_1C4F00FE8();
  return (*(v4 + 8))(v9, v1);
}

uint64_t static ViewDatabaseArtifact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16 = *(v7 + 16);
  v16(&v19 - v14, *(a1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v4, v13);
  (v16)(v11, *(a2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v4);
  LOBYTE(a2) = sub_1C4EF98B8();
  v17 = *(v7 + 8);
  v17(v11, v4);
  v17(v15, v4);
  return a2 & 1;
}

uint64_t ViewDatabaseArtifact.hashValue.getter()
{
  sub_1C4F02AF8();
  ViewDatabaseArtifact.hash(into:)();
  return sub_1C4F02B68();
}

uint64_t sub_1C4BC50F4()
{
  v1 = *v0;
  sub_1C4F02AF8();
  ViewDatabaseArtifact.hash(into:)();
  return sub_1C4F02B68();
}

uint64_t ViewDatabaseArtifact.Property.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t ViewDatabaseArtifact.Property.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewDatabaseArtifact.Property() + 20);
  v4 = sub_1C4EFBE38();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ViewDatabaseArtifact.Property.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BD8();
  v5 = *v1;
  v6 = v3[1];
  sub_1C4418280(v9, v10);
  sub_1C4F028A8();
  if (!v2)
  {
    v7 = v3 + *(type metadata accessor for ViewDatabaseArtifact.Property() + 20);
    sub_1C4EFBE28();
    sub_1C4418280(v9, v10);
    sub_1C4F028A8();
  }

  return sub_1C440962C(v9);
}

uint64_t sub_1C4BC5314(uint64_t a1)
{
  v2 = sub_1C4BC5D8C(&qword_1EC0C46D0, 255, type metadata accessor for ViewDatabaseArtifact.Property);

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4BC5394(uint64_t a1)
{
  v2 = sub_1C4BC5D8C(&qword_1EC0C46B0, 255, type metadata accessor for ViewDatabaseArtifact.Property);

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4BC5414(uint64_t a1)
{
  v2 = sub_1C4BC5D8C(&qword_1EC0C46B0, 255, type metadata accessor for ViewDatabaseArtifact.Property);

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t ViewDatabaseArtifact.Property.description.getter()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x747265706F72503CLL, 0xED0000203A6E2079);
  MEMORY[0x1C6940010](*v0, v0[1]);
  MEMORY[0x1C6940010](0x203A74202CLL, 0xE500000000000000);
  v1 = *(type metadata accessor for ViewDatabaseArtifact.Property() + 20);
  sub_1C4EFBE38();
  sub_1C4F02438();
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4BC556C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4BC5634(char a1)
{
  if (a1)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1C4BC5664()
{
  sub_1C43FE96C();
  v13[0] = v1;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C46E0, &qword_1C4F5B508);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v13 - v10;
  v12 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4BC5DE4();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v0)
  {
    v13[1] = v13[0];
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443CFE8(&qword_1EDDFA578);
    sub_1C4F027E8();
  }

  (*(v7 + 8))(v11, v4);
  sub_1C43FBC80();
}

uint64_t sub_1C4BC5810(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C46D8, &unk_1C4F5B4F8);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4BC5DE4();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443CFE8(&qword_1EDDFEA58);
    sub_1C4F026C8();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C4BC5A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BC556C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BC5A48(uint64_t a1)
{
  v2 = sub_1C4BC5DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BC5A84(uint64_t a1)
{
  v2 = sub_1C4BC5DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BC5AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4BC5810(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1C4BC5AF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4BC5664();
}

uint64_t sub_1C4BC5D10()
{
  result = sub_1C4EFBE38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4BC5D8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4BC5DE4()
{
  result = qword_1EDDF45B0[0];
  if (!qword_1EDDF45B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF45B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewDatabaseArtifact.DatabaseIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BC5F18()
{
  result = qword_1EC0C46E8;
  if (!qword_1EC0C46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C46E8);
  }

  return result;
}

unint64_t sub_1C4BC5F70()
{
  result = qword_1EDDFB100;
  if (!qword_1EDDFB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB100);
  }

  return result;
}

unint64_t sub_1C4BC5FC8()
{
  result = qword_1EDDF45A8;
  if (!qword_1EDDF45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF45A8);
  }

  return result;
}

uint64_t sub_1C4BC60B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C4CFDC10();
}

uint64_t sub_1C4BC60E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C49476D0();
}

uint64_t sub_1C4BC615C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1C49477E0();
}

uint64_t sub_1C4BC61FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C4CFDC84();
}

uint64_t sub_1C4BC6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1C441A6BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  memcpy(v8, v9, v10);
  return sub_1C4947978();
}

uint64_t sub_1C4BC62DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v13, "DELETE FROM ");
  HIBYTE(v13[6]) = 0;
  v13[7] = -5120;
  v11 = (*(a3 + 8))(a2, a3, v8);
  MEMORY[0x1C6940010](v11);

  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v6 + 8))(v10, v5);
}

uint64_t sub_1C4BC643C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1C49478A4();
}

uint64_t sub_1C4BC6478(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *(v5 + 8);
  v17 = *(v5 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v12 + 8))(v15, v11);
  if (!v4)
  {
    sub_1C4BC76D8(result);
    v19 = sub_1C4EFBE98();
    v34 = 0;

    v31 = *(a2 + 16);
    if (v31)
    {
      v20 = 0;
      v30 = a2 + 32;
      v28 = v19;
      v29 = v10;
      do
      {
        v21 = *(v30 + 8 * v20);
        v22 = *(v21 + 16);
        if (v22)
        {
          v33 = v20;
          v37 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v22, 0);
          v23 = v37;
          v32 = v21;
          v24 = v21 + 32;
          do
          {
            sub_1C442E860(v24, v35);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v37 = v23;
            v26 = *(v23 + 16);
            v25 = *(v23 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_1C459D088((v25 > 1), v26 + 1, 1);
              v23 = v37;
            }

            *(v23 + 16) = v26 + 1;
            sub_1C44482AC(&v36, (v23 + 32 * v26 + 32));
            v24 += 40;
            --v22;
          }

          while (v22);

          v10 = v29;
          v20 = v33;
        }

        sub_1C4EFB788();
        v27 = v34;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v34 = v27;
        if (v27)
        {
          break;
        }

        ++v20;
      }

      while (v20 != v31);
    }
  }

  return result;
}

uint64_t sub_1C4BC679C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *v5;
  v17 = v5[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v12 + 8))(v15, v11);
  if (!v4)
  {
    sub_1C4BC77A4(result);
    v19 = sub_1C4EFBE98();
    v34 = 0;

    v31 = *(a2 + 16);
    if (v31)
    {
      v20 = 0;
      v30 = a2 + 32;
      v28 = v19;
      v29 = v10;
      do
      {
        v21 = *(v30 + 8 * v20);
        v22 = *(v21 + 16);
        if (v22)
        {
          v33 = v20;
          v37 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v22, 0);
          v23 = v37;
          v32 = v21;
          v24 = v21 + 32;
          do
          {
            sub_1C442E860(v24, v35);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v37 = v23;
            v26 = *(v23 + 16);
            v25 = *(v23 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_1C459D088((v25 > 1), v26 + 1, 1);
              v23 = v37;
            }

            *(v23 + 16) = v26 + 1;
            sub_1C44482AC(&v36, (v23 + 32 * v26 + 32));
            v24 += 40;
            --v22;
          }

          while (v22);

          v10 = v29;
          v20 = v33;
        }

        sub_1C4EFB788();
        v27 = v34;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v34 = v27;
        if (v27)
        {
          break;
        }

        ++v20;
      }

      while (v20 != v31);
    }
  }

  return result;
}

uint64_t sub_1C4BC6AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v15 + 8))(v18, v14);
  if (!v6)
  {
    v31 = v13;
    sub_1C4BC7868(a3, a4, v35, v36);
    v20 = sub_1C4EFBE98();
    v36 = 0;

    v33 = *(a2 + 16);
    if (v33)
    {
      v21 = 0;
      v32 = a2 + 32;
      v22 = v31;
      v30 = v20;
      do
      {
        v23 = *(v32 + 8 * v21);
        v24 = *(v23 + 16);
        if (v24)
        {
          v35 = v21;
          v39 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v24, 0);
          v25 = v39;
          v34 = v23;
          v26 = v23 + 32;
          do
          {
            sub_1C442E860(v26, v37);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v39 = v25;
            v28 = *(v25 + 16);
            v27 = *(v25 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_1C459D088((v27 > 1), v28 + 1, 1);
              v25 = v39;
            }

            *(v25 + 16) = v28 + 1;
            sub_1C44482AC(&v38, (v25 + 32 * v28 + 32));
            v26 += 40;
            --v24;
          }

          while (v24);

          v22 = v31;
          v21 = v35;
        }

        sub_1C4EFB788();
        v29 = v36;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v22, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v36 = v29;
        if (v29)
        {
          break;
        }

        ++v21;
      }

      while (v21 != v33);
    }
  }

  return result;
}

uint64_t sub_1C4BC6DF8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *v5;
  v17 = v5[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v12 + 8))(v15, v11);
  if (!v4)
  {
    sub_1C4BC7950(result);
    v19 = sub_1C4EFBE98();
    v34 = 0;

    v31 = *(a2 + 16);
    if (v31)
    {
      v20 = 0;
      v30 = a2 + 32;
      v28 = v19;
      v29 = v10;
      do
      {
        v21 = *(v30 + 8 * v20);
        v22 = *(v21 + 16);
        if (v22)
        {
          v33 = v20;
          v37 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v22, 0);
          v23 = v37;
          v32 = v21;
          v24 = v21 + 32;
          do
          {
            sub_1C442E860(v24, v35);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v37 = v23;
            v26 = *(v23 + 16);
            v25 = *(v23 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_1C459D088((v25 > 1), v26 + 1, 1);
              v23 = v37;
            }

            *(v23 + 16) = v26 + 1;
            sub_1C44482AC(&v36, (v23 + 32 * v26 + 32));
            v24 += 40;
            --v22;
          }

          while (v22);

          v10 = v29;
          v20 = v33;
        }

        sub_1C4EFB788();
        v27 = v34;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v34 = v27;
        if (v27)
        {
          break;
        }

        ++v20;
      }

      while (v20 != v31);
    }
  }

  return result;
}

uint64_t sub_1C4BC711C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *v5;
  v17 = v5[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v12 + 8))(v15, v11);
  if (!v4)
  {
    sub_1C4BC7A14(result);
    v19 = sub_1C4EFBE98();
    v34 = 0;

    v31 = *(a2 + 16);
    if (v31)
    {
      v20 = 0;
      v30 = a2 + 32;
      v28 = v19;
      v29 = v10;
      do
      {
        v21 = *(v30 + 8 * v20);
        v22 = *(v21 + 16);
        if (v22)
        {
          v33 = v20;
          v37 = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459D088(0, v22, 0);
          v23 = v37;
          v32 = v21;
          v24 = v21 + 32;
          do
          {
            sub_1C442E860(v24, v35);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            swift_dynamicCast();
            v37 = v23;
            v26 = *(v23 + 16);
            v25 = *(v23 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_1C459D088((v25 > 1), v26 + 1, 1);
              v23 = v37;
            }

            *(v23 + 16) = v26 + 1;
            sub_1C44482AC(&v36, (v23 + 32 * v26 + 32));
            v24 += 40;
            --v22;
          }

          while (v22);

          v10 = v29;
          v20 = v33;
        }

        sub_1C4EFB788();
        v27 = v34;
        sub_1C4EFC0A8();
        sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v34 = v27;
        if (v27)
        {
          break;
        }

        ++v20;
      }

      while (v20 != v31);
    }
  }

  return result;
}

uint64_t sub_1C4BC7458()
{
  v1 = v0;
  v2 = *v0;
  memcpy(__dst, v1, sizeof(__dst));
  v3 = *(v2 + 16);

  v4 = sub_1C440CABC();
  sub_1C446C37C(v4, v5);
}

uint64_t sub_1C4BC74D0()
{
  v1 = v0;
  v2 = v0[2];
  memcpy(__dst, v1, sizeof(__dst));
  v3 = *(v2 + 16);

  v4 = sub_1C440CABC();
  sub_1C446C37C(v4, v5);
}

uint64_t sub_1C4BC7560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v7 = *(a4 + 16);
  v9[2] = v10;
  v9[3] = a1;

  sub_1C446C37C(a6, v9);
}

uint64_t sub_1C4BC75B8()
{
  v1 = *(*(v0 + 24) + 16);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

uint64_t sub_1C4BC7614()
{
  v7 = *(v0 + 4);
  v5 = *v0;
  v6 = v0[1];
  v1 = *(*(v0 + 3) + 16);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

uint64_t sub_1C4BC767C()
{
  v1 = *(*(v0 + 32) + 16);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

uint64_t sub_1C4BC7B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      _s35AddressContactResolverViewGeneratorCMa();
      a4 = swift_allocObject();

      sub_1C4BC7D54(v8, __dst);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = xmmword_1C4F5B670;
      *(v9 + 32) = 0xD000000000000025;
      *(v9 + 40) = 0x80000001C4FB83A0;
      *(v9 + 48) = v11;
      *(v9 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4BC7CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = sub_1C4BC7B50(a1, a2, a3, *v3);
  v7 = *(v4 + 8);

  return v7(v6);
}

void *sub_1C4BC7D54(uint64_t a1, const void *a2)
{
  v2[2] = a1;
  memcpy(v2 + 3, a2, 0x48uLL);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v4 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F17D00;

  sub_1C46A9810(a2, v11);
  sub_1C4EFEBF8();
  sub_1C4EFE4C8();
  sub_1C4EFE748();
  sub_1C4EFE5A8();
  sub_1C4EFE4B8();
  sub_1C4EFEDE8();
  sub_1C4EFEA58();
  sub_1C4EFE8D8();
  sub_1C4EFEA78();
  sub_1C4EFE378();
  sub_1C4EFECD8();
  sub_1C4EFE688();
  sub_1C4AF99F4(a2);

  v2[12] = v9;
  return v2;
}

uint64_t sub_1C4BC7ED8(uint64_t a1)
{
  v3 = sub_1C4EF9488();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  v8 = objc_autoreleasePoolPush();
  sub_1C4BC8020(a1, v1, &v12);
  objc_autoreleasePoolPop(v8);
  v11[0] = v12;
  v11[1] = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9448();
  sub_1C4415EA8();
  v9 = sub_1C4F01FF8();
  (*(v4 + 8))(v7, v3);
  swift_bridgeObjectRelease_n();
  return v9;
}

uint64_t sub_1C4BC8020(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v199 = a3;
  v213 = a2;
  v205 = sub_1C4EF9488();
  v203 = *(v205 - 8);
  v4 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v204 = v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFEEF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v196 = v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v194 = v192 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v195 = v192 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v193 = v192 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v192[1] = v192 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v200 = v192 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v192[0] = v192 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v202 = v192 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v197 = v192 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v201 = v192 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v207 = v192 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v198 = v192 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v206 = v192 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v192 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v192 - v38;
  v218 = type metadata accessor for GraphTriple(0);
  v210 = *(v218 - 8);
  v40 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v214 = v192 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v208 = v192 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v220 = v192 - v45;
  v46 = 0;
  v209 = a1;
  v211 = *(a1 + 16);
  v226 = (v7 + 16);
  v217 = (v7 + 8);
  v212 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v47 = v46;
LABEL_3:
    if (v47 == v211)
    {
      break;
    }

    v48 = (*(v210 + 80) + 32) & ~*(v210 + 80);
    v49 = *(v210 + 72);
    v219 = v47 + 1;
    v215 = v49;
    v216 = v48;
    v50 = v220;
    sub_1C4709E74(v209 + v48 + v49 * v47, v220);
    v51 = *(v213 + 96);
    (*v226)(v39, &v50[*(v218 + 28)], v6);
    v52 = 0;
    v53 = *(v51 + 16);
    do
    {
      if (v53 == v52)
      {
        (*v217)(v39, v6);
        sub_1C4709ED8(v220);
        v47 = v219;
        goto LABEL_3;
      }

      v54 = v52 + 1;
      v55 = v51 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v52;
      sub_1C4BCAC9C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
      v56 = sub_1C4F010B8();
      v52 = v54;
    }

    while ((v56 & 1) == 0);
    (*v217)(v39, v6);
    sub_1C45B1EE4(v220, v208);
    v57 = v212;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v223 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = *(v57 + 16);
      sub_1C459D7C8();
      v57 = v223;
    }

    v60 = *(v57 + 16);
    if (v60 >= *(v57 + 24) >> 1)
    {
      sub_1C459D7C8();
      v57 = v223;
    }

    *(v57 + 16) = v60 + 1;
    v212 = v57;
    sub_1C45B1EE4(v208, v57 + v216 + v60 * v215);
    v46 = v219;
  }

  sub_1C4BCAC9C(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
  v219 = sub_1C4F00F28();
  v61 = *(v212 + 16);
  if (v61)
  {
    v62 = 0;
    v63 = *(v213 + 96);
    v215 = v212 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
    v211 = *(v210 + 72);
    v203 += 8;
    v208 = v61;
    do
    {
      v64 = v214;
      v220 = v62 + 1;
      sub_1C4709E74(v215 + v211 * v62, v214);
      v65 = *v226;
      v216 = *(v218 + 28);
      v65(v36, (v64 + v216), v6);
      v66 = 0;
      v67 = *(v63 + 16);
      while (v67 != v66)
      {
        v68 = v66 + 1;
        v69 = v63 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v66;
        sub_1C4BCAC9C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
        v70 = sub_1C4F010B8();
        v66 = v68;
        if (v70)
        {
          (*v217)(v36, v6);
          v71 = v214;
          v72 = (v214 + *(v218 + 32));
          v73 = v72[1];
          v223 = *v72;
          v224 = v73;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v74 = v204;
          sub_1C4EF9448();
          sub_1C4415EA8();
          v75 = sub_1C4F01FF8();
          v209 = v76;
          v210 = v75;
          (*v203)(v74, v205);
          v61 = v208;

          v77 = v219;
          swift_isUniquelyReferenced_nonNull_native();
          v223 = v77;
          sub_1C46612A8();
          sub_1C4709ED8(v71);
          v219 = v223;
          goto LABEL_21;
        }
      }

      (*v217)(v36, v6);
      sub_1C4709ED8(v214);
LABEL_21:
      v62 = v220;
    }

    while (v220 != v61);
  }

  v78 = *(v213 + 96);
  v79 = *(v78 + 16);
  v80 = v217;
  v81 = v202;
  v82 = v206;
  if (v79)
  {
    v83 = v78 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v84 = *(v7 + 72);
    v220 = *(v7 + 16);
    v215 = MEMORY[0x1E69E7CC0];
    v216 = MEMORY[0x1E69E7CC0];
    v85 = v219;
    v218 = v84;
    while (1)
    {
      (v220)(v82, v83, v6);
      if (*(v85 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C457AB64();
        v87 = v86;

        if (v87)
        {
          break;
        }
      }

      (*v80)(v82, v6);
LABEL_46:
      v83 += v84;
      if (!--v79)
      {
        goto LABEL_64;
      }
    }

    v219 = v85;
    sub_1C4EFECD8();
    sub_1C4BCAC9C(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v223 == v221 && v224 == v222)
    {
      v89 = 1;
    }

    else
    {
      v89 = sub_1C4F02938();
    }

    v90 = *v80;
    (*v80)(v207, v6);

    v84 = v218;
    if ((v89 & 1) == 0)
    {
      v91 = v201;
      sub_1C4EFE688();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v223 == v221 && v224 == v222)
      {
        v103 = v91;
        v80 = v217;
        v90(v103, v6);
      }

      else
      {
        v93 = sub_1C4F02938();
        v94 = v91;
        v80 = v217;
        v90(v94, v6);

        if ((v93 & 1) == 0)
        {
          v95 = v197;
          sub_1C4EFEBF8();
          sub_1C4BCAC9C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
          v96 = sub_1C4F010B8();
          v90(v95, v6);
          if ((v96 & 1) == 0)
          {
            v97 = v219;
            if (*(v219 + 16) && (sub_1C457AB64(), (v99 & 1) != 0))
            {
              v100 = (*(v97 + 56) + 16 * v98);
              v102 = *v100;
              v101 = v100[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v102 = 0;
              v101 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v120 = *(v215 + 16);
              sub_1C443D664();
              v215 = v121;
            }

            v105 = *(v215 + 16);
            if (v105 >= *(v215 + 24) >> 1)
            {
              sub_1C443D664();
              v215 = v122;
            }

            v106 = v215;
            *(v215 + 16) = v105 + 1;
            v107 = v106 + 16 * v105;
            *(v107 + 32) = v102;
            *(v107 + 40) = v101;
          }

          v108 = v219;
          if (*(v219 + 16) && (sub_1C457AB64(), (v110 & 1) != 0))
          {
            v111 = (*(v108 + 56) + 16 * v109);
            v112 = v111[1];
            v214 = *v111;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v214 = 0;
            v112 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = *(v216 + 16);
            sub_1C443D664();
            v216 = v118;
          }

          v113 = *(v216 + 16);
          v114 = v90;
          if (v113 >= *(v216 + 24) >> 1)
          {
            sub_1C443D664();
            v216 = v119;
          }

          v82 = v206;
          v80 = v217;
          v114(v206, v6);
          v115 = v216;
          *(v216 + 16) = v113 + 1;
          v116 = v115 + 16 * v113;
          *(v116 + 32) = v214;
          *(v116 + 40) = v112;
          v84 = v218;
          v85 = v219;
          goto LABEL_45;
        }
      }
    }

    v104 = v206;
    v90(v206, v6);
    v82 = v104;
    v85 = v219;
LABEL_45:
    v81 = v202;
    goto LABEL_46;
  }

  v215 = MEMORY[0x1E69E7CC0];
  v216 = MEMORY[0x1E69E7CC0];
  v85 = v219;
LABEL_64:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v123 = v198;
  sub_1C4EFECD8();
  if (!*(v85 + 16))
  {

    v126 = *v80;
    v126(v123, v6);
LABEL_79:
    v127 = v200;
    goto LABEL_80;
  }

  sub_1C457AB64();
  v125 = v124;

  v126 = *v80;
  v126(v123, v6);
  v127 = v200;
  if ((v125 & 1) == 0)
  {
    goto LABEL_80;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFE688();
  if (*(v85 + 16))
  {
    sub_1C457AB64();
    v129 = v128;

    v126(v81, v6);
    if (v129)
    {
      v130 = v192[0];
      sub_1C4EFE688();
      v131 = v85;
      v132 = sub_1C465C38C(v130, v85);
      v134 = v133;
      v126(v130, v6);
      if (v134)
      {
        v135 = v132;
      }

      else
      {
        v135 = 0;
      }

      if (!v134)
      {
        v134 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = *(v215 + 16);
        sub_1C443D664();
        v215 = v190;
      }

      v136 = *(v215 + 16);
      if (v136 >= *(v215 + 24) >> 1)
      {
        sub_1C443D664();
        v215 = v191;
      }

      v137 = v215;
      *(v215 + 16) = v136 + 1;
      v138 = v137 + 16 * v136;
      *(v138 + 32) = v135;
      *(v138 + 40) = v134;
      v139 = &v223;
LABEL_92:
      v150 = *(v139 - 32);
      sub_1C4EFE688();
      v151 = sub_1C465C38C(v150, v131);
      v153 = v152;
      v126(v150, v6);
      goto LABEL_104;
    }

    goto LABEL_79;
  }

  v126(v81, v6);
LABEL_80:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFE688();
  if (*(v85 + 16))
  {
    sub_1C457AB64();
    v141 = v140;

    v126(v127, v6);
    if (v141)
    {
      v142 = v193;
      sub_1C4EFE688();
      v131 = v85;
      v143 = sub_1C465C38C(v142, v85);
      v145 = v144;
      v126(v142, v6);
      if (v145)
      {
        v146 = v143;
      }

      else
      {
        v146 = 0;
      }

      if (!v145)
      {
        v145 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = *(v215 + 16);
        sub_1C443D664();
        v215 = v187;
      }

      v147 = *(v215 + 16);
      if (v147 >= *(v215 + 24) >> 1)
      {
        sub_1C443D664();
        v215 = v188;
      }

      v148 = v215;
      *(v215 + 16) = v147 + 1;
      v149 = v148 + 16 * v147;
      *(v149 + 32) = v146;
      *(v149 + 40) = v145;
      v139 = &v225;
      goto LABEL_92;
    }
  }

  else
  {

    v126(v127, v6);
  }

  v154 = v195;
  sub_1C4EFECD8();
  v155 = v85;
  v156 = sub_1C465C38C(v154, v85);
  v158 = v157;
  v126(v154, v6);
  if (v158)
  {
    v159 = v156;
  }

  else
  {
    v159 = 0;
  }

  if (!v158)
  {
    v158 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v183 = *(v215 + 16);
    sub_1C443D664();
    v215 = v184;
  }

  v160 = *(v215 + 16);
  if (v160 >= *(v215 + 24) >> 1)
  {
    sub_1C443D664();
    v215 = v185;
  }

  v161 = v215;
  *(v215 + 16) = v160 + 1;
  v162 = v161 + 16 * v160;
  *(v162 + 32) = v159;
  *(v162 + 40) = v158;
  v163 = v196;
  sub_1C4EFECD8();
  v151 = sub_1C465C38C(v163, v155);
  v153 = v164;
  v126(v163, v6);
LABEL_104:
  if (v153)
  {
    v165 = v151;
  }

  else
  {
    v165 = 0;
  }

  if (!v153)
  {
    v153 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v180 = *(v216 + 16);
    sub_1C443D664();
    v216 = v181;
  }

  v166 = *(v216 + 16);
  if (v166 >= *(v216 + 24) >> 1)
  {
    sub_1C443D664();
    v216 = v182;
  }

  v167 = v216;
  *(v216 + 16) = v166 + 1;
  v168 = v167 + 16 * v166;
  *(v168 + 32) = v165;
  *(v168 + 40) = v153;
  v223 = v167;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v169 = sub_1C4F01048();
  v171 = v170;

  v223 = v215;
  v172 = sub_1C4F01048();
  v174 = v173;

  v175 = HIBYTE(v174) & 0xF;
  if ((v174 & 0x2000000000000000) == 0)
  {
    v175 = v172 & 0xFFFFFFFFFFFFLL;
  }

  v176 = v199;
  if (!v175)
  {
    v177 = v199[1];
    *v199 = v169;
    v176[1] = v171;
  }

  v178 = v176[1];
  *v176 = v172;
  v176[1] = v174;
}

uint64_t sub_1C4BC92C4()
{
  v1[16] = v0;
  v2 = sub_1C4EFF0C8();
  v1[17] = v2;
  sub_1C43FCF7C(v2);
  v1[18] = v3;
  v5 = *(v4 + 64);
  v1[19] = sub_1C43FBE7C();
  v6 = *(*(sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0) - 8) + 64);
  v1[20] = sub_1C43FBE7C();
  v7 = sub_1C4EFDE88();
  v1[21] = v7;
  sub_1C43FCF7C(v7);
  v1[22] = v8;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = *(*(sub_1C4EFDE68() - 8) + 64);
  v1[28] = sub_1C43FBE7C();
  v12 = sub_1C4EFDE98();
  v1[29] = v12;
  sub_1C43FCF7C(v12);
  v1[30] = v13;
  v15 = *(v14 + 64);
  v1[31] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4BC9498, 0, 0);
}

uint64_t sub_1C4BC9498()
{
  v126 = v0[31];
  v110 = v0[30];
  v131 = v0[29];
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v118 = v0[28];
  v120 = v0[24];
  v4 = v0[22];
  v122 = v0[23];
  v109 = v4;
  v5 = v0[21];
  v124 = v0[20];
  v106 = v0[18];
  v6 = v0[16];
  v0[13] = MEMORY[0x1E69E7CC0];
  v108 = *(v6 + 16);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v7 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v7);
  v116 = *(v8 + 72);
  v112 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFEAC8();
  sub_1C4D504A4();
  v105 = *MEMORY[0x1E69A95C0];
  v10 = *(v4 + 104);
  v104 = v10;
  v11 = v2;
  sub_1C4411254();
  v10();
  sub_1C4411254();
  v10();
  sub_1C4411254();
  v10();
  sub_1C4411254();
  v10();
  sub_1C4411254();
  v10();
  sub_1C4EFDE58();

  v12 = *(v109 + 8);
  v12(v122, v5);
  v12(v120, v5);
  v12(v3, v5);
  v12(v1, v5);
  v12(v11, v5);
  sub_1C4EFDEA8();
  v103 = sub_1C4EFD678();
  sub_1C440BAA8(v124, 1, 1, v103);
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 13;
  sub_1C48687D0(v126, v124, sub_1C4BCAA90, v13);

  sub_1C4423A0C(v124, &unk_1EC0C07E0, &unk_1C4F168F0);
  v102 = *(v110 + 8);
  v102(v126, v131);
  v121 = v0;
  v0[14] = MEMORY[0x1E69E7CD0];
  v99 = v0 + 15;
  v100 = v0 + 11;
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFEAC8();
  sub_1C4D504A4();
  sub_1C4409200();
  (v10)(v14, v15, v16);
  sub_1C4409200();
  (v10)(v17, v18, v19);
  sub_1C4409200();
  (v10)(v20, v21, v22);
  sub_1C4409200();
  (v10)(v23, v24, v25);
  sub_1C4409200();
  (v10)(v26, v27, v28);
  sub_1C4EFDE58();

  v12(v122, v5);
  v12(v120, v5);
  v12(v3, v5);
  v12(v1, v5);
  v101 = v12;
  v12(v11, v5);
  sub_1C4EFDEA8();
  sub_1C440BAA8(v124, 1, 1, v103);
  v29 = swift_task_alloc();
  *(v29 + 16) = v0 + 13;
  *(v29 + 24) = v0 + 14;
  sub_1C48687D0(v126, v124, sub_1C4BCAA98, v29);

  sub_1C4423A0C(v124, &unk_1EC0C07E0, &unk_1C4F168F0);
  v102(v126, v131);
  v30 = v0[14];
  v31 = v30 + 56;
  v32 = -1;
  v33 = -1 << *(v30 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v0[14] + 56);
  v35 = (63 - v33) >> 6;
  v107 = v30;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v97 = v35;
  v98 = v31;
  while (v34)
  {
LABEL_9:
    v115 = v121[31];
    v119 = v121[29];
    v113 = v121[28];
    v123 = v121[27];
    v125 = v121[26];
    v127 = v121[25];
    v128 = v121[24];
    v111 = v121[23];
    v40 = v121[21];
    v114 = v121[20];
    v132 = v121[19];
    v41 = v121[17];
    v117 = v121[16];
    v42 = *(v106 + 16);
    v42(v132, *(v107 + 48) + *(v106 + 72) * (__clz(__rbit64(v34)) | (v37 << 6)), v41);
    v121[15] = MEMORY[0x1E69E7CC0];
    v121[11] = 0;
    v121[12] = 0xE000000000000000;
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v43 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1C4F0D130;
    v42(v44 + v43, v132, v41);
    sub_1C45972E0();
    sub_1C440D9C8();
    (v104)(v45, v46, v47);
    sub_1C440D9C8();
    (v104)(v48, v49, v50);
    sub_1C440D9C8();
    (v104)(v51, v52, v53);
    sub_1C440D9C8();
    (v104)(v54, v55, v56);
    sub_1C440D9C8();
    (v104)(v57, v58, v59);
    sub_1C4EFDE58();

    v101(v111, v40);
    v101(v128, v40);
    v101(v127, v40);
    v101(v125, v40);
    v101(v123, v40);
    sub_1C4EFDEA8();
    sub_1C440BAA8(v114, 1, 1, v103);
    v60 = swift_task_alloc();
    v60[2] = v117;
    v60[3] = v99;
    v60[4] = v100;
    sub_1C48687D0(v115, v114, sub_1C4BCAAA0, v60);

    sub_1C4423A0C(v114, &unk_1EC0C07E0, &unk_1C4F168F0);
    v102(v115, v119);
    v61 = sub_1C4BC7ED8(v121[15]);
    v63 = v62;
    v64 = sub_1C4EFF068();
    v66 = v65;
    v67 = v121[12];
    v129 = v121[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v68 = v63;
    v69 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = v38[2];
      sub_1C458BC50();
      v38 = v73;
    }

    v70 = v38[2];
    if (v70 >= v38[3] >> 1)
    {
      sub_1C458BC50();
      v38 = v74;
    }

    v34 &= v34 - 1;
    (*(v106 + 8))(v121[19], v121[17]);
    v38[2] = v70 + 1;
    v71 = &v38[6 * v70];
    v71[4] = v69;
    v71[5] = v68;
    v71[6] = v64;
    v71[7] = v66;
    v71[8] = v129;
    v71[9] = v67;

    v35 = v97;
    v31 = v98;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return result;
    }

    if (v39 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v39);
    ++v37;
    if (v34)
    {
      v37 = v39;
      goto LABEL_9;
    }
  }

  v75 = v38[2];
  if (v75)
  {
    v134 = MEMORY[0x1E69E7CC0];
    sub_1C459DB58();
    v76 = v38 + 9;
    do
    {
      v78 = *(v76 - 5);
      v77 = *(v76 - 4);
      v79 = *(v76 - 3);
      v80 = *(v76 - 2);
      v81 = *(v76 - 1);
      v82 = *v76;
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1C4F0C890;
      v84 = MEMORY[0x1E69E6158];
      *(v83 + 56) = MEMORY[0x1E69E6158];
      v85 = MEMORY[0x1E69A0138];
      *(v83 + 64) = MEMORY[0x1E69A0138];
      *(v83 + 72) = v79;
      *(v83 + 32) = v78;
      *(v83 + 40) = v77;
      *(v83 + 96) = v84;
      *(v83 + 104) = v85;
      *(v83 + 80) = v80;
      *(v83 + 136) = v84;
      *(v83 + 144) = v85;
      *(v83 + 112) = v81;
      *(v83 + 120) = v82;
      v86 = *(v134 + 16);
      v87 = *(v134 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v86 >= v87 >> 1)
      {
        sub_1C459DB58();
      }

      v76 += 6;
      *(v134 + 16) = v86 + 1;
      *(v134 + 8 * v86 + 32) = v83;
      --v75;
    }

    while (v75);
  }

  v88 = v121[31];
  v90 = v121[27];
  v89 = v121[28];
  v92 = v121[25];
  v91 = v121[26];
  v94 = v121[23];
  v93 = v121[24];
  v130 = v121[20];
  v133 = v121[19];
  memcpy(v121 + 2, (v121[16] + 24), 0x48uLL);
  sub_1C4BC7458();

  v95 = v121[13];

  v96 = v121[1];

  return v96();
}

uint64_t sub_1C4BCA070(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GraphTriple(0);
  v10 = v9[7];
  sub_1C4EFE5E8();
  LOBYTE(v10) = sub_1C44DBB50(a1 + v10, v8);
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v11 = (a1 + v9[8]);
    v12 = *v11 == 0x656D6F483C21245FLL && v11[1] == 0xEC0000005F24213ELL;
    if (v12 || (sub_1C4F02938() & 1) != 0)
    {
      v13 = a1 + v9[6];
      v14 = sub_1C4EFF848();
      v16 = v15;
      sub_1C4588BAC();
      v17 = *(*a2 + 16);
      sub_1C45897E8();
      v18 = *a2;
      *(v18 + 16) = v17 + 1;
      v19 = v18 + 16 * v17;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }
  }

  return 1;
}

uint64_t sub_1C4BCA1F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v42 = a3;
  v43 = sub_1C4EFF0C8();
  v41 = *(v43 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v38 - v10;
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = sub_1C4EFEEF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v24 = type metadata accessor for GraphTriple(0);
  v25 = v24[6];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v50 = sub_1C4EFF848();
  v51 = v26;
  v45 = &v50;
  v27 = sub_1C44CE068(sub_1C44CE790, v44, v23);

  if (v27)
  {
    v28 = v24[7];
    sub_1C4EFE418();
    LOBYTE(v28) = sub_1C44DBB50(a1 + v28, v22);
    (*(v19 + 8))(v22, v18);
    if (v28)
    {
      v29 = (a1 + v24[8]);
      v30 = *v29;
      v31 = v29[1];
      v50 = *v29;
      v51 = v31;
      v48 = 25709;
      v49 = 0xE200000000000000;
      sub_1C4415EA8();
      if (sub_1C4F02048())
      {
        v50 = v30;
        v51 = v31;
        v48 = 3826797;
        v49 = 0xE300000000000000;
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_1C4F02008();
        sub_1C4EFF0D8();
        sub_1C457E858(v17, v14);
        v32 = v43;
        if (sub_1C44157D4(v14, 1, v43) == 1)
        {
          sub_1C4423A0C(v17, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        else
        {
          v33 = v41;
          v34 = v38;
          (*(v41 + 32))(v38, v14, v32);
          (*(v33 + 16))(v40, v34, v32);
          v35 = v39;
          sub_1C44D56D0();
          v36 = *(v33 + 8);
          v36(v35, v32);
          v36(v34, v32);
          v14 = v17;
        }

        sub_1C4423A0C(v14, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }
    }
  }

  return 1;
}

uint64_t sub_1C4BCA628(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1C4EFEEF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a2 + 96);
  v14 = type metadata accessor for GraphTriple(0);
  v23 = a1 + v14[7];
  if (sub_1C479B398(sub_1C4BCAB28, v22, v13))
  {
    sub_1C4588D78();
    v15 = *(*a3 + 16);
    sub_1C4589968();
    v16 = *a3;
    *(*a3 + 16) = v15 + 1;
    sub_1C4709E74(a1, v16 + ((*(*(v14 - 1) + 80) + 32) & ~*(*(v14 - 1) + 80)) + *(*(v14 - 1) + 72) * v15);
  }

  else
  {
    v17 = v14[5];
    sub_1C4EFECB8();
    LOBYTE(v17) = sub_1C44DBB50(a1 + v17, v12);
    (*(v9 + 8))(v12, v8);
    if (v17)
    {
      v18 = (a1 + v14[8]);
      v19 = v18[1];
      v20 = a4[1];
      *a4 = *v18;
      a4[1] = v19;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return 1;
}

void *sub_1C4BCA80C()
{
  v1 = v0[2];

  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[11];

  v8 = v0[12];

  return v0;
}

uint64_t sub_1C4BCA888()
{
  sub_1C4BCA80C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BCA940(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1C4BCAC9C(a4, a5);
  return sub_1C4F010B8() & 1;
}

uint64_t sub_1C4BCA9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

uint64_t sub_1C4BCAB28()
{
  v1 = *(v0 + 16);
  sub_1C43FDFAC();
  return sub_1C4BCA940(v2, v3, v4, v5, MEMORY[0x1E69A9748]) & 1;
}

uint64_t sub_1C4BCAC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_1C4BC7B28(a1, v5, a3);
}

uint64_t sub_1C4BCAC64(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_1C4BC711C(a1, v2);
}

uint64_t sub_1C4BCAC9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4BCACE4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_1C4BC6DF8(a1, v2);
}

uint64_t sub_1C4BCAD28(uint64_t a1)
{
  v2 = sub_1C4EFF0C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventTriple(0);
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v36 - v10;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v49 = MEMORY[0x1E69E7CC8];
  v46 = *(a1 + 16);
  v44 = (v3 + 16);
  v39 = v3 + 32;
  v40 = v3;
  v38 = (v3 + 8);
  v37 = xmmword_1C4F0D130;
  v41 = v2;
  v42 = a1;
  while (1)
  {
    if (v46 == v11)
    {

      return v12;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v13 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v14 = *(v45 + 72);
    v15 = v47;
    sub_1C4BCDCA0(a1 + v13 + v14 * v11, v47);
    (*v44)(v48, v15, v2);
    sub_1C44E3664();
    v18 = v17;
    v19 = v12[2];
    v20 = (v16 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v12[3] < v19 + v20)
    {
      sub_1C467A2D4();
      v12 = v49;
      sub_1C44E3664();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {
      (*v38)(v48, v2);
      v24 = v12[7];
      sub_1C44721E4(v47, v43, type metadata accessor for EventTriple);
      v25 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458BAC8(0, *(v25 + 16) + 1, 1, v25);
        v25 = v33;
        *(v24 + 8 * v18) = v33;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C458BAC8(v27 > 1, v28 + 1, 1, v25);
        v25 = v34;
        *(v24 + 8 * v18) = v34;
      }

      v2 = v41;
      *(v25 + 16) = v28 + 1;
      sub_1C44721E4(v43, v25 + v13 + v28 * v14, type metadata accessor for EventTriple);
      a1 = v42;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8F20, &unk_1C4F3E590);
      v29 = swift_allocObject();
      *(v29 + 16) = v37;
      sub_1C44721E4(v47, v29 + v13, type metadata accessor for EventTriple);
      v12[(v18 >> 6) + 8] |= 1 << v18;
      (*(v40 + 32))(v12[6] + *(v40 + 72) * v18, v48, v2);
      *(v12[7] + 8 * v18) = v29;
      v30 = v12[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v12[2] = v32;
    }

    ++v11;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4BCB148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v36 = v8;
  v37 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v37);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FE95C();
  v14 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = *v2;
  v19 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v38[3] = sub_1C440A198();
  v38[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v39[3] = sub_1C4EFB298();
  v39[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  v20 = sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4400184();
  sub_1C4401CBC(v21, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4420570();
  sub_1C4BCDDF0(v22, v23);
  sub_1C440920C();
  sub_1C440962C(v38);
  sub_1C44354CC();
  (*(v10 + 8))(v3, v20);
  sub_1C440962C(v39);
  sub_1C441E75C();
  v24 = sub_1C44061E4();
  result = v25(v24);
  if (!v3)
  {
    sub_1C4BC77A4(result);
    sub_1C4EFBE98();

    v35 = *(a2 + 16);
    if (v35)
    {
      v27 = 0;
      v34 = a2 + 32;
      v28 = v36;
      do
      {
        if (*(*(v34 + 8 * v27) + 16))
        {
          v39[6] = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C441BD6C();
          sub_1C4405404();
          do
          {
            sub_1C442E860(v27, v39);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            sub_1C43FC9FC();
            sub_1C441CE9C();
            if (v30)
            {
              v32 = sub_1C43FCFE8(v29);
              sub_1C459D088(v32, v28, 1);
            }

            sub_1C4440034();
          }

          while (!v31);

          v28 = v36;
        }

        sub_1C4EFB788();
        sub_1C4EFC0A8();
        sub_1C4420C3C(v28, &unk_1EC0C06C0, &unk_1C4F10DB0);
        ++v27;
      }

      while (v27 != v35);
    }
  }

  return result;
}

uint64_t sub_1C4BCB52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v36 = v8;
  v37 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v37);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FE95C();
  v14 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v38[3] = sub_1C440A198();
  v38[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v39[3] = sub_1C4EFB298();
  v39[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  v20 = sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4400184();
  sub_1C4401CBC(v21, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4420570();
  sub_1C4BCDDF0(v22, v23);
  sub_1C440920C();
  sub_1C440962C(v38);
  sub_1C44354CC();
  (*(v10 + 8))(v3, v20);
  sub_1C440962C(v39);
  sub_1C441E75C();
  v24 = sub_1C44061E4();
  result = v25(v24);
  if (!v3)
  {
    sub_1C4BC76D8(result);
    sub_1C4EFBE98();

    v35 = *(a2 + 16);
    if (v35)
    {
      v27 = 0;
      v34 = a2 + 32;
      v28 = v36;
      do
      {
        if (*(*(v34 + 8 * v27) + 16))
        {
          v39[6] = MEMORY[0x1E69E7CC0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C441BD6C();
          sub_1C4405404();
          do
          {
            sub_1C442E860(v27, v39);
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            sub_1C43FC9FC();
            sub_1C441CE9C();
            if (v30)
            {
              v32 = sub_1C43FCFE8(v29);
              sub_1C459D088(v32, v28, 1);
            }

            sub_1C4440034();
          }

          while (!v31);

          v28 = v36;
        }

        sub_1C4EFB788();
        sub_1C4EFC0A8();
        sub_1C4420C3C(v28, &unk_1EC0C06C0, &unk_1C4F10DB0);
        ++v27;
      }

      while (v27 != v35);
    }
  }

  return result;
}

uint64_t sub_1C4BCB910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  sub_1C4C81AA0();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      _s31AppleMusicEventMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x80uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4BCBA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BCB910(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4BCBB10()
{
  v1 = *(*(v0 + 24) + 16);

  sub_1C446C37C(sub_1C4BCDE38, v0);
}

void sub_1C4BCBB70(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 3, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = a2[13];
    if (v4)
    {
      v5 = a2[12];
      v6 = a2[13];
      v7 = a2[14];
      v8 = a2[15];
      v9 = a2[16];
      v10 = a2[17];
      v11 = a2[18];
      _s23UpdatedObjectDiffWriterCMa();
      v13 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4BCBC9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v273 = a4;
  v272 = a3;
  v271 = a2;
  v310 = a1;
  v262 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v5 = sub_1C43FBCE0(v262);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  sub_1C43FCE30(v10);
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  sub_1C43FCE30(v16);
  v265 = sub_1C4EF9CD8();
  v17 = sub_1C43FCDF8(v265);
  v269 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  sub_1C43FCE30(v21);
  v279 = sub_1C4EFF4A8();
  v22 = sub_1C43FCDF8(v279);
  v268 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  sub_1C43FCE30(v27);
  v28 = sub_1C456902C(&qword_1EC0C46F0, &qword_1C4F5B7C0);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  sub_1C43FCE30(v32);
  v290 = sub_1C456902C(&qword_1EC0C46F8, &qword_1C4F5B7C8);
  v33 = sub_1C43FBCE0(v290);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  sub_1C43FCE30(v37);
  v38 = sub_1C456902C(&qword_1EC0C4700, &qword_1C4F5B7D0);
  v39 = sub_1C43FBD18(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FCE30(v43);
  v293 = sub_1C456902C(&qword_1EC0C4708, &unk_1C4F5B7D8);
  sub_1C43FCDF8(v293);
  v270 = v44;
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  sub_1C43FCE30(v48);
  v49 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v49);
  v51 = *(v50 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FE95C();
  v53 = type metadata accessor for Source();
  v54 = sub_1C43FBCE0(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  v316 = v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v261[-v59];
  v276 = sub_1C456902C(&qword_1EC0C4710, &qword_1C4F5B7E8);
  v61 = sub_1C43FCDF8(v276);
  v275 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FD230();
  sub_1C43FCE30(v66);
  v300 = type metadata accessor for EventTriple(0);
  v67 = sub_1C43FCDF8(v300);
  v299 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FD230();
  v311 = v72;
  v73 = sub_1C4EFD548();
  v74 = sub_1C43FCDF8(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FD2D8();
  sub_1C43FCE30(v79);
  *&v308 = sub_1C456902C(&qword_1EC0C4718, &unk_1C4F5B7F0);
  sub_1C43FBCE0(v308);
  v81 = *(v80 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBC74();
  v307 = v83;
  v84 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v85 = sub_1C43FBD18(v84);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v89 = &v261[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v90);
  isa = &v261[-v91];
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v261[-v93];
  v315 = sub_1C4EFF0C8();
  v95 = sub_1C43FCDF8(v315);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v98);
  sub_1C43FD230();
  v314 = v99;
  v100 = 0;
  v309 = *(v310 + 16);
  *&v304 = v101 + 16;
  v288 = (v76 + 32);
  v295 = (v76 + 8);
  v102 = v94;
  v301 = (v101 + 8);
  v305 = v101;
  v281 = (v101 + 32);
  v283 = MEMORY[0x1E69E7CC0];
  v298 = v94;
  v296 = v89;
  v306 = v53;
  v287 = v60;
  while (v309 != v100)
  {
    v303 = (*(v305 + 80) + 32) & ~*(v305 + 80);
    v103 = *(v305 + 72);
    v313 = v100;
    v302 = v103;
    (*(v305 + 16))(v314, v310 + v303 + v103 * v100, v315);
    v104 = v102;
    sub_1C4EFF038();
    v105 = isa;
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C440BAA8(v105, 0, 1, v73);
    v106 = v307;
    v102 = *(v308 + 48);
    sub_1C4460108(v104, v307, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C4460108(v105, v106 + v102, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C440175C(v106, 1, v73);
    if (v117)
    {
      sub_1C440109C();
      sub_1C4420C3C(v107, v108, v109);
      sub_1C440109C();
      sub_1C4420C3C(v110, v111, v112);
      sub_1C440175C(v106 + v102, 1, v73);
      v102 = v104;
      if (!v117)
      {
        goto LABEL_11;
      }

      sub_1C440109C();
      sub_1C4420C3C(v113, v114, v115);
      goto LABEL_14;
    }

    v116 = v296;
    sub_1C4460108(v106, v296, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C440175C(v106 + v102, 1, v73);
    if (v117)
    {
      sub_1C440109C();
      sub_1C4420C3C(v118, v119, v120);
      sub_1C442C004();
      sub_1C440109C();
      sub_1C4420C3C(v121, v122, v123);
      (*v295)(v116, v73);
LABEL_11:
      sub_1C4420C3C(v106, &qword_1EC0C4718, &unk_1C4F5B7F0);
      goto LABEL_13;
    }

    v124 = v106 + v102;
    v102 = v73;
    v125 = v289;
    (*v288)(v289, v124, v102);
    sub_1C4BCDDF0(&qword_1EDDFCCD8, MEMORY[0x1E69A92C8]);
    LODWORD(v294) = sub_1C4F010B8();
    v126 = *v295;
    v127 = v125;
    v73 = v102;
    (*v295)(v127, v102);
    sub_1C440109C();
    sub_1C4420C3C(v128, v129, v130);
    sub_1C442C004();
    sub_1C440109C();
    sub_1C4420C3C(v131, v132, v133);
    v126(v116, v102);
    v60 = v287;
    sub_1C440109C();
    sub_1C4420C3C(v134, v135, v136);
    if (v294)
    {
LABEL_14:
      v294 = *v281;
      v294(v282, v314, v315);
      v137 = v283;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = v137;
      *&v317 = v137;
      v53 = v306;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v140 = *(v139 + 16);
        sub_1C441EFE4();
        sub_1C459D178();
        sub_1C442C004();
        v139 = v317;
      }

      v141 = v313;
      v143 = *(v139 + 16);
      v142 = *(v139 + 24);
      v144 = v143 + 1;
      if (v143 >= v142 >> 1)
      {
        sub_1C43FCFE8(v142);
        v102 = &v317;
        sub_1C459D178();
        sub_1C442C004();
        v139 = v317;
      }

      *(v139 + 16) = v144;
      v283 = v139;
      v145 = v139 + v303 + v143 * v302;
      v146 = v141 + 1;
      v294(v145, v282, v315);
      v100 = v146;
    }

    else
    {
LABEL_13:
      (*v301)(v314, v315);
      v100 = v313 + 1;
      v53 = v306;
    }
  }

  v147 = *(v280 + 16);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v148 = *(sub_1C4EFEEF8() - 8);
  v149 = *(v148 + 72);
  v150 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFEBB8();
  sub_1C4EFECF8();
  v152 = sub_1C486F58C(v283, v151, 0.0);

  v154 = 0;
  v309 = *(v152 + 16);
  v307 = MEMORY[0x1E69E7CC0];
  *&v308 = v152;
LABEL_20:
  while (v154 != v309)
  {
    if (v154 >= *(v152 + 16))
    {
LABEL_98:
      __break(1u);
      return result;
    }

    v155 = (LOBYTE(v299[10].isa) + 32) & ~LOBYTE(v299[10].isa);
    isa = v299[9].isa;
    v313 = v155;
    v156 = v311;
    sub_1C4BCDCA0(v152 + v155 + isa * v154, v311);
    v157 = *(v156 + *(v300 + 9));
    if (qword_1EDDFD268 != -1)
    {
      swift_once();
    }

    v314 = (v154 + 1);
    v158 = sub_1C442B738(v53, &qword_1EDDFD270);
    v159 = 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (qword_1EDDFA6A8 != -1)
          {
            swift_once();
          }

          if (qword_1EDE2DCF0 < v159)
          {
            result = sub_1C447EC3C(v311, type metadata accessor for EventTriple);
            v152 = v308;
            v154 = v314;
            goto LABEL_20;
          }

          sub_1C449E530(v159, v4);
          sub_1C440175C(v4, 1, v53);
          if (!v117)
          {
            break;
          }

          result = sub_1C4420C3C(v4, &unk_1EC0C0760, &qword_1C4F170D0);
          v160 = __OFADD__(v159++, 1);
          if (v160)
          {
            goto LABEL_96;
          }
        }

        sub_1C4432C00();
        result = sub_1C44721E4(v4, v316, v161);
        v162 = v159 - 1;
        if (__OFSUB__(v159, 1))
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v160 = __OFADD__(v159++, 1);
        if (v160)
        {
          goto LABEL_97;
        }

        v163 = v162 > 0x40;
        if (v162 >= 0x40)
        {
          v164 = 0;
        }

        else
        {
          v164 = 1 << v162;
        }

        if (v163)
        {
          v164 = 0;
        }

        if ((v164 & v157) >= 1)
        {
          break;
        }

        sub_1C442D588();
        sub_1C447EC3C(v316, v169);
      }

      sub_1C4432C00();
      sub_1C44721E4(v316, v60, v165);
      if (*v60 == *v158 && v60[1] == v158[1])
      {
        break;
      }

      v167 = sub_1C4F02938();
      sub_1C442D588();
      sub_1C447EC3C(v60, v168);
      if (v167)
      {
        goto LABEL_50;
      }
    }

    sub_1C442D588();
    sub_1C447EC3C(v60, v170);
LABEL_50:
    sub_1C4413958();
    sub_1C44721E4(v311, v297, v171);
    v172 = v307;
    v173 = swift_isUniquelyReferenced_nonNull_native();
    *&v317 = v172;
    if ((v173 & 1) == 0)
    {
      v174 = v172[2];
      sub_1C441EFE4();
      sub_1C459DA20();
      v172 = v317;
    }

    v152 = v308;
    v176 = v172[2];
    v175 = v172[3];
    if (v176 >= v175 >> 1)
    {
      sub_1C43FCFE8(v175);
      sub_1C459DA20();
      v172 = v317;
    }

    v172[2] = (v176 + 1);
    v307 = v172;
    sub_1C4413958();
    result = sub_1C44721E4(v297, v177, v178);
    v154 = v314;
  }

  v179 = v277;
  *&v317 = sub_1C4BCAD28(v307);
  sub_1C456902C(&qword_1EC0C4720, &unk_1C4F5DF50);
  sub_1C4BCDD04(&qword_1EC0C4728);
  v180 = sub_1C4EFF8B8();

  v320 = MEMORY[0x1E69E7CC0];
  *&v317 = v180;
  v181 = sub_1C456902C(&qword_1EC0C4730, &qword_1C4F5E5D0);
  v182 = sub_1C4401CBC(&qword_1EDDEFF78, &qword_1EC0C4730, &qword_1C4F5E5D0);
  v183 = sub_1C4BCDDF0(&qword_1EC0C4738, MEMORY[0x1E69A9910]);
  v184 = sub_1C4BCDD04(&qword_1EDDDBD90);
  v185 = v278;
  v186 = v279;
  sub_1C440109C();
  sub_1C4EFFDC8();
  if (v179)
  {

    return sub_1C43FBC98();
  }

  v314 = 0;
  v316 = v180;
  (*(v275 + 16))(v267, v185, v276);
  *&v317 = v181;
  *(&v317 + 1) = v186;
  *&v318 = v182;
  *(&v318 + 1) = v183;
  v306 = v183;
  v319 = v184;
  swift_getOpaqueTypeConformance2();
  sub_1C4F01478();
  swift_getAssociatedConformanceWitness();
  isa = v268 + 32;
  v305 = v269 + 32;
  v307 = (v269 + 8);
  v313 = (v268 + 8);
  v309 = (v268 + 16);
  v311 = MEMORY[0x1E69E7CC0];
  *&v187 = 136315138;
  v308 = v187;
  v304 = xmmword_1C4F0C890;
  v188 = v286;
  v189 = v292[0];
  while (2)
  {
    sub_1C4F01FA8();
    sub_1C44CDA30(v188, v189, &qword_1EC0C4700, &qword_1C4F5B7D0);
    v190 = sub_1C456902C(&qword_1EC0C4740, &qword_1C4F5B810);
    v191 = sub_1C442FFA8();
    sub_1C440175C(v191, v192, v190);
    if (!v117)
    {
      v193 = v189 + *(v190 + 48);
      v194 = v291;
      sub_1C44CDA30(v193, v291, &qword_1EC0C46F0, &qword_1C4F5B7C0);
      v195 = v290;
      sub_1C440175C(v194, 1, v290);
      if (v117)
      {
        sub_1C4420C3C(v194, &qword_1EC0C46F0, &qword_1C4F5B7C0);
LABEL_64:
        v189 = v292[0];
        v199 = sub_1C456902C(&qword_1EC0C4748, &qword_1C4F5B818);
        (*(*(v199 - 8) + 8))(v189, v199);
        continue;
      }

      v196 = v285;
      sub_1C44CDA30(v194, v285, &qword_1EC0C46F8, &qword_1C4F5B7C8);
      v197 = v284;
      sub_1C4460108(v196, v284, &qword_1EC0C46F8, &qword_1C4F5B7C8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C4420C3C(v196, &qword_1EC0C46F8, &qword_1C4F5B7C8);
        sub_1C4420C3C(v197, &qword_1EC0C46F8, &qword_1C4F5B7C8);
        v188 = v286;
        goto LABEL_64;
      }

      (*isa)(v274, v197, v279);
      sub_1C440D9D4(&v295);
      sub_1C4EFF498();
      v200 = sub_1C4EFFC68();
      v201 = sub_1C442FFA8();
      sub_1C440175C(v201, v202, v200);
      if (v117)
      {
        sub_1C4420C3C(v195, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v205 = v264;
        sub_1C440BAA8(v264, 1, 1, v265);
        v188 = v286;
      }

      else
      {
        sub_1C440D9D4(&v294);
        sub_1C4EFFC58();
        v203 = *(v200 - 8);
        v204 = *(v203 + 8);
        v205 = v195;
        v303 = v200;
        v302 = v204;
        v301 = (v203 + 8);
        v204(v195, v200);
        v206 = sub_1C442FFA8();
        v207 = v265;
        sub_1C440175C(v206, v208, v265);
        v188 = v286;
        if (!v209)
        {
          v226 = v207;
          v227 = v263;
          (*v305)(v263, v205, v226);
          sub_1C4EF9AD8();
          v229 = v228;
          sub_1C440D9D4(&v291);
          sub_1C4EFF498();
          v230 = sub_1C442FFA8();
          sub_1C440175C(v230, v231, v303);
          if (v232)
          {
            v233 = v227;
            v234 = &qword_1EC0C0CC8;
            v235 = &unk_1C4F405F0;
          }

          else
          {
            sub_1C440D9D4(&v290);
            sub_1C4EFFC48();
            v236 = v227;
            v302(v227, v303);
            v237 = sub_1C442FFA8();
            v238 = v265;
            sub_1C440175C(v237, v239, v265);
            if (!v240)
            {
              sub_1C4EF9AD8();
              v242 = v241;
              (*v307)(v236, v238);
              LODWORD(v303) = 0;
              goto LABEL_83;
            }

            v233 = v236;
            v234 = &unk_1EC0B84E0;
            v235 = qword_1C4F0D2D0;
          }

          sub_1C4420C3C(v233, v234, v235);
          LODWORD(v303) = 1;
          v242 = 0;
LABEL_83:
          sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
          v243 = swift_allocObject();
          *(v243 + 16) = v304;
          *(v243 + 56) = v315;
          sub_1C4420570();
          *(v243 + 64) = sub_1C4BCDDF0(&qword_1EDDFA1C8, v244);
          sub_1C4422F90((v243 + 32));
          sub_1C4EFD5A8();
          v245 = MEMORY[0x1E69E63B0];
          *(v243 + 96) = MEMORY[0x1E69E63B0];
          v246 = MEMORY[0x1E69A0168];
          *(v243 + 104) = MEMORY[0x1E69A0168];
          *(v243 + 72) = v229;
          if (v303)
          {
            v247 = sub_1C4EFB258();
            v317 = 0u;
            v318 = 0u;
            v319 = 0;
            *(v243 + 136) = v247;
            *(v243 + 144) = MEMORY[0x1E699FE38];
            sub_1C4422F90((v243 + 112));
            sub_1C4EFB228();
            if (*(&v318 + 1))
            {
              sub_1C4420C3C(&v317, &qword_1EC0B9038, &unk_1C4F231C0);
            }
          }

          else
          {
            *(&v318 + 1) = v245;
            v319 = v246;
            *&v317 = v242;
            sub_1C443FA18(&v317, v243 + 112);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v254 = *(v311 + 16);
            sub_1C458B824();
            v311 = v255;
          }

          v249 = *(v311 + 16);
          v248 = *(v311 + 24);
          v303 = v249 + 1;
          if (v249 >= v248 >> 1)
          {
            sub_1C43FCFE8(v248);
            sub_1C458B824();
            v311 = v256;
          }

          (*v307)(v263, v265);
          (*v313)(v274, v279);
          sub_1C44254E0();
          v250 = v311;
          *(v311 + 16) = v303;
          *(v250 + 8 * v249 + 32) = v243;
          v320 = v250;
LABEL_92:
          v251 = sub_1C456902C(&qword_1EC0C4748, &qword_1C4F5B818);
          sub_1C43FBCE0(v251);
          v189 = v292[0];
          (*(v252 + 8))(v292[0], v253);
          continue;
        }
      }

      sub_1C4420C3C(v205, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v210 = v266;
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v211 = sub_1C4F00978();
      sub_1C442B738(v211, qword_1EDE2DF70);
      v212 = v210;
      v213 = v279;
      (*v309)(v212, v274, v279);
      v214 = sub_1C4F00968();
      LODWORD(v302) = sub_1C4F01CD8();
      if (os_log_type_enabled(v214, v302))
      {
        v303 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        *&v317 = v300;
        *v303 = v308;
        sub_1C440D9D4(v292);
        v299 = v214;
        v215 = v266;
        sub_1C4EFF498();
        v298 = sub_1C4F01198();
        v217 = v216;
        v301 = *v313;
        v301(v215, v279);
        v218 = sub_1C441D828(v298, v217, &v317);

        v219 = v303;
        *(v303 + 4) = v218;
        v220 = v299;
        _os_log_impl(&dword_1C43F8000, v299, v302, "Apple Music map warning: event no start date %s", v219, 0xCu);
        v221 = v300;
        sub_1C440962C(v300);
        MEMORY[0x1C6942830](v221, -1, -1);
        MEMORY[0x1C6942830](v303, -1, -1);

        v222 = sub_1C44047A8();
        (v301)(v222);
      }

      else
      {

        v223 = v213;
        v224 = *v313;
        (*v313)(v266, v223);
        v225 = sub_1C44047A8();
        v224(v225);
      }

      sub_1C44254E0();
      goto LABEL_92;
    }

    break;
  }

  (*(v270 + 8))(v292[1], v293);
  v257 = (*(v275 + 8))(v278, v276);
  v258 = *(*(v280 + 24) + 16);
  MEMORY[0x1EEE9AC00](v257);
  *&v261[-48] = v259;
  *&v261[-40] = &v320;
  v260 = v271;
  *&v261[-32] = v310;
  *&v261[-24] = v260;
  *&v261[-16] = v272;
  v261[-8] = v273 & 1;

  sub_1C49A56B8();

  return sub_1C43FBC98();
}

void sub_1C4BCD780(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t, uint64_t)@<X5>, int a7@<W6>, void *a8@<X8>)
{
  LODWORD(v53) = a7;
  v55 = a6;
  v54 = a5;
  v52 = a8;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2 + 3, sizeof(__dst));
  v18 = *a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BCB52C(a1, v18);

  if (!v8)
  {
    v50 = a4;
    v57 = v17;
    v19 = a2[13];
    if (v19)
    {
      v49 = v14;
      v56 = v13;
      v21 = a2[17];
      v20 = a2[18];
      v23 = a2[15];
      v22 = a2[16];
      v24 = a2[14];
      v25 = a2[12];
      v58[5] = v25;
      v58[6] = v19;
      v58[7] = v24;
      v58[8] = v23;
      v58[9] = v22;
      v58[10] = v21;
      v58[11] = v20;
      _s23UpdatedObjectDiffWriterCMa();
      v51 = swift_allocObject();
      sub_1C4BC3C1C(v25, v19);

      sub_1C4B8B458();
      v27 = v50;
      v28 = *(v50 + 16);
      if (v28)
      {
        v51 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        v48 = v26;

        sub_1C44CD9C0();
        v29 = v60;
        v30 = v49 + 16;
        v55 = *(v49 + 16);
        v31 = v27 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v54 = *(v49 + 72);
        v53 = (v49 + 8);
        v32 = v57;
        do
        {
          v33 = v56;
          v34 = v30;
          v55(v32, v31, v56);
          v35 = sub_1C4EFF048();
          v32 = v57;
          v36 = v35;
          v38 = v37;
          (*v53)(v57, v33);
          v60 = v29;
          v39 = *(v29 + 16);
          if (v39 >= *(v29 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v32 = v57;
            v29 = v60;
          }

          *(v29 + 16) = v39 + 1;
          v40 = v29 + 16 * v39;
          *(v40 + 32) = v36;
          *(v40 + 40) = v38;
          v31 += v54;
          --v28;
          v30 = v34;
        }

        while (v28);
        v42 = v52;
        v43 = v51;
      }

      else
      {

        v43 = 0;
        v29 = MEMORY[0x1E69E7CC0];
        v42 = v52;
      }

      v58[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v58[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
      v58[0] = v29;
      sub_1C4B8C0BC();

      if (v43)
      {

        sub_1C440962C(v58);
      }

      else
      {
        sub_1C440962C(v58);

        sub_1C4B8BB5C();
        v45 = v44;
        v47 = v46;

        *v42 = v45;
        v42[1] = v47;
        *(v42 + 16) = 0;
      }
    }

    else
    {
      v41 = v52;
      *v52 = 0;
      v41[1] = 0;
      *(v41 + 16) = 1;
    }
  }
}

uint64_t sub_1C4BCDC08()
{
  v1 = *(v0 + 16);

  memcpy(v3, (v0 + 24), sizeof(v3));
  sub_1C4BCDE54(v3);
  return v0;
}

uint64_t sub_1C4BCDC48()
{
  sub_1C4BCDC08();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BCDCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BCDD04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C4720, &unk_1C4F5DF50);
    sub_1C4400184();
    sub_1C4401CBC(v3, v4, v5);
    sub_1C4BCDDF0(&qword_1EDDFE2F0, type metadata accessor for EventTriple);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4BCDDF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1C4BCDEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v9 = v7;
  v17 = *v9;
  v18 = type metadata accessor for Configuration();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  *(v9 + 1) = *a1;
  v9[4] = v22;
  *(v9 + 5) = *(a1 + 24);
  v23 = OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config;
  sub_1C443BFA0(a2, v9 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config, _s10ViewConfigVMa);
  sub_1C443BFA0(a4, v21, type metadata accessor for Configuration);
  v24 = type metadata accessor for BehaviorHistoryUtility();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1C4623CF4(v21, a5);
  if (v8)
  {
    sub_1C4407DFC();
    sub_1C4454378(a2, _s10ViewConfigVMa);
    v28 = v9[3];
    v30 = v9[5];
    v29 = v9[6];

    sub_1C4454378(v9 + v23, _s10ViewConfigVMa);
    v31 = *(*v9 + 48);
    v32 = *(*v9 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v27;
    sub_1C4407DFC();
    sub_1C4407DE4();
    sub_1C4454378(a2, v34);
    *(v9 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_behaviorHistoryUtility) = v33;
    v35 = v9 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator;
    *v35 = a3;
    *(v35 + 8) = a6;
    *(v35 + 16) = a7;
  }

  return v9;
}

void sub_1C4BCE0F4()
{
  v2 = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v3 + 16);
  v5 = objc_autoreleasePoolPush();
  v25 = v2;
  sub_1C4BCE418(v2, v3);
  isUniquelyReferenced_nonNull_native = v5;
  if (!v1)
  {
    objc_autoreleasePoolPop(v5);
    swift_beginAccess();
    v7 = *v4;
    v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4BCFB28(v8, sub_1C49802A8, sub_1C4CD706C);
    sub_1C4BCFDFC();
    v9 = *v4;
    *v4 = v29;

    v26 = sub_1C45FB538();
    v27 = v10;
    v28 = v11;
    v35 = v12;
    v13 = *v4;
    v14 = sub_1C4428DA0();
    isUniquelyReferenced_nonNull_native = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v14 == v15)
      {

        v30 = v25[2];
        v31 = v25[3];
        v32 = v25[4];
        v33 = v25[5];
        v34 = v25[6];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C47D32C8();

        sub_1C45942C8(v26);

        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1C6940F90](v15, v13);
        v17 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_1C4BCE940(v15, v17, v26, v27, v28, v35);
      v19 = v18;

      v20 = *(v19 + 16);
      v21 = v16[2];
      if (__OFADD__(v21, v20))
      {
        goto LABEL_23;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v21 + v20 > v16[3] >> 1)
      {
        sub_1C458B504();
        v16 = isUniquelyReferenced_nonNull_native;
      }

      if (*(v19 + 16))
      {
        if ((v16[3] >> 1) - v16[2] < v20)
        {
          goto LABEL_25;
        }

        sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
        swift_arrayInitWithCopy();

        if (v20)
        {
          v22 = v16[2];
          v23 = __OFADD__(v22, v20);
          v24 = v22 + v20;
          if (v23)
          {
            goto LABEL_26;
          }

          v16[2] = v24;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_24;
        }
      }

      ++v15;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  objc_autoreleasePoolPop(isUniquelyReferenced_nonNull_native);
  __break(1u);
}

void sub_1C4BCE418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &aBlock - v14;
  v16 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_behaviorHistoryUtility);
  sub_1C4EF9CC8();
  sub_1C4EF9BE8();
  (*(v5 + 8))(v8, v4);
  sub_1C440BAA8(v15, 0, 1, v4);
  sub_1C4EF9CC8();
  sub_1C440BAA8(v12, 0, 1, v4);
  v17 = sub_1C4EFDA68();
  v18 = sub_1C4622C30(v15, v12, 0, v17);

  sub_1C44686E4(v12);
  sub_1C44686E4(v15);
  v19 = sub_1C4633650(v18, *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator), *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator + 8), *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_sequenceGenerator + 16));
  v27 = sub_1C4BCFF98;
  v28 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1C44405F8;
  v26 = &unk_1F4401558;
  v20 = _Block_copy(&aBlock);

  v27 = sub_1C463086C;
  v28 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1C45DFE08;
  v26 = &unk_1F4401580;
  v21 = _Block_copy(&aBlock);

  v22 = [v19 sinkWithCompletion:v20 receiveInput:v21];
  _Block_release(v21);
  _Block_release(v20);
}

void sub_1C4BCE744(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DF70);

    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_1C441D828(*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config), *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_config + 8), &v14);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v10 = sub_1C4F02A38();
      v12 = sub_1C441D828(v10, v11, &v14);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "SignalView %s: writing feature returned error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4BCE940(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v136 = a5;
  v137 = a4;
  v147 = sub_1C4EFDAB8();
  v10 = *(v147 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v122 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v122 - v16;
  v143 = sub_1C4EF9CD8();
  v17 = *(v143 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159[0] = a1;
  v141 = sub_1C4F02858();
  v129 = v20;
  v21 = *(a2 + 16);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v135 = a6;
    *&v151 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v24 = (v21 + 32);
    v126 = *MEMORY[0x1E69A9420];
    v124 = v10;
    v125 = (v10 + 104);
    v139 = a3;
    v140 = (v17 + 16);
    do
    {
      v26 = *v24++;
      v25 = v26;
      if (v26)
      {
        if (a3)
        {
          v145 = v24;
          v27 = v135;
          v28 = *(v25 + 16);
          v29 = *(v25 + 32);
          *&v158[9] = *(v25 + 41);
          v157 = v28;
          *v158 = v29;
          v30 = *(v25 + 16);
          v31 = *(v25 + 24);
          v32 = *(v25 + 40);
          v138 = *(v25 + 32);
          v33 = *(v25 + 48);
          v34 = *(v25 + 56);
          v35 = v28;
          v36 = v29;
          v37 = (v29 >> 8) | (BYTE3(v29) << 16);
          v38 = BYTE4(v29);
          switch(v158[24])
          {
            case 0:
              v130 = v30;
              v131 = v34;
              v133 = v32;
              v134 = v33;

              v39 = v139;
              sub_1C49A26FC(v139);
              v40 = sub_1C4F01108();
              v41 = [v39 payloadForString_];

              if (v41)
              {
                v42 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v43 = v138;
                a3 = v139;
                v44 = v133;
                goto LABEL_16;
              }

              v43 = 0;
              v44 = 0;
              v47 = 0;
              v48 = 0;
              v59 = 0x657463616465723CLL;
              v42 = 0xEA00000000003E64;
              goto LABEL_44;
            case 1:
              v132 = v31;
              v133 = v32;
              v130 = v30;
              v131 = v34;
              v134 = v33;
              v122 = *&v158[5];
              v123 = v158[7];
              v49 = *&v158[8];

              sub_1C49A26FC(v139);
              v127 = v49;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v50 = sub_1C4F01108();
              v51 = [v139 payloadForString_];

              if (v51)
              {
                v52 = v132;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v44 = v133;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

                v42 = v52;
                v43 = v138;
                a3 = v139;
LABEL_16:
                v47 = v134;
                goto LABEL_19;
              }

              v43 = v36 & 0xFFFFFFFF000000FFLL | ((*&v37 & 0xFFFFFFLL) << 8) | (v38 << 32) | ((v122 | (v123 << 16)) << 40);
              v66 = v127;
              v67 = sub_1C4499AD0(v43, v127, v27);
              v44 = v66;
              if (!v67)
              {

                v43 = 0x657463616465723CLL;
                v44 = 0xEA00000000003E64;
              }

              v47 = 0;
              v48 = 1;
              v59 = 0x657463616465723CLL;
              v42 = 0xEA00000000003E64;
LABEL_44:
              a3 = v139;
              break;
            case 4:
              v46 = 0x100000000;
              if ((BYTE4(v29) & 1) == 0)
              {
                v46 = 0;
              }

              v43 = v29 | ((*&v37 & 0xFFFFFFLL) << 8) | v46;

              a3 = v139;
              sub_1C49A26FC(v139);
              v44 = 0;
              v47 = 0;
              v48 = 4;
              goto LABEL_24;
            case 7:
              v43 = v29 & 1;

              a3 = v139;
              sub_1C49A26FC(v139);
              v44 = 0;
              v47 = 0;
              v48 = 7;
              goto LABEL_24;
            case 9:
              v43 = v29 & 1;

              a3 = v139;
              sub_1C49A26FC(v139);
              v44 = 0;
              v47 = 0;
              v48 = 9;
              goto LABEL_24;
            case 0xA:
              v43 = v29 & 1;

              a3 = v139;
              sub_1C49A26FC(v139);
              v44 = 0;
              v47 = 0;
              v48 = 10;
              goto LABEL_24;
            case 0xC:
              v132 = v31;
              v130 = v30;
              v131 = v34;
              v134 = v33;
              v53 = *&v158[16];

              v54 = v139;
              sub_1C49A26FC(v139);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v55 = sub_1C4F01108();
              v56 = [v54 payloadForString_];

              if (v56)
              {
                v57 = v132;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v58 = v134;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

                v42 = v57;
                v47 = v58;
                v44 = v32;
                v43 = v138;
                a3 = v139;
LABEL_19:
                v48 = v131;
                v59 = v130;
              }

              else
              {
                v48 = 12;
                v43 = 0x657463616465723CLL;
                v59 = 0x657463616465723CLL;
                v42 = 0xEA00000000003E64;
                v44 = 0xEA00000000003E64;
                v47 = v53;
                a3 = v139;
              }

              break;
            case 0xD:

              a3 = v139;
              sub_1C49A26FC(v139);
              v43 = 0;
              v44 = 0;
              v47 = 0;
              v48 = 13;
LABEL_24:
              v59 = 0x657463616465723CLL;
              v42 = 0xEA00000000003E64;
              break;
            case 0xE:
              v65 = 0x100000000;
              if ((BYTE4(v29) & 1) == 0)
              {
                v65 = 0;
              }

              v138 = v65 | v29 | ((*&v37 & 0xFFFFFFLL) << 8);

              a3 = v139;
              sub_1C49A26FC(v139);
              v44 = 0;
              v47 = 0;
              if (*(&v35 + 1))
              {
                v59 = 0x657463616465723CLL;
              }

              else
              {
                v59 = v35;
              }

              v43 = v138;
              if (*(&v35 + 1))
              {
                v42 = 0xEA00000000003E64;
              }

              else
              {
                v42 = 0;
              }

              v48 = 14;
              break;
            case 0xF:
              v64 = v128;
              (*v125)(v128, v126, v147);

              a3 = v139;
              sub_1C49A26FC(v139);
              sub_1C45D2400();

              sub_1C45D29E0(v64, 0x657463616465723CLL, 0xEA00000000003E64, v149);
              v59 = v149[0];
              v42 = v149[1];
              v43 = v149[2];
              v44 = v149[3];
              v47 = v149[4];
              v48 = v150;
              break;
            default:
              v133 = v32;
              v134 = v33;
              v132 = v31;
              v60 = v34;
              v61 = v30;

              a3 = v139;
              sub_1C49A26FC(v139);
              sub_1C45A2358(&v157, &v153);
              v42 = v132;
              v44 = v133;
              v59 = v61;
              v48 = v60;
              v47 = v134;
              v43 = v138;
              break;
          }

          v155[0] = v59;
          v155[1] = v42;
          v155[2] = v43;
          v155[3] = v44;
          v155[4] = v47;
          v156 = v48;
          type metadata accessor for BehaviorEvent();
          v62 = v142;
          (*v140)(v142, *(v25 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v143);
          sub_1C45D644C(v155, v62);

          v24 = v145;
        }

        else
        {
          type metadata accessor for BehaviorEvent();
          memset(v159, 0, sizeof(v159));
          v160 = 21;
          v45 = v142;
          (*v140)(v142, *(v25 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v143);
          sub_1C45D644C(v159, v45);
        }
      }

      sub_1C4F02318();
      v63 = *(v151 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v22;
    }

    while (v22);
    v68 = v151;
    v23 = MEMORY[0x1E69E7CC0];
    v10 = v124;
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v69 = *(v68 + 16);
  if (v69)
  {
    *&v151 = v23;
    sub_1C4F02348();
    v70 = 0;
    v71 = (v10 + 32);
    LODWORD(v145) = *MEMORY[0x1E69A9450];
    v143 = (v10 + 104);
    v72 = (v10 + 8);
    do
    {
      v73 = *(v68 + 8 * v70 + 32);
      v74 = v147;
      if (v73)
      {
        v75 = v73[2];
        v153 = v73[1];
        v154[0] = v75;
        *(v154 + 9) = *(v73 + 41);
        v76 = v144;
        sub_1C45D5A24(v144);
        v77 = v146;
        (*v71)(v146, v76, v74);
      }

      else
      {
        v77 = v146;
        (*v143)(v146, v145, v147);
      }

      ++v70;

      sub_1C4EFDAA8();
      (*v72)(v77, v74);
      sub_1C4F01B58();

      sub_1C4F02318();
      v78 = *(v151 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    while (v69 != v70);
    v147 = v151;
    v148 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v79 = 32;
    v80 = v148;
    do
    {
      v81 = *(v68 + v79);
      if (v81)
      {
        v82 = v81[2];
        v151 = v81[1];
        v152[0] = v82;
        *(v152 + 9) = *(v81 + 41);

        v83 = sub_1C45D2400();
        v85 = v84;
      }

      else
      {
        v85 = 0xE300000000000000;
        v83 = 7040629;
      }

      v148 = v80;
      v86 = *(v80 + 16);
      if (v86 >= *(v80 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v80 = v148;
      }

      *(v80 + 16) = v86 + 1;
      v87 = v80 + 16 * v86;
      *(v87 + 32) = v83;
      *(v87 + 40) = v85;
      v79 += 8;
      --v69;
    }

    while (v69);
  }

  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
  v89 = sub_1C4C0C460();
  v90 = objc_opt_self();
  v91 = [v90 featureValueWithSequence_];

  *(inited + 48) = v91;
  *(inited + 56) = 0x696669746E656469;
  *(inited + 64) = 0xEA00000000007265;
  v92 = sub_1C4C0C4E4();
  v93 = [v90 featureValueWithSequence_];

  *(inited + 72) = v93;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v94 = sub_1C4F00F28();
  v95 = *(v94 + 16);
  if (v95)
  {
    v148 = MEMORY[0x1E69E7CC0];
    sub_1C459D810();
    v96 = v148;
    v99 = sub_1C4703354(v94);
    v100 = 0;
    v101 = (v94 + 64);
    v138 = v94 + 72;
    v139 = v95;
    v102 = v129;
    v140 = (v94 + 64);
    if ((v99 & 0x8000000000000000) == 0)
    {
      while (v99 < 1 << *(v94 + 32))
      {
        v103 = v99 >> 6;
        if ((v101[v99 >> 6] & (1 << v99)) == 0)
        {
          goto LABEL_82;
        }

        if (*(v94 + 36) != v97)
        {
          goto LABEL_83;
        }

        LODWORD(v142) = v98;
        v143 = v100;
        v144 = v97;
        v104 = *(v94 + 56);
        v105 = (*(v94 + 48) + 16 * v99);
        v106 = v105[1];
        v145 = *v105;
        v146 = v106;
        v107 = *(v104 + 8 * v99);
        v148 = v96;
        v108 = *(v96 + 16);
        v109 = *(v96 + 24);
        v147 = v108 + 1;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v110 = v107;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v108 >= v109 >> 1)
        {
          sub_1C459D810();
          v96 = v148;
        }

        *(v96 + 16) = v147;
        v111 = (v96 + 40 * v108);
        v112 = v146;
        v111[4] = v145;
        v111[5] = v112;
        v111[6] = v141;
        v111[7] = v102;
        v111[8] = v110;
        v113 = 1 << *(v94 + 32);
        if (v99 >= v113)
        {
          goto LABEL_84;
        }

        v101 = v140;
        v114 = v140[v103];
        if ((v114 & (1 << v99)) == 0)
        {
          goto LABEL_85;
        }

        if (*(v94 + 36) != v144)
        {
          goto LABEL_86;
        }

        v115 = v114 & (-2 << (v99 & 0x3F));
        if (v115)
        {
          v113 = __clz(__rbit64(v115)) | v99 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v116 = v96;
          v117 = v103 << 6;
          v118 = v103 + 1;
          v119 = (v138 + 8 * v103);
          while (v118 < (v113 + 63) >> 6)
          {
            v121 = *v119++;
            v120 = v121;
            v117 += 64;
            ++v118;
            if (v121)
            {
              sub_1C440951C(v99, v144, v142 & 1);
              v113 = __clz(__rbit64(v120)) + v117;
              goto LABEL_76;
            }
          }

          sub_1C440951C(v99, v144, v142 & 1);
LABEL_76:
          v96 = v116;
        }

        v100 = v143 + 1;
        if (v143 + 1 == v139)
        {
          goto LABEL_80;
        }

        v98 = 0;
        v97 = *(v94 + 36);
        v99 = v113;
        if (v113 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  else
  {
LABEL_80:
  }
}

void *sub_1C4BCF864()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C4407DE4();
  sub_1C4454378(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26BehaviorSequenceSignalView_behaviorHistoryUtility);

  return v0;
}

uint64_t sub_1C4BCF8CC()
{
  sub_1C4BCF864();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorSequenceSignalView()
{
  result = qword_1EDDF2CB8;
  if (!qword_1EDDF2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BCF978()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BCFA2C()
{
  sub_1C4BCE0F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BCFB28(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1C4F02128();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1C4BCFBCC()
{
  v1 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v20 - v6;
  v22 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v21 = v8 - 2;
    while (1)
    {
      v25 = 0;
      MEMORY[0x1C6942850](&v25, 8);
      v11 = (v25 * v8) >> 64;
      if (v8 > v25 * v8)
      {
        v12 = -v8 % v8;
        if (v12 > v25 * v8)
        {
          do
          {
            v25 = 0;
            MEMORY[0x1C6942850](&v25, 8);
          }

          while (v12 > v25 * v8);
          v11 = (v25 * v8) >> 64;
        }
      }

      v13 = v10 + v11;
      if (__OFADD__(v10, v11))
      {
        break;
      }

      if (v10 != v13)
      {
        v14 = *(v7 + 16);
        if (v10 >= v14)
        {
          goto LABEL_20;
        }

        v15 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v16 = *(v23 + 72);
        sub_1C4BCFFA0(v7 + v15 + v16 * v10, v24);
        if (v13 >= v14)
        {
          goto LABEL_21;
        }

        sub_1C4BCFFA0(v7 + v15 + v16 * v13, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C461B004(v7);
          v7 = v17;
        }

        if (v10 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v18 = v7 + v15;
        sub_1C4BD0010(v5, v18 + v16 * v10);
        if (v13 >= *(v7 + 16))
        {
          goto LABEL_23;
        }

        sub_1C4BD0010(v24, v18 + v16 * v13);
        v9 = v21;
        *v22 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1C4BCFDFC()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v19 = 0;
      MEMORY[0x1C6942850](&v19, 8);
      v4 = (v19 * v1) >> 64;
      if (v1 > v19 * v1)
      {
        v5 = -v1 % v1;
        if (v5 > v19 * v1)
        {
          do
          {
            v19 = 0;
            MEMORY[0x1C6942850](&v19, 8);
          }

          while (v5 > v19 * v1);
          v4 = (v19 * v1) >> 64;
        }
      }

      v6 = v3 + v4;
      if (__OFADD__(v3, v4))
      {
        break;
      }

      if (v3 != v6)
      {
        v7 = *v0;
        v8 = *(*v0 + 16);
        if (v3 >= v8)
        {
          goto LABEL_22;
        }

        if (v6 >= v8)
        {
          goto LABEL_23;
        }

        v9 = *(v7 + 32 + 8 * v3);
        v10 = *(v7 + 32 + 8 * v6);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_1C461C0EC(v7);
          *v0 = v7;
        }

        if (v3 >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        v12 = v7 + 8 * v3;
        v13 = *(v12 + 32);
        *(v12 + 32) = v10;

        sub_1C4F02328();
        v14 = *v0;
        v15 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v14;
        if ((v15 & 1) == 0)
        {
          v14 = sub_1C461C0EC(v14);
          *v0 = v14;
        }

        if (v6 >= *(v14 + 16))
        {
          goto LABEL_25;
        }

        v16 = v14 + 8 * v6;
        v17 = *(v16 + 32);
        *(v16 + 32) = v9;

        sub_1C4F02328();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

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
}

uint64_t sub_1C4BCFFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BD0010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BD0088()
{
  v0 = sub_1C444E0CC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    do
    {
      sub_1C442E860(v2, v6);
      v3 = v7;
      v4 = v8;
      sub_1C4409678(v6, v7);
      (*(v4 + 128))(v3, v4);
      sub_1C440962C(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1C4BD0160()
{
  sub_1C4BD0088();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BD01C8()
{
  v2 = v1;
  v3 = 0;
  v4 = *(v0 + 56);
  v17 = *(v4 + 16);
  v16 = v4;
  v5 = (v4 + 48);
  while (v17 != v3)
  {
    if (v3 >= *(v16 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = v5[5];
    v7 = v5[2];
    v8 = *(v5 - 1);
    v9 = *v5;
    v10 = v15[5];
    v18 = v15[6];
    v19 = v2;
    v11 = v15[2];
    v12 = v15[3];
    v13 = v15[4];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFA628();
    v2 = v19;

    if (v19)
    {
      return result;
    }

    ++v3;
    v5 += 8;
  }

  return result;
}

uint64_t sub_1C4BD02D8()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1C4F00978();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4F00178();

  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1C441D828(v3[2], v3[3], &v34);
    _os_log_impl(&dword_1C43F8000, v13, v14, "BiomeIncrementalViewGenerator: %s: truncation is not supported, treating as a clear instead.", v15, 0xCu);
    sub_1C440962C(v16);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  result = (*(v7 + 8))(v12, v4);
  v18 = 0;
  v19 = v3[7];
  v31 = *(v19 + 16);
  v29 = v3;
  v30 = v19;
  v20 = (v19 + 48);
  while (v31 != v18)
  {
    if (v18 >= *(v30 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = v20[5];
    v22 = v20[2];
    v23 = *v20;
    v24 = v29[5];
    v32 = *(v20 - 1);
    v33 = v29[6];
    v25 = v29[2];
    v26 = v29[3];
    v27 = v2;
    v28 = v29[4];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFA628();
    v2 = v27;

    if (v27)
    {
      return result;
    }

    ++v18;
    v20 += 8;
  }

  return result;
}

void sub_1C4BD0518()
{
  if (v0[32] == 1)
  {
    switch(v0[33])
    {
      case 1:
      case 3:
        sub_1C444F17C();
        break;
      case 2:
        sub_1C4CCD7DC();
        break;
      case 4:
        goto LABEL_4;
      default:
        sub_1C4CCD940();
        break;
    }
  }

  else
  {
LABEL_4:
    v0[34] = 1;
  }
}

uint64_t sub_1C4BD0570(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_queries) = a3;
  sub_1C441D670(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact);
  return v3;
}

uint64_t sub_1C4BD05D8()
{
  sub_1C442E860(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact, v4);
  v1 = v5;
  v2 = v6;
  sub_1C4409678(v4, v5);
  (*(v2 + 32))(v1, v2);
  return sub_1C440962C(v4);
}

void sub_1C4BD0650()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E698F2E0]) init];
  v94 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact);
  sub_1C442E860(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact, &v99);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4760, &unk_1C4F5BC80);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v97, v101);
    v3 = 0;
    v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_queries);
    v5 = *(v4 + 16);
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v92 = v2;
    v89 = v5;
    v90 = v4;
    v88 = v4 + 32;
LABEL_3:
    if (v3 == v5)
    {
      v71 = v7;
      v72 = v2;
      v73 = v102;
      v74 = v103;
      sub_1C4409678(v101, v102);
      (*(v74 + 8))(v71, v73, v74);

LABEL_35:
      sub_1C440962C(v101);
      return;
    }

    if (v3 < *(v4 + 16))
    {
      v8 = (v6 + 16 * v3);
      v9 = *v8;
      v10 = v8[1];
      v11 = v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C4F01C88();

      v13 = [v12 error];
      if (v13)
      {
        v75 = v13;

        if (qword_1EDDFECD0 != -1)
        {
          sub_1C44066DC();
        }

        v76 = sub_1C4F00978();
        sub_1C442B738(v76, qword_1EDE2DF70);

        v45 = v75;
        v77 = sub_1C4F00968();
        v78 = v1;
        v79 = sub_1C4F01CD8();

        if (os_log_type_enabled(v77, v79))
        {
          v80 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v99 = v96;
          *v80 = 136315394;
          v81 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
          *(v80 + 4) = sub_1C441D828(v81, v82, &v99);
          *(v80 + 12) = 2080;
          swift_getErrorValue();
          v83 = sub_1C4F02A38();
          sub_1C441D828(v83, v84, &v99);
          sub_1C440390C();
          *(v80 + 14) = v45;
          v45 = v78;
          sub_1C43FDFC4(&dword_1C43F8000, v85, v86, "BiomeSQLView %s: failed to read Biome SQL due to %s");
          sub_1C4432C18();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C442D5C8();
        sub_1C4F02248();
        MEMORY[0x1C6940010](0x4C5153656D6F6942, 0xED00002077656956);
        v87 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
        MEMORY[0x1C6940010](v87);
        MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FB8680);
        swift_getErrorValue();
      }

      else
      {
        v91 = v11 + 1;
        v93 = v12;
        while (1)
        {
          if (![v12 next])
          {

            v3 = v91;
            v2 = v92;
            v5 = v89;
            v4 = v90;
            v6 = v88;
            goto LABEL_3;
          }

          v14 = [v12 error];
          if (v14)
          {
            break;
          }

          v15 = sub_1C4BD1B7C(v12);
          if (!v15)
          {

            if (qword_1EDDFECD0 != -1)
            {
              sub_1C44066DC();
            }

            v62 = sub_1C4F00978();
            sub_1C442B738(v62, qword_1EDE2DF70);

            v63 = sub_1C4F00968();
            v64 = sub_1C4F01CD8();

            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v99 = v66;
              *v65 = 136315138;
              *(v65 + 4) = sub_1C441D828(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config + 8), &v99);
              _os_log_impl(&dword_1C43F8000, v63, v64, "BiomeSQLSignalView %s: could not coerce result to row", v65, 0xCu);
              sub_1C440962C(v66);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            sub_1C442D5C8();
            sub_1C4F02248();
            sub_1C4420588();
            MEMORY[0x1C6940010](*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config + 8));
            MEMORY[0x1C6940010](v64 + 13, 0x80000001C4FB8620);
            v67 = v99;
            v68 = v100;
            sub_1C446D0DC();
            v69 = sub_1C43FFB2C();
            *v70 = v67;
            v70[1] = v68;
            sub_1C440B500(v69, v70);

            goto LABEL_34;
          }

          v16 = v15;
          v96 = v7;
          v99 = MEMORY[0x1E69E7CC0];
          v17 = v94[3];
          v18 = v94[4];
          v19 = sub_1C4409678(v94, v17);
          v95 = &v88;
          v20 = *(v17 - 8);
          v21 = *(v20 + 64);
          v22 = MEMORY[0x1EEE9AC00](v19);
          v24 = v1;
          v25 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v20 + 16))(v25, v22);
          v26 = (*(v18 + 24))(v17, v18);
          v27 = v25;
          v1 = v24;
          v12 = v93;
          (*(v20 + 8))(v27, v17);
          v28 = 0;
          v29 = *(v26 + 16);
          while (v29 != v28)
          {
            v30 = *(type metadata accessor for ViewDatabaseArtifact.Property() - 8);
            sub_1C4BD10D0((v26 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28++), v12, v1, &v99, v16);
          }

          v31 = v99;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v7 = v96;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = *(v7 + 16);
            sub_1C458B824();
            v7 = v34;
          }

          v32 = *(v7 + 16);
          if (v32 >= *(v7 + 24) >> 1)
          {
            sub_1C458B824();
            v7 = v35;
          }

          *(v7 + 16) = v32 + 1;
          *(v7 + 8 * v32 + 32) = v31;
        }

        v42 = v14;

        if (qword_1EDDFECD0 != -1)
        {
          sub_1C44066DC();
        }

        v43 = sub_1C4F00978();
        v44 = sub_1C442B738(v43, qword_1EDE2DF70);

        v45 = v42;
        v46 = sub_1C4F00968();
        v47 = v1;
        v48 = sub_1C4F01CD8();

        if (os_log_type_enabled(v46, v48))
        {
          v49 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v99 = v96;
          *v49 = 136315394;
          v50 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
          *(v49 + 4) = sub_1C441D828(v50, v51, &v99);
          *(v49 + 12) = 2080;
          swift_getErrorValue();
          v52 = sub_1C4F02A38();
          sub_1C441D828(v52, v53, &v99);
          sub_1C440390C();
          *(v49 + 14) = v45;
          v45 = v47;
          sub_1C43FDFC4(&dword_1C43F8000, v54, v55, "BiomeSQLSignalView %s: failed to read Biome SQL step due to %s");
          sub_1C4432C18();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C442D5C8();
        sub_1C4F02248();
        sub_1C4420588();
        v56 = sub_1C4401774(OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config);
        MEMORY[0x1C6940010](v56);
        MEMORY[0x1C6940010](v44 + 20, 0x80000001C4FB8650);
        swift_getErrorValue();
      }

      v57 = sub_1C4F02A38();
      MEMORY[0x1C6940010](v57);

      v58 = v99;
      v59 = v100;
      sub_1C446D0DC();
      v60 = sub_1C43FFB2C();
      *v61 = v58;
      v61[1] = v59;
      sub_1C440B500(v60, v61);

LABEL_34:
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_43;
  }

  v98 = 0;
  memset(v97, 0, sizeof(v97));
  sub_1C446F170(v97, &qword_1EC0C4810, &unk_1C4F5BAE0);
  if (qword_1EDDFECD0 != -1)
  {
LABEL_43:
    sub_1C44066DC();
  }

  v36 = sub_1C4F00978();
  sub_1C442B738(v36, qword_1EDE2DF70);
  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CD8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1C43F8000, v37, v38, "BiomeSQLView: Cannot infer updateable table", v39, 2u);
    sub_1C43FBE2C();
  }

  sub_1C446D0DC();
  v40 = sub_1C43FFB2C();
  *v41 = 0xD00000000000002BLL;
  v41[1] = 0x80000001C4FB85D0;
  sub_1C440B500(v40, v41);
}

uint64_t sub_1C4BD10D0(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v52 = a5;
  v10 = type metadata accessor for ViewDatabaseArtifact.Property();
  v11 = *(*(v10 - 8) + 64);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [a2 columns];
  v16 = sub_1C4F01678();

  v45 = a1;
  v17 = sub_1C44CE068(sub_1C4BD1BE8, v44, v16);

  if (!v17)
  {
    v43 = v5;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DF70);
    sub_1C443CCBC(a1, v14);

    v19 = a2;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CB8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v48 = v42;
      *v22 = 136315650;
      *(v22 + 4) = sub_1C441D828(*(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config), *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_config + 8), &v48);
      *(v22 + 12) = 2080;
      *&v51[0] = 0;
      *(&v51[0] + 1) = 0xE000000000000000;
      v41 = v21;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x747265706F72503CLL, 0xED0000203A6E2079);
      MEMORY[0x1C6940010](*v14, v14[1]);
      MEMORY[0x1C6940010](0x203A74202CLL, 0xE500000000000000);
      v23 = *(v10 + 20);
      sub_1C4EFBE38();
      sub_1C4F02438();
      MEMORY[0x1C6940010](62, 0xE100000000000000);
      v24 = v51[0];
      sub_1C443CE80(v14, type metadata accessor for ViewDatabaseArtifact.Property);
      v25 = sub_1C441D828(v24, *(&v24 + 1), &v48);

      *(v22 + 14) = v25;
      *(v22 + 22) = 2080;
      v26 = [v19 columns];
      v27 = MEMORY[0x1E69E6158];
      v28 = sub_1C4F01678();

      v29 = MEMORY[0x1C6940380](v28, v27);
      v31 = v30;

      v32 = sub_1C441D828(v29, v31, &v48);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_1C43F8000, v20, v41, "BiomeSQLSignalView %s: column mismatch: %s not found in %s", v22, 0x20u);
      v33 = v42;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v33, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    else
    {

      sub_1C443CE80(v14, type metadata accessor for ViewDatabaseArtifact.Property);
    }

    static DatabaseValue.emptyValue(forType:)(a1 + *(v10 + 20), v51);
    sub_1C4589648();
    v34 = *(*a4 + 16);
    sub_1C458A1C8();
    v35 = *a4;
    *(v35 + 16) = v34 + 1;
    sub_1C441D670(v51, v35 + 40 * v34 + 32);
  }

  v36 = a1[1];
  *&v48 = *a1;
  *(&v48 + 1) = v36;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F02198();
  sub_1C465C11C(v51, v52);
  sub_1C457E804(v51);
  if (v47)
  {
    sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
    if (swift_dynamicCast())
    {
      if (*(&v49 + 1))
      {
        sub_1C441D670(&v48, v51);
        goto LABEL_16;
      }
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }
  }

  else
  {
    sub_1C446F170(v46, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
  }

  static DatabaseValue.emptyValue(forType:)(a1 + *(v10 + 20), v51);
  if (*(&v49 + 1))
  {
    sub_1C446F170(&v48, &qword_1EC0B9038, &unk_1C4F231C0);
  }

LABEL_16:
  sub_1C4589648();
  v37 = *(*a4 + 16);
  sub_1C458A1C8();
  v38 = *a4;
  *(v38 + 16) = v37 + 1;
  return sub_1C441D670(v51, v38 + 40 * v37 + 32);
}

uint64_t sub_1C4BD1644(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

uint64_t sub_1C4BD169C()
{
  sub_1C4407E24();
  sub_1C443CE80(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_queries);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18BiomeSQLSignalView_outputArtifact));
  return v0;
}

uint64_t sub_1C4BD16E8()
{
  sub_1C4BD169C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BD1768()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BD1810()
{
  sub_1C4BD0650();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BD1888()
{
  sub_1C4BD05D8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BD18E4(uint64_t a1, uint64_t a2)
{
  v6 = _s10ViewConfigVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = *(*v2 + 16);

  sub_1C443A738(a1, a2, v14, v15, v16, v17, v18, v19);

  if (!v3)
  {
    v21 = *(v12 + 9);
    if (v21)
    {
      v22 = *(v12 + 9);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ViewGeneration.ViewClients.storage(for:fullRebuild:)();
      sub_1C463F300(v12, v9);
      v25 = type metadata accessor for BiomeSQLSignalView(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v13 = swift_allocObject();
      sub_1C4BD0570(&v29, v9, v21);
    }

    else
    {
      v13 = 0x80000001C4FB86B0;
      sub_1C450B034();
      sub_1C43FFB2C();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = 0xD000000000000013;
      *(v23 + 24) = 0x80000001C4FB86B0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0xE000000000000000;
      *(v23 + 48) = v29;
      *(v23 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4407E24();
      sub_1C443CE80(v12, v24);
    }
  }

  return v13;
}

uint64_t sub_1C4BD1AD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4BD18E4(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_1C4BD1B7C(void *a1)
{
  v1 = [a1 row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F00ED8();

  return v3;
}

uint64_t sub_1C4BD1C50()
{
  result = type metadata accessor for ViewGeneration.ViewClients(319);
  if (v1 <= 0x3F)
  {
    result = sub_1C4EF98F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BD1CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_config);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_featureNames) = a4;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_queries) = a3;
  return v4;
}

void sub_1C4BD1D4C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E698F2E0]) init];
  v3 = 0;
  v4 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_queries);
  v59 = v1;
  v64 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_config);
  v5 = v4 + 32;
  v63 = MEMORY[0x1E69E7CC0];
  v6 = *(v4 + 16);
  v7 = 0x4E65727574616566;
  v65 = v2;
  v61 = v4 + 32;
  v62 = v4;
  v60 = v6;
LABEL_2:
  if (v3 == v6)
  {
    v49 = v2;
    v50 = v59[3];
    v51 = v59[4];
    v52 = v59[5];
    v53 = v59[6];
    v68 = v59[2];
    v69 = v50;
    v70 = v51;
    v71 = v52;
    v72 = v53;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C47D32C8();
  }

  else if (v3 >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    v9 = (v5 + 16 * v3);
    v10 = *v9;
    v11 = v9[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4F01C88();

    v13 = [v12 error];
    if (!v13)
    {
      ++v3;
LABEL_6:
      v7 = v8;
      while (1)
      {
        if (![v12 next])
        {

          v2 = v65;
          v5 = v61;
          v4 = v62;
          v6 = v60;
          goto LABEL_2;
        }

        v14 = [v12 error];
        if (v14)
        {
          v44 = v14;

          v68 = 0;
          v69 = 0xE000000000000000;
          sub_1C4F02248();
          sub_1C441A710();
          MEMORY[0x1C6940010](*v64, v64[1]);
          MEMORY[0x1C6940010](0xD000000000000027, 0x80000001C4FB8650);
          swift_getErrorValue();
          goto LABEL_54;
        }

        v15 = sub_1C4BD1B7C(v12);
        if (!v15)
        {
          goto LABEL_16;
        }

        v16 = v15;
        *&v66 = v8;
        *(&v66 + 1) = 0xEB00000000656D61;
        sub_1C4F02198();
        if (*(v16 + 16) && (v17 = sub_1C457AA70(&v68), (v18 & 1) != 0))
        {
          sub_1C442B870(*(v16 + 56) + 32 * v17, &v73);
          sub_1C457E804(&v68);

          if (!*(&v74 + 1))
          {
            goto LABEL_17;
          }

          if (swift_dynamicCast())
          {
            v19 = v68;
            v20 = v69;
            v21 = sub_1C4BD1B7C(v12);
            if (!v21)
            {

              v66 = 0u;
              v67 = 0u;
              goto LABEL_36;
            }

            v22 = v21;
            sub_1C4F02198();
            if (!*(v22 + 16) || (v23 = sub_1C457AA70(&v68), (v24 & 1) == 0))
            {

              sub_1C457E804(&v68);
              v66 = 0u;
              v67 = 0u;
LABEL_34:

LABEL_36:
              sub_1C4448244(&v66);
              goto LABEL_6;
            }

            sub_1C442B870(*(v22 + 56) + 32 * v23, &v66);
            sub_1C457E804(&v68);

            if (!*(&v67 + 1))
            {
              goto LABEL_34;
            }

            sub_1C44482AC(&v66, &v73);
            v25 = sub_1C4BD1B7C(v12);
            if (!v25)
            {
              goto LABEL_38;
            }

            v26 = v25;
            strcpy(&v66, "subidentifier");
            HIWORD(v66) = -4864;
            sub_1C4F02198();
            if (!*(v26 + 16) || (v27 = sub_1C457AA70(&v68), (v28 & 1) == 0))
            {

              sub_1C457E804(&v68);
LABEL_38:
              v66 = 0u;
              v67 = 0u;
              goto LABEL_39;
            }

            sub_1C442B870(*(v26 + 56) + 32 * v27, &v66);
            sub_1C457E804(&v68);

            if (*(&v67 + 1))
            {
              v29 = swift_dynamicCast();
              if (v29)
              {
                v30 = v68;
              }

              else
              {
                v30 = 0;
              }

              if (v29)
              {
                v31 = v69;
              }

              else
              {
                v31 = 0;
              }

              v56 = v30;
              log = v31;
              goto LABEL_40;
            }

LABEL_39:
            sub_1C4448244(&v66);
            v56 = 0;
            log = 0;
LABEL_40:
            sub_1C4577DBC();
            sub_1C442B870(&v73, &v68);
            v32 = sub_1C4C0BF5C(&v68);
            if (v32)
            {
              v38 = v32;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v41 = *(v63 + 16);
                sub_1C458B504();
                v63 = v42;
              }

              v39 = *(v63 + 16);
              v54 = v39 + 1;
              v55 = v39;
              if (v39 >= *(v63 + 24) >> 1)
              {
                sub_1C458B504();
                v63 = v43;
              }

              sub_1C440962C(&v73);
              *(v63 + 16) = v54;
              v40 = (v63 + 40 * v55);
              v40[4] = v19;
              v40[5] = v20;
              v40[6] = v56;
              v40[7] = log;
              v40[8] = v38;
            }

            else
            {

              if (qword_1EDDFECD0 != -1)
              {
                swift_once();
              }

              v33 = sub_1C4F00978();
              sub_1C442B738(v33, qword_1EDE2DF70);

              v34 = sub_1C4F00968();
              v35 = sub_1C4F01CD8();

              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                loga = v34;
                v37 = swift_slowAlloc();
                v68 = v37;
                *v36 = 136315138;
                *(v36 + 4) = sub_1C441D828(*v64, v64[1], &v68);
                _os_log_impl(&dword_1C43F8000, loga, v35, "SignalView %s: received a non-ML compatible feature value", v36, 0xCu);
                sub_1C440962C(v37);
                MEMORY[0x1C6942830](v37, -1, -1);
                MEMORY[0x1C6942830](v36, -1, -1);
              }

              else
              {
              }

              sub_1C440962C(&v73);
            }

            goto LABEL_6;
          }
        }

        else
        {

          sub_1C457E804(&v68);
LABEL_16:
          v73 = 0u;
          v74 = 0u;
LABEL_17:
          sub_1C4448244(&v73);
        }
      }
    }

    v44 = v13;

    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1C4F02248();
    sub_1C441A710();
    MEMORY[0x1C6940010](*v64, v64[1]);
    MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FB8680);
    swift_getErrorValue();
LABEL_54:
    v45 = sub_1C4F02A38();
    MEMORY[0x1C6940010](v45);

    v46 = v68;
    v47 = v69;
    sub_1C446D0DC();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 3;
    swift_willThrow();
  }
}

void *sub_1C4BD24E8()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_featureNames);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12BiomeSQLView_queries);

  return v0;
}

uint64_t sub_1C4BD255C()
{
  sub_1C4BD24E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BiomeSQLView()
{
  result = qword_1EC0C4768;
  if (!qword_1EC0C4768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BD2608()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BD26E0()
{
  sub_1C4BD1D4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static DatabaseValue.emptyValue(forType:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EFBE38();
  sub_1C43FCE64();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v6 + 16))(&v30 - v14, a1, v4, v13);
  sub_1C4EFBE08();
  sub_1C4BD2A38();
  v15 = sub_1C44068D0();
  v16 = *(v6 + 8);
  v16(v11, v4);
  if (v15)
  {
    v17 = sub_1C4404050();
    result = (v16)(v17);
    v19 = MEMORY[0x1E69A0180];
    a2[3] = MEMORY[0x1E69E6530];
    a2[4] = v19;
    *a2 = 0;
    return result;
  }

  sub_1C4EFBDF8();
  sub_1C44068D0();
  v20 = sub_1C4417504();
  (v16)(v20);
  sub_1C4EFBDE8();
  sub_1C44068D0();
  v21 = sub_1C4417504();
  (v16)(v21);
  sub_1C4EFBDD8();
  sub_1C44068D0();
  v22 = sub_1C4417504();
  (v16)(v22);
  sub_1C4EFBDB8();
  sub_1C44068D0();
  v24 = sub_1C4417504();
  (v16)(v24);
  if (v15)
  {
    v25 = sub_1C4404050();
    (v16)(v25);
  }

  else
  {
    sub_1C4EFBDA8();
    v26 = sub_1C44068D0();
    v16(v11, v4);
    v27 = sub_1C4404050();
    result = (v16)(v27);
    if ((v26 & 1) == 0)
    {
      v23 = MEMORY[0x1E69A0138];
      a2[3] = MEMORY[0x1E69E6158];
      a2[4] = v23;
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      return result;
    }
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  result = sub_1C4461BB8(0, &qword_1EC0C4778, 0x1E695DEF0);
  v29 = MEMORY[0x1E69A0190];
  a2[3] = result;
  a2[4] = v29;
  *a2 = v28;
  return result;
}

unint64_t sub_1C4BD2A38()
{
  result = qword_1EDDF0040;
  if (!qword_1EDDF0040)
  {
    sub_1C4EFBE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0040);
  }

  return result;
}

uint64_t sub_1C4BD2A90(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C463F300(a2, v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
  v12 = (v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition);
  *v12 = a3;
  v12[1] = a4;
  v12[2] = a5;
  *(v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_postProcessingOps) = a6;
  sub_1C441D670(a1, v6 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact);
  return v6;
}

uint64_t sub_1C4BD2B20()
{
  sub_1C442E860(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact, v4);
  v1 = v5;
  v2 = v6;
  sub_1C4409678(v4, v5);
  (*(v2 + 32))(v1, v2);
  return sub_1C440962C(v4);
}

uint64_t sub_1C4BD2B98()
{
  v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
  v2 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8);
  v5 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 8);
  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 16);
  v6 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_postProcessingOps);
  *&v27 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition);
  *(&v27 + 1) = v5;
  v29 = 0;
  v28 = 0uLL;
  sub_1C442E860(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact, v25);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4760, &unk_1C4F5BC80);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v23, v26);
    v7 = swift_allocObject();
    v30 = v1;
    *(v7 + 16) = 0;
    v8 = v26[4];
    sub_1C4409678(v26, v26[3]);
    v9 = swift_allocObject();
    v10 = v28;
    *(v9 + 24) = v27;
    *(v9 + 16) = v7;
    *(v9 + 40) = v10;
    *(v9 + 56) = v29;
    *(v9 + 64) = v3;
    *(v9 + 72) = v2;
    *(v9 + 80) = v4;
    *(v9 + 88) = v6;
    *(v9 + 96) = v0;
    v11 = *(v8 + 16);
    sub_1C4BD7B3C(&v27, v25);

    sub_1C4405BE0();
    v11();

    sub_1C4BD7ABC(&v27);

    swift_beginAccess();
    v12 = *(v7 + 16);
    swift_unknownObjectRetain();

    sub_1C440962C(v26);
  }

  else
  {

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1C4420C3C(v23, &qword_1EC0C4810, &unk_1C4F5BAE0);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    v14 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v12))
    {
      *swift_slowAlloc() = 0;
      sub_1C4414B20();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C446D0DC();
    sub_1C441C114();
    v20 = swift_allocError();
    sub_1C440D9E0(v20, v21);
    sub_1C4BD7ABC(&v27);
  }

  return v12;
}

uint64_t sub_1C4BD2EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v16[7] = a1;
  v16[8] = a2;
  v17 = *a4;
  v18 = a4[1];
  v29 = a4[3];
  v30 = a4[2];
  v19 = a4[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = objc_autoreleasePoolPush();
  v21 = objc_opt_self();
  v22 = sub_1C4F01108();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C4BD8378;
  *(v23 + 24) = v16;
  aBlock[4] = sub_1C4BD8370;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C463F5CC;
  aBlock[3] = &unk_1F44018A0;
  v24 = _Block_copy(aBlock);

  LOBYTE(v28) = 0;
  v25 = [v21 iterateStream:v22 device:v29 account:v19 bookmark:v30 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v28 body:v24];
  _Block_release(v24);

  objc_autoreleasePoolPop(v20);

  swift_beginAccess();
  v26 = *(a3 + 16);
  *(a3 + 16) = v25;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C4BD30DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v204 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v211 = &v197 - v7;
  v208 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v201 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1C4F00F28();
  v14 = *(a4 + 64);
  v15 = 1 << *(a4 + 32);
  sub_1C440DD98();
  v18 = v17 & v16;
  v205 = (v19 + 63) >> 6;
  v200 = (v9 + 32);
  v199 = (v9 + 8);
  v21 = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = 0;
  v198 = 0;
  *&v23 = 136315138;
  v210 = v23;
  *&v23 = 136315650;
  v197 = v23;
  v203 = a4;
  v202 = v21;
  while (1)
  {
    if (!v18)
    {
      do
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_106;
        }

        if (v24 >= v205)
        {

          return v219;
        }

        v18 = *(v21 + 8 * v24);
        ++v22;
      }

      while (!v18);
      v22 = v24;
    }

    v207 = v18;
    v206 = v22;
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v26 = *(a4 + 56);
    v27 = (*(a4 + 48) + 16 * v25);
    v28 = v27[1];
    v217 = *v27;
    v29 = *(v26 + 8 * v25);
    *(&v227 + 1) = sub_1C4461BB8(0, &qword_1EC0BA448, 0x1E698F280);
    *&v226 = v204;
    v216 = *(v29 + 16);
    if (v216)
    {
      break;
    }

    v174 = v204;
LABEL_101:
    v18 = (v207 - 1) & v207;
    sub_1C440FD60();
    sub_1C4420C3C(v193, v194, v195);
    v22 = v206;
  }

  v215 = v29 + 32;
  v30 = v204;
  v218 = v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = v30;
  v32 = 0;
  v214 = v29;
  while (2)
  {
    if (v32 >= *(v29 + 16))
    {
      goto LABEL_104;
    }

    v33 = v215 + 32 * v32;
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    switch(v37)
    {
      case 0u:
        v38 = *(v33 + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v39 = sub_1C4F01108();
        v40 = NSClassFromString(v39);

        if (v40)
        {
          sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
          v41 = [sub_1C4F01F38() isKindOfClass_];
          sub_1C4400D10();
          sub_1C49F181C(v42, v43, v44, 0);
          swift_unknownObjectRelease();
          if (v41)
          {
            sub_1C4412738();
          }

          else
          {
            v224 = 0u;
            v225 = 0u;
          }

          goto LABEL_79;
        }

        sub_1C4BD7FDC();
        sub_1C441C114();
        v175 = swift_allocError();
        *v176 = 0;
        swift_willThrow();
        sub_1C4400D10();
        sub_1C49F181C(v177, v178, v179, 0);
        v180 = v175;
        if (qword_1EDDFECD0 != -1)
        {
          sub_1C4400FC0();
          swift_once();
        }

        v181 = sub_1C4F00978();
        sub_1C43FCEE8(v181, qword_1EDE2DF70);
        v182 = v218;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v183 = v175;
        v184 = sub_1C4F00968();
        v185 = sub_1C4F01CD8();

        v186 = os_log_type_enabled(v184, v185);
        a4 = v203;
        if (v186)
        {
          sub_1C43FEC60();
          v187 = swift_slowAlloc();
          *&v224 = swift_slowAlloc();
          *v187 = v197;
          v188 = v217;
          *(v187 + 4) = sub_1C441D828(v217, v182, &v224);
          *(v187 + 12) = 2080;
          v189 = sub_1C441D828(v188, v182, &v224);

          *(v187 + 14) = v189;
          *(v187 + 22) = 2080;
          swift_getErrorValue();
          v190 = sub_1C4F02A38();
          v192 = sub_1C441D828(v190, v191, &v224);

          *(v187 + 24) = v192;
          _os_log_impl(&dword_1C43F8000, v184, v185, "StreamPipelineProcessor %s: invalid pipeline for feature %s: %s", v187, 0x20u);
          swift_arrayDestroy();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v198 = 0;
        v21 = v202;
        goto LABEL_101;
      case 1u:
        v72 = *(v33 + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
        v73 = v34;
        v74 = sub_1C4F01F38();
        v75 = sub_1C4F01108();
        v76 = [v74 valueForKeyPath_];

        swift_unknownObjectRelease();
        if (v76)
        {
          sub_1C4F02078();
          sub_1C4400D10();
          sub_1C49F181C(v77, v78, v79, 1u);
          swift_unknownObjectRelease();
          sub_1C440FD60();
          sub_1C4420C3C(v80, v81, v82);
          v83 = sub_1C442E608();
          sub_1C44482AC(v83, v84);
        }

        else
        {
          v209 = v73;
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v121 = sub_1C4F00978();
          sub_1C43FCEE8(v121, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v122 = sub_1C4F00968();
          v123 = sub_1C4F01CB8();
          if (os_log_type_enabled(v122, v123))
          {
            sub_1C43FECF0();
            v124 = swift_slowAlloc();
            sub_1C43FEC60();
            v125 = swift_slowAlloc();
            *&v224 = v125;
            *v124 = v210;
            v213 = sub_1C441D828(v209, v35, &v224);
            sub_1C4400D10();
            sub_1C49F181C(v126, v127, v128, 1u);
            *(v124 + 4) = v213;
            _os_log_impl(&dword_1C43F8000, v122, v123, "streamOps: Could not get a value for keypath %s", v124, 0xCu);
            sub_1C440962C(v125);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {

            sub_1C4400D10();
            sub_1C49F181C(v129, v130, v131, 1u);
          }

          sub_1C4400D10();
          sub_1C49F181C(v132, v133, v134, 1u);
          sub_1C440FD60();
          sub_1C4420C3C(v135, v136, v137);
          v226 = 0u;
          v227 = 0u;
        }

        goto LABEL_80;
      case 8u:
        sub_1C4412738();
        v45 = *(v34 + 16);
        if (!v45)
        {
          goto LABEL_108;
        }

        v213 = v32;
        v46 = v34;
        v47 = *(v34 + 32);
        v48 = *(v46 + 40);
        sub_1C4400D10();
        sub_1C49F1884(v49, v50, v51, 8u);
        v212 = v35;
        sub_1C49F1884(v46, v35, v36, 8u);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!swift_isUniquelyReferenced_nonNull_native() || (v52 = v46, (v45 - 1) > *(v46 + 24) >> 1))
        {
          sub_1C443D664();
          v52 = v53;
        }

        v54 = v46;
LABEL_19:
        sub_1C4471348((v52 + 4));
        v55 = v52[2];
        memmove(v52 + 4, v52 + 6, 16 * v55 - 16);
        v52[2] = v55 - 1;
        if (v55 == 1)
        {
          sub_1C49F181C(v54, v212, v36, 8u);

          v111 = sub_1C442E608();
          sub_1C4815D50(v111, v112);
          v32 = v213;
LABEL_80:
          sub_1C446C964(&v226, &v222, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          if (*(&v223 + 1))
          {
            sub_1C44482AC(&v222, &v224);
            sub_1C442B870(&v224, &v222);
            v154 = v219;
            swift_isUniquelyReferenced_nonNull_native();
            v221 = v154;
            v155 = sub_1C44047BC();
            sub_1C442C010(v155, v156);
            if (v159)
            {
              goto LABEL_105;
            }

            v160 = v157;
            v161 = v158;
            sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
            if (sub_1C4F02458())
            {
              v162 = sub_1C44047BC();
              v29 = v214;
              if ((v161 & 1) != (v163 & 1))
              {
                goto LABEL_109;
              }

              v160 = v162;
            }

            else
            {
              v29 = v214;
            }

            v167 = v221;
            v219 = v221;
            if (v161)
            {
              v168 = (*(v221 + 56) + 32 * v160);
              sub_1C440962C(v168);
              sub_1C44482AC(&v222, v168);
              sub_1C440962C(&v224);
            }

            else
            {
              *(v221 + 8 * (v160 >> 6) + 64) |= 1 << v160;
              v169 = (*(v167 + 48) + 16 * v160);
              v170 = v218;
              *v169 = v217;
              v169[1] = v170;
              sub_1C44482AC(&v222, (*(v167 + 56) + 32 * v160));
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C440962C(&v224);
              v171 = *(v219 + 16);
              v159 = __OFADD__(v171, 1);
              v172 = v171 + 1;
              if (v159)
              {
                goto LABEL_107;
              }

              *(v219 + 16) = v172;
            }
          }

          else
          {
            sub_1C440FD60();
            sub_1C4420C3C(v164, v165, v166);
            v29 = v214;
          }

          if (++v32 == v216)
          {

            a4 = v203;
            v21 = v202;
            goto LABEL_101;
          }

          continue;
        }

        sub_1C446C964(&v224, &v222, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        if (!*(&v223 + 1))
        {
          sub_1C440FD60();
          sub_1C4420C3C(v60, v61, v62);

LABEL_28:
          sub_1C440FD60();
LABEL_29:
          sub_1C4420C3C(v66, v67, v68);
          goto LABEL_30;
        }

        sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1C440FD60();
          sub_1C4420C3C(v63, v64, v65);

LABEL_30:
          v222 = 0u;
          v223 = 0u;
          goto LABEL_31;
        }

        v56 = v221;
        if (!*(v221 + 16))
        {

          goto LABEL_28;
        }

        v57 = sub_1C445FAA8(v47, v48);
        v59 = v58;

        if ((v59 & 1) == 0)
        {

          v66 = &v224;
          v67 = &qword_1EC0BCD10;
          v68 = &qword_1C4F0C8C0;
          goto LABEL_29;
        }

        sub_1C442B870(*(v56 + 56) + 32 * v57, &v222);
        sub_1C4420C3C(&v224, &qword_1EC0BCD10, &qword_1C4F0C8C0);

LABEL_31:
        v224 = v222;
        v225 = v223;
        v69 = v52[2];
        if (v69)
        {
          v47 = v52[4];
          v48 = v52[5];
          v70 = v52[3];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v69 - 1 > v70 >> 1)
          {
            sub_1C443D664();
            v52 = v71;
          }

          goto LABEL_19;
        }

        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      case 9u:
        if (v34 != 6 || (v36 | v35) != 0)
        {
          goto LABEL_42;
        }

        sub_1C4412738();
        if (*(&v225 + 1))
        {
          v113 = v211;
          v114 = v208;
          v115 = swift_dynamicCast();
          sub_1C440BAA8(v113, v115 ^ 1u, 1, v114);
          if (sub_1C44157D4(v113, 1, v114) != 1)
          {
            v116 = v201;
            v117 = v208;
            (*v200)(v201, v211, v208);
            sub_1C4EF9AD8();
            *(&v225 + 1) = MEMORY[0x1E69E63B0];
            *&v224 = v118;
            (*v199)(v116, v117);
            v119 = sub_1C442E608();
            sub_1C4815D50(v119, v120);
            goto LABEL_60;
          }
        }

        else
        {
          sub_1C440FD60();
          sub_1C4420C3C(v138, v139, v140);
          sub_1C440BAA8(v211, 1, 1, v208);
        }

        sub_1C4420C3C(v211, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_60:
        sub_1C4412738();
        if (!*(&v225 + 1))
        {
          sub_1C440FD60();
          sub_1C4420C3C(v145, v146, v147);
          goto LABEL_80;
        }

        v141 = swift_dynamicCast();
        if ((v141 & 1) == 0)
        {
          goto LABEL_80;
        }

        v142 = *(&v222 + 1);
        v221 = 0;
        MEMORY[0x1EEE9AC00](v141);
        *(&v197 - 2) = &v221;
        if ((v142 & 0x1000000000000000) != 0)
        {
          goto LABEL_93;
        }

        if ((v142 & 0x2000000000000000) != 0)
        {
          *&v222 = v143;
          *(&v222 + 1) = v142 & 0xFFFFFFFFFFFFFFLL;
          if (v143 >= 0x21u || ((0x100003E01uLL >> v143) & 1) == 0)
          {
LABEL_71:
            v148 = _swift_stdlib_strtod_clocale();
            if (v148)
            {
              v149 = *v148 == 0;
LABEL_74:
              v220 = v149;
              goto LABEL_75;
            }
          }

LABEL_73:
          v149 = 0;
          goto LABEL_74;
        }

        if ((v143 & 0x1000000000000000) != 0)
        {
          v144 = *((v142 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v144 >= 0x21 || ((0x100003E01uLL >> v144) & 1) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_73;
        }

LABEL_93:
        v173 = v198;
        sub_1C4F02218();
        v198 = v173;
LABEL_75:

        if (v220)
        {
          v150 = v221;
          v151 = MEMORY[0x1E69E63B0];
        }

        else
        {
          v151 = 0;
          v150 = 0;
          *(&v224 + 1) = 0;
          *&v225 = 0;
        }

        *(&v225 + 1) = v151;
        *&v224 = v150;
LABEL_79:
        v152 = sub_1C442E608();
        sub_1C4815D50(v152, v153);
        goto LABEL_80;
      default:
LABEL_42:
        sub_1C4400D10();
        sub_1C49F1884(v86, v87, v88, v37);
        v89 = v34;
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v90 = sub_1C4F00978();
        sub_1C43FCEE8(v90, qword_1EDDFECB8);
        sub_1C4400D10();
        sub_1C49F1884(v91, v92, v93, v37);
        v94 = sub_1C4F00968();
        v95 = sub_1C4F01CD8();
        sub_1C4400D10();
        sub_1C49F181C(v96, v97, v98, v37);
        if (os_log_type_enabled(v94, v95))
        {
          sub_1C43FECF0();
          v99 = swift_slowAlloc();
          LODWORD(v213) = v95;
          v100 = v99;
          sub_1C43FEC60();
          v101 = swift_slowAlloc();
          *&v222 = v101;
          *v100 = v210;
          *&v224 = v89;
          *(&v224 + 1) = v35;
          *&v225 = v36;
          BYTE8(v225) = v37;
          sub_1C4400D10();
          sub_1C49F1884(v102, v103, v104, v37);
          v105 = sub_1C4F01198();
          v107 = sub_1C441D828(v105, v106, &v222);

          *(v100 + 4) = v107;
          _os_log_impl(&dword_1C43F8000, v94, v213, "Operation %s not yet supported for StreamPipelineProcessor", v100, 0xCu);
          sub_1C440962C(v101);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C4400D10();
        sub_1C49F181C(v108, v109, v110, v37);
        goto LABEL_80;
    }
  }
}

int64_t sub_1C4BD4168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = MEMORY[0x1E69E7CC0];
  if (!a5)
  {
    sub_1C456902C(&qword_1EC0B8978, &qword_1C4F0DD80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1C4F0D130;
    sub_1C456902C(&unk_1EC0C47B0, &qword_1C4F14670);
    v13 = sub_1C4F02538();
    v14 = 0;
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    sub_1C440DD98();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    v23 = v22 + 64;
    if ((v18 & v17) != 0)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_15:
        v27 = v24 | (v14 << 6);
        v28 = (*(a1 + 48) + 16 * v27);
        v29 = *v28;
        v30 = v28[1];
        sub_1C442B870(*(a1 + 56) + 32 * v27, v61);
        sub_1C44482AC(v61, &v57);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v60 = 0;
          v58 = 0u;
          v59 = 0u;
        }

        *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v31 = (v13[6] + 16 * v27);
        *v31 = v29;
        v31[1] = v30;
        v32 = v13[7] + 40 * v27;
        v33 = v58;
        v34 = v59;
        *(v32 + 32) = v60;
        *v32 = v33;
        *(v32 + 16) = v34;
        v35 = v13[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          break;
        }

        v13[2] = v37;
        if (!v19)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v25 = v14;
      while (1)
      {
        v14 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v14 >= v21)
        {
          result = v55;
          *(v55 + 32) = v13;
          return result;
        }

        v26 = *(a1 + 64 + 8 * v14);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v19 = (v26 - 1) & v26;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    sub_1C4400FC0();
    swift_once();
    goto LABEL_24;
  }

  v54 = 136315138;
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = *(a5 + 32);
  if ((*(a5 + 40) & 1) == 0)
  {
    v39 = *(a5 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BD614C(a1, v6);
    sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
    sub_1C4F00F28();
    v40 = sub_1C43FBC98();
    sub_1C4BD6D94(v40, v41, v42);

    return v62;
  }

  v7 = qword_1EDDFDCF8;
  v8 = *(a5 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    v9 = (*(off_1EDDFF3D0 + 5))();
    v11 = v10;
    sub_1C465E94C(v6);
    v43 = (*(v11 + 8))(a1, v12, v9, v11);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  v21 = v43;
  v62 = v43;
  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_30;
  }

LABEL_24:
  v44 = sub_1C4F00978();
  sub_1C43FCEE8(v44, qword_1EDE2DF70);
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CB8();
  if (os_log_type_enabled(v45, v46))
  {
    sub_1C43FECF0();
    v47 = swift_slowAlloc();
    sub_1C43FEC60();
    v48 = swift_slowAlloc();
    *&v61[0] = v48;
    *v47 = v54;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = sub_1C456902C(&unk_1EC0C47C0, &qword_1C4F0DD88);
    v50 = MEMORY[0x1C6940380](v21, v49);
    v52 = v51;

    v53 = sub_1C441D828(v50, v52, v61);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_1C43F8000, v45, v46, "Got some Row items: %s", v47, 0xCu);
    sub_1C440962C(v48);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  return v21;
}

uint64_t sub_1C4BD48F8(unint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
  v3 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8);
  v6 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 8);
  v5 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 16);
  v7 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_postProcessingOps);
  *&v32 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition);
  *(&v32 + 1) = v6;
  v34 = 0;
  v33 = a1;
  sub_1C442E860(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact, v27);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_unknownObjectRetain();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C47A0, &qword_1C4F5BC40);
  if (swift_dynamicCast())
  {
    sub_1C460986C(v26, v28);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v35 = v2;
    v9 = v4;
    v10 = v29;
    v24 = v31;
    v25 = v30;
    sub_1C4409678(v28, v29);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v12 = v33;
    *(v11 + 24) = v32;
    *(v11 + 40) = v12;
    *(v11 + 56) = v34;
    *(v11 + 64) = v9;
    *(v11 + 72) = v3;
    *(v11 + 80) = v5;
    *(v11 + 88) = v7;
    *(v11 + 96) = v1;
    sub_1C4BD7B3C(&v32, v26);

    sub_1C4AE4F44(sub_1C4BD7B10, v11, v10, v25, v24);

    sub_1C4BD7ABC(&v32);

    swift_beginAccess();
    v13 = *(v8 + 16);
    swift_unknownObjectRetain();

    sub_1C440962C(v28);
  }

  else
  {

    memset(v26, 0, sizeof(v26));
    sub_1C4420C3C(v26, &qword_1EC0C47A8, &qword_1C4F5BC48);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v15 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();
    if (os_log_type_enabled(v15, v13))
    {
      *swift_slowAlloc() = 0;
      sub_1C4414B20();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C446D0DC();
    sub_1C441C114();
    v21 = swift_allocError();
    sub_1C440D9E0(v21, v22);
    sub_1C4BD7ABC(&v32);
  }

  return v13;
}

uint64_t sub_1C4BD4C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v16[7] = a1;
  v16[8] = a2;
  v17 = *a4;
  v18 = a4[1];
  v29 = a4[3];
  v30 = a4[2];
  v19 = a4[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = objc_autoreleasePoolPush();
  v21 = objc_opt_self();
  v22 = sub_1C4F01108();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C4BD7B98;
  *(v23 + 24) = v16;
  aBlock[4] = sub_1C463F294;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C463F5CC;
  aBlock[3] = &unk_1F4401800;
  v24 = _Block_copy(aBlock);

  LOBYTE(v28) = 0;
  v25 = [v21 iterateStream:v22 device:v29 account:v19 bookmark:v30 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v28 body:v24];
  _Block_release(v24);

  objc_autoreleasePoolPop(v20);

  swift_beginAccess();
  v26 = *(a3 + 16);
  *(a3 + 16) = v25;
  return swift_unknownObjectRelease();
}

void sub_1C4BD4E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v13 = sub_1C4BD30DC(a1, a2, a3, a4);
  v14 = sub_1C4BD4168(v13, a2, a3, a4, a5);

  if (v14)
  {
    v26 = sub_1C4BD558C(v14);

    v27 = 0;
    v28 = *(v26 + 16);
    while (1)
    {
      if (v28 == v27)
      {
        sub_1C43FBF50();

        return;
      }

      if (v27 >= *(v26 + 16))
      {
        break;
      }

      v29 = *(v26 + 8 * v27 + 32);
      v30 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a7(v30);

      ++v27;
    }

    __break(1u);
    sub_1C44064A8();
    swift_once();
    v34 = sub_1C4F00978();
    sub_1C43FCEE8(v34, qword_1EDDFECB8);
    v35 = 0;
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CD8();

    if (os_log_type_enabled(v36, v37))
    {
      sub_1C43FECF0();
      v38 = swift_slowAlloc();
      sub_1C43FEC60();
      v39 = swift_slowAlloc();
      v51 = v39;
      *v38 = 136315138;
      v40 = 0;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v41 = sub_1C4F01198();
      v43 = sub_1C441D828(v41, v42, &v51);

      *(v38 + 4) = v43;
      sub_1C4414B20();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      sub_1C440962C(v39);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      goto LABEL_18;
    }

    sub_1C43FBF50();

    goto LABEL_12;
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DF70);
  v16 = a1;
  oslog = sub_1C4F00968();
  v17 = sub_1C4F01CD8();

  if (!os_log_type_enabled(oslog, v17))
  {
    sub_1C43FBF50();

LABEL_12:

    return;
  }

  sub_1C43FECF0();
  v18 = swift_slowAlloc();
  sub_1C43FEC60();
  v19 = swift_slowAlloc();
  v51 = v19;
  *v18 = 136315138;
  v20 = v16;
  v21 = [v20 description];
  v22 = sub_1C4F01138();
  v24 = v23;

  v25 = sub_1C441D828(v22, v24, &v51);

  *(v18 + 4) = v25;
  _os_log_impl(&dword_1C43F8000, oslog, v17, "BiomeStreamView: Cannot process item %s", v18, 0xCu);
  sub_1C440962C(v19);
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();

LABEL_18:
  sub_1C43FBF50();
}

uint64_t sub_1C4BD5220(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = *(a1 + 80);
  if (sub_1C4428DA0() == 1 && sub_1C4428DA0())
  {
    sub_1C4431590(0, (v5 & 0xC000000000000001) == 0);
    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    v6 = *(v5 + 32);

    while (1)
    {
      v7 = sub_1C4D0E2C0();
      if (v7)
      {
        sub_1C4BD2B20();
        sub_1C4D0E478();
      }

      sub_1C4D0E664(v7, v8, v9, v10, v11, v12, v13, v14, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v6, v44, v45, v46, v47, v48, v49, v50, v51, vars0, vars8);
      if ((v19 & 1) == 0)
      {
        break;
      }

LABEL_9:
      v20 = sub_1C4BD2B98();
      if (v2)
      {
      }

      v27 = v20;
      v28 = *(v4 + 56);
      sub_1C444F17C();
      v4 = *(v4 + 72);
      v29 = sub_1C4428DA0();
      v30 = 0;
      v5 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v29 == v30)
        {
          sub_1C444D5B8(v27);

          return swift_unknownObjectRelease();
        }

        if (v5)
        {
          MEMORY[0x1C6940F90](v30, v4);
        }

        else
        {
          if (v30 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v31 = *(v4 + 8 * v30 + 32);
        }

        if (__OFADD__(v30, 1))
        {
          break;
        }

        sub_1C4CBF8F8();

        ++v30;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v6 = MEMORY[0x1C6940F90](0, v5);
    }

    v21 = *(v4 + 72);
    v22 = sub_1C4428DA0();
    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    v5 = v21 & 0xFFFFFFFFFFFFFF8;
    while (v23 != v22)
    {
      if (v24)
      {
        result = MEMORY[0x1C6940F90](v23, v21);
        if (__OFADD__(v23++, 1))
        {
          goto LABEL_50;
        }

        HIDWORD(v40) = *(result + 32);
        swift_unknownObjectRelease();
        if ((v40 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v25 = *(v21 + 32 + 8 * v23++);
        if (*(v25 + 32))
        {
          goto LABEL_9;
        }
      }
    }

    sub_1C4CC0AAC();
    if (!v32)
    {
      goto LABEL_9;
    }

    v33 = sub_1C4BD48F8(v32);
    if (!v2)
    {
      v34 = v33;
      v35 = *(v4 + 56);
      sub_1C444F17C();
      result = sub_1C4428DA0();
      v36 = result;
      for (i = 0; ; ++i)
      {
        if (v36 == i)
        {
          sub_1C444D5B8(v34);

          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        if (v24)
        {
          result = MEMORY[0x1C6940F90](i, v21);
        }

        else
        {
          if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v38 = *(v21 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1C4CBF8F8();
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config);
    v15 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8);
    sub_1C450B034();
    sub_1C441C114();
    swift_allocError();
    *v17 = v16;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0xD00000000000001DLL;
    *(v17 + 24) = 0x80000001C4FB87B0;
    *(v17 + 32) = v41;
    *(v17 + 48) = v42;
    *(v17 + 64) = 3;
    swift_willThrow();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4BD558C(uint64_t a1)
{
  v3 = v1;
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = (v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact);
  v7 = a1 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v43 = (v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact);
  v44 = v5;
  v42 = a1 + 32;
  while (v4 != v5)
  {
    v47 = v9;
    v10 = *(v7 + 8 * v4);
    v45 = v4 + 1;
    v49 = v8;
    v11 = v6[3];
    v12 = v6[4];
    sub_1C4409678(v6, v11);
    v46 = &v41;
    sub_1C43FCE64();
    v14 = v13;
    v16 = *(v15 + 64);
    v18 = MEMORY[0x1EEE9AC00](v17);
    v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v20, v18);
    v21 = *(v12 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = v21(v11, v12);
    (*(v14 + 8))(v20, v11);
    v23 = 0;
    v24 = *(v22 + 16);
    while (v24 != v23)
    {
      v25 = *(type metadata accessor for ViewDatabaseArtifact.Property() - 8);
      sub_1C4BD5990((v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23++), v10, v3, &v49);
      if (v2)
      {
        v9 = v47;

        return v9;
      }
    }

    v26 = v49;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v9 + 16);
      sub_1C43FCEC0();
      sub_1C458B824();
      v9 = v30;
    }

    v5 = v44;
    v4 = v45;
    v6 = v43;
    v28 = *(v9 + 16);
    v27 = *(v9 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1C43FCFE8(v27);
      sub_1C458B824();
      v9 = v31;
    }

    *(v9 + 16) = v28 + 1;
    *(v9 + 8 * v28 + 32) = v26;

    v7 = v42;
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v33 = sub_1C4F00978();
  sub_1C442B738(v33, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CB8();
  if (os_log_type_enabled(v34, v35))
  {
    sub_1C43FECF0();
    v36 = swift_slowAlloc();
    sub_1C43FEC60();
    v37 = swift_slowAlloc();
    v49 = v37;
    *v36 = 136315138;
    v48 = *(v9 + 16);
    v38 = sub_1C4F02858();
    v40 = sub_1C441D828(v38, v39, &v49);

    *(v36 + 4) = v40;

    _os_log_impl(&dword_1C43F8000, v34, v35, "Generated rows: %s", v36, 0xCu);
    sub_1C440962C(v37);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  return v9;
}

uint64_t sub_1C4BD5990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ViewDatabaseArtifact.Property();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = a1;
  sub_1C479B674(sub_1C4BD1BE8);
  if (v12)
  {
    sub_1C465CB54(*a1, a1[1], a2);
    if (*(&v39 + 1) == 1)
    {
      v13 = &unk_1EC0C4798;
      v14 = &unk_1C4F5BC30;
      v15 = &v38;
    }

    else
    {
      v44[0] = v38;
      v44[1] = v39;
      v45 = v40;
      if (*(&v39 + 1))
      {
        sub_1C441D670(v44, &v41);
        sub_1C441D670(&v41, v44);
LABEL_15:
        sub_1C4589648();
        v34 = *(*a4 + 16);
        sub_1C458A1C8();
        v35 = *a4;
        *(v35 + 16) = v34 + 1;
        return sub_1C441D670(v44, v35 + 40 * v34 + 32);
      }

      v13 = &qword_1EC0B9038;
      v14 = &unk_1C4F231C0;
      v15 = v44;
    }

    sub_1C4420C3C(v15, v13, v14);
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    static DatabaseValue.emptyValue(forType:)(a1 + *(v8 + 20), v44);
    if (*(&v42 + 1))
    {
      sub_1C4420C3C(&v41, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    goto LABEL_15;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DF70);
  sub_1C4BD8310(a1, v11, type metadata accessor for ViewDatabaseArtifact.Property);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CD8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v41 = v46;
    *v19 = 136315650;
    *(v19 + 4) = sub_1C441D828(*(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config), *(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_config + 8), &v41);
    *(v19 + 12) = 2080;
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x747265706F72503CLL, 0xED0000203A6E2079);
    MEMORY[0x1C6940010](*v11, v11[1]);
    MEMORY[0x1C6940010](0x203A74202CLL, 0xE500000000000000);
    v20 = *(v8 + 20);
    sub_1C4EFBE38();
    sub_1C4F02438();
    MEMORY[0x1C6940010](62, 0xE100000000000000);
    v22 = *(&v44[0] + 1);
    v21 = *&v44[0];
    sub_1C443CED4(v11, type metadata accessor for ViewDatabaseArtifact.Property);
    v23 = sub_1C441D828(v21, v22, &v41);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
    v24 = sub_1C4F00EE8();
    v26 = sub_1C441D828(v24, v25, &v41);

    *(v19 + 24) = v26;
    v27 = qword_1EC151FF8 + 8;
    _os_log_impl(&dword_1C43F8000, v17, v18, "BiomeStreamSignalView %s: column mismatch: %s not found in %s", v19, 0x20u);
    v28 = v46;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v28, -1, -1);
    MEMORY[0x1C6942830](v19, -1, -1);
  }

  else
  {

    sub_1C443CED4(v11, type metadata accessor for ViewDatabaseArtifact.Property);
    v27 = &qword_1EC151FF8[1];
  }

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FB8770);
  MEMORY[0x1C6940010](*(a3 + v27[410]), *(a3 + v27[410] + 8));
  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FB8790);
  v29 = ViewDatabaseArtifact.Property.description.getter();
  MEMORY[0x1C6940010](v29);

  MEMORY[0x1C6940010](0x756F6620746F6E20, 0xEE00206E6920646ELL);
  sub_1C456902C(&qword_1EC0B9038, &unk_1C4F231C0);
  v30 = sub_1C4F00EE8();
  MEMORY[0x1C6940010](v30);

  v31 = v44[0];
  sub_1C446D0DC();
  swift_allocError();
  *v32 = v31;
  *(v32 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_1C4BD5F38()
{
  sub_1C4407E24();
  sub_1C443CED4(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 8);
  v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_streamDefinition + 16);

  v5 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_postProcessingOps);

  sub_1C440962C((v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration21BiomeStreamSignalView_outputArtifact));
  return v0;
}

uint64_t sub_1C4BD5FA8()
{
  sub_1C4BD5F38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BD6028()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BD60D4(uint64_t a1)
{
  sub_1C4BD5220(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4BD614C(_BYTE *a1, uint64_t a2)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v105 = a1;
  v108 = a2;
  v7 = sub_1C4BD7C3C(a1, a2);
  v8 = v2;
  v9 = *(v7 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {

    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v131[0] = MEMORY[0x1E69E7CC0];
  sub_1C459EF98();
  v11 = sub_1C4703354(v7);
  v13 = v131[0];
  v14 = v11;
  v15 = 0;
  v16 = v7 + 64;
  v113 = v7 + 72;
  v115 = v9;
  v117 = v12;
  v119 = v7 + 64;
  do
  {
    if (v14 < 0 || v14 >= 1 << *(v7 + 32))
    {
      goto LABEL_99;
    }

    v17 = v14 >> 6;
    v3 = 1 << v14;
    if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_100;
    }

    if (*(v7 + 36) != v12)
    {
      goto LABEL_101;
    }

    v120 = v15;
    v18 = v13;
    v19 = *(v7 + 56);
    v20 = v7;
    v21 = (*(v7 + 48) + 16 * v14);
    v23 = *v21;
    v22 = v21[1];
    sub_1C442B870(v19 + 32 * v14, &v127);
    *&v133[0] = v23;
    *(&v133[0] + 1) = v22;
    sub_1C44482AC(&v127, &v133[1]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BD713C(v133, v130);
    if (v8)
    {
      sub_1C4420C3C(v133, &qword_1EC0C47D8, &unk_1C4F5BC60);

      __break(1u);
      return result;
    }

    v8 = 0;
    sub_1C4420C3C(v133, &qword_1EC0C47D8, &unk_1C4F5BC60);
    v24 = *&v130[0];
    v13 = v18;
    v131[0] = v18;
    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    v4 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      sub_1C43FCFE8(v25);
      sub_1C459EF98();
      v13 = v131[0];
    }

    *(v13 + 16) = v4;
    *(v13 + 8 * v26 + 32) = v24;
    v27 = 1 << *(v20 + 32);
    if (v14 >= v27)
    {
      goto LABEL_102;
    }

    v16 = v119;
    v28 = *(v119 + 8 * v17);
    if ((v28 & v3) == 0)
    {
      goto LABEL_103;
    }

    v7 = v20;
    v12 = v117;
    if (*(v20 + 36) != v117)
    {
      goto LABEL_104;
    }

    v29 = v28 & (-2 << (v14 & 0x3F));
    if (v29)
    {
      v27 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v10 = MEMORY[0x1E69E7CC0];
      v30 = v115;
      v31 = v120;
    }

    else
    {
      v32 = v17 << 6;
      v33 = v17 + 1;
      v30 = v115;
      v34 = (v113 + 8 * v17);
      v10 = MEMORY[0x1E69E7CC0];
      v31 = v120;
      while (v33 < (v27 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          v27 = __clz(__rbit64(v35)) + v32;
          break;
        }
      }
    }

    v15 = v31 + 1;
    v14 = v27;
  }

  while (v15 != v30);
  v37 = v13;

LABEL_22:
  v3 = v108 + 64;
  v38 = *(v108 + 64);
  v39 = 1 << *(v108 + 32);
  sub_1C440DD98();
  v4 = v41 & v40;
  v43 = (v42 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = 0;
  v102 = v37;
  v103 = v43;
  v45 = v105;
  v104 = v108 + 64;
  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_23:
  v109 = v37;
LABEL_28:
  v47 = v4;
  v107 = v44;
  v48 = __clz(__rbit64(v4)) | (v44 << 6);
  v49 = (*(v108 + 48) + 16 * v48);
  v3 = *v49;
  v4 = v49[1];
  v50 = *(*(v108 + 56) + 8 * v48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C465C4B8(v3, v4, v45);
  if (!*(&v127 + 1))
  {

    sub_1C4420C3C(&v126, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_90;
  }

  v111 = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_90:

    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_91;
    }

    goto LABEL_105;
  }

  v106 = (v47 - 1) & v47;

  v3 = 0;
  v112 = *(*&v133[0] + 16);
  v114 = *&v133[0];
  v110 = *&v133[0] + 32;
  v118 = (v50 + 7);
  v4 = v10;
  while (1)
  {
    v121 = v4;
    if (v3 == v112)
    {

      v37 = v109;
      v4 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = *(v109 + 16);
        sub_1C43FCEC0();
        sub_1C458F380();
        v37 = v90;
      }

      v43 = v103;
      v3 = v104;
      v44 = v107;
      v88 = *(v37 + 16);
      v87 = *(v37 + 24);
      v45 = v105;
      if (v88 >= v87 >> 1)
      {
        sub_1C43FFD98(v87);
        sub_1C458F380();
        v45 = v105;
        v37 = v91;
      }

      *(v37 + 16) = v88 + 1;
      *(v37 + 8 * v88 + 32) = v121;
      if (v106)
      {
        goto LABEL_23;
      }

      while (1)
      {
LABEL_24:
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_98;
        }

        if (v46 >= v43)
        {
          break;
        }

        v4 = *(v3 + 8 * v46);
        ++v44;
        if (v4)
        {
          v109 = v37;
          v44 = v46;
          goto LABEL_28;
        }
      }

      return v37;
    }

    if (v3 >= *(v114 + 16))
    {
      break;
    }

    sub_1C442B870(v110 + 32 * v3, v131);
    sub_1C442B870(v131, v130);
    if (!v50[2])
    {
      goto LABEL_97;
    }

    if (v50[5])
    {
      v51 = v3;
      v52 = v50[4];
      sub_1C4409678(v131, v132);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v53 = sub_1C4F02918();
      v54 = sub_1C4F01108();

      v55 = [v53 valueForKeyPath_];

      swift_unknownObjectRelease();
      if (v55)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C440962C(v130);
        sub_1C44482AC(v133, &v126);
      }

      else
      {
        sub_1C440962C(v130);
        sub_1C442B870(v131, &v126);
      }

      sub_1C44482AC(&v126, v130);
      v3 = v51;
    }

    sub_1C442B870(v130, &v126);
    v116 = v3;
    if (swift_dynamicCast())
    {
      v56 = *(*&v133[0] + 16);

      v119 = v56;
      if (v56)
      {
        v57 = 0;
        do
        {
          v58 = v50[2];
          if (v58)
          {
            v122 = v4;
            *&v123 = v10;
            sub_1C459EFD8(0, v58, 0);
            v59 = v123;
            v60 = v118;
            do
            {
              v61 = *v60;
              *&v133[0] = *(v60 - 3);
              *(v133 + 8) = *(v60 - 1);
              *(&v133[1] + 1) = v61;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4BD7364(v133, v131, v50, v57, &v126);

              *&v123 = v59;
              v63 = *(v59 + 16);
              v62 = *(v59 + 24);
              if (v63 >= v62 >> 1)
              {
                v64 = sub_1C43FCFE8(v62);
                sub_1C459EFD8(v64, v63 + 1, 1);
                v59 = v123;
              }

              *(v59 + 16) = v63 + 1;
              sub_1C44112FC(v59 + 56 * v63, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v114, v116, v118, v119, v122, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129);
              v60 += 4;
              --v58;
            }

            while (v58);
            v10 = MEMORY[0x1E69E7CC0];
            v4 = v122;
          }

          else
          {
            v59 = v10;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = *(v4 + 16);
            sub_1C43FCEC0();
            sub_1C458F544();
            v4 = v68;
          }

          v66 = *(v4 + 16);
          v65 = *(v4 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1C43FFD98(v65);
            sub_1C458F544();
            v4 = v69;
          }

          ++v57;
          *(v4 + 16) = v66 + 1;
          *(v4 + 8 * v66 + 32) = v59;
        }

        while (v57 != v119);
      }

      sub_1C440962C(v130);
      v81 = v116;
      goto LABEL_80;
    }

    v70 = v50[2];
    if (v70)
    {
      v135 = v10;
      sub_1C459EFD8(0, v70, 0);
      v71 = v135;
      v72 = v118;
      while (1)
      {
        v73 = *v72;
        if (*(v72 - 2))
        {
          v119 = v71;
          v74 = *(v72 - 3);
          v126.n128_u64[0] = *(v72 - 1);
          v126.n128_u64[1] = v73;
          sub_1C4409678(v131, v132);
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v75 = sub_1C4F02918();
          v76 = sub_1C4F01108();
          v77 = [v75 valueForKeyPath_];

          swift_unknownObjectRelease();
          if (v77)
          {
            sub_1C4F02078();
            swift_unknownObjectRelease();
            sub_1C44482AC(v133, &v123);
          }

          else
          {
            sub_1C442B870(v131, &v123);
          }

          sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          v71 = v119;
          v4 = v121;
          if (!swift_dynamicCast())
          {
            v134 = 0;
            memset(v133, 0, sizeof(v133));
            *(&v128 + 1) = MEMORY[0x1E69E6158];
            v129 = MEMORY[0x1E69A0138];

LABEL_68:

            *&v127 = 0;
            *(&v127 + 1) = 0xE000000000000000;
            goto LABEL_69;
          }

          sub_1C441D670(v133, &v127);
        }

        else
        {
          v126.n128_u64[0] = *(v72 - 1);
          v126.n128_u64[1] = v73;
          sub_1C442B870(v131, &v123);
          swift_bridgeObjectRetain_n();
          sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v134 = 0;
            memset(v133, 0, sizeof(v133));
            *(&v128 + 1) = MEMORY[0x1E69E6158];
            v129 = MEMORY[0x1E69A0138];
            goto LABEL_68;
          }

          sub_1C441D670(v133, &v127);
        }

LABEL_69:
        v135 = v71;
        v79 = *(v71 + 16);
        v78 = *(v71 + 24);
        if (v79 >= v78 >> 1)
        {
          v80 = sub_1C43FCFE8(v78);
          sub_1C459EFD8(v80, v79 + 1, 1);
          v71 = v135;
        }

        *(v71 + 16) = v79 + 1;
        sub_1C44112FC(v71 + 56 * v79, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v114, v116, v118, v119, v121, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129);
        v72 += 4;
        if (!--v70)
        {
          v10 = MEMORY[0x1E69E7CC0];
          goto LABEL_75;
        }
      }
    }

    v71 = v10;
LABEL_75:
    v81 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = *(v4 + 16);
      sub_1C43FCEC0();
      sub_1C458F544();
      v4 = v85;
    }

    v83 = *(v4 + 16);
    v82 = *(v4 + 24);
    if (v83 >= v82 >> 1)
    {
      sub_1C43FFD98(v82);
      sub_1C458F544();
      v4 = v86;
    }

    sub_1C440962C(v130);
    *(v4 + 16) = v83 + 1;
    *(v4 + 8 * v83 + 32) = v71;
LABEL_80:
    v3 = v81 + 1;
    sub_1C440962C(v131);
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  sub_1C4400FC0();
  swift_once();
LABEL_91:
  v92 = sub_1C4F00978();
  sub_1C442B738(v92, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v93 = sub_1C4F00968();
  v94 = sub_1C4F01CD8();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v126.n128_u64[0] = swift_slowAlloc();
    *v95 = 136315394;
    v96 = sub_1C441D828(v3, v4, &v126);

    *(v95 + 4) = v96;
    *(v95 + 12) = 2080;
    v97 = sub_1C4F00F48();
    v99 = sub_1C441D828(v97, v98, &v126);

    *(v95 + 14) = v99;
    _os_log_impl(&dword_1C43F8000, v93, v94, "BiomeStreamSignalView: could not postprocess: %s not an array found in %s", v95, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1C4BD6D94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = a2;
  if (*(a1 + 16))
  {
    v60 = a1;
    v7 = *(a1 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C07768();
    v46 = *(v7 + 16);
    if (v46)
    {
      v8 = 0;
      v47 = v7 + 32;
      v45 = v7;
      v44 = v6;
      while (v8 < *(v7 + 16))
      {
        v9 = *(v47 + 8 * v8);
        v51 = *(v9 + 16);
        if (v51)
        {
          v48 = v8;
          v49 = v4;
          v10 = v9 + 32;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v11 = 0;
          v50 = v9;
          while (v11 < *(v9 + 16))
          {
            sub_1C4405BE0();
            sub_1C446C964(v12, v13, v14, v15);
            v57[0] = v58[5];
            v57[1] = v58[6];
            sub_1C441D670(v59, v58);
            sub_1C4405BE0();
            sub_1C446C964(v16, v17, v18, v19);
            v20 = v54;
            v21 = v55;
            sub_1C4405BE0();
            sub_1C446C964(v22, v23, v24, v25);

            sub_1C441D670(&v53, v52);
            swift_isUniquelyReferenced_nonNull_native();
            v26 = sub_1C445FAA8(v20, v21);
            sub_1C442C010(v26, v27);
            if (v30)
            {
              goto LABEL_26;
            }

            v31 = v28;
            v32 = v29;
            sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
            if (sub_1C4F02458())
            {
              v33 = sub_1C445FAA8(v20, v21);
              if ((v32 & 1) != (v34 & 1))
              {
                goto LABEL_29;
              }

              v31 = v33;
            }

            if (v32)
            {

              v35 = (v6[7] + 40 * v31);
              sub_1C440962C(v35);
              sub_1C441D670(v52, v35);
              sub_1C4420C3C(v57, &qword_1EC0B9050, &unk_1C4F5BC50);
            }

            else
            {
              v6[(v31 >> 6) + 8] |= 1 << v31;
              v36 = (v6[6] + 16 * v31);
              *v36 = v20;
              v36[1] = v21;
              sub_1C441D670(v52, v6[7] + 40 * v31);
              sub_1C4420C3C(v57, &qword_1EC0B9050, &unk_1C4F5BC50);
              v37 = v6[2];
              v30 = __OFADD__(v37, 1);
              v38 = v37 + 1;
              if (v30)
              {
                goto LABEL_27;
              }

              v6[2] = v38;
            }

            ++v11;
            sub_1C440962C(v56);
            v10 += 56;
            v9 = v50;
            if (v51 == v11)
            {

              v8 = v48;
              v4 = v49;
              v7 = v45;
              v6 = v44;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_19:
        v39 = sub_1C43FBC98();
        sub_1C4BD6D94(v39);
        if (v4)
        {

          goto LABEL_24;
        }

        ++v8;

        if (v8 == v46)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_29:
      sub_1C4F029F8();
      __break(1u);
    }

    else
    {
LABEL_21:

LABEL_24:
    }
  }

  else
  {
    sub_1C465D0F0(a2);
    v41 = v40;
    sub_1C4589660();
    v42 = *(*a3 + 16);
    sub_1C458A1E0();
    v43 = *a3;
    *(v43 + 16) = v42 + 1;
    *(v43 + 8 * v42 + 32) = v41;
    *a3 = v43;
  }
}

uint64_t sub_1C4BD713C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C446C964(a1, &v14, &qword_1EC0C47D8, &unk_1C4F5BC60);

  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v12, v17);
    sub_1C456902C(&unk_1EC0C47E0, &qword_1C4F0DDA0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C4F0D130;
    sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C4F0D130;
    sub_1C446C964(a1, &v14, &qword_1EC0C47D8, &unk_1C4F5BC60);
    v6 = v15;
    *(v5 + 32) = v14;
    *(v5 + 40) = v6;
    sub_1C442E860(v17, v5 + 48);
    sub_1C440962C(v16);
    *(v4 + 32) = v5;
    result = sub_1C440962C(v17);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1C4420C3C(v12, &qword_1EC0B9038, &unk_1C4F231C0);
    sub_1C456902C(&unk_1EC0C47E0, &qword_1C4F0DDA0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C4F0D130;
    sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C4F0D130;
    sub_1C446C964(a1, &v14, &qword_1EC0C47D8, &unk_1C4F5BC60);
    v9 = v15;
    v10 = MEMORY[0x1E69E6158];
    v11 = MEMORY[0x1E69A0138];
    *(v8 + 32) = v14;
    *(v8 + 40) = v9;
    *(v8 + 72) = v10;
    *(v8 + 80) = v11;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0xE000000000000000;
    result = sub_1C440962C(v16);
    *(v4 + 32) = v8;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C4BD7364@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a3;
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  sub_1C442B870(a2, v39);
  if (v8)
  {
    sub_1C4409678(a2, a2[3]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4F02918();
    v33 = v9;
    v13 = sub_1C4F01108();
    v14 = [v12 valueForKeyPath_];

    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
      sub_1C440962C(v39);
    }

    else
    {
      sub_1C440962C(v39);
      sub_1C442B870(a2, &v35);
    }

    sub_1C44482AC(&v35, v39);
    v9 = v33;
  }

  sub_1C442B870(v39, &v35);
  sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
  if (!swift_dynamicCast())
  {
    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v16 = v38[0];
  *a5 = v11;
  a5[1] = v10;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_12:
    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = 7104878;
      v21 = v9;
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v35 = v34;
      *v22 = 136315394;
      if (v8)
      {
        v23 = v21;
      }

      else
      {
        v23 = 7104878;
      }

      if (!v8)
      {
        v8 = 0xE300000000000000;
      }

      v24 = sub_1C441D828(v23, v8, &v35);

      *(v22 + 4) = v24;
      v25 = v40;
      *(v22 + 12) = 2080;
      if (!v25[2])
      {
        goto LABEL_31;
      }

      v26 = v10;
      v27 = v11;
      if (v25[5])
      {
        v20 = v25[4];
        v28 = v25[5];
      }

      else
      {
        v28 = 0xE300000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = sub_1C441D828(v20, v28, &v35);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_1C43F8000, v18, v19, "Fields %s and %s did not have the same length", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v34, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);

      v11 = v27;
      v10 = v26;
    }

    else
    {
    }

    v31 = MEMORY[0x1E69E6158];
    v32 = MEMORY[0x1E69A0138];
    *a5 = v11;
    a5[1] = v10;
    a5[5] = v31;
    a5[6] = v32;
    a5[2] = 0;
    a5[3] = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return sub_1C440962C(v39);
  }

  if (*(v16 + 16) <= a4)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  sub_1C442B870(v16 + 32 * a4 + 32, v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  if (swift_dynamicCast())
  {
    sub_1C440962C(v39);
    return sub_1C441D670(&v35, (a5 + 2));
  }

  else
  {
    v37 = 0;
    v29 = MEMORY[0x1E69A0138];
    v35 = 0u;
    v36 = 0u;
    a5[5] = MEMORY[0x1E69E6158];
    a5[6] = v29;
    a5[2] = 0;
    a5[3] = 0xE000000000000000;
    result = sub_1C440962C(v39);
    if (*(&v36 + 1))
    {
      return sub_1C4420C3C(&v35, &qword_1EC0B9038, &unk_1C4F231C0);
    }
  }

  return result;
}

uint64_t sub_1C4BD77DC(uint64_t a1, uint64_t a2)
{
  v6 = _s10ViewConfigVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v28 - v11);
  v13 = *(*v2 + 16);

  sub_1C443A738(a1, a2, v14, v15, v16, v17, v18, v19);

  if (!v3)
  {
    v20 = v12[6];
    if (v20)
    {
      v29 = v12[5];
      v21 = v12[7];
      v32 = v12[8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v21;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ViewGeneration.ViewClients.storage(for:fullRebuild:)();
      sub_1C4BD8310(v12, v9, _s10ViewConfigVMa);
      v25 = _s21BiomeStreamSignalViewCMa(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v13 = swift_allocObject();
      sub_1C4BD2A90(&v31, v9, v29, v20, v30, v32);
      sub_1C443CED4(v12, _s10ViewConfigVMa);
    }

    else
    {
      sub_1C450B034();
      sub_1C441C114();
      swift_allocError();
      *v22 = a1;
      *(v22 + 8) = a2;
      *(v22 + 16) = 0x656D6F6962;
      *(v22 + 24) = 0xE500000000000000;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      *(v22 + 48) = v31;
      *(v22 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4407E24();
      sub_1C443CED4(v12, v23);
    }
  }

  return v13;
}

uint64_t sub_1C4BD7A14(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4BD77DC(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

void *sub_1C4BD7B9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C4BD7E00(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1C4BD7C3C(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C4BD7B9C(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4BD7E00(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4BD7E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v26 = 0;
  v5 = 0;
  v30 = a3;
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
    v15 = (*(v30 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1C442B870(*(v30 + 56) + 32 * v14, v29);
    v27[0] = v16;
    v27[1] = v17;
    sub_1C442B870(v29, &v28);
    v18 = *(a4 + 16);
    swift_bridgeObjectRetain_n();
    if (v18)
    {
      sub_1C445FAA8(v16, v17);
      v20 = v19;
      sub_1C4420C3C(v27, &qword_1EC0C47D8, &unk_1C4F5BC60);
      sub_1C440962C(v29);

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C4420C3C(v27, &qword_1EC0C47D8, &unk_1C4F5BC60);
      sub_1C440962C(v29);

LABEL_15:
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_18:
        sub_1C458799C(v25, a2, v26, v30);
        v23 = v22;

        return v23;
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
      goto LABEL_18;
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

unint64_t sub_1C4BD7FDC()
{
  result = qword_1EC0C4800;
  if (!qword_1EC0C4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4800);
  }

  return result;
}

uint64_t sub_1C4BD8030()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C4BD8114()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

_BYTE *_s19StreamPipelineErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BD82BC()
{
  result = qword_1EC0C4818;
  if (!qword_1EC0C4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4818);
  }

  return result;
}

uint64_t sub_1C4BD8310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4BD837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = type metadata accessor for Configuration();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &__src[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  if (v6)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x50uLL);
      v16 = type metadata accessor for BehaviorHistoryUtility();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();

      v20 = sub_1C4624330(a6, a5);
      v21 = __dst[16];
      sub_1C442E860(&__dst[40], __src);
      if (v20)
      {
        v22 = &off_1F43E41D8;
      }

      else
      {
        v16 = 0;
        v22 = 0;
        v39[1] = 0;
        v39[2] = 0;
      }

      v39[0] = v20;
      v39[3] = v16;
      v39[4] = v22;
      swift_unownedRetainStrong();
      sub_1C44098F0(a4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v15);

      *&v37 = 0;
      *(&v37 + 1) = 0xE000000000000000;
      sub_1C4F02248();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *&v37 = a1;
      *(&v37 + 1) = a2;
      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F92720);
      v24 = *(&v37 + 1);
      v23 = v37;
      v25 = type metadata accessor for KeyValueStore();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v29 = KeyValueStore.init(config:domain:)(v15, v23, v24);
      v30 = *(&__src[1] + 1);
      v31 = sub_1C4418280(__src, *(&__src[1] + 1));
      v32 = *(*(v30 - 8) + 64);
      v33 = MEMORY[0x1EEE9AC00](v31);
      v35 = (&__src[-1] - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35, v33);
      a2 = sub_1C4BDA0DC(v21, *v35, v39, v29);

      sub_1C4AF9C44(__dst);
      sub_1C440962C(__src);
    }

    else
    {
      memset(__src, 0, sizeof(__src));
      sub_1C4423A0C(__src, &qword_1EC0BAFF8, qword_1C4F1D680);
      sub_1C450B034();
      swift_allocError();
      *v19 = a1;
      *(v19 + 8) = a2;
      *(v19 + 16) = xmmword_1C4F5B670;
      *(v19 + 32) = 0xD000000000000025;
      *(v19 + 40) = 0x80000001C4FB83A0;
      *(v19 + 48) = v37;
      *(v19 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a2;
}

uint64_t sub_1C4BD87D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BD837C(a1, a2, a3, *v3, *(v3 + 8), *(v3 + 16));
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4BD8884()
{
  sub_1C43FBCD4();
  v1[10] = v0;
  v2 = sub_1C4EFDAB8();
  v1[11] = v2;
  sub_1C43FCF7C(v2);
  v1[12] = v3;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4BD8930()
{
  v27 = v0;
  v1 = *(v0 + 80);
  v2 = v1[6];
  v3 = v1[7];
  sub_1C4409678(v1 + 3, v2);
  (*(*(v3 + 8) + 16))(v2);
  sub_1C44600A0(*(v0 + 80) + 104, v0 + 16, &qword_1EC0C4820, &qword_1C4F5BE30);
  if (*(v0 + 16))
  {
    KeyValueStore.delete(key:)(*(v0 + 24));
    sub_1C46E07D0(v0 + 16);
    if (v20)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v4 = *(v0 + 80);
      v5 = sub_1C4F00978();
      sub_1C442B738(v5, qword_1EDE2DDE0);

      v6 = v20;
      v7 = sub_1C4F00968();
      v8 = sub_1C4F01CE8();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 96);
        v9 = *(v0 + 104);
        v11 = *(v0 + 80);
        v12 = *(v0 + 88);
        v13 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v13 = 136315394;
        sub_1C469B6F8(*(v11 + 16), v9);
        sub_1C4403DDC(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
        v14 = sub_1C4F02858();
        v16 = v15;
        (*(v10 + 8))(v9, v12);
        v17 = sub_1C441D828(v14, v16, &v26);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2112;
        v18 = v20;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 14) = v19;
        *v24 = v19;
        _os_log_impl(&dword_1C43F8000, v7, v8, "ContextualEventsViewGenerator: Error deleting events table for %s behaviors - %@", v13, 0x16u);
        sub_1C4423A0C(v24, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBE2C();
        sub_1C440962C(v25);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v0 + 16, &qword_1EC0C4820, &qword_1C4F5BE30);
  }

  v21 = *(v0 + 104);

  sub_1C43FBDA0();

  return v22();
}

uint64_t sub_1C4BD8C30()
{
  sub_1C43FBCD4();
  v1[7] = v0;
  v2 = sub_1C4EF9CD8();
  v1[8] = v2;
  sub_1C43FCF7C(v2);
  v1[9] = v3;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4BD8CDC()
{
  sub_1C44600A0(v0[7] + 64, (v0 + 2), &qword_1EC0C4828, &qword_1C4F5BE40);
  v1 = v0[5];
  v0[11] = v1;
  sub_1C4423A0C((v0 + 2), &qword_1EC0C4828, &qword_1C4F5BE40);
  if (v1)
  {
    v2 = v0[10];
    sub_1C4EF9CC8();
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1C4BD8E94;
    v4 = v0[10];
    v5 = v0[7];

    return sub_1C4BD90A4();
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DDE0);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C4402B64(v9))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v10, v11, "EventSource is nil");
      sub_1C43FBE2C();
    }

    v12 = v0[10];

    v13 = v0[1];
    v14 = v0[11] != 0;

    return v13(v14);
  }
}

uint64_t sub_1C4BD8E94()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v6[13] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4BD9040, 0, 0);
  }

  else
  {
    v8 = v6[10];

    v9 = v6[1];
    v10 = v6[11] != 0;

    return v9(v10);
  }
}