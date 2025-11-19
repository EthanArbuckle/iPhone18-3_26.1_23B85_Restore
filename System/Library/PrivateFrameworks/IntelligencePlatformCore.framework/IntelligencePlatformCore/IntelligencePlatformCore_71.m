uint64_t OntologyStore.__allocating_init(config:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  OntologyStore.init(config:)(a1);
  return v5;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateRangePair(predicateId:range:)(Swift::String predicateId, Swift::String range)
{
  v3 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v4 = sub_1C4A570F0(predicateId._countAndFlagsBits, predicateId._object, range._countAndFlagsBits, range._object);
  result.value._rawValue = v4;
  result.is_nil = v5;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateDomainPair(predicateId:domain:)(Swift::String predicateId, Swift::String domain)
{
  v3 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v4 = sub_1C4A56CF4(predicateId._countAndFlagsBits, predicateId._object, domain._countAndFlagsBits, domain._object);
  result.value._rawValue = v4;
  result.is_nil = v5;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadClasses(classID:)(Swift::String classID)
{
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v3 = sub_1C4A5512C(classID._countAndFlagsBits, classID._object);
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicates()()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v2 = sub_1C4A55968();
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1C4A6B394@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C4A6B3C0();
  *a1 = result;
  return result;
}

uint64_t *OntologyStore.init(config:)(uint64_t a1)
{
  v4 = *v1;
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config;
  sub_1C44098F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config);
  if (qword_1EDDFF220 != -1)
  {
    swift_once();
  }

  v6 = sub_1C44F7F70();
  sub_1C4467948(a1);
  if (v2)
  {
    sub_1C4467948(v1 + v5);
    v7 = *(*v1 + 48);
    v8 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db) = v6;
  }

  return v1;
}

uint64_t OntologyStore.deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);

  return v0;
}

uint64_t OntologyStore.__deallocating_deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicates(domains:)(Swift::OpaquePointer domains)
{
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v3 = sub_1C4A5755C(domains._rawValue);
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicate(predicateId:)(Swift::String predicateId)
{
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v3 = sub_1C4A559DC(predicateId._countAndFlagsBits, predicateId._object);
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateRange(predicateId:)(Swift::String predicateId)
{
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v3 = sub_1C4A56748(predicateId._countAndFlagsBits, predicateId._object);
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicates(domain:)(Swift::String domain)
{
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v3 = sub_1C4A56434(domain._countAndFlagsBits, domain._object);
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateDomain()()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v2 = sub_1C4A56120();
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t type metadata accessor for OntologyStore()
{
  result = qword_1EDDEAB70;
  if (!qword_1EDDEAB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A6B700()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C4A6B7DC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);

  v2 = sub_1C49A5640(sub_1C4A6B848, 0);

  return v2;
}

uint64_t sub_1C4A6B848@<X0>(void *a1@<X8>)
{
  sub_1C4A58360();
  sub_1C4A583B4();
  result = sub_1C4EFB388();
  if (!v1)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v26 = 0;
      v27 = a1;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1C459DBF8();
      v6 = v32;
      v25 = v4;
      v7 = (v4 + 72);
      do
      {
        v8 = *(v7 - 4);
        v28 = *(v7 - 5);
        v10 = *(v7 - 3);
        v9 = *(v7 - 2);
        v11 = *(v7 - 1);
        v12 = *v7;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1C4F02248();

        v29 = v10;
        *&v30 = v9;
        MEMORY[0x1C6940010](0x697461706D6F6320, 0xED00002820656C62);
        MEMORY[0x1C6940010](v11, v12);

        MEMORY[0x1C6940010](41, 0xE100000000000000);

        v13 = v10;
        *&v31 = v6;
        v14 = *(v6 + 16);
        if (v14 >= *(v6 + 24) >> 1)
        {
          sub_1C459DBF8();
        }

        v7 += 6;
        *(v6 + 16) = v14 + 1;
        v15 = (v6 + 32 * v14);
        v15[4] = v28;
        v15[5] = v8;
        v15[6] = v13;
        v15[7] = v9;
        --v5;
      }

      while (v5);

      a1 = v27;
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4812DDC(v6, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27, v28, v29, v30, v31, v33);
    v24 = v23;

    result = sub_1C4BA0544(v24);
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for OntologyTriple()
{
  result = qword_1EDDE95F8;
  if (!qword_1EDDE95F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A6BB08()
{
  sub_1C44327CC();
  v4 = v3;
  v5 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE400000000000000;
      v5 = 1819047270;
      break;
    case 2:
      v5 = sub_1C44076F0();
      break;
    case 3:
      v5 = sub_1C43FC708();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v1)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1819047270;
      break;
    case 2:
      sub_1C4417600();
      break;
    case 3:
      sub_1C440AFE0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v0 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1C4F02938();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1C4A6BD18(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1C4F02938() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1C4A6BD68(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C4F02938() ^ 1;
  }

  return v6 & 1;
}

BOOL sub_1C4A6BDB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37848(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BDD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37860(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BDF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37B60(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37B78(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE30(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37F44(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  v4 = sub_1C4B77F8C(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE70(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37B90(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE90(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37BA8(v2, v3);
  return sub_1C442D078(v4);
}

uint64_t sub_1C4A6BEEC()
{
  sub_1C44327CC();
  v3 = v2;
  v4 = v1;
  switch(v5)
  {
    case 1:
      v0 = 0xE400000000000000;
      v4 = 1819047270;
      break;
    case 2:
      v4 = sub_1C44076F0();
      break;
    case 3:
      v4 = sub_1C43FC708();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v3)
  {
    case 1:
      v6 = 0xE400000000000000;
      v1 = 1819047270;
      break;
    case 2:
      sub_1C4417600();
      break;
    case 3:
      sub_1C440AFE0();
      break;
    default:
      break;
  }

  if (v4 == v1 && v0 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1C4F02938();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1C4A6BFF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37F5C(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6C010(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37BC0(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6C030(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37BD8(v2, v3);
  return sub_1C442D078(v4);
}

unint64_t sub_1C4A6C050()
{
  v1 = v0;
  sub_1C4F02248();

  MEMORY[0x1C6940010](*v1, v1[1]);
  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  v2 = type metadata accessor for OntologyTriple();
  v3 = v2[5];
  sub_1C4EFEEF8();
  sub_1C441A11C();
  sub_1C4A6D1D8(v4, v5);
  v6 = sub_1C4F02858();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](0x273A69722027, 0xE600000000000000);
  MEMORY[0x1C6940010](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  v7 = v1 + v2[7];
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](0x273A6F2027, 0xE500000000000000);
  MEMORY[0x1C6940010](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](658141298, 0xE400000000000000);

  return 0xD000000000000013;
}

uint64_t sub_1C4A6C238(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for OntologyTriple();
  if ((sub_1C44DBB50(a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  sub_1C44033A8(v5[6]);
  v8 = v4 && v6 == v7;
  if (!v8 && (sub_1C4F02938() & 1) == 0 || (sub_1C44DBB50(a1 + v5[7], a2 + v5[7]) & 1) == 0)
  {
    return 0;
  }

  sub_1C44033A8(v5[8]);
  if (v4 && v9 == v10)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4A6C318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C4A6C4CC(char a1)
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
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A6C578(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2258, &qword_1C4F49C38);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v28 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A6D184();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v33 = 0;
  sub_1C4402150();
  sub_1C4F02798();
  if (!v2)
  {
    v16 = type metadata accessor for OntologyTriple();
    v17 = v16[5];
    v32 = 1;
    sub_1C4EFEEF8();
    sub_1C441A11C();
    sub_1C4A6D1D8(v18, v19);
    sub_1C4402150();
    sub_1C4F027E8();
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    v31 = 2;
    sub_1C4402150();
    sub_1C4F02798();
    v23 = v16[7];
    v30 = 3;
    sub_1C4402150();
    sub_1C4F027E8();
    v24 = (v3 + v16[8]);
    v25 = *v24;
    v26 = v24[1];
    v29 = 4;
    sub_1C4402150();
    sub_1C4F02798();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4A6C7A0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1C4F01298();
  v4 = type metadata accessor for OntologyTriple();
  v5 = v4[5];
  sub_1C4EFEEF8();
  sub_1C441A11C();
  sub_1C4A6D1D8(v6, v7);
  sub_1C4F00FE8();
  v8 = (v1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_1C4F01298();
  v11 = v1 + v4[7];
  sub_1C4F00FE8();
  v12 = (v1 + v4[8]);
  v13 = *v12;
  v14 = v12[1];

  return sub_1C4F01298();
}

uint64_t sub_1C4A6C880()
{
  v1 = v0;
  sub_1C4F02AF8();
  v2 = *v0;
  v3 = v0[1];
  sub_1C4F01298();
  v4 = type metadata accessor for OntologyTriple();
  v5 = v4[5];
  sub_1C4EFEEF8();
  sub_1C441A11C();
  sub_1C4A6D1D8(v6, v7);
  sub_1C4F00FE8();
  v8 = (v1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_1C4F01298();
  v11 = v1 + v4[7];
  sub_1C4F00FE8();
  v12 = (v1 + v4[8]);
  v13 = *v12;
  v14 = v12[1];
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A6C970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1C4EFEEF8();
  v47 = sub_1C43FCDF8(v3);
  v48 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v47);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v44 - v10;
  v51 = sub_1C456902C(&qword_1EC0C2248, &qword_1C4F49C30);
  v12 = sub_1C43FCDF8(v51);
  v49 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v44 - v16;
  v18 = type metadata accessor for OntologyTriple();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A6D184();
  v50 = v17;
  v23 = v52;
  sub_1C4F02BC8();
  if (v23)
  {
    return sub_1C440962C(a1);
  }

  v45 = v9;
  v52 = v18;
  v57 = 0;
  v24 = v21;
  *v21 = sub_1C4F02678();
  v21[1] = v25;
  v44[3] = v25;
  v56 = 1;
  sub_1C441A11C();
  v28 = sub_1C4A6D1D8(v26, v27);
  v29 = v11;
  v30 = v47;
  sub_1C4F026C8();
  v44[1] = v28;
  v31 = *(v48 + 32);
  v31(v24 + *(v52 + 20), v29, v30);
  v55 = 2;
  v44[2] = 0;
  v32 = sub_1C4F02678();
  v44[0] = v31;
  v33 = v52;
  v34 = (v24 + *(v52 + 24));
  *v34 = v32;
  v34[1] = v35;
  v54 = 3;
  v36 = v45;
  sub_1C4F026C8();
  (v44[0])(v24 + *(v33 + 28), v36, v47);
  v53 = 4;
  v37 = sub_1C4F02678();
  v39 = v38;
  v40 = sub_1C440E634();
  v41(v40);
  v42 = (v24 + *(v33 + 32));
  *v42 = v37;
  v42[1] = v39;
  sub_1C4A69CD8(v24, v46);
  sub_1C440962C(a1);
  return sub_1C4A69D3C(v24);
}

uint64_t sub_1C4A6CE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A6C318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A6CE70(uint64_t a1)
{
  v2 = sub_1C4A6D184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A6CEAC(uint64_t a1)
{
  v2 = sub_1C4A6D184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A6CF24()
{
  sub_1C4F02AF8();
  sub_1C4A6C7A0();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A6CF64(void *a1, void *a2)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (v3 || (sub_1C43FD168(), (sub_1C4F02938() & 1) != 0))
  {
    v4 = type metadata accessor for OntologyTriple();
    v5 = v4[5];
    sub_1C4EFEEF8();
    sub_1C441A11C();
    sub_1C4A6D1D8(v6, v7);
    if ((sub_1C4F010B8() & 1) == 0)
    {
LABEL_18:

      return sub_1C4EFE9A8();
    }

    sub_1C43FDC10(v4[8]);
    v8 = v3 && v5 == v2;
    if (v8 || (sub_1C4400A18(), (sub_1C4F02938() & 1) != 0))
    {
      sub_1C43FDC10(v4[6]);
      v9 = v3 && v5 == v2;
      if (v9 || (sub_1C4400A18(), (sub_1C4F02938() & 1) != 0))
      {
        v10 = v4[7];
        goto LABEL_18;
      }
    }

    sub_1C4400A18();
  }

  else
  {
    sub_1C43FD168();
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4A6D104()
{
  result = sub_1C4EFEEF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4A6D184()
{
  result = qword_1EC0C2250;
  if (!qword_1EC0C2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2250);
  }

  return result;
}

uint64_t sub_1C4A6D1D8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for OntologyTriple.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A6D300()
{
  result = qword_1EC0C2260;
  if (!qword_1EC0C2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2260);
  }

  return result;
}

unint64_t sub_1C4A6D358()
{
  result = qword_1EC0C2268;
  if (!qword_1EC0C2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2268);
  }

  return result;
}

unint64_t sub_1C4A6D3B0()
{
  result = qword_1EC0C2270;
  if (!qword_1EC0C2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2270);
  }

  return result;
}

BOOL sub_1C4A6D408(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1C4EFA308() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

BOOL sub_1C4A6D4DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = (a3 + 56);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = *(v6 - 2);
    v13[0] = *(v6 - 3);
    v13[1] = v10;
    v13[2] = v8;
    v13[3] = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = a1(v13);

    if (v4)
    {
      break;
    }

    v6 += 4;
  }

  while ((v11 & 1) != 0);
  return v7 == 0;
}

unint64_t sub_1C4A6D598(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
    v2 = sub_1C4F02558();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v23 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_1C457E7A8(*(v1 + 48) + 40 * v11, __src);
      sub_1C442B870(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C457E7A8(__dst, v26);
      if (!swift_dynamicCast())
      {
        sub_1C4A6F5B0(__dst);

        goto LABEL_23;
      }

      sub_1C442B870(&__dst[40], v26);
      sub_1C4A6F5B0(__dst);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_1C445FAA8(v24, v25);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        v15 = v14[1];
        *v14 = v24;
        v14[1] = v25;

        v16 = (v2[7] + 16 * v12);
        v17 = v16[1];
        *v16 = v24;
        v16[1] = v25;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v18 = (v2[6] + 16 * result);
        *v18 = v24;
        v18[1] = v25;
        v19 = (v2[7] + 16 * result);
        *v19 = v24;
        v19[1] = v25;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_27;
        }

        v2[2] = v22;
      }

      v9 = v10;
      v1 = v23;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C4A6D84C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v2 = sub_1C4F02558();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1C457E7A8(*(a1 + 48) + 40 * v10, __src);
    sub_1C442B870(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C457E7A8(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1C442B870(&__dst[40], v22);
    sub_1C4A6F5B0(__dst);
    v23 = v20;
    sub_1C44482AC(v22, v24);
    v11 = v23;
    sub_1C44482AC(v24, v25);
    sub_1C44482AC(v25, &v23);
    result = sub_1C445FAA8(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      sub_1C440962C(v16);
      result = sub_1C44482AC(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1C44482AC(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_1C4A6F5B0(__dst);

  return 0;
}

uint64_t InvalidOntology.invalidOntology.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InvalidOntology(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t InvalidOntologyTypes.invalidPredicates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t InvalidOntologyTypes.invalidNestedPredicates.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t InvalidOntologyTypes.invalidEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t OntologyValidator.init(config:sources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Configuration();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C448CF04(a1, a3, type metadata accessor for Configuration);
  sub_1C448CF04(a1, v10, type metadata accessor for Configuration);
  v11 = type metadata accessor for OntologyStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = OntologyStore.init(config:)(v10);
  sub_1C43FFFC0();
  sub_1C44541BC(a1, v15);
  if (v3)
  {

    sub_1C43FFFC0();
    return sub_1C44541BC(a3, v16);
  }

  else
  {
    result = type metadata accessor for OntologyValidator(0);
    *(a3 + *(result + 20)) = v14;
    *(a3 + *(result + 24)) = a2;
  }

  return result;
}

uint64_t OntologyValidator.checkValidation()()
{
  v1 = type metadata accessor for InvalidOntology(0);
  v2 = sub_1C43FCDF8(v1);
  v85 = v3;
  v86 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v93 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Source();
  v7 = sub_1C43FCDF8(v92);
  v95 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v84 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v84 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v84 - v20;
  v22 = 0;
  v23 = *(type metadata accessor for OntologyValidator(0) + 24);
  v94 = v0;
  v24 = *(v0 + v23);
  v96 = *(v24 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  *&v26 = 136315138;
  v88 = v26;
  v87 = v13;
  v98 = v16;
  v90 = v24;
  v91 = v19;
  while (v96 != v22)
  {
    if (v22 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v27 = v24 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v28 = *(v95 + 72);
    v97 = v22;
    sub_1C441A134();
    sub_1C448CF04(v29, v21, v30);
    v31 = sub_1C4A2D3E8();
    if (!v31 || (v32 = sub_1C4A6D84C(v31), , !v32))
    {
      if (qword_1EDDFECA0 == -1)
      {
LABEL_23:
        v71 = sub_1C4F00978();
        sub_1C442B738(v71, qword_1EDE2DF58);
        sub_1C441A134();
        sub_1C448CF04(v21, v13, v72);
        v73 = sub_1C4F00968();
        v74 = sub_1C4F01CD8();
        if (os_log_type_enabled(v73, v74))
        {
          sub_1C43FECF0();
          v75 = swift_slowAlloc();
          sub_1C43FEC60();
          v76 = swift_slowAlloc();
          v99 = v76;
          *v75 = v88;
          v77 = *v13;
          v78 = v13[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44541BC(v13, type metadata accessor for Source);
          v79 = sub_1C441D828(v77, v78, &v99);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_1C43F8000, v73, v74, "Mapping file could not be extracted for %s", v75, 0xCu);
          sub_1C440962C(v76);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          v80 = v21;
          v81 = type metadata accessor for Source;
        }

        else
        {

          sub_1C440AFFC();
          sub_1C44541BC(v13, v82);
          v80 = v21;
          v81 = v73;
        }

        sub_1C44541BC(v80, v81);
        return v25;
      }

LABEL_29:
      sub_1C4407704();
      swift_once();
      goto LABEL_23;
    }

    if (qword_1EDDFECA0 != -1)
    {
      sub_1C4407704();
      swift_once();
    }

    v33 = sub_1C4F00978();
    sub_1C442B738(v33, qword_1EDE2DF58);
    sub_1C441A134();
    sub_1C448CF04(v21, v19, v34);
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CF8();
    if (os_log_type_enabled(v35, v36))
    {
      sub_1C43FECF0();
      v37 = swift_slowAlloc();
      v89 = v25;
      v38 = v21;
      v39 = v37;
      sub_1C43FEC60();
      v40 = swift_slowAlloc();
      v99 = v40;
      *v39 = v88;
      v41 = v19;
      v42 = *v19;
      v43 = *(v41 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C442D084();
      sub_1C44541BC(v41, v44);
      v45 = sub_1C441D828(v42, v43, &v99);
      v13 = v87;

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1C43F8000, v35, v36, "Validating Ontology for %s", v39, 0xCu);
      sub_1C440962C(v40);
      v16 = v98;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v21 = v38;
      v25 = v89;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C442D084();
      sub_1C44541BC(v19, v46);
    }

    v47 = &v21[*(v92 + 24)];
    v48 = sub_1C4EFD2F8();
    v99 = 0;
    v100 = 0uLL;
    sub_1C4A6E544(v48, v49, v32, &v99);

    v50 = v100;
    if (v100 == 0)
    {
      sub_1C441A134();
      sub_1C448CF04(v21, v16, v51);
      v52 = sub_1C4F00968();
      v53 = sub_1C4F01CF8();
      if (os_log_type_enabled(v52, v53))
      {
        sub_1C43FECF0();
        v54 = swift_slowAlloc();
        sub_1C43FEC60();
        v55 = swift_slowAlloc();
        v101 = v55;
        *v54 = v88;
        v56 = *v98;
        v57 = v98[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44541BC(v98, type metadata accessor for Source);
        v58 = sub_1C441D828(v56, v57, &v101);

        *(v54 + 4) = v58;
        v16 = v98;
        _os_log_impl(&dword_1C43F8000, v52, v53, "Ontology Valid for %s", v54, 0xCu);
        sub_1C440962C(v55);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();

        v59 = v21;
        v60 = type metadata accessor for Source;
        v13 = v87;
      }

      else
      {

        sub_1C440AFFC();
        sub_1C44541BC(v16, v68);
        v59 = v21;
        v60 = v52;
      }

      sub_1C44541BC(v59, v60);
      swift_bridgeObjectRelease_n();

      v19 = v91;
      v64 = v97;
    }

    else
    {
      sub_1C441A134();
      v61 = v93;
      sub_1C448CF04(v21, v93, v62);
      v63 = v61 + *(v86 + 20);
      *v63 = v99;
      *(v63 + 8) = v50;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458EC20(0, *(v25 + 16) + 1, 1, v25);
        v25 = v69;
      }

      v64 = v97;
      v66 = *(v25 + 16);
      v65 = *(v25 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1C458EC20(v65 > 1, v66 + 1, 1, v25);
        v25 = v70;
      }

      sub_1C442D084();
      sub_1C44541BC(v21, v67);

      *(v25 + 16) = v66 + 1;
      sub_1C4A6F2DC(v93, v25 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v66);
      v16 = v98;
      v19 = v91;
    }

    v22 = v64 + 1;
    v24 = v90;
  }

  return v25;
}

void sub_1C4A6E544(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v87 = a4;
  v4 = a3;
  v85 = a1;
  v86 = a2;
  v6 = a3 + 64;
  v5 = *(a3 + 64);
  v7 = *(a3 + 32);
  sub_1C43FEC90();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  *&v14 = 136315138;
  v90 = v14;
  v83 = v6;
  v84 = v4;
  v82 = v12;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (v10)
      {
        v15 = v13;
LABEL_8:
        v89 = (v10 - 1) & v10;
        v16 = __clz(__rbit64(v10)) | (v15 << 6);
        v17 = (*(v4 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        sub_1C442B870(*(v4 + 56) + 32 * v16, &v100);
        *&v104 = v19;
        *(&v104 + 1) = v18;
        sub_1C44482AC(&v100, &v105);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_54;
          }

          if (v15 >= v12)
          {
            break;
          }

          v10 = *(v6 + 8 * v15);
          ++v13;
          if (v10)
          {
            v13 = v15;
            goto LABEL_8;
          }
        }

        v89 = 0;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
      }

      v107 = v104;
      v108[0] = v105;
      v108[1] = v106;
      if (!*(&v104 + 1))
      {

        return;
      }

      v96 = *(&v107 + 1);
      v93 = v107;
      sub_1C44482AC(v108, v103);
      sub_1C442B870(v103, &v104);
      v92 = sub_1C456902C(&qword_1EC0BA8B8, &qword_1C4F147A0);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C4A6EB50(v100, v85, v86, v87);

      sub_1C440962C(v103);
      v10 = v89;
    }

    sub_1C442B870(v103, &v104);
    v94 = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_1C440962C(v103);

    v10 = v89;
  }

  v20 = 0;
  v22 = v100 + 64;
  v21 = *(v100 + 64);
  v95 = v100;
  v23 = *(v100 + 32);
  sub_1C43FEC90();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  if ((v25 & v24) == 0)
  {
    goto LABEL_15;
  }

  do
  {
    v29 = v20;
LABEL_19:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v95 + 48) + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    sub_1C442B870(*(v95 + 56) + 32 * v31, v99);
    *&v100 = v34;
    *(&v100 + 1) = v33;
    sub_1C44482AC(v99, &v101);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_20:
    v104 = v100;
    v105 = v101;
    v106 = v102;
    v35 = *(&v100 + 1);
    if (!*(&v100 + 1))
    {
      sub_1C440962C(v103);

      v6 = v83;
      v4 = v84;
      v12 = v82;
      v10 = v89;
      goto LABEL_2;
    }

    v36 = v104;
    sub_1C44482AC(&v105, &v100);
    if (v36 == 0x657473654E444D5FLL && v35 == 0xEF797469746E4564)
    {
    }

    else
    {
      v38 = sub_1C4F02938();

      if ((v38 & 1) == 0)
      {
        v39 = sub_1C442B870(&v100, v99);
        sub_1C4417614(v39, v40, v41, v42, v43, v44, v45, v46, v82, v83, v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96, v97);
        if (!swift_dynamicCast())
        {
          goto LABEL_44;
        }

        sub_1C4A6EB50(v97, v85, v86, v87);
        goto LABEL_28;
      }
    }

    v47 = sub_1C442B870(&v100, v99);
    sub_1C4417614(v47, v48, v49, v50, v51, v52, v53, v54, v82, v83, v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96, v97);
    if (swift_dynamicCast())
    {
      v55 = v97;
      if (*(v97 + 16))
      {
        v56 = sub_1C445FAA8(1701869940, 0xE400000000000000);
        if (v57)
        {
          v58 = sub_1C442B870(*(v97 + 56) + 32 * v56, v99);
          sub_1C4417614(v58, v59, v60, v61, v62, v63, v64, v65, v82, v83, v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96, v97);
          if (swift_dynamicCast())
          {
            if (*(v55 + 16) && (v66 = v97, v67 = sub_1C445FAA8(0x79747265706F7270, 0xEB0000000070614DLL), (v68 & 1) != 0))
            {
              sub_1C442B870(*(v55 + 56) + 32 * v67, v99);

              sub_1C4417614(v69, v70, v71, v72, v73, v74, v75, v76, v82, v83, v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96, v97);
              if (swift_dynamicCast())
              {
                sub_1C4A6E544(v66, v98, v97, v87);

LABEL_28:

                goto LABEL_44;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    if (qword_1EDDFECA0 != -1)
    {
      sub_1C4407704();
      swift_once();
    }

    v77 = sub_1C4F00978();
    sub_1C442B738(v77, qword_1EDE2DF58);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v78 = sub_1C4F00968();
    v79 = sub_1C4F01CF8();

    if (os_log_type_enabled(v78, v79))
    {
      sub_1C43FECF0();
      v80 = swift_slowAlloc();
      sub_1C43FEC60();
      v81 = swift_slowAlloc();
      *&v99[0] = v81;
      *v80 = v90;
      *(v80 + 4) = sub_1C441D828(v93, v96, v99);
      _os_log_impl(&dword_1C43F8000, v78, v79, "Nested Entity missing PropertyMap or type for %s", v80, 0xCu);
      sub_1C440962C(v81);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

LABEL_44:
    sub_1C440962C(&v100);
  }

  while (v26);
LABEL_15:
  while (1)
  {
    v29 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v29 >= v28)
    {
      v26 = 0;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      goto LABEL_20;
    }

    v26 = *(v22 + 8 * v29);
    ++v20;
    if (v26)
    {
      v20 = v29;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1C4A6EB50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = a3;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v4;
    sub_1C441FFD4();
    sub_1C4412238();
    v11 = (v10 + 32);
    v47 = v13;
    v48 = v12;
    do
    {
      v14 = *v11;
      if (!*(*v11 + 16))
      {
        goto LABEL_8;
      }

      v15 = *v11;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = sub_1C445FAA8(v6, v5);
      if ((v17 & 1) == 0)
      {

LABEL_8:
        if (qword_1EDDFECA0 != -1)
        {
          sub_1C4407704();
          swift_once();
        }

        v21 = sub_1C4F00978();
        sub_1C442B738(v21, qword_1EDE2DF58);
        v22 = sub_1C4F00968();
        v23 = sub_1C4F01CF8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1C43F8000, v22, v23, "No target Property label found", v24, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        goto LABEL_34;
      }

      v18 = (*(v14 + 56) + 16 * v16);
      v19 = *v18;
      v6 = v18[1];
      v52 = *v18;
      v53 = v6;
      v50 = 47;
      v51 = 0xE100000000000000;
      sub_1C4415EA8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4F01FC8();
      if (v20[2] < 2uLL)
      {

        v25 = *(v8 + *(type metadata accessor for OntologyValidator(0) + 20));
        v26 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
        v27 = *(v25 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
        v28 = sub_1C4A5512C(v48, v49);
        if (v28 >> 62)
        {
          v29 = sub_1C4F02128();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v29)
        {
          v30 = *(v25 + v26);
          v5 = v48;
          v31 = v49;
          v32 = *(sub_1C4A56CF4(v19, v6, v48, v49) + 16);

          if (v32)
          {

            v8 = v46;
          }

          else
          {
            v34 = *(v25 + v26);

            v35 = sub_1C4A51F74(v5, v31);

            MEMORY[0x1EEE9AC00](v36);
            v5 = v45;
            v8 = v46;
            v44[2] = v46;
            v44[3] = v19;
            v44[4] = v6;
            LOBYTE(v34) = sub_1C4A6D4DC(sub_1C4A6F618, v44, v35);
            v45 = v5;

            if (v34)
            {
              a4 = v47;
              v37 = *v47;
              sub_1C441FFD4();
              sub_1C4412238();
              if (!v38)
              {
                *a4 = MEMORY[0x1E69E7CD0];
              }

              v52 = 40;
              v53 = 0xE100000000000000;
              MEMORY[0x1C6940010](v48, v49);
              MEMORY[0x1C6940010](2108448, 0xE300000000000000);
              v39 = sub_1C44735D4(v6, v5, v14);
              v41 = v40;

              if (v41)
              {
                v42 = v39;
              }

              else
              {
                v42 = 0;
              }

              if (v41)
              {
                v43 = v41;
              }

              else
              {
                v43 = 0xE000000000000000;
              }

              MEMORY[0x1C6940010](v42, v43);

              MEMORY[0x1C6940010](41, 0xE100000000000000);
              sub_1C44869B4(&v52, v52, v53);

              goto LABEL_34;
            }
          }

          a4 = v47;
          sub_1C441FFD4();
        }

        else
        {

          a4 = v47;
          if (!v47[2])
          {
            v47[2] = MEMORY[0x1E69E7CD0];
          }

          v33 = v49;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44869B4(&v52, v48, v33);

          v8 = v46;
        }
      }

      else
      {

        sub_1C4A6EF9C(v20, v48, v49, a4, v19, v6);
        sub_1C441FFD4();
      }

      sub_1C4412238();
LABEL_34:
      ++v11;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1C4A6EF9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = type metadata accessor for OntologyValidator(0);
  v12 = a1[2];
  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = a6;
  v13 = *(v6 + *(result + 20));
  v14 = a1[4];
  v15 = a1[5];
  v16 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
  v17 = *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4A56CF4(v14, v15, a2, a3);

  if (v12 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = a1[6];
  v19 = a1[7];
  v21 = *(v13 + v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = sub_1C4A570F0(v14, v15, v20, v19);

  if (v12 < 3)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v24 = a1[8];
  v23 = a1[9];
  v25 = *(v13 + v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = sub_1C4A56CF4(v24, v23, v20, v19);

  v27 = *(v18 + 16);

  if (v27)
  {
    v28 = *(v22 + 16);

    if (v28)
    {
      v29 = *(v26 + 16);

      if (v29)
      {
        return result;
      }
    }

    else
    {
    }

    v30 = (a4 + 8);
    if (!*(a4 + 8))
    {
      goto LABEL_12;
    }
  }

  else
  {

    v30 = (a4 + 16);
    if (!*(a4 + 16))
    {
LABEL_12:
      *v30 = MEMORY[0x1E69E7CD0];
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44869B4(v34, a5, v31);
}

uint64_t sub_1C4A6F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + *(type metadata accessor for OntologyValidator(0) + 20));
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
  v12 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v13 = *(sub_1C4A56CF4(a3, a4, a1, a2) + 16);

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v15 = *(v10 + v11);

    v16 = sub_1C4A51F74(a1, a2);

    MEMORY[0x1EEE9AC00](v17);
    v20[2] = v5;
    v20[3] = a3;
    v20[4] = a4;
    v18 = sub_1C4A6D4DC(sub_1C4A6F63C, v20, v16);

    v14 = !v18;
  }

  return v14 & 1;
}

uint64_t sub_1C4A6F2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvalidOntology(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A6F368()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4A6F3DC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4A6F430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1C4A6F4BC()
{
  type metadata accessor for Configuration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OntologyStore();
    if (v1 <= 0x3F)
    {
      sub_1C4A6F558();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4A6F558()
{
  if (!qword_1EC0C2298)
  {
    type metadata accessor for Source();
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C2298);
    }
  }
}

uint64_t sub_1C4A6F5B0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C22A0, &unk_1C4F49E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Optional.nilIf(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v17);
  if (sub_1C44157D4(v10, 1, v12) == 1)
  {
    (*(v6 + 8))(v10, a2);
  }

  else
  {
    v18 = *(v13 + 32);
    v18(v16, v10, v12);
    if ((a1(v16) & 1) == 0)
    {
      v18(a3, v16, v12);
      v19 = 0;
      return sub_1C440BAA8(a3, v19, 1, v12);
    }

    (*(v13 + 8))(v16, v12);
  }

  v19 = 1;
  return sub_1C440BAA8(a3, v19, 1, v12);
}

uint64_t sub_1C4A6F854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C4A6F8AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *v8 & v6;
      v8 += 2;
      v12 = (v9 & ~v7) == 0 && v11 == v10;
      v13 = v9 | v7;
      v14 = v10 | v6;
      if (!v12)
      {
        v4 = v13;
        v5 = v14;
        v6 = v14;
        v7 = v13;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C4A6F93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_1C4A6F990(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = a2 & ~*v3 | a3 & ~v4;
  if (v5)
  {
    *v3 |= a2;
    v3[1] = v4 | a3;
  }

  *a1 = a2;
  a1[1] = a3;
  return v5 != 0;
}

uint64_t sub_1C4A6F9C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[1];
  v5 = *v3 & result;
  v6 = v4 & a2;
  v7 = v5 | v4 & a2;
  if (v7)
  {
    *v3 &= ~result;
    v3[1] = v4 & ~a2;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 == 0;
  return result;
}

uint64_t sub_1C4A6FA00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[1];
  v5 = *v3 & result;
  *v3 |= result;
  v3[1] = v4 | a2;
  *a3 = v5;
  *(a3 + 8) = v4 & a2;
  *(a3 + 16) = (v5 | v4 & a2) == 0;
  return result;
}

uint64_t Options.OptionsValue.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C69417F0](*v0);
  return MEMORY[0x1C69417F0](v1);
}

uint64_t Options.OptionsValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  MEMORY[0x1C69417F0](v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A6FAFC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  MEMORY[0x1C69417F0](v2);
  return sub_1C4F02B68();
}

__n128 Options.rawValue.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

IntelligencePlatformCore::Options __swiftcall Options.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

IntelligencePlatformCore::Options __swiftcall Options.init(options:featureFlags:)(Swift::Int options, Swift::Int featureFlags)
{
  *v2 = options;
  v2[1] = featureFlags;
  result.rawValue.featureFlags = featureFlags;
  result.rawValue.options = options;
  return result;
}

double sub_1C4A6FBD8()
{
  *&result = 1;
  xmmword_1EDDFEC90 = xmmword_1C4F14630;
  return result;
}

double sub_1C4A6FC14()
{
  *&result = 2;
  xmmword_1EDDFEC78 = xmmword_1C4F49E20;
  return result;
}

double sub_1C4A6FC50()
{
  *&result = 4;
  xmmword_1EDDFEC30 = xmmword_1C4F49E30;
  return result;
}

double sub_1C4A6FC8C()
{
  *&result = 8;
  xmmword_1EDDFFAE0 = xmmword_1C4F49E40;
  return result;
}

double sub_1C4A6FCC8()
{
  *&result = 16;
  xmmword_1EDDFFA80 = xmmword_1C4F49E50;
  return result;
}

double sub_1C4A6FD04()
{
  *&result = 32;
  xmmword_1EDDFEBA8 = xmmword_1C4F49E60;
  return result;
}

double sub_1C4A6FD40()
{
  *&result = 64;
  xmmword_1EDDFD000 = xmmword_1C4F49E70;
  return result;
}

double sub_1C4A6FD7C()
{
  *&result = 128;
  xmmword_1EDDFFA48 = xmmword_1C4F49E80;
  return result;
}

double sub_1C4A6FDB8()
{
  *&result = 256;
  xmmword_1EDDFEBC0 = xmmword_1C4F49E90;
  return result;
}

double sub_1C4A6FDF4()
{
  *&result = 512;
  xmmword_1EDDFA618 = xmmword_1C4F49EA0;
  return result;
}

double sub_1C4A6FE30()
{
  *&result = 1024;
  xmmword_1EDDF0C90 = xmmword_1C4F49EB0;
  return result;
}

double sub_1C4A6FE6C()
{
  *&result = 2048;
  xmmword_1EDDFEC18 = xmmword_1C4F49EC0;
  return result;
}

double sub_1C4A6FEA8()
{
  *&result = 4096;
  xmmword_1EDDFEC50 = xmmword_1C4F49ED0;
  return result;
}

double sub_1C4A6FEE4()
{
  result = 0.0;
  xmmword_1EDDDBFD8 = xmmword_1C4F0D7C0;
  return result;
}

double sub_1C4A6FF20()
{
  result = 0.0;
  xmmword_1EDDFA650 = xmmword_1C4F49EE0;
  return result;
}

double sub_1C4A6FF5C()
{
  result = 0.0;
  xmmword_1EDDFFA18 = xmmword_1C4F49EF0;
  return result;
}

double sub_1C4A6FF98()
{
  result = 0.0;
  xmmword_1EDDFFAD0 = xmmword_1C4F49F00;
  return result;
}

double sub_1C4A6FFD4()
{
  result = 0.0;
  xmmword_1EDDFFA98 = xmmword_1C4F49F10;
  return result;
}

double sub_1C4A70010()
{
  result = 0.0;
  xmmword_1EDDF0C60 = xmmword_1C4F49F20;
  return result;
}

double sub_1C4A7004C()
{
  result = 0.0;
  xmmword_1EC0C22A8 = xmmword_1C4F49F30;
  return result;
}

double sub_1C4A70088()
{
  result = 0.0;
  xmmword_1EDDFFA30 = xmmword_1C4F49F40;
  return result;
}

double sub_1C4A700C4()
{
  result = 0.0;
  xmmword_1EDDDBF68 = xmmword_1C4F49F50;
  return result;
}

double sub_1C4A70100()
{
  result = 0.0;
  xmmword_1EC0C22B8 = xmmword_1C4F49F60;
  return result;
}

double sub_1C4A7013C()
{
  result = 0.0;
  xmmword_1EDDF0C78 = xmmword_1C4F49F70;
  return result;
}

double sub_1C4A70178()
{
  result = 0.0;
  xmmword_1EDDDBF00 = xmmword_1C4F49F80;
  return result;
}

double sub_1C4A701B4()
{
  result = 0.0;
  xmmword_1EDDFEBD0 = xmmword_1C4F49F90;
  return result;
}

double sub_1C4A701F0()
{
  result = 0.0;
  xmmword_1EDDFA630 = xmmword_1C4F49FA0;
  return result;
}

double sub_1C4A7022C()
{
  result = 0.0;
  xmmword_1EDDFFA68 = xmmword_1C4F49FB0;
  return result;
}

double sub_1C4A70268()
{
  result = 0.0;
  xmmword_1EDDDBF50 = xmmword_1C4F49FC0;
  return result;
}

double sub_1C4A702A4()
{
  result = 0.0;
  xmmword_1EDDDBF88 = xmmword_1C4F49FD0;
  return result;
}

double sub_1C4A702E0()
{
  result = 0.0;
  xmmword_1EDDDBF30 = xmmword_1C4F49FE0;
  return result;
}

double sub_1C4A7031C()
{
  result = 0.0;
  xmmword_1EC0C22C8 = xmmword_1C4F49FF0;
  return result;
}

double sub_1C4A70358()
{
  result = 0.0;
  xmmword_1EDDFEBF8 = xmmword_1C4F4A000;
  return result;
}

double sub_1C4A70394()
{
  result = 0.0;
  xmmword_1EC0C22D8 = xmmword_1C4F4A010;
  return result;
}

double sub_1C4A703D0()
{
  result = 0.0;
  xmmword_1EDDDBFA0 = xmmword_1C4F4A020;
  return result;
}

double sub_1C4A7040C()
{
  result = 0.0;
  xmmword_1EDDDBF18 = xmmword_1C4F4A030;
  return result;
}

double sub_1C4A70448()
{
  result = 0.0;
  xmmword_1EDDDBFC0 = xmmword_1C4F4A040;
  return result;
}

double sub_1C4A70484()
{
  result = 0.0;
  xmmword_1EDDFEB88 = xmmword_1C4F4A050;
  return result;
}

double sub_1C4A704C0()
{
  result = 0.0;
  xmmword_1EC0C22E8 = xmmword_1C4F4A060;
  return result;
}

double sub_1C4A704FC()
{
  result = 0.0;
  xmmword_1EDDDBEE8 = xmmword_1C4F4A070;
  return result;
}

double sub_1C4A70538()
{
  result = 0.0;
  xmmword_1EDDFEB70 = xmmword_1C4F4A080;
  return result;
}

double sub_1C4A70574()
{
  result = 0.0;
  xmmword_1EDDFEBE8 = xmmword_1C4F4A090;
  return result;
}

__n128 sub_1C4A705B0@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t Options.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02248();

  v3 = sub_1C4F02858();
  MEMORY[0x1C6940010](v3);

  MEMORY[0x1C6940010](3827232, 0xE300000000000000);
  v4 = sub_1C4F02858();
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x736E6F6974704F3CLL;
}

unint64_t sub_1C4A70894()
{
  result = qword_1EC0C22F8;
  if (!qword_1EC0C22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C22F8);
  }

  return result;
}

unint64_t sub_1C4A708EC()
{
  result = qword_1EC0C2300;
  if (!qword_1EC0C2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2300);
  }

  return result;
}

unint64_t sub_1C4A70944()
{
  result = qword_1EC0C2308;
  if (!qword_1EC0C2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2308);
  }

  return result;
}

unint64_t sub_1C4A70998()
{
  result = qword_1EDDF0C50;
  if (!qword_1EDDF0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C50);
  }

  return result;
}

unint64_t sub_1C4A709F0()
{
  result = qword_1EDDF0C48;
  if (!qword_1EDDF0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C48);
  }

  return result;
}

uint64_t Array<A>.orderedMerge(comparison:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

{
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t OrderedMergeAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return sub_1C4A70B58(v5, v6, v7, v8, a2);
}

uint64_t sub_1C4A70B58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = type metadata accessor for OrderedMergeAsyncSequence.Iterator();
  v10 = a5 + v9[12];
  *v10 = 0;
  v10[8] = 1;
  v11 = sub_1C4F017A8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C69401E0](&v32, v11, WitnessTable);

  v31 = v32;
  v28 = a3;
  v29 = a4;
  v23 = a3;
  v24 = a4;
  v25 = sub_1C4A727FC;
  v26 = &v27;
  v13 = sub_1C4F024F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C4403574();
  v30 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v17 = sub_1C4D4F664(sub_1C4A72804, v22, v13, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

  a5[1] = a2;
  a5[2] = v17;
  *a5 = a1;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;
  v19 = v9[10];
  type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot();

  result = sub_1C4F000D8();
  *(a5 + v9[11]) = 1;
  return result;
}

uint64_t sub_1C4A70D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  sub_1C440F228();
  result = type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1C4A70E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1C4F019A8();
}

uint64_t sub_1C4A70EEC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t OrderedMergeAsyncSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(a2 + 16);
  v3[7] = *(a2 + 24);
  sub_1C440F228();
  v4 = type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot();
  v3[8] = v4;
  v5 = sub_1C4F01F48();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(v4 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[15] = AssociatedTypeWitness;
  v11 = sub_1C4F01F48();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v14 = *(AssociatedTypeWitness - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A711BC, 0, 0);
}

uint64_t sub_1C4A711BC()
{
  v1 = *(v0 + 40);
  v3 = *(v1 + 16);
  v2 = (v1 + 16);
  *(v0 + 16) = v3;
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 192) = AssociatedTypeWitness;
  *(v0 + 200) = sub_1C4F017A8();
  sub_1C4403574();
  swift_getWitnessTable();
  if (sub_1C4F01BD8())
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 24);
    v9 = 1;
    goto LABEL_3;
  }

  v20 = *(v0 + 32);
  v21 = *(v0 + 40);
  v22 = v20[11];
  *(v0 + 248) = v22;
  if (*(v21 + v22) != 1)
  {
    v37 = v21 + v20[12];
    v38 = *v37;
    *(v0 + 232) = *v37;
    if (*(v37 + 8))
    {
      v39 = *(v0 + 88);
      v40 = *(v0 + 64);
      v41 = v20[10];
      sub_1C4F000F8();
      sub_1C4425EA8();
      sub_1C4400334();
      if (v42)
      {
        v43 = sub_1C441FFF4();
        v44(v43);
        v8 = sub_1C44033D8();
      }

      else
      {
        v58 = sub_1C4407720();
        v59(v58);
        v60 = sub_1C441A14C();
        v61(v60);
        v8 = sub_1C44110DC();
      }

      v7 = v21;
LABEL_3:
      sub_1C440BAA8(v8, v9, 1, v7);
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 168);
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 88);

      sub_1C43FC1B0();
      sub_1C442642C();

      __asm { BRAA            X1, X16 }
    }

    v46 = *(v0 + 48);
    v45 = *(v0 + 56);
    sub_1C4F01708();
    v47 = *v2;
    sub_1C440F228();
    sub_1C4A721C4(v48, v49);
    _swift_isClassOrObjCExistentialType();
    v50 = *(*(AssociatedTypeWitness - 8) + 80);
    sub_1C44135B8();
    v53 = v52 + *(v51 + 72) * v38;
    swift_getAssociatedConformanceWitness();
    v54 = *(MEMORY[0x1E69E85A8] + 4);
    v55 = swift_task_alloc();
    *(v0 + 240) = v55;
    *v55 = v0;
    v55[1] = sub_1C4A71928;
    v56 = *(v0 + 144);
    goto LABEL_15;
  }

  v23 = sub_1C4F01758();
  *(v0 + 208) = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v23 - 1 < 0)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v23);
  }

  *(v0 + 216) = 0;
  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);
  v28 = *(v0 + 40);
  sub_1C4F01708();
  v29 = *(v28 + 16);
  sub_1C440F228();
  sub_1C4A721C4(v30, v31);
  _swift_isClassOrObjCExistentialType();
  v32 = (*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80);
  swift_getAssociatedConformanceWitness();
  v33 = *(MEMORY[0x1E69E85A8] + 4);
  v34 = swift_task_alloc();
  v35 = sub_1C4408E58(v34);
  *v35 = v36;
  sub_1C442D0AC(v35);
LABEL_15:
  sub_1C442642C();

  return MEMORY[0x1EEE6D8C8](v23);
}

uint64_t sub_1C4A71590()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 224);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1C4A71BC0;
  }

  else
  {
    v6 = sub_1C4A71698;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4A71698()
{
  v6 = *(v1 + 152);
  v7 = *(v1 + 120);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    v8 = (*(*(v1 + 136) + 8))(v6, *(v1 + 128));
  }

  else
  {
    v9 = *(v1 + 216);
    v10 = *(v1 + 176);
    v0 = *(v1 + 184);
    v11 = sub_1C43FDC28();
    v12(v11);
    v13 = sub_1C43FF49C();
    v15 = v14(v13);
    v23 = sub_1C4405F84(v15, v16, v17, v18, v19, v20, v21, v22, v55, v57, v59, v60);
    v31 = sub_1C442BDDC(v23, v24, v25, v26, v27, v28, v29, v30, v56, v58);
    sub_1C441CC68(v31);
    (*(v5 + 8))(v3, v4);
    v8 = (*(v2 + 8))(v0, v7);
  }

  v32 = *(v1 + 216);
  if (v32 == *(v1 + 208))
  {
    *(*(v1 + 40) + *(v1 + 248)) = 0;
    sub_1C440B014();
    sub_1C4425EA8();
    sub_1C4400334();
    if (v33)
    {
      v34 = sub_1C441FFF4();
      v35(v34);
      v50 = sub_1C44033D8();
    }

    else
    {
      v46 = sub_1C4407720();
      v47(v46);
      v48 = sub_1C441A14C();
      v49(v48);
      v50 = sub_1C44110DC();
    }

    sub_1C4400A2C(v50, v51);

    sub_1C43FC1B0();
    sub_1C440405C();

    __asm { BRAA            X1, X16 }
  }

  v36 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C440D6A8();
    sub_1C442E474();
    _swift_isClassOrObjCExistentialType();
    v37 = *(*(v0 - 8) + 80);
    sub_1C44135B8();
    v40 = v39 + *(v38 + 72) * v36;
    swift_getAssociatedConformanceWitness();
    v41 = *(MEMORY[0x1E69E85A8] + 4);
    v42 = swift_task_alloc();
    v43 = sub_1C4408E58(v42);
    *v43 = v44;
    sub_1C442D0AC();
    sub_1C440405C();
  }

  return MEMORY[0x1EEE6D8C8](v8);
}

uint64_t sub_1C4A71928()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 240);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1C4A71DD8;
  }

  else
  {
    v6 = sub_1C4A71A30;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C4A71A30()
{
  v5 = v0[18];
  v6 = v0[15];
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v5, v0[16]);
  }

  else
  {
    v7 = v0[29];
    v8 = v0[21];
    v9 = v0[22];
    v10 = sub_1C43FDC28();
    v11(v10);
    v12 = sub_1C43FF49C();
    v14 = v13(v12);
    v22 = sub_1C4405F84(v14, v15, v16, v17, v18, v19, v20, v21, v42, v44, v46, v47);
    v30 = sub_1C442BDDC(v22, v23, v24, v25, v26, v27, v28, v29, v43, v45);
    sub_1C441CC68(v30);
    (*(v4 + 8))(v2, v3);
    (*(v1 + 8))(v8, v6);
  }

  sub_1C440B014();
  sub_1C4425EA8();
  sub_1C4400334();
  if (v31)
  {
    v32 = sub_1C441FFF4();
    v33(v32);
    v38 = sub_1C44033D8();
  }

  else
  {
    v34 = sub_1C4407720();
    v35(v34);
    v36 = sub_1C441A14C();
    v37(v36);
    v38 = sub_1C44110DC();
  }

  sub_1C4400A2C(v38, v39);

  sub_1C43FC1B0();
  sub_1C440405C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A71BC0()
{
  sub_1C440BAA8(*(v1 + 152), 1, 1, *(v1 + 120));
  v2 = (*(*(v1 + 136) + 8))(*(v1 + 152), *(v1 + 128));
  v3 = *(v1 + 216);
  if (v3 == *(v1 + 208))
  {
    *(*(v1 + 40) + *(v1 + 248)) = 0;
    sub_1C440B014();
    sub_1C4425EA8();
    sub_1C4400334();
    if (v4)
    {
      v5 = sub_1C441FFF4();
      v6(v5);
      v21 = sub_1C44033D8();
    }

    else
    {
      v17 = sub_1C4407720();
      v18(v17);
      v19 = sub_1C441A14C();
      v20(v19);
      v21 = sub_1C44110DC();
    }

    sub_1C4400A2C(v21, v22);

    sub_1C43FC1B0();
    sub_1C442642C();

    __asm { BRAA            X1, X16 }
  }

  v7 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C440D6A8();
    sub_1C442E474();
    _swift_isClassOrObjCExistentialType();
    v8 = *(*(v0 - 8) + 80);
    sub_1C44135B8();
    v11 = v10 + *(v9 + 72) * v7;
    swift_getAssociatedConformanceWitness();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    v14 = sub_1C4408E58(v13);
    *v14 = v15;
    sub_1C442D0AC();
    sub_1C442642C();
  }

  return MEMORY[0x1EEE6D8C8](v2);
}

void sub_1C4A71DD8()
{
  sub_1C440BAA8(v0[18], 1, 1, v0[15]);
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_1C440B014();
  sub_1C4425EA8();
  sub_1C4400334();
  if (v1)
  {
    v2 = sub_1C441FFF4();
    v3(v2);
    v8 = sub_1C44033D8();
  }

  else
  {
    v4 = sub_1C4407720();
    v5(v4);
    v6 = sub_1C441A14C();
    v7(v6);
    v8 = sub_1C44110DC();
  }

  sub_1C4400A2C(v8, v9);

  sub_1C43FC1B0();
  sub_1C442642C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A71F08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C49CC610;

  return OrderedMergeAsyncSequence.Iterator.next()(a1, a2);
}

uint64_t sub_1C4A71FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1C4A72084;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C4A72084()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1C4A72184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OrderedMergeAsyncSequence.makeAsyncIterator()(a1, a2);
  v3 = *v2;
  v4 = v2[2];
}

uint64_t sub_1C4A721C4(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C4A72234()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C4A72288(uint64_t a1)
{
  sub_1C4A723C8();
  if (v2 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    sub_1C4F017A8();
    if (v5 <= 0x3F)
    {
      type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot();
      sub_1C4F000F8();
      if (v6 <= 0x3F)
      {
        sub_1C4A72410();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C4A723C8()
{
  result = qword_1EDDF0330;
  if (!qword_1EDDF0330)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDF0330);
  }

  return result;
}

void sub_1C4A72410()
{
  if (!qword_1EDDFEA40)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFEA40);
    }
  }
}

uint64_t sub_1C4A72460(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4A724E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  result = swift_getAssociatedTypeWitness();
  v9 = *(*(result - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v9 < a2)
  {
    v10 = ((*(*(result - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v11 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = a2 - v9 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v10);
        if (v15)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v10);
        if (v15)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(a1 + v10);
        if (!v15)
        {
          goto LABEL_22;
        }

LABEL_18:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *a1;
        }

        return v9 + (v11 | v16) + 1;
      default:
LABEL_22:
        if (v9)
        {
          break;
        }

        return 0;
    }
  }

  return sub_1C44157D4(a1, v9, result);
}

void sub_1C4A72640(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  v11 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
  }

  else
  {
    if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C440BAA8(a1, a2, v10, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v10;
    }

    else
    {
      v15 = 1;
    }

    if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v11) = v15;
        break;
      case 2:
        *(a1 + v11) = v15;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *(a1 + v11) = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4A72804(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1C4A70EEC(a1, *(v1 + 32));
}

uint64_t sub_1C4A72828()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1() & 1;
}

uint64_t sub_1C4A72854(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1C4F01728();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1C4F0D7C0)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C4A728F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_1C4F01728();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        --v7;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v6;
  }

  return result;
}

uint64_t sub_1C4A72990(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
      v4 = sub_1C4F01728();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1C4A75630(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4A756A0(v3);
    return v4;
  }

  return result;
}

uint64_t sub_1C4A72A24(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_1C4F01728();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

void OrderedMergePublisher.receive<A>(subscriber:)()
{
  sub_1C43FBD3C();
  v2 = v1;
  v60 = v3;
  v61 = v1;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v62 = sub_1C4405FA4();
  v59 = sub_1C4405FA4();
  v67 = v7;
  v68 = v62;
  v69 = v59;
  v70 = v5;
  WitnessTable = v8;
  v72 = v2;
  v58 = type metadata accessor for OrderedMergePublisher.OrderedMerged.Side();
  sub_1C43FCDF8(v58);
  v54 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = (&v52 - v14);
  v53 = *(v7 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_1C4F01F48();
  v18 = sub_1C43FCDF8(v64);
  v55 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v63 = v22 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v52 - v26);
  v28 = *(v5 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v0;
  v52 = v0[1];
  v33 = v0[2];
  v67 = v7;
  v68 = v62;
  v69 = v59;
  v70 = v5;
  v59 = v8;
  WitnessTable = v8;
  v72 = v61;
  v34 = type metadata accessor for OrderedMergePublisher.OrderedMerged();
  (*(v28 + 16))(v31, v60, v5);

  sub_1C4F01758();
  sub_1C4411720();
  v35 = sub_1C4A73004();
  v70 = v34;
  WitnessTable = swift_getWitnessTable();
  v67 = v35;
  v62 = v35;

  sub_1C4F00B18();
  sub_1C440962C(&v67);
  v67 = v32;
  v60 = v7;
  v36 = sub_1C4F017A8();
  sub_1C441F840();
  v37 = swift_getWitnessTable();
  MEMORY[0x1C69401E0](&v66, v36, v37);
  v65 = v66;
  sub_1C4F024F8();
  sub_1C4F024C8();
  v61 = sub_1C4F024E8();
  v38 = (v55 + 4);
  v55 = (v53 + 32);
  v39 = (v54 + 8);
  for (i = (v53 + 8); ; (*i)(v43, v44))
  {
    v41 = v63;
    sub_1C4F024D8();
    (*v38)(v27, v41, v64);
    if (sub_1C44157D4(v27, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v42 = *v27;
    v43 = v56;
    v44 = v60;
    (*v55)(v56, v27 + *(TupleTypeMetadata2 + 48), v60);
    v45 = v27;
    v46 = v62;

    v47 = TupleTypeMetadata2;
    v48 = v57;
    v49 = v46;
    v27 = v45;
    sub_1C4A7306C(v42, v49, v57);
    v50 = v58;
    swift_getWitnessTable();
    sub_1C4F00D18();
    v51 = v48;
    TupleTypeMetadata2 = v47;
    (*v39)(v51, v50);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4A73004()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1C4A73100();
  return v3;
}

uint64_t sub_1C4A7306C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = a2;
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v4 = a3 + *(type metadata accessor for OrderedMergePublisher.OrderedMerged.Side() + 72);
  return sub_1C4F00A88();
}

uint64_t sub_1C4A730E4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

void sub_1C4A73100()
{
  sub_1C43FBD3C();
  v42 = v1;
  v43 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 88);
  v9 = sub_1C4F01F48();
  sub_1C43FBCE0(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  *(v0 + *(v7 + 144)) = 0;
  sub_1C43FC20C();
  *(v0 + *(v13 + 152)) = 0;
  sub_1C43FC20C();
  *(v0 + *(v14 + 176)) = 0;
  sub_1C43FC20C();
  v16 = *(v15 + 200);
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1C43FC20C();
  v18 = *(v17 + 208);
  *(v0 + v18) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1C43FC20C();
  *(v0 + *(v19 + 216)) = 0;
  sub_1C43FC20C();
  v21 = *(v20 + 224);
  *(v0 + v21) = sub_1C4F00B78();
  sub_1C43FC20C();
  v23 = *(v22 + 232);
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v8);
  sub_1C43FC20C();
  v28 = *(v7 + 104);
  v29 = *(v28 - 8);
  (*(v29 + 16))(v0 + *(v27 + 128), v6, v28);
  sub_1C43FC20C();
  *(v0 + *(v30 + 160)) = v4;
  sub_1C43FCF64();
  sub_1C440BAA8(v31, v32, v33, v8);
  sub_1C4F01798();
  sub_1C43FC20C();
  *(v0 + *(v34 + 192)) = v35;
  sub_1C43FD428();
  sub_1C4A72990(&v44, v4);
  sub_1C43FC20C();
  *(v0 + *(v36 + 184)) = v37;
  v38 = sub_1C4A72A24(0, v4);
  (*(v29 + 8))(v6, v28);
  sub_1C43FC20C();
  *(v0 + *(v39 + 168)) = v38;
  sub_1C43FC20C();
  v41 = (v0 + *(v40 + 136));
  *v41 = v42;
  v41[1] = v43;
  sub_1C43FE9F0();
}

id sub_1C4A733AC()
{
  sub_1C43FC20C();
  [*(v0 + *(v1 + 200)) lock];
  sub_1C43FC20C();
  v3 = *(v2 + 152);
  if ((*(v0 + v3) & 1) == 0)
  {
    *(v0 + v3) = 1;
  }

  return sub_1C4A750B8(v0);
}

void sub_1C4A73408(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C4A73430(a1, v2);
}

void sub_1C4A73430(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_1C4F01F48();
  sub_1C43FCDF8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  [*(v3 + *(v6 + 200)) lock];
  sub_1C4400A6C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = *(v3 + *(v16 + 168));
  if (*(v17 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if ((*(v17 + a2 + 32) & 1) == 0)
  {
    (*(*(v7 - 8) + 16))(v15, a1, v7);
    sub_1C440BAA8(v15, 0, 1, v7);
    sub_1C4400A6C();
    v19 = *(v18 + 192);
    sub_1C4403138();
    v20 = sub_1C4F017A8();
    sub_1C4F01708();
    v21 = *(v3 + v19);
    sub_1C4A721C4(a2, v21);
    (*(v10 + 40))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v15, v8);
    nullsub_1(v20);
    v22 = swift_endAccess();
    do
    {
      sub_1C4A73CD8(v22, v23, v24, v25, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11]);
    }

    while ((v22 & 1) != 0);
  }

  sub_1C4F00B78();
  sub_1C4A750B8(v3);
}

void sub_1C4A73648()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4A73670();
}

void sub_1C4A73670()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v39 = *v0;
  v5 = *(v39 + 96);
  v6 = *(v39 + 104);
  v38 = *(v39 + 120);
  swift_getAssociatedConformanceWitness();
  v7 = sub_1C4F00B58();
  sub_1C43FCDF8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  [*(v0 + *(v39 + 200)) lock];
  sub_1C43FC20C();
  v16 = *(v15 + 168);
  v17 = *(v0 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + v16) = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1C4834834(v17);
  v17 = v35;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (*(v17 + 16) > v2)
  {
    *(v17 + v2 + 32) = 1;
    *(v0 + v16) = v17;
    sub_1C43FD428();
    sub_1C43FC20C();
    v16 = *(v19 + 184);
    sub_1C4403138();
    v17 = *(v0 + v16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + v16) = v17;
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  sub_1C483481C(v17);
  v17 = v36;
  *(v0 + v16) = v36;
LABEL_5:
  if (*(v17 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    sub_1C4A75708(v43, v17 + 40 * v2 + 32);
    *(v0 + v16) = v17;
    swift_endAccess();
    (*(v9 + 16))(v14, v4, v7);
    v21 = sub_1C44157D4(v14, 1, v5);
    if (v21 == 1)
    {
      do
      {
        sub_1C4A73CD8(v21, v22, v23, v24, v25, v26, v27, v28, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5]);
      }

      while ((v21 & 1) != 0);
    }

    else
    {
      sub_1C43FC20C();
      v31 = *(v30 + 152);
      if ((*(v0 + v31) & 1) == 0)
      {
        *(v0 + v31) = 1;
        MEMORY[0x1EEE9AC00](v29);
        v32 = v39;
        *(&v37 - 4) = *(v39 + 80);
        *(&v37 - 6) = v5;
        *(&v37 - 5) = v6;
        v33 = *(v32 + 112);
        v34 = v38;
        *(&v37 - 4) = v33;
        *(&v37 - 3) = v34;
        *(&v37 - 2) = v4;
        sub_1C4A73BDC();
      }

      (*(v9 + 8))(v14, v7);
    }

    sub_1C4A750B8(v0);
    sub_1C43FE9F0();
  }
}

void sub_1C4A7397C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C4A739A4(a1, v2);
}

void sub_1C4A739A4(void *a1, unint64_t a2)
{
  v4 = v2;
  sub_1C4400A6C();
  [*(v4 + *(v7 + 200)) lock];
  if (*(v4 + *(*v4 + 152)))
  {
    goto LABEL_5;
  }

  v8 = *(*v4 + 184);
  sub_1C440D164();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v4 + v8);
  if (*(v9 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_1C483481C(v3);
    v3 = v15;
    *(v4 + v8) = v15;
    goto LABEL_8;
  }

  sub_1C4A75630(v9 + 40 * a2 + 32, v16);
  v10 = v17;
  sub_1C4A756A0(v16);
  if (v10)
  {
LABEL_5:
    v11 = a1[4];
    sub_1C4409678(a1, a1[3]);
    v12 = *(v11 + 8);
    sub_1C4F00B38();
LABEL_6:
    sub_1C4A750B8(v4);
    return;
  }

  sub_1C442E860(a1, v16);
  sub_1C4403138();
  v3 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v8) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(v3 + 16) > a2)
  {
    sub_1C4A75708(v16, v3 + 40 * a2 + 32);
    *(v4 + v8) = v3;
    swift_endAccess();
    v14 = a1[4];
    sub_1C4409678(a1, a1[3]);
    sub_1C4F00B98();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C4A73B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_1C4F00A98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1C4A73BDC()
{
  sub_1C43FBD3C();
  v2 = v1;
  sub_1C4400A6C();
  v4 = *(v0 + *(v3 + 200));
  [v4 lock];
  sub_1C4400A6C();
  v6 = *(v5 + 216);
  *(v0 + v6) = 1;
  [v4 unlock];
  sub_1C4400A6C();
  v8 = *(v0 + *(v7 + 208));
  [v8 lock];
  sub_1C4400A6C();
  v2(v0 + *(v9 + 128));
  [v8 unlock];
  [v4 lock];
  *(v0 + v6) = 0;
  sub_1C43FE9F0();

  return [v10 v11];
}

void sub_1C4A73CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v23 = *v20;
  v24 = *v20;
  v25 = *(*v20 + 88);
  v26 = sub_1C4F01F48();
  v27 = sub_1C43FCDF8(v26);
  v167 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v33 = v31 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v159 - v36;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF28();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v159 - v41;
  v170 = v25;
  isa = v25[-1].isa;
  v43 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBD08();
  v46 = v44 - v45;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = &v159 - v49;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  v178 = &v159 - v52;
  [*(v20 + *(v23 + 200)) lock];
  sub_1C43FC20C();
  v54 = *(v53 + 144);
  sub_1C440D164();
  v180 = v20;
  v55 = *(v20 + v54);
  sub_1C4F00B88();
  if ((sub_1C43FC724() & 1) == 0)
  {
    if (v55 < 0)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (!v55)
    {
      goto LABEL_75;
    }
  }

  sub_1C440D6CC();
  v59 = *(v58 + *(v57 + 160));
  if (v59 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (!v59)
  {
    p_isa = &v170->isa;
    goto LABEL_68;
  }

  v161 = v33;
  v160 = v46;
  v163 = v37;
  v162 = v54;
  v164 = v50;
  v165 = v24;
  v177 = 0;
  v46 = 0;
  v179 = v56[24];
  v169 = v180 + v56[17];
  v174 = v56[21];
  v60 = (isa + 32);
  v175 = (isa + 8);
  v176 = v167 + 8;
  v61 = 1;
  p_isa = &v170->isa;
  v24 = v173;
  v63 = v26;
  do
  {
    v64 = v59;
    sub_1C44135D0();
    v26 = v179;
    sub_1C4433648();
    v65 = *(v23 + v26);
    sub_1C4F017C8();
    sub_1C4406BE8(v42);
    if (v107)
    {
      sub_1C4402C08(&a12);
      v66(v42, v63);
      swift_endAccess();
      sub_1C4410EB4();
      v68 = *(v174 + v67);
      if (v46 < *(v68 + 16))
      {
        if (*(v68 + v46 + 32) != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_77;
    }

    v69 = v60;
    v70 = v63;
    v71 = p_isa;
    v72 = *v69;
    v73 = v178;
    v23 = v69;
    (*v69)(v178, v42, v71);
    swift_endAccess();
    if (v61)
    {
      sub_1C442D0D4();
      v75 = v73;
LABEL_16:
      v74(v75, v71);
      v61 = 0;
      v177 = v46;
      p_isa = v71;
      v63 = v70;
      v60 = v23;
      goto LABEL_20;
    }

    v76 = v180;
    v77 = v179;
    sub_1C4433648();
    v78 = *(v77 + v76);
    v79 = v177;
    sub_1C4F017C8();
    if (sub_1C44157D4(v24, 1, v71) == 1)
    {
      sub_1C4402C08(&a12);
      v80(v24, v70);
      swift_endAccess();
      sub_1C442D0D4();
      v75 = v178;
      goto LABEL_16;
    }

    v81 = v171;
    v82 = v24;
    v83 = v23;
    v72(v171, v82, v71);
    swift_endAccess();
    v84 = *(v169 + 8);
    v172 = (*v169)(v178, v81);
    v85 = v79;
    v23 = v175;
    v86 = *v175;
    (*v175)(v81, v71);
    v86(v178, v71);
    v61 = 0;
    if (v172)
    {
      v85 = v46;
    }

    v177 = v85;
    p_isa = v71;
    v63 = v70;
    v60 = v83;
    v24 = v173;
LABEL_20:
    ++v46;
    v59 = v64;
  }

  while (v64 != v46);
  if ((v61 & 1) == 0)
  {
    v87 = v60;
    sub_1C44135D0();
    v88 = v179;
    sub_1C4433648();
    v89 = *(v88 + v23);
    v90 = v166;
    v91 = v177;
    sub_1C4F017C8();
    sub_1C4406BE8(v90);
    if (!v107)
    {
      v93 = v164;
      v174 = *v87;
      v174(v164, v90, p_isa);
      swift_endAccess();
      v94 = v163;
      sub_1C43FCF64();
      sub_1C440BAA8(v95, v96, v97, p_isa);
      sub_1C44135D0();
      sub_1C44327E4();
      v26 = v63;
      v98 = v91;
      v99 = sub_1C4F017A8();
      sub_1C4F01708();
      v100 = *(v88 + v23);
      sub_1C4A721C4(v98, v100);
      v101 = v167;
      v102 = v100 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v98;
      v103 = *(v167 + 40);
      v178 = (v167 + 40);
      v103(v102, v94, v26);
      nullsub_1(v99);
      v104 = v170;
      swift_endAccess();
      sub_1C4400A6C();
      v24 = *(v105 + 232);
      sub_1C440D164();
      v106 = v161;
      (*(v101 + 16))(v161, v24 + v23, v26);
      sub_1C4406BE8(v106);
      if (v107)
      {
        sub_1C4402C08(&a12);
        v109 = v108(v106, v26);
        v46 = v93;
      }

      else
      {
        v110 = v160;
        v174(v160, v106, v104);
        v111 = v104;
        v112 = *(v169 + 8);
        v113 = (*v169)(v93, v110);
        v46 = v93;
        if (v113)
        {
          v42 = v103;
          if (qword_1EDDFECB0 != -1)
          {
            goto LABEL_81;
          }

          while (1)
          {
            v114 = sub_1C4F00978();
            sub_1C442B738(v114, qword_1EDDFECB8);
            v104 = sub_1C4F00968();
            v115 = sub_1C4F01CD8();
            if (os_log_type_enabled(v104, v115))
            {
              v116 = swift_slowAlloc();
              *v116 = 0;
              _os_log_impl(&dword_1C43F8000, v104, v115, "OrderedMergePublisher detected out of order events in upstream publishers. Results may be unreliable.", v116, 2u);
              v117 = v116;
              v46 = v164;
              MEMORY[0x1C6942830](v117, -1, -1);
            }

            sub_1C442D0D4();
            v118 = sub_1C441CC88();
            v109 = v119(v118);
LABEL_38:
            MEMORY[0x1EEE9AC00](v109);
            v121 = v165;
            *(&v159 - 8) = v165[10];
            *(&v159 - 7) = v104;
            v122 = *(v121 + 7);
            *(&v159 - 3) = *(v121 + 6);
            *(&v159 - 2) = v122;
            *(&v159 - 2) = v46;
            v123 = v104;
            v124 = v180;
            sub_1C4A73BDC();
            v23 = v183[0];
            v125 = v163;
            (*(isa + 2))(v163, v46, v123);
            sub_1C440BAA8(v125, 0, 1, v123);
            sub_1C44327E4();
            (v42)(v24 + v124, v125, v26);
            swift_endAccess();
            sub_1C43FC20C();
            v127 = *(v126 + 224);
            swift_beginAccess();
            v46 = *(v124 + v127);
            sub_1C4F00B88();
            v42 = sub_1C4F00B68();
            v128 = sub_1C4F00B88();
            if (v42)
            {
              sub_1C4408E68();
            }

            else
            {
              sub_1C4F00B68();
              sub_1C4408E68();
              if (v129)
              {
                goto LABEL_44;
              }

              if (((v46 | v23) & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
                return;
              }

              v128 = v23 + v46;
              if (__OFADD__(v23, v46))
              {
LABEL_44:
                v128 = sub_1C4F00B88();
              }

              else if (v128 < 0)
              {
                goto LABEL_86;
              }
            }

            v130 = v162;
            sub_1C44135D0();
            sub_1C44327E4();
            v131 = *(v23 + v130);
            sub_1C4F00B88();
            if ((sub_1C43FC724() & 1) == 0)
            {
              sub_1C4F00B88();
              v46 = sub_1C43FC724();
              sub_1C4F00B88();
              if (v46)
              {
                v130 = v162;
              }

              else
              {
                v132 = sub_1C4F00B68();
                v130 = v162;
                if (v132)
                {
                  goto LABEL_53;
                }

                if ((v131 | v128) < 0)
                {
                  goto LABEL_85;
                }

                if (__OFADD__(v131, v128))
                {
LABEL_53:
                  sub_1C4F00B88();
                }

                else if (v131 + v128 < 0)
                {
                  goto LABEL_87;
                }
              }

              sub_1C4410EB4();
              *(v134 + v130) = v133;
            }

            swift_endAccess();
            sub_1C4F00B78();
            sub_1C44135D0();
            *(v23 + v127) = v135;
            sub_1C44327E4();
            v136 = *(v23 + v130);
            sub_1C4F00B88();
            if ((sub_1C43FC724() & 1) == 0)
            {
              sub_1C4F00B88();
              if (sub_1C43FC724())
              {
                sub_1C4F00B88();
              }

              else
              {
                if (v136 < 0)
                {
                  goto LABEL_83;
                }

                if (!v136)
                {
                  goto LABEL_84;
                }
              }

              sub_1C4410EB4();
              *(v138 + v130) = v137;
            }

            swift_endAccess();
            sub_1C4410EB4();
            p_isa = *(*v139 + 184);
            swift_beginAccess();
            if ((v42 & 0x8000000000000000) != 0)
            {
LABEL_79:
              __break(1u);
            }

            else
            {
              sub_1C4410EB4();
              v141 = *(p_isa + v140);
              if (v42 < *(v141 + 16))
              {
                sub_1C4A75630(v141 + 40 * v42 + 32, &v181);
                if (v182)
                {
                  sub_1C441D670(&v181, v183);
                  swift_endAccess();
                  p_isa = sub_1C4409678(v183, v183[3]);
                  sub_1C4F00B98();
                  sub_1C440962C(v183);
                }

                else
                {
                  sub_1C4A756A0(&v181);
                  swift_endAccess();
                }

                sub_1C442D0D4();
                v142 = sub_1C441CC88();
                v143(v142);
                goto LABEL_68;
              }
            }

            __break(1u);
LABEL_81:
            swift_once();
          }
        }

        sub_1C442D0D4();
        v109 = v120(v110, v111);
        v104 = v111;
      }

      v42 = v103;
      goto LABEL_38;
    }

    sub_1C4402C08(&a12);
    v92(v90, v63);
    swift_endAccess();
  }

LABEL_25:
  v24 = v165;
LABEL_68:
  sub_1C440D6CC();
  v146 = *(v145 + 176);
  if ((*(v147 + v146) & 1) == 0)
  {
    v148 = *(v180 + *(v144 + 168));
    v149 = *(v148 + 16);
    v150 = (v148 + 32);
    while (v149)
    {
      v151 = *v150++;
      --v149;
      if ((v151 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v152 = p_isa;
    v153 = *(v144 + 192);
    sub_1C44135D0();
    v154 = sub_1C440D164();
    v179 = &v159;
    *&v181 = *(v23 + v153);
    MEMORY[0x1EEE9AC00](v154);
    v178 = v24[10];
    *(&v159 - 6) = v178;
    *(&v159 - 5) = v152;
    v155 = v24[13];
    v177 = v24[12];
    *(&v159 - 4) = v177;
    *(&v159 - 3) = v155;
    v156 = v24[14];
    v157 = v24[15];
    *(&v159 - 2) = v156;
    *(&v159 - 1) = v157;
    sub_1C4F017A8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441F840();
    swift_getWitnessTable();
    LOBYTE(v153) = sub_1C4F014D8();

    if (v153)
    {
      *(v180 + v146) = 1;
      v158 = sub_1C4A74B18();
      MEMORY[0x1EEE9AC00](v158);
      *(&v159 - 6) = v178;
      *(&v159 - 5) = v152;
      *(&v159 - 4) = v177;
      *(&v159 - 3) = v155;
      *(&v159 - 2) = v156;
      *(&v159 - 1) = v157;
      sub_1C4A73BDC();
    }
  }

LABEL_75:
  sub_1C4A750B8(v180);
  sub_1C43FE9F0();
}

id sub_1C4A74B18()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = sub_1C4F01F48();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  [*(v0 + *(v2 + 200)) lock];
  sub_1C4400A6C();
  *(v0 + *(v8 + 152)) = 1;
  sub_1C4400A6C();
  v10 = *(v9 + 184);
  swift_beginAccess();
  v11 = *(v0 + v10);
  sub_1C43FD428();
  v12 = *(v11 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4A72990(v31, v12);
  v14 = *(v0 + v10);
  *(v0 + v10) = v13;

  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v3);
  sub_1C4400A6C();
  v19 = *(v18 + 192);
  swift_beginAccess();
  v20 = *(v0 + v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01758();

  v21 = sub_1C4F01798();
  v22 = *(v0 + v19);
  *(v0 + v19) = v21;

  v23 = *(v11 + 16);
  if (v23)
  {
    v24 = v11 + 32;
    do
    {
      sub_1C4A75630(v24, v31);
      sub_1C4A75630(v31, v28);
      if (v29)
      {
        v25 = v30;
        sub_1C4409678(v28, v29);
        v26 = *(v25 + 8);
        sub_1C4F00B38();
        sub_1C4A756A0(v31);
        sub_1C440962C(v28);
      }

      else
      {
        sub_1C4A756A0(v31);
        sub_1C4A756A0(v28);
      }

      v24 += 40;
      --v23;
    }

    while (v23);
  }

  return sub_1C4A750B8(v1);
}

uint64_t sub_1C4A74D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedConformanceWitness();
  v5 = sub_1C4F00B58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1C440BAA8(&v11 - v8, 1, 1, a4);
  sub_1C4F00B08();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C4A74E64(uint64_t a1)
{
  sub_1C43FC20C();
  [*(v1 + *(v3 + 200)) lock];
  if (*(v1 + *(*v1 + 152)) & 1) != 0 || (*(v1 + *(*v1 + 176)))
  {
    return sub_1C4A750B8(v1);
  }

  sub_1C4F00B88();
  result = sub_1C4F00B68();
  if ((result & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!a1)
    {
      return sub_1C4A750B8(v1);
    }
  }

  sub_1C43FC20C();
  v6 = *(v5 + 144);
  sub_1C440D164();
  v7 = *(v1 + v6);
  sub_1C4F00B88();
  sub_1C4411720();
  if (sub_1C4F00B68())
  {
    return sub_1C4A750B8(v1);
  }

  if (*(v1 + *(*v1 + 216)))
  {
    v8 = *(*v1 + 224);
    sub_1C4403138();
    v9 = *(v1 + v8);
    sub_1C4F00B88();
    sub_1C4411720();
    if (sub_1C4F00B68())
    {
LABEL_24:
      swift_endAccess();
      return sub_1C4A750B8(v1);
    }

    sub_1C4F00B88();
    sub_1C4411720();
    v10 = sub_1C4F00B68();
    v11 = sub_1C4F00B88();
    if (v10)
    {
LABEL_23:
      *(v1 + v8) = v11;
      goto LABEL_24;
    }

    result = sub_1C4F00B68();
    if (result)
    {
LABEL_14:
      v11 = sub_1C4F00B88();
      goto LABEL_23;
    }

    if (((v9 | a1) & 0x8000000000000000) == 0)
    {
      v11 = v9 + a1;
      if (!__OFADD__(v9, a1))
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

      goto LABEL_14;
    }

    goto LABEL_31;
  }

  sub_1C4403138();
  v12 = *(v1 + v6);
  sub_1C4F00B88();
  sub_1C4411720();
  if (sub_1C4F00B68())
  {
LABEL_27:
    v15 = swift_endAccess();
    do
    {
      sub_1C4A73CD8(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    }

    while ((v15 & 1) != 0);
    return sub_1C4A750B8(v1);
  }

  sub_1C4F00B88();
  sub_1C4411720();
  v13 = sub_1C4F00B68();
  v14 = sub_1C4F00B88();
  if (v13)
  {
LABEL_26:
    *(v1 + v6) = v14;
    goto LABEL_27;
  }

  result = sub_1C4F00B68();
  if (result)
  {
    goto LABEL_21;
  }

  if ((v12 | a1) < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v12 + a1;
  if (__OFADD__(v12, a1))
  {
LABEL_21:
    v14 = sub_1C4F00B88();
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t *sub_1C4A750DC()
{
  v1 = *v0;
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 128));
  sub_1C43FC20C();
  v3 = *(v0 + *(v2 + 136) + 8);

  sub_1C43FC20C();
  v5 = *(v0 + *(v4 + 168));

  sub_1C43FC20C();
  v7 = *(v0 + *(v6 + 184));

  sub_1C43FC20C();
  v9 = *(v0 + *(v8 + 192));

  sub_1C43FC20C();

  sub_1C43FC20C();
  sub_1C43FC20C();
  v13 = *(v12 + 232);
  v14 = *(v1 + 88);
  v15 = sub_1C4F01F48();
  sub_1C43FBCE0(v15);
  (*(v16 + 8))(v0 + v13);
  return v0;
}

uint64_t sub_1C4A75244()
{
  sub_1C4A750DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A752F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C4A7534C(uint64_t a1)
{
  v2 = *(a1 + 104);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = sub_1C4F01F48();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C4A7546C(_OWORD *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  result = type metadata accessor for OrderedMergePublisher.OrderedMerged();
  if (v2 <= 0x3F)
  {
    result = sub_1C4F00A98();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4A75558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(a2 + 40);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C4A755E8(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  return sub_1C4A74D40(a1, v1[2], v1[3], v1[4]);
}

uint64_t sub_1C4A755F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v5 = v1[7];
  v4 = v1[8];
  result = sub_1C4F00B28();
  *a1 = result;
  return result;
}

uint64_t sub_1C4A75630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A756A0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4A75708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A75778()
{
  v1 = v0[5];
  v3 = v0[7];
  v2 = v0[8];
  return sub_1C4F00B08();
}

uint64_t OrganizationMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for OrganizationMatcher();
  *(a4 + v8[7]) = 1056964608;
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  v9 = v8[5];
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v10);
  *(a4 + v8[6]) = v7;
  return result;
}

uint64_t sub_1C4A75828()
{
  v0 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - v4;
  sub_1C44F9918(v3, qword_1EDE2CC80);
  sub_1C442B738(v0, qword_1EDE2CC80);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C4EFCB98();
  sub_1C4EFCBD8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1C4A75984@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v40 - v5;
  v6 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - v8;
  v10 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v40 - v15;
  v16 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v40 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v42 = &v40 - v25;
  sub_1C4EFC1E8();
  v26 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0);
  MEMORY[0x1C693AE20](v24, v16, v26);
  v27 = *(v17 + 8);
  v27(v24, v16);
  v43 = v17 + 8;
  sub_1C4EFC1E8();
  MEMORY[0x1C693AE20](v21, v16, v26);
  v27(v21, v16);
  v28 = sub_1C4EFCB78();
  sub_1C440BAA8(v9, 1, 1, v28);
  sub_1C4A76B8C(46, 0xE100000000000000, v9);
  v29 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90);
  v30 = v41;
  v40 = v10;
  MEMORY[0x1C693AE20](v14, v10, v29);
  v31 = *(v49 + 8);
  v49 += 8;
  v31(v14, v10);
  v32 = v44;
  v33 = v42;
  sub_1C4EFC148();
  v34 = v45;
  sub_1C47DC374();
  v35 = v34;
  sub_1C47DC5D4();
  v36 = *(v46 + 8);
  v37 = v35;
  v38 = v47;
  v36(v37, v47);
  v36(v32, v38);
  v31(v30, v40);
  v27(v24, v16);
  return (v27)(v33, v16);
}

uint64_t sub_1C4A75E64@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v2 = *(v1 - 8);
  v57 = v1;
  v58 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v48 - v4;
  v55 = sub_1C4EFC188();
  v63 = *(v55 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v55);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v48 - v8;
  v9 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v61 = sub_1C4EFCB28();
  v17 = *(v61 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v48 - v23;
  v25 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v62 = *(v25 - 8);
  v26 = *(v62 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v60 = &v48 - v30;
  v31 = sub_1C4EFCB78();
  sub_1C440BAA8(v24, 1, 1, v31);
  sub_1C4EFC178();
  sub_1C4A764AC(v14);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  v32 = MEMORY[0x1E69E67B0];
  v49 = v16;
  sub_1C4EFCB18();
  (*(v10 + 8))(v14, v9);
  v33 = *(v17 + 8);
  v51 = v17 + 8;
  v52 = v33;
  v33(v20, v61);
  sub_1C4420C3C(v24, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE40](v16, v32);
  v34 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90);
  MEMORY[0x1C693AE00](v29, v25, v34);
  v35 = *(v62 + 8);
  v62 += 8;
  v50 = v35;
  v35(v29, v25);
  v36 = v53;
  sub_1C4EFCB38();
  v37 = sub_1C4A7A2D8(&qword_1EDDFA260, MEMORY[0x1E69E8250]);
  v38 = v54;
  v39 = v55;
  MEMORY[0x1C693AE00](v36, v55, v37);
  v40 = *(v63 + 8);
  v63 += 8;
  v41 = v36;
  v42 = v39;
  v40(v41, v39);
  v43 = v56;
  sub_1C4EFC128();
  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v44 = v49;
  v45 = MEMORY[0x1E69E67B0];
  v46 = v57;
  sub_1C4EFCAD8();
  v52(v20, v61);
  MEMORY[0x1C693AEC0](v44, v45);
  (*(v58 + 8))(v43, v46);
  v40(v38, v42);
  return v50(v60, v25);
}

uint64_t sub_1C4A764AC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v40 - v3;
  v4 = sub_1C4EFCB28();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - v10;
  v12 = sub_1C4EFC188();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v40 - v23;
  v25 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v40 - v31;
  sub_1C4EFC1E8();
  v40 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0);
  MEMORY[0x1C693AE20](v30, v25, v40);
  v41 = *(v26 + 8);
  v41(v30, v25);
  sub_1C4EFCB38();
  v33 = sub_1C4EFCB78();
  sub_1C440BAA8(v11, 1, 1, v33);
  sub_1C4EFC178();
  sub_1C4A7A2D8(&qword_1EDDFA260, MEMORY[0x1E69E8250]);
  v34 = v42;
  v35 = v43;
  sub_1C4EFCB18();
  (*(v47 + 8))(v7, v48);
  sub_1C4420C3C(v11, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  (*(v44 + 8))(v16, v35);
  MEMORY[0x1C693AE40](v34, MEMORY[0x1E69E67B0]);
  v36 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90);
  v37 = v45;
  MEMORY[0x1C693AE20](v22, v45, v36);
  v38 = *(v46 + 8);
  v38(v22, v37);
  sub_1C4EFC148();
  sub_1C47DC5D4();
  (*(v49 + 8))(v34, v50);
  v38(v24, v37);
  return (v41)(v32, v25);
}

uint64_t sub_1C4A76A28()
{
  v0 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - v3;
  v10[0] = 46;
  v10[1] = 0xE100000000000000;
  v5 = sub_1C47DCB64();
  v6 = MEMORY[0x1E69E6158];
  MEMORY[0x1C693AE00](v11, v10, MEMORY[0x1E69E6158], v5);
  v8 = 44;
  v9 = 0xE100000000000000;
  MEMORY[0x1C693AE00](v10, &v8, v6, v5);
  v8 = v11[0];
  v9 = v11[1];
  sub_1C4EFC128();

  sub_1C47DC1D0();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C4A76B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C4EFCB28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  v17[1] = a2;
  sub_1C4EFC178();
  sub_1C47DCB64();
  v15 = MEMORY[0x1E69E67B0];
  sub_1C4EFCB18();
  sub_1C4420C3C(a3, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  (*(v11 + 8))(v14, v10);

  return MEMORY[0x1C693AE40](v9, v15);
}

uint64_t sub_1C4A76D28()
{
  v0 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v18 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v23[0] = 1886547779;
  v23[1] = 0xE400000000000000;
  v14 = sub_1C47DCB64();
  v15 = MEMORY[0x1E69E6158];
  MEMORY[0x1C693AE00](v24, v23, MEMORY[0x1E69E6158], v14);
  v22[0] = 6516297;
  v22[1] = 0xE300000000000000;
  MEMORY[0x1C693AE00](v23, v22, v15, v14);
  v21[0] = 4410444;
  v21[1] = 0xE300000000000000;
  MEMORY[0x1C693AE00](v22, v21, v15, v14);
  v20[0] = 6583372;
  v20[1] = 0xE300000000000000;
  MEMORY[0x1C693AE00](v21, v20, v15, v14);
  v18 = 28483;
  v19 = 0xE200000000000000;
  MEMORY[0x1C693AE00](v20, &v18, v15, v14);
  v18 = v24[0];
  v19 = v24[1];
  sub_1C4EFC128();

  sub_1C47DC1D0();

  sub_1C47DC1D0();

  sub_1C47DC1D0();

  sub_1C47DC1D0();

  v16 = *(v1 + 8);
  v16(v5, v0);
  v16(v8, v0);
  v16(v11, v0);
  return (v16)(v13, v0);
}

unint64_t sub_1C4A76FF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1C441CC9C();
  sub_1C441AE7C();
  result = sub_1C44CFDB0(v8, v9, v10, v11);
  if ((v13 & 1) == 0)
  {
    v14 = sub_1C4F012B8();
    sub_1C44DBF14(v14, a1, a2);
    sub_1C441CC9C();
    sub_1C4433664();
    sub_1C4B745C4(v15, v16, v17, v18);
    if (v19)
    {

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      sub_1C441AE7C();
      v20 = sub_1C4F013A8();
      sub_1C4433664();
      v21 = sub_1C4F01F88();

      if (__OFADD__(v20, v21))
      {
        __break(1u);
        return result;
      }

      sub_1C441AE7C();
      sub_1C4F012E8();
      sub_1C4F012B8();
      sub_1C441AE7C();
      v22 = sub_1C4F01448();
      a1 = MEMORY[0x1C693FEF0](v22);
      a2 = v23;
    }

    v24 = sub_1C4A771B0(a3, a4);
    if (v25)
    {
      if (a1 == v24 && v25 == a2)
      {
      }

      else
      {
        sub_1C4F02938();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C4A771B0(uint64_t a1, unint64_t a2)
{
  sub_1C441CC9C();
  sub_1C442FFF8();
  sub_1C44CFDB0(v4, v5, v6, v7);
  if (v8)
  {
    return 0;
  }

  v9 = sub_1C4F012B8();
  sub_1C44DBF14(v9, a1, a2);
  sub_1C441CC9C();
  sub_1C4425EC0();
  sub_1C4B745C4(v10, v11, v12, v13);
  if (v14)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return a1;
  }

  sub_1C442FFF8();
  v15 = sub_1C4F013A8();
  sub_1C4425EC0();
  v16 = sub_1C4F01F88();

  if (!__OFADD__(v15, v16))
  {
    sub_1C442FFF8();
    sub_1C4F012E8();
    sub_1C4F012B8();
    sub_1C442FFF8();
    v18 = sub_1C4F01448();
    a1 = MEMORY[0x1C693FEF0](v18);

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A772E0()
{
  if (qword_1EDDE4FD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C442B738(v0, qword_1EDE2CC80);
  sub_1C4A7A230();
  sub_1C4A7A284();
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C4F01C18();
  return v2;
}

float sub_1C4A773F0(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v105 = &v97 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v108 = &v97 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v103 = &v97 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v116 = &v97 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v97 - v17;
  v117 = type metadata accessor for EntityTriple(0);
  v112 = *(v117 - 8);
  v18 = *(v112 + 64);
  v19 = MEMORY[0x1EEE9AC00](v117);
  v110 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v100 = &v97 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v106 = &v97 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v97 = &v97 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v115 = &v97 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v98 = &v97 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v97 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v101 = &v97 - v34;
  v35 = 0;
  v36 = *(a1 + 16);
  v113 = a1;
  v114 = v36;
  v118 = (v4 + 8);
  v104 = v8;
  while (1)
  {
    if (v114 == v35)
    {
      goto LABEL_39;
    }

    v37 = *(v112 + 72);
    v107 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v109 = v37;
    sub_1C44718CC(v113 + v107 + v37 * v35, v33);
    v38 = *(v117 + 20);
    sub_1C4EFEBF8();
    sub_1C4A7A2D8(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v121 == v119 && v122 == v120)
    {
      v40 = 1;
    }

    else
    {
      v40 = sub_1C4F02938();
    }

    v41 = *v118;
    (*v118)(v111, v3);

    if (v40)
    {
      goto LABEL_17;
    }

    v42 = v108;
    sub_1C4EFE6E8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v121 == v119 && v122 == v120)
    {
      break;
    }

    v44 = sub_1C4F02938();
    v41(v42, v3);

    if (v44)
    {
      goto LABEL_17;
    }

    sub_1C44DBD5C(v33, type metadata accessor for EntityTriple);
    ++v35;
  }

  v41(v42, v3);

LABEL_17:
  v45 = v33;
  v46 = v101;
  sub_1C448566C(v45, v101);
  v47 = (v46 + *(v117 + 32));
  v48 = v47[1];
  v99 = *v47;
  v108 = v48;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v46, type metadata accessor for EntityTriple);
  v49 = *(v102 + 16);
  v50 = v102 + v107;
  while (1)
  {
    v51 = v105;
    if (!v49)
    {

      goto LABEL_39;
    }

    sub_1C44718CC(v50, v110);
    v52 = *(v117 + 20);
    sub_1C4EFEBF8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v121 == v119 && v122 == v120)
    {
      v58 = v51;
      goto LABEL_33;
    }

    v111 = v50;
    v54 = sub_1C4F02938();
    v41(v51, v3);

    if (v54)
    {
      goto LABEL_34;
    }

    v55 = v104;
    sub_1C4EFE6E8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v121 == v119 && v122 == v120)
    {
      break;
    }

    v57 = sub_1C4F02938();
    v41(v55, v3);

    if (v57)
    {
      goto LABEL_34;
    }

    sub_1C44DBD5C(v110, type metadata accessor for EntityTriple);
    v50 = &v111[v109];
    --v49;
  }

  v58 = v55;
LABEL_33:
  v41(v58, v3);

LABEL_34:
  v59 = v100;
  sub_1C448566C(v110, v100);
  v60 = (v59 + *(v117 + 32));
  v61 = *v60;
  v62 = v60[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v59, type metadata accessor for EntityTriple);
  v63 = sub_1C4A772E0();
  v65 = v64;

  v66 = sub_1C4A772E0();
  v68 = v67;

  v69 = 1.0;
  if (v63 != v66 || v65 != v68)
  {
    v71 = sub_1C4F02938();

    if (v71)
    {
      return v69;
    }

LABEL_39:
    for (i = 0; ; ++i)
    {
      if (v114 == i)
      {
        return 0.0;
      }

      v73 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v74 = *(v112 + 72);
      sub_1C44718CC(v113 + v73 + v74 * i, v115);
      v75 = *(v117 + 20);
      sub_1C4EFE778();
      sub_1C4A7A2D8(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
      sub_1C4F01578();
      sub_1C4F01578();
      v76 = v121 == v119 && v122 == v120;
      v77 = v76 ? 1 : sub_1C4F02938();
      v78 = *v118;
      (*v118)(v116, v3);

      if (v77)
      {
        break;
      }

      sub_1C44DBD5C(v115, type metadata accessor for EntityTriple);
    }

    v79 = v98;
    sub_1C448566C(v115, v98);
    v80 = (v79 + *(v117 + 32));
    v81 = v80[1];
    v115 = *v80;
    v116 = v81;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v79, type metadata accessor for EntityTriple);
    v82 = *(v102 + 16);
    v83 = v102 + v73;
    while (1)
    {
      v84 = v103;
      if (!v82)
      {
        v69 = 0.0;
        goto LABEL_62;
      }

      sub_1C44718CC(v83, v106);
      v85 = *(v117 + 20);
      sub_1C4EFE778();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v121 == v119 && v122 == v120)
      {
        break;
      }

      v87 = sub_1C4F02938();
      v88 = v3;
      v89 = v87;
      v90 = v88;
      (v78)(v84);

      if (v89)
      {
        goto LABEL_60;
      }

      sub_1C44DBD5C(v106, type metadata accessor for EntityTriple);
      v83 += v74;
      --v82;
      v3 = v90;
    }

    v78(v84, v3);

LABEL_60:
    v91 = v97;
    sub_1C448566C(v106, v97);
    v92 = (v91 + *(v117 + 32));
    v94 = *v92;
    v93 = v92[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v91, type metadata accessor for EntityTriple);
    sub_1C4A76FF4(v115, v116, v94, v93);
    v69 = v95;
  }

LABEL_62:

  return v69;
}

float sub_1C4A77F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v125 = a5;
  v129 = a4;
  v130 = a2;
  v128 = a3(0);
  v6 = sub_1C43FCDF8(v128);
  v124 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v131 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v118 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v123 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v115 - v16;
  v17 = sub_1C4EFEEF8();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v121 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v122 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v127 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v120 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v136 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  v132 = &v115 - v33;
  v137 = type metadata accessor for EntityTriple(0);
  v34 = sub_1C43FCDF8(v137);
  v133 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v135 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v117 = v40;
  sub_1C43FD1D0();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v115 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v119 = &v115 - v45;
  v46 = 0;
  v134 = *(a1 + 16);
  v138 = (v20 + 8);
  v126 = a1;
  while (1)
  {
    if (v134 == v46)
    {
      goto LABEL_37;
    }

    sub_1C43FBF6C();
    v48 = *(v47 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v49, v44);
    v50 = *(v137 + 20);
    v51 = v132;
    sub_1C4EFEBF8();
    sub_1C440774C();
    sub_1C4A7A2D8(&off_1EDDFCCA8, v52);
    sub_1C43FF4B4();
    sub_1C4408E80();
    sub_1C441A178();
    v53 = v53 && v51 == &v44[v50];
    if (v53)
    {
      v54 = 1;
    }

    else
    {
      v54 = sub_1C44172DC();
    }

    v55 = *v138;
    (*v138)(v132, v17);

    if (v54)
    {
      goto LABEL_17;
    }

    v56 = v127;
    sub_1C4EFE6E8();
    sub_1C43FF4B4();
    sub_1C43FF4B4();
    sub_1C441A178();
    if (v53 && v51 == v56)
    {
      break;
    }

    v58 = sub_1C44172DC();
    sub_1C440E640();
    v55();

    if (v58)
    {
      goto LABEL_17;
    }

    sub_1C44DBD5C(v44, type metadata accessor for EntityTriple);
    ++v46;
  }

  sub_1C440E640();
  v55();

LABEL_17:
  v59 = v119;
  sub_1C448566C(v44, v119);
  v60 = (v59 + *(v137 + 32));
  v61 = v60[1];
  v127 = *v60;
  v132 = v61;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441224C();
  v62 = 0;
  v63 = *(v130 + 16);
  while (1)
  {
    v64 = v122;
    if (v63 == v62)
    {

      goto LABEL_37;
    }

    sub_1C43FBF6C();
    sub_1C44718CC(v130 + v65 + *(v66 + 72) * v62, v131);
    v67 = *(v128 + 20);
    sub_1C4EFEBF8();
    sub_1C43FF4B4();
    sub_1C43FF4B4();
    sub_1C441A178();
    if (v53 && v51 == v64)
    {
      break;
    }

    v69 = sub_1C44172DC();
    sub_1C440E640();
    v55();

    if (v69)
    {
      goto LABEL_32;
    }

    v51 = v121;
    sub_1C4EFE6E8();
    v70 = (v131 + v67);
    sub_1C43FF4B4();
    sub_1C4408E80();
    sub_1C441A178();
    if (v53 && v51 == v70)
    {
      break;
    }

    v72 = sub_1C44172DC();
    sub_1C440E640();
    v55();

    if (v72)
    {
      goto LABEL_32;
    }

    sub_1C44DBD5C(v131, v125);
    ++v62;
  }

  sub_1C440E640();
  v55();

LABEL_32:
  v73 = v118;
  sub_1C448566C(v131, v118);
  v74 = (v73 + *(v128 + 32));
  v75 = *v74;
  v76 = v74[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v73, v125);
  v77 = sub_1C4A772E0();
  v79 = v78;

  v80 = sub_1C4A772E0();
  v82 = v81;

  v83 = 1.0;
  if (v77 != v80 || v79 != v82)
  {
    v85 = sub_1C4F02938();

    if (v85)
    {
      return v83;
    }

LABEL_37:
    for (i = 0; ; ++i)
    {
      if (v134 == i)
      {
        return 0.0;
      }

      sub_1C43FBF6C();
      v88 = *(v87 + 72);
      sub_1C44032D8();
      v89 = v135;
      sub_1C44718CC(v90, v135);
      v91 = v136;
      v92 = *(v137 + 20);
      sub_1C4EFE778();
      sub_1C440774C();
      sub_1C4A7A2D8(&off_1EDDFCCA8, v93);
      v94 = v89 + v92;
      sub_1C43FF4B4();
      sub_1C4408E80();
      sub_1C441A178();
      v95 = v53 && v91 == v94;
      v96 = v95 ? 1 : sub_1C44172DC();
      v97 = *v138;
      (*v138)(v136, v17);

      if (v96)
      {
        break;
      }

      sub_1C44DBD5C(v135, type metadata accessor for EntityTriple);
    }

    v98 = v117;
    sub_1C448566C(v135, v117);
    v99 = (v98 + *(v137 + 32));
    v100 = v99[1];
    v137 = *v99;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441224C();
    v101 = 0;
    v102 = *(v130 + 16);
    while (1)
    {
      if (v102 == v101)
      {
        v83 = 0.0;
        goto LABEL_60;
      }

      v103 = v123;
      sub_1C43FBF6C();
      sub_1C44718CC(v130 + v104 + *(v105 + 72) * v101, v103);
      v106 = *(v128 + 20);
      sub_1C4EFE778();
      sub_1C43FF4B4();
      sub_1C43FF4B4();
      if (v141 == v139 && v142 == v140)
      {
        break;
      }

      v108 = sub_1C4F02938();
      sub_1C440E640();
      v97();

      if (v108)
      {
        goto LABEL_58;
      }

      sub_1C44DBD5C(v123, v125);
      ++v101;
    }

    sub_1C440E640();
    v97();

LABEL_58:
    v109 = v116;
    sub_1C448566C(v123, v116);
    v110 = (v109 + *(v128 + 32));
    v111 = *v110;
    v112 = v110[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v109, v125);
    sub_1C4A76FF4(v137, v100, v111, v112);
    v83 = v113;
  }

LABEL_60:

  return v83;
}

uint64_t sub_1C4A78900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v77 = a1;
  v74 = a3;
  v72 = sub_1C4EF9CD8();
  v70 = *(v72 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C4EFF0C8();
  v78 = *(v75 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v65 - v10;
  v12 = type metadata accessor for EntityTriple(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v65 - v18;
  v20 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v65 - v28;
  v30 = v79;
  result = sub_1C44C6368();
  if (v30)
  {
    return result;
  }

  v68 = v3;
  v69 = v11;
  v65 = v27;
  v66 = v24;
  v79 = 0;
  v67 = v15;
  v32 = v78;
  v34 = v75;
  v33 = v76;
  if (v76)
  {
    sub_1C44F1938(v76, v19);
    v35 = type metadata accessor for GraphTriple(0);
    if (sub_1C44157D4(v19, 1, v35) != 1)
    {
      (*(v32 + 16))(v29, v19, v34);
      sub_1C44DBD5C(v19, type metadata accessor for GraphTriple);
      v36 = 0;
      goto LABEL_7;
    }

    sub_1C4420C3C(v19, &unk_1EC0BC900, &unk_1C4F142D0);
  }

  v36 = 1;
LABEL_7:
  v37 = v29;
  sub_1C440BAA8(v29, v36, 1, v34);
  v38 = v69;
  v39 = v77;
  sub_1C44D0BD8(v77, v69);
  if (sub_1C44157D4(v38, 1, v12) == 1)
  {
    sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v40 = sub_1C4F00978();
    sub_1C442B738(v40, qword_1EDE2DE10);
    v41 = sub_1C4F00968();
    v42 = sub_1C4F01CD8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C43F8000, v41, v42, "Organization Matcher: skipping entityTriples are empty", v43, 2u);
      MEMORY[0x1C6942830](v43, -1, -1);
    }

    sub_1C46828B4();
    v44 = swift_allocError();
    *v45 = 0;
    v79 = v44;
    swift_willThrow();
    return sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v46 = v67;
  sub_1C448566C(v38, v67);
  if (v33)
  {
    v47 = v79;
    v48 = sub_1C4A77F7C(v39, v33, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
    v49 = v73;
    v50 = v74;
    v79 = v47;
    if (v47)
    {
      sub_1C44DBD5C(v46, type metadata accessor for EntityTriple);
      return sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v51 = v48;
  }

  else
  {
    v51 = 0.0;
    v49 = v73;
    v50 = v74;
  }

  v77 = type metadata accessor for OrganizationMatcher();
  v52 = *(v68 + *(v77 + 28));
  v53 = v65;
  if (v51 <= v52)
  {
    sub_1C4EFF008();
    sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v53, 0, 1, v34);
    sub_1C44DDDBC(v53, v37);
    v51 = v52;
  }

  v54 = v66;
  sub_1C457E858(v37, v66);
  v55 = sub_1C44157D4(v54, 1, v34);
  v76 = v37;
  if (v55 == 1)
  {
    sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {
    v56 = v78;
    (*(v78 + 32))(v49, v54, v34);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v57 = v34;
    v58 = type metadata accessor for EntityMatch(0);
    v59 = *(v56 + 16);
    v60 = v67;
    v59(v50 + v58[5], v67, v57);
    v59(v50 + v58[6], v49, v57);
    v61 = v71;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v63 = v62;
    (*(v70 + 8))(v61, v72);
    (*(v56 + 8))(v49, v57);
    sub_1C44DBD5C(v60, type metadata accessor for EntityTriple);
    result = sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v64 = *(v68 + *(v77 + 24));
    *(v50 + v58[7]) = v51;
    *(v50 + v58[8]) = v63;
    *(v50 + v58[9]) = v64;
    *(v50 + v58[10]) = 0;
  }

  return result;
}

uint64_t sub_1C4A790C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v79 = a1;
  v75 = a3;
  v74 = sub_1C4EF9CD8();
  v72 = *(v74 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityTriple(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v66 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v66 - v29;
  v31 = v80;
  result = sub_1C44C6368();
  if (!v31)
  {
    v70 = v3;
    v71 = v10;
    v66 = v28;
    v67 = v25;
    v80 = 0;
    v68 = v9;
    v69 = v13;
    v33 = v76;
    v34 = v77;
    v35 = v78;
    if (v78)
    {
      sub_1C44D0BD8(v78, v20);
      v36 = v33;
      if (sub_1C44157D4(v20, 1, v71) == 1)
      {
        sub_1C4420C3C(v20, &qword_1EC0BA590, &qword_1C4F1F430);
        v37 = 1;
      }

      else
      {
        (*(v33 + 16))(v30, v20, v34);
        sub_1C44DBD5C(v20, type metadata accessor for EntityTriple);
        v37 = 0;
      }
    }

    else
    {
      v37 = 1;
      v36 = v76;
    }

    v38 = v79;
    v39 = v30;
    sub_1C440BAA8(v30, v37, 1, v34);
    sub_1C44D0BD8(v38, v18);
    if (sub_1C44157D4(v18, 1, v71) == 1)
    {
      sub_1C4420C3C(v18, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Organization Matcher: skipping entityTriples are empty", v43, 2u);
        MEMORY[0x1C6942830](v43, -1, -1);
      }

      sub_1C46828B4();
      v44 = swift_allocError();
      *v45 = 0;
      v80 = v44;
      swift_willThrow();
      return sub_1C4420C3C(v30, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v46 = v18;
    v47 = v69;
    sub_1C448566C(v46, v69);
    if (v35)
    {
      v48 = v80;
      v49 = sub_1C4A773F0(v38, v35);
      v50 = v75;
      v51 = v68;
      v80 = v48;
      if (v48)
      {
        sub_1C44DBD5C(v47, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v30, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v52 = v49;
    }

    else
    {
      v52 = 0.0;
      v50 = v75;
      v51 = v68;
    }

    v79 = type metadata accessor for OrganizationMatcher();
    v53 = *(v70 + *(v79 + 28));
    v54 = v66;
    if (v52 <= v53)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v54, 0, 1, v34);
      sub_1C44DDDBC(v54, v39);
      v52 = v53;
    }

    v55 = v67;
    sub_1C457E858(v39, v67);
    if (sub_1C44157D4(v55, 1, v34) == 1)
    {
      sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v36 + 32))(v51, v55, v34);
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v56 = v51;
      v57 = v34;
      v58 = type metadata accessor for EntityMatch(0);
      v59 = v36;
      v60 = *(v36 + 16);
      v61 = v69;
      v60(v50 + v58[5], v69, v57);
      v60(v50 + v58[6], v56, v57);
      v62 = v73;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v64 = v63;
      (*(v72 + 8))(v62, v74);
      (*(v59 + 8))(v56, v57);
      sub_1C44DBD5C(v61, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v65 = *(v70 + *(v79 + 24));
      *(v50 + v58[7]) = v52;
      *(v50 + v58[8]) = v64;
      *(v50 + v58[9]) = v65;
      *(v50 + v58[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C4A79818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v77 = a1;
  v74 = a3;
  v72 = sub_1C4EF9CD8();
  v70 = *(v72 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C4EFF0C8();
  v78 = *(v75 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v65 - v10;
  v12 = type metadata accessor for EntityTriple(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v65 - v18;
  v20 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v65 - v28;
  v30 = v79;
  result = sub_1C44C6368();
  if (v30)
  {
    return result;
  }

  v68 = v3;
  v69 = v11;
  v65 = v27;
  v66 = v24;
  v79 = 0;
  v67 = v15;
  v32 = v78;
  v34 = v75;
  v33 = v76;
  if (v76)
  {
    sub_1C486854C(v76, v19);
    v35 = type metadata accessor for ConstructionGraphTriple(0);
    if (sub_1C44157D4(v19, 1, v35) != 1)
    {
      (*(v32 + 16))(v29, v19, v34);
      sub_1C44DBD5C(v19, type metadata accessor for ConstructionGraphTriple);
      v36 = 0;
      goto LABEL_7;
    }

    sub_1C4420C3C(v19, &unk_1EC0BCAE0, &unk_1C4F142A0);
  }

  v36 = 1;
LABEL_7:
  v37 = v29;
  sub_1C440BAA8(v29, v36, 1, v34);
  v38 = v69;
  v39 = v77;
  sub_1C44D0BD8(v77, v69);
  if (sub_1C44157D4(v38, 1, v12) == 1)
  {
    sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v40 = sub_1C4F00978();
    sub_1C442B738(v40, qword_1EDE2DE10);
    v41 = sub_1C4F00968();
    v42 = sub_1C4F01CD8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C43F8000, v41, v42, "Organization Matcher: skipping entityTriples are empty", v43, 2u);
      MEMORY[0x1C6942830](v43, -1, -1);
    }

    sub_1C46828B4();
    v44 = swift_allocError();
    *v45 = 0;
    v79 = v44;
    swift_willThrow();
    return sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v46 = v67;
  sub_1C448566C(v38, v67);
  if (v33)
  {
    v47 = v79;
    v48 = sub_1C4A77F7C(v39, v33, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
    v49 = v73;
    v50 = v74;
    v79 = v47;
    if (v47)
    {
      sub_1C44DBD5C(v46, type metadata accessor for EntityTriple);
      return sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v51 = v48;
  }

  else
  {
    v51 = 0.0;
    v49 = v73;
    v50 = v74;
  }

  v77 = type metadata accessor for OrganizationMatcher();
  v52 = *(v68 + *(v77 + 28));
  v53 = v65;
  if (v51 <= v52)
  {
    sub_1C4EFF008();
    sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v53, 0, 1, v34);
    sub_1C44DDDBC(v53, v37);
    v51 = v52;
  }

  v54 = v66;
  sub_1C457E858(v37, v66);
  v55 = sub_1C44157D4(v54, 1, v34);
  v76 = v37;
  if (v55 == 1)
  {
    sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {
    v56 = v78;
    (*(v78 + 32))(v49, v54, v34);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v57 = v34;
    v58 = type metadata accessor for EntityMatch(0);
    v59 = *(v56 + 16);
    v60 = v67;
    v59(v50 + v58[5], v67, v57);
    v59(v50 + v58[6], v49, v57);
    v61 = v71;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v63 = v62;
    (*(v70 + 8))(v61, v72);
    (*(v56 + 8))(v49, v57);
    sub_1C44DBD5C(v60, type metadata accessor for EntityTriple);
    result = sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v64 = *(v68 + *(v77 + 24));
    *(v50 + v58[7]) = v51;
    *(v50 + v58[8]) = v63;
    *(v50 + v58[9]) = v64;
    *(v50 + v58[10]) = 0;
  }

  return result;
}

uint64_t sub_1C4A79FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C4A7A0BC(uint64_t a1)
{
  result = sub_1C4A7A2D8(&qword_1EDDF4AE8, type metadata accessor for OrganizationMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7A114(uint64_t a1)
{
  result = sub_1C4A7A2D8(qword_1EDDF4AF8, type metadata accessor for OrganizationMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7A194()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C4A7A230()
{
  result = qword_1EDDF0718;
  if (!qword_1EDDF0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0718);
  }

  return result;
}

unint64_t sub_1C4A7A284()
{
  result = qword_1EDDF0720;
  if (!qword_1EDDF0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0720);
  }

  return result;
}

uint64_t sub_1C4A7A2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4A7A338(uint64_t a1, uint64_t *a2)
{
  v44 = a2;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v37 = v2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C459D100();
    v10 = v49;
    v13 = sub_1C486C288(a1);
    result = v10;
    v14 = 0;
    v48 = a1 + 56;
    v41 = (v5 + 1);
    v42 = v5 + 2;
    v38 = a1 + 64;
    v39 = v8;
    v40 = v5;
    v15 = a1;
    v45 = a1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v15 + 32))
      {
        v16 = v13 >> 6;
        if ((*(v48 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v15 + 36) != v11)
        {
          goto LABEL_29;
        }

        v47 = v12;
        v46 = v11;
        v17 = result;
        v18 = *(v15 + 48) + v5[9] * v13;
        v19 = v5[2];
        v20 = v43;
        v19(v43, v18, v4);
        v21 = v44;
        swift_beginAccess();
        v22 = *v21;
        v23 = 0;
        if (*(*v21 + 16))
        {
          sub_1C44E3664();
          if (v25)
          {
            v23 = *(*(v22 + 56) + 8 * v24);
          }
        }

        swift_endAccess();
        (*v41)(v20, v4);
        result = v17;
        v49 = v17;
        v26 = *(v17 + 16);
        if (v26 >= *(v17 + 24) >> 1)
        {
          sub_1C459D100();
          result = v49;
        }

        *(result + 16) = v26 + 1;
        *(result + 8 * v26 + 32) = v23;
        if (v47)
        {
          goto LABEL_33;
        }

        v15 = v45;
        v27 = 1 << *(v45 + 32);
        if (v13 >= v27)
        {
          goto LABEL_30;
        }

        v28 = *(v48 + 8 * v16);
        if ((v28 & (1 << v13)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v45 + 36) != v46)
        {
          goto LABEL_32;
        }

        v29 = v28 & (-2 << (v13 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v5 = v40;
        }

        else
        {
          v30 = v16 << 6;
          v31 = v16 + 1;
          v32 = (v38 + 8 * v16);
          v5 = v40;
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              v35 = result;
              sub_1C440951C(v13, v46, 0);
              result = v35;
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_22;
            }
          }

          v36 = result;
          sub_1C440951C(v13, v46, 0);
          result = v36;
LABEL_22:
          v15 = v45;
        }

        if (++v14 == v39)
        {
          return result;
        }

        v12 = 0;
        v11 = *(v15 + 36);
        v13 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4A7A6B4(uint64_t a1, uint64_t *a2)
{
  v52 = a2;
  v57 = sub_1C4EFF0C8();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0B8FC0, &unk_1C4F0EA98);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v43 - v10;
  v11 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v55 = v7;
    v43 = v2;
    v60 = MEMORY[0x1E69E7CC0];
    v49 = v4;
    sub_1C459DB98();
    v13 = v49;
    v59 = v60;
    result = sub_1C486C288(a1);
    v16 = result;
    v17 = 0;
    v56 = a1 + 56;
    v46 = (v13 + 8);
    v47 = v13 + 16;
    v44 = a1 + 64;
    v45 = v11;
    v48 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v16 < 1 << *(a1 + 32))
      {
        v18 = v16 >> 6;
        if ((*(v56 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v14)
        {
          goto LABEL_30;
        }

        v54 = v15;
        v53 = v14;
        v19 = *(a1 + 48) + *(v13 + 72) * v16;
        v20 = *(v13 + 16);
        v21 = v55;
        v22 = v57;
        v20(v55, v19, v57);
        v23 = *(v51 + 48);
        v20(v58, v21, v22);
        v24 = v52;
        swift_beginAccess();
        v25 = *v24;
        if (*(v25 + 16) && (sub_1C44E3664(), (v27 & 1) != 0))
        {
          v28 = *(*(v25 + 56) + 8 * v26);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v28 = 0;
        }

        v29 = v57;
        v30 = v58;
        *&v58[v23] = v28;
        (*v46)(v55, v29);
        v31 = v59;
        v60 = v59;
        v32 = *(v59 + 16);
        a1 = v48;
        if (v32 >= *(v59 + 24) >> 1)
        {
          sub_1C459DB98();
          v30 = v58;
          v31 = v60;
        }

        *(v31 + 16) = v32 + 1;
        v33 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v59 = v31;
        result = sub_1C44CD9E0(v30, v31 + v33 + *(v50 + 72) * v32, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        if (v54)
        {
          goto LABEL_34;
        }

        v34 = 1 << *(a1 + 32);
        if (v16 >= v34)
        {
          goto LABEL_31;
        }

        v35 = *(v56 + 8 * v18);
        if ((v35 & (1 << v16)) == 0)
        {
          goto LABEL_32;
        }

        if (*(a1 + 36) != v53)
        {
          goto LABEL_33;
        }

        v36 = v35 & (-2 << (v16 & 0x3F));
        if (v36)
        {
          v34 = __clz(__rbit64(v36)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v37 = v45;
        }

        else
        {
          v38 = v18 << 6;
          v39 = v18 + 1;
          v37 = v45;
          v40 = (v44 + 8 * v18);
          while (v39 < (v34 + 63) >> 6)
          {
            v42 = *v40++;
            v41 = v42;
            v38 += 64;
            ++v39;
            if (v42)
            {
              result = sub_1C440951C(v16, v53, 0);
              v34 = __clz(__rbit64(v41)) + v38;
              goto LABEL_23;
            }
          }

          result = sub_1C440951C(v16, v53, 0);
        }

LABEL_23:
        if (++v17 == v37)
        {
          return v59;
        }

        v15 = 0;
        v14 = *(a1 + 36);
        v16 = v34;
        v13 = v49;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

void sub_1C4A7AB00(uint64_t a1, uint64_t *a2)
{
  v47 = a2;
  v48 = sub_1C456902C(&qword_1EC0C24A8, &qword_1C4F4A7D8);
  v3 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v49 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v44 = a1 + 64;
  v45 = v9;
  while (v13)
  {
LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = v17 | (v15 << 6);
    v19 = v49;
    v20 = *(v49 + 48);
    v21 = sub_1C4EFF0C8();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v9, v20 + *(v22 + 72) * v18, v21);
    v23 = *(*(v19 + 56) + 8 * v18);
    v24 = v48;
    *&v9[*(v48 + 48)] = v23;
    v25 = v9;
    v26 = v46;
    sub_1C4460050(v25, v46, &qword_1EC0C24A8, &qword_1C4F4A7D8);
    v27 = *(v26 + *(v24 + 48));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v28 = v47;
    swift_beginAccess();
    v29 = *v28;
    if (*(*v28 + 16) && (sub_1C44E3664(), (v31 & 1) != 0))
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      swift_endAccess();
      v40 = *(v22 + 8);
      v40(v26, v21);
      v9 = v45;
      v33 = v42;
      sub_1C4460050(v45, v42, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      v41 = *(v33 + *(v48 + 48));
      v40(v33, v21);
      sub_1C4420C3C(v9, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v43 + 16);
        sub_1C458BD50();
        v43 = v38;
      }

      v10 = v44;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C458BD50();
        v43 = v39;
      }

      v35 = v43;
      *(v43 + 16) = v34 + 1;
      v36 = v35 + 16 * v34;
      *(v36 + 32) = v41;
      *(v36 + 40) = v32;
    }

    else
    {
      swift_endAccess();
      (*(v22 + 8))(v26, v21);
      v9 = v45;
      sub_1C4420C3C(v45, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      v10 = v44;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C4A7AEDC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v219 = a2;
  v7 = 0;
  v226 = sub_1C456902C(&qword_1EC0B8FC0, &unk_1C4F0EA98);
  v8 = sub_1C43FCDF8(v226);
  v229 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  v236 = &v214 - v15;
  v248 = sub_1C4EFF0C8();
  v16 = sub_1C43FCDF8(v248);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v247 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  v242 = &v214 - v25;
  v240 = sub_1C456902C(&qword_1EC0C24A8, &qword_1C4F4A7D8);
  v26 = sub_1C43FBCE0(v240);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v214 - v32;
  v34 = *(a1 + 64);
  v233 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v243 = v18 + 16;
  v235 = (v18 + 8);
  v239 = v18;
  v238 = (v18 + 32);
  v228 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v244 = MEMORY[0x1E69E7CC0];
  v220 = 0;
  v246 = v38;
LABEL_4:
  v39 = v7;
  v40 = v228;
  if (!v37)
  {
    goto LABEL_6;
  }

  do
  {
    v7 = v39;
LABEL_9:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = v41 | (v7 << 6);
    v43 = *(v40 + 48);
    v44 = v239;
    v245 = *(v239 + 72);
    v45 = v40;
    (*(v239 + 16))(v33, v43 + v245 * v42, v248);
    v46 = *(*(v45 + 56) + 8 * v42);
    v47 = v240;
    *&v33[*(v240 + 48)] = v46;
    v48 = v237;
    sub_1C4460050(v33, v237, &qword_1EC0C24A8, &qword_1C4F4A7D8);
    v49 = *(*(v48 + *(v47 + 48)) + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    (*(v44 + 8))(v48, v248);
    if (!v49)
    {
      v50 = v245;
      v51 = v237;
      sub_1C44CD9E0(v33, v237, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      v52 = *(v51 + *(v240 + 48));

      v241 = *v238;
      v241(v242, v51, v248);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44D45E4(0, *(v244 + 16) + 1, 1, v244);
        v244 = v57;
      }

      v54 = *(v244 + 16);
      v53 = *(v244 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1C44D45E4(v53 > 1, v54 + 1, 1, v244);
        v244 = v58;
      }

      *(v244 + 16) = v54 + 1;
      sub_1C4432800(&v252);
      v241((v56 + v55 + v54 * v50), v242, v248);
      v38 = v246;
      goto LABEL_4;
    }

    sub_1C4420C3C(v33, &qword_1EC0C24A8, &qword_1C4F4A7D8);
    v39 = v7;
    v40 = v228;
    v38 = v246;
  }

  while (v37);
  while (1)
  {
LABEL_6:
    v7 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
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
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v7 >= v38)
    {
      break;
    }

    v37 = *(v233 + 8 * v7);
    ++v39;
    if (v37)
    {
      goto LABEL_9;
    }
  }

  sub_1C45972E0();
  v218 = v59;
  v60 = *(v228 + 16);
  v61 = MEMORY[0x1E69E7CC0];
  if (v60)
  {
    v250 = MEMORY[0x1E69E7CC0];
    sub_1C459DB98();
    v61 = v250;
    v62 = sub_1C4703354(v228);
    v63 = v228;
    v223 = v64;
    v222 = v228 + 72;
    v224 = v60;
    while ((v62 & 0x8000000000000000) == 0 && v62 < 1 << *(v63 + 32))
    {
      v65 = v62 >> 6;
      sub_1C44135DC();
      if ((*(v69 + 8 * (v62 >> 6)) & (1 << v62)) == 0)
      {
        goto LABEL_131;
      }

      if (*(v63 + 36) != v66)
      {
        goto LABEL_132;
      }

      v244 = v66;
      v245 = 1 << v62;
      LODWORD(v241) = v67;
      v242 = v68;
      v70 = v239;
      v71 = *(v63 + 48) + *(v239 + 72) * v62;
      v72 = *(v239 + 16);
      v73 = v237;
      v246 = v61;
      v74 = v248;
      v72(v237, v71, v248);
      v75 = *(*(v63 + 56) + 8 * v62);
      v76 = *(v70 + 32);
      v77 = v225;
      v76(v225, v73, v74);
      v78 = v240;
      *(v77 + *(v240 + 48)) = v75;
      v79 = *(v226 + 48);
      v80 = v77;
      v81 = v232;
      sub_1C44CD9E0(v80, v232, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      v82 = *(v81 + *(v78 + 48));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v83 = v236;
      v84 = v74;
      v61 = v246;
      v76(v236, v81, v84);
      *&v83[v79] = 1.0 / *(v63 + 16);
      v250 = v61;
      v85 = *(v61 + 16);
      if (v85 >= *(v61 + 24) >> 1)
      {
        sub_1C459DB98();
        v61 = v250;
      }

      *(v61 + 16) = v85 + 1;
      sub_1C440B03C();
      sub_1C44CD9E0(v88, v61 + v86 + *(v87 + 72) * v85, &qword_1EC0B8FC0, &unk_1C4F0EA98);
      v89 = 1 << *(v63 + 32);
      if (v62 >= v89)
      {
        goto LABEL_133;
      }

      sub_1C44135DC();
      v92 = *(v91 + 8 * v65);
      if ((v92 & v245) == 0)
      {
        goto LABEL_134;
      }

      if (*(v63 + 36) != v244)
      {
        goto LABEL_135;
      }

      v93 = v92 & (-2 << (v62 & 0x3F));
      if (v93)
      {
        v89 = __clz(__rbit64(v93)) | v62 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v94 = v65 << 6;
        v95 = v65 + 1;
        v96 = (v222 + 8 * v65);
        while (v95 < (v89 + 63) >> 6)
        {
          v98 = *v96++;
          v97 = v98;
          v94 += 64;
          ++v95;
          if (v98)
          {
            sub_1C4408EA0(v90, v244);
            v89 = __clz(__rbit64(v97)) + v94;
            goto LABEL_35;
          }
        }

        sub_1C4408EA0(v90, v244);
      }

LABEL_35:
      v62 = v89;
      if (v242 + 1 == v224)
      {
        goto LABEL_36;
      }
    }

LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    swift_once();
    goto LABEL_116;
  }

LABEL_36:
  v99 = swift_allocObject();
  v100 = sub_1C4BA02C4(v61);
  v215 = v99;
  *(v99 + 16) = v100;
  v101 = (v99 + 16);
  v102 = v220;
  if (v219 < 0)
  {
    goto LABEL_138;
  }

  v103 = v228;
  v104 = (1.0 - a3) / *(v228 + 16);
  v105 = a3 / (*(v100 + 16) - 1);
  v221 = v101;
  swift_beginAccess();
  v106 = v103;
  v107 = 0;
  v222 = v103 + 72;
  while (1)
  {
    if (v107 == v219)
    {
      goto LABEL_113;
    }

    if (__OFADD__(v107, 1))
    {
      goto LABEL_137;
    }

    v217 = v107;
    v216 = v107 + 1;
    sub_1C4A7AB00(v106, v221);
    v220 = v102;
    v108 = 0;
    v224 = *(v109 + 16);
    v225 = v109;
    v223 = v109 + 32;
    v110 = MEMORY[0x1E69E7CC8];
LABEL_41:
    v246 = v110;
    if (v108 != v224)
    {
      if (v108 < *(v225 + 16))
      {
        v111 = v223 + 16 * v108;
        v112 = *v111;
        v113 = *(v111 + 8);
        v232 = v108 + 1;
        v114 = v112 + 56;
        v115 = 1 << *(v112 + 32);
        if (v115 < 64)
        {
          v116 = ~(-1 << v115);
        }

        else
        {
          v116 = -1;
        }

        v117 = v116 & *(v112 + 56);
        v118 = (v115 + 63) >> 6;
        v240 = v112;
        swift_bridgeObjectRetain_n();
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v237 = v114;
        v236 = v118;
        if (v117)
        {
          while (1)
          {
            v245 = v121;
LABEL_52:
            v124 = v240;
            v125 = *(v240 + 48);
            v126 = v239;
            v241 = *(v239 + 72);
            v127 = v234;
            v128 = v248;
            v242 = *(v239 + 16);
            (v242)(v234, v125 + v241 * (__clz(__rbit64(v117)) | (v122 << 6)), v248);
            (*(v126 + 32))(v247, v127, v128);
            v129 = swift_allocObject();
            *(v129 + 16) = v104;
            sub_1C44239FC(v119);
            v244 = *(v124 + 16);
            v121 = swift_allocObject();
            *(v121 + 16) = sub_1C49B7AEC;
            *(v121 + 24) = v129;
            sub_1C44239FC(v120);
            v130 = v246;
            swift_isUniquelyReferenced_nonNull_native();
            v249 = v130;
            sub_1C44E3664();
            if (__OFADD__(*(v130 + 16), (v132 & 1) == 0))
            {
              break;
            }

            v133 = v131;
            v134 = v132;
            sub_1C456902C(&qword_1EC0C24B0, &unk_1C4F58B90);
            v135 = sub_1C440F9C4();
            v136 = v249;
            if (v135)
            {
              sub_1C44E3664();
              if ((v134 & 1) != (v138 & 1))
              {
                goto LABEL_140;
              }

              v133 = v137;
            }

            if ((v134 & 1) == 0)
            {
              sub_1C49B7948(&v249);
              v139 = v249;
              sub_1C4417364(v136 + 8 * (v133 >> 6));
              (v242)(v140 + v133 * v241, v247, v248);
              *(*(v136 + 56) + 8 * v133) = v139;
              v141 = *(v136 + 16);
              v142 = __OFADD__(v141, 1);
              v143 = v141 + 1;
              if (v142)
              {
                __break(1u);
                goto LABEL_115;
              }

              *(v136 + 16) = v143;
            }

            v117 &= v117 - 1;
            v246 = v136;
            *(*(v136 + 56) + 8 * v133) = v113 / v244 * a3 + *(*(v136 + 56) + 8 * v133);
            (*v235)(v247, v248);
            v120 = sub_1C49B7948;
            v119 = sub_1C49B7AEC;
            v114 = v237;
            v118 = v236;
            if (!v117)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
LABEL_48:
          while (1)
          {
            v123 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              break;
            }

            if (v123 >= v118)
            {

              sub_1C44239FC(v119);
              sub_1C44239FC(v120);

              v108 = v232;
              v110 = v246;
              goto LABEL_41;
            }

            v117 = *(v114 + 8 * v123);
            ++v122;
            if (v117)
            {
              v245 = v121;
              v122 = v123;
              goto LABEL_52;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_113:
        sub_1C440358C();

        goto LABEL_119;
      }

      __break(1u);
      goto LABEL_121;
    }

    v144 = sub_1C440358C();
    v145 = v220;
    v146 = sub_1C4A7A338(v144, v221);
    v147 = *(v146 + 16);
    if (v147)
    {
      v148 = (v146 + 32);
      v149 = 0.0;
      do
      {
        v150 = *v148++;
        v149 = v149 + v150;
        --v147;
      }

      while (v147);
    }

    else
    {
      v149 = 0.0;
    }

    v151 = sub_1C440358C();
    v152 = sub_1C4A7A6B4(v151, v221);
    v220 = v145;
    v153 = *(v152 + 16);
    if (v153)
    {
      v154 = 0;
      v245 = *(v226 + 48);
      sub_1C4432800(&v251);
      v156 = v152 + v155;
      v157 = MEMORY[0x1E69E7CC8];
      while (v154 < *(v152 + 16))
      {
        v158 = v227;
        v145 = &qword_1EC0B8FC0;
        sub_1C4460050(v156 + *(v229 + 72) * v154, v227, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        sub_1C4460050(v158, v230, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        v159 = *(v158 + v245);
        swift_isUniquelyReferenced_nonNull_native();
        v249 = v157;
        sub_1C44E3664();
        if (__OFADD__(*(v157 + 16), (v161 & 1) == 0))
        {
          goto LABEL_123;
        }

        v162 = v160;
        v163 = v161;
        sub_1C456902C(&qword_1EC0C24B0, &unk_1C4F58B90);
        v164 = sub_1C440F9C4();
        v157 = v249;
        if (v164)
        {
          sub_1C44E3664();
          if ((v163 & 1) != (v166 & 1))
          {
LABEL_140:
            result = sub_1C4F029F8();
            __break(1u);
            return result;
          }

          v162 = v165;
        }

        if ((v163 & 1) == 0)
        {
          sub_1C4417364(v157 + 8 * (v162 >> 6));
          (*(v239 + 16))(v167 + *(v239 + 72) * v162, v230, v248);
          *(*(v157 + 56) + 8 * v162) = 0;
          v168 = *(v157 + 16);
          v142 = __OFADD__(v168, 1);
          v169 = v168 + 1;
          if (v142)
          {
            goto LABEL_136;
          }

          *(v157 + 16) = v169;
        }

        ++v154;
        *(*(v157 + 56) + 8 * v162) = *(*(v157 + 56) + 8 * v162) - v159;
        sub_1C4420C3C(v227, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        (*v235)(v230, v248);
        if (v153 == v154)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_122;
    }

    v157 = MEMORY[0x1E69E7CC8];
LABEL_80:

    v170 = v228;
    v171 = *(v228 + 16);
    if (v171)
    {
      v249 = MEMORY[0x1E69E7CC0];
      sub_1C459DB98();
      v172 = v249;
      v173 = sub_1C4703354(v170);
      v174 = 0;
      sub_1C4412274();
      v242 = v171;
      if ((v173 & 0x8000000000000000) == 0)
      {
        while (v173 < 1 << *(v175 + 32))
        {
          v176 = v173 >> 6;
          sub_1C44135DC();
          if ((*(v180 + 8 * (v173 >> 6)) & (1 << v173)) == 0)
          {
            goto LABEL_125;
          }

          if (*(v179 + 36) != v177)
          {
            goto LABEL_126;
          }

          LODWORD(v244) = v178;
          v245 = v177;
          (*(v239 + 16))(v231, *(v179 + 48) + *(v239 + 72) * v173, v248);
          v181 = v246;
          v182 = v104;
          if (*(v246 + 16))
          {
            sub_1C44E3664();
            sub_1C4412274();
            v182 = v104;
            if (v184)
            {
              v182 = *(*(v181 + 56) + 8 * v183);
            }
          }

          v185 = 0.0;
          if (*(v157 + 16))
          {
            sub_1C44E3664();
            sub_1C4412274();
            if (v187)
            {
              v185 = *(*(v157 + 56) + 8 * v186);
            }
          }

          v188 = *(v226 + 48);
          (*v238)(v145, v231, v248);
          *(v145 + v188) = v182 + v105 * (v149 + v185);
          v249 = v172;
          v189 = *(v172 + 16);
          if (v189 >= *(v172 + 24) >> 1)
          {
            sub_1C459DB98();
            sub_1C4412274();
            v172 = v249;
          }

          *(v172 + 16) = v189 + 1;
          sub_1C440B03C();
          sub_1C44CD9E0(v145, v172 + v190 + *(v191 + 72) * v189, &qword_1EC0B8FC0, &unk_1C4F0EA98);
          v192 = 1 << *(v228 + 32);
          if (v173 >= v192)
          {
            goto LABEL_127;
          }

          sub_1C44135DC();
          v194 = *(v193 + 8 * v176);
          if ((v194 & (1 << v173)) == 0)
          {
            goto LABEL_128;
          }

          if (*(v175 + 36) != v245)
          {
            goto LABEL_129;
          }

          v195 = v194 & (-2 << (v173 & 0x3F));
          if (v195)
          {
            v192 = __clz(__rbit64(v195)) | v173 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v196 = v176 << 6;
            v197 = v176 + 1;
            v198 = (v222 + 8 * v176);
            while (v197 < (v192 + 63) >> 6)
            {
              v200 = *v198++;
              v199 = v200;
              v196 += 64;
              ++v197;
              if (v200)
              {
                sub_1C440951C(v173, v245, v244 & 1);
                v192 = __clz(__rbit64(v199)) + v196;
                goto LABEL_103;
              }
            }

            sub_1C440951C(v173, v245, v244 & 1);
LABEL_103:
            sub_1C4412274();
          }

          if (++v174 == v242)
          {

            goto LABEL_109;
          }

          v201 = *(v175 + 36);
          v173 = v192;
          if (v192 < 0)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_124;
    }

    v172 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v202 = sub_1C4BA02C4(v172);
    v203 = v215;
    v204 = *(v215 + 16);
    v205 = swift_allocObject();
    *(v205 + 16) = v202;
    *(v205 + 24) = v203;
    *(v205 + 32) = a4;
    *(v205 + 40) = v217;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C465BC24();
    LOBYTE(v203) = v206;

    if ((v203 & 1) == 0)
    {
      break;
    }

    v207 = *v221;
    *v221 = v202;

    v107 = v216;
    v106 = v228;
    v102 = v220;
  }

LABEL_115:

  sub_1C440358C();

  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_139;
  }

LABEL_116:
  v208 = sub_1C4F00978();
  sub_1C442B738(v208, qword_1EDDFECB8);
  v209 = sub_1C4F00968();
  v210 = sub_1C4F01CC8();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    *v211 = 134217984;
    *(v211 + 4) = v216;
    _os_log_impl(&dword_1C43F8000, v209, v210, "Stopping pagerank after %ld iterations", v211, 0xCu);
    MEMORY[0x1C6942830](v211, -1, -1);
  }

LABEL_119:
  swift_beginAccess();
  v212 = *(v215 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v212;
}

void sub_1C4A7C39C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>, double a6@<D0>)
{
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C465C4A0(a1, a2);
  if ((v18 & 1) == 0)
  {
    v19 = *&v17;
    swift_beginAccess();
    v20 = sub_1C465C4A0(a1, *(a3 + 16));
    if ((v21 & 1) == 0)
    {
      v34 = *&v20;
      swift_endAccess();
      v33 = vabdd_f64(v19, v34) >= a6;
      goto LABEL_11;
    }

    swift_endAccess();
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDDFECB8);
  (*(v13 + 16))(v16, a1, v12);
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CD8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = a5;
    v36[0] = v26;
    v27 = a4;
    v28 = v26;
    *v25 = 136315394;
    sub_1C470A388();
    v29 = sub_1C4F02858();
    v31 = v30;
    (*(v13 + 8))(v16, v12);
    v32 = sub_1C441D828(v29, v31, v36);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v27;
    a5 = v35;
    _os_log_impl(&dword_1C43F8000, v23, v24, "weight for %s was dropped in iteration %ld of pagerank", v25, 0x16u);
    sub_1C440962C(v28);
    MEMORY[0x1C6942830](v28, -1, -1);
    MEMORY[0x1C6942830](v25, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v33 = 0;
LABEL_11:
  *a5 = v33;
}

uint64_t sub_1C4A7C68C(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1C44AA008();
    return a2;
  }

  else
  {

    return sub_1C4A80A20(a1, a2);
  }
}

uint64_t sub_1C4A7C744(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

uint64_t sub_1C4A7C7A0(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1C44AA008();
    return a2;
  }

  else
  {

    return sub_1C4A82660(a1, a2);
  }
}

uint64_t PairGenerator.init(stores:source:entityClass:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for PairGenerator();
  *(a5 + v10[8]) = 1;
  sub_1C440D6E4();
  sub_1C4471A3C(a1, a5);
  sub_1C447212C(a2, a5 + v10[5]);
  v11 = v10[6];
  v12 = sub_1C4EFD548();
  sub_1C43FBCE0(v12);
  (*(v13 + 32))(a5 + v11, a3);
  *(a5 + v10[7]) = v9;
  v14 = *(a1 + *(type metadata accessor for PhaseStores() + 28));

  result = sub_1C4485564(a1, type metadata accessor for PhaseStores);
  *(a5 + v10[9]) = v14;
  return result;
}

uint64_t PairGenerator.stateStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for PairGenerator() + 36));
}

uint64_t sub_1C4A7C9C0()
{
  v0 = sub_1C4EFF048();
  v2 = v1;
  if (v0 == sub_1C4EFF048() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1C4F02938();
  }

  return v5 & 1;
}

uint64_t sub_1C4A7CA58(uint64_t a1)
{
  result = sub_1C44D7248(&qword_1EDDF8040, type metadata accessor for PairGenerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7CAB0(uint64_t a1)
{
  result = sub_1C44D7248(qword_1EDDF8050, type metadata accessor for PairGenerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7CB30()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for StateStore();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1C4A7CBFC(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_1C4EFF0C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v143 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v143 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v143 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v143 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_1C4A7C9C0();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = sub_1C4EFF048();
        v52 = v51;
        if (v50 == sub_1C4EFF048() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_1C4F02938();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_1C458A358();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_1C458A358();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_1C4A7D7B8(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_1C461950C(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_1C46194F4(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = *(v139 + 1);
      sub_1C4A7D7B8(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_1C461950C(v139 + 16, v141, v139);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_1C4EFF048();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_1C4EFF048() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_1C4F02938();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

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
}

uint64_t sub_1C4A7D7B8(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C4EFF0C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_1C44E7364(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_1C4EFF048();
      v37 = v36;
      if (v35 == sub_1C4EFF048() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_1C4F02938();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_1C44E7364(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_1C4EFF048();
    v55 = v54;
    if (v53 == sub_1C4EFF048() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_1C4F02938();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_1C4BEB414(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_1C4A7DDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1C4EFDAF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1C44D7248(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
  v28 = a1;
  v11 = sub_1C4F00FD8();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_1C440BAA8(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1C44D7248(&qword_1EC0B85A8, MEMORY[0x1E69A94B0]);
    v15 = sub_1C4F010B8();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849A38();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1C4A7FD18();
  v16 = 0;
  *v18 = v29;
  return sub_1C440BAA8(v17, v16, 1, v4);
}

uint64_t sub_1C4A7E078(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B68();
  v7 = *(v5 + 32);
  sub_1C43FC41C();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    sub_1C444FEE4();
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    v13 = (*(v5 + 48) + 16 * v11);
    v14 = *v13 == a1 && v13[1] == a2;
    if (v14 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    v8 = v11 + 1;
  }

  v15 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v22 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C44802AC();
    v17 = v22;
  }

  v18 = (*(v17 + 48) + 16 * v11);
  v19 = *v18;
  v20 = v18[1];
  sub_1C4A7F8A8(v11);
  *v2 = v22;
  return v19;
}

uint64_t sub_1C4A7E190(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 40);
  sub_1C4F02AF8();
  sub_1C494CF40(a1);
  sub_1C4F01298();

  v6 = sub_1C4F02B68();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 7;
  }

  v21 = v1;
  v9 = ~v7;
  while (1)
  {
    v10 = 0xE800000000000000;
    v11 = 0x4449656C646E7562;
    switch(*(*(v4 + 48) + v8))
    {
      case 1:
        v11 = 0xD000000000000011;
        v10 = 0x80000001C4F86740;
        break;
      case 2:
        v11 = 0x456E6F6973736573;
        v10 = 0xEC000000746E6576;
        break;
      case 3:
        v11 = 0xD000000000000016;
        v10 = 0x80000001C4F85600;
        break;
      case 4:
        v11 = 0xD000000000000016;
        v10 = 0x80000001C4F86760;
        break;
      case 5:
        v11 = 0x7463617265746E69;
        v10 = 0xEF657079546E6F69;
        break;
      case 6:
        v11 = 0x646576726573626FLL;
        v10 = 0xEB00000000656741;
        break;
      default:
        break;
    }

    v12 = 0xE800000000000000;
    v13 = 0x4449656C646E7562;
    switch(a1)
    {
      case 1:
        v13 = 0xD000000000000011;
        v12 = 0x80000001C4F86740;
        break;
      case 2:
        v13 = 0x456E6F6973736573;
        v12 = 0xEC000000746E6576;
        break;
      case 3:
        v13 = 0xD000000000000016;
        v12 = 0x80000001C4F85600;
        break;
      case 4:
        v13 = 0xD000000000000016;
        v12 = 0x80000001C4F86760;
        break;
      case 5:
        v13 = 0x7463617265746E69;
        v12 = 0xEF657079546E6F69;
        break;
      case 6:
        v13 = 0x646576726573626FLL;
        v12 = 0xEB00000000656741;
        break;
      default:
        break;
    }

    if (v11 == v13 && v10 == v12)
    {
      break;
    }

    v15 = sub_1C4F02938();

    if (v15)
    {
      goto LABEL_25;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 7;
    }
  }

LABEL_25:
  v17 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v2;
  v22 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849B60();
    v19 = v22;
  }

  v16 = *(*(v19 + 48) + v8);
  sub_1C4A7FA60(v8);
  *v21 = v22;
  return v16;
}

uint64_t sub_1C4A7E4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1C44D7248(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
  v28 = a1;
  v11 = sub_1C4F00FD8();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_1C440BAA8(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1C44D7248(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
    v15 = sub_1C4F010B8();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849B38();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1C4A7FD18();
  v16 = 0;
  *v18 = v29;
  return sub_1C440BAA8(v17, v16, 1, v4);
}