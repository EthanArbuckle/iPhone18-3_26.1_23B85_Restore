unint64_t sub_1BA2D6D18()
{
  result = qword_1EDC6DCA0;
  if (!qword_1EDC6DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCA0);
  }

  return result;
}

unint64_t sub_1BA2D6D70()
{
  result = qword_1EDC6DCA8;
  if (!qword_1EDC6DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCA8);
  }

  return result;
}

unint64_t sub_1BA2D6DC8()
{
  result = qword_1EDC6DCD0;
  if (!qword_1EDC6DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCD0);
  }

  return result;
}

unint64_t sub_1BA2D6E20()
{
  result = qword_1EDC6DCD8;
  if (!qword_1EDC6DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCD8);
  }

  return result;
}

unint64_t sub_1BA2D6E78()
{
  result = qword_1EDC6DD48;
  if (!qword_1EDC6DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD48);
  }

  return result;
}

unint64_t sub_1BA2D6ED0()
{
  result = qword_1EDC6DD50;
  if (!qword_1EDC6DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD50);
  }

  return result;
}

unint64_t sub_1BA2D6F28()
{
  result = qword_1EDC6DC88;
  if (!qword_1EDC6DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC88);
  }

  return result;
}

unint64_t sub_1BA2D6F80()
{
  result = qword_1EDC6DC90;
  if (!qword_1EDC6DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC90);
  }

  return result;
}

unint64_t sub_1BA2D6FD8()
{
  result = qword_1EDC6DCB8;
  if (!qword_1EDC6DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCB8);
  }

  return result;
}

unint64_t sub_1BA2D7030()
{
  result = qword_1EDC6DCC0;
  if (!qword_1EDC6DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCC0);
  }

  return result;
}

unint64_t sub_1BA2D7088()
{
  result = qword_1EDC6DD18;
  if (!qword_1EDC6DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD18);
  }

  return result;
}

unint64_t sub_1BA2D70E0()
{
  result = qword_1EDC6DD20;
  if (!qword_1EDC6DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD20);
  }

  return result;
}

unint64_t sub_1BA2D7138()
{
  result = qword_1EDC6DC58;
  if (!qword_1EDC6DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC58);
  }

  return result;
}

unint64_t sub_1BA2D7190()
{
  result = qword_1EDC6DC60;
  if (!qword_1EDC6DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC60);
  }

  return result;
}

uint64_t sub_1BA2D71E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x467972616D6D7573 && a2 == 0xEB00000000646565;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x446C6C41776F6873 && a2 == 0xEB00000000617461 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4FB9A0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x684368746C616568 && a2 == 0xEF7473696C6B6365 || (sub_1BA4A8338() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C69666F7270 && a2 == 0xE700000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4F676E6972616873 && a2 == 0xEF77656976726576 || (sub_1BA4A8338() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x50676E6972616873 && a2 == 0xEE00776569766572 || (sub_1BA4A8338() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x72616265646973 && a2 == 0xE700000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4FB980 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x697461636964656DLL && a2 == 0xEF6D6F6F52736E6FLL || (sub_1BA4A8338() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x646E6572546C6C61 && a2 == 0xE900000000000073 || (sub_1BA4A8338() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4FB960 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t MeProfilePictureCachePublisher.init(imageDiameter:scale:cache:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

uint64_t static MeProfilePictureCachePublisher.SharePublisherCache.shared.getter()
{
  if (qword_1EDC63680 != -1)
  {
    swift_once();
  }
}

uint64_t MeProfilePictureCachePublisher.SharePublisherCache.RenderConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFAF2F00](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1BFAF2F00](*&v3);
}

uint64_t MeProfilePictureCachePublisher.SharePublisherCache.RenderConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BA4A8488();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1BFAF2F00](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFAF2F00](*&v4);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA2D788C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BA4A8488();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1BFAF2F00](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFAF2F00](*&v4);
  return sub_1BA4A84D8();
}

void *MeProfilePictureCachePublisher.SharePublisherCache.__allocating_init(publisherProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BA4A1C18();
  swift_allocObject();
  v5 = sub_1BA4A1C08();
  v6 = MEMORY[0x1E69E7CC8];
  v4[2] = v5;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v6;
  v7 = objc_opt_self();

  v8 = [v7 defaultCenter];
  [v8 addObserver:v4 selector:sel_didReceiveMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

  return v4;
}

void *MeProfilePictureCachePublisher.SharePublisherCache.init(publisherProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA4A1C18();
  swift_allocObject();
  v6 = sub_1BA4A1C08();
  v7 = MEMORY[0x1E69E7CC8];
  v2[2] = v6;
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = v7;
  v8 = objc_opt_self();

  v9 = [v8 defaultCenter];
  [v9 addObserver:v3 selector:sel_didReceiveMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

  return v3;
}

uint64_t MeProfilePictureCachePublisher.SharePublisherCache.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DDAD8] object:0];

  return v0;
}

uint64_t MeProfilePictureCachePublisher.SharePublisherCache.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DDAD8] object:0];

  return swift_deallocClassInstance();
}

uint64_t AdvertisableFeatureDataSource.sectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29AdvertisableFeatureDataSource_sectionTitle);

  return v1;
}

uint64_t AdvertisableFeatureDataSource.init(featureManager:featureIdentifiers:sectionTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v6 + OBJC_IVAR____TtC18HealthExperienceUI29AdvertisableFeatureDataSource_featureManager);
  *v16 = a1;
  v16[1] = a2;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI29AdvertisableFeatureDataSource_featureIdentifiers) = a3;
  v17 = (v6 + OBJC_IVAR____TtC18HealthExperienceUI29AdvertisableFeatureDataSource_sectionTitle);
  *v17 = a4;
  v17[1] = a5;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_1BA4A7DF8();

  strcpy(v23, "MutableArray<");
  HIWORD(v23[1]) = -4864;
  sub_1BA4A1788();
  v18 = sub_1BA4A1748();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x1BFAF1350](v18, v20);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v21 = MutableArrayDataSource.init(arrangedSections:identifier:)(MEMORY[0x1E69E7CC0], v23[0], v23[1]);
  swift_getObjectType();
  sub_1BA2D9640(&qword_1EBBF01B8, type metadata accessor for AdvertisableFeatureDataSource);
  swift_retain_n();
  sub_1BA4A30D8();
  swift_allocObject();
  swift_weakInit();

  sub_1BA4A30C8();

  swift_unknownObjectRelease();

  return v21;
}

uint64_t type metadata accessor for AdvertisableFeatureDataSource()
{
  result = qword_1EBBF01C0;
  if (!qword_1EBBF01C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2D80F0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = sub_1BA4A6478();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A64C8();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2D9474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1B9F38BF4();
  v12 = sub_1BA4A7308();
  sub_1BA2D95B4(a1, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  sub_1BA2D96E4(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = sub_1BA2D9748;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_13_1;
  v15 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA2D9640(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1BA2D9640(&qword_1EDC5E6A0, sub_1B9F3F378);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v19);
}

uint64_t sub_1BA2D8478(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA2D84D8(a2);
  }

  return result;
}

uint64_t sub_1BA2D84D8(uint64_t a1)
{
  v60 = sub_1BA4A1798();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A2B48();
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A2E88();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  sub_1BA2D9474();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA2D95B4(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v17, v20, v11);
    sub_1BA4A3DC8();
    (*(v12 + 16))(v14, v17, v11);
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v68[0] = v24;
      *v23 = 136315138;
      v64 = sub_1BA4A2E78();
      v26 = v25;
      v27 = *(v12 + 8);
      v27(v14, v11);
      v28 = sub_1B9F0B82C(v64, v26, v68);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[AdvertisableFeatureDataSource]: update error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    else
    {

      v27 = *(v12 + 8);
      v27(v14, v11);
    }

    (*(v65 + 8))(v67, v66);
    return (v27)(v17, v11);
  }

  else
  {
    v67 = *v20;
    v57 = v1;
    v29 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29AdvertisableFeatureDataSource_featureIdentifiers);
    v68[0] = MEMORY[0x1E69E7CC0];
    v30 = *(v29 + 16);
    if (v30)
    {
      v66 = *(v61 + 16);
      v31 = v29 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v32 = *(v61 + 72);
      v33 = (v61 + 8);
      v65 = MEMORY[0x1E69E7CC0];
      for (i = v66(v8, v31, v6); ; i = v66(v8, v31, v6))
      {
        MEMORY[0x1EEE9AC00](i);
        *(&v57 - 2) = v8;
        v35 = sub_1BA369090(sub_1BA2D9618, (&v57 - 4), v67);
        v36 = (*v33)(v8, v6);
        if (v35)
        {
          MEMORY[0x1BFAF1510](v36);
          if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v65 = *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v65 = v68[0];
        }

        v31 += v32;
        if (!--v30)
        {
          break;
        }
      }
    }

    else
    {
      v65 = MEMORY[0x1E69E7CC0];
    }

    v38 = v65;
    if (v65 >> 62)
    {
      v39 = sub_1BA4A7CC8();
    }

    else
    {
      v39 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v57;
    v41 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
    swift_beginAccess();
    v43 = v62;
    v42 = v63;
    v44 = v64;
    (*(v63 + 16))(v62, v40 + v41, v64);
    v45 = sub_1BA4A4548();
    (*(v42 + 8))(v43, v44);
    if (v39)
    {
      if (v45 <= 0)
      {
        sub_1B9FF6758();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BA4B5480;
        v49 = *(v40 + OBJC_IVAR____TtC18HealthExperienceUI29AdvertisableFeatureDataSource_sectionTitle);
        v48 = *(v40 + OBJC_IVAR____TtC18HealthExperienceUI29AdvertisableFeatureDataSource_sectionTitle + 8);

        v50 = sub_1B9FE6470(v38);

        v51 = v58;
        sub_1BA4A1788();
        v52 = sub_1BA4A1748();
        v54 = v53;
        (*(v59 + 8))(v51, v60);
        v55 = MEMORY[0x1E69E7CC0];
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        *(inited + 56) = sub_1B9F1C5F0(v55);
        *(inited + 32) = v49;
        *(inited + 40) = v48;

        *(inited + 48) = v50;
        v56 = Array<A>.identifierToIndexDict()(v50);

        *(inited + 56) = v56;
        *(inited + 64) = v52;
        *(inited + 72) = v54;
        sub_1BA0E7F10(inited, 1);
        swift_setDeallocating();
        return sub_1B9FF7224(inited + 32);
      }

      else
      {
        v46 = sub_1B9FE6470(v38);

        sub_1BA0EB668(0, v46, 1);
      }
    }

    else
    {

      if (v45 >= 1)
      {
        return sub_1BA0EB2C0(0);
      }
    }
  }

  return result;
}

uint64_t sub_1BA2D8D00()
{
  v0 = sub_1BA4A2B48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A2E98();
  sub_1BA2D9640(&qword_1EBBF01F0, MEMORY[0x1E69A3240]);
  sub_1BA4A6A58();
  sub_1BA4A6A58();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1BA4A8338();
  }

  (*(v1 + 8))(v3, v0);

  return v4 & 1;
}

uint64_t sub_1BA2D8EC0()
{
  swift_unknownObjectRelease();
}

uint64_t AdvertisableFeatureDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t AdvertisableFeatureDataSource.__deallocating_deinit()
{
  AdvertisableFeatureDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2D9050(uint64_t a1, uint64_t a2)
{
  sub_1BA2D9474();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a2;
  swift_storeEnumTagMultiPayload();

  sub_1BA2D84D8(v5);
  return sub_1BA2D9688(v5);
}

uint64_t sub_1BA2D90FC(uint64_t a1)
{
  v3 = sub_1BA4A6478();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A64C8();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F38BF4();
  v10 = sub_1BA4A7308();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1BA2D9638;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_81;
  v12 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA2D9640(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1BA2D9640(&qword_1EDC5E6A0, sub_1B9F3F378);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v15);
}

void sub_1BA2D9474()
{
  if (!qword_1EBBF01D0)
  {
    sub_1BA2D9520();
    sub_1BA4A2E88();
    sub_1BA2D9640(&qword_1EBBF01E8, MEMORY[0x1E69A3350]);
    v0 = sub_1BA4A8508();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF01D0);
    }
  }
}

void sub_1BA2D9520()
{
  if (!qword_1EBBF01D8)
  {
    sub_1BA4A2EE8();
    sub_1BA2D9640(&qword_1EBBF01E0, MEMORY[0x1E69A3368]);
    v0 = sub_1BA4A6DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF01D8);
    }
  }
}

uint64_t sub_1BA2D95B4(uint64_t a1, uint64_t a2)
{
  sub_1BA2D9474();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2D9640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA2D9688(uint64_t a1)
{
  sub_1BA2D9474();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA2D96E4(uint64_t a1, uint64_t a2)
{
  sub_1BA2D9474();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2D9748()
{
  sub_1BA2D9474();
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1BA2D8478(v3, v4);
}

uint64_t static CompoundDataSourceBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B9F1DEA0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  swift_unknownObjectRetain();
  return v4;
}

{
  if (a1)
  {
    sub_1B9F1DEA0();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 32) = a1;
    *(v4 + 40) = a2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRetain();
  return v4;
}

uint64_t static CompoundDataSourceBuilder.buildBlock(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1B9F1E00C(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        sub_1BA03A7DC();
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static CompoundDataSourceBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void (*sub_1BA2D9ABC(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener_applicationStateProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA04A958;
}

id InteractiveGenerationListener.__deallocating_deinit()
{
  sub_1BA2D9DB8();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver_];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x1E69DDAB0] object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x1E69DDAC8] object:0];

  v5 = [v1 defaultCenter];
  v6 = qword_1EDC5E428;
  v7 = v0;
  if (v6 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v7 name:qword_1EDC5E430 object:0];

  v8 = [v1 defaultCenter];
  v9 = qword_1EDC5E400;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  [v8 removeObserver:v10 name:qword_1EDC5E408 object:0];

  v12.receiver = v10;
  v12.super_class = type metadata accessor for InteractiveGenerationListener();
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

void sub_1BA2D9DB8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    v13[1] = ObjectType;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v9 = sub_1BA4A6808();
    v11 = sub_1B9F0B82C(v9, v10, v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4FBB40, v13);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v12 = sub_1B9F8C62C();
  [v12 cancelAllOperations];
}

uint64_t sub_1BA2DA03C(uint64_t a1, const char *a2, uint64_t (*a3)(void))
{
  ObjectType = swift_getObjectType();
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24[0] = v14;
    v24[1] = ObjectType;
    *v13 = 136315138;
    swift_getMetatypeMetadata();
    v15 = sub_1BA4A6808();
    v17 = sub_1B9F0B82C(v15, v16, v24);
    v22 = v6;
    v18 = a3;
    v19 = v17;

    *(v13 + 4) = v19;
    a3 = v18;
    _os_log_impl(&dword_1B9F07000, v10, v11, v23, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);

    v20 = (*(v7 + 8))(v9, v22);
  }

  else
  {

    v20 = (*(v7 + 8))(v9, v6);
  }

  return a3(v20);
}

uint64_t sub_1BA2DA24C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1BA4A1018();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

id InteractiveGenerationListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InteractiveGenerationListener.init()()
{
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener____lazy_storage___queue] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener_applicationStateProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveGenerationListener();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HostView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1BA2DA4F0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BA4A1608();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BA2DA558(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1BA4A15F8();
  }

  v4 = v3;
  [v2 setUserData_];
}

id sub_1BA2DA5D0()
{
  v1 = [v0 topAnchor];

  return v1;
}

void sub_1BA2DA608()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = v3;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v6 = *(v4 + 16);
      v7 = v1;
      v6(Strong, ObjectType, v4);
    }
  }
}

uint64_t sub_1BA2DA6D0(uint64_t a1)
{
  v2 = v1;
  sub_1B9F75028(a1, v9);
  v3 = v10;
  if (v10)
  {
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 8))(v3, v4);
    v3 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1B9F752DC(v9);
    v5 = 0;
  }

  v7 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  *v7 = v5;
  v7[1] = v3;
}

id sub_1BA2DA78C()
{
  v1 = [v0 bottomAnchor];

  return v1;
}

uint64_t sub_1BA2DA7C4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = FeedItem.pluginInfo.getter();

  return v4;
}

void sub_1BA2DA874(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1B9F67948();
}

void (*sub_1BA2DA8D4(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA2DA96C;
}

void sub_1BA2DA96C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1B9F67948();
  }

  free(v3);
}

void *sub_1BA2DA9F0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA2DAA3C(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1B9F681A0(v4);
}

void (*sub_1BA2DAAA8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BA2DAB44;
}

void sub_1BA2DAB44(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1B9F681A0(v8);

    v8 = *v5;
  }

  else
  {
    sub_1B9F681A0(v8);
  }

  free(v3);
}

uint64_t sub_1BA2DABE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  swift_beginAccess();
  return sub_1B9F75B30(v1 + v3, a1);
}

void (*sub_1BA2DAC38(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_1B9F6719C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[7] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[7] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  v5[8] = v8;
  v5[9] = v9;
  swift_beginAccess();
  return sub_1BA2DAD3C;
}

void sub_1BA2DAD3C(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (*(v3 + 48) + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      sub_1B9F75B30(*(v3 + 48) + *(v3 + 72), *(v3 + 64));
      ObjectType = swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        v8 = v7;
        v9 = *(v3 + 56);
        sub_1B9F75B30(*(v3 + 64), v9);
        v10 = *(v8 + 16);
        v11 = v5;
        v10(v9, ObjectType, v8);
        v12 = HAFeatureFlagViewLoggingEnabled();
        if (!v12)
        {
LABEL_6:
          v13 = *(v3 + 64);
          (*((*MEMORY[0x1E69E7D40] & **(v3 + 48)) + 0x130))(v12);

          sub_1B9F778E4(v13);
          goto LABEL_7;
        }
      }

      else
      {
        v15 = v5;
        v12 = HAFeatureFlagViewLoggingEnabled();
        if (!v12)
        {
          goto LABEL_6;
        }
      }

      v12 = sub_1BA20775C(*(v3 + 48), v5);
      goto LABEL_6;
    }
  }

LABEL_7:
  v14 = *(v3 + 56);
  free(*(v3 + 64));
  free(v14);

  free(v3);
}

id sub_1BA2DAEC4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA2DAF18(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2;
  v8 = a1;
  sub_1B9F6B084(v6, v7);
}

void (*sub_1BA2DAF98(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BA2DB038;
}

void sub_1BA2DB038(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *v4;
  v6 = *(*a1 + 40) + *(*a1 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = *v4;
  v9 = v5;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1B9F6B084(v7, v8);

    v7 = *v4;
  }

  else
  {
    sub_1B9F6B084(v7, v8);
  }

  free(v3);
}

uint64_t sub_1BA2DB0EC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA2DB144(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA2DB208()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1B9F67948();
}

void sub_1BA2DB268(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1B9F681A0(v5);
}

uint64_t sub_1BA2DB2D0(uint64_t a1)
{
  sub_1B9F6719C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B9F75B30(a1, &v6 - v3);
  return sub_1B9F76294(v4);
}

void sub_1BA2DB374(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v7 = v2;
  sub_1B9F6B084(v5, v6);
}

uint64_t sub_1BA2DB3EC(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = a1;
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 138543618;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v22 = *&v6[v12];
    v21 = v2;
    v13 = v22;
    sub_1BA2DC020();
    v14 = v6;
    v15 = v13;
    v16 = sub_1BA4A6808();
    v18 = sub_1B9F0B82C(v16, v17, &v23);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1B9F07000, v7, v8, "%{public}@ Skipping hostedViewable update, hostedViewable is the same %s", v9, 0x16u);
    sub_1B9F8C6C8(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);

    return (*(v3 + 8))(v5, v21);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BA2DB62C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id HostView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HostView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -1;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentFeedItemUniqueIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] = 1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem] = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  v6 = type metadata accessor for SectionContext(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = &v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView] = 0;
  v8 = &v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier];
  v9 = type metadata accessor for HostView();
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id HostView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA2DB94C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA2DA96C;
}

