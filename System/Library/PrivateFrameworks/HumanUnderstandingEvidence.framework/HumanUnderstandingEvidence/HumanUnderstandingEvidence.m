uint64_t sub_254698730@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_254698764(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_2546987FC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_254698848@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

_DWORD *sub_254698878@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_254698898()
{
  v0 = sub_25469D0D8();
  sub_254698910(v0, qword_27F60F490);
  sub_254698974(v0, qword_27F60F490);
  return sub_25469D0C8();
}

uint64_t *sub_254698910(uint64_t a1, uint64_t *a2)
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

uint64_t sub_254698974(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t PeopleDiscoveryBiomeStream.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_25469D118();

  return v2;
}

id PeopleDiscoveryBiomeStream.init()@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_254698E08(0xD000000000000033, 0x800000025469E520, v2);
  v4 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v5 = sub_254698F14();
  result = sub_254698DA4(v5, v6, v3);
  *a1 = result;
  return result;
}

id PeopleDiscoveryBiomeStream.init(basePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = sub_254698E08(a1, a2, v6);
  v8 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v9 = sub_254698F14();
  result = sub_254698DA4(v9, v10, v7);
  *a3 = result;
  return result;
}

id PeopleDiscoveryBiomeStream.source()()
{
  v1 = [*v0 source];

  return v1;
}

id PeopleDiscoveryBiomeStream.publisher(fromStartTime:)()
{
  v1 = [*v0 publisherFromStartTime_];

  return v1;
}

id PeopleDiscoveryBiomeStream.publisher(withStartTime:endTime:maxEvents:lastN:reversed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = [*v5 publisherWithStartTime:a1 endTime:a2 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v6;
}

Swift::Void __swiftcall PeopleDiscoveryBiomeStream.clearAllData()()
{
  v1 = *v0;
  v7[4] = sub_254698D44;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_254698D48;
  v7[3] = &unk_2866802C8;
  v2 = _Block_copy(v7);

  [v1 pruneWithPredicateBlock_];
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else if (qword_27F60EA10 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v3 = sub_25469D0D8();
  sub_254698974(v3, qword_27F60F490);
  v4 = sub_25469D0B8();
  v5 = sub_25469D1A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_254697000, v4, v5, "PeopleDiscoveryBiomeStream cleared.", v6, 2u);
    MEMORY[0x259C15F00](v6, -1, -1);
  }
}

uint64_t sub_254698D48(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

id sub_254698DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_25469D108();

  v6 = [v3 initWithPrivateStreamIdentifier:v5 storeConfig:a3];

  return v6;
}

id sub_254698E08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25469D108();

  v5 = [a3 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  return v5;
}

uint64_t sub_254698E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return MEMORY[0x2821FEB80](v2);
}

uint64_t sub_254698E88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254698EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RPPersonWrapper.contactID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_25469B414();
}

uint64_t RPPersonWrapper.identifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_25469B414();
}

uint64_t RPPersonWrapper.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_25469B414();
}

