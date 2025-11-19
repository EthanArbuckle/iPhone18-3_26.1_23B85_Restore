uint64_t ShareSheetData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetData.init(url:shortUrl:productMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x4000000000000000;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:articleMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:articleMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:appEventMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_24E911D90(a2, v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x8000000000000000;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:appEventMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0x8000000000000000;
  return v3;
}

uint64_t ShareSheetData.init(url:shortUrl:genericPageMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_24E911D90(a2, v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = a3 | 0xC000000000000000;
  return v3;
}

void *ShareSheetData.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v50 = v3;
  v43 = *v3;
  v47 = sub_24F9285B8();
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = sub_24F91F4A8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v46 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_24F928398();
  sub_24F928268();
  v24 = v20;
  v25 = v12;
  v49 = *(v13 + 8);
  v49(v24, v12);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_24E70E058(v11);
    v26 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = 7107189;
    v28 = v43;
    v27[1] = 0xE300000000000000;
    v27[2] = v28;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    (*(v51 + 8))(v48, v47);
    v49(v52, v12);
    v29 = v50;
  }

  else
  {
    v30 = v46;
    (*(v22 + 32))(v46, v11, v21);
    v31 = *(v22 + 16);
    v32 = v50;
    v41 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
    v31(v50 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url, v30, v21);
    sub_24F928398();
    sub_24F928268();
    v43 = v25;
    v49(v18, v25);
    v33 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl;
    sub_24E911D90(v9, v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);
    v34 = v42;
    sub_24F928398();
    v35 = v44;
    v37 = v47;
    v36 = v48;
    (*(v51 + 16))(v44, v48, v47);
    v38 = v45;
    ShareSheetData.Metadata.init(deserializing:using:)(v34, v35, &v53);
    if (!v38)
    {
      (*(v51 + 8))(v36, v37);
      v49(v52, v43);
      (*(v22 + 8))(v46, v21);
      v29 = v50;
      *(v50 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = v53;
      return v29;
    }

    (*(v51 + 8))(v36, v37);
    v49(v52, v43);
    v39 = *(v22 + 8);
    v39(v46, v21);
    v29 = v50;
    v39(v50 + v41, v21);
    sub_24E70E058(v29 + v33);
  }

  type metadata accessor for ShareSheetData();
  swift_deallocPartialClassInstance();
  return v29;
}

uint64_t ShareSheetData.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);

  return v0;
}

uint64_t ShareSheetData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl);

  return swift_deallocClassInstance();
}

void *sub_24F05EA14@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetData();
  v7 = swift_allocObject();
  result = ShareSheetData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t type metadata accessor for ShareSheetData()
{
  result = qword_27F237EB0;
  if (!qword_27F237EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F05EAD4()
{
  sub_24F91F4A8();
  if (v0 <= 0x3F)
  {
    sub_24E6D4C08();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24F05EC44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F05ECA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t AppStoreLocalizerFactory.localizer(forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[58] = a3;
  v4[59] = v3;
  v4[56] = a1;
  v4[57] = a2;
  v5 = sub_24F929CC8();
  v4[60] = v5;
  v4[61] = *(v5 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F05EDD0, 0, 0);
}

uint64_t sub_24F05EDD0()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    v2 = *(v0 + 472);
    v3 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
    *(v0 + 512) = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
    swift_beginAccess();
    v4 = *(v2 + v3);
    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = sub_24E76D644(*(v0 + 456), v1);
      if (v7)
      {
        v8 = *(v0 + 448);
        sub_24E615E00(*(v4 + 56) + 40 * v6, v0 + 192);
        sub_24E612C80((v0 + 192), v8);
        swift_endAccess();

LABEL_8:

        v17 = *(v0 + 8);

        return v17();
      }
    }

    v9 = *(v0 + 504);
    v10 = *(v0 + 472);
    v11 = *(v0 + 456);
    swift_endAccess();
    sub_24E615E00(v10 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource, v0 + 32);
    *(v0 + 16) = v11;
    *(v0 + 24) = v1;
    *(v0 + 296) = &type metadata for ExtendedLanguageSource;
    *(v0 + 304) = sub_24F0601A0();
    v12 = swift_allocObject();
    *(v0 + 272) = v12;
    sub_24F060234(v0 + 16, v12 + 16);

    sub_24F05FB78(v0 + 272, v9);
    *(v0 + 520) = sub_24F929CE8();
    v13 = swift_task_alloc();
    *(v0 + 528) = v13;
    *v13 = v0;
    v13[1] = sub_24F05F0CC;
    v14 = *(v0 + 504);
  }

  else
  {
    v15 = *(v0 + 472);
    v16 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    *(v0 + 552) = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    swift_beginAccess();
    sub_24EA28268(v15 + v16, v0 + 72);
    if (*(v0 + 96))
    {
      sub_24E612C80((v0 + 72), *(v0 + 448));
      goto LABEL_8;
    }

    v19 = *(v0 + 496);
    v20 = *(v0 + 472);
    sub_24E601704(v0 + 72, &qword_27F223248);
    sub_24F05FB78(v20 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource, v19);
    *(v0 + 560) = sub_24F929CE8();
    v21 = swift_task_alloc();
    *(v0 + 568) = v21;
    *v21 = v0;
    v21[1] = sub_24F05F3A0;
    v14 = *(v0 + 496);
  }

  return MEMORY[0x28217FBF8](v14);
}

uint64_t sub_24F05F0CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {

    v5 = sub_24F05F30C;
  }

  else
  {
    *(v4 + 544) = a1;
    v5 = sub_24F05F1FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F05F1FC()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v5 = *(v0 + 464);
  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = MEMORY[0x277D22148];
  *(v0 + 256) = *(v0 + 520);
  *(v0 + 264) = v8;
  *(v0 + 232) = v1;
  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  sub_24E615E00(v0 + 232, v0 + 312);
  swift_beginAccess();
  sub_24E9896A8(v0 + 312, v6, v5);
  swift_endAccess();
  sub_24F06026C(v0 + 16);
  sub_24E612C80((v0 + 232), v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F05F30C()
{
  (*(v0[61] + 8))(v0[63], v0[60]);
  sub_24F06026C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1((v0 + 34));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F05F3A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = sub_24F05F5B8;
  }

  else
  {
    *(v4 + 584) = a1;
    v5 = sub_24F05F4C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F05F4C8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 448);
  v8 = MEMORY[0x277D22148];
  *(v0 + 136) = *(v0 + 560);
  *(v0 + 144) = v8;
  *(v0 + 112) = v1;
  (*(v4 + 8))(v3, v5);
  sub_24E615E00(v0 + 112, v0 + 152);
  swift_beginAccess();
  sub_24F05FEDC(v0 + 152, v6 + v2);
  swift_endAccess();
  sub_24E612C80((v0 + 112), v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F05F5B8()
{
  (*(v0[61] + 8))(v0[62], v0[60]);

  v1 = v0[1];

  return v1();
}

uint64_t AppStoreLocalizerFactory.__allocating_init(jetpackResourceBundle:defaultLanguageSource:objectGraph:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
  *(v6 + v8) = sub_24E60EAE0(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v10 = sub_24F929D48();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  sub_24E612C80(a2, v6 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_objectGraph) = a3;
  return v6;
}

uint64_t sub_24F05F740()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = v1[1];
  *(v2 + 32) = *v1;
  *(v2 + 40) = v3;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_24F05F848;

  return MEMORY[0x28217F1C0](v4, v5);
}

uint64_t sub_24F05F848(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_24F05F9E4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_24F05F970;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F05F970()
{
  v3 = v0[3];
  sub_24EA0A4AC(v0[6]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_24F05F9E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F05FA48()
{

  return sub_24F91F6F8();
}

uint64_t AppStoreLocalizerFactory.init(jetpackResourceBundle:defaultLanguageSource:objectGraph:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
  *(v3 + v8) = sub_24E60EAE0(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v10 = sub_24F929D48();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  sub_24E612C80(a2, v3 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_objectGraph) = a3;
  return v3;
}

uint64_t sub_24F05FB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_24F929CC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = sub_24F92A318();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F9C29E0;
  *(v13 + 32) = [objc_opt_self() mainBundle];
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_27F22B5B8;
  *(v13 + 40) = qword_27F22B5B8;
  v15 = v14;
  sub_24F92A308();
  v16 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v17 = sub_24F929D48();
  v27 = v17;
  v28 = MEMORY[0x277D22178];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v22 + v16, v17);
  sub_24E615E00(v23, v25);

  sub_24F929C98();
  v27 = v9;
  v28 = MEMORY[0x277D22358];
  v19 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(v10 + 16))(v19, v12, v9);
  sub_24F929CB8();
  v20 = *(v3 + 8);
  v20(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v27 = &type metadata for AppStoreLocalizerPreferences;
  v28 = sub_24F0603EC();
  sub_24F929CA8();
  v20(v8, v2);
  (*(v10 + 8))(v12, v9);
  return sub_24E601704(v26, &qword_27F237F08);
}

uint64_t sub_24F05FEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223248);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppStoreLocalizerFactory.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v2 = sub_24F929D48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer, &qword_27F223248);

  return v0;
}

uint64_t AppStoreLocalizerFactory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v2 = sub_24F929D48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer, &qword_27F223248);

  return swift_deallocClassInstance();
}

uint64_t sub_24F0600EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return AppStoreLocalizerFactory.localizer(forLanguage:)(a1, a2, a3);
}

unint64_t sub_24F0601A0()
{
  result = qword_27F237EE0;
  if (!qword_27F237EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237EE0);
  }

  return result;
}

uint64_t sub_24F0601F4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t type metadata accessor for AppStoreLocalizerFactory()
{
  result = qword_27F237EF0;
  if (!qword_27F237EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0602F0()
{
  result = sub_24F929D48();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F0603EC()
{
  result = qword_27F237F00;
  if (!qword_27F237F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F00);
  }

  return result;
}

uint64_t CompoundShelfSupplementaryProvider.__allocating_init(children:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CompoundShelfSupplementaryProvider.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v2 + 16);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_24E619BF4(0, v5[2] + 1, 1, v5);
      *(v2 + 16) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_24E619BF4((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v4;
    v9[5] = a2;
    *(v2 + 16) = v5;
    return swift_endAccess();
  }

  return result;
}

uint64_t CompoundShelfSupplementaryProvider.removeChild(_:)(uint64_t result)
{
  if (result)
  {
    v2 = result;
    result = swift_beginAccess();
    v3 = *(v1 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      for (i = (v3 + 32); *i != v2; i += 2)
      {
        if (v4 == ++v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_24EA0E810(v5);
      swift_endAccess();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundShelfSupplementaryProvider.removeAllChildren()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t sub_24F060700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t))
{
  swift_beginAccess();
  v11 = *(v5 + 16);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;

  v12 = a5(a4, v14, v11);

  return v12;
}

uint64_t CompoundShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = (v7 + 40);
    while (v10 < *(v7 + 16))
    {
      v12 = *v11;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 24);
      swift_unknownObjectRetain();
      v14(&v19, a1, a2, a3, a4, ObjectType, v12);
      swift_unknownObjectRelease();
      if (v20)
      {

        return sub_24E612C80(&v19, a5);
      }

      ++v10;
      result = sub_24EE0F5B8(&v19);
      v11 += 2;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t CompoundShelfSupplementaryProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F060974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t))
{
  swift_beginAccess();
  v13 = *(v7 + 16);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;

  v14 = a7(a6, v16, v13);

  return v14;
}

uint64_t sub_24F060A90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 16))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

uint64_t sub_24F060B14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 8))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

void *OfferAction.asExceptionRequest(forceAskToBuyReason:)(unsigned __int8 *a1)
{
  v38 = sub_24F91F6B8();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F928AD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v8 = v1[3];
  v45 = v1[2];
  v44 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v39 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId + 8);
  v41 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId + 8);
  v40 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  v12 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_24E643A9C(v1 + v12, v54);
  v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps);
  v14 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction);
  v43 = v1[5];
  v46 = v5;
  v15 = *(v5 + 16);
  v16 = v1 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = v11;
  v18 = v14;
  v15(v7, v16, v4);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v20 = v39;
  v20[1] = v9;
  sub_24E643A9C(v54, v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v21 = v41;
  v21[1] = v10;
  v22 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v22 = v40;
  v22[1] = v17;
  v23 = (v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v23 = 0;
  v23[1] = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v13;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = 1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v42;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = v18;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v15(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v7, v4);
  v24 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
  v26 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  v27 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v52, &v49);
  if (*(&v50 + 1))
  {
    v28 = v50;
    *v27 = v49;
    *(v27 + 1) = v28;
    *(v27 + 4) = v51;

    v29 = v44;
  }

  else
  {

    v29 = v44;

    v30 = v36;
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v37 + 8))(v30, v38);
    v47 = v31;
    v48 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v49, &qword_27F235830);
  }

  sub_24E601704(v52, &qword_27F235830);
  (*(v46 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v19[2] = v45;
  v19[3] = v29;
  v34 = v43;
  v19[4] = 0;
  v19[5] = v34;
  return v19;
}

uint64_t OfferAction.isRedownload.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_24E643A9C(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v5 + 16) || (v2 = sub_24E76D644(0x6E776F6465527369, 0xEC00000064616F6CLL), (v3 & 1) == 0))
  {

    return 0;
  }

  sub_24E643A9C(*(v5 + 56) + 32 * v2, v6);

  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void *OfferAction.__allocating_init(title:adamId:parentAdamId:bundleId:purchaseToken:includeBetaApps:requiresExceptionRequest:forceAskToBuyReason:buyCompletedAction:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a8;
  v52 = a1;
  v50 = a13;
  v53 = a12;
  v54 = a2;
  v18 = sub_24F91F6B8();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = *a3;
  v23 = a3[1];
  v25 = *a4;
  v24 = a4[1];
  v26 = *a10;
  v27 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v27 = v22;
  v27[1] = v23;
  v51 = a7;
  sub_24E643A9C(a7, v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v28 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v28 = v25;
  v28[1] = v24;
  v29 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v29 = a5;
  v29[1] = a6;
  v30 = (v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v30 = 0;
  v30[1] = 0;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v49;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v26;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = a11;
  v31 = v50;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v32 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v33 = sub_24F928AD8();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v21 + v32, v31, v33);
  v35 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v36 = sub_24F929608();
  (*(*(v36 - 8) + 56))(v21 + v35, 1, 1, v36);
  v37 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v37 = 0u;
  v37[1] = 0u;
  v38 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v60, &v57);
  if (*(&v58 + 1))
  {
    v39 = v58;
    *v38 = v57;
    *(v38 + 1) = v39;
    *(v38 + 4) = v59;
  }

  else
  {
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v47 + 8))(v20, v48);
    v55 = v40;
    v56 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v57, &qword_27F235830);
  }

  (*(v34 + 8))(v31, v33);
  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_24E601704(v60, &qword_27F235830);
  v43 = v53;
  v44 = v54;
  v21[2] = v52;
  v21[3] = v44;
  v21[4] = 0;
  v21[5] = v43;
  return v21;
}

void *OfferAction.init(title:adamId:parentAdamId:bundleId:purchaseToken:includeBetaApps:requiresExceptionRequest:forceAskToBuyReason:buyCompletedAction:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v56 = a8;
  v53 = a6;
  v52 = a5;
  v60 = a2;
  v58 = a1;
  v51 = a13;
  v59 = a12;
  v54 = a9;
  v55 = a11;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v48 - v21;
  v23 = sub_24F928AD8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a3;
  v28 = a3[1];
  v29 = *a4;
  v30 = a4[1];
  v31 = *a10;
  v32 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v32 = v27;
  v32[1] = v28;
  v57 = a7;
  sub_24E643A9C(a7, v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v33 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v33 = v29;
  v33[1] = v30;
  v34 = v51;
  v35 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  v37 = (v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v37 = 0;
  v37[1] = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v56;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = v54;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v31;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = v55;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  (*(v24 + 16))(v26, v34, v23);
  v38 = sub_24F929608();
  (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
  v39 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v39 = 0u;
  v39[1] = 0u;
  sub_24E65E064(v69, &v63);
  if (*(&v64 + 1))
  {
    v66 = v63;
    v67 = v64;
    v68 = v65;
  }

  else
  {
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v49 + 8))(v19, v50);
    v61 = v40;
    v62 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v63, &qword_27F235830);
  }

  (*(v24 + 8))(v34, v23);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_24E601704(v69, &qword_27F235830);
  v43 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v43 + 4) = v68;
  v44 = v67;
  *v43 = v66;
  *(v43 + 1) = v44;
  sub_24E65E0D4(v22, v14 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v45 = v59;
  v46 = v60;
  v14[2] = v58;
  v14[3] = v46;
  v14[4] = 0;
  v14[5] = v45;
  (*(v24 + 32))(v14 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v26, v23);
  return v14;
}

void (**OfferAction.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v81 = a2;
  v6 = *v4;
  v77 = v3;
  v78 = v6;
  v7 = sub_24F9285B8();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v70 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v70 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v70 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - v25;
  v85 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v74 = v10;
  v30 = v9;
  v31 = v9;
  v32 = *(v10 + 8);
  v32(v26, v31);
  if (!v29)
  {
    v64 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v65 = 0x64496D616461;
    v66 = v78;
    v65[1] = 0xE600000000000000;
    v65[2] = v66;
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D22530], v64);
    swift_willThrow();
    (*(v79 + 8))(v81, v80);
    v32(v85, v30);
LABEL_11:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v33 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v33 = v27;
  v33[1] = v29;
  sub_24F928398();
  sub_24F928368();
  v34 = v24;
  v35 = v32;
  v32(v34, v30);
  if (!v83)
  {
    sub_24E601704(&v82, &qword_27F2129B0);
    v67 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v68 = 0x6E656B6F74;
    v68[1] = 0xE500000000000000;
    v68[2] = v78;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277D22530], v67);
    swift_willThrow();
    (*(v79 + 8))(v81, v80);
    v32(v85, v30);

    goto LABEL_11;
  }

  sub_24E612B0C(&v82, v84);
  sub_24E643A9C(v84, v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v36 = v85;
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v35(v21, v30);
  v40 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v40 = v37;
  v40[1] = v39;
  sub_24F928398();
  v41 = sub_24F928348();
  v43 = v42;
  v35(v21, v30);
  v44 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v44 = v41;
  v44[1] = v43;
  v45 = v71;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v35(v45, v30);
  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0;
  }

  v50 = (v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v50 = v49;
  v50[1] = v48;
  v51 = v72;
  sub_24F928398();
  v52 = sub_24F928278();
  v35(v51, v30);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = v52 & 1;
  v53 = v73;
  sub_24F928398();
  v54 = sub_24F928278();
  v35(v53, v30);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = v54 & 1;
  sub_24F928398();
  sub_24EC3F63C();
  sub_24F928248();
  v35(v21, v30);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = v82;
  type metadata accessor for Action();
  sub_24F928398();
  v55 = v30;
  v56 = v81;
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v81);
  v78 = v35;
  v35(v21, v55);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = v57;
  v58 = v75;
  (*(v74 + 16))(v75, v36, v55);
  v60 = v79;
  v59 = v80;
  v61 = v76;
  (*(v79 + 16))(v76, v56, v80);
  v62 = v77;
  v63 = Action.init(deserializing:using:)(v58, v61);
  if (!v62)
  {
    v4 = v63;
  }

  (*(v60 + 8))(v56, v59);
  v78(v85, v55);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v4;
}

uint64_t OfferAction.purchaseToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  return sub_24E643A9C(v1 + v3, a1);
}

uint64_t OfferAction.purchaseToken.setter(_OWORD *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_24E612B0C(a1, (v1 + v3));
  return swift_endAccess();
}

uint64_t OfferAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  a1[1] = v2;
}

uint64_t OfferAction.parentAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  a1[1] = v2;
}

uint64_t OfferAction.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);

  return v1;
}

uint64_t OfferAction.lineItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);

  return v1;
}

uint64_t sub_24F0624B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
}

uint64_t OfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);

  return v0;
}

uint64_t OfferAction.__deallocating_deinit()
{
  OfferAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferAction()
{
  result = qword_27F237F10;
  if (!qword_27F237F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F062804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F20);
  sub_24F062970();
  sub_24F0629D4();
  sub_24F9269E8();
}

unint64_t sub_24F062970()
{
  result = qword_27F237F28;
  if (!qword_27F237F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F28);
  }

  return result;
}

unint64_t sub_24F0629D4()
{
  result = qword_27F237F30;
  if (!qword_27F237F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F30);
  }

  return result;
}

uint64_t sub_24F062A40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237F20);
  sub_24F062970();
  sub_24F0629D4();
  return swift_getOpaqueTypeConformance2();
}

id sub_24F062AB8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for TouchMonitorGesture.Coordinator()) init];
  *a1 = result;
  return result;
}

id sub_24F062AF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  [v0 setMinimumPressDuration_];
  [v0 setAllowableMovement_];
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F38);
  sub_24F925798();
  [v1 setDelegate_];

  return v1;
}

uint64_t sub_24F062BA8(void *a1)
{
  if ([a1 state] != 1)
  {
    [a1 state];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  return sub_24F927178();
}

uint64_t sub_24F062C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GameSource();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 56);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24F062E00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for GameSource();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 56) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardSetDetailsPageIntent()
{
  result = qword_27F237F40;
  if (!qword_27F237F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F062FD8()
{
  sub_24E7EC9EC(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameSource();
    if (v1 <= 0x3F)
    {
      sub_24E7EC9EC(319, &qword_27F214988, type metadata accessor for Player);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F0630BC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &qword_27F21D8F8);
  *(inited + 88) = 0x72756F53656D6167;
  *(inited + 96) = 0xEA00000000006563;
  v6 = type metadata accessor for LeaderboardSetDetailsPageIntent();
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for GameSource();
  *(inited + 136) = sub_24ED151C4(&qword_27F221F68, type metadata accessor for GameSource);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F0641B8(v2 + v7, v8, type metadata accessor for GameSource);
  *(inited + 144) = 0xD000000000000014;
  *(inited + 152) = 0x800000024FA69BF0;
  v9 = (v2 + v6[6]);
  v23[0] = v9[2];
  *(v23 + 9) = *(v9 + 41);
  v10 = v9[1];
  v21 = *v9;
  v22 = v10;
  *(inited + 184) = &type metadata for LeaderboardSetSource;
  *(inited + 192) = sub_24F064220();
  v11 = swift_allocObject();
  *(inited + 160) = v11;
  *(v11 + 57) = *(v23 + 9);
  v12 = v23[0];
  v11[2] = v22;
  v11[3] = v12;
  v11[1] = v21;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v13 = v6[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 248) = sub_24E7EDBB4();
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v13, v14, &unk_27F23E1F0);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v15 = *(v2 + v6[8]);
  v16 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v16;
  *(inited + 272) = v15;
  sub_24F064108(&v21, v20);
  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24F0633CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F063F48();
  sub_24F92D128();
  LOBYTE(v23[0]) = 0;
  type metadata accessor for Page.Background(0);
  sub_24ED151C4(&qword_27F21D920, type metadata accessor for Page.Background);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardSetDetailsPageIntent();
    v25 = 1;
    type metadata accessor for GameSource();
    sub_24ED151C4(&qword_27F221F60, type metadata accessor for GameSource);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v23[0] = *v10;
    v23[1] = v11;
    v13 = *v10;
    v12 = v10[1];
    *v24 = v10[2];
    *&v24[9] = *(v10 + 41);
    v20 = v13;
    v21 = v12;
    v22[0] = v10[2];
    *(v22 + 9) = *(v10 + 41);
    v19 = 2;
    sub_24F064108(v23, v17);
    sub_24F064164();
    sub_24F92CD48();
    v17[0] = v20;
    v17[1] = v21;
    *v18 = v22[0];
    *&v18[9] = *(v22 + 9);
    sub_24F063F9C(v17);
    v16 = 3;
    type metadata accessor for Player(0);
    sub_24ED151C4(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    v16 = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F06374C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v4;
  v5 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237F50);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v26 - v10;
  v12 = type metadata accessor for LeaderboardSetDetailsPageIntent();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F063F48();
  v31 = v11;
  v15 = v33;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v7;
  v17 = v14;
  type metadata accessor for Page.Background(0);
  LOBYTE(v34) = 0;
  sub_24ED151C4(&qword_27F21D930, type metadata accessor for Page.Background);
  v18 = v29;
  v19 = v32;
  v20 = v31;
  sub_24F92CC18();
  sub_24E6009C8(v18, v17, &qword_27F21D8F8);
  LOBYTE(v34) = 1;
  sub_24ED151C4(&qword_27F221F50, type metadata accessor for GameSource);
  sub_24F92CC68();
  sub_24F063FF0(v16, v17 + v12[5]);
  v38 = 2;
  sub_24F064054();
  sub_24F92CC68();
  v21 = v30;
  v33 = 0;
  v22 = (v17 + v12[6]);
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;
  v22[2] = v36[0];
  *(v22 + 41) = *(v36 + 9);
  type metadata accessor for Player(0);
  v37 = 3;
  sub_24ED151C4(&qword_27F213E38, type metadata accessor for Player);
  v24 = v28;
  sub_24F92CC18();
  sub_24E6009C8(v24, v17 + v12[7], &unk_27F23E1F0);
  v37 = 4;
  LOBYTE(v24) = sub_24F92CC38();
  (*(v21 + 8))(v20, v19);
  *(v17 + v12[8]) = v24 & 1;
  sub_24F0641B8(v17, v27, type metadata accessor for LeaderboardSetDetailsPageIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F0640A8(v17, type metadata accessor for LeaderboardSetDetailsPageIntent);
}

unint64_t sub_24F063D98()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0xD000000000000014;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72756F53656D6167;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F063E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F06443C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F063E68(uint64_t a1)
{
  v2 = sub_24F063F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F063EA4(uint64_t a1)
{
  v2 = sub_24F063F48();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F063F48()
{
  result = qword_27F237F58;
  if (!qword_27F237F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F58);
  }

  return result;
}

uint64_t sub_24F063FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F064054()
{
  result = qword_27F237F60;
  if (!qword_27F237F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F60);
  }

  return result;
}

uint64_t sub_24F0640A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F064164()
{
  result = qword_27F237F70;
  if (!qword_27F237F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F70);
  }

  return result;
}

uint64_t sub_24F0641B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F064220()
{
  result = qword_27F237F78;
  if (!qword_27F237F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F78);
  }

  return result;
}

uint64_t sub_24F064274()
{
  sub_24F0642BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_24F0642BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{

  if ((a8 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24F064338()
{
  result = qword_27F237F80;
  if (!qword_27F237F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F80);
  }

  return result;
}

unint64_t sub_24F064390()
{
  result = qword_27F237F88;
  if (!qword_27F237F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F88);
  }

  return result;
}

unint64_t sub_24F0643E8()
{
  result = qword_27F237F90;
  if (!qword_27F237F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237F90);
  }

  return result;
}

uint64_t sub_24F06443C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA69BF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_24F0645FC()
{
  result = sub_24E60FC8C(MEMORY[0x277D84F90]);
  off_27F237F98 = result;
  return result;
}

uint64_t ScaledSpaceMetric.init(wrappedValue:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ScaledSpaceMetric();
  *(a1 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for ScaledSpaceMetric()
{
  result = qword_27F237FA0;
  if (!qword_27F237FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0646E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24F064FA0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double ScaledSpaceMetric.wrappedValue.getter()
{
  v1 = sub_24F92CDB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F0646E8(v11);
  v12 = sub_24F064BEC(v11);
  (*(v9 + 8))(v11, v8);
  v13 = v12 * *(v0 + *(type metadata accessor for ScaledSpaceMetric() + 20));
  sub_24F9220E8();
  v21 = v13;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 88))(v4, v1);
  if (v14 == *MEMORY[0x277D84678])
  {
    v15 = round(v13);
LABEL_11:
    (*(v2 + 8))(v7, v1);
    return v15;
  }

  if (v14 == *MEMORY[0x277D84670])
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84680])
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84688])
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84660])
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x277D84668])
  {
    (*(v2 + 8))(v7, v1);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_24F92BA48();
    v19 = *(v2 + 8);
    v19(v7, v1);
    v19(v4, v1);
    return v21;
  }
}

double sub_24F064BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  if (qword_27F210EA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_27F237F98;
  if (*(off_27F237F98 + 2) && (v9 = sub_24E76E8C8(a1), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
  }

  else
  {
    swift_endAccess();
    v12 = sub_24F923E98();
    v13 = *(*(v12 - 8) + 56);
    v13(v7, 1, 1, v12);
    v13(v4, 1, 1, v12);
    v14 = sub_24EF13DC0(v7, v4);
    sub_24EF144B0(v4);
    sub_24EF144B0(v7);
    v11 = (v14 + -1.0) * 0.5 + 1.0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_27F237F98;
    off_27F237F98 = 0x8000000000000000;
    sub_24E821F38(a1, isUniquelyReferenced_nonNull_native, v11);
    off_27F237F98 = v17;
  }

  swift_endAccess();
  return v11;
}

uint64_t sub_24F064E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F064EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F064F2C()
{
  sub_24E6CAF48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F064FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F065010(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_24E772724(v8, v18);
      v10 = v6(v18);
      if (v3)
      {
        sub_24E772780(v18);

        goto LABEL_15;
      }

      if (v10)
      {
        v15 = v18[0];
        v16 = v18[1];
        v17 = v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v9;
        if ((result & 1) == 0)
        {
          result = sub_24F457E94(0, *(v9 + 16) + 1, 1);
          v9 = v20;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_24F457E94((v11 > 1), v12 + 1, 1);
          v9 = v20;
        }

        *(v9 + 16) = v12 + 1;
        v13 = v9 + 40 * v12;
        *(v13 + 64) = v17;
        *(v13 + 32) = v15;
        *(v13 + 48) = v16;
        v6 = v14;
      }

      else
      {
        result = sub_24E772780(v18);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionIdentifiers(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v10 = (v3 + *(a3 + 36));
    v11 = *v10;
    v12 = *(*v10 + 16);
    if (v12)
    {
      v13 = v10[1];
      v9 = sub_24EAE6938(*(*v10 + 16), 0);
      v14 = sub_24EAE8D14(&v20, v9 + 32, v12, v11, v13);

      if (v14 == v12)
      {
        return v9;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v4 = *(v3 + *(a3 + 36));
  MEMORY[0x28223BE20](a1);
  v16[1] = *(v5 + 16);
  v17 = v3;
  v18 = v6;
  v19 = v7;
  v8 = v6;
  sub_24E5FCA4C(v6);

  v9 = sub_24F065010(sub_24F06973C, v16, v4);
  sub_24E824448(v8);
  return v9;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = a2;
  v2 = *(a1 + 16);
  v3 = sub_24F92C4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *(v2 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_24EBD5384();
  sub_24F92AEC8();
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    (*(v7 + 32))(v13, v6, v2);
    (*(v7 + 16))(v10, v13, v2);
    v15 = v19;
    sub_24F928A78();
    (*(v7 + 8))(v13, v2);
    v14 = 0;
  }

  v16 = sub_24F928A68();
  return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.copy(clearingIdentifierSnapshot:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  v8 = sub_24F066CE0();
  v10 = v9;
  v11 = (a3 + *(a2 + 52));

  *v11 = v8;
  v11[1] = v10;
  if (a1)
  {
    return sub_24F067460(a2);
  }

  return result;
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.setSectionModels(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  rawValue = a1._rawValue;
  v5 = *(v1 + 16);
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](a1._rawValue);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v52 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v15 = (v2 + *(v14 + 36));

  *v15 = MEMORY[0x277D84F90];

  v15[1] = MEMORY[0x277D84F98];
  sub_24EBD5384();
  sub_24F92AEA8();
  sub_24F92AE98();
  v61 = v3;
  v16 = *(v3 + 24);
  v17 = v15;
  v58 = v16;
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_24F92AEA8();
  v62 = v2;
  sub_24F92AE98();
  if (!sub_24F92B648())
  {
LABEL_30:
    sub_24F067460(v61);
    return;
  }

  v18 = 0;
  v19 = (v60 + 16);
  v57 = (v60 + 32);
  v64 = (v60 + 8);
  v54 = v9;
  v55 = rawValue;
  v53 = v13;
  v56 = (v60 + 16);
  while (1)
  {
    v20 = sub_24F92B628();
    sub_24F92B5D8();
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = *(v60 + 16);
    v21(v13, &rawValue[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v18], v5);
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_7:
    (*v57)(v9, v13, v5);
    v23 = v59;
    v21(v59, v9, v5);
    sub_24F928D68();
    v24 = *v64;
    (*v64)(v23, v5);
    if (*(v17[1] + 2))
    {
      sub_24E76DD40(v67);
      if (v25)
      {
        sub_24E772780(v67);
        goto LABEL_4;
      }

      v63 = v24;
    }

    else
    {
      v63 = v24;
    }

    v26 = *v17;
    v27 = *(*v17 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v17;
    v30 = isUniquelyReferenced_nonNull_native;
    v31 = v29;
    *&v65[0] = v29[1];
    v32 = *&v65[0];
    v34 = sub_24E76DD40(v67);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_32;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((v30 & 1) == 0)
      {
        sub_24E8AE134();
      }
    }

    else
    {
      sub_24E899B98(v37, v30);
      v39 = sub_24E76DD40(v67);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_35;
      }

      v34 = v39;
    }

    v17 = v31;
    v41 = *&v65[0];
    v19 = v56;
    if (v38)
    {
      *(*(*&v65[0] + 56) + 8 * v34) = v27;
    }

    else
    {
      *(*&v65[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      sub_24E772724(v67, *(v41 + 6) + 40 * v34);
      *(*(v41 + 7) + 8 * v34) = v27;
      v42 = *(v41 + 2);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_33;
      }

      *(v41 + 2) = v44;
    }

    v17[1] = v41;
    sub_24E772724(v67, v65);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v9 = v54;
    v13 = v53;
    if ((v45 & 1) == 0)
    {
      v26 = sub_24E616FEC(0, *(v26 + 2) + 1, 1, v26);
    }

    v47 = *(v26 + 2);
    v46 = *(v26 + 3);
    if (v47 >= v46 >> 1)
    {
      v26 = sub_24E616FEC((v46 > 1), v47 + 1, 1, v26);
    }

    sub_24E772780(v67);
    *(v26 + 2) = v47 + 1;
    v48 = &v26[40 * v47];
    v49 = v66;
    v50 = v65[1];
    *(v48 + 2) = v65[0];
    *(v48 + 3) = v50;
    *(v48 + 8) = v49;
    *v17 = v26;
    rawValue = v55;
    v24 = v63;
LABEL_4:
    sub_24F066E90(v9, v61);
    v24(v9, v5);
    ++v18;
    if (v22 == sub_24F92B648())
    {
      goto LABEL_30;
    }
  }

  v51 = sub_24F92C8D8();
  if (v52 != 8)
  {
    goto LABEL_34;
  }

  v67[0] = v51;
  v21 = *v19;
  (*v19)(v13, v67, v5);
  swift_unknownObjectRelease();
  v22 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_7;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_24F92CF88();
  __break(1u);
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.reloadSections(_:)(Swift::OpaquePointer a1)
{
  sub_24F0683B0(sub_24F06977C);
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = 0;
    v4 = a1._rawValue + 32;
    while (1)
    {
      sub_24E772724(&v4[40 * v3], v11);
      sub_24E65864C(v11, v9);
      sub_24E772780(v11);
      DiffablePageContentIdentifier.init(_:)(v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
      v5 = sub_24F922DD8();
      sub_24E772780(v10);
      v6 = *(v5 + 16);
      if (v6)
      {
        break;
      }

LABEL_3:
      ++v3;

      if (v3 == v2)
      {
        return;
      }
    }

    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_24E772724(v8, v10);
      sub_24F0684B4(v10);
      ++v7;
      sub_24E772780(v10);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);

    sub_24E772780(v10);
    __break(1u);
  }
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.reloadSectionModels(_:onlyReloadingItems:)(Swift::OpaquePointer _, Swift::Bool onlyReloadingItems)
{
  v3 = v2;
  sub_24F92B6E8();
  swift_getWitnessTable();
  v5 = sub_24F92B438();
  v6 = sub_24F067D04(v5, v3);
  if (!onlyReloadingItems)
  {
    MEMORY[0x28223BE20](v6);
    sub_24F0683B0(sub_24F069E78);
  }
}

uint64_t sub_24F065E4C(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *(a2 + 24);
  v11 = *(a2 + 16);
  v12 = v4;
  v5 = sub_24EB0AD64(sub_24F069DD0, v10, a1);
  sub_24F0683B0(a3);
  v6 = *(v5 + 2);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = (v5 + 32);
  while (v7 < *(v5 + 2))
  {
    sub_24E772724(v8, v10);
    sub_24F0684B4(v10);
    ++v7;
    sub_24E772780(v10);
    v8 += 40;
    if (v6 == v7)
    {
    }
  }

  __break(1u);

  result = sub_24E772780(v10);
  __break(1u);
  return result;
}

uint64_t sub_24F065F64(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  result = sub_24F0683B0(a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    do
    {
      result = sub_24F0684B4(v6);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24EBD5384();
  sub_24F922E28();
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v6 = v5[9];
  sub_24F0692A4(MEMORY[0x277D84F90], &v17);
  *(a2 + v6) = v17;
  v7 = v5[10];
  swift_getTupleTypeMetadata2();
  v8 = sub_24F92B608();
  v9 = sub_24E9065F8(v8, &type metadata for DiffablePageContentIdentifier, a1, v4);

  *(a2 + v7) = v9;
  v10 = v5[11];
  v11 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  swift_getTupleTypeMetadata2();
  v12 = sub_24F92B608();
  v13 = sub_24E9065F8(v12, &type metadata for DiffablePageContentIdentifier, v11, v4);

  *(a2 + v10) = v13;
  *(a2 + v5[12]) = MEMORY[0x277D84FA0];
  result = sub_24F066CE0();
  v15 = (a2 + v5[13]);
  *v15 = result;
  v15[1] = v16;
  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || (v5 = *(v3 + *(a2 + 36)), *(v5 + 16) <= a1))
  {
    v8 = sub_24F928A68();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }

  else
  {
    sub_24E772724(v5 + 40 * a1 + 32, v10);
    ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a2, a3);
    return sub_24E772780(v10);
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 36) + 8);
  if (*(v3 + 16) && (v4 = sub_24E76DD40(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_24EBD5384();
  sub_24F92AEC8();
  if (v8)
  {
    sub_24E615E00(v7, v9);
    (*(*(v2 - 8) + 8))(v7, v2);
    sub_24E612C80(v9, v10);
    sub_24E615E00(v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    sub_24F928A78();
    __swift_destroy_boxed_opaque_existential_1(v10);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = sub_24F92C4A8();
    (*(*(v5 - 8) + 8))(v7, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + *(a2 + 36) + 8) + 16))
  {
    sub_24E76DD40(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

char *ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_24F928A68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - v9;
  v11 = sub_24F92C4A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-1] - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  v16 = *(a2 + 24);
  DiffablePageContentIdentifier.init<A>(_:)(v10);
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a2, v15);
  sub_24E772780(v23);
  v17 = (*(v8 + 48))(v15, 1, v7);
  if (v17 == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  else
  {
    MEMORY[0x28223BE20](v17);
    *(&v22 - 2) = v6;
    *(&v22 - 1) = v16;
    swift_getKeyPath();
    sub_24F928A48();

    v19 = v23[0];
    v20 = (*(v8 + 8))(v15, v7);
    MEMORY[0x28223BE20](v20);
    *(&v22 - 4) = v6;
    *(&v22 - 3) = v16;
    *(&v22 - 2) = v3;
    v21 = sub_24EB0B440(sub_24F0698EC, (&v22 - 6), v19);

    return v21;
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.debugModelDescription.getter(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = sub_24F928A68();
  v45 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v45);
  v6 = v37 - v5;
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = (v1 + *(v2 + 36));
  v13 = *v12;
  v14 = *(*v12 + 16);
  v37[0] = v12[1];
  v37[1] = v13;
  if (v14)
  {
    v15 = v13 + 32;
    v16 = (v9 + 48);
    v42 = (v9 + 8);
    v43 = (v9 + 32);
    v41 = (v8 + 8);

    v46 = MEMORY[0x277D84F90];
    v38 = v3;
    v39 = v1;
    v44 = v2;
    v40 = v16;
    do
    {
      sub_24E772724(v15, v50);
      ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(v2, v6);
      if ((*v16)(v6, 1, v4) == 1)
      {
        sub_24E772780(v50);
        (*v41)(v6, v45);
      }

      else
      {
        v17 = (*v43)(v11, v6, v4);
        MEMORY[0x28223BE20](v17);
        v18 = *(v2 + 24);
        v37[-2] = v3;
        v37[-1] = v18;
        swift_getKeyPath();
        sub_24F928A48();

        v19 = *(v48 + 16);

        if (v19)
        {
          v48 = 0x3A6E6F6974636573;
          v49 = 0xE900000000000020;
          v20 = sub_24F92C7A8();
          MEMORY[0x253050C20](v20);

          v21 = MEMORY[0x253050C20](8250, 0xE200000000000000);
          MEMORY[0x28223BE20](v21);
          v37[-2] = v3;
          v37[-1] = v18;
          swift_getKeyPath();
          sub_24F928A48();

          v22 = v47;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
          v24 = MEMORY[0x253050F40](v22, v23);
          v26 = v25;

          MEMORY[0x253050C20](v24, v26);

          v27 = v48;
          v28 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_24E615CF4(0, *(v46 + 2) + 1, 1, v46);
          }

          v16 = v40;
          v30 = *(v46 + 2);
          v29 = *(v46 + 3);
          if (v30 >= v29 >> 1)
          {
            v46 = sub_24E615CF4((v29 > 1), v30 + 1, 1, v46);
          }

          (*v42)(v11, v4);
          sub_24E772780(v50);
          v31 = v46;
          *(v46 + 2) = v30 + 1;
          v32 = &v31[16 * v30];
          *(v32 + 4) = v27;
          *(v32 + 5) = v28;
          v3 = v38;
          v2 = v44;
        }

        else
        {
          (*v42)(v11, v4);
          sub_24E772780(v50);
          v2 = v44;
          v16 = v40;
        }
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA69C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA69C30);
  v48 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E907170();
  v33 = sub_24F92AF68();
  v35 = v34;

  MEMORY[0x253050C20](v33, v35);

  return v50[0];
}

uint64_t sub_24F066CE0()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v4 = sub_24F91F668();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x253050C20](v4, v6);

  return v8[0];
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.identifierSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24F066E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_24F92C4A8();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = *(v12 + 16);
  v47 = a1;
  v20(&v43 - v18, a1, v6, v17);
  v51 = *(a2 + 24);
  sub_24F928D68();
  *&v53 = v12;
  v21 = *(v12 + 8);
  v21(v19, v6);
  v50 = a2;
  v22 = *(a2 + 36);
  v52 = v3;
  if (!*(*(v3 + v22 + 8) + 16) || (sub_24E76DD40(v62), (v23 & 1) == 0))
  {
    sub_24E772780(v62);
    return 0;
  }

  v44 = v21;
  v24 = *(v50 + 40);
  v49 = sub_24EBD5384();
  sub_24F92AEC8();
  v25 = v53;
  v26 = (*(v53 + 48))(v11, 1, v6);
  v45 = v24;
  if (v26 == 1)
  {
    v46[1](v11, v7);
  }

  else
  {
    (*(v25 + 32))(v15, v11, v6);
    v28 = (*(v51 + 16))(v6);
    v29 = v28;
    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = v28 + 32;
      do
      {
        if (v31 >= *(v29 + 16))
        {
          goto LABEL_19;
        }

        sub_24E615E00(v32, &v57);
        sub_24F069050(&v57);
        ++v31;
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v32 += 40;
      }

      while (v30 != v31);
    }

    v44(v15, v6);
  }

  sub_24E772724(v62, &v57);
  v33 = v51;
  v34 = *(v51 + 16);
  v44 = (v51 + 16);
  v46 = v34;
  (v34)(v6, v51);
  v35 = v48;
  (*(v33 + 24))();

  (*(v53 + 56))(v35, 0, 1, v6);
  sub_24F92AEA8();
  sub_24F92AED8();
  v36 = (v46)(v6, v33);
  v37 = 0;
  v38 = *(v36 + 16);
  v47 = v36 + 32;
  v48 = v36;
  while (1)
  {
    v39 = 0uLL;
    v40 = v38;
    v41 = 0uLL;
    v42 = 0uLL;
    if (v37 == v38)
    {
      goto LABEL_15;
    }

    if (v37 >= *(v48 + 2))
    {
      break;
    }

    v40 = v37 + 1;
    *&v57 = v37;
    sub_24E615E00(v47 + 40 * v37, &v57 + 8);
    v39 = v57;
    v41 = v58;
    v42 = *v59;
LABEL_15:
    v61[0] = v39;
    v61[1] = v41;
    v61[2] = v42;
    if (!v42)
    {
      sub_24E772780(v62);

      return 1;
    }

    v53 = v39;
    sub_24E612C80((v61 + 8), v60);
    sub_24E615E00(v60, &v57);
    __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v57);
    sub_24E615E00(v60, v56);
    sub_24E772724(v62, v54);
    sub_24E612C80(v56, &v57);
    *&v59[1] = v54[0];
    *&v59[3] = v54[1];
    v59[5] = v55;
    v59[6] = v53;
    type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
    sub_24F92AEA8();
    sub_24F92AED8();
    __swift_destroy_boxed_opaque_existential_1(v60);
    v37 = v40;
  }

  __break(1u);
LABEL_19:
  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_1(&v57);
  __break(1u);
  return result;
}

uint64_t sub_24F067460(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = sub_24F928A68();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  v53 = sub_24F92C4A8();
  v7 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v9 = v37 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = v37 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v38 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = v37 - v15;
  v17 = sub_24EBD5384();
  v59 = v16;
  v57 = v17;
  sub_24F922E28();
  v18 = (v1 + *(v2 + 36));
  v20 = *v18;
  v19 = v18[1];
  v56 = *(*v18 + 16);
  v39 = v1;
  v37[1] = v19;
  if (v56)
  {
    v21 = *(v1 + *(v2 + 40));
    v55 = v20 + 32;
    v54 = (v10 + 48);
    v47 = (v10 + 32);
    v46 = (v10 + 16);
    ++v45;
    v44 = (v10 + 8);
    v43 = (v7 + 8);

    v23 = 0;
    v42 = xmmword_24F93DE60;
    v41 = v2;
    v40 = v4;
    v51 = v6;
    v50 = v9;
    v49 = v20;
    v48 = v21;
    while (v23 < *(v20 + 16))
    {
      sub_24E772724(v55 + 40 * v23, v67);
      sub_24F92AEC8();
      if ((*v54)(v9, 1, v3) == 1)
      {
        sub_24E772780(v67);
        result = (*v43)(v9, v53);
      }

      else
      {
        v24 = v58;
        (*v47)(v58, v9, v3);
        (*v46)(v52, v24, v3);
        sub_24F928A78();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0);
        v25 = swift_allocObject();
        *(v25 + 16) = v42;
        sub_24E772724(v67, v25 + 32);
        sub_24F922DB8();

        MEMORY[0x28223BE20](v26);
        v27 = *(v2 + 24);
        v37[-2] = v3;
        v37[-1] = v27;
        swift_getKeyPath();
        sub_24F928A48();

        v28 = v66;
        v29 = *(v66 + 16);
        if (v29)
        {
          v65 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v29, 0);
          v30 = v65;
          v31 = v28 + 32;
          do
          {
            sub_24E615E00(v31, v62);
            sub_24E615E00(v62, v61);
            __swift_project_boxed_opaque_existential_1(v61, v61[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(v62);
            __swift_destroy_boxed_opaque_existential_1(v61);
            v65 = v30;
            v33 = *(v30 + 16);
            v32 = *(v30 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_24F457E94((v32 > 1), v33 + 1, 1);
              v30 = v65;
            }

            *(v30 + 16) = v33 + 1;
            v34 = v30 + 40 * v33;
            v35 = v63[0];
            v36 = v63[1];
            *(v34 + 64) = v64;
            *(v34 + 32) = v35;
            *(v34 + 48) = v36;
            v31 += 40;
            --v29;
          }

          while (v29);

          v2 = v41;
          v4 = v40;
        }

        else
        {
        }

        sub_24E772724(v67, v63);
        sub_24F922D88();

        sub_24F069E10(v63);
        (*v45)(v51, v4);
        (*v44)(v58, v3);
        result = sub_24E772780(v67);
        v9 = v50;
        v20 = v49;
      }

      if (++v23 == v56)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:

    return (*(v38 + 40))(v39, v59, v60);
  }

  return result;
}

double sub_24F067BC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  if (sub_24F066E90(a1, v9))
  {
    (*(v6 + 16))(v8, a1, a2);
    sub_24F928D68();
    (*(v6 + 8))(v8, a2);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

char *sub_24F067D04(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(a2 + 16);
  v45 = sub_24F928A68();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v41 - v7;
  v57 = sub_24F92C4A8();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v11 = &v41 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v20 = MEMORY[0x28223BE20](v17);
  result = &v41 - v18;
  v59 = *(a1 + 16);
  if (v59)
  {
    v42 = v19;
    v22 = *(v19 + 16);
    v61 = &v41 - v18;
    v22(v20);
    v23 = v6;
    v24 = 0;
    v25 = *(v3 + 40);
    v43 = v2;
    v26 = *(v2 + v25);
    v27 = a1 + 32;
    v58 = (v12 + 48);
    v50 = (v12 + 32);
    v49 = (v12 + 16);
    v48 = (v23 + 8);
    v47 = (v12 + 8);
    v46 = (v9 + 8);
    v28 = v45;
    v44 = v3;
    v55 = v8;
    v54 = v11;
    v53 = v17;
    v52 = v26;
    v51 = v27;
    do
    {
      sub_24E772724(v27 + 40 * v24, v68);
      sub_24EBD5384();
      sub_24F92AEC8();
      if ((*v58)(v11, 1, v5) == 1)
      {
        sub_24E772780(v68);
        (*v46)(v11, v57);
      }

      else
      {
        v29 = v60;
        (*v50)(v60, v11, v5);
        (*v49)(v56, v29, v5);
        sub_24F928A78();
        sub_24F922DD8();
        sub_24F922D98();

        MEMORY[0x28223BE20](v30);
        v31 = *(v3 + 24);
        *(&v41 - 2) = v5;
        *(&v41 - 1) = v31;
        swift_getKeyPath();
        sub_24F928A48();

        v32 = v67;
        v33 = *(v67 + 16);
        if (v33)
        {
          v66 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v33, 0);
          v34 = v66;
          v35 = v32 + 32;
          do
          {
            sub_24E615E00(v35, v63);
            sub_24E615E00(v63, v62);
            __swift_project_boxed_opaque_existential_1(v62, v62[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(v63);
            __swift_destroy_boxed_opaque_existential_1(v62);
            v66 = v34;
            v37 = *(v34 + 16);
            v36 = *(v34 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_24F457E94((v36 > 1), v37 + 1, 1);
              v34 = v66;
            }

            *(v34 + 16) = v37 + 1;
            v38 = v34 + 40 * v37;
            v39 = v64[0];
            v40 = v64[1];
            *(v38 + 64) = v65;
            *(v38 + 32) = v39;
            *(v38 + 48) = v40;
            v35 += 40;
            --v33;
          }

          while (v33);

          v3 = v44;
          v28 = v45;
        }

        else
        {
        }

        sub_24E772724(v68, v64);
        v17 = v53;
        sub_24F922D88();

        sub_24F069E10(v64);
        (*v48)(v55, v28);
        (*v47)(v60, v5);
        sub_24E772780(v68);
        v11 = v54;
        v27 = v51;
      }

      ++v24;
    }

    while (v24 != v59);
    return (*(v42 + 40))(v43, v61, v17);
  }

  return result;
}

uint64_t sub_24F0683B0(void (*a1)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1, v3, v5);
  a1(v7);
  return (*(v4 + 40))(v1, v7, v3);
}

uint64_t sub_24F0684B4(uint64_t a1)
{
  sub_24E65864C(a1, v2);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  sub_24ED7D5A0(v3, v2);
  return sub_24E6585F8(v3);
}

uint64_t sub_24F068528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v9 = sub_24F92C4A8();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v39 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_24E615E00(a1, &v46);
  __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v17 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v18 = *(v17 + 44);
  v41 = a2;
  v35 = v18;
  v19 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_24EBD5384();
  sub_24F92AEC8();
  sub_24E772780(v50);
  if (!*(&v47 + 1))
  {
    v22 = sub_24F92C4A8();
    result = (*(*(v22 - 8) + 8))(&v46, v22);
    goto LABEL_5;
  }

  v52[0] = v48[0];
  v52[1] = v48[1];
  v52[2] = v48[2];
  v53 = v49;
  v51[0] = v46;
  v51[1] = v47;
  v20 = *(v17 + 40);
  sub_24F92AEC8();
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(*(v19 - 8) + 8))(v51, v19);
    result = (*(v36 + 8))(v13, v37);
LABEL_5:
    v23 = v42;
    *(v42 + 32) = 0;
    *v23 = 0u;
    v23[1] = 0u;
    return result;
  }

  v34 = v14;
  (*(v14 + 32))(v39, v13, a3);
  v24 = v40;
  sub_24E615E00(v40, &v46);
  v33 = v19;
  __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
  v37 = v20;
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_24E615E00(v24, v45);
  sub_24E772724(v52 + 8, v43);
  v25 = v53;
  sub_24E612C80(v45, &v46);
  *(v48 + 8) = v43[0];
  *(&v48[1] + 8) = v43[1];
  *(&v48[2] + 1) = v44;
  v49 = v25;
  sub_24F92AEA8();
  v26 = v41;
  sub_24F92AED8();
  v27 = v39;
  v28 = (*(a4 + 16))(a3, a4);
  MEMORY[0x28223BE20](v28);
  *(&v33 - 4) = a3;
  *(&v33 - 3) = a4;
  *(&v33 - 2) = v26;
  v29 = v54;
  v30 = sub_24EB0AEC0(sub_24F069DF0, (&v33 - 6), v28);
  v54 = v29;

  sub_24E772724(v52 + 8, &v46);
  v31 = v38;
  (*(a4 + 24))(v30, a3, a4);

  v32 = v34;
  (*(v34 + 56))(v31, 0, 1, a3);
  sub_24F92AEA8();
  sub_24F92AED8();
  sub_24E615E00(v40, &v46);
  __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
  sub_24F928D68();
  (*(v32 + 8))(v27, a3);
  (*(*(v33 - 8) + 8))(v51);
  return __swift_destroy_boxed_opaque_existential_1(&v46);
}

double sub_24F068AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E615E00(a1, v9);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v9);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v3 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_24EBD5384();
  sub_24F92AEC8();
  sub_24E772780(v11);
  if (v10)
  {
    v4 = *(v3 - 8);
    (*(v4 + 16))(v8, v9, v3);
    v5 = sub_24F92C4A8();
    (*(*(v5 - 8) + 8))(v9, v5);
    sub_24E615E00(v8, a2);
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v7 = sub_24F92C4A8();
    (*(*(v7 - 8) + 8))(v9, v7);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionModel(containing:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_24EBD5384();
  sub_24F92AEC8();
  if (v8[3])
  {
    sub_24E772724(&v9, v10);
    (*(*(v4 - 8) + 8))(v8, v4);
    v12[0] = v10[0];
    v12[1] = v10[1];
    v13 = v11;
    ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a1, a2);
    return sub_24E772780(v12);
  }

  else
  {
    v6 = sub_24F92C4A8();
    (*(*(v6 - 8) + 8))(v8, v6);
    v7 = sub_24F928A68();
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_24F068E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v16[1] = a4;
  v17 = a3;
  v18 = a2;
  v4 = sub_24F928A68();
  v5 = sub_24F92C4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  v13 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(v13, v8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v14 = 0;
  }

  else
  {
    (*(v9 + 32))(v12, v8, v4);
    v14 = v17(v12);
    (*(v9 + 8))(v12, v4);
  }

  return v14 & 1;
}

uint64_t sub_24F069050(uint64_t a1)
{
  sub_24E615E00(a1, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v4);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_24EBD5384();
  sub_24F92AEA8();
  sub_24F92AE58();
  sub_24E772780(&v3);
  v1 = sub_24F92C4A8();
  return (*(*(v1 - 8) + 8))(v4, v1);
}

uint64_t sub_24F069170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 16))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_24F0691B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E615E00(a1, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v4);
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(a2);
  return sub_24E772780(v5);
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.debugIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_24F0692A4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {

    v7 = MEMORY[0x277D84F98];
    v8 = MEMORY[0x277D84F90];
LABEL_25:
    *v3 = v8;
    v3[1] = v7;
    return result;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277D84F90];
  while (v5 < *(a1 + 16))
  {
    sub_24E772724(v6, v33);
    if (!*(v7 + 2) || (sub_24E76DD40(v33), (v9 & 1) == 0))
    {
      v10 = *(v8 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v31[0] = v7;
      v12 = sub_24E76DD40(v33);
      v14 = *(v7 + 2);
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_27;
      }

      v18 = v13;
      if (*(v7 + 3) >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v20 = v12;
        sub_24E8AE134();
        v12 = v20;
        v7 = *&v31[0];
        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        *(*(v7 + 7) + 8 * v12) = v10;
      }

      else
      {
        sub_24E899B98(v17, isUniquelyReferenced_nonNull_native);
        v12 = sub_24E76DD40(v33);
        if ((v18 & 1) != (v19 & 1))
        {
          goto LABEL_29;
        }

LABEL_13:
        v7 = *&v31[0];
        if (v18)
        {
          goto LABEL_14;
        }

LABEL_16:
        *&v7[8 * (v12 >> 6) + 64] |= 1 << v12;
        v21 = v12;
        sub_24E772724(v33, *(v7 + 6) + 40 * v12);
        *(*(v7 + 7) + 8 * v21) = v10;
        v22 = *(v7 + 2);
        v16 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v16)
        {
          goto LABEL_28;
        }

        *(v7 + 2) = v23;
      }

      sub_24E772724(v33, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_24E616FEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v25 = *(v8 + 2);
      v24 = *(v8 + 3);
      if (v25 >= v24 >> 1)
      {
        v8 = sub_24E616FEC((v24 > 1), v25 + 1, 1, v8);
      }

      sub_24E772780(v33);
      *(v8 + 2) = v25 + 1;
      v26 = &v8[40 * v25];
      v27 = v32;
      v28 = v31[1];
      *(v26 + 2) = v31[0];
      *(v26 + 3) = v28;
      *(v26 + 8) = v27;
      goto LABEL_4;
    }

    sub_24E772780(v33);
LABEL_4:
    ++v5;
    v6 += 40;
    if (v4 == v5)
    {

      v3 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F06951C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F98];
    v6 = MEMORY[0x277D84F90];
LABEL_23:

    *a2 = v6;
    a2[1] = v5;
    return result;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  v6 = MEMORY[0x277D84F90];
  while (v4 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 8 * v4);
    if (!*(v5 + 2) || (sub_24E7728CC(*(a1 + 32 + 8 * v4)), (v8 & 1) == 0))
    {
      v9 = *(v6 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_24E7728CC(v7);
      v13 = *(v5 + 2);
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_25;
      }

      v17 = v12;
      if (*(v5 + 3) >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v19 = v11;
        sub_24E8B261C();
        v11 = v19;
        if ((v17 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        *(*(v5 + 7) + 8 * v11) = v9;
      }

      else
      {
        sub_24E8A188C(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_24E7728CC(v7);
        if ((v17 & 1) != (v18 & 1))
        {
          goto LABEL_27;
        }

LABEL_13:
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_16:
        *&v5[8 * (v11 >> 6) + 64] |= 1 << v11;
        *(*(v5 + 6) + 8 * v11) = v7;
        *(*(v5 + 7) + 8 * v11) = v9;
        v20 = *(v5 + 2);
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v5 + 2) = v21;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E615EC4(0, *(v6 + 2) + 1, 1, v6);
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      if (v23 >= v22 >> 1)
      {
        v6 = sub_24E615EC4((v22 > 1), v23 + 1, 1, v6);
      }

      *(v6 + 2) = v23 + 1;
      *&v6[8 * v23 + 32] = v7;
    }

    if (v3 == ++v4)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F06988C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 16))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_24F0698E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_24F06990C()
{
  sub_24F069BD8();
  if (v0 <= 0x3F)
  {
    sub_24F069C44();
    if (v1 <= 0x3F)
    {
      sub_24EBD5384();
      sub_24F92AEA8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
        sub_24F92AEA8();
        if (v3 <= 0x3F)
        {
          sub_24F069CA0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F069A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F069B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_24F069BD8()
{
  if (!qword_27F238030)
  {
    sub_24EBD5384();
    v0 = sub_24F922E38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F238030);
    }
  }
}

void sub_24F069C44()
{
  if (!qword_27F238038)
  {
    sub_24EBD5384();
    v0 = type metadata accessor for OrderedSet();
    if (!v1)
    {
      atomic_store(v0, &qword_27F238038);
    }
  }
}

void sub_24F069CA0()
{
  if (!qword_27F238040[0])
  {
    v0 = sub_24F92BAF8();
    if (!v1)
    {
      atomic_store(v0, qword_27F238040);
    }
  }
}

uint64_t sub_24F069CF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F069D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F069D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F069E10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

JUMeasurements __swiftcall BoundsBasedPlaceable.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v6 = *v2;
  sub_24F922A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F941C80;
  *(v7 + 32) = with;
  v8 = with.super.isa;
  v9 = sub_24F922A28();
  [v6 measurementsWithFitting:v9 in:{width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

Swift::Void __swiftcall BoundsBasedPlaceable.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v7 = *v2;
  [*v2 bounds];
  [v7 setBounds_];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);

  [v7 setCenter_];
}

double sub_24F06A020(void *a1, double a2, double a3)
{
  v7 = *v3;
  sub_24F922A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F941C80;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_24F922A28();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

id sub_24F06A0F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  [*v4 bounds];
  [v9 setBounds_];
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  MidY = CGRectGetMidY(v15);

  return [v9 setCenter_];
}

uint64_t StoreTab.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 4)
  {
    if (v2 <= 7)
    {
      if (v2 == 5)
      {
        v3 = 0x656461637261;
      }

      else if (v2 == 6)
      {
        v3 = 0x6465727574616566;
      }

      else
      {
        v3 = 0x69726F6765746163;
      }

      goto LABEL_25;
    }

    switch(v2)
    {
      case 8:
        v3 = 0x737472616863;
        goto LABEL_25;
      case 9:
        v3 = 0x6573616863727570;
        goto LABEL_25;
      case 10:
        v3 = 0x64616F6C6E776F64;
        goto LABEL_25;
    }

LABEL_24:
    v3 = *v0;
    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x7961646F74;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v3 = 0x73656D6167;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v2 == 2)
  {
    v3 = 1936748641;
  }

  else if (v2 == 3)
  {
    v3 = 0x73657461647075;
  }

  else
  {
    v3 = 0x686372616573;
  }

LABEL_25:
  sub_24E8E2880(v1, v2);
  return v3;
}

uint64_t StoreTab.Identifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x73656D6167 && v3 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 1936748641 && v3 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x73657461647075 && v3 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x686372616573 && v3 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0x6465727574616566 && v3 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0x69726F6765746163 && v3 == 0xEA00000000007365 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0x737472616863 && v3 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0x6573616863727570 && v3 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0x64616F6C6E776F64 && v3 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0x656461637261 && v3 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0 || v4 == 0x746F6C65636FLL && v3 == 0xE600000000000000 || (result = sub_24F92CE08(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 5;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t sub_24F06A738()
{
  v0 = type metadata accessor for StoreTab();
  v1 = (v0 - 8);
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C48);
  v29 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93A400;
  v27 = v9 + v8;
  v28 = v9;
  v10 = sub_24F91F4A8();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v12 = sub_24E60C478(MEMORY[0x277D84F90]);
  *v4 = xmmword_24F943570;
  sub_24E99091C(v7, &v4[v1[8]]);
  v13 = &v4[v1[9]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[v1[11]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v30 = 0x73657461647075;
  v31 = 0xE700000000000000;
  sub_24E600AEC();
  v15 = sub_24F92C4F8();
  v17 = v16;
  sub_24E70E058(v7);
  *(v4 + 2) = v15;
  *(v4 + 3) = v17;
  *&v4[v1[10]] = v12;
  v18 = v27;
  sub_24E9E82E8(v4, v27);
  v11(v7, 1, 1, v10);
  v19 = sub_24E60C478(MEMORY[0x277D84F90]);
  *v4 = xmmword_24F9C3230;
  sub_24E99091C(v7, &v4[v1[8]]);
  v20 = &v4[v1[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v4[v1[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v30 = 0x686372616573;
  v31 = 0xE600000000000000;
  v22 = sub_24F92C4F8();
  v24 = v23;
  sub_24E70E058(v7);
  *(v4 + 2) = v22;
  *(v4 + 3) = v24;
  *&v4[v1[10]] = v19;
  result = sub_24E9E82E8(v4, v18 + v29);
  qword_27F2380C8 = v28;
  return result;
}

uint64_t static StoreTab.fallbackTabs.getter()
{
  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static StoreTab.fallbackTabs.setter(uint64_t a1)
{
  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F2380C8 = a1;
}

uint64_t (*static StoreTab.fallbackTabs.modify())()
{
  if (qword_27F210EA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double StoreTab.Identifier.init(navigationTab:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2 > 4)
  {
    if (*a1 > 6u)
    {
      if (v2 == 7)
      {
        result = 0.0;
        *a2 = xmmword_24F9C3240;
        return result;
      }

      goto LABEL_10;
    }

    result = 0.0;
    if (v2 == 5)
    {
      *a2 = xmmword_24F9C3230;
    }

    else
    {
      *a2 = xmmword_24F943570;
    }
  }

  else
  {
    if (*a1 <= 2u)
    {
      if (v2 >= 2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        return result;
      }

LABEL_10:
      result = 0.0;
      *a2 = xmmword_24F96AF30;
      return result;
    }

    result = 0.0;
    if (v2 == 3)
    {
      *a2 = xmmword_24F986140;
    }

    else
    {
      *a2 = xmmword_24F9406F0;
    }
  }

  return result;
}

uint64_t StoreTab.Identifier.fallbackPageContext.getter()
{
  StoreTab.Identifier.rawValue.getter();
  sub_24E600AEC();
  v0 = sub_24F92C4F8();

  return v0;
}

uint64_t sub_24F06ACDC@<X0>(uint64_t *a1@<X8>)
{
  result = StoreTab.Identifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24F06AD08()
{
  result = qword_27F2380D0[0];
  if (!qword_27F2380D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2380D0);
  }

  return result;
}

uint64_t sub_24F06AD5C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24F204B30(v4, v1, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24F06ADB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24F204B30(v4, v1, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24F06ADF8()
{
  v0 = StoreTab.Identifier.rawValue.getter();
  v2 = v1;
  if (v0 == StoreTab.Identifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit0B3TabV10IdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24F06AEA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 16))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F06AF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 10;
    }
  }

  return result;
}

uint64_t sub_24F06AF60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for BaseShelfPageView();
  v9 = v8[13];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *a4 = sub_24F923C28();
  a4[1] = v10;
  result = sub_24E6009C8(a1, a4 + v8[15], &qword_27F2325E8);
  v12 = (a4 + v8[14]);
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t sub_24F06B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  if (a4)
  {
    v18 = a4;
    type metadata accessor for Shelf();

    sub_24F928A78();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  if (a5)
  {
    v18 = a5;
    type metadata accessor for Shelf();

    sub_24F928A78();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
  return sub_24E6009C8(v11, a1, &unk_27F23A690);
}

uint64_t sub_24F06B238@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = a1[2];
  v9 = a1[3];
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  v10 = a1[4];
  v11 = a1[5];
  *(v7 + 4) = v10;
  *(v7 + 5) = v11;
  (*(v3 + 32))(&v7[v6], v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0);
  v38 = v8;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v13 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v14 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0);
  v38 = v12;
  v39 = MEMORY[0x277D84030];
  v40 = v13;
  v41 = v14;
  v42 = MEMORY[0x277D84038];
  sub_24F927248();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_24F921D68();
  v16 = swift_getWitnessTable();
  v38 = v15;
  v39 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_24F928FD8();
  v38 = v15;
  v39 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = OpaqueTypeMetadata2;
  v39 = v18;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  sub_24F924038();
  v38 = OpaqueTypeMetadata2;
  v39 = v18;
  v40 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_24E602068(&qword_27F22C798, &qword_27F22C7A0);
  v35 = v20;
  v36 = v21;
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x277CE0880];
  v22 = swift_getWitnessTable();
  v23 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  v31 = v22;
  v32 = v23;
  swift_getWitnessTable();
  sub_24F924278();
  swift_getWitnessTable();
  v29 = sub_24F923B78();
  v30 = v24;
  v25 = sub_24F923B88();
  v26 = swift_getWitnessTable();
  sub_24E7896B8(&v29, v25, v26);

  v29 = v38;
  v30 = v39;
  sub_24E7896B8(&v29, v25, v26);
}

uint64_t sub_24F06B70C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a5;
  v51 = a6;
  v53 = a7;
  v54 = a3;
  v52 = a2;
  v49 = sub_24F9239C8();
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a3;
  v65 = a4;
  v15 = a4;
  v48 = a4;
  v66 = a5;
  v67 = a6;
  v16 = type metadata accessor for BaseShelfPageView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v48 - v20;
  (*(v17 + 16))(&v48 - v20, v52, v16, v19);
  v22 = a1;
  v23 = v49;
  (*(v12 + 16))(v14, v22, v49);
  v24 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v25 = (v18 + *(v12 + 80) + v24) & ~*(v12 + 80);
  v26 = swift_allocObject();
  v26[2] = v54;
  v26[3] = v15;
  v28 = v50;
  v27 = v51;
  v26[4] = v50;
  v26[5] = v27;
  v29 = *(v17 + 32);
  v30 = v26 + v24;
  v31 = v26;
  v52 = v26;
  v29(v30, v21, v16);
  (*(v12 + 32))(v31 + v25, v14, v23);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0);
  v64 = v54;
  v65 = v48;
  v66 = v28;
  v67 = v27;
  v33 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v34 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0);
  v64 = v32;
  v65 = MEMORY[0x277D84030];
  v66 = v33;
  v67 = v34;
  v68 = MEMORY[0x277D84038];
  sub_24F927248();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v35 = sub_24F921D68();
  v36 = swift_getWitnessTable();
  v64 = v35;
  v65 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = sub_24F928FD8();
  v64 = v35;
  v65 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeMetadata2;
  v65 = v38;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  sub_24F924038();
  v64 = OpaqueTypeMetadata2;
  v65 = v38;
  v66 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_24E602068(&qword_27F22C798, &qword_27F22C7A0);
  v61 = v40;
  v62 = v41;
  v59 = swift_getWitnessTable();
  v60 = MEMORY[0x277CE0880];
  v42 = swift_getWitnessTable();
  v43 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  v57 = v42;
  v58 = v43;
  swift_getWitnessTable();
  v55 = sub_24F924268();
  v56 = v44;
  v45 = sub_24F924278();
  v46 = swift_getWitnessTable();
  sub_24E7896B8(&v55, v45, v46);

  v55 = v64;
  v56 = v65;
  sub_24E7896B8(&v55, v45, v46);
}

uint64_t sub_24F06BCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v171 = a3;
  v174 = a2;
  v180 = a1;
  v170 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v12 - 8);
  v169 = &v128 - v13;
  v194 = a4;
  v195 = a5;
  v14 = a4;
  v182 = a4;
  v178 = a5;
  v196 = a6;
  v197 = a7;
  v153 = a7;
  v175 = type metadata accessor for BaseShelfPageView();
  v152 = *(v175 - 8);
  v155 = *(v152 + 64);
  MEMORY[0x28223BE20](v175);
  v176 = &v128 - v15;
  v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0);
  v194 = v14;
  v195 = a5;
  v196 = a6;
  v197 = a7;
  v17 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v18 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0);
  v194 = v16;
  v195 = MEMORY[0x277D84030];
  v196 = v17;
  v197 = v18;
  v198 = MEMORY[0x277D84038];
  v150 = sub_24F927248();
  WitnessTable = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v19 = sub_24F921D68();
  v156 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v144 = &v128 - v20;
  v21 = swift_getWitnessTable();
  v194 = v19;
  v195 = v21;
  v139 = v19;
  v22 = v21;
  v140 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v138 = OpaqueTypeMetadata2;
  v154 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v141 = &v128 - v24;
  v25 = sub_24F928FD8();
  v181 = v25;
  v194 = v19;
  v195 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v194 = OpaqueTypeMetadata2;
  v195 = v25;
  v196 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v157 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v177 = &v128 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0);
  v158 = v26;
  v28 = sub_24F924038();
  v160 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v159 = &v128 - v29;
  v161 = v30;
  v31 = sub_24F924038();
  v163 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v162 = &v128 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  v165 = v31;
  v168 = sub_24F924038();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v164 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v166 = &v128 - v35;
  v146 = type metadata accessor for ShelfBasedPageScrollActionImplementation();
  MEMORY[0x28223BE20](v146);
  v37 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v131 = *(v38 - 8);
  v172 = v131;
  v134 = *(v131 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v132 = &v128 - v42;
  MEMORY[0x28223BE20](v43);
  v173 = &v128 - v44;
  MEMORY[0x28223BE20](v45);
  v183 = &v128 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v47 - 8);
  v147 = &v128 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v179 = &v128 - v50;
  v133 = a6;
  v51 = *(a6 + 88);
  v135 = a6 + 88;
  v136 = v51;
  swift_unknownObjectRetain();
  v51(v182, a6);
  swift_unknownObjectRelease();
  sub_24F928EF8();

  v52 = sub_24F924098();
  v145 = *(v52 - 8);
  v53 = *(v145 + 16);
  v149 = v52;
  v143 = v145 + 16;
  v142 = v53;
  (v53)(v37, v180);
  sub_24F929298();
  v54 = v172;
  v55 = v172 + 16;
  v56 = *(v172 + 16);
  v57 = v132;
  v56(v132, v40, v38);
  sub_24F074340(&qword_27F238200, type metadata accessor for ShelfBasedPageScrollActionImplementation);
  sub_24F929238();
  v58 = v54;
  v60 = v54 + 8;
  v59 = *(v54 + 8);
  v59(v40, v38);
  sub_24F073D6C(v37, type metadata accessor for ShelfBasedPageScrollActionImplementation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8);
  v131 = *(v58 + 80);
  v61 = (v131 + 32) & ~v131;
  v62 = swift_allocObject();
  v63 = v57;
  v56((v62 + v61), v57, v38);
  v64 = v173;
  sub_24F929298();
  v56(v40, (v62 + v61), v38);
  v130 = v55;
  swift_setDeallocating();
  v59((v62 + v61), v38);
  swift_deallocClassInstance();
  sub_24F929228();
  v59(v40, v38);
  v59(v63, v38);
  v56(v183, v64, v38);
  v65 = v56;
  sub_24E60169C(v179, v147, &qword_27F220FF0);
  sub_24F929248();
  v66 = v64;
  v147 = v60;
  v146 = v59;
  v59(v64, v38);
  v67 = v175;
  v68 = v174;
  sub_24F06D008(v171, v175);
  v70 = v69;
  v72 = v71;
  swift_unknownObjectRetain();
  v73 = v182;
  v74 = v133;
  v75 = sub_24EE649DC(v182, v133);
  swift_unknownObjectRelease();
  v194 = v75;
  v76 = v152;
  v132 = *(v152 + 16);
  v77 = v176;
  (v132)(v176, v68, v67);
  v65(v66, v183, v38);
  v78 = *(v76 + 80);
  v79 = v76;
  v155 += (v78 + 48) & ~v78;
  v80 = (v78 + 48) & ~v78;
  v129 = v80;
  v130 = v78 | 7;
  v81 = (v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v131 + v81 + 16) & ~v131;
  v83 = swift_allocObject();
  v84 = v178;
  *(v83 + 2) = v73;
  *(v83 + 3) = v84;
  v85 = v153;
  *(v83 + 4) = v74;
  *(v83 + 5) = v85;
  v152 = *(v79 + 32);
  v86 = v77;
  v87 = v175;
  (v152)(&v83[v80], v86, v175);
  v88 = &v83[v81];
  *v88 = v70;
  *(v88 + 1) = v72;
  v89 = *(v172 + 32);
  v90 = v173;
  v173 = v38;
  v89(&v83[v82], v90, v38);
  sub_24F921A38();
  v91 = v144;
  v92 = v74;
  sub_24F921D78();
  v93 = v176;
  (v132)(v176, v174, v87);
  v94 = v138;
  v95 = swift_allocObject();
  v96 = v182;
  v97 = v178;
  v95[2] = v182;
  v95[3] = v97;
  v95[4] = v92;
  v95[5] = v85;
  v98 = v93;
  v99 = v181;
  (v152)(v95 + v129, v98, v87);
  v100 = v141;
  v101 = v139;
  sub_24F926638();

  (*(v156 + 8))(v91, v101);
  swift_unknownObjectRetain();
  v136(v96, v92);
  swift_unknownObjectRelease();
  v102 = OpaqueTypeConformance2;
  sub_24F925EC8();

  (*(v154 + 8))(v100, v94);
  swift_getKeyPath();
  swift_unknownObjectRetain();
  LOBYTE(v87) = sub_24EE64434(v96, v92);
  swift_unknownObjectRelease();
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  if (v87)
  {
    sub_24F923988();
  }

  v194 = v103;
  v195 = v104;
  v196 = v105;
  v197 = v106;
  v190 = v94;
  v191 = v99;
  v192 = v102;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = v159;
  v109 = v158;
  v110 = v177;
  sub_24F9261B8();

  (*(v157 + 8))(v110, v109);
  swift_unknownObjectRetain();
  v111 = sub_24EE64434(v96, v92);
  swift_unknownObjectRelease();
  if ((v111 & 1) == 0 || (v112 = sub_24F925818(), sub_24F925848(), sub_24F925848(), sub_24F925848() != v112))
  {
    sub_24F925848();
  }

  sub_24F924058();
  v113 = sub_24E602068(&qword_27F22C798, &qword_27F22C7A0);
  v188 = v107;
  v189 = v113;
  v114 = v161;
  v115 = swift_getWitnessTable();
  v116 = v162;
  sub_24F926438();
  (*(v160 + 8))(v108, v114);
  swift_getKeyPath();
  v117 = v169;
  v118 = v149;
  v142(v169, v180, v149);
  (*(v145 + 56))(v117, 0, 1, v118);
  v186 = v115;
  v187 = MEMORY[0x277CE0880];
  v119 = v165;
  v120 = swift_getWitnessTable();
  v121 = v164;
  sub_24F9261B8();

  sub_24E601704(v117, &qword_27F220F50);
  (*(v163 + 8))(v116, v119);
  v146(v183, v173);
  sub_24E601704(v179, &qword_27F220FF0);
  v122 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  v184 = v120;
  v185 = v122;
  v123 = v168;
  v124 = swift_getWitnessTable();
  v125 = v166;
  sub_24E7896B8(v121, v123, v124);
  v126 = *(v167 + 8);
  v126(v121, v123);
  sub_24E7896B8(v125, v123, v124);
  return (v126)(v125, v123);
}

uint64_t sub_24F06D008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  swift_unknownObjectRetain();
  LOBYTE(v2) = sub_24EE64434(v2, v3);
  swift_unknownObjectRelease();
  result = sub_24F923998();
  if (v2)
  {
    sub_24F923998();
    return sub_24F923988();
  }

  return result;
}

uint64_t sub_24F06D090@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v69 = a3;
  v70 = a8;
  v63 = a2;
  v71 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v61 = *(v74 - 8);
  v68 = *(v61 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v50 - v16;
  v76 = a4;
  v77 = a5;
  v54 = a4;
  v17 = a5;
  v55 = a5;
  v78 = a6;
  v79 = a7;
  v56 = a7;
  v58 = type metadata accessor for BaseShelfPageView();
  v72 = *(v58 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x28223BE20](v58);
  v20 = &v50 - v19;
  v51 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2381E0);
  v65 = v21;
  MEMORY[0x28223BE20](v21);
  v53 = &v50 - v22;
  v76 = a4;
  v77 = v17;
  v78 = a6;
  v79 = a7;
  v23 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v60 = v23;
  v64 = sub_24E602068(&qword_27F2381E8, &qword_27F2381E0);
  v76 = v21;
  v77 = MEMORY[0x277D84030];
  v78 = v23;
  v79 = v64;
  v80 = MEMORY[0x277D84038];
  v62 = sub_24F927248();
  v67 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v59 = &v50 - v26;
  MEMORY[0x28223BE20](v27);
  v66 = &v50 - v28;
  v71 = *v71;
  v76 = v71;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225188);
  sub_24E602068(qword_27F238210, &qword_27F225188);
  sub_24F921BA8();
  KeyPath = swift_getKeyPath();
  v29 = v72;
  v30 = v58;
  (*(v72 + 16))(v20, v63, v58);
  v31 = v61;
  (*(v61 + 16))(v73, v69, v74);
  v32 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v33 = (v18 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v31 + 80) + v33 + 16) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = v54;
  v37 = v55;
  *(v35 + 2) = v54;
  *(v35 + 3) = v37;
  v38 = v56;
  *(v35 + 4) = a6;
  *(v35 + 5) = v38;
  v39 = v72;
  *(v35 + 6) = v71;
  (*(v39 + 32))(&v35[v32], v51, v30);
  v40 = &v35[v33];
  *v40 = a9;
  v40[1] = a10;
  (*(v31 + 32))(&v35[v34], v73, v74);
  v41 = swift_allocObject();
  v41[2] = v36;
  v41[3] = v37;
  v41[4] = a6;
  v41[5] = v38;
  v41[6] = sub_24F072DE0;
  v41[7] = v35;

  WitnessTable = swift_getWitnessTable();
  v42 = v57;
  sub_24F927228();
  swift_getKeyPath();
  v43 = v59;
  v44 = v62;
  sub_24F927208();

  v45 = *(v67 + 8);
  v45(v42, v44);
  v75 = WitnessTable;
  v46 = swift_getWitnessTable();
  v47 = v66;
  sub_24E7896B8(v43, v44, v46);
  v45(v43, v44);
  sub_24E7896B8(v47, v44, v46);
  return (v45)(v47, v44);
}

uint64_t sub_24F06D6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v50 = a5;
  v51 = a2;
  v48 = a4;
  v46 = a3;
  *&v47 = a1;
  v52 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  MEMORY[0x28223BE20](v17 - 8);
  v49 = v42 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v19 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42[3] = a6;
  v43 = v42 - v20;
  *&v53 = a6;
  *(&v53 + 1) = a7;
  v42[1] = a8;
  v42[2] = a7;
  v54 = a8;
  v55 = a12;
  v21 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v44 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v42 - v25;
  v27 = v46;

  sub_24F06DA60(v47, v27, &v53);
  v47 = v53;
  v28 = v54;
  *&v53 = a6;
  *(&v53 + 1) = a7;
  v54 = a8;
  v55 = a12;
  v29 = type metadata accessor for BaseShelfPageView();
  v30 = v48;
  v31 = *(v48 + 8);
  v53 = v47;
  v54 = v28;
  v32 = v43;
  (*(v19 + 16))(v43, v50, v45);
  v33 = *(v29 + 60);
  v34 = v30;
  v35 = (v30 + *(v29 + 56));
  v37 = *v35;
  v36 = v35[1];
  v38 = v49;
  sub_24E60169C(v34 + v33, v49, &qword_27F2325E8);
  sub_24F06DB9C(v31, v51, &v53, v32, v37, v36, v38, v23, a10, a11);
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v23, v21, WitnessTable);
  v40 = *(v44 + 8);
  swift_unknownObjectRetain();

  v40(v23, v21);
  sub_24E7896B8(v26, v21, WitnessTable);
  return (v40)(v26, v21);
}

unint64_t sub_24F06DA60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 <= 0)
  {
    v3 = 0;
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  result = a1 - 1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](result, a2);
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

LABEL_7:
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v9 = MEMORY[0x253052270](result, a2);
    goto LABEL_13;
  }

  v3 = *(a2 + 8 * result + 32);

  if (!(a2 >> 62))
  {
    goto LABEL_7;
  }

LABEL_17:
  result = sub_24F92C738();
  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_8:
  if (v8 <= a1)
  {

    v9 = 0;
    goto LABEL_15;
  }

  result = a1 + 1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (a1 < -1)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(a2 + 8 * result + 32);

LABEL_13:

LABEL_15:
    *a3 = a1;
    a3[1] = v3;
    a3[2] = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F06DB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v29 = *a3;
  v18 = *(a3 + 2);
  v19 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v20 = v19[21];
  *(a8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v21 = v19[22];
  *(a8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v22 = v19[23];
  *(a8 + v22) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v23 = a8 + v19[24];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  v24 = v19[25];
  *(a8 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + v19[19]) = *(*(a2 + 24) + 16);
  *(a8 + v19[20]) = *(a2 + 16);
  *(a8 + 16) = v29;
  *(a8 + 32) = v18;
  *(a8 + 40) = a9;
  *(a8 + 48) = a10;
  v25 = v19[16];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  (*(*(v26 - 8) + 32))(a8 + v25, a4, v26);
  v27 = (a8 + v19[17]);
  *v27 = a5;
  v27[1] = a6;
  return sub_24E6009C8(a7, a8 + v19[18], &qword_27F2325E8);
}

uint64_t sub_24F06DDD4()
{
  v0 = sub_24F92C7A8();
  MEMORY[0x253050C20](v0);

  MEMORY[0x253050C20](95, 0xE100000000000000);
  sub_24F92CA38();
  return sub_24F92C7F8();
}

uint64_t sub_24F06DE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_24F923608() & 1;
  result = sub_24F923608();
  if (v8 != (result & 1))
  {
    type metadata accessor for BaseShelfPageView();
    v10 = *(a6 + 184);
    swift_unknownObjectRetain();
    v10(a4, a6);
    swift_unknownObjectRelease();
    v11 = sub_24F923608();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if ((v11 & 1) == 0)
    {
      if (a4)
      {
        sub_24EEC66B8();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

double sub_24F06DFF4()
{
  sub_24F072B1C();
  sub_24F924868();
  return v1;
}

double sub_24F06E034@<D0>(_OWORD *a1@<X8>)
{
  sub_24F072B1C();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24F06E0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v31 = a1;
  v4 = a1 - 8;
  v30 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v29[1] = v5;
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 32);
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2382A8);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v7 = sub_24F927108();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  sub_24F924C98();
  v14 = *(v4 + 24);
  v37 = v14;
  v38 = v6;
  v36 = *(v4 + 40);
  v39 = v36;
  v40 = v2;
  sub_24F9270F8();
  WitnessTable = swift_getWitnessTable();
  v34 = v13;
  v33 = WitnessTable;
  sub_24E7896B8(v10, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v10, v7);
  if (*(v2 + 32))
  {
    goto LABEL_2;
  }

  (*(v36 + 112))(&v44, v14);
  if (v47)
  {
    sub_24E612B0C(&v44, &v48);
  }

  else
  {

    v48 = v44;
    v49 = v45;
  }

  v44 = v48;
  v45 = v49;
  v19 = *(&v49 + 1);
  sub_24E601704(&v44, &qword_27F2129B0);
  if (!v19)
  {
LABEL_2:
    v48 = 0uLL;
    *&v44 = v14;
    *(&v44 + 1) = v6;
    v45 = v36;
    type metadata accessor for BaseShelfPageView.PaginationView();
    swift_getWitnessTable();
    sub_24E8D5004(&v48, &v44);
    v18 = *(&v44 + 1);
    v17 = v44;
  }

  else
  {
    v29[0] = v16;
    v20 = v30;
    v21 = v31;
    (*(v30 + 16))(v32, v3, v31);
    v22 = (*(v20 + 80) + 48) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v14;
    *(v23 + 24) = v6;
    *(v23 + 32) = v36;
    (*(v20 + 32))(v23 + v22, v32, v21);
    v16 = v29[0];
    *&v48 = &unk_24F9C3770;
    *(&v48 + 1) = v23;
    *&v44 = v14;
    *(&v44 + 1) = v6;
    v45 = v36;
    v24 = type metadata accessor for BaseShelfPageView.PaginationView();
    v25 = swift_getWitnessTable();
    sub_24E7896B8(&v48, v24, v25);

    v43 = v44;
    sub_24E7896B8(&v43, v24, v25);

    v42 = v48;
    sub_24E8D5004(&v42, &v43);

    v18 = *(&v43 + 1);
    v17 = v43;
  }

  v26 = v34;
  (*(v8 + 16))(v10, v34, v7);
  *&v43 = v17;
  *(&v43 + 1) = v18;
  *&v48 = v10;
  *(&v48 + 1) = &v43;
  sub_24E5FCA4C(v17);
  *&v42 = v7;
  *&v27 = v14;
  *(&v27 + 1) = v6;
  v44 = v27;
  v45 = v36;
  type metadata accessor for BaseShelfPageView.PaginationView();
  *(&v42 + 1) = sub_24F92C4A8();
  *&v44 = v33;
  v41 = swift_getWitnessTable();
  *(&v44 + 1) = swift_getWitnessTable();
  sub_24F57BA64(&v48, 2uLL, &v42);
  sub_24E824448(v17);
  v16(v26, v7);
  sub_24E824448(v43);
  return (v16)(v10, v7);
}

uint64_t sub_24F06E6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v265 = a6;
  v307 = a2;
  v321[0] = a2;
  v321[1] = a3;
  v321[2] = a4;
  v321[3] = a5;
  v309 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v262 = *(v309 - 1);
  v258 = *(v262 + 64);
  MEMORY[0x28223BE20](v309);
  v260 = &v231 - v10;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v257);
  v256 = &v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v255 = &v231 - v13;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2382A8);
  MEMORY[0x28223BE20](v259);
  v264 = &v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v261 = &v231 - v16;
  v17 = sub_24F924848();
  v251 = *(v17 - 8);
  v252 = v17;
  MEMORY[0x28223BE20](v17);
  v248 = &v231 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_24F925218();
  v301 = *(v304 - 1);
  MEMORY[0x28223BE20](v304);
  v245 = &v231 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v305);
  v274 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v244 = &v231 - v22;
  MEMORY[0x28223BE20](v23);
  v279 = &v231 - v24;
  MEMORY[0x28223BE20](v25);
  v240 = &v231 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v27 - 8);
  v233 = &v231 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v272 = &v231 - v30;
  MEMORY[0x28223BE20](v31);
  v273 = &v231 - v32;
  MEMORY[0x28223BE20](v33);
  v232 = &v231 - v34;
  MEMORY[0x28223BE20](v35);
  v270 = &v231 - v36;
  MEMORY[0x28223BE20](v37);
  v271 = &v231 - v38;
  MEMORY[0x28223BE20](v39);
  v239 = &v231 - v40;
  MEMORY[0x28223BE20](v41);
  v268 = &v231 - v42;
  MEMORY[0x28223BE20](v43);
  v269 = &v231 - v44;
  MEMORY[0x28223BE20](v45);
  v236 = &v231 - v46;
  MEMORY[0x28223BE20](v47);
  v266 = &v231 - v48;
  MEMORY[0x28223BE20](v49);
  *&v267 = &v231 - v50;
  v289 = sub_24F923E98();
  v303 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v288 = &v231 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v278 = (&v231 - v53);
  v306 = type metadata accessor for PageEnvironment();
  MEMORY[0x28223BE20](v306);
  v290 = &v231 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v280 = &v231 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v57 - 8);
  v247 = &v231 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v246 = &v231 - v60;
  MEMORY[0x28223BE20](v61);
  v287 = &v231 - v62;
  MEMORY[0x28223BE20](v63);
  v286 = &v231 - v64;
  MEMORY[0x28223BE20](v65);
  v277 = &v231 - v66;
  MEMORY[0x28223BE20](v67);
  v276 = &v231 - v68;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v302 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v284 = &v231 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v275 = (&v231 - v71);
  v72 = *(a3 - 8);
  MEMORY[0x28223BE20](v73);
  v75 = &v231 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v78 = &v231 - v77;
  v79 = sub_24F92C4A8();
  v292 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v81 = &v231 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v82);
  v293 = &v231 - v84;
  v294 = a5;
  v85 = *(a1 + 24);
  v308 = a4;
  if (v85)
  {
    v86 = 1;
  }

  else
  {
    (*(a1 + v309[17]))(v83);
    sub_24E7896B8(v75, a3, v294);
    v87 = *(v72 + 8);
    v87(v75, a3);
    sub_24E7896B8(v78, a3, v294);
    v87(v78, a3);
    (*(v72 + 32))(v81, v75, a3);
    v86 = 0;
  }

  (*(v72 + 56))(v81, v86, 1, a3, v83);
  v263 = a3;
  sub_24E8D5004(v81, v293);
  v88 = *(v292 + 8);
  v253 = v81;
  v254 = v79;
  v249 = v88;
  v250 = v292 + 8;
  v88(v81, v79);
  [objc_opt_self() _readableWidth];
  v89 = *(a1 + 40);
  v91 = (v89 - v90) * 0.5;
  if (v91 < 0.0)
  {
    v92 = 0.0;
  }

  else
  {
    v92 = v91;
  }

  v93 = *a1;
  v94 = *(v308 + 72);
  v282 = v308 + 72;
  v283 = v93;
  v281 = v94;
  (v94)(v323, v307);
  v237 = v325;
  v238 = v324;
  v235 = __swift_project_boxed_opaque_existential_1(v323, v324);
  v321[0] = *(a1 + 8);
  v95 = v321[0];
  v96 = type metadata accessor for Shelf();
  v291 = v95;
  swift_retain_n();
  v243 = v96;
  sub_24F928A78();
  sub_24F06B050(v276, v277, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v97 = *(a1 + 48);
  v98 = v309;
  v242 = a1 + v309[21];
  sub_24F769788(v278);
  v99 = *&v267;
  v241 = a1 + v98[22];
  sub_24F769764(*&v267);
  v100 = v301;
  v101 = *(v301 + 104);
  v102 = v266;
  v299 = *MEMORY[0x277CE0558];
  v103 = v304;
  v298 = v301 + 104;
  v297 = v101;
  v101(v266);
  v104 = *(v100 + 56);
  v296 = v100 + 56;
  v295 = v104;
  v104(v102, 0, 1, v103);
  v105 = *(v305 + 48);
  v106 = v240;
  sub_24E60169C(v99, v240, &qword_27F215598);
  sub_24E60169C(v102, v106 + v105, &qword_27F215598);
  v107 = *(v100 + 48);
  v108 = (v107)(v106, 1, v103);
  v310 = a1;
  v300 = v100 + 48;
  if (v108 == 1)
  {
    sub_24E601704(v102, &qword_27F215598);
    sub_24E601704(v99, &qword_27F215598);
    v109 = (v107)(v106 + v105, 1, v103);
    v110 = v269;
    v111 = v107;
    if (v109 == 1)
    {
      sub_24E601704(v106, &qword_27F215598);
      v234 = 1;
      v112 = v309;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v113 = v236;
  sub_24E60169C(v106, v236, &qword_27F215598);
  v111 = v107;
  if ((v107)(v106 + v105, 1, v103) == 1)
  {
    sub_24E601704(v266, &qword_27F215598);
    sub_24E601704(*&v267, &qword_27F215598);
    (*(v301 + 8))(v113, v103);
    v110 = v269;
LABEL_12:
    sub_24E601704(v106, &unk_27F254F20);
    v234 = 0;
    v112 = v309;
    goto LABEL_14;
  }

  v114 = v301;
  v115 = v245;
  (*(v301 + 32))(v245, v106 + v105, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570]);
  v234 = sub_24F92AFF8();
  v116 = *(v114 + 8);
  v116(v115, v304);
  sub_24E601704(v266, &qword_27F215598);
  sub_24E601704(*&v267, &qword_27F215598);
  v116(v113, v304);
  v103 = v304;
  sub_24E601704(v106, &qword_27F215598);
  v112 = v309;
  v110 = v269;
LABEL_14:
  v117 = v268;
  v240 = v112[23];
  sub_24F769764(v110);
  v297(v117, v299, v103);
  v295(v117, 0, 1, v103);
  v118 = *(v305 + 48);
  v119 = v279;
  sub_24E60169C(v110, v279, &qword_27F215598);
  sub_24E60169C(v117, &v119[v118], &qword_27F215598);
  if ((v111)(v119, 1, v103) == 1)
  {
    sub_24E601704(v117, &qword_27F215598);
    v120 = v279;
    sub_24E601704(v110, &qword_27F215598);
    if ((v111)(&v120[v118], 1, v103) == 1)
    {
      sub_24E601704(v120, &qword_27F215598);
      v121 = 1;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v122 = v239;
  sub_24E60169C(v119, v239, &qword_27F215598);
  if ((v111)(&v119[v118], 1, v103) == 1)
  {
    sub_24E601704(v268, &qword_27F215598);
    v120 = v279;
    sub_24E601704(v269, &qword_27F215598);
    (*(v301 + 8))(v122, v103);
LABEL_19:
    sub_24E601704(v120, &unk_27F254F20);
    v121 = 0;
    goto LABEL_21;
  }

  v123 = v301;
  v124 = &v119[v118];
  v125 = v245;
  (*(v301 + 32))(v245, v124, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570]);
  v121 = sub_24F92AFF8();
  v126 = *(v123 + 8);
  v126(v125, v304);
  sub_24E601704(v268, &qword_27F215598);
  sub_24E601704(v269, &qword_27F215598);
  v126(v122, v304);
  v103 = v304;
  sub_24E601704(v119, &qword_27F215598);
LABEL_21:
  v127 = v309;
  v279 = v111;
  v128 = *MEMORY[0x277D768C8];
  v129 = *(MEMORY[0x277D768C8] + 8);
  v130 = *(MEMORY[0x277D768C8] + 16);
  v131 = *(MEMORY[0x277D768C8] + 24);
  v132 = &v280[*(v306 + 28)];
  v133 = v310;
  v239 = v309[25];
  sub_24F7699B0(v132);
  v134 = (v133 + v127[24]);
  v135 = *v134;
  v136 = v134[1];
  v137 = v134[2];
  v138 = v134[3];
  LODWORD(v236) = *(v134 + 32);
  v268 = v138;
  v269 = v137;
  v266 = v135;
  v267 = *&v136;
  if (v236 == 1)
  {
    v139 = *&v136;
    v321[49] = v135;
    v321[50] = v136;
    v140 = *&v138;
    v321[51] = v137;
    v322 = *&v138;
  }

  else
  {

    sub_24F92BDC8();
    v141 = v121;
    v142 = sub_24F9257A8();
    sub_24F921FD8();

    v143 = v248;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v135, v136, v137, v138, 0);
    v144 = v252;
    v231 = *(v251 + 8);
    v231(v143, v252);
    v139 = *&v321[1];

    sub_24F92BDC8();
    v145 = sub_24F9257A8();
    sub_24F921FD8();

    v121 = v141;
    v133 = v310;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v135, v136, v269, v138, 0);
    v146 = v143;
    v103 = v304;
    v231(v146, v144);
    v140 = v322;
  }

  v147 = v244;
  v148 = v271;
  v149 = v139 + v140 > 0.0;
  v150 = v280;
  v151 = v278;
  v278 = *(v303 + 32);
  v303 += 32;
  (v278)(v280, v151, v289);
  v152 = v306;
  *(v150 + *(v306 + 20)) = v234 & 1;
  *(v150 + *(v152 + 24)) = v121 & 1;
  *(v150 + *(v152 + 32)) = v149;
  v154 = v275;
  v153 = v276;
  v155 = v277;
  (*(v237 + 8))(v321, v275, v276, v277, v150, v238, v89, v97, 0.0, v92, 0.0, v92, v128, v129, v130, v131);
  sub_24F073D6C(v150, type metadata accessor for PageEnvironment);
  sub_24E601704(v155, &unk_27F23A690);
  sub_24E601704(v153, &unk_27F23A690);
  v156 = *(v302 + 8);
  v302 += 8;
  v280 = v156;
  (v156)(v154, v285);
  __swift_destroy_boxed_opaque_existential_1(v323);
  v281(v318, v307, v308);
  v276 = v320;
  v277 = v319;
  v275 = __swift_project_boxed_opaque_existential_1(v318, v319);
  v316[0] = v291;
  sub_24F928A78();
  sub_24F06B050(v286, v287, v133[2], v133[3], v133[4]);
  sub_24F769788(v288);
  sub_24F769764(v148);
  v157 = v270;
  v297(v270, v299, v103);
  v295(v157, 0, 1, v103);
  v158 = *(v305 + 48);
  sub_24E60169C(v148, v147, &qword_27F215598);
  sub_24E60169C(v157, v147 + v158, &qword_27F215598);
  v159 = v279;
  if ((v279)(v147, 1, v103) == 1)
  {
    sub_24E601704(v157, &qword_27F215598);
    sub_24E601704(v148, &qword_27F215598);
    if ((v159)(v147 + v158, 1, v103) == 1)
    {
      sub_24E601704(v147, &qword_27F215598);
      LODWORD(v244) = 1;
LABEL_30:
      v161 = v272;
      v162 = v273;
      goto LABEL_32;
    }

LABEL_29:
    sub_24E601704(v147, &unk_27F254F20);
    LODWORD(v244) = 0;
    goto LABEL_30;
  }

  v160 = v232;
  sub_24E60169C(v147, v232, &qword_27F215598);
  if ((v159)(v147 + v158, 1, v103) == 1)
  {
    sub_24E601704(v270, &qword_27F215598);
    sub_24E601704(v271, &qword_27F215598);
    (*(v301 + 8))(v160, v103);
    goto LABEL_29;
  }

  v163 = v301;
  v164 = v245;
  (*(v301 + 32))(v245, v147 + v158, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570]);
  LODWORD(v244) = sub_24F92AFF8();
  v165 = *(v163 + 8);
  v165(v164, v304);
  sub_24E601704(v270, &qword_27F215598);
  sub_24E601704(v271, &qword_27F215598);
  v165(v160, v304);
  v103 = v304;
  sub_24E601704(v147, &qword_27F215598);
  v161 = v272;
  v162 = v273;
LABEL_32:
  sub_24F769764(v162);
  v297(v161, v299, v103);
  v295(v161, 0, 1, v103);
  v166 = *(v305 + 48);
  v167 = v274;
  sub_24E60169C(v162, v274, &qword_27F215598);
  sub_24E60169C(v161, v167 + v166, &qword_27F215598);
  v168 = v279;
  if ((v279)(v167, 1, v103) == 1)
  {
    sub_24E601704(v161, &qword_27F215598);
    v169 = v274;
    sub_24E601704(v162, &qword_27F215598);
    v170 = (v168)(v169 + v166, 1, v103);
    v171 = v268;
    v172 = v310;
    if (v170 == 1)
    {
      sub_24E601704(v169, &qword_27F215598);
      LODWORD(v173) = 1;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v174 = v233;
  sub_24E60169C(v167, v233, &qword_27F215598);
  v175 = (v168)(v167 + v166, 1, v103);
  v171 = v268;
  if (v175 == 1)
  {
    sub_24E601704(v272, &qword_27F215598);
    v169 = v274;
    sub_24E601704(v273, &qword_27F215598);
    (*(v301 + 8))(v174, v103);
    v172 = v310;
LABEL_37:
    sub_24E601704(v169, &unk_27F254F20);
    LODWORD(v173) = 0;
    goto LABEL_39;
  }

  v176 = v301;
  v177 = v245;
  (*(v301 + 32))(v245, v167 + v166, v103);
  sub_24F074340(&qword_27F215650, MEMORY[0x277CE0570]);
  LODWORD(v173) = sub_24F92AFF8();
  v178 = *(v176 + 8);
  v178(v177, v103);
  sub_24E601704(v272, &qword_27F215598);
  sub_24E601704(v273, &qword_27F215598);
  v178(v174, v103);
  sub_24E601704(v167, &qword_27F215598);
  v172 = v310;
LABEL_39:
  sub_24F7699B0(&v290[*(v306 + 28)]);
  if (v236)
  {
    v179 = v267;
    v316[49] = v266;
    *&v316[50] = v267;
    v180 = *&v171;
    v316[51] = v269;
    v317 = *&v171;
  }

  else
  {
    LODWORD(v305) = v173;
    v173 = v266;

    sub_24F92BDC8();
    v181 = sub_24F9257A8();
    sub_24F921FD8();

    v182 = v248;
    sub_24F924838();
    swift_getAtKeyPath();
    v183 = v171;
    v184 = *&v267;
    v185 = v269;
    sub_24E669FC4(v173, *&v267, v269, v183, 0);
    v186 = v252;
    v304 = *(v251 + 8);
    (v304)(v182, v252);
    v179 = *&v316[1];

    sub_24F92BDC8();
    v187 = sub_24F9257A8();
    sub_24F921FD8();

    v172 = v310;
    sub_24F924838();
    swift_getAtKeyPath();
    v188 = v173;
    LOBYTE(v173) = v305;
    sub_24E669FC4(v188, v184, v185, v183, 0);
    (v304)(v182, v186);
    v180 = v317;
  }

  v189 = v179 + v180 > 0.0;
  v190 = v290;
  (v278)(v290, v288, v289);
  v191 = v306;
  *(v190 + *(v306 + 20)) = v244 & 1;
  *(v190 + *(v191 + 24)) = v173 & 1;
  *(v190 + *(v191 + 32)) = v189;
  v192 = v284;
  v194 = v286;
  v193 = v287;
  (*(v276 + 16))(v316, v284, v286, v287, v190, v277, v89, v97, 0.0, v92, 0.0, v92, v128, v129, v130, v131);
  sub_24F073D6C(v190, type metadata accessor for PageEnvironment);
  sub_24E601704(v193, &unk_27F23A690);
  sub_24E601704(v194, &unk_27F23A690);
  (v280)(v192, v285);
  __swift_destroy_boxed_opaque_existential_1(v318);
  v195 = v246;
  v196 = v247;
  sub_24F06B050(v246, v247, v172[2], v172[3], v172[4]);
  v197 = v172;
  v198 = type metadata accessor for ShelfView(0);
  v199 = v261;
  v200 = v307;
  v201 = v308;
  (v281)(v307, v308);
  (*(v201 + 80))(v200, v201);
  sub_24E60169C(v197 + v309[18], v199 + v198[11], &qword_27F2325E8);
  v306 = (*(v201 + 88))(v200, v201);
  v202 = v195;
  v203 = v255;
  sub_24E6009C8(v202, v255, &unk_27F23A690);
  v204 = v257;
  sub_24E6009C8(v196, v203 + *(v257 + 48), &unk_27F23A690);
  v315[0] = 0x3FF0000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  v205 = v198[16];
  *(v199 + v205) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v206 = v198[17];
  *(v199 + v206) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v207 = v198[18];
  *(v199 + v207) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v208 = v199 + v198[19];
  *v208 = swift_getKeyPath();
  *(v208 + 1) = 0;
  *(v208 + 2) = 0;
  *(v208 + 3) = 0;
  v208[32] = 0;
  v209 = v198[20];
  *(v199 + v209) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v210 = v291;
  *v199 = v291;
  v211 = v203;
  v212 = v256;
  sub_24E6009C8(v211, v256, &unk_27F23A680);
  v213 = *(v204 + 48);
  v214 = v199 + v198[5];
  sub_24E6009C8(v212, v214, &unk_27F23A690);
  sub_24E6009C8(v212 + v213, v214 + *(v204 + 48), &unk_27F23A690);
  memcpy(v199 + v198[6], v321, 0x188uLL);
  memcpy(v199 + v198[7], v316, 0x188uLL);
  v215 = (v199 + v198[10]);
  *v215 = v89;
  v215[1] = v97;
  *(v199 + v198[12]) = v306;
  *(v199 + v198[13]) = *(*(v210 + 24) + 16);
  *(v199 + v198[14]) = *(v210 + 16);
  v216 = v262;
  v217 = v260;
  v218 = v309;
  (*(v262 + 16))(v260, v310, v309);
  v219 = (*(v216 + 80) + 48) & ~*(v216 + 80);
  v220 = swift_allocObject();
  v221 = v263;
  *(v220 + 2) = v307;
  *(v220 + 3) = v221;
  v222 = v294;
  *(v220 + 4) = v308;
  *(v220 + 5) = v222;
  (*(v216 + 32))(&v220[v219], v217, v218);
  v223 = v259;
  v224 = (v199 + *(v259 + 36));
  *v224 = sub_24F0741E0;
  v224[1] = v220;
  v224[2] = 0;
  v224[3] = 0;
  v225 = v293;
  v227 = v253;
  v226 = v254;
  (*(v292 + 16))(v253, v293, v254);
  v315[0] = v227;
  v228 = v264;
  sub_24E60169C(v199, v264, &qword_27F2382A8);
  v315[1] = v228;

  v314[0] = v226;
  v314[1] = v223;
  v311 = v222;
  WitnessTable = swift_getWitnessTable();
  v313 = sub_24F074284();
  sub_24F57BA64(v315, 2uLL, v314);
  sub_24E601704(v199, &qword_27F2382A8);
  v229 = v249;
  v249(v225, v226);
  sub_24E601704(v228, &qword_27F2382A8);
  return v229(v227, v226);
}

uint64_t sub_24F070870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for BaseShelfPageView.ShelfContentView() + 64);
  v8 = (*(a4 + 88))(a2, a4);
  (*(a4 + 216))(a1 + v7, v8, a2, a4);
}

uint64_t sub_24F070918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_24F92B7F8();
  v4[5] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24F0709B4, v6, v5);
}

uint64_t sub_24F0709B4()
{
  v5 = (*(v0[4] + 240) + **(v0[4] + 240));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24F070AC4;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_24F070AC4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24E847734, v3, v2);
}

uint64_t sub_24F070BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a6;
  v60 = a5;
  v58 = a4;
  v57 = a3;
  v59 = a1;
  v63 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A80);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238340);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  sub_24F923798();
  sub_24F927618();
  sub_24F9242E8();
  (*(v17 + 32))(v15, v19, v16);
  v20 = &v15[*(v13 + 44)];
  v21 = v72;
  *(v20 + 4) = v71;
  *(v20 + 5) = v21;
  *(v20 + 6) = v73;
  v22 = v68;
  *v20 = v67;
  *(v20 + 1) = v22;
  v23 = v70;
  *(v20 + 2) = v69;
  *(v20 + 3) = v23;
  LOBYTE(v13) = sub_24F925828();
  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E6009C8(v15, v11, &qword_27F238340);
  v32 = *(v9 + 44);
  v62 = v11;
  v33 = &v11[v32];
  *v33 = v13;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  sub_24F92B7F8();

  v34 = sub_24F92B7E8();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  v35[2] = v34;
  v35[3] = v36;
  v37 = v58;
  v35[4] = v57;
  v35[5] = v37;
  v38 = v61;
  v35[6] = v60;
  v35[7] = v38;
  v35[8] = v59;
  v35[9] = a2;
  v39 = sub_24F92B858();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v56 - v42;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v60 = sub_24F923DD8();
    v61 = &v56;
    v59 = *(v60 - 8);
    MEMORY[0x28223BE20](v60);
    v58 = &v56 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_24F92C888();

    v65 = 0xD000000000000031;
    v66 = 0x800000024FA69C60;
    v64 = 264;
    v45 = sub_24F92CD88();
    MEMORY[0x253050C20](v45);

    v47 = MEMORY[0x28223BE20](v46);
    (*(v40 + 16))(&v56 - v42, &v56 - v42, v39, v47);
    v48 = v58;
    sub_24F923DC8();
    (*(v40 + 8))(v43, v39);
    v49 = v63;
    sub_24E6009C8(v62, v63, &qword_27F211A80);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A88);
    return (*(v59 + 32))(v49 + *(v50 + 36), v48, v60);
  }

  else
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A90);
    v53 = v63;
    v54 = (v63 + *(v52 + 36));
    v55 = sub_24F923AD8();
    (*(v40 + 32))(&v54[*(v55 + 20)], &v56 - v42, v39);
    *v54 = &unk_24F9C3838;
    *(v54 + 1) = v35;
    return sub_24E6009C8(v62, v53, &qword_27F211A80);
  }
}

uint64_t sub_24F071244(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = sub_24F92B7F8();
  v3[3] = sub_24F92B7E8();
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_24E8FAC50;

  return v7();
}

uint64_t ShelfPageContext.shelfOffset.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t ShelfPageContext.previousShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfPageContext.nextShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24F071530()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_24F92C4A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F071604(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  if (v9)
  {
    v13 = *(*(v7 - 8) + 64);
  }

  else
  {
    v13 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v5 + 64) + v12;
  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v15 = ((v13 + v12 + (v14 & ~v12)) & ~v12) + v13;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_33:
      if (v11)
      {
LABEL_34:
        if (v6 >= v10)
        {
          v24 = *(v5 + 48);

          return v24(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v22 = (*(v8 + 48))((a1 + v14) & ~v12);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_33;
  }

LABEL_20:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_24F0718C0(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 + 80);
  v15 = *(v7 + 64) + v14;
  if (v11)
  {
    v16 = *(v10 + 64);
  }

  else
  {
    v16 = *(v10 + 64) + 1;
  }

  v17 = ((v16 + v14 + (v15 & ~v14)) & ~v14) + v16;
  if (a3 <= v13)
  {
    goto LABEL_20;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v9 = 4;
      if (v13 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v13 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v13 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v17] = 0;
    }

    else if (v9)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v8 >= v12)
      {
        v27 = *(v7 + 56);

        v27(a1, a2, v8, AssociatedTypeWitness);
      }

      else
      {
        v23 = (&a1[v15] & ~v14);
        if (v12 >= a2)
        {
          v28 = *(v10 + 56);

          v28(v23, (a2 + 1));
        }

        else
        {
          if (v16 <= 3)
          {
            v24 = ~(-1 << (8 * v16));
          }

          else
          {
            v24 = -1;
          }

          if (v16)
          {
            v25 = v24 & (~v12 + a2);
            if (v16 <= 3)
            {
              v26 = v16;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v20 = ~v13 + a2;
  if (v17 >= 4)
  {
    bzero(a1, ((v16 + v14 + (v15 & ~v14)) & ~v14) + v16);
    *a1 = v20;
    v21 = 1;
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_58:
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_58;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_62:
      if (v9 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v9 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v9)
  {
    a1[v17] = v21;
  }
}

void sub_24F071CE4()
{
  sub_24F923C48();
  if (v0 <= 0x3F)
  {
    sub_24F073750(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E6C5550();
      if (v2 <= 0x3F)
      {
        sub_24F073750(319, &qword_27F2381D8, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F071E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F071F68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24F0720C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for BaseShelfPageView() - 8);
  v10 = (v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80)));

  return sub_24F06B70C(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_24F072194()
{
  v1 = type metadata accessor for BaseShelfPageView();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v3 = sub_24F9239C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  swift_unknownObjectRelease();
  v7 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923E98();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 60);
  v10 = sub_24F9234D8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  (*(v4 + 8))(v0 + ((v2 + v13 + v5) & ~v5), v3);
  return swift_deallocObject();
}

uint64_t sub_24F0723DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for BaseShelfPageView() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_24F9239C8() - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_24F06BCC4(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

uint64_t sub_24F0724FC()
{
  v1 = type metadata accessor for BaseShelfPageView();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  swift_unknownObjectRelease();
  v7 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923E98();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 60);
  v10 = sub_24F9234D8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  (*(v4 + 8))(v0 + ((((v13 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5), v3);
  return swift_deallocObject();
}

uint64_t sub_24F07275C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for BaseShelfPageView() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580) - 8);
  v13 = *(v2 + v11);
  v14 = *(v2 + v11 + 8);
  v15 = v2 + ((v11 + *(v12 + 80) + 16) & ~*(v12 + 80));

  return sub_24F06D090(a1, v2 + v10, v15, v6, v5, v7, v8, a2, v13, v14);
}

uint64_t objectdestroyTm_51()
{
  v1 = type metadata accessor for BaseShelfPageView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));
  swift_unknownObjectRelease();
  v3 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 60);
  v6 = sub_24F9234D8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_24F072A50(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for BaseShelfPageView() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_24F06DE98(a1, a2, v9, v5, v6, v7);
}

unint64_t sub_24F072B1C()
{
  result = qword_27F238208;
  if (!qword_27F238208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238208);
  }

  return result;
}

uint64_t sub_24F072B78()
{
  v1 = type metadata accessor for BaseShelfPageView();
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);

  v6 = v0 + v2;
  swift_unknownObjectRelease();
  v7 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923E98();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 60);
  v10 = sub_24F9234D8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  (*(v4 + 8))(v0 + ((((v13 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5), v3);
  return swift_deallocObject();
}

uint64_t sub_24F072DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = *(type metadata accessor for BaseShelfPageView() - 8);
  v12 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580) - 8);
  return sub_24F06D6EC(a1, a2, v3[6], v3 + v12, v3 + ((v13 + *(v14 + 80) + 16) & ~*(v14 + 80)), v7, v8, v9, a3, *(v3 + v13), *(v3 + v13 + 8), v10);
}

uint64_t sub_24F072F20()
{

  return swift_deallocObject();
}

void sub_24F072FDC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Shelf();
    if (v1 <= 0x3F)
    {
      sub_24F0736AC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          sub_24F073750(319, &qword_27F2382A0, MEMORY[0x277D21DB0], MEMORY[0x277D21E28]);
          if (v4 <= 0x3F)
          {
            sub_24E6C5550();
            if (v5 <= 0x3F)
            {
              sub_24F073750(319, &qword_27F2381D8, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24F073750(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_24E684120();
                  if (v8 <= 0x3F)
                  {
                    sub_24EA5C338();
                    if (v9 <= 0x3F)
                    {
                      sub_24F073750(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
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

uint64_t sub_24F073228(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[16];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[18];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[21];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[22];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[25]];

  return v17(v18, a2, v16);
}

char *sub_24F073474(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[16];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[18];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[21];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[22];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[25]];

  return v17(v18, a2, a2, v16);
}

void sub_24F0736AC()
{
  if (!qword_27F238298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188);
    sub_24E602068(qword_27F238210, &qword_27F225188);
    v0 = type metadata accessor for ShelfPageContext();
    if (!v1)
    {
      atomic_store(v0, &qword_27F238298);
    }
  }
}

void sub_24F073750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F0737B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225188);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381E0);
  type metadata accessor for BaseShelfPageView.ShelfContentView();
  sub_24E602068(&qword_27F2381E8, &qword_27F2381E0);
  sub_24F927248();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F921D68();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F928FD8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7A0);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F22C798, &qword_27F22C7A0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  swift_getWitnessTable();
  sub_24F924278();
  swift_getWitnessTable();
  sub_24F923B88();
  return swift_getWitnessTable();
}

uint64_t sub_24F073B74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for BaseShelfPageView.ShelfContentView() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_24F073C78;

  return sub_24F070918(v0 + v7, v2, v3, v4);
}

uint64_t sub_24F073C78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24F073D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_69Tm()
{
  v1 = type metadata accessor for BaseShelfPageView.ShelfContentView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  swift_unknownObjectRelease();

  v3 = v1[16];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[18];
  v6 = sub_24F9234D8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v8 = v1[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F923E98();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F925218();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_24F925218();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v2 + v13, 1, v14))
    {
      (*(v15 + 8))(v2 + v13, v14);
    }
  }

  else
  {
  }

  v16 = v2 + v1[24];
  sub_24E669FC4(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32));
  v17 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F923F78();
    (*(*(v18 - 8) + 8))(v2 + v17, v18);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F0741E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for BaseShelfPageView.ShelfContentView() - 8);
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_24F070870(v5, v1, v2, v3);
}

unint64_t sub_24F074284()
{
  result = qword_27F2382B0;
  if (!qword_27F2382B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2382A8);
    sub_24F074340(qword_27F2382B8, type metadata accessor for ShelfView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2382B0);
  }

  return result;
}

uint64_t sub_24F074340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F074388()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F0743C4()
{
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2382A8);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  type metadata accessor for BaseShelfPageView.PaginationView();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  return swift_getWitnessTable();
}

uint64_t sub_24F074524()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F074564()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[8];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24E614970;

  return sub_24F071244(v2, v3, v4);
}

uint64_t sub_24F074638()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A80);
  sub_24F07469C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F07469C()
{
  result = qword_27F238348;
  if (!qword_27F238348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A80);
    sub_24F074728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238348);
  }

  return result;
}

unint64_t sub_24F074728()
{
  result = qword_27F238350;
  if (!qword_27F238350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238340);
    sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238350);
  }

  return result;
}

uint64_t sub_24F0747E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928818();
  v114 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F91F6B8();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v96 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v96 - v16;
  type metadata accessor for UpdatesLockup();
  v18 = sub_24F91F648();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = a1;
  v20 = sub_24EEFE3B8(v19, v17, 0, 0, a2, a3, 0);
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v19 updateDictionary];
  if (!v22)
  {

LABEL_18:

    return 0;
  }

  v23 = v22;
  v24 = sub_24F92AE38();

  v128 = MEMORY[0x277D84F90];
  *&v115 = 0xD000000000000016;
  *(&v115 + 1) = 0x800000024FA629E0;
  sub_24F92C7F8();
  v25 = *(v24 + 16);
  v109 = v8;
  if (v25 && (v26 = sub_24E76D934(&v125), (v27 & 1) != 0))
  {
    sub_24E643A9C(*(v24 + 56) + 32 * v26, &v120);
    sub_24E6585F8(&v125);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238358);
    if (swift_dynamicCast())
    {
      v28 = v115;
      if (!*(v115 + 16) || (v29 = sub_24E76D644(0x6C70704173707061, 0xE900000000000065), (v30 & 1) == 0))
      {
LABEL_25:

        goto LABEL_14;
      }

      v31 = *(*(v28 + 56) + 8 * v29);
      swift_unknownObjectRetain();

      *&v125 = v31;
      if (swift_dynamicCast())
      {
        v32 = v120;
        if (*(v120 + 16))
        {
          v33 = sub_24E76D644(1701667182, 0xE400000000000000);
          if (v34)
          {
            v35 = *(*(v32 + 56) + 8 * v33);
            swift_unknownObjectRetain();

            *&v120 = v35;
            swift_unknownObjectRetain();
            v36 = swift_dynamicCast();
            v97 = v6;
            if (v36)
            {
              v38 = *(&v125 + 1);
              v37 = v125;
              v39._countAndFlagsBits = 0xD00000000000002CLL;
              v39._object = 0x800000024FA69CA0;
              v40._countAndFlagsBits = 0;
              v40._object = 0xE000000000000000;
              v41 = localizedString(_:comment:)(v39, v40);
              countAndFlagsBits = v41._countAndFlagsBits;
              object = v41._object;
            }

            else
            {
              countAndFlagsBits = 0;
              object = 0;
              v37 = 0;
              v38 = 0;
            }

            v127 = 0;
            v125 = 0u;
            v126 = 0u;
            v78._countAndFlagsBits = 0x495441525F454741;
            v78._object = 0xEA0000000000474ELL;
            v79._countAndFlagsBits = 0;
            v79._object = 0xE000000000000000;
            v80 = localizedString(_:comment:)(v78, v79);
            v107 = v80._countAndFlagsBits;
            v106 = v80._object;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_24F93DE60;
            strcpy((inited + 32), "contentRating");
            *(inited + 46) = -4864;
            *(inited + 72) = swift_getObjectType();
            *(inited + 48) = v35;
            swift_unknownObjectRetain();
            v105 = sub_24E608448(inited);
            swift_setDeallocating();
            sub_24E601704(inited + 32, &qword_27F2135C0);
            v82 = sub_24F929608();
            (*(*(v82 - 8) + 56))(v14, 1, 1, v82);
            type metadata accessor for Badge();
            v83 = swift_allocObject();
            *(v83 + 152) = 0u;
            *(v83 + 168) = 0u;
            sub_24E60169C(&v125, &v115, &qword_27F235830);
            if (*(&v116 + 1))
            {
              v120 = v115;
              v121 = v116;
              v122 = v117;
            }

            else
            {
              v84 = v110;
              sub_24F91F6A8();
              v85 = sub_24F91F668();
              v104 = countAndFlagsBits;
              v86 = v38;
              v87 = v37;
              v88 = v85;
              v90 = v89;
              (*(v111 + 8))(v84, v112);
              v123 = v88;
              v124 = v90;
              v37 = v87;
              v38 = v86;
              countAndFlagsBits = v104;
              sub_24F92C7F8();
              sub_24E601704(&v115, &qword_27F235830);
            }

            sub_24E601704(&v125, &qword_27F235830);
            v91 = v121;
            *(v83 + 184) = v120;
            *(v83 + 200) = v91;
            *(v83 + 216) = v122;
            v92 = sub_24E65E0D4(v14, v83 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
            *(v83 + 16) = 3328;
            *(v83 + 40) = 0;
            *(v83 + 48) = 0;
            v93 = v106;
            *(v83 + 24) = v107;
            *(v83 + 32) = v93;
            v94 = v105;
            *(v83 + 64) = 0;
            *(v83 + 72) = v94;
            *(v83 + 80) = 0;
            *(v83 + 56) = 0;
            *(v83 + 88) = v37;
            *(v83 + 96) = v38;
            v95 = object;
            *(v83 + 104) = countAndFlagsBits;
            *(v83 + 112) = v95;
            *(v83 + 144) = 0;
            *(v83 + 120) = 0;
            *(v83 + 128) = 0;
            *(v83 + 136) = 1;
            MEMORY[0x253050F00](v92);
            if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            sub_24F92B638();
            swift_unknownObjectRelease();
            v43 = v128;
            v6 = v97;
            v8 = v109;
            goto LABEL_15;
          }
        }

        goto LABEL_25;
      }
    }
  }

  else
  {

    sub_24E6585F8(&v125);
  }

LABEL_14:
  v43 = MEMORY[0x277D84F90];
LABEL_15:
  v44 = v21[3];
  v107 = v21[2];

  object = v44;

  v45 = [v19 bundleIdentifier];
  v46 = v6;
  if (v45)
  {
    v47 = v45;
    v104 = sub_24F92B0D8();
    v103 = v48;
  }

  else
  {
    v104 = 0;
    v103 = 0;
  }

  v50 = v21[6];
  v51 = v21[11];
  v101 = v21[10];
  v52 = v21[13];
  v99 = v21[12];
  v53 = v21[29];
  v105 = v21[30];

  v98 = v50;

  v102 = v51;

  v100 = v52;

  v106 = v53;

  sub_24F928808();
  type metadata accessor for ProductPage();
  v49 = swift_allocObject();
  v54 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  v55 = MEMORY[0x277D84F90];
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v56 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  *(v49 + v56) = sub_24E609890(v55);
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = 0;
  swift_beginAccess();
  *(v49 + v54) = v55;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v43;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = 2;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = 0;
  v57 = sub_24E609890(v55);
  swift_beginAccess();
  *(v49 + v56) = v57;

  v58 = v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0;
  v59 = (v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  *v59 = 0;
  v59[1] = 0;
  v60 = v114;
  v61 = v46;
  (*(v114 + 16))(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics, v8, v46);
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = 0;
  v62 = (v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  *v62 = 0;
  v62[1] = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = 0;
  v63 = v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v63 = 0;
  *(v63 + 8) = 1;
  v64 = (v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  *v64 = 0;
  v64[1] = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = 0;
  *(v49 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = 0;
  v65 = sub_24F929608();
  v125 = 0u;
  v126 = 0u;
  v127 = 0;
  v66 = v113;
  (*(*(v65 - 8) + 56))(v113, 1, 1, v65);
  *(v49 + 424) = 4;
  sub_24E60169C(&v125, &v120, &qword_27F235830);
  if (*(&v121 + 1))
  {
    v67 = v121;
    *(v49 + 448) = v120;
    *(v49 + 464) = v67;
    *(v49 + 480) = v122;
  }

  else
  {
    v68 = v110;
    sub_24F91F6A8();
    v69 = sub_24F91F668();
    v71 = v70;
    (*(v111 + 8))(v68, v112);
    v118 = v69;
    v119 = v71;
    sub_24F92C7F8();
    sub_24E601704(&v120, &qword_27F235830);
  }

  sub_24E60169C(v66, v49 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);

  v72 = object;
  *(v49 + 16) = v107;
  *(v49 + 24) = v72;
  v73 = v103;
  *(v49 + 32) = v104;
  *(v49 + 40) = v73;
  *(v49 + 48) = v98;
  *(v49 + 56) = 0;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  v74 = v102;
  *(v49 + 80) = v101;
  *(v49 + 88) = v74;
  v75 = v100;
  *(v49 + 96) = v99;
  *(v49 + 104) = v75;
  *(v49 + 120) = 0;
  *(v49 + 128) = 0;
  *(v49 + 112) = 0;
  *(v49 + 136) = 2;
  *(v49 + 144) = 0;
  *(v49 + 152) = 0;
  *(v49 + 216) = 0u;
  *(v49 + 200) = 0u;
  *(v49 + 184) = 0u;
  *(v49 + 376) = 0u;
  *(v49 + 392) = 0u;
  *(v49 + 408) = 0x8000;
  *(v49 + 360) = 0;
  *(v49 + 416) = 0;
  *(v49 + 432) = MEMORY[0x277D84FA0];
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;
  *(v49 + 160) = 0;
  *(v49 + 248) = 0;
  *(v49 + 256) = 0;
  v76 = v105;
  *(v49 + 232) = v106;
  *(v49 + 240) = v76;
  *(v49 + 264) = 0u;
  *(v49 + 280) = 0u;
  *(v49 + 296) = 0u;
  *(v49 + 312) = 0u;
  *(v49 + 328) = 0u;
  sub_24E601704(v66, &qword_27F213E68);
  sub_24E601704(&v125, &qword_27F235830);
  (*(v60 + 8))(v109, v61);
  *(v49 + 344) = MEMORY[0x277D84F90];
  *(v49 + 352) = 0;
  *(v49 + 440) = 0;
  *(v49 + 368) = 0;
  return v49;
}

uint64_t sub_24F075674(double a1, double a2)
{
  v5 = sub_24F91F6B8();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_24F91EAA8();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v17 = [v2 playerID];
  v18 = sub_24F92B0D8();
  v20 = v19;

  v37[0] = v18;
  v37[1] = v20;
  sub_24F91EA28();
  sub_24E600AEC();
  v21 = sub_24F92C578();
  v23 = v22;
  (*(v12 + 8))(v15, v11);

  if (!v23)
  {
    v24 = [v16 playerID];
    v21 = sub_24F92B0D8();
    v23 = v25;
  }

  strcpy(v37, "avatarimage://");
  HIBYTE(v37[1]) = -18;
  MEMORY[0x253050C20](v21, v23);

  v26 = v37[0];
  v27 = v37[1];
  v28 = sub_24F929608();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  type metadata accessor for Artwork();
  v29 = swift_allocObject();
  *(v29 + 152) = 0u;
  *(v29 + 168) = 0u;
  *(v29 + 184) = 0;
  sub_24F91F6A8();
  v30 = sub_24F91F668();
  v32 = v31;
  (*(v35 + 8))(v7, v36);
  v37[0] = v30;
  v37[1] = v32;
  sub_24F92C7F8();
  sub_24E643844(v10, v29 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics);
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 72) = 25186;
  *(v29 + 80) = 0xE200000000000000;
  *(v29 + 64) = 0;
  *(v29 + 104) = MEMORY[0x277D84F90];
  v37[0] = 25186;
  v37[1] = 0xE200000000000000;
  v33 = Artwork.Crop.preferredContentMode.getter();
  sub_24EB05BC8(v10);
  *(v29 + 88) = v33;
  *(v29 + 96) = 3;
  return v29;
}

void PlayableFocusAreaConfiguration.init(horizontalContainerPercentage:verticalContainerPercentage:pauseVisiblityThreshold:playVisiblityThreshold:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_24F075A4C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D7E8);
  __swift_project_value_buffer(v4, qword_27F39D7E8);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24F075C44(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v38 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v13 = MEMORY[0x25304F260]();
  if (!v13)
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    v19 = sub_24F92AAE8();
    __swift_project_value_buffer(v19, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    v20 = *(sub_24F928468() - 8);
    v18 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return v18;
  }

  v40 = v13;
  sub_24F92C2D8();
  if (v3)
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v15 = v42;
    v16 = v43;
    v46 = v43;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    sub_24F928438();
    sub_24E601704(&v44, &qword_27F2129B0);
    sub_24F92A5A8();

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6A150);
    MEMORY[0x253050C20](0xD00000000000003ALL, 0x800000024FA6A180);
    v41 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    sub_24F92CA38();
    MEMORY[0x253050C20](46, 0xE100000000000000);
    v18 = v45;
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();

    return v18;
  }

  v39 = a1;
  sub_24F9282B8();
  v21 = sub_24F92AC28();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_24E601704(v8, &qword_27F2213B0);
LABEL_17:
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6A150);
    MEMORY[0x253050C20](0xD000000000000031, 0x800000024FA6A1C0);
    v18 = v45;
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
LABEL_18:

    return v18;
  }

  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238370);
  v23 = sub_24F92ABC8();
  (*(v10 + 8))(v12, v9);
  (*(v22 + 8))(v8, v21);
  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = objc_opt_self();
  v25 = sub_24F92B588();
  v26 = [v24 selectionFromRawMarketingItems_];

  if (a3)
  {
    v27 = a3;
    [v27 doubleValue];
    v28 = [v26 promiseWithTimeout_];

    v26 = v28;
  }

  v29 = v39;
  v44 = 0;
  v30 = [v26 resultWithError_];
  if (!v30)
  {
    v37 = v44;

    v18 = sub_24F91F278();

    swift_willThrow();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6A150);
    MEMORY[0x253050C20](0xD00000000000002ELL, 0x800000024FA6A200);
    v41 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    sub_24F92CA38();
    MEMORY[0x253050C20](46, 0xE100000000000000);
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();

    goto LABEL_18;
  }

  v31 = v30;
  v32 = v44;
  v33 = [v31 rawValues];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870);
  v34 = sub_24F92AE38();

  v44 = v34;

  v35 = sub_24F92CF68();
  v18 = [objc_opt_self() valueWithObject:v35 inContext:v29];
  result = swift_unknownObjectRelease();
  if (v18)
  {

    return v18;
  }

  __break(1u);
  return result;
}

const char *sub_24F076724(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_24F92AC68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v11 = MEMORY[0x25304F260]();
  if (v11)
  {
    v12 = v11;
    v21 = v8;
    v13 = *(a2 + OBJC_IVAR____TtC12GameStoreKit14JSArcadeObject_accounts);
    v14 = *(a2 + OBJC_IVAR____TtC12GameStoreKit14JSArcadeObject_arcadeStore);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = a3;
    v15[4] = v12;
    v15[5] = v14;
    v16 = a3;

    v17 = v14;
    v18 = a1;

    sub_24F92AC48();
    if (v3)
    {
    }

    else
    {
      v13 = sub_24F92AC58();

      (*(v21 + 8))(v10, v7);
    }
  }

  else
  {
    v13 = "GameStoreKit.JSArcadeObject";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v13;
}

void sub_24F076944(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v74 = a7;
  v84 = a6;
  v72 = a5;
  v82 = a3;
  v73 = a2;
  v83 = a1;
  v86 = sub_24F922028();
  v80 = *(v86 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v86);
  v78 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v66 - v9;
  v76 = sub_24F9281B8();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v66 - v12;
  v71 = sub_24F9298B8();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92A868();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v66 - v20;
  MEMORY[0x2530504F0](v19);
  v22 = sub_24F92AB18();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_24E601704(v21, &qword_27F2330E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24F93DE60;
    sub_24F92A808();
    v25 = sub_24F92A848();
    (*(v15 + 8))(v17, v14);
    *(v24 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v24 + 32) = v25;
    v26 = v81;
    v27 = sub_24F9281A8();
    if (v26)
    {

      if (qword_27F210EB0 != -1)
      {
        swift_once();
      }

      v28 = sub_24F92AAE8();
      __swift_project_value_buffer(v28, qword_27F39D7E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v29 = v91;
      v30 = v92;
      v88 = v92;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      (*(*(v30 - 1) + 16))(boxed_opaque_existential_1, v29, v30);
      sub_24F928438();
      sub_24E601704(aBlock, &qword_27F2129B0);
      sub_24F92A5A8();
    }

    else
    {
      v46 = v27;
    }
  }

  else
  {
    v68 = sub_24F92AB08();
    (*(v23 + 8))(v21, v22);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = v82;
    if (v72)
    {
      v34 = v72;
      [v34 doubleValue];
      if (v35 <= COERCE_DOUBLE(1))
      {
      }

      else
      {
        [v34 doubleValue];
        v36 = v75;
        v37 = v33;
        v38 = v32;
        v39 = v76;
        (*(v75 + 16))(v85, v37, v76);
        v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = v38;
        v42 = v39;
        v32 = v38;
        v33 = v82;
        (*(v36 + 32))(v41 + v40, v85, v42);
        v43 = v83;
        *(v41 + ((v10 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;

        v44 = v43;
        v45 = v69;
        sub_24F9298C8();

        (*(v70 + 8))(v45, v71);
      }
    }

    v67 = v32;
    sub_24F929778();
    sub_24F929768();
    v47 = v79;
    sub_24F921FF8();
    sub_24F92C058();
    v48 = sub_24F929768();
    sub_24F921FE8();

    v49 = v80;
    (*(v80 + 16))(v78, v47, v86);
    v50 = v75;
    v51 = *(v75 + 16);
    v52 = v76;
    v51(v85, v33, v76);
    v51(v77, v73, v52);
    v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v82 = (v7 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = *(v50 + 80);
    v56 = (v55 + 8 + v54) & ~v55;
    v57 = (v10 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v55 + 8 + v57) & ~v55;
    v59 = swift_allocObject();
    (*(v49 + 32))(v59 + v53, v78, v86);
    v60 = v85;
    *(v59 + v82) = v84;
    *(v59 + v54) = v67;
    v61 = *(v50 + 32);
    v61(v59 + v56, v60, v52);
    v62 = v83;
    *(v59 + v57) = v83;
    v61(v59 + v58, v77, v52);
    v89 = sub_24F0786EC;
    v90 = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F0782AC;
    v88 = &block_descriptor_108;
    v63 = _Block_copy(aBlock);

    v64 = v62;

    v65 = v68;
    [v74 topAppsForAccount:v68 completionBlock:v63];
    _Block_release(v63);

    (*(v80 + 8))(v79, v86);
  }
}

uint64_t sub_24F077354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    v9 = sub_24E69A5C4(0, &qword_27F21C8E0);
    sub_24F92A868();
    sub_24E979414();
    v10 = swift_allocError();
    sub_24F92A808();
    v11 = MEMORY[0x253051C90](v10, a3);

    *(v8 + 56) = v9;
    *(v8 + 32) = v11;
    v12 = sub_24F9281A8();

    result = swift_beginAccess();
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t sub_24F0777EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v34 = a8;
  v35 = a2;
  v37 = a7;
  v38 = a4;
  v32[1] = a5;
  v36 = a1;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v33 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  sub_24F92C048();
  sub_24F929778();
  v16 = sub_24F929768();
  sub_24F921FE8();

  v17 = *(v11 + 16);
  v17(v15, a6, v10);
  v18 = v10;
  v17(v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v10);
  v19 = *(v11 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + v22 + 8) & ~v19;
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  v25 = v35;
  *(v24 + 24) = v35;
  v26 = *(v11 + 32);
  v26(v24 + v20, v15, v18);
  v28 = v36;
  v27 = v37;
  *(v24 + v21) = v37;
  *(v24 + v22) = v28;
  v26(v24 + v23, v33, v18);

  v29 = v25;

  v30 = v27;
  sub_24F9298E8();
}

uint64_t sub_24F077A40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F92AAE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210EB0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_27F39D7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    v31 = a4;
    if (a2)
    {
      v14 = a2;
      if (qword_27F210EB0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_27F39D7E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v15 = v32;
      v16 = v33;
      v35 = v33;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
      sub_24F928438();
      sub_24E601704(v34, &qword_27F2129B0);
      sub_24F92A588();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24F93DE60;
      v19 = sub_24E69A5C4(0, &qword_27F21C8E0);
      v20 = MEMORY[0x253051C90](a2, v31);
      *(v18 + 56) = v19;
      *(v18 + 32) = v20;
      v25 = sub_24F9281A8();
    }

    else
    {
      if (qword_27F210EB0 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v9, qword_27F39D7E8);
      (*(v10 + 16))(v12, v21, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      if (a5)
      {
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        v23 = a5;
        v24 = a5;
      }

      else
      {
        v24 = 0;
        v22 = 0;
        v34[1] = 0;
        v34[2] = 0;
        v23 = MEMORY[0x277D84F90];
      }

      v34[0] = v24;
      v35 = v22;

      sub_24F9283B8();
      sub_24E601704(v34, &qword_27F2129B0);
      sub_24F92A588();

      (*(v10 + 8))(v12, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_24F93DE60;
      v34[0] = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      v27 = sub_24F92CF68();
      v28 = [objc_opt_self() valueWithObject:v27 inContext:v31];
      swift_unknownObjectRelease();
      *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
      *(v26 + 32) = v28;
      v29 = sub_24F9281A8();
    }

    result = swift_beginAccess();
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t sub_24F0782AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24F92B5A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F0784C0()
{

  return swift_deallocObject();
}

uint64_t sub_24F078540()
{
  v12 = sub_24F922028();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_24F9281B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 8 + v3) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + 8 + v8) & ~v6;
  (*(v1 + 8))(v0 + v2, v12);

  v10 = *(v5 + 8);
  v10(v0 + v7, v4);

  v10(v0 + v9, v4);

  return swift_deallocObject();
}

uint64_t sub_24F0786EC(uint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_24F9281B8() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 8 + v8) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v2 + v7);
  v14 = *(v2 + v8);
  v15 = *(v2 + v12);

  return sub_24F0777EC(a1, a2, v2 + v6, v13, v14, v2 + v11, v15, v2 + ((v10 + 8 + v12) & ~v10));
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F07883C()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F078914()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F077354(v3, v0 + v2, v4);
}

uint64_t sub_24F0789A4()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + ((v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_24F078AC4()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F077A40(v4, v5, v0 + v2, v6, v7);
}

__n128 ReviewsContainerLayout.init(metrics:ratingsView:tapToRateView:actionsView:reviewSummaryView:reviewsShelf:editorsChoiceView:ratingsSeparatorView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x160uLL);
  sub_24E612C80(a2, a9);
  sub_24E612C80(a3, a9 + 40);
  sub_24E612C80(a4, a9 + 80);
  v17 = *(a5 + 16);
  *(a9 + 120) = *a5;
  *(a9 + 136) = v17;
  *(a9 + 152) = *(a5 + 32);
  v18 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v18;
  *(a9 + 192) = *(a6 + 32);
  *(a9 + 232) = *(a7 + 4);
  v19 = *a7;
  *(a9 + 216) = a7[1];
  *(a9 + 200) = v19;
  *(a9 + 272) = *(a8 + 32);
  result = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = result;
  return result;
}

uint64_t ReviewsContainerLayout.Metrics.init(ratingsBottomSpace:tapToRateTopSpace:tapToRateBottomSpace:reviewSummaryBottomSpace:reviewsShelfTopSpace:editorsChoiceTopSpace:columnSpacer:marginInsets:bottomEdgeSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  *(a9 + 112) = 0;
  *(a9 + 96) = 0u;
  *(a9 + 80) = 0u;
  v25 = a9 + 80;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24EA63A70(a3, v25);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  sub_24E612C80(a7, a9 + 240);
  *(a9 + 280) = a10;
  *(a9 + 288) = a11;
  *(a9 + 296) = a12;
  *(a9 + 304) = a13;

  return sub_24E612C80(a8, a9 + 312);
}

uint64_t ReviewsContainerLayout.Metrics.ratingsBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ReviewsContainerLayout.Metrics.tapToRateTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t ReviewsContainerLayout.Metrics.reviewSummaryBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t ReviewsContainerLayout.Metrics.reviewsShelfTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t ReviewsContainerLayout.Metrics.editorsChoiceTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ReviewsContainerLayout.Metrics.columnSpacer.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_24E612C80(a1, v1 + 240);
}

void ReviewsContainerLayout.Metrics.marginInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t ReviewsContainerLayout.Metrics.bottomEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 312);

  return sub_24E612C80(a1, v1 + 312);
}

double ReviewsContainerLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v28 = sub_24F92CDB8();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v9 = sub_24F922238();
  sub_24E60169C((v2 + 20), v31, &qword_27F229780);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v27 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_24E601704(v31, &qword_27F229780);
    v27 = 1;
  }

  sub_24E60169C((v2 + 25), v31, &qword_27F229780);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v26 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_24E601704(v31, &qword_27F229780);
    v26 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  v10 = sub_24F922238();
  sub_24E60169C((v2 + 15), v31, &qword_27F229780);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v11 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_24E601704(v31, &qword_27F229780);
    v11 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_24F922298();
  if ((v9 & v27 & v26 & v10 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 35, v2[38]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v6 + 8))(v8, v28);
  }

  if ((v11 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 50, v2[53]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v6 + 8))(v8, v28);
  }

  sub_24F92C228();
  v12 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  v13 = [a1 traitCollection];
  v14 = sub_24F92BF68();

  if (v14 & 1) != 0 || (v15 = [a1 traitCollection], v16 = sub_24F92BF98(), v15, (v16))
  {
    if ((v9 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
      sub_24F922298();
    }

    if ((v11 & 1) == 0)
    {
      sub_24E60169C((v3 + 15), v31, &qword_27F229780);
      if (v32)
      {
        __swift_project_boxed_opaque_existential_1(v31, v32);
        sub_24F922298();
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        sub_24E601704(v31, &qword_27F229780);
      }
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 65, v3[68]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v6 + 8))(v8, v28);
    if (v11)
    {
      v12 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    }

    else
    {
      sub_24F92C228();
      v25 = v17;
      sub_24E60169C((v3 + 15), v31, &qword_27F229780);
      if (v32)
      {
        __swift_project_boxed_opaque_existential_1(v31, v32);
        sub_24F922298();
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        sub_24E601704(v31, &qword_27F229780);
      }

      v12 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    }

    if ((v9 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
      sub_24F922298();
    }

    if ((v10 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
      sub_24F922298();
    }
  }

  sub_24E60169C((v3 + 20), &v29, &qword_27F229780);
  if (v30)
  {
    sub_24E612C80(&v29, v31);
    if ((v27 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v31, v32);
      sub_24F922298();
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_24E601704(&v29, &qword_27F229780);
  }

  sub_24E60169C((v3 + 25), &v29, &qword_27F229780);
  if (v30)
  {
    sub_24E612C80(&v29, v31);
    if ((v26 & 1) == 0)
    {
      if ((v27 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v3 + 60, v3[63]);
        sub_24E8ED7D8();
        sub_24F9223A8();
        (*(v6 + 8))(v8, v28);
      }

      __swift_project_boxed_opaque_existential_1(v31, v32);
      sub_24F922298();
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
    if (v10)
    {
LABEL_43:
      if (v9)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }
  }

  else
  {
    sub_24E601704(&v29, &qword_27F229780);
    if (v10)
    {
      goto LABEL_43;
    }
  }

  v18 = [a1 v12[353]];
  v19 = sub_24F92BF68();

  if (v19 & 1) != 0 || (v20 = [a1 v12[353]], v21 = sub_24F92BF98(), v20, (v21))
  {
    __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
    sub_24F922298();
  }

LABEL_49:
  v22 = [a1 v12[353]];
  v23 = sub_24F92BF78();

  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v3 + 40, v3[43]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v6 + 8))(v8, v28);
  }

LABEL_51:
  __swift_project_boxed_opaque_existential_1(v3 + 74, v3[77]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v6 + 8))(v8, v28);
  return a2;
}

uint64_t ReviewsContainerLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v116 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(v6 + 568);
  v115 = a3;
  v124 = a4;
  v17 = a5;
  v18 = a6;
  sub_24F92C1C8();
  x = v130.origin.x;
  y = v130.origin.y;
  width = v130.size.width;
  height = v130.size.height;
  MinX = CGRectGetMinX(v130);
  v118 = x;
  v131.origin.x = x;
  v117 = y;
  v131.origin.y = y;
  v121 = width;
  v131.size.width = width;
  v120 = height;
  v131.size.height = height;
  MinY = CGRectGetMinY(v131);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v25 = sub_24F922238();
  sub_24E60169C(v6 + 160, v128, &qword_27F229780);
  if (v129)
  {
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v123 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_24E601704(v128, &qword_27F229780);
    v123 = 1;
  }

  sub_24E60169C(v6 + 200, v128, &qword_27F229780);
  if (v129)
  {
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v122 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_24E601704(v128, &qword_27F229780);
    v122 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v6 + 80), *(v6 + 104));
  v125 = sub_24F922238();
  sub_24E60169C(v6 + 120, v128, &qword_27F229780);
  v119 = MinX;
  if (v129)
  {
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v26 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_24E601704(v128, &qword_27F229780);
    v26 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_24F922288();
  v28 = v27;
  v30 = v29;
  v31 = v115;
  v132.origin.x = v115;
  v32 = v124;
  v132.origin.y = v124;
  v132.size.width = v17;
  v132.size.height = v18;
  v33 = CGRectGetMinX(v132);
  v34 = UIEdgeInsetsInsetRect(v33, floor(MinY), v28, v30, 0.0, v114);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_24F92C1D8();
  sub_24F922228();
  v133.origin.x = v34;
  v133.origin.y = v36;
  v133.size.width = v38;
  v133.size.height = v40;
  MaxY = CGRectGetMaxY(v133);
  if ((v25 & v123 & v26 & v122 & v125 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 280), *(v6 + 304));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v43 = v42;
    (*(v14 + 8))(v16, v13);
    MaxY = MaxY + v43;
  }

  v44 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  v45 = [a1 traitCollection];
  v46 = sub_24F92BF68();

  v47 = v119;
  if (v46 & 1) != 0 || (v48 = [a1 traitCollection], v49 = sub_24F92BF98(), v48, (v49))
  {
    if ((v26 & 1) == 0)
    {
      sub_24E60169C((v7 + 15), v128, &qword_27F229780);
      if (v129)
      {
        __swift_project_boxed_opaque_existential_1(v128, v129);
        sub_24F922288();
        v51 = v50;
        v53 = v52;
        __swift_destroy_boxed_opaque_existential_1(v128);
        v54 = floor(MaxY);
        sub_24E60169C((v7 + 15), v128, &qword_27F229780);
        if (v129)
        {
          __swift_project_boxed_opaque_existential_1(v128, v129);
          sub_24F92C1D8();
          sub_24F922228();
          __swift_destroy_boxed_opaque_existential_1(v128);
        }

        else
        {
          sub_24E601704(v128, &qword_27F229780);
        }

        v135.origin.x = v47;
        v135.origin.y = v54;
        v135.size.width = v51;
        v135.size.height = v53;
        v62 = CGRectGetMaxY(v135);
        __swift_project_boxed_opaque_existential_1(v7 + 50, v7[53]);
        sub_24E8ED7D8();
        sub_24F9223A8();
        v64 = v63;
        (*(v14 + 8))(v16, v13);
        MaxY = v62 + v64;
        v32 = v124;
      }

      else
      {
        sub_24E601704(v128, &qword_27F229780);
      }
    }

    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(v7 + 65, v7[68]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v114 = v55;
  v56 = *(v14 + 8);
  v56(v16, v13);
  v134.origin.x = v118;
  v134.origin.y = v117;
  v134.size.width = v121;
  v134.size.height = v120;
  v113 = CGRectGetWidth(v134);
  sub_24F92C228();
  if ((v26 & 1) == 0)
  {
    sub_24E60169C((v7 + 15), v128, &qword_27F229780);
    if (v129)
    {
      v112 = v56;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      sub_24F922288();
      v58 = v57;
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(v128);
      v61 = floor(MaxY);
      sub_24E60169C((v7 + 15), v128, &qword_27F229780);
      if (v129)
      {
        __swift_project_boxed_opaque_existential_1(v128, v129);
        sub_24F92C1D8();
        sub_24F922228();
        __swift_destroy_boxed_opaque_existential_1(v128);
      }

      else
      {
        sub_24E601704(v128, &qword_27F229780);
      }

      v136.origin.x = v47;
      v136.origin.y = v61;
      v136.size.width = v58;
      v136.size.height = v60;
      v65 = CGRectGetMaxY(v136);
      __swift_project_boxed_opaque_existential_1(v7 + 50, v7[53]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v67 = v66;
      v56 = v112;
      v112(v16, v13);
      MaxY = v65 + v67;
    }

    else
    {
      sub_24E601704(v128, &qword_27F229780);
    }

    v32 = v124;
  }

  if (v25 & v125)
  {
    v44 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
    goto LABEL_47;
  }

  v68 = (v113 - v114) * 0.5;
  sub_24E60169C((v7 + 30), &v126, &qword_27F229780);
  if (v127)
  {
    sub_24E612C80(&v126, v128);
    v69 = [a1 traitCollection];
    v70 = sub_24F92BF78();

    if (v70)
    {
      v71 = [objc_opt_self() mainScreen];
      [v71 scale];

      v137.origin.x = v118;
      v137.origin.y = v117;
      v137.size.width = v121;
      v137.size.height = v120;
      CGRectGetWidth(v137);
      v112 = v56;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v47 = v119;
      sub_24F922228();
      __swift_project_boxed_opaque_existential_1(v7 + 40, v7[43]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v73 = v72;
      v112(v16, v13);
      MaxY = MaxY + v73;
    }

    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_24E601704(&v126, &qword_27F229780);
  }

  v74 = floor(v68);
  v44 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  if (v25)
  {
    if (v125)
    {
      v32 = v124;
      goto LABEL_47;
    }

    v114 = floor(MaxY);
    v75 = v124;
  }

  else
  {
    v32 = v124;
    if (v125)
    {
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F922288();
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F92C1D8();
      sub_24F922228();
      goto LABEL_44;
    }

    __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    sub_24F922288();
    v113 = v74;
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    sub_24F92C1D8();
    sub_24F922228();
    v75 = v32;
    __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
    v114 = floor(MaxY);
    sub_24F92C1D8();
    sub_24F922228();
  }

  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F92C1D8();
  sub_24F922228();
  v32 = v75;
  v47 = v119;
  if ((v25 & 1) == 0)
  {
LABEL_44:
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    sub_24F922218();
    MaxY = CGRectGetMaxY(v138);
    if (v125)
    {
      goto LABEL_47;
    }
  }

  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F922218();
  v76 = CGRectGetMaxY(v139);
  if (MaxY <= v76)
  {
    MaxY = v76;
  }

LABEL_47:
  sub_24E60169C((v7 + 20), &v126, &qword_27F229780);
  if (v127)
  {
    sub_24E612C80(&v126, v128);
    if ((v123 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v128, v129);
      sub_24F922288();
      v78 = v77;
      v80 = v79;
      v140.origin.x = v31;
      v140.origin.y = v32;
      v140.size.width = v17;
      v140.size.height = v18;
      v81 = CGRectGetMinX(v140);
      __swift_project_boxed_opaque_existential_1(v128, v129);
      sub_24F92C1D8();
      sub_24F922228();
      v141.origin.x = v81;
      v47 = v119;
      v141.origin.y = floor(MaxY);
      v141.size.width = v78;
      v141.size.height = v80;
      MaxY = CGRectGetMaxY(v141);
    }

    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_24E601704(&v126, &qword_27F229780);
  }

  sub_24E60169C((v7 + 25), &v126, &qword_27F229780);
  if (!v127)
  {
    sub_24E601704(&v126, &qword_27F229780);
    if (v25)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  sub_24E612C80(&v126, v128);
  if ((v122 & 1) == 0)
  {
    if ((v123 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v7 + 60, v7[63]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v83 = v82;
      (*(v14 + 8))(v16, v13);
      MaxY = MaxY + v83;
    }

    __swift_project_boxed_opaque_existential_1(v128, v129);
    sub_24F922288();
    v85 = v84;
    v87 = v86;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    sub_24F92C1D8();
    sub_24F922228();
    v142.origin.x = v47;
    v142.origin.y = floor(MaxY);
    v142.size.width = v85;
    v142.size.height = v87;
    MaxY = CGRectGetMaxY(v142);
  }

  __swift_destroy_boxed_opaque_existential_1(v128);
  if ((v25 & 1) == 0)
  {
LABEL_60:
    v88 = [a1 v44[353]];
    v89 = sub_24F92BF68();

    if (v89 & 1) != 0 || (v90 = [a1 v44[353]], v91 = sub_24F92BF98(), v90, (v91))
    {
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F922288();
      v93 = v92;
      v143.origin.x = v118;
      v143.origin.y = v117;
      v143.size.width = v121;
      v143.size.height = v120;
      v94 = CGRectGetWidth(v143);
      __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
      sub_24F92C1D8();
      sub_24F922228();
      v144.origin.x = v47;
      v144.origin.y = floor(MaxY);
      v144.size.width = v94;
      v144.size.height = v93;
      v95 = CGRectGetMaxY(v144);
      sub_24E60169C((v7 + 45), v128, &qword_27F22F780);
      if (v129)
      {
        __swift_project_boxed_opaque_existential_1(v128, v129);
        sub_24E8ED7D8();
        sub_24F9223A8();
        v97 = v96;
        (*(v14 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(v128);
      }

      else
      {
        sub_24E601704(v128, &qword_27F22F780);
        v97 = 0.0;
      }

      MaxY = v95 + v97;
    }
  }

LABEL_66:
  if ((v125 & 1) == 0)
  {
    v98 = [a1 v44[353]];
    v99 = sub_24F92BF68();

    if (v99 & 1) != 0 || (v100 = [a1 v44[353]], v101 = sub_24F92BF98(), v100, (v101))
    {
      __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
      v102 = v121;
      v103 = v31;
      v104 = v17;
      v105 = v18;
      v106 = v47;
      v107 = v120;
      sub_24F922288();
      v109 = v108;
      v145.origin.x = v118;
      v145.origin.y = v117;
      v145.size.width = v102;
      v145.size.height = v107;
      v110 = CGRectGetWidth(v145);
      __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
      sub_24F92C1D8();
      sub_24F922228();
      v146.origin.x = v106;
      v18 = v105;
      v17 = v104;
      v31 = v103;
      v32 = v124;
      v146.origin.y = floor(MaxY);
      v146.size.width = v110;
      v146.size.height = v109;
      CGRectGetMaxY(v146);
    }
  }

  __swift_project_boxed_opaque_existential_1(v7 + 74, v7[77]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v14 + 8))(v16, v13);
  v147.origin.x = v31;
  v147.origin.y = v32;
  v147.size.width = v17;
  v147.size.height = v18;
  CGRectGetMinY(v147);
  v148.origin.x = v31;
  v148.origin.y = v32;
  v148.size.width = v17;
  v148.size.height = v18;
  CGRectGetWidth(v148);
  return sub_24F922128();
}