uint64_t sub_1BA2DB9E4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA2DBA40(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t HostView.description.getter()
{
  v1 = v0;
  if (HAFeatureFlagViewLoggingEnabled())
  {
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](60, 0xE100000000000000);
    swift_getObjectType();
    v2 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v2);

    MEMORY[0x1BFAF1350](32, 0xE100000000000000);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA4FBCA0);
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    sub_1B9F6A804(0, &qword_1EDC5E4D8, &qword_1EDC6B5D0);
    v3 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v3);

    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4FBCC0);
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver);
    sub_1B9F6719C(0, &qword_1EDC6AEA0, MEMORY[0x1E6968DD0]);
    v5 = v4;
    v6 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v6);

    MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4FBCE0);
    sub_1B9F64098(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4FBD00);
    v8 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
    swift_beginAccess();
    v9 = *(v1 + v8);
    if (v9)
    {
      [v9 faultingState];
    }

    v12 = MEMORY[0x1E69E6720];
    sub_1B9F64098(0, &qword_1EDC6B640, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v13 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v13);

    MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4FBD20);
    v14 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v15 = *(v1 + v14);
    sub_1BA2DC020();
    v16 = v15;
    v17 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v17);

    MEMORY[0x1BFAF1350](0x646574736F68202CLL, 0xEE00203A77656956);
    v18 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
    sub_1B9F6A804(0, &unk_1EDC5E200, &qword_1EDC6B4A0);
    v19 = v18;
    v20 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v20);

    MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4FBD40);
    sub_1BA207FD8(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 8), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 16));
    sub_1B9F64098(0, &qword_1EDC6E228, MEMORY[0x1E69A3C60], v12);
    v21 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v21);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    return 0;
  }

  else
  {
    swift_getObjectType();
    v10 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v10);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    return 60;
  }
}

void sub_1BA2DC020()
{
  if (!qword_1EBBF0218)
  {
    sub_1B9F0D9AC(255, qword_1EDC6B7C0);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0218);
    }
  }
}

uint64_t sub_1BA2DC618(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_1BA2DC6B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1BA2DC790(uint64_t a1, uint64_t a2)
{
  sub_1BA2DD238(0, &qword_1EBBF0220, sub_1BA2DC824, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA2DC824()
{
  result = qword_1EBBF0228;
  if (!qword_1EBBF0228)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBF0228);
  }

  return result;
}

uint64_t sub_1BA2DC888(uint64_t a1)
{
  swift_beginAccess();
  sub_1BA2DC918(a1, v1 + 40);
  swift_endAccess();
  sub_1BA2DC790(v1 + 40, v5);
  if (v6)
  {
    sub_1BA2DC9AC(v5);
    if (*(v1 + 16))
    {
      sub_1BA2DCC68();
    }

    v3 = a1;
  }

  else
  {
    sub_1BA2DC9AC(a1);
    v3 = v5;
  }

  return sub_1BA2DC9AC(v3);
}

uint64_t sub_1BA2DC918(uint64_t a1, uint64_t a2)
{
  sub_1BA2DD238(0, &qword_1EBBF0220, sub_1BA2DC824, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2DC9AC(uint64_t a1)
{
  sub_1BA2DD238(0, &qword_1EBBF0220, sub_1BA2DC824, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_1BA2DCA38(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return sub_1BA2DCAB0;
}

void sub_1BA2DCAB0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA2DC790(v3[5] + 40, v3);
    v4 = v3[3];
    sub_1BA2DC9AC(v3);
    if (v4)
    {
      if (*(v3[5] + 16) == 1)
      {
        sub_1BA2DCC68();
      }
    }
  }

  free(v3);
}

uint64_t PDFGenerationContainer.__allocating_init(queue:autogenerate:pdfDataProvider:)(void *a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PDFGenerationContainer.init(queue:autogenerate:pdfDataProvider:)(a1, a2, a3);
  return v6;
}

uint64_t PDFGenerationContainer.init(queue:autogenerate:pdfDataProvider:)(void *a1, char a2, uint64_t a3)
{
  sub_1BA2DCF20();
  swift_allocObject();
  v7 = sub_1BA4A4DF8();
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0;
  *(v3 + 24) = v7;
  *(v3 + 32) = a1;
  *(v3 + 16) = a2;
  swift_beginAccess();
  v8 = a1;
  sub_1BA2DC918(a3, v3 + 40);
  swift_endAccess();
  if (a2)
  {
    sub_1BA2DCC68();

    sub_1BA2DC9AC(a3);
  }

  else
  {
    sub_1BA2DC9AC(a3);
  }

  return v3;
}

uint64_t sub_1BA2DCC68()
{
  v1 = *v0;
  v2 = sub_1BA4A6478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1BA2DD230;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_82;
  v11 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1BA2DD238(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v9, v5, v11);
  _Block_release(v11);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void sub_1BA2DCF20()
{
  if (!qword_1EBBF0230)
  {
    v0 = sub_1BA4A4DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0230);
    }
  }
}

uint64_t sub_1BA2DCF80(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v21 = xmmword_1BA4CFAA0;

  sub_1BA4A4DC8();

  swift_beginAccess();
  sub_1BA2DC790(a1 + 40, &v19);
  if (v20)
  {
    sub_1B9F1134C(&v19, &v21);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    v8 = *(v7 + 8);

    *&v19 = v8(v6, v7);
    *(&v19 + 1) = v9;
    sub_1BA4A4DC8();

    return __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    sub_1BA2DC9AC(&v19);
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v21 = v14;
      *v13 = 136446210;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s] Failed to create a PDF, no provider provided", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v21 = xmmword_1BA4B7EA0;

    sub_1BA4A4DC8();
  }
}

void sub_1BA2DD238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t PDFGenerationContainer.deinit()
{

  sub_1BA2DC9AC(v0 + 40);
  return v0;
}

uint64_t PDFGenerationContainer.__deallocating_deinit()
{

  sub_1BA2DC9AC(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI22PDFGenerationContainerC8PDFStateO(uint64_t a1)
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

uint64_t sub_1BA2DD49C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA2DD4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_1BA2DD54C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

void sub_1BA2DD58C(uint64_t a1@<X8>)
{
  v50[1] = *MEMORY[0x1E69E9840];
  sub_1BA2DDFD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - v6;
  v50[0] = 0;
  v8 = [v1 isCurrentOnboardingVersionCompletedWithError_];
  if (!v8)
  {
    v29 = v50[0];
LABEL_10:
    sub_1BA4A1488();

    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = v50[0];
  v11 = [v9 BOOLValue];

  v12 = sub_1BA2DD9F0();
  if (v2)
  {
    return;
  }

  v49 = v13;
  v48 = v12;
  sub_1BA2DDAF4(v7);
  v47 = 0;
  v50[0] = 0;
  v14 = [v1 onboardedCountryCodeSupportedStateWithError_];
  if (!v14 || (v15 = v14, v46 = v11, v16 = v50[0], v17 = [v15 integerValue], v15, v50[0] = 0, (v18 = objc_msgSend(v1, sel_isFeatureCapabilitySupportedOnActivePairedDeviceWithError_, v50)) == 0) || (v19 = v18, v20 = v50[0], v21 = objc_msgSend(v19, sel_BOOLValue), v19, v50[0] = 0, (v22 = objc_msgSend(v1, sel_isCurrentOnboardingVersionCompletedWithError_, v50)) == 0))
  {
    v29 = v50[0];
    sub_1BA05DB44(v7);
    goto LABEL_10;
  }

  v23 = v22;
  v45 = v21;
  v24 = v50[0];
  v25 = [v23 BOOLValue];

  if (v25)
  {
    v50[0] = 0;
    v26 = [v1 pairedFeatureAttributesWithError_];
    v27 = v50[0];
    if (!v26)
    {
      v28 = v27;
      sub_1BA05DB44(v7);
      sub_1BA4A1488();

      swift_willThrow();
      return;
    }
  }

  else
  {
    v26 = 0;
  }

  v44 = v17;
  v50[0] = 0;
  v30 = [v1 regionAvailabilityWithError_];
  v31 = v50[0];
  if (v30)
  {
    v32 = v30;
    v33 = v47;
  }

  else
  {
    v34 = v31;
    v35 = sub_1BA4A1488();

    swift_willThrow();
    v32 = 0;
    v33 = 0;
  }

  v36 = sub_1BA2DDCC4();
  if (v33)
  {
    sub_1BA05DB44(v7);
  }

  else
  {
    v37 = v36;
    v50[0] = 0;
    v38 = [v1 featureAvailabilityRequirementsWithError_];
    v39 = v50[0];
    if (!v38)
    {
      v40 = v39;
      v41 = sub_1BA4A1488();

      swift_willThrow();
      v38 = 0;
    }

    *a1 = v46;
    *(a1 + 8) = v48;
    *(a1 + 16) = v49 & 1;
    v42 = type metadata accessor for InternalSettingsFeatureState();
    sub_1B9FD84F0(v7, a1 + v42[6]);
    *(a1 + v42[7]) = v44;
    *(a1 + v42[8]) = v45;
    *(a1 + v42[9]) = v26;
    *(a1 + v42[10]) = v32;
    *(a1 + v42[11]) = v37;
    *(a1 + v42[12]) = v38;
  }
}

id sub_1BA2DD9F0()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = [v0 featureOnboardingRecordWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v7[0];
    v4 = [v2 onboardingCompletion];

    if (v4)
    {
      v5 = [v4 version];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = v7[0];
    sub_1BA4A1488();

    swift_willThrow();
  }

  return v5;
}

void sub_1BA2DDAF4(uint64_t a1@<X8>)
{
  v2 = v1;
  v15[1] = *MEMORY[0x1E69E9840];
  sub_1BA2DDFD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v15[0] = 0;
  v8 = [v2 earliestDateLowestOnboardingVersionCompletedWithError_];
  v9 = v15[0];
  if (v8)
  {
    v10 = v8;
    sub_1BA4A16F8();
    v11 = v9;

    v12 = sub_1BA4A1728();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v13 = sub_1BA4A1728();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = v9;
  }

  sub_1B9FD84F0(v7, a1);
  if (v9)
  {
    swift_willThrow();
    sub_1BA05DB44(a1);
  }
}

id sub_1BA2DDCC4()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v1 = [v0 featureOnboardingRecordWithError_];
  v2 = v10[0];
  if (v1)
  {
    v3 = v1;
    v4 = v10[0];
    v5 = [v3 featureSettings];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 keyValueStorage];

      v2 = sub_1BA4A6628();
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v8 = v10[0];
    sub_1BA4A1488();

    swift_willThrow();
  }

  return v2;
}

uint64_t static HKFeatureIdentifier.allCases.getter()
{
  v0 = HKAllFeatureIdentifiers();
  type metadata accessor for HKFeatureIdentifier(0);
  v1 = sub_1BA4A6B08();

  return v1;
}

uint64_t HKFeatureIdentifier.description.getter()
{
  v0 = NSStringFromHKFeatureIdentifier();
  v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v1;
}

unint64_t sub_1BA2DDE98()
{
  result = qword_1EBBF0238;
  if (!qword_1EBBF0238)
  {
    sub_1BA2DDFD8(255, &qword_1EBBF0240, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0238);
  }

  return result;
}

void sub_1BA2DDF20(uint64_t *a1@<X8>)
{
  v2 = HKAllFeatureIdentifiers();
  v3 = sub_1BA4A6B08();

  *a1 = v3;
}

uint64_t sub_1BA2DDF74()
{
  v0 = NSStringFromHKFeatureIdentifier();
  v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v1;
}

void sub_1BA2DDFD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for InternalSettingsFeatureState()
{
  result = qword_1EBBF0248;
  if (!qword_1EBBF0248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA2DE09C()
{
  sub_1BA23F070();
  if (v0 <= 0x3F)
  {
    sub_1BA2DDFD8(319, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKFeatureAvailabilityOnboardedCountrySupportedState(319);
      if (v2 <= 0x3F)
      {
        sub_1B9F6A804(319, &qword_1EBBF0258, &qword_1EBBF0260);
        if (v3 <= 0x3F)
        {
          sub_1B9F6A804(319, &qword_1EBBF0268, &qword_1EBBF0270);
          if (v4 <= 0x3F)
          {
            sub_1BA2DDFD8(319, &qword_1EBBF0278, sub_1BA2DE250, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B9F6A804(319, &qword_1EBBF0288, &qword_1EBBF0290);
              if (v6 <= 0x3F)
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

void sub_1BA2DE250()
{
  if (!qword_1EBBF0280)
  {
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0280);
    }
  }
}

char *CameraScannerOverlayContentView.__allocating_init(title:detail:detailMaxNumberOfLines:headerView:headerHeight:automationIdentifierPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9)
{
  v19 = objc_allocWithZone(v9);
  *&v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView] = 0;
  *&v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___titleLabel] = 0;
  *&v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___detailLabel] = 0;
  v20 = &v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_title];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detail];
  *v21 = a3;
  *(v21 + 1) = a4;
  *&v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detailMaxNumberOfLines] = a5;
  if (a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  *&v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView] = v22;
  *&v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerHeight] = a9;
  v23 = &v19[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix];
  *v23 = a7;
  *(v23 + 1) = a8;
  v63.receiver = v19;
  v63.super_class = v9;
  v62 = a6;
  v24 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B8B60;
  v60 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView;
  v26 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView];
  *(inited + 32) = v26;
  v61 = v24;
  v27 = v24;
  v28 = v26;
  *(inited + 40) = sub_1BA2DE928();
  *(inited + 48) = sub_1BA2DEB5C();
  v29 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView;
  v30 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v32 = i;
    v33 = sub_1BA2DE850();
    [v33 addArrangedSubview_];

    [v32 hk:*&v27[v29] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v30)
    {
      v34 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v34 = *(inited + 40);
    }

    v35 = v34;
    v36 = sub_1BA2DE850();
    [v36 addArrangedSubview_];

    [v35 hk:*&v27[v29] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v30)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v37 = *(inited + 48);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v37 = MEMORY[0x1BFAF2860](2, inited);
LABEL_13:
  v38 = v37;
  v39 = sub_1BA2DE850();
  [v39 addArrangedSubview_];

  [v38 hk:*&v27[v29] alignHorizontalConstraintsWithView:0.0 margin:?];
  swift_setDeallocating();
  swift_arrayDestroy();
  v40 = v27;
  v41 = sub_1BA2DE850();
  [v40 addSubview_];

  v42 = objc_opt_self();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4B5880;
  v44 = [*&v61[v60] heightAnchor];
  v45 = [v44 constraintEqualToConstant_];

  *(v43 + 32) = v45;
  v46 = [*&v27[v29] leadingAnchor];
  v47 = [v40 leadingAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v43 + 40) = v48;
  v49 = [*&v27[v29] trailingAnchor];
  v50 = [v40 trailingAnchor];

  v51 = [v49 constraintEqualToAnchor_];
  *(v43 + 48) = v51;
  v52 = [*&v27[v29] topAnchor];
  v53 = [v40 topAnchor];

  v54 = [v52 constraintEqualToAnchor_];
  *(v43 + 56) = v54;
  v55 = [v40 heightAnchor];

  v56 = [*&v27[v29] heightAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v43 + 64) = v57;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v58 = sub_1BA4A6AE8();

  [v42 activateConstraints_];

  return v40;
}

id sub_1BA2DE850()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setAxis_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA2DE948(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v3 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  v4 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v2 setFont_];

  [v2 setTextAlignment_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v5 = sub_1BA4A6758();
  [v2 setText_];

  sub_1B9F1C048(0, &qword_1EDC6E330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5460;
  v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix + 8);
  *(v6 + 32) = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix);
  *(v6 + 40) = v7;
  *(v6 + 48) = 0x62614C656C746954;
  *(v6 + 56) = 0xEA00000000006C65;

  v8 = sub_1BA4A6AE8();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  [v2 setAccessibilityIdentifier_];
  return v2;
}

id sub_1BA2DEB7C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1BA2DEBE0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  v4 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v2 setFont_];

  [v2 setTextAlignment_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v5 = sub_1BA4A6758();
  [v2 setText_];

  sub_1B9F1C048(0, &qword_1EDC6E330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5460;
  v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix + 8);
  *(v6 + 32) = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix);
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "DetailsLabel");
  *(v6 + 61) = 0;
  *(v6 + 62) = -5120;

  v8 = sub_1BA4A6AE8();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  [v2 setAccessibilityIdentifier_];
  return v2;
}

char *CameraScannerOverlayContentView.init(title:detail:detailMaxNumberOfLines:headerView:headerHeight:automationIdentifierPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9)
{
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___titleLabel] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___detailLabel] = 0;
  v14 = &v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_title];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detail];
  *v15 = a3;
  *(v15 + 1) = a4;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detailMaxNumberOfLines] = a5;
  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  *&v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView] = v16;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerHeight] = a9;
  v17 = &v9[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix];
  *v17 = a7;
  *(v17 + 1) = a8;
  v57.receiver = v9;
  v57.super_class = type metadata accessor for CameraScannerOverlayContentView();
  v56 = a6;
  v18 = objc_msgSendSuper2(&v57, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B8B60;
  v54 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView;
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView];
  *(inited + 32) = v20;
  v55 = v18;
  v21 = v18;
  v22 = v20;
  *(inited + 40) = sub_1BA2DE928();
  *(inited + 48) = sub_1BA2DEB5C();
  v23 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView;
  v24 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v26 = i;
    v27 = sub_1BA2DE850();
    [v27 addArrangedSubview_];

    [v26 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v24)
    {
      v28 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v28 = *(inited + 40);
    }

    v29 = v28;
    v30 = sub_1BA2DE850();
    [v30 addArrangedSubview_];

    [v29 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v24)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v31 = *(inited + 48);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v31 = MEMORY[0x1BFAF2860](2, inited);
LABEL_13:
  v32 = v31;
  v33 = sub_1BA2DE850();
  [v33 addArrangedSubview_];

  [v32 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
  swift_setDeallocating();
  swift_arrayDestroy();
  v34 = v21;
  v35 = sub_1BA2DE850();
  [v34 addSubview_];

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BA4B5880;
  v38 = [*&v55[v54] heightAnchor];
  v39 = [v38 constraintEqualToConstant_];

  *(v37 + 32) = v39;
  v40 = [*&v21[v23] leadingAnchor];
  v41 = [v34 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v37 + 40) = v42;
  v43 = [*&v21[v23] trailingAnchor];
  v44 = [v34 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor_];
  *(v37 + 48) = v45;
  v46 = [*&v21[v23] topAnchor];
  v47 = [v34 topAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v37 + 56) = v48;
  v49 = [v34 heightAnchor];

  v50 = [*&v21[v23] heightAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v37 + 64) = v51;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v52 = sub_1BA4A6AE8();

  [v36 activateConstraints_];

  return v34;
}

id CameraScannerOverlayContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CameraScannerOverlayContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerOverlayContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static CameraScannerOverlayContentView.makeScannerActionIntroHeaderView(image:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];

  [v2 setImage_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTintColor_];

  return v2;
}

id static CameraScannerOverlayContentView.makeScannerActionCheckmarkHeaderView()()
{
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B7510;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 tintColor];
  *(v2 + 40) = [v3 whiteColor];
  sub_1B9F0ADF8(0, &qword_1EDC6E380);
  v4 = sub_1BA4A6AE8();

  v5 = objc_opt_self();
  v6 = [v5 configurationWithPaletteColors_];

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 boldSystemFontOfSize_];
  v10 = [v5 configurationWithFont_];

  v11 = [v8 configurationByApplyingConfiguration_];
  v12 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v13 = v11;
  v14 = [v12 init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setPreferredSymbolConfiguration_];

  [v14 setContentMode_];
  [v14 setImage_];

  return v14;
}

char *PlatformAlertsDataSource.__allocating_init(healthExperienceStore:healthStore:sourceProfiles:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA2DFC4C(a1, a3);

  return v8;
}

char *PlatformAlertsDataSource.init(healthExperienceStore:healthStore:sourceProfiles:)(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA2DFC4C(a1, a3);

  return v4;
}

id sub_1BA2DF9A0()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_1EDC6D388;
  v13[1] = xmmword_1EDC6D398;
  v13[2] = xmmword_1EDC6D3A8;
  v13[3] = xmmword_1EDC6D3B8;
  v13[4] = xmmword_1EDC6D3C8;
  v13[5] = unk_1EDC6D3D8;
  v13[6] = xmmword_1EDC6D3E8;
  v13[7] = unk_1EDC6D3F8;
  v0 = xmmword_1EDC6D388;
  v1 = xmmword_1EDC6D398;
  v3 = xmmword_1EDC6D3A8;
  v2 = xmmword_1EDC6D3B8;
  v12 = qword_1EDC6D400;
  v10 = *&qword_1EDC6D3E0;
  v11 = *(&xmmword_1EDC6D3E8 + 8);
  v8 = *(&xmmword_1EDC6D3B8 + 8);
  v9 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v13, &v16);
  sub_1B9F1DA18(*(&v1 + 1), v3, *(&v3 + 1), v2);
  v4 = [objc_opt_self() estimatedDimension_];

  *&v15[56] = v9;
  *&v15[72] = v10;
  *&v14 = v0;
  *(&v14 + 1) = v4;
  *v15 = v1;
  *&v15[88] = v11;
  memset(&v15[8], 0, 32);
  *&v15[104] = v12;
  *&v15[40] = v8;
  sub_1BA0117AC();
  *&v17[48] = *&v15[48];
  *&v17[64] = *&v15[64];
  *&v17[80] = *&v15[80];
  *&v17[96] = *&v15[96];
  v16 = v14;
  *v17 = *v15;
  *&v17[16] = *&v15[16];
  *&v17[32] = *&v15[32];
  sub_1B9F1D9A4(&v14, &v7);
  v5 = sub_1B9F293A8(&v16);
  *&v16 = v0;
  memset(&v17[8], 0, 32);
  *&v17[56] = v9;
  *&v17[72] = v10;
  *(&v16 + 1) = v4;
  *v17 = v1;
  *&v17[88] = v11;
  *&v17[104] = v12;
  *&v17[40] = v8;
  sub_1B9F1DA58(&v16);
  return v5;
}

id PlatformAlertsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformAlertsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA2DFC4C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v38 - v6;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v41[0] = v15;
    v41[1] = ObjectType;
    *v14 = 136315394;
    swift_getMetatypeMetadata();
    v16 = sub_1BA4A6808();
    v18 = sub_1B9F0B82C(v16, v17, v41);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = MEMORY[0x1BFAF1560](a2, MEMORY[0x1E69A3C58]);
    v21 = sub_1B9F0B82C(v19, v20, v41);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Fetching platform alerts for profiles: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    v22 = v14;
    a1 = v39;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_1BA4A1B68();
  sub_1B9F109F8();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5470;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = sub_1BA4A6758();
  v27 = [v25 initWithKey:v26 ascending:0];

  *(v24 + 32) = v27;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v28 = sub_1BA4A1C68();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x1E69A3B80], v28);
  v32 = sub_1BA4A0FA8();
  v33 = v40;
  (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
  v34 = MEMORY[0x1BFAED020](v31, 0, v33, a2);

  sub_1B9F1C1B0(v33);
  v35 = sub_1BA4A7558();

  v36 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v36;
}

uint64_t type metadata accessor for PlatformAlertsDataSource()
{
  result = qword_1EBBF02E0;
  if (!qword_1EBBF02E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2E0208()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for DataLoggingPluginViewModel();
  sub_1B9F2089C(&qword_1EBBE9848, type metadata accessor for DataLoggingPluginViewModel);
  v5 = sub_1BA4A0EC8();
  if (v0)
  {

    sub_1BA4A3E28();
    v6 = v0;
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0xD00000000000001ALL, 0x80000001BA4FC160, &v23);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v20 = v8;
      v13 = sub_1BA4A8418();
      v15 = sub_1B9F0B82C(v13, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1B9F07000, v7, v20, "Failed to encode data for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      v16 = v12;
      v5 = v22;
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v17 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1BA2E0514()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  sub_1B9F2089C(&qword_1EBBEBA20, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  v5 = sub_1BA4A0EC8();
  if (v0)
  {

    sub_1BA4A3E28();
    v6 = v0;
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0x65646F4D77656956, 0xE90000000000006CLL, &v23);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v20 = v8;
      v13 = sub_1BA4A8418();
      v15 = sub_1B9F0B82C(v13, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1B9F07000, v7, v20, "Failed to encode data for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      v16 = v12;
      v5 = v22;
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v17 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1BA2E0820(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[2] = a1;
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA2325D0();
  v7 = sub_1BA4A0EC8();
  v9 = v8;
  if (v1)
  {

    sub_1BA4A3E28();
    v10 = v1;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24[1] = v9;
      v14 = v13;
      v15 = swift_slowAlloc();
      v25 = v7;
      v16 = v15;
      v26[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1B9F0B82C(0x6174614472657355, 0xE800000000000000, v26);
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_1BA4A8418();
      v19 = sub_1B9F0B82C(v17, v18, v26);
      v24[0] = v3;
      v20 = v19;

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to encode data for %s with error: %s", v14, 0x16u);
      swift_arrayDestroy();
      v21 = v16;
      v7 = v25;
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);

      (*(v4 + 8))(v6, v24[0]);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    sub_1B9F21374();
    swift_allocError();
    *v22 = v1;
    swift_willThrow();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_1BA2E0AEC()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for TabActionModel(0);
  sub_1B9F2089C(&qword_1EDC69268, type metadata accessor for TabActionModel);
  v5 = sub_1BA4A0EC8();
  if (v0)
  {

    sub_1BA4A3E28();
    v6 = v0;
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0x6F69746341626154, 0xEE006C65646F4D6ELL, &v23);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v20 = v8;
      v13 = sub_1BA4A8418();
      v15 = sub_1B9F0B82C(v13, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1B9F07000, v7, v20, "Failed to encode data for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      v16 = v12;
      v5 = v22;
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v17 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1BA2E0E00()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for TabModel(0);
  sub_1B9F2089C(&qword_1EDC5F940, type metadata accessor for TabModel);
  v5 = sub_1BA4A0EC8();
  if (v0)
  {

    sub_1BA4A3E28();
    v6 = v0;
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0x6C65646F4D626154, 0xE800000000000000, &v23);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v20 = v8;
      v13 = sub_1BA4A8418();
      v15 = sub_1B9F0B82C(v13, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1B9F07000, v7, v20, "Failed to encode data for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      v16 = v12;
      v5 = v22;
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v17 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1BA2E1108()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for AccountSidebarContentConfigurationModel(0);
  sub_1B9F2089C(&qword_1EDC609F0, type metadata accessor for AccountSidebarContentConfigurationModel);
  v5 = sub_1BA4A0EC8();
  if (v0)
  {

    sub_1BA4A3E28();
    v6 = v0;
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0xD000000000000027, 0x80000001BA4D0000, &v23);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v20 = v8;
      v13 = sub_1BA4A8418();
      v15 = sub_1B9F0B82C(v13, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1B9F07000, v7, v20, "Failed to encode data for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      v16 = v12;
      v5 = v22;
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v17 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1BA2E1414()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for PromptTileViewModel(0);
  sub_1B9F2089C(&qword_1EDC67D10, type metadata accessor for PromptTileViewModel);
  v5 = sub_1BA4A0EC8();
  if (v0)
  {

    sub_1BA4A3E28();
    v6 = v0;
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0xD000000000000013, 0x80000001BA4FC0F0, &v23);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v20 = v8;
      v13 = sub_1BA4A8418();
      v15 = sub_1B9F0B82C(v13, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1B9F07000, v7, v20, "Failed to encode data for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      v16 = v12;
      v5 = v22;
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v17 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1BA2E1720()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for StandardCategoryTileViewModel();
  sub_1B9F2089C(&qword_1EDC6C090, type metadata accessor for StandardCategoryTileViewModel);
  v5 = sub_1BA4A0EC8();
  if (v0)
  {

    sub_1BA4A3E28();
    v6 = v0;
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4FC110, &v23);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v20 = v8;
      v13 = sub_1BA4A8418();
      v15 = sub_1B9F0B82C(v13, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1B9F07000, v7, v20, "Failed to encode data for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      v16 = v12;
      v5 = v22;
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_1B9F21374();
    swift_allocError();
    *v17 = v0;
    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1BA2E1A2C()
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v29 = *v0;
  v30 = v6;
  v7 = v0[3];
  v31 = v0[2];
  v32 = v7;
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA2E6B44();
  v8 = sub_1BA4A0EC8();
  v10 = v9;
  if (v1)
  {

    sub_1BA4A3E28();
    v11 = v1;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27 = v10;
      v15 = v14;
      v16 = swift_slowAlloc();
      v28 = v8;
      v17 = v16;
      v33 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1B9F0B82C(0xD000000000000020, 0x80000001BA4FC130, &v33);
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1BA4A8418();
      v20 = sub_1B9F0B82C(v18, v19, &v33);
      v26 = v2;
      v21 = v20;

      *(v15 + 14) = v21;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to encode data for %s with error: %s", v15, 0x16u);
      swift_arrayDestroy();
      v22 = v17;
      v8 = v28;
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);

      (*(v3 + 8))(v5, v26);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_1B9F21374();
    swift_allocError();
    *v23 = v1;
    swift_willThrow();
  }

  else
  {
  }

  return v8;
}

uint64_t static String.sidebarCategoryFeedItemPrefix.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBF02F0;

  return v0;
}

uint64_t static String.sidebarCategoryFeedItemPrefix.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBF02F0 = a1;
  off_1EBBF02F8 = a2;
}

uint64_t SidebarSection.keyword.getter()
{
  if (!*v0)
  {
    return sub_1BA4A20C8();
  }

  if (*v0 == 1)
  {
    return sub_1BA4A20B8();
  }

  return sub_1BA4A20D8();
}

uint64_t SidebarSection.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t TabActionModel.actionTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TabActionModel.actionTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TabActionModel.init(actionTitle:imageRepresentation:colorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TabActionModel(0);
  v11 = *(v10 + 24);
  v12 = sub_1BA4A2B98();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = a1;
  *(a5 + 1) = a2;
  v13 = *(v10 + 20);
  v14 = sub_1BA4A2BF8();
  (*(*(v14 - 8) + 32))(&a5[v13], a3, v14);

  return sub_1B9F2BAE8(a4, &a5[v11]);
}

uint64_t sub_1BA2E215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA2E6114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA2E2184(uint64_t a1)
{
  v2 = sub_1B9F2B968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2E21C0(uint64_t a1)
{
  v2 = sub_1B9F2B968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabActionModel.encode(to:)(void *a1)
{
  sub_1B9F2B900(0, &qword_1EDC5DDD8, sub_1B9F2B968, &type metadata for TabActionModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F2B968();
  sub_1BA4A8548();
  v12 = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    type metadata accessor for TabActionModel(0);
    v11 = 1;
    sub_1BA4A2BF8();
    sub_1B9F2089C(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8288();
    v10 = 2;
    sub_1BA4A2B98();
    sub_1B9F2089C(&qword_1EDC6AD70, MEMORY[0x1E69A3260]);
    sub_1BA4A8238();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA2E24AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1BA4A2BF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BA2E2548(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1BA4A2BF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BA2E263C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 24);

  return a2(v5, a3);
}

uint64_t sub_1BA2E26C8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3 + *(a2(0) + 24);

  return a3(a1, v5);
}

uint64_t TabModel.indentationLevel.setter(uint64_t a1)
{
  result = type metadata accessor for TabModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1BA2E2848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA2E6240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t TabModel.encode(to:)(void *a1)
{
  sub_1B9F2B900(0, &qword_1EDC5DCB0, sub_1B9F2CF00, &type metadata for TabModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F2CF00();
  sub_1BA4A8548();
  v13 = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    type metadata accessor for TabModel(0);
    v12 = 1;
    sub_1BA4A2BF8();
    sub_1B9F2089C(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8288();
    v11 = 2;
    sub_1BA4A2B98();
    sub_1B9F2089C(&qword_1EDC6AD70, MEMORY[0x1E69A3260]);
    sub_1BA4A8238();
    v10 = 3;
    sub_1BA4A8278();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AccountSidebarContentConfigurationModel.indentationLevel.setter(uint64_t a1)
{
  result = type metadata accessor for AccountSidebarContentConfigurationModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1BA2E2D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t (*a8)(uint64_t, char *)@<X7>, char *a9@<X8>)
{
  v17 = a6(0);
  v18 = v17[6];
  v19 = a7(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  v20 = v17[5];
  v21 = sub_1BA4A2BF8();
  (*(*(v21 - 8) + 32))(&a9[v20], a3, v21);
  result = a8(a4, &a9[v18]);
  *&a9[v17[7]] = a5;
  return result;
}

unint64_t sub_1BA2E2EA4()
{
  v1 = 0x656C746974;
  v2 = 0x49746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1BA2E2F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA2E63AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA2E2F4C(uint64_t a1)
{
  v2 = sub_1BA2E3250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2E2F88(uint64_t a1)
{
  v2 = sub_1BA2E3250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountSidebarContentConfigurationModel.encode(to:)(void *a1)
{
  sub_1B9F2B900(0, &qword_1EDC5DCB8, sub_1BA2E3250, &type metadata for AccountSidebarContentConfigurationModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA2E3250();
  sub_1BA4A8548();
  v13 = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    type metadata accessor for AccountSidebarContentConfigurationModel(0);
    v12 = 1;
    sub_1BA4A2BF8();
    sub_1B9F2089C(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8288();
    v11 = 2;
    sub_1BA4A1798();
    sub_1B9F2089C(&qword_1EDC6AE68, MEMORY[0x1E69695A8]);
    sub_1BA4A8238();
    v10 = 3;
    sub_1BA4A8278();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA2E3250()
{
  result = qword_1EDC60A08;
  if (!qword_1EDC60A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60A08);
  }

  return result;
}

uint64_t AccountSidebarContentConfigurationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1BA2E2BF8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A2BF8();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F2B900(0, &qword_1EBBF0300, sub_1BA2E3250, &type metadata for AccountSidebarContentConfigurationModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v40 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AccountSidebarContentConfigurationModel(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 24);
  v16 = sub_1BA4A1798();
  v17 = *(*(v16 - 8) + 56);
  v18 = v13;
  v42 = v15;
  v17(v13 + v15, 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA2E3250();
  v39 = v10;
  v19 = v41;
  sub_1BA4A8528();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = sub_1BA2E2BF8;
    v30 = v13 + v42;
  }

  else
  {
    v20 = v7;
    v21 = v11;
    v23 = v36;
    v22 = v37;
    v46 = 0;
    *v13 = sub_1BA4A8188();
    v13[1] = v25;
    v41 = v25;
    v45 = 1;
    sub_1B9F2089C(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
    sub_1BA4A81C8();
    v33 = v21;
    (*(v23 + 32))(v13 + *(v21 + 20), v20, v22);
    v44 = 2;
    sub_1B9F2089C(&qword_1EBBF0308, MEMORY[0x1E69695A8]);
    v26 = v35;
    v31 = 0;
    sub_1BA4A8178();
    v32 = a1;
    sub_1BA2E2C58(v26, v42);
    v43 = 3;
    v27 = sub_1BA4A81B8();
    (*(v38 + 8))(v39, v40);
    v28 = v34;
    *(v18 + *(v33 + 28)) = v27;
    sub_1B9F20A24(v18, v28, type metadata accessor for AccountSidebarContentConfigurationModel);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v29 = type metadata accessor for AccountSidebarContentConfigurationModel;
    v30 = v18;
  }

  return sub_1B9F20AEC(v30, v29);
}

uint64_t sub_1BA2E3810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA2E38B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t SidebarConfigurationProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t SidebarConfigurationProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1BA2E393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v23 = a4;
  v24 = a5;
  v22[1] = a7;
  sub_1B9F2061C(0, &qword_1EDC5F930, type metadata accessor for TabModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  sub_1BA2E3B40(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20A24(a3, &v17[*(v15 + 36)], type metadata accessor for TabModel);
  v18 = type metadata accessor for TabModel(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v13, 1, 1, v18);
  v20 = *(v15 + 40);
  v19(&v17[v20], 1, 1, v18);
  *v17 = a1;
  *(v17 + 1) = a2;

  sub_1BA2E3B74(v13, &v17[v20]);
  (*(*v7 + 128))(v17, v23, v24, v25);
  return sub_1B9F20AEC(v17, sub_1BA2E3B40);
}

uint64_t sub_1BA2E3B74(uint64_t a1, uint64_t a2)
{
  sub_1B9F2061C(0, &qword_1EDC5F930, type metadata accessor for TabModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA2E3C08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a4;
  v61 = a3;
  v53 = a2;
  v5 = sub_1BA4A2C58();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A2BF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA232FB8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = sub_1BA4A4428();
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A43A8();
  sub_1BA2E3B40(0);
  v22 = a1 + *(v21 + 28);

  sub_1BA4A43B8();
  v23 = sub_1BA4A42D8();
  sub_1BA4A42A8();
  v23(v63, 0);
  v24 = type metadata accessor for TabModel(0);
  (*(v10 + 16))(v12, v22 + *(v24 + 20), v9);
  if ((*(v10 + 88))(v12, v9) != *MEMORY[0x1E69A3288])
  {
    (*(v10 + 8))(v12, v9);
    sub_1BA4A2BB8();
    sub_1BA4A43D8();
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
    [v33 scaledValueForValue_];

    v34 = sub_1BA4A42D8();
    sub_1BA4A4268();
    v34(v63, 0);
    v35 = sub_1BA4A42D8();
    sub_1BA4A4298();
    v35(v63, 0);
LABEL_15:
    v63[3] = sub_1BA4A40C8();
    v63[4] = MEMORY[0x1E69DC0B0];
    __swift_allocate_boxed_opaque_existential_1(v63);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F28();

    v45 = MEMORY[0x1E69DC110];
    v46 = v62;
    v47 = v60;
    v62[3] = v60;
    v46[4] = v45;
    __swift_allocate_boxed_opaque_existential_1(v46);
    sub_1BA4A4408();
    (*(v59 + 8))(v20, v47);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return;
  }

  (*(v10 + 96))(v12, v9);
  v25 = v12[1];
  v51 = *v12;
  v52 = v25;
  sub_1B9F2C258();
  sub_1B9F2C2E0(v12 + *(v26 + 48), v17);
  sub_1B9F20B4C();
  v28 = v27;
  v29 = *(v27 - 8);
  v50 = *(v29 + 48);
  if (v50(v17, 1, v27) == 1)
  {
    v49 = v29;
    v30 = v57;
    sub_1BA2E1FDC(v22 + *(v24 + 24), v57);
    v31 = sub_1BA4A2B98();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_1B9F20AEC(v30, sub_1B9F20584);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v17;
      sub_1BA4A4F28();

      v36 = v54;
      sub_1BA4A2C48();
      v37 = sub_1BA4A2B68();
      (*(v55 + 8))(v36, v56);
      (*(v32 + 8))(v30, v31);
      v38 = v37;
      v39 = sub_1BA4A42D8();
      v17 = v48;
      sub_1BA4A42B8();
      v39(v63, 0);
    }

    v29 = v49;
  }

  v40 = v58;
  sub_1B9F20A24(v17, v58, sub_1BA232FB8);
  if (v50(v40, 1, v28) == 1)
  {
    sub_1B9F20AEC(v40, sub_1BA232FB8);
    v41 = 0;
  }

  else
  {
    v41 = sub_1BA4A65C8();
    (*(v29 + 8))(v40, v28);
  }

  v42 = sub_1BA4A6758();
  v43 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v43)
  {

    if (qword_1EDC5E2E0 != -1)
    {
      swift_once();
    }

    v44 = [v43 imageByApplyingSymbolConfiguration_];

    sub_1BA4A43D8();
    sub_1B9F20AEC(v17, sub_1BA232FB8);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1BA2E4448()
{
  v0 = sub_1BA4A3F38();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F2061C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1BA4A3F68();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3F18();
  v31 = *(v9 - 8);
  v10 = v31;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F2061C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  v13 = *(sub_1BA4A3FE8() - 8);
  v24 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v25 = v15;
  *(v15 + 16) = xmmword_1BA4B5460;
  v22 = v15 + v14;
  v16 = *MEMORY[0x1E69DBF18];
  v23 = *(v10 + 104);
  v23(v12, v16, v9);
  v17 = sub_1BA4A3F48();
  v18 = *(*(v17 - 8) + 56);
  v18(v4, 1, 1, v17);
  sub_1BA4A3F58();
  sub_1BA4A3EF8();
  (*(v27 + 8))(v8, v26);
  v19 = *(v31 + 8);
  v31 += 8;
  v19(v12, v9);
  v23(v12, v16, v9);
  v18(v4, 1, 1, v17);
  v20 = v28;
  sub_1BA4A3F28();
  sub_1BA4A3FC8();
  (*(v29 + 8))(v20, v30);
  v19(v12, v9);
  return v25;
}

uint64_t sub_1BA2E4890@<X0>(uint64_t a1@<X8>)
{
  sub_1BA4A4158();
  v2 = sub_1BA4A4168();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t SidebarConfigurationProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static PluginFeedItem.makeSidebarFeedItem<A>(displayCategory:actionHandlerType:actionHandlerUserData:sourceProfile:section:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a5;
  v54 = a3;
  v55 = a4;
  v52 = a7;
  v53 = a2;
  v9 = sub_1BA4A2B98();
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BA4A3138();
  v44 = *(v48 - 8);
  v13 = v44;
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TabModel(0);
  v17 = v16 - 8;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *a6;
  v21 = *(v10 + 56);
  v49 = *(v17 + 32);
  v50 = v10 + 56;
  v51 = v21;
  (v21)(v20 + v49, 1, 1, v9, v18);
  v22 = [a1 systemImageName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v23 = [a1 multiColorImageConfiguration];
  sub_1BA4A2BC8();
  v24 = a1;
  v43 = v15;
  sub_1BA4A3148();
  v25 = *(v13 + 16);
  v26 = v12;
  v45 = v12;
  v27 = v48;
  v25(v12, v15, v48);
  v28 = v46;
  v29 = v47;
  (*(v47 + 104))(v26, *MEMORY[0x1E69A3258], v46);
  v30 = [v24 displayName];
  v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v33 = v32;

  (*(v44 + 8))(v43, v27);
  v34 = v52;
  *v20 = v31;
  v20[1] = v33;
  v35 = v24;
  v36 = v49;
  sub_1B9F20AEC(v20 + v49, sub_1B9F20584);
  (*(v29 + 32))(v20 + v36, v45, v28);
  v51(v20 + v36, 0, 1, v28);
  *(v20 + *(v17 + 36)) = 0;
  v37 = HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter([v35 categoryID]);
  v59 = v58;
  v38 = v57;
  static PluginFeedItem.makeSidebarFeedItem<A>(viewModel:actionHandlerType:actionHandlerUserData:uniqueIdentifier:sourceProfile:section:)(v20, v54, v55, v37, v39, v56, &v59, v34);
  sub_1B9F20AEC(v20, type metadata accessor for TabModel);
  if (v38)
  {
  }

  v41 = [v35 displayName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A1E18();
  return sub_1BA4A1DB8();
}

uint64_t HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = HKDisplayCategoryIdentifierToString();
  if (v6)
  {
    v7 = v6;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;

    swift_beginAccess();
    v23 = qword_1EBBF02F0;
    v24 = off_1EBBF02F8;

    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    MEMORY[0x1BFAF1350](v8, v10);
  }

  else
  {
    sub_1BA4A3E28();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22[0] = v14;
      *v13 = 136315138;
      v23 = a1;
      type metadata accessor for HKDisplayCategoryIdentifier(0);
      v15 = sub_1BA4A6808();
      v17 = sub_1B9F0B82C(v15, v16, v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Could not convert HKDisplayCategoryIdentifier to string for feed item creation %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v23 = 0;
    v24 = 0xE000000000000000;
    swift_beginAccess();
    v18 = qword_1EBBF02F0;
    v19 = off_1EBBF02F8;

    MEMORY[0x1BFAF1350](v18, v19);

    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    v21 = a1;
    type metadata accessor for HKDisplayCategoryIdentifier(0);
    sub_1BA4A7FB8();
  }

  return v23;
}

uint64_t static PluginFeedItem.makeSidebarFeedItem<A>(viewModel:actionHandlerType:actionHandlerUserData:uniqueIdentifier:sourceProfile:section:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, unsigned __int8 *a7@<X7>, uint64_t a8@<X8>)
{
  v41 = a6;
  v42 = a4;
  v43 = a5;
  v44 = a2;
  v45 = a3;
  v47 = a8;
  v11 = sub_1BA4A1C68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a7;
  sub_1BA2E6094();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v18 = sub_1BA2E0E00();
  if (v8)
  {
  }

  v38 = v15;
  v39 = 0;
  v21 = a1[1];
  v37 = *a1;
  v22 = v19;
  v23 = v18;
  v24 = swift_getObjCClassFromMetadata();
  sub_1B9F206D4(v23, v22);
  v25 = NSStringFromClass(v24);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v36[1] = v26;

  (*(v12 + 104))(v14, *MEMORY[0x1E69A3BE0], v11);
  sub_1B9F206D4(v23, v22);
  v27 = v41;

  v43 = v23;
  sub_1BA4A1E28();
  sub_1BA4A1EB8();
  sub_1B9F6AD84(v44, v45);
  sub_1BA4A1E78();
  sub_1B9F25350();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5460;
  *(v28 + 32) = 6447444;
  *(v28 + 40) = 0xE300000000000000;
  *(v28 + 48) = v37;
  *(v28 + 56) = v21;

  v29 = sub_1BA4A6AE8();

  v30 = HKUIJoinStringsForAutomationIdentifier();

  if (v30)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1BA4A1ED8();
  sub_1BA4A1E08();
  sub_1BA4A6DD8();
  sub_1BA4A1F18();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  if (v38)
  {
    if (v38 == 1)
    {
      v32 = sub_1BA4A20B8();
    }

    else
    {
      v32 = sub_1BA4A20D8();
    }
  }

  else
  {
    v32 = sub_1BA4A20C8();
  }

  *(inited + 32) = v32;
  *(inited + 40) = v33;
  v34 = sub_1BA4A1EE8();
  sub_1BA2E6524(inited);
  swift_setDeallocating();
  sub_1BA000898(inited + 32);
  v34(v46, 0);
  v35 = v43;
  sub_1B9F2BB4C(v43, v22);

  return sub_1B9F2BB4C(v35, v22);
}

uint64_t static PluginFeedItem.makeSidebarFeedItem(viewModel:uniqueIdentifier:sourceProfile:section:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v38 = a6;
  v9 = sub_1BA4A1C68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a5;
  sub_1BA2E6094();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v16 = sub_1BA2E0E00();
  if (v6)
  {
  }

  v19 = v16;
  v32 = v13;
  v33 = 0;
  v20 = a1[1];
  v31 = *a1;
  v21 = v17;
  (*(v10 + 104))(v12, *MEMORY[0x1E69A3BE0], v9);
  sub_1B9F206D4(v19, v21);
  sub_1B9F206D4(v19, v21);
  v22 = v34;

  v36 = v21;
  sub_1BA4A1E28();
  sub_1BA4A1EB8();
  sub_1BA4A1E78();
  sub_1B9F25350();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5460;
  *(v23 + 32) = 6447444;
  *(v23 + 40) = 0xE300000000000000;
  *(v23 + 48) = v31;
  *(v23 + 56) = v20;

  v24 = sub_1BA4A6AE8();

  v25 = HKUIJoinStringsForAutomationIdentifier();

  if (v25)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1BA4A1ED8();
  sub_1BA4A1E08();
  sub_1BA4A6DD8();
  sub_1BA4A1F18();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  if (v32)
  {
    if (v32 == 1)
    {
      v27 = sub_1BA4A20B8();
    }

    else
    {
      v27 = sub_1BA4A20D8();
    }
  }

  else
  {
    v27 = sub_1BA4A20C8();
  }

  *(inited + 32) = v27;
  *(inited + 40) = v28;
  v29 = sub_1BA4A1EE8();
  sub_1BA2E6524(inited);
  swift_setDeallocating();
  sub_1BA000898(inited + 32);
  v29(v37, 0);
  v30 = v36;
  sub_1B9F2BB4C(v19, v36);

  return sub_1B9F2BB4C(v19, v30);
}

uint64_t static PluginFeedItem.makeSidebarActionFeedItem(viewModel:uniqueIdentifier:sourceProfile:section:actionHandlerClassName:actionHandlerUserData:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v44 = a7;
  v45 = a8;
  v42 = a3;
  v43 = a6;
  v40 = a4;
  v41 = a2;
  v47 = a9;
  v13 = sub_1BA4A1C68();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  sub_1BA2E6094();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(ObjCClassFromMetadata);
  v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v20 = sub_1BA2E0AEC();
  if (v10)
  {
  }

  v23 = v20;
  v24 = v21;
  v37 = v17;
  v38 = 0;
  v25 = *a1;
  v35 = a1[1];
  v36 = v25;
  (*(v14 + 104))(v16, *MEMORY[0x1E69A3BE0], v13);
  sub_1B9F206D4(v23, v24);
  sub_1B9F206D4(v23, v24);
  v26 = v40;

  sub_1BA4A1E28();

  sub_1BA4A1EB8();
  sub_1B9F6AD84(v45, a10);
  sub_1BA4A1E78();
  sub_1B9F25350();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5460;
  *(v27 + 32) = 6447444;
  *(v27 + 40) = 0xE300000000000000;
  *(v27 + 48) = v36;
  *(v27 + 56) = v35;

  v28 = sub_1BA4A6AE8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  v30 = v24;
  if (v29)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1BA4A1ED8();
  sub_1BA4A1E08();
  sub_1BA4A6DD8();
  sub_1BA4A1F18();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  if (v37)
  {
    if (v37 == 1)
    {
      v32 = sub_1BA4A20B8();
    }

    else
    {
      v32 = sub_1BA4A20D8();
    }
  }

  else
  {
    v32 = sub_1BA4A20C8();
  }

  *(inited + 32) = v32;
  *(inited + 40) = v33;
  v34 = sub_1BA4A1EE8();
  sub_1BA2E6524(inited);
  swift_setDeallocating();
  sub_1BA000898(inited + 32);
  v34(v46, 0);
  sub_1B9F2BB4C(v23, v30);

  return sub_1B9F2BB4C(v23, v30);
}

uint64_t static PluginFeedItem.makeSidebarFeedItem<A, B>(configurationProviderClass:viewModel:automationTitle:actionHandlerType:actionHandlerUserData:uniqueIdentifier:sourceProfile:section:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, void *a10, unsigned __int8 *a11)
{
  v51 = a8;
  v45 = a7;
  v46 = a5;
  v47 = a6;
  v48 = a2;
  v42[2] = a4;
  v49 = a3;
  v12 = sub_1BA4A1C68();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1BA4A7AA8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v42 - v18;
  v50 = *a11;
  type metadata accessor for PlatformConfigurationProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  v42[1] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v54 = v22;

  (*(v17 + 16))(v19, a1, v16);
  v23 = *(AssociatedTypeWitness - 8);
  if ((*(v23 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v24 = 0;
    v25 = 0xF000000000000000;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v52;
    v28 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v30 = (v23 + 8);
    if (v27)
    {

      return (*v30)(v19, AssociatedTypeWitness);
    }

    v24 = v28;
    v25 = v29;
    v52 = 0;
    (*v30)(v19, AssociatedTypeWitness);
  }

  v32 = swift_getObjCClassFromMetadata();
  v33 = NSStringFromClass(v32);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  (*(v43 + 104))(v14, *MEMORY[0x1E69A3BE0], v44);

  sub_1B9F6AD84(v24, v25);
  v34 = a10;
  sub_1BA4A1E28();
  sub_1BA4A1EB8();
  sub_1B9F6AD84(v46, v47);
  sub_1BA4A1E78();
  sub_1B9F25350();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BA4B5460;
  *(v35 + 32) = 6447444;
  *(v35 + 40) = 0xE300000000000000;
  *(v35 + 48) = v48;
  *(v35 + 56) = v49;

  v36 = sub_1BA4A6AE8();

  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1BA4A1ED8();
  sub_1BA4A1E08();
  sub_1BA4A6DD8();
  sub_1BA4A1F18();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  if (v50)
  {
    if (v50 == 1)
    {
      v39 = sub_1BA4A20B8();
    }

    else
    {
      v39 = sub_1BA4A20D8();
    }
  }

  else
  {
    v39 = sub_1BA4A20C8();
  }

  *(inited + 32) = v39;
  *(inited + 40) = v40;
  v41 = sub_1BA4A1EE8();
  sub_1BA2E6524(inited);
  swift_setDeallocating();
  sub_1BA000898(inited + 32);
  v41(v53, 0);

  return sub_1B9F6AC8C(v24, v25);
}

void sub_1BA2E6094()
{
  if (!qword_1EDC63CA0)
  {
    type metadata accessor for SidebarConfigurationProvider();
    v0 = type metadata accessor for PlatformConfigurationProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC63CA0);
    }
  }
}

uint64_t sub_1BA2E6114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1650 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA2E6240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1650 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4FC0D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA2E63AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000064 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4FC0D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA2E6524(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1BA0E1C3C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_1BA2E6598()
{
  result = qword_1EBBF0318;
  if (!qword_1EBBF0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0318);
  }

  return result;
}

uint64_t sub_1BA2E65EC(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F2089C(&qword_1EDC69260, type metadata accessor for TabActionModel);
  result = sub_1B9F2089C(&qword_1EDC69268, type metadata accessor for TabActionModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA2E6670(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F2089C(&qword_1EDC5F938, type metadata accessor for TabModel);
  result = sub_1B9F2089C(&qword_1EDC5F940, type metadata accessor for TabModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA2E66F4(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F2089C(&qword_1EBBEECB8, type metadata accessor for AccountSidebarContentConfigurationModel);
  result = sub_1B9F2089C(&qword_1EDC609F0, type metadata accessor for AccountSidebarContentConfigurationModel);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1BA2E6990()
{
  result = qword_1EBBF0320;
  if (!qword_1EBBF0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0320);
  }

  return result;
}

unint64_t sub_1BA2E69E8()
{
  result = qword_1EBBF0328;
  if (!qword_1EBBF0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0328);
  }

  return result;
}

unint64_t sub_1BA2E6A40()
{
  result = qword_1EBBF0330;
  if (!qword_1EBBF0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0330);
  }

  return result;
}

unint64_t sub_1BA2E6A98()
{
  result = qword_1EDC609F8;
  if (!qword_1EDC609F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC609F8);
  }

  return result;
}

unint64_t sub_1BA2E6AF0()
{
  result = qword_1EDC60A00;
  if (!qword_1EDC60A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60A00);
  }

  return result;
}

unint64_t sub_1BA2E6B44()
{
  result = qword_1EDC6BD30;
  if (!qword_1EDC6BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD30);
  }

  return result;
}

uint64_t sub_1BA2E6BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA2E6C20(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v4);
  swift_endAccess();
  v5 = sub_1BA2E6E38();
  sub_1B9F68124(v2 + v4, v8);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, &v5[v6]);
  swift_endAccess();
  sub_1B9FE71C4();

  sub_1B9F7B644(v8);
  [v2 setNeedsLayout];
  return sub_1B9F7B644(a1);
}

void (*sub_1BA2E6CF4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1BA2E6D7C;
}

void sub_1BA2E6D7C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_1BA2E6E38();
    sub_1B9F68124(v4 + v5, v3);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
    swift_beginAccess();
    sub_1B9F63E74(v3, &v6[v7]);
    swift_endAccess();
    sub_1B9FE71C4();

    sub_1B9F7B644(v3);
    [v4 setNeedsLayout];
  }

  free(v3);
}

char *sub_1BA2E6E38()
{
  v1 = v0;
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView____lazy_storage___contentView;
  v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView____lazy_storage___contentView);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView____lazy_storage___contentView);
  }

  else
  {
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v8 = objc_allocWithZone(type metadata accessor for HeaderWithIconView());
    v9 = HeaderWithIconView.init(configuration:)(v4);
    v10 = *(v1 + v5);
    *(v1 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

id CollectionHeaderWithIconReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CollectionHeaderWithIconReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView____lazy_storage___contentView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CollectionHeaderWithIconReusableView();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_1BA2E6E38();
  [v10 addSubview_];

  v12 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView____lazy_storage___contentView];
  [v10 bounds];
  Width = CGRectGetWidth(v16);
  [v10 bounds];
  [v12 setFrame_];

  return v10;
}

id CollectionHeaderWithIconReusableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionHeaderWithIconReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2E7378@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a1);
}

void (*sub_1BA2E73F8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BA2E6CF4(v2);
  return sub_1B9FCDD98;
}

uint64_t DataTypeDetailFavoritesDataSource.__allocating_init(objectType:managedObjectContext:pinnedContentManagerProvider:pinnedContentManager:healthStore:sourceProfiles:headerTitle:layoutBackgroundColor:contentInsetsReference:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoriteChangedSink) = 0;
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_objectType) = a1;
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_healthStore) = a5;
  v18 = (v17 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_headerTitle);
  *v18 = a7;
  v18[1] = a8;
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_contentInsetsReference) = a10;
  sub_1B9F0A534(a4, v38);
  type metadata accessor for FavoritesToggleDataSource(0);
  swift_allocObject();
  v34 = a9;
  v35 = a1;
  v36 = a5;

  v19 = a2;

  v20 = sub_1BA2E8670(v35, v19, a3, v38, a6, a7, a8, a9, a10);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource;
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource) = v20;
  type metadata accessor for MutableArrayDataSource();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v23 = MutableArrayDataSource.__allocating_init(_:)(inited);
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesDescriptionDataSource) = v23;
  sub_1B9F1DEA0();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5460;
  *(v24 + 32) = *(v17 + v21);
  *(v24 + 40) = &protocol witness table for MutableArrayDataSource;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = a10;
  *(v26 + 24) = v25;
  sub_1BA15E128(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  v28 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v29 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  *(v27 + 24) = v28;
  *(v27 + 32) = v29;
  *(v27 + 40) = 1;
  *(v27 + 48) = sub_1BA15E10C;
  *(v27 + 56) = v26;
  sub_1BA15E164(0, qword_1EDC69078, sub_1BA15E128, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
  v30 = swift_allocObject();
  v30[4] = v27;
  v30[5] = sub_1BA2E7D80;
  v30[6] = 0;
  v30[2] = v28;
  v30[3] = v29;
  *(v24 + 48) = v30;
  *(v24 + 56) = &protocol witness table for CellRegistering<A>;
  swift_bridgeObjectRetain_n();

  v31 = CompoundSectionedDataSource.init(_:)(v24);

  sub_1BA2E8038();

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v31;
}

uint64_t DataTypeDetailFavoritesDataSource.headerTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_headerTitle);

  return v1;
}

uint64_t DataTypeDetailFavoritesDataSource.init(objectType:managedObjectContext:pinnedContentManagerProvider:pinnedContentManager:healthStore:sourceProfiles:headerTitle:layoutBackgroundColor:contentInsetsReference:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = v10;
  *(v11 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoriteChangedSink) = 0;
  *(v11 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_objectType) = a1;
  *(v11 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_healthStore) = a5;
  v18 = (v11 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_headerTitle);
  *v18 = a7;
  v18[1] = a8;
  *(v11 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_contentInsetsReference) = a10;
  sub_1B9F0A534(a4, v38);
  type metadata accessor for FavoritesToggleDataSource(0);
  swift_allocObject();
  v34 = a9;
  v35 = a1;
  v36 = a5;

  v19 = a2;

  v20 = sub_1BA2E8670(v35, v19, a3, v38, a6, a7, a8, a9, a10);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource;
  *(v11 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource) = v20;
  type metadata accessor for MutableArrayDataSource();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v23 = MutableArrayDataSource.__allocating_init(_:)(inited);
  *(v11 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesDescriptionDataSource) = v23;
  sub_1B9F1DEA0();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5460;
  *(v24 + 32) = *(v11 + v21);
  *(v24 + 40) = &protocol witness table for MutableArrayDataSource;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = a10;
  *(v26 + 24) = v25;
  sub_1BA15E128(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  v28 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v29 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  *(v27 + 24) = v28;
  *(v27 + 32) = v29;
  *(v27 + 40) = 1;
  *(v27 + 48) = sub_1BA2E9ADC;
  *(v27 + 56) = v26;
  sub_1BA15E164(0, qword_1EDC69078, sub_1BA15E128, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
  v30 = swift_allocObject();
  v30[4] = v27;
  v30[5] = sub_1BA2E7D80;
  v30[6] = 0;
  v30[2] = v28;
  v30[3] = v29;
  *(v24 + 48) = v30;
  *(v24 + 56) = &protocol witness table for CellRegistering<A>;
  swift_bridgeObjectRetain_n();

  v31 = CompoundSectionedDataSource.init(_:)(v24);

  sub_1BA2E8038();

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v31;
}

void *sub_1BA2E7C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  v9 = __swift_project_value_buffer(v5, qword_1EDC6CB90);
  sub_1BA2E9994(v9, v7, type metadata accessor for ListLayoutConfiguration);
  *(v7 + 18) = a2;
  *(v7 + 6) = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    *(v7 + 5) = v11;
  }

  v12 = ListLayoutConfiguration.layout(for:)(v8);
  sub_1BA2E98A0(v7, type metadata accessor for ListLayoutConfiguration);
  return v12;
}

uint64_t sub_1BA2E7DA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B9F264E0();
  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a4;
  aBlock[4] = sub_1B9F8C0CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_83;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  [v11 notifyObservers_];
  _Block_release(v10);

  v12 = (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource) + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  if (*v12 == a1 && v12[1] == a2)
  {
    return sub_1BA2E8038();
  }

  result = sub_1BA4A8338();
  if (result)
  {
    return sub_1BA2E8038();
  }

  return result;
}

uint64_t sub_1BA2E8038()
{
  v0 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9FCD86C(v9, v1);
  v4 = v9[3];
  sub_1B9FCD638(v9);
  if (!v4)
  {
    return sub_1BA0EB668(0, MEMORY[0x1E69E7CC0], 1);
  }

  static CollectionViewGroupedFooterItem.favoriteCellDescription.getter(v3);
  sub_1B9F1B684(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v0;
  *(v5 + 64) = sub_1B9F32454(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  sub_1BA2E9994(v3, boxed_opaque_existential_1, type metadata accessor for CollectionViewGroupedFooterItem);
  sub_1BA0EB668(0, v5, 1);

  return sub_1BA2E98A0(v3, type metadata accessor for CollectionViewGroupedFooterItem);
}

uint64_t sub_1BA2E821C()
{
}

uint64_t DataTypeDetailFavoritesDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DataTypeDetailFavoritesDataSource.__deallocating_deinit()
{
  DataTypeDetailFavoritesDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2E840C@<X0>(uint64_t a1@<X8>)
{
  sub_1BA2E99FC(0, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  v9 = qword_1EDC65AA0;
  swift_beginAccess();
  sub_1BA2E9900(v1 + v9, v8);
  v10 = type metadata accessor for ListLayoutConfiguration();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1BA2AFC5C(v8, a1);
  }

  sub_1BA2E9A60(v8, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v10, qword_1EDC6CBB8);
  sub_1BA2E9994(v12, a1, type metadata accessor for ListLayoutConfiguration);
  v13 = *(MEMORY[0x1E69DC5C0] + 16);
  *(a1 + 48) = *MEMORY[0x1E69DC5C0];
  *(a1 + 64) = v13;
  *(a1 + 144) = *(v1 + qword_1EDC65AA8);
  sub_1BA2E9994(a1, v5, type metadata accessor for ListLayoutConfiguration);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1BA2E980C(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1BA2E8670(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10 = v9;
  v90 = a8;
  v88 = a5;
  v94 = a4;
  v85 = a3;
  v93 = a2;
  v91 = *v10;
  v87 = MEMORY[0x1E6968130];
  sub_1BA2E99FC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v84 - v16;
  v18 = qword_1EDC65AA0;
  v19 = type metadata accessor for ListLayoutConfiguration();
  (*(*(v19 - 8) + 56))(&v10[v18], 1, 1, v19);
  *&v10[qword_1EDC6C5B8] = a1;
  v20 = &v10[qword_1EDC6C5B0];
  *v20 = a6;
  *(v20 + 1) = a7;
  *&v10[qword_1EDC65AB0] = a8;
  v92 = v10;
  *&v10[qword_1EDC65AA8] = a9;
  sub_1BA4A27B8();
  sub_1BA2E99FC(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v21 = sub_1BA4A1C68();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B9FD0;
  v26 = v25 + v24;
  v27 = *(v22 + 104);
  v27(v26, *MEMORY[0x1E69A3BB0], v21);
  v27(v26 + v23, *MEMORY[0x1E69A3BB8], v21);
  v27(v26 + 2 * v23, *MEMORY[0x1E69A3B60], v21);
  sub_1B9F109F8();
  v28 = swift_allocObject();
  v86 = xmmword_1BA4B5470;
  *(v28 + 16) = xmmword_1BA4B5470;
  *(v28 + 32) = a1;
  v29 = sub_1BA4A0FA8();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  v90 = v90;
  v89 = a1;
  v30 = MEMORY[0x1BFAED020](v25, v28, v17, v88);
  v31 = v85;

  sub_1BA2E9A60(v17, &qword_1EDC6E2A0, v87);
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F1B684(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BA4B5460;
  v33 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1B9F1BE20();
  *(v32 + 64) = v34;
  *(v32 + 32) = 0xD000000000000016;
  *(v32 + 40) = 0x80000001BA4F41D0;
  v35 = sub_1BA4A2738();
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  *(v32 + 72) = v35;
  *(v32 + 80) = v36;
  v37 = sub_1BA4A6EE8();
  v38 = swift_allocObject();
  v84 = xmmword_1BA4B7510;
  *(v38 + 16) = xmmword_1BA4B7510;
  *(v38 + 32) = v30;
  *(v38 + 40) = v37;
  v87 = v30;
  v88 = v37;
  v39 = sub_1BA4A6AE8();

  v40 = objc_opt_self();
  v41 = [v40 andPredicateWithSubpredicates_];

  if (v31)
  {
    v42 = type metadata accessor for DataTypeDetailFavoritesCell();
    v43 = v41;

    v44 = sub_1BA4A26C8();
    v45 = swift_allocObject();
    *(v45 + 16) = v86;
    v46 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v47 = sub_1BA4A6758();
    v48 = [v46 initWithKey:v47 ascending:1];

    *(v45 + 32) = v48;
    sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
    v49 = sub_1BA4A6AE8();

    [v44 setSortDescriptors_];

    v50 = objc_allocWithZone(MEMORY[0x1E695D600]);
    v51 = v93;
    v52 = [v50 initWithFetchRequest:v44 managedObjectContext:v93 sectionNameKeyPath:0 cacheName:0];
    sub_1B9F126E0();
    v54 = objc_allocWithZone(v53);
    v55 = v52;
    v56 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v55);
    v57 = swift_allocObject();
    v57[2] = v31;
    v57[3] = v42;
    v58 = v91;
    v57[4] = &protocol witness table for DataTypeDetailFavoritesCell;
    v57[5] = v58;
    v59 = sub_1B9F17A68(v56, sub_1BA2E9AD0, v57, 0);

    v60 = v94;
  }

  else
  {
    sub_1B9F0A534(v94, v96);
    v85 = type metadata accessor for DataTypeDetailFavoritesCell();
    __swift_project_boxed_opaque_existential_1(v96, v96[3]);
    v61 = v41;
    sub_1BA4A2388();
    v62 = sub_1BA4A26E8();
    v63 = swift_allocObject();
    *(v63 + 16) = v84;
    *(v63 + 32) = v61;
    *(v63 + 40) = v62;
    v64 = v61;
    v65 = v62;
    v66 = sub_1BA4A6AE8();

    v67 = [v40 andPredicateWithSubpredicates_];

    v68 = v67;
    v69 = sub_1BA4A26C8();

    [v69 setFetchLimit_];
    v70 = swift_allocObject();
    *(v70 + 16) = v86;
    v71 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v72 = sub_1BA4A6758();
    v73 = [v71 initWithKey:v72 ascending:1];

    *(v70 + 32) = v73;
    sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
    v74 = sub_1BA4A6AE8();

    [v69 setSortDescriptors_];

    v75 = objc_allocWithZone(MEMORY[0x1E695D600]);
    v76 = v93;
    v77 = [v75 initWithFetchRequest:v69 managedObjectContext:v93 sectionNameKeyPath:0 cacheName:0];
    sub_1B9F126E0();
    v79 = objc_allocWithZone(v78);
    v80 = v77;
    v81 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v80);
    sub_1B9F0A534(v96, v95);
    v82 = swift_allocObject();
    v82[2] = v85;
    v82[3] = &protocol witness table for DataTypeDetailFavoritesCell;
    sub_1B9F25598(v95, (v82 + 4));
    v82[9] = v91;
    v59 = sub_1B9F17A68(v81, sub_1BA1672F0, v82, 0);

    __swift_destroy_boxed_opaque_existential_1(v94);
    v60 = v96;
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  return v59;
}

void *sub_1BA2E90DC(uint64_t a1)
{
  sub_1BA2E99FC(0, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for ListLayoutConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 8);
  v11 = *(v1 + qword_1EDC65AB0);
  if (v11)
  {
    v12 = v11;
    sub_1BA2E840C(v9);

    v9[5] = v12;
    sub_1BA2AFC5C(v9, v5);
    (*(v7 + 56))(v5, 0, 1, v6);
    v13 = qword_1EDC65AA0;
    swift_beginAccess();
    sub_1BA2E980C(v5, v1 + v13);
    swift_endAccess();
  }

  v14 = *(v1 + qword_1EDC65AA8);
  sub_1BA2E840C(v9);
  v9[18] = v14;
  sub_1BA2AFC5C(v9, v5);
  (*(v7 + 56))(v5, 0, 1, v6);
  v15 = qword_1EDC65AA0;
  swift_beginAccess();
  sub_1BA2E980C(v5, v1 + v15);
  swift_endAccess();
  sub_1BA2E840C(v9);
  v16 = ListLayoutConfiguration.layout(for:)(v10);
  sub_1BA2E98A0(v9, type metadata accessor for ListLayoutConfiguration);
  return v16;
}

uint64_t sub_1BA2E93AC()
{

  return sub_1BA2E9A60(v0 + qword_1EDC65AA0, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration);
}

uint64_t sub_1BA2E9420()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  sub_1BA2E9A60(v0 + qword_1EDC65AA0, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration);
  return v0;
}

uint64_t sub_1BA2E9554()
{
  sub_1BA2E9420();

  return swift_deallocClassInstance();
}

void sub_1BA2E95A8()
{
  sub_1BA2E99FC(319, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1BA2E9698@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*v1 + qword_1EDC6C5B0);
  v7 = *v6;
  v8 = v6[1];

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v7, v8, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1B9F32454(&qword_1EDC69800, type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_1BA2E980C(uint64_t a1, uint64_t a2)
{
  sub_1BA2E99FC(0, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2E98A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA2E9900(uint64_t a1, uint64_t a2)
{
  sub_1BA2E99FC(0, qword_1EDC66B38, type metadata accessor for ListLayoutConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2E9994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA2E99FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA2E9A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA2E99FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1BA2E9B04()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() bundleWithIdentifier_];

  v3 = sub_1BA4A6758();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2 compatibleWithTraitCollection:0];

  [v0 setImage_];
  v5 = v0;
  [v5 setContentMode_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  return v5;
}

id sub_1BA2E9C38()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v0 setText_];

  v3 = v0;
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  return v3;
}

id sub_1BA2E9D94()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v0 setText_];

  v3 = v0;
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  return v3;
}

void sub_1BA2EA0B4()
{
  v1 = [v0 contentView];
  v2 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v0 contentView];
  [v3 addSubview_];

  v4 = [v0 contentView];
  [v4 addSubview_];

  v5 = [v0 contentView];
  [v5 addSubview_];

  sub_1BA2EA1D8();
}

void sub_1BA2EA1D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_subtitle;
  v2 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_subtitle] topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:18.0];
  [v5 setActive_];

  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 &selRef_fetchSources];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 &selRef__totalDistance + 1];
  v10 = [v6 &selRef:v9 objectAtIndex:8.0 + 6];

  [v10 setActive_];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_title;
  v12 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_title] topAnchor];
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  [v14 setActive_];
  v15 = [*&v0[v11] bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 &selRef:v16 objectAtIndex:-18.0 + 6];

  [v17 setActive_];
  v18 = [*&v0[v11] leadingAnchor];
  v19 = [*&v0[v1] leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  [v20 setActive_];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_organDonationLogoImage;
  v22 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredHeaderCell_organDonationLogoImage] topAnchor];
  v23 = [v0 topAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:16.0];

  [v24 setActive_];
  v25 = [*&v0[v21] bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor:v26 constant:-16.0];

  [v27 setActive_];
  v28 = [*&v0[v21] widthAnchor];
  v29 = [*&v0[v21] heightAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 multiplier:1.0];

  [v30 setActive_];
  v31 = [*&v0[v21] centerYAnchor];
  v32 = [v0 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  [v33 setActive_];
  v34 = [*&v0[v21] trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintEqualToAnchor:v37 constant:-16.0];

  [v38 setActive_];
  v39 = [*&v0[v21] leadingAnchor];
  v40 = [*&v0[v1] trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:16.0];

  [v41 setActive_];
}

id sub_1BA2EA8E8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v0 setText_];

  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1BA2EAA40()
{
  sub_1B9F0D0F0(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_1BA4A7888();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A79A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  sub_1BA4A7968();
  sub_1BA4A7878();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A7978();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC540], v3);
  sub_1BA4A78B8();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v8 + 16))(v2, v10, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  sub_1BA4A79D8();
  [v11 setContentHorizontalAlignment_];
  (*(v8 + 8))(v10, v7);
  return v11;
}

id sub_1BA2EAEA0()
{
  v1 = [v0 contentView];
  v2 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v0 contentView];
  [v3 addSubview_];

  v4 = [v0 contentView];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_learnMoreButton;
  [v4 addSubview_];

  sub_1BA2EAFB4();
  v6 = *&v0[v5];

  return [v6 addTarget:v0 action:sel_tappedLearnMore forControlEvents:64];
}

void sub_1BA2EAFB4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_bodyText;
  v2 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_bodyText] topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:16.0];
  [v5 setActive_];

  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 contentView];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 &selRef__totalDistance + 1];
  v10 = [v6 constraintEqualToAnchor:v9 constant:8.0];

  [v10 &selRef:1 wheelchairUseWithError:?];
  v11 = [*&v0[v1] trailingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:-8.0];

  [v15 &selRef:1 wheelchairUseWithError:?];
  v16 = OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_learnMoreButton;
  v17 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31OrganDonationRegisteredBodyCell_learnMoreButton] topAnchor];
  v18 = [*&v0[v1] bottomAnchor];
  v19 = [v17 &selRef:v18 objectAtIndex:12.0 + 6];

  [v19 &selRef:1 wheelchairUseWithError:?];
  v20 = [*&v0[v16] leadingAnchor];
  v21 = [*&v0[v1] leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  [v22 &selRef:1 wheelchairUseWithError:?];
  v23 = [*&v0[v16] trailingAnchor];
  v24 = [*&v0[v1] trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  [v25 &selRef:1 wheelchairUseWithError:?];
  v26 = [*&v0[v16] bottomAnchor];
  v27 = [v0 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:-16.0];
  [v29 &selRef:1 wheelchairUseWithError:?];
}

id sub_1BA2EB438(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA2EB508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  sub_1BA176B88(a1, v4 + v6);
  return swift_endAccess();
}

char *FetchedResultsWithLayoutDataSource.__allocating_init(_:layout:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = &v5[qword_1EDC61AF0];
  *v7 = sub_1BA2EBA34;
  v7[1] = v6;
  return FetchedResultsControllerDataSource.init(_:)(a1);
}

uint64_t sub_1BA2EB66C(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(v1 + qword_1EDC61AF0);
  v6 = *a1;
  v7 = v2;

  v4 = v3(&v6);

  return v4;
}

char *FetchedResultsWithLayoutDataSource.__allocating_init(_:layoutSectionProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[qword_1EDC61AF0];
  *v8 = a2;
  *(v8 + 1) = a3;
  return FetchedResultsControllerDataSource.init(_:)(a1);
}

char *FetchedResultsWithLayoutDataSource.init(_:layout:)(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = (v2 + qword_1EDC61AF0);
  *v6 = sub_1BA2EBA34;
  v6[1] = v5;

  return FetchedResultsControllerDataSource.init(_:)(a1);
}

char *FetchedResultsWithLayoutDataSource.init(_:layoutSectionProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + qword_1EDC61AF0);
  *v4 = a2;
  v4[1] = a3;
  return FetchedResultsControllerDataSource.init(_:)(a1);
}

char *FetchedResultsWithLayoutDataSource.init(_:layoutConstructor:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *v3;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = swift_allocObject();
  v10[2] = *((v9 & v8) + 0x158);
  v10[3] = *((v9 & v8) + 0x160);
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = ObjectType;
  v11 = (v3 + qword_1EDC61AF0);
  *v11 = sub_1BA2EBA60;
  v11[1] = v10;

  return FetchedResultsControllerDataSource.init(_:)(a1);
}

id FetchedResultsWithLayoutDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FetchedResultsWithLayoutDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA2EBB50(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = v5;
  v11 = swift_conformsToProtocol2();
  if (v11 && a2)
  {
    v12 = v11;
    v13 = (*(v11 + 24))(a2, v11);
    (*(*(v12 + 16) + 8))(a2);
    v15 = sub_1BA4A6758();

    [v8 *a4];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    (*(a3 + 8))(a2, a3);
    v15 = sub_1BA4A6758();

    [v8 *a5];
  }
}

uint64_t UITableView.dequeueCell<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 8))(a3, a4);
  v7 = sub_1BA4A6758();

  v8 = sub_1BA4A18F8();
  v9 = [v5 dequeueReusableCellWithIdentifier:v7 forIndexPath:v8];

  return MEMORY[0x1EEE6BE48](v9, a3, 0, 0, 0);
}

uint64_t UITableView.dequeueHeaderFooter<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  v4 = sub_1BA4A6758();

  v5 = [v3 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (v5)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id MultilineButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MultilineButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelBottomConstraint] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MultilineButton();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 titleLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setAdjustsFontForContentSizeCategory_];
  }

  if (![v9 contentHorizontalAlignment])
  {
    v12 = [v9 titleLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setTextAlignment_];
    }
  }

  return v9;
}

id MultilineButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MultilineButton.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelLeadingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTrailingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelBottomConstraint] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MultilineButton();
  v3 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 titleLabel];
    if (v6)
    {
      v7 = v6;
      [v6 setAdjustsFontForContentSizeCategory_];
    }

    if (![v5 contentHorizontalAlignment])
    {
      v8 = [v5 titleLabel];
      if (v8)
      {
        v9 = v8;
        [v8 setTextAlignment_];
      }
    }
  }

  return v4;
}

id sub_1BA2EC14C()
{
  v1 = v0;
  v2 = [v0 titleLabel];
  if (v2)
  {
    v3 = v2;
    v41 = MEMORY[0x1E69E7CC0];
    v4 = OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTopConstraint;
    if (!*&v0[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTopConstraint])
    {
      v5 = [v2 topAnchor];
      v6 = [v1 topAnchor];
      [v1 contentEdgeInsets];
      v7 = [v5 constraintEqualToAnchor:v6 constant:?];

      v8 = *&v1[v4];
      *&v1[v4] = v7;
      v9 = v7;

      v10 = v9;
      MEMORY[0x1BFAF1510]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }

    v11 = OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelBottomConstraint;
    if (!*&v1[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelBottomConstraint])
    {
      v12 = [v1 bottomAnchor];
      v13 = [v3 bottomAnchor];
      [v1 contentEdgeInsets];
      v15 = [v12 constraintEqualToAnchor:v13 constant:v14];

      v16 = *&v1[v11];
      *&v1[v11] = v15;
      v17 = v15;

      v18 = v17;
      MEMORY[0x1BFAF1510]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }

    v19 = OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTrailingConstraint;
    if (!*&v1[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelTrailingConstraint])
    {
      v20 = [v1 trailingAnchor];
      v21 = [v3 trailingAnchor];
      [v1 contentEdgeInsets];
      v23 = [v20 constraintEqualToAnchor:v21 constant:v22];

      v24 = *&v1[v19];
      *&v1[v19] = v23;
      v25 = v23;

      v26 = v25;
      MEMORY[0x1BFAF1510]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }

    if (![v1 contentHorizontalAlignment])
    {
      v27 = OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelLeadingConstraint;
      if (!*&v1[OBJC_IVAR____TtC18HealthExperienceUI15MultilineButton_labelLeadingConstraint])
      {
        v28 = [v3 leadingAnchor];
        v29 = [v1 layoutMarginsGuide];
        v30 = [v29 leadingAnchor];

        v31 = [v28 constraintEqualToAnchor_];
        v32 = *&v1[v27];
        *&v1[v27] = v31;
        v33 = v31;

        v34 = v33;
        MEMORY[0x1BFAF1510]();
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
      }
    }

    v35 = objc_opt_self();
    sub_1B9F740B0();
    v36 = sub_1BA4A6AE8();

    [v35 activateConstraints_];

    v37 = type metadata accessor for MultilineButton();
    v40.receiver = v1;
    v38 = &v40;
  }

  else
  {
    v37 = type metadata accessor for MultilineButton();
    v42 = v0;
    v38 = &v42;
  }

  v38->super_class = v37;
  return [(objc_super *)v38 updateConstraints];
}

id MultilineButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double ProfileInformationConsuming.profileInformation.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(*(a1 + 8) + 16) + 8))(v4);
  if (!v4[3])
  {
    sub_1B9F7B644(v4);
    goto LABEL_5;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC6E1F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

CGFloat PDFVerticalSpacer.render(context:document:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v13.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = CGRectGetMinX(v13) + 0.0;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = v4 + CGRectGetMinY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  result = CGRectGetHeight(v16) - v4;
  *(a2 + 168) = v9;
  *(a2 + 176) = v10;
  *(a2 + 184) = v11;
  *(a2 + 192) = result;
  *(a2 + 200) = 0;
  return result;
}

double sub_1BA2EC89C(uint64_t a1)
{
  v2 = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  return v2;
}

CGFloat sub_1BA2EC8FC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v13.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = CGRectGetMinX(v13) + 0.0;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = v4 + CGRectGetMinY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  result = CGRectGetHeight(v16) - v4;
  *(a2 + 168) = v9;
  *(a2 + 176) = v10;
  *(a2 + 184) = v11;
  *(a2 + 192) = result;
  *(a2 + 200) = 0;
  return result;
}

BOOL sub_1BA2EC9D4(void *a1, void *a2, CGFloat a3, CGFloat a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a2;
  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
    [v7 frame];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    if (CGRectGetWidth(v26) < a3 || (v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, CGRectGetHeight(v27) < a4))
    {
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v14 = CGRectGetWidth(v28);
      if (v14 > a3)
      {
        a3 = v14;
      }

      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v15 = CGRectGetHeight(v29);
      if (v15 > a4)
      {
        a4 = v15;
      }

      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v16 = a3 - CGRectGetWidth(v30);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v17 = CGRectGetHeight(v31);
      x = UIEdgeInsetsInsetRect_1(x, y, width, height, (a4 - v17) * -0.5, v16 * -0.5);
      y = v18;
      width = v19;
      height = v20;
    }

    [a1 locationInView_];
    v25.x = v21;
    v25.y = v22;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v23 = CGRectContainsPoint(v32, v25);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t sub_1BA2ECB98()
{

  v0 = sub_1BA4A6928();
  v2 = v1;
  v3 = sub_1BA4A6928();
  v5 = v4;
  if (v2)
  {
    v6 = v3;
    while (v5)
    {
      if (v0 == v6 && v2 == v5)
      {
      }

      else
      {
        v7 = sub_1BA4A8338();

        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v0 = sub_1BA4A6928();
      v2 = v8;
      v6 = sub_1BA4A6928();
      v5 = v9;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_9:

  if (v5)
  {
LABEL_13:

    return 0;
  }

  return 1;
}

void sub_1BA2ECCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - v8;
  sub_1BA2F3854();
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2F3480(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v18 = 0;
  v19 = 0;
  v37 = a1;
  v38 = a2;
  v20 = *(a2 + 16);
  v21 = *(a1 + 16);
  v47 = v5;
  v48 = v21;
  v46 = v5 + 16;
  v22 = (v5 + 56);
  v39 = (v5 + 32);
  v40 = v20;
  v43 = (v5 + 8);
  v44 = (v5 + 48);
  v49 = &v37 - v16;
  while (1)
  {
    if (v19 == v20)
    {
      v23 = 1;
      v19 = v20;
    }

    else
    {
      if (v19 >= v20)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      (*(v47 + 16))(v17, v38 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v19, v4, v15);
      if (__OFADD__(v19++, 1))
      {
        goto LABEL_21;
      }

      v23 = 0;
    }

    v25 = *v22;
    v26 = 1;
    (*v22)(v17, v23, 1, v4, v15);
    v27 = v48;
    if (v18 != v48)
    {
      if (v18 >= v48)
      {
        goto LABEL_20;
      }

      (*(v47 + 16))(v50, v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v18, v4);
      v27 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

      v26 = 0;
      v17 = v49;
    }

    v28 = v50;
    (v25)(v50, v26, 1, v4);
    v29 = *(v45 + 48);
    sub_1BA2F38E8(v17, v11);
    sub_1BA2F38E8(v28, &v11[v29]);
    v30 = *v44;
    v31 = (*v44)(v11, 1, v4);
    v32 = v30(&v11[v29], 1, v4);
    if (v31 == 1)
    {
      break;
    }

    if (v32 == 1)
    {
      (*v43)(v11, v4);
      return;
    }

    v33 = *v39;
    v34 = v41;
    (*v39)(v41, v11, v4);
    v35 = v42;
    v33(v42, &v11[v29], v4);
    sub_1BA2F39EC(&qword_1EBBEA620, MEMORY[0x1E69A3910]);
    LOBYTE(v33) = sub_1BA4A6728();
    v36 = *v43;
    (*v43)(v35, v4);
    v36(v34, v4);
    v18 = v27;
    v17 = v49;
    v20 = v40;
    if ((v33 & 1) == 0)
    {
      return;
    }
  }

  if (v32 != 1)
  {
    sub_1BA2F397C(&v11[v29], &qword_1EBBEA078, MEMORY[0x1E69A3910]);
  }
}

uint64_t sub_1BA2ED190(int a1)
{
  v2 = v1;
  v78 = a1;
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  v9 = sub_1BA4A4578();
  (*(v5 + 8))(v7, v4);
  v10 = *(v9 + 16);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  v77 = v2;
  result = swift_beginAccess();
  if (!v10)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v13 = 0;
  v14 = v9 + 40;
  v80 = v10 - 1;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    v69 = v15;
    v16 = (v14 + 16 * v13);
    v17 = v13;
    while (1)
    {
      if (v17 >= *(v9 + 16))
      {
        goto LABEL_52;
      }

      v18 = *(v77 + v11);
      if (!*(v18 + 16))
      {
        goto LABEL_5;
      }

      v19 = *(v16 - 1);
      v20 = *v16;

      v21 = sub_1B9F24A34(v19, v20);
      if (v22)
      {
        break;
      }

LABEL_5:
      ++v17;
      v16 += 2;
      if (v10 == v17)
      {
        v15 = v69;
        goto LABEL_17;
      }
    }

    v75 = v14;
    v23 = (*(v18 + 56) + 48 * v21);
    v24 = v23[1];
    v79 = *v23;
    v26 = v23[2];
    v25 = v23[3];
    v27 = v23[5];
    v72 = v23[4];
    v73 = v24;

    v76 = v26;

    v74 = v25;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B9F21540(0, *(v69 + 2) + 1, 1, v69);
      v69 = result;
    }

    v29 = *(v69 + 2);
    v28 = *(v69 + 3);
    v14 = v75;
    if (v29 >= v28 >> 1)
    {
      result = sub_1B9F21540((v28 > 1), v29 + 1, 1, v69);
      v69 = result;
    }

    v13 = v17 + 1;
    v15 = v69;
    *(v69 + 2) = v29 + 1;
    v30 = &v15[48 * v29];
    v31 = v73;
    *(v30 + 4) = v79;
    *(v30 + 5) = v31;
    v32 = v74;
    *(v30 + 6) = v76;
    *(v30 + 7) = v32;
    *(v30 + 8) = v72;
    *(v30 + 9) = v27;
  }

  while (v80 != v17);
LABEL_17:

  v68 = *(v15 + 2);
  if (!v68)
  {
LABEL_50:
  }

  v62 = 0;
  v63 = 0;
  v33 = 0;
  v76 = OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_firstNameItem;
  v70 = OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_lastNameItem;
  v60 = OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_healthStore;
  v61 = 0;
  v66 = 0;
  v67 = v15 + 32;
  v34 = &qword_1EDC6AD50;
  v69 = v15;
  while (1)
  {
    if (v33 >= *(v15 + 2))
    {
      goto LABEL_53;
    }

    v75 = v33;
    v36 = &v67[48 * v33];
    v37 = *(v36 + 3);
    v71 = *(v36 + 4);
    v38 = *(v36 + 5);
    v39 = *(v36 + 2);
    v40 = *(v39 + 16);
    v74 = *(v36 + 1);

    v73 = v37;

    v72 = v38;

    swift_beginAccess();
    result = swift_beginAccess();
    v80 = v40;
    if (v40)
    {
      break;
    }

LABEL_19:
    v35 = v39;
    v33 = v75 + 1;
    sub_1BA0EBB7C(v71, v72, v35, 1);

    v15 = v69;
    if (v33 == v68)
    {
      goto LABEL_50;
    }
  }

  v41 = 0;
  v42 = v39 + 32;
  v79 = v39;
  while (2)
  {
    if (v41 < *(v39 + 16))
    {
      sub_1B9F0A534(v42, v88);
      sub_1B9F0A534(v88, v83);
      sub_1B9F0D950(0, v34);
      sub_1B9F0D950(0, &qword_1EBBE9AF0);
      if (!swift_dynamicCast())
      {
        v82 = 0;
        memset(v81, 0, sizeof(v81));
        sub_1BA2F2A44(v81);
        goto LABEL_24;
      }

      v43 = v34;
      sub_1B9F1134C(v81, v85);
      v44 = v86;
      v45 = v87;
      __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
      v46 = v78;
      (*(v45 + 48))(v78 & 1, v44, v45);
      v47 = v86;
      v48 = v87;
      __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
      (*(v48 + 24))(0, v47, v48);
      if (v46)
      {
        goto LABEL_44;
      }

      sub_1B9F0A534(v85, v83);
      sub_1BA2F2F14(0, &qword_1EBBE9BB8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_43;
      }

      v49 = *&v81[0];
      sub_1BA2F29B4(v77 + v76, v83);
      if (v84)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_42;
        }

        v50 = *&v81[0];
        sub_1BA2F29B4(v77 + v70, v83);
        if (v84)
        {
          if (swift_dynamicCast())
          {
            v51 = *&v81[0];
            if (sub_1BA2EE9A8(v49, v50) & 1) != 0 || (sub_1BA2EE9A8(v49, v51))
            {
              v52 = sub_1BA2EE9A8(v49, v50);
              v65 = v51;
              if (v52)
              {
                swift_beginAccess();
                v53 = *(v49 + 128);
                v62 = *(v49 + 120);
                v66 = v53;
                goto LABEL_47;
              }

              if (sub_1BA2EE9A8(v49, v51))
              {
                swift_beginAccess();
                v56 = *(v49 + 128);
                v61 = *(v49 + 120);
                v63 = v56;
LABEL_47:
              }

              v64 = *(v77 + v60);
              v57 = v63;

              v58 = v66;

              sub_1B9FEC350(v62, v58, v61, v57, v64);

LABEL_44:
              __swift_destroy_boxed_opaque_existential_1(v85);
              v34 = v43;
              v39 = v79;
LABEL_24:
              ++v41;
              result = __swift_destroy_boxed_opaque_existential_1(v88);
              v42 += 40;
              if (v80 == v41)
              {
                goto LABEL_19;
              }

              continue;
            }
          }

          else
          {
          }

LABEL_42:

LABEL_43:
          v54 = v86;
          v55 = v87;
          __swift_project_boxed_opaque_existential_1(v85, v86);
          (*(v55 + 64))(v54, v55);
          goto LABEL_44;
        }
      }

      sub_1BA2F2A44(v83);
      goto LABEL_43;
    }

    break;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t *sub_1BA2ED9A0(void *a1, void *a2)
{
  if (qword_1EBBE8508 != -1)
  {
    swift_once();
  }

  v4 = sub_1BA4A1318();
  v6 = v5;
  v7 = [a1 fitzpatrickSkinTypeObject];
  v8 = [v7 skinType];

  if (qword_1EBBE88A0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBC09928;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_1BA2F2F14(0, &qword_1EBBF03F8);
  swift_allocObject();
  v11 = a2;
  v12 = sub_1BA2F315C(v4, v6, v8, 0, v9, 0, sub_1BA2F2D98, 0, sub_1BA2F3450, v10, 0);

  return v12;
}

uint64_t sub_1BA2EDB74(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1EBBE8510 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_22;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
LABEL_18:
      if (qword_1EBBE8510 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_22;
    }

    if (a1 != 5)
    {
      if (a1 != 6)
      {
LABEL_16:
        if (qword_1EBBE8510 == -1)
        {
          return sub_1BA4A1318();
        }

        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if (a1 != 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (qword_1EBBE8510 == -1)
        {
          return sub_1BA4A1318();
        }

        goto LABEL_22;
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (qword_1EBBE8510 != -1)
  {
LABEL_22:
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA2EDDD0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1EBBE8510 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_31;
  }

  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (qword_1EBBE8510 == -1)
        {
          return sub_1BA4A1318();
        }
      }

      else if (qword_1EBBE8510 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_31;
    }

    if (a1 == 1)
    {
      if (qword_1EBBE8510 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_31;
    }

    if (a1 == 2)
    {
      if (qword_1EBBE8510 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      if (qword_1EBBE8510 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EBBE8510 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_31;
  }

  if (a1 != 7)
  {
    if (a1 == 8)
    {
      if (qword_1EBBE8510 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_31;
    }

LABEL_29:
    if (qword_1EBBE8510 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_31;
  }

  if (qword_1EBBE8510 != -1)
  {
LABEL_31:
    swift_once();
  }

  return sub_1BA4A1318();
}

id sub_1BA2EE2F4(uint64_t a1)
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (result)
  {
    v2 = result;
    v3 = sub_1BA4A6DC8();
    v4 = [v2 displayTypeWithIdentifier_];

    if (v4)
    {
      v5 = [v4 localization];
      v6 = [v5 displayName];

      v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA2EE3F0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1EBBE8508 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    if (qword_1EBBE8508 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    if (qword_1EBBE8508 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (qword_1EBBE8508 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA2EE5BC(uint64_t a1, char a2, void *a3, SEL *a4, void (*a5)(void), const char *a6, const char *a7)
{
  v46 = a6;
  v47 = a5;
  v49[1] = *MEMORY[0x1E69E9840];
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  if ((a2 & 1) == 0)
  {
    v49[0] = 0;
    if ([a3 *a4])
    {
      v20 = v49[0];
      sub_1BA4A3D88();
      v21 = sub_1BA4A3E88();
      v22 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v49[0] = v24;
        *v23 = 136315394;
        v25 = sub_1BA4A85D8();
        v27 = sub_1B9F0B82C(v25, v26, v49);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        v48 = a1;
        v47(0);
        v28 = sub_1BA4A6808();
        v30 = sub_1B9F0B82C(v28, v29, v49);

        *(v23 + 14) = v30;
        _os_log_impl(&dword_1B9F07000, v21, v22, v46, v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v24, -1, -1);
        MEMORY[0x1BFAF43A0](v23, -1, -1);
      }

      (*(v13 + 8))(v19, v12);
    }

    else
    {
      v31 = v49[0];
      v32 = sub_1BA4A1488();

      swift_willThrow();
      sub_1BA4A3D88();
      v33 = sub_1BA4A3E88();
      v34 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49[0] = v45;
        *v35 = 136315394;
        v36 = sub_1BA4A85D8();
        v46 = v32;
        v38 = sub_1B9F0B82C(v36, v37, v49);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        v48 = a1;
        v47(0);
        v39 = sub_1BA4A6808();
        v41 = sub_1B9F0B82C(v39, v40, v49);

        *(v35 + 14) = v41;
        _os_log_impl(&dword_1B9F07000, v33, v34, a7, v35, 0x16u);
        v42 = v45;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v42, -1, -1);
        MEMORY[0x1BFAF43A0](v35, -1, -1);
        v43 = v46;
      }

      else
      {
        v43 = v32;
      }

      (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_1BA2EE9A8(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v4 = sub_1BA4A6808();
  v6 = v5;
  swift_getMetatypeMetadata();
  if (v4 == sub_1BA4A6808() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1BA4A8338();

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1BA4A8338() & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v10 = *(a1 + 120);
  v11 = *(a1 + 128);
  swift_beginAccess();
  v12 = *(a2 + 128);
  if (v11)
  {
    if (!v12 || (v10 != *(a2 + 120) || v11 != v12) && (sub_1BA4A8338() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v12)
  {
    goto LABEL_19;
  }

  if (*(a1 + 96) == *(a2 + 96))
  {
    v13 = *(a1 + 136) ^ *(a2 + 136) ^ 1;
    return v13 & 1;
  }

LABEL_19:
  v13 = 0;
  return v13 & 1;
}

void *sub_1BA2EEB74(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  __swift_project_value_buffer(v4, qword_1EDC6CB90);
  ListLayoutConfiguration.withFooter.getter(v6);
  v7 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v6);
  return v7;
}

uint64_t sub_1BA2EEC58()
{
  v1 = v0;
  v22 = *v0;
  sub_1BA1A6754();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2F2B5C();
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = MEMORY[0x1E695C028];
  sub_1BA2F2C28(0, &qword_1EDC5F398, MEMORY[0x1E695C028]);
  sub_1B9F3DC3C(&unk_1EDC5F3A0, &qword_1EDC5F398, v12);

  sub_1BA4A4EC8();
  sub_1BA2F39EC(&qword_1EDC5F380, sub_1BA1A6754);
  v13 = sub_1BA4A4F98();
  (*(v4 + 8))(v6, v3);
  v25 = v13;
  v14 = MEMORY[0x1E695BED0];
  sub_1BA2F2C28(0, &qword_1EBBF03C0, MEMORY[0x1E695BED0]);
  sub_1BA2F2CA8();
  sub_1B9F3DC3C(&qword_1EBBF03D0, &qword_1EBBF03C0, v14);

  sub_1BA4A4FE8();

  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v11;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BA2F2D50;
  *(v18 + 24) = v17;
  sub_1BA2F39EC(&qword_1EBBF03D8, sub_1BA2F2B5C);

  v19 = v23;
  v20 = sub_1BA4A5008();

  (*(v24 + 8))(v10, v19);
  swift_beginAccess();
  *(v11 + 16) = v20;
}

uint64_t sub_1BA2EF0C0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_1BA2F2F14(0, &qword_1EBBE9BB8);
  v6 = v5;
  v7 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_healthStore);
  v8 = sub_1B9FEC0EC(v4, v7);
  *(&v64 + 1) = v6;
  v9 = sub_1BA2F2DC8(&qword_1EBBF03E0, &qword_1EBBE9BB8);
  v65 = v9;
  *&v63 = v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_firstNameItem;
  swift_beginAccess();
  sub_1BA2F2ACC(&v63, a2 + v10);
  swift_endAccess();
  v11 = sub_1B9FEC584(v4, v7);
  *(&v64 + 1) = v6;
  v65 = v9;
  *&v63 = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_lastNameItem;
  swift_beginAccess();
  sub_1BA2F2ACC(&v63, a2 + v12);
  swift_endAccess();
  sub_1BA2F29B4(a2 + v10, &v61);
  sub_1BA2F29B4(a2 + v12, v62);
  v13 = sub_1BA2EF850(v4, v7);
  sub_1BA2F2E18();
  v62[8] = v14;
  v62[9] = sub_1BA2F39EC(&qword_1EBBF03F0, sub_1BA2F2E18);
  v62[5] = v13;
  if (qword_1EBBE8508 != -1)
  {
    swift_once();
  }

  v15 = sub_1BA4A1318();
  v54 = v16;
  v55 = v15;
  v17 = [v4 biologicalSexObject];
  v18 = [v17 biologicalSex];

  v57 = v4;
  if (qword_1EBBE8890 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBC09918;
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  sub_1BA2F2F14(0, &qword_1EBBF03F8);
  v22 = v21;
  swift_allocObject();
  v23 = v7;
  v24 = sub_1BA2F315C(v55, v54, v18, 0, v19, 0, sub_1BA2F2DB8, 0, sub_1BA2F2EAC, v20, 0);

  v62[13] = v22;
  v25 = sub_1BA2F2DC8(&qword_1EBBF0400, &qword_1EBBF03F8);
  v62[14] = v25;
  v62[10] = v24;
  v26 = sub_1BA4A1318();
  v28 = v27;
  v29 = [v57 bloodTypeObject];
  v30 = [v29 bloodType];

  if (qword_1EBBE8898 != -1)
  {
    swift_once();
  }

  v31 = qword_1EBC09920;
  v32 = swift_allocObject();
  *(v32 + 16) = v23;
  swift_allocObject();
  v33 = v23;
  v34 = sub_1BA2F315C(v26, v28, v30, 0, v31, 0, sub_1BA2F2DA8, 0, sub_1BA2F3358, v32, 0);

  v62[18] = v22;
  v62[19] = v25;
  v62[15] = v34;
  v35 = sub_1BA2ED9A0(v57, v33);
  v56 = v25;
  v62[23] = v22;
  v62[24] = v25;
  v62[20] = v35;
  v36 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 272; i += 40)
  {
    sub_1BA2F29B4(&v60[2] + i + 8, &v63);
    v58[0] = v63;
    v58[1] = v64;
    v59 = v65;
    if (*(&v64 + 1))
    {
      sub_1B9F1134C(v58, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1BA27F100(0, v36[2] + 1, 1, v36);
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_1BA27F100((v38 > 1), v39 + 1, 1, v36);
      }

      v36[2] = v39 + 1;
      sub_1B9F1134C(v60, &v36[5 * v39 + 4]);
    }

    else
    {
      sub_1BA2F2A44(v58);
    }
  }

  sub_1B9F1B6F0(0, &qword_1EBBF03B0, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  sub_1B9F1B6F0(0, &qword_1EBBEF680, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v41 = sub_1BA2EE2F4(v33);
  v43 = v42;
  v44 = [v57 wheelchairUseObject];
  v45 = [v44 wheelchairUse];

  if (qword_1EBBE88A8 != -1)
  {
    swift_once();
  }

  v46 = qword_1EBC09930;
  v47 = swift_allocObject();
  *(v47 + 16) = v33;
  swift_allocObject();
  v48 = v33;
  v49 = sub_1BA2F315C(v41, v43, v45, 0, v46, 0, sub_1BA2F2D88, 0, sub_1BA2F3420, v47, 0);

  *(inited + 56) = v22;
  *(inited + 64) = v56;
  *(inited + 32) = v49;
  v50 = sub_1B9FE6628(v36);

  *a3 = v50;
  v51 = sub_1B9FE6628(inited);
  swift_setDeallocating();
  result = __swift_destroy_boxed_opaque_existential_1(inited + 32);
  a3[1] = v51;
  return result;
}

uint64_t *sub_1BA2EF850(void *a1, void *a2)
{
  sub_1BA2F3480(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  if (qword_1EBBE8510 != -1)
  {
    swift_once();
  }

  v7 = sub_1BA4A1318();
  v9 = v8;
  v10 = [a1 dateOfBirthComponents];
  sub_1BA4A1108();

  v11 = sub_1BA4A1148();
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_1BA2F2E18();
  swift_allocObject();
  v13 = a2;
  v14 = sub_1BA2F3524(v7, v9, v6, 0, 1, sub_1BA2F1774, 0, sub_1BA2F34E4, v12, 0);

  return v14;
}

uint64_t sub_1BA2EFA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E48();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    v17[1] = a3;
    *v11 = 136446210;
    swift_getMetatypeMetadata();
    v13 = sub_1BA4A6808();
    v15 = sub_1B9F0B82C(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s] Demographics publisher completed", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  *(a2 + 16) = 0;
}

uint64_t sub_1BA2EFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a3;
  v40 = sub_1BA4A1798();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E48();

  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v8;
    v16 = v15;
    v43[0] = v15;
    *v14 = 136446466;
    v43[17] = a4;
    swift_getMetatypeMetadata();
    v17 = sub_1BA4A6808();
    v19 = sub_1B9F0B82C(v17, v18, v43);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = sub_1B9F0D950(0, &qword_1EDC6AD50);
    v21 = MEMORY[0x1BFAF1560](a1, v20);
    v23 = sub_1B9F0B82C(v21, v22, v43);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%{public}s] Demographics publisher received items %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    (*(v9 + 8))(v11, v38);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  sub_1BA4A1788();
  v38 = sub_1BA4A1748();
  v26 = v25;
  v27 = *(v39 + 8);
  v28 = v40;
  v27(v7, v40);
  v29 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v29);
  *(inited + 40) = 0;
  *(inited + 32) = 0;

  *(inited + 48) = a1;
  v30 = Array<A>.identifierToIndexDict()(a1);

  v31 = v38;
  *(inited + 56) = v30;
  *(inited + 64) = v31;
  *(inited + 72) = v26;
  sub_1BA4A1788();
  v32 = sub_1BA4A1748();
  v34 = v33;
  v27(v7, v28);
  *(inited + 96) = v29;
  *(inited + 104) = sub_1B9F1C5F0(v29);
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  v35 = v41;

  *(inited + 96) = v35;
  v36 = Array<A>.identifierToIndexDict()(v35);

  *(inited + 104) = v36;
  *(inited + 112) = v32;
  *(inited + 120) = v34;
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_1BA2F0080@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA2F2C28(0, &qword_1EDC5F398, MEMORY[0x1E695C028]);
  swift_allocObject();

  result = sub_1BA4A4EA8();
  *a1 = result;
  return result;
}

void sub_1BA2F0108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_healthStore);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BA00CD30;
  *(v8 + 24) = v6;
  v10[4] = sub_1BA1A6CB8;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BA0B06D4;
  v10[3] = &block_descriptor_84;
  v9 = _Block_copy(v10);

  [v7 hk:v9 fetchExistingDemographicInformationWithCompletion:?];
  _Block_release(v9);
}

uint64_t sub_1BA2F0284()
{
  sub_1BA2F2A44(v0 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_selectedItem);
  sub_1BA2F2A44(v0 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_firstNameItem);
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_lastNameItem;

  return sub_1BA2F2A44(v1);
}

uint64_t sub_1BA2F02E4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BA2F2A44(v0 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_selectedItem);
  sub_1BA2F2A44(v0 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_firstNameItem);
  sub_1BA2F2A44(v0 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_lastNameItem);
  return v0;
}

uint64_t sub_1BA2F03E4()
{
  sub_1BA2F02E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthDetailsDemographicsDataSource()
{
  result = qword_1EBBF03A0;
  if (!qword_1EBBF03A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2F04E4()
{
  sub_1B9FF5330();
  sub_1B9FF54A8();
  sub_1B9FF5620();
  sub_1B9FF5654();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F3A13C();

  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v0, v1);
}

uint64_t sub_1BA2F0564@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1968();
  if (v7 == 1)
  {
    v16 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_healthStore);
    v17 = [v16 profileIdentifier];
    v18 = [v17 type];

    if (v18 == 3)
    {
      if (qword_1EBBE8510 != -1)
      {
        swift_once();
      }

      v19 = 0xE000000000000000;
      sub_1BA4A1318();
      v20 = [objc_allocWithZone(MEMORY[0x1E696C340]) initWithHealthStore_];
      v21 = [v20 synchronouslyFetchFirstName];

      if (v21)
      {
        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v23;
      }

      else
      {
        v22 = 0;
      }

      sub_1B9F1B6F0(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BA4B5480;
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = sub_1B9F1BE20();
      *(v38 + 32) = v22;
      *(v38 + 40) = v19;
      v27 = sub_1BA4A6768();
      v29 = v39;
    }

    else
    {
      v24 = objc_opt_self();
      v25 = sub_1BA4A6758();
      v26 = [v24 modelSpecificLocalizedStringKeyForKey_];

      if (!v26)
      {
LABEL_17:
        a1[3] = &type metadata for EmptyHeaderItem;
        a1[4] = sub_1B9FDA1B0();
        *a1 = swift_allocObject();
        return EmptyHeaderItem.init()();
      }

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      if (qword_1EBBE8510 != -1)
      {
        swift_once();
      }

      v27 = sub_1BA4A1318();
      v29 = v28;
    }

    strcpy(v50, "FooterItem_");
    HIDWORD(v50[1]) = -352321536;
    sub_1BA4A1788();
    v40 = sub_1BA4A1748();
    v42 = v41;
    (*(v4 + 8))(v6, v3);
    MEMORY[0x1BFAF1350](v40, v42);

    v43 = v50[0];
    v44 = v50[1];
    v45 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    a1[3] = v45;
    a1[4] = sub_1BA2F39EC(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v50[0] = type metadata accessor for CollectionViewGroupedFooterCell();
    sub_1BA0603B0();
    *boxed_opaque_existential_1 = sub_1BA4A6808();
    boxed_opaque_existential_1[1] = v47;
    v48 = boxed_opaque_existential_1 + *(v45 + 32);
    *v48 = 0u;
    *(v48 + 1) = 0u;
    v48[32] = 1;
    v49 = (boxed_opaque_existential_1 + *(v45 + 28));
    *v49 = v27;
    v49[1] = v29;
    type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
    result = swift_storeEnumTagMultiPayload();
    boxed_opaque_existential_1[2] = v43;
    boxed_opaque_existential_1[3] = v44;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = 0;
    return result;
  }

  if (v7)
  {
    goto LABEL_17;
  }

  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_healthStore);
  v9 = [v8 profileIdentifier];
  v10 = [v9 type];

  if (v10 != 3)
  {
    goto LABEL_17;
  }

  if (qword_1EBBE8510 != -1)
  {
    swift_once();
  }

  v11 = 0xE000000000000000;
  sub_1BA4A1318();
  v12 = [objc_allocWithZone(MEMORY[0x1E696C340]) initWithHealthStore_];
  v13 = [v12 synchronouslyFetchFirstName];

  if (v13)
  {
    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v11 = v15;
  }

  else
  {
    v14 = 0;
  }

  sub_1B9F1B6F0(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1B9F1BE20();
  *(v31 + 32) = v14;
  *(v31 + 40) = v11;
  v32 = sub_1BA4A6768();
  v34 = v33;

  a1[3] = &type metadata for TextViewItem;
  a1[4] = sub_1BA0712A8();
  v35 = swift_allocObject();
  *a1 = v35;
  strcpy(v50, "TextViewItem_");
  HIWORD(v50[1]) = -4864;
  sub_1BA4A1788();
  sub_1BA2F39EC(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v36 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v36);

  result = (*(v4 + 8))(v6, v3);
  v37 = v50[1];
  *(v35 + 16) = v50[0];
  *(v35 + 24) = v37;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 56) = 0;
  *(v35 + 64) = 0;
  *(v35 + 48) = -1;
  *(v35 + 72) = -1;
  *(v35 + 80) = v32;
  *(v35 + 88) = v34;
  *(v35 + 96) = sub_1BA34B4C4;
  *(v35 + 104) = 0;
  *(v35 + 112) = 0;
  *(v35 + 120) = 0;
  *(v35 + 128) = 0;
  return result;
}

uint64_t sub_1BA2F0D34(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 160);
  *(a1 + v4) = (*(a1 + v4) & 1) == 0;
  sub_1B9F1B6F0(0, &qword_1EBBEF680, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v6 = type metadata accessor for HealthDetailsDemographicsItem();
  *(inited + 56) = v6;
  v26 = v6;
  WitnessTable = swift_getWitnessTable();
  *(inited + 64) = WitnessTable;
  *(inited + 32) = v3;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_selectedItem;
  swift_beginAccess();
  v27 = v7;
  sub_1BA2F29B4(v1 + v7, &v28);
  if (v29)
  {
    sub_1B9F1134C(&v28, v30);
    v8 = v31;
    v9 = v32;
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v10 = *(v9 + 24);

    v10(0, v8, v9);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    sub_1BA4A2D58();
    LOBYTE(v8) = sub_1BA2ECB98();

    if ((v8 & 1) == 0)
    {
      sub_1B9F0A534(v30, &v28);
      inited = sub_1BA27F100(1, 2, 1, inited);
      *(inited + 16) = 2;
      sub_1B9F1134C(&v28, inited + 72);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
    v11 = *(inited + 16);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  sub_1BA2F2A44(&v28);
  v11 = *(inited + 16);
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_5:
  v24 = v4;
  *&v28 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v11, 0);
  v12 = v28;
  v13 = inited + 32;
  do
  {
    sub_1B9F0A534(v13, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v14 = sub_1BA4A2D58();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v30);
    *&v28 = v12;
    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1B9F1C360((v17 > 1), v18 + 1, 1);
      v12 = v28;
    }

    *(v12 + 16) = v18 + 1;
    v19 = v12 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
    v13 += 40;
    --v11;
  }

  while (v11);

  v4 = v24;
  v2 = v1;
LABEL_12:
  swift_beginAccess();
  sub_1B9F12538();
  sub_1BA4A4558();
  swift_endAccess();

  sub_1BA0EF3D0();
  if (*(v3 + v4))
  {

    v20 = v26;
    v21 = v27;
    v22 = WitnessTable;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v3 = 0;
    v30[1] = 0;
    v30[2] = 0;
    v21 = v27;
  }

  v31 = v20;
  v32 = v22;
  v30[0] = v3;
  swift_beginAccess();
  sub_1BA2F2ACC(v30, v2 + v21);
  return swift_endAccess();
}

uint64_t sub_1BA2F1130(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    switch(a1)
    {
      case 3:
        if (qword_1EBBE8510 == -1)
        {
          return sub_1BA4A1318();
        }

        break;
      case 2:
        if (qword_1EBBE8510 == -1)
        {
          return sub_1BA4A1318();
        }

        break;
      case 1:
        if (qword_1EBBE8510 == -1)
        {
          return sub_1BA4A1318();
        }

        break;
      default:
        if (qword_1EBBE8510 == -1)
        {
          return sub_1BA4A1318();
        }

        break;
    }

    goto LABEL_15;
  }

  if (qword_1EBBE8510 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA2F139C(uint64_t a1, char a2, void *a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  if ((a2 & 1) == 0)
  {
    v42[0] = 0;
    if ([a3 _setBiologicalSex_error_])
    {
      v14 = v42[0];
      sub_1BA4A3D88();
      v15 = sub_1BA4A3E88();
      v16 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v42[0] = v18;
        *v17 = 136315394;
        v19 = sub_1BA4A85D8();
        v21 = sub_1B9F0B82C(v19, v20, v42);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v41 = a1;
        type metadata accessor for HKBiologicalSex(0);
        v22 = sub_1BA4A6808();
        v24 = sub_1B9F0B82C(v22, v23, v42);

        *(v17 + 14) = v24;
        _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Saved HKBiologicalSex value %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v18, -1, -1);
        MEMORY[0x1BFAF43A0](v17, -1, -1);
      }

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      v25 = v42[0];
      v26 = sub_1BA4A1488();

      swift_willThrow();
      sub_1BA4A3D88();
      v27 = sub_1BA4A3E88();
      v28 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v40 = v26;
        v30 = v29;
        v31 = swift_slowAlloc();
        v42[0] = v31;
        *v30 = 136315394;
        v32 = sub_1BA4A85D8();
        v34 = sub_1B9F0B82C(v32, v33, v42);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        v41 = a1;
        type metadata accessor for HKBiologicalSex(0);
        v35 = sub_1BA4A6808();
        v37 = sub_1B9F0B82C(v35, v36, v42);

        *(v30 + 14) = v37;
        _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Error when trying to save HKBiologicalSex value %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v38 = v40;
      }

      else
      {
        v38 = v26;
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1BA2F1778(void *a1)
{
  v42 = a1;
  v1 = sub_1BA4A17D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BA4A18A8();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1BA2F3480(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v41 = sub_1BA4A1728();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2F3480(0, &qword_1EBBEA478, MEMORY[0x1E6968278], v8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_1BA4A1148();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA018958(v42, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &qword_1EBBEA478;
    v21 = MEMORY[0x1E6968278];
    v22 = v15;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    (*(v2 + 104))(v4, *MEMORY[0x1E6969868], v1);
    sub_1BA4A17E8();
    (*(v2 + 8))(v4, v1);
    sub_1BA4A1838();
    (*(v5 + 8))(v7, v40);
    v23 = v41;
    if ((*(v43 + 48))(v11, 1, v41) != 1)
    {
      v25 = v39;
      (*(v43 + 32))(v39, v11, v23);
      v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v42 = v26;
      [v26 setDateStyle_];
      sub_1B9F1B6F0(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BA4B5460;
      v28 = sub_1BA4A16B8();
      v29 = [v26 stringFromDate_];

      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v31;

      v33 = MEMORY[0x1E69E6158];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v34 = sub_1B9F1BE20();
      *(v27 + 64) = v34;
      *(v27 + 32) = v30;
      *(v27 + 40) = v32;
      v35 = sub_1BA2F250C(v25);
      *(v27 + 96) = v33;
      *(v27 + 104) = v34;
      *(v27 + 72) = v35;
      *(v27 + 80) = v36;
      v37 = sub_1BA4A67D8();

      (*(v43 + 8))(v25, v23);
      (*(v17 + 8))(v19, v16);
      return v37;
    }

    (*(v17 + 8))(v19, v16);
    v20 = &qword_1EDC6E440;
    v21 = MEMORY[0x1E6969530];
    v22 = v11;
  }

  sub_1BA2F397C(v22, v20, v21);
  if (qword_1EBBE8510 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA2F1DCC(uint64_t a1, void *a2)
{
  v63[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A3EA8();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  sub_1BA2F3480(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_1BA4A1148();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  sub_1BA018958(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BA2F397C(v12, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  }

  (*(v14 + 32))(v22, v12, v13);
  v24 = sub_1BA4A10F8();
  v63[0] = 0;
  v25 = [a2 _setDateOfBirthComponents_error_];

  if (v25)
  {
    v26 = v63[0];
    sub_1BA4A3D88();
    (*(v14 + 16))(v19, v22, v13);
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63[0] = v59;
      *v29 = 136315394;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, v63);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      sub_1BA2F39EC(&qword_1EBBEBC50, MEMORY[0x1E6968278]);
      v33 = sub_1BA4A82D8();
      v35 = v34;
      v60 = v22;
      v36 = *(v14 + 8);
      v36(v19, v13);
      v37 = sub_1B9F0B82C(v33, v35, v63);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Saved DOB value %s", v29, 0x16u);
      v38 = v59;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);

      (*(v61 + 8))(v9, v62);
      return (v36)(v60, v13);
    }

    else
    {

      v56 = *(v14 + 8);
      v56(v19, v13);
      (*(v61 + 8))(v9, v62);
      return (v56)(v22, v13);
    }
  }

  else
  {
    v39 = v63[0];
    v40 = v22;
    v41 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3D88();
    v42 = v40;
    (*(v14 + 16))(v16, v40, v13);
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63[0] = v59;
      *v45 = 136315394;
      v46 = sub_1BA4A85D8();
      v48 = sub_1B9F0B82C(v46, v47, v63);
      v60 = v41;
      v49 = v48;

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      sub_1BA2F39EC(&qword_1EBBEBC50, MEMORY[0x1E6968278]);
      v50 = sub_1BA4A82D8();
      v52 = v51;
      v58 = v6;
      v53 = *(v14 + 8);
      v53(v16, v13);
      v54 = sub_1B9F0B82C(v50, v52, v63);

      *(v45 + 14) = v54;
      _os_log_impl(&dword_1B9F07000, v43, v44, "[%s] Error when trying to save DOB value %s", v45, 0x16u);
      v55 = v59;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);

      (*(v61 + 8))(v58, v62);
      return (v53)(v42, v13);
    }

    else
    {

      v57 = *(v14 + 8);
      v57(v16, v13);
      (*(v61 + 8))(v6, v62);
      return (v57)(v42, v13);
    }
  }
}

id sub_1BA2F250C(uint64_t a1)
{
  v27 = a1;
  v28 = sub_1BA4A1728();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BA4A18A8();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1148();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1878();
  sub_1BA2F3480(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v10 = sub_1BA4A1898();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v25 = xmmword_1BA4B5480;
  *(v13 + 16) = xmmword_1BA4B5480;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E6969A68], v10);
  sub_1B9FF6D00(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  sub_1BA4A1718();
  sub_1BA4A17F8();

  (*(v1 + 8))(v3, v28);
  (*(v4 + 8))(v6, v26);
  v14 = sub_1BA4A1138();
  v15 = 0;
  if ((v16 & 1) == 0)
  {
    v31 = v14;
    v15 = sub_1BA4A8328();
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v17 = [swift_getObjCClassFromMetadata() valueWithWeakObject_];
  swift_unknownObjectRelease();
  if (v17)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v19 = [v18 stringFromNumber_];

    if (v19)
    {
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = v21;

      sub_1B9F1B6F0(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = v25;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1B9F1BE20();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      v19 = sub_1BA4A67D8();
    }
  }

  else
  {
    v19 = 0;
  }

  (*(v29 + 8))(v9, v30);
  return v19;
}

uint64_t sub_1BA2F29B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B6F0(0, &qword_1EBBF03B0, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2F2A44(uint64_t a1)
{
  sub_1B9F1B6F0(0, &qword_1EBBF03B0, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA2F2ACC(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B6F0(0, &qword_1EBBF03B0, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA2F2B5C()
{
  if (!qword_1EBBF03B8)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA2F2C28(255, &qword_1EBBF03C0, MEMORY[0x1E695BED0]);
    sub_1BA2F2CA8();
    sub_1B9F3DC3C(&qword_1EBBF03D0, &qword_1EBBF03C0, v0);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF03B8);
    }
  }
}

void sub_1BA2F2C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0ADF8(255, &unk_1EDC5E240);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA2F2CA8()
{
  if (!qword_1EBBF03C8)
  {
    sub_1B9F1B6F0(255, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF03C8);
    }
  }
}

uint64_t sub_1BA2F2DC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA2F2F14(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2F2E18()
{
  if (!qword_1EBBF03E8)
  {
    sub_1BA4A1148();
    sub_1BA2F39EC(&qword_1EBBE9D50, MEMORY[0x1E6968278]);
    v0 = type metadata accessor for HealthDetailsDemographicsItem();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF03E8);
    }
  }
}

void sub_1BA2F2EAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1BA2F2F14(0, &qword_1EBBF03F8);
  sub_1BA2F139C(v3, v4, v2);
}

void sub_1BA2F2F14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for HealthDetailsDemographicsItem();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t *sub_1BA2F2F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v31 = a11;
  v32 = a6;
  v29 = a9;
  v30 = a5;
  v18 = *v12;
  v33 = a7;
  v34 = v18;
  v35 = sub_1BA4A1798();
  v19 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[16] = 0;
  v12[15] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[13] = a3;
  v12[14] = a4;
  swift_beginAccess();
  v12[15] = a3;
  v12[16] = a4;
  v12[6] = v30;
  *(v12 + 56) = v32 & 1;
  v12[8] = v33;
  v12[9] = a8;
  v12[10] = v29;
  v12[11] = a10;
  *(v12 + 96) = v31;
  *(v12 + 136) = 0;

  v36 = sub_1BA4A85D8();
  v37 = v22;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  v23 = sub_1BA4A1748();
  v25 = v24;
  (*(v19 + 8))(v21, v35);
  MEMORY[0x1BFAF1350](v23, v25);

  v26 = v37;
  v12[2] = v36;
  v12[3] = v26;
  return v12;
}

uint64_t *sub_1BA2F315C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v31 = a11;
  v32 = a6;
  v29 = a9;
  v30 = a5;
  v18 = *v12;
  v33 = a7;
  v34 = v18;
  v35 = sub_1BA4A1798();
  v19 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[15] = 0;
  *(v12 + 128) = 1;
  v12[4] = a1;
  v12[5] = a2;
  v12[13] = a3;
  *(v12 + 112) = a4 & 1;
  swift_beginAccess();
  v12[15] = a3;
  *(v12 + 128) = a4 & 1;
  v12[6] = v30;
  *(v12 + 56) = v32 & 1;
  v12[8] = v33;
  v12[9] = a8;
  v12[10] = v29;
  v12[11] = a10;
  *(v12 + 96) = v31;
  *(v12 + 129) = 0;

  v36 = sub_1BA4A85D8();
  v37 = v22;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  v23 = sub_1BA4A1748();
  v25 = v24;
  (*(v19 + 8))(v21, v35);
  MEMORY[0x1BFAF1350](v23, v25);

  v26 = v37;
  v12[2] = v36;
  v12[3] = v26;
  return v12;
}

void sub_1BA2F3388(uint64_t a1, SEL *a2, void (*a3)(void), const char *a4, const char *a5)
{
  v10 = *(v5 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  sub_1BA2F2F14(0, &qword_1EBBF03F8);
  sub_1BA2EE5BC(v11, v12, v10, a2, a3, a4, a5);
}

void sub_1BA2F3480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA2F34E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1BA2F2E18();
  return sub_1BA2F1DCC(a1, v3);
}

uint64_t *sub_1BA2F3524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v32 = a6;
  v33 = a8;
  v30 = a10;
  v31 = a5;
  v34 = *v11;
  v35 = sub_1BA4A1798();
  v17 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v34 + 152);
  v21 = sub_1BA4A1148();
  (*(*(v21 - 8) + 56))(v11 + v20, 1, 1, v21);
  v11[4] = a1;
  v11[5] = a2;
  sub_1BA018958(a3, v11 + *(*v11 + 144));
  swift_beginAccess();
  sub_1BA2F37B8(a3, v11 + v20);
  swift_endAccess();
  v11[6] = a4;
  *(v11 + 56) = v31 & 1;
  v22 = v33;
  v11[8] = v32;
  v11[9] = a7;
  v11[10] = v22;
  v11[11] = a9;
  *(v11 + 96) = v30;
  *(v11 + *(*v11 + 160)) = 0;

  v36 = sub_1BA4A85D8();
  v37 = v23;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  v24 = sub_1BA4A1748();
  v26 = v25;
  (*(v17 + 8))(v19, v35);
  MEMORY[0x1BFAF1350](v24, v26);

  v27 = v36;
  v28 = v37;
  sub_1BA2F397C(a3, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  v11[2] = v27;
  v11[3] = v28;
  return v11;
}

uint64_t sub_1BA2F37B8(uint64_t a1, uint64_t a2)
{
  sub_1BA2F3480(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1BA2F3854()
{
  if (!qword_1EBBF0408)
  {
    sub_1BA2F3480(255, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0408);
    }
  }
}

uint64_t sub_1BA2F38E8(uint64_t a1, uint64_t a2)
{
  sub_1BA2F3480(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2F397C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA2F3480(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA2F39EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DataTypeDetailConfiguration.GetMoreFromHealthComponent.init(hkType:additionalPredicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id DataTypeDetailConfiguration.GetMoreFromHealthComponent.hkType.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *DataTypeDetailConfiguration.GetMoreFromHealthComponent.additionalPredicate.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t DataTypeDetailConfiguration.GetMoreFromHealthComponent.makeDataSource(context:)(uint64_t a1)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - v4;
  if ((*(a1 + 48) & 0xFE) == 2)
  {
    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v6 = EmptyDataSource.init()();
    sub_1BA2F41C0();
    v7 = swift_allocObject();
    v8 = *(v6 + 24);
    *(v7 + 16) = *(v6 + 16);
    *(v7 + 24) = v8;
    *(v7 + 32) = v6;
    *(v7 + 40) = 0;
  }

  else
  {
    v10 = *v1;
    v9 = *(v1 + 8);
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v11 = sub_1BA4A1B68();
    sub_1B9F1C048(0, &qword_1EDC6B450);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B5460;
    *(v12 + 32) = sub_1BA4A6F38();
    *(v12 + 40) = 0;
    v42 = objc_allocWithZone(type metadata accessor for GetMoreFromHealthResultsController());
    sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
    v13 = sub_1BA4A1C68();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B5480;
    (*(v14 + 104))(v16 + v15, *MEMORY[0x1E69A3C00], v13);
    if (v10)
    {
      sub_1B9F1C048(0, &qword_1EDC6B400);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BA4B5470;
      *(v17 + 32) = v10;
    }

    else
    {
      v17 = 0;
    }

    sub_1BA4A27B8();
    v18 = sub_1BA4A0FA8();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = v11;
    v20 = v10;
    v21 = MEMORY[0x1BFAED020](v16, v17, v5, v12);

    sub_1B9F1C1B0(v5);
    if (v9)
    {
      sub_1B9F1C048(0, &qword_1EDC6B400);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BA4B7510;
      *(v22 + 32) = v21;
      *(v22 + 40) = v9;
      sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v23 = v9;
      v24 = v21;
      v25 = sub_1BA4A6AE8();

      v26 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    else
    {
      v26 = v21;
    }

    v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v28 = v26;
    v29 = sub_1BA4A6758();
    v30 = [v27 initWithKey:v29 ascending:0];

    v31 = MEMORY[0x1BFAED110]();
    [v31 setPredicate_];

    sub_1B9F1C048(0, &qword_1EDC6B400);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BA4B5470;
    *(v32 + 32) = v30;
    sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
    v33 = v30;
    v34 = sub_1BA4A6AE8();

    [v31 setSortDescriptors_];

    [v31 setFetchLimit_];
    v35 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v31 managedObjectContext:v19 sectionNameKeyPath:0 cacheName:0];
    v36 = &v42[qword_1EDC61AF0];
    *v36 = sub_1BA236D80;
    v36[1] = 0;
    v37 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v35);

    sub_1BA2F4160();
    swift_allocObject();
    v38 = sub_1BA0488BC(v37, 3);

    sub_1BA2F41C0();
    v7 = swift_allocObject();
    v39 = *(v38 + 48);
    *(v7 + 16) = *(v38 + 40);
    *(v7 + 24) = v39;
    *(v7 + 32) = v38;
    *(v7 + 40) = 1;
  }

  return v7;
}

void sub_1BA2F4160()
{
  if (!qword_1EDC63990[0])
  {
    type metadata accessor for GetMoreFromHealthResultsController();
    v0 = type metadata accessor for DataSourceWithSectionItemLimit();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC63990);
    }
  }
}

void sub_1BA2F41C0()
{
  if (!qword_1EDC66CF8)
  {
    type metadata accessor for EmptyDataSource();
    sub_1BA2F4160();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CF8);
    }
  }
}

char *sub_1BA2F4270(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 72);
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v10 = *(v6 - 3);
    v9 = *(v6 - 2);
    v11 = *(v6 - 4);
    v30[0] = *(v6 - 5);
    v30[1] = v11;
    v30[2] = v10;
    v30[3] = v9;
    v30[4] = v7;
    v30[5] = v8;

    a1(&v24, v30);
    if (v4)
    {
      break;
    }

    v13 = v24;
    v12 = v25;
    v14 = v26;
    v15 = v27;
    if (v26)
    {
      v22 = v28;
      v23 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1B9F21540(0, *(v31 + 2) + 1, 1, v31);
      }

      v17 = *(v31 + 2);
      v16 = *(v31 + 3);
      if (v17 >= v16 >> 1)
      {
        v31 = sub_1B9F21540((v16 > 1), v17 + 1, 1, v31);
      }

      v18 = v31;
      *(v31 + 2) = v17 + 1;
      v19 = &v18[48 * v17];
      *(v19 + 4) = v13;
      *(v19 + 5) = v12;
      *(v19 + 6) = v14;
      *(v19 + 7) = v15;
      *(v19 + 8) = v22;
      *(v19 + 9) = v23;
    }

    else
    {
      sub_1BA0F7D80(v24, v25, 0);
    }

    v6 += 6;
    if (!--v5)
    {
      return v31;
    }
  }

  return v31;
}

uint64_t sub_1BA2F4458(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7 + 40 * v6;
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v5(&v15, v9);
      if (v3)
      {

        return v8;
      }

      if (v15)
      {
        break;
      }

      v9 += 40;
      if (v6 == v4)
      {
        return v8;
      }
    }

    v14 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B9F1E00C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    v13 = v14;
    if (v12 >= v11 >> 1)
    {
      result = sub_1B9F1E00C(v11 > 1, v12 + 1, 1, v8);
      v13 = v14;
      v8 = result;
    }

    *(v8 + 16) = v12 + 1;
    *(v8 + 16 * v12 + 32) = v13;
  }

  while (v6 != v4);
  return v8;
}

void *sub_1BA2F45C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    (v18[0])(&v19, v5);
    if (v3)
    {
      break;
    }

    if (v20)
    {
      sub_1B9F1134C(&v19, v22);
      sub_1B9F1134C(v22, &v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1BA27EFB4(0, v6[2] + 1, 1, v6);
        v23 = v6;
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v10 = sub_1BA27EFB4((v8 > 1), v9 + 1, 1, v6);
        v23 = v10;
      }

      else
      {
        v10 = v6;
      }

      v11 = v20;
      v12 = v21;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
      MEMORY[0x1EEE9AC00](v13);
      v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_1B9F1C4F4(v9, v15, &v23, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      v6 = v10;
    }

    else
    {
      sub_1B9F43A50(&v19, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1BA2F47E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    (v18[0])(&v19, v5);
    if (v3)
    {
      break;
    }

    if (v20)
    {
      sub_1B9F1134C(&v19, v22);
      sub_1B9F1134C(v22, &v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1B9F281E8(0, v6[2] + 1, 1, v6);
        v23 = v6;
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v10 = sub_1B9F281E8((v8 > 1), v9 + 1, 1, v6);
        v23 = v10;
      }

      else
      {
        v10 = v6;
      }

      v11 = v20;
      v12 = v21;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
      MEMORY[0x1EEE9AC00](v13);
      v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_1B9F1C4F4(v9, v15, &v23, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      v6 = v10;
    }

    else
    {
      sub_1B9F43A50(&v19, &qword_1EDC6AD40, &qword_1EDC6AD50);
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}