uint64_t RPPersonWrapper.init(WithContactID:activityLevel:flags:identifier:name:proximity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10)
{
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *a9 = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

void RPPersonWrapper.init(WithRPPerson:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = sub_25469ABA4(a1, &selRef_contactID);
  v5 = v4;
  v6 = [a1 activityLevel];
  v7 = [a1 flags];
  v8 = [a1 identifier];
  v9 = sub_25469D118();
  v11 = v10;

  v12 = sub_25469ABA4(a1, &selRef_name);
  v14 = v13;
  v15 = [a1 proximity];

  *a2 = v6;
  *(a2 + 8) = v16;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
}

uint64_t sub_254699424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED00006C6576654CLL;
  if (v4 || (sub_25469D258() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
    if (v6 || (sub_25469D258() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
      if (v7 || (sub_25469D258() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
        if (v8 || (sub_25469D258() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_25469D258() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079)
          {

            return 5;
          }

          else
          {
            v11 = sub_25469D258();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254699664(unsigned __int8 a1)
{
  sub_25469D278();
  MEMORY[0x259C15940](a1);
  return sub_25469D298();
}

uint64_t sub_2546996B8(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x7367616C66;
      break;
    case 3:
      result = 0x696669746E656469;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x74696D69786F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254699798()
{
  v1 = *v0;
  sub_25469D278();
  MEMORY[0x259C15940](v1);
  return sub_25469D298();
}

uint64_t sub_2546997E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254699424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25469982C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254699624();
  *a1 = result;
  return result;
}

uint64_t sub_254699854(uint64_t a1)
{
  v2 = sub_25469AC8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254699890(uint64_t a1)
{
  v2 = sub_25469AC8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RPPersonWrapper.encode(to:)(void *a1)
{
  v5 = sub_25469AC00(&qword_27F60EA30, &qword_25469DD10);
  v6 = sub_25469B43C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27 - v11;
  v13 = *v1;
  v14 = *(v1 + 1);
  v33 = *(v1 + 2);
  v34 = v14;
  v32 = v1[6];
  v15 = *(v1 + 4);
  v30 = *(v1 + 5);
  v31 = v15;
  v16 = *(v1 + 6);
  v28 = *(v1 + 7);
  v29 = v16;
  HIDWORD(v27) = v1[16];
  v17 = a1[4];
  sub_25469AC48(a1, a1[3]);
  sub_25469AC8C();
  v18 = v3;
  sub_25469D2B8();
  v36 = v13;
  v35 = 0;
  type metadata accessor for RPActivityLevel(0);
  sub_25469B3D8();
  sub_25469B334(v19, v20);
  sub_25469B42C();
  sub_25469B420();
  sub_25469D248();
  if (!v2)
  {
    v21 = v32;
    LOBYTE(v36) = 1;
    sub_25469B420();
    sub_25469D228();
    v36 = v21;
    v35 = 2;
    type metadata accessor for RPPersonFlags(0);
    sub_25469B3C0();
    sub_25469B334(v22, v23);
    sub_25469B42C();
    sub_25469B420();
    sub_25469D248();
    LOBYTE(v36) = 3;
    sub_25469B420();
    sub_25469D238();
    LOBYTE(v36) = 4;
    sub_25469B420();
    sub_25469D228();
    v36 = HIDWORD(v27);
    v35 = 5;
    type metadata accessor for RPProximity(0);
    sub_25469B3A8();
    sub_25469B334(v24, v25);
    sub_25469B42C();
    sub_25469B420();
    sub_25469D248();
  }

  return (*(v8 + 8))(v12, v18);
}

uint64_t RPPersonWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_25469AC00(&qword_27F60EA58, &qword_25469DD18);
  v6 = sub_25469B43C(v5);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  sub_25469AC48(a1, a1[3]);
  sub_25469AC8C();
  sub_25469D2A8();
  if (v2)
  {
    return sub_25469ACE0(a1);
  }

  type metadata accessor for RPActivityLevel(0);
  LOBYTE(__src[0]) = 0;
  sub_25469B3D8();
  v12 = sub_25469B334(v10, v11);
  sub_25469B3F0(v12, __src);
  v13 = v39;
  sub_25469B390(1);
  v14 = sub_25469D1F8();
  v37 = v15;
  type metadata accessor for RPPersonFlags(0);
  LOBYTE(__src[0]) = 2;
  sub_25469B3C0();
  v18 = sub_25469B334(v16, v17);
  sub_25469B3F0(v18, __src);
  v36 = v14;
  v35 = v39;
  sub_25469B390(3);
  v19 = sub_25469D208();
  v21 = v20;
  v34 = v19;
  v33 = v13;
  sub_25469B390(4);
  v22 = sub_25469D1F8();
  v24 = v23;
  v32 = v22;
  type metadata accessor for RPProximity(0);
  v48 = 5;
  sub_25469B3A8();
  v27 = sub_25469B334(v25, v26);
  sub_25469B3F0(v27, &v48);
  v28 = sub_25469B380();
  v29(v28);
  v31 = v49;
  LODWORD(__src[0]) = v33;
  __src[1] = v36;
  __src[2] = v37;
  LODWORD(__src[3]) = v35;
  __src[4] = v34;
  __src[5] = v21;
  __src[6] = v32;
  __src[7] = v24;
  LODWORD(__src[8]) = v49;
  memcpy(a2, __src, 0x44uLL);
  sub_25469AD2C(__src, &v39);
  sub_25469ACE0(a1);
  v39 = v33;
  v40 = v36;
  v41 = v37;
  v42 = v35;
  v43 = v34;
  v44 = v21;
  v45 = v32;
  v46 = v24;
  v47 = v31;
  return sub_25469AD64(&v39);
}

uint64_t PeopleDiscoveryEvent.__allocating_init(WithPeopleDiscovered:)(unint64_t a1)
{
  result = sub_25469AA6C(a1);
  v27 = v1;
  if (!result)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_20:

    v26 = objc_allocWithZone(v27);
    *&v26[OBJC_IVAR____TtC26HumanUnderstandingEvidence20PeopleDiscoveryEvent_peopleDiscovered] = v33;
    v34.receiver = v26;
    v34.super_class = v27;
    return objc_msgSendSuper2(&v34, sel_init);
  }

  v3 = result;
  if (result >= 1)
  {
    v4 = 0;
    v33 = MEMORY[0x277D84F90];
    v28 = result;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x259C15880](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 devices];
      sub_25469AD94();
      v8 = sub_25469D178();

      if (v8 >> 62)
      {
        v9 = sub_25469D1E8();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        v10 = v6;
        v11 = sub_25469ABA4(v10, &selRef_contactID);
        v13 = v12;
        v14 = [v10 activityLevel];
        v32 = [v10 flags];
        v15 = [v10 identifier];
        v16 = sub_25469D118();
        v30 = v17;
        v31 = v16;

        v18 = sub_25469ABA4(v10, &selRef_name);
        v20 = v19;
        v21 = [v10 proximity];

        v22 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_25469AA90(0, *(v33 + 2) + 1, 1, v33);
        }

        v24 = *(v33 + 2);
        v23 = *(v33 + 3);
        if (v24 >= v23 >> 1)
        {
          v33 = sub_25469AA90((v23 > 1), v24 + 1, 1, v33);
        }

        *(v33 + 2) = v24 + 1;
        v25 = &v33[72 * v24];
        *(v25 + 8) = v14;
        *(v25 + 5) = v22;
        *(v25 + 6) = v13;
        *(v25 + 14) = v32;
        *(v25 + 8) = v31;
        *(v25 + 9) = v30;
        *(v25 + 10) = v18;
        *(v25 + 11) = v20;
        *(v25 + 24) = v21;
        v3 = v28;
      }

      else
      {
      }

      ++v4;
    }

    while (v3 != v4);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id PeopleDiscoveryEvent.__allocating_init(WithPeopleDiscovered:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26HumanUnderstandingEvidence20PeopleDiscoveryEvent_peopleDiscovered] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PeopleDiscoveryEvent.init(WithPeopleDiscovered:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26HumanUnderstandingEvidence20PeopleDiscoveryEvent_peopleDiscovered] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static PeopleDiscoveryEvent.event(with:dataVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v5 = 0;
  if (a3 == 1)
  {
    v6 = sub_25469D038();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_25469D028();
    sub_25469AC00(&qword_27F60EA88, &qword_25469DD20);
    sub_25469AE74(&qword_27F60EA90, sub_25469AE20);
    sub_25469D018();
    v9 = objc_allocWithZone(v4);
    *&v9[OBJC_IVAR____TtC26HumanUnderstandingEvidence20PeopleDiscoveryEvent_peopleDiscovered] = v12;
    v11.receiver = v9;
    v11.super_class = v4;
    v5 = objc_msgSendSuper2(&v11, sel_init);
  }

  return v5;
}

uint64_t PeopleDiscoveryEvent.serialize()()
{
  v1 = sub_25469D078();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_25469D068();
  sub_25469D048();
  v6 = *(v0 + OBJC_IVAR____TtC26HumanUnderstandingEvidence20PeopleDiscoveryEvent_peopleDiscovered);

  sub_25469AC00(&qword_27F60EA88, &qword_25469DD20);
  sub_25469AE74(&qword_27F60EAB0, sub_25469AEEC);
  v4 = sub_25469D058();

  return v4;
}

uint64_t PeopleDiscoveryEvent.json()()
{
  v11[9] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  sub_25469AC00(&unk_27F60EAC0, &unk_25469DD38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25469DD00;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000025469E590;
  *(inited + 48) = MEMORY[0x259C15840](*(v0 + OBJC_IVAR____TtC26HumanUnderstandingEvidence20PeopleDiscoveryEvent_peopleDiscovered), &type metadata for RPPersonWrapper);
  *(inited + 56) = v3;
  sub_25469D0F8();
  v4 = sub_25469D0E8();

  v11[0] = 0;
  v5 = [v1 dataWithJSONObject:v4 options:1 error:v11];

  v6 = v11[0];
  if (v5)
  {
    sub_25469D0A8();
  }

  else
  {
    v7 = v6;
    v8 = sub_25469D088();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return sub_25469B414();
}

id sub_25469A92C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    sub_25469B414();
    v7 = sub_25469D098();
    v8 = sub_25469B414();
    sub_25469B2C8(v8, v9);
  }

  return v7;
}

id PeopleDiscoveryEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleDiscoveryEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25469AA6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_25469D1E8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

char *sub_25469AA90(char *result, int64_t a2, char a3, char *a4)
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
    sub_25469AC00(&unk_27F60EB60, &unk_25469E040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25469ABA4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_25469D118();
  }

  return sub_25469B414();
}

uint64_t sub_25469AC00(uint64_t *a1, uint64_t *a2)
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

void *sub_25469AC48(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25469AC8C()
{
  result = qword_27F60EA38;
  if (!qword_27F60EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60EA38);
  }

  return result;
}

uint64_t sub_25469ACE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25469AD94()
{
  result = qword_27F60EA80;
  if (!qword_27F60EA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60EA80);
  }

  return result;
}

uint64_t sub_25469ADD8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_25469AE20()
{
  result = qword_27F60EA98;
  if (!qword_27F60EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60EA98);
  }

  return result;
}

uint64_t sub_25469AE74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_25469ADD8(&qword_27F60EA88, &qword_25469DD20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25469AEEC()
{
  result = qword_27F60EAB8;
  if (!qword_27F60EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60EAB8);
  }

  return result;
}

uint64_t sub_25469AF48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 68))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25469AF88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPersonWrapper.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RPPersonWrapper.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25469B1C4()
{
  result = qword_27F60EB30;
  if (!qword_27F60EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60EB30);
  }

  return result;
}

unint64_t sub_25469B21C()
{
  result = qword_27F60EB38;
  if (!qword_27F60EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60EB38);
  }

  return result;
}

unint64_t sub_25469B274()
{
  result = qword_27F60EB40;
  if (!qword_27F60EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60EB40);
  }

  return result;
}

uint64_t sub_25469B2C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25469B2DC(a1, a2);
  }

  return a1;
}

uint64_t sub_25469B2DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25469B334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25469B3F0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDA28](v2, a2, v3, v2);
}

uint64_t *sub_25469B4D4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    pthread_mutex_destroy((v2 + 8));

    JUMPOUT(0x259C15A10);
  }

  return result;
}

void sub_25469B650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  pthread_mutex_unlock((v11 + 8));
  _Unwind_Resume(a1);
}

void sub_25469B924(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v5 + 8));

  _Unwind_Resume(a1);
}

void sub_25469B988(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = (a2 + 7) >> 3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (v7 - *a1) >> 5;
  if (v5 <= v8)
  {
    if (v5 >= v8)
    {
      goto LABEL_15;
    }

    v18 = &v6[32 * v5];
    goto LABEL_14;
  }

  v9 = v5 - v8;
  v10 = *(a1 + 16);
  if (v5 - v8 <= (v10 - v7) >> 5)
  {
    bzero(*(a1 + 8), 32 * v9);
    v18 = (v7 + 32 * v9);
LABEL_14:
    *(a1 + 8) = v18;
    goto LABEL_15;
  }

  v28 = 0;
  v26 = 0u;
  *v27 = 0u;
  if ((a2 + 7) >> 62)
  {
    sub_25469BE48();
  }

  v11 = v10 - v6;
  if (v11 >> 4 > v5)
  {
    v5 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v5;
  }

  sub_25469BE58(&v26, v12, v8, a1);
  v13 = v27[0];
  bzero(v27[0], 32 * v9);
  v27[0] = &v13[32 * v9];
  v14 = *(a1 + 8) - *a1;
  v15 = *(&v26 + 1) - v14;
  memcpy((*(&v26 + 1) - v14), *a1, v14);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  *(a1 + 8) = *v27;
  v27[0] = v16;
  v27[1] = v17;
  *&v26 = v16;
  *(&v26 + 1) = v16;
  if (v16)
  {
    free(v16);
  }

LABEL_15:
  *(a1 + 24) = a2;
  if (v4 > a2)
  {
    v19 = *(a1 + 8) - *a1;
    if (*(a1 + 16) - *a1 > v19)
    {
      v28 = 0;
      v26 = 0u;
      *v27 = 0u;
      sub_25469BE58(&v26, v19 >> 5, v19 >> 5, a1);
      v20 = v26;
      v21 = *a1;
      if (v27[1] - v26 >= (*(a1 + 16) - *a1))
      {
        if (v27[0] != *(&v26 + 1))
        {
          v27[0] = v27[0] + ((*(&v26 + 1) - v27[0] + 31) & 0xFFFFFFFFFFFFFFE0);
        }
      }

      else
      {
        v22 = *(a1 + 8) - v21;
        v23 = *(&v26 + 1) - v22;
        memcpy((*(&v26 + 1) - v22), v21, v22);
        v20 = *a1;
        *a1 = v23;
        v24 = *(a1 + 16);
        *(a1 + 8) = *v27;
        v27[0] = v20;
        v27[1] = v24;
        *&v26 = v20;
        *(&v26 + 1) = v20;
      }

      if (v20)
      {
        free(v20);
      }
    }

    v25 = *(a1 + 24);
    if (v25)
    {
      bzero((*a1 + 4 * v25), *(a1 + 8) - (*a1 + 4 * v25));
    }
  }
}

void sub_25469BB90(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25469BB5CLL);
}

void sub_25469BBA0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = (a2 + 7) >> 3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (v7 - *a1) >> 5;
  if (v5 <= v8)
  {
    if (v5 >= v8)
    {
      goto LABEL_15;
    }

    v18 = &v6[32 * v5];
    goto LABEL_14;
  }

  v9 = v5 - v8;
  v10 = *(a1 + 16);
  if (v5 - v8 <= (v10 - v7) >> 5)
  {
    bzero(*(a1 + 8), 32 * v9);
    v18 = (v7 + 32 * v9);
LABEL_14:
    *(a1 + 8) = v18;
    goto LABEL_15;
  }

  v28 = 0;
  v26 = 0u;
  *v27 = 0u;
  if ((a2 + 7) >> 62)
  {
    sub_25469BE48();
  }

  v11 = v10 - v6;
  if (v11 >> 4 > v5)
  {
    v5 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v5;
  }

  sub_25469BE58(&v26, v12, v8, a1);
  v13 = v27[0];
  bzero(v27[0], 32 * v9);
  v27[0] = &v13[32 * v9];
  v14 = *(a1 + 8) - *a1;
  v15 = *(&v26 + 1) - v14;
  memcpy((*(&v26 + 1) - v14), *a1, v14);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  *(a1 + 8) = *v27;
  v27[0] = v16;
  v27[1] = v17;
  *&v26 = v16;
  *(&v26 + 1) = v16;
  if (v16)
  {
    free(v16);
  }

LABEL_15:
  *(a1 + 24) = a2;
  if (v4 > a2)
  {
    v19 = *(a1 + 8) - *a1;
    if (*(a1 + 16) - *a1 > v19)
    {
      v28 = 0;
      v26 = 0u;
      *v27 = 0u;
      sub_25469BE58(&v26, v19 >> 5, v19 >> 5, a1);
      v20 = v26;
      v21 = *a1;
      if (v27[1] - v26 >= (*(a1 + 16) - *a1))
      {
        if (v27[0] != *(&v26 + 1))
        {
          v27[0] = v27[0] + ((*(&v26 + 1) - v27[0] + 31) & 0xFFFFFFFFFFFFFFE0);
        }
      }

      else
      {
        v22 = *(a1 + 8) - v21;
        v23 = *(&v26 + 1) - v22;
        memcpy((*(&v26 + 1) - v22), v21, v22);
        v20 = *a1;
        *a1 = v23;
        v24 = *(a1 + 16);
        *(a1 + 8) = *v27;
        v27[0] = v20;
        v27[1] = v24;
        *&v26 = v20;
        *(&v26 + 1) = v20;
      }

      if (v20)
      {
        free(v20);
      }
    }

    v25 = *(a1 + 24);
    if (v25)
    {
      bzero((*a1 + 4 * v25), *(a1 + 8) - (*a1 + 4 * v25));
    }
  }
}

void sub_25469BDA8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25469BD74);
}

void sub_25469BDB8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_25469BE0C(exception);
  __cxa_throw(exception, off_2797800D8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_25469BE0C(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *sub_25469BE58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x40uLL, 32 * a2, 0x1000040E0EAB150uLL))
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v11, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v7 = memptr;
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[32 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[32 * a2];
  return a1;
}

uint64_t sub_25469C430(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 40) == a3)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

uint64_t sub_25469C454(uint64_t result, int a2)
{
  if (*(result + 40) == a2)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

void sub_25469C600(uint64_t ***a1, int a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a2 != 0xFFFF && a3 != 0xFFFF)
  {
    goto LABEL_35;
  }

  v7 = (**a1)[1] - ***a1;
  v8 = v7 | 0xF;
  memptr = 0;
  v41 = 0;
  if ((v7 | 0xF) > 0x800)
  {
    v9 = malloc_type_posix_memalign(&memptr, 0x10uLL, v7, 0x2320BA9FuLL);
    LOBYTE(v41) = 0;
    if (v9)
    {
      v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v37);
    }

    v10 = memptr;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    bzero(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7 | 0xF);
    v10 = ((&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v11 = v7 | 3;
  memptr = 0;
  v41 = 0;
  if ((v7 | 3) > 0x800)
  {
    v36 = malloc_type_posix_memalign(&memptr, 8uLL, v7, 0x74F457F3uLL);
    LOBYTE(v41) = 0;
    if (v36)
    {
      v38 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v38);
    }

    v12 = memptr;
  }

  else
  {
    MEMORY[0x28223BE20](v9);
    v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v12, v11);
  }

  if ((a3 & a2) == 0xFFFF)
  {
    v13 = **a1;
    v14 = *v13;
    if (v13[1] != *v13)
    {
      v15 = 0;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = (v14 + 32 * v15);
        v19 = *v18;
        v20 = v18[1];
        v17 = vaddq_f32(v17, v20);
        v16 = vaddq_f32(v16, *v18);
        v21 = &v10[8 * v15];
        *v21 = v19;
        v21[1] = v20;
        ++v15;
        v13 = **a1;
        v14 = *v13;
      }

      while (v15 < (v13[1] - *v13) >> 5);
    }

    v25 = *(v13 + 6);
LABEL_29:
    if (v25 >= 1)
    {
      cblas_sscal_NEWLAPACK();
      LODWORD(memptr) = (v25 + 7) & 0xFFFFFFF8;
      vvlog2f(v12, v10, &memptr);
      cblas_sdot_NEWLAPACK();
    }

    goto LABEL_31;
  }

  if (a2 == 0xFFFF)
  {
    v22 = **a1;
    v23 = v22[3];
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = v22[4];
      v27 = 0.0;
      do
      {
        if (*(v26 + 4 * v24) == a3)
        {
          v28 = *(*v22 + 4 * v24);
          v27 = v27 + v28;
          v10[v25++] = v28;
        }

        ++v24;
      }

      while (v23 > v24);
      goto LABEL_29;
    }
  }

  else
  {
    v29 = **a1;
    v30 = v29[3];
    if (v30)
    {
      v31 = 0;
      v25 = 0;
      v32 = v29[4];
      v33 = 0.0;
      do
      {
        if (*(v32 + 4 * v31 + 2) == a2)
        {
          v34 = *(*v29 + 4 * v31);
          v33 = v33 + v34;
          v10[v25++] = v34;
        }

        ++v31;
      }

      while (v30 > v31);
      goto LABEL_29;
    }
  }

LABEL_31:
  if (v11 >= 0x801)
  {
    free(v12);
  }

  if (v8 >= 0x801)
  {
    free(v10);
  }

LABEL_35:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_25469CE84(_Unwind_Exception *a1)
{
  v2 = v1;
  pthread_mutex_unlock((v2 + 8));
  _Unwind_Resume(a1);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}