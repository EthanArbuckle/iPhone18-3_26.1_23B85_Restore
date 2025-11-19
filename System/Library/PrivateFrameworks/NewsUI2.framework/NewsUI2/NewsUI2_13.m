void sub_218825DB8()
{
  if (!qword_280E8E038)
  {
    sub_2186D6710(255, &qword_280E8E080);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E038);
    }
  }
}

uint64_t sub_218825E4C()
{
  swift_getObjectType();
  sub_219BF6A64();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F74();

  v1 = sub_219BE2E54();
  sub_219BE3064();

  v2 = sub_219BE31C4();

  return v2;
}

uint64_t sub_218825FD4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_218826068;

  return MEMORY[0x2821D0E90]();
}

uint64_t sub_218826068(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_218826168, 0, 0);
}

_BYTE *sub_21882618C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

NSObject *sub_2188261C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a3)
  {
    v6 = [*a1 respondsToSelector_];
    swift_unknownObjectRetain();
    if ((v6 & 1) == 0 || ([v4 isSportsSyncingSupported] & 1) == 0)
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v7 = sub_219BE5434();
      __swift_project_value_buffer(v7, qword_280F62730);
      v8 = sub_219BE5414();
      v9 = sub_219BF61F4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_40;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_2186D1058(0x73696C6863746177, 0xE900000000000074, &v40);
      _os_log_impl(&dword_2186C1000, v8, v9, "Sports sync manager '%{public}s' no access due to app config disabling syncing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      v12 = v10;
LABEL_39:
      MEMORY[0x21CECF960](v12, -1, -1);
LABEL_40:

      sub_218826838();
      swift_allocError();
      swift_willThrow();
      swift_unknownObjectRelease();
      return v8;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  sub_219BE20E4();
  v13 = v40;
  if (v40 != 1)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F62730);
    v8 = sub_219BE5414();
    v23 = sub_219BF61F4();
    if (!os_log_type_enabled(v8, v23))
    {
      goto LABEL_40;
    }

    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v16 = 136446466;
    if (a3)
    {
      v25 = 0x73696C6863746177;
    }

    else
    {
      v25 = 1937204590;
    }

    if (a3)
    {
      v26 = 0xE900000000000074;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = sub_2186D1058(v25, v26, &v40);

    *(v16 + 4) = v27;
    *(v16 + 12) = 2082;
    if (v13)
    {
      v28 = 0x754F64656E676973;
    }

    else
    {
      v28 = 0x6D72657465646E75;
    }

    if (v13)
    {
      v29 = 0xE900000000000074;
    }

    else
    {
      v29 = 0xEC00000064656E69;
    }

    v30 = sub_2186D1058(v28, v29, &v40);

    *(v16 + 14) = v30;
    _os_log_impl(&dword_2186C1000, v8, v23, "Sports sync manager '%{public}s' no access due to iCloud account status '%{public}s'", v16, 0x16u);
    swift_arrayDestroy();
    v21 = v24;
LABEL_38:
    MEMORY[0x21CECF960](v21, -1, -1);
    v12 = v16;
    goto LABEL_39;
  }

  if ((a3 & 1) != 0 && v5 != 1)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F62730);
    v8 = sub_219BE5414();
    v15 = sub_219BF61F4();
    if (!os_log_type_enabled(v8, v15))
    {
      goto LABEL_40;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_2186D1058(0x73696C6863746177, 0xE900000000000074, &v40);
    *(v16 + 12) = 2082;
    if (v5)
    {
      v18 = 0x754F64656E676973;
    }

    else
    {
      v18 = 0x6D72657465646E75;
    }

    if (v5)
    {
      v19 = 0xE900000000000074;
    }

    else
    {
      v19 = 0xEC00000064656E69;
    }

    v20 = sub_2186D1058(v18, v19, &v40);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_2186C1000, v8, v15, "Sports sync manager '%{public}s' no access due to iTunes account status '%{public}s'", v16, 0x16u);
    swift_arrayDestroy();
    v21 = v17;
    goto LABEL_38;
  }

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v32 = sub_219BE5434();
  __swift_project_value_buffer(v32, qword_280F62730);
  v33 = sub_219BE5414();
  v34 = sub_219BF6214();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v35 = 136446210;
    if (a3)
    {
      v37 = 0x73696C6863746177;
    }

    else
    {
      v37 = 1937204590;
    }

    if (a3)
    {
      v38 = 0xE900000000000074;
    }

    else
    {
      v38 = 0xE400000000000000;
    }

    v39 = sub_2186D1058(v37, v38, &v40);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_2186C1000, v33, v34, "Sports sync manager '%{public}s' access allowed", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x21CECF960](v36, -1, -1);
    MEMORY[0x21CECF960](v35, -1, -1);
  }

  sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_218826838()
{
  result = qword_280EC6A48;
  if (!qword_280EC6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A48);
  }

  return result;
}

void sub_21882688C(void *a1, const char *a2)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62730);
  v5 = a1;
  oslog = sub_219BE5414();
  v6 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_219BF7A04();
    v11 = sub_2186D1058(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2186C1000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_218826A40(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 104))(v2, &off_282A6CEF8, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218826AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v59 = a1;
  sub_21880B9E0();
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0644();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v10;
  sub_21880B928();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BF11C4();
  v16 = *(v63 - 8);
  v17 = MEMORY[0x28223BE20](v63);
  v54 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v60 = &v53 - v22;
  sub_2187DD4F0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09BA0;
  sub_218812314(v64, v25, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v27 = sub_219BF5484();
  v29 = v28;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_2186FC3BC();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  sub_219BF6214();
  sub_219BE5314();

  v64 = v4;
  sub_219BE6EC4();
  v65 = v67;
  v30 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v30);
  sub_219BE7B94();

  v31 = sub_218827310();
  (*(v13 + 8))(v15, v12);
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v37 = type metadata accessor for TodayFeedServiceConfig();
    v38 = sub_2187DF448();
    v39 = v58;
    v55 = v38;
    v56 = v37;
    sub_219BEE844();
    v67 = *__swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v59 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
    v40 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    v41 = v40(0);
    v42 = v62;
    if (v41 == 6)
    {
      v43 = sub_219BF1AE4();
      v44 = v61;
      v45 = v57;
      if (v43)
      {
        v46 = MEMORY[0x277D32EF8];
      }

      else
      {
        v46 = MEMORY[0x277D32EF0];
      }

      (*(v61 + 104))(v57, *v46, v42);
    }

    else
    {
      v44 = v61;
      v45 = v57;
      (*(v61 + 104))(v57, *MEMORY[0x277D32EF0], v62);
    }

    sub_2187E1408(&qword_280E90ED0, MEMORY[0x277D32F00]);
    sub_219BF5874();
    sub_219BF5874();
    if (v67 == v65 && v68 == v66)
    {
      v47 = *(v44 + 8);
      v47(v45, v42);
      v47(v39, v42);

      v36 = MEMORY[0x277D331F8];
    }

    else
    {
      v48 = sub_219BF78F4();
      v49 = *(v44 + 8);
      v49(v45, v42);
      v49(v39, v42);

      if (v48)
      {
        v36 = MEMORY[0x277D331F8];
      }

      else
      {
        v36 = MEMORY[0x277D331E0];
      }
    }

    sub_219BEE844();
    sub_21885AB78(v31);
  }

  else
  {
    v32 = off_282A6CF18;
    type metadata accessor for TodayDataManager();
    v33 = v55;
    v32();
    v34 = sub_219BF1B14();
    sub_21880BA68(v33, sub_21880B9E0);
    v35 = MEMORY[0x277D32EF8];
    if ((v34 & 1) == 0)
    {
      v35 = MEMORY[0x277D32EF0];
    }

    v21 = v54;
    (*(v61 + 104))(v54, *v35, v62);
    v36 = MEMORY[0x277D331F8];
  }

  v50 = v63;
  (*(v16 + 104))(v21, *v36, v63);
  v51 = v60;
  (*(v16 + 32))(v60, v21, v50);
  sub_218827434(v51);
  return (*(v16 + 8))(v51, v50);
}

uint64_t sub_218827310()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_21880B928();
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218744E0C(v2, sub_21880702C);
  }

  type metadata accessor for TodayFeedServiceConfig();
  sub_2186EF984(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_218827434(char *a1)
{
  v2 = v1;
  sub_21880B9E0();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MastheadModelContext();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = off_282A6CF18;
  type metadata accessor for TodayDataManager();
  v11();
  v12 = sub_219BF1B14();
  sub_21880BA68(v6, sub_21880B9E0);
  v13 = MEMORY[0x277D85000];
  v14 = [*(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x120)) cachedSubscription];
  LOBYTE(v6) = [v14 isSubscribed];

  v15 = sub_218827700(v2);
  v16 = *(v8 + 36);
  v17 = sub_219BF11C4();
  (*(*(v17 - 8) + 16))(&v10[v16], a1, v17);
  v18 = (v2 + *((*v13 & *v2) + 0x100));
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v19 = sub_2187FF474(a1);
  *v10 = v12 & 1;
  v10[1] = v6;
  v10[2] = v15 & 1;
  v10[*(v8 + 40)] = v19 & 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_21882783C(v10, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_21880BA68(v10, type metadata accessor for MastheadModelContext);
}

uint64_t sub_218827700(void *a1)
{
  sub_21880B9E0();
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x150)) useOfflineMode])
  {
    v5 = off_282A6CF18;
    type metadata accessor for TodayDataManager();
    v5();
    v6 = sub_219BF1B44();
    sub_21880BA68(v4, sub_21880B9E0);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void *sub_21882783C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = sub_2187E1408(&qword_280ECFA70, type metadata accessor for TodayViewController);
    (*(v5 + 32))(a2, v7, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v8 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    v11 = sub_2187E1408(&qword_280ECFA70, type metadata accessor for TodayViewController);
    (*(v9 + 32))(a2, v11, a1, v10, v9);
    swift_unknownObjectRelease();
  }

  result = sub_21978A40C();
  if (result)
  {
    v14 = v13;
    v15 = swift_getObjectType();
    v16 = sub_2187E1408(&qword_280ECFA60, type metadata accessor for TodayViewController);
    v17 = type metadata accessor for MastheadModelContext();
    (*(v14 + 8))(a2, v16, a1 + *(v17 + 28), v15, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218827A40(uint64_t a1)
{
  v70 = a1;
  sub_21875D3C8();
  v3 = v2;
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v65 - v10;
  v12 = sub_219BE8DB4();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v18 = type metadata accessor for MastheadModelSupplementaryInfo();
  result = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  v23 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model);
  if (((1 << (v23 >> 60)) & 0x1DE) == 0)
  {
    if (v23 >> 60)
    {
      v39 = v23 & 0xFFFFFFFFFFFFFFFLL;
      sub_218A6E4C8();
      v41 = v40;
      v68 = v39;
      v42 = swift_projectBox();
      v43 = (v42 + *(v41 + 48));
      v44 = *v43;
      v66 = v43[1];
      v67 = v44;
      v69 = v1;
      v45 = *(v73 + 16);
      v45(v5, v42, v3);
      v65 = swift_allocBox();
      v47 = v46;
      v48 = &v46[*(v41 + 48)];
      v49 = *(v41 + 64);
      v45(v46, v5, v3);
      v50 = v66;
      *v48 = v67;
      *(v48 + 1) = v50;
      v51 = v69;
      v47[v49] = *(v70 + 2);
      *(v51 + v22) = v65 | 0x5000000000000000;
      v52 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
      swift_beginAccess();
      sub_218812294(v51 + v52, v9, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      v54 = v71;
      v53 = v72;
      if ((*(v71 + 48))(v9, 1, v72) == 1)
      {
        v55 = *(v73 + 8);

        v55(v5, v3);
        sub_2188174B8(v9, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      }

      else
      {
        (*(v54 + 32))(v15, v9, v53);
        v56 = v51 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
        Strong = swift_unknownObjectWeakLoadStrong();
        v58 = v54;
        if (Strong)
        {
          v59 = Strong;
          v60 = *(v56 + 8);

          sub_218812E9C(v15, v59, v60);
          swift_unknownObjectRelease();
          (*(v58 + 8))(v15, v53);
        }

        else
        {
          v63 = v53;
          v64 = *(v54 + 8);

          v64(v15, v63);
        }

        (*(v73 + 8))(v5, v3);
      }
    }

    else
    {
      sub_2187FF18C();
      v25 = v24;
      v26 = swift_projectBox();
      v27 = *v26;
      sub_21881CF74(v26 + *(v25 + 64), v21, type metadata accessor for MastheadModelSupplementaryInfo);
      v28 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_featureAvailability);
      v29 = v23 & 0xFFFFFFFFFFFFFFFLL;

      if ([v28 useOfflineMode])
      {
        v73 = v29;
        v30 = swift_allocBox();
        v32 = v31;
        v33 = *(v25 + 48);
        v34 = v1;
        v35 = *(v25 + 64);
        *v31 = v27;
        sub_21881CF74(v70, v31 + v33, type metadata accessor for MastheadModelContext);
        sub_21881CF74(v21, v32 + v35, type metadata accessor for MastheadModelSupplementaryInfo);
        *(v34 + v22) = v30;

        v36 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
        swift_beginAccess();
        sub_218812294(v34 + v36, v11, &qword_280EE4768, MEMORY[0x277D6E2A8]);
        v38 = v71;
        v37 = v72;
        if ((*(v71 + 48))(v11, 1, v72) == 1)
        {

          sub_218819144(v21, type metadata accessor for MastheadModelSupplementaryInfo);
          sub_2188174B8(v11, &qword_280EE4768, MEMORY[0x277D6E2A8]);
        }

        else
        {
          (*(v38 + 32))(v17, v11, v37);
          v61 = v34 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
          v62 = swift_unknownObjectWeakLoadStrong();
          if (v62)
          {
            sub_218812E9C(v17, v62, *(v61 + 8));

            swift_unknownObjectRelease();
          }

          else
          {
          }

          (*(v38 + 8))(v17, v37);
          sub_218819144(v21, type metadata accessor for MastheadModelSupplementaryInfo);
        }
      }

      else
      {
        sub_218819144(v21, type metadata accessor for MastheadModelSupplementaryInfo);
      }
    }
  }

  return result;
}

uint64_t sub_21882814C()
{
  v1 = sub_219BF11C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F62790);
  v6 = v0;
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_feedModeState;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v6[v11], v1);
    v12 = sub_219BF11A4();
    v14 = v13;
    (*(v2 + 8))(v4, v1);
    v15 = sub_2186D1058(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2186C1000, v7, v8, "OfflineStatusBannerDataManager updating desired feed mode with feedModeState: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  return MEMORY[0x21CEC15C0]();
}

char *sub_218828394(char *result, int64_t a2, char a3, char *a4)
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
    sub_2187C3D44(0, &unk_280E8B5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2188284AC(double a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_219BE3494();
}

void sub_218828578(_BYTE *a1)
{
  if (*a1 == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = Strong + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        swift_getObjectType();
        v5 = *(v4 + 24);
        v6 = v2;
        v5();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_218828650()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_219045BE0;
  }

  else
  {

    v2 = sub_218828F64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2188288BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a2;
  v53 = a8;
  v49 = a5;
  v50 = a7;
  v48 = a6;
  v14 = type metadata accessor for TodayExpandContext();
  v44[0] = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v44[1] = v15;
  v45 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBD34();
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v20 = qword_280F616D8;
  sub_2186F20D4();
  v51 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v23 = MEMORY[0x277D83A80];
  *(v22 + 56) = MEMORY[0x277D839F8];
  *(v22 + 64) = v23;
  *(v22 + 32) = v24;
  v25 = MEMORY[0x277D837D0];
  *(v22 + 96) = MEMORY[0x277D837D0];
  v26 = sub_2186FC3BC();
  *(v22 + 104) = v26;
  v54 = a3;
  *(v22 + 72) = a3;
  *(v22 + 80) = a4;
  v58 = v19;
  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_218829498();

  v27 = sub_219BE2324();
  *(v22 + 136) = v25;
  *(v22 + 144) = v26;
  *(v22 + 112) = v27;
  *(v22 + 120) = v28;
  sub_219BF6214();
  v52 = v20;
  sub_219BE5314();

  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  sub_219BEF3D4();
  LOBYTE(v20) = sub_219BEE804();

  if (v20)
  {
    sub_219BEF3D4();
    sub_219BEE794();

    if (qword_280EE9490 != -1)
    {
      swift_once();
    }

    type metadata accessor for TodayDataManager();
    sub_2187EA20C(&unk_280ED7570, v29, type metadata accessor for TodayDataManager);
    sub_219BDCA54();
    swift_beginAccess();
    v56 = v49;
    v57 = v48;

    sub_219BE2E94();

    (*(v46 + 8))(v18, v47);
  }

  v30 = v53;
  if (v53)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09EC0;
    v32 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = v26;
    v33 = v50;
    *(v31 + 32) = v50;
    *(v31 + 40) = v30;
    *(v31 + 96) = v32;
    *(v31 + 104) = v26;
    v34 = v54;
    *(v31 + 72) = v54;
    *(v31 + 80) = a4;

    sub_219BF6214();
    sub_219BE5314();

    return sub_21939BE90(v19, v34, a4, a11, v33, v30);
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_219C09BA0;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = v26;
    v37 = v54;
    *(v36 + 32) = v54;
    *(v36 + 40) = a4;

    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v38);
    v44[-4] = v55;
    v44[-3] = v19;
    v44[-2] = a11;
    sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v39 = v45;
    sub_218820178(a11, v45, type metadata accessor for TodayExpandContext);
    v40 = (*(v44[0] + 80) + 32) & ~*(v44[0] + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    *(v41 + 24) = a4;
    sub_2188201E0(v39, v41 + v40, type metadata accessor for TodayExpandContext);

    v42 = sub_219BE2E54();
    type metadata accessor for TodayExpandResult();
    v43 = sub_219BE2F74();

    return v43;
  }
}

uint64_t sub_218828F64()
{
  v37 = v0;
  if (qword_280EE5FA0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[10];
  v34 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[3];
  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62628);
  v1(v2, v7, v3);
  (*(v5 + 16))(v4, v34, v6);
  v9 = sub_219BE5414();
  v33 = sub_219BF6214();
  v10 = os_log_type_enabled(v9, v33);
  v11 = v0[25];
  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = v0[13];
  v35 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  if (v10)
  {
    v29 = v0[8];
    v32 = v0[16];
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v19 = 136315394;
    v31 = v11;
    v20 = sub_219BEC0F4();
    log = v9;
    v22 = v21;
    (*(v13 + 8))(v12, v14);
    v23 = sub_2186D1058(v20, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1024;
    LODWORD(v23) = sub_219BEBFE4() & 1;
    (*(v17 + 8))(v18, v29);
    *(v19 + 14) = v23;
    _os_log_impl(&dword_2186C1000, log, v33, "MastheadAdSponsorshipProviderType did fetch masthead sponsorship for type: %s, isFulfilled: %{BOOL}d", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x21CECF960](v30, -1, -1);
    MEMORY[0x21CECF960](v19, -1, -1);

    (*(v16 + 8))(v32, v35);
    v24 = MEMORY[0x277D2D4B8];
    v25 = v31;
  }

  else
  {
    (*(v17 + 8))(v0[10], v0[8]);

    (*(v13 + 8))(v12, v14);
    (*(v16 + 8))(v15, v35);
    v24 = MEMORY[0x277D2D4B8];
    v25 = v11;
  }

  sub_219046528(v25, &qword_280EE3408, v24);
  (*(v0[9] + 32))(v0[2], v0[11], v0[8]);
  (*(v0[9] + 56))(v0[2], 0, 1, v0[8]);

  v26 = v0[1];

  return v26();
}

uint64_t sub_2188293B8()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62628);
  __swift_project_value_buffer(v0, qword_280F62628);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

unint64_t sub_218829498()
{
  result = qword_280E91620;
  if (!qword_280E91620)
  {
    sub_21881F258(255, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91620);
  }

  return result;
}

uint64_t sub_218829534()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21882968C, 0, 0);
}

uint64_t sub_21882968C()
{
  sub_219BF5BD4();
  *(v0 + 64) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_21883DC50, v2, v1);
}

uint64_t sub_218829720()
{
  v0 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v89 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v84 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v83 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v81);
  v80 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v78 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BED544();
  v75 = *(v23 - 8);
  v76 = v23;
  MEMORY[0x28223BE20](v23);
  v74 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v73 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v72 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v71 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v70 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v70 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v70 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v70 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v57);
  v59 = &v70 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v90, v59);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v59, v53, type metadata accessor for NewspaperTodayFeedGroup);
      v60 = sub_219BED784();
      v62 = type metadata accessor for NewspaperTodayFeedGroup;
      goto LABEL_15;
    case 2u:
      sub_2187C58F8(v59, v50, type metadata accessor for LocalNewsTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for LocalNewsTodayFeedGroup;
      v64 = v50;
      goto LABEL_29;
    case 3u:
      sub_2187C58F8(v59, v47, type metadata accessor for TrendingTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for TrendingTodayFeedGroup;
      v64 = v47;
      goto LABEL_29;
    case 4u:
      sub_2187C58F8(v59, v44, type metadata accessor for ForYouTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for ForYouTodayFeedGroup;
      v64 = v44;
      goto LABEL_29;
    case 5u:
      sub_2187C58F8(v59, v41, type metadata accessor for MissedStoriesTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v64 = v41;
      goto LABEL_29;
    case 6u:
      sub_2187C58F8(v59, v38, type metadata accessor for LatestStoriesTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v64 = v38;
      goto LABEL_29;
    case 7u:
      sub_2187C58F8(v59, v35, type metadata accessor for MoreForYouTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for MoreForYouTodayFeedGroup;
      v64 = v35;
      goto LABEL_29;
    case 8u:
      v56 = v70;
      sub_2187C58F8(v59, v70, type metadata accessor for TopicTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_28;
    case 9u:
      v56 = v71;
      sub_2187C58F8(v59, v71, type metadata accessor for MagazineFeedGroup);
      v60 = sub_218CD68A4();
      v61 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_28;
    case 0xAu:
      v56 = v72;
      sub_2187C58F8(v59, v72, type metadata accessor for NewFollowTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_28;
    case 0xBu:
      v56 = v73;
      sub_2187C58F8(v59, v73, type metadata accessor for SubscriptionTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_28;
    case 0xCu:
      v65 = v74;
      v66 = v75;
      v67 = v76;
      (*(v75 + 32))(v74, v59, v76);
      v60 = sub_219BED4C4();
      (*(v66 + 8))(v65, v67);
      return v60;
    case 0xDu:
      v56 = v77;
      sub_2187C58F8(v59, v77, type metadata accessor for SpotlightTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_28;
    case 0xEu:
      v56 = v78;
      sub_2187C58F8(v59, v78, type metadata accessor for SuggestionTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_28;
    case 0xFu:
      v56 = v79;
      sub_2187C58F8(v59, v79, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_28;
    case 0x10u:
      v53 = v80;
      sub_2187C58F8(v59, v80, type metadata accessor for SharedWithYouTodayFeedGroup);
      v60 = sub_219BED784();
      v62 = type metadata accessor for SharedWithYouTodayFeedGroup;
LABEL_15:
      v63 = v62;
      v64 = v53;
      goto LABEL_29;
    case 0x11u:
      v68 = v82;
      sub_2187C58F8(v59, v82, type metadata accessor for EngagementTodayFeedGroup);
      sub_2186F687C();
      sub_219BEDD14();
      sub_2187C8338(v68, type metadata accessor for EngagementTodayFeedGroup);
      v60 = v91;

      return v60;
    case 0x12u:
      v56 = v83;
      sub_2187C58F8(v59, v83, type metadata accessor for MySportsTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_28;
    case 0x13u:
      v56 = v84;
      sub_2187C58F8(v59, v84, type metadata accessor for IntroToSportsTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_28;
    case 0x14u:
      v56 = v85;
      sub_2187C58F8(v59, v85, type metadata accessor for ShortcutsTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_28;
    case 0x15u:
      v56 = v86;
      sub_2187C58F8(v59, v86, type metadata accessor for ChannelTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_28;
    case 0x16u:
      v56 = v87;
      sub_2187C58F8(v59, v87, type metadata accessor for SavedStoriesTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_28;
    case 0x17u:
      v56 = v88;
      sub_2187C58F8(v59, v88, type metadata accessor for ChannelPickerTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_28;
    case 0x18u:
      v56 = v89;
      sub_2187C58F8(v59, v89, type metadata accessor for FoodTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_28;
    default:
      sub_2187C58F8(v59, v56, type metadata accessor for CuratedTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_28:
      v63 = v61;
      v64 = v56;
LABEL_29:
      sub_2187C8338(v64, v63);
      return v60;
  }
}

uint64_t sub_21882A6B4()
{
  v1 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2187C8338(v3, type metadata accessor for TodayFeedGroup);
  return byte_219C0E2E6[EnumCaseMultiPayload];
}

uint64_t sub_21882A76C()
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](0);
  return sub_219BF7AE4();
}

uint64_t sub_21882A7B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21882A6B4();
  *a1 = result;
  return result;
}

void sub_21882A7DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21882B6C4();
  }
}

uint64_t sub_21882A830()
{
  v0 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v86 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v75 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BED544();
  v73 = *(v21 - 8);
  v74 = v21;
  MEMORY[0x28223BE20](v21);
  v72 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v71 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v70 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v69 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v68 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v67 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v55);
  v57 = &v67 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v87, v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v57, v51, type metadata accessor for NewspaperTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v51;
      goto LABEL_28;
    case 2u:
      sub_2187C58F8(v57, v48, type metadata accessor for LocalNewsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v48;
      goto LABEL_28;
    case 3u:
      sub_2187C58F8(v57, v45, type metadata accessor for TrendingTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v45;
      goto LABEL_28;
    case 4u:
      sub_2187C58F8(v57, v42, type metadata accessor for ForYouTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v42;
      goto LABEL_28;
    case 5u:
      sub_2187C58F8(v57, v39, type metadata accessor for MissedStoriesTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v62 = v39;
      goto LABEL_28;
    case 6u:
      sub_2187C58F8(v57, v36, type metadata accessor for LatestStoriesTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v62 = v36;
      goto LABEL_28;
    case 7u:
      sub_2187C58F8(v57, v33, type metadata accessor for MoreForYouTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for MoreForYouTodayFeedGroup;
      v62 = v33;
      goto LABEL_28;
    case 8u:
      v54 = v68;
      sub_2187C58F8(v57, v68, type metadata accessor for TopicTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v54 = v69;
      sub_2187C58F8(v57, v69, type metadata accessor for MagazineFeedGroup);
      v58 = sub_218CDABFC();
      v59 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v54 = v70;
      sub_2187C58F8(v57, v70, type metadata accessor for NewFollowTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v54 = v71;
      sub_2187C58F8(v57, v71, type metadata accessor for SubscriptionTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_27;
    case 0xCu:
      v63 = v72;
      v64 = v73;
      v65 = v74;
      (*(v73 + 32))(v72, v57, v74);
      v58 = sub_219BED4F4();
      (*(v64 + 8))(v63, v65);
      return v58;
    case 0xDu:
      v54 = v75;
      sub_2187C58F8(v57, v75, type metadata accessor for SpotlightTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v54 = v76;
      sub_2187C58F8(v57, v76, type metadata accessor for SuggestionTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
      v54 = v77;
      sub_2187C58F8(v57, v77, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_27;
    case 0x10u:
      v60 = v78;
      sub_2187C58F8(v57, v78, type metadata accessor for SharedWithYouTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v60;
      goto LABEL_28;
    case 0x11u:
      sub_2187C8338(v57, type metadata accessor for TodayFeedGroup);
      return MEMORY[0x277D84F90];
    case 0x12u:
      v54 = v80;
      sub_2187C58F8(v57, v80, type metadata accessor for MySportsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v54 = v81;
      sub_2187C58F8(v57, v81, type metadata accessor for IntroToSportsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v54 = v82;
      sub_2187C58F8(v57, v82, type metadata accessor for ShortcutsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v54 = v83;
      sub_2187C58F8(v57, v83, type metadata accessor for ChannelTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v54 = v84;
      sub_2187C58F8(v57, v84, type metadata accessor for SavedStoriesTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v54 = v85;
      sub_2187C58F8(v57, v85, type metadata accessor for ChannelPickerTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v54 = v86;
      sub_2187C58F8(v57, v86, type metadata accessor for FoodTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v57, v54, type metadata accessor for CuratedTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v61 = v59;
      v62 = v54;
LABEL_28:
      sub_2187C8338(v62, v61);
      return v58;
  }
}

void sub_21882B6C4()
{
  if (((1 << (*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60)) & 0x1E2) != 0)
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEEA0);
    sub_219BE3E14();
  }

  else
  {
    v1 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_animationManager;
    v2 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEEA0);
    sub_219BE3E24();

    *(*(v0 + v1) + 16) = 0;
  }
}

uint64_t sub_21882B7BC()
{
  v0 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v98 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v91);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v90 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v89 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v87 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v86 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v85 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v84 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BF1904();
  v49 = *(v48 - 8);
  v100 = v48;
  v101 = v49;
  MEMORY[0x28223BE20](v48);
  v99 = &v84 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v84 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v54);
  v56 = &v84 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v102, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v56, v47, type metadata accessor for NewspaperTodayFeedGroup);
      v72 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v72, v100);
      v63 = type metadata accessor for NewspaperTodayFeedGroup;
      v64 = v47;
      goto LABEL_27;
    case 2u:
      sub_2187C58F8(v56, v44, type metadata accessor for LocalNewsTodayFeedGroup);
      v67 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v67, v100);
      v66 = type metadata accessor for LocalNewsTodayFeedGroup;
      goto LABEL_10;
    case 3u:
      sub_2187C58F8(v56, v41, type metadata accessor for TrendingTodayFeedGroup);
      v69 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v69, v100);
      v63 = type metadata accessor for TrendingTodayFeedGroup;
      v64 = v41;
      goto LABEL_27;
    case 4u:
      sub_2187C58F8(v56, v38, type metadata accessor for ForYouTodayFeedGroup);
      v62 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v62, v100);
      v63 = type metadata accessor for ForYouTodayFeedGroup;
      v64 = v38;
      goto LABEL_27;
    case 5u:
      sub_2187C58F8(v56, v35, type metadata accessor for MissedStoriesTodayFeedGroup);
      v75 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v75, v100);
      v63 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v64 = v35;
      goto LABEL_27;
    case 6u:
      sub_2187C58F8(v56, v32, type metadata accessor for LatestStoriesTodayFeedGroup);
      v78 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v78, v100);
      v63 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v64 = v32;
      goto LABEL_27;
    case 7u:
      sub_2187C58F8(v56, v29, type metadata accessor for MoreForYouTodayFeedGroup);
      v70 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v70, v100);
      v63 = type metadata accessor for MoreForYouTodayFeedGroup;
      v64 = v29;
      goto LABEL_27;
    case 8u:
      v53 = v84;
      sub_2187C58F8(v56, v84, type metadata accessor for TopicTodayFeedGroup);
      v81 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v81, v100);
      v59 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_26;
    case 9u:
      v44 = v85;
      sub_2187C58F8(v56, v85, type metadata accessor for MagazineFeedGroup);
      v57 = sub_218CDC10C();
      v66 = type metadata accessor for MagazineFeedGroup;
LABEL_10:
      v63 = v66;
      v64 = v44;
      goto LABEL_27;
    case 0xAu:
      v53 = v86;
      sub_2187C58F8(v56, v86, type metadata accessor for NewFollowTodayFeedGroup);
      v80 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v80, v100);
      v59 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_26;
    case 0xBu:
      v53 = v87;
      sub_2187C58F8(v56, v87, type metadata accessor for SubscriptionTodayFeedGroup);
      v61 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v61, v100);
      v59 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_26;
    case 0xCu:
    case 0x11u:
    case 0x18u:
      sub_2187C8338(v56, type metadata accessor for TodayFeedGroup);
      return 0;
    case 0xDu:
      v53 = v88;
      sub_2187C58F8(v56, v88, type metadata accessor for SpotlightTodayFeedGroup);
      v65 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v65, v100);
      v59 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_26;
    case 0xEu:
      v53 = v89;
      sub_2187C58F8(v56, v89, type metadata accessor for SuggestionTodayFeedGroup);
      v77 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v77, v100);
      v59 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_26;
    case 0xFu:
      v53 = v90;
      sub_2187C58F8(v56, v90, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v60 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v60, v100);
      v59 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_26;
    case 0x10u:
      v53 = v92;
      sub_2187C58F8(v56, v92, type metadata accessor for SharedWithYouTodayFeedGroup);
      v68 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v68, v100);
      v59 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_26;
    case 0x12u:
      v53 = v93;
      sub_2187C58F8(v56, v93, type metadata accessor for MySportsTodayFeedGroup);
      v58 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v58, v100);
      v59 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_26;
    case 0x13u:
      v53 = v94;
      sub_2187C58F8(v56, v94, type metadata accessor for IntroToSportsTodayFeedGroup);
      v73 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v73, v100);
      v59 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_26;
    case 0x14u:
      v53 = v95;
      sub_2187C58F8(v56, v95, type metadata accessor for ShortcutsTodayFeedGroup);
      v79 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v79, v100);
      v59 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_26;
    case 0x15u:
      v53 = v96;
      sub_2187C58F8(v56, v96, type metadata accessor for ChannelTodayFeedGroup);
      v82 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v82, v100);
      v59 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_26;
    case 0x16u:
      v53 = v97;
      sub_2187C58F8(v56, v97, type metadata accessor for SavedStoriesTodayFeedGroup);
      v74 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v74, v100);
      v59 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 0x17u:
      v53 = v98;
      sub_2187C58F8(v56, v98, type metadata accessor for ChannelPickerTodayFeedGroup);
      v76 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v76, v100);
      v59 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_26;
    default:
      sub_2187C58F8(v56, v53, type metadata accessor for CuratedTodayFeedGroup);
      v71 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v71, v100);
      v59 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_26:
      v63 = v59;
      v64 = v53;
LABEL_27:
      sub_2187C8338(v64, v63);
      return v57;
  }
}

uint64_t sub_21882C944(char a1)
{
  v2 = v1;
  v26.receiver = v2;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidAppear_, a1 & 1);
  sub_219BE1D04();
  v4 = [v2 view];
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v4 window];

  if (v6)
  {
    v8 = [v6 windowScene];

    if (v8)
    {
      v9 = [v8 activationState];
      if (v9 >= 2)
      {
        if (v9 != -1 && v9 != 2)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_219BE1D04();
      }
    }
  }

  sub_2187DEAC4(&qword_280ECFAA8, v7, type metadata accessor for TodayViewController);
  sub_219BE1D54();
  v10 = OBJC_IVAR____TtC7NewsUI219TodayViewController_didAppearCompletions;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = *(v11 + 16);

  if (v12)
  {
    v13 = 0;
    v14 = v11 + 40;
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *(v14 - 8);

      v15(v16);

      v14 += 16;
      if (v12 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_13:

  *&v2[v10] = MEMORY[0x277D84F90];

  v17 = [v2 view];
  if (!v17)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  v18 = v17;
  v19 = [v17 window];

  if (v19)
  {
    v20 = [v19 windowScene];

    if (v20)
    {
      v21 = sub_219BF53D4();
      [v20 setTitle_];
    }
  }

  v22 = [v2 tabBarController];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for FloatingTabBarController();
    if (swift_dynamicCastClass())
    {

      sub_219BE2734();

      if (v25 == 1)
      {
        sub_219BE7A74();
      }
    }
  }

  sub_21882DFF4();
  return sub_219BE5964();
}

uint64_t sub_21882CCE0()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t sub_21882CD24(char a1)
{
  result = 0x64657461727543;
  switch(a1)
  {
    case 1:
      result = 0x657061707377654ELL;
      break;
    case 2:
      result = 0x654E206C61636F4CLL;
      break;
    case 3:
      result = 0x676E69646E657254;
      break;
    case 4:
      result = 0x756F5920726F46;
      break;
    case 5:
      v3 = 0x74736574614CLL;
      goto LABEL_21;
    case 6:
      v3 = 0x64657373694DLL;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
      break;
    case 7:
      result = 0x726F462065726F4DLL;
      break;
    case 8:
      result = 0x6369706F54;
      break;
    case 9:
      result = 0x656E697A6167614DLL;
      break;
    case 10:
      result = 0x6C6C6F462077654ELL;
      break;
    case 11:
      result = 0x7069726373627553;
      break;
    case 12:
      result = 25665;
      break;
    case 13:
      result = 0x6867696C746F7053;
      break;
    case 14:
      result = 0x6974736567677553;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x7720646572616853;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x74726F705320794DLL;
      break;
    case 19:
      result = 0x6F54206F72746E49;
      break;
    case 20:
      result = 0x74756374726F6853;
      break;
    case 21:
      result = 0x6C656E6E616843;
      break;
    case 22:
      result = 0x7453206465766153;
      break;
    case 23:
      result = 0x206C656E6E616843;
      break;
    case 24:
      result = 1685024582;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21882D084()
{
  v0 = objc_allocWithZone(sub_219BE9274());
  swift_unknownObjectRetain();
  v1 = sub_219BE9254();
  v2 = sub_219BEE4A4();

  return v2;
}

uint64_t sub_21882D12C@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v85 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v77);
  v76 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v73 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v72 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v71 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v70 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v70 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v70 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v70 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v54);
  v56 = &v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v87, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v56, v50, type metadata accessor for NewspaperTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v50;
      goto LABEL_27;
    case 2u:
      sub_2187C58F8(v56, v47, type metadata accessor for LocalNewsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v47;
      goto LABEL_27;
    case 3u:
      sub_2187C58F8(v56, v44, type metadata accessor for TrendingTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v44;
      goto LABEL_27;
    case 4u:
      sub_2187C58F8(v56, v41, type metadata accessor for ForYouTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v41;
      goto LABEL_27;
    case 5u:
      sub_2187C58F8(v56, v38, type metadata accessor for MissedStoriesTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v62 = v38;
      goto LABEL_27;
    case 6u:
      sub_2187C58F8(v56, v35, type metadata accessor for LatestStoriesTodayFeedGroup);
      v66 = v86;
      sub_219BED874();
      sub_2187C8338(v35, type metadata accessor for LatestStoriesTodayFeedGroup);
      v67 = sub_219BF1904();
      v68 = *(*(v67 - 8) + 56);
      v69 = v66;
      return v68(v69, 0, 1, v67);
    case 7u:
      sub_2187C58F8(v56, v32, type metadata accessor for MoreForYouTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for MoreForYouTodayFeedGroup;
      v62 = v32;
      goto LABEL_27;
    case 8u:
      v53 = v70;
      sub_2187C58F8(v56, v70, type metadata accessor for TopicTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_26;
    case 9u:
      v63 = v78;
      sub_2187C58F8(v56, v78, type metadata accessor for MagazineFeedGroup);
      sub_218CDCFC4(v86);
      return sub_2187C8338(v63, type metadata accessor for MagazineFeedGroup);
    case 0xAu:
      v53 = v71;
      sub_2187C58F8(v56, v71, type metadata accessor for NewFollowTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_26;
    case 0xBu:
      v53 = v72;
      sub_2187C58F8(v56, v72, type metadata accessor for SubscriptionTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_26;
    case 0xCu:
    case 0x11u:
      sub_2187C8338(v56, type metadata accessor for TodayFeedGroup);
      v57 = sub_219BF1904();
      return (*(*(v57 - 8) + 56))(v86, 1, 1, v57);
    case 0xDu:
      v53 = v73;
      sub_2187C58F8(v56, v73, type metadata accessor for SpotlightTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_26;
    case 0xEu:
      v53 = v74;
      sub_2187C58F8(v56, v74, type metadata accessor for SuggestionTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_26;
    case 0xFu:
      v53 = v75;
      sub_2187C58F8(v56, v75, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_26;
    case 0x10u:
      v64 = v56;
      v65 = v76;
      sub_2187C58F8(v64, v76, type metadata accessor for SharedWithYouTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v65;
      goto LABEL_27;
    case 0x12u:
      v53 = v79;
      sub_2187C58F8(v56, v79, type metadata accessor for MySportsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_26;
    case 0x13u:
      v53 = v80;
      sub_2187C58F8(v56, v80, type metadata accessor for IntroToSportsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_26;
    case 0x14u:
      v53 = v81;
      sub_2187C58F8(v56, v81, type metadata accessor for ShortcutsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_26;
    case 0x15u:
      v53 = v82;
      sub_2187C58F8(v56, v82, type metadata accessor for ChannelTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_26;
    case 0x16u:
      v53 = v83;
      sub_2187C58F8(v56, v83, type metadata accessor for SavedStoriesTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 0x17u:
      v53 = v84;
      sub_2187C58F8(v56, v84, type metadata accessor for ChannelPickerTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_26;
    case 0x18u:
      v53 = v85;
      sub_2187C58F8(v56, v85, type metadata accessor for FoodTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_26;
    default:
      sub_2187C58F8(v56, v53, type metadata accessor for CuratedTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_26:
      v61 = v60;
      v62 = v53;
LABEL_27:
      sub_2187C8338(v62, v61);
      v67 = sub_219BF1904();
      v68 = *(*(v67 - 8) + 56);
      v69 = v59;
      return v68(v69, 0, 1, v67);
  }
}

uint64_t sub_21882DFF4()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1(v0 + 38, v0[41]) + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v4 = v1 + 32;
    do
    {
      sub_218718690(v4, v9);
      v5 = v10;
      v6 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v6 + 8))(0, 0, 4, v3, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  v9[0] = v7 | 0x4000000000000002;

  sub_219BE7884();
}

uint64_t sub_21882E11C()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21882E160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v5 = *v3;
  v6 = *v3;
  v45[4] = a2;
  v46 = v6;
  sub_2186D8D0C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v45 - v8;
  sub_2186D8D0C(0, qword_280ED5D90, type metadata accessor for MagazineFeedGroup);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v45 - v11;
  v13 = *(v5 + 88);
  v14 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45[2] = v14;
  v45[3] = v13;
  v45[0] = swift_getAssociatedConformanceWitness();
  v45[1] = AssociatedTypeWitness;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = *(v17 + 16);
  v48 = a1;
  v21(v45 - v22, a1, v16);
  v23 = type metadata accessor for MagazineFeedGroup();
  v24 = swift_dynamicCast();
  v25 = *(*(v23 - 8) + 56);
  if (v24)
  {
    v25(v12, 0, 1, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21882F7FC(v12, type metadata accessor for MagazineFeedGroup);
    if (EnumCaseMultiPayload == 5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25(v12, 1, 1, v23);
    sub_21882F6A8(v12, qword_280ED5D90, type metadata accessor for MagazineFeedGroup);
  }

  v21(v20, v48, v16);
  v27 = type metadata accessor for TodayFeedGroup();
  v28 = swift_dynamicCast();
  v29 = *(*(v27 - 8) + 56);
  if (v28)
  {
    v29(v9, 0, 1, v27);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v30 = swift_getEnumCaseMultiPayload();
      sub_21882F7FC(v9, type metadata accessor for MagazineFeedGroup);
      if (v30 == 5)
      {
LABEL_8:
        v31 = __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
        swift_getAssociatedConformanceWitness();
        v32 = v3;
        v33 = sub_219BE1D74();
        v35 = v34;
        sub_219BEF9A4();
        v36 = sub_219BEF994();
        v37 = sub_218D5A240(v33, v35, v36, v32, *v31, v46, &off_282A75050);

        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        v39 = v47;
        *v47 = v38;
        v40 = *MEMORY[0x277D326D8];
        v41 = sub_219BEF6E4();
        v42 = *(v41 - 8);
        (*(v42 + 104))(v39, v40, v41);
        return (*(v42 + 56))(v39, 0, 1, v41);
      }
    }

    else
    {
      sub_21882F7FC(v9, type metadata accessor for TodayFeedGroup);
    }
  }

  else
  {
    v29(v9, 1, 1, v27);
    sub_21882F6A8(v9, qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  v44 = sub_219BEF6E4();
  return (*(*(v44 - 8) + 56))(v47, 1, 1, v44);
}

uint64_t sub_21882E748()
{

  return swift_deallocObject();
}

void sub_21882E780(char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v110 = a4;
  v111 = a1;
  v109 = a3;
  v108 = a2;
  v6 = sub_219BED174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v107 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v106 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v105 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED184();
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x28223BE20](v11);
  v102 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChannelUpsellTriggerRecord();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v100 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v101 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v93 - v22;
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_offlineProvider], *&v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_offlineProvider + 24]);
  if ((sub_219BEED44() & 1) == 0)
  {
    if (v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_didLoadTriggerRecord] != 1)
    {
      if (qword_280EE6050 != -1)
      {
        swift_once();
      }

      v57 = sub_219BE5434();
      __swift_project_value_buffer(v57, qword_280F62760);
      v58 = v111;
      v59 = v108;
      v60 = v109;
      sub_21882F704(v111, v108, v109);
      v61 = sub_219BE5414();
      v62 = sub_219BF6214();
      sub_21882F8BC(v58, v59, v60);
      v63 = os_log_type_enabled(v61, v62);
      v64 = v110;
      if (v63)
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v65 = 136315138;
        v67 = sub_21882F974(v58, v59, v60);
        v69 = sub_2186D1058(v67, v68, aBlock);
        v58 = v111;

        *(v65 + 4) = v69;
        _os_log_impl(&dword_2186C1000, v61, v62, "Queueing trigger condition %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x21CECF960](v66, -1, -1);
        MEMORY[0x21CECF960](v65, -1, -1);
      }

      sub_21882F704(v58, v59, v60);

      v70 = sub_219BE2E74();
      v72 = v71;
      v73 = *v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v72 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v73 = sub_21882FCDC(0, *(v73 + 2) + 1, 1, v73);
        *v72 = v73;
      }

      v76 = *(v73 + 2);
      v75 = *(v73 + 3);
      if (v76 >= v75 >> 1)
      {
        v73 = sub_21882FCDC((v75 > 1), v76 + 1, 1, v73);
        *v72 = v73;
      }

      *(v73 + 2) = v76 + 1;
      v77 = &v73[32 * v76];
      *(v77 + 4) = v111;
      *(v77 + 5) = v59;
      v77[48] = v60;
      *(v77 + 7) = v64;
      v70(aBlock, 0);
      goto LABEL_28;
    }

    v97 = v9;
    v98 = v7;
    v99 = v6;
    v96 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
    v24 = *&v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord];
    v25 = *(*v24 + *MEMORY[0x277D841D0] + 16);
    v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v24 + v26));
    sub_218B9D8F8(v24 + v25, v23, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v24 + v26));

    v27 = *(v14 + 48);
    v95 = v14 + 48;
    v94 = v27;
    LODWORD(v24) = v27(v23, 1, v13);
    sub_218B9D978(v23, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v28 = v108;
    if (v24 == 1)
    {
      if (qword_280EE6050 != -1)
      {
        swift_once();
      }

      v29 = sub_219BE5434();
      __swift_project_value_buffer(v29, qword_280F62760);
      v30 = sub_219BE5414();
      v31 = sub_219BF6214();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2186C1000, v30, v31, "No trigger record available.  Creating new record.", v32, 2u);
        MEMORY[0x21CECF960](v32, -1, -1);
      }

      v33 = MEMORY[0x277D84F98];
      *v21 = MEMORY[0x277D84F98];
      *(v21 + 1) = v33;
      *(v21 + 2) = v33;
      *(v21 + 3) = v33;
      *(v21 + 4) = v33;
      *(v21 + 5) = v33;
      *(v21 + 6) = v33;
      *(v21 + 7) = v33;
      v34 = MEMORY[0x277D84FA0];
      *(v21 + 8) = v33;
      *(v21 + 9) = v34;
      v35 = *(v13 + 56);
      v36 = sub_219BDBD34();
      (*(*(v36 - 8) + 56))(&v21[v35], 1, 1, v36);
      *&v21[*(v13 + 60)] = 0;
      v37 = (*(v14 + 56))(v21, 0, 1, v13);
      v38 = *&v5[v96];
      MEMORY[0x28223BE20](v37);
      *(&v93 - 2) = v21;
      v39 = *(*v38 + *MEMORY[0x277D841D0] + 16);
      v40 = (*(*v38 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v38 + v40));
      sub_218B9D794(v38 + v39);
      os_unfair_lock_unlock((v38 + v40));

      sub_218B9D978(v21, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    }

    v41 = v110;
    v42 = v111;
    v43 = v109;
    v44 = sub_218B925B4(v111, v28, v109, v110, 0, 0);
    LODWORD(v45) = sub_218B92DB8(v42, v28, v43, v5, v41, v44);
    if (qword_280EE6050 != -1)
    {
      swift_once();
    }

    v46 = sub_219BE5434();
    __swift_project_value_buffer(v46, qword_280F62760);
    v47 = v5;
    v48 = sub_219BE5414();
    v49 = sub_219BF6214();
    v111 = v47;

    if (os_log_type_enabled(v48, v49))
    {
      LODWORD(v110) = v45;
      v45 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      v51 = *&v5[v96];
      *v45 = 136315138;
      v52 = *(*v51 + *MEMORY[0x277D841D0] + 16);
      v53 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v51 + v53));
      v54 = v101;
      sub_218B9D8F8(v51 + v52, v101, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      os_unfair_lock_unlock((v51 + v53));

      if (v94(v54, 1, v13))
      {
        sub_218B9D978(v54, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        v55 = 0x8000000219CE9EE0;
        v56 = 0xD000000000000014;
      }

      else
      {
        v80 = v100;
        sub_218B9D828(v54, v100);
        sub_218B9D978(v54, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        v81 = sub_218B8FA94();
        v55 = v82;
        sub_218B9E6C8(v80, type metadata accessor for ChannelUpsellTriggerRecord);
        v56 = v81;
      }

      v79 = v98;
      v83 = sub_2186D1058(v56, v55, aBlock);

      *(v45 + 4) = v83;
      _os_log_impl(&dword_2186C1000, v48, v49, "\n%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x21CECF960](v50, -1, -1);
      MEMORY[0x21CECF960](v45, -1, -1);

      v78 = v99;
      LOBYTE(v45) = v110;
    }

    else
    {

      v78 = v99;
      v79 = v98;
    }

    v84 = v97;
    if ((v44 != 2) | v45 & 1)
    {
      sub_2186C6148(0, &qword_280E8E3B0);
      v86 = v102;
      v85 = v103;
      v87 = v104;
      (*(v103 + 104))(v102, *MEMORY[0x277D851B8], v104);
      v88 = sub_219BF66E4();
      (*(v85 + 8))(v86, v87);
      v89 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_218B9D80C;
      aBlock[5] = v89;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      aBlock[3] = &block_descriptor_13_1;
      v90 = _Block_copy(aBlock);

      v91 = v105;
      sub_219BED1A4();
      v112 = MEMORY[0x277D84F90];
      sub_218B9F7A4(&qword_280E927E0, 255, MEMORY[0x277D85198]);
      sub_2186DD120(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      v92 = v107;
      sub_219BF7164();
      MEMORY[0x21CECD460](0, v91, v92, v90);
      _Block_release(v90);

      (*(v79 + 8))(v92, v78);
      (*(v106 + 8))(v91, v84);

LABEL_28:
    }
  }
}

uint64_t sub_21882F534()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21882F5B4()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62760);
  __swift_project_value_buffer(v0, qword_280F62760);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21882F6A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186D8D0C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21882F704(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  if (a3 == 2 || a3 == 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_21882F73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21882F79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21882F7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21882F85C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21882F8BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  if (a3 == 2 || a3 == 3)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21882F974(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_219BF7314();

      v8 = 0xD000000000000019;
      v6 = a1;
      v7 = a2;
LABEL_12:
      MEMORY[0x21CECC330](v6, v7);
      return v8;
    }

    sub_219BF7314();

    v8 = 0xD00000000000001CLL;
    MEMORY[0x21CECC330](a1, a2);
LABEL_11:
    v6 = 41;
    v7 = 0xE100000000000000;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v8 = 0;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219D23330);
    sub_218731D50();
    sub_219BF7484();
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646F547265746E65;
  }
}

uint64_t sub_21882FB3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = type metadata accessor for TodayExpandResult();
  v9 = *(v8 + 28);
  v10 = sub_219BEC514();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = type metadata accessor for TodayExpandContext();
  sub_21872ADC8(a3 + *(v11 + 32), &a4[*(v8 + 32)], &unk_280EE56F0, MEMORY[0x277D6D878]);
  *a4 = a1;
  *(a4 + 1) = a2;

  *(a4 + 2) = sub_219BEF6F4();
  sub_219BEF704();
  sub_21882FE00(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2187EA20C(&unk_280EE5DD0, 255, MEMORY[0x277D6D310]);
  v12 = sub_219BF56C4();

  *(a4 + 3) = v12;
  return result;
}

char *sub_21882FCDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BA68, &type metadata for PendingTriggerCondition, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_21882FE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21882FE88()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62778);
  __swift_project_value_buffer(v0, qword_280F62778);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

unint64_t sub_21882FF78()
{
  result = qword_280E8F520;
  if (!qword_280E8F520)
  {
    sub_218830064(255, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F520);
  }

  return result;
}

void sub_218830000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218830064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2188300C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21883012C(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {

    sub_2197C9F18();
  }

  else
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F62778);
    sub_21882F704(a1, a2, a3);
    oslog = sub_219BE5414();
    v7 = sub_219BF6214();
    sub_21882F8BC(a1, a2, a3);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v10 = sub_21882F974(a1, a2, a3);
      v12 = sub_2186D1058(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2186C1000, oslog, v7, "trigger %s not handled. Skipping.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CECF960](v9, -1, -1);
      MEMORY[0x21CECF960](v8, -1, -1);
    }
  }
}

uint64_t objectdestroy_39Tm()
{
  v1 = sub_219BF1584();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_44Tm()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

void sub_2188304DC(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 > 3u)
  {

    sub_218830C78(a4);
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62658);
    sub_21882F704(a1, a2, a3);
    oslog = sub_219BE5414();
    v8 = sub_219BF6214();
    sub_21882F8BC(a1, a2, a3);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_21882F974(a1, a2, a3);
      v13 = sub_2186D1058(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2186C1000, oslog, v8, "BundleViaOfferUpsellHandler: trigger %s not handled. Skipping.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CECF960](v10, -1, -1);
      MEMORY[0x21CECF960](v9, -1, -1);
    }
  }
}

uint64_t sub_2188306DC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v46 = a2;
  v8 = sub_219BF11C4();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BF0644();
  v10 = *(v47 - 8);
  v11 = MEMORY[0x28223BE20](v47);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v16 = MEMORY[0x277D83A80];
  *(v15 + 56) = MEMORY[0x277D839F8];
  *(v15 + 64) = v16;
  *(v15 + 32) = v17;
  v18 = MEMORY[0x277D837D0];
  *(v15 + 96) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v15 + 104) = v19;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;
  type metadata accessor for TodayExpandResult();
  sub_2187EA20C(&qword_280ED46B0, 255, type metadata accessor for TodayExpandResult);

  v20 = sub_219BF7894();
  *(v15 + 136) = v18;
  *(v15 + 144) = v19;
  *(v15 + 112) = v20;
  *(v15 + 120) = v21;
  sub_219BF6214();
  sub_219BE5314();

  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  sub_219BEF3D4();
  sub_219BEE844();

  v22 = v46;
  v50 = *__swift_project_boxed_opaque_existential_1(&v46[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures], *&v46[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24]);
  v23 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  v24 = v22;
  if (v23(0) == 6)
  {
    v25 = v10;
    if (sub_219BF1AE4())
    {
      v26 = MEMORY[0x277D32EF8];
    }

    else
    {
      v26 = MEMORY[0x277D32EF0];
    }

    (*(v10 + 104))(v45, *v26, v47);
  }

  else
  {
    v25 = v10;
    (*(v10 + 104))(v45, *MEMORY[0x277D32EF0], v47);
  }

  v41 = a1;
  sub_2187EA20C(&qword_280E90ED0, 255, MEMORY[0x277D32F00]);
  v46 = v14;
  sub_219BF5874();
  sub_219BF5874();
  v27 = MEMORY[0x277D331F8];
  if ((v50 != v48 || v51 != v49) && (sub_219BF78F4() & 1) == 0)
  {
    v27 = MEMORY[0x277D331E0];
  }

  v28 = v25;
  v29 = *(v25 + 8);
  v30 = v47;
  v29(v45, v47);

  v31 = v40;
  (*(v28 + 16))(v40, v46, v30);
  v33 = v42;
  v32 = v43;
  (*(v42 + 104))(v31, *v27, v43);
  v34 = v24;
  v35 = &v24[OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(v35 + 1);
    ObjectType = swift_getObjectType();
    (*(v36 + 96))(v34, &off_282A6CEF8, v31, ObjectType, v36);
    swift_unknownObjectRelease();
  }

  (*(v33 + 8))(v31, v32);
  v29(v46, v47);
  return sub_218820178(v41, v44, type metadata accessor for TodayExpandResult);
}

void sub_218830C78(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_219BE3DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_featureAvailability), *(v1 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_featureAvailability + 24));
  if (sub_219BE4764())
  {
    swift_getObjectType();
    sub_219BE44E4();
    v8 = sub_219BE3DD4();
    v9 = (*(v5 + 8))(v7, v4);
    if (v8)
    {
      if (qword_280EE5FC0 != -1)
      {
        swift_once();
      }

      v10 = sub_219BE5434();
      __swift_project_value_buffer(v10, qword_280F62658);
      v11 = sub_219BE5414();
      v12 = sub_219BF6214();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2186C1000, v11, v12, "BundleViaOfferUpsellHandler: Application was directly launched by user. Skipping.", v13, 2u);
        MEMORY[0x21CECF960](v13, -1, -1);
      }
    }

    else
    {
      MEMORY[0x28223BE20](v9);
      *(&v19 - 2) = v2;
      sub_219BE3204();
      sub_2187D9028();
      v18 = sub_219BF66A4();
      *(swift_allocObject() + 16) = a1;

      sub_219BE2F94();
    }
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F62658);
    v20 = sub_219BE5414();
    v15 = sub_219BF6214();
    if (os_log_type_enabled(v20, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2186C1000, v20, v15, "BundleViaOfferUpsellHandler: Launch Upsell feature is disabled. Skipping.", v16, 2u);
      MEMORY[0x21CECF960](v16, -1, -1);
    }

    v17 = v20;
  }
}

uint64_t sub_218831034()
{

  return swift_deallocObject();
}

uint64_t sub_218831084()
{
  sub_2186DFC68(qword_280ED46B8, type metadata accessor for TodayExpandResult);

  return sub_219BE2324();
}

uint64_t sub_218831138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [*(*v3 + 16) paidBundleViaOfferAvailability];
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_218831270@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2187DD878(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - v5;
  v6 = MEMORY[0x277D2D6D8];
  sub_2187DD878(0, &qword_280EE32B8, MEMORY[0x277D2D6D8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_2187DD878(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0D560;
  *(inited + 32) = 0x696669746E656469;
  v34 = inited + 32;
  *(inited + 40) = 0xEA00000000007265;
  v11 = v2[1];
  v12 = MEMORY[0x277D837D0];
  *(inited + 48) = *v2;
  *(inited + 56) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = 0x7365526863746566;
  *(inited + 88) = 0xEB00000000746C75;
  v13 = v2[2];
  sub_2187DD658();
  *(inited + 96) = v13;
  *(inited + 120) = v14;
  strcpy((inited + 128), "pluginModels");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v15 = v2[3];
  sub_2187DD810();
  *(inited + 144) = v15;
  *(inited + 168) = v16;
  *(inited + 176) = 0x644165766974616ELL;
  *(inited + 184) = 0xE800000000000000;
  v33 = type metadata accessor for TodayExpandResult();
  sub_218831930(v2 + *(v33 + 28), v9, &qword_280EE32B8, v6);
  v17 = sub_219BEC514();
  v18 = *(v17 - 8);
  LODWORD(v6) = (*(v18 + 48))(v9, 1, v17);

  if (v6 == 1)
  {
    sub_2188319B0(v9, &qword_280EE32B8, MEMORY[0x277D2D6D8]);
    v19 = (inited + 192);
    v20 = MEMORY[0x277D837D0];
    *(inited + 216) = MEMORY[0x277D837D0];
  }

  else
  {
    v21 = sub_219BEC4C4();
    v23 = v22;
    (*(v18 + 8))(v9, v17);
    v19 = (inited + 192);
    v20 = MEMORY[0x277D837D0];
    *(inited + 216) = MEMORY[0x277D837D0];
    if (v23)
    {
      *v19 = v21;
      v24 = v35;
      v25 = v33;
      goto LABEL_6;
    }
  }

  v24 = v35;
  v25 = v33;
  *v19 = 7104878;
  v23 = 0xE300000000000000;
LABEL_6:
  *(inited + 200) = v23;
  *(inited + 224) = 0x6B72616D6B6F6F62;
  *(inited + 232) = 0xE800000000000000;
  sub_218831930(v2 + *(v25 + 32), v24, &unk_280EE56F0, MEMORY[0x277D6D878]);
  v26 = sub_219BE6DF4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_2188319B0(v24, &unk_280EE56F0, MEMORY[0x277D6D878]);
    *(inited + 264) = v20;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  else
  {
    v38 = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    (*(v27 + 32))(boxed_opaque_existential_1, v24, v26);
    sub_218751558(&v37, (inited + 240));
  }

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_2187DD878(0, &qword_280EE7A20, type metadata accessor for TodayExpandResult, MEMORY[0x277D6CC20]);
  v29 = v36;
  v36[3] = v30;
  v29[4] = sub_218831C5C();
  __swift_allocate_boxed_opaque_existential_1(v29);
  return sub_219BE2334();
}

void sub_2188317B0()
{
  if (!qword_280E8F6E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F6E0);
    }
  }
}

uint64_t sub_218831814(uint64_t *a1, void (*a2)(void), SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    a2();
    v8 = *(v3 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v8 respondsToSelector_])
    {
      v9 = [v8 paidBundleViaOfferConfig];
      [v9 *a3];
    }

    LOBYTE(v5) = sub_219BDC8C4();

    *(v3 + v4) = v5 & 1;
  }

  return v5 & 1;
}

uint64_t sub_218831930(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187DD878(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2188319B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187DD878(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218831A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2187A1CDC();
    v3 = sub_219BF75B4();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D84F70];
    v6 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_218819864(v4, &v15, &qword_280E8F6E0, v6, v5 + 8, sub_218831BDC);
      v7 = v15;
      v8 = v16;
      result = sub_21870F700(v15, v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      result = sub_218751558(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_218831BDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_218831C5C()
{
  result = qword_280EE7A28;
  if (!qword_280EE7A28)
  {
    sub_2187DD878(255, &qword_280EE7A20, type metadata accessor for TodayExpandResult, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7A28);
  }

  return result;
}

uint64_t sub_218831D14()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62658);
  __swift_project_value_buffer(v0, qword_280F62658);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_218831E04(char *a1)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_219BF11C4();
  sub_2187E1408(&qword_280E90960, MEMORY[0x277D33200]);
  v3 = sub_219BF7894();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_219BF6214();
  sub_219BE5314();

  return sub_218827434(a1);
}

uint64_t sub_218831F74(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_cachePreFlushTask) + OBJC_IVAR___TSCachePreFlushTask_block;
  v2 = *v1;
  if (*v1)
  {

    v2(v3);
    sub_2187FABEC(v2);
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  *v1 = 0;
  *(v1 + 8) = 0;

  return sub_2187FABEC(v4);
}

uint64_t get_enum_tag_for_layout_string_7NewsUI20A9Activity2O(void *a1)
{
  if (*a1 >> 60 == 15)
  {
    return (*a1 >> 3) + 60;
  }

  else
  {
    return (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3;
  }
}

void sub_21883206C()
{
  type metadata accessor for WebLinkRouteModel.URLType(319);
  if (v0 <= 0x3F)
  {
    sub_218832178(319, &qword_280E8F150, sub_218832280, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_218832178(319, &qword_280EC2CC0, sub_2188322D0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218832178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2188321DC()
{
  sub_21873F65C(319);
  if (v0 <= 0x3F)
  {
    sub_218832178(319, &qword_280EE7018, sub_21873F65C, MEMORY[0x277D6CF30]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_218832280()
{
  if (!qword_280E8F158)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F158);
    }
  }
}

unint64_t sub_2188322D0()
{
  result = qword_280EC2CC8;
  if (!qword_280EC2CC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EC2CC8);
  }

  return result;
}

uint64_t sub_218832350()
{
  result = sub_219BDB954();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WebLinkRouteModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t NewsActivity2.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v2 - 8);
  v204 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE3CA4();
  v201 = *(v4 - 8);
  v202 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v199 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebLinkRouteModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v199 = (&v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WebLinkViewControllerType(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v203 = &v199 - v13;
  v14 = sub_219BEC544();
  v200 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_219BDB954();
  v24 = *(v23 - 8);
  v207 = v23;
  v208 = v24;
  MEMORY[0x28223BE20](v23);
  v206 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDD944();
  MEMORY[0x28223BE20](v26 - 8);
  v205 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NewsActivity2.Article(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = *v1;
  result = 0x7472656C61;
  switch((v33 >> 58) & 0x3C | (v33 >> 1) & 3)
  {
    case 1uLL:
      v115 = &v199 - v32;
      sub_2187B2C48();
      v123 = swift_projectBox();
      sub_219092F4C(v123, v115, type metadata accessor for NewsActivity2.Article);
      *&v215 = 0x2D656C6369747261;
      *(&v215 + 1) = 0xE800000000000000;
      v124 = v115;
      v125 = v31;
      goto LABEL_59;
    case 2uLL:
      v115 = &v199 - v32;
      sub_2187B2C48();
      v116 = swift_projectBox();
      sub_219092F4C(v116, v115, type metadata accessor for NewsActivity2.Article);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v117 = 0x8000000219D09BE0;
      v118 = 0xD000000000000010;
      goto LABEL_58;
    case 3uLL:
      v119 = v33 & 0xFFFFFFFFFFFFFF9;
      v92 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v93 = *(v119 + 24);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v215 = 0x50656C6369747261;
      *(&v215 + 1) = 0xEF2D776569766572;
      goto LABEL_39;
    case 4uLL:
      v105 = swift_projectBox();
      v64 = v207;
      v63 = v208;
      v65 = v206;
      (*(v208 + 16))(v206, v105, v207);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v106 = 0x57656C6369747261;
      v107 = 0xEF2D6B6E694C6265;
      goto LABEL_33;
    case 5uLL:
      v126 = swift_projectBox();
      sub_219092F4C(v126, v22, type metadata accessor for AudioFeedTrack);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v215 = 0xD000000000000012;
      *(&v215 + 1) = 0x8000000219D09BC0;
      v127 = [*v22 identifier];
      v128 = sub_219BF5414();
      v130 = v129;

      MEMORY[0x21CECC330](v128, v130);

      v131 = v215;
      v132 = type metadata accessor for AudioFeedTrack;
      v133 = v22;
      goto LABEL_98;
    case 6uLL:
      v135 = v33 & 0xFFFFFFFFFFFFFF9;
      v136 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v137 = *(v135 + 24);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219092608(v136, v137);
      sub_219BF7314();

      *&v215 = 0x68436573776F7262;
      *(&v215 + 1) = 0xEF2D736C656E6E61;
      if (v137 < 2)
      {
        sub_21909261C(v136, v137);
        v138 = 0xE700000000000000;
        v139 = 0x72616C75676572;
      }

      else if (v137 == 2)
      {
        v138 = 0xE800000000000000;
        v139 = 0x73756C507377656ELL;
      }

      else if (v137 == 3)
      {
        v138 = 0xE900000000000073;
        v139 = 0x77654E6C61636F6CLL;
      }

      else
      {
        *&v221 = 0x69286D6F74737563;
        *(&v221 + 1) = 0xEA00000000003A64;
        MEMORY[0x21CECC330](v136, v137);
        MEMORY[0x21CECC330](41, 0xE100000000000000);
        sub_21909261C(v136, v137);
        v138 = *(&v221 + 1);
        v139 = v221;
      }

      MEMORY[0x21CECC330](v139, v138);
      goto LABEL_111;
    case 7uLL:
      v120 = swift_projectBox();
      sub_219092F4C(v120, v19, type metadata accessor for CampaignRouteModel);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v215 = 0xD000000000000014;
      *(&v215 + 1) = 0x8000000219D09B80;
      if (v19[1])
      {
        v121 = *v19;
        v122 = v19[1];
      }

      else
      {
        v122 = 0x8000000219D09BA0;
        v121 = 0xD000000000000012;
      }

      MEMORY[0x21CECC330](v121, v122);

      v131 = v215;
      v132 = type metadata accessor for CampaignRouteModel;
      v133 = v19;
      goto LABEL_98;
    case 8uLL:
      v115 = &v199 - v32;
      v145 = swift_projectBox();
      sub_219092F4C(v145, v115, type metadata accessor for NewsActivity2.Article);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v117 = 0x8000000219D09B40;
      v118 = 0xD000000000000011;
LABEL_58:
      *&v215 = v118;
      *(&v215 + 1) = v117;
      v124 = v115;
      v125 = v31;
LABEL_59:
      sub_219092F4C(v124, v125, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0();

      v146 = v205;
      sub_2190925A0(v31, v205, MEMORY[0x277D2FB40]);
      v147 = sub_219BDD8A4();
      v149 = v148;
      sub_218790034(v146, MEMORY[0x277D2FB40]);
      MEMORY[0x21CECC330](v147, v149);

      v131 = v215;
      v132 = type metadata accessor for NewsActivity2.Article;
      v133 = v115;
      goto LABEL_98;
    case 9uLL:
      v110 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v111 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v112 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x28);
      strcpy(&v215, "emailSignup-");
      BYTE13(v215) = 0;
      HIWORD(v215) = -5120;

      sub_218CB34F0(v112);
      *&v221 = sub_218C8D290(v111);
      *(&v221 + 1) = v113;
      MEMORY[0x21CECC330](0x2D6D6F72662DLL, 0xE600000000000000);
      v114 = sub_218C8D290(v110);
      MEMORY[0x21CECC330](v114);

      MEMORY[0x21CECC330](v221, *(&v221 + 1));

      sub_218CB34F4(v112);
      return v215;
    case 0xAuLL:
      v140 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v141 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v217 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v218 = v141;
      v219 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v220 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v142 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v215 = v140;
      v216 = v142;
      v143 = v140;
      if (v217)
      {
        v144 = *(&v215 + 1);
        sub_218B5A004(&v215, &v221);
      }

      else
      {
        sub_218B5A004(&v215, &v221);
        v193 = [v143 identifier];
        v143 = sub_219BF5414();
        v144 = v194;
      }

      v195 = sub_218C1D030(v143, v144, *(&v217 + 1));
      goto LABEL_107;
    case 0xBuLL:
      v94 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v95 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v217 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v218 = v95;
      v219 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v220 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v96 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v215 = v94;
      v216 = v96;
      v81 = v94;
      if (!v217)
      {
        goto LABEL_105;
      }

      goto LABEL_72;
    case 0xCuLL:
      return 0x6E69776F6C6C6F66;
    case 0xDuLL:
      return 0xD000000000000011;
    case 0xEuLL:
    case 0x27uLL:
    case 0x35uLL:
      return 0xD000000000000016;
    case 0xFuLL:
      return 0x627548646F6F66;
    case 0x10uLL:
      v78 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v79 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v217 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v218 = v79;
      v219 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v220 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v80 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v215 = v78;
      v216 = v80;
      v81 = v78;
      if (!v217)
      {
        goto LABEL_105;
      }

      goto LABEL_72;
    case 0x11uLL:
      return 0x6546756F59726F66;
    case 0x12uLL:
      return 0xD000000000000011;
    case 0x13uLL:
      v165 = swift_projectBox();
      v166 = v200;
      (*(v200 + 16))(v16, v165, v14);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v215 = 0xD000000000000018;
      *(&v215 + 1) = 0x8000000219D09AE0;
      v167 = sub_219BEC534();
      MEMORY[0x21CECC330](v167);

      v131 = v215;
      (*(v166 + 8))(v16, v14);
      return v131;
    case 0x14uLL:
    case 0x15uLL:
      v35 = memmove(&v215, ((v33 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v213 = 0x2D6575737369;
      v214 = 0xE600000000000000;
      v41 = *(&v215 + 1);
      v42 = v215;
      v43 = HIBYTE(v217) >> 6;
      if (v43)
      {
        if (v43 == 1)
        {
        }

        else
        {
          v221 = v215;
          v222 = v216;
          *&v223 = v217;
          BYTE8(v223) = BYTE8(v217) & 1;
          v42 = sub_219BD47C0(v35, v36, v37, v38, v39, v40);
          v41 = v185;
        }
      }

      else
      {
        v209 = v215;
        v210 = v216;
        v211 = v217;
        v212 = BYTE8(v217) & 1;
        v177 = sub_219092568(&v215, &v221);
        v183 = [sub_219BD4870(v177 v178];
        v42 = sub_219BF5414();
        v41 = v184;

        sub_218AAFFC4(&v215);
      }

      MEMORY[0x21CECC330](v42, v41);

      return v213;
    case 0x16uLL:
    case 0x17uLL:
      v44 = v33 & 0xFFFFFFFFFFFFFF9;
      v45 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v222 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v223 = v45;
      v224 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v46 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v47 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v225 = v46;
      v221 = *(v44 + 16);
      v48 = *(v44 + 96);
      sub_219092568(&v221, &v215);
      v217 = v223;
      v218 = v224;
      *&v219 = v225;
      v215 = v221;
      v216 = v222;

      *&v209 = 0x6761506575737369;
      *(&v209 + 1) = 0xEA00000000002D65;
      v55 = *(&v215 + 1);
      v56 = v215;
      v57 = HIBYTE(v217) >> 6;
      if (v57)
      {
        if (v57 == 1)
        {
        }

        else
        {
          v221 = v215;
          v222 = v216;
          *&v223 = v217;
          BYTE8(v223) = BYTE8(v217) & 1;
          v56 = sub_219BD47C0(v49, v50, v51, v52, v53, v54);
          v55 = v176;
        }
      }

      else
      {
        v221 = v215;
        v222 = v216;
        *&v223 = v217;
        BYTE8(v223) = BYTE8(v217) & 1;
        v174 = [sub_219BD4870(v49 v50];
        v56 = sub_219BF5414();
        v55 = v175;
      }

      sub_218AAFFC4(&v215);
      MEMORY[0x21CECC330](v56, v55);

      MEMORY[0x21CECC330](45, 0xE100000000000000);
      MEMORY[0x21CECC330](v47, v48);

      return v209;
    case 0x18uLL:
      v108 = swift_projectBox();
      v64 = v207;
      v63 = v208;
      v65 = v206;
      (*(v208 + 16))(v206, v108, v207);
      v106 = 0x2D6B6E696CLL;
      v107 = 0xE500000000000000;
LABEL_33:
      *&v215 = v106;
      *(&v215 + 1) = v107;
      sub_2190930F4(&qword_27CC15940, MEMORY[0x277CC9260]);
      v109 = sub_219BF7894();
      goto LABEL_81;
    case 0x19uLL:
      return 0xD000000000000018;
    case 0x1AuLL:
      sub_21896FC94((v33 & 0xFFFFFFFFFFFFFF9) + 16, &v215);
      *&v221 = 0;
      *(&v221 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v221 = 0xD000000000000013;
      *(&v221 + 1) = 0x8000000219D09AC0;
      MEMORY[0x21CECC330](v215, *(&v215 + 1));
      v131 = v221;
      sub_218C113E0(&v215);
      return v131;
    case 0x1BuLL:
      v73 = v33 & 0xFFFFFFFFFFFFFF9;
      v74 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      if (v74 == 255)
      {
        return 0xD000000000000010;
      }

      v76 = *(v73 + 16);
      v75 = *(v73 + 24);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v221 = 0xD000000000000012;
      *(&v221 + 1) = 0x8000000219D09A80;
      *&v215 = v76;
      *(&v215 + 1) = v75;
      LOBYTE(v216) = v74;
      v77 = MagazineSectionConfigKind.identifier.getter();
      MEMORY[0x21CECC330](v77);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      return v221;
    case 0x1CuLL:
      return 0x7374726F7053796DLL;
    case 0x1DuLL:
      return 0x696472616F626E6FLL;
    case 0x1EuLL:
      *&v215 = 0x2D657069636572;
      *(&v215 + 1) = 0xE700000000000000;

      v134 = sub_219BDE624();
      MEMORY[0x21CECC330](v134);

      goto LABEL_111;
    case 0x1FuLL:
      return 0x6F42657069636572;
    case 0x20uLL:
      return 0x6143657069636572;
    case 0x21uLL:
    case 0x29uLL:
      return 0xD000000000000013;
    case 0x22uLL:
      return 0x7244657069636572;
    case 0x23uLL:
      return 0x6946657069636572;
    case 0x24uLL:
      return 0x6F48686372616573;
    case 0x25uLL:
      return 0xD000000000000011;
    case 0x26uLL:
      v168 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v169 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v217 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v218 = v169;
      v219 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v220 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v170 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v215 = v168;
      v216 = v170;
      v81 = v168;
      if (v217)
      {
LABEL_72:
        v171 = *(&v215 + 1);
        sub_218B5A004(&v215, &v221);
      }

      else
      {
LABEL_105:
        sub_218B5A004(&v215, &v221);
        v196 = [v81 identifier];
        v81 = sub_219BF5414();
        v171 = v197;
      }

      v195 = sub_218C1D324(v81, v171, *(&v217 + 1));
LABEL_107:
      v198 = v195;
      sub_218B5A060(&v215);

      return v198;
    case 0x28uLL:
      return 0xD000000000000010;
    case 0x2AuLL:
      v151 = v33 & 0xFFFFFFFFFFFFFF9;
      v152 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v153 = *(v151 + 24);
      v154 = *(v151 + 32);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219092540(v152, v153, v154);
      sub_219BF7314();

      *&v221 = 0xD000000000000014;
      *(&v221 + 1) = 0x8000000219D099A0;
      *&v215 = v152;
      *(&v215 + 1) = v153;
      LOBYTE(v216) = v154;
      v155 = SystemNotificationsRouteModel.identifier.getter();
      v157 = v156;
      sub_219092554(v152, v153, v154);
      MEMORY[0x21CECC330](v155, v157);

      return v221;
    case 0x2BuLL:
      v62 = swift_projectBox();
      v64 = v207;
      v63 = v208;
      v65 = v206;
      (*(v208 + 16))(v206, v62, v207);
      v66 = 0x6465626D45626577;
      v67 = 0xE90000000000002DLL;
      goto LABEL_61;
    case 0x2CuLL:
      v82 = swift_projectBox();
      v83 = v203;
      sub_219092F4C(v82, v203, type metadata accessor for WebLinkViewControllerType);
      sub_219092F4C(v83, v12, type metadata accessor for WebLinkViewControllerType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v189 = v199;
          sub_2190925A0(v12, v199, type metadata accessor for WebLinkRouteModel);
          *&v215 = 0x6577656956626577;
          *(&v215 + 1) = 0xEA00000000002D72;
          MEMORY[0x21CECC330](*v189, v189[1]);
          v131 = v215;
          sub_218790034(v83, type metadata accessor for WebLinkViewControllerType);
          v132 = type metadata accessor for WebLinkRouteModel;
          v133 = v189;
          goto LABEL_98;
        }

        v85 = v208;
        v86 = v206;
        v87 = v12;
        v88 = v207;
        (*(v208 + 32))(v206, v87, v207);
        v89 = 0x2D6B6E694C626577;
        v90 = 0xE800000000000000;
      }

      else
      {
        v85 = v208;
        v86 = v206;
        v187 = v12;
        v88 = v207;
        (*(v208 + 32))(v206, v187, v207);
        *&v215 = 0;
        *(&v215 + 1) = 0xE000000000000000;
        sub_219BF7314();

        v89 = 0x57726573776F7262;
        v90 = 0xEF2D6B6E694C6265;
      }

      *&v215 = v89;
      *(&v215 + 1) = v90;
      v188 = sub_219BDB804();
      MEMORY[0x21CECC330](v188);

      v131 = v215;
      (*(v85 + 8))(v86, v88);
      v186 = type metadata accessor for WebLinkViewControllerType;
LABEL_97:
      v132 = v186;
      v133 = v83;
LABEL_98:
      sub_218790034(v133, v132);
      return v131;
    case 0x2DuLL:
      sub_218C24040();
      v150 = swift_projectBox();
      v64 = v207;
      v63 = v208;
      v65 = v206;
      (*(v208 + 16))(v206, v150, v207);
      v66 = 0x4C63696D616E7964;
      v67 = 0xEC0000002D6B6E69;
LABEL_61:
      *&v215 = v66;
      *(&v215 + 1) = v67;
      goto LABEL_80;
    case 0x2EuLL:
      v172 = swift_projectBox();
      v64 = v207;
      v63 = v208;
      v65 = v206;
      (*(v208 + 16))(v206, v172, v207);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v69 = 0x8000000219D09940;
      v70 = 0xD000000000000012;
      goto LABEL_79;
    case 0x2FuLL:
      v68 = swift_projectBox();
      v64 = v207;
      v63 = v208;
      v65 = v206;
      (*(v208 + 16))(v206, v68, v207);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v69 = 0x8000000219D09920;
      v70 = 0xD000000000000011;
LABEL_79:
      *&v215 = v70;
      *(&v215 + 1) = v69;
LABEL_80:
      v109 = sub_219BDB804();
LABEL_81:
      MEMORY[0x21CECC330](v109);

      v131 = v215;
      (*(v63 + 8))(v65, v64);
      return v131;
    case 0x30uLL:
      return 0x6C46797542657270;
    case 0x31uLL:
      v97 = v33 & 0xFFFFFFFFFFFFFF9;
      v98 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v99 = *(v97 + 24);
      v100 = *(v97 + 32);
      v101 = *(v97 + 40);
      v102 = *(v97 + 48);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_21908FD7C(v98, v99, v100, v101, v102);
      sub_219BF7314();

      *&v215 = 0xD000000000000016;
      *(&v215 + 1) = 0x8000000219D09900;
      if (v102)
      {

        v103 = v98;
        v104 = v99;
      }

      else
      {
        v190 = [v98 identifier];
        v191 = sub_219BF5414();
        v104 = v192;

        v103 = v191;
      }

      MEMORY[0x21CECC330](v103, v104);

      sub_21896FBB0(v98, v99, v100, v101, v102);
      return v215;
    case 0x32uLL:
      v58 = swift_projectBox();
      v60 = v201;
      v59 = v202;
      (*(v201 + 16))(v6, v58, v202);
      v61 = sub_219BE3C84();
      (*(v60 + 8))(v6, v59);
      return v61;
    case 0x33uLL:
      v173 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);

      return v173;
    case 0x34uLL:
      return 7367028;
    case 0x36uLL:
      return 0x7542746365726964;
    case 0x37uLL:
      return 0xD000000000000011;
    case 0x38uLL:
      v72 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v71 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x18);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;

      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000017, 0x8000000219D09A40);
      *&v221 = v72;
      *(&v221 + 1) = v71;
      sub_219BF7484();
LABEL_111:

      return v215;
    case 0x39uLL:
      return 0x7548656C7A7A7570;
    case 0x3AuLL:
      v91 = v33 & 0xFFFFFFFFFFFFFF9;
      v92 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v93 = *(v91 + 24);
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v215 = 0xD000000000000012;
      *(&v215 + 1) = 0x8000000219CED0B0;
LABEL_39:
      MEMORY[0x21CECC330](v92, v93);
      return v215;
    case 0x3BuLL:
      v158 = swift_projectBox();
      v83 = v204;
      sub_219092F4C(v158, v204, type metadata accessor for PuzzleModel);
      *&v215 = 0x2D656C7A7A7570;
      *(&v215 + 1) = 0xE700000000000000;
      *&v221 = 0;
      *(&v221 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v221 = 0xD000000000000017;
      *(&v221 + 1) = 0x8000000219D098C0;
      v160 = *v83;
      v159 = *(v83 + 8);
      if (*(v83 + 16))
      {
        v161 = [swift_unknownObjectRetain() identifier];
        v162 = sub_219BF5414();
        v164 = v163;

        sub_218B083E8(v160, v159, 1);
        v160 = v162;
        v159 = v164;
      }

      else
      {
      }

      MEMORY[0x21CECC330](v160, v159);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      MEMORY[0x21CECC330](v221, *(&v221 + 1));

      v131 = v215;
      v186 = type metadata accessor for PuzzleModel;
      goto LABEL_97;
    case 0x3CuLL:
      result = 0x6565466F69647561;
      switch(__ROR8__(v33 + 0x1000000000000000, 3))
      {
        case 1:
        case 0xALL:
          return 0xD000000000000010;
        case 2:
          result = 0xD000000000000011;
          break;
        case 3:
          result = 0x79726F74736968;
          break;
        case 4:
          result = 0x6C616E7265746E69;
          break;
        case 5:
        case 0xDLL:
          return 0xD000000000000013;
        case 6:
          result = 0x697A6167614D796DLL;
          break;
        case 7:
          result = 0x747465537377656ELL;
          break;
        case 8:
          result = 0x6465766173;
          break;
        case 9:
          result = 0x6957646572616873;
          break;
        case 0xBLL:
          result = 0xD000000000000017;
          break;
        case 0xCLL:
          result = 0xD000000000000015;
          break;
        default:
          return result;
      }

      return result;
    default:
      return result;
  }
}

uint64_t type metadata accessor for CampaignRouteModel()
{
  result = qword_280ED3ED0;
  if (!qword_280ED3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218834280()
{
  sub_219BDE924();
  if (v0 <= 0x3F)
  {
    sub_2186E3374();
    if (v1 <= 0x3F)
    {
      sub_21876A024(319, &qword_280E8F550, MEMORY[0x277D34E10], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_21876A024(319, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21876A024(319, &unk_280EE8E70, MEMORY[0x277D2F9F0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t NewsActivity2.type.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  v3 = 1;
  switch((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 8uLL:
      goto LABEL_43;
    case 5uLL:
      v3 = 5;
      goto LABEL_43;
    case 9uLL:
      v3 = 6;
      goto LABEL_43;
    case 0xAuLL:
    case 0xBuLL:
    case 0x10uLL:
    case 0x26uLL:
      v18 = a1;
      v4 = v2 & 0xFFFFFFFFFFFFFF9;
      v5 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v9 = *(v4 + 64);
      v17 = *(v4 + 56);
      v10 = *(v4 + 72);
      v11 = *(v4 + 80);
      v12 = *(v4 + 88);
      v13 = *(v4 + 48);
      v14 = *(v4 + 96);
      sub_21908FD7C(v5, v6, v7, v8, v13);
      sub_218F20858(v9, v10, v11, v12, v14);
      sub_21896FBB0(v5, v6, v7, v8, v13);
      result = sub_218DFAEC4(v9, v10, v11, v12, v14);
      if (v17 == 12)
      {
        v3 = 36;
        a1 = v18;
      }

      else if (v17 == 3)
      {
        v3 = 32;
        a1 = v18;
      }

      else
      {
        a1 = v18;
        if (v17 == 2)
        {
          v3 = 10;
        }

        else
        {
          v3 = 9;
        }
      }

      goto LABEL_43;
    case 0xCuLL:
      v3 = 30;
      goto LABEL_43;
    case 0xEuLL:
      v3 = 31;
      goto LABEL_43;
    case 0xFuLL:
      v3 = 36;
      goto LABEL_43;
    case 0x11uLL:
      v3 = 7;
      goto LABEL_43;
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
      v3 = 13;
      goto LABEL_43;
    case 0x18uLL:
      v3 = 14;
      goto LABEL_43;
    case 0x1AuLL:
      v3 = 17;
      goto LABEL_43;
    case 0x1BuLL:
      v3 = 15;
      goto LABEL_43;
    case 0x1EuLL:
      v3 = 18;
      goto LABEL_43;
    case 0x1FuLL:
      v3 = 19;
      goto LABEL_43;
    case 0x20uLL:
      v3 = 20;
      goto LABEL_43;
    case 0x21uLL:
      v3 = 21;
      goto LABEL_43;
    case 0x22uLL:
      v3 = 22;
      goto LABEL_43;
    case 0x23uLL:
      v3 = 24;
      goto LABEL_43;
    case 0x39uLL:
      v3 = 35;
      goto LABEL_43;
    case 0x3AuLL:
      v3 = 34;
      goto LABEL_43;
    case 0x3BuLL:
      v3 = 33;
      goto LABEL_43;
    case 0x3CuLL:
      v16 = __ROR8__(v2 + 0x1000000000000000, 3);
      if (v16 > 3)
      {
        if (v16 <= 7)
        {
          if (v16 == 6)
          {
            v3 = 16;
            goto LABEL_43;
          }
        }

        else
        {
          if (v16 == 8)
          {
            v3 = 25;
            goto LABEL_43;
          }

          if (v16 == 9)
          {
            v3 = 27;
            goto LABEL_43;
          }
        }

LABEL_44:
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD000000000000026, 0x8000000219D09C20);
        sub_219BF7484();
        sub_219BF7514();
        __break(1u);
        JUMPOUT(0x218834720);
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v3 = 4;
        }

        else
        {
          v3 = 12;
        }
      }

      else if (v16)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

LABEL_43:
      *a1 = v3;
      return result;
    default:
      goto LABEL_44;
  }
}

unint64_t sub_218834818()
{
  result = qword_280EE0D90;
  if (!qword_280EE0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0D90);
  }

  return result;
}

unint64_t sub_218834870()
{
  result = qword_280EE0D78;
  if (!qword_280EE0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0D78);
  }

  return result;
}

unint64_t sub_2188348C4@<X0>(unint64_t *a1@<X8>)
{
  result = NewsActivityType2.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t NewsActivityType2.rawValue.getter()
{
  result = 0x746E497961646F54;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 0xF:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 5:
    case 0x22:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 0x12:
    case 0x21:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
    case 0xB:
    case 0x16:
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xC:
    case 0x24:
      result = 0xD000000000000016;
      break;
    case 0xD:
    case 0x19:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0x10:
    case 0x14:
    case 0x1B:
      result = 0xD00000000000001CLL;
      break;
    case 0x11:
      result = 0xD000000000000021;
      break;
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0x15:
      result = 0xD000000000000022;
      break;
    case 0x17:
      result = 0xD000000000000028;
      break;
    case 0x1A:
      result = 0xD000000000000019;
      break;
    case 0x1C:
      return result;
    case 0x1D:
      result = 0x6E65746E49676154;
      break;
    case 0x1E:
      result = 0xD000000000000018;
      break;
    case 0x1F:
      result = 0xD000000000000025;
      break;
    case 0x20:
      result = 0xD000000000000017;
      break;
    case 0x23:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_218834D10(unint64_t *a1)
{
  v2 = *a1;
  sub_218834EB8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v7 = v2;
  v4 = sub_218834F1C(&v7, 0);
  if (v1)
  {

    swift_setDeallocating();
    sub_2188317B0();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    v2 = sub_218831A70(inited);
    swift_setDeallocating();
    sub_218790094(inited + 32, sub_2188317B0);
  }

  return v2;
}

void sub_218834E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218834EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218834F1C(unint64_t *a1, uint64_t a2)
{
  v442 = a2;
  v3 = sub_219BDD804();
  v430 = *(v3 - 8);
  v431 = v3;
  MEMORY[0x28223BE20](v3);
  v429 = &v427 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDE664();
  v428 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v427 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v8 - 8);
  v433 = &v427 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v443 = *(v10 - 1);
  v444 = v10;
  MEMORY[0x28223BE20](v10);
  v432 = &v427 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v437 = *(v12 - 8);
  v438 = v12;
  MEMORY[0x28223BE20](v12);
  v436 = &v427 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834EB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v434 = &v427 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v445 = &v427 - v18;
  MEMORY[0x28223BE20](v17);
  v441 = &v427 - v19;
  v20 = sub_219BDD944();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v435 = &v427 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v427 - v23;
  v25 = sub_219BE5F44();
  v439 = *(v25 - 8);
  v440 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v427 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NewsActivity2.Article(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v427 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v427 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v427 - v35;
  v37 = *a1;
  switch((v37 >> 58) & 0x3C | (v37 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48();
      v433 = v37;
      v38 = swift_projectBox();
      sub_219719558(v38, v36, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v36, v34, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0();
      v40 = *&v34[*(v39 + 48)];
      sub_218790094(v34, MEMORY[0x277D2FB40]);
      v41 = MEMORY[0x277D84F90];
      if (v40)
      {
        v41 = v40;
      }

      v445 = v41;
      v42 = v442;
      if (v442)
      {
        v43 = v439;
        v44 = v440;
        (*(v439 + 104))(v27, *MEMORY[0x277D6D3C8], v440);
        v45 = sub_2190894E8(v27, v42);
        (*(v43 + 8))(v27, v44);
        if (v45)
        {
          v46 = v445;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_2191F8570(0, *(v46 + 2) + 1, 1, v46);
          }

          v48 = *(v46 + 2);
          v47 = *(v46 + 3);
          if (v48 >= v47 >> 1)
          {
            v46 = sub_2191F8570((v47 > 1), v48 + 1, 1, v46);
          }

          *(v46 + 2) = v48 + 1;
          v445 = v46;
          v46[v48 + 32] = 1;
        }
      }

      sub_219BDB084();
      swift_allocObject();
      v444 = sub_219BDB074();
      *&v467 = v433;
      NewsActivity2.type.getter(&v454);
      LODWORD(v443) = v454;
      sub_219719558(v36, v34, type metadata accessor for NewsActivity2.Article);

      v49 = MEMORY[0x277D2FB40];
      sub_218AAFD90(v34, v24, MEMORY[0x277D2FB40]);
      v442 = sub_219BDD8C4();
      v440 = v50;
      v51 = MEMORY[0x277D2FB40];
      sub_218790094(v24, MEMORY[0x277D2FB40]);
      sub_219719558(v36, v34, type metadata accessor for NewsActivity2.Article);

      sub_218AAFD90(v34, v24, v49);
      v52 = sub_21909187C(v24);
      v439 = v53;
      sub_218790094(v24, v51);
      sub_219718B40(v36, v441);
      sub_218AAFD90(v36, v34, type metadata accessor for NewsActivity2.Article);

      v54 = v435;
      sub_218AAFD90(v34, v435, v49);
      v55 = v436;
      sub_219BDD8E4();
      sub_218790094(v54, v51);
      v56 = sub_219BDE284();
      (*(v437 + 8))(v55, v438);
      if (v56 && (v57 = [v56 jsonRepresentation], v56, v57))
      {
        v58 = sub_219BF5414();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v86 = v445;
      v87 = v443;
      v88 = type metadata accessor for NewsActivityInfo();
      v89 = objc_allocWithZone(v88);
      v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v87;
      v90 = &v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      v91 = v441;
      v92 = v439;
      v93 = v440;
      *v90 = v442;
      v90[1] = v93;
      v94 = &v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v94 = v52;
      v94[1] = v92;
      sub_2188383F8(v91, &v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v86;
      v95 = &v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v95 = v58;
      v95[1] = v60;
      v96 = &v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v96 = xmmword_219C14A10;
      *(v96 + 2) = 0;
      *(v96 + 3) = 0;
      v97 = &v89[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v97 = 0;
      v97[8] = 1;
      v446.receiver = v89;
      v446.super_class = v88;
      v98 = objc_msgSendSuper2(&v446, sel_init);
      sub_218838478(v91);
      *&v467 = v98;
      sub_218838504();
      v99 = sub_219BDB064();

      return v99;
    case 6uLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v152 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v153 = NewsActivityType2.rawValue.getter();
      v155 = v154;
      v156 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v157 = type metadata accessor for NewsActivityInfo();
      v158 = objc_allocWithZone(v157);
      v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v152;
      v159 = &v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v159 = v153;
      v159[1] = v155;
      v160 = &v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v160 = 0xD000000000000013;
      v160[1] = 0x8000000219D31880;
      sub_2188383F8(v156, &v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v161 = &v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v161 = 0;
      v161[1] = 0;
      v162 = &v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v162 = xmmword_219C14A10;
      *(v162 + 2) = 0;
      *(v162 + 3) = 0;
      v163 = &v158[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v163 = 0;
      v163[8] = 1;
      v452.receiver = v158;
      v452.super_class = v157;
      v164 = objc_msgSendSuper2(&v452, sel_init);
      sub_218838478(v156);
      *&v467 = v164;
      sub_218838504();
      v99 = sub_219BDB064();

      return v99;
    case 8uLL:
      v195 = swift_projectBox();
      sub_219719558(v195, v31, type metadata accessor for NewsActivity2.Article);
      sub_219BDB084();
      swift_allocObject();
      v444 = sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v454);
      LODWORD(v443) = v454;
      sub_219719558(v31, v34, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0();
      v197 = v196;

      v198 = MEMORY[0x277D2FB40];
      sub_218AAFD90(v34, v24, MEMORY[0x277D2FB40]);
      v199 = sub_219BDD8A4();
      v441 = v200;
      v442 = v199;
      v201 = MEMORY[0x277D2FB40];
      sub_218790094(v24, MEMORY[0x277D2FB40]);
      sub_219719558(v31, v34, type metadata accessor for NewsActivity2.Article);

      sub_218AAFD90(v34, v24, v198);
      v202 = sub_21909187C(v24);
      v440 = v203;
      sub_218790094(v24, v201);
      v204 = v445;
      sub_219BDB914();
      sub_219719558(v31, v34, type metadata accessor for NewsActivity2.Article);
      v205 = *&v34[*(v197 + 48)];
      sub_218790094(v34, v201);
      v206 = type metadata accessor for NewsActivityInfo();
      v207 = objc_allocWithZone(v206);
      v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v443;
      v208 = &v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      v209 = v441;
      *v208 = v442;
      v208[1] = v209;
      v210 = &v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      v211 = v440;
      *v210 = v202;
      v210[1] = v211;
      sub_2188383F8(v204, &v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v205;
      v212 = &v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v212 = 0;
      v212[1] = 0;
      v213 = &v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v213 = xmmword_219C14A10;
      *(v213 + 2) = 0;
      *(v213 + 3) = 0;
      v214 = &v207[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v214 = 0;
      v214[8] = 1;
      v448.receiver = v207;
      v448.super_class = v206;
      v215 = objc_msgSendSuper2(&v448, sel_init);
      sub_218838478(v204);
      *&v467 = v215;
      sub_218838504();
      v99 = sub_219BDB064();

      sub_218790094(v31, type metadata accessor for NewsActivity2.Article);
      return v99;
    case 0xAuLL:
    case 0xBuLL:
      v433 = v37;
      v61 = v37 & 0xFFFFFFFFFFFFFF9;
      v62 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v63 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v64 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v65 = *(v61 + 40);
      v66 = *(v61 + 48);
      v67 = *(v61 + 64);
      v430 = *(v61 + 56);
      v431 = v27;
      v68 = *(v61 + 72);
      v69 = *(v61 + 80);
      v70 = *(v61 + 88);
      v71 = *(v61 + 96);
      v443 = v62;
      v444 = v63;
      sub_21908FD7C(v62, v63, v64, v65, v66);
      v436 = v68;
      v437 = v67;
      v434 = v70;
      v435 = v69;
      LODWORD(v432) = v71;
      sub_218F20858(v67, v68, v69, v70, v71);
      v72 = v66;
      v73 = v66 == 0;
      v74 = v64;
      v438 = v65;
      if (!v73)
      {
        v64 = v65;
      }

      v75 = MEMORY[0x277D84F90];
      if (v64)
      {
        v75 = v64;
      }

      v441 = v75;
      v76 = v442;
      v77 = v431;
      if (v442)
      {
        v78 = v443;
        v80 = v439;
        v79 = v440;
        (*(v439 + 104))(v431, *MEMORY[0x277D6D3C8], v440);

        v81 = sub_2190894E8(v77, v76);
        (*(v80 + 8))(v77, v79);
        if (v81)
        {
          v82 = v441;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_2191F8570(0, *(v82 + 2) + 1, 1, v82);
          }

          v83 = v78;
          v85 = *(v82 + 2);
          v84 = *(v82 + 3);
          if (v85 >= v84 >> 1)
          {
            v82 = sub_2191F8570((v84 > 1), v85 + 1, 1, v82);
          }

          *(v82 + 2) = v85 + 1;
          v441 = v82;
          v82[v85 + 32] = 1;
        }

        else
        {
          v83 = v78;
        }

        v275 = v74;
        v276 = v72;
      }

      else
      {

        v275 = v74;
        v276 = v72;
        v83 = v443;
      }

      sub_219BDB084();
      swift_allocObject();
      v277 = sub_219BDB074();
      *&v458 = v433;
      NewsActivity2.type.getter(v479);
      v442 = v277;
      LODWORD(v440) = v479[0];
      if (!v276)
      {
        v278 = [v83 identifier];
        v439 = sub_219BF5414();
        v433 = v279;

        v280 = [v83 name];
        v281 = sub_219BF5414();
        v283 = v282;

LABEL_63:
        *&v467 = v83;
        *(&v467 + 1) = v444;
        v286 = v438;
        *&v468[0] = v275;
        *(&v468[0] + 1) = v438;
        LOBYTE(v468[1]) = v276;
        v287 = v445;
        sub_219091CFC(v445);
        v288 = type metadata accessor for NewsActivityInfo();
        v99 = objc_allocWithZone(v288);
        *(v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type) = v440;
        v289 = (v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier);
        v290 = v433;
        *v289 = v439;
        v289[1] = v290;
        v291 = (v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title);
        *v291 = v281;
        v291[1] = v283;
        sub_2188383F8(v287, v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url);
        *(v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits) = v441;
        v292 = (v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark);
        *v292 = 0;
        v292[1] = 0;
        v293 = v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition;
        *v293 = xmmword_219C14A10;
        *(v293 + 16) = 0;
        *(v293 + 24) = 0;
        v294 = v99 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue;
        *v294 = v430;
        *(v294 + 8) = 0;
        v447.receiver = v99;
        v447.super_class = v288;
        v295 = objc_msgSendSuper2(&v447, sel_init);
        sub_21896FBB0(v443, v444, v275, v286, v276);
        sub_218DFAEC4(v437, v436, v435, v434, v432);
        sub_218838478(v287);
        *&v467 = v295;
        sub_218838504();
        v296 = v480;
        v297 = sub_219BDB064();
        if (!v296)
        {
          v99 = v297;
        }

        return v99;
      }

      if (v276 == 1)
      {
        v284 = &v275[OBJC_IVAR___TSFeedViewContext_title];
        swift_beginAccess();
        v281 = *v284;
        v283 = v284[1];

        v439 = v83;
        v433 = v285;
        goto LABEL_63;
      }

      goto LABEL_127;
    case 0xCuLL:
      goto LABEL_78;
    case 0xEuLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v248 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v99 = NewsActivityType2.rawValue.getter();
      v250 = v249;
      v103 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v251 = type metadata accessor for NewsActivityInfo();
      v252 = objc_allocWithZone(v251);
      v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v248;
      v253 = &v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v253 = v99;
      v253[1] = v250;
      *&v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE40;
      sub_2188383F8(v103, &v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v254 = &v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v254 = 0;
      v254[1] = 0;
      v255 = &v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v255 = xmmword_219C14A10;
      *(v255 + 2) = 0;
      *(v255 + 3) = 0;
      v256 = &v252[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v256 = 0;
      v256[8] = 1;
      v453.receiver = v252;
      v453.super_class = v251;
      v110 = objc_msgSendSuper2(&v453, sel_init);
      goto LABEL_79;
    case 0xFuLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v183 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v99 = NewsActivityType2.rawValue.getter();
      v185 = v184;
      v186 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v187 = type metadata accessor for NewsActivityInfo();
      v188 = objc_allocWithZone(v187);
      v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v183;
      v189 = &v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v189 = v99;
      v189[1] = v185;
      v190 = &v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v190 = 0;
      v190[1] = 0;
      sub_2188383F8(v186, &v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v191 = &v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v191 = 0;
      v191[1] = 0;
      v192 = &v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v192 = xmmword_219C14A10;
      *(v192 + 2) = 0;
      *(v192 + 3) = 0;
      v193 = &v188[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v193 = 12;
      v193[8] = 0;
      v475.receiver = v188;
      v475.super_class = v187;
      v194 = objc_msgSendSuper2(&v475, sel_init);
      goto LABEL_49;
    case 0x11uLL:
      v135 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v440 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v136 = v440;
      v441 = v135;
      v137 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v138 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
      sub_219BDB084();
      swift_allocObject();
      sub_2188382C8(v135, v136);
      v442 = sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v99 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v139 = NewsActivityType2.rawValue.getter();
      v141 = v140;
      v142 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v143 = type metadata accessor for NewsActivityInfo();
      v144 = objc_allocWithZone(v143);
      v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v99;
      v145 = &v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v145 = v139;
      v145[1] = v141;
      *&v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE30;
      sub_2188383F8(v142, &v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v146 = &v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v146 = 0;
      v146[1] = 0;
      v147 = &v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      v148 = v440;
      *v147 = v441;
      v147[1] = v148;
      v147[2] = v137;
      v147[3] = v138;
      v149 = &v144[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v149 = 0;
      v149[8] = 1;
      v449.receiver = v144;
      v449.super_class = v143;
      v150 = objc_msgSendSuper2(&v449, sel_init);
      v151 = v142;
      goto LABEL_80;
    case 0x14uLL:
      v433 = v37;
      v269 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v467 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v468[0] = v269;
      v270 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v468[1] = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v469 = v270;
      v470 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v271 = *&v468[0];
      if (((HIBYTE(v468[1]) << 48) & 0xC0000000000000) == 0x40000000000000)
      {

        v272 = 0;
        v273 = 0;
        v274 = v442;
      }

      else
      {
        v458 = v467;
        v459 = *&v468[0];
        v460 = *(v468 + 8);
        v461 = BYTE8(v468[1]) & 1;
        v326 = sub_219092568(&v467, &v454);
        v332 = [sub_219BD4870(v326 v327];
        v272 = sub_219BF5414();
        v273 = v333;

        v274 = v442;
        if (*(&v468[1] + 1) >> 62)
        {
          if (*(&v468[1] + 1) >> 62 == 1)
          {
            v271 = *&v468[0];
          }

          else
          {
            v271 = v470;
          }
        }

        else
        {
          v271 = v469;
        }
      }

      if (v271)
      {
        v391 = v271;
      }

      else
      {
        v391 = MEMORY[0x277D84F90];
      }

      if (v274)
      {
        v392 = v272;
        v393 = v439;
        v394 = v440;
        (*(v439 + 104))(v27, *MEMORY[0x277D6D3C8], v440);

        v395 = sub_2190894E8(v27, v274);
        (*(v393 + 8))(v27, v394);
        if (v395)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v391 = sub_2191F8570(0, *(v391 + 2) + 1, 1, v391);
          }

          v272 = v392;
          v397 = *(v391 + 2);
          v396 = *(v391 + 3);
          if (v397 >= v396 >> 1)
          {
            v391 = sub_2191F8570((v396 > 1), v397 + 1, 1, v391);
          }

          *(v391 + 2) = v397 + 1;
          v391[v397 + 32] = 1;
        }

        else
        {
          v272 = v392;
        }
      }

      else
      {
      }

      sub_219BDB084();
      swift_allocObject();
      v398 = sub_219BDB074();
      *&v458 = v433;
      v399 = NewsActivity2.type.getter(v479);
      v405 = v479[0];
      v407 = *(&v467 + 1);
      v406 = v467;
      v408 = HIBYTE(v468[1]) >> 6;
      v445 = v398;
      if (v408)
      {
        if (v408 == 1)
        {
        }

        else
        {
          v454 = v467;
          v455 = v468[0];
          v456 = *&v468[1];
          v457 = BYTE8(v468[1]) & 1;
          v406 = sub_219BD47C0(v399, v400, v401, v402, v403, v404);
          v407 = v411;
        }
      }

      else
      {
        v454 = v467;
        v455 = v468[0];
        v456 = *&v468[1];
        v457 = BYTE8(v468[1]) & 1;
        v409 = [sub_219BD4870(v399 v400];
        v406 = sub_219BF5414();
        v407 = v410;
      }

      if (v273)
      {
        v412 = v272;
      }

      else
      {
        v412 = 0;
      }

      if (v273)
      {
        v413 = v273;
      }

      else
      {
        v413 = 0xE000000000000000;
      }

      (*(v443 + 56))(v434, 1, 1, v444);
      if (*(&v468[1] + 1) >> 62)
      {
        if (*(&v468[1] + 1) >> 62 == 1)
        {
          v414 = v468;
        }

        else
        {
          v414 = &v470;
        }
      }

      else
      {
        v414 = &v469;
      }

      v415 = *v414;
      v99 = type metadata accessor for NewsActivityInfo();
      v416 = objc_allocWithZone(v99);
      v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v405;
      v417 = &v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v417 = v406;
      v417[1] = v407;
      v418 = &v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v418 = v412;
      v418[1] = v413;
      v419 = v434;
      sub_2188383F8(v434, &v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v415;
      v420 = &v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v420 = 0;
      v420[1] = 0;
      v421 = &v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v421 = xmmword_219C14A10;
      *(v421 + 2) = 0;
      *(v421 + 3) = 0;
      v422 = &v416[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v422 = 0;
      v422[8] = 1;
      v462.receiver = v416;
      v462.super_class = v99;

      v423 = objc_msgSendSuper2(&v462, sel_init);
      sub_218838478(v419);
      *&v454 = v423;
      sub_218838504();
      v424 = v480;
      v425 = sub_219BDB064();
      if (!v424)
      {
        v99 = v425;
      }

      sub_218AAFFC4(&v467);
      return v99;
    case 0x18uLL:
      v165 = swift_projectBox();
      v167 = v443;
      v166 = v444;
      v168 = *(v443 + 16);
      v169 = v432;
      v168(v432, v165, v444);
      sub_219BDB084();
      swift_allocObject();
      v441 = sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      LODWORD(v442) = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v99 = NewsActivityType2.rawValue.getter();
      v440 = v170;
      v171 = v445;
      v168(v445, v169, v166);
      (*(v167 + 56))(v171, 0, 1, v166);
      v172 = type metadata accessor for NewsActivityInfo();
      v173 = objc_allocWithZone(v172);
      v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v442;
      v174 = &v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      v175 = v440;
      *v174 = v99;
      v174[1] = v175;
      v176 = &v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v176 = 0;
      v176[1] = 0;
      sub_2188383F8(v171, &v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v177 = &v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v177 = 0;
      v177[1] = 0;
      v178 = &v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v178 = xmmword_219C14A10;
      *(v178 + 2) = 0;
      *(v178 + 3) = 0;
      v179 = &v173[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v179 = 0;
      v179[8] = 1;
      v472.receiver = v173;
      v472.super_class = v172;
      v180 = objc_msgSendSuper2(&v472, sel_init);
      sub_218838478(v171);
      *&v467 = v180;
      sub_218838504();
      v181 = v480;
      v182 = sub_219BDB064();
      if (!v181)
      {
        v99 = v182;
      }

      (*(v167 + 8))(v432, v444);
      return v99;
    case 0x1AuLL:
      sub_21896FC94((v37 & 0xFFFFFFFFFFFFFF9) + 16, &v467);
      sub_219BDB084();
      swift_allocObject();
      v442 = sub_219BDB074();
      *&v454 = v37;
      NewsActivity2.type.getter(&v458);
      v257 = v458;
      v258 = v467;
      v99 = *(&v468[0] + 1);
      v259 = *&v468[0];
      v260 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v261 = type metadata accessor for NewsActivityInfo();
      v262 = objc_allocWithZone(v261);
      v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v257;
      *&v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier] = v258;
      *&v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = __PAIR128__(v99, v259);
      sub_2188383F8(v260, &v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v263 = &v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v263 = 0;
      v263[1] = 0;
      v264 = &v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v264 = xmmword_219C14A10;
      *(v264 + 2) = 0;
      *(v264 + 3) = 0;
      v265 = &v262[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v265 = 0;
      v265[8] = 1;
      v466.receiver = v262;
      v466.super_class = v261;

      v266 = objc_msgSendSuper2(&v466, sel_init);
      sub_218838478(v260);
      *&v454 = v266;
      sub_218838504();
      v267 = v480;
      v268 = sub_219BDB064();
      if (!v267)
      {
        v99 = v268;
      }

      sub_218C113E0(&v467);
      return v99;
    case 0x1BuLL:
      v111 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v112 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v113 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v454 = v37;
      NewsActivity2.type.getter(&v458);
      v114 = v458;
      if (v113 == 255)
      {
        v99 = 0;
        v116 = 0xE000000000000000;
      }

      else
      {
        *&v467 = v111;
        *(&v467 + 1) = v112;
        LOBYTE(v468[0]) = v113;
        v99 = MagazineSectionConfigKind.identifier.getter();
        v116 = v115;
      }

      v347 = v480;
      v348 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v349 = type metadata accessor for NewsActivityInfo();
      v350 = objc_allocWithZone(v349);
      v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v114;
      v351 = &v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v351 = v99;
      v351[1] = v116;
      v352 = &v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v352 = 0;
      v352[1] = 0;
      sub_2188383F8(v348, &v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v353 = &v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v353 = 0;
      v353[1] = 0;
      v354 = &v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v354 = xmmword_219C14A10;
      *(v354 + 2) = 0;
      *(v354 + 3) = 0;
      v355 = &v350[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v355 = 0;
      v355[8] = 1;
      v464.receiver = v350;
      v464.super_class = v349;
      v150 = objc_msgSendSuper2(&v464, sel_init);
      sub_218838478(v348);
      *&v467 = v150;
      sub_218838504();
      v344 = v347;
      goto LABEL_82;
    case 0x1EuLL:
      v216 = v37;
      v217 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v218 = sub_219BDE634();
      v219 = v428;
      (*(v428 + 104))(v7, *MEMORY[0x277D30088], v5);
      v220 = sub_219089394(v7, v218);

      (*(v219 + 8))(v7, v5);
      if (v220)
      {
        v221 = v217;
        v222 = sub_2191F8570(0, 1, 1, MEMORY[0x277D84F90]);
        v224 = *(v222 + 2);
        v223 = *(v222 + 3);
        v225 = v430;
        if (v224 >= v223 >> 1)
        {
          v222 = sub_2191F8570((v223 > 1), v224 + 1, 1, v222);
        }

        v226 = v431;
        v227 = v429;
        v442 = v222;
        *(v222 + 2) = v224 + 1;
        v222[v224 + 32] = 1;
        v217 = v221;
      }

      else
      {
        v442 = MEMORY[0x277D84F90];
        v225 = v430;
        v226 = v431;
        v227 = v429;
      }

      v441 = v217;
      sub_219BDB084();
      swift_allocObject();
      v440 = sub_219BDB074();
      *&v467 = v216;
      NewsActivity2.type.getter(&v454);
      v309 = v454;
      sub_219BDE5F4();
      v310 = sub_219BDD7F4();
      v312 = v311;
      (*(v225 + 8))(v227, v226);
      v313 = sub_219718928();
      v315 = v314;
      v99 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v316 = type metadata accessor for NewsActivityInfo();
      v317 = objc_allocWithZone(v316);
      v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v309;
      v318 = &v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v318 = v310;
      v318[1] = v312;
      v319 = &v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v319 = v313;
      v319[1] = v315;
      sub_2188383F8(v99, &v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v442;
      v320 = &v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v320 = 0;
      v320[1] = 0;
      v321 = &v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v321 = xmmword_219C14A10;
      *(v321 + 2) = 0;
      *(v321 + 3) = 0;
      v322 = &v317[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v322 = 0;
      v322[8] = 1;
      v477.receiver = v317;
      v477.super_class = v316;
      v323 = objc_msgSendSuper2(&v477, sel_init);
      sub_218838478(v99);
      *&v467 = v323;
      sub_218838504();
      v324 = v480;
      v325 = sub_219BDB064();
      if (!v324)
      {
        v99 = v325;
      }

      return v99;
    case 0x1FuLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v100 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v99 = NewsActivityType2.rawValue.getter();
      v102 = v101;
      v103 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v104 = type metadata accessor for NewsActivityInfo();
      v105 = objc_allocWithZone(v104);
      v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v100;
      v106 = &v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v106 = v99;
      v106[1] = v102;
      *&v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE20;
      sub_2188383F8(v103, &v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v107 = &v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v107 = 0;
      v107[1] = 0;
      v108 = &v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v108 = xmmword_219C14A10;
      *(v108 + 2) = 0;
      *(v108 + 3) = 0;
      v109 = &v105[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v109 = 0;
      v109[8] = 1;
      v478.receiver = v105;
      v478.super_class = v104;
      v110 = objc_msgSendSuper2(&v478, sel_init);
      goto LABEL_79;
    case 0x20uLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v238 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v99 = NewsActivityType2.rawValue.getter();
      v240 = v239;
      v186 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v241 = type metadata accessor for NewsActivityInfo();
      v242 = objc_allocWithZone(v241);
      v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v238;
      v243 = &v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v243 = v99;
      v243[1] = v240;
      v244 = &v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v244 = 0;
      v244[1] = 0;
      sub_2188383F8(v186, &v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v245 = &v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v245 = 0;
      v245[1] = 0;
      v246 = &v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v246 = xmmword_219C14A10;
      *(v246 + 2) = 0;
      *(v246 + 3) = 0;
      v247 = &v242[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v247 = 13;
      v247[8] = 0;
      v476.receiver = v242;
      v476.super_class = v241;
      v194 = objc_msgSendSuper2(&v476, sel_init);
LABEL_49:
      v150 = v194;
      v151 = v186;
      goto LABEL_80;
    case 0x39uLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v117 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v99 = NewsActivityType2.rawValue.getter();
      v119 = v118;
      v103 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v120 = type metadata accessor for NewsActivityInfo();
      v121 = objc_allocWithZone(v120);
      v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v117;
      v122 = &v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v122 = v99;
      v122[1] = v119;
      v123 = &v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v123 = 0;
      v123[1] = 0;
      sub_2188383F8(v103, &v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v124 = &v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v124 = 0;
      v124[1] = 0;
      v125 = &v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v125 = xmmword_219C14A10;
      *(v125 + 2) = 0;
      *(v125 + 3) = 0;
      v126 = &v121[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v126 = 0;
      v126[8] = 1;
      v474.receiver = v121;
      v474.super_class = v120;
      v110 = objc_msgSendSuper2(&v474, sel_init);
      goto LABEL_79;
    case 0x3BuLL:
      v127 = swift_projectBox();
      v128 = v433;
      sub_219719558(v127, v433, type metadata accessor for PuzzleModel);
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v454);
      v129 = v454;
      v130 = *v128;
      v99 = *(v128 + 8);
      if (*(v128 + 16))
      {
        v131 = [swift_unknownObjectRetain() identifier];
        v132 = sub_219BF5414();
        v134 = v133;

        sub_218B083E8(v130, v99, 1);
        v130 = v132;
        v99 = v134;
      }

      else
      {
      }

      v298 = v480;
      v299 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v300 = type metadata accessor for NewsActivityInfo();
      v301 = objc_allocWithZone(v300);
      v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v129;
      v302 = &v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v302 = v130;
      v302[1] = v99;
      v303 = &v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v303 = 0;
      v303[1] = 0;
      sub_2188383F8(v299, &v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v304 = &v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v304 = 0;
      v304[1] = 0;
      v305 = &v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v305 = xmmword_219C14A10;
      *(v305 + 2) = 0;
      *(v305 + 3) = 0;
      v306 = &v301[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v306 = 0;
      v306[8] = 1;
      v473.receiver = v301;
      v473.super_class = v300;
      v307 = objc_msgSendSuper2(&v473, sel_init);
      sub_218838478(v299);
      *&v467 = v307;
      sub_218838504();
      v308 = sub_219BDB064();
      if (!v298)
      {
        v99 = v308;
      }

      sub_218790094(v433, type metadata accessor for PuzzleModel);
      return v99;
    case 0x3CuLL:
      v228 = __ROR8__(v37 + 0x1000000000000000, 3);
      if (v228 <= 5)
      {
        if (!v228)
        {
LABEL_78:
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v467 = v37;
          NewsActivity2.type.getter(&v458);
          v334 = v458;
          *&v454 = v37;
          NewsActivity2.type.getter(v479);
          v99 = NewsActivityType2.rawValue.getter();
          v336 = v335;
          v103 = v445;
          (*(v443 + 56))(v445, 1, 1, v444);
          v337 = type metadata accessor for NewsActivityInfo();
          v338 = objc_allocWithZone(v337);
          v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v334;
          v339 = &v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v339 = v99;
          v339[1] = v336;
          v340 = &v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
          *v340 = 0;
          v340[1] = 0;
          sub_2188383F8(v103, &v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v341 = &v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v341 = 0;
          v341[1] = 0;
          v342 = &v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v342 = xmmword_219C14A10;
          *(v342 + 2) = 0;
          *(v342 + 3) = 0;
          v343 = &v338[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v343 = 0;
          v343[8] = 1;
          v463.receiver = v338;
          v463.super_class = v337;
          v110 = objc_msgSendSuper2(&v463, sel_init);
          goto LABEL_79;
        }

        if (v228 == 3)
        {
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v467 = v37;
          NewsActivity2.type.getter(&v458);
          v382 = v458;
          *&v454 = v37;
          NewsActivity2.type.getter(v479);
          v99 = NewsActivityType2.rawValue.getter();
          v384 = v383;
          v103 = v445;
          (*(v443 + 56))(v445, 1, 1, v444);
          v385 = type metadata accessor for NewsActivityInfo();
          v386 = objc_allocWithZone(v385);
          v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v382;
          v387 = &v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v387 = v99;
          v387[1] = v384;
          *&v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE10;
          sub_2188383F8(v103, &v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v388 = &v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v388 = 0;
          v388[1] = 0;
          v389 = &v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v389 = xmmword_219C14A10;
          *(v389 + 2) = 0;
          *(v389 + 3) = 0;
          v390 = &v386[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v390 = 0;
          v390[8] = 1;
          v451.receiver = v386;
          v451.super_class = v385;
          v110 = objc_msgSendSuper2(&v451, sel_init);
LABEL_79:
          v150 = v110;
          v151 = v103;
LABEL_80:
          sub_218838478(v151);
          *&v467 = v150;
          sub_218838504();
          goto LABEL_81;
        }

LABEL_126:
        *&v467 = 0;
        *(&v467 + 1) = 0xE000000000000000;
        sub_219BF7314();

        strcpy(&v467, "This activity ");
        HIBYTE(v467) = -18;
        *&v454 = v37;
        v426 = NewsActivity2.identifier.getter();
        MEMORY[0x21CECC330](v426);

        MEMORY[0x21CECC330](0xD000000000000021, 0x8000000219D32020);
        while (1)
        {
LABEL_127:
          sub_219BF7514();
          __break(1u);
        }
      }

      if (v228 != 6)
      {
        if (v228 == 8)
        {
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v467 = v37;
          NewsActivity2.type.getter(&v458);
          v229 = v458;
          *&v454 = v37;
          NewsActivity2.type.getter(v479);
          v99 = NewsActivityType2.rawValue.getter();
          v231 = v230;
          v103 = v445;
          (*(v443 + 56))(v445, 1, 1, v444);
          v232 = type metadata accessor for NewsActivityInfo();
          v233 = objc_allocWithZone(v232);
          v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v229;
          v234 = &v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v234 = v99;
          v234[1] = v231;
          *&v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE00;
          sub_2188383F8(v103, &v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v235 = &v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v235 = 0;
          v235[1] = 0;
          v236 = &v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v236 = xmmword_219C14A10;
          *(v236 + 2) = 0;
          *(v236 + 3) = 0;
          v237 = &v233[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v237 = 0;
          v237[8] = 1;
          v450.receiver = v233;
          v450.super_class = v232;
          v110 = objc_msgSendSuper2(&v450, sel_init);
          goto LABEL_79;
        }

        if (v228 == 9)
        {
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v467 = v37;
          NewsActivity2.type.getter(&v458);
          v372 = v458;
          *&v454 = v37;
          NewsActivity2.type.getter(v479);
          v99 = NewsActivityType2.rawValue.getter();
          v374 = v373;
          v103 = v445;
          (*(v443 + 56))(v445, 1, 1, v444);
          v375 = type metadata accessor for NewsActivityInfo();
          v376 = objc_allocWithZone(v375);
          v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v372;
          v377 = &v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v377 = v99;
          v377[1] = v374;
          v378 = &v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
          *v378 = 0;
          v378[1] = 0;
          sub_2188383F8(v103, &v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v379 = &v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v379 = 0;
          v379[1] = 0;
          v380 = &v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v380 = xmmword_219C14A10;
          *(v380 + 2) = 0;
          *(v380 + 3) = 0;
          v381 = &v376[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v381 = 0;
          v381[8] = 1;
          v471.receiver = v376;
          v471.super_class = v375;
          v110 = objc_msgSendSuper2(&v471, sel_init);
          goto LABEL_79;
        }

        goto LABEL_126;
      }

      sub_219BDB084();
      swift_allocObject();
      v442 = sub_219BDB074();
      *&v467 = v37;
      NewsActivity2.type.getter(&v458);
      v356 = v458;
      *&v454 = v37;
      NewsActivity2.type.getter(v479);
      v357 = NewsActivityType2.rawValue.getter();
      v99 = v358;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v360 = [objc_opt_self() bundleForClass_];
      v361 = sub_219BDB5E4();
      v363 = v362;

      v364 = v445;
      (*(v443 + 56))(v445, 1, 1, v444);
      v365 = type metadata accessor for NewsActivityInfo();
      v366 = objc_allocWithZone(v365);
      v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v356;
      v367 = &v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v367 = v357;
      v367[1] = v99;
      v368 = &v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v368 = v361;
      v368[1] = v363;
      sub_2188383F8(v364, &v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v369 = &v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v369 = 0;
      v369[1] = 0;
      v370 = &v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v370 = xmmword_219C14A10;
      *(v370 + 2) = 0;
      *(v370 + 3) = 0;
      v371 = &v366[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v371 = 0;
      v371[8] = 1;
      v465.receiver = v366;
      v465.super_class = v365;
      v150 = objc_msgSendSuper2(&v465, sel_init);
      sub_218838478(v364);
      *&v467 = v150;
      sub_218838504();
LABEL_81:
      v344 = v480;
LABEL_82:
      v345 = sub_219BDB064();
      if (!v344)
      {
        v99 = v345;
      }

      return v99;
    default:
      goto LABEL_126;
  }
}

uint64_t sub_2188382C8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for NewsActivityInfo()
{
  result = qword_280EE0DA8;
  if (!qword_280EE0DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218838328()
{
  sub_21873F65C(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2188383F8(uint64_t a1, uint64_t a2)
{
  sub_2188422B8(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218838478(uint64_t a1)
{
  sub_2186E530C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218838504()
{
  result = qword_280EE0DC8;
  if (!qword_280EE0DC8)
  {
    type metadata accessor for NewsActivityInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DC8);
  }

  return result;
}

uint64_t sub_21883855C(void *a1)
{
  v3 = v1;
  sub_2188388E0(0, &qword_280E8C678, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218838968();
  sub_219BF7B44();
  LOBYTE(v15) = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type);
  v19 = 0;
  sub_218838BC8();
  sub_219BF7834();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_219BF77F4();
    LOBYTE(v15) = 2;
    sub_219BF7794();
    LOBYTE(v15) = 3;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40);
    sub_219BF77E4();
    v15 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits);
    v19 = 4;
    sub_218839100();
    sub_218839150(&unk_280E8F3C0, sub_2188391BC);
    sub_219BF77E4();
    LOBYTE(v15) = 5;
    sub_219BF7794();
    v11 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 8);
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 16);
    v13 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 24);
    v15 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition);
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = 6;
    sub_2188382C8(v15, v11);
    sub_218839210();
    sub_219BF77E4();
    sub_2188398B4(v15, v16);
    LOBYTE(v15) = 7;
    sub_219BF77D4();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_2188388E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218838968();
    v7 = a3(a1, &type metadata for NewsActivityInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218838968()
{
  result = qword_280EE0DE0;
  if (!qword_280EE0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DE0);
  }

  return result;
}

uint64_t sub_2188389C4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_219BE20E4();

    v11[0] = v3;
    v11[5] = v8;
    v11[6] = v9;
    v11[1] = v4;
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v13 = v4;
    v14 = v5;
    v17 = v8;
    v18 = v9;
    v12 = v10;
    v19 = v10;
    v15 = v6;
    v16 = v7;
    if (*(&v3 + 1))
    {
      v8 = v17;
      v9 = v18;
      v10 = v19;
      v4 = v13;
      v5 = v14;
      v7 = v16;
      v6 = v15;
      sub_218E2444C(v1, &v3);

      return sub_218E2558C(v11, &unk_280EC8900, &type metadata for ContinueReadingContent);
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_218838B1C()
{
  result = qword_280EE0DD0;
  if (!qword_280EE0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DD0);
  }

  return result;
}

unint64_t sub_218838B74()
{
  result = qword_280EE0DD8;
  if (!qword_280EE0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DD8);
  }

  return result;
}

unint64_t sub_218838BC8()
{
  result = qword_280EE0D80;
  if (!qword_280EE0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0D80);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TagSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
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

  return (v8 + 1);
}

uint64_t sub_218838DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2186D6710(0, &qword_280E8E680);
    v4 = sub_219BF5924();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_218838E5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v2 = sub_219BE5434();
    __swift_project_value_buffer(v2, qword_280F62730);
    v3 = sub_219BE5414();
    v4 = sub_219BF6214();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      sub_219BF5CD4();
      *(v5 + 4) = v6;
      _os_log_impl(&dword_2186C1000, v3, v4, "Sports sync manager preparing subscriptions for syncing...done (time elapsed=%f)", v5, 0xCu);
      MEMORY[0x21CECF960](v5, -1, -1);
    }

    dispatch_group_leave(*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup]);
    [*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController] addObserver_];
  }
}

unint64_t sub_218838FB4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6F506C6C6F726373;
  if (v1 != 6)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0x7974697669746361;
  if (v1 != 4)
  {
    v4 = 0x6B72616D6B6F6F62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 7107189;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2188390BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219BDB954();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218839100()
{
  if (!qword_280E8F3D0)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F3D0);
    }
  }
}

uint64_t sub_218839150(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_218839100();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2188391BC()
{
  result = qword_280EE0280;
  if (!qword_280EE0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0280);
  }

  return result;
}

unint64_t sub_218839210()
{
  result = qword_280EDBB58;
  if (!qword_280EDBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB58);
  }

  return result;
}

uint64_t sub_218839264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188392B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t ScrollPosition.encode(to:)(void *a1)
{
  sub_218839548(0, &qword_280E8C668, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = v1[1];
  v13[1] = *v1;
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2188395C4();
  sub_219BF7B44();
  if (!v9)
  {
    LOBYTE(v14) = 0;
    v16 = 0;
    sub_2188396C8();
    goto LABEL_5;
  }

  LOBYTE(v14) = 1;
  v16 = 0;
  sub_2188396C8();
  sub_219BF7834();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_219BF77F4();
    v14 = v10;
    v15 = v11;
    v16 = 2;
    type metadata accessor for CGPoint(0);
    sub_219301434(&qword_280E8DAD0);
LABEL_5:
    sub_219BF7834();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_218839548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2188395C4();
    v7 = a3(a1, &type metadata for ScrollPosition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2188395C4()
{
  result = qword_280EDBB88;
  if (!qword_280EDBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB88);
  }

  return result;
}

unint64_t sub_21883961C()
{
  result = qword_280EDBB78;
  if (!qword_280EDBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB78);
  }

  return result;
}

unint64_t sub_218839674()
{
  result = qword_280EDBB80;
  if (!qword_280EDBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB80);
  }

  return result;
}

unint64_t sub_2188396C8()
{
  result = qword_280EDBB70;
  if (!qword_280EDBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB70);
  }

  return result;
}

unint64_t sub_21883976C()
{
  result = qword_280EDBB68;
  if (!qword_280EDBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB68);
  }

  return result;
}

void sub_2188397C0(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6E6F6974636573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2188397F8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x74657366666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

void sub_21883984C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2188398C8(v4);
}

uint64_t sub_2188398B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2188398C8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v52 - v6;
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v52 - v8;
  sub_2187B0408();
  v56 = v10;
  v59 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v55 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  MEMORY[0x28223BE20](v13);
  v57 = v52 - v16;
  v17 = MEMORY[0x277CC9578];
  sub_2186DD934(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v52 - v19;
  v21 = [a1 session];
  v22 = [v21 persistentIdentifier];

  v23 = sub_219BF5414();
  v25 = v24;

  sub_219BDBD24();
  v26 = sub_219BDBD34();
  (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
  v27 = qword_280F621D8;
  swift_beginAccess();
  sub_2187B132C(v20, v2 + v27, &qword_280EE9C40, v17);
  swift_endAccess();
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v29 = v28;
  v30 = swift_allocObject();
  v54 = xmmword_219C09BA0;
  *(v30 + 16) = xmmword_219C09BA0;
  *(v30 + 56) = MEMORY[0x277D837D0];
  v53 = sub_2186FC3BC();
  *(v30 + 64) = v53;
  *(v30 + 32) = v23;
  *(v30 + 40) = v25;
  v31 = sub_2186C6148(0, &qword_280E8D790);

  v32 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_2187D85B0();
  [v33 sceneDidBecomeActive];
  swift_unknownObjectRelease();
  sub_2187B5F14(v61);
  __swift_project_boxed_opaque_existential_1(v61, v62);
  sub_219BE2934();
  __swift_destroy_boxed_opaque_existential_1(v61);
  v34 = qword_280EDDDA0;
  swift_beginAccess();
  v35 = *(v2 + v34);
  if (*(v35 + 16) && (v36 = sub_21870F700(v23, v25), (v37 & 1) != 0))
  {
    sub_2191C27FC(*(v35 + 56) + *(v59 + 72) * v36, v15);
    v38 = v57;
    sub_2191C26F8(v15, v57);
    swift_endAccess();
    sub_2187B5F14(v61);
    v52[2] = v63;
    v52[1] = __swift_project_boxed_opaque_existential_1(v61, v62);
    v52[3] = v29;
    v52[4] = v31;
    v39 = v38;
    v40 = v55;
    sub_2191C27FC(v38, v55);
    v52[0] = v23;
    v41 = v56;

    v42 = sub_219BDB954();
    v43 = *(v42 - 8);
    (*(v43 + 32))(v9, v40, v42);
    (*(v43 + 56))(v9, 0, 1, v42);
    v44 = v39;
    v45 = v52[0];
    sub_219BE2924();
    sub_2187455EC(v9, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v46 = swift_allocObject();
    *(v46 + 16) = v54;
    v47 = v53;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = v47;
    *(v46 + 32) = v45;
    *(v46 + 40) = v25;

    v48 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    v49 = v58;
    (*(v59 + 56))(v58, 1, 1, v41);
    swift_beginAccess();

    sub_2199D63A8(v49, v45, v25);
    swift_endAccess();
    sub_2187B9A3C(v44, sub_2187B0408);
  }

  else
  {
    swift_endAccess();
    sub_2187B5F14(v61);
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v50 = sub_219BDB954();
    (*(*(v50 - 8) + 56))(v9, 1, 1, v50);
    sub_219BE2924();
    sub_2187455EC(v9, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  sub_2187B13AC(v61);
  __swift_project_boxed_opaque_existential_1(v61, v62);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v60)
  {

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21883A1AC()
{
  swift_getObjectType();

  return sub_219BE24A4();
}

void *sub_21883A22C(uint64_t *a1)
{
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDD944();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsActivity2.Article(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v79 - v13;
  result = 0;
  v16 = *a1;
  switch((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48();
      goto LABEL_3;
    case 6uLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x1BuLL:
    case 0x1FuLL:
    case 0x3BuLL:
      goto LABEL_19;
    case 8uLL:
LABEL_3:
      v17 = swift_projectBox();
      sub_219719558(v17, v14, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v14, v12, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0();

      sub_218AAFD90(v12, v8, MEMORY[0x277D2FB40]);
      v18 = sub_21909187C(v8);
      v20 = v19;
      sub_218790094(v8, MEMORY[0x277D2FB40]);
      sub_218790094(v14, type metadata accessor for NewsActivity2.Article);
      if (v20)
      {
        return v18;
      }

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
      goto LABEL_20;
    case 0xAuLL:
    case 0xBuLL:
      v27 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v28 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v88[1] = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v88[2] = v28;
      v88[0] = v27;
      v29 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v86 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v87 = v29;
      v89 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v30 = v89;
      v31 = *(&v28 + 1);
      v80 = *(&v88[1] + 8);
      v81 = *(v88 + 8);
      v82 = v29;
      v79 = v86;
      v32 = v27;
      sub_218B5A004(&v86, v83);
      v86 = v79;
      v87 = v82;
      LOBYTE(v88[0]) = v32;
      *(v88 + 8) = v81;
      *(&v88[1] + 8) = v80;
      *(&v88[2] + 1) = v31;
      v89 = v30;
      if (v81 > 8)
      {
        switch(v81)
        {
          case 9:
            goto LABEL_11;
          case 0xALL:
            if (!v32)
            {
              v34 = [v79 name];
              v67 = sub_219BF5414();
LABEL_68:
              v26 = v67;

              goto LABEL_69;
            }

            if (v32 == 1)
            {
              v74 = (v82 + OBJC_IVAR___TSFeedViewContext_title);
              swift_beginAccess();
              v75 = *v74;
              if (v74[1])
              {

                sub_218B5A060(&v86);
                return v75;
              }

              goto LABEL_66;
            }

            goto LABEL_70;
          case 0xBLL:
            goto LABEL_11;
        }

LABEL_41:
        if (!v32)
        {
          goto LABEL_44;
        }

        if (v32 == 1)
        {
          v69 = (v82 + OBJC_IVAR___TSFeedViewContext_title);
          swift_beginAccess();
          v64 = *v69;
          v66 = v69[1];
          if (v66)
          {
            goto LABEL_60;
          }

LABEL_66:
          type metadata accessor for Localized();
          v78 = swift_getObjCClassFromMetadata();
          v34 = [objc_opt_self() bundleForClass_];
          goto LABEL_67;
        }

LABEL_70:
        sub_219BF7514();
        __break(1u);
        JUMPOUT(0x21883B730);
      }

      if (v81)
      {
        if (v81 != 2)
        {
          if (v81 == 3)
          {
LABEL_11:
            type metadata accessor for Localized();
            v33 = swift_getObjCClassFromMetadata();
            v34 = [objc_opt_self() bundleForClass_];
LABEL_67:
            v67 = sub_219BDB5E4();
            goto LABEL_68;
          }

          goto LABEL_41;
        }

        if (!v32)
        {
LABEL_44:
          v63 = [v79 name];
          v64 = sub_219BF5414();
          v66 = v65;

LABEL_61:
          type metadata accessor for Localized();
          v71 = swift_getObjCClassFromMetadata();
          v72 = [objc_opt_self() bundleForClass_];
          sub_219BDB5E4();

          sub_2186F20D4();
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_219C09BA0;
          *(v73 + 56) = MEMORY[0x277D837D0];
          *(v73 + 64) = sub_2186FC3BC();
          *(v73 + 32) = v64;
          *(v73 + 40) = v66;
          v26 = sub_219BF5454();

LABEL_69:
          sub_218B5A060(&v86);
          return v26;
        }

        if (v32 != 1)
        {
          goto LABEL_70;
        }

        v70 = (v82 + OBJC_IVAR___TSFeedViewContext_title);
        swift_beginAccess();
        v64 = *v70;
        v66 = v70[1];
        if (!v66)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (!v32)
        {
          goto LABEL_44;
        }

        if (v32 != 1)
        {
          goto LABEL_70;
        }

        v68 = (v82 + OBJC_IVAR___TSFeedViewContext_title);
        swift_beginAccess();
        v64 = *v68;
        v66 = v68[1];
        if (!v66)
        {
          goto LABEL_66;
        }
      }

LABEL_60:

      goto LABEL_61;
    case 0x14uLL:
    case 0x15uLL:
      memmove(&v86, ((v16 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v21 = *(&v86 + 1);
      v22 = v87;
      if (((HIBYTE(v88[0]) << 48) & 0xC0000000000000) == 0x40000000000000)
      {
        type metadata accessor for Localized();
        v23 = swift_getObjCClassFromMetadata();
        v24 = objc_opt_self();

        v25 = [v24 bundleForClass_];
        v26 = sub_219BDB5E4();

        sub_218AAFFC4(&v86);
        return v26;
      }

      v38 = *(&v87 + 1);
      v37 = *&v88[0];
      v39 = v86;
      v83[0] = v86;
      v83[1] = v87;
      v84 = *&v88[0];
      v40 = BYTE8(v88[0]) & 1;
      v85 = BYTE8(v88[0]) & 1;
      v41 = sub_21896FE24(v86, *(&v86 + 1), v87, *(&v87 + 1), *&v88[0], BYTE8(v88[0]) & 1);
      v47 = sub_219BD4870(v41, v42, v43, v44, v45, v46);
      sub_21896FDCC(v39, v21, v22, v38, v37, v40);
      v36 = [v47 title];

      v48 = sub_219BF5414();
      goto LABEL_21;
    case 0x1AuLL:
      sub_21896FC94((v16 & 0xFFFFFFFFFFFFFF9) + 16, &v86);
      v26 = v87;

      sub_218C113E0(&v86);
      return v26;
    case 0x1EuLL:

      sub_219BDE5F4();
      v51 = (*(v3 + 88))(v5, v2);
      if (v51 == *MEMORY[0x277D2FB08])
      {
        (*(v3 + 96))(v5, v2);

        sub_218A27458();
        v53 = 48;
LABEL_32:
        v54 = *(v52 + v53);
        v55 = sub_219BDDBF4();
        (*(*(v55 - 8) + 8))(v5 + v54, v55);
        type metadata accessor for Localized();
        v56 = swift_getObjCClassFromMetadata();
        v36 = [objc_opt_self() bundleForClass_];
        v26 = sub_219BDB5E4();

        goto LABEL_22;
      }

      if (v51 == *MEMORY[0x277D2FAF8])
      {
        (*(v3 + 96))(v5, v2);
        v57 = *v5;
        sub_2191B3054();
        v59 = *(v58 + 48);
        v60 = [v57 title];
        v61 = sub_219BF5414();

        v62 = sub_219BDDBF4();
        (*(*(v62 - 8) + 8))(v5 + v59, v62);
        return v61;
      }

      if (v51 == *MEMORY[0x277D2FAF0])
      {
        (*(v3 + 96))(v5, v2);

        sub_2197195C0();
        v53 = 64;
        goto LABEL_32;
      }

      type metadata accessor for Localized();
      v76 = swift_getObjCClassFromMetadata();
      v77 = [objc_opt_self() bundleForClass_];
      v26 = sub_219BDB5E4();

      (*(v3 + 8))(v5, v2);
      return v26;
    case 0x3CuLL:
      result = 0;
      v50 = __ROR8__(v16 + 0x1000000000000000, 3);
      if (v50 <= 5)
      {
        if (v50 && v50 != 3)
        {
          return result;
        }
      }

      else if (v50 != 6 && v50 != 8)
      {
        if (v50 != 9)
        {
          return result;
        }

        sub_219BF2394();
        v36 = sub_219BF2364();
        v48 = MEMORY[0x21CEC9110]();
LABEL_21:
        v26 = v48;
LABEL_22:

        return v26;
      }

LABEL_19:
      type metadata accessor for Localized();
      v49 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
LABEL_20:
      v48 = sub_219BDB5E4();
      goto LABEL_21;
    default:
      return result;
  }
}

void sub_21883B820()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_219BDC334();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v75 = &v72 - v7;
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_219BE3DF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BE44E4();
  v15 = sub_219BE3DD4();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = *&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 24];
    v17 = *&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService], v16);
    (*(v17 + 136))(0, v16, v17);
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    v19 = __swift_project_value_buffer(v18, qword_280F62658);
    v20 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2186C1000, v20, v21, "sceneDidBecomeActive: Direct launch of News, Setting badge count to 0", v22, 2u);
      MEMORY[0x21CECF960](v22, -1, -1);
    }

    v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeState] = 0;
    v23 = *MEMORY[0x277D2D6F8];
    (*(v3 + 104))(v10, *MEMORY[0x277D2D6F8], v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    v24 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeSource;
    swift_beginAccess();
    sub_21883C6B0(v10, &v1[v24]);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability], *&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability + 24]);
    sub_219BE4754();
    *(swift_allocObject() + 16) = v1;
    v25 = v1;
    v26 = sub_219BE2E54();
    sub_219BE2F74();

    sub_219BDC364();
    sub_21883E6A8(&unk_280EB7AC8);
    sub_219BDC7D4();

    if (v79 != 1)
    {
      goto LABEL_35;
    }

    v74 = v19;
    v27 = sub_219BE5414();
    v28 = sub_219BF6214();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2186C1000, v27, v28, "Started session with badge enabled. Checking eligibility...", v29, 2u);
      MEMORY[0x21CECF960](v29, -1, -1);
    }

    sub_219BDC374();
    v30 = v75;
    sub_219BDC7D4();

    sub_219BDC344();
    LOBYTE(v79) = 1;
    sub_21883E6A8(&qword_280EB7AC0);
    sub_219BDCA54();

    sub_219BDC354();
    sub_219BDCA54();

    (*(v3 + 16))(v6, v30, v2);
    v31 = (*(v3 + 88))(v6, v2);
    if (v31 != *MEMORY[0x277D2D6F0])
    {
      if (v31 != v23 && v31 != *MEMORY[0x277D2D6E8])
      {
        (*(v3 + 8))(v6, v2);
      }

      v55 = sub_219BE5414();
      v56 = sub_219BF6214();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2186C1000, v55, v56, "Launched with a badge with no badgeID, attempting to route to default landing page...", v57, 2u);
        MEMORY[0x21CECF960](v57, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router], *&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router + 24]);
      sub_21883E6A8(&qword_27CC20758);
      sub_219BE43B4();
      goto LABEL_34;
    }

    (*(v3 + 96))(v6, v2);
    v32 = *v6;
    v33 = v6[1];

    v34 = sub_219BE5414();
    v35 = sub_219BF6214();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2186D1058(v32, v33, &v79);
      _os_log_impl(&dword_2186C1000, v34, v35, "Launched with a badge with badgeID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x21CECF960](v37, -1, -1);
      MEMORY[0x21CECF960](v36, -1, -1);
    }

    v79 = sub_219BF5494();
    v80 = v38;
    v39 = *&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appIconBadgeIdentifierBase];
    v40 = *&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appIconBadgeIdentifierBase + 8];
    v77 = sub_219BF5494();
    v78 = v41;
    sub_218B9E340();
    v73 = v32;
    sub_218B9E394();
    v42 = sub_219BF5314();

    if ((v42 & 1) == 0)
    {

      v58 = sub_219BE5414();
      v59 = sub_219BF6214();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2186C1000, v58, v59, "Launched with a badge with an unknown badgeID, skipping.", v60, 2u);
        MEMORY[0x21CECF960](v60, -1, -1);
      }

      goto LABEL_34;
    }

    v79 = v39;
    v80 = v40;
    v77 = 46;
    v78 = 0xE100000000000000;
    sub_2187F3BD4();
    v43 = *(sub_219BF6FE4() + 16);

    v79 = v73;
    v80 = v33;
    v77 = 46;
    v78 = 0xE100000000000000;
    v44 = sub_219BF6FE4();

    sub_219BC7A48(v43, v44);
    v48 = v47 >> 1;
    if (v46 == v47 >> 1)
    {
      v49 = 0;
      v50 = 0;
LABEL_31:
      swift_unknownObjectRelease();

      v62 = sub_219BE5414();
      v63 = sub_219BF6214();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v77 = v65;
        *v64 = 136315138;
        v79 = v49;
        v80 = v50;
        sub_2186DF260(0, &qword_280E8F860, MEMORY[0x277D83D88]);
        v74 = v49;

        v66 = sub_219BF5484();
        v68 = sub_2186D1058(v66, v67, &v77);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_2186C1000, v62, v63, "Hint in badgeID: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x21CECF960](v65, -1, -1);
        MEMORY[0x21CECF960](v64, -1, -1);
      }

      MEMORY[0x28223BE20](v69);
      sub_219BE4864();
      sub_219BE3204();

      sub_2187D9028();
      v70 = sub_219BF66A4();
      sub_219BE2F94();

      v71 = sub_219BE2E54();
      sub_219BE2FD4();

LABEL_34:
      (*(v3 + 8))(v75, v2);
LABEL_35:
      sub_2198CA004();
      return;
    }

    if (v48 > v46)
    {
      v61 = v45 + 16 * v48;
      v49 = *(v61 - 16);
      v50 = *(v61 - 8);

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v51 = sub_219BE5434();
    __swift_project_value_buffer(v51, qword_280F62658);
    v52 = sub_219BE5414();
    v53 = sub_219BF6214();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2186C1000, v52, v53, "sceneDidBecomeActive: Indirect launch of News, no change to app icon badge", v54, 2u);
      MEMORY[0x21CECF960](v54, -1, -1);
    }
  }
}

uint64_t sub_21883C4A0()
{

  return swift_deallocObject();
}

void sub_21883C4E4(uint64_t a1)
{
  v2 = [objc_opt_self() currentNotificationCenter];
  [v2 setBadgeCount:a1 withCompletionHandler:0];
}

void sub_21883C558()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v2 = sub_219BE5434();
    __swift_project_value_buffer(v2, qword_280F62730);
    v3 = sub_219BE5414();
    v4 = sub_219BF6214();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      sub_219BF5CD4();
      *(v5 + 4) = v6;
      _os_log_impl(&dword_2186C1000, v3, v4, "Sports sync manager waiting to prepare for syncing...done (time elapsed=%f)", v5, 0xCu);
      MEMORY[0x21CECF960](v5, -1, -1);
    }

    [*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] addObserver_];
    dispatch_group_leave(*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup]);
  }
}

uint64_t sub_21883C6B0(uint64_t a1, uint64_t a2)
{
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21883C730(uint64_t *a1)
{
  v98 = *MEMORY[0x277D85DE8];
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDD944();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsActivity2.Article(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v87 - v13;
  v15 = *a1;
  result = MEMORY[0x277D84F90];
  switch((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48();
      goto LABEL_3;
    case 6uLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0x1BuLL:
    case 0x1FuLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
      goto LABEL_29;
    case 8uLL:
LABEL_3:
      v17 = swift_projectBox();
      sub_219719558(v17, v14, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v14, v12, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0();

      sub_218AAFD90(v12, v8, MEMORY[0x277D2FB40]);
      v18 = sub_21909187C(v8);
      v20 = v19;
      sub_218790094(v8, MEMORY[0x277D2FB40]);
      sub_218790094(v14, type metadata accessor for NewsActivity2.Article);
      if (v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      result = swift_allocObject();
      *(result + 16) = xmmword_219C09BA0;
      *(result + 32) = v21;
      *(result + 40) = v22;
      return result;
    case 0xAuLL:
    case 0xBuLL:
      v37 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v38 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v96[1] = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v96[2] = v38;
      v96[0] = v37;
      v39 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v94 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v95 = v39;
      v97 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v40 = v97;
      v41 = *(&v38 + 1);
      v89 = *(v96 + 8);
      v90 = *(&v96[1] + 8);
      v87 = v94;
      v88 = v39;
      v42 = v37;
      sub_218B5A004(&v94, v91);
      v91[0] = v87;
      v91[1] = v88;
      LOBYTE(v92[0]) = v42;
      *(v92 + 8) = v89;
      *(&v92[1] + 8) = v90;
      *(&v92[2] + 1) = v41;
      v93 = v40;
      v97 = v40;
      v96[0] = v92[0];
      v96[1] = v92[1];
      v96[2] = v92[2];
      v94 = v87;
      v95 = v88;
      v43 = sub_2197183DC();
      sub_218B5A060(v91);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45 = [objc_opt_self() bundleForClass_];
      v46 = sub_219BDB5E4();
      v48 = v47;

      v49 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_218840D24(0, *(v43 + 16) + 1, 1, v43);
      }

      result = v49;
      v50 = *(v49 + 2);
      v51 = *(result + 24);
      if (v50 >= v51 >> 1)
      {
        result = sub_218840D24((v51 > 1), v50 + 1, 1, result);
      }

      *(result + 16) = v50 + 1;
      v52 = result + 16 * v50;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
      return result;
    case 0x11uLL:
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      type metadata accessor for Localized();
      v54 = swift_getObjCClassFromMetadata();
      v55 = objc_opt_self();
      v56 = [v55 bundleForClass_];
      v57 = sub_219BDB5E4();
      v59 = v58;

      *(inited + 32) = v57;
      *(inited + 40) = v59;
      v60 = [v55 bundleForClass_];
      v61 = sub_219BDB5E4();
      v63 = v62;

      result = sub_218840D24(1, 2, 1, inited);
      *(result + 16) = 2;
      *(result + 48) = v61;
      *(result + 56) = v63;
      return result;
    case 0x14uLL:
    case 0x15uLL:
      if (((*((v15 & 0xFFFFFFFFFFFFFF9) + 0x3F) << 48) & 0xC0000000000000) == 0x40000000000000)
      {
        return result;
      }

      v23 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v24 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x38);
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_219C09BA0;
      v26 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v94 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v95 = v26;
      *&v96[0] = v23;
      BYTE8(v96[0]) = v24 & 1;
      v32 = [sub_219BD4870(v25 v27];
      v33 = sub_219BF5414();
      goto LABEL_12;
    case 0x1AuLL:
      sub_21896FC94((v15 & 0xFFFFFFFFFFFFFF9) + 16, &v94);
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_219C09BA0;
      v70 = *(&v95 + 1);
      *(v69 + 32) = v95;
      *(v69 + 40) = v70;

      sub_218C113E0(&v94);
      return v69;
    case 0x1EuLL:

      sub_219BDE5F4();
      v64 = (*(v3 + 88))(v5, v2);
      if (v64 == *MEMORY[0x277D2FB08])
      {
        (*(v3 + 96))(v5, v2);

        sub_218A27458();
        v66 = 48;
        goto LABEL_21;
      }

      if (v64 != *MEMORY[0x277D2FAF8])
      {
        if (v64 != *MEMORY[0x277D2FAF0])
        {

          (*(v3 + 8))(v5, v2);
          return MEMORY[0x277D84F90];
        }

        (*(v3 + 96))(v5, v2);

        sub_2197195C0();
        v66 = 64;
LABEL_21:
        v67 = *(v65 + v66);
        v68 = sub_219BDDBF4();
        (*(*(v68 - 8) + 8))(v5 + v67, v68);

        return MEMORY[0x277D84F90];
      }

      (*(v3 + 96))(v5, v2);
      v78 = *v5;
      sub_2191B3054();
      v80 = *(v79 + 48);
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_219C09BA0;
      v82 = [v78 title];
      v83 = sub_219BF5414();
      v85 = v84;

      *(v81 + 32) = v83;
      *(v81 + 40) = v85;

      v86 = sub_219BDDBF4();
      (*(*(v86 - 8) + 8))(v5 + v80, v86);
      return v81;
    case 0x3CuLL:
      v71 = __ROR8__(v15 + 0x1000000000000000, 3);
      if (v71 <= 5)
      {
        if (v71 && v71 != 3)
        {
          return result;
        }

LABEL_29:
        sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_219C09BA0;
        type metadata accessor for Localized();
        v73 = swift_getObjCClassFromMetadata();
        v74 = [objc_opt_self() bundleForClass_];
        v75 = sub_219BDB5E4();
        v77 = v76;

        result = v72;
        *(v72 + 32) = v75;
        *(v72 + 40) = v77;
        return result;
      }

      if (v71 == 6 || v71 == 8)
      {
        goto LABEL_29;
      }

      if (v71 == 9)
      {
        sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_219C09BA0;
        sub_219BF2394();
        v32 = sub_219BF2364();
        v33 = MEMORY[0x21CEC9110]();
LABEL_12:
        v35 = v33;
        v36 = v34;

        result = v25;
        *(v25 + 32) = v35;
        *(v25 + 40) = v36;
      }

      return result;
    default:
      return result;
  }
}

void sub_21883D9C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21883DA18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21883DA68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21883DAB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21883DB08()
{
  if ([*(v0 + 24) validatedCachedSubscription])
  {
    sub_21883DD08(0, &unk_280EE6970, sub_21883DE14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  else
  {
    sub_21883DD08(0, &unk_280EE6970, sub_21883DE14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F74();

  return v2;
}

uint64_t sub_21883DC50()
{
  v1 = *(v0 + 48);

  sub_21883DD6C(v1, (v0 + 72));

  return MEMORY[0x2822009F8](sub_218844C40, 0, 0);
}

void sub_21883DD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21883DD6C@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v5 = result;
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_21883DE60(a1, Strong);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = v5 == 0;
  return result;
}

unint64_t sub_21883DE14()
{
  result = qword_280E8E208;
  if (!qword_280E8E208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E208);
  }

  return result;
}

void sub_21883DE60(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D2D4E0];
  sub_2187DD4F0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_219BEC004();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_218812314(a1, v10, &qword_280EE33F0, v4);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    sub_218817724(v10, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    v16 = off_282A50D38;
    type metadata accessor for MastheadPaywallEventHandler(0);
    v16();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if ((sub_219BEBFE4() & 1) == 0)
    {
      v17 = off_282A50D38;
      type metadata accessor for MastheadPaywallEventHandler(0);
      v17();
    }

    (*(v12 + 8))(v14, v11);
  }

  v18 = a2;
  v19 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = v28;
  if (Strong)
  {
    v22 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v24 = sub_2187E1408(&qword_280ECFA70, type metadata accessor for TodayViewController);
    (*(v22 + 40))(v18, v24, v21, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  sub_218812314(v21, v8, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  if (v15(v8, 1, v11) == 1)
  {
    sub_218817724(v8, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  }

  else
  {
    v25 = sub_219BEBFF4();
    (*(v12 + 8))(v8, v11);
    if (v25)
    {
      swift_getObjectType();
      sub_219BE8664();
      v26 = sub_219BE7BC4();

      sub_219BEBE74();
    }
  }
}

id sub_21883E258@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPaidBundleViaOfferActivated];
  *a2 = result;
  return result;
}

uint64_t sub_21883E294()
{
  sub_2187F6124(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();

  sub_219BE2F94();
}

uint64_t type metadata accessor for MastheadPaywallConfiguration()
{
  result = qword_280EB3C58;
  if (!qword_280EB3C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_21883E414(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F62658);
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "paidBundleViaOffer was activated. Removing local notifications...", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    v7 = (a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService);
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_2186DF260(0, &qword_280E8B750, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    *(v10 + 32) = sub_219BF5414();
    *(v10 + 40) = v11;
    (*(v9 + 88))(v10, v8, v9);

    v12 = v7[3];
    v13 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    *(v14 + 32) = sub_219BF5414();
    *(v14 + 40) = v15;
    (*(v13 + 80))(v14, v12, v13);
  }

  return result;
}

uint64_t sub_21883E62C()
{
  result = sub_219BE4584();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21883E6A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PaidBundleViaOfferUIHandler();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21883E6EC()
{

  sub_21883E800(sub_218D33FC4, v0);

  v1 = sub_219BE2E54();
  sub_219BE2F74();
}

uint64_t sub_21883E7A4()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_21883E800(uint64_t a1, uint64_t a2)
{
  sub_2187C84E8(0, &qword_280EE7A98, MEMORY[0x277D6CD60], MEMORY[0x277D6CB90]);
  swift_allocObject();
  v4 = sub_219BE2244();
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v10[4] = sub_218AFE038;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218793E0C;
  v10[3] = &block_descriptor_52;
  v7 = _Block_copy(v10);

  [v5 scheduleLowPriorityBlock_];
  _Block_release(v7);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21883E99C()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_21883EC14();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21883ED28(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  sub_219BE2F94();

  v1 = sub_219BE2E54();
  v2 = sub_219BE3084();

  return v2;
}

uint64_t sub_21883EB10()
{
  sub_218760638();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF5BF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_218AB3D80(0, 0, v3, &unk_219C0F990, v5);
}

void sub_21883EC14()
{
  if (!qword_280E8E060)
  {
    sub_2186C61E4();
    sub_21883ED28(255, &qword_280EE6200, MEMORY[0x277D35380]);
    sub_21883ED28(255, &unk_280E8E8C0, sub_21883ED84);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8E060);
    }
  }
}

void sub_21883ECD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21883ED28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21883ED84()
{
  result = qword_280E8E8D0;
  if (!qword_280E8E8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E8D0);
  }

  return result;
}

void sub_21883EDD0()
{
  v0 = sub_219BE8A24();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  sub_21883F194();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2CD4();
  v10 = v23;
  if (!v23)
  {
    LOBYTE(v23) = 0;
    sub_21883F1F8();
    sub_219BE2114();
    return;
  }

  sub_219BE20E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      LOBYTE(v23) = 0;
      sub_21883F1F8();
      sub_219BE2114();

      return;
    }

    swift_getObjectType();
    v23 = v10;
    sub_219BEAF64();
    sub_219BE20E4();

    (*(v1 + 104))(v4, *MEMORY[0x277D6E150], v0);
    v12 = sub_219BE8A14();
    v13 = *(v1 + 8);
    v13(v4, v0);
    v13(v6, v0);
    if ((v12 & 1) != 0 && (v14 = [objc_opt_self() sharedApplication], v15 = objc_msgSend(v14, sel_applicationState), v14, v15 != 2))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    LOBYTE(v23) = v16;
    sub_21883F1F8();
    sub_219BE2114();

    sub_218A6E554();
    v21 = *(v20 + 64);
    v22 = sub_219BDD9E4();
    (*(*(v22 - 8) + 8))(&v9[v21], v22);
  }

  else
  {
    sub_218A6E5D0(0);
    v18 = *(v17 + 64);
    LOBYTE(v23) = 2;
    sub_21883F1F8();
    sub_219BE2114();

    v19 = sub_219BDD9E4();
    (*(*(v19 - 8) + 8))(&v9[v18], v19);
  }

  sub_2193AA2A8(v9, type metadata accessor for AudioFeedTrack);
}

void sub_21883F194()
{
  if (!qword_280EE8D70)
  {
    type metadata accessor for AudioFeedTrack(255);
    sub_218731DB4();
    v0 = sub_219BDDBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8D70);
    }
  }
}

unint64_t sub_21883F1F8()
{
  result = qword_280EB94D0;
  if (!qword_280EB94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB94D0);
  }

  return result;
}

uint64_t sub_21883F24C()
{
  swift_getObjectType();
  sub_219BF6A64();
  swift_getObjectType();
  sub_21883F314();
  swift_getObjectType();
  sub_219BE4594();
  v0 = sub_219BE31B4();

  return v0;
}

uint64_t sub_21883F314()
{
  sub_219BE4864();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21883ED28(0, &qword_280EE6200, MEMORY[0x277D35380]);
  sub_219BE2F74();

  v1 = sub_219BE2E54();
  v2 = sub_219BE3064();

  return v2;
}

uint64_t sub_21883F470()
{
  v1 = sub_219BED174();
  v22 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED214();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_2187D9028();
  v14 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_219717620;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_151;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187E1408(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_2187DD4F0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v19)(v13, v7);
}

uint64_t sub_21883F870(uint64_t a1)
{
  v69 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v58 - v4;
  v5 = sub_219BE8DB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEC004();
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v2);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  v17 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MastheadModelContext();
  result = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model);
  if (!(v24 >> 60))
  {
    v61 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
    v59 = v8;
    v65 = v6;
    v66 = v5;
    sub_2187FF18C();
    v26 = v25;
    v27 = swift_projectBox();
    v60 = v9;
    v28 = *v27;
    v29 = v24;
    v30 = *(v26 + 64);
    v31 = v27 + *(v26 + 48);
    v63 = v23;
    sub_21881CF74(v31, v23, type metadata accessor for MastheadModelContext);
    sub_21881CF74(v27 + v30, v19, type metadata accessor for MastheadModelSupplementaryInfo);
    v32 = MEMORY[0x277D2D4E0];
    sub_218812294(v69, v16, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    v58 = v17;
    v33 = *(v17 + 24);
    v64 = v29;

    v62 = v28;
    v34 = v60;

    sub_21883FF94(v16, &v19[v33]);
    v69 = v19;
    sub_218812294(&v19[v33], v14, &qword_280EE33F0, v32);
    v35 = v68;
    if ((*(v68 + 48))(v14, 1, v34) == 1)
    {
      v36 = MEMORY[0x277D2D4E0];
      sub_2188174B8(v16, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      sub_2188174B8(v14, &qword_280EE33F0, v36);
      v38 = v65;
      v37 = v66;
      v39 = v69;
    }

    else
    {
      v40 = v67;
      (*(v35 + 32))(v67, v14, v34);
      v41 = sub_219BEBFE4();
      (*(v35 + 8))(v40, v34);
      sub_2188174B8(v16, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      v38 = v65;
      v37 = v66;
      v39 = v69;
      if (v41)
      {
        v42 = &v69[*(v58 + 28)];
        v43 = *(v42 + 3);
        v72[2] = *(v42 + 2);
        v72[3] = v43;
        v73 = *(v42 + 8);
        v44 = *(v42 + 1);
        v72[0] = *v42;
        v72[1] = v44;
        sub_218C8FBF8(v72);
        *v42 = 0u;
        *(v42 + 1) = 0u;
        *(v42 + 2) = 0u;
        *(v42 + 3) = 0u;
        *(v42 + 8) = 0;
      }
    }

    v45 = swift_allocBox();
    v47 = v46;
    v48 = *(v26 + 48);
    v49 = *(v26 + 64);
    v50 = v63;
    *v46 = v62;
    sub_21881CF74(v50, v46 + v48, type metadata accessor for MastheadModelContext);
    sub_21881CF74(v39, v47 + v49, type metadata accessor for MastheadModelSupplementaryInfo);
    v51 = v71;
    *(v71 + v61) = v45;

    v52 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
    swift_beginAccess();
    v53 = v51 + v52;
    v54 = v70;
    sub_218812294(v53, v70, &qword_280EE4768, MEMORY[0x277D6E2A8]);
    if ((*(v38 + 48))(v54, 1, v37) == 1)
    {

      sub_218819144(v50, type metadata accessor for MastheadModelContext);
      sub_2188174B8(v54, &qword_280EE4768, MEMORY[0x277D6E2A8]);
    }

    else
    {
      v55 = v59;
      (*(v38 + 32))(v59, v54, v37);
      v56 = v71 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_218812E9C(v55, Strong, *(v56 + 8));

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v38 + 8))(v55, v37);
      sub_218819144(v50, type metadata accessor for MastheadModelContext);
    }

    sub_218819144(v39, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  return result;
}

uint64_t sub_21883FF94(uint64_t a1, uint64_t a2)
{
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_218840028()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_219BE3494();
}

uint64_t sub_218840094()
{

  return swift_deallocObject();
}

void sub_2188400DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_21884041C())
    {
      v2 = [*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] sportsSyncState];
      if (v2 == 2)
      {
        MEMORY[0x28223BE20](2);
        sub_219BE3204();
        v3 = sub_219BE1C44();
        type metadata accessor for SportsSyncManager();
        sub_219BE2F94();

        v4 = sub_219BE2E54();
        sub_219BE2FD4();

        return;
      }
    }

    else
    {
      v2 = 0;
    }

    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v5 = sub_219BE5434();
    __swift_project_value_buffer(v5, qword_280F62730);
    v6 = sub_219BE5414();
    v7 = sub_219BF61F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      v10 = FCSportsSyncState.description.getter(v2);
      v12 = sub_2186D1058(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2186C1000, v6, v7, "Sync manager skipping initial subscription sync changes, sync state '%{public}s'", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CECF960](v9, -1, -1);
      MEMORY[0x21CECF960](v8, -1, -1);
    }
  }
}

uint64_t sub_21884036C(void *a1)
{
  sub_2188405BC(a1);

  sub_219BE2E94();

  sub_2187FBC98(sub_2187FC0E0, &block_descriptor_131);
}

uint64_t sub_21884041C()
{
  sub_219BE20E4();
  if (!v7)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F62730);
    v2 = sub_219BE5414();
    v3 = sub_219BF6214();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_13;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Sports sync manager disallowing syncing because iCloud account status is yet to be determined";
    goto LABEL_12;
  }

  if (v7 == 1)
  {
    return 1;
  }

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62730);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Sports sync manager disallowing syncing because iCloud account status is signed out";
LABEL_12:
    _os_log_impl(&dword_2186C1000, v2, v3, v5, v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

LABEL_13:

  return 0;
}

uint64_t sub_2188405BC(void *a1)
{
  v2 = sub_219BE5434();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v39 = &v37 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v38 = &v37 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v37 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = MEMORY[0x277D85000];
  v18 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0xD0));
  v19 = __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v43 = *(a1 + *((*v17 & *a1) + 0xA0));
  v20 = sub_2187FB8D0();
  v42 = *v19;
  v21 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  if (v21(v20) == 6)
  {
    v22 = *(a1 + *((*v17 & *a1) + 0xD8));
    if ([v22 isNetworkReachable])
    {
      v23 = [objc_opt_self() sharedApplication];
      v24 = [v23 applicationState];

      if (v24 == 2)
      {
        v25 = v39;
        sub_2187FB8F4(v39);
        v26 = sub_219BE5414();
        v27 = sub_219BF6214();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          v29 = "Offline Readiness processor will be disabled due to app background state";
LABEL_18:
          _os_log_impl(&dword_2186C1000, v26, v27, v29, v28, 2u);
          v31 = 0;
          v16 = v25;
          goto LABEL_19;
        }
      }

      else
      {
        v33 = [objc_opt_self() processInfo];
        v34 = [v33 isLowPowerModeEnabled];

        if (v34)
        {
          v25 = v38;
          sub_2187FB8F4(v38);
          v26 = sub_219BE5414();
          v27 = sub_219BF6214();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            v29 = "Offline Readiness processor will be disabled due to Low Power Mode";
            goto LABEL_18;
          }
        }

        else
        {
          if (([v22 isLowDataModeEnabled] & 1) == 0)
          {
            sub_2187FB8F4(v16);
            v26 = sub_219BE5414();
            v36 = sub_219BF6214();
            if (!os_log_type_enabled(v26, v36))
            {
              v31 = 1;
              goto LABEL_20;
            }

            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_2186C1000, v26, v36, "Offline Readiness processor will be enabled", v28, 2u);
            v31 = 1;
            goto LABEL_19;
          }

          v25 = v37;
          sub_2187FB8F4(v37);
          v26 = sub_219BE5414();
          v27 = sub_219BF6214();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            v29 = "Offline Readiness processor will be disabled due to Low Data Mode";
            goto LABEL_18;
          }
        }
      }

      v31 = 0;
      v16 = v25;
      goto LABEL_20;
    }

    sub_2187FB8F4(v8);
    v26 = sub_219BE5414();
    v32 = sub_219BF6214();
    if (os_log_type_enabled(v26, v32))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2186C1000, v26, v32, "Offline Readiness processor will be disabled due to network reachability", v28, 2u);
      v31 = 0;
      v16 = v8;
      goto LABEL_19;
    }

    v31 = 0;
    v16 = v8;
  }

  else
  {
    sub_2187FB8F4(v5);
    v26 = sub_219BE5414();
    v30 = sub_219BF6214();
    if (os_log_type_enabled(v26, v30))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2186C1000, v26, v30, "Offline Readiness processor will be disabled due to feature enablement", v28, 2u);
      v31 = 0;
      v16 = v5;
LABEL_19:
      MEMORY[0x21CECF960](v28, -1, -1);
      goto LABEL_20;
    }

    v31 = 0;
    v16 = v5;
  }

LABEL_20:

  (*(v40 + 8))(v16, v41);
  return v31;
}

uint64_t FCSportsSyncState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x64656C62616E65;
      }

      goto LABEL_8;
    }

    return 0x64656C6261736964;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6D72657465646E75;
      }

LABEL_8:
      v2 = sub_219BF7894();
      MEMORY[0x21CECC330](v2);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      return 0x286E776F6E6B6E75;
    }

    return 0x616C696176616E75;
  }
}

uint64_t sub_218840CA4()
{
  swift_getObjectType();

  return sub_219BE2494();
}

char *sub_218840D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void SceneStateManagerBridge.sceneDidBecomeActive(with:sourceApplication:sceneID:)(uint64_t a1)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  sub_2188383F8(a1, v5);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  swift_unknownObjectRetain();
  v10 = 0;
  if (v9 != 1)
  {
    v10 = sub_219BDB854();
    (*(v8 + 8))(v5, v7);
  }

  v11 = sub_219BF53D4();

  v12 = sub_219BF53D4();
  [v6 sceneDidBecomeActiveWithURL:v10 sourceApplication:v11 sceneID:v12];
  swift_unknownObjectRelease();
}