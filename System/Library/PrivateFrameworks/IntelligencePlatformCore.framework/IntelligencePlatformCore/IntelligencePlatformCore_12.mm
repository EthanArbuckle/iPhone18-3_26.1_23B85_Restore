uint64_t type metadata accessor for OntologyDatabase()
{
  result = qword_1EDDFF1C8;
  if (!qword_1EDDFF1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44F7E2C(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v6);
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  v9 = swift_allocObject();
  sub_1C44F7334(v6, 0);
  sub_1C4467948(a1);
  return v9;
}

void sub_1C44F7F00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C4418F8C(a1, a2, a3, a4);
  v7 = v6(v5);
  sub_1C43FCE50(v7);
  v9 = *(v8 + 32);
  v10 = *(v8 + 72);
  v11 = sub_1C440CFF4();
  v12(v11);
  sub_1C4412BC4();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v13;
  }
}

uint64_t sub_1C44F7F70()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD9C8(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C44F8004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2E088);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CC8();
  if (os_log_type_enabled(v7, v8))
  {
    sub_1C43FECF0();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    sub_1C456902C(&qword_1EC0C3D28, &qword_1C4F55618);
    v11 = sub_1C4426078();
    v13 = sub_1C441D828(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, v7, v8, "StorageSystem: %s: performing startup check of database.", v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  (*(a3 + 32))(a1, a2, a3);
  (*(v14 + 8))(v19, a2);
  v20 = *(a1 + *(type metadata accessor for Configuration() + 20));
  if (qword_1EDDFEC28 != -1)
  {
    v23 = v20;
    swift_once();
    v20 = v23;
  }

  v21 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEC30, v20), xmmword_1EDDFEC30));
  if (v21.i32[0] & v21.i32[1])
  {
    sub_1C4AA3D44(a1, a2, a3);
  }

  return 0;
}

uint64_t sub_1C44F8728(uint64_t a1)
{
  if (qword_1EDDFF3F8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v2 = 0;
  v3 = 0;
  v4 = qword_1EDE2E018;
  v5 = *(qword_1EDE2E018 + 16);
  v6 = qword_1EDE2E018 + 40;
LABEL_3:
  v7 = (v6 + 16 * v3);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    ++v3;
    result = sub_1C44F8004(a1, *(v7 - 1), *v7);
    if (result == 1)
    {
      v2 = result;
      goto LABEL_3;
    }

    v7 += 2;
    if (result == 2)
    {
      return result;
    }
  }

  return v2;
}

uint64_t sub_1C44F87FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF418, &qword_1EDE2E028, sub_1C44F8B30);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C44F885C(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  return a4(a1);
}

uint64_t sub_1C44F88C0()
{
  sub_1C456902C(&qword_1EC0C3C30, &qword_1C4F54488);
  swift_allocObject();
  result = sub_1C44F89C4();
  qword_1EDE2E028 = result;
  return result;
}

uint64_t type metadata accessor for StateDatabase()
{
  result = qword_1EDDFF400;
  if (!qword_1EDDFF400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44F89C4()
{
  sub_1C456902C(&qword_1EC0C6260, &qword_1C4F6B5D8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for StateDatabase();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6268, &qword_1C4F6B5E0);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

unint64_t sub_1C44F8A78()
{
  result = qword_1EDDFFA00;
  if (!qword_1EDDFFA00)
  {
    sub_1C4EF98F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFFA00);
  }

  return result;
}

void sub_1C44F8AE4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1C44F8B30()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44F8BC4(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C44F8BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for StateDatabase, sub_1C44F8C5C, sub_1C44FB230);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1C44F8C5C(uint64_t a1)
{
  v2 = v1;
  v50 = *v2;
  v47 = sub_1C4EFB1E8();
  v4 = sub_1C43FCDF8(v47);
  v46[3] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v46[4] = v8;
  MEMORY[0x1EEE9AC00](v9);
  v46[2] = v46 - v10;
  v11 = sub_1C4EF98F8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v46[1] = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v46 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v46 - v22;
  sub_1C4407B94();
  sub_1C4EF9888();
  v24 = OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_url;
  (*(v14 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_url, v23, v11);
  v49 = OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_config;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_config);
  v25 = *(type metadata accessor for Configuration() + 20);
  v55 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = v26[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v52 = v2;
  v54 = v11;
  sub_1C44072E8(&xmmword_1EDDFEC78);
  v30 = 2 * (v29 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C44072E8(&xmmword_1EDDFFAE0);
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = v30 | 4;
  }

  v51 = v32;
  sub_1C44F920C();
  v33 = static NSUserDefaults.stateDatabaseLoggingEnabled.getter() & 1;
  v34 = *(v14 + 16);
  v35 = v52;
  v36 = v52 + v24;
  v48 = v24;
  v37 = v54;
  v34(v21, v36, v54);
  v38 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v53;
  v42 = sub_1C44F999C(v21, v51 | v33);
  if (v41)
  {
    sub_1C4467948(v55);
    (*(v14 + 8))(v35 + v48, v37);
    sub_1C4467948(v35 + v49);
    v43 = *(*v35 + 48);
    v44 = *(*v35 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v35 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_pool) = v42;
    sub_1C44FAA4C();
    sub_1C4467948(v55);
  }

  return v35;
}

unint64_t sub_1C44F920C()
{
  result = qword_1EDDFE900;
  if (!qword_1EDDFE900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFE900);
  }

  return result;
}

void *sub_1C44F927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C445FAA8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

unint64_t sub_1C44F92C4()
{
  result = qword_1EDDFE130;
  if (!qword_1EDDFE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE130);
  }

  return result;
}

uint64_t sub_1C44F9318@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C44F9344(a1, a2);
  if (!v3)
  {
    *a3 = v6;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_1C44F9344(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1C6938780]() == 16)
  {
    sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
    sub_1C4464058();
    sub_1C44640AC();
    sub_1C4433834();
    if (MEMORY[0x1C6938780](a1, a2) < 8)
    {
      __break(1u);
    }

    sub_1C4433834();
    result = sub_1C4434000(a1, a2);
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v5 = 0x6B72616D6B6F6F42;
    *(v5 + 8) = 0xE800000000000000;
    *(v5 + 16) = 0xD000000000000027;
    *(v5 + 24) = 0x80000001C4FB3810;
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    *(v5 + 64) = 4;
    swift_willThrow();
    result = sub_1C4434000(a1, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t storeEnumTagSinglePayload for MotionStateContent(uint64_t result, int a2, int a3)
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

double sub_1C44F9540(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C4EF9AE8();
  v5 = v4 + 0.0;
  if (v4 != INFINITY)
  {
    *&v5 += (*&v5 >> 63) | 1;
  }

  if (a3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1C44F95AC(double a1, double a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a1;
  v2 = sub_1C4464F38(&v11, v12);
  v4 = v3;
  v5 = sub_1C4464F38(&v10, &v11);
  v7 = v6;
  v12[0] = v2;
  v12[1] = v4;
  sub_1C44344B8(v2, v4);
  sub_1C44F9684(v5, v7);
  sub_1C4434000(v5, v7);
  sub_1C4434000(v2, v4);
  result = v12[0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C44F9684(uint64_t a1, unint64_t a2)
{
  v8[3] = MEMORY[0x1E6969080];
  v8[4] = MEMORY[0x1E6969078];
  v8[0] = a1;
  v8[1] = a2;
  v4 = sub_1C4409678(v8, MEMORY[0x1E6969080]);
  v5 = *v4;
  v6 = v4[1];
  sub_1C44344B8(a1, a2);
  sub_1C44F970C(v5, v6);
  return sub_1C440962C(v8);
}

uint64_t sub_1C44F970C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v3 = v5;
      goto LABEL_6;
    case 2uLL:
      v2 = *(a1 + 24);
      a1 = *(a1 + 16);
      v3 = v2;
LABEL_6:
      result = sub_1C4B8CDC8(a1, v3);
      break;
    default:
      result = sub_1C4EF9A08();
      break;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C44F9870()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE9C8);
  sub_1C442B738(v0, qword_1EDDFE9C8);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t *sub_1C44F9918(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1C44F999C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v122 = a2;
  v6 = *v2;
  v125 = v3;
  v126 = v6;
  v111 = sub_1C4EFB1E8();
  v7 = sub_1C43FCDF8(v111);
  v108 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v107 = v11 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v110 = v14;
  sub_1C43FBE44();
  v15 = sub_1C4EF98F8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v113 = v21 - v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v112 = v24;
  sub_1C43FBE44();
  v25 = sub_1C4EFAD98();
  v26 = sub_1C43FCDF8(v25);
  v114 = v27;
  v115 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C4EFB148();
  v34 = sub_1C43FCDF8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBD08();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v107 - v43;
  v123 = v18;
  v124 = v15;
  v45 = *(v18 + 16);
  v120 = OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL;
  v116 = v45;
  v117 = (v18 + 16);
  v45(&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL], a1, v15);
  v46 = type metadata accessor for ErrorHandlingDatabasePool.GuardedData(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  sub_1C4EF9B28();
  sub_1C456902C(&qword_1EC0BC550, qword_1C4F24678);
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  *(v50 + 16) = v49;
  v119 = OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_lockedBox;
  *&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_lockedBox] = v50;
  sub_1C44FA2C0(a1, v122);
  v51 = OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_configuration;
  (*(v36 + 32))(&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_configuration], v44, v33);
  sub_1C4EF98E8();
  v121 = v36;
  v122 = v33;
  v52 = *(v36 + 16);
  v118 = v51;
  v52(v41, &v4[v51], v33);
  v53 = sub_1C4EFAFC8();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = v125;
  v57 = sub_1C4EFAF68();
  if (!v56)
  {
    v75 = v57;
    (*(v123 + 8))(a1, v124);
    *&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool] = v75;
    return v4;
  }

  v109 = v4;
  v58 = v124;
  v125 = a1;
  v59 = v56;
  sub_1C4EFA758();
  v60 = sub_1C4EFAD68();

  (*(v114 + 8))(v32, v115);
  if (v60)
  {

    v61 = v125;
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128();
    }

    v62 = sub_1C4F00978();
    sub_1C442B738(v62, qword_1EDE2E088);
    v63 = v112;
    sub_1C4432210();
    v64();
    v65 = sub_1C4F00968();
    v66 = sub_1C4F01CD8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v128 = v68;
      *v67 = 136315138;
      sub_1C4406C38();
      sub_1C44901D4(v69, v70);
      v71 = sub_1C4F02858();
      v73 = v72;
      sub_1C4411C18();
      v58();
      v74 = sub_1C441D828(v71, v73, &v128);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_1C43F8000, v65, v66, "<ErrorHandlingDatabasePool u:%s>: authorization failure, device may be Class C locked.", v67, 0xCu);
      sub_1C440962C(v68);
      sub_1C43FBE2C();
      v61 = v125;
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4411C18();
      (v58)(v63, v32);
    }

    v4 = v109;
    sub_1C4778114();
    sub_1C43FFB2C();
    *v100 = 1;
    swift_willThrow();
LABEL_17:
    (v58)(v61, v32);
    (v58)(&v4[v120], v32);
    (*(v121 + 8))(&v4[v118], v122);
    v102 = *&v4[v119];

    v103 = *(*v4 + 48);
    v104 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v128 = v56;
  v76 = v56;
  v77 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v79 = v110;
  v78 = v111;
  v80 = swift_dynamicCast();
  v61 = v125;
  if (!v80)
  {

    v81 = v113;
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128();
    }

    v82 = sub_1C4F00978();
    sub_1C442B738(v82, qword_1EDE2E088);
    sub_1C4432210();
    v83();
    v84 = v56;
    v85 = sub_1C4F00968();
    v86 = sub_1C4F01CD8();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v116 = v77;
      v88 = v87;
      v117 = swift_slowAlloc();
      v128 = v117;
      *v88 = 136315394;
      sub_1C4406C38();
      sub_1C44901D4(v89, v90);
      LODWORD(v115) = v86;
      v91 = sub_1C4F02858();
      v93 = v92;
      v58 = *(v123 + 8);
      v94 = sub_1C43FCE84();
      (v58)(v94);
      v95 = sub_1C441D828(v91, v93, &v128);

      *(v88 + 4) = v95;
      *(v88 + 12) = 2080;
      v127 = v56;
      v96 = v56;
      v97 = sub_1C4F01198();
      v99 = sub_1C441D828(v97, v98, &v128);

      *(v88 + 14) = v99;
      v61 = v125;
      _os_log_impl(&dword_1C43F8000, v85, v115, "<ErrorHandlingDatabasePool u:%s>: failed to open db: %s", v88, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4411C18();
      (v58)(v81, v32);
    }

    v4 = v109;
    sub_1C4778114();
    sub_1C43FFB2C();
    *v101 = 0;
    swift_willThrow();

    goto LABEL_17;
  }

  v106 = v107;
  (*(v108 + 32))(v107, v79, v78);
  result = sub_1C4774554(v61, v106);
  __break(1u);
  return result;
}

uint64_t sub_1C44FA2C0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_1C4EF98F8();
  v3 = sub_1C43FCDF8(v28);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFC018();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = (v16 - v15);
  v18 = sub_1C4F00D88();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1C43FBCC4();
  sub_1C4EFB138();
  sub_1C4EF98E8();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v17 = 0x404E000000000000;
  (*(v12 + 104))(v17, *MEMORY[0x1E69A00D8], v9);
  sub_1C4EFB118();
  sub_1C4EFB0D8();
  v20 = a1;
  v21 = v28;
  (*(v5 + 16))(v8, v20, v28);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = v29;
  *(v24 + 24) = v25;
  (*(v5 + 32))(v24 + v22, v8, v21);
  *(v24 + v23) = v25;
  sub_1C4EFB0C8();
}

uint64_t sub_1C44FA524()
{
  v1 = sub_1C4EF98F8();
  sub_1C43FD3F8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1C44FA5AC()
{
  v1 = sub_1C4EFB148();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C44FA8BC();
  if (!v0 && v9 != 2)
  {
    sub_1C4EFBE88();
    v10 = sub_1C4EFB0F8();
    v12 = v11;
    (*(v4 + 8))(v8, v1);
    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v26 = v13;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      sub_1C43FEC60();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1C441D828(v26, v14, &v27);
      _os_log_impl(&dword_1C43F8000, v16, v17, "ErrorHandlingDatabasePool(%s): switching to incremental auto_vacuum mode.", v18, 0xCu);
      sub_1C440962C(v19);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4776CE4(2u);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      sub_1C43FEC60();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      v24 = sub_1C441D828(v26, v14, &v27);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1C43F8000, v20, v21, "ErrorHandlingDatabasePool(%s): auto_vacuum is now incremental.", v22, 0xCu);
      sub_1C440962C(v23);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }
}

uint64_t sub_1C44FA8BC()
{
  v1 = sub_1C4EFB768();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1C4EFB758();
  sub_1C4EFB998();
  if (v0)
  {
    (*(v4 + 8))(v8, v1);
    return sub_1C4423A0C(v11, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {
    (*(v4 + 8))(v8, v1);
    sub_1C4423A0C(v11, &unk_1EC0BC770, &qword_1C4F10DC0);
    v10 = v13;
    if (v13 >= 3)
    {
      v10 = 3;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

void sub_1C44FAA4C()
{
  sub_1C43FE96C();
  v46 = v0;
  v47 = v1;
  v2 = sub_1C4EFB5A8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v49 = sub_1C4EFB5F8();
  v11 = sub_1C43FCDF8(v49);
  v48 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  sub_1C4EFB5E8();
  v18 = *MEMORY[0x1E699FE90];
  v19 = *(v5 + 104);
  v19(v10, v18, v2);
  sub_1C4407670();
  v20 = *(v5 + 8);
  v21 = sub_1C43FD018();
  v20(v21);
  v22 = sub_1C441A0EC();
  (v19)(v22);
  sub_1C44137F4();
  sub_1C4407670();
  v23 = sub_1C43FD018();
  v20(v23);
  v24 = sub_1C441A0EC();
  (v19)(v24);
  sub_1C44137F4();
  sub_1C4407670();
  v25 = sub_1C43FD018();
  v20(v25);
  v19(v10, v18, v2);
  sub_1C4EFB5C8();
  v26 = sub_1C43FD018();
  v20(v26);
  v27 = sub_1C441A0EC();
  (v19)(v27);
  sub_1C4407670();
  v28 = sub_1C43FD018();
  v20(v28);
  v29 = sub_1C441A0EC();
  (v19)(v29);
  sub_1C44137F4();
  sub_1C4407670();
  v30 = sub_1C43FD018();
  v20(v30);
  v31 = sub_1C441A0EC();
  (v19)(v31);
  sub_1C44137F4();
  sub_1C4407670();
  v32 = sub_1C43FD018();
  v20(v32);
  v33 = sub_1C441A0EC();
  (v19)(v33);
  sub_1C43FDE8C();
  v34 = sub_1C43FD018();
  v20(v34);
  v35 = sub_1C441A0EC();
  (v19)(v35);
  sub_1C43FDE8C();
  v36 = sub_1C43FD018();
  v20(v36);
  v37 = *&v0[OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_pool];
  sub_1C44FAF64(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool);
  v38 = sub_1C4EFB5D8();
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v38);
    *(&v45 - 2) = v17;
    sub_1C446572C(sub_1C44FB024, (&v45 - 4), v39, v40, v41, v42, v43, v44, v45, v46);
  }

  (*(v48 + 8))(v17, v49);
  sub_1C43FBC80();
}

uint64_t sub_1C44FAED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44FAF1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44FAF64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44FAFAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44FB040(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    v11(v8, v18, v3);
    sub_1C4B62F60();
    v19(v8, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C44FB258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF230, &qword_1EDE2DFE8, sub_1C446B00C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C44FB2B8()
{
  sub_1C456902C(&qword_1EC0C09D8, qword_1C4F3F9B8);
  swift_allocObject();
  result = sub_1C44FB350();
  qword_1EDE2DFE8 = result;
  return result;
}

uint64_t type metadata accessor for KeyValueDatabase()
{
  result = qword_1EDDFD8C8;
  if (!qword_1EDDFD8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44FB350()
{
  sub_1C456902C(&qword_1EC0C6250, &qword_1C4F6B5C8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for KeyValueDatabase();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6258, &qword_1C4F6B5D0);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

void *sub_1C44FB3DC(uint64_t a1)
{
  v2 = v1;
  v50 = *v2;
  v47 = sub_1C4EFB1E8();
  v4 = sub_1C43FCDF8(v47);
  v46[3] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v46[4] = v8;
  MEMORY[0x1EEE9AC00](v9);
  v46[2] = v46 - v10;
  v11 = sub_1C4EF98F8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v46[1] = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v46 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v46 - v22;
  sub_1C4419BA4();
  sub_1C4EF9888();
  v24 = OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_url;
  (*(v14 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_url, v23, v11);
  v49 = OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_config;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_config);
  v25 = *(type metadata accessor for Configuration() + 20);
  v55 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = v26[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v52 = v2;
  v54 = v11;
  sub_1C44072E8(&xmmword_1EDDFEC78);
  v30 = 2 * (v29 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C44072E8(&xmmword_1EDDFFAE0);
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = v30 | 4;
  }

  v51 = v32;
  sub_1C44F920C();
  v33 = static NSUserDefaults.keyValueDatabaseLoggingEnabled.getter() & 1;
  v34 = *(v14 + 16);
  v35 = v52;
  v36 = v52 + v24;
  v48 = v24;
  v37 = v54;
  v34(v21, v36, v54);
  v38 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v53;
  v42 = sub_1C44F999C(v21, v51 | v33);
  if (v41)
  {
    sub_1C4467948(v55);
    (*(v14 + 8))(v35 + v48, v37);
    sub_1C4467948(v35 + v49);
    v43 = *(*v35 + 48);
    v44 = *(*v35 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v35 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool) = v42;
    sub_1C44FBA6C();
    sub_1C4467948(v55);
  }

  return v35;
}

uint64_t sub_1C44FB9AC()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE978);
  sub_1C442B738(v0, qword_1EDDFE978);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t sub_1C44FBA6C()
{
  v0 = sub_1C4EFB5A8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C4EFB5F8();
  v8 = sub_1C43FCDF8(v31);
  v30 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5E8();
  v14 = *MEMORY[0x1E699FE90];
  v15 = *(v3 + 104);
  v15(v7, v14, v0);
  sub_1C4EFB5C8();
  v16 = *(v3 + 8);
  v16(v7, v0);
  v15(v7, v14, v0);
  sub_1C4EFB5C8();
  v16(v7, v0);
  v17 = *&v28[OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool];
  sub_1C44FAF64(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool);
  v18 = v29;
  v19 = sub_1C4EFB5D8();
  if (!v18)
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v27 - 2) = v13;
    sub_1C446572C(sub_1C44FBD48, (&v27 - 4), v20, v21, v22, v23, v24, v25, v27, v28);
  }

  return (*(v30 + 8))(v13, v31);
}

uint64_t sub_1C44FBD64(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    v11(v8, v18, v3);
    sub_1C4B62F60();
    v19(v8, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C44FBF7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF7A0, &qword_1EDE2E060, sub_1C44273D4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C44FBFDC()
{
  sub_1C456902C(&qword_1EC0C4660, qword_1C4F5AED0);
  swift_allocObject();
  result = sub_1C44FC074();
  qword_1EDE2E060 = result;
  return result;
}

uint64_t type metadata accessor for ViewDatabase()
{
  result = qword_1EDDFF6E0;
  if (!qword_1EDDFF6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44FC074()
{
  sub_1C456902C(&qword_1EC0C6240, &qword_1C4F6B5B8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for ViewDatabase();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6248, &qword_1C4F6B5C0);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

void sub_1C44FC100()
{
  sub_1C43FE96C();
  v84 = v1;
  v2 = v0;
  v4 = v3;
  v82 = *v0;
  v72 = sub_1C4EFB1E8();
  v5 = sub_1C43FCDF8(v72);
  v70 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v71 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v68 - v11;
  v12 = sub_1C4EF98F8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v68 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - v23;
  v77 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking) = 0;
  v78 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking) = 0;
  v79 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking) = 0;
  v80 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking) = 0;
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache;
  v26 = sub_1C456902C(&qword_1EC0C4648, &qword_1C4F5AEB0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1C4F00248();
  sub_1C456902C(&qword_1EC0C4650, &unk_1C4F5AEB8);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 16) = v29;
  v81 = v25;
  *(v2 + v25) = v30;
  sub_1C43FF734();
  sub_1C4EF9888();
  v31 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_url;
  (*(v15 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_url, v24, v12);
  v76 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_config;
  sub_1C44098F0(v4, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_config);
  v32 = *(type metadata accessor for Configuration() + 20);
  v86 = v4;
  v33 = (v4 + v32);
  v34 = *v33;
  if (qword_1EDDFEC70 != -1)
  {
    v66 = v33[1];
    swift_once();
  }

  v83 = v2;
  v85 = v12;
  sub_1C4426108(&xmmword_1EDDFEC78);
  v37 = 2 * (v36 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    v67 = v35;
    swift_once();
    v35 = v67;
  }

  v73 = v35;
  v74 = v34;
  sub_1C4426108(&xmmword_1EDDFFAE0);
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 | 4;
  }

  sub_1C44F920C();
  v40 = v39 | static NSUserDefaults.viewDatabaseLoggingEnabled.getter() & 1;
  v41 = *(v15 + 16);
  v42 = v83;
  v75 = v31;
  v43 = v85;
  v41(v22, v83 + v31, v85);
  v44 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = v84;
  v48 = sub_1C44F999C(v22, v40 | 0x30);
  if (v47)
  {
    sub_1C4467948(v86);
    (*(v15 + 8))(v42 + v75, v43);
    sub_1C4467948(v42 + v76);
    v49 = *(v42 + v77);

    v50 = *(v42 + v78);

    v51 = *(v42 + v79);

    v52 = *(v42 + v80);

    v53 = *(v42 + v81);

    v54 = *(*v42 + 48);
    v55 = *(*v42 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56 = v73;
    v57 = v74;
    v58 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool;
    *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool) = v48;
    sub_1C4BBBF08();
    if (qword_1EDDFEC48 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC50 & ~v57) != 0 || (*(&xmmword_1EDDFEC50 + 1) & v56) != *(&xmmword_1EDDFEC50 + 1))
    {
      v59 = *(v42 + v58);

      sub_1C4418704(sub_1C4BC1AFC, v42, v60, v61, v62, v63, v64, v65, v68, v69);
      sub_1C44354B4();
      sub_1C4467948(v86);
    }

    else
    {
      sub_1C4467948(v86);
    }
  }

  sub_1C43FF5E8();
  sub_1C43FBC80();
}

uint64_t sub_1C44FC830()
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEA48);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFF570);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF5C0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF5D0);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFDDF8);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF390);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFDDF0);
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF588);
      if (v12 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF260);
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF250);
      if (v14 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCD08(319, &qword_1EDDFF078, _s6ConfigVMa);
      if (v15 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF068);
      if (v16 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCD08(319, &qword_1EDDFF9A0, MEMORY[0x1E69A9D80]);
      if (v17 > 0x3F)
      {
        return v5;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF530);
      if (v18 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1C44FCC6C(319, &qword_1EDDFF5A0);
        v1 = v19;
        if (v20 <= 0x3F)
        {
          sub_1C44FCC6C(319, &qword_1EDDFF5B0);
          v1 = v21;
          if (v22 <= 0x3F)
          {
            sub_1C44FCC6C(319, &qword_1EDDFF550);
            v1 = v23;
            if (v24 <= 0x3F)
            {
              sub_1C44FCC6C(319, &qword_1EDDFF540);
              v1 = v25;
              if (v26 <= 0x3F)
              {
                sub_1C44FCC6C(319, &qword_1EDDFF560);
                v1 = v27;
                if (v28 <= 0x3F)
                {
                  sub_1C44FCC6C(319, &qword_1EDDFF8E0);
                  v1 = v29;
                  if (v30 <= 0x3F)
                  {
                    sub_1C44FCC6C(319, &qword_1EDDFF900);
                    v1 = v31;
                    if (v32 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v1;
}

void sub_1C44FCC6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C4F01F48();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C44FCCB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C44FCD08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C44FCD5C()
{
  sub_1C44FCC6C(319, &qword_1EDDFED80);
  if (v0 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEF38);
    if (v1 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEF28);
      if (v2 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFEF48);
        if (v3 <= 0x3F)
        {
          sub_1C44FCC6C(319, &qword_1EDDFF8C8);
          if (v4 <= 0x3F)
          {
            sub_1C4BC1B7C();
            if (v5 <= 0x3F)
            {
              sub_1C44FCC6C(319, &qword_1EDDFF8E0);
              if (v6 <= 0x3F)
              {
                sub_1C44FCC6C(319, &qword_1EDDFF900);
                if (v7 <= 0x3F)
                {
                  sub_1C44FCC6C(319, &qword_1EDDFED60);
                  if (v8 <= 0x3F)
                  {
                    sub_1C44FCC6C(319, &qword_1EDDFED78);
                    if (v9 <= 0x3F)
                    {
                      sub_1C44FCC6C(319, &qword_1EDDFED50);
                      if (v10 <= 0x3F)
                      {
                        sub_1C44FCC6C(319, &qword_1EDDFD478);
                        if (v11 <= 0x3F)
                        {
                          sub_1C44FCC6C(319, &qword_1EDDFED48);
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

uint64_t sub_1C44FCFC0()
{
  sub_1C456902C(&qword_1EC0BD8C0, &qword_1C4F2FE00);
  swift_allocObject();
  result = sub_1C44FD02C();
  qword_1EDE2DFC8 = result;
  return result;
}

uint64_t sub_1C44FD02C()
{
  sub_1C456902C(&qword_1EC0C6230, &qword_1C4F6B5A8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for FeedbackLogDatabase(v1);
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6238, &qword_1C4F6B5B0);
  sub_1C44400E8();
  v2 = swift_allocObject();
  return sub_1C44208F4(v2);
}

uint64_t sub_1C44FD0B8()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44FD1C8(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C44FD14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for FeedbackLogDatabase, FeedbackLogDatabase.init(config:), sub_1C4662054);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void FeedbackLogDatabase.init(config:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v63 = *v2;
  v64 = v1;
  v5 = sub_1C4EFB5A8();
  v6 = sub_1C43FCDF8(v5);
  v58 = v7;
  v59 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v57 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EFB5F8();
  v12 = sub_1C43FCDF8(v11);
  v61 = v13;
  v62 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v60 = v16;
  sub_1C43FBE44();
  v17 = sub_1C4EF98F8();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - v27;
  sub_1C4414ACC();
  sub_1C4EF9888();
  v29 = OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_url;
  sub_1C44333BC();
  v30(&v2[v29], v28, v17);
  v31 = OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_config;
  sub_1C44FD704(v4, &v2[OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_config], type metadata accessor for Configuration);
  v65 = v4;
  v32 = (v4 + *(type metadata accessor for Configuration() + 20));
  v33 = *v32;
  v34 = v32[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C440CBE0(&xmmword_1EDDFEC78);
  v36 = 2 * (v35 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C440CBE0(&xmmword_1EDDFFAE0);
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 | 4;
  }

  (*(v20 + 16))(v25, &v2[v29], v17);
  v39 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v64;
  v43 = sub_1C44F999C(v25, v38);
  if (v42)
  {
    sub_1C47FAADC(v65, type metadata accessor for Configuration);
    (*(v20 + 8))(&v2[v29], v17);
    sub_1C47FAADC(&v2[v31], type metadata accessor for Configuration);
    v44 = *(*v2 + 48);
    v45 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_pool;
    *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_pool] = v43;
    v47 = v60;
    sub_1C4EFB5E8();
    v49 = v57;
    v48 = v58;
    v50 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x1E699FE90], v59);
    sub_1C4EFB5C8();
    v51 = (*(v48 + 8))(v49, v50);
    v52 = *&v2[v46];
    MEMORY[0x1EEE9AC00](v51);
    *(&v57 - 2) = v47;

    sub_1C446C37C(sub_1C44FD764, (&v57 - 4));

    v53 = *&v2[v46];
    sub_1C4435048();
    sub_1C47FAA94(v54, v55);

    sub_1C4EFB5D8();

    sub_1C4403178();
    sub_1C47FAADC(v65, v56);
    (*(v61 + 8))(v47, v62);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C44FD704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1C44FD780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFB5F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9);
  v14 = sub_1C4EFB5B8();
  if (v2)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v15 = v14;
    (*(v10 + 8))(v13, v9);
    if (v15)
    {
      if (qword_1EDDFFAF0 != -1)
      {
LABEL_21:
        swift_once();
      }

      v16 = sub_1C4F00978();
      v17 = sub_1C442B738(v16, qword_1EDE2E088);
      v18 = sub_1C4F00968();
      v19 = sub_1C4F01CF8();
      v20 = os_log_type_enabled(v18, v19);
      v40 = v5;
      if (v20)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1C43F8000, v18, v19, "Feedback Log database will reset schema and migrations", v21, 2u);
        v22 = v21;
        v5 = v40;
        MEMORY[0x1C6942830](v22, -1, -1);
      }

      v23 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
      v24 = v23;
      v37[1] = v17;
      v38 = v4;
      v25 = v23 + 64;
      v26 = 1 << *(v23 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(v23 + 64);
      v4 = (v26 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = 0;
      v39 = v8;
      if (v28)
      {
        while (1)
        {
          v30 = v29;
LABEL_14:
          v31 = (*(v24 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v28)))));
          v32 = *v31;
          v33 = v31[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFBF68();
          v28 &= v28 - 1;

          v29 = v30;
          v5 = v40;
          v8 = v39;
          if (!v28)
          {
            goto LABEL_11;
          }
        }
      }

      while (1)
      {
LABEL_11:
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v30 >= v4)
        {
          break;
        }

        v28 = *(v25 + 8 * v30);
        ++v29;
        if (v28)
        {
          goto LABEL_14;
        }
      }

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      (*(v5 + 8))(v8, v38);
      v34 = sub_1C4F00968();
      v35 = sub_1C4F01CF8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1C43F8000, v34, v35, "Feedback Log database completed reset of schema and migrations.", v36, 2u);
        MEMORY[0x1C6942830](v36, -1, -1);
      }
    }
  }
}

uint64_t sub_1C44FDC24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1C4422F90(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C441D670(&v12, v10 + 40 * a1 + 32);
}

void sub_1C44FDCBC()
{
  sub_1C43FBD3C();
  sub_1C43FFC44();
  if (v7)
  {
    sub_1C441172C();
    if (v12 != v13)
    {
      sub_1C442B904();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v11 = v6;
  }

  v14 = *(v0 + 16);
  if (v11 <= v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1C4422208(v5, v6, v7, v8, v9, v10);
  v16 = sub_1C4404050();
  v18 = *(*(sub_1C456902C(v16, v17) - 8) + 72);
  v19 = sub_1C44357B4();
  v20 = j__malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v4 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  sub_1C441B764((v20 - v4) / v18);
LABEL_18:
  v22 = sub_1C4404050();
  v24 = *(sub_1C456902C(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_1C459CE68(v0 + v25, v14, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C4441894();
  }

  sub_1C43FE9F0();
}

void sub_1C44FDE1C()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

uint64_t sub_1C44FDE5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C44FDEA4()
{
  result = qword_1EC0C6928;
  if (!qword_1EC0C6928)
  {
    sub_1C4572308(&qword_1EC0C6920, ">d\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6928);
  }

  return result;
}

void sub_1C44FDF38()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(v6, v4);
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v32 - v20;
  v22 = *(v9 + 16);
  v23 = sub_1C4401CBC(v3, v7, v5);
  v24 = MEMORY[0x1C69407C0](v22, v10, v23);
  sub_1C4426A00(v24);
  if (v7)
  {
    v26 = v13 + 16;
    v25 = *(v13 + 16);
    v32[1] = v9;
    v33 = v25;
    v27 = v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v28 = *(v13 + 72);
    v29 = v1;
    v30 = (v26 - 8);
    do
    {
      v33(v18, v27, v10);
      v31 = sub_1C43FE5F8();
      v29(v31);
      (*v30)(v21, v10);
      v27 += v28;
      v7 = (v7 - 1);
    }

    while (v7);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C44FE0D8()
{
  sub_1C43FBD3C();
  sub_1C4851B30(v3);
  v4 = sub_1C440BD5C();
  sub_1C440AC0C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44236E4();
  sub_1C440C518(&qword_1EC0B9150);
  sub_1C44A1E88();
  sub_1C4426B80();
  while (1)
  {
    v11 = v10 & v2;
    sub_1C4414B44((v10 & v2) >> 3);
    sub_1C4851B10();
    if (v12)
    {
      sub_1C4851C50();
      v15 = *(v6 + 16);
      sub_1C4436564();
      v16();
      v17 = sub_1C44414C4();
      sub_1C4848DD8(v17, v18, v19);
      *v2 = v25;
      v20 = *(v6 + 32);
      v21 = sub_1C4441090();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C440BD34();
    (qword_1EC0B8A30)(v13);
    sub_1C4425100();
    sub_1C48514DC(&qword_1EC0BDEB8, &qword_1EC0B8A30);
    sub_1C449DA9C();
    v14 = sub_1C44409C8();
    v1(v14);
    if (v0)
    {
      break;
    }

    v10 = v11 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  sub_1C441802C();
  v24 = sub_1C4433D0C();
  (qword_1EC0B8A30)(v24);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C44FE288(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26[0] = v26 - v4;
  v5 = type metadata accessor for EntityTriple(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  while (1)
  {
    if (v17 == v16)
    {
      return 0;
    }

    sub_1C44719E4(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9);
    v18 = &v9[*(v5 + 32)];
    v19 = *v18 == 0xD000000000000016 && 0x80000001C4FC7900 == *(v18 + 1);
    if (v19 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    sub_1C44DBDB4(v9, type metadata accessor for EntityTriple);
    ++v16;
  }

  sub_1C4485774(v9, v12);
  v20 = sub_1C4485774(v12, v15);
  MEMORY[0x1EEE9AC00](v20);
  v26[-2] = v15;
  v21 = v26[0];
  sub_1C4BABD38();
  if (sub_1C44157D4(v21, 1, v5) == 1)
  {
    sub_1C4420C3C(v21, &qword_1EC0BA590, &qword_1C4F1F430);
    v22 = 0;
  }

  else
  {
    v23 = (v21 + *(v5 + 32));
    v22 = *v23;
    v24 = v23[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBDB4(v21, type metadata accessor for EntityTriple);
  }

  sub_1C44DBDB4(v15, type metadata accessor for EntityTriple);
  return v22;
}

void sub_1C44FE5AC()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  v3 = type metadata accessor for GraphTriple(v2);
  v4 = sub_1C4403200(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v7 = sub_1C44057DC();
      sub_1C4471874(v7, v8);
      sub_1C440D464();
      if (v9)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      sub_1C4436548();
      v11 = sub_1C445E5E8(&qword_1EDDFE218, v10);
      sub_1C4414204(v11);
      sub_1C445E81C();
      sub_1C4471874(v0, v12);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v13);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C44FE6EC(void *a1, uint64_t a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7F8();
  LOBYTE(a1) = sub_1C44DBB50(v8, a2);
  (*(v5 + 8))(v8, v4);
  return a1 & 1;
}

uint64_t sub_1C44FE800(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C44FF944, 0, 0);
}

uint64_t sub_1C44FE860()
{
  sub_1C43FCF70();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C43FCF54(v2);
  *v3 = v4;
  v5 = sub_1C4408024(v3);

  return sub_1C44FE98C(v5, v6, v7, v1);
}

uint64_t sub_1C44FE8F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  sub_1C4408024(v4);
  sub_1C4426C44();

  return sub_1C4CDC678(v6, v7, v8, v9, v10);
}

uint64_t sub_1C44FE9AC()
{
  sub_1C43FBCD4();
  v1 = *(v0[2] + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop);
  v0[3] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86B0] + 4);

    swift_task_alloc();
    sub_1C43FBE70();
    v0[4] = v3;
    *v3 = v4;
    v3[1] = sub_1C4CDC558;
    v5 = MEMORY[0x1E69E73E0];
    v6 = MEMORY[0x1E69E7410];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 5, v1, v7, v5, v6);
  }

  else
  {
    sub_1C43FBDA0();

    return v8();
  }
}

uint64_t sub_1C44FEAAC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 40);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4CDC830, 0, 0);
  }

  else
  {
    sub_1C43FBDA0();

    return v7();
  }
}

void sub_1C44FEBCC()
{
  sub_1C43FBD3C();
  v5 = v4;
  sub_1C441AE30();
  v27 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8(v27);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  sub_1C4435C48(v9);
  if (!v5)
  {
LABEL_28:

LABEL_29:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v10)
  {
    goto LABEL_29;
  }

  sub_1C456902C(&qword_1EC0BDEC0, &qword_1C4F32308);
  sub_1C4416310();
  sub_1C4418B64();
  if (v11 == v12)
  {
    v13 = *v1;
  }

  sub_1C4408EE0();
  while (v14)
  {
    sub_1C440AAD0();
LABEL_16:
    v17 = sub_1C4407798();
    v18(v17);
    v19 = *(v2 + 40);
    sub_1C4A8ECB4();
    v20 = sub_1C4409F98();
    sub_1C442D128(v20, *(v2 + 32));
    if (v10)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v10)
        {
          if (v23)
          {
            goto LABEL_31;
          }
        }

        if (v22 == v24)
        {
          v22 = 0;
        }

        sub_1C443002C(v22);
        if (!v10)
        {
          sub_1C43FCF98();
          goto LABEL_26;
        }
      }
    }

    sub_1C43FFC04();
LABEL_26:
    v25 = sub_1C441A1A0(v21);
    v26(v25);
    sub_1C4433698();
    if (v12)
    {
      goto LABEL_32;
    }

    sub_1C444B224();
  }

  v15 = v3;
  while (1)
  {
    v3 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v3 >= v0)
    {
      goto LABEL_28;
    }

    sub_1C4424F24();
    if (v16)
    {
      sub_1C4413608();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C44FED98(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1C4500964();
  *a1 = v4;
}

uint64_t sub_1C44FEDEC(uint64_t a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v5[2] = a1;

  v3 = sub_1C44FEDD4(sub_1C4501314, v5);

  return v3;
}

void sub_1C44FEE5C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8A40, &unk_1C4F0DE60);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C44FEFB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v46 = a3;
  v47 = a4;
  v5 = type metadata accessor for Source();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1C456902C(&qword_1EC0C39F0, &unk_1C4F54110);
  v49 = *(v59 - 8);
  v9 = *(v49 + 64);
  v10 = MEMORY[0x1EEE9AC00](v59);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v14;
  type metadata accessor for ProgressTokens(0);
  v54 = &type metadata for ProgressTokenColumn;
  v15 = sub_1C4492FAC();
  v55 = v15;
  LOBYTE(v53[0]) = 1;
  v16 = a2[3];
  v17 = a2[4];
  sub_1C4409678(a2, v16);
  v18 = *(v17 + 8);
  v19 = *(v18 + 16);
  v51 = sub_1C4EFD548();
  v52 = sub_1C4472550(&qword_1EDDFA240, MEMORY[0x1E69A92C8]);
  sub_1C4422F90(v50);
  v19(v16, v18);
  v57 = sub_1C4EFB298();
  v58 = MEMORY[0x1E699FE60];
  v20 = v57;
  v42 = v57;
  sub_1C4422F90(v56);
  sub_1C4EFBB28();
  sub_1C4420C3C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v53);
  sub_1C4472550(&qword_1EDDF7A98, type metadata accessor for ProgressTokens);
  v21 = v43;
  sub_1C4EFAE28();
  sub_1C440962C(v56);
  v54 = &type metadata for ProgressTokenColumn;
  v55 = v15;
  v22 = v15;
  LOBYTE(v53[0]) = 0;
  v24 = a2[3];
  v23 = a2[4];
  sub_1C4409678(a2, v24);
  (*(*(v23 + 8) + 24))(v24);
  v25 = *(v8 + 2);
  sub_1C447EBE4(v8, type metadata accessor for Source);
  v51 = MEMORY[0x1E69E6530];
  v52 = MEMORY[0x1E69A0178];
  v50[0] = v25;
  v57 = v20;
  v58 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v56);
  sub_1C4EFBB28();
  sub_1C4420C3C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v53);
  sub_1C4401CBC(&qword_1EDDFA2A8, &qword_1EC0C39F0, &unk_1C4F54110);
  v26 = v44;
  v27 = v59;
  sub_1C4EFB438();
  v28 = *(v49 + 8);
  v28(v21, v27);
  sub_1C440962C(v56);
  v54 = &type metadata for ProgressTokenColumn;
  v55 = v22;
  v43 = v22;
  LOBYTE(v53[0]) = 3;
  v29 = a2[3];
  v30 = a2[4];
  sub_1C4409678(a2, v29);
  v31 = *(v30 + 8);
  v32 = *(v31 + 32);
  v51 = &type metadata for StageName;
  v52 = sub_1C4493280();
  v33 = v29;
  v34 = v59;
  v35 = v31;
  v36 = v26;
  v37 = v42;
  v32(v50, v33, v35);
  v38 = MEMORY[0x1E699FE60];
  v39 = v45;
  v57 = v37;
  v58 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v56);
  sub_1C4EFBB28();
  sub_1C4420C3C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v53);
  sub_1C4EFB438();
  v28(v36, v34);
  sub_1C440962C(v56);
  if (v46)
  {
    v54 = &type metadata for ProgressTokenColumn;
    v55 = v43;
    LOBYTE(v53[0]) = 2;
    v57 = v37;
    v58 = v38;
    sub_1C4422F90(v56);
    sub_1C4EFBB38();
    sub_1C440962C(v53);
    sub_1C4EFB438();
    v28(v39, v34);
    sub_1C440962C(v56);
    (*(v49 + 32))(v39, v36, v34);
  }

  sub_1C4401CBC(&qword_1EDDFA2B0, &qword_1EC0C39F0, &unk_1C4F54110);
  sub_1C4472550(&qword_1EDDF7A88, type metadata accessor for ProgressTokens);
  sub_1C4EFAFF8();
  return (v28)(v39, v34);
}

uint64_t sub_1C44FF644()
{
  sub_1C4475B28();
  v9 = v1;
  sub_1C43FEAEC();
  sub_1C44BBF4C();
  sub_1C440FE6C();
  sub_1C4430798();
  sub_1C446073C(MEMORY[0x1E69E7CD0]);
  sub_1C4408120();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = sub_1C447FAC0(v3);
  *v4 = v5;
  v6 = sub_1C4401314(v4);

  return v7(v6);
}

uint64_t sub_1C44FF70C()
{
  sub_1C43FBCD4();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442F080;
  v3 = sub_1C4414C5C();

  return sub_1C44FE800(v3, v0);
}

uint64_t sub_1C44FF7B4()
{
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_highPriortyTaskState);
  sub_1C43FBDBC();
  swift_allocObject();
  swift_weakInit();
  os_unfair_lock_lock(v1 + 6);
  sub_1C44FF850();
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1C44FF850()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1C4CE6098();
}

uint64_t sub_1C44FF894()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C440A280();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4432DFC(v1);
  sub_1C442642C();

  return sub_1C44FF920(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C44FF920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C44FF644, 0, 0);
}

uint64_t sub_1C44FF944()
{
  v1 = *(v0 + 48);
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 40);
    v4 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v0 + 64) = sub_1C44FE820(v4);
    *(v0 + 88) = 3;
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_1C4CE94D8;
    v6 = sub_1C4414C5C();

    return sub_1C4427590(v6, 0x4000, 0, 0, 0, (v0 + 88));
  }

  else
  {
    sub_1C43FBDA0();

    return v8();
  }
}

uint64_t sub_1C44FFA6C()
{
  v1 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v11 - v4;
  if (*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask);

    sub_1C4F01918();
  }

  v7 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure + 8);
    v9 = sub_1C4F018C8();
    sub_1C440BAA8(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;

    sub_1C4785250();
  }

  return result;
}

uint64_t sub_1C44FFBA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C44FFC00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  LOBYTE(v5) = sub_1C44869B4(&v7, a2, a3);
  swift_endAccess();
  return v5 & 1;
}

uint64_t sub_1C44FFC84()
{
  sub_1C456902C(&qword_1EC0B8930, &qword_1C4F0DD38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C4F0C890;
  v2 = v0[5];
  v3 = v0[6];
  sub_1C4409678(v0 + 2, v2);
  (*(v3 + 8))(&v9, v2, v3);
  *(v1 + 32) = v9;
  v4 = v0[5];
  v5 = v0[6];
  sub_1C4409678(v0 + 2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = ~*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_identifier);
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  return v1;
}

uint64_t sub_1C44FFD74(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C44FFDE4(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C4F018C8();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C440BAA8(v6, 0, 1, v7);
  v8 = sub_1C4428DF0(qword_1EDDEC900, _s12JobSchedulerCMa);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v1;
  swift_retain_n();
  sub_1C4785250();
}

uint64_t sub_1C44FFF44(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v34 = sub_1C4EFC808();
  v31 = *(v34 - 8);
  v4 = v31;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v37 = sub_1C4EFF7D8();
  v38 = v15;
  sub_1C456902C(&qword_1EC0C6948, "8d\a");
  v16 = *(v4 + 72);
  v17 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0D130;
  sub_1C442E860(a1, v36);
  sub_1C4509A40(v36, v19, v20, v21, v22, v23, v24, v25, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v37, v38);
  sub_1C4420C3C(v36, &qword_1EC0C0F38, &qword_1C4F41A90);
  v36[0] = v18;
  sub_1C44FDE5C(&qword_1EC0C2318, MEMORY[0x1E699C748]);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  sub_1C4F020C8();
  sub_1C4EFC818();
  v26 = v33;
  (*(v8 + 16))(v33, v13, v7);
  v27 = v35;
  sub_1C4501C08();
  v28 = *(*v27 + 16);
  sub_1C4505A00();
  (*(v8 + 8))(v13, v7);
  v29 = *v27;
  *(v29 + 16) = v28 + 1;
  return (*(v8 + 32))(v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v26, v7);
}

size_t sub_1C45002A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C43FF2B4(a1, a2, a3, a4);
  v9 = sub_1C456902C(a5, a6);
  sub_1C43FCF7C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      sub_1C43FDA58((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45003AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v55 = a4;
  v6 = sub_1C4EFC808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C456902C(&qword_1EC0B8A28, &qword_1C4F322F0);
  v49 = *(v46 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v41 - v10;
  v47 = sub_1C4EFC8F8();
  v12 = *(v47 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  sub_1C4500964();
  v19 = *a2;
  *a2 = v20;

  v53 = 0;
  v54 = 0xE000000000000000;
  v51 = 0;
  v52 = 0xE000000000000000;
  v21 = *a2;
  v22 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4501C90(v22, &v53, &v51);

  v23 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v23 = v53 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v52;
  if (v23)
  {
    goto LABEL_7;
  }

  v25 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v25 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
LABEL_7:
    v44 = v54;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v42 = v18;
    sub_1C4EFC8E8();
    v45 = v24;
    v26 = *(v12 + 16);
    v41 = v15;
    v43 = v4;
    v27 = v47;
    v26(v15, v18, v47);
    sub_1C4505A9C(*a2, v50);
    sub_1C4509A40(v50, v28, v29, v30, v31, v32, v33, v34, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v50[2]);
    sub_1C4420C3C(v50, &qword_1EC0C0F38, &qword_1C4F41A90);
    v35 = MEMORY[0x1E699C790];
    sub_1C44FDE5C(&qword_1EC0C6930, MEMORY[0x1E699C790]);
    sub_1C44FDE5C(&qword_1EC0C6938, v35);
    v36 = v49;
    v37 = v55;
    sub_1C44FDE5C(&qword_1EC0C6940, v35);
    sub_1C4EFC818();
    sub_1C45007C4();
    v38 = *(*v37 + 16);
    sub_1C450084C();
    (*(v12 + 8))(v42, v27);
    v39 = *v37;
    *(v39 + 16) = v38 + 1;
    (*(v36 + 32))(v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v38, v11, v46);
  }

  else
  {
  }
}

void sub_1C45007C4()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C443FA1C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C450084C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C443FA1C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4500964()
{
  sub_1C43FBD3C();
  v2 = v1;
  v42 = type metadata accessor for ConstructionGraphTriple(0);
  v3 = sub_1C43FBCE0(v42);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v41 = v7 - v6;
  v8 = sub_1C43FBE44();
  v43 = type metadata accessor for EntityTriple(v8);
  v9 = sub_1C43FBCE0(v43);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = sub_1C4EFF0C8();
  v22 = sub_1C43FCDF8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v30 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4EFF7D8();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v20, 1, v21) != 1)
  {
    (*(v24 + 32))(v29, v20, v21);
    switch(*(v0 + *(type metadata accessor for WalletOrderMatcher() + 24)))
    {
      case 2:

        goto LABEL_7;
      case 3:
        sub_1C44133C0();
        break;
      default:
        break;
    }

    v31 = sub_1C4F02938();

    if (v31)
    {
LABEL_7:
      sub_1C442E860(v2, v44);
      sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
      if (!swift_dynamicCast())
      {
        v37 = type metadata accessor for PhaseStores();
        sub_1C4440B28(v37);
        GraphStore.loadGraphTriples(subject:)();
        sub_1C44FE5AC();
        goto LABEL_13;
      }

      sub_1C4420A30();
      sub_1C44DBDB4(v14, v32);
    }

    else
    {
      sub_1C442E860(v2, v44);
      sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
      if (swift_dynamicCast())
      {
        sub_1C44501B8();
        v33 = type metadata accessor for PhaseStores();
        v34 = sub_1C4440B28(v33);
        GraphStore.loadConstructionGraphTriples(subject:)(v34);
        sub_1C4812AF0();
LABEL_13:

        v38 = *(v24 + 8);
        v39 = sub_1C43FD024();
        v40(v39);
        goto LABEL_14;
      }
    }

    v35 = type metadata accessor for PhaseStores();
    v36 = sub_1C4440B28(v35);
    sub_1C44FEDEC(v36);
    sub_1C44F40EC();
    goto LABEL_13;
  }

  sub_1C4420C3C(v20, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_14:
  sub_1C43FE9F0();
}

void sub_1C4500CEC()
{
  sub_1C43FBD3C();
  sub_1C4851B30(v3);
  v4 = sub_1C440BD5C();
  sub_1C440AC0C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44236E4();
  sub_1C440C518(&qword_1EC0B9158);
  sub_1C44A1E88();
  sub_1C4426B80();
  while (1)
  {
    v11 = v10 & v2;
    sub_1C4414B44((v10 & v2) >> 3);
    sub_1C4851B10();
    if (v12)
    {
      sub_1C4851C50();
      v15 = *(v6 + 16);
      sub_1C4436564();
      v16();
      v17 = sub_1C44414C4();
      sub_1C48495DC(v17, v18, v19);
      *v2 = v25;
      v20 = *(v6 + 32);
      v21 = sub_1C4441090();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C440BD34();
    (qword_1EC0B8A38)(v13);
    sub_1C4425100();
    sub_1C48514DC(&qword_1EC0BDEC8, &qword_1EC0B8A38);
    sub_1C449DA9C();
    v14 = sub_1C44409C8();
    v1(v14);
    if (v0)
    {
      break;
    }

    v10 = v11 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  sub_1C441802C();
  v24 = sub_1C4433D0C();
  (qword_1EC0B8A38)(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C4500E80()
{
  sub_1C43FBD3C();
  sub_1C4851B30(v3);
  v4 = sub_1C440BD5C();
  sub_1C440AC0C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44236E4();
  sub_1C440C518(&qword_1EC0B9148);
  sub_1C44A1E88();
  sub_1C4426B80();
  while (1)
  {
    v11 = v10 & v2;
    sub_1C4414B44((v10 & v2) >> 3);
    sub_1C4851B10();
    if (v12)
    {
      sub_1C4851C50();
      v15 = *(v6 + 16);
      sub_1C4436564();
      v16();
      v17 = sub_1C44414C4();
      sub_1C4849330(v17, v18, v19);
      *v2 = v25;
      v20 = *(v6 + 32);
      v21 = sub_1C4441090();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C440BD34();
    (qword_1EC0B8A28)(v13);
    sub_1C4425100();
    sub_1C48514DC(&qword_1EC0BDEA8, &qword_1EC0B8A28);
    sub_1C449DA9C();
    v14 = sub_1C44409C8();
    v1(v14);
    if (v0)
    {
      break;
    }

    v10 = v11 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  sub_1C441802C();
  v24 = sub_1C4433D0C();
  (qword_1EC0B8A28)(v24);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C4501018(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C4F0D7C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C450107C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-1] - v8;
  type metadata accessor for EntityTriple(0);
  v16[3] = &type metadata for SourcedTripleColumn;
  v16[4] = sub_1C44964E4();
  LOBYTE(v16[0]) = 0;
  v10 = sub_1C4EFF0C8();
  v15[3] = v10;
  v15[4] = sub_1C4496488(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  v11 = sub_1C4422F90(v15);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  v17[3] = sub_1C4EFB298();
  v17[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v17);
  sub_1C4EFBB28();
  sub_1C44967E0(v15);
  sub_1C440962C(v16);
  sub_1C4496488(&qword_1EDDF8DB0, type metadata accessor for EntityTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v17);
  sub_1C4496848(&qword_1EDDFA2D8);
  sub_1C4496488(&qword_1EDDF8DA0, type metadata accessor for EntityTriple);
  v12 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

void sub_1C4501330()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v17 = v5;
  v16 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  sub_1C43FCDF8(v16);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4405820();
  v11 = *(v4 + 16);
  if (v11)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C45098B8();
    v12 = v4 + 32;
    while (1)
    {
      v17(v12);
      if (v2)
      {
        break;
      }

      v2 = 0;
      v13 = *(v18 + 16);
      if (v13 >= *(v18 + 24) >> 1)
      {
        sub_1C4404BBC();
        sub_1C45098B8();
      }

      *(v18 + 16) = v13 + 1;
      sub_1C440DEA4();
      (*(v7 + 32))(v14 + v15 * v13, v1, v16);
      v12 += 40;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45014A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_1C4EFC808();
  v30 = *(v33 - 8);
  v3 = v30;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C4EFCAA8();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  sub_1C4EFCA98();
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7D8();
  sub_1C4EFCA88();
  v14 = v9;
  v15 = v29;
  (*(v6 + 16))(v14, v12, v29);
  sub_1C456902C(&qword_1EC0C6948, "8d\a");
  v16 = *(v3 + 72);
  v17 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0D130;
  sub_1C442E860(a1, v35);
  sub_1C4509A40(v35, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31, v32, v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4]);
  sub_1C4420C3C(v35, &qword_1EC0C0F38, &qword_1C4F41A90);
  v35[0] = v18;
  sub_1C44FDE5C(&qword_1EC0C2318, MEMORY[0x1E699C748]);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  sub_1C4F020C8();
  v26 = MEMORY[0x1E699C7B8];
  sub_1C44FDE5C(&qword_1EC0C6950, MEMORY[0x1E699C7B8]);
  sub_1C44FDE5C(&qword_1EC0C6958, v26);
  sub_1C44FDE5C(&qword_1EC0C6960, v26);
  sub_1C4EFC818();
  return (*(v6 + 8))(v12, v15);
}

uint64_t sub_1C450181C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = sub_1C456902C(&qword_1EC0C2310, &unk_1C4F4A380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1C4EFC808();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(v13 + 16);
  v31 = v2;
  v22(v17, v2, v10, v19);
  v29 = sub_1C4501AE8(&qword_1EC0C2318);
  sub_1C4F02098();
  sub_1C4501AE8(qword_1EC0C2320);
  v30 = a2;
  v23 = sub_1C4F010B8();
  v33 = v4;
  v24 = *(v4 + 48);
  *v9 = (v23 & 1) == 0;
  if (v23)
  {
    (*(v13 + 32))(&v9[v24], v21, v10);
  }

  else
  {
    (*(v13 + 8))(v21, v10);
    v25 = v30;
    (v22)(&v9[v24], v30, v10);
    (v22)(v17, v25, v10);
    sub_1C4F020A8();
  }

  v26 = v32;
  sub_1C4501B2C(v9, v32);
  v27 = *v26;
  (*(v13 + 32))(v34, &v26[*(v33 + 48)], v10);
  return v27;
}

uint64_t sub_1C4501AE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4EFC808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4501B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2310, &unk_1C4F4A380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4501B9C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

void sub_1C4501C08()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C44269E8();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v4;
  }
}

void sub_1C4501C90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v46 = a2;
  v47 = a3;
  v4 = sub_1C4EFEEF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v45 - v17;
  v18 = *(a1 + 16);
  v19 = (a1 + 32);
  v55 = (v20 + 8);
  v51 = v9;
  v52 = v21;
  v53 = v22;
  v49 = v15;
  v50 = v12;
  if (v18)
  {
    while (1)
    {
      v54 = v18;
      v23 = v19[4];
      sub_1C4409678(v19, v19[3]);
      sub_1C4EFF7F8();
      sub_1C4EFE4D8();
      sub_1C44FDE5C(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v58 == v56 && v59 == v57)
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_1C4F02938();
      }

      v26 = *v55;
      (*v55)(v15, v4);
      v26(v60, v4);
      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }

      v27 = v19[4];
      sub_1C4409678(v19, v19[3]);
      v28 = v50;
      sub_1C4EFF7C8();
      sub_1C4EFEE08();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v58 == v56 && v59 == v57)
      {
        break;
      }

      v48 = sub_1C4F02938();

      v26(v9, v4);
      v26(v28, v4);
      if (v48)
      {
        goto LABEL_16;
      }

LABEL_17:
      v35 = v19[4];
      sub_1C4409678(v19, v19[3]);
      v36 = v52;
      sub_1C4EFF7C8();
      v37 = v53;
      sub_1C4EFEC18();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v58 == v56 && v59 == v57)
      {

        v26(v37, v4);
        v26(v36, v4);
        v9 = v51;
        v15 = v49;
      }

      else
      {
        v39 = sub_1C4F02938();

        v26(v37, v4);
        v26(v36, v4);
        v9 = v51;
        v15 = v49;
        if ((v39 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v40 = v19[4];
      sub_1C4409678(v19, v19[3]);
      v41 = sub_1C4EFF7D8();
      v42 = v47;
      v43 = v47[1];
      *v47 = v41;
      v42[1] = v44;

LABEL_25:
      v19 += 5;
      v18 = v54 - 1;
      if (v54 == 1)
      {
        return;
      }
    }

    v26(v9, v4);
    v26(v28, v4);
LABEL_16:
    v30 = v19[4];
    sub_1C4409678(v19, v19[3]);
    v31 = sub_1C4EFF7D8();
    v32 = v46;
    v33 = v46[1];
    *v46 = v31;
    v32[1] = v34;

    goto LABEL_17;
  }
}

unint64_t sub_1C45021B8()
{
  result = qword_1EDDFD840;
  if (!qword_1EDDFD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD840);
  }

  return result;
}

uint64_t sub_1C450220C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4502254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C450229C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C45022E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C450232C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4502370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C45023B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4502400(uint64_t a1)
{
  v2 = sub_1C4505DC4();

  return MEMORY[0x1EEE09858](a1, v2);
}

unint64_t sub_1C450244C()
{
  result = qword_1EDDFD838;
  if (!qword_1EDDFD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD838);
  }

  return result;
}

void sub_1C45024A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v576 = v20;
  v567 = v23;
  v25 = v24;
  v614 = *MEMORY[0x1E69E9840];
  v592 = sub_1C4EFEEF8();
  v26 = sub_1C43FCDF8(v592);
  v568 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v554 - v63;
  v588 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8(v588);
  v66 = v65;
  v68 = *(v67 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBC74();
  sub_1C43FD2C8(v70);
  v71 = sub_1C4EFCA68();
  v72 = sub_1C43FCDF8(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBCC4();
  v79 = v78 - v77;
  v80 = *(v74 + 16);
  v575 = v79;
  v557 = v74 + 16;
  v556 = v80;
  v80();
  v81 = sub_1C4EFC9B8();
  v82 = v81;
  v83 = *(v81 + 32);
  v84 = ((1 << v83) + 63) >> 6;
  v85 = (8 * v84);
  v560 = v25;
  v559 = v71;
  v558 = v74;
  if ((v83 & 0x3Fu) > 0xD)
  {
    goto LABEL_286;
  }

  while (1)
  {
    v565 = &v554;
    MEMORY[0x1EEE9AC00](v81);
    v566 = v84;
    v570 = &v554 - ((v85 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C4501018(0, v84, v570);
    v571 = 0;
    v86 = 0;
    v590 = v82;
    v87 = v82 + 56;
    v88 = 1 << *(v82 + 32);
    v89 = -1;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    v90 = v89 & *(v82 + 56);
    v82 = (v88 + 63) >> 6;
    v573 = v66 + 16;
    v574 = v66;
    v572 = v66 + 8;
    v66 = v587;
    v91 = v588;
    while (v90)
    {
      v593 = ((v90 - 1) & v90);
LABEL_12:
      sub_1C44135DC();
      v84 = v574;
      v96 = v95;
      (*(v574 + 2))(v66, *(v94 + 48) + *(v574 + 9) * v95, v91);
      sub_1C4EFC828();
      v85 = v610;
      v97 = sub_1C4F013E8();

      v98 = *(v84 + 8);
      v99 = sub_1C4404DC8();
      v100(v99);
      v90 = v593;
      if ((v97 & 1) == 0)
      {
        *(v570 + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v96;
        if (__OFADD__(v571++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1C44FEBCC();
          v85 = v102;
          v573 = 0;
          goto LABEL_17;
        }
      }
    }

    v92 = v86;
    while (1)
    {
      v86 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      if (v86 >= v82)
      {
        goto LABEL_16;
      }

      v93 = *(v87 + 8 * v86);
      ++v92;
      if (v93)
      {
        v593 = ((v93 - 1) & v93);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();

  v551 = sub_1C43FE99C();
  v84 = v82;
  v85 = sub_1C4D58D9C(v551, v552, v82, v553);
  v573 = 0;
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_17:
  v103 = v567;
  sub_1C4414724();
  sub_1C4EFC9C8();
  v104 = *(v103 + 16);
  v105 = v103 + 32;
  v593 = (v568 + 8);
  v106 = MEMORY[0x1E69E7CC0];
  v574 = v104;
  v587 = v105;
  if (v104)
  {
    while (1)
    {
      sub_1C442E860(v105, &v609);
      sub_1C44BBF70();
      sub_1C43FFE24();
      sub_1C4EFF7F8();
      sub_1C4EFE428();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v107);
      sub_1C443E488();
      v85 = v64;
      sub_1C44356A8();
      sub_1C4F01578();
      sub_1C441B628();
      sub_1C4F01578();
      v108 = *(&v606 + 1);
      sub_1C44151A4();
      v109 = v109 && v108 == v64;
      if (v109)
      {
        break;
      }

      v110 = sub_1C43FBEC0();
      sub_1C443EFE4();
      v66 = *v106;
      (*v106)();
      v111 = sub_1C4402CD0();
      (v66)(v111);

      if (v110)
      {
        goto LABEL_25;
      }

      sub_1C440962C(&v609);
LABEL_30:
      v105 += 40;
      v104 = (v104 - 1);
      if (!v104)
      {
        goto LABEL_31;
      }
    }

    v66 = v593;
    v112 = *v593;
    v113 = sub_1C43FE99C();
    (v112)(v113);
    v114 = sub_1C4402CD0();
    (v112)(v114);

LABEL_25:
    sub_1C441B1B0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v595 = v106;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v116 = *(v106 + 16);
      sub_1C44093D0();
      v106 = v595;
    }

    v117 = *(v106 + 24);
    if (*(v106 + 16) >= v117 >> 1)
    {
      sub_1C43FCFE8(v117);
      sub_1C4434354();
    }

    v85 = v607;
    v118 = v608;
    sub_1C442AA80();
    sub_1C44307D4();
    sub_1C43FCE64();
    v120 = *(v119 + 64);
    MEMORY[0x1EEE9AC00](v121);
    sub_1C43FBCC4();
    (*(v122 + 16))(v124 - v123);
    v125 = sub_1C43FFE24();
    sub_1C44FDC24(v125, v126, v127, v85, v118);
    sub_1C440962C(&v606);
    sub_1C4423DA8();
    v106 = *(v128 - 256);
    goto LABEL_30;
  }

LABEL_31:
  v82 = 0;
  v588 = *(v106 + 16);
  v590 = v106;
  v129 = MEMORY[0x1E69E7CC0];
  v130 = v569;
  while (v588 != v82)
  {
    sub_1C44135DC();
    if (v82 >= *(v132 + 16))
    {
      goto LABEL_279;
    }

    sub_1C442EE30(v131);
    sub_1C44BBF70();
    sub_1C43FFE24();
    sub_1C4EFF7C8();
    sub_1C441615C(&v611);
    sub_1C4EFEA98();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v133);
    sub_1C443E488();
    v85 = v130;
    sub_1C44356A8();
    sub_1C4F01578();
    sub_1C442AD44();
    sub_1C4F01578();
    v134 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v134 == v130)
    {
      v139 = *v593;
      v140 = sub_1C4402CD0();
      (v139)(v140);
      v141 = sub_1C43FE99C();
      (v139)(v141);
    }

    else
    {
      v136 = sub_1C43FBEC0();
      v66 = *v593;
      v137 = sub_1C4402CD0();
      (v66)(v137);
      v138 = sub_1C43FE99C();
      (v66)(v138);

      if ((v136 & 1) == 0)
      {
        sub_1C440962C(&v609);
        goto LABEL_46;
      }
    }

    sub_1C441B1B0();
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v595 = v129;
    if ((v142 & 1) == 0)
    {
      v143 = *(v129 + 16);
      sub_1C44093D0();
      v129 = v595;
    }

    v144 = *(v129 + 24);
    if (*(v129 + 16) >= v144 >> 1)
    {
      sub_1C43FCFE8(v144);
      sub_1C4434354();
    }

    v85 = v607;
    v145 = v608;
    sub_1C442AA80();
    sub_1C44307D4();
    sub_1C43FCE64();
    v147 = *(v146 + 64);
    MEMORY[0x1EEE9AC00](v148);
    sub_1C43FBCC4();
    v150 = sub_1C4405530(v149);
    v151(v150);
    sub_1C4435D5C();
    sub_1C44FDC24(v152, v153, v154, v155, v145);
    sub_1C440962C(&v606);
    sub_1C4423DA8();
    v129 = *(v156 - 256);
LABEL_46:
    sub_1C441F174();
    ++v82;
  }

  v85 = &v554;
  MEMORY[0x1EEE9AC00](v157);
  sub_1C4411530();
  *(v158 - 16) = v576;
  v82 = v573;
  sub_1C45098F8(sub_1C44FED98, v159, v129);
  v161 = v160;
  v585 = v82;

  v162 = 0;
  sub_1C4441A64(*(v161 + 16));
  v66 = MEMORY[0x1E69E7CC0];
  v163 = v564;
  while (1)
  {
    sub_1C44135DC();
    if (v165 == v162)
    {
      break;
    }

    if (v162 >= *(v161 + 16))
    {
      goto LABEL_280;
    }

    sub_1C442EE30(v164);
    sub_1C44BBF70();
    sub_1C43FFE24();
    sub_1C4EFF7F8();
    sub_1C441615C(&v610);
    sub_1C4EFEBF8();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v166);
    sub_1C443E488();
    v85 = v163;
    sub_1C44356A8();
    sub_1C4F01578();
    sub_1C442AD44();
    sub_1C4F01578();
    v167 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v167 == v163)
    {
      v82 = *v593;
      v171 = sub_1C4402CD0();
      (v82)(v171);
      v172 = sub_1C43FE99C();
      (v82)(v172);
    }

    else
    {
      LODWORD(v588) = sub_1C43FBEC0();
      v82 = *v593;
      v169 = sub_1C4402CD0();
      (v82)(v169);
      v170 = sub_1C43FE99C();
      (v82)(v170);

      if ((v588 & 1) == 0)
      {
        sub_1C440962C(&v609);
        goto LABEL_62;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    if ((v173 & 1) == 0)
    {
      v174 = *(v66 + 2);
      sub_1C44093D0();
      sub_1C44225D8();
    }

    v175 = *(v66 + 3);
    if (*(v66 + 2) >= v175 >> 1)
    {
      sub_1C43FCFE8(v175);
      sub_1C4434354();
    }

    v85 = v607;
    v176 = v608;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    v178 = *(v177 + 64);
    MEMORY[0x1EEE9AC00](v179);
    sub_1C43FBCC4();
    v181 = sub_1C441D054(v180);
    v182(v181);
    sub_1C4441354();
    sub_1C44FDC24(v183, v184, v185, v186, v176);
    sub_1C440962C(&v606);
    sub_1C44225D8();
LABEL_62:
    sub_1C441F174();
    ++v162;
  }

  MEMORY[0x1EEE9AC00](v187);
  sub_1C4411530();
  *(v188 - 16) = v576;
  sub_1C449DBA4();
  v82 = v585;
  sub_1C4501330();
  v585 = v189;
  sub_1C4495DB4(&v610);
  sub_1C4441A64(MEMORY[0x1E69E7CC0]);
  sub_1C443F454();
  v191 = *(v190 - 256);
  v192 = v586;
  if (v82)
  {
    while (1)
    {
      sub_1C442E860(v191, &v609);
      sub_1C4409678(&v609, v612);
      sub_1C43FD258();
      sub_1C4EFF7F8();
      sub_1C4EFE428();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v193);
      v85 = v192;
      sub_1C44356A8();
      sub_1C4F01578();
      sub_1C441B628();
      sub_1C4F01578();
      v194 = *(&v606 + 1);
      sub_1C44151A4();
      if (v109 && v194 == v192)
      {
        break;
      }

      v196 = sub_1C43FBEC0();
      sub_1C443EFE4();
      v197 = *v192;
      v198 = sub_1C43FE99C();
      v197(v198);
      v199 = sub_1C445BE44(&v612);
      v197(v199);
      v192 = v586;

      if (v196)
      {
        goto LABEL_71;
      }

      sub_1C440962C(&v609);
LABEL_76:
      v191 += 40;
      if (!--v82)
      {
        goto LABEL_77;
      }
    }

    v200 = *v593;
    v201 = sub_1C43FE99C();
    (v200)(v201);
    v202 = sub_1C43FD7E0();
    (v200)(v202);

LABEL_71:
    sub_1C441B1B0();
    v203 = v590;
    v204 = swift_isUniquelyReferenced_nonNull_native();
    v595 = v203;
    if ((v204 & 1) == 0)
    {
      v205 = *(v203 + 16);
      sub_1C44093D0();
      v203 = v595;
    }

    v206 = *(v203 + 24);
    if (*(v203 + 16) >= v206 >> 1)
    {
      sub_1C43FCFE8(v206);
      sub_1C4434354();
    }

    v85 = v607;
    v207 = v608;
    sub_1C442AA80();
    sub_1C43FCE64();
    v209 = *(v208 + 64);
    MEMORY[0x1EEE9AC00](v210);
    sub_1C43FBCC4();
    v212 = sub_1C441D054(v211);
    v213(v212);
    sub_1C4441354();
    sub_1C44FDC24(v214, v215, v216, v217, v207);
    sub_1C440962C(&v606);
    sub_1C4441A64(v595);
    goto LABEL_76;
  }

LABEL_77:
  v218 = 0;
  v219 = v590;
  v586 = *(v590 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  v591 = MEMORY[0x1E69E7CC0];
  v64 = v563;
  sub_1C445FEFC();
  while (v586 != v218)
  {
    if (v218 >= *(v219 + 16))
    {
      goto LABEL_281;
    }

    v588 = v220;
    sub_1C442E860(v220, &v609);
    sub_1C4409678(&v609, v612);
    sub_1C4EFF7C8();
    v221 = v581;
    sub_1C4EFEBD8();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v222);
    sub_1C443E488();
    sub_1C442AD44();
    sub_1C4F01578();
    v85 = v221;
    sub_1C4F01578();
    v223 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v223 == v221)
    {
      sub_1C440C878();
      v228 = sub_1C44158DC();
      (v82)(v228);
      v229 = sub_1C43FE99C();
      (v82)(v229);
    }

    else
    {
      sub_1C4435D5C();
      v225 = sub_1C4F02938();
      sub_1C440C878();
      v226 = sub_1C44158DC();
      (v82)(v226);
      v227 = sub_1C43FE99C();
      (v82)(v227);

      if ((v225 & 1) == 0)
      {
        sub_1C440962C(&v609);
        sub_1C445FEFC();
        v219 = v590;
        goto LABEL_92;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    v219 = v590;
    if ((v230 & 1) == 0)
    {
      v231 = *(v66 + 2);
      sub_1C44093D0();
      sub_1C44225D8();
    }

    sub_1C445FEFC();
    v232 = *(v66 + 3);
    if (*(v66 + 2) >= v232 >> 1)
    {
      sub_1C43FCFE8(v232);
      sub_1C4434354();
    }

    v85 = v607;
    v233 = v608;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    v235 = *(v234 + 64);
    MEMORY[0x1EEE9AC00](v236);
    sub_1C43FBCC4();
    v238 = sub_1C441D054(v237);
    v239(v238);
    sub_1C4441354();
    sub_1C44FDC24(v240, v241, v242, v243, v233);
    sub_1C440962C(&v606);
    sub_1C44225D8();
LABEL_92:
    v220 = v588 + 40;
    ++v218;
  }

  v602[0] = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v244);
  sub_1C4411530();
  *(v245 - 16) = v602;
  *(v245 - 8) = v576;
  v246 = sub_1C449DBA4();
  v82 = v584;
  sub_1C4501B9C(v246, v247, v248);
  sub_1C4495DB4(&v610);
  v609 = v585;
  v85 = &v609;
  v585 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45057E4(v585);
  sub_1C45058D8();
  sub_1C4414724();
  sub_1C4EFCA48();
  sub_1C443F454();
  v250 = *(v249 - 256);
  v251 = v582;
  if (v82)
  {
    while (1)
    {
      sub_1C442E860(v250, &v609);
      sub_1C4409678(&v609, v612);
      sub_1C445087C(&v607);
      sub_1C4404044();
      sub_1C4EFF7F8();
      sub_1C4EFECF8();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v252);
      sub_1C441B628();
      sub_1C4F01578();
      v85 = v251;
      sub_1C4F01578();
      v253 = *(&v606 + 1);
      sub_1C44151A4();
      if (v109 && v253 == v251)
      {
        break;
      }

      v255 = sub_1C43FBEC0();
      sub_1C444B440();
      v66 = *v64;
      v256 = sub_1C43FD7E0();
      (v66)(v256);
      v257 = sub_1C43FE99C();
      (v66)(v257);

      v64 = v591;
      if (v255)
      {
        goto LABEL_101;
      }

      sub_1C440962C(&v609);
LABEL_106:
      v250 += 40;
      if (!--v82)
      {
        goto LABEL_107;
      }
    }

    sub_1C444B440();
    v258 = *v64;
    v259 = sub_1C43FD7E0();
    (v258)(v259);
    v260 = sub_1C43FE99C();
    (v258)(v260);

    v64 = v591;
LABEL_101:
    sub_1C441B1B0();
    v261 = swift_isUniquelyReferenced_nonNull_native();
    v595 = v64;
    if ((v261 & 1) == 0)
    {
      v262 = *(v64 + 16);
      sub_1C44093D0();
      v64 = v595;
    }

    v263 = *(v64 + 24);
    if (*(v64 + 16) >= v263 >> 1)
    {
      sub_1C43FCFE8(v263);
      sub_1C4434354();
    }

    sub_1C440CE1C();
    sub_1C44307D4();
    sub_1C43FCE64();
    v265 = *(v264 + 64);
    MEMORY[0x1EEE9AC00](v266);
    sub_1C43FBCC4();
    v268 = sub_1C445C2B0(v267);
    v269(v268);
    v270 = sub_1C4404044();
    sub_1C44FDC24(v270, v271, v272, v64, v251);
    sub_1C440962C(&v606);
    sub_1C4423DA8();
    v591 = *(v273 - 256);
    goto LABEL_106;
  }

LABEL_107:
  v274 = 0;
  v586 = *(sub_1C441C660() + 16);
  v275 = MEMORY[0x1E69E7CC0];
  v590 = MEMORY[0x1E69E7CC0];
  sub_1C44554D8();
  while (v586 != v274)
  {
    if (v274 >= *(v276 + 16))
    {
      goto LABEL_282;
    }

    v588 = v277;
    sub_1C442E860(v277, &v609);
    sub_1C4409678(&v609, v612);
    sub_1C4404DC8();
    sub_1C4EFF7C8();
    sub_1C4415B50(&v604);
    sub_1C4EFEA38();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v278);
    sub_1C441B628();
    sub_1C4F01578();
    v85 = v250;
    sub_1C4F01578();
    v66 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v66 == v250)
    {
      sub_1C440C878();
      v283 = sub_1C440BB4C();
      (v82)(v283);
      v284 = sub_1C43FE99C();
      (v82)(v284);
    }

    else
    {
      sub_1C4441354();
      v280 = sub_1C4F02938();
      sub_1C440C878();
      v281 = sub_1C440BB4C();
      (v82)(v281);
      v282 = sub_1C43FE99C();
      (v82)(v282);

      if ((v280 & 1) == 0)
      {
        sub_1C440962C(&v609);
        sub_1C441C660();
        sub_1C44554D8();
        goto LABEL_122;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    v595 = v275;
    sub_1C44554D8();
    if ((v285 & 1) == 0)
    {
      v286 = *(v275 + 16);
      sub_1C44093D0();
      sub_1C4424DDC();
    }

    sub_1C4414024();
    if (v288)
    {
      sub_1C43FCFE8(v287);
      sub_1C4434354();
    }

    v85 = v607;
    v275 = v608;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    v290 = *(v289 + 64);
    MEMORY[0x1EEE9AC00](v291);
    sub_1C43FBCC4();
    v293 = sub_1C4405530(v292);
    v294(v293);
    sub_1C4435D5C();
    sub_1C44FDC24(v295, v296, v297, v298, v275);
    sub_1C440962C(&v606);
    sub_1C4424DDC();
    v276 = sub_1C441C660();
LABEL_122:
    v277 = v588 + 40;
    ++v274;
  }

  v64 = &v554;
  v601 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v299);
  sub_1C4411530();
  sub_1C4461DD4(v300);
  v301 = sub_1C447F674();
  v302 = v584;
  sub_1C4501B9C(v301, v303, v304);
  v588 = v302;

  v586 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44FDF08();
  sub_1C4414724();
  sub_1C4EFC9A8();
  sub_1C443F454();
  v306 = *(v305 - 256);
  if (v302)
  {
    while (1)
    {
      sub_1C442E860(v306, &v609);
      sub_1C4409678(&v609, v612);
      sub_1C441615C(&v605);
      sub_1C4404044();
      sub_1C4EFF7F8();
      sub_1C4EFE2F8();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v307);
      sub_1C442AD44();
      sub_1C4F01578();
      v85 = v250;
      sub_1C4F01578();
      v308 = *(&v606 + 1);
      sub_1C44151A4();
      if (v109 && v308 == v250)
      {
        break;
      }

      v310 = sub_1C43FBEC0();
      v250 = v302;
      sub_1C443EFE4();
      v66 = off_1EDDFCCA8;
      off_1EDDFCCA8();
      v311 = sub_1C4402CD0();
      (v66)(v311);

      if (v310)
      {
        goto LABEL_131;
      }

      sub_1C440962C(&v609);
LABEL_136:
      sub_1C44554D8();
      v306 += 5;
      if (!--v302)
      {
        goto LABEL_137;
      }
    }

    v66 = v593;
    v312 = *v593;
    v313 = sub_1C440BB4C();
    (v312)(v313);
    v314 = sub_1C4402CD0();
    (v312)(v314);

LABEL_131:
    sub_1C441B1B0();
    sub_1C441DF34();
    v315 = swift_isUniquelyReferenced_nonNull_native();
    v595 = v64;
    if ((v315 & 1) == 0)
    {
      v316 = *(v64 + 16);
      sub_1C44093D0();
      v64 = v595;
    }

    v317 = *(v64 + 24);
    if (*(v64 + 16) >= v317 >> 1)
    {
      sub_1C43FCFE8(v317);
      sub_1C4434354();
    }

    v85 = v607;
    v250 = v608;
    sub_1C442AA80();
    sub_1C44307D4();
    sub_1C43FCE64();
    v319 = *(v318 + 64);
    MEMORY[0x1EEE9AC00](v320);
    sub_1C43FBCC4();
    v322 = sub_1C445C2B0(v321);
    v323(v322);
    v324 = sub_1C4404044();
    sub_1C44FDC24(v324, v325, v326, v85, v250);
    sub_1C440962C(&v606);
    sub_1C4423DA8();
    sub_1C4441A64(*(v327 - 256));
    goto LABEL_136;
  }

LABEL_137:
  v328 = 0;
  sub_1C441DF34();
  v589 = *(v64 + 16);
  v329 = v64 + 32;
  v330 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v82 = v583;
    if (v589 == v328)
    {
      break;
    }

    if (v328 >= *(v64 + 16))
    {
      goto LABEL_283;
    }

    sub_1C442EE30(v329);
    sub_1C4409678(&v609, v612);
    sub_1C441615C(&v603);
    sub_1C4404DC8();
    sub_1C4EFF7C8();
    sub_1C4EFE848();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v331);
    v85 = v64;
    sub_1C44356A8();
    sub_1C4F01578();
    sub_1C445EB3C();
    sub_1C4F01578();
    v66 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v66 == v64)
    {
      sub_1C4405930();
      v337 = *v306;
      v338 = sub_1C4404084();
      v337(v338);
      v339 = sub_1C4402CD0();
      v337(v339);
    }

    else
    {
      sub_1C4441354();
      v333 = sub_1C4F02938();
      sub_1C4405930();
      v334 = *v306;
      v335 = sub_1C4404084();
      v334(v335);
      v336 = sub_1C4402CD0();
      v334(v336);

      if ((v333 & 1) == 0)
      {
        sub_1C440962C(&v609);
        sub_1C441DF34();
        goto LABEL_152;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    v595 = v330;
    sub_1C441DF34();
    if ((v340 & 1) == 0)
    {
      v341 = *(v330 + 16);
      sub_1C44093D0();
      sub_1C4424DDC();
    }

    sub_1C4414024();
    if (v288)
    {
      sub_1C43FCFE8(v342);
      sub_1C4434354();
    }

    v85 = v607;
    v330 = v608;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    v344 = *(v343 + 64);
    MEMORY[0x1EEE9AC00](v345);
    sub_1C43FBCC4();
    v347 = sub_1C4405530(v346);
    v348(v347);
    sub_1C4435D5C();
    sub_1C44FDC24(v349, v350, v351, v352, v330);
    sub_1C440962C(&v606);
    sub_1C4424DDC();
LABEL_152:
    v329 = sub_1C441F174();
    ++v328;
  }

  v64 = &v554;
  v84 = MEMORY[0x1E69E7CC0];
  v599 = MEMORY[0x1E69E7CC0];
  v600 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v353);
  *(&v554 - 4) = &v600;
  *(&v554 - 3) = v576;
  *(&v554 - 2) = &v599;
  v354 = sub_1C447F674();
  v355 = v588;
  sub_1C4501B9C(v354, v356, v357);
  v588 = v355;

  v584 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45008A8();
  sub_1C4414724();
  sub_1C4EFCA28();
  v598 = v84;
  sub_1C443F454();
  v359 = *(v358 - 256);
  v360 = v578;
  while (1)
  {
    v591 = v84;
    if (!v355)
    {
      break;
    }

    v590 = v359;
    sub_1C442E860(v359, &v609);
    sub_1C4480460();
    sub_1C4415B50(&v603 + 8);
    sub_1C4EFF7F8();
    sub_1C4EFE648();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v361);
    sub_1C4416BFC();
    v362 = v592;
    sub_1C4F01578();
    v85 = v360;
    sub_1C4F01578();
    v363 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v363 == v360)
    {
      sub_1C4405930();
      v64 = *v306;
      (*v306)(v360, v362);
      v368 = sub_1C43FFE24();
      (v64)(v368);
    }

    else
    {
      v64 = sub_1C43FBEC0();
      sub_1C4405930();
      v365 = *v306;
      (*v306)(v360, v362);
      v366 = sub_1C43FFE24();
      v365(v366);

      if ((v64 & 1) == 0)
      {
        sub_1C440962C(&v609);
        v367 = &a10;
        goto LABEL_167;
      }
    }

    sub_1C441B1B0();
    v369 = v591;
    v370 = swift_isUniquelyReferenced_nonNull_native();
    v595 = v369;
    if ((v370 & 1) == 0)
    {
      v371 = *(v369 + 16);
      sub_1C44093D0();
      v369 = v595;
    }

    v373 = *(v369 + 16);
    v372 = *(v369 + 24);
    if (v373 >= v372 >> 1)
    {
      sub_1C43FCFE8(v372);
      sub_1C4434354();
    }

    sub_1C440CE1C();
    sub_1C44307D4();
    sub_1C43FCE64();
    v375 = *(v374 + 64);
    MEMORY[0x1EEE9AC00](v376);
    v378 = sub_1C440B8C0(v377, v554);
    v379(v378);
    sub_1C4460504(v373, v380, &v595);
    sub_1C440962C(&v606);
    sub_1C4423DA8();
LABEL_167:
    v84 = *(v367 - 32);
    v359 = v590 + 40;
    --v355;
  }

  v381 = 0;
  v589 = *(v591 + 16);
  v382 = v591 + 32;
  v383 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v82 = v579;
  while (v589 != v381)
  {
    if (v381 >= *(v591 + 16))
    {
      goto LABEL_284;
    }

    v590 = v382;
    sub_1C442E860(v382, &v609);
    sub_1C4480460();
    sub_1C4EFF7C8();
    sub_1C4EFEA68();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v384);
    sub_1C4416BFC();
    sub_1C44356A8();
    sub_1C4F01578();
    v85 = v82;
    sub_1C43FD024();
    sub_1C4F01578();
    v385 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v385 == v82)
    {
      v64 = *v593;
      v390 = sub_1C440BB4C();
      (v64)(v390);
      v391 = sub_1C44158DC();
      (v64)(v391);
    }

    else
    {
      sub_1C4435D5C();
      v64 = sub_1C4F02938();
      sub_1C4405930();
      v387 = *v306;
      v388 = sub_1C440BB4C();
      v387(v388);
      v389 = sub_1C44158DC();
      v387(v389);

      if ((v64 & 1) == 0)
      {
        sub_1C440962C(&v609);
        v383 = MEMORY[0x1E69E7CC0];
        goto LABEL_183;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    v383 = MEMORY[0x1E69E7CC0];
    if ((v392 & 1) == 0)
    {
      v393 = *(v66 + 2);
      sub_1C44093D0();
      sub_1C44225D8();
    }

    v395 = *(v66 + 2);
    v394 = *(v66 + 3);
    if (v395 >= v394 >> 1)
    {
      sub_1C43FCFE8(v394);
      sub_1C4434354();
    }

    sub_1C440CE1C();
    sub_1C446C1B0();
    sub_1C43FCE64();
    v397 = *(v396 + 64);
    MEMORY[0x1EEE9AC00](v398);
    sub_1C43FBCC4();
    v400 = sub_1C441D054(v399);
    v401(v400);
    sub_1C44FDC24(v395, v66, &v595, v64, v85);
    sub_1C440962C(&v606);
    sub_1C44225D8();
LABEL_183:
    v382 = v590 + 40;
    ++v381;
    v82 = v579;
  }

  sub_1C441C660();

  v64 = &v554;
  MEMORY[0x1EEE9AC00](v402);
  sub_1C4411530();
  sub_1C4461DD4(v403);
  v404 = sub_1C449DBA4();
  v82 = v588;
  sub_1C4501B9C(v404, v405, v406);
  sub_1C4495DB4(&v614);
  v589 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45008D8();
  sub_1C4414724();
  sub_1C4EFC9D8();
  v597 = v383;
  v407 = v574;
  sub_1C445FEFC();
  v409 = v580;
  if (v407)
  {
    while (1)
    {
      sub_1C442EE30(v408);
      v410 = v613;
      sub_1C4480460();
      v411 = v577;
      sub_1C4400118();
      sub_1C4EFF7F8();
      sub_1C4EFED78();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v412);
      sub_1C4416BFC();
      sub_1C43FD024();
      sub_1C4F01578();
      v85 = v409;
      sub_1C43FD024();
      sub_1C4F01578();
      v82 = v84;
      v413 = *(&v606 + 1);
      sub_1C44151A4();
      if (v109 && v413 == v85)
      {
        break;
      }

      sub_1C4441354();
      LODWORD(v590) = sub_1C4F02938();
      v64 = v383;
      sub_1C443EFE4();
      v415 = off_1EDDFCCA8;
      v416 = sub_1C4405814();
      (v415)(v416);
      (v415)(v411, v84);

      if (v590)
      {
        goto LABEL_192;
      }

      sub_1C440962C(&v609);
LABEL_197:
      v409 = v580;
      v408 = sub_1C441F174();
      v407 = (v407 - 1);
      if (!v407)
      {
        goto LABEL_198;
      }
    }

    sub_1C4405930();
    v64 = *v410;
    v417 = sub_1C4405814();
    (v64)(v417);
    (v64)(v411, v84);

LABEL_192:
    sub_1C441B1B0();
    v418 = swift_isUniquelyReferenced_nonNull_native();
    v595 = v383;
    if ((v418 & 1) == 0)
    {
      v419 = *(v383 + 16);
      sub_1C44093D0();
      v383 = v595;
    }

    v421 = *(v383 + 16);
    v420 = *(v383 + 24);
    if (v421 >= v420 >> 1)
    {
      sub_1C43FCFE8(v420);
      sub_1C4434354();
    }

    sub_1C440CE1C();
    sub_1C43FCE64();
    v423 = *(v422 + 64);
    MEMORY[0x1EEE9AC00](v424);
    v426 = sub_1C440B8C0(v425, v554);
    v427(v426);
    sub_1C4460504(v421, v428, &v595);
    sub_1C440962C(&v606);
    v383 = v595;
    goto LABEL_197;
  }

LABEL_198:
  sub_1C4441A64(*(v383 + 16));
  v66 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C44135DC();
    if (v430 == v407)
    {
      break;
    }

    if (v407 >= *(v383 + 16))
    {
      goto LABEL_285;
    }

    sub_1C442EE30(v429);
    v431 = v613;
    sub_1C4480460();
    sub_1C4415B50(&v601);
    sub_1C4400118();
    sub_1C4EFF7C8();
    sub_1C445087C(v602);
    sub_1C4EFE728();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v432);
    sub_1C4416BFC();
    sub_1C43FD024();
    sub_1C4F01578();
    v85 = v431;
    sub_1C43FD024();
    sub_1C4F01578();
    v433 = *(&v606 + 1);
    sub_1C44151A4();
    if (v109 && v433 == v431)
    {
      v82 = v593;
      v64 = *v593;
      v438 = sub_1C43FE99C();
      (v64)(v438);
      v439 = sub_1C440BB4C();
      (v64)(v439);
    }

    else
    {
      sub_1C4435D5C();
      v64 = sub_1C4F02938();
      v82 = v593;
      v435 = v431;
      v436 = *v593;
      (*v593)(v435, v84);
      v437 = sub_1C440BB4C();
      (v436)(v437);

      if ((v64 & 1) == 0)
      {
        sub_1C440962C(&v609);
        sub_1C445FEFC();
        goto LABEL_213;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    if ((v440 & 1) == 0)
    {
      v441 = *(v66 + 2);
      sub_1C44093D0();
      sub_1C44225D8();
    }

    sub_1C445FEFC();
    v443 = *(v66 + 2);
    v442 = *(v66 + 3);
    if (v443 >= v442 >> 1)
    {
      sub_1C43FCFE8(v442);
      sub_1C4434354();
    }

    sub_1C440CE1C();
    sub_1C44307D4();
    sub_1C43FCE64();
    v445 = *(v444 + 64);
    MEMORY[0x1EEE9AC00](v446);
    v448 = sub_1C440B8C0(v447, v554);
    v449(v448);
    sub_1C4460504(v443, v450, &v595);
    sub_1C440962C(&v606);
    sub_1C44225D8();
LABEL_213:
    sub_1C441F174();
    v407 = (v407 + 1);
  }

  MEMORY[0x1EEE9AC00](v451);
  sub_1C4411530();
  sub_1C4461DD4(v452);
  v453 = sub_1C449DBA4();
  sub_1C4501B9C(v453, v454, v455);
  sub_1C4495DB4(&v609);
  v456 = v597;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4414724();
  sub_1C4EFCA38();
  v457 = v574;
  v588 = v456;
  if (!v574)
  {
LABEL_243:
    v84 = v575;
    goto LABEL_277;
  }

  v458 = v587;
  do
  {
    sub_1C442E860(v458, &v603);
    v459 = sub_1C447FB48();
    sub_1C4409678(v459, v460);
    sub_1C4415B50(&v598);
    sub_1C4400118();
    sub_1C4EFF7F8();
    sub_1C441615C(&v599);
    sub_1C4EFE308();
    sub_1C440832C();
    v462 = sub_1C44FDE5C(&off_1EDDFCCA8, v461);
    sub_1C4F01578();
    sub_1C442AD44();
    v591 = v462;
    sub_1C4F01578();
    v463 = v596;
    sub_1C444AE6C();
    if (v109 && v463 == v383)
    {
      v465 = 1;
    }

    else
    {
      v465 = sub_1C43FBEC0();
    }

    v383 = *v593;
    v466 = sub_1C445BE44(&v599);
    (v383)(v466);
    v467 = sub_1C445BE44(&v598);
    (v383)(v467);

    if (v465)
    {
      v468 = sub_1C447FB48();
      sub_1C4409678(v468, v469);
      sub_1C4400118();
      if (sub_1C4EFF7D8() == 0x707954726564726FLL && v470 == 0xE900000000000065)
      {

LABEL_245:
        sub_1C441D670(&v603, &v606);
        v488 = sub_1C441D670(&v606, &v609);
        v489 = MEMORY[0x1E69E7CC0];
        v490 = v555;
        if (!v574)
        {
LABEL_259:
          MEMORY[0x1EEE9AC00](v488);
          sub_1C4411530();
          *(v507 - 16) = &v609;
          v508 = sub_1C447F674();
          sub_1C44F46C0(v508, v509, v510, v511, v512, v513, v514, v515, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565);
          sub_1C444C448();
          sub_1C4D52BA4(v516, v517);
          goto LABEL_276;
        }

        while (2)
        {
          sub_1C44BBD00();
          sub_1C4409678(&v606, v607);
          sub_1C4400118();
          sub_1C4EFF7F8();
          sub_1C4EFE308();
          sub_1C445EB3C();
          sub_1C4F01578();
          sub_1C43FD024();
          sub_1C4F01578();
          sub_1C448E140();
          if (v109 && v458 == v490)
          {
            sub_1C43FD7E0();
            sub_1C444B440();
            (v383)();
            v494 = sub_1C4404084();
            (v383)(v494);
          }

          else
          {
            sub_1C4441354();
            v492 = sub_1C4F02938();
            sub_1C43FD7E0();
            sub_1C4405930();
            (v383)();
            v493 = sub_1C4404084();
            (v383)(v493);

            if ((v492 & 1) == 0)
            {
              sub_1C440962C(&v606);
              goto LABEL_258;
            }
          }

          sub_1C441D670(&v606, &v603);
          v495 = swift_isUniquelyReferenced_nonNull_native();
          v594[0] = v489;
          if ((v495 & 1) == 0)
          {
            sub_1C4460BA4();
            sub_1C4460924();
          }

          sub_1C4414024();
          if (v288)
          {
            sub_1C43FCFE8(v496);
            sub_1C44F4214();
          }

          v497 = sub_1C447FB48();
          sub_1C4418280(v497, v498);
          sub_1C446C1B0();
          sub_1C43FCE64();
          v500 = *(v499 + 64);
          MEMORY[0x1EEE9AC00](v501);
          v503 = sub_1C440B8C0(v502, v554);
          v504(v503);
          sub_1C4460504(v458, v505, v594);
          sub_1C440962C(&v603);
          sub_1C4460924();
LABEL_258:
          sub_1C44508D0();
          if (!v506)
          {
            goto LABEL_259;
          }

          continue;
        }
      }

      v472 = sub_1C4F02938();

      if (v472)
      {
        goto LABEL_245;
      }
    }

    sub_1C440962C(&v603);
    v458 += 40;
    v457 = (v457 - 1);
  }

  while (v457);
  sub_1C4441A64(0x80000001C4FC7900);
  v473 = v587;
  v474 = v574;
  while (2)
  {
    sub_1C442E860(v473, &v603);
    v475 = sub_1C447FB48();
    v477 = sub_1C4409678(v475, v476);
    sub_1C4EFF7F8();
    sub_1C445087C(&v591);
    sub_1C4EFE308();
    sub_1C442AD44();
    sub_1C4F01578();
    sub_1C441B628();
    sub_1C4F01578();
    v478 = v596;
    sub_1C444AE6C();
    if (v109 && v478 == v477)
    {
      sub_1C43FE99C();
      sub_1C4405930();
      (v383)();
      v482 = sub_1C4402CD0();
      (v383)(v482);
    }

    else
    {
      sub_1C4435D5C();
      v480 = sub_1C4F02938();
      sub_1C43FE99C();
      sub_1C4405930();
      (v383)();
      v481 = sub_1C4402CD0();
      (v383)(v481);

      if ((v480 & 1) == 0)
      {
        goto LABEL_242;
      }
    }

    v483 = sub_1C447FB48();
    sub_1C4409678(v483, v484);
    sub_1C4400118();
    if (sub_1C4EFF7D8() != 0xD000000000000016 || v590 != v485)
    {
      v487 = sub_1C4F02938();

      if (v487)
      {
        goto LABEL_261;
      }

LABEL_242:
      sub_1C440962C(&v603);
      v473 += 40;
      v474 = (v474 - 1);
      if (!v474)
      {
        goto LABEL_243;
      }

      continue;
    }

    break;
  }

LABEL_261:
  sub_1C441D670(&v603, &v606);
  v518 = sub_1C441D670(&v606, &v609);
  v519 = MEMORY[0x1E69E7CC0];
  v520 = v554;
  if (v574)
  {
    while (2)
    {
      sub_1C44BBD00();
      sub_1C4409678(&v606, v607);
      sub_1C4400118();
      sub_1C4EFF7F8();
      sub_1C4EFE308();
      sub_1C445EB3C();
      sub_1C4F01578();
      sub_1C43FD024();
      sub_1C4F01578();
      sub_1C448E140();
      if (v109 && v473 == v520)
      {
        sub_1C43FD7E0();
        sub_1C444B440();
        (v383)();
        v524 = sub_1C4404084();
        (v383)(v524);
      }

      else
      {
        sub_1C4441354();
        v522 = sub_1C4F02938();
        sub_1C43FD7E0();
        sub_1C4405930();
        (v383)();
        v523 = sub_1C4404084();
        (v383)(v523);

        if ((v522 & 1) == 0)
        {
          sub_1C440962C(&v606);
          goto LABEL_274;
        }
      }

      sub_1C441D670(&v606, &v603);
      v525 = swift_isUniquelyReferenced_nonNull_native();
      v594[0] = v519;
      if ((v525 & 1) == 0)
      {
        sub_1C4460BA4();
        sub_1C4460924();
      }

      sub_1C4414024();
      if (v288)
      {
        sub_1C43FCFE8(v526);
        sub_1C44F4214();
      }

      v527 = sub_1C447FB48();
      sub_1C4418280(v527, v528);
      sub_1C446C1B0();
      sub_1C43FCE64();
      v530 = *(v529 + 64);
      MEMORY[0x1EEE9AC00](v531);
      v533 = sub_1C440B8C0(v532, v554);
      v534(v533);
      sub_1C4460504(v473, v535, v594);
      sub_1C440962C(&v603);
      sub_1C4460924();
LABEL_274:
      sub_1C44508D0();
      if (!v536)
      {
        break;
      }

      continue;
    }
  }

  MEMORY[0x1EEE9AC00](v518);
  sub_1C4411530();
  *(v537 - 16) = &v609;
  v538 = sub_1C447F674();
  sub_1C44F46C0(v538, v539, v540, v541, v542, v543, v544, v545, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565);
  sub_1C444C448();
  sub_1C4D52F58(v546, v547);
LABEL_276:

  sub_1C440962C(&v609);
LABEL_277:
  v548 = sub_1C445BE44(&v579);
  v549 = v559;
  (v556)(v548);

  (*(v558 + 8))(v84, v549);
  v550 = *MEMORY[0x1E69E9840];
  sub_1C43FE9F0();
}

void sub_1C45057E4(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4501BF0(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v8 = *(sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310) - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C4505908()
{
  sub_1C442F0C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_1C441172C();
    if (v14 != v15)
    {
      sub_1C442B904();
      if (v14)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v13 = v0;
  }

  v16 = *(v9 + 16);
  v17 = v1(v16, v13);
  v18 = *(sub_1C456902C(v7, v5) - 8);
  if (v11)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v3(v9 + v19, v16, v17 + v19);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

void sub_1C4505A00()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C44269E8();
    sub_1C4505908();
    *v0 = v4;
  }
}

double sub_1C4505A5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C442E860(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t GraphStore.loadGraphTriples(subject:)()
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C441FC38(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C4505B18@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v4 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-1] - v7;
  type metadata accessor for GraphTriple(0);
  v15[3] = &type metadata for FusedTripleColumn;
  v15[4] = sub_1C45021B8();
  LOBYTE(v15[0]) = 0;
  v9 = sub_1C4EFF0C8();
  v14[3] = v9;
  v14[4] = sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  v10 = sub_1C4422F90(v14);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  v16[3] = sub_1C4EFB298();
  v16[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v16);
  sub_1C4EFBB28();
  sub_1C44967E0(v14);
  sub_1C440962C(v15);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v16);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v5 + 8))(v8, v4);
  if (!v2)
  {
    *v17 = v11;
  }

  return result;
}

unint64_t sub_1C4505DC4()
{
  result = qword_1EDDFD860;
  if (!qword_1EDDFD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD860);
  }

  return result;
}

unint64_t sub_1C4505E18(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x73656372756F73;
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4505F5C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s10ViewConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
        JUMPOUT(0x1C4506070);
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4506098()
{
  result = qword_1EDDFF270;
  if (!qword_1EDDFF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF270);
  }

  return result;
}

uint64_t _s10ViewConfigV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C45061D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C445EDA0();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManualBundleCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C450628C()
{
  result = qword_1EDDFF578;
  if (!qword_1EDDFF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF578);
  }

  return result;
}

uint64_t sub_1C45062E0(uint64_t result, int a2, int a3)
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

unint64_t sub_1C4506320()
{
  result = qword_1EDDFF5C8;
  if (!qword_1EDDFF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5C8);
  }

  return result;
}

unint64_t sub_1C4506374()
{
  result = qword_1EDDFF598;
  if (!qword_1EDDFF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF598);
  }

  return result;
}

uint64_t sub_1C45063C8(uint64_t result, int a2, int a3)
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

_BYTE *_s14CustomViewTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        JUMPOUT(0x1C45064C8);
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

void sub_1C45064F0()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C5E50, &qword_1C4F68BE0);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4440AD4();
  v12 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C45069D4();
  sub_1C4460B4C();
  if (v0)
  {
    sub_1C440962C(v3);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C5E58, &qword_1C4F68BE8);
    sub_1C4CCBCAC();
    sub_1C442D7EC();
    v24 = v26[0];
    sub_1C456902C(&qword_1EC0C5E60, &qword_1C4F68BF0);
    sub_1C4CCBD30();
    sub_1C442D7EC();
    v23 = v26[0];
    sub_1C456902C(&qword_1EC0C5E68, &qword_1C4F68BF8);
    sub_1C4CCBDB4();
    sub_1C442D7EC();
    sub_1C456902C(&qword_1EC0C5E70, &qword_1C4F68C00);
    sub_1C4CCBE38();
    sub_1C442D7EC();
    sub_1C456902C(&qword_1EC0C5E78, &qword_1C4F68C08);
    sub_1C4CCBEBC();
    sub_1C442D7EC();
    v22 = v26[0];
    sub_1C456902C(&qword_1EC0C5E80, &qword_1C4F68C10);
    sub_1C4CCBF40();
    sub_1C442D7EC();
    v13 = v26[0];
    sub_1C456902C(&qword_1EC0C5E88, &qword_1C4F68C18);
    LOBYTE(v25[0]) = 6;
    sub_1C4CCBFC4();
    sub_1C442D7EC();
    v14 = v26[0];
    sub_1C440EE90(7);
    v15 = sub_1C4F02618();
    v21 = v16;
    (*(v8 + 8))(v1, v6);
    v25[0] = v26[0];
    v25[1] = v26[0];
    sub_1C440C668();
    v25[2] = v18;
    v25[3] = v17;
    v25[4] = v26[0];
    v25[5] = v26[0];
    v25[6] = v26[0];
    v25[7] = v15;
    v25[8] = v21;
    sub_1C4508D08(v25, v26);
    sub_1C440962C(v3);
    v26[0] = v24;
    v26[1] = v23;
    sub_1C440C668();
    v26[2] = v20;
    v26[3] = v19;
    v26[4] = v22;
    v26[5] = v13;
    v26[6] = v14;
    v26[7] = v15;
    v26[8] = v21;
    sub_1C4508D64(v26);
    memcpy(v5, v25, 0x48uLL);
  }

  sub_1C43FBC80();
}

unint64_t sub_1C45069D4()
{
  result = qword_1EDDFF950;
  if (!qword_1EDDFF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF950);
  }

  return result;
}

uint64_t sub_1C4506A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EDDFF5F0, _s10ViewConfigVMa);

  return MEMORY[0x1EEE09B50](a1, a2, a3, v6);
}

void sub_1C4506AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  v32 = v31;
  v33 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4440AD4();
  v37 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v153 - v41;
  v43 = sub_1C456902C(&qword_1EC0C5638, &qword_1C4F627D0);
  sub_1C43FFAE0(v43, &a10);
  v45 = v44;
  v47 = *(v46 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4418964();
  v164 = _s10ViewConfigVMa(0);
  v49 = sub_1C43FBCE0(v164);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  sub_1C43FCE30(v53 - v52);
  v54 = v30[3];
  v55 = v30[4];
  v163 = v30;
  sub_1C4417F50(v30, v54);
  sub_1C4507AF4();
  v161 = v24;
  sub_1C4F02BC8();
  if (v25)
  {
    sub_1C448E0F4();
    LODWORD(v42) = 0;
    v56 = 0;
    LODWORD(v30) = 0;
    v45 = 0;
    v154 = 0;
    v155 = 0;
    sub_1C441A960();
  }

  else
  {
    v160 = v42;
    v159 = v26;
    v158 = v32;
    LOBYTE(v174[0]) = 0;
    sub_1C4CB03B0(&a10);
    sub_1C44BBF0C();
    sub_1C4F02678();
    sub_1C440EE84();
    *v24 = v75;
    *(v24 + 8) = v76;
    LOBYTE(v174[0]) = 1;
    v56 = v45;
    *(v24 + 16) = sub_1C4F02618();
    *(v24 + 24) = v77;
    LOBYTE(v170) = 2;
    sub_1C4506098();
    sub_1C441BDEC();
    sub_1C4F026C8();
    *(v24 + 32) = v174[0];
    LOBYTE(v174[0]) = 3;
    *(v24 + 33) = sub_1C4F02628();
    LOBYTE(v170) = 4;
    sub_1C450628C();
    sub_1C441BDEC();
    sub_1C4F02658();
    v78 = v174[1];
    *(v24 + 40) = v174[0];
    *(v24 + 56) = v78;
    LOBYTE(v170) = 5;
    sub_1C4506320();
    sub_1C441BDEC();
    sub_1C4F02658();
    *(v24 + 72) = *&v174[0];
    LOBYTE(v170) = 6;
    sub_1C4507F94();
    sub_1C441BDEC();
    sub_1C4F02658();
    v79 = v174[2];
    v80 = v174[1];
    *(v24 + 80) = v174[0];
    *(v24 + 96) = v80;
    *(v24 + 112) = v79;
    LOBYTE(v170) = 7;
    sub_1C4506374();
    sub_1C441BDEC();
    sub_1C4F02658();
    *(v24 + 120) = v174[0];
    LOBYTE(v170) = 8;
    sub_1C4508038();
    sub_1C441BDEC();
    sub_1C4F02658();
    sub_1C448E0F4();
    *(v24 + 136) = v174[0];
    LOBYTE(v170) = 9;
    sub_1C450808C();
    sub_1C440F064();
    v81 = v166;
    sub_1C4F02658();
    sub_1C448E0F4();
    if (!v81)
    {
      sub_1C4485DC0();
      *(v85 + 144) = v84;
      LOBYTE(v170) = 10;
      sub_1C45080E0();
      sub_1C440F064();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C445A9FC();
      *(v86 + 152) = v87;
      LOBYTE(v170) = 11;
      sub_1C4508134();
      sub_1C440F064();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C445A9FC();
      *(v88 + 168) = v89;
      *(v88 + 184) = v90;
      LOBYTE(v170) = 12;
      sub_1C4508188();
      sub_1C440F064();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C445A9FC();
      *(v91 + 200) = v92;
      *(v91 + 216) = v93;
      a14 = 13;
      sub_1C45081DC();
      sub_1C440E974();
      sub_1C4F026C8();
      sub_1C448E0F4();
      sub_1C445A9FC();
      memcpy((v94 + 232), v174, 0x48uLL);
      _s6ConfigVMa();
      LOBYTE(v170) = 14;
      sub_1C4440E2C();
      sub_1C44902F4(v95);
      sub_1C443559C();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      v97 = *(v96 + 72);
      sub_1C4485DC0();
      sub_1C44CDA7C();
      a13 = 15;
      sub_1C4508E14();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      v99 = *(v98 + 76);
      sub_1C4485DC0();
      v102 = (v101 + v100);
      v103 = v171;
      *v102 = v170;
      v102[1] = v103;
      v104 = v173;
      v102[2] = v172;
      v102[3] = v104;
      sub_1C4F001E8();
      LOBYTE(v167) = 16;
      sub_1C447CC7C();
      sub_1C44902F4(v105);
      sub_1C443559C();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      v107 = *(v106 + 80);
      sub_1C4485DC0();
      sub_1C44CDA7C();
      a12 = 17;
      sub_1C4509390();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      v109 = *(v108 + 84);
      sub_1C44BBCD4(v110);
      sub_1C441B0D4(18);
      sub_1C448E0F4();
      sub_1C44167A4();
      v112 = *(v111 + 88);
      sub_1C4485DC0();
      *(v115 + v114) = v113;
      sub_1C441B0D4(19);
      sub_1C448E0F4();
      sub_1C44167A4();
      v117 = *(v116 + 92);
      sub_1C4485DC0();
      *(v120 + v119) = v118;
      sub_1C441B0D4(20);
      sub_1C448E0F4();
      sub_1C44167A4();
      v122 = *(v121 + 96);
      sub_1C4485DC0();
      *(v125 + v124) = v123;
      a12 = 21;
      sub_1C45093E4();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4428EF4();
      v127 = v165 + *(v126 + 100);
      *v127 = v167;
      *(v127 + 16) = v128;
      a12 = 22;
      sub_1C4509478();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      v130 = *(v129 + 104);
      sub_1C44BBCD4(v131);
      a12 = 23;
      sub_1C45094CC();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      v133 = *(v132 + 108);
      sub_1C44BBCD4(v134);
      a12 = 24;
      sub_1C4509520();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      v136 = *(v135 + 112);
      sub_1C4485DC0();
      *(v138 + v137) = v139;
      a12 = 25;
      sub_1C45095B0();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      v141 = *(v140 + 116);
      sub_1C44BBCD4(v142);
      a12 = 26;
      sub_1C4442E20();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4428EF4();
      *(v165 + *(v143 + 120)) = v144;
      a12 = 27;
      sub_1C45096F8();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      v145 = sub_1C440DAE8();
      v146(v145);
      sub_1C4428EF4();
      v148 = v165;
      v149 = v165 + *(v147 + 124);
      v150 = v168;
      *v149 = v167;
      *(v149 + 16) = v150;
      *(v149 + 32) = v169;
      *(v149 + 48) = v151;
      sub_1C440B6DC();
      sub_1C45097F0();
      sub_1C44A14E8();
      sub_1C4408084();
      sub_1C443C22C(v148, v152);
      sub_1C441EE54();
      goto LABEL_37;
    }

    v82 = sub_1C440DAE8();
    v83(v82);
    v154 = 0;
    v155 = 0;
    sub_1C441A960();
    sub_1C44092B0();
  }

  sub_1C440EE84();
  sub_1C44A14E8();
  sub_1C447E26C();
  if (v42)
  {
    v57 = *(v24 + 8);
  }

  if (v56)
  {
    v65 = *(v24 + 56);
    v66 = *(v24 + 64);
    sub_1C4CA8D48(*(v24 + 40), *(v24 + 48));
  }

  if (v30)
  {
    sub_1C4C10CD0(*(v24 + 80), *(v24 + 88), *(v24 + 96), *(v24 + 104), *(v24 + 112));
    sub_1C441EE54();
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_8:
    v58 = *(v24 + 128);

    v59 = v164;
    goto LABEL_9;
  }

  sub_1C441EE54();
  if (v45)
  {
    goto LABEL_8;
  }

LABEL_25:
  v59 = v164;
LABEL_9:
  if (v154)
  {
    v60 = *(v24 + 160);

    if ((v155 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v155)
  {
LABEL_11:
    if (v156)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

  v67 = *(v24 + 184);
  v68 = *(v24 + 192);
  sub_1C45BBFB4(*(v24 + 168), *(v24 + 176));
  if (v156)
  {
LABEL_12:
    v61 = *(v24 + 216);
    v62 = *(v24 + 224);
    sub_1C45BBFB4(*(v24 + 200), *(v24 + 208));
    if ((v157 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v157)
  {
LABEL_13:
    if (a10)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  memcpy(v174, (v24 + 232), 0x48uLL);
  sub_1C4508D64(v174);
  if (a10)
  {
LABEL_14:
    sub_1C4420C3C(v24 + v59[18], &qword_1EC0C44F8, &qword_1C4F594B8);
    if ((v158 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v158)
  {
LABEL_15:
    if (v159)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v69 = (v24 + v59[19]);
  v70 = v69[1];
  v174[0] = *v69;
  v174[1] = v70;
  v71 = v69[3];
  v174[2] = v69[2];
  v174[3] = v71;
  sub_1C4420C3C(v174, &qword_1EC0C5640, &qword_1C4F627D8);
  if (v159)
  {
LABEL_16:
    sub_1C4420C3C(v24 + v59[20], &qword_1EC0BDCB0, &unk_1C4F54830);
    if ((v160 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v160)
  {
LABEL_17:
    if (v161)
    {
      goto LABEL_18;
    }

LABEL_34:
    if (!v162)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_33:
  v72 = *(v24 + v59[21]);

  if ((v161 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  v63 = (v24 + v59[25]);
  v64 = v63[2];
  sub_1C45E8E50(*v63, v63[1]);
  if ((v162 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_35:
  v73 = *(v24 + v59[26]);

LABEL_19:
  if (v163)
  {
    v74 = *(v24 + v59[29]);
  }

LABEL_37:
  sub_1C4403810();
  sub_1C43FBC80();
}

unint64_t sub_1C4507AF4()
{
  result = qword_1EDDFF620;
  if (!qword_1EDDFF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF620);
  }

  return result;
}

uint64_t sub_1C4507B68()
{

  return sub_1C441D828(v0, v1, (v2 - 176));
}

uint64_t sub_1C4507BA8()
{
  v2 = *(v0 - 128);

  return sub_1C4EFF028();
}

unint64_t sub_1C4507BE4(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x614E79636167656CLL;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x7641737961776C61;
      break;
    case 4:
      result = 0x656D6F6962;
      break;
    case 5:
      result = 0x4C5153656D6F6962;
      break;
    case 6:
      result = 0x4365727574616566;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x69566D6F74737563;
      break;
    case 9:
      result = 0x656D67655373746BLL;
      break;
    case 10:
      result = 0x6E6564614373746BLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 7106931;
      break;
    case 13:
      result = 0x657461647075;
      break;
    case 14:
      result = 0x7463616669747261;
      break;
    case 15:
      result = 0x746567726174;
      break;
    case 16:
      result = 0x4665727574616566;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0x536F546574697277;
      break;
    case 19:
      result = 0xD000000000000023;
      break;
    case 20:
      result = 0x456E4F7261656C63;
      break;
    case 21:
      result = 0x6E69646465626D65;
      break;
    case 22:
      result = 0x4244726F74636576;
      break;
    case 23:
      result = 0x6F44656C706F6570;
      break;
    case 24:
      result = 0x6552797469746E65;
      break;
    case 25:
      result = 0x6154797469746E65;
      break;
    case 26:
      result = 0x6570795466666964;
      break;
    case 27:
      result = 0x4F64657461647075;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4507F94()
{
  result = qword_1EDDFF5D8;
  if (!qword_1EDDFF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5D8);
  }

  return result;
}

uint64_t sub_1C4507FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1C4508038()
{
  result = qword_1EDDFF398;
  if (!qword_1EDDFF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF398);
  }

  return result;
}

unint64_t sub_1C450808C()
{
  result = qword_1EDDFF580;
  if (!qword_1EDDFF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF580);
  }

  return result;
}

unint64_t sub_1C45080E0()
{
  result = qword_1EDDFF590;
  if (!qword_1EDDFF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF590);
  }

  return result;
}

unint64_t sub_1C4508134()
{
  result = qword_1EDDFF268;
  if (!qword_1EDDFF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF268);
  }

  return result;
}

unint64_t sub_1C4508188()
{
  result = qword_1EDDFF258;
  if (!qword_1EDDFF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF258);
  }

  return result;
}

unint64_t sub_1C45081DC()
{
  result = qword_1EDDFF938;
  if (!qword_1EDDFF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF938);
  }

  return result;
}

void sub_1C4508230(void *a1@<X8>)
{
  sub_1C45064F0();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

unint64_t sub_1C4508284(char a1)
{
  result = 0x73694C656D6F6962;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7473694C77656976;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x70756F7267;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

_BYTE *sub_1C45083BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C4508478);
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t _s24IntelligencePlatformCore18TransportationTypeOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 8);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

double sub_1C4508530@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4508574();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_1C4508574()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C5E38, &qword_1C4F68BC8);
  sub_1C43FCDF8(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v0[4];
  sub_1C4417F50(v0, v0[3]);
  sub_1C45089AC();
  sub_1C440261C();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C441D9A4();
    sub_1C440389C();
    sub_1C4F026C8();
    sub_1C44080B4(1);
    v9 = sub_1C4F02678();
    v11 = v10;
    v28 = v9;
    v44 = v33[0];
    sub_1C44080B4(2);
    v12 = sub_1C4F02628();
    sub_1C44080B4(3);
    v27 = sub_1C4F02628();
    sub_1C44080B4(4);
    v26 = sub_1C4F02628();
    sub_1C44080B4(5);
    v25 = sub_1C4F02628();
    sub_1C44080B4(6);
    v24 = sub_1C4F02628();
    sub_1C456902C(&qword_1EC0C5E40, &qword_1C4F68BD0);
    LOBYTE(v29) = 7;
    sub_1C4CCBAFC();
    sub_1C440389C();
    sub_1C4F02658();
    v22 = v12;
    v13 = v33[0];
    sub_1C44080B4(8);
    v23 = sub_1C4F02628();
    sub_1C44080B4(9);
    v21 = sub_1C4F02628();
    sub_1C440389C();
    v14 = sub_1C4F02618();
    v15 = sub_1C43FBF04();
    v16(v15);
    LOBYTE(v29) = v44;
    *(&v29 + 1) = v28;
    *&v30 = v11;
    BYTE8(v30) = v22;
    BYTE9(v30) = v27;
    BYTE10(v30) = v26;
    BYTE11(v30) = v25;
    BYTE12(v30) = v24;
    *&v31 = v13;
    BYTE8(v31) = v23;
    BYTE9(v31) = v21;
    sub_1C440C668();
    *&v32 = v14;
    *(&v32 + 1) = v17;
    sub_1C445CD7C(&v29, v33);
    sub_1C440962C(v0);
    LOBYTE(v33[0]) = v44;
    v33[1] = v28;
    v33[2] = v11;
    v34 = v22;
    v35 = v27;
    v36 = v26;
    v37 = v25;
    v38 = v24;
    v39 = v13;
    v40 = v23;
    v41 = v21;
    sub_1C440C668();
    v42 = v14;
    v43 = v18;
    sub_1C445DA1C(v33);
    v19 = v30;
    *v3 = v29;
    v3[1] = v19;
    v20 = v32;
    v3[2] = v31;
    v3[3] = v20;
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4508944(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void *sub_1C4508964(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  result[2] = v20;
  result[3] = a16;
  result[4] = a15;
  result[5] = a17;
  result[6] = a20;
  return result;
}

void *sub_1C4508984()
{

  return memcpy((v1 + 16), (v0 + 24), 0x48uLL);
}

unint64_t sub_1C45089AC()
{
  result = qword_1EDDFC698[0];
  if (!qword_1EDDFC698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFC698);
  }

  return result;
}

unint64_t sub_1C4508A08(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x6D6165727473;
      break;
    case 2:
      result = 0x4F646C6975626572;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    case 4:
      result = 0x6F69725068676968;
      break;
    case 5:
      result = 0x4C6564756C637865;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x56646C6975626572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x75517265746C6966;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1C4508BB0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C4508C6CLL);
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

__n128 sub_1C4508CF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C4508DB8()
{
  sub_1C4404078();
  v4 = sub_1C456902C(v2, v3);
  sub_1C43FBCE0(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

unint64_t sub_1C4508E14()
{
  result = qword_1EDDFF070;
  if (!qword_1EDDFF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF070);
  }

  return result;
}

double sub_1C4508E68@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C4508EAC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1C4508EAC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C4690, &qword_1C4F5B008);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4509158();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v37[0]) = 0;
  sub_1C4405804();
  v14 = sub_1C4F02678();
  v32 = v15;
  LOBYTE(v37[0]) = 1;
  sub_1C4405804();
  v16 = sub_1C4F02678();
  v31 = v17;
  v29 = v16;
  LOBYTE(v37[0]) = 2;
  sub_1C4405804();
  v28 = sub_1C4F02678();
  v30 = v18;
  v38 = 3;
  v19 = sub_1C4F02678();
  v21 = v20;
  (*(v7 + 8))(v12, v5);
  v22 = v32;
  *&v33 = v14;
  *(&v33 + 1) = v32;
  v24 = v29;
  v23 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  sub_1C4509328(&v33, v37);
  sub_1C440962C(a1);
  v37[0] = v14;
  v37[1] = v22;
  v37[2] = v24;
  v37[3] = v31;
  v37[4] = v28;
  v37[5] = v23;
  v37[6] = v19;
  v37[7] = v21;
  result = sub_1C4509360(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

unint64_t sub_1C4509158()
{
  result = qword_1EDDFD550[0];
  if (!qword_1EDDFD550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFD550);
  }

  return result;
}

uint64_t sub_1C45091B4(char a1)
{
  result = 0x6573616261746164;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x746567726174;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s6TargetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1C4509300);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4509390()
{
  result = qword_1EDDFF538;
  if (!qword_1EDDFF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF538);
  }

  return result;
}

unint64_t sub_1C45093E4()
{
  result = qword_1EDDFF5A8;
  if (!qword_1EDDFF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5A8);
  }

  return result;
}

uint64_t sub_1C4509440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

unint64_t sub_1C4509478()
{
  result = qword_1EDDFF5B8;
  if (!qword_1EDDFF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5B8);
  }

  return result;
}

unint64_t sub_1C45094CC()
{
  result = qword_1EDDFF558;
  if (!qword_1EDDFF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF558);
  }

  return result;
}

unint64_t sub_1C4509520()
{
  result = qword_1EDDFF548;
  if (!qword_1EDDFF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF548);
  }

  return result;
}

uint64_t sub_1C4509574(uint64_t result, int a2, int a3)
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

unint64_t sub_1C45095B0()
{
  result = qword_1EDDFF568;
  if (!qword_1EDDFF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF568);
  }

  return result;
}

_BYTE *sub_1C4509604(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C45096D0);
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

unint64_t sub_1C45096F8()
{
  result = qword_1EDDFF908;
  if (!qword_1EDDFF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF908);
  }

  return result;
}

uint64_t sub_1C450974C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C4509798(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C45097F0()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C4509848(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  return sub_1C4F00228();
}

void sub_1C45098B8()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C45098F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      v10 = sub_1C4416050();
      v12 = v11(v10);
      if (v3)
      {

        goto LABEL_16;
      }

      sub_1C441E354(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28, v29);
      if (v20)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v4 > *(v8 + 24) >> 1)
      {
        sub_1C4401750();
        sub_1C44FEE5C();
        v8 = v21;
      }

      if (*(v6 + 16))
      {
        sub_1C4414A30();
        if (v23 != v20)
        {
          goto LABEL_19;
        }

        v4 = v8 + 40 * v22;
        sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
        sub_1C4426B00();

        if (v5)
        {
          v24 = *(v8 + 16);
          v20 = __OFADD__(v24, v5);
          v25 = v24 + v5;
          if (v20)
          {
            goto LABEL_20;
          }

          *(v8 + 16) = v25;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      v9 += 40;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1C44030B0();
  }
}

void sub_1C4509A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v176 = v26;
  v27 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v28 = sub_1C43FBD18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v167 - v32);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v167 - v36;
  v38 = type metadata accessor for Source();
  v39 = sub_1C43FBCE0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v180 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  v182 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  v183 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  v181 = v50;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  v184 = v52;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v167 - v54;
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD230();
  sub_1C43FCE30(v57);
  v58 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  sub_1C43FBD18(v58);
  v60 = *(v59 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBC74();
  v177 = v62;
  v63 = sub_1C43FBE44();
  v171 = type metadata accessor for EntityTriple(v63);
  v64 = sub_1C43FBCE0(v171);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBCC4();
  sub_1C43FCE30(v68 - v67);
  v69 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  sub_1C43FBD18(v69);
  v71 = *(v70 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBC74();
  v74 = sub_1C43FD2C8(v73);
  v75 = type metadata accessor for ConstructionGraphTriple(v74);
  v76 = sub_1C43FBCE0(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v80 - v79);
  p_info = sub_1C4EFC808();
  v82 = sub_1C43FCDF8(p_info);
  v178 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v167 - v88;
  sub_1C446C964(v25, &v187, &qword_1EC0C0F38, &qword_1C4F41A90);
  if (!v188)
  {
    sub_1C4420C3C(&v187, &qword_1EC0C0F38, &qword_1C4F41A90);
    sub_1C4EFC7F8();
LABEL_113:
    sub_1C43FE9F0();
    return;
  }

  v179 = v20;
  sub_1C441D670(&v187, v189);
  *&v187 = MEMORY[0x1E69E7CC0];
  sub_1C444018C();
  sub_1C44FDE5C(v90, v91);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  v185 = v89;
  sub_1C4F020C8();
  if (qword_1EC0B7150 != -1)
  {
LABEL_126:
    swift_once();
  }

  v186 = qword_1EC152C48;
  sub_1C442E860(v189, &v187);
  sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
  v92 = v174;
  v93 = swift_dynamicCast();
  v94 = v177;
  if (v93)
  {
    sub_1C43FBD94();
    sub_1C440BAA8(v95, v96, v97, v75);
    v98 = v170;
    sub_1C4485774(v92, v170);
    v186 = *(v98 + *(v75 + 36));
    sub_1C44501B8();
    goto LABEL_15;
  }

  sub_1C440BAA8(v92, 1, 1, v75);
  sub_1C4420C3C(v92, &unk_1EC0BCAE0, &unk_1C4F142A0);
  sub_1C442E860(v189, &v187);
  v99 = v171;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C440BAA8(v94, 1, 1, v99);
    sub_1C4420C3C(v94, &qword_1EC0BA590, &qword_1C4F1F430);
    goto LABEL_15;
  }

  sub_1C43FBD94();
  sub_1C440BAA8(v100, v101, v102, v99);
  sub_1C44032D8();
  v103 = v168;
  sub_1C4485774(v94, v168);
  v104 = *(v99 + 36);
  sub_1C43FD90C();
  v106 = v169;
  sub_1C44719E4(v103 + v105, v169);
  sub_1C4420A30();
  sub_1C44DBDB4(v103, v107);
  v108 = *(v106 + 16);
  sub_1C441AB50();
  sub_1C44DBDB4(v106, v109);
  v110 = v108 - 1;
  if (!__OFSUB__(v108, 1))
  {
    if (v110 <= 0x40)
    {
      if (v108 == 65)
      {
        v111 = 0;
      }

      else
      {
        v111 = 1 << v110;
      }

      v186 = v111;
    }

    else
    {
      v186 = 0;
    }

LABEL_15:
    v177 = p_info;
    if (qword_1EDDFD288 != -1)
    {
      swift_once();
    }

    v112 = sub_1C442B738(v38, &qword_1EDDFD290);
    p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
    v113 = 1;
    while (1)
    {
      if (qword_1EDDFA6A8 != -1)
      {
        swift_once();
      }

      if (qword_1EDE2DCF0 < v113)
      {
        break;
      }

      sub_1C449E530(v113, v37);
      sub_1C43FC0FC(v37);
      if (v118)
      {
        sub_1C4420C3C(v37, &unk_1EC0C0760, &qword_1C4F170D0);
        v114 = __OFADD__(v113++, 1);
        if (v114)
        {
          goto LABEL_115;
        }
      }

      else
      {
        sub_1C43FD90C();
        sub_1C4485774(v37, v184);
        if (__OFSUB__(v113, 1))
        {
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
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v114 = __OFADD__(v113++, 1);
        if (v114)
        {
          goto LABEL_116;
        }

        sub_1C4405EEC();
        if (!v118 & v116)
        {
          v115 = 0;
        }

        sub_1C4418D6C(v115);
        if (v117 != v114)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v184, v120);
        }

        else
        {
          sub_1C43FD90C();
          sub_1C4485774(v184, v55);
          v118 = *v55 == *v112 && *(v55 + 8) == v112[1];
          if (v118)
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v55, v121);
LABEL_39:
            sub_1C4415B50(&a18);
            sub_1C4EFC7F8();
            v122 = sub_1C43FE990();
            sub_1C450181C(v122, v123);
            v124 = sub_1C4451468();
            (v75)(v124);
            v125 = sub_1C43FE990();
            (v75)(v125);
            break;
          }

          v75 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v55, v119);
          if (v75)
          {
            goto LABEL_39;
          }
        }
      }
    }

    if (qword_1EDDFD1F0 != -1)
    {
      sub_1C441BA74();
      swift_once();
    }

    v126 = sub_1C442B738(v38, &qword_1EDDFD1F8);
    v37 = 1;
    p_info = &unk_1EC0C0760;
    v127 = 1;
    v55 = &qword_1C4F170D0;
    while (qword_1EDE2DCF0 >= v127)
    {
      sub_1C449E530(v127, v21);
      sub_1C43FC0FC(v21);
      if (v118)
      {
        sub_1C4420C3C(v21, &unk_1EC0C0760, &qword_1C4F170D0);
        v114 = __OFADD__(v127++, 1);
        if (v114)
        {
          goto LABEL_118;
        }
      }

      else
      {
        sub_1C43FD90C();
        v75 = v183;
        sub_1C4485774(v21, v183);
        v128 = v127 - 1;
        if (__OFSUB__(v127, 1))
        {
          goto LABEL_117;
        }

        v114 = __OFADD__(v127++, 1);
        if (v114)
        {
          goto LABEL_119;
        }

        v129 = v128 > 0x40;
        if (v128 >= 0x40)
        {
          v130 = 0;
        }

        else
        {
          v130 = 1 << v128;
        }

        if (v129)
        {
          v130 = 0;
        }

        sub_1C4418D6C(v130);
        if (v117 != v114)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v75, v135);
        }

        else
        {
          sub_1C43FD90C();
          v131 = v75;
          v75 = v181;
          sub_1C4485774(v131, v181);
          if (*v75 == *v126 && *(v75 + 8) == v126[1])
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v75, v136);
LABEL_65:
            sub_1C4415B50(&a18);
            sub_1C4EFC7D8();
            v137 = sub_1C43FE990();
            sub_1C450181C(v137, v138);
            v139 = sub_1C4451468();
            (v75)(v139);
            v140 = sub_1C43FE990();
            (v75)(v140);
            break;
          }

          v75 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v134, v133);
          if (v75)
          {
            goto LABEL_65;
          }
        }
      }
    }

    if (qword_1EDDFD1A0 != -1)
    {
      sub_1C441BA88();
      swift_once();
    }

    v141 = sub_1C442B738(v38, &qword_1EDDFD1A8);
    v75 = &unk_1EC0C0760;
    p_info = 1;
    v37 = v173;
    v21 = v179;
    while (qword_1EDE2DCF0 >= p_info)
    {
      sub_1C449E530(p_info, v33);
      sub_1C43FC0FC(v33);
      if (v118)
      {
        sub_1C4420C3C(v33, &unk_1EC0C0760, &qword_1C4F170D0);
        v114 = __OFADD__(p_info++, 1);
        if (v114)
        {
          goto LABEL_121;
        }
      }

      else
      {
        sub_1C43FD90C();
        v55 = v182;
        sub_1C4485774(v33, v182);
        if (__OFSUB__(p_info, 1))
        {
          goto LABEL_120;
        }

        v114 = __OFADD__(p_info++, 1);
        if (v114)
        {
          goto LABEL_122;
        }

        sub_1C4405EEC();
        if (!v118 & v116)
        {
          v142 = 0;
        }

        sub_1C4418D6C(v142);
        if (v117 != v114)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v55, v147);
        }

        else
        {
          sub_1C43FD90C();
          v143 = sub_1C43FD258();
          sub_1C4485774(v143, v144);
          if (*v21 == *v141 && v21[1] == v141[1])
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v21, v148);
LABEL_88:
            sub_1C445087C(&a18);
            sub_1C4EFC7C8();
            v149 = sub_1C43FE5F8();
            sub_1C450181C(v149, v150);
            v151 = *(v178 + 8);
            v151(&unk_1EC0C0760, v177);
            v152 = sub_1C43FE5F8();
            (v151)(v152);
            break;
          }

          v55 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v21, v146);
          if (v55)
          {
            goto LABEL_88;
          }
        }
      }
    }

    if (qword_1EDDFD1C8 != -1)
    {
      swift_once();
    }

    v33 = sub_1C442B738(v38, &qword_1EDDFD1D0);
    v75 = 1;
    p_info = &qword_1C4F170D0;
    v21 = v172;
    v55 = v180;
    while (1)
    {
      v153 = v185;
      if (qword_1EDE2DCF0 < v75)
      {
        break;
      }

      sub_1C449E530(v75, v21);
      sub_1C43FC0FC(v21);
      if (v118)
      {
        sub_1C4420C3C(v21, &unk_1EC0C0760, &qword_1C4F170D0);
        v114 = __OFADD__(v75++, 1);
        if (v114)
        {
          goto LABEL_124;
        }
      }

      else
      {
        sub_1C43FD90C();
        v154 = sub_1C4404DC8();
        sub_1C4485774(v154, v155);
        if (__OFSUB__(v75, 1))
        {
          goto LABEL_123;
        }

        v114 = __OFADD__(v75++, 1);
        if (v114)
        {
          goto LABEL_125;
        }

        sub_1C4405EEC();
        if (!v118 & v116)
        {
          v156 = 0;
        }

        sub_1C4418D6C(v156);
        if (v117 != v114)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v37, v160);
        }

        else
        {
          sub_1C43FD90C();
          sub_1C4485774(v37, v55);
          if (*v55 == *v33 && *(v55 + 8) == v33[1])
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v55, v161);
LABEL_111:
            v162 = v175;
            sub_1C4EFC7E8();
            v163 = sub_1C4405814();
            v153 = v185;
            sub_1C450181C(v163, v164);
            v165 = *(v178 + 8);
            v165(v162, v177);
            v166 = sub_1C4405814();
            (v165)(v166);
            break;
          }

          v158 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v55, v159);
          if (v158)
          {
            goto LABEL_111;
          }
        }
      }
    }

    sub_1C440962C(v189);
    (*(v178 + 32))(v176, v153, v177);
    goto LABEL_113;
  }

  __break(1u);
}

uint64_t sub_1C450A6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C450244C();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

unint64_t sub_1C450A734@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C4505E18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void ProgressTokens.init(from:)()
{
  sub_1C43FE96C();
  sub_1C445C188(v2);
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44017FC();
  v7 = sub_1C4EFD548();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v31 = sub_1C456902C(&qword_1EC0BE118, &qword_1C4F32648);
  sub_1C43FCDF8(v31);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD1B4();
  v30 = type metadata accessor for ProgressTokens(0);
  v16 = sub_1C43FBCE0(v30);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v32 = v19;
  v20 = v0[4];
  v33 = v0;
  sub_1C4417F50(v0, v0[3]);
  sub_1C450B0DC();
  sub_1C44807A0();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_1C44004E0();
    sub_1C4490F60(v21, v22);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    v23 = sub_1C43FE6D8();
    v24(v23);
    sub_1C449DBF8();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C443DF60();
    sub_1C441FBB8();
    sub_1C4490F60(v25, v26);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C44D3FBC();
    sub_1C444C16C();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F02658();
    *(v32 + v12[7]) = v34;
    sub_1C4433D1C(4);
    *(v32 + v12[8]) = sub_1C4F026B8();
    sub_1C4433D1C(5);
    sub_1C44414E0();
    v27 = sub_1C4F02688();
    v28 = sub_1C4415A30();
    v29(v28);
    *(v32 + v12[9]) = v27 & 1;
    sub_1C449EEE8();
    sub_1C440962C(v33);
    sub_1C43FBC98();
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C450ABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF7A68, type metadata accessor for ProgressTokens);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C450ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  sub_1C43FE96C();
  v78 = v22;
  v24 = v23;
  v74 = v25;
  v75 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  sub_1C43FBD18(v35);
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v71 - v39;
  sub_1C450B008(v34, &v71 - v39);
  v41 = type metadata accessor for TranslatedEntityTriple(0);
  if (sub_1C44157D4(v40, 1, v41) == 1)
  {
    goto LABEL_22;
  }

  v42 = &v40[*(v41 + 40)];
  v43 = *v42;
  v44 = *(v42 + 1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4407B7C();
  sub_1C44BCC4C(v40, v45);
  sub_1C44B8118();
  if (v21)
  {

LABEL_5:
    sub_1C43FBC98();
    sub_1C43FBC80();
    return;
  }

  v72 = v24;
  v73 = v43;
  v46 = type metadata accessor for StandardEntityFusion();
  v47 = *(v30 + *(v46 + 28));
  v48 = sub_1C44E7D44();
  swift_beginAccess();
  v49 = *v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v50 = v78(v34, v32, v47, v48, v49);
  v79 = v51;
  v53 = v52;

  v54 = v30 + *(v46 + 24);
  v40 = v79;
  v55 = a21(v54, v73, v44, v50, v79, v53, v32);
  v57 = v56;
  v59 = v58;

  if (v55)
  {
    v60 = *(v55 + 16);
  }

  else
  {
    v60 = 0;
  }

  v61 = v75;
  v62 = __OFADD__(*v74, v60);
  v63 = *v74 + v60;
  if (v62)
  {
    __break(1u);
  }

  else
  {
    *v74 = v63;
    if (v57)
    {
      v64 = *(v57 + 16);
    }

    else
    {
      v64 = 0;
    }

    v62 = __OFADD__(*v61, v64);
    v65 = *v61 + v64;
    if (!v62)
    {
      *v61 = v65;
      if (v59)
      {
        v66 = *(v59 + 16);
      }

      else
      {
        v66 = 0;
      }

      v62 = __OFADD__(*v72, v66);
      v67 = *v72 + v66;
      if (!v62)
      {
        *v72 = v67;
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1C4420C3C(v40, &unk_1EC0BC9C8, &qword_1C4F29B58);
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1C4F02248();
  v76 = type metadata accessor for StandardEntityFusion();
  sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
  v68 = sub_1C4F01198();
  v70 = v69;

  v76 = v68;
  v77 = v70;
  MEMORY[0x1C6940010](0xD00000000000002BLL, 0x80000001C4FB2840);
  sub_1C4B590A0();
  sub_1C4F024A8();
  __break(1u);
}

unint64_t sub_1C450B034()
{
  result = qword_1EDDFDA90;
  if (!qword_1EDDFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDA90);
  }

  return result;
}

unint64_t sub_1C450B0DC()
{
  result = qword_1EDDF7AB0;
  if (!qword_1EDDF7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7AB0);
  }

  return result;
}

uint64_t sub_1C450B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF7A70, type metadata accessor for ProgressTokens);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void ProgressTokens.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  v3 = sub_1C456902C(&qword_1EC0BE110, &qword_1C4F32640);
  sub_1C4403200(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C450B0DC();
  sub_1C440F61C();
  LOBYTE(v16) = 0;
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v7, v8);
  sub_1C44E76EC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    v9 = type metadata accessor for ProgressTokens(0);
    sub_1C4416AC4(v9);
    sub_1C442DF84();
    sub_1C4F027E8();
    sub_1C4867FD8();
    sub_1C441FBB8();
    sub_1C4490F60(v10, v11);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C44AE054();
    sub_1C442DF84();
    sub_1C4F02778();
    sub_1C441DFEC(v16, v17);
    v12 = *(v0 + *(v2 + 32));
    sub_1C4471CBC(4);
    sub_1C440D3E4();
    sub_1C4F027D8();
    v13 = *(v0 + *(v2 + 36));
    sub_1C4471CBC(5);
    sub_1C440D3E4();
    sub_1C4F027A8();
  }

  v14 = sub_1C43FF120();
  v15(v14);
  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C450B3C0(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 144);
  v4 = *(v1 - 184);
}

uint64_t sub_1C450B3D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 104) = result;
  return result;
}

void sub_1C450B420()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2E088);
  sub_1C43FCFC0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    sub_1C43FEC60();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 134218242;
    *(v13 + 4) = *(v9 + 16);

    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1C441D828(v6, v4, &v18);
    _os_log_impl(&dword_1C43F8000, v11, v12, "GraphStore: store: %ld %s records.", v13, 0x16u);
    sub_1C440962C(v14);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v16 = *(*(v7 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v15);
  v17[2] = v9;

  sub_1C446C37C(v2, v17);

  sub_1C43FE9F0();
}

uint64_t sub_1C450B640(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v25 = a5;
  v23 = a1;
  v26 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v24 = *(v26 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v22 - v9;
  v11 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  type metadata accessor for TranslatedEntityTriple(0);
  sub_1C44B95C0(&qword_1EDDF3A48, type metadata accessor for TranslatedEntityTriple);
  sub_1C4EFADF8();
  sub_1C4B4C078(v16, a3, a4, 0, 1, v18);
  v19 = *(v12 + 8);
  v19(v16, v11);
  type metadata accessor for GraphTriple(0);
  sub_1C44B95C0(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFADF8();
  sub_1C44B9974(v23, v18, v10, v25, v27, &unk_1EC0C0800, &qword_1C4F0F948, &qword_1EDDFCD10, &qword_1EDDFE870, &qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple, sub_1C450B954, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  (*(v24 + 8))(v10, v26);
  return (v19)(v18, v11);
}

uint64_t sub_1C450B954(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v66 = a4;
  v67 = a1;
  v70 = type metadata accessor for ExpiredGraphTriple(0);
  v7 = *(*(v70 - 1) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GraphTriple(0);
  v68 = *(v10 - 1);
  v11 = *(v68 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v59 - v21);
  v23 = v69;
  result = v67(a3, v66);
  if (!v23)
  {
    v66 = v17;
    v67 = v22;
    v65 = v26;
    v60 = result;
    v61 = v14;
    if (v25)
    {
      v27 = 0;
      v28 = *(v25 + 16);
      v63 = a5;
      v64 = v28;
      v29 = v66;
      v30 = v67;
      for (i = v25; ; v25 = i)
      {
        if (v64 == v27)
        {

          result = v65;
          goto LABEL_9;
        }

        if (v27 >= *(v25 + 16))
        {
          break;
        }

        v31 = v25 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
        v32 = *(v68 + 72);
        v69 = v27;
        sub_1C4471BAC(v31 + v32 * v27, v30);
        sub_1C4471BAC(v30, v20);
        v33 = sub_1C4EFF0C8();
        (*(*(v33 - 8) + 16))(v9, v20, v33);
        v34 = v10[5];
        v35 = v70[5];
        v36 = sub_1C4EFEEF8();
        v37 = *(*(v36 - 8) + 16);
        v37(&v9[v35], &v20[v34], v36);
        v38 = v10[6];
        v39 = v70[6];
        v40 = sub_1C4EFF8A8();
        (*(*(v40 - 8) + 16))(&v9[v39], &v20[v38], v40);
        v37(&v9[v70[7]], &v20[v10[7]], v36);
        v41 = &v20[v10[8]];
        v43 = *v41;
        v42 = *(v41 + 1);
        v44 = *&v20[v10[9]];
        v45 = v10[11];
        v46 = *&v20[v10[10]];
        v47 = *&v20[v45];
        v48 = *&v20[v45 + 8];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v49 = &v9[v70[8]];
        *v49 = v43;
        *(v49 + 1) = v42;
        *&v9[v70[9]] = v44;
        *&v9[v70[10]] = v46;
        v50 = &v9[v70[11]];
        *v50 = v47;
        *(v50 + 1) = v48;
        *&v9[v70[12]] = v51;
        sub_1C44B95C0(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple);
        sub_1C4EFB6C8();
        sub_1C44BCC4C(v9, type metadata accessor for ExpiredGraphTriple);
        sub_1C44B95C0(&qword_1EDDEBBC0, type metadata accessor for GraphTriple);
        sub_1C4EFBA98();
        sub_1C44BCC4C(v20, type metadata accessor for GraphTriple);
        v30 = v67;
        result = sub_1C44BCC4C(v67, type metadata accessor for GraphTriple);
        v27 = v69 + 1;
        v29 = v66;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    else
    {
      result = v65;
      v29 = v66;
LABEL_9:
      v52 = v60;
      v53 = v68;
      if (result)
      {
        v54 = 0;
        v55 = *(result + 16);
        while (v55 != v54)
        {
          if (v54 >= *(result + 16))
          {
            goto LABEL_23;
          }

          sub_1C4471BAC(result + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v54, v29);
          sub_1C44B95C0(&qword_1EDDEBBC0, type metadata accessor for GraphTriple);
          sub_1C4EFBA58();
          ++v54;
          sub_1C44BCC4C(v29, type metadata accessor for GraphTriple);
          result = v65;
        }
      }

      if (v52)
      {
        v56 = 0;
        v57 = *(v52 + 16);
        while (v57 != v56)
        {
          if (v56 >= *(v52 + 16))
          {
            goto LABEL_24;
          }

          v58 = v61;
          sub_1C4471BAC(v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56, v61);
          sub_1C44B95C0(&qword_1EDDEBBC8, type metadata accessor for GraphTriple);
          sub_1C4EFB6A8();
          ++v56;
          result = sub_1C44BCC4C(v58, type metadata accessor for GraphTriple);
        }
      }
    }
  }

  return result;
}