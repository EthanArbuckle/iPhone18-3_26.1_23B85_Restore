void sub_21880B928()
{
  if (!qword_280EE3720)
  {
    type metadata accessor for TodayModel(255);
    sub_2186EB3E8();
    sub_2187FADB8(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3720);
    }
  }
}

void sub_21880B9E0()
{
  if (!qword_280E90780)
  {
    sub_2186FB728();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90780);
    }
  }
}

uint64_t sub_21880BA68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21880BB00(id a1)
{
  if (!(a1 >> 62))
  {
  }
}

uint64_t sub_21880BB10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_21880BB54(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21880BB54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_21880BAC8();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21880BBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21880BC4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21880BCB4(_BYTE *a1, void *a2)
{
  v5 = *(sub_219BE9944() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TodayExpandContext() - 8);
  return sub_21880BD9C(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

unint64_t sub_21880BD9C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v6 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED174();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BED1D4();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BED214();
  v37 = *(v44 - 8);
  v12 = MEMORY[0x28223BE20](v44);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v36 = &v35 - v15;
  v16 = sub_219BE9C04();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v46 = 0xE000000000000000;
    sub_219BE9934();
    sub_219BF7484();
    (*(v17 + 8))(v19, v16);
    v21 = aBlock;
    v22 = v46;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    sub_219BF6214();
    sub_219BE5314();

    result = sub_219BE7B04();
    if (result >> 62)
    {
      if (result >> 62 == 1)
      {
        sub_2187D9028();
        v24 = sub_219BF66A4();
        sub_219BED1F4();
        v25 = v36;
        sub_219BED244();
        v37 = *(v37 + 8);
        (v37)(v14, v44);
        v26 = swift_allocObject();
        *(v26 + 16) = a2;
        v49 = sub_2197160DC;
        v50 = v26;
        aBlock = MEMORY[0x277D85DD0];
        v46 = 1107296256;
        v47 = sub_218793E0C;
        v48 = &block_descriptor_57_0;
        v27 = _Block_copy(&aBlock);
        v28 = a2;

        v29 = v38;
        sub_219BED1A4();
        aBlock = MEMORY[0x277D84F90];
        sub_2187E1408(&qword_280E927E0, MEMORY[0x277D85198]);
        sub_2187DD4F0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v30 = v40;
        v31 = v43;
        sub_219BF7164();
        MEMORY[0x21CECD420](v25, v29, v30, v27);
        _Block_release(v27);

        (*(v42 + 8))(v30, v31);
        (*(v39 + 8))(v29, v41);
        return (v37)(v25, v44);
      }
    }

    else
    {
      sub_21880BB00(result);
      sub_21881DCEC(v35);
    }
  }

  else
  {
    v32 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0xF0));
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    v33 = *MEMORY[0x277D2F310];
    v34 = sub_219BE14C4();
    (*(*(v34 - 8) + 104))(v8, v33, v34);
    swift_storeEnumTagMultiPayload();
    sub_21880C6BC(v8);
    return sub_21880BA68(v8, type metadata accessor for EngagementEvent);
  }

  return result;
}

uint64_t sub_21880C48C()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for EngagementEvent()
{
  result = qword_280EDA910;
  if (!qword_280EDA910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21880C514()
{
  result = sub_219BE05A4();
  if (v1 <= 0x3F)
  {
    result = sub_219BE0154();
    if (v2 <= 0x3F)
    {
      result = sub_219BDFB64();
      if (v3 <= 0x3F)
      {
        result = sub_219BDFBD4();
        if (v4 <= 0x3F)
        {
          result = sub_219BDFC94();
          if (v5 <= 0x3F)
          {
            result = sub_219BDF514();
            if (v6 <= 0x3F)
            {
              result = sub_21880C68C();
              if (v7 <= 0x3F)
              {
                result = sub_219BE0234();
                if (v8 <= 0x3F)
                {
                  result = sub_219BDFAB4();
                  if (v9 <= 0x3F)
                  {
                    result = sub_219BE01B4();
                    if (v10 <= 0x3F)
                    {
                      result = sub_219BDFAF4();
                      if (v11 <= 0x3F)
                      {
                        result = sub_219BE14C4();
                        if (v12 <= 0x3F)
                        {
                          result = sub_219BDFF34();
                          if (v13 <= 0x3F)
                          {
                            result = sub_219BDFC44();
                            if (v14 <= 0x3F)
                            {
                              result = sub_219BDF934();
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21880C68C()
{
  result = qword_280E8F8C8;
  if (!qword_280E8F8C8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E8F8C8);
  }

  return result;
}

void sub_21880C6BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE14C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v107 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EngagementEvent();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v108 = &v101 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v101 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v101 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v101 - v19;
  if (sub_21880D14C())
  {

    sub_219BE2E84();

    if (v109[0] == 1)
    {
      v106 = v5;
      v104 = v4;
      if (qword_27CC08578 != -1)
      {
        swift_once();
      }

      v21 = sub_219BE5434();
      v22 = __swift_project_value_buffer(v21, qword_27CCD8A38);
      sub_218A153EC(a1, v20);
      v105 = v22;
      v23 = sub_219BE5414();
      v24 = sub_219BF6214();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v102 = a1;
        v26 = v25;
        v27 = swift_slowAlloc();
        v101 = v15;
        v28 = v27;
        *v109 = v27;
        *v26 = 136315138;
        v29 = sub_218A12AC0();
        v103 = v18;
        v31 = v30;
        sub_2190AB1F0(v20, type metadata accessor for EngagementEvent);
        v32 = sub_2186D1058(v29, v31, v109);
        v18 = v103;

        *(v26 + 4) = v32;
        _os_log_impl(&dword_2186C1000, v23, v24, "Received event %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v33 = v28;
        v15 = v101;
        MEMORY[0x21CECF960](v33, -1, -1);
        v34 = v26;
        a1 = v102;
        MEMORY[0x21CECF960](v34, -1, -1);
      }

      else
      {

        sub_2190AB1F0(v20, type metadata accessor for EngagementEvent);
      }

      v35 = OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager__userIsAuthenticatedToAppStore;
      v36 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager__userIsAuthenticatedToAppStore);
      v37 = v106;
      if (v36 == 2)
      {
        v38 = [*(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_appleAccount) activeiTunesAccount];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 isAuthenticated];

          if (v40)
          {
            *(v2 + v35) = 1;
LABEL_13:
            if (sub_2190A9B48())
            {
              sub_218A153EC(a1, v18);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload > 11)
              {
                if (EnumCaseMultiPayload == 12)
                {
                  v80 = v107;
                  v81 = v104;
                  (*(v37 + 32))(v107, v18, v104);
                  sub_2190AA1A4(v80);
                  (*(v37 + 8))(v80, v81);
                  return;
                }

                if (EnumCaseMultiPayload == 13)
                {
                  v96 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                  v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                  v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                  __swift_project_boxed_opaque_existential_1(v96, v43);
                  v97 = v96[3];
                  v98 = v96[4];
                  __swift_project_boxed_opaque_existential_1(v96, v97);
                  (*(v98 + 8))(v109, v97, v98);
                  if (v110)
                  {
                    v99 = 0;
                  }

                  else
                  {
                    v99 = *&v109[16];
                  }

                  if (v110)
                  {
                    v48 = 0;
                  }

                  else
                  {
                    v48 = *&v109[24];
                  }

                  if (v110)
                  {
                    v100 = -1;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  if (!__OFADD__(v99, 1))
                  {
                    *v109 = vbicq_s8(*v109, vdupq_n_s64(v100));
                    *&v109[16] = v99 + 1;
                    goto LABEL_70;
                  }

LABEL_80:
                  __break(1u);
                  return;
                }

                if (EnumCaseMultiPayload != 14)
                {
                  goto LABEL_51;
                }

                v64 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                __swift_project_boxed_opaque_existential_1(v64, v43);
                v65 = v64[3];
                v66 = v64[4];
                __swift_project_boxed_opaque_existential_1(v64, v65);
                (*(v66 + 8))(v109, v65, v66);
                v68 = *&v109[24];
                v67 = *&v109[16];
                if (v110)
                {
                  v67 = 0;
                  v68 = 0;
                  v69 = -1;
                }

                else
                {
                  v69 = 0;
                }

                v70 = __OFADD__(v68, 1);
                v71 = v68 + 1;
                if (v70)
                {
                  goto LABEL_78;
                }

                *v109 = vbicq_s8(*v109, vdupq_n_s64(v69));
                *&v109[16] = v67;
                *&v109[24] = v71;
              }

              else
              {
                switch(EnumCaseMultiPayload)
                {
                  case 9:
                    v72 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                    v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                    v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                    __swift_project_boxed_opaque_existential_1(v72, v43);
                    v73 = v72[3];
                    v74 = v72[4];
                    __swift_project_boxed_opaque_existential_1(v72, v73);
                    (*(v74 + 8))(v109, v73, v74);
                    v76 = *&v109[8];
                    v75 = *v109;
                    if (v110)
                    {
                      v75 = 0;
                      v76 = 0;
                      v77 = -1;
                    }

                    else
                    {
                      v77 = 0;
                    }

                    v70 = __OFADD__(v76, 1);
                    v78 = v76 + 1;
                    if (v70)
                    {
                      __break(1u);
LABEL_77:
                      __break(1u);
LABEL_78:
                      __break(1u);
LABEL_79:
                      __break(1u);
                      goto LABEL_80;
                    }

                    v79 = vbicq_s8(*&v109[16], vdupq_n_s64(v77));
                    break;
                  case 10:
                    v90 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                    v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                    v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                    __swift_project_boxed_opaque_existential_1(v90, v43);
                    v91 = v90[3];
                    v92 = v90[4];
                    __swift_project_boxed_opaque_existential_1(v90, v91);
                    (*(v92 + 8))(v109, v91, v92);
                    v93 = *&v109[8];
                    v75 = *v109;
                    if (v110)
                    {
                      v75 = 0;
                      v93 = 0;
                      v94 = -1;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    v70 = __OFSUB__(v93, 1);
                    v95 = v93 - 1;
                    if (v70)
                    {
                      goto LABEL_79;
                    }

                    v79 = vbicq_s8(*&v109[16], vdupq_n_s64(v94));
                    v78 = v95 & ~(v95 >> 63);
                    break;
                  case 11:
                    v42 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                    v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                    v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                    __swift_project_boxed_opaque_existential_1(v42, v43);
                    v45 = v42[3];
                    v46 = v42[4];
                    __swift_project_boxed_opaque_existential_1(v42, v45);
                    (*(v46 + 8))(v109, v45, v46);
                    if (v110)
                    {
                      v47 = 0;
                    }

                    else
                    {
                      v47 = *v109;
                    }

                    if (v110)
                    {
                      v48 = 0;
                    }

                    else
                    {
                      v48 = *&v109[24];
                    }

                    if (v110)
                    {
                      v49 = -1;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    if (!__OFADD__(v47, 1))
                    {
                      *v109 = v47 + 1;
                      *&v109[8] = vbicq_s8(*&v109[8], vdupq_n_s64(v49));
LABEL_70:
                      *&v109[24] = v48;
                      goto LABEL_71;
                    }

                    goto LABEL_77;
                  default:
LABEL_51:
                    sub_218A153EC(a1, v15);
                    v82 = sub_219BE5414();
                    v83 = sub_219BF6214();
                    if (os_log_type_enabled(v82, v83))
                    {
                      v84 = swift_slowAlloc();
                      v85 = swift_slowAlloc();
                      *v109 = v85;
                      *v84 = 136315138;
                      v86 = sub_218A12AC0();
                      v88 = v87;
                      sub_2190AB1F0(v15, type metadata accessor for EngagementEvent);
                      v89 = sub_2186D1058(v86, v88, v109);

                      *(v84 + 4) = v89;
                      _os_log_impl(&dword_2186C1000, v82, v83, "Ignoring event %s", v84, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v85);
                      MEMORY[0x21CECF960](v85, -1, -1);
                      MEMORY[0x21CECF960](v84, -1, -1);
                    }

                    else
                    {

                      sub_2190AB1F0(v15, type metadata accessor for EngagementEvent);
                    }

                    goto LABEL_72;
                }

                *v109 = v75;
                *&v109[8] = v78;
                *&v109[16] = v79;
              }

LABEL_71:
              (*(v44 + 24))(v109, v43, v44);
              goto LABEL_72;
            }

            v18 = v108;
            sub_218A153EC(a1, v108);
            v50 = sub_219BE5414();
            v51 = sub_219BF6214();
            if (!os_log_type_enabled(v50, v51))
            {

LABEL_72:
              v59 = v18;
              goto LABEL_73;
            }

            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            *v109 = v53;
            *v52 = 136315138;
            v60 = sub_218A12AC0();
            v62 = v61;
            sub_2190AB1F0(v18, type metadata accessor for EngagementEvent);
            v63 = sub_2186D1058(v60, v62, v109);

            *(v52 + 4) = v63;
            v58 = "Skipping processing [%s] due to quiescence interval";
LABEL_35:
            _os_log_impl(&dword_2186C1000, v50, v51, v58, v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v53);
            MEMORY[0x21CECF960](v53, -1, -1);
            MEMORY[0x21CECF960](v52, -1, -1);

            return;
          }
        }

        *(v2 + v35) = 0;
      }

      else if (v36)
      {
        goto LABEL_13;
      }

      sub_218A153EC(a1, v10);
      v50 = sub_219BE5414();
      v51 = sub_219BF6214();
      if (!os_log_type_enabled(v50, v51))
      {

        v59 = v10;
LABEL_73:
        sub_2190AB1F0(v59, type metadata accessor for EngagementEvent);
        return;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v109 = v53;
      *v52 = 136315138;
      v54 = sub_218A12AC0();
      v56 = v55;
      sub_2190AB1F0(v10, type metadata accessor for EngagementEvent);
      v57 = sub_2186D1058(v54, v56, v109);

      *(v52 + 4) = v57;
      v58 = "Skipping processing [%s] since user is not authenticated to the AppStore";
      goto LABEL_35;
    }
  }
}

uint64_t sub_21880D14C()
{
  v1 = OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___useAppReviewRequest;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___useAppReviewRequest);
  if (v2 == 2)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_configurationManager) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      [v2 appReviewRequestEnabled];
      swift_unknownObjectRelease();
      sub_219BDC8D4();
      sub_219BDC8B4();
      sub_219BDC3D4();
      LOBYTE(v2) = sub_219BDC8C4();
    }

    else
    {
      swift_unknownObjectRelease();
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

void sub_21880D2D0(uint64_t a1, uint64_t a2, char a3)
{
  if (sub_219BED0C4())
  {
    if (a3)
    {

      sub_219791160(1);
    }

    else
    {

      sub_219791074(0);
    }
  }

  else if (a3)
  {
    sub_21880D358();
  }

  else
  {
    sub_218F02BA0();
  }
}

uint64_t sub_21880D358()
{
  sub_2187FF18C();
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F6124(0, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = (v42 - v6);
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_219BE3D34();
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D35210];
  sub_2187F6124(0, &qword_280EE62C8, MEMORY[0x277D35210]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v42 - v14;
  v16 = sub_219BE4584();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination;
  swift_beginAccess();
  sub_218809EDC(v0 + v20, v15, &qword_280EE62C8, v12);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = &qword_280EE62C8;
    v22 = MEMORY[0x277D35210];
    v23 = v15;
    return sub_218809FC8(v23, v21, v22);
  }

  (*(v17 + 32))(v19, v15, v16);
  v24 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
  swift_beginAccess();
  sub_218809EDC(v0 + v24, v9, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v25 = v51;
  if ((*(v51 + 48))(v9, 1, v10) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v21 = &qword_280EE64B0;
    v22 = MEMORY[0x277D34D28];
    v23 = v9;
    return sub_218809FC8(v23, v21, v22);
  }

  v26 = v50;
  (*(v25 + 32))(v50, v9, v10);
  v27 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_session;
  swift_beginAccess();
  v43 = v27;
  v28 = v49;
  sub_218809EDC(v0 + v27, v49, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  v29 = type metadata accessor for MastheadPaywallEventSession(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    (*(v25 + 8))(v26, v10);
    (*(v17 + 8))(v19, v16);
    v21 = &qword_280EB7F90;
    v22 = type metadata accessor for MastheadPaywallEventSession;
    v23 = v28;
    return sub_218809FC8(v23, v21, v22);
  }

  v44 = v16;
  v45 = v19;
  sub_218809FC8(v28, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  v31 = v0[19];
  v32 = v0[20];
  v49 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 16, v31);
  v33 = (*(v32 + 8))(v31, v32);
  if (!(v33 >> 60))
  {
    v34 = v25;
    v42[1] = v33;
    v35 = swift_projectBox();
    v36 = v48;
    sub_218F03628(v35, v48);
    v37 = *(v47 + 48);
    sub_218F03920(v36 + *(v47 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
    sub_218F03920(v36 + v37, type metadata accessor for MastheadModelContext);
    if (sub_218816F54())
    {

      v25 = v34;
    }

    else
    {
      v39 = v46;
      (*(v17 + 16))(v46, v45, v44);
      (*(v34 + 16))(v39 + *(v29 + 20), v50, v10);
      (*(v30 + 56))(v39, 0, 1, v29);
      v40 = v49;
      v41 = v43;
      swift_beginAccess();
      sub_218F0370C(v39, v40 + v41, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
      swift_endAccess();
      v25 = v34;
      swift_getObjectType();
      sub_219BE4354();
      sub_219BE4324();
    }
  }

  (*(v25 + 8))(v50, v10);
  return (*(v17 + 8))(v45, v44);
}

uint64_t sub_21880DB54(void *a1)
{
  [a1 contentOffset];
  if (v3 > 0.0)
  {
    v4 = (*(*(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 88) + 289);
    if ((*(*(*(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 88) + 290) & 1) == 0 && (*v4 & 1) == 0)
    {
      *v4 = 257;
    }
  }

  if ([a1 ts_isScrolling])
  {
    sub_21880DF68(1, &v8);

    v5 = *(*(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v5 + 144))(0, ObjectType, v5);
  }

  else
  {

    return sub_21880DC5C();
  }
}

uint64_t sub_21880DC5C()
{
  v1 = sub_219BEFAD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TodayExpandContext();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880DF68(1, &v17);
  v16 = v18;
  v11 = *(v0 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler);
  sub_21880E5CC(&v17, 1);

  result = sub_219BF60A4();
  if (result)
  {
    v13 = sub_219BE6DF4();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_218809CC0(v7, v10);
    sub_21881AB5C(v7, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88], sub_2187E2B14);
    (*(v2 + 104))(v4, *MEMORY[0x277D328C0], v1);
    v14 = *(v11 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 88))(v10, v4, ObjectType, v14);
    (*(v2 + 8))(v4, v1);
    return sub_2187F691C(v10, type metadata accessor for TodayExpandContext);
  }

  return result;
}

void sub_21880DF68(int a1@<W0>, _OWORD *a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - v3;
  v5 = MEMORY[0x277D83D88];
  sub_2187E2B14(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  sub_2187FAD00();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_219BDC104();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8664();
  sub_2187DDB94();
  sub_2187DEAC4(&qword_280EE4F40, 255, sub_2187DDB94);
  v18 = sub_219BE8C24();

  v19 = v18;
  [v19 contentOffset];
  v21 = v20;
  [v19 adjustedContentInset];
  v23 = v21 + v22;
  [v19 contentOffset];
  v25 = v24;
  [v19 adjustedContentInset];
  v27 = v26;

  v28 = v25 + v27;
  if (v23 <= 0.0 && v28 <= 0.0)
  {
    goto LABEL_3;
  }

  sub_21978A200(v19, v53 & 1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    v29 = &unk_280EE9BB0;
    v30 = MEMORY[0x277CC9AF8];
    v31 = MEMORY[0x277D83D88];
    v32 = v13;
LABEL_6:
    sub_21881AB5C(v32, v29, v30, v31, sub_2187E2B14);
    goto LABEL_7;
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_219BDC0F4();
  sub_219BF6404();
  if (v59)
  {
    (*(v15 + 8))(v17, v14);
LABEL_3:

LABEL_7:
    v33 = v54;
    *v54 = 0u;
    v33[1] = 0u;
    return;
  }

  v34 = v55;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  sub_219BE86A4();
  sub_2187DD900();
  sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900);
  sub_219BE7B94();

  v38 = v50;
  sub_219BEB254();
  (*(v49 + 8))(v4, v38);
  v40 = v51;
  v39 = v52;
  if ((*(v51 + 48))(v8, 1, v52) == 1)
  {
    (*(v15 + 8))(v17, v14);

    v29 = &unk_280EE58B0;
    v30 = sub_2187FAD00;
    v31 = MEMORY[0x277D83D88];
    v32 = v8;
    goto LABEL_6;
  }

  v41 = v48;
  (*(v40 + 32))(v48, v8, v39);
  v42 = sub_219BE6944();
  v44 = v43;
  v60.origin.x = v34;
  v60.origin.y = v35;
  v60.size.width = v36;
  v60.size.height = v37;
  v45 = v23 - CGRectGetMinX(v60);
  v61.origin.x = v34;
  v61.origin.y = v35;
  v61.size.width = v36;
  v61.size.height = v37;
  MinY = CGRectGetMinY(v61);

  (*(v40 + 8))(v41, v39);
  (*(v15 + 8))(v17, v14);
  v47 = v54;
  *v54 = v42;
  *(v47 + 1) = v44;
  *(v47 + 2) = v45;
  *(v47 + 3) = v28 - MinY;
}

uint64_t sub_21880E5CC(__int128 *a1, char a2)
{
  if ((a2 & 1) != 0 && *(*(v2 + 88) + 290) == 1)
  {
    v8 = *a1;
    v9 = a1[1];
    v4 = swift_allocObject();
    *(v4 + 16) = v8;
    *(v4 + 32) = v9;

    sub_219BE7884();
  }

  v5 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  return (*(v5 + 144))(a2 & 1, ObjectType, v5);
}

uint64_t sub_21880E6C8()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21880E70C(char a1)
{
  sub_21880E76C(a1);

  return sub_218811A74(0);
}

void sub_21880E76C(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong || (v3 = Strong, v6 = [Strong presentedViewController], v3, (v4 = v6) == 0))
    {

      sub_21880E84C();
      return;
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    v7 = [Strong presentedViewController];

    if (!v7)
    {
      return;
    }

    sub_21969864C(v7);
    v4 = v7;
  }
}

void sub_21880E84C()
{
  v7 = v0;
  v8 = sub_219BDBD64();
  v297 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v283 = &v248 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188114A8(0, &qword_280EE6590, MEMORY[0x277D317D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v282 = &v248 - v11;
  v281 = sub_219BE3874();
  v294 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v280 = &v248 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_219BE38D4();
  v292 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v286 = &v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE3514();
  isa = v14[-1].isa;
  v15 = *(isa + 8);
  v16 = MEMORY[0x28223BE20](v14);
  v290 = &v248 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v284 = &v248 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v248 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v248 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v248 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v248 - v28;
  sub_21881168C(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v324 = v30;
  v320 = v30[-1].isa;
  MEMORY[0x28223BE20](v30);
  v323 = &v248 - v31;
  sub_2188118D4(0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v303 = &v248 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v308 = &v248 - v35;
  sub_2187FAD00();
  v310 = v36;
  v316 = *(v36 - 1);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (&v248 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v305 = (&v248 - v40);
  v322 = sub_219BDC104();
  v41 = MEMORY[0x28223BE20](v322);
  v304 = &v248 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v248 - v44;
  if (v7[OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_isFetchingAssets])
  {
    return;
  }

  v315 = v43;
  v271 = OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_isFetchingAssets;
  v272 = v27;
  v276 = v8;
  v301 = v39;
  v321 = *&v7[OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_blueprintViewController];
  sub_219BE8664();
  v46 = sub_219BE7BC4();

  v47 = [v46 collectionViewLayout];
  v302 = v46;
  [v302 bounds];
  v48 = [v47 layoutAttributesForElementsInRect_];

  if (!v48)
  {

    v56 = v302;

    return;
  }

  v252 = v24;
  v253 = v15;
  v254 = v21;
  v296 = v29;
  sub_2186C6148(0, &qword_280E8DBF0);
  v49 = sub_219BF5924();

  v325[0] = MEMORY[0x277D84F90];
  if (v49 >> 62)
  {
LABEL_150:
    v50 = sub_219BF7214();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v310;
  v309 = v7;
  v299 = v14;
  if (v50)
  {
    v52 = 0;
    v53 = 0;
    v14 = (v49 & 0xC000000000000001);
    v7 = (v49 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v14)
      {
        v54 = MEMORY[0x21CECE0F0](v52, v49);
      }

      else
      {
        if (v52 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v54 = *(v49 + 8 * v52 + 32);
      }

      v51 = v54;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:

        (v289->isa)(v45, v299);
        (*v306)(v53, v51);
LABEL_139:
        v219 = v49;
        goto LABEL_146;
      }

      v333 = v54;
      sub_219698D8C(&v333, v309, &v332);

      if (v332)
      {
        MEMORY[0x21CECC690]();
        if (*((v325[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v325[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v319 = *((v325[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_219BF5A14();
        }

        sub_219BF5A54();
      }

      ++v52;
      v51 = v310;
    }

    while (v55 != v50);
  }

  v325[0] = sub_2197590DC(v57);
  sub_2196985D0(v325);

  v58 = v325[0];
  if (v325[0] < 0 || (v325[0] & 0x4000000000000000) != 0)
  {
    v14 = v325[0];
    v59 = sub_219BF7214();
    v58 = v14;
  }

  else
  {
    v59 = *(v325[0] + 16);
  }

  v311 = v59;
  if (!v59)
  {

    return;
  }

  v53 = 0;
  v319 = v58 & 0xC000000000000001;
  v293 = v58 + 32;
  v318 = (v320 + 8);
  v317 = (v316 + 48);
  v307 = (v316 + 32);
  v306 = (v316 + 8);
  v300 = MEMORY[0x277D84F98];
  v60 = (v315 + 8);
  v320 = v58;
  do
  {
    if (v319)
    {
      v62 = MEMORY[0x21CECE0F0](v53);
    }

    else
    {
      if (v53 >= *(v58 + 16))
      {
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v62 = *(v58 + 8 * v53 + 32);
    }

    v49 = v62;
    v14 = (v53 + 1);
    if (__OFADD__(v53, 1))
    {
      goto LABEL_137;
    }

    v63 = [v62 indexPath];
    sub_219BDC0B4();

    sub_219BE86A4();
    v333 = v325[0];
    sub_2187DD900();
    v65 = v64;
    v66 = sub_2187A05D0(&qword_280EE5530, 255, sub_2187DD900);
    v7 = v323;
    v316 = v65;
    v67 = v308;
    v315 = v66;
    sub_219BE7B94();

    v68 = v324;
    sub_219BEB254();
    v314 = *v318;
    v314(v7, v68);
    v313 = *v317;
    if (v313(v67, 1, v51) == 1)
    {
      v312 = *v60;
      v312(v45, v322);

      sub_21969DBC0(v67, sub_2188118D4);
      goto LABEL_26;
    }

    v7 = v305;
    (*v307)(v305, v67, v51);
    sub_219BE6934();
    v69 = sub_2193B71D4(v325[0]);

    if (!v69)
    {
      goto LABEL_40;
    }

    v70 = v69[2];

    if (!v70)
    {
      goto LABEL_40;
    }

    sub_219BDC0F4();
    sub_219BF6404();
    if (v329)
    {
      goto LABEL_40;
    }

    width = v328;
    v71 = sub_219BE6944();
    v73 = v71;
    v74 = v72;
    v75 = v300;
    if (*(v300 + 16) && (v76 = sub_21870F700(v71, v72), (v77 & 1) != 0))
    {
      if (width >= *(*(v75 + 56) + 8 * v76))
      {
        goto LABEL_39;
      }
    }

    else if (width >= 1.79769313e308)
    {
LABEL_39:

LABEL_40:

      (*v306)(v7, v51);
LABEL_41:
      v312 = *v60;
      v312(v45, v322);
      goto LABEL_26;
    }

    v78 = v300;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v325[0] = v78;
    v312 = v73;
    v81 = sub_21870F700(v73, v74);
    v82 = *(v78 + 16);
    v83 = (v80 & 1) == 0;
    v84 = v82 + v83;
    if (__OFADD__(v82, v83))
    {
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      sub_219BF79A4();
      __break(1u);

      __break(1u);
      return;
    }

    v85 = v80;
    if (*(v78 + 24) >= v84)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_219495AE8();
      }
    }

    else
    {
      sub_2194869FC(v84, isUniquelyReferenced_nonNull_native);
      v86 = sub_21870F700(v312, v74);
      if ((v85 & 1) != (v87 & 1))
      {
        goto LABEL_154;
      }

      v81 = v86;
    }

    v7 = v305;
    if (v85)
    {

      v300 = v325[0];
      *(*(v325[0] + 56) + 8 * v81) = width;

      v51 = v310;
      (*v306)(v7, v310);
      goto LABEL_41;
    }

    v88 = v325[0];
    *(v325[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
    v89 = (v88[6] + 16 * v81);
    *v89 = v312;
    v89[1] = v74;
    *(v88[7] + 8 * v81) = width;

    v51 = v310;
    (*v306)(v7, v310);
    v312 = *v60;
    v312(v45, v322);
    v90 = v88[2];
    v91 = __OFADD__(v90, 1);
    v92 = v90 + 1;
    if (v91)
    {
      goto LABEL_153;
    }

    v300 = v88;
    v88[2] = v92;
LABEL_26:
    v58 = v320;
    ++v53;
  }

  while (v14 != v311);
  v308 = v60;
  v93 = 0;
  v269 = &v309[OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementViewControllerFactory];
  v298 = isa + 16;
  v275 = (v292 + 8);
  v268 = (v294 + 104);
  v267 = (*&v297 + 8);
  v288 = OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementOverlayDialogRequests;
  v289 = (isa + 8);
  v266 = *MEMORY[0x277D31710];
  v265 = *MEMORY[0x277D317F8];
  v264 = *MEMORY[0x277D317D8];
  v263 = *MEMORY[0x277D31668];
  v262 = *MEMORY[0x277D317E8];
  v261 = *MEMORY[0x277D317F0];
  *&v61 = 136315394;
  v277 = v61;
  *&v61 = 136315138;
  v278 = v61;
  v260 = xmmword_219C0EE20;
  v49 = v304;
  v7 = v303;
  v45 = v311;
  while (1)
  {
    if (v319)
    {
      v94 = MEMORY[0x21CECE0F0](v93, v320);
      v91 = __OFADD__(v93++, 1);
      if (v91)
      {
        break;
      }

      goto LABEL_62;
    }

    if (v93 >= *(v320 + 16))
    {
      goto LABEL_148;
    }

    v94 = *(v293 + 8 * v93);
    v91 = __OFADD__(v93++, 1);
    if (v91)
    {
      break;
    }

LABEL_62:
    v95 = v94;
    v96 = [v94 indexPath];
    sub_219BDC0B4();

    sub_219BE86A4();
    *&v326 = v325[0];
    v97 = v323;
    sub_219BE7B94();

    v14 = v324;
    sub_219BEB254();
    v314(v97, v14);
    if (v313(v7, 1, v51) == 1)
    {
      v312(v49, v322);

      sub_21969DBC0(v7, sub_2188118D4);
    }

    else
    {
      v305 = v95;
      v53 = v301;
      (*v307)(v301, v7, v51);
      v98 = sub_219BE6944();
      v100 = v98;
      v101 = v99;
      v102 = v300;
      if (*(v300 + 16) && (v103 = sub_21870F700(v98, v99), (v104 & 1) != 0))
      {
        v5 = *(*(v102 + 56) + 8 * v103);
      }

      else
      {
        v5 = 1.79769313e308;
      }

      sub_219BE6934();
      v14 = sub_2193B71D4(v325[0]);

      if (v14)
      {
        v105 = v14[2].isa;
        if (v105)
        {
          if (qword_280EE60A0 != -1)
          {
            swift_once();
          }

          v106 = sub_219BE5434();
          v107 = __swift_project_value_buffer(v106, qword_280F627F0);

          v292 = v107;
          v108 = sub_219BE5414();
          v109 = sub_219BF6214();

          v110 = os_log_type_enabled(v108, v109);
          v294 = v105;
          if (v110)
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v325[0] = v112;
            *v111 = v277;
            v113 = sub_2186D1058(v100, v101, v325);

            *(v111 + 4) = v113;
            *(v111 + 12) = 2080;
            v114 = MEMORY[0x21CECC6D0](v14, v299);
            v116 = sub_2186D1058(v114, v115, v325);

            *(v111 + 14) = v116;
            _os_log_impl(&dword_2186C1000, v108, v109, "Section %s is visible on screen and configured with engagement overlay placements: %s", v111, 0x16u);
            swift_arrayDestroy();
            v117 = v112;
            v51 = v310;
            MEMORY[0x21CECF960](v117, -1, -1);
            v118 = v111;
            v105 = v294;
            MEMORY[0x21CECF960](v118, -1, -1);
          }

          else
          {
          }

          v7 = v303;
          v45 = v311;
          v49 = v304;
          sub_219BDC0F4();
          sub_219BF6404();
          if ((v331 & 1) == 0 && v330 == v5)
          {
            v291 = v14;
            [v302 bounds];
            v339 = CGRectIntegral(v338);
            x = v339.origin.x;
            y = v339.origin.y;
            width = v339.size.width;
            height = v339.size.height;
            v14 = v305;
            [v305 frame];
            v341 = CGRectIntegral(v340);
            v6 = v341.origin.x;
            v120 = v341.origin.y;
            v121 = v341.size.width;
            v297 = v341.size.height;
            v337.x = 0.0;
            v341.origin.x = x;
            v270 = y;
            v341.origin.y = y;
            v2 = width;
            v341.size.width = width;
            v341.size.height = height;
            v337.y = v5;
            if (!CGRectContainsPoint(v341, v337))
            {

LABEL_85:
              (*v306)(v53, v51);
              v312(v49, v322);
              goto LABEL_55;
            }

            v342.origin.x = v6;
            v342.origin.y = v120;
            v342.size.width = v121;
            width = v297;
            v342.size.height = v297;
            CGRectGetHeight(v342);
            sub_219BF6B24();
            v345.origin.x = v122;
            v345.origin.y = v123;
            v345.size.width = v124;
            v345.size.height = v125;
            v6 = x;
            v343.origin.x = x;
            x = v270;
            v343.origin.y = v270;
            v343.size.width = v2;
            v5 = height;
            v343.size.height = height;
            if (CGRectContainsRect(v343, v345))
            {
              width = v2;
              v273 = sub_21969946C(v302);
              v126 = v291;
              if (v273)
              {
                v127 = 0.0;
                v128 = *(isa + 80);
                v249 = ~v128;
                v250 = v128;
                v285 = v291 + ((v128 + 32) & ~v128);
                v2 = height;
                height = v6;
                while (1)
                {
                  if (*&v127 >= v126[2].isa)
                  {
                    goto LABEL_149;
                  }

                  v129 = *(isa + 9);
                  v297 = v127;
                  v130 = *(isa + 2);
                  v45 = v296;
                  v130(v296, &v285[v129 * *&v127], v299);
                  v131 = v309;
                  v132 = v288;
                  swift_beginAccess();
                  v133 = *(v131 + v132);
                  if (!*(v133 + 16) || (v134 = sub_21931F330(v45), (v135 & 1) == 0))
                  {
                    swift_endAccess();
                    v142 = v290;
                    v143 = v299;
                    v130(v290, v45, v299);
                    v144 = sub_219BE5414();
                    v145 = v45;
                    v146 = sub_219BF6214();
                    if (os_log_type_enabled(v144, v146))
                    {
                      v147 = v142;
                      v148 = swift_slowAlloc();
                      v279 = swift_slowAlloc();
                      v325[0] = v279;
                      *v148 = v278;
                      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
                      v149 = sub_219BF7894();
                      v151 = v150;
                      v14 = v289;
                      v152 = v289->isa;
                      (v289->isa)(v147, v143);
                      v153 = v152;
                      v154 = sub_2186D1058(v149, v151, v325);
                      v105 = v294;

                      *(v148 + 4) = v154;
                      _os_log_impl(&dword_2186C1000, v144, v146, "Engagement dialog request not available for placement: %s", v148, 0xCu);
                      v155 = v279;
                      __swift_destroy_boxed_opaque_existential_1(v279);
                      v51 = v310;
                      MEMORY[0x21CECF960](v155, -1, -1);
                      MEMORY[0x21CECF960](v148, -1, -1);

                      v153(v296, v143);
                    }

                    else
                    {

                      v14 = v289->isa;
                      (v289->isa)(v142, v143);
                      (v14)(v145, v143);
                    }

                    v53 = v301;
                    goto LABEL_88;
                  }

                  v136 = *(*(v133 + 56) + 8 * v134);
                  swift_endAccess();
                  v279 = v136;
                  v137 = v286;
                  sub_219BE34D4();
                  sub_218807310();
                  v7 = v273;
                  if (swift_dynamicCastClass())
                  {
                    v138 = v7;
                    v139 = sub_219BE8204();
                    v140 = v137;
                    v141 = &v332;
                    sub_21969CA84(v139, v140, v302, &v332);
                  }

                  else
                  {
                    sub_21969C9EC();
                    if (!swift_dynamicCastClass())
                    {
                      (*v275)(v137, v287);
LABEL_118:
                      v193 = v284;
                      v194 = v299;
                      v130(v284, v45, v299);
                      v195 = sub_219BE5414();
                      v196 = v45;
                      v197 = sub_219BF6214();
                      if (os_log_type_enabled(v195, v197))
                      {
                        v198 = v193;
                        v199 = swift_slowAlloc();
                        v274 = swift_slowAlloc();
                        v325[0] = v274;
                        *v199 = v278;
                        sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
                        v200 = sub_219BF7894();
                        v202 = v201;
                        v14 = v289;
                        v203 = v289->isa;
                        (v289->isa)(v198, v194);
                        v204 = sub_2186D1058(v200, v202, v325);
                        v105 = v294;

                        *(v199 + 4) = v204;
                        _os_log_impl(&dword_2186C1000, v195, v197, "Target view not found for placement: %s", v199, 0xCu);
                        v205 = v274;
                        __swift_destroy_boxed_opaque_existential_1(v274);
                        v53 = v301;
                        MEMORY[0x21CECF960](v205, -1, -1);
                        MEMORY[0x21CECF960](v199, -1, -1);

                        v203(v296, v194);
                      }

                      else
                      {

                        v14 = v289->isa;
                        (v289->isa)(v193, v194);
                        (v14)(v196, v194);
                      }

                      v51 = v310;
LABEL_88:
                      v49 = v304;
                      v126 = v291;
                      goto LABEL_89;
                    }

                    v156 = v7;
                    v274 = v130;
                    v157 = v156;
                    v139 = sub_219BE8204();
                    v140 = v137;
                    v141 = &v333;
                    v158 = v157;
                    v130 = v274;
                    sub_21969CDEC(v140, v158, v302, &v333);
                  }

                  v5 = *v141;
                  v6 = *(v141 + 1);
                  v159 = *(v141 + 2);
                  v160 = *(v141 + 3);
                  v161 = *(v141 + 32);

                  (*v275)(v140, v287);
                  v45 = v296;
                  if (v161)
                  {
                    goto LABEL_118;
                  }

                  [v302 safeAreaInsets];
                  v344.origin.x = UIEdgeInsetsInsetRect(height, x, width, v2, v162, v163);
                  v346.origin.x = v5;
                  v346.origin.y = v6;
                  v346.size.width = v159;
                  v346.size.height = v160;
                  if (!CGRectContainsRect(v344, v346))
                  {

                    v14 = sub_219BE5414();
                    v206 = sub_219BF6214();
                    if (!os_log_type_enabled(v14, v206))
                    {
                      goto LABEL_138;
                    }

                    v207 = v53;
                    v208 = swift_slowAlloc();
                    *v208 = 0;
                    _os_log_impl(&dword_2186C1000, v14, v206, "Target view is outside the safe area. Skipping presentation...", v208, 2u);
                    MEMORY[0x21CECF960](v208, -1, -1);

                    (v289->isa)(v45, v299);
                    (*v306)(v207, v51);
                    goto LABEL_139;
                  }

                  v274 = v130;
                  (*v268)(v280, v266, v281);
                  v164 = sub_219BE3994();
                  (*(*(v164 - 8) + 56))(v282, 1, 1, v164);
                  sub_219BE3914();
                  swift_allocObject();
                  v251 = v302;
                  v259 = sub_219BE3904();
                  v165 = v283;
                  sub_219BDBD54();
                  v258 = sub_219BDBD44();
                  v257 = v166;
                  (*v267)(v165, v276);
                  v167 = [v279 metricsEvent];
                  if (!v167)
                  {
                    break;
                  }

                  v168 = v167;
                  v169 = [v167 underlyingDictionary];

                  v170 = sub_219BF5214();
                  *&v326 = 0x496567617373656DLL;
                  *(&v326 + 1) = 0xE900000000000064;
                  sub_219BF72A4();
                  if (!*(v170 + 16) || (v171 = sub_21931EECC(v325), (v172 & 1) == 0))
                  {

                    sub_218B6B67C(v325);
                    v176 = 0uLL;
                    v326 = 0u;
                    v177 = &v335;
LABEL_113:
                    *(v177 - 16) = v176;
                    goto LABEL_114;
                  }

                  sub_2186D1230(*(v170 + 56) + 32 * v171, &v326);
                  sub_218B6B67C(v325);

                  if (*(&v327 + 1))
                  {
                    v173 = swift_dynamicCast();
                    v174 = v325[0];
                    if (!v173)
                    {
                      v174 = 0;
                    }

                    v256 = v174;
                    if (v173)
                    {
                      v175 = v325[1];
                    }

                    else
                    {
                      v175 = 0;
                    }

                    v255 = v175;
                    goto LABEL_115;
                  }

LABEL_114:
                  sub_21969DBC0(&v326, sub_21880702C);
                  v256 = 0;
                  v255 = 0;
LABEL_115:
                  sub_2188114A8(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
                  v178 = sub_219BE39F4();
                  v179 = *(v178 - 8);
                  v180 = *(v179 + 72);
                  v181 = (*(v179 + 80) + 32) & ~*(v179 + 80);
                  v182 = swift_allocObject();
                  *(v182 + 16) = v260;
                  v183 = v182 + v181;
                  v184 = v45;
                  v185 = v299;
                  v274(v182 + v181, v45, v299);
                  v186 = *(v179 + 104);
                  (v186)(v183, v265, v178);
                  v187 = (v183 + v180);
                  v188 = v257;
                  *v187 = v258;
                  v187[1] = v188;
                  v186();
                  v189 = sub_219BE3794();
                  (*(*(v189 - 8) + 104))(v183 + 2 * v180, v263, v189);
                  (v186)(v183 + 2 * v180, v262, v178);
                  v190 = (v183 + 3 * v180);
                  v191 = v255;
                  *v190 = v256;
                  v190[1] = v191;
                  v186();
                  __swift_project_boxed_opaque_existential_1(v269, v269[3]);
                  sub_2187A05D0(qword_280EAE3A0, v192, type metadata accessor for TodayEngagementOverlayManager);

                  v14 = v279;
                  v49 = sub_219BE3B74();

                  if (v49)
                  {
                    v323 = v182;

                    v209 = v251;

                    [v209 contentOffset];
                    v5 = v210;
                    v6 = v211;
                    v45 = v272;
                    v274(v272, v184, v185);
                    v14 = sub_219BE5414();
                    v212 = sub_219BF6214();
                    v7 = v185;
                    if (!os_log_type_enabled(v14, v212))
                    {
                      goto LABEL_141;
                    }

                    v213 = swift_slowAlloc();
                    v214 = swift_slowAlloc();
                    v325[0] = v214;
                    *v213 = v278;
                    sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
                    v215 = sub_219BF7894();
                    v217 = v216;
                    v321 = v289->isa;
                    v321(v45, v185);
                    v218 = sub_2186D1058(v215, v217, v325);

                    *(v213 + 4) = v218;
                    _os_log_impl(&dword_2186C1000, v14, v212, "Fetching overlay assets for placement: %s", v213, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v214);
                    MEMORY[0x21CECF960](v214, -1, -1);
                    MEMORY[0x21CECF960](v213, -1, -1);

                    goto LABEL_142;
                  }

                  (v289->isa)(v45, v185);

                  v51 = v310;
                  v53 = v301;
                  v49 = v304;
                  v126 = v291;
                  v105 = v294;
LABEL_89:
                  *&v127 = *&v297 + 1;
                  v7 = v303;
                  v45 = v311;
                  if (v105 == (*&v297 + 1))
                  {

                    goto LABEL_84;
                  }
                }

                v176 = 0uLL;
                v327 = 0u;
                v177 = &v334;
                goto LABEL_113;
              }
            }
          }

LABEL_84:

          goto LABEL_85;
        }
      }

      (*v306)(v53, v51);
      v49 = v304;
      v312(v304, v322);
      v7 = v303;
      v45 = v311;
    }

LABEL_55:
    if (v93 == v45)
    {

      return;
    }
  }

  __break(1u);
LABEL_141:

  v321 = v289->isa;
  v321(v45, v7);
LABEL_142:
  v220 = v250;
  v221 = v249;
  v309[v271] = 1;
  v324 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v222 = v252;
  v274(v252, v296, v7);
  v223 = (v220 + 24) & v221;
  v224 = (v253 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
  v225 = (v224 + 15) & 0xFFFFFFFFFFFFFFF8;
  v226 = (v225 + 23) & 0xFFFFFFFFFFFFFFF8;
  v227 = (v226 + 15) & 0xFFFFFFFFFFFFFFF8;
  v228 = (v227 + 39) & 0xFFFFFFFFFFFFFFF8;
  v229 = (v228 + 15) & 0xFFFFFFFFFFFFFFF8;
  v230 = swift_allocObject();
  *(v230 + 16) = v324;
  (*(isa + 4))(v230 + v223, v222, v299);
  v231 = v251;
  *(v230 + v224) = v251;
  v232 = (v230 + v225);
  *v232 = v5;
  v232[1] = v6;
  *(v230 + v226) = v49;
  v233 = (v230 + v227);
  *v233 = height;
  v233[1] = x;
  v233[2] = width;
  v233[3] = v2;
  *(v230 + v228) = 0x4020000000000000;
  v234 = v299;
  *(v230 + v229) = v323;
  v235 = v231;
  v236 = v49;

  sub_219BF64D4();

  v237 = v254;
  v274(v254, v296, v234);
  v238 = sub_219BE5414();
  v239 = sub_219BF6214();
  if (os_log_type_enabled(v238, v239))
  {
    v240 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    v325[0] = v241;
    *v240 = v278;
    sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
    v242 = sub_219BF7894();
    v244 = v243;
    v324 = v235;
    v245 = v321;
    v321(v237, v234);
    v246 = sub_2186D1058(v242, v244, v325);

    *(v240 + 4) = v246;
    _os_log_impl(&dword_2186C1000, v238, v239, "Target view identified for placement: %s exiting loop", v240, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v241);
    MEMORY[0x21CECF960](v241, -1, -1);
    MEMORY[0x21CECF960](v240, -1, -1);

    v245(v296, v234);
  }

  else
  {

    v247 = v321;
    v321(v237, v234);
    v247(v296, v234);
  }

  (*v306)(v301, v310);
  v219 = v304;
LABEL_146:
  v312(v219, v322);
}

uint64_t sub_218811358()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218811390()
{
  v1 = sub_219BE3514();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2188114A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881150C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EF8F4(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2188115CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_21874E2A0(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21881168C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2187A05D0(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218811750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186CC3D4(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218811810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2187E1450(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2188118F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218811948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2188119AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218811A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218811A74(int a1)
{
  v51 = a1;
  v2 = sub_219BE38C4();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x277D31758];
  sub_21881214C(0, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v53 = &v41[-v7];
  v8 = sub_219BE3514();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187DD4F0(0, &qword_280EE65C0, v4, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v52 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v41[-v18];
  v20 = *((*MEMORY[0x277D85000] & *v1) + 0x110);
  v50 = v1;
  v47 = v20;
  sub_218718690(v1 + v20, v57);
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v21 = *(v9 + 104);
  v45 = *MEMORY[0x277D314F8];
  v46 = v9 + 104;
  v44 = v21;
  v21(v11);
  sub_219BE3AC4();
  v22 = *(v9 + 8);
  v48 = v11;
  v49 = v8;
  v23 = v8;
  v24 = v54;
  v22(v11, v23);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v25 = v55;
  (*(v24 + 104))(v17, *MEMORY[0x277D31750], v55);
  v26 = v25;
  (*(v24 + 56))(v17, 0, 1, v25);
  v27 = *(v6 + 56);
  v56 = v19;
  v28 = v19;
  v29 = v53;
  sub_218812314(v28, v53, &qword_280EE65C0, v4);
  sub_218812314(v17, &v29[v27], &qword_280EE65C0, v4);
  v30 = *(v24 + 48);
  if (v30(v29, 1, v26) == 1)
  {
    sub_218817724(v17, &qword_280EE65C0, MEMORY[0x277D31758]);
    if (v30(&v29[v27], 1, v26) == 1)
    {
      sub_218817724(v29, &qword_280EE65C0, MEMORY[0x277D31758]);
LABEL_8:
      v35 = v50;
      sub_218718690(v50 + v47, v57);
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v37 = v48;
      v36 = v49;
      v44(v48, v45, v49);
      v38 = sub_219BE3A94();
      v22(v37, v36);
      __swift_destroy_boxed_opaque_existential_1(v57);
      v39 = (v35 + *((*MEMORY[0x277D85000] & *v35) + 0xE0));
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      sub_218C5BBE4(v38, v51 & 1);

      return sub_218817724(v56, &qword_280EE65C0, MEMORY[0x277D31758]);
    }

    goto LABEL_6;
  }

  v31 = v52;
  sub_218812314(v29, v52, &qword_280EE65C0, MEMORY[0x277D31758]);
  if (v30(&v29[v27], 1, v26) == 1)
  {
    sub_218817724(v17, &qword_280EE65C0, MEMORY[0x277D31758]);
    (*(v24 + 8))(v31, v26);
LABEL_6:
    sub_218812394(v29, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
    return sub_218817724(v56, &qword_280EE65C0, MEMORY[0x277D31758]);
  }

  v32 = v43;
  (*(v24 + 32))(v43, &v29[v27], v26);
  sub_2187E1408(&unk_280EE65E0, MEMORY[0x277D31758]);
  v42 = sub_219BF53A4();
  v33 = *(v24 + 8);
  v33(v32, v26);
  v34 = MEMORY[0x277D31758];
  sub_218817724(v17, &qword_280EE65C0, MEMORY[0x277D31758]);
  v33(v31, v26);
  sub_218817724(v29, &qword_280EE65C0, v34);
  if (v42)
  {
    goto LABEL_8;
  }

  return sub_218817724(v56, &qword_280EE65C0, MEMORY[0x277D31758]);
}

void sub_21881214C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2187DD4F0(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2188121C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21881222C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218812294(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218802370(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218812314(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187DD4F0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218812394(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21881214C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2188123F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v44 = *MEMORY[0x277D85000] & *v2;
  v6 = sub_219BEE644();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEFAD4();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = type metadata accessor for TodayPrewarmResult();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *((v5 & v4) + 0xB0);
  swift_beginAccess();
  sub_218812314(v3 + v22, v17, &qword_280ED2200, type metadata accessor for TodayPrewarmResult);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_218817724(v17, &qword_280ED2200, type metadata accessor for TodayPrewarmResult);
  }

  sub_21880BBE4(v17, v21, type metadata accessor for TodayPrewarmResult);
  (*(v19 + 56))(v15, 1, 1, v18);
  swift_beginAccess();
  sub_219716240(v15, v3 + v22);
  swift_endAccess();
  v24 = v47;
  v25 = v46;
  (*(v47 + 16))(v11, v48, v46);
  v26 = (*(v24 + 88))(v11, v25);
  if (v26 == *MEMORY[0x277D328C8])
  {
    goto LABEL_8;
  }

  if (v26 != *MEMORY[0x277D328C0])
  {
    (*(v24 + 8))(v11, v25);
    goto LABEL_8;
  }

  if (sub_2196FB248(v21))
  {
LABEL_8:
    sub_219BDEC34();
    sub_219BDEB94();
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C09BA0;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_219BF7484();
    v31 = v49;
    v32 = v50;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_2186FC3BC();
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    sub_219BF6214();
    sub_219BE5314();

    v33 = (*(*(v44 + 88) + 16))(v21, *(v44 + 80));
    v34 = CACurrentMediaTime();
    MEMORY[0x28223BE20](v35);
    *(&v39 - 2) = v3;
    *(&v39 - 1) = v33;
    sub_219BE95D4();
    sub_219BE3204();
    *(swift_allocObject() + 16) = v34;
    v36 = sub_219BE2E54();
    sub_219BE2F94();

    v37 = sub_219BE2E54();
    sub_219BE2FD4();

    sub_2187D9028();
    v38 = sub_219BF66A4();
    sub_219BE3034();

    return sub_21880BA68(v21, type metadata accessor for TodayPrewarmResult);
  }

  v28 = v40;
  v27 = v41;
  v29 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x277D320A0], v42);
  sub_2196F9CBC(v43, v28);
  (*(v27 + 8))(v28, v29);
  return sub_21880BA68(v21, type metadata accessor for TodayPrewarmResult);
}

uint64_t sub_218812BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayExpandResult();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218812C20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2187DD878(0, &qword_280EE32B8, MEMORY[0x277D2D6D8], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2187DD878(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

id sub_218812DA4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  if (sub_219BED0C4())
  {
    v8.receiver = v3;
    v8.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v8, sel__hostingNavigationBar);
  }

  else
  {
    v5 = [v3 topViewController];
    if (!v5)
    {
      v5 = *&v3[qword_280EA07F0];
    }

    v6 = v5;
    v4 = [v5 _hostingNavigationBar];
  }

  return v4;
}

uint64_t sub_218812E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  v53 = a2;
  v6 = sub_219BE2864();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v46 - v9;
  v10 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  v11 = 0.0;
  if (!(*(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60))
  {
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_engagementBanner);
    if (v12)
    {
      v13 = v12;
      sub_219BE8DA4();
      Width = CGRectGetWidth(v57);
      sub_219BE8D24();
      sub_219BF6034();
      [v13 sizeThatFits_];
      v11 = v16;
    }
  }

  sub_219BE8DA4();
  v17 = CGRectGetWidth(v58);
  v18 = (v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory);
  v19 = *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory + 24);
  v20 = *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory), v19);
  v21 = *(v3 + v10);
  v50 = v10;
  v22 = *(v20 + 8);

  v23 = v22(v21, a1, v19, v20, v11);

  sub_219BE8D24();
  sub_219BE8DA4();
  sub_219BE7F74();
  *v56 = v17;
  *&v56[1] = v23;
  v56[2] = v24;
  v56[3] = v25;
  v56[4] = v26;
  v56[5] = v27;
  v28 = v18[3];
  v29 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v28);
  v30 = v50;
  v31 = *(v3 + v50);
  v32 = *(v29 + 16);

  v32(v55, v31, v56, a1, v28, v29, v11);

  sub_218718690(*(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_titleViewStyler) + OBJC_IVAR____TtC7NewsUI2P33_40459F828962B2D00232170432F6EDA023MastheadTitleViewStyler_renderer, v54);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v33 = *(v3 + v30);

  v34 = sub_219BE8D04();
  v35 = v52;
  sub_21881AE74(v33, v55, *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView), v53, v52);

  __swift_destroy_boxed_opaque_existential_1(v54);
  v36 = sub_219BE8DB4();
  v37 = *(v36 - 8);
  v38 = v51;
  (*(v37 + 16))(v51, a1, v36);
  (*(v37 + 56))(v38, 0, 1, v36);
  v39 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
  swift_beginAccess();
  sub_21881C9F4(v38, v4 + v39);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable + 8) = v35;
  swift_unknownObjectWeakAssign();
  if (*(*(v4 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_animationManager) + 16) == 1)
  {
    sub_21881CA88(&unk_282A24FD0);
    v40 = MEMORY[0x277D6CD38];
    sub_218802370(0, &qword_280E8C090, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
    v41 = v48;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_219C09BA0;
    sub_219BE2844();
    v54[0] = v42;
    sub_2188031C8(&qword_280EE73C0, MEMORY[0x277D6CD38]);
    sub_218802370(0, &unk_280E8F5C0, v40, MEMORY[0x277D83940]);
    sub_21881CB9C();
    v43 = v47;
    v44 = v49;
    sub_219BF7164();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_219BE1D14();

    (*(v41 + 8))(v43, v44);
  }

  else
  {
    sub_21882B6C4();
  }

  if ((sub_219BE8D14() & 1) == 0)
  {
    sub_21881CD40();
  }

  return sub_21881CFDC(v55);
}

uint64_t sub_2188134C0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void sub_2188134F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_21881354C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_2188135B0@<D0>(unint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v373 = a5;
  v378 = a1;
  v8 = sub_219BDCAF4();
  v326 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v325 = &v318 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FF18C();
  v328 = v10;
  MEMORY[0x28223BE20](v10);
  v329 = &v318 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = sub_219BEB084();
  v330 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v356 = (&v318 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21881354C(0, &qword_280EE4770, MEMORY[0x277D6E2A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  *&v369 = &v318 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  *&v377 = &v318 - v16;
  MEMORY[0x28223BE20](v17);
  *&v376 = &v318 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v318 - v20;
  v375 = a3;
  v22 = sub_219BE8D54();
  if ([v22 horizontalSizeClass] == 1)
  {

    v23 = 0;
  }

  else
  {
    v24 = [v22 verticalSizeClass];

    v23 = v24 != 1;
  }

  v25 = *a2;
  v26 = a2[1];
  v371 = sub_21881505C(v23, v378, *a2);
  v374 = sub_2188155F8(v23);
  v27 = 15.0;
  if (!v23)
  {
    if (sub_219BED0C4())
    {
      v27 = 14.0;
    }

    else
    {
      v27 = 11.0;
    }
  }

  [v371 descender];
  v29 = v28;
  v30 = sub_219BE8D54();
  v31 = [v30 verticalSizeClass];

  v32 = sub_219BE8D54();
  v33 = [v32 horizontalSizeClass];

  v327 = v8;
  if (v31 == 1)
  {
    if ((v33 - 1) <= 1)
    {
LABEL_11:
      sub_219BE8D44();
      Height = CGRectGetHeight(v390);
      goto LABEL_14;
    }
  }

  else if (v31 == 2 && v33 == 1)
  {
    goto LABEL_11;
  }

  sub_219BE8D64();
LABEL_14:
  v35 = Height;
  v36 = a2[3];
  v37 = a2[5];
  v370 = a2[2];
  v366 = v36;
  v362 = v37;
  sub_219BF6034();
  v39 = v38;
  v363 = v26;
  if (v373 > 0.0)
  {
    sub_219BE8CE4();
    v40 = sub_219BE8CD4();
    v41 = v23;
    v42 = *(*(v40 - 8) + 48);
    v43 = 0.0;
    if (v42(v21, 1, v40) == 1)
    {
      v44 = 10.0;
    }

    else
    {
      v44 = 0.0;
    }

    v45 = MEMORY[0x277D6E2A0];
    sub_218819BA8(v21, &qword_280EE4770, MEMORY[0x277D6E2A0]);
    v46 = *&v376;
    sub_219BE8CE4();
    v47 = v42(v46, 1, v40);
    v23 = v41;
    if (v47 != 1)
    {
      v43 = 24.0;
    }

    v48 = v35 + v44 + v373;
    sub_218819BA8(v46, &qword_280EE4770, v45);
    v26 = v363 - (v48 + v43);
  }

  v49 = v27 - v29;
  v50 = v25 - v39;
  __swift_project_boxed_opaque_existential_1((v358 + 16), *(v358 + 40));
  v51 = sub_219BE8D04();
  v52 = v378;
  v53 = sub_2188158D8(v378, v23, v51, v25);

  v54 = v52 >> 60;
  v55 = 3;
  if (((1 << (v52 >> 60)) & 0x73) == 0)
  {
    v56 = sub_219BE8D54();
    v57 = [v56 horizontalSizeClass];

    if (v57 == 1)
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }
  }

  [v53 boundingRectWithSize:v55 options:0 context:{v25 - v39, v26}];
  v59 = v58;
  v61 = v60;
  v62 = sub_219BED0C4();
  v364 = v25;
  v367 = v54;
  if (v62)
  {
    if (v23)
    {
      v63 = 2;
    }

    else
    {
      v63 = qword_219CD1248[v54];
    }

    [v53 boundingRectWithSize:v63 options:0 context:{v50, v26}];
    v61 = v67;
    v64 = v50;
  }

  else
  {
    v64 = ceil(v59);
    if (((1 << v54) & 0x73) == 0)
    {
      v65 = sub_219BE8D54();
      v66 = [v65 horizontalSizeClass];

      if (v66 == 1)
      {
        v64 = v50;
      }
    }
  }

  v68 = ceil(v61);
  v69 = *&v377;
  sub_219BE8CE4();
  v70 = sub_219BE8CD4();
  v71 = *(*(v70 - 8) + 48);
  if (v71(v69, 1, v70) == 1)
  {
    v72 = 10.0;
  }

  else
  {
    v72 = 0.0;
  }

  sub_218819BA8(v69, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  v391.origin.y = v35 + v72;
  v391.origin.x = v366;
  v391.size.width = v50;
  v391.size.height = v373;
  v392 = CGRectIntegral(v391);
  x = v392.origin.x;
  width = v392.size.width;
  y = v392.origin.y;
  v359 = v392.size.height;
  [v374 firstLineHeadIndent];
  v75 = -v74;
  v76 = v364;
  if (((1 << v367) & 0x73) == 0)
  {
    v77 = sub_219BE8D14();
    v78 = 8.0;
    if (v75 > 8.0)
    {
      v78 = v75;
    }

    if (v77)
    {
      v75 = v78;
    }
  }

  [v371 descender];
  v393.origin.y = v26 - v68 - v49 - v79;
  v393.origin.x = v75;
  v393.size.width = v64;
  v393.size.height = v68;
  v394 = CGRectIntegral(v393);
  v80 = v394.origin.x;
  v372 = v394.origin.y;
  v376 = v394.size.height;
  v377 = v394.size.width;
  if (v373 == 0.0)
  {
    [v374 firstLineHeadIndent];
    v82 = -v81;
  }

  else
  {
    v395.origin.x = x;
    v395.size.width = width;
    v395.origin.y = y;
    v395.size.height = v359;
    MaxY = CGRectGetMaxY(v395);
    v84 = v53;
    v85 = v369;
    sub_219BE8CE4();
    if (v71(*&v85, 1, v70) == 1)
    {
      v86 = 0.0;
    }

    else
    {
      v86 = 24.0;
    }

    v87 = *&v85;
    v53 = v84;
    sub_218819BA8(v87, &qword_280EE4770, MEMORY[0x277D6E2A0]);
    v82 = MaxY + v86;
    v76 = v364;
  }

  v88 = v367;
  v89 = v366;
  sub_219BF6034();
  v396.size.width = v76 - v90;
  v396.origin.x = v89;
  v396.origin.y = v82;
  v396.size.height = v26;
  v397 = CGRectIntegral(v396);
  v373 = v397.origin.x;
  v369 = v397.size.width;
  v370 = v397.origin.y;
  v368 = v397.size.height;
  sub_218819C18(v378, &v379);
  v351 = x;
  v365 = v80;
  if (!v380)
  {
    v341 = 0.0;
    v342 = 0.0;
    v339 = 0.0;
    *&v340 = 0;
    v333 = 0.0;
    v334 = 0.0;
    v331 = 0.0;
    v332 = 0.0;
    v337 = 0.0;
    v338 = 0.0;
    v335 = 0.0;
    v336 = 0.0;
    v345 = 0.0;
    v346 = 0.0;
    v343 = 0.0;
    v344 = 0.0;
    v354 = 0.0;
    v355 = 0.0;
    v352 = 0.0;
    v353 = 0.0;
    v349 = 0.0;
    v350 = 0.0;
    v347 = 0.0;
    v348 = 0.0;
    goto LABEL_87;
  }

  v323 = v23;
  v385[0] = v379;
  v385[1] = v380;
  v386 = v381;
  v387 = v382;
  v388 = v383;
  v389 = v384;
  if (sub_219BED0C4())
  {
    v91 = sub_219B798F8(v385, v378);
    v93 = v92;
    v398.origin.x = v373;
    v398.size.width = v369;
    v398.origin.y = v370;
    v398.size.height = v368;
    v94 = CGRectGetWidth(v398);
    v399.origin.x = v80;
    v399.origin.y = v372;
    v399.size.height = v376;
    v399.size.width = v377;
    v95 = v94 - CGRectGetMinX(v399);
    [v374 firstLineHeadIndent];
    v97 = v95 - v96 - v91;
    sub_219BE8D94();
    v400.origin.y = v98;
    v400.origin.x = v97;
    v400.size.width = v91;
    v400.size.height = v93;
    v401 = CGRectIntegral(v400);
    v349 = v401.origin.y;
    v350 = v401.origin.x;
    v347 = v401.size.height;
    v348 = v401.size.width;
  }

  else
  {
    v349 = 0.0;
    v350 = 0.0;
    v347 = 0.0;
    v348 = 0.0;
  }

  v99 = *(&v387 + 1);
  v324 = v53;
  v342 = *(&v387 + 1);
  if (*(&v387 + 1))
  {
    v100 = *(&v387 + 1);
  }

  else
  {
    v99 = [objc_opt_self() whiteColor];
    v100 = 0;
  }

  v101 = *(&v388 + 1);
  v352 = *&v388;
  sub_21881354C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v341 = v102;
  inited = swift_initStackObject();
  v340 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v104 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v339 = COERCE_DOUBLE(v100);
  v338 = COERCE_DOUBLE(v104);
  v105 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v106 = MEMORY[0x277D76968];
    if (v101)
    {
      v106 = MEMORY[0x277D76938];
    }

    v107 = *v106;
    v108 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v108 pointSize];
    v105 = v109;
  }

  v110 = COERCE_DOUBLE(objc_opt_self());
  v111 = *MEMORY[0x277D743F8];
  v336 = v110;
  v337 = v111;
  v112 = [*&v110 systemFontOfSize:v105 weight:?];
  *&v113 = COERCE_DOUBLE(sub_2186C6148(0, &qword_280E8DB00));
  *(inited + 40) = v112;
  v114 = *MEMORY[0x277D740C0];
  v335 = *&v113;
  *(inited + 64) = *&v113;
  *(inited + 72) = v114;
  v334 = COERCE_DOUBLE(sub_2186C6148(0, &qword_280E8DA80));
  *(inited + 104) = v334;
  *(inited + 80) = v99;
  v332 = COERCE_DOUBLE(v114);
  v115 = v99;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  v333 = v116;
  swift_arrayDestroy();
  v117 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v118 = sub_219BF53D4();
  type metadata accessor for Key(0);
  v120 = v119;
  v121 = COERCE_DOUBLE(sub_21899E604());
  v331 = v120;
  v321 = v121;
  v122 = sub_219BF5204();

  v123 = [v117 initWithString:v118 attributes:v122];

  v322 = v123;
  [v123 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = 0;
  v88 = v367;
  if (v367 == 5)
  {
    sub_219BF5114();
    v132 = sub_219BF5074();
  }

  v133 = sub_218C8F610(v132, v101 != 0);

  v134 = v330;
  if (v133)
  {
    [v133 size];
    v355 = v135;

    v136 = (v134 + 104);
    if (v101)
    {
LABEL_64:
      v137 = MEMORY[0x277D6EC30];
      MEMORY[0x21CECCDE0]();
      goto LABEL_67;
    }
  }

  else
  {
    v355 = 0.0;
    v136 = (v330 + 104);
    if (v101)
    {
      goto LABEL_64;
    }
  }

  v137 = MEMORY[0x277D6EC38];
  v138 = MEMORY[0x21CECCDF0]();
LABEL_67:
  v143 = v356;
  v142 = v357;
  *v356 = v138;
  *(v143 + 1) = v139;
  *(v143 + 2) = v140;
  *(v143 + 3) = v141;
  (*v136)(v143, *v137, v142);
  sub_219BEB064();
  v145 = v144;
  v147 = v146;
  v402.origin.x = v125;
  v402.origin.y = v127;
  v402.size.width = v129;
  v402.size.height = v131;
  v354 = CGRectGetWidth(v402);
  sub_219BF6034();
  v353 = v148;
  v403.origin.x = v125;
  v403.origin.y = v127;
  v403.size.width = v129;
  v403.size.height = v131;
  v149 = CGRectGetHeight(v403);
  v319 = v145;
  v320 = v147;
  sub_219BF6064();
  v151 = v149 + v150;
  sub_219BEB074();
  if (v151 > v152)
  {
    v153 = v151;
  }

  else
  {
    v153 = v152;
  }

  v154 = v355 + v354 + v353;
  v318 = v153;
  if (v101)
  {
    v155 = v389;

    v156 = sub_218C8F3C8(*&v352, v101, v155);

    [v156 size];
    v346 = v157;
    v159 = v158;
    v404.origin.x = v373;
    v404.size.width = v369;
    v404.origin.y = v370;
    v404.size.height = v368;
    v160 = CGRectGetWidth(v404);
    v161 = v365;
    v405.origin.x = v365;
    v162 = v372;
    v405.origin.y = v372;
    v163 = v154;
    v165 = v376;
    v164 = v377;
    v405.size.width = v377;
    v405.size.height = v376;
    v166 = v160 - CGRectGetMinX(v405);
    v167 = v374;
    [v374 firstLineHeadIndent];
    v169 = v166 - v168 - v163;
    v406.origin.x = v161;
    v406.origin.y = v162;
    v406.size.width = v164;
    v406.size.height = v165;
    v170 = CGRectGetMidY(v406) + (v153 + v159 + 4.0) * -0.5;
    [v167 firstLineHeadIndent];
    v407.origin.y = v170 + v171;
    v407.origin.x = v169;
    v407.size.width = v163;
    v407.size.height = v153;
    v408 = CGRectIntegral(v407);
    v172 = v408.origin.x;
    v173 = v408.origin.y;
    v174 = v408.size.width;
    v175 = v408.size.height;
    MaxX = CGRectGetMaxX(v408);
    v177 = v346;
    v178 = MaxX - v346;
    v354 = v173;
    v355 = v172;
    v409.origin.x = v172;
    v409.origin.y = v173;
    v352 = v175;
    v353 = v174;
    v409.size.width = v174;
    v409.size.height = v175;
    v410.origin.y = CGRectGetMaxY(v409) + 4.0;
    v410.origin.x = v178;
    v410.size.width = v177;
    v410.size.height = v159;
    v411 = CGRectIntegral(v410);
    v345 = v411.origin.y;
    v346 = v411.origin.x;
    v343 = v411.size.height;
    v344 = v411.size.width;

    if (v88 > 3)
    {
      goto LABEL_72;
    }

LABEL_76:
    v80 = v365;
LABEL_77:
    v53 = v324;
    (*(v134 + 8))(v356, v357);

    sub_21881ABBC(&v379, sub_2187FF3EC);
    v341 = 0.0;
    v342 = 0.0;
    v339 = 0.0;
    *&v340 = 0;
    v333 = 0.0;
    v334 = 0.0;
    v331 = 0.0;
    v332 = 0.0;
    v337 = 0.0;
    v338 = 0.0;
    v335 = 0.0;
    v336 = 0.0;
    LOBYTE(v23) = v323;
    goto LABEL_87;
  }

  v412.origin.x = v373;
  v412.size.width = v369;
  v412.origin.y = v370;
  v412.size.height = v368;
  v179 = CGRectGetWidth(v412);
  v180 = v365;
  v413.origin.x = v365;
  v181 = v372;
  v413.origin.y = v372;
  v183 = v376;
  v182 = v377;
  v413.size.width = v377;
  v413.size.height = v376;
  v184 = v179 - CGRectGetMinX(v413);
  v185 = v374;
  [v374 firstLineHeadIndent];
  v187 = v184 - v186 - v154;
  v414.origin.x = v180;
  v414.origin.y = v181;
  v414.size.width = v182;
  v414.size.height = v183;
  v188 = CGRectGetMidY(v414) + v153 * -0.5;
  [v185 firstLineHeadIndent];
  v415.origin.y = v188 + v189;
  v415.origin.x = v187;
  v415.size.width = v154;
  v415.size.height = v153;
  v416 = CGRectIntegral(v415);
  v354 = v416.origin.y;
  v355 = v416.origin.x;
  v352 = v416.size.height;
  v353 = v416.size.width;
  v345 = 0.0;
  v346 = 0.0;
  v343 = 0.0;
  v344 = 0.0;
  if (v88 <= 3)
  {
    goto LABEL_76;
  }

LABEL_72:
  v80 = v365;
  if (v88 > 5)
  {
    if (v88 != 6)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

  if (v88 == 4)
  {
LABEL_79:
    (*(v134 + 8))(v356, v357);

    sub_21881ABBC(&v379, sub_2187FF3EC);
    v341 = 0.0;
    v342 = 0.0;
    v339 = 0.0;
    *&v340 = 0;
    v333 = 0.0;
    v334 = 0.0;
    v331 = 0.0;
    v332 = 0.0;
    v337 = 0.0;
    v338 = 0.0;
    v335 = 0.0;
    v336 = 0.0;
    LOBYTE(v23) = v323;
    v53 = v324;
    goto LABEL_87;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v191 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v192 = v339;
  v193 = v339;
  if (v342 == 0.0)
  {
    v193 = COERCE_DOUBLE([objc_opt_self() whiteColor]);
  }

  v194 = swift_initStackObject();
  *(v194 + 16) = v340;
  v195 = v338;
  *(v194 + 32) = v338;
  v196 = *&v192;
  v197 = *&v195;
  v198 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v199 = MEMORY[0x277D76938];
    if (!v101)
    {
      v199 = MEMORY[0x277D76968];
    }

    v200 = *v199;
    v201 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v201 pointSize];
    v198 = v202;
  }

  *(v194 + 40) = [*&v336 systemFontOfSize:v198 weight:{v337, *&v318}];
  v203 = v334;
  v204 = v332;
  *(v194 + 64) = v335;
  *(v194 + 72) = v204;
  *(v194 + 104) = v203;
  *(v194 + 80) = v193;
  v205 = *&v204;
  v206 = *&v193;
  sub_2188195F4(v194);
  swift_setDeallocating();
  swift_arrayDestroy();
  v207 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v208 = sub_219BF53D4();

  v209 = sub_219BF5204();

  v210 = [v207 initWithString:v208 attributes:v209];

  [v210 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
  v331 = v417.origin.x;
  v332 = v417.origin.y;
  v333 = v417.size.height;
  v334 = v417.size.width;
  v211 = v319;
  v212 = CGRectGetWidth(v417);
  v213 = v320;
  v214 = v320 + v211 + 15.0 + 5.0 + v212;
  v215 = v354;
  v216 = v355;
  v418.origin.x = v355;
  v418.origin.y = v354;
  v218 = v352;
  v217 = v353;
  v418.size.width = v353;
  v418.size.height = v352;
  v219 = CGRectGetMaxX(v418) - v214;
  v419.origin.x = v216;
  v419.origin.y = v215;
  v419.size.width = v217;
  v419.size.height = v218;
  v420.origin.y = CGRectGetMinY(v419);
  v420.origin.x = v219;
  v420.size.width = v214;
  v420.size.height = v318;
  v421 = CGRectIntegral(v420);
  v220 = v421.origin.x;
  v221 = v421.origin.y;
  v222 = v421.size.width;
  v223 = v421.size.height;
  v224 = v211 + CGRectGetMinX(v421);
  v422.origin.x = v220;
  v422.origin.y = v221;
  v422.size.width = v222;
  v422.size.height = v223;
  v423.origin.y = CGRectGetMidY(v422) + -6.0;
  v423.size.width = 15.0;
  v423.size.height = 12.0;
  v423.origin.x = v224;
  v424 = CGRectIntegral(v423);
  v337 = v424.origin.y;
  v338 = v424.origin.x;
  v335 = v424.size.height;
  v336 = v424.size.width;
  v424.origin.x = v220;
  v424.origin.y = v221;
  v424.size.width = v222;
  v424.size.height = v223;
  v342 = CGRectGetMaxX(v424) - v213;
  v226 = v331;
  v225 = v332;
  v425.origin.x = v331;
  v425.origin.y = v332;
  v227 = v333;
  v228 = v334;
  v425.size.width = v334;
  v425.size.height = v333;
  v321 = v342 - CGRectGetWidth(v425);
  v341 = v221;
  v342 = v220;
  v426.origin.x = v220;
  v426.origin.y = v221;
  v339 = v223;
  *&v340 = v222;
  v426.size.width = v222;
  v426.size.height = v223;
  MidY = CGRectGetMidY(v426);
  v427.origin.x = v226;
  v427.origin.y = v225;
  v427.size.width = v228;
  v427.size.height = v227;
  v230 = MidY + CGRectGetHeight(v427) * -0.5;
  v428.origin.x = v226;
  v231 = v226;
  v428.origin.y = v225;
  v428.size.width = v228;
  v428.size.height = v227;
  v232 = CGRectGetWidth(v428);
  v429.origin.x = v231;
  v429.origin.y = v225;
  v429.size.width = v228;
  v429.size.height = v227;
  v430.size.height = CGRectGetHeight(v429);
  v430.origin.x = v321;
  v430.origin.y = v230;
  v430.size.width = v232;
  v431 = CGRectIntegral(v430);
  v333 = v431.origin.y;
  v334 = v431.origin.x;
  v331 = v431.size.height;
  v332 = v431.size.width;

  sub_21881ABBC(&v379, sub_2187FF3EC);
  (*(v330 + 8))(v356, v357);
  LOBYTE(v23) = v323;
  v53 = v324;
  v88 = v367;
  v80 = v365;
LABEL_87:
  v233 = v378;
  v234 = v372;
  sub_219B79250(v378, v80, v372, v377, v376, v373, v370, v369, v368);
  v375 = v235;
  v367 = v236;
  v356 = v238;
  v357 = v237;
  sub_21881A660(v233);
  v240 = v239;
  v242 = v241;
  v244 = v243;
  v246 = v245;
  sub_219BE8DA4();
  v247 = CGRectGetWidth(v432);
  sub_219BE8D24();
  sub_219BF6034();
  v249 = v247 - v248;
  v433.origin.x = v240;
  v433.origin.y = v242;
  v433.size.width = v244;
  v433.size.height = v246;
  v250 = v249 - CGRectGetWidth(v433);
  v434.origin.x = v80;
  v434.origin.y = v234;
  v434.size.height = v376;
  v434.size.width = v377;
  v251 = CGRectGetMidY(v434);
  v435.origin.x = v240;
  v435.origin.y = v242;
  v435.size.width = v244;
  v435.size.height = v246;
  v252 = v251 + CGRectGetHeight(v435) * -0.5;
  v436.origin.x = v240;
  v436.origin.y = v242;
  v436.size.width = v244;
  v436.size.height = v246;
  v253 = CGRectGetWidth(v436);
  v437.origin.x = v240;
  v437.origin.y = v242;
  v437.size.width = v244;
  v437.size.height = v246;
  v438.size.height = CGRectGetHeight(v437);
  v438.origin.x = v250;
  v438.origin.y = v252;
  v438.size.width = v253;
  v439 = CGRectIntegral(v438);
  v254 = v439.origin.x;
  v255 = v439.origin.y;
  v256 = v439.size.width;
  v257 = v439.size.height;
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (!v88)
    {
      v275 = swift_projectBox();
      v276 = v329;
      sub_219B799FC(v275, v329, sub_2187FF18C);

      v277 = *(v328 + 48);
      sub_21881ABBC(v276 + *(v328 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
      sub_21881ABBC(v276 + v277, type metadata accessor for MastheadModelContext);
      if (([*(v358 + 56) useFeedDifferentiationMode] & 1) == 0)
      {
        v272 = v364;
        v274 = v364 - v366 - v362;

        v310 = objc_opt_self();
        sub_219BF0CD4();
        v312 = v325;
        v311 = v326;
        v313 = v327;
        (*(v326 + 104))(v325, *MEMORY[0x277D6D198], v327);
        sub_219BF0CC4();
        v315 = v314;
        (*(v311 + 8))(v312, v313);
        v316 = [v310 systemFontOfSize:v315 weight:*MEMORY[0x277D74410]];
        [v316 lineHeight];
        v269 = v317;

        v273 = v366;
        v271 = v363;
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  if (v88)
  {
LABEL_93:

    v273 = 0.0;
    v271 = 0.0;
    v274 = 0.0;
    v269 = 0.0;
    v272 = v364;
    goto LABEL_94;
  }

  v258 = swift_projectBox();
  v259 = v329;
  sub_219B799FC(v258, v329, sub_2187FF18C);

  v260 = *(v328 + 48);
  sub_21881ABBC(v259 + *(v328 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
  sub_21881ABBC(v259 + v260, type metadata accessor for MastheadModelContext);
  if (v23)
  {

    v261 = objc_opt_self();
    sub_219BF0CD4();
    v263 = v325;
    v262 = v326;
    v264 = v327;
    (*(v326 + 104))(v325, *MEMORY[0x277D6D198], v327);
    sub_219BF0CC4();
    v266 = v265;
    (*(v262 + 8))(v263, v264);
    v267 = [v261 systemFontOfSize:v266 weight:*MEMORY[0x277D74410]];
    [v267 lineHeight];
    v269 = v268;

    v440.origin.x = v365;
    v440.origin.y = v372;
    v440.size.height = v376;
    v440.size.width = v377;
    MinY = CGRectGetMinY(v440);

    v271 = MinY - v269 + -2.0;
    v272 = v364;
    v273 = v366;
    v274 = v364 - v366 - v362;
  }

  else
  {
    sub_219BE8D94();
    v271 = v301;
    v272 = v364;
    v274 = v364 - v366 - v362;

    v302 = objc_opt_self();
    sub_219BF0CD4();
    v304 = v325;
    v303 = v326;
    v305 = v327;
    (*(v326 + 104))(v325, *MEMORY[0x277D6D198], v327);
    sub_219BF0CC4();
    v307 = v306;
    (*(v303 + 8))(v304, v305);
    v308 = [v302 systemFontOfSize:v307 weight:*MEMORY[0x277D74410]];
    [v308 lineHeight];
    v269 = v309;

    v273 = v366;
  }

LABEL_94:
  v278 = v363;
  *(a4 + 8) = v272;
  *(a4 + 16) = v278;
  v280 = width;
  v279 = y;
  *(a4 + 24) = v351;
  *(a4 + 32) = v279;
  v281 = v359;
  *(a4 + 40) = v280;
  *(a4 + 48) = v281;
  v282 = v372;
  *(a4 + 56) = v365;
  *(a4 + 64) = v282;
  v283 = v376;
  *(a4 + 72) = v377;
  *(a4 + 80) = v283;
  v284 = v349;
  *(a4 + 96) = v350;
  *(a4 + 104) = v284;
  v285 = v347;
  *(a4 + 112) = v348;
  *(a4 + 120) = v285;
  v286 = v354;
  *(a4 + 128) = v355;
  *(a4 + 136) = v286;
  v287 = v352;
  *(a4 + 144) = v353;
  *(a4 + 152) = v287;
  *a4 = v23;
  *(a4 + 88) = v53;
  v288 = v345;
  *(a4 + 160) = v346;
  *(a4 + 168) = v288;
  v289 = v343;
  *(a4 + 176) = v344;
  *(a4 + 184) = v289;
  v290 = v337;
  *(a4 + 192) = v338;
  *(a4 + 200) = v290;
  v291 = v335;
  *(a4 + 208) = v336;
  *(a4 + 216) = v291;
  v292 = v333;
  *(a4 + 224) = v334;
  *(a4 + 232) = v292;
  v293 = v331;
  *(a4 + 240) = v332;
  *(a4 + 248) = v293;
  v294 = v341;
  *(a4 + 256) = v342;
  *(a4 + 264) = v294;
  v295 = v339;
  *(a4 + 272) = v340;
  *(a4 + 280) = v295;
  v297 = v369;
  v296 = v370;
  *(a4 + 288) = v373;
  *(a4 + 296) = v296;
  v298 = v368;
  *(a4 + 304) = v297;
  *(a4 + 312) = v298;
  *(a4 + 320) = v273;
  *(a4 + 328) = v271;
  *(a4 + 336) = v274;
  *(a4 + 344) = v269;
  v299 = v367;
  *(a4 + 352) = v375;
  *(a4 + 360) = v299;
  result = *&v356;
  *(a4 + 368) = v357;
  *(a4 + 376) = result;
  *(a4 + 384) = v254;
  *(a4 + 392) = v255;
  *(a4 + 400) = v256;
  *(a4 + 408) = v257;
  return result;
}

id sub_21881505C(char a1, unint64_t a2, double a3)
{
  v6 = sub_219BDCAF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219BED0C4())
  {
    if ((a1 & 1) == 0 && ((1 << (a2 >> 60)) & 0x73) != 0 || a3 > 320.0)
    {
      goto LABEL_5;
    }

    v15 = objc_opt_self();
    sub_219BF0CD4();
    (*(v7 + 104))(v9, *MEMORY[0x277D6D198], v6);
    sub_219BF0CC4();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = [v15 systemFontOfSize:v17 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    if (a2 >> 61 != 1 || (v14 = (v7 + 8), (a1 & 1) != 0))
    {
LABEL_5:
      v10 = objc_opt_self();
      sub_219BF0CD4();
      (*(v7 + 104))(v9, *MEMORY[0x277D6D198], v6);
      sub_219BF0CC4();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      v13 = [v10 systemFontOfSize:v12 weight:*MEMORY[0x277D743F8]];
LABEL_14:
      v22 = v13;
      v23 = sub_219BF6BE4();

      return v23;
    }

    v19 = objc_opt_self();
    sub_219BF0CD4();
    (*(v7 + 104))(v9, *MEMORY[0x277D6D198], v6);
    if (a3 > 320.0)
    {
      sub_219BF0CC4();
      v21 = v20;
      (*v14)(v9, v6);
      v13 = [v19 systemFontOfSize:v21 weight:*MEMORY[0x277D743F8]];
      goto LABEL_14;
    }

    sub_219BF0CC4();
    v26 = v25;
    (*v14)(v9, v6);
    v18 = [v19 systemFontOfSize:v26 weight:*MEMORY[0x277D74410]];
  }

  return v18;
}

id sub_2188155F8(char a1)
{
  v2 = sub_219BDCAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v6 setLineBreakMode_];
  v7 = (v3 + 8);
  if (sub_219BED0C4())
  {
    sub_219BF0CD4();
    v8 = *MEMORY[0x277D6D198];
    v9 = *(v3 + 104);
    v9(v5, v8, v2);
    sub_219BF0CC4();
    v11 = v10;
    v12 = *(v3 + 8);
    v12(v5, v2);
    [v6 setMinimumLineHeight_];
    v9(v5, v8, v2);
    sub_219BF0CC4();
    v14 = v13;
    v12(v5, v2);
  }

  else
  {
    sub_219BF0CD4();
    v15 = *MEMORY[0x277D6D198];
    v16 = *(v3 + 104);
    v16(v5, v15, v2);
    sub_219BF0CC4();
    if (a1)
    {
      v18 = v17;
      v19 = *v7;
      (*v7)(v5, v2);
      [v6 setMinimumLineHeight_];
    }

    else
    {
      v20 = v17;
      v19 = *v7;
      (*v7)(v5, v2);
      [v6 setMinimumLineHeight_];
    }

    v16(v5, v15, v2);
    sub_219BF0CC4();
    v14 = v21;
    v19(v5, v2);
  }

  [v6 setMaximumLineHeight_];
  return v6;
}

char *sub_2188158D8(unint64_t a1, char a2, uint64_t a3, double a4)
{
  v148 = sub_219BE7C34();
  v151 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for MastheadModelContext();
  MEMORY[0x28223BE20](v146);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_218C8F1D4();
  v150 = sub_218C8F1D4();
  v130 = sub_218C8F1D4();
  v128 = sub_21881505C(a2 & 1, a1, a4);
  v129 = sub_2188155F8(a2 & 1);
  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();
  }

  v147 = sub_219BF53D4();

  sub_218816B8C();
  v140 = sub_219BF53D4();

  sub_218816CD4(a1);
  v138 = sub_219BF53D4();

  v142 = sub_219BF53D4();
  sub_218817108(a1);
  if (v12)
  {
    v13 = sub_219BF53D4();
  }

  else
  {
    v13 = 0;
  }

  v137 = v13;
  v14 = sub_2188178C4(a1, a2 & 1, 11501794, 0xA300000000000000, v13);
  sub_218817E30(a1, a4);
  v15 = sub_219BF53D4();

  v16 = sub_2186C6148(0, &unk_280E8D9E0);
  v17 = sub_219BF6DF4();
  sub_218818EFC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  *(v18 + 56) = v16;
  v19 = sub_218819018();
  *(v18 + 32) = v14;
  *(v18 + 96) = v16;
  *(v18 + 104) = v19;
  *(v18 + 64) = v19;
  *(v18 + 72) = v15;
  v127 = v14;
  v126 = v15;
  v20 = sub_219BF6E04();

  v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v125 = v20;
  v22 = [v21 initWithString_];
  v23 = a1 >> 60;
  if (a1 >> 60)
  {
    v141 = 0;
  }

  else
  {
    sub_2187FF18C();
    v25 = v24;
    v26 = swift_projectBox();
    sub_218819080(v26 + *(v25 + 48), v11);
    v141 = v11[*(v146 + 32)];
    sub_2188190E4(v11, type metadata accessor for MastheadModelContext);
  }

  v27 = v149;
  v28 = sub_218819204(a3, v149);
  sub_219BE8334();
  v29 = v148;
  v30 = (*(v151 + 88))(v9, v148);
  v31 = *MEMORY[0x277D6DCD8];
  v152 = v22;
  if (v30 == v31)
  {
    if (v23 == 5)
    {
      v32 = *(*__swift_project_boxed_opaque_existential_1((v27 + 16), *(v27 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 176);
    }

    else
    {
      v32 = sub_2188193BC();
    }

    v35 = v32;
  }

  else
  {
    v33 = v30;
    v34 = *MEMORY[0x277D6DCD0];
    v35 = sub_2188193BC();
    if (v33 != v34)
    {
      (*(v151 + 8))(v9, v29);
    }
  }

  sub_218818EFC(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v37 = v36;
  inited = swift_initStackObject();
  v145 = xmmword_219C0B8C0;
  *(inited + 16) = xmmword_219C0B8C0;
  v39 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v135 = v35;
  v136 = v28;
  if (v141)
  {
    v28 = v35;
  }

  v40 = sub_2186C6148(0, &qword_280E8DA80);
  v146 = v40;
  *(inited + 40) = v28;
  v41 = *MEMORY[0x277D740A8];
  *(inited + 64) = v40;
  *(inited + 72) = v41;
  v42 = sub_2186C6148(0, &qword_280E8DB00);
  v151 = v42;
  v43 = v150;
  *(inited + 80) = v150;
  v44 = *MEMORY[0x277D740D0];
  *(inited + 104) = v42;
  *(inited + 112) = v44;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFD3333333333333;
  v45 = v41;
  v46 = v39;
  v47 = v44;
  v143 = v45;
  v132 = v46;
  v133 = v47;
  v131 = v28;
  v134 = v43;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  v150 = v48;
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  v144 = v49;
  v149 = sub_218819A74(&qword_280E8E118, type metadata accessor for Key);
  v50 = sub_219BF5204();

  v51 = v147;
  v52 = [v147 length];
  v53 = v152;
  [v152 addAttributes:v50 range:{0, v52}];

  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_219C09BA0;
  *(v54 + 32) = v143;
  v55 = v151;
  *(v54 + 64) = v151;
  v56 = v139;
  *(v54 + 40) = v139;
  v57 = v56;
  sub_2188195F4(v54);
  swift_setDeallocating();
  sub_2188190E4(v54 + 32, sub_218819588);
  v58 = sub_219BF5204();

  v59 = [v51 length];
  v60 = v142;
  [v53 addAttributes:v58 range:{v59, objc_msgSend(v142, sel_length)}];

  v148 = v37;
  v61 = swift_initStackObject();
  *(v61 + 16) = v145;
  v62 = v131;
  v63 = v132;
  *(v61 + 32) = v132;
  *(v61 + 40) = v62;
  v64 = v143;
  *(v61 + 64) = v146;
  *(v61 + 72) = v64;
  *(v61 + 80) = v57;
  *(v61 + 104) = v55;
  v65 = v133;
  *(v61 + 112) = v133;
  *(v61 + 144) = MEMORY[0x277D839F8];
  *(v61 + 120) = 0xBFD3333333333333;
  v139 = v64;
  v66 = v63;
  v143 = v65;
  v133 = v57;
  v67 = v62;
  sub_2188195F4(v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  v68 = sub_219BF5204();

  v69 = [v51 length];
  result = [v60 length];
  v71 = &result[v69];
  if (__OFADD__(v69, result))
  {
    __break(1u);
    goto LABEL_30;
  }

  v72 = v140;
  v73 = [v140 length];
  [v152 addAttributes:v68 range:{v71, v73}];

  v74 = swift_initStackObject();
  *(v74 + 16) = v145;
  v132 = v66;
  *(v74 + 32) = v66;
  *(v74 + 40) = v67;
  v75 = v139;
  *(v74 + 64) = v146;
  *(v74 + 72) = v75;
  v76 = v130;
  *(v74 + 80) = v130;
  v77 = v143;
  *(v74 + 104) = v151;
  *(v74 + 112) = v77;
  *(v74 + 144) = MEMORY[0x277D839F8];
  *(v74 + 120) = 0xBFD3333333333333;
  v78 = v67;
  v131 = v76;
  sub_2188195F4(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  v79 = sub_219BF5204();

  v80 = [v147 length];
  result = [v60 length];
  v81 = __OFADD__(v80, result);
  v82 = &result[v80];
  if (v81)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = [v72 length];
  v83 = &result[v82];
  if (__OFADD__(v82, result))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v84 = v78;
  v85 = [v138 length];
  [v152 addAttributes:v79 range:{v83, v85}];

  v86 = v137;
  v87 = v146;
  v88 = v151;
  v89 = v139;
  v90 = v132;
  if (v137)
  {
    v91 = swift_initStackObject();
    *(v91 + 16) = v145;
    *(v91 + 32) = v90;
    v92 = v87;
    v93 = v84;
    *(v91 + 40) = v84;
    *(v91 + 64) = v92;
    *(v91 + 72) = v89;
    v94 = v134;
    *(v91 + 80) = v134;
    v95 = v143;
    *(v91 + 104) = v151;
    *(v91 + 112) = v95;
    *(v91 + 144) = MEMORY[0x277D839F8];
    *(v91 + 120) = 0xBFD3333333333333;
    v96 = v89;
    v97 = v90;
    v98 = v95;
    v99 = v94;
    v100 = v86;
    v101 = v93;
    v87 = v92;
    v102 = v152;
    sub_2188195F4(v91);
    swift_setDeallocating();
    swift_arrayDestroy();
    v103 = sub_219BF5204();

    [v102 addAttributes:v103 range:{0, objc_msgSend(v100, sel_length)}];

    v88 = v151;
  }

  v104 = swift_initStackObject();
  v105 = v104;
  *(v104 + 16) = xmmword_219C0EE20;
  *(v104 + 32) = v90;
  if (v141)
  {
    v106 = v136;
  }

  else
  {
    v106 = v135;
  }

  *(v104 + 40) = v106;
  *(v104 + 64) = v87;
  *(v104 + 72) = v89;
  v107 = v89;
  v108 = v128;
  *(v104 + 80) = v128;
  v109 = v143;
  *(v104 + 104) = v88;
  *(v104 + 112) = v109;
  *(v104 + 120) = 0xBFD3333333333333;
  v110 = *MEMORY[0x277D74118];
  *(v104 + 144) = MEMORY[0x277D839F8];
  *(v104 + 152) = v110;
  *(v104 + 184) = sub_2186C6148(0, &unk_280E8E510);
  v111 = v129;
  *(v105 + 160) = v129;
  v112 = v107;
  v113 = v90;
  v114 = v109;
  v115 = v106;
  v116 = v108;
  v117 = v110;
  v118 = v111;
  sub_2188195F4(v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  v119 = sub_219BF5204();

  v120 = v127;
  v121 = [v127 length];
  v122 = v126;
  v123 = [v126 length];
  v124 = v152;
  [v152 addAttributes:v119 range:{v121, v123}];

  return v124;
}

uint64_t sub_218816624()
{
  v0 = sub_219BDC934();
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D098]);
  type metadata accessor for Settings.Options.Masthead.Overrides();
  swift_allocObject();
  result = Settings.Options.Masthead.Overrides.init(key:defaultValue:access:)(0, 0, 0, v2);
  qword_280EE9340 = result;
  return result;
}

uint64_t type metadata accessor for Settings.Options.Masthead.Overrides()
{
  result = qword_280EE9370;
  if (!qword_280EE9370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Settings.Options.Masthead.Overrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a1;
  v38 = a3;
  v37 = a2;
  v6 = sub_219BDC944();
  v31 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDC934();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_280EE9388;
  v30 = "SearchHomeCoordinating";
  v15 = *MEMORY[0x277D6D098];
  v39 = *(v11 + 104);
  v39(v13, v15);
  v16 = *MEMORY[0x277D6D0A8];
  v32 = *(v7 + 104);
  v40 = v7 + 104;
  v29 = v16;
  v32(v9, v16, v6);
  v41 = 12559343;
  v42 = 0xA300000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  v17 = v9;
  *(v5 + v14) = sub_219BDC9F4();
  v30 = qword_280EE9380;
  v27 = "thead.overrides.logo";
  v28 = v5;
  v18 = v33;
  (v39)(v13, v15, v33);
  v19 = v9;
  v20 = v16;
  v22 = v31;
  v21 = v32;
  v32(v19, v20, v31);
  v41 = 1937204558;
  v42 = 0xE400000000000000;
  swift_allocObject();
  *&v30[v5] = sub_219BDC9F4();
  v30 = qword_280EE9390;
  (v39)(v13, v15, v18);
  v21(v17, v29, v22);
  v41 = 0x20797261756E614ALL;
  v42 = 0xE900000000000031;
  swift_allocObject();
  *&v30[v28] = sub_219BDC9F4();
  v24 = v34;
  v23 = v35;
  (*(v34 + 16))(v13, v35, v18);
  v25 = sub_219BDC824();
  (*(v24 + 8))(v23, v18);
  return v25;
}

uint64_t sub_218816B8C()
{
  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();

    return v4;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_219BDB5E4();

    return v3;
  }
}

uint64_t sub_218816CD4(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 8)
  {
    goto LABEL_11;
  }

  if (((1 << v1) & 0x1BC) == 0)
  {
    if (v1 == 1)
    {
      sub_218A6E454();
      swift_projectBox();

      if (sub_218816F54())
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (v1 == 6)
    {

      if (sub_218816F54())
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_11:
    sub_2187FF18C();
    swift_projectBox();

    if (sub_218816F54())
    {
LABEL_12:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v4 = sub_219BDB5E4();

      return v4;
    }

LABEL_13:

    return 0;
  }

  type metadata accessor for Localized();
  v2 = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();

  return v4;
}

BOOL sub_218816F54()
{
  v1 = [*(v0 + 24) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -37;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 37;
  return ((v6 ^ v3) & 1) == 0;
}

uint64_t sub_218817108(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelContext();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (!(a1 >> 60))
  {
    sub_2187FF18C();
    v7 = v6;
    v8 = swift_projectBox();
    sub_2188121C4(v8 + *(v7 + 48), v4, type metadata accessor for MastheadModelContext);
    if (v4[*(v2 + 32)] == 1)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      v11 = sub_219BDB5E4();

      sub_2188172B8(v4, type metadata accessor for MastheadModelContext);
      return v11;
    }

    else
    {
      sub_2188172B8(v4, type metadata accessor for MastheadModelContext);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2188172B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218817318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218C68F54(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188173E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218D82880(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188174B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218802370(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218FFD0CC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817598(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219248A04(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2188175F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219327964(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188176C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218817724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187DD4F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188177F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A5BF58(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188178C4(unint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  if ((sub_219BED0C4() & 1) == 0)
  {
    v15 = 1 << (a1 >> 60);
    if ((v15 & 0x71) != 0)
    {
      if (a5)
      {
LABEL_13:
        v13 = a5;
        v16 = [v13 description];
        sub_219BF5414();

        v17 = 10;
LABEL_20:
        MEMORY[0x21CECC330](v17, 0xE100000000000000);
        goto LABEL_21;
      }
    }

    else if ((v15 & 0x18C) != 0)
    {
      if ((a2 & 1) == 0)
      {
        if (a5)
        {
          v13 = a5;
          v20 = [v13 description];
          sub_219BF5414();

          v17 = 32;
          goto LABEL_20;
        }

        if (qword_280EE9338 != -1)
        {
          swift_once();
        }

        if (sub_219BDC834())
        {
          sub_219BDC8D4();
          sub_219BDC8B4();

          sub_219BDC8A4();

          v30 = v35;
          v31 = v36;
        }

        else
        {
          v30 = 12559343;
          v31 = 0xA300000000000000;
        }

        MEMORY[0x21CECC330](v30, v31);

        MEMORY[0x21CECC330](a3, a4);
        v32 = sub_218816B8C();
        MEMORY[0x21CECC330](v32);

        v33 = sub_218816CD4(a1);
        MEMORY[0x21CECC330](v33);

        v29 = 32;
LABEL_37:
        MEMORY[0x21CECC330](v29, 0xE100000000000000);
        goto LABEL_38;
      }

      if (a5)
      {
        goto LABEL_13;
      }
    }

    else if (a5)
    {
      goto LABEL_13;
    }

    if (qword_280EE9338 != -1)
    {
      swift_once();
    }

    if (sub_219BDC834())
    {
      sub_219BDC8D4();
      sub_219BDC8B4();

      sub_219BDC8A4();

      v25 = v35;
      v26 = v36;
    }

    else
    {
      v25 = 12559343;
      v26 = 0xA300000000000000;
    }

    MEMORY[0x21CECC330](v25, v26);

    MEMORY[0x21CECC330](a3, a4);
    v27 = sub_218816B8C();
    MEMORY[0x21CECC330](v27);

    v28 = sub_218816CD4(a1);
    MEMORY[0x21CECC330](v28);

    v29 = 10;
    goto LABEL_37;
  }

  if ((a2 & 1) != 0 || (v10 = 0xE000000000000000, v11 = 10, v12 = 0, ((1 << (a1 >> 60)) & 0x73) == 0))
  {

    v11 = 32;
    v12 = a3;
    v10 = a4;
  }

  if (a5)
  {
    v13 = a5;

    v14 = [v13 description];
    sub_219BF5414();

    MEMORY[0x21CECC330](v11, 0xE100000000000000);

LABEL_21:
    v21 = sub_219BF53D4();

    return v21;
  }

  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();

    v18 = v35;
    v19 = v36;
  }

  else
  {
    v18 = 12559343;
    v19 = 0xA300000000000000;
  }

  MEMORY[0x21CECC330](v18, v19);

  MEMORY[0x21CECC330](a3, a4);
  v23 = sub_218816B8C();
  MEMORY[0x21CECC330](v23);

  v24 = sub_218816CD4(a1);
  MEMORY[0x21CECC330](v24);

  MEMORY[0x21CECC330](v12, v10);

  MEMORY[0x21CECC330](v11, 0xE100000000000000);

LABEL_38:
  v34 = sub_219BF53D4();

  return v34;
}

void *sub_218817E30(unint64_t a1, double a2)
{
  v4 = sub_219BDBD34();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0644();
  v64 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  v65 = sub_219BF11C4();
  v67 = *(v65 - 8);
  v12 = MEMORY[0x28223BE20](v65);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  sub_218818CE0();
  v18 = v17;
  MEMORY[0x28223BE20](v17);
  v68 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MastheadModelContext();
  MEMORY[0x28223BE20](v20);
  v66 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();

    return v71;
  }

  v23 = a1 >> 60;
  if ((a1 >> 60) > 3)
  {
    goto LABEL_19;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      sub_2187FF18C();
      v25 = swift_projectBox() + *(v24 + 48);
      v26 = v66;
      sub_2188121C4(v25, v66, type metadata accessor for MastheadModelContext);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v20 + 28);
      v30 = *(v18 + 64);
      v32 = v67;
      v31 = v68;
      *v68 = *v26;
      v31[1] = v28;
      v59 = *(v32 + 16);
      v60 = v30;
      v33 = &v26[v29];
      v34 = v65;
      v59(&v31[v30], v33, v65);
      if ((v27 & 1) == 0)
      {
        if (!v28 || (*(v67 + 88))(&v68[v60], v34) != *MEMORY[0x277D331E0])
        {
          goto LABEL_33;
        }

        v59(v14, &v68[v60], v34);
        (*(v67 + 96))(v14, v34);
        v43 = v64;
        (*(v64 + 104))(v9, *MEMORY[0x277D32EF8], v6);
        sub_218707844(&qword_280E90ED0, MEMORY[0x277D32F00]);
        sub_219BF5874();
        v36 = *(v43 + 8);
        v36(v14, v6);
        sub_219BF5874();
        if (v71 == v69 && v72 == v70)
        {
          v37 = v9;
          goto LABEL_26;
        }

        v48 = sub_219BF78F4();
        v49 = v9;
LABEL_31:
        v36(v49, v6);

        v44 = v65;
        if (v48)
        {
          goto LABEL_32;
        }

LABEL_33:
        v52 = v66;
        if (v66[*(v20 + 32)] == 1)
        {
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v54 = [objc_opt_self() bundleForClass_];
          v42 = sub_219BDB5E4();

          sub_2188172B8(v52, type metadata accessor for MastheadModelContext);
          sub_2188172B8(v68, sub_218818CE0);
          return v42;
        }

        if (a2 <= 320.0)
        {
          if (qword_27CC07D38 != -1)
          {
            swift_once();
          }

          v55 = qword_27CC0D348;
          if (!qword_27CC0D348)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (qword_280ED23C0 != -1)
          {
            swift_once();
          }

          v55 = qword_280ED23D0;
          if (!qword_280ED23D0)
          {
            goto LABEL_44;
          }
        }

        v56 = v61;
        sub_219BDBD24();
        v57 = sub_219BDBC04();
        (*(v62 + 8))(v56, v63);
        v58 = [v55 stringFromDate_];

        v55 = sub_219BF5414();
LABEL_44:
        sub_2188172B8(v52, type metadata accessor for MastheadModelContext);
        sub_2188172B8(v68, sub_218818CE0);
        return v55;
      }

      if (v28)
      {
        if ((*(v67 + 88))(&v68[v60], v34) != *MEMORY[0x277D331F8])
        {
          goto LABEL_33;
        }

        v59(v16, &v68[v60], v34);
        (*(v67 + 96))(v16, v34);
        v35 = v64;
        (*(v64 + 104))(v11, *MEMORY[0x277D32EF8], v6);
        sub_218707844(&qword_280E90ED0, MEMORY[0x277D32F00]);
        sub_219BF5874();
        v36 = *(v35 + 8);
        v36(v16, v6);
        sub_219BF5874();
        if (v71 == v69 && v72 == v70)
        {
          v37 = v11;
LABEL_26:
          v36(v37, v6);

          v44 = v65;
LABEL_32:
          (*(v67 + 8))(&v68[v60], v44);
          type metadata accessor for Localized();
          v50 = swift_getObjCClassFromMetadata();
          v51 = [objc_opt_self() bundleForClass_];
          v42 = sub_219BDB5E4();

          sub_2188172B8(v66, type metadata accessor for MastheadModelContext);
          return v42;
        }

        v48 = sub_219BF78F4();
        v49 = v11;
        goto LABEL_31;
      }

      v45 = v34;
      type metadata accessor for Localized();
      v46 = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      v42 = sub_219BDB5E4();

      sub_2188172B8(v66, type metadata accessor for MastheadModelContext);
      (*(v67 + 8))(&v68[v60], v45);
      return v42;
    }

LABEL_19:
    type metadata accessor for Localized();
    v40 = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    v42 = sub_219BDB5E4();

    return v42;
  }

  if (v23 == 2)
  {
    goto LABEL_19;
  }

  result = *(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 16);
  if (result)
  {
    v38 = [objc_msgSend(result backingTag)];
    swift_unknownObjectRelease();
    v39 = sub_219BF5414();

    return v39;
  }

  return result;
}

void sub_218818CE0()
{
  if (!qword_280E8EAF0)
  {
    sub_219BF11C4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EAF0);
    }
  }
}

id sub_218818D4C()
{
  v0 = sub_219BDBE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBDF4();
  sub_219BDBD84();
  (*(v1 + 8))(v3, v0);
  v4 = sub_219BF53D4();
  v5 = sub_219BF53D4();

  v6 = [objc_opt_self() dateFormatterWithFormat:v4 localeIdentifier:v5 forReuse:1];

  if (v6)
  {
    v7 = v6;
    v8 = sub_219BF53D4();
    [v7 setLocalizedDateFormatFromTemplate_];
  }

  return v6;
}

id sub_218818ECC()
{
  result = sub_218818D4C();
  qword_280ED23D0 = result;
  return result;
}

void sub_218818EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218818F60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218818FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218819018()
{
  result = qword_280E8D9D8;
  if (!qword_280E8D9D8)
  {
    sub_2186C6148(255, &unk_280E8D9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8D9D8);
  }

  return result;
}

uint64_t sub_218819080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadModelContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2188190E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218819144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188191A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_218819204(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE7C34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8334();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D6DCD8])
  {
    v8 = sub_219BE8324();
    if (v8)
    {
      v9 = v8;
      v10 = sub_219BE79A4();

      if (v10)
      {
        return v10;
      }
    }

    v14 = *(*__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 160);
  }

  else
  {
    v12 = v7;
    v13 = *MEMORY[0x277D6DCD0];
    v14 = *(*__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 80);
    if (v12 != v13)
    {
      v15 = *(v4 + 8);
      v16 = v14;
      v15(v6, v3);
      return v16;
    }
  }

  return v14;
}

id sub_2188193BC()
{
  v1 = v0;
  v2 = sub_219BE7C34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8334();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D6DCD8])
  {
    v7 = sub_219BE8324();
    if (v7)
    {
      v8 = v7;
      v9 = sub_219BE79A4();

      if (v9)
      {
        return v9;
      }
    }

    v13 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 168);
  }

  else
  {
    v11 = v6;
    v12 = *MEMORY[0x277D6DCD0];
    v13 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 88);
    if (v11 != v12)
    {
      v14 = *(v3 + 8);
      v15 = v13;
      v14(v5, v2);
      return v15;
    }
  }

  return v13;
}

void sub_218819588()
{
  if (!qword_280E8E0F0)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E0F0);
    }
  }
}

unint64_t sub_21881963C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_219BF75B4();
    v11 = a1 + 32;

    v12 = MEMORY[0x277D84F70];
    while (1)
    {
      sub_218819864(v11, &v19, a3, a4, v12 + 8, sub_21879D638);
      v13 = v19;
      result = a5(v19);
      if (v15)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v13;
      result = sub_218751558(&v20, (v10[7] + 32 * result));
      v16 = v10[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v10[2] = v18;
      v11 += 40;
      if (!--v5)
      {

        return v10;
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

void sub_21881977C()
{
  if (!qword_280E8D060)
  {
    type metadata accessor for Key(255);
    sub_218751238(&qword_280E8E118, type metadata accessor for Key);
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D060);
    }
  }
}

uint64_t sub_218819864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2188198E0(uint64_t a1)
{
  sub_219BF5414();
  sub_219BF7AA4();
  sub_219BF5524();
  v2 = sub_219BF7AE4();

  return sub_218819970(a1, v2);
}

unint64_t sub_218819970(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_219BF5414();
      v8 = v7;
      if (v6 == sub_219BF5414() && v8 == v9)
      {
        break;
      }

      v11 = sub_219BF78F4();

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

uint64_t sub_218819A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218819ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218819B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218819B4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2188134F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218819BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21881354C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218819C18@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21875D3C8();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v55 - v7;
  v8 = type metadata accessor for MastheadModelSupplementaryInfo();
  result = MEMORY[0x28223BE20](v8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (((1 << (a1 >> 60)) & 0x1DE) != 0)
  {
    goto LABEL_2;
  }

  if (a1 >> 60)
  {
    sub_218A6E4C8();
    v26 = v25;
    v27 = swift_projectBox();
    v28 = (v27 + *(v26 + 48));
    v11 = *v28;
    v29 = v28[1];
    v31 = v57;
    v30 = v58;
    v32 = *(v58 + 16);
    v33 = v59;
    v32(v57, v27, v59);

    if (sub_219BED0C4())
    {
      (*(v30 + 8))(v31, v33);

      goto LABEL_8;
    }

    v37 = v56;
    v32(v56, v31, v33);
    v38 = (*(v30 + 88))(v37, v33);
    if (v38 == *MEMORY[0x277D30130])
    {

      (*(v30 + 96))(v37, v33);
      sub_218A6E5D0(0);
      v55 = *(v39 + 64);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      if (v38 != *MEMORY[0x277D30128])
      {
        if (v38 != *MEMORY[0x277D30138])
        {
          v54 = *(v30 + 8);
          v54(v31, v33);

          result = (v54)(v37, v33);
          goto LABEL_8;
        }

        if (!v29)
        {
          type metadata accessor for Localized();
          v51 = swift_getObjCClassFromMetadata();
          v52 = [objc_opt_self() bundleForClass_];
          v11 = sub_219BDB5E4();
          v29 = v53;
        }

        (*(v30 + 8))(v31, v33);

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v12 = v29;
LABEL_18:
        v18 = 0;
        v19 = 0;
        v13 = v11;
        v14 = v12;
        goto LABEL_2;
      }

      (*(v30 + 96))(v37, v33);
      sub_218A6E554();
      v55 = *(v45 + 64);
      type metadata accessor for Localized();
      v46 = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
    }

    v11 = sub_219BDB5E4();
    v48 = v47;

    (*(v30 + 8))(v31, v33);
    v49 = sub_219BDD9E4();
    v50 = *(*(v49 - 8) + 8);

    v50(v37 + v55, v49);
    result = sub_2188172B8(v37, type metadata accessor for AudioFeedTrack);
    v12 = v48;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v20 = result;
  v21 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FF18C();
  v23 = v22;
  v24 = swift_projectBox();
  sub_2188121C4(v24 + *(v23 + 64), v21, type metadata accessor for MastheadModelSupplementaryInfo);

  if (sub_219BED0C4())
  {
    sub_2188172B8(v21, type metadata accessor for MastheadModelSupplementaryInfo);

LABEL_8:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_2;
  }

  v34 = v21;
  v35 = sub_218816F54();

  if (v35)
  {
    v11 = 0;
    v59 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v36 = v34;
  }

  else
  {
    v36 = v21;
    if (*v21 == 1)
    {
      v42 = &v21[*(v20 + 28)];
      v43 = *(v42 + 3);
      v63 = *(v42 + 2);
      v64 = v43;
      v65 = *(v42 + 8);
      v44 = *(v42 + 1);
      v61 = *v42;
      v62 = v44;
      sub_218A6E6F4(&v61, v60);
      v36 = v21;
      v59 = *(&v61 + 1);
      v11 = v61;
      v14 = *(&v62 + 1);
      v13 = v62;
      v16 = *(&v63 + 1);
      v15 = v63;
      v18 = *(&v64 + 1);
      v17 = v64;
      v19 = v65;
    }

    else
    {
      v11 = 0;
      v59 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }
  }

  result = sub_2188172B8(v36, type metadata accessor for MastheadModelSupplementaryInfo);
  v12 = v59;
LABEL_2:
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = v17;
  a2[7] = v18;
  a2[8] = v19;
  return result;
}

uint64_t sub_21881A324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

BOOL sub_21881A36C(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (((1 << (a1 >> 60)) & 0x1EE) == 0)
  {
    v14 = v10;
    if (a1 >> 60)
    {
      (*(v9 + 56))(v7, 1, 1, v10);
    }

    else
    {
      sub_2187FF18C();
      v16 = v15;
      v17 = swift_projectBox();
      sub_2188121C4(v17 + *(v16 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
      sub_2188121C4(&v4[*(v2 + 24)], v7, sub_2186FE720);

      sub_2188172B8(v4, type metadata accessor for MastheadModelSupplementaryInfo);
      if ((*(v9 + 48))(v7, 1, v14) != 1)
      {
        (*(v9 + 32))(v12, v7, v14);
        if (sub_219BEBFE4())
        {
          v18 = sub_21881C734(a1);
          (*(v9 + 8))(v12, v14);
          if (v18)
          {
            v13 = 0;
LABEL_10:

            return v13;
          }
        }

        else
        {
          (*(v9 + 8))(v12, v14);
        }

LABEL_9:
        v13 = sub_218816F54();
        goto LABEL_10;
      }
    }

    sub_2188172B8(v7, sub_2186FE720);
    goto LABEL_9;
  }

  return v13;
}

void sub_21881A660(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881354C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = sub_219BEC004();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v35 - v17;
  v19 = a1 >> 60;
  if ((a1 >> 60) - 2 < 7)
  {
    (*(v12 + 56))(v10, 1, 1, v11, v16);
LABEL_3:
    sub_218819BA8(v10, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return;
  }

  if (v19)
  {
    sub_218A6E454();
    v37 = v22;
    v23 = swift_projectBox();
    sub_21881AC1C(v23 + *(v37 + 48), v10);
  }

  else
  {
    sub_2187FF18C();
    v37 = v20;
    v21 = swift_projectBox();
    sub_219B799FC(v21 + *(v37 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_21881AC1C(&v4[*(v2 + 24)], v10);
    sub_21881ABBC(v4, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  v36 = *(v12 + 48);
  v37 = v12 + 48;
  if (v36(v10, 1, v11) == 1)
  {
    goto LABEL_3;
  }

  v35[0] = *(v12 + 32);
  v35[1] = v12 + 32;
  (v35[0])(v18, v10, v11);
  v24 = sub_219BEBFF4();
  v25 = v18;
  v26 = *(v12 + 8);
  v26(v25, v11);
  if (v24)
  {

    if (v19)
    {
      sub_218A6E454();
      v31 = v30;
      v32 = swift_projectBox();
      sub_21881AC1C(v32 + *(v31 + 48), v7);
    }

    else
    {
      sub_2187FF18C();
      v28 = v27;
      v29 = swift_projectBox();
      sub_219B799FC(v29 + *(v28 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
      sub_21881AC1C(&v4[*(v2 + 24)], v7);
      sub_21881ABBC(v4, type metadata accessor for MastheadModelSupplementaryInfo);
    }

    if (v36(v7, 1, v11) == 1)
    {
      sub_218819BA8(v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    }

    else
    {
      (v35[0])(v14, v7, v11);
      v33 = sub_219BEBFF4();
      if (v33)
      {
        v34 = v33;
        if (sub_219BEBFE4())
        {
          [v34 frame];

          v26(v14, v11);
        }

        else
        {
          v26(v14, v11);
        }
      }

      else
      {
        v26(v14, v11);
      }
    }
  }
}

uint64_t sub_21881AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21881ABBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21881AC1C(uint64_t a1, uint64_t a2)
{
  sub_218CC4A34(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21881ACB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_21881AD04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_21881AD58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_21881ADAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881AE10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21881AE74(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v207 = a1;
  sub_21875D3C8();
  v10 = *(v9 - 8);
  v204 = v9;
  v205 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v190 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  *&v186 = &v176 - v14;
  MEMORY[0x28223BE20](v13);
  v198 = &v176 - v15;
  v16 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v16 - 8);
  v188 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&a3[qword_280EDEE80];
  v209 = 0x3FF0000000000000;
  v210 = 0;
  v211 = 0;
  v212 = 0x3FF0000000000000;
  v213 = 0;
  v214 = 0;
  [v18 setTransform_];
  v19 = *&a3[qword_280EDEE30];
  v20 = sub_219BE7114();
  v21 = sub_219BEA814();

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  swift_unknownObjectRetain();

  v23 = v19;

  v24 = sub_219BEA814();
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  swift_unknownObjectRetain();

  v26 = sub_219BEA814();
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  swift_unknownObjectRetain();

  [a3 setFrame_];
  sub_21881C5D4(*(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
  [v18 setFrame_];
  v28 = *(a2 + 56);
  v29 = *(a2 + 64);
  v30 = *(a2 + 72);
  v31 = *(a2 + 80);
  v202 = *&a3[qword_280EDEE70];
  [v202 setFrame_];
  v32 = *(a2 + 96);
  v33 = *(a2 + 104);
  v34 = *(a2 + 112);
  v35 = *(a2 + 120);
  v196 = *&a3[qword_280EDEE50];
  [v196 setFrame_];
  [v19 setFrame_];
  v36 = *&a3[qword_280EDEE68];
  [v36 setFrame_];
  v37 = *&a3[qword_280EDEE58];
  [v37 setFrame_];
  v38 = *&a3[qword_280EDEE60];
  [v38 setFrame_];
  v39 = *&a3[qword_280EDEE48];
  [v39 setFrame_];
  [*&a3[qword_280EDEE98] setFrame_];
  v40 = *(a2 + 352);
  v41 = *(a2 + 360);
  v42 = *(a2 + 368);
  v43 = *(a2 + 376);
  v201 = *&a3[qword_280EDEEA0];
  [v201 setFrame_];
  v200 = a3;
  v44 = *&a3[qword_280EDEE90];
  v45 = v207;
  [v44 setFrame_];
  sub_218819C18(v45, &v209);
  v46 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v199 = v210;
  if (!v210)
  {
    [v23 setHidden_];
    [v36 setHidden_];
    [v37 setHidden_];
    [v38 setHidden_];
    [v39 setHidden_];
    v52 = v202;
    goto LABEL_59;
  }

  v193 = v39;
  v194 = v38;
  v187 = v44;
  v189 = v36;
  v195 = v209;
  v191 = v214;
  v192 = v37;
  v47 = v45 >> 60;
  v48 = v204;
  v203 = v216;
  v183 = v217;
  v184 = v215;
  v185 = v213;
  if ((v45 >> 60) > 8)
  {
    goto LABEL_11;
  }

  if (((1 << v47) & 0x19E) != 0)
  {
    [v23 setUserInteractionEnabled_];
    v49 = [v23 layer];
    LODWORD(v50) = 1.0;
    v51 = v49;
    goto LABEL_13;
  }

  if (v47 != 5)
  {
    if (v47 == 6)
    {
      [v23 setUserInteractionEnabled_];
      v51 = [v23 layer];
      goto LABEL_12;
    }

LABEL_11:
    sub_2187FF18C();
    v58 = v57;
    v182 = v57;
    v59 = swift_projectBox();
    v60 = v188;
    sub_2195D5A4C(v59 + v58[16], v188);
    v61 = *(v60 + 1);
    sub_2195D59EC(v60, type metadata accessor for MastheadModelSupplementaryInfo);
    [v23 setUserInteractionEnabled_];
    v51 = [v23 layer];
    v62 = swift_projectBox();
    sub_2195D5A4C(v62 + v182[16], v60);
    v63 = *(v60 + 1);
    sub_2195D59EC(v60, type metadata accessor for MastheadModelSupplementaryInfo);
    LODWORD(v50) = 1.0;
    if (v63)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_218A6E4C8();
  [v23 setUserInteractionEnabled_];
  v51 = [v23 layer];
  sub_218A6E4C8();
  v55 = v54;
  v56 = swift_projectBox();
  LODWORD(v50) = 1.0;
  if ((*(v56 + *(v55 + 64)) & 1) == 0)
  {
LABEL_12:
    LODWORD(v50) = 0.5;
  }

LABEL_13:
  [v51 setOpacity_];

  v64 = &selRef_boldSystemFontOfSize_;
  v188 = v47;
  v206 = v23;
  if (v47 == 5)
  {
    sub_218A6E4C8();
    v65 = swift_projectBox();
    v66 = v205;
    v67 = v198;
    v182 = *(v205 + 16);
    (v182)(v198, v65, v48);
    v181 = *(v66 + 88);
    v68 = v181(v67, v48);
    v69 = *MEMORY[0x277D30130];
    if (v68 == *MEMORY[0x277D30130])
    {
      v203 = *(v66 + 96);
      v203(v67, v48);
      sub_218A6E5D0(0);
LABEL_21:
      v74 = *(v70 + 64);
      v75 = sub_219BDD9E4();
      v198 = *(*(v75 - 8) + 8);
      (v198)(&v67[v74], v75);
      sub_2195D59EC(v67, type metadata accessor for AudioFeedTrack);
      [v206 setHidden_];
      [v192 setHidden_];
      v76 = swift_projectBox();
      v77 = v186;
      (v182)(v186, v76, v48);
      if (v181(v77, v48) == v69)
      {
        v203(v77, v48);
        sub_218A6E5D0(0);
        (v198)(v77 + *(v78 + 64), v75);
        sub_2195D59EC(v77, type metadata accessor for AudioFeedTrack);
        v79 = 1;
      }

      else
      {
        (*(v205 + 8))(v77, v48);
        v79 = 2;
      }

      v52 = v202;
      v64 = &selRef_boldSystemFontOfSize_;
      v138 = v192;
      [v192 setPlaybackState_];
      [v138 setNumberOfLevels_];
      v142 = [objc_opt_self() secondaryLabelColor];
      v143 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v144 = [v142 resolvedColorWithTraitCollection_];

      [v138 setTintColor_];
      v145 = sub_218C8F710();
      v146 = v194;
      [v194 setAttributedText_];

      v46 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      [v146 setHidden_];
      v147 = v193;
      sub_218C8FA00(v193);
      [v147 setHidden_];
      goto LABEL_48;
    }

    if (v68 == *MEMORY[0x277D30128])
    {
      v67 = v198;
      v48 = v204;
      v203 = *(v66 + 96);
      v203(v198, v204);
      sub_218A6E554();
      goto LABEL_21;
    }

    v46 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v138 = v192;
    if (v68 != *MEMORY[0x277D30138])
    {
      (*(v66 + 8))(v198, v204);
      v52 = v202;
      goto LABEL_48;
    }
  }

  else
  {
    (*(v205 + 104))(v198, *MEMORY[0x277D30138], v48);
  }

  v71 = v191;
  if (v191)
  {

    v72 = v71;
    v73 = v71;
  }

  else
  {
    v80 = objc_opt_self();

    v73 = [v80 whiteColor];
    v72 = 0;
  }

  sub_21899E550();
  v198 = v81;
  inited = swift_initStackObject();
  v186 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v83 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v182 = v83;
  v84 = v72;
  v85 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v86 = MEMORY[0x277D76968];
    if (v203)
    {
      v86 = MEMORY[0x277D76938];
    }

    v87 = *v86;
    v88 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v88 pointSize];
    v85 = v89;
  }

  v90 = objc_opt_self();
  v91 = *MEMORY[0x277D743F8];
  v181 = v90;
  v92 = [v90 systemFontOfSize:v85 weight:v91];
  v93 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v92;
  v94 = *MEMORY[0x277D740C0];
  v180 = v93;
  *(inited + 64) = v93;
  *(inited + 72) = v94;
  v179 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 104) = v179;
  *(inited + 80) = v73;
  v177 = v94;
  v95 = v73;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  v178 = v96;
  swift_arrayDestroy();
  v97 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v98 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_2187079A8(&qword_280E8E118, type metadata accessor for Key);
  v99 = sub_219BF5204();

  v100 = [v97 initWithString:v98 attributes:v99];

  [v206 setAttributedTitle:v100 forState:0];
  v101 = v84;
  if (!v191)
  {
    v101 = [objc_opt_self() whiteColor];
  }

  v102 = v84;
  v103 = [v101 colorWithAlphaComponent_];

  v104 = swift_initStackObject();
  *(v104 + 16) = v186;
  *(v104 + 32) = v182;
  v105 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v106 = MEMORY[0x277D76968];
    if (v203)
    {
      v106 = MEMORY[0x277D76938];
    }

    v107 = *v106;
    v108 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v108 pointSize];
    v105 = v109;
  }

  *(v104 + 40) = [v181 systemFontOfSize:v105 weight:v91];
  v110 = v177;
  *(v104 + 64) = v180;
  *(v104 + 72) = v110;
  *(v104 + 104) = v179;
  *(v104 + 80) = v103;
  v111 = v103;
  sub_2188195F4(v104);
  swift_setDeallocating();
  swift_arrayDestroy();
  v112 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v113 = sub_219BF53D4();
  v114 = sub_219BF5204();

  v115 = [v112 initWithString:v113 attributes:v114];

  [v206 setAttributedTitle:v115 forState:1];
  sub_218718690(v197 + 16, v208);
  v116 = __swift_project_boxed_opaque_existential_1(v208, v208[3]);
  if (v188 == 5)
  {
    sub_219BF5114();
    v117 = sub_219BF5074();
  }

  else
  {
    v117 = 0;
  }

  v118 = v203 != 0;

  v195 = *v116;
  v119 = v206;
  v120 = [v206 layer];
  v199 = objc_opt_self();
  v121 = [v199 blackColor];
  v122 = [v121 CGColor];

  CopyWithAlpha = CGColorCreateCopyWithAlpha(v122, 0.15);
  [v120 setShadowColor_];

  v124 = [v119 layer];
  LODWORD(v125) = 1.0;
  [v124 setShadowOpacity_];

  v126 = [v119 layer];
  [v126 setShadowOffset_];

  v127 = [v119 layer];
  [v127 setShadowRadius_];

  v198 = v117;
  v128 = sub_218C8F610(v117, v118);
  [v119 setImage:v128 forState:0];
  if (v128)
  {
    v129 = v128;
    v130 = [v199 whiteColor];
    v131 = [v130 colorWithAlphaComponent_];

    v132 = [v129 imageWithTintColor:v131 renderingMode:1];
    v119 = v206;
  }

  else
  {
    v132 = 0;
  }

  v133 = v192;
  [v119 setImage:v132 forState:1];

  v134 = [v199 whiteColor];
  v64 = &selRef_boldSystemFontOfSize_;
  [v119 setTintColor_];

  v135 = v203;
  v136 = v185;
  if (v185)
  {
    v137 = v185;
  }

  else
  {
    v137 = *(*__swift_project_boxed_opaque_existential_1((v195 + 16), *(v195 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
    v136 = 0;
  }

  v138 = v133;
  v139 = v136;
  [v119 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v208);
  v46 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  [v119 setHidden_];
  v140 = v189;
  if (v135)
  {

    v141 = sub_218C8F3C8(v184, v135, v183);

    [v140 setAttributedText_];
  }

  [v140 setHidden_];
  [v133 setHidden_];
  [v194 setHidden_];
  [v193 setHidden_];
  v52 = v202;
LABEL_48:
  v148 = sub_219BED0C4();
  v45 = v207;
  if ((v148 & 1) == 0)
  {
    sub_218C8FBF8(&v209);
    v44 = v187;
    goto LABEL_59;
  }

  __swift_project_boxed_opaque_existential_1((v197 + 16), *(v197 + 40));
  sub_218C8E754(v196, v45);
  [v138 setNumberOfLevels_];
  v149 = [objc_opt_self() secondaryLabelColor];
  v150 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v151 = [v149 resolvedColorWithTraitCollection_];

  [v138 v64[237]];
  if (v188 != 5)
  {
    v154 = v204;
    v153 = v205;
    v155 = v190;
    (*(v205 + 104))(v190, *MEMORY[0x277D30138], v204);
    goto LABEL_54;
  }

  sub_218A6E4C8();
  v152 = swift_projectBox();
  v154 = v204;
  v153 = v205;
  v155 = v190;
  (*(v205 + 16))(v190, v152, v204);
  if ((*(v153 + 88))(v155, v154) != *MEMORY[0x277D30130])
  {
LABEL_54:
    (*(v153 + 8))(v155, v154);
    v159 = 2;
    goto LABEL_55;
  }

  (*(v153 + 96))(v155, v154);
  sub_218A6E5D0(0);
  v157 = *(v156 + 64);
  v158 = sub_219BDD9E4();
  (*(*(v158 - 8) + 8))(v155 + v157, v158);
  sub_2195D59EC(v155, type metadata accessor for AudioFeedTrack);
  v159 = 1;
LABEL_55:
  [v138 setPlaybackState_];
  v160 = [v196 imageView];
  v161 = v189;
  v44 = v187;
  if (v160)
  {
    v162 = v160;
    [v160 frame];
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v170 = v169;
  }

  else
  {
    v164 = 0.0;
    v166 = 0.0;
    v168 = 0.0;
    v170 = 0.0;
  }

  [v138 setFrame_];
  [v206 v46[313]];
  [v161 v46[313]];
  [v194 v46[313]];
  [v193 v46[313]];
  sub_218C8FBF8(&v209);
  v45 = v207;
LABEL_59:
  v171 = sub_21881A36C(v45);
  [v201 v46[313]];
  [v44 v46[313]];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v172 = 2;
  }

  else
  {
    v172 = 0;
  }

  [v44 setOverrideUserInterfaceStyle_];
  [v52 setAttributedText_];
  [v200 setIsAccessibilityElement_];
  v173 = *&v52[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_model];
  *&v52[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_model] = v45;

  sub_2188031B0(v173);
  v174 = &v52[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_cachedAccessibilityLabel];
  *v174 = 0;
  *(v174 + 1) = 0;
}

uint64_t sub_21881C594()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_21881C5D4(double a1, double a2, double a3, double a4)
{
  v7 = *(v4 + qword_280EDEE88);
  [v7 setFrame_];
  v8 = [v7 subviews];
  sub_2186C6148(0, &qword_280E8DAE0);
  v9 = sub_219BF5924();

  if (v9 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x21CECE0F0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  [v11 setFrame_];
}

uint64_t sub_21881C734(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 60) - 2 < 7)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_3:
    sub_2188172B8(v7, sub_2186FE720);
    return 0;
  }

  if (a1 >> 60)
  {
    sub_218A6E454();
    v17 = v16;
    v18 = swift_projectBox();
    sub_2188121C4(v18 + *(v17 + 48), v7, sub_2186FE720);
  }

  else
  {
    sub_2187FF18C();
    v14 = v13;
    v15 = swift_projectBox();
    sub_2188121C4(v15 + *(v14 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_2188121C4(&v4[*(v2 + 24)], v7, sub_2186FE720);
    sub_2188172B8(v4, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_3;
  }

  (*(v9 + 32))(v11, v7, v8);
  v19 = sub_219BEBFF4();
  (*(v9 + 8))(v11, v8);
  if (v19)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_21881C9F4(uint64_t a1, uint64_t a2)
{
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21881CAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2187F6AE4(0, a2, a3, a4, MEMORY[0x277D84098]);
    v5 = sub_219BF72E4();
    v6 = v5 + 56;
    while (1)
    {
      sub_219BF7AA4();
      MEMORY[0x21CECE850](0);
      result = sub_219BF7AE4();
      v8 = result & ~(-1 << *(v5 + 32));
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if ((v11 & v10) == 0)
      {
        *(v6 + 8 * v9) = v11 | v10;
        v12 = *(v5 + 16);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v14;
      }

      if (!--v4)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21881CB9C()
{
  result = qword_280E8F5B0;
  if (!qword_280E8F5B0)
  {
    sub_21881CC24(255, &unk_280E8F5C0, MEMORY[0x277D6CD38], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F5B0);
  }

  return result;
}

void sub_21881CC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881CC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881CCEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21881CD40()
{
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for MastheadModelSupplementaryInfo();
  result = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60;
  if ((v8 - 2) >= 7)
  {
    if (v8)
    {
      sub_218A6E454();
      v15 = v14;
      v16 = swift_projectBox();
      v17 = MEMORY[0x277D2D4E0];
      sub_218812294(v16 + *(v15 + 48), v3, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      v18 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEE90);

      v19 = v18;
      sub_219BEBF34();

      sub_2188174B8(v3, &qword_280EE33F0, v17);
    }

    else
    {
      sub_2187FF18C();
      v10 = v9;
      v11 = swift_projectBox();
      sub_21881CF74(v11 + *(v10 + 64), v7, type metadata accessor for MastheadModelSupplementaryInfo);
      v12 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEE90);

      v13 = v12;
      sub_219BEBF34();

      sub_218819144(v7, type metadata accessor for MastheadModelSupplementaryInfo);
    }
  }

  return result;
}

uint64_t sub_21881CF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21881D030@<X0>(void *a1@<X8>)
{
  *a1 = [objc_opt_self() clearColor];
  v2 = *MEMORY[0x277D6E408];
  v3 = sub_219BE9124();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_21881D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187E2B14(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for TodayExpandContext();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9F74();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D6E950])
  {
    sub_219BE8664();
    v16 = sub_219BE7BC4();

    v17 = sub_218B72744();

    v18 = *&v3[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
    v19 = [v3 view];
    if (v19)
    {
      v20 = v19;
      [v19 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v29 = *(v18 + 40);
      ObjectType = swift_getObjectType();
      (*(v29 + 48))(v17, a3, 0, 0, ObjectType, v29, v22, v24, v26, v28);

LABEL_4:
      (*(v12 + 8))(v14, v11);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (v15 == *MEMORY[0x277D6E928])
  {
    v31 = sub_219BE6DF4();
    (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
    sub_218809CC0(v7, v10);
    sub_21881AB5C(v7, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88], sub_2187E2B14);
    sub_21881D7A4(v10, 0, 0);
    sub_2187F691C(v10, type metadata accessor for TodayExpandContext);
    return;
  }

  if (v15 == *MEMORY[0x277D6E948])
  {
LABEL_8:
    sub_219BE8664();
    v32 = sub_219BE7BC4();

    v33 = sub_218B72744();

    v34 = *&v3[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
    v35 = [v3 view];
    if (v35)
    {
      v36 = v35;
      [v35 bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v45 = *(v34 + 40);
      v46 = swift_getObjectType();
      (*(v45 + 48))(v33, a3, 0, 0, v46, v45, v38, v40, v42, v44);

      return;
    }

    goto LABEL_22;
  }

  if (v15 != *MEMORY[0x277D6E978])
  {
    if (v15 == *MEMORY[0x277D6E930])
    {
      goto LABEL_8;
    }

    if (v15 != *MEMORY[0x277D6E958])
    {
      if (v15 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v47 = sub_219BE7BC4();

        v48 = [v47 collectionViewLayout];

        [v48 invalidateLayout];
        sub_219BE8664();
        v49 = sub_219BE7BC4();

        [v49 reloadData];
      }

      else if (v15 != *MEMORY[0x277D6E960] && v15 != *MEMORY[0x277D6E968] && v15 != *MEMORY[0x277D6E938] && v15 != *MEMORY[0x277D6E940])
      {
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_21881D7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25[1] = *v3;
  v25[0] = sub_219BDBD34();
  v5 = *(v25[0] - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v25[0]);
  v8 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - v9;
  v11 = sub_2187E1450(&qword_280EDE678, 255, type metadata accessor for TodayTracker);
  v12 = *(v11 + 144);
  v13 = type metadata accessor for TodayTracker();
  v12(v13, v11);
  sub_219BDBD24();
  v28 = v3;
  v29 = a1;
  sub_21881DBDC(0);
  sub_219BE3204();
  v14 = v25[0];
  (*(v5 + 16))(v8, v10, v25[0]);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject() + v15;
  v17 = v14;
  (*(v5 + 32))(v16, v8, v14);
  v18 = sub_219BE2E54();
  sub_219BE2F94();

  v19 = sub_219BE2E54();
  sub_219BE2FE4();

  v20 = swift_allocObject();
  v21 = v26;
  v22 = v27;
  *(v20 + 16) = v26;
  *(v20 + 24) = v22;
  sub_2188202A8(v21);
  v23 = sub_219BE2E54();
  sub_219BE3024();

  return (*(v5 + 8))(v10, v17);
}

uint64_t sub_21881DAC8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21881DB0C()
{
  sub_219BDF4E4();
  sub_2187DD9B8(&unk_280EE8770, 255, MEMORY[0x277D2DAF8]);
  sub_219BDD214();
  sub_219BE0654();
  sub_2187DD9B8(&qword_280EE8390, 255, MEMORY[0x277D2E688]);
  return sub_219BDD214();
}

void sub_21881DC10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21881DC8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(v2, ObjectType, v3);
}

uint64_t sub_21881DCEC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v1;
  v7 = type metadata accessor for TodayExpandContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_219BE7B04();
  if (v10 >> 62)
  {
    if (v10 >> 62 == 1 || v10 != 0x8000000000000000)
    {
      type metadata accessor for TodayInteractor.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v11 = 0;
      sub_2187DD4F0(0, &unk_280EE6EA0, sub_21881DBDC, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE2FF4();
    }
  }

  else
  {
    sub_21880BB00(v10);
  }

  v42 = v9;
  v43 = v8;
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v6;
  v46 = ObjectType;
  sub_219BE7B14();
  v13 = *(v1 + *((*v5 & *v1) + 0xC0) + 8);
  v14 = swift_getObjectType();
  LOBYTE(v48) = 7;
  (*(v13 + 32))(&v50, &v48, v14, v13);
  v15 = v50;
  v16 = v51;
  v17 = v52;
  v18 = v53;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v41 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  v20 = sub_21880AECC();
  v47 = a1;
  v22 = v21;
  v23 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v24 = sub_2186FC3BC();
  *(v19 + 64) = v24;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v48 = 0;
  v49 = 0xE000000000000000;
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v53 = v18;
  sub_219BF7484();
  v25 = v48;
  v26 = v49;
  *(v19 + 96) = v23;
  *(v19 + 104) = v24;
  *(v19 + 72) = v25;
  *(v19 + 80) = v26;
  sub_219BF6214();
  sub_219BE5314();

  v27 = CACurrentMediaTime();
  MEMORY[0x28223BE20](v28);
  *(&v40 - 6) = v2;
  *(&v40 - 5) = v15;
  *(&v40 - 4) = v16;
  *(&v40 - 3) = v17;
  v29 = v47;
  *(&v40 - 2) = v18;
  *(&v40 - 1) = v29;
  type metadata accessor for TodayPrewarmResult();
  sub_219BE3204();
  v41 = sub_2187D9028();
  v30 = sub_219BF66A4();
  v31 = swift_allocObject();
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v31[5] = v18;
  sub_219BE2F84();

  v32 = v44;
  sub_2187F684C(v47, v44, type metadata accessor for TodayExpandContext);
  v33 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v34 = swift_allocObject();
  v35 = v45;
  v34[2] = *(v45 + 80);
  v34[3] = *(v35 + 88);
  v34[4] = v27;
  sub_21880BBE4(v32, v34 + v33, type metadata accessor for TodayExpandContext);
  v36 = sub_219BE2E54();
  sub_21881DBDC(0);
  sub_219BE2F84();

  v37 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v27;
  sub_219BE2FE4();

  v38 = sub_219BE2E54();
  v39 = sub_219BE3034();

  return v39;
}

uint64_t sub_21881E2EC()
{

  return swift_deallocObject();
}

uint64_t sub_21881E324()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 40) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21881E46C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = MEMORY[0x277D6CE70];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BE5054();
    v4 = MEMORY[0x277D6CE68];
  }

  v5 = *v4;
  v6 = sub_219BE2C74();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t sub_21881E51C@<X0>(uint64_t *a1@<X0>, void (*a2)(id)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a1 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_219C09BA0;
      v8 = MEMORY[0x277D839F0];
      *(v7 + 56) = MEMORY[0x277D839B0];
      *(v7 + 64) = v8;
      *(v7 + 32) = (v4 & 1) == 0;
      sub_219BF6214();
      sub_219BE5314();

      v9 = 0;
      if (v4)
      {
        v10 = objc_allocWithZone(MEMORY[0x277D6D138]);
        v11 = sub_219BF53D4();
        v9 = [v10 initWithMessage_];
      }

      a2(v9);

      v12 = MEMORY[0x277D6CE68];
    }

    else
    {
      v12 = MEMORY[0x277D6CE70];
    }

    v20 = *v12;
    v21 = sub_219BE2C74();
    v22 = *(*(v21 - 8) + 104);

    return v22(a3, v20, v21);
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_219BE5314();

    sub_219BF7484();
    v14 = objc_allocWithZone(MEMORY[0x277D6D138]);
    v15 = sub_219BF53D4();

    v16 = [v14 initWithMessage_];

    a2(v16);
    v17 = *MEMORY[0x277D6CE68];
    v18 = sub_219BE2C74();
    return (*(*(v18 - 8) + 104))(a3, v17, v18);
  }
}

void sub_21881E8EC(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21881E98C(v2, *a1, &v9);
  if (v10 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  else
  {
    v4 = v9;
    v5 = v11;
    v8 = v10;
    swift_beginAccess();
    v7 = *(v2 + 16);
    *(v2 + 16) = 0;

    v6 = v8;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 24) = v5;
}

double sub_21881E98C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6;
    NewsActivityInfoDeserializer.deserialize(userActivity:)(v7, &v14);

    if ((~v14 & 0xF000000000000007) != 0)
    {
      if (a2 == 7 && ((v14 >> 58) & 0x3C | (v14 >> 1) & 3) == 0x11)
      {
        v8 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v9 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v10 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v11 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v12 = v14;
        sub_2188382C8(v8, v9);
        sub_218970170(v12);
        *a3 = v8;
        a3[1] = v9;
        a3[2] = v10;
        a3[3] = v11;
        return result;
      }

      sub_218970170(v14);
    }
  }

  result = 0.0;
  *a3 = xmmword_219C14A10;
  a3[2] = 0;
  a3[3] = 0;
  return result;
}

uint64_t UISceneActivationState.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x756F72676B636162;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000012;
  }

  else
  {
    if (a1 != -1)
    {
      if (!a1)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6863617474616E75;
  }
}

uint64_t sub_21881EB34(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21881EB4C(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = type metadata accessor for TodayExpandContext();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a1;
  v31 = a1[1];
  v32 = v8;
  v9 = [*(v3 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionList) subscribedTagIDs];
  if (v9)
  {
    v10 = v9;
    v29 = sub_219BF5D44();
  }

  else
  {
    v29 = 0;
  }

  v28 = *(v3 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions);
  sub_219BED5B4();
  sub_2187D9028();
  v11 = sub_219BF66A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE21A4();

  __swift_destroy_boxed_opaque_existential_1(v33);
  v12 = CACurrentMediaTime();
  MEMORY[0x28223BE20](v13);
  *(&v27 - 2) = v3;
  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_219BE3204();
  v14 = sub_219BF66A4();
  sub_218820178(a2, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
  v15 = (*(v30 + 80) + 88) & ~*(v30 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = 0x6D726177657270;
  *(v16 + 32) = 0xE700000000000000;
  v17 = v28;
  *(v16 + 40) = v29;
  *(v16 + 48) = v17;
  v18 = v32;
  *(v16 + 72) = v31;
  *(v16 + 56) = v18;
  sub_2188201E0(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TodayExpandContext);
  type metadata accessor for TodayExpandResult();

  sub_219BE2F84();

  v19 = sub_219BE1C44();
  v20 = swift_allocObject();
  v20[2] = v12;
  v20[3] = 1.31042609e-306;
  v20[4] = -1.39234638e188;
  type metadata accessor for TodayPrewarmResult();
  sub_219BE2F94();

  v21 = sub_219BE1C44();
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = 1.31042609e-306;
  v22[4] = -1.39234638e188;
  sub_219BE2FE4();

  v23 = sub_219BE2E54();
  sub_219BE3034();

  v24 = sub_219BF66A4();
  v25 = sub_219BE3034();

  return v25;
}

uint64_t sub_21881F02C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21881F064()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);

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

uint64_t sub_21881F1A4()
{

  return swift_deallocObject();
}

uint64_t sub_21881F1E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  return sub_21881EB4C(v4, v1);
}

void sub_21881F258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_21881F304()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for TodayFeedServiceContext();
  v28 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = v3;
  MEMORY[0x28223BE20](v2);
  v6 = v27 - v5;
  sub_21880B9E0();
  v27[0] = *(v7 - 8);
  v8 = *(v27[0] + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  sub_219BF1B74();
  v13 = v6;
  v14 = v6;
  v15 = v0;
  sub_21881F92C(v14);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  v17 = sub_219BF1B24();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_2186FC3BC();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v20);
  v27[-2] = v15;
  v27[-1] = v13;
  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_219BE3204();
  sub_218820178(v12, v10, sub_21880B9E0);
  sub_218820178(v13, v4, type metadata accessor for TodayFeedServiceContext);
  v21 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
  v22 = (v8 + *(v28 + 80) + v21) & ~*(v28 + 80);
  v23 = swift_allocObject();
  sub_2188201E0(v10, v23 + v21, sub_21880B9E0);
  sub_2188201E0(v4, v23 + v22, type metadata accessor for TodayFeedServiceContext);
  v24 = sub_219BE2E54();
  v25 = sub_219BE3074();

  sub_218820248(v12, sub_21880B9E0);
  sub_218820248(v13, type metadata accessor for TodayFeedServiceContext);
  return v25;
}

uint64_t sub_21881F750()
{
  sub_21880B9E0();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for TodayFeedServiceContext();
  v6 = *(*(v5 - 8) + 80);
  v7 = sub_219BF1584();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v0 + ((v3 + v4 + v6) & ~v6);

  v10 = *(v5 + 36);
  v11 = sub_219BEE754();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return swift_deallocObject();
}

id sub_21881F92C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BF0644();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v18[0] = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
  v10 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  if (v10(0) == 6)
  {
    v11 = sub_219BF1AE4();
    v12 = *(v4 + 104);
    if (v11)
    {
      v12(v9, *MEMORY[0x277D32EF8], v3);
      v13 = *MEMORY[0x277D32EF0];
    }

    else
    {
      v13 = *MEMORY[0x277D32EF0];
      v12(v9, v13, v3);
    }
  }

  else
  {
    v13 = *MEMORY[0x277D32EF0];
    v12 = *(v4 + 104);
    v12(v9, v13, v3);
  }

  v12(v7, v13, v3);
  sub_2187EA20C(&qword_280E90ED0, 255, MEMORY[0x277D32F00]);
  sub_219BF5874();
  sub_219BF5874();
  if (v18[0] == v17[0] && v18[1] == v17[1])
  {
    v14 = 0;
  }

  else if (sub_219BF78F4())
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);

  LOBYTE(v18[0]) = v14;
  return sub_2187B7F10(v18, a1);
}

uint64_t sub_21881FC0C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for TodayFeedServiceContext();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_219BF0644();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v17 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_2187EA20C(&qword_280EC2DB0, 255, type metadata accessor for TodayFeedServiceContext);
  sub_219BEF384();
  v18 = v5;
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D32EF0])
  {
    return sub_219BED5A4();
  }

  if (v10 == *MEMORY[0x277D32EF8])
  {
    MEMORY[0x28223BE20](v10);
    sub_219BE3204();
    sub_218820178(a1, &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayFeedServiceContext);
    v12 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v13 = swift_allocObject();
    sub_2188201E0(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TodayFeedServiceContext);
    v14 = sub_219BE2E54();
    sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
    v15 = sub_219BE2F84();

    return v15;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000015, 0x8000000219D1B0E0);
    v16 = v17;
    sub_219BEF384();
    sub_219BF7484();
    (*(v18 + 8))(v16, v4);
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218820048()
{
  v1 = (type metadata accessor for TodayFeedServiceContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = sub_219BEE754();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_218820178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2188201E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218820248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188202A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall AppDelegate.didCommitFirstFrame()()
{
  sub_2186C6E00(v4);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_219BE27C4();
  v0 = sub_219BE1E24();
  if (v0)
  {
    v1 = v0;
    __swift_destroy_boxed_opaque_existential_1(v4);
    v2 = objc_opt_self();
    v6 = sub_219114810;
    v7 = v1;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_218793E0C;
    v5 = &block_descriptor_96;
    v3 = _Block_copy(v4);

    [v2 schedulePostLaunchBlockForMainThread_];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_218820444(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = qword_280EE9308;

  if (v11 != -1)
  {
    swift_once();
  }

  type metadata accessor for DeleteWebDataStartupTask();
  sub_21879DD50(qword_280EC2338, v12, type metadata accessor for DeleteWebDataStartupTask);
  v13 = sub_219BDC7D4();
  if (LOBYTE(v22[0]) == 1)
  {
    v14 = objc_opt_self();
    v15 = [v14 defaultDataStore];
    v16 = [v14 allWebsiteDataTypes];
    v17 = sub_219BF5D44();

    v18 = sub_219BF5D34();
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v17;
    v19[4] = a1;
    v19[5] = sub_218B06728;
    v19[6] = v10;
    v22[4] = sub_218B0676C;
    v22[5] = v19;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_218B0665C;
    v22[3] = &block_descriptor_13_0;
    v20 = _Block_copy(v22);
    v21 = v15;

    [v21 fetchDataRecordsOfTypes:v18 completionHandler:v20];

    _Block_release(v20);
  }

  else
  {
    a2(v13);
  }
}

uint64_t sub_2188206D4()
{

  return swift_deallocObject();
}

uint64_t sub_218820714()
{

  return swift_deallocObject();
}

uint64_t sub_218820764()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 1;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62880 = result;
  return result;
}

void sub_218820974(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_2188209D4();
  swift_unknownObjectRelease();
}

uint64_t sub_2188209D4()
{
  v1 = v0;
  v60 = *MEMORY[0x277D85000] & *v0;
  v2 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v55 - v4;
  v66 = sub_219BE3984();
  v74 = *(v66 - 8);
  v5 = MEMORY[0x28223BE20](v66);
  v65 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = v55 - v7;
  sub_2187DD4F0(0, &qword_280EE65C0, MEMORY[0x277D31758], v2);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = v55 - v9;
  v82 = sub_219BE38C4();
  v10 = *(v82 - 8);
  v11 = MEMORY[0x28223BE20](v82);
  v73 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = v55 - v13;
  v14 = sub_219BE3514();
  v15 = *(v14 - 8);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E8C060, MEMORY[0x277D31550], MEMORY[0x277D84560]);
  v19 = *(v15 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v56 = swift_allocObject();
  v21 = v56 + v20;
  v22 = *(v15 + 104);
  v22(v56 + v20, *MEMORY[0x277D314C8], v14);
  v23 = *MEMORY[0x277D314D0];
  v80 = v19;
  v22(v21 + v19, v23, v14);
  v22(v21 + 2 * v19, *MEMORY[0x277D314D8], v14);
  v24 = v14;
  v25 = *v1;
  v26 = *MEMORY[0x277D85000];
  v83 = *((*MEMORY[0x277D85000] & *v1) + 0x110);
  v58 = *((v26 & v25) + 0x70);
  v57 = *((v26 & v25) + 0x68);
  v27 = *(v16 + 16);
  v78 = (v10 + 48);
  v79 = v27;
  v70 = (v10 + 16);
  v71 = (v10 + 32);
  v69 = (v10 + 88);
  v68 = *MEMORY[0x277D31720];
  v67 = (v10 + 8);
  v81 = v16 + 16;
  v77 = (v16 + 8);
  v63 = *MEMORY[0x277D317B0];
  v62 = (v74 + 13);
  v28 = (v74 + 1);
  v29 = 3;
  v55[1] = v21;
  v30 = v21;
  v74 = v1;
  v72 = v14;
  do
  {
    v31 = v28;
    v79(v18, v30, v24);
    sub_218718690(v1 + v83, v84);
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v32 = v76;
    sub_219BE3AC4();
    v33 = v32;
    v34 = v32;
    v35 = v82;
    if ((*v78)(v34, 1, v82) == 1)
    {
      (*v77)(v18, v24);
      sub_218817724(v33, &qword_280EE65C0, MEMORY[0x277D31758]);
      __swift_destroy_boxed_opaque_existential_1(v84);
    }

    else
    {
      v36 = v75;
      (*v71)(v75, v33, v35);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v37 = v73;
      (*v70)(v73, v36, v35);
      v38 = (*v69)(v37, v35);
      if (v38 == v68)
      {
        sub_218718690(v1 + v83, v84);
        __swift_project_boxed_opaque_existential_1(v84, v85);
        v39 = v64;
        sub_219BE3A84();
        __swift_destroy_boxed_opaque_existential_1(v84);
        v40 = v65;
        v41 = v66;
        (*v62)(v65, v63, v66);
        v42 = sub_219BE3974();
        v43 = v40;
        v28 = v31;
        v44 = *v31;
        v44(v43, v41);
        if (v42)
        {
          v45 = sub_219BE34F4();
          v47 = v46;
          v48 = sub_219BEEC14();
          v49 = v59;
          (*(*(v48 - 8) + 56))(v59, 1, 1, v48);
          v50 = (*(*(v60 + 88) + 96))(v45, v47, v49, *(v60 + 80));
          v61 = v50;

          sub_218817724(v49, &qword_280E918A8, MEMORY[0x277D322C0]);
          v84[0] = v50;
          v51 = MEMORY[0x277D6D888];
          sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
          v1 = v74;
          sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v51);
          sub_219BE6EF4();
          v44(v39, v66);
          (*v67)(v75, v82);
          v24 = v72;
          (*v77)(v18, v72);
        }

        else
        {
          v44(v39, v41);
          (*v67)(v75, v35);
          v24 = v72;
          (*v77)(v18, v72);
        }
      }

      else
      {
        v52 = v35;
        v53 = *v67;
        (*v67)(v36, v52);
        v24 = v72;
        (*v77)(v18, v72);
        v53(v37, v52);
        v1 = v74;
      }
    }

    v30 += v80;
    --v29;
  }

  while (v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t sub_2188213BC()
{
  v0 = sub_219BE9884();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 isRunningPerformanceTest];

  if (v8)
  {
    sub_219BE9874();
    (*(v1 + 16))(v4, v6, v0);
    sub_218821584();
    swift_allocObject();
    v9 = sub_219BE3014();
    (*(v1 + 8))(v6, v0);
    return v9;
  }

  else
  {
    sub_218821584();
    swift_allocObject();
    return sub_219BE30B4();
  }
}

void sub_218821584()
{
  if (!qword_280EE7020)
  {
    sub_219BE9884();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7020);
    }
  }
}

uint64_t sub_2188215DC()
{
  if (qword_280EE92E0 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138);
  sub_219BDC7D4();
  sub_21870F384(0, &qword_280EE69D8, MEMORY[0x277D83B88], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2188216C8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62868 = result;
  return result;
}

uint64_t sub_218821894(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresentationOperationManagerDataStore();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2188218F8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62878 = result;
  return result;
}

id sub_218821AC8()
{
  if (qword_280EE92F8 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138);
  sub_219BDC7D4();
  v0 = v18[0];
  result = FCBundle();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_219BF53D4();
  v4 = [v2 objectForInfoDictionaryKey_];

  if (v4)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v14;
      v5 = v15;
      goto LABEL_12;
    }
  }

  else
  {
    sub_218806FD0(v18);
  }

  v6 = 0;
  v5 = 0xE000000000000000;
LABEL_12:
  v7 = &qword_280EE9000;
  if (v0 == __PAIR128__(v5, v6) || (sub_219BF78F4() & 1) != 0)
  {
  }

  else
  {
    if (qword_27CC085B8 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_27CCD8AC8);

    v9 = sub_219BE5414();
    v10 = sub_219BF61D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v18[0] = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_2186D1058(v6, v5, v18);
      *(v11 + 12) = 2080;
      v12 = sub_2186D1058(v0, *(&v0 + 1), v18);

      *(v11 + 14) = v12;
      _os_log_impl(&dword_2186C1000, v9, v10, "The current app version is %s, but our stored app launch count is for version %s.\nResetting the Presentation Operation app launch count to 0.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v13, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    else
    {
    }

    if (qword_280EE92D0 != -1)
    {
      swift_once();
    }

    *&v18[0] = 0;
    sub_218821894(&qword_280E99130);
    sub_219BDCA54();
    *&v18[0] = v6;
    *(&v18[0] + 1) = v5;
    sub_219BDCA54();

    v7 = &qword_280EE9000;
  }

  if (v7[90] != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  sub_21870F384(0, &qword_280EE69D8, MEMORY[0x277D83B88], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218821F6C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62860 = result;
  return result;
}

uint64_t sub_218822184(void *a1)
{
  v2 = sub_219BF5474();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138);
  sub_219BDC7D4();
  v6 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v6 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_219BF5464();
    v7 = sub_219BF5424();
    v9 = v8;

    (*(v3 + 8))(v5, v2);
    if (v9 >> 60 != 15)
    {
      sub_219BE1994();
      swift_allocObject();
      sub_219BE1984();
      sub_218822764();
      sub_2188229E0();
      sub_219BE1974();

      sub_2186DD368(0, &qword_280EE6B98, sub_218822764, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v10 = sub_219BE3014();
      sub_218822A58(v7, v9);
      return v10;
    }
  }

  else
  {
  }

  v13 = MEMORY[0x277D84F98];
  sub_2186DD368(0, &qword_280EE6B98, sub_218822764, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218822594()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62890 = result;
  return result;
}

void sub_218822764()
{
  if (!qword_280E8FAC8)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FAC8);
    }
  }
}

uint64_t sub_218822810()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62888 = result;
  return result;
}

unint64_t sub_2188229E0()
{
  result = qword_280E8FAB0;
  if (!qword_280E8FAB0)
  {
    sub_218822764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FAB0);
  }

  return result;
}

uint64_t sub_218822A5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2186C6190(a1, a2);
  }

  return a1;
}

uint64_t sub_218822A94()
{
  v0 = sub_219BF5474();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE92E8 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138);
  sub_219BDC7D4();
  v4 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v4 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_219BF5464();
    v5 = sub_219BF5424();
    v7 = v6;

    (*(v1 + 8))(v3, v0);
    if (v7 >> 60 != 15)
    {
      sub_219BE1994();
      swift_allocObject();
      sub_219BE1984();
      sub_2186E2394();
      sub_218CD1C30();
      sub_219BE1974();

      sub_2186DD368(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v8 = sub_219BE3014();
      sub_218822A58(v5, v7);
      return v8;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x277D84FA0];
  sub_2186DD368(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218822EA0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62870 = result;
  return result;
}

uint64_t sub_218823094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  sub_218821894(&qword_280E99130);
  sub_219BDCA54();
  sub_21870F384(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2188231F0()
{
  v1 = sub_219BE7D04();
  v12 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = sub_219BE3DF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BE44E4();
  sub_218823400();
  (*(v8 + 8))(v10, v7);
  if ((*(v0 + 72) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
    sub_2187B9A9C(&v13);
    if (v13 != 3)
    {
      sub_219BE7CD4();
      sub_21922185C(v6, v4);
      v11 = *(v12 + 8);
      v11(v4, v1);
      v11(v6, v1);
    }
  }
}

uint64_t sub_218823400()
{
  v1 = sub_219BE3DA4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_219BE3DF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v0, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D34E38])
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 16))(v5, v7, v1);
    v13 = (*(v2 + 88))(v5, v1);
    if (v13 == *MEMORY[0x277D34E28])
    {
      sub_218823ADC(0, &unk_280E8BE50, MEMORY[0x277D84560]);
      sub_219BE7D04();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09EC0;
      sub_219BE7CC4();
      sub_219BE7CB4();
      v21 = v14;
LABEL_4:
      sub_218823A94(&qword_280EE4E38, MEMORY[0x277D6DD18]);
      sub_218823ADC(0, &unk_280E8F4D0, MEMORY[0x277D83940]);
      sub_218823B3C();
      sub_219BF7164();
LABEL_9:
      v18 = *(v2 + 8);
      v18(v7, v1);
      return (v18)(v5, v1);
    }

    if (v13 == *MEMORY[0x277D34E20])
    {
      sub_219BE7CB4();
      goto LABEL_9;
    }

    if (v13 != *MEMORY[0x277D34E18])
    {
      sub_219BE7D04();
      v21 = MEMORY[0x277D84F90];
      goto LABEL_4;
    }

    sub_218823ADC(0, &unk_280E8BE50, MEMORY[0x277D84560]);
    sub_219BE7D04();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09EC0;
    sub_219BE7CE4();
    sub_219BE7CB4();
    v21 = v19;
    sub_218823A94(&qword_280EE4E38, MEMORY[0x277D6DD18]);
    sub_218823ADC(0, &unk_280E8F4D0, MEMORY[0x277D83940]);
    sub_218823B3C();
    sub_219BF7164();
    return (*(v2 + 8))(v7, v1);
  }

  else
  {
    v15 = v12;
    v16 = *MEMORY[0x277D34E30];
    sub_219BE7D04();
    v21 = MEMORY[0x277D84F90];
    sub_218823A94(&qword_280EE4E38, MEMORY[0x277D6DD18]);
    sub_218823ADC(0, &unk_280E8F4D0, MEMORY[0x277D83940]);
    sub_218823B3C();
    if (v15 == v16)
    {
      return sub_219BF7164();
    }

    else
    {
      sub_219BF7164();
      return (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_218823A94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218823ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_219BE7D04();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218823B3C()
{
  result = qword_280E8F4C8;
  if (!qword_280E8F4C8)
  {
    sub_218823ADC(255, &unk_280E8F4D0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F4C8);
  }

  return result;
}

uint64_t sub_218823BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  sub_219BF5244();
  sub_218821894(&qword_280E99130);
  sub_219BDCA54();

  sub_21870F384(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218823CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C0B8C0;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    *(v7 + 96) = sub_219BE5A54();
    *(v7 + 104) = sub_2187BB0F4(&unk_280EE5E00, MEMORY[0x277D6D2E0]);
    *(v7 + 72) = v6;

    v8 = v6;
    v9 = [v8 isKeyWindow];
    v10 = MEMORY[0x277D839F0];
    *(v7 + 136) = MEMORY[0x277D839B0];
    *(v7 + 144) = v10;
    *(v7 + 112) = v9;
    sub_2186C6148(0, &qword_280E8D790);
    v11 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    sub_219BDCE74();
    v12 = sub_219BDCE64();
    sub_219BDCE54();

    v13 = objc_opt_self();
    v14 = v8;
    v15 = [v13 blackColor];
    [v14 setBackgroundColor_];
  }
}

void sub_218823F0C()
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
      *v5 = 0;
      _os_log_impl(&dword_2186C1000, v3, v4, "Sports sync manager waiting for tracking consent...done", v5, 2u);
      MEMORY[0x21CECF960](v5, -1, -1);
    }

    sub_218824030();
    dispatch_group_leave(*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup]);
  }
}

void sub_218824030()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  sub_219BE2104();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v3 = objc_opt_self();
  v4 = [v3 sharedAccount];
  v5 = [v4 isUserSignedInToiCloud];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  LOBYTE(v27) = v6;
  sub_218824520();
  sub_219BE2114();
  v7 = [v3 sharedAccount];
  [v7 addObserver_];

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62730);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2186C1000, v9, v10, "Sports sync manager preparing subscriptions for syncing...", v11, 2u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  v12 = sub_218824D4C();
  [v12 setSuspended_];

  v13 = *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup);
  dispatch_group_enter(v13);
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController);
  sub_2186C6148(0, &qword_280E8E3B0);
  v15 = sub_219BF66A4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v2;
  v31 = sub_218838E50;
  v32 = v17;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_218838DAC;
  v30 = &block_descriptor_43;
  v18 = _Block_copy(&v27);

  [v14 fetchSubscribedTagsWithCallbackQueue:v15 preferCache:0 completion:v18];
  _Block_release(v18);

  v19 = sub_219BE5414();
  v20 = sub_219BF6214();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2186C1000, v19, v20, "Sports sync manager preparing user info for syncing...", v21, 2u);
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  dispatch_group_enter(v13);
  v22 = *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v2;
  v31 = sub_218824E5C;
  v32 = v24;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_218793E0C;
  v30 = &block_descriptor_15_1;
  v25 = _Block_copy(&v27);

  [v22 performFirstSyncWithCompletion_];
  _Block_release(v25);
  sub_218825828();
  v26 = NewsCoreUserDefaults();
  [v26 addObserver:v1 forKeyPath:*MEMORY[0x277D30C90] options:3 context:0];
}

uint64_t sub_2188244AC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188244E4()
{

  return swift_deallocObject();
}

unint64_t sub_218824520()
{
  result = qword_280EC31E8;
  if (!qword_280EC31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31E8);
  }

  return result;
}

uint64_t sub_218824574(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E4964656E676973;
  if (v2 != 1)
  {
    v4 = 0x754F64656E676973;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D72657465646E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000064656E69;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E4964656E676973;
  if (*a2 != 1)
  {
    v8 = 0x754F64656E676973;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D72657465646E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000064656E69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

void sub_218824684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 0xE800000000000000;
  v5 = 0x6E4964656E676973;
  if (v2 != 1)
  {
    v5 = 0x754F64656E676973;
    v4 = 0xE900000000000074;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D72657465646E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000064656E69;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6E4964656E676973;
  if (v3 != 1)
  {
    v9 = 0x754F64656E676973;
    v8 = 0xE900000000000074;
  }

  if (*a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6D72657465646E75;
  }

  if (*a2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xEC00000064656E69;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_219BF78F4();

    if ((v12 & 1) == 0)
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v13 = sub_219BE5434();
      __swift_project_value_buffer(v13, qword_280F62730);
      oslog = sub_219BE5414();
      v14 = sub_219BF6214();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v28 = v16;
        *v15 = 136446466;
        v17 = 0xE800000000000000;
        v18 = 0x6E4964656E676973;
        if (v2 != 1)
        {
          v18 = 0x754F64656E676973;
          v17 = 0xE900000000000074;
        }

        if (v2)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0x6D72657465646E75;
        }

        if (v2)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0xEC00000064656E69;
        }

        v21 = sub_2186D1058(v19, v20, &v28);

        *(v15 + 4) = v21;
        *(v15 + 12) = 2082;
        v22 = 0xE800000000000000;
        v23 = 0x6E4964656E676973;
        if (v3 != 1)
        {
          v23 = 0x754F64656E676973;
          v22 = 0xE900000000000074;
        }

        if (v3)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0x6D72657465646E75;
        }

        if (v3)
        {
          v25 = v22;
        }

        else
        {
          v25 = 0xEC00000064656E69;
        }

        v26 = sub_2186D1058(v24, v25, &v28);

        *(v15 + 14) = v26;
        _os_log_impl(&dword_2186C1000, oslog, v14, "Sports sync manager iCloud account change, previous=%{public}s, current=%{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v16, -1, -1);
        MEMORY[0x21CECF960](v15, -1, -1);
      }

      else
      {
      }
    }
  }
}

void *sub_2188249B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2186D0D3C(0, &unk_280E8B5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_218824A44(uint64_t a1, unint64_t a2)
{
  v3 = sub_218824A90(a1, a2);
  sub_218824C60(&unk_282A21A08);
  return v3;
}

uint64_t sub_218824A90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2188249B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_219BF73B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_219BF55C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2188249B8(v10, 0);
        result = sub_219BF7304();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_218824BC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218824C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218824C60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_218828394(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_218824D4C()
{
  v1 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v5 = sub_219BF53D4();
    [v4 setName_];

    [v4 setMaxConcurrentOperationCount_];
    [v4 setUnderlyingQueue_];
    [v4 setQualityOfService_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_218824E68()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
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
      _os_log_impl(&dword_2186C1000, v3, v4, "Sports sync manager preparing user info for syncing... done (time elapsed=%f)", v5, 0xCu);
      MEMORY[0x21CECF960](v5, -1, -1);
    }

    v7 = sub_218824D4C();
    [v7 setSuspended_];

    v8 = CACurrentMediaTime();
    v9 = sub_219BE5414();
    v10 = sub_219BF6214();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2186C1000, v9, v10, "Sports sync manager waiting to prepare for syncing", v11, 2u);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = v8;
    v13 = v1;
    sub_2188250BC(sub_2188284A0, v12);
  }

  return result;
}

uint64_t sub_218825084()
{

  return swift_deallocObject();
}

uint64_t sub_2188250BC(void (*a1)(), uint64_t a2)
{
  v4 = sub_219BED174();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v15 = *(v7 - 8);
  v16 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_218825460(1u);
  if (a1)
  {
    v23 = a1;
    v24 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_218793E0C;
    v22 = &block_descriptor_25;
    a1 = _Block_copy(&aBlock);
  }

  [v10 setCompletionBlock_];
  _Block_release(a1);
  v11 = sub_218824D4C();
  [v11 addOperation_];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_2188400CC;
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218793E0C;
  v22 = &block_descriptor_22_1;
  v13 = _Block_copy(&aBlock);

  sub_219BED1A4();
  v18 = MEMORY[0x277D84F90];
  sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  (*(v15 + 8))(v9, v16);
}

id sub_218825460(unsigned __int8 a1)
{
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
    v6 = swift_slowAlloc();
    v23 = v6;
    v7 = 0xEE006E6F6974617ALL;
    *v5 = 136446210;
    v8 = 0x696C616974696E69;
    v9 = 0x8000000219CEEFC0;
    v10 = 0xD00000000000001CLL;
    v11 = 0x8000000219CEEFA0;
    v12 = 0xD000000000000015;
    if (a1 != 3)
    {
      v12 = 0xD000000000000010;
      v11 = 0x8000000219CEEF80;
    }

    if (a1 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (!a1)
    {
      v8 = 0xD00000000000001ELL;
      v7 = 0x8000000219CEEFE0;
    }

    if (a1 <= 1u)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (a1 <= 1u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_2186D1058(v13, v14, &v23);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_2186C1000, v3, v4, "Create sync state init operation on event=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v19 = objc_allocWithZone(v18);
  v20 = sub_219BE27D4();
  [v20 setQueuePriority_];
  [v20 setQualityOfService_];
  v21 = sub_219BF53D4();
  [v20 setName_];

  return v20;
}

uint64_t sub_21882575C()
{

  return swift_deallocObject();
}

void sub_218825794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218825828()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_219BE1854();
  [v2 addObserver:v0 selector:sel_handleSyncCompletionNotification name:v3 object:0];

  v4 = [v1 defaultCenter];
  v5 = sub_219BE1864();
  [v4 addObserver:v0 selector:sel_handleSyncSettingChangedNotification name:v5 object:0];

  v6 = [v1 defaultCenter];
  v7 = sub_219BE1834();
  [v6 addObserver:v0 selector:sel_handleiTunesAccountChanged name:v7 object:0];
}

uint64_t sub_218825978(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = MEMORY[0x28223BE20](Strong);
    sub_219BE3204();
    *(swift_allocObject() + 16) = a2;
    v5 = sub_219BE2E54();
    type metadata accessor for SportsSyncManager();
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();

    return v7;
  }

  else
  {
    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218825B50(char a1)
{
  swift_getObjectType();
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
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    if (a1)
    {
      v7 = 0x73696C6863746177;
    }

    else
    {
      v7 = 1937204590;
    }

    if (a1)
    {
      v8 = 0xE900000000000074;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    v9 = sub_2186D1058(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "Sports sync manager checking for '%{public}s' access...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v10);
  sub_218825DB8();
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1 & 1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F84();

  return v12;
}