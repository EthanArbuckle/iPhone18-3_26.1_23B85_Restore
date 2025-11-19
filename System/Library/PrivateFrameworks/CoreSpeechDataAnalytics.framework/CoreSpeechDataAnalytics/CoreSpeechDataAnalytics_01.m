uint64_t sub_2478F8FB8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = *(v2 + 200);

    v6 = sub_2478F9A90;
  }

  else
  {
    v6 = sub_2478F90E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2478F90E0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  *(v0 + 296) = v2;
  v3 = *(*(v0 + 112) + 88);
  v4 = *(*v3 + 528);

  v4(v2);
  if (v1)
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 232);
    v7 = *(v0 + 200);

    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);

    v16 = *(v0 + 8);
LABEL_25:

    return v16();
  }

  v17 = *(v0 + 112);

  if ((sub_2478F6F0C() & 1) == 0)
  {
    v18 = *(v0 + 248);
    v32 = *(v0 + 232);
    v33 = *(v0 + 200);

    v34 = *(v0 + 208);
    goto LABEL_23;
  }

  v18 = *(v0 + 200);
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v19 = *(v18 + 16);
  v20 = *(v0 + 200);
  if (!v19)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v3 = 0;
    v88 = v20;
    v90 = v18 & 0xC000000000000001;
    v84 = *(v0 + 160);
    v86 = v20 + 32;
    v21 = (v84 + 32);
    v92 = MEMORY[0x277D84F90];
    while (v90)
    {
      v22 = MEMORY[0x24C1AE890](v3, *(v0 + 200));
      v23 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_29;
      }

LABEL_13:
      v18 = v19;
      v24 = *(v0 + 152);
      v25 = *(v0 + 128);
      v26 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v22 + v26, v25);

      if ((*(v84 + 48))(v25, 1, v24) == 1)
      {
        sub_2478E9620(*(v0 + 128), &qword_27EE57278, &unk_247950590);
        v19 = v18;
      }

      else
      {
        v27 = *v21;
        (*v21)(*(v0 + 176), *(v0 + 128), *(v0 + 152));
        v19 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_24793AADC(0, *(v92 + 2) + 1, 1, v92);
        }

        v29 = *(v92 + 2);
        v28 = *(v92 + 3);
        if (v29 >= v28 >> 1)
        {
          v92 = sub_24793AADC(v28 > 1, v29 + 1, 1, v92);
        }

        v30 = *(v0 + 176);
        v31 = *(v0 + 152);
        *(v92 + 2) = v29 + 1;
        v27(&v92[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v29], v30, v31);
      }

      ++v3;
      if (v23 == v19)
      {
        v46 = *(v0 + 200);
        goto LABEL_34;
      }
    }

    if (v3 >= *(v88 + 16))
    {
      goto LABEL_30;
    }

    v22 = *(v86 + 8 * v3);

    v23 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_13;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v19 = sub_24794F414();
    v20 = *(v0 + 200);
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v92 = MEMORY[0x277D84F90];
LABEL_34:
  v47 = *(v0 + 256);

  if (!v47)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_51:
    v48 = *(v0 + 336);
    v60 = *(v0 + 232);
    v18 = *(v0 + 216);

    v61 = *(v92 + 2);
    v62 = 2;
    if (v61 < v18 && (v48 & 1) == 0)
    {
      v63 = *(v0 + 224);
      v64 = *(v0 + 208);
      v36 = __CFADD__(v63, v64);
      v65 = v63 + v64;
      if (v36)
      {
        goto LABEL_77;
      }

      if (v61 < v65)
      {

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v66 = sub_24794ED34();
        __swift_project_value_buffer(v66, qword_27EE58DF8);
        v67 = sub_24794ED14();
        v68 = sub_24794F154();
        v69 = os_log_type_enabled(v67, v68);
        v70 = *(v0 + 248);
        if (v69)
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_2478E1000, v67, v68, "#ButtonPressActionEvent: not enough events in biome stream to create manifest", v71, 2u);
          MEMORY[0x24C1AF180](v71, -1, -1);

LABEL_74:
          v34 = *(v0 + 208);
          v18 = *(*(v0 + 112) + 88);
          v3 = *(*v18 + 520);

          (v3)(v34);

LABEL_23:
          v35 = *(v0 + 296);
          v36 = __CFADD__(v35, v34);
          v37 = v35 + v34;
          if (!v36)
          {
            v39 = *(v0 + 184);
            v38 = *(v0 + 192);
            v41 = *(v0 + 168);
            v40 = *(v0 + 176);
            v43 = *(v0 + 136);
            v42 = *(v0 + 144);
            v44 = *(v0 + 128);
            v93 = *(v0 + 120);
            *(*(*(*(*(v0 + 112) + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v37;

            sub_247940408();

            v16 = *(v0 + 8);
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_73:

        goto LABEL_74;
      }

      v62 = 1;
    }

    v48 = sub_2478E8DC8(*(v0 + 240), *(v0 + 248), v92, v62, *(v0 + 216));
    *(v0 + 304) = v48;

    if (v48)
    {
      v72 = [v48 speakerIdModelSampleManifestReported];
      if (!v72)
      {
        v74 = *(v0 + 208);
LABEL_66:
        *(v0 + 312) = v74;
        v76 = [v48 speakerIdModelSampleManifestReported];
        if (v76)
        {
          v77 = v76;
          sub_24791A2DC(v51);
        }

        v78 = *(v0 + 112);

        v18 = v78[4];
        v51 = v78[5];
        v3 = v78[6];
        v19 = v78[7];
        if (qword_27EE571C0 != -1)
        {
          goto LABEL_78;
        }

        goto LABEL_69;
      }

      v73 = v72;
      v74 = [v72 odsampleIdsCount];

      if ((v74 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }

      __break(1u);
    }

    v75 = *(v0 + 248);

    goto LABEL_73;
  }

  v48 = 0;
  v49 = *(v0 + 232);
  v89 = v49 & 0xFFFFFFFFFFFFFF8;
  v91 = v49 & 0xC000000000000001;
  v85 = *(v0 + 160);
  v87 = v49 + 32;
  v19 = (v85 + 48);
  v50 = (v85 + 32);
  v51 = MEMORY[0x277D84F90];
  while (v91)
  {
    v52 = MEMORY[0x24C1AE890](v48, *(v0 + 232));
    v3 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_75;
    }

LABEL_41:
    v53 = *(v0 + 152);
    v54 = *(v0 + 120);
    v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
    swift_beginAccess();
    sub_2478FA014(v52 + v18, v54);

    if ((*v19)(v54, 1, v53) == 1)
    {
      sub_2478E9620(*(v0 + 120), &qword_27EE57278, &unk_247950590);
    }

    else
    {
      v55 = *v50;
      (*v50)(*(v0 + 168), *(v0 + 120), *(v0 + 152));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_24793AADC(0, *(v51 + 2) + 1, 1, v51);
      }

      v57 = *(v51 + 2);
      v56 = *(v51 + 3);
      if (v57 >= v56 >> 1)
      {
        v51 = sub_24793AADC(v56 > 1, v57 + 1, 1, v51);
      }

      v58 = *(v0 + 168);
      v59 = *(v0 + 152);
      *(v51 + 2) = v57 + 1;
      v55(&v51[((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v57], v58, v59);
    }

    ++v48;
    if (v3 == *(v0 + 256))
    {
      goto LABEL_51;
    }
  }

  if (v48 >= *(v89 + 16))
  {
    goto LABEL_76;
  }

  v52 = *(v87 + 8 * v48);

  v3 = v48 + 1;
  if (!__OFADD__(v48, 1))
  {
    goto LABEL_41;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  swift_once();
LABEL_69:
  v79 = sub_24794ED34();
  v80 = __swift_project_value_buffer(v79, qword_27EE58DF8);
  v81 = *(v51 + 17);
  v94 = (v81 + *v81);
  v82 = v81[1];
  v83 = swift_task_alloc();
  *(v0 + 320) = v83;
  *v83 = v0;
  v83[1] = sub_2478F9B64;

  return v94(v48, v3, v19, v80, v18, v51);
}

uint64_t sub_2478F9A90()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 288);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2478F9B64()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_2478F9E68;
  }

  else
  {
    v3 = sub_2478F9C78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478F9C78()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(**(*(v0 + 112) + 88) + 520);

  v4(v3);

  if (v2)
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);

    v14 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = __CFADD__(v15, v3);
    v17 = v15 + v3;
    if (v16)
    {
      __break(1u);
      return result;
    }

    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);
    v25 = *(v0 + 120);
    *(*(*(*(*(v0 + 112) + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v17;

    sub_247940408();

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_2478F9E68()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 328);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2478F9F5C()
{
  v1 = *(v0 + 16);
  sub_2478E6EE0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2478F9FC0()
{
  sub_2478E8084();

  return swift_deallocClassInstance();
}

uint64_t sub_2478FA014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2478FA084()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2478FA0F4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  if (sub_247944340())
  {
    v3 = sub_24794F4E4();

    v4 = v3 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_2478FA184(uint64_t a1, char *a2)
{
  v5 = *(v2 + 64);
  v6 = sub_2478EB3FC(a2);
  v7 = MEMORY[0x277D84F90];
  if ((v6 & 1) == 0)
  {
    return v7;
  }

  v8 = sub_2478ED524(a1);
  v9 = (*(*v5 + 504))();
  if (v3)
  {

    return v7;
  }

  v53 = v9;
  v52 = (*(*v5 + 512))();
  v51 = (*(*v5 + 488))();
  v10 = (*(*v5 + 496))();
  v55 = v7;
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v12)
  {
    v46 = v10;
    v7 = 0;
    v47 = MEMORY[0x277D84F90];
    v48 = v12;
    while ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1AE890](v7, v8);
      v13 = v10;
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_33;
      }

LABEL_17:
      if (sub_2478ECA98(v13) & 1) != 0 && (sub_2478FAB5C(v13))
      {
        v50 = *(*v13 + 1272);
        if (v50() == 1)
        {

          goto LABEL_22;
        }

        v49 = sub_24794F4E4();

        if (v49)
        {
LABEL_22:
          if (v51 < v53)
          {
            goto LABEL_23;
          }

LABEL_28:

LABEL_32:
          v12 = v48;
          goto LABEL_10;
        }

LABEL_23:
        if ((v50)(v15) > 1u)
        {
        }

        else
        {
          v16 = sub_24794F4E4();

          if ((v16 & 1) == 0)
          {
LABEL_29:

            MEMORY[0x24C1AE560](v17);
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24794F084();
            }

            sub_24794F0A4();

            v47 = v55;
            goto LABEL_32;
          }
        }

        if (v46 >= v52)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

LABEL_10:
      ++v7;
      if (v14 == v12)
      {
        goto LABEL_37;
      }
    }

    if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    v13 = *(v8 + 8 * v7 + 32);

    v14 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v18 = v10;
    v12 = sub_24794F414();
    v10 = v18;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_37:

  v19 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay);
  v20 = v47;

  v54 = sub_247900104(v21);
  v22 = &v54;
  sub_2478FA9B8();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v54;
    if (!(v47 >> 62))
    {
      v23 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v23 < v19)
      {
        v19 = v23;
      }

      goto LABEL_41;
    }
  }

  v23 = v22;
  v22 = sub_24794F414();

  if (v22 < v19)
  {
    v19 = v22;
  }

  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_86;
  }

  v22 = v23;
LABEL_41:
  if (v22 < 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v22 >> 62) & 1;
  }

  if (v20 != 1)
  {
    v24 = *(v22 + 16);
    goto LABEL_46;
  }

LABEL_86:
  v24 = sub_24794F414();
LABEL_46:
  if (v24 >= v19)
  {
    v25 = v19;
  }

  else
  {
    v25 = v24;
  }

  if (v24 < 0)
  {
    v25 = v19;
  }

  if (v19)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v20)
  {
    if (sub_24794F414() < 0)
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v27 = sub_24794F414();
  }

  else
  {
    v27 = *(v22 + 16);
  }

  if (v27 < v26)
  {
    __break(1u);
    goto LABEL_88;
  }

  if ((v22 & 0xC000000000000001) != 0 && v26)
  {
    type metadata accessor for SiriRequestRecord(0);

    v28 = 0;
    do
    {
      v29 = v28 + 1;
      sub_24794F364();
      v28 = v29;
    }

    while (v26 != v29);
  }

  else
  {
  }

  if (v20)
  {
    v30 = sub_24794F454();
    v20 = v31;
    v23 = v32;
    v26 = v33;

    v22 = v30;
  }

  else
  {
    v23 = 0;
    v20 = v22 + 32;
    v26 = (2 * v26) | 1;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_69;
  }

  sub_24794F4F4();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x277D84F90];
  }

  v36 = *(v35 + 16);

  if (__OFSUB__(v26 >> 1, v23))
  {
    goto LABEL_90;
  }

  if (v36 != (v26 >> 1) - v23)
  {
LABEL_91:
    swift_unknownObjectRelease_n();
LABEL_69:
    sub_2478E8CE4(v22, v20, v23, v26);
    v7 = v34;
    goto LABEL_76;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v7)
  {
    goto LABEL_77;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_76:
  swift_unknownObjectRelease();
LABEL_77:
  if (qword_27EE571C0 != -1)
  {
LABEL_88:
    swift_once();
  }

  v37 = sub_24794ED34();
  __swift_project_value_buffer(v37, qword_27EE58DF8);

  v38 = sub_24794ED14();
  v39 = sub_24794F154();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v41;
    *v40 = 136315138;
    v42 = type metadata accessor for SiriRequestRecord(0);
    v43 = MEMORY[0x24C1AE590](v7, v42);
    v45 = sub_247924380(v43, v44, &v54);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_2478E1000, v38, v39, "#SpkrIdSamplingPolicy: random filtered results: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1AF180](v41, -1, -1);
    MEMORY[0x24C1AF180](v40, -1, -1);
  }

  return v7;
}

uint64_t sub_2478FA948(uint64_t a1)
{
  if ((sub_2478ECA98(a1) & 1) == 0)
  {
    return 0;
  }

  return sub_2478FAB5C(a1);
}

void sub_2478FA9B8()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v19 = 0;
      MEMORY[0x24C1AF190](&v19, 8);
      v5 = (v19 * v1) >> 64;
      if (v1 > v19 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v19 * v1)
        {
          do
          {
            v19 = 0;
            MEMORY[0x24C1AF190](&v19, 8);
          }

          while (v6 > v19 * v1);
          v5 = (v19 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v3);
        v11 = *(v8 + 32 + 8 * v7);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_24790054C(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v13 = v8 + 8 * v3;
        v14 = *(v13 + 32);
        *(v13 + 32) = v11;

        sub_24794F3B4();
        v15 = *v0;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v15;
        if ((v16 & 1) == 0)
        {
          v15 = sub_24790054C(v15);
          *v0 = v15;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_24;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v10;

        sub_24794F3B4();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
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
  }
}

uint64_t sub_2478FAB5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) != 0 || (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource) | 0x10) != 0x12)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v14 = sub_24794ED34();
    __swift_project_value_buffer(v14, qword_27EE58DF8);

    v15 = sub_24794ED14();
    v16 = sub_24794F154();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v18;
    *v17 = 136315138;
    v19 = (*(*a1 + 1264))();
    v21 = sub_247924380(v19, v20, &v37);

    *(v17 + 4) = v21;
    v22 = "#ButtonPressSelectionRule: siri input locale being nil for request: %s";
    goto LABEL_12;
  }

  v6 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478FA014(a1 + v6, v5);
  v7 = sub_24794EC04();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  v8 = sub_2478FB164(v5);
  if (v6 == 1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v10 = sub_24794ED14();
    v11 = sub_24794F164();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "#ButtonPressSelectionRule: request_id is nil";
LABEL_20:
    _os_log_impl(&dword_2478E1000, v10, v11, v13, v12, 2u);
    MEMORY[0x24C1AF180](v12, -1, -1);
LABEL_21:

    return 0;
  }

  if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v26 = sub_24794ED34();
    __swift_project_value_buffer(v26, qword_27EE58DF8);
    v10 = sub_24794ED14();
    v11 = sub_24794F164();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "#ButtonPressSelectionRule: device_type is nil";
    goto LABEL_20;
  }

  v23 = (*a1 + 1272);
  v24 = *v23;
  v25 = (*v23)(v8);
  if (v25 != 1)
  {
    v28 = sub_24794F4E4();

    if (v28)
    {
      return 1;
    }

    if (v24(v29) <= 1u)
    {
      v30 = sub_24794F4E4();

      if (v30)
      {
        return 1;
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v31 = sub_24794ED34();
      __swift_project_value_buffer(v31, qword_27EE58DF8);

      v15 = sub_24794ED14();
      v16 = sub_24794F154();

      if (!os_log_type_enabled(v15, v16))
      {
LABEL_13:

        return 0;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v32 = (*(*a1 + 1264))();
      v34 = sub_247924380(v32, v33, &v36);

      *(v17 + 4) = v34;
      v22 = "#ButtonPressSelectionRule: no wake word is found for request: %s";
LABEL_12:
      _os_log_impl(&dword_2478E1000, v15, v16, v22, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1AF180](v18, -1, -1);
      MEMORY[0x24C1AF180](v17, -1, -1);
      goto LABEL_13;
    }
  }

  return 1;
}

uint64_t sub_2478FB164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2478FB1CC()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy____lazy_storage___supportMultiPhrase;
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy____lazy_storage___supportMultiPhrase);
  if (v2 == 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
    LOBYTE(v2) = (*(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8) + 144))(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale + 8));
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

void sub_2478FB3A4()
{
  (*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 296))();
  if (!v1)
  {
    sub_247940408();
  }
}

void sub_2478FB414()
{
  (*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 304))();
  if (!v1)
  {
    sub_247940408();
  }
}

void sub_2478FB484()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v2 + 8);
  if (((*(v4 + 80))(v3, v4) & 1) != 0 && ((*(v4 + 88))(v3, v4) & 1) != 0 && !sub_2478FB7B4() && ((sub_2478EBB7C() & 1) != 0 || *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) == 1))
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    v5 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
    sub_2479406A8(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate);
  }
}

BOOL sub_2478FB55C()
{
  v1 = v0;
  if (!sub_2478FB7B4() && (v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils), v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8), ((*(v3 + 80))(*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils), v3) & 1) != 0) && ((*(v3 + 88))(v2, v3) & 1) != 0)
  {
    return *(*(*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478FB608(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8);
  v24 = *a1;
  v5 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults);
  v6 = (v4)[2](&v24, v5, v3, v4);
  if ((v7 & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = v6;
  }

  v23 = v2;
  v8 = (v4)[6](&v23, v5, v3, v4);
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    v11 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS) = v8;
    v12 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS) = v8;
    result = sub_2478FB1CC();
    if ((result & 1) == 0)
    {
      if (v10 < 0)
      {
        goto LABEL_13;
      }

      *(v1 + v11) = 2 * v10;
      *(v1 + v12) = 0;
    }
  }

  v22 = v2;
  result = (v4)[7](&v22, v5, v3, v4);
  if ((v14 & 1) == 0)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS) = result;
    v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS) = result;
    result = sub_2478FB1CC();
    if ((result & 1) == 0)
    {
      *(v1 + v16) = v15;
      *(v1 + v17) = 0;
    }
  }

  v18 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS);
  v19 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS);
  v20 = __CFADD__(v18, v19);
  v21 = v18 + v19;
  if (!v20)
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = v21;
    return result;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

BOOL sub_2478FB7B4()
{
  v1 = v0;
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults);
  type metadata accessor for SamplingMetaDataPrefStore();
  inited = swift_initStackObject();
  *(inited + 16) = v7;
  *(inited + 24) = 0;
  type metadata accessor for SamplingPolicyMetaDataFactory();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(inited + 32) = v9;
  v10 = v7;
  v11 = sub_24793B3D0();
  if (v11)
  {
    v12 = v11[16];

    v13 = v12 == 1;
  }

  else
  {
    v13 = 0;
  }

  type metadata accessor for Utils();
  sub_247940B60(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v6);
  sub_2478EC590();
  v14 = sub_24794F4D4();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v17 = sub_24794ED34();
  __swift_project_value_buffer(v17, qword_27EE58DF8);

  v18 = sub_24794ED14();
  v19 = sub_24794F154();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    v22 = sub_247924380(v14, v16, &v24);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_2478E1000, v18, v19, "#ButtonPressSamplingPolicy: speakerId collecting is going on, should skip button press collecting for date: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1AF180](v21, -1, -1);
    MEMORY[0x24C1AF180](v20, -1, -1);
  }

  else
  {
  }

  return v13;
}

uint64_t sub_2478FBA70()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate;
  v3 = sub_24794EBB4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_requestRecordFactory];

  v5 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager];

  v6 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager];

  v7 = *&v0[OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale + 8];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ButtonPressSamplingPolicy()
{
  result = qword_27EE57380;
  if (!qword_27EE57380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2478FBC2C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = type metadata accessor for ButtonPressSamplingPolicy();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy____lazy_storage___supportMultiPhrase) = 2;
  *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxEnrollmentUploadCount) = 5;
  *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS) = 20;
  *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS) = 20;
  *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS) = 5;
  *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS) = 5;
  v18 = 1;
  v12 = a4[2];
  v21 = a4[3];
  v22 = v12;
  v13 = a4[4];
  v19 = a4[5];
  v20 = v13;
  sub_2478E9680(&v22, v17, &qword_27EE57290, &unk_2479504F0);
  sub_2478E9680(&v21, v17, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9680(&v20, v17, &qword_27EE572A0, &unk_247950500);
  sub_2478E9680(&v19, v17, &qword_27EE572A8, &unk_2479503E0);
  v14 = sub_2478E976C(a1, a2, &v18, 4, 40, 10, 180, a4, 1.0);
  if (!v14)
  {
    goto LABEL_6;
  }

  if ((sub_2478FB1CC() & 1) == 0)
  {
    *(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS) = 40;
    *(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS) = 0;
    *(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS) = 10;
    *(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS) = 0;
    *(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = 40;
  }

  if (*(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) == 1)
  {
    v15 = *(v14 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);

    sub_247940594();
    sub_2478E9620(&v22, &qword_27EE57290, &unk_2479504F0);
    sub_2478E9620(&v21, &qword_27EE57298, &unk_2479503D0);
    sub_2478E9620(&v20, &qword_27EE572A0, &unk_247950500);
    sub_2478E9620(&v19, &qword_27EE572A8, &unk_2479503E0);
  }

  else
  {
LABEL_6:
    sub_2478E9620(&v22, &qword_27EE57290, &unk_2479504F0);
    sub_2478E9620(&v21, &qword_27EE57298, &unk_2479503D0);
    sub_2478E9620(&v20, &qword_27EE572A0, &unk_247950500);
    sub_2478E9620(&v19, &qword_27EE572A8, &unk_2479503E0);
  }

  return v14;
}

uint64_t sub_2478FC11C(unint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v50 = MEMORY[0x277D84F90];
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_37:
    v8 = sub_24794F414();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v46 = MEMORY[0x277D84F90];
    while (2)
    {
      v11 = v10;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1AE890](v11, a1);
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v11 >= *(v7 + 16))
          {
            goto LABEL_35;
          }

          v12 = *(a1 + 8 * v11 + 32);

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        type metadata accessor for MetricsCalcRecord(0);
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          break;
        }

        ++v11;
        if (v10 == v8)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x24C1AE560](v13);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
      }

      sub_24794F0A4();
      v46 = v50;
      if (v10 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v49[0] = v9;
  v7 = v46;
  if (v46 >> 62)
  {
    v15 = sub_24794F414();
    if (v15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_22:
      v16 = 0;
      v47 = v7 & 0xC000000000000001;
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v47)
        {
          v18 = MEMORY[0x24C1AE890](v16, v7);
          a1 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_36;
          }

          v18 = *(v7 + 8 * v16 + 32);

          a1 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_32:
            __break(1u);
            break;
          }
        }

        v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        sub_2478E9680(v18 + v19, v6, &qword_27EE572D0, &unk_2479504E0);
        v20 = sub_24794EBB4();
        if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
        {

          sub_2478E9620(v6, &qword_27EE572D0, &unk_2479504E0);
        }

        else
        {
          sub_2478E9620(v6, &qword_27EE572D0, &unk_2479504E0);
          sub_24794F3A4();
          v21 = *(v49[0] + 16);
          sub_24794F3D4();
          v7 = v46;
          sub_24794F3E4();
          sub_24794F3B4();
        }

        ++v16;
      }

      while (a1 != v15);
    }
  }

  v49[0] = sub_247900130(v22, sub_24793F6A4, sub_247900364);
  sub_2478FE38C(v49);

  v23 = v49[0];
  v24 = *(v45 + 40);
  v47 = *(v45 + 32);
  v25 = *(v45 + 48);
  v26 = *(v45 + 56);
  v27 = *(v45 + 64);
  v28 = *(v45 + 72);
  v29 = *(v45 + 76);
  v30 = *(v45 + 80);
  v31 = type metadata accessor for MetricsCalcDigest(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v34 = v26;
  LOBYTE(v49[0]) = v30;
  v35 = sub_247904F10(v47, v24, v25, v34, v27, v28, v29 | (v30 << 32));

  if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v36 = *(v23 + 16);
  if (v36)
  {
LABEL_42:
    v37 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x24C1AE890](v37, v23);
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v37 >= *(v23 + 16))
        {
          goto LABEL_51;
        }

        v38 = *(v23 + 8 * v37 + 32);

        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v36 = sub_24794F414();
          if (!v36)
          {
            break;
          }

          goto LABEL_42;
        }
      }

      sub_247902DB8(v38);

      ++v37;
    }

    while (v39 != v36);
  }

  v40 = v45;
  swift_beginAccess();

  v41 = *(v40 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v40 + 24);
  *(v40 + 24) = 0x8000000000000000;
  sub_24794B234(v35, v44, isUniquelyReferenced_nonNull_native);
  *(v40 + 24) = v48;
  swift_endAccess();
}

uint64_t sub_2478FC664(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_24794EBB4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v18 + v20, v10, &qword_27EE572D0, &unk_2479504E0);
  v21 = v12[6];
  if (v21(v10, 1, v11) == 1)
  {
    v22 = v10;
  }

  else
  {
    v28 = v12[4];
    v28(v17, v10, v11);
    v23 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    sub_2478E9680(v19 + v23, v8, &qword_27EE572D0, &unk_2479504E0);
    if (v21(v8, 1, v11) != 1)
    {
      v25 = v29;
      v28(v29, v8, v11);
      v24 = sub_24794EB54();
      v26 = v12[1];
      v26(v25, v11);
      v26(v17, v11);
      return v24 & 1;
    }

    (v12[1])(v17, v11);
    v22 = v8;
  }

  sub_2478E9620(v22, &qword_27EE572D0, &unk_2479504E0);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2478FC95C()
{
  v1[12] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = sub_24794EC04();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = sub_24794EBB4();
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57390, &qword_247950A58) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478FCB0C, 0, 0);
}

uint64_t sub_2478FCB0C()
{
  v124 = v0;
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v0 + 192) = v3;
  v4 = *(v3 + 32);
  *(v0 + 256) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v8 = 0;
  v118 = v0;
LABEL_7:
  if (v7)
  {
    v10 = *(v0 + 192);
LABEL_17:
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = (v7 - 1) & v7;
    v20 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v18 + 16))(v15, *(v10 + 48) + *(v18 + 72) * v20, v17);
    v21 = *(*(v10 + 56) + 8 * v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    v23 = *(v22 + 48);
    (*(v18 + 32))(v16, v15, v17);
    *(v16 + v23) = v21;
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);

    v13 = v8;
  }

  else
  {
    v11 = ((1 << *(v0 + 256)) + 63) >> 6;
    if (v11 <= v8 + 1)
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = ((1 << *(v0 + 256)) + 63) >> 6;
    }

    v13 = (v12 - 1);
    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v0 + 192);
      v7 = *(v10 + 8 * v14 + 64);
      ++v8;
      if (v7)
      {
        v8 = v14;
        goto LABEL_17;
      }
    }

    v98 = *(v0 + 176);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    (*(*(v99 - 8) + 56))(v98, 1, 1, v99);
    v19 = 0;
  }

  *(v0 + 200) = v19;
  *(v0 + 208) = v13;
  v24 = *(v0 + 184);
  sub_2478FE314(*(v0 + 176), v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
  if ((*(*(v25 - 8) + 48))(v24, 1, v25) != 1)
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);
    v29 = *(*(v0 + 184) + *(v25 + 48));
    *(v0 + 216) = v29;
    (*(v28 + 32))(v26);
    v117 = sub_2479031C4();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 152);
    v31 = *(v0 + 160);
    v32 = *(v0 + 136);
    v33 = *(v0 + 144);
    v34 = sub_24794ED34();
    v1 = __swift_project_value_buffer(v34, qword_27EE58DF8);
    (*(v33 + 16))(v30, v31, v32);
    v35 = sub_24794ED14();
    v36 = sub_24794F154();
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 144);
    v38 = *(v0 + 152);
    v40 = *(v0 + 136);
    v119 = v1;
    v116 = v29;
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v123 = v42;
      *v41 = 136315138;
      sub_2478EC590();
      v43 = sub_24794F4D4();
      v45 = v44;
      v46 = v40;
      v47 = *(v39 + 8);
      v47(v38, v46);
      v48 = sub_247924380(v43, v45, &v123);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_2478E1000, v35, v36, "MetricsCalcActionEvent - emitDailySELFEvent - digest for date: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v49 = v42;
      v1 = v119;
      MEMORY[0x24C1AF180](v49, -1, -1);
      MEMORY[0x24C1AF180](v41, -1, -1);
    }

    else
    {

      v50 = v40;
      v47 = *(v39 + 8);
      v47(v38, v50);
    }

    *(v0 + 224) = v47;
    v2 = v117;
    v115 = v47;
    if ((v117 & 0xC000000000000001) != 0)
    {
      v51 = sub_24794F404();
      v13 = 0;
      v52 = 0;
      v53 = 0;
      v0 = v51 | 0x8000000000000000;
    }

    else
    {
      v54 = -1 << *(v117 + 32);
      v52 = ~v54;
      v13 = (v117 + 64);
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v53 = v56 & *(v117 + 64);
      v0 = v117;
    }

    v57 = (v52 + 64) >> 6;

    v58 = 0;
    v120 = v13;
    for (i = v0; ; v0 = i)
    {
      if ((v0 & 0x8000000000000000) != 0)
      {
        v66 = sub_24794F434();
        if (!v66)
        {
          goto LABEL_43;
        }

        v68 = v67;
        v118[9] = v66;
        type metadata accessor for MetricsCalcDimensions();
        swift_dynamicCast();
        v69 = v118[8];
        v118[11] = v68;
        type metadata accessor for MetricsCalcCounts();
        v13 = v120;
        swift_dynamicCast();
        v70 = v118[10];
        v61 = v58;
        v62 = v53;
        if (!v69)
        {
LABEL_43:
          v0 = v118;
          v82 = v118[14];
          v83 = v118[15];
          v84 = v118[13];
          sub_2478FE384();
          v85 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
          swift_beginAccess();
          sub_2478E9680(v116 + v85, v84, &qword_27EE57278, &unk_247950590);
          v86 = (*(v83 + 48))(v84, 1, v82);
          v87 = v118[20];
          if (v86 == 1)
          {
            v2 = v118[13];
            v9 = v118[18] + 8;
            v115(v118[20], v118[17]);

            sub_2478E9620(v2, &qword_27EE57278, &unk_247950590);
LABEL_6:
            v7 = v118[25];
            v8 = v118[26];
            goto LABEL_7;
          }

          v88 = v118[16];
          v89 = v118[12];
          (*(v118[15] + 32))(v88, v118[13], v118[14]);
          v2 = *(v89 + 16);
          v13 = sub_24790596C(v117, v87, v88);
          v118[29] = v13;

          if (!v13)
          {
            v90 = v118[27];
            v91 = v118[28];
            v2 = v118[20];
            v92 = v118[17];
            v93 = v118[18];
            v95 = v118[15];
            v94 = v118[16];
            v96 = v118[14];

            v97 = *(v95 + 8);
            v1 = v95 + 8;
            v97(v94, v96);
            v91(v2, v92);
            goto LABEL_6;
          }

          if (qword_27EE571E8 == -1)
          {
LABEL_51:
            v113 = *(v2 + 24);
            v112 = *(v2 + 32);
            v114 = swift_task_alloc();
            *(v0 + 240) = v114;
            *v114 = v0;
            v114[1] = sub_2478FD520;

            return sub_2479391A4(v13, v1, v113, v112);
          }

LABEL_56:
          swift_once();
          goto LABEL_51;
        }
      }

      else
      {
        v59 = v58;
        v60 = v53;
        v61 = v58;
        if (!v53)
        {
          while (1)
          {
            v61 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              break;
            }

            if (v61 >= v57)
            {
              goto LABEL_43;
            }

            v60 = v13[v61];
            ++v59;
            if (v60)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
          goto LABEL_55;
        }

LABEL_37:
        v62 = (v60 - 1) & v60;
        v63 = (v61 << 9) | (8 * __clz(__rbit64(v60)));
        v64 = *(*(v0 + 48) + v63);
        v65 = *(*(v0 + 56) + v63);

        if (!v64)
        {
          goto LABEL_43;
        }
      }

      v122 = v62;

      v2 = v1;
      v71 = sub_24794ED14();
      v72 = sub_24794F154();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v123 = v74;
        *v73 = 136315394;
        v75 = sub_247901E00();
        v77 = sub_247924380(v75, v76, &v123);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        v78 = sub_247902284();
        v2 = v79;
        v80 = sub_247924380(v78, v79, &v123);

        *(v73 + 14) = v80;
        v13 = v120;
        _os_log_impl(&dword_2478E1000, v71, v72, "%s -> %s", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1AF180](v74, -1, -1);
        v81 = v73;
        v1 = v119;
        MEMORY[0x24C1AF180](v81, -1, -1);
      }

      v58 = v61;
      v53 = v122;
    }
  }

  v101 = *(v0 + 184);
  v100 = *(v0 + 192);
  v103 = *(v0 + 168);
  v102 = *(v0 + 176);
  v105 = *(v0 + 152);
  v104 = *(v0 + 160);
  v106 = *(v0 + 128);
  v108 = *(v0 + 96);
  v107 = *(v0 + 104);

  v109 = *(v108 + 24);
  *(v108 + 24) = MEMORY[0x277D84F98];

  v110 = *(v0 + 8);

  return v110();
}

uint64_t sub_2478FD520()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2478FDFF8;
  }

  else
  {
    v3 = sub_2478FD634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2478FD634()
{
  v115 = v0;

  v108 = v0;
LABEL_2:
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);

  (*(v7 + 8))(v6, v8);
  v2(v3, v4);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  if (!v9)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v11 = *(v0 + 192);
LABEL_12:
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v20 = (v9 - 1) & v9;
    v21 = __clz(__rbit64(v9)) | (v10 << 6);
    (*(v19 + 16))(v16, *(v11 + 48) + *(v19 + 72) * v21, v18);
    v22 = *(*(v11 + 56) + 8 * v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    v24 = *(v23 + 48);
    (*(v19 + 32))(v17, v16, v18);
    *(v17 + v24) = v22;
    (*(*(v23 - 8) + 56))(v17, 0, 1, v23);

    v14 = v10;
LABEL_13:
    *(v0 + 200) = v20;
    *(v0 + 208) = v14;
    v25 = *(v0 + 184);
    sub_2478FE314(*(v0 + 176), v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      v95 = *(v0 + 184);
      v94 = *(v0 + 192);
      v97 = *(v0 + 168);
      v96 = *(v0 + 176);
      v99 = *(v0 + 152);
      v98 = *(v0 + 160);
      v100 = *(v0 + 128);
      v102 = *(v0 + 96);
      v101 = *(v0 + 104);

      v103 = *(v102 + 24);
      *(v102 + 24) = MEMORY[0x277D84F98];

      v104 = *(v0 + 8);

      return v104();
    }

    v27 = *(v0 + 160);
    v28 = *(v0 + 136);
    v29 = *(v0 + 144);
    v30 = *(*(v0 + 184) + *(v26 + 48));
    *(v0 + 216) = v30;
    (*(v29 + 32))(v27);
    v107 = sub_2479031C4();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 152);
    v32 = *(v0 + 160);
    v33 = *(v0 + 136);
    v34 = *(v0 + 144);
    v35 = sub_24794ED34();
    v36 = __swift_project_value_buffer(v35, qword_27EE58DF8);
    (*(v34 + 16))(v31, v32, v33);
    v37 = sub_24794ED14();
    v38 = sub_24794F154();
    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 144);
    v40 = *(v0 + 152);
    v42 = *(v0 + 136);
    v111 = v36;
    v106 = v30;
    if (v39)
    {
      v43 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v114 = v112;
      *v43 = 136315138;
      sub_2478EC590();
      v44 = sub_24794F4D4();
      v46 = v45;
      v47 = *(v41 + 8);
      v47(v40, v42);
      v48 = sub_247924380(v44, v46, &v114);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_2478E1000, v37, v38, "MetricsCalcActionEvent - emitDailySELFEvent - digest for date: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x24C1AF180](v112, -1, -1);
      MEMORY[0x24C1AF180](v43, -1, -1);
    }

    else
    {

      v47 = *(v41 + 8);
      v47(v40, v42);
    }

    *(v0 + 224) = v47;
    v3 = v107;
    v105 = v47;
    if ((v107 & 0xC000000000000001) != 0)
    {
      v49 = sub_24794F404();
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v14 = v49 | 0x8000000000000000;
    }

    else
    {
      v53 = -1 << *(v107 + 32);
      v51 = ~v53;
      v50 = v107 + 64;
      v54 = -v53;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v52 = v55 & *(v107 + 64);
      v14 = v107;
    }

    v56 = (v51 + 64) >> 6;

    v57 = 0;
    v109 = v50;
    v110 = v14;
    while (v14 < 0)
    {
      v65 = sub_24794F434();
      if (!v65)
      {
        goto LABEL_38;
      }

      v67 = v66;
      v108[9] = v65;
      type metadata accessor for MetricsCalcDimensions();
      swift_dynamicCast();
      v68 = v108[8];
      v108[11] = v67;
      type metadata accessor for MetricsCalcCounts();
      v14 = v110;
      swift_dynamicCast();
      v69 = v108[10];
      v60 = v57;
      v61 = v52;
      if (!v68)
      {
        goto LABEL_38;
      }

LABEL_36:
      v113 = v61;

      v3 = v111;
      v0 = sub_24794ED14();
      v70 = sub_24794F154();

      if (os_log_type_enabled(v0, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v114 = v72;
        *v71 = 136315394;
        v73 = sub_247901E00();
        v75 = sub_247924380(v73, v74, &v114);

        *(v71 + 4) = v75;
        *(v71 + 12) = 2080;
        v76 = sub_247902284();
        v3 = v77;
        v78 = sub_247924380(v76, v77, &v114);

        *(v71 + 14) = v78;
        v14 = v110;
        _os_log_impl(&dword_2478E1000, v0, v70, "%s -> %s", v71, 0x16u);
        swift_arrayDestroy();
        v79 = v72;
        v50 = v109;
        MEMORY[0x24C1AF180](v79, -1, -1);
        MEMORY[0x24C1AF180](v71, -1, -1);
      }

      v57 = v60;
      v52 = v113;
    }

    v58 = v57;
    v59 = v52;
    v60 = v57;
    if (!v52)
    {
      while (1)
      {
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v60 >= v56)
        {
          goto LABEL_38;
        }

        v59 = *(v50 + 8 * v60);
        ++v58;
        if (v59)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_32:
    v61 = (v59 - 1) & v59;
    v62 = (v60 << 9) | (8 * __clz(__rbit64(v59)));
    v63 = *(*(v14 + 48) + v62);
    v64 = *(*(v14 + 56) + v62);

    if (v63)
    {
      goto LABEL_36;
    }

LABEL_38:
    v0 = v108;
    v80 = v108[14];
    v81 = v108[15];
    v82 = v108[13];
    sub_2478FE384();
    v83 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
    swift_beginAccess();
    sub_2478E9680(v106 + v83, v82, &qword_27EE57278, &unk_247950590);
    if ((*(v81 + 48))(v82, 1, v80) == 1)
    {
      v3 = v108[13];
      v84 = v108[18] + 8;
      v105(v108[20], v108[17]);

      sub_2478E9620(v3, &qword_27EE57278, &unk_247950590);
      v9 = v108[25];
      v10 = v108[26];
      if (v9)
      {
        continue;
      }

LABEL_4:
      v12 = ((1 << *(v0 + 256)) + 63) >> 6;
      if (v12 <= v10 + 1)
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = ((1 << *(v0 + 256)) + 63) >> 6;
      }

      v14 = v13 - 1;
      while (1)
      {
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          v85 = *(v0 + 176);
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
          (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
          v20 = 0;
          goto LABEL_13;
        }

        v11 = *(v0 + 192);
        v9 = *(v11 + 8 * v15 + 64);
        ++v10;
        if (v9)
        {
          v10 = v15;
          goto LABEL_12;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
    }

    else
    {
      v87 = v108[16];
      v88 = v108[12];
      v89 = v108[20];
      (*(v108[15] + 32))(v87, v108[13], v108[14]);
      v3 = *(v88 + 16);
      v14 = sub_24790596C(v107, v89, v87);
      v108[29] = v14;

      if (!v14)
      {
        goto LABEL_2;
      }

      if (qword_27EE571E8 != -1)
      {
        goto LABEL_52;
      }
    }

    break;
  }

  v91 = *(v3 + 24);
  v90 = *(v3 + 32);
  v92 = swift_task_alloc();
  *(v0 + 240) = v92;
  *v92 = v0;
  v92[1] = sub_2478FD520;

  return sub_2479391A4(v14, v111, v91, v90);
}

uint64_t sub_2478FDFF8()
{
  v1 = v0[29];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v14 = v0[28];
  v15 = v0[22];
  v5 = v0[20];
  v16 = v0[21];
  v17 = v0[19];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[14];
  v18 = v0[13];

  (*(v8 + 8))(v9, v10);
  v14(v5, v7);

  v11 = v0[1];
  v12 = v0[31];

  return v11();
}

uint64_t sub_2478FE11C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2478FE1B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2478FE200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2478FE284()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2478E8998;

  return sub_2478FC95C();
}

uint64_t sub_2478FE314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57390, &qword_247950A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2478FE38C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2478E2F74(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2478FE408(v6);
  return sub_24794F3B4();
}

uint64_t sub_2478FE408(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v59 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v45 - v7;
  v54 = sub_24794EBB4();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v54);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = *(a1 + 8);
  result = sub_24794F4C4();
  if (result < v14)
  {
    if (v14 >= -1)
    {
      v16 = result;
      if (v14 <= 1)
      {
        v17 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MetricsCalcRecord(0);
        v17 = sub_24794F094();
        *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14 / 2;
      }

      v44 = v17 & 0xFFFFFFFFFFFFFF8;
      v63[0] = ((v17 & 0xFFFFFFFFFFFFFF8) + 32);
      v63[1] = (v14 / 2);
      sub_2478FE8E4(v63, v62, a1, v16);
      *(v44 + 16) = 0;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v14 >= 2)
  {
    v53 = v13;
    v45 = v1;
    v18 = *a1;
    v19 = (v8 + 48);
    v20 = (v8 + 32);
    v52 = (v8 + 8);
    v21 = -1;
    v22 = 1;
    v55 = v18;
    v23 = v18;
    v46 = v14;
    v58 = (v8 + 48);
    v51 = (v8 + 32);
    v24 = v54;
    do
    {
      v48 = v22;
      v49 = v21;
      v25 = *(v55 + v22);
      v47 = v23;
      v26 = v23;
      while (1)
      {
        v57 = v21;
        v64 = *v26;
        v27 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        v60 = v25;
        v28 = v25 + v27;
        v29 = v61;
        sub_2478E9680(v28, v61, &qword_27EE572D0, &unk_2479504E0);
        v30 = *v19;
        if ((*v19)(v29, 1, v24) == 1)
        {
          result = sub_2478E9620(v61, &qword_27EE572D0, &unk_2479504E0);
          goto LABEL_9;
        }

        v31 = *v20;
        v32 = v53;
        (*v20)(v53, v61, v24);
        v33 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        v34 = v64;
        swift_beginAccess();
        v35 = v34 + v33;
        v36 = v59;
        sub_2478E9680(v35, v59, &qword_27EE572D0, &unk_2479504E0);
        if (v30(v36, 1, v24) == 1)
        {
          break;
        }

        v37 = v50;
        v38 = v51;
        v31(v50, v59, v24);

        v56 = sub_24794EB54();
        v39 = *v52;
        (*v52)(v37, v24);
        v39(v32, v24);

        v40 = v57;
        v19 = v58;
        v20 = v38;
        if (v56)
        {
          if (!v55)
          {
            goto LABEL_24;
          }

          v41 = *v26;
          v25 = *(v26 + 1);
          *v26 = v25;
          *(v26 + 1) = v41;
          v26 = (v26 - 8);
          v42 = __CFADD__(v40, 1);
          v21 = v40 + 1;
          if (!v42)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      v43 = *v52;

      v43(v32, v24);
      sub_2478E9620(v59, &qword_27EE572D0, &unk_2479504E0);

      v19 = v58;
      v20 = v51;
LABEL_9:
      v22 = v48 + 1;
      v23 = (v47 + 8);
      v21 = v49 - 1;
    }

    while (v48 + 1 != v46);
  }

  return result;
}

uint64_t sub_2478FE8E4(char **a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), char *a4)
{
  v142 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v159 = &v137 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v137 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v137 - v16;
  v18 = sub_24794EBB4();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v152 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v162 = &v137 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v140 = &v137 - v25;
  result = MEMORY[0x28223BE20](v24);
  v149 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_108:
    a4 = *v142;
    if (!*v142)
    {
      goto LABEL_149;
    }

    v38 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v38;
LABEL_111:
      v166 = result;
      v38 = *(result + 16);
      if (v38 >= 2)
      {
        while (*v149)
        {
          v132 = *(result + 16 * v38);
          v133 = result;
          v134 = *(result + 16 * (v38 - 1) + 40);
          v135 = v151;
          sub_2478FF6DC(*v149 + 8 * v132, *v149 + 8 * *(result + 16 * (v38 - 1) + 32), *v149 + 8 * v134, a4);
          v151 = v135;
          if (v135)
          {
          }

          if (v134 < v132)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_2478FFFEC(v133);
          }

          if (v38 - 2 >= *(v133 + 2))
          {
            goto LABEL_137;
          }

          v136 = &v133[16 * v38];
          *v136 = v132;
          *(v136 + 1) = v134;
          v166 = v133;
          sub_2478FFF60(v38 - 1);
          result = v166;
          v38 = *(v166 + 16);
          if (v38 <= 1)
          {
          }
        }

        goto LABEL_147;
      }
    }

LABEL_143:
    result = sub_2478FFFEC(v38);
    goto LABEL_111;
  }

  v157 = result;
  v145 = &v137 - v28;
  v30 = 0;
  v158 = (v27 + 48);
  v156 = (v27 + 32);
  v155 = (v27 + 8);
  v31 = MEMORY[0x277D84F90];
  v141 = a4;
  v153 = v10;
  v32 = v159;
  v143 = v15;
  v146 = v17;
  while (2)
  {
    v33 = v30;
    v34 = v30 + 1;
    if (v30 + 1 >= v29)
    {
      v38 = &qword_27EE572D0;
      goto LABEL_29;
    }

    v139 = v31;
    v35 = *v149;
    v36 = *(*v149 + v34);
    v164 = *(*v149 + v30);
    v165 = v36;

    v37 = v151;
    LODWORD(v161) = sub_2478FC664(&v165, &v164);
    v38 = &qword_27EE572D0;
    v151 = v37;
    if (v37)
    {
    }

    v34 = v33 + 2;
    if (v33 + 2 >= v29)
    {
      v31 = v139;
      goto LABEL_20;
    }

    v138 = v33;
    v39 = (v35 + 8 * v33 + 16);
    v160 = v29;
    while (1)
    {
      v150 = v34;
      v44 = *v39;
      v163 = *(v39 - 1);
      v45 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
      swift_beginAccess();
      v46 = v146;
      sub_2478E9680(v44 + v45, v146, &qword_27EE572D0, &unk_2479504E0);
      v47 = v157;
      v48 = *v158;
      if ((*v158)(v46, 1, v157) == 1)
      {
        result = sub_2478E9620(v46, &qword_27EE572D0, &unk_2479504E0);
        if (v161)
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }

      v154 = *v156;
      v154(v145, v46, v47);
      v49 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
      v50 = v163;
      swift_beginAccess();
      v51 = v50 + v49;
      v52 = v143;
      sub_2478E9680(v51, v143, &qword_27EE572D0, &unk_2479504E0);
      if (v48(v52, 1, v47) == 1)
      {
        v53 = *v155;

        v53(v145, v47);
        v38 = &qword_27EE572D0;
        sub_2478E9620(v52, &qword_27EE572D0, &unk_2479504E0);

        v32 = v159;
        if (v161)
        {
LABEL_14:
          v31 = v139;
          a4 = v141;
          v34 = v150;
          v33 = v138;
          goto LABEL_21;
        }

        goto LABEL_8;
      }

      v40 = v140;
      v154(v140, v52, v47);

      v41 = v145;
      v42 = sub_24794EB54();
      v43 = *v155;
      (*v155)(v40, v47);
      v43(v41, v47);

      v32 = v159;
      v38 = &qword_27EE572D0;
      if ((v161 ^ v42))
      {
        break;
      }

LABEL_8:
      v34 = v150 + 1;
      ++v39;
      if (v160 == v150 + 1)
      {
        v34 = v160;
        v31 = v139;
        goto LABEL_19;
      }
    }

    v31 = v139;
    v34 = v150;
LABEL_19:
    v33 = v138;
LABEL_20:
    a4 = v141;
    if (v161)
    {
LABEL_21:
      if (v34 < v33)
      {
        goto LABEL_140;
      }

      if (v33 < v34)
      {
        v54 = 8 * v34 - 8;
        v55 = 8 * v33;
        v56 = v34;
        v57 = v33;
        do
        {
          if (v57 != --v56)
          {
            v59 = *v149;
            if (!*v149)
            {
              goto LABEL_146;
            }

            v58 = *(v59 + v55);
            *(v59 + v55) = *(v59 + v54);
            *(v59 + v54) = v58;
          }

          ++v57;
          v54 -= 8;
          v55 += 8;
        }

        while (v57 < v56);
      }
    }

LABEL_29:
    v60 = v149[1];
    if (v34 >= v60)
    {
      goto LABEL_51;
    }

    if (__OFSUB__(v34, v33))
    {
      goto LABEL_139;
    }

    if (v34 - v33 >= a4)
    {
      goto LABEL_51;
    }

    v61 = &a4[v33];
    if (__OFADD__(v33, a4))
    {
      goto LABEL_141;
    }

    if (v61 >= v60)
    {
      v61 = v149[1];
    }

    if (v61 < v33)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v34 == v61)
    {
LABEL_51:
      if (v34 < v33)
      {
        goto LABEL_138;
      }

      v84 = v31;
      result = swift_isUniquelyReferenced_nonNull_native();
      v150 = v34;
      if (result)
      {
        v31 = v84;
      }

      else
      {
        result = sub_247900000(0, *(v84 + 16) + 1, 1, v84);
        v31 = result;
      }

      v38 = *(v31 + 16);
      v85 = *(v31 + 24);
      v86 = v38 + 1;
      if (v38 >= v85 >> 1)
      {
        result = sub_247900000((v85 > 1), v38 + 1, 1, v31);
        v31 = result;
      }

      *(v31 + 16) = v86;
      v87 = v31 + 16 * v38;
      v88 = v150;
      *(v87 + 32) = v33;
      *(v87 + 40) = v88;
      a4 = *v142;
      if (!*v142)
      {
        goto LABEL_148;
      }

      if (!v38)
      {
        v32 = v159;
LABEL_103:
        v29 = v149[1];
        v30 = v150;
        a4 = v141;
        if (v150 >= v29)
        {
          goto LABEL_108;
        }

        continue;
      }

      v32 = v159;
      while (1)
      {
        v89 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v90 = *(v31 + 32);
          v91 = *(v31 + 40);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_72:
          if (v93)
          {
            goto LABEL_127;
          }

          v106 = (v31 + 16 * v86);
          v108 = *v106;
          v107 = v106[1];
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_130;
          }

          v112 = (v31 + 32 + 16 * v89);
          v114 = *v112;
          v113 = v112[1];
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_134;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v89 = v86 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v116 = (v31 + 16 * v86);
        v118 = *v116;
        v117 = v116[1];
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_86:
        if (v111)
        {
          goto LABEL_129;
        }

        v119 = v31 + 16 * v89;
        v121 = *(v119 + 32);
        v120 = *(v119 + 40);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_132;
        }

        if (v122 < v110)
        {
          goto LABEL_103;
        }

LABEL_93:
        v38 = v89 - 1;
        if (v89 - 1 >= v86)
        {
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
          goto LABEL_142;
        }

        if (!*v149)
        {
          goto LABEL_145;
        }

        v127 = v31;
        v128 = *(v31 + 32 + 16 * v38);
        v129 = *(v31 + 32 + 16 * v89 + 8);
        v130 = v151;
        sub_2478FF6DC(*v149 + 8 * v128, *v149 + 8 * *(v31 + 32 + 16 * v89), *v149 + 8 * v129, a4);
        v151 = v130;
        if (v130)
        {
        }

        if (v129 < v128)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_2478FFFEC(v127);
        }

        if (v38 >= *(v127 + 2))
        {
          goto LABEL_124;
        }

        v131 = &v127[16 * v38];
        *(v131 + 4) = v128;
        *(v131 + 5) = v129;
        v166 = v127;
        v38 = &v166;
        result = sub_2478FFF60(v89);
        v31 = v166;
        v86 = *(v166 + 16);
        v32 = v159;
        if (v86 <= 1)
        {
          goto LABEL_103;
        }
      }

      v94 = v31 + 32 + 16 * v86;
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_125;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_126;
      }

      v101 = (v31 + 16 * v86);
      v103 = *v101;
      v102 = v101[1];
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_128;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_131;
      }

      if (v105 >= v97)
      {
        v123 = (v31 + 32 + 16 * v89);
        v125 = *v123;
        v124 = v123[1];
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_135;
        }

        if (v92 < v126)
        {
          v89 = v86 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

    break;
  }

  v139 = v31;
  v154 = *v149;
  v62 = v154 + 8 * v34 - 8;
  v138 = v33;
  v63 = v33 - v34;
  a4 = v32;
  v144 = v61;
LABEL_40:
  v150 = v34;
  v64 = *(v154 + v34);
  v147 = v63;
  v65 = v63;
  v148 = v62;
  v66 = v62;
  while (1)
  {
    v160 = v65;
    v163 = *v66;
    v67 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    v161 = v64;
    sub_2478E9680(v64 + v67, a4, &qword_27EE572D0, &unk_2479504E0);
    v68 = v157;
    v69 = *v158;
    if ((*v158)(a4, 1, v157) == 1)
    {
      sub_2478E9620(a4, &qword_27EE572D0, &unk_2479504E0);
      goto LABEL_39;
    }

    v70 = *v156;
    (*v156)(v162, a4, v68);
    v71 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    v72 = v163;
    swift_beginAccess();
    v73 = v72 + v71;
    v74 = v153;
    sub_2478E9680(v73, v153, &qword_27EE572D0, &unk_2479504E0);
    if (v69(v74, 1, v68) == 1)
    {
      v82 = *v155;

      v82(v162, v68);
      v83 = v74;
      v38 = &qword_27EE572D0;
      sub_2478E9620(v83, &qword_27EE572D0, &unk_2479504E0);

      a4 = v159;
      goto LABEL_39;
    }

    v75 = v152;
    v70(v152, v74, v68);

    v76 = sub_24794EB54();
    v77 = *v155;
    v78 = v162;
    (*v155)(v75, v68);
    v77(v78, v68);

    if ((v76 & 1) == 0)
    {
      a4 = v159;
      v38 = &qword_27EE572D0;
LABEL_39:
      v34 = v150 + 1;
      v62 = v148 + 8;
      v63 = v147 - 1;
      if ((v150 + 1) == v144)
      {
        v34 = v144;
        v31 = v139;
        v33 = v138;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    a4 = v159;
    v79 = v160;
    v38 = &qword_27EE572D0;
    if (!v154)
    {
      break;
    }

    v80 = *v66;
    v64 = v66[1];
    *v66 = v64;
    v66[1] = v80;
    --v66;
    v81 = __CFADD__(v79, 1);
    v65 = v79 + 1;
    if (v81)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_2478FF6DC(char *a1, char *a2, char *a3, char *a4)
{
  v89 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v73[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v78 = &v73[-v15];
  MEMORY[0x28223BE20](v14);
  v80 = &v73[-v16];
  v88 = sub_24794EBB4();
  v17 = *(*(v88 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v88);
  v74 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v76 = &v73[-v22];
  MEMORY[0x28223BE20](v21);
  v26 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v26 = a2 - a1;
  }

  v27 = v26 >> 3;
  v28 = a3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v27 >= v29 >> 3)
  {
    v83 = v24;
    if (v89 != a2 || &a2[8 * v30] <= v89)
    {
      v53 = v25;
      memmove(v89, a2, 8 * v30);
      v25 = v53;
    }

    v32 = &v89[8 * v30];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v54 = (v25 + 48);
      v75 = (v25 + 8);
      v77 = v13;
      v78 = (v25 + 48);
      v86 = a1;
      v76 = (v25 + 32);
LABEL_30:
      v87 = a2;
      v55 = a2 - 8;
      v28 -= 8;
      v56 = v32;
      v82 = a2 - 8;
      do
      {
        v57 = *(v56 - 1);
        v56 -= 8;
        v84 = *v55;
        v58 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        sub_2478E9680(v57 + v58, v13, &qword_27EE572D0, &unk_2479504E0);
        v59 = *v54;
        v60 = v88;
        if ((*v54)(v13, 1, v88) == 1)
        {
          sub_2478E9620(v13, &qword_27EE572D0, &unk_2479504E0);
        }

        else
        {
          v81 = v28;
          v85 = v32;
          v80 = *v76;
          (v80)(v83, v13, v60);
          v61 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
          v62 = v84;
          swift_beginAccess();
          v63 = v62 + v61;
          v64 = v79;
          sub_2478E9680(v63, v79, &qword_27EE572D0, &unk_2479504E0);
          if (v59(v64, 1, v60) == 1)
          {
            v65 = *v75;

            v65(v83, v60);
            sub_2478E9620(v64, &qword_27EE572D0, &unk_2479504E0);

            v32 = v85;
            v13 = v77;
            v54 = v78;
            v28 = v81;
          }

          else
          {
            v66 = v74;
            (v80)(v74, v64, v60);

            v67 = v83;
            v68 = sub_24794EB54();
            v69 = *v75;
            (*v75)(v66, v60);
            v69(v67, v60);

            v32 = v85;
            v13 = v77;
            v54 = v78;
            v28 = v81;
            if (v68)
            {
              v70 = v86;
              v71 = v82;
              if (v81 + 8 != v87)
              {
                *v81 = *v82;
              }

              if (v32 <= v89 || (a2 = v71, v71 <= v70))
              {
                a2 = v71;
                goto LABEL_45;
              }

              goto LABEL_30;
            }
          }
        }

        v55 = v82;
        if (v28 + 8 != v32)
        {
          *v28 = *v56;
        }

        v28 -= 8;
        v32 = v56;
      }

      while (v56 > v89);
      v32 = v56;
      a2 = v87;
    }
  }

  else
  {
    v83 = &v73[-v23];
    if (v89 != a1 || &a1[8 * v27] <= v89)
    {
      v31 = v25;
      memmove(v89, a1, 8 * v27);
      v25 = v31;
    }

    v32 = &v89[8 * v27];
    v33 = v80;
    if (a2 - a1 >= 8 && a2 < v28)
    {
      v34 = a2;
      v35 = (v25 + 48);
      v36 = (v25 + 32);
      v77 = (v25 + 8);
      v82 = (v25 + 32);
      v85 = v32;
      v79 = (v25 + 48);
      while (1)
      {
        v86 = a1;
        v87 = v34;
        v37 = *v34;
        v84 = *v89;
        v38 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        sub_2478E9680(v37 + v38, v33, &qword_27EE572D0, &unk_2479504E0);
        v39 = *v35;
        v40 = v88;
        if ((*v35)(v33, 1, v88) == 1)
        {
          break;
        }

        v81 = *v36;
        (v81)(v83, v33, v40);
        v41 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        v42 = v84;
        swift_beginAccess();
        v43 = v42 + v41;
        v44 = v88;
        v45 = v78;
        sub_2478E9680(v43, v78, &qword_27EE572D0, &unk_2479504E0);
        if (v39(v45, 1, v44) == 1)
        {
          v46 = *v77;

          v46(v83, v44);
          sub_2478E9620(v45, &qword_27EE572D0, &unk_2479504E0);

          v32 = v85;
          v35 = v79;
          v33 = v80;
LABEL_19:
          v52 = v89;
          v51 = v86;
          v89 += 8;
          v34 = v87;
          if (v86 == v52)
          {
            goto LABEL_21;
          }

LABEL_20:
          *v51 = *v52;
          goto LABEL_21;
        }

        v47 = v76;
        (v81)(v76, v45, v44);

        v48 = v83;
        v49 = sub_24794EB54();
        v50 = *v77;
        (*v77)(v47, v88);
        v50(v48, v88);

        v32 = v85;
        v35 = v79;
        v33 = v80;
        if ((v49 & 1) == 0)
        {
          goto LABEL_19;
        }

        v51 = v86;
        v52 = v87;
        v34 = v87 + 8;
        if (v86 != v87)
        {
          goto LABEL_20;
        }

LABEL_21:
        a1 = v51 + 8;
        v36 = v82;
        if (v89 >= v32 || v34 >= v28)
        {
          goto LABEL_23;
        }
      }

      sub_2478E9620(v33, &qword_27EE572D0, &unk_2479504E0);
      v32 = v85;
      goto LABEL_19;
    }

LABEL_23:
    a2 = a1;
  }

LABEL_45:
  if (a2 != v89 || a2 >= &v89[(v32 - v89 + (v32 - v89 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v89, 8 * ((v32 - v89) / 8));
  }

  return 1;
}

uint64_t sub_2478FFF60(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2478FFFEC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_247900000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE573B0, &qword_247950A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_247900130(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_24794F414();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2479001D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24794F414();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24794F414();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2479004F4(&qword_27EE573C0, &qword_27EE573B8, &unk_247950A80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE573B8, &unk_247950A80);
            v9 = sub_24790C03C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriRequestRecord(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247900364(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24794F414();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24794F414();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2479004F4(&qword_27EE573A8, &qword_27EE573A0, &qword_247950A70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE573A0, &qword_247950A70);
            v9 = sub_24790C12C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MetricsCalcRecord(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2479004F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24790058C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24794F414();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_24794F414();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2479046D8(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2479001D4(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24790067C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_24793AEC8(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_24793F2FC(v39, &v3[4 * v11 + 32], v9 - v11, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v12 + 64) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = (v12 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v41 = v22;
          v42 = 0;
          goto LABEL_13;
        }

        v24 = *(v13 + 8 * v23);
        ++v17;
      }

      while (!v24);
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v17 = v23;
      goto LABEL_27;
    }

    *(v3 + 2) = v17;
  }

  result = v39[0];
  if (v14 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v13 = v39[1];
  v12 = v40;
  v17 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v18 = (v42 - 1) & v42;
  v19 = __clz(__rbit64(v42)) | (v41 << 6);
  v20 = (v40 + 64) >> 6;
LABEL_27:
  v25 = *(*(result + 48) + 4 * v19);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v36 = v17;
  v37 = v20;
  v38 = result;
  v31 = v13;
  v32 = v3;
  v33 = v18;
  v34 = sub_24793AEC8((v26 > 1), v6 + 1, 1, v32);
  v18 = v33;
  v17 = v36;
  v20 = v37;
  v13 = v31;
  v3 = v34;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[4 * v6++ + 32] = v25;
    if (!v18)
    {
      break;
    }

LABEL_34:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = *(*(result + 48) + ((v17 << 8) | (4 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_30;
    }
  }

  v29 = v17;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v30 >= v20)
    {
      break;
    }

    v18 = *(v13 + 8 * v30);
    ++v29;
    if (v18)
    {
      v17 = v30;
      goto LABEL_34;
    }
  }

  if (v20 <= v17 + 1)
  {
    v35 = v17 + 1;
  }

  else
  {
    v35 = v20;
  }

  v40 = v12;
  v41 = v35 - 1;
  v42 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_2478FE384();
  *v1 = v3;
  return result;
}

double sub_247900904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_24792BEB4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_2478F65EC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_247900968(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_24794F424();

    if (v3)
    {
      type metadata accessor for MetricsCalcCounts();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_24792C168(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

uint64_t sub_247900A18(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_2478E9680(a3 + v16 + v17 * v14, v13, &qword_27EE57428, &qword_247950E80);
      v18 = a1(v13);
      if (v3)
      {
        sub_2478E9620(v13, &qword_27EE57428, &qword_247950E80);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_247904EA0(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_247904778(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_247904778(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_247904EA0(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_2478E9620(v13, &qword_27EE57428, &qword_247950E80);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_247900C7C(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ncScore;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId);
  *v7 = 0;
  v7[1] = 0;
  strcpy(v59, "ttm_decision");
  BYTE5(v59[1]) = 0;
  HIWORD(v59[1]) = -5120;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v8 = sub_24792BEB4(v60), (v9 & 1) == 0))
  {
    sub_2478F6598(v60);
    goto LABEL_7;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v8, v61);
  sub_2478F6598(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = sub_24794EEF4();

  v11 = v10;
  if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_UNKNOWN"])
  {
    v12 = 0;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_NOT_MITIGATED"])
  {
    v12 = 1;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_MITIGATED"])
  {
    v12 = 2;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_RECOMMEND_MITIGATED"])
  {
    v12 = 3;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_MAYBE_MITIGATED"])
  {
    v12 = 4;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_DO_NOT_OVERRIDE"])
  {
    v12 = 5;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_MATCHED_USE_MODEL_DECISION"])
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ttmDecision) = v12;
  strcpy(v59, "nc_decision");
  HIDWORD(v59[1]) = -352321536;
  sub_24794F2E4();
  if (*(a1 + 16) && (v13 = sub_24792BEB4(v60), (v14 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v13, v61);
    sub_2478F6598(v60);
    if (swift_dynamicCast())
    {
      v15 = sub_24794EEF4();

      v16 = v15;
      if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_UNKNOWN"])
      {
        v17 = 0;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_NOT_MITIGATED"])
      {
        v17 = 1;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_MITIGATED"])
      {
        v17 = 2;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_RECOMMEND_MITIGATED"])
      {
        v17 = 3;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_MAYBE_MITIGATED"])
      {
        v17 = 4;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_DO_NOT_OVERRIDE"])
      {
        v17 = 5;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_MATCHED_USE_MODEL_DECISION"])
      {
        v17 = 6;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_2478F6598(v60);
  }

  v17 = 0;
LABEL_15:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ncDecision) = v17;
  strcpy(v59, "spkrId_score");
  BYTE5(v59[1]) = 0;
  HIWORD(v59[1]) = -5120;
  sub_24794F2E4();
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v18 = sub_24792BEB4(v60);
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v18, v61);
  sub_2478F6598(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v23 = 1;
    goto LABEL_26;
  }

  v20 = *v59;
  v59[0] = 0xD000000000000010;
  v59[1] = 0x8000000247954F80;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v21 = sub_24792BEB4(v60), (v22 & 1) == 0))
  {
LABEL_24:
    sub_2478F6598(v60);
    goto LABEL_25;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v21, v61);
  sub_2478F6598(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (*v59 < v20)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

LABEL_26:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_spkrIdMitigation) = v23;
  strcpy(v59, "nc_score");
  BYTE1(v59[1]) = 0;
  WORD1(v59[1]) = 0;
  HIDWORD(v59[1]) = -402653184;
  sub_24794F2E4();
  if (*(a1 + 16) && (v24 = sub_24792BEB4(v60), (v25 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v24, v61);
    sub_2478F6598(v60);
    if (swift_dynamicCast())
    {
      *v4 = v59[0];
      *(v4 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(v60);
  }

  v59[0] = 0xD000000000000022;
  v59[1] = 0x8000000247954E90;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v26 = sub_24792BEB4(v60), (v27 & 1) == 0))
  {
    sub_2478F6598(v60);
    goto LABEL_36;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v26, v61);
  sub_2478F6598(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v28 = 0;
    goto LABEL_37;
  }

  v28 = v59[0];
LABEL_37:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_phsRejectBeforeActivationCount) = v28;
  v59[0] = 0xD000000000000029;
  v59[1] = 0x8000000247954EC0;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v29 = sub_24792BEB4(v60), (v30 & 1) == 0))
  {
    sub_2478F6598(v60);
    goto LABEL_42;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v29, v61);
  sub_2478F6598(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v31 = 0;
    goto LABEL_43;
  }

  v31 = v59[0];
LABEL_43:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerHSRejectBeforeActivationCount) = v31;
  v59[0] = 0xD000000000000029;
  v59[1] = 0x8000000247954EF0;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v32 = sub_24792BEB4(v60), (v33 & 1) == 0))
  {
    sub_2478F6598(v60);
    goto LABEL_48;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v32, v61);
  sub_2478F6598(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v34 = 0;
    goto LABEL_49;
  }

  v34 = v59[0];
LABEL_49:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerJSRejectBeforeActivationCount) = v34;
  v59[0] = 0xD000000000000010;
  v59[1] = 0x8000000247954F20;
  sub_24794F2E4();
  if (*(a1 + 16) && (v35 = sub_24792BEB4(v60), (v36 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v35, v61);
    sub_2478F6598(v60);
    if (swift_dynamicCast())
    {
      v37 = v59[1];
      v38 = v5[1];
      *v5 = v59[0];
      v5[1] = v37;
    }
  }

  else
  {
    sub_2478F6598(v60);
  }

  v59[0] = 0xD000000000000018;
  v59[1] = 0x8000000247954F40;
  sub_24794F2E4();
  if (*(a1 + 16) && (v39 = sub_24792BEB4(v60), (v40 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v39, v61);
    sub_2478F6598(v60);
    if (swift_dynamicCast())
    {
      v41 = v59[1];
      v42 = v6[1];
      *v6 = v59[0];
      v6[1] = v41;
    }
  }

  else
  {
    sub_2478F6598(v60);
  }

  v59[0] = 0xD000000000000015;
  v59[1] = 0x8000000247954F60;
  sub_24794F2E4();
  if (*(a1 + 16) && (v43 = sub_24792BEB4(v60), (v44 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v43, v61);
    sub_2478F6598(v60);
    if (swift_dynamicCast())
    {
      v45 = v59[1];
      v46 = v7[1];
      *v7 = v59[0];
      v7[1] = v45;
    }
  }

  else
  {
    sub_2478F6598(v60);
  }

  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase) = 0;
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription) = 0;
  result = sub_2478F0B18(a1);
  v48 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8);
  if (v48)
  {
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best) & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription) = 1;
    }
  }

  if ((*(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) == 0)
  {
    v50 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
    if (v50 == 80 || v50 == 17)
    {
      v51 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase;
      *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase) = 1;
      if (v48)
      {
        v52 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
        if (v52)
        {
          v53 = result;
          v54 = v52;

          SISchemaISOLocale.toString()();

          if (*(v53 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase + 4) == 1)
          {

            return v53;
          }

          v55 = *(v53 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase);
          v56 = sub_247944340();

          if (v56 == 1)
          {

            result = v53;
            if (v55 == 1)
            {
LABEL_102:
              *(result + v51) = 0;
              return result;
            }
          }

          else
          {
            v57 = sub_24794F4E4();

            if (v57)
            {
              result = v53;
              if (v55 == 1)
              {
                goto LABEL_102;
              }
            }

            if (v56 > 1u)
            {

              result = v53;
              goto LABEL_101;
            }
          }

          v58 = sub_24794F4E4();

          result = v53;
          if ((v58 & 1) == 0)
          {
            return result;
          }

LABEL_101:
          if (v55 != 2)
          {
            return result;
          }

          goto LABEL_102;
        }
      }
    }
  }

  return result;
}

uint64_t sub_247901824()
{
  sub_24794F344();
  MEMORY[0x24C1AE4C0](538976288, 0xE400000000000000);
  v1 = sub_2478F54C0();
  MEMORY[0x24C1AE4C0](v1);

  MEMORY[0x24C1AE4C0](0xD000000000000031, 0x80000002479552A0);
  if ((*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
  }

  v3 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v3);

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x80000002479552E0);
  v4 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ttmDecision);
  v5 = sub_24794F1F4();
  MEMORY[0x24C1AE4C0](v5);

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x8000000247955300);
  v6 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ncDecision);
  v7 = sub_24794F1F4();
  MEMORY[0x24C1AE4C0](v7);

  MEMORY[0x24C1AE4C0](0xD000000000000019, 0x8000000247955320);
  v8 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_spkrIdMitigation);
  v9 = sub_24794F1F4();
  MEMORY[0x24C1AE4C0](v9);

  MEMORY[0x24C1AE4C0](0xD000000000000029, 0x8000000247955340);
  v20 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_phsRejectBeforeActivationCount);
  v10 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v10);

  MEMORY[0x24C1AE4C0](0xD00000000000002FLL, 0x8000000247955370);
  v21 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerHSRejectBeforeActivationCount);
  v11 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v11);

  MEMORY[0x24C1AE4C0](0xD000000000000029, 0x80000002479553A0);
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x24C1AE4C0](v12, v13);

  MEMORY[0x24C1AE4C0](0xD00000000000002BLL, 0x80000002479553D0);
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x24C1AE4C0](v14, v15);

  MEMORY[0x24C1AE4C0](0xD000000000000019, 0x8000000247955400);
  v22 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion);
  v25 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
  v16 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v16);

  MEMORY[0x24C1AE4C0](0xD000000000000021, 0x8000000247955420);
  v23 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion);
  v26 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion + 8);

  v17 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v17);

  MEMORY[0x24C1AE4C0](0xD00000000000001ELL, 0x8000000247955450);
  v24 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId);
  v27 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId + 8);

  v18 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v18);

  return 0;
}

uint64_t sub_247901C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId + 8);
}

uint64_t sub_247901CBC()
{
  v0 = sub_2478F5718();
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_247901D70()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);

  sub_24794EF74();

  v4 = *(v1 + 32);
  sub_24794F5A4();
  v5 = *(v1 + 40);
  sub_24794F224();

  v6 = *(v1 + 80);
  *(v1 + 84);
  return sub_24794F5A4();
}

uint64_t sub_247901E00()
{
  v1 = v0;
  sub_24794F344();
  MEMORY[0x24C1AE4C0](0xD000000000000027, 0x8000000247955160);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  MEMORY[0x24C1AE4C0](v2, v3);

  MEMORY[0x24C1AE4C0](0xD000000000000012, 0x8000000247955190);
  v4 = *(v0 + 32);
  v5 = sub_24794F1E4();
  MEMORY[0x24C1AE4C0](v5);

  MEMORY[0x24C1AE4C0](0xD000000000000016, 0x80000002479551B0);
  v6 = *(v0 + 40);
  v7 = [v6 description];
  v8 = sub_24794EF04();
  v10 = v9;

  MEMORY[0x24C1AE4C0](v8, v10);

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x80000002479551D0);
  if (*(v1 + 56))
  {
    v11 = *(v1 + 48);
    v12 = *(v1 + 56);
  }

  else
  {
    v11 = 7104878;
    v12 = 0xE300000000000000;
  }

  MEMORY[0x24C1AE4C0](v11, v12);

  MEMORY[0x24C1AE4C0](0xD00000000000001DLL, 0x80000002479551F0);
  if (*(v1 + 72))
  {
    v13 = *(v1 + 64);
    v14 = *(v1 + 72);
  }

  else
  {
    v13 = 7104878;
    v14 = 0xE300000000000000;
  }

  MEMORY[0x24C1AE4C0](v13, v14);

  MEMORY[0x24C1AE4C0](0xD000000000000017, 0x8000000247955210);
  if ((*(v1 + 84) & 1) == 0)
  {
    v15 = *(v1 + 80);
  }

  v16 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v16);

  MEMORY[0x24C1AE4C0](0xD000000000000014, 0x8000000247955230);
  if ((*(v1 + 92) & 1) == 0)
  {
    v17 = *(v1 + 88);
  }

  v18 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v18);

  MEMORY[0x24C1AE4C0](0xD00000000000001BLL, 0x8000000247955250);
  v19 = *(v1 + 96);
  *(v1 + 104);
  v20 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v20);

  MEMORY[0x24C1AE4C0](0xD000000000000020, 0x8000000247955270);
  v21 = *(v1 + 108);
  *(v1 + 112);
  sub_24794F104();
  return 0;
}

uint64_t sub_24790215C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_2479021AC()
{
  v1 = *v0;
  sub_24794F584();
  sub_247901D70();
  return sub_24794F5B4();
}

uint64_t sub_247902214()
{
  sub_24794F584();
  v1 = *v0;
  sub_247901D70();
  return sub_24794F5B4();
}

uint64_t sub_247902284()
{
  sub_24794F344();
  MEMORY[0x24C1AE4C0](0xD000000000000037, 0x8000000247954FA0);
  v1 = *(v0 + 16);
  *(v0 + 24);
  v2 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v2);

  MEMORY[0x24C1AE4C0](0xD000000000000029, 0x8000000247954FE0);
  v3 = *(v0 + 32);
  *(v0 + 40);
  v4 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v4);

  MEMORY[0x24C1AE4C0](0xD000000000000027, 0x8000000247955010);
  v5 = *(v0 + 48);
  *(v0 + 56);
  v6 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v6);

  MEMORY[0x24C1AE4C0](0xD000000000000028, 0x8000000247955040);
  v7 = *(v0 + 64);
  *(v0 + 72);
  v8 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v8);

  MEMORY[0x24C1AE4C0](0xD000000000000026, 0x8000000247955070);
  v9 = *(v0 + 80);
  *(v0 + 88);
  v10 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v10);

  MEMORY[0x24C1AE4C0](0xD000000000000026, 0x80000002479550A0);
  v11 = *(v0 + 96);
  *(v0 + 104);
  v12 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v12);

  MEMORY[0x24C1AE4C0](0xD000000000000024, 0x80000002479550D0);
  v13 = *(v0 + 112);
  *(v0 + 120);
  v14 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v14);

  MEMORY[0x24C1AE4C0](0xD00000000000002ALL, 0x8000000247955100);
  v15 = *(v0 + 128);
  *(v0 + 136);
  v16 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v16);

  MEMORY[0x24C1AE4C0](0xD000000000000026, 0x8000000247955130);
  v17 = *(v0 + 144);
  *(v0 + 152);
  v18 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v18);

  return 0;
}

CoreSpeechDataAnalytics::RejectTrackerType_optional __swiftcall RejectTrackerType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24790266C()
{
  result = qword_27EE573C8;
  if (!qword_27EE573C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE573C8);
  }

  return result;
}

uint64_t sub_2479026C0()
{
  v1 = *v0;
  sub_24794F584();
  MEMORY[0x24C1AEAB0](v1);
  return sub_24794F5B4();
}

uint64_t sub_247902734()
{
  v1 = *v0;
  sub_24794F584();
  MEMORY[0x24C1AEAB0](v1);
  return sub_24794F5B4();
}

unint64_t sub_247902790()
{
  result = qword_27EE573D0;
  if (!qword_27EE573D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE573D8, &qword_247950B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE573D0);
  }

  return result;
}

uint64_t sub_247902904(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v48 - v14);
  if (a2 == 2)
  {
    v16 = *(v13 + 48);
    *v15 = a1;
    v17 = sub_24794EBB4();
    (*(*(v17 - 8) + 16))(v15 + v16, a3, v17);
    swift_beginAccess();
    v18 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  v23 = swift_beginAccess();
  v24 = *(v4 + 24);
  MEMORY[0x28223BE20](v23);
  *(&v48 - 2) = a3;

  v25 = sub_247900A18(sub_247904E40, (&v48 - 4), v24);
  v18 = v25;
  v50 = *(v25 + 16);
  if (!v50)
  {
LABEL_22:

    v47 = *(v4 + 24);
    *(v4 + 24) = MEMORY[0x277D84F90];
  }

  v26 = 0;
  v49 = v25 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v15 = &qword_27EE57428;
  v27 = &qword_247950E80;
  while (v26 < v18[2])
  {
    v28 = v15;
    v29 = v27;
    sub_2478E9680(v49 + *(v51 + 72) * v26, v12, v15, v27);
    v30 = *v12;
    swift_beginAccess();
    v31 = *(v4 + 32);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v4 + 32);
    v15 = v52;
    *(v4 + 32) = 0x8000000000000000;
    v33 = sub_24792C090(v30);
    v35 = v15[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (v15[3] >= v38)
    {
      if ((v32 & 1) == 0)
      {
        v46 = v33;
        sub_24794C48C();
        v33 = v46;
        v15 = v52;
        *(v4 + 32) = v52;
        if (v39)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_247949D40(v38, v32);
      v15 = v52;
      v33 = sub_24792C090(v30);
      if ((v39 & 1) != (v40 & 1))
      {
        type metadata accessor for SISchemaInvocationSource(0);
        result = sub_24794F514();
        __break(1u);
        return result;
      }
    }

    *(v4 + 32) = v15;
    if (v39)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15[(v33 >> 6) + 8] |= 1 << v33;
    *(v15[6] + 4 * v33) = v30;
    *(v15[7] + 8 * v33) = 0;
    v41 = v15[2];
    v37 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v37)
    {
      goto LABEL_26;
    }

    v15[2] = v42;
LABEL_17:
    v43 = v15[7];
    v44 = *(v43 + 8 * v33);
    v37 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v37)
    {
      goto LABEL_25;
    }

    ++v26;
    *(v43 + 8 * v33) = v45;
    swift_endAccess();
    v15 = v28;
    v27 = v29;
    sub_2478E9620(v12, v28, v29);
    if (v50 == v26)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  v18 = sub_24793ACD8(0, v18[2] + 1, 1, v18);
  *(v4 + 24) = v18;
LABEL_3:
  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_24793ACD8(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  sub_247904EA0(v15, v18 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v21);
  *(v4 + 24) = v18;
  return swift_endAccess();
}

uint64_t sub_247902D54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_247902DB8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - v6;
  v8 = sub_24794EBB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2479040C0(a1);
  if (result & 1) == 0 || (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4))
  {
    return result;
  }

  v14 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
  v15 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase);
  v16 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription);
  v53 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ttmDecision;
  v17 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ttmDecision) == 2;
  v55 = v9;
  v56 = v17;
  v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
  result = swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + 16);
  v54 = v14;
  if (v20)
  {
    result = sub_24792C090(v14);
    if (v21)
    {
      v22 = (*(v19 + 56) + 24 * result);
      v24 = *v22;
      v23 = v22[1];
      v20 = v22[2];
      goto LABEL_8;
    }

    v20 = 0;
  }

  v23 = 0;
  v24 = 0;
LABEL_8:
  v25 = __OFADD__(v24, v15);
  v26 = v24 + v15;
  if (v25)
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = (v16 & 1) == 0;
  v28 = v23 + v27;
  if (__OFADD__(v23, v27))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v20 + v56;
  if (__OFADD__(v20, v56))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v30 = *(v2 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v2 + v18);
  *(v2 + v18) = 0x8000000000000000;
  v32 = v28;
  v33 = v54;
  sub_24794B274(v26, v32, v29, v54, isUniquelyReferenced_nonNull_native);
  *(v2 + v18) = v57;
  swift_endAccess();
  v34 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(a1 + v34, v7, &qword_27EE572D0, &unk_2479504E0);
  v35 = v55;
  if ((*(v55 + 48))(v7, 1, v8) == 1)
  {
    return sub_2478E9620(v7, &qword_27EE572D0, &unk_2479504E0);
  }

  (*(v35 + 32))(v12, v7, v8);
  v36 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
  swift_beginAccess();
  v37 = *(v2 + v36);
  if (*(v37 + 16))
  {
    v38 = sub_24792C0FC(0);
    if (v39)
    {
      v40 = *(*(v37 + 56) + 8 * v38);
      v41 = *(a1 + v53);

      sub_247902904(v33, v41, v12);
    }
  }

  v42 = *(v2 + v36);
  if (*(v42 + 16))
  {
    v43 = sub_24792C0FC(1u);
    if (v44)
    {
      v45 = *(*(v42 + 56) + 8 * v43);
      v46 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ncDecision);

      sub_247902904(v33, v46, v12);
    }
  }

  v47 = *(v2 + v36);
  if (*(v47 + 16))
  {
    v48 = sub_24792C0FC(2u);
    if (v49)
    {
      v50 = *(*(v47 + 56) + 8 * v48);
      v51 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_spkrIdMitigation);

      sub_247902904(v33, v51, v12);
    }
  }

  return (*(v35 + 8))(v12, v8);
}

uint64_t sub_2479031C4()
{
  v1 = v0;
  v2 = sub_24794DF28(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (*(v4 + 16) && (v5 = sub_24792C0FC(0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_beginAccess();
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v1 + v3);
  if (*(v9 + 16) && (v10 = sub_24792C0FC(1u), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_beginAccess();
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v1 + v3);
  if (*(v14 + 16) && (v15 = sub_24792C0FC(2u), (v16 & 1) != 0))
  {
    v17 = v2;
    v18 = *(*(v14 + 56) + 8 * v15);
    swift_beginAccess();
    v19 = *(v18 + 32);
  }

  else
  {
    v17 = v2;
    v20 = 0;
  }

  v180[4] = v8;
  v180[5] = v13;
  v180[6] = v20;
  v152 = v20;

  v154 = v8;

  v153 = v13;

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
LABEL_14:
  if (v21 <= 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = v21;
  }

  while (v21 != 3)
  {
    if (v24 == v21)
    {
      goto LABEL_121;
    }

    v25 = &v180[v21];
    v26 = v25[4];
    ++v21;
    if (v26)
    {
      v27 = v25[4];

      v28 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_24793AFCC(0, v23[2] + 1, 1, v23);
      }

      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        v23 = sub_24793AFCC((v29 > 1), v30 + 1, 1, v23);
      }

      v23[2] = v30 + 1;
      v23[v30 + 4] = v26;
      v1 = v28;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57418, &qword_247950E68);
  swift_arrayDestroy();
  v178 = v22;
  v31 = v23[2];
  if (v31)
  {
    v32 = 0;
    while (v32 < v23[2])
    {
      v33 = v32 + 1;
      v34 = v23[v32 + 4];

      sub_24790067C(v35);
      v32 = v33;
      if (v31 == v33)
      {
        goto LABEL_29;
      }
    }

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

LABEL_29:

  v36 = v178;
  v179 = MEMORY[0x277D84FA0];
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = 32;
    v39 = v17;
    do
    {
      sub_24793E22C(&v181, *(v36 + v38));
      v38 += 4;
      --v37;
    }

    while (v37);

    v40 = v179;
  }

  else
  {

    v40 = MEMORY[0x277D84FA0];
    v39 = v17;
  }

  v181 = v40;
  v41 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
  swift_beginAccess();
  v174 = v41;
  v42 = *(v1 + v41);

  sub_247903E20(v43);
  v44 = 0;
  v45 = v181 + 56;
  v150 = v181 + 56;
  v151 = v181;
  v46 = 1 << *(v181 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v181 + 56);
  v156 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion);
  v155 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion);
  v49 = (v46 + 63) >> 6;
  v149 = v49;
  while (1)
  {
    v173 = v39;
    if (!v48)
    {
      break;
    }

    v52 = v44;
LABEL_44:
    v53 = *(v1 + 16);
    v54 = *(v1 + 24);
    v55 = *(v1 + 32);
    v56 = v156[1];
    v57 = v155[1];
    v58 = *(v1 + 40);
    v164 = *(v1 + 48);
    v162 = *(v1 + 56);
    v159 = *(*(v151 + 48) + ((v52 << 8) | (4 * __clz(__rbit64(v48)))));
    v160 = *(v1 + 60);
    v158 = *(v1 + 64);
    v157 = *v155;
    v166 = *v156;
    type metadata accessor for MetricsCalcDimensions();
    v59 = swift_allocObject();
    *(v59 + 16) = v53;
    *(v59 + 24) = v54;
    *(v59 + 32) = v55;
    v168 = v58;
    *(v59 + 40) = v58;
    *&v60 = v166;
    *(&v60 + 1) = v56;
    *&v61 = v157;
    *(&v61 + 1) = v57;
    *(v59 + 48) = v60;
    *(v59 + 64) = v61;
    *(v59 + 80) = v159;
    *(v59 + 84) = 0;
    *(v59 + 88) = 0;
    *(v59 + 92) = 1;
    *(v59 + 96) = v164;
    *(v59 + 104) = v162;
    *(v59 + 108) = v160;
    *(v59 + 112) = v158;
    v62 = *(v1 + v174);
    if (*(v62 + 16))
    {
      v63 = sub_24792C090(v159);
      v65 = v152;
      v64 = v153;
      if (v66)
      {
        v165 = *(*(v62 + 56) + 24 * v63);
      }

      else
      {
        v165 = 0;
      }

      v67 = v173;
    }

    else
    {
      v165 = 0;
      v67 = v173;
      v65 = v152;
      v64 = v153;
    }

    v68 = *(v1 + v174);
    if (*(v68 + 16) && (v69 = sub_24792C090(v159), (v70 & 1) != 0))
    {
      v163 = *(*(v68 + 56) + 24 * v69 + 8);
    }

    else
    {
      v163 = 0;
    }

    v71 = *(v1 + v174);
    if (*(v71 + 16) && (v72 = sub_24792C090(v159), (v73 & 1) != 0))
    {
      v161 = *(*(v71 + 56) + 24 * v72 + 16);
      if (!v64)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v161 = 0;
      if (!v64)
      {
        goto LABEL_63;
      }
    }

    if (!*(v64 + 16))
    {
LABEL_63:
      v74 = v159;
      v77 = 0;
      if (!v65)
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    }

    v74 = v159;
    v75 = sub_24792C090(v159);
    if (v76)
    {
      v77 = *(*(v64 + 56) + 8 * v75);
      if (!v65)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v77 = 0;
      if (!v65)
      {
        goto LABEL_70;
      }
    }

LABEL_66:
    if (*(v65 + 16))
    {
      v78 = sub_24792C090(v74);
      if (v79)
      {
        v80 = *(*(v65 + 56) + 8 * v78);
        v81 = v154;
        if (!v154)
        {
          goto LABEL_75;
        }

        goto LABEL_71;
      }
    }

LABEL_70:
    v80 = 0;
    v81 = v154;
    if (!v154)
    {
      goto LABEL_75;
    }

LABEL_71:
    if (*(v81 + 16) && (v82 = sub_24792C090(v74), (v83 & 1) != 0))
    {
      v81 = *(*(v81 + 56) + 8 * v82);
    }

    else
    {
      v81 = 0;
    }

LABEL_75:
    type metadata accessor for MetricsCalcCounts();
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    *(v84 + 32) = 0;
    *(v84 + 40) = 0;
    *(v84 + 48) = 0;
    *(v84 + 56) = 0;
    *(v84 + 64) = v165;
    *(v84 + 72) = 0;
    *(v84 + 80) = v163;
    *(v84 + 88) = 0;
    *(v84 + 96) = v161;
    *(v84 + 104) = 0;
    *(v84 + 112) = v77;
    *(v84 + 120) = 0;
    *(v84 + 128) = v80;
    *(v84 + 136) = 0;
    *(v84 + 144) = v81;
    *(v84 + 152) = 0;
    if ((v67 & 0xC000000000000001) != 0)
    {
      if (v67 < 0)
      {
        v85 = v67;
      }

      else
      {
        v85 = v67 & 0xFFFFFFFFFFFFFF8;
      }

      v86 = v168;

      v87 = sub_24794F414();
      if (__OFADD__(v87, 1))
      {
        goto LABEL_124;
      }

      v67 = sub_247904ADC(v85, v87 + 1);
    }

    else
    {

      v88 = v168;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v177 = v67;
    v90 = sub_24792C168(v59);
    v92 = *(v67 + 16);
    v93 = (v91 & 1) == 0;
    v94 = __OFADD__(v92, v93);
    v95 = v92 + v93;
    if (v94)
    {
      goto LABEL_123;
    }

    v96 = v91;
    if (*(v67 + 24) >= v95)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v101 = v90;
        sub_24794C73C();
        v90 = v101;
      }
    }

    else
    {
      sub_24794A260(v95, isUniquelyReferenced_nonNull_native);
      v90 = sub_24792C168(v59);
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_131;
      }
    }

    v48 &= v48 - 1;
    if (v96)
    {
      v39 = v67;
      v50 = *(v67 + 56);
      v51 = *(v50 + 8 * v90);
      *(v50 + 8 * v90) = v84;
    }

    else
    {
      v98 = v90;

      v39 = v177;
      v177[(v98 >> 6) + 8] |= 1 << v98;
      *(v177[6] + 8 * v98) = v59;
      *(v177[7] + 8 * v98) = v84;
      v99 = v177[2];
      v94 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v94)
      {
        goto LABEL_125;
      }

      v177[2] = v100;
    }

    v44 = v52;
    v49 = v149;
    v45 = v150;
  }

  while (2)
  {
    v52 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v52 < v49)
    {
      v48 = *(v45 + 8 * v52);
      ++v44;
      if (v48)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  v102 = *(v1 + 16);
  v103 = *(v1 + 24);
  v104 = *(v1 + 32);
  v105 = v156[1];
  v106 = v155[1];
  v107 = *(v1 + 40);
  v175 = *(v1 + 48);
  v108 = *(v1 + 56);
  v109 = *(v1 + 60);
  v171 = *(v1 + 64);
  v169 = *v155;
  v167 = *v156;
  type metadata accessor for MetricsCalcDimensions();
  v110 = swift_allocObject();
  *(v110 + 16) = v102;
  *(v110 + 24) = v103;
  *(v110 + 32) = v104;
  *(v110 + 40) = v107;
  *&v112 = v167;
  *&v111 = v169;
  *(&v112 + 1) = v105;
  *(&v111 + 1) = v106;
  *(v110 + 48) = v112;
  *(v110 + 64) = v111;
  *(v110 + 80) = 17;
  *(v110 + 84) = 0;
  *(v110 + 88) = 0;
  *(v110 + 92) = 1;
  *(v110 + 96) = v175;
  *(v110 + 104) = v108;
  *(v110 + 108) = v109;
  *(v110 + 112) = v171;

  v113 = v173;

  v114 = v107;

  v115 = sub_247900968(v110, v173);
  if (!v115)
  {
    v122 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount);
    v123 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount);
    type metadata accessor for MetricsCalcCounts();
    v124 = swift_allocObject();
    *(v124 + 16) = v122;
    *(v124 + 24) = 0;
    *(v124 + 32) = v123;
    *(v124 + 40) = 0;
    *(v124 + 48) = 0;
    *(v124 + 56) = 1;
    *(v124 + 64) = 0;
    *(v124 + 72) = 1;
    *(v124 + 80) = 0;
    *(v124 + 88) = 1;
    *(v124 + 96) = 0;
    *(v124 + 104) = 1;
    *(v124 + 112) = 0;
    *(v124 + 120) = 1;
    *(v124 + 128) = 0;
    *(v124 + 136) = 1;
    *(v124 + 144) = 0;
    *(v124 + 152) = 1;
    if ((v173 & 0xC000000000000001) != 0)
    {
      if (v173 < 0)
      {
        v125 = v173;
      }

      else
      {
        v125 = v173 & 0xFFFFFFFFFFFFFF8;
      }

      v126 = sub_24794F414();
      if (__OFADD__(v126, 1))
      {
        goto LABEL_129;
      }

      v113 = sub_247904ADC(v125, v126 + 1);
    }

    else
    {
    }

    v127 = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B3C0(v124, v110, v127);

    v173 = v113;
LABEL_107:
    v128 = *(v1 + 16);
    v129 = *(v1 + 24);
    v130 = *(v1 + 32);
    v170 = *v155;
    v172 = *v156;
    v132 = *(v1 + 40);
    v131 = *(v1 + 48);
    v176 = *(v1 + 56);
    v133 = v1;
    v134 = *(v1 + 60);
    v135 = *(v133 + 64);
    v136 = swift_allocObject();
    *(v136 + 16) = v128;
    *(v136 + 24) = v129;
    *(v136 + 32) = v130;
    *(v136 + 40) = v132;
    *(v136 + 48) = v172;
    *(v136 + 64) = v170;
    *(v136 + 80) = 80;
    *(v136 + 84) = 0;
    *(v136 + 88) = 0;
    *(v136 + 92) = 1;
    *(v136 + 96) = v131;
    *(v136 + 104) = v176;
    *(v136 + 108) = v134;
    *(v136 + 112) = v135;

    v137 = v132;

    v138 = v173;
    v139 = sub_247900968(v136, v173);
    if (v139)
    {
      v140 = *(v139 + 32);
      if (*(v139 + 40))
      {
        v140 = 0;
      }

      v141 = *(v133 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount);
      v94 = __OFADD__(v140, v141);
      v142 = v140 + v141;
      if (v94)
      {
        goto LABEL_128;
      }

      *(v139 + 32) = v142;
      *(v139 + 40) = 0;
    }

    else
    {
      v143 = *(v133 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount);
      type metadata accessor for MetricsCalcCounts();
      v144 = v173;
      v145 = swift_allocObject();
      *(v145 + 16) = 0;
      *(v145 + 24) = 1;
      *(v145 + 32) = v143;
      *(v145 + 40) = 0;
      *(v145 + 48) = 0;
      *(v145 + 56) = 1;
      *(v145 + 64) = 0;
      *(v145 + 72) = 1;
      *(v145 + 80) = 0;
      *(v145 + 88) = 1;
      *(v145 + 96) = 0;
      *(v145 + 104) = 1;
      *(v145 + 112) = 0;
      *(v145 + 120) = 1;
      *(v145 + 128) = 0;
      *(v145 + 136) = 1;
      *(v145 + 144) = 0;
      *(v145 + 152) = 1;
      if ((v173 & 0xC000000000000001) != 0)
      {
        if (v173 >= 0)
        {
          v144 = v173 & 0xFFFFFFFFFFFFFF8;
        }

        v146 = sub_24794F414();
        if (__OFADD__(v146, 1))
        {
          goto LABEL_130;
        }

        v144 = sub_247904ADC(v144, v146 + 1);
      }

      else
      {
      }

      v147 = swift_isUniquelyReferenced_nonNull_native();
      sub_24794B3C0(v145, v136, v147);

      v138 = v144;
    }

    sub_247903F00();

    return v138;
  }

  v116 = *(v115 + 32);
  if (*(v115 + 40))
  {
    v116 = 0;
  }

  v117 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount);
  v94 = __OFADD__(v116, v117);
  v118 = v116 + v117;
  if (v94)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  *(v115 + 32) = v118;
  *(v115 + 40) = 0;
  v119 = *(v115 + 16);
  if (*(v115 + 24))
  {
    v119 = 0;
  }

  v120 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount);
  v94 = __OFADD__(v119, v120);
  v121 = v119 + v120;
  if (!v94)
  {
    *(v115 + 16) = v121;
    *(v115 + 24) = 0;

    goto LABEL_107;
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_24794F514();
  __break(1u);
  return result;
}

uint64_t sub_247903E20(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_24793E22C(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_247903F00()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F98]; v5; result = )
  {
    v11 = v8;
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(*(v2 + 56) + ((v11 << 9) | (8 * v12)));
    swift_beginAccess();
    v14 = *(v13 + 24);
    *(v13 + 24) = v9;

    swift_beginAccess();
    v15 = *(v13 + 32);
    *(v13 + 32) = i;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      v16 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
      swift_beginAccess();
      v17 = *(v0 + v16);
      *(v0 + v16) = i;

      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount) = 0;
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount) = 0;
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount) = 0;
      return result;
    }

    v5 = *(v2 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2479040C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  if (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4))
  {
    return 0;
  }

  v10 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
  if (v10)
  {
    v11 = *(v1 + 40);
    sub_2478E9538(0, &qword_27EE57410, 0x277D5A900);
    v12 = v10;
    v13 = v11;
    v14 = sub_24794F214();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion + 8);
  if (v15)
  {
    v16 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion);
    if (!*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion + 8))
    {
      *v16 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion);
      v16[1] = v15;
    }
  }

  result = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion + 8);
  if (result)
  {
    v18 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion);
    if (!*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion + 8))
    {
      *v18 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion);
      v18[1] = result;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId + 8))
  {
    v19 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId);
    v20 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
    swift_beginAccess();
    sub_2478E9680(v1 + v20, v9, &qword_27EE57278, &unk_247950590);
    v21 = sub_24794EC04();
    if ((*(*(v21 - 8) + 48))(v9, 1, v21) == 1)
    {

      sub_2478E9620(v9, &qword_27EE57278, &unk_247950590);
      sub_24794EBC4();

      swift_beginAccess();
      sub_247904DD0(v7, v1 + v20);
      result = swift_endAccess();
    }

    else
    {
      result = sub_2478E9620(v9, &qword_27EE57278, &unk_247950590);
    }
  }

  v22 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_phsRejectBeforeActivationCount);
  v23 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount);
  v24 = __OFADD__(v23, v22);
  v25 = v23 + v22;
  if (v24)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount) = v25;
  v26 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerHSRejectBeforeActivationCount);
  v27 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount);
  v24 = __OFADD__(v27, v26);
  v28 = v27 + v26;
  if (v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount) = v28;
  v29 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerJSRejectBeforeActivationCount);
  v30 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount);
  v24 = __OFADD__(v30, v29);
  v31 = v30 + v29;
  if (v24)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount) = v31;
  return 1;
}

uint64_t sub_2479043F0()
{
  v1 = *(v0 + 24);

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId, &qword_27EE57278, &unk_247950590);
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_userAggregationId, &qword_27EE57278, &unk_247950590);
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers);

  v5 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts);

  return v0;
}

uint64_t sub_2479044B0()
{
  sub_2479043F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_247904530()
{
  sub_247904628();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_247904628()
{
  if (!qword_27EE57328)
  {
    sub_24794EC04();
    v0 = sub_24794F234();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE57328);
    }
  }
}

unint64_t sub_247904684()
{
  result = qword_27EE57400;
  if (!qword_27EE57400)
  {
    type metadata accessor for MetricsCalcDimensions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57400);
  }

  return result;
}

uint64_t sub_2479046D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_24794F414();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_24794F384();
  *v1 = result;
  return result;
}

size_t sub_247904778(size_t a1, int64_t a2, char a3)
{
  result = sub_2479047B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_247904798(void *a1, int64_t a2, char a3)
{
  result = sub_2479049A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2479047B8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57430, &qword_247950E88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2479049A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57440, &qword_247950E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_247904ADC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
    v2 = sub_24794F484();
    v15 = v2;
    sub_24794F404();
    if (sub_24794F434())
    {
      type metadata accessor for MetricsCalcDimensions();
      do
      {
        swift_dynamicCast();
        type metadata accessor for MetricsCalcCounts();
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_24794A260(v11 + 1, 1);
        }

        v2 = v15;
        v3 = *(v15 + 40);
        sub_24794F584();
        v4 = *(v14 + 16);
        v5 = *(v14 + 24);

        sub_24794EF74();

        v6 = *(v14 + 32);
        sub_24794F5A4();
        v7 = *(v14 + 40);
        sub_24794F224();

        v8 = *(v14 + 80);
        *(v14 + 84);
        sub_24794F5A4();
        sub_24794F5B4();
        v9 = -1 << *(v15 + 32);
        v10 = sub_24794F2B4();
        *(v15 + 64 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v15 + 48) + 8 * v10) = v14;
        *(*(v15 + 56) + 8 * v10) = v13;
        ++*(v15 + 16);
      }

      while (sub_24794F434());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_247904CF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24794F4E4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  sub_2478E9538(0, &qword_27EE57408, 0x277D82BB8);
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = sub_24794F214();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  result = *(a2 + 84);
  if ((*(a1 + 84) & 1) == 0)
  {
    return (*(a1 + 80) == *(a2 + 80)) & ~result;
  }

  return result;
}

uint64_t sub_247904DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_247904E40()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) + 48);
  sub_24794EB24();
  return v3 < 30.0;
}

uint64_t sub_247904EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247904F10(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 48) = 0;
  *(v8 + 56) = 1;
  *(v8 + 60) = 0;
  *(v8 + 64) = 1;
  v14 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
  v15 = sub_24794EC04();
  v16 = *(*(v15 - 8) + 56);
  v16(v8 + v14, 1, 1, v15);
  v16(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_userAggregationId, 1, 1, v15);
  v17 = (v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
  v20 = MEMORY[0x277D84F90];
  *(v8 + v19) = sub_24794DD20(MEMORY[0x277D84F90]);
  v21 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
  *(v8 + v21) = sub_24794DE30(v20);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6 & 1;
  *(v8 + 60) = a7;
  *(v8 + 64) = BYTE4(a7) & 1;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount) = 0;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount) = 0;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount) = 0;
  v22 = sub_24794DE30(v20);
  swift_beginAccess();
  v23 = *(v8 + v21);
  *(v8 + v21) = v22;
  v24 = a4;

  type metadata accessor for MetricsRejectTracker();
  v25 = 0;
  while (1)
  {
    v28 = byte_285984EF8[v25 + 32];
    v29 = swift_allocObject();
    *(v29 + 24) = MEMORY[0x277D84F90];
    *(v29 + 32) = MEMORY[0x277D84F98];
    *(v29 + 16) = v28;
    swift_beginAccess();
    v30 = *(v8 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v8 + v19);
    *(v8 + v19) = 0x8000000000000000;
    v33 = sub_24792C0FC(v28);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      break;
    }

    v39 = v34;
    if (v32[3] < v38)
    {
      sub_2479496D4(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_24792C0FC(v28);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v39)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v43 = v33;
    sub_24794C0B0();
    v33 = v43;
    if (v39)
    {
LABEL_2:
      v26 = v32[7];
      v27 = *(v26 + 8 * v33);
      *(v26 + 8 * v33) = v29;

      goto LABEL_3;
    }

LABEL_10:
    v32[(v33 >> 6) + 8] |= 1 << v33;
    *(v32[6] + v33) = v28;
    *(v32[7] + 8 * v33) = v29;
    v41 = v32[2];
    v37 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v37)
    {
      goto LABEL_16;
    }

    v32[2] = v42;
LABEL_3:
    ++v25;
    *(v8 + v19) = v32;
    swift_endAccess();
    if (v25 == 3)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_24794F514();
  __break(1u);
  return result;
}

uint64_t sub_247905254(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      if (*(*(v26 + 16) + 16) <= 1u)
      {
        break;
      }

      if (*(*(v26 + 16) + 16) != 2)
      {
        goto LABEL_10;
      }

      v17 = type metadata accessor for MetricsCalcRecord(0);
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();

      sub_247900C7C(v20);
LABEL_11:
      MEMORY[0x24C1AE560]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
      }

      sub_24794F0A4();
      if (!--v3)
      {
        return v27;
      }
    }

    if (*(*(v26 + 16) + 16))
    {
      v6 = type metadata accessor for ButtonPressRequestRecord(0);
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

      v10 = sub_2478F0B18(v9);
      v11 = v10;
      v12 = (v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
      if (*(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8))
      {
        v13 = *(v10 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
        if (v13)
        {
          v14 = *v12;
          v15 = v12[1];

          v16 = v13;
          SISchemaISOLocale.toString()();

          LOBYTE(v16) = sub_247944340();

          *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v16;
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    v21 = type metadata accessor for SiriRequestRecord(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    sub_2478F0B18(v24);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_247905470()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_247905564(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (v10)
  {
    v11 = v10;
    (*(a2 + 216))(a1, a2);
    v12 = sub_24794EEF4();

    [v11 setDeviceType_];

    (*(a2 + 224))(a1, a2);
    v13 = sub_24794EEF4();

    v14 = v13;
    if ([v14 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v15 = 0;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v15 = 1;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v15 = 2;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v15 = 3;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v15 = 4;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_VISIONOS"])
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }

    [v11 setProgramCode_];
    v5[2] = v11;
    v5[3] = a3;
    v5[4] = a4;
    v16 = qword_27EE571C0;
    v17 = v11;

    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = v17;

    v20 = sub_24794ED14();
    v21 = sub_24794F154();

    if (os_log_type_enabled(v20, v21))
    {
      v34 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315650;
      v24 = [v19 deviceType];
      if (v24)
      {
        v25 = v24;
        sub_24794EF04();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v26 = sub_24794EF14();
      v28 = sub_247924380(v26, v27, &v35);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      [v19 programCode];
      v29 = sub_24794F1B4();
      v31 = sub_247924380(v29, v30, &v35);

      *(v22 + 14) = v31;
      *(v22 + 22) = 2080;
      v32 = sub_247924380(v34, a4, &v35);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_2478E1000, v20, v21, "Created SELF reporter for deviceType: %s, programCode: %s, fbfBundleId: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v23, -1, -1);
      MEMORY[0x24C1AF180](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    type metadata accessor for MetricsCalcSELFReporter();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id sub_24790596C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v45 - v9;
  result = [objc_allocWithZone(MEMORY[0x277D59288]) init];
  if (!result)
  {
    return result;
  }

  v12 = *(v3 + 16);
  v49 = result;
  [result setFixedDimensions_];
  v53 = MEMORY[0x277D84F90];
  v47 = a3;
  v48 = a2;
  v46 = v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = sub_24794F404() | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v14 = ~v17;
    v13 = a1 + 64;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(a1 + 64);
    v16 = a1;
  }

  v21 = 0;
  v45[1] = v14;
  v50 = MEMORY[0x277D84F90];
  v22 = (v14 + 64) >> 6;
  while ((v16 & 0x8000000000000000) == 0)
  {
    v24 = v21;
    v25 = v15;
    if (!v15)
    {
      while (1)
      {
        v21 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v21 >= v22)
        {
          goto LABEL_27;
        }

        v25 = *(v13 + 8 * v21);
        ++v24;
        if (v25)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_35:
      v42 = v20;
      v43 = sub_24794F414();
      v20 = v42;
      if (v43)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }

LABEL_18:
    v15 = (v25 - 1) & v25;
    v26 = (v21 << 9) | (8 * __clz(__rbit64(v25)));
    v27 = *(*(v16 + 48) + v26);
    v28 = *(*(v16 + 56) + v26);

    if (!v27)
    {
      goto LABEL_27;
    }

LABEL_22:
    sub_247905EE4(v27);
    if (!v31)
    {
      goto LABEL_12;
    }

    v32 = v31;
    v33 = sub_2479060E0(v28);
    if (v33)
    {
      v34 = v33;
      v35 = [objc_allocWithZone(MEMORY[0x277D59290]) init];
      if (v35)
      {
        v23 = v35;
        [v35 setDimensions_];
        [v23 setCounts_];
        v50 = v23;
        v14 = &v53;
        MEMORY[0x24C1AE560]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45[0] = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24794F084();
        }

        sub_24794F0A4();

        v50 = v53;
LABEL_12:
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v29 = sub_24794F434();
  if (v29)
  {
    v14 = v30;
    v51 = v29;
    type metadata accessor for MetricsCalcDimensions();
    swift_dynamicCast();
    v27 = v52;
    v51 = v14;
    type metadata accessor for MetricsCalcCounts();
    swift_dynamicCast();
    v28 = v52;
    if (v27)
    {
      goto LABEL_22;
    }
  }

LABEL_27:
  sub_2478FE384();
  v36 = sub_24794EC04();
  v37 = *(v36 - 8);
  v38 = v46;
  (*(v37 + 16))(v46, v47, v36);
  (*(v37 + 56))(v38, 0, 1, v36);
  v14 = sub_2479062F4(v48, v38);
  sub_2478FB164(v38);
  if (!v14)
  {

    goto LABEL_37;
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v20)
  {

    goto LABEL_37;
  }

  if (v50 >> 62)
  {
    goto LABEL_35;
  }

  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    v39 = v20;
    [v20 setEventMetadata_];
    sub_2479067D0();
    v40 = sub_24794F054();
    v41 = v49;
    [v49 setDigests_];

    [v39 setAttentionInvocationDigestsReported_];

    return v39;
  }

LABEL_36:
  v44 = v20;

LABEL_37:
  return 0;
}

uint64_t sub_247905E80()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_247905EE4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59298]) init];
  v4 = v2;
  if (v2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = v2;

    v8 = sub_24794EEF4();

    [v7 setSystemBuild_];

    [v7 setDataSharingOptInStatus_];
    [v7 setSiriInputLocale_];
    if (*(a1 + 56))
    {
      v9 = *(a1 + 48);
      v10 = v7;

      v11 = sub_24794EEF4();

      [v10 setVoiceTriggerAssetVersion_];
    }

    if (*(a1 + 72))
    {
      v12 = *(a1 + 64);
      v13 = v7;

      v14 = sub_24794EEF4();

      [v13 setMitigationAssetVersion_];
    }
  }

  if (*(a1 + 84))
  {
    if (*(a1 + 92))
    {
      goto LABEL_8;
    }

LABEL_11:
    [v4 setTriggerPhrase_];
    if (!v4)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (*(a1 + 104))
    {
      goto LABEL_16;
    }

    v15 = *(a1 + 96);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v15))
    {
      [v4 setAgeOfProfileInMonths_];
      goto LABEL_16;
    }

    __break(1u);
    return;
  }

  [v4 setInvocationSource_];
  if ((*(a1 + 92) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_16:
  if ((*(a1 + 112) & 1) == 0)
  {
    LODWORD(v3) = *(a1 + 108);
    [v4 setEnrollmentPitchEstimation_];
  }
}

id sub_2479060E0(uint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x277D59280]) init];
  v3 = result;
  if ((*(a1 + 24) & 1) == 0 && result)
  {
    v4 = *(a1 + 16);
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (HIDWORD(v4))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    result = [result setPhsRejectBeforeActivationCount_];
  }

  if ((*(a1 + 40) & 1) != 0 || !v3)
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (HIDWORD(v5))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = [v3 setCheckerRejectBeforeActivationCount_];
LABEL_11:
  if ((*(a1 + 56) & 1) != 0 || !v3)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 48);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  if (HIDWORD(v6))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = [v3 setCheckerNearMissBeforeAcceptCount_];
LABEL_16:
  if ((*(a1 + 72) & 1) != 0 || !v3)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 64);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  if (HIDWORD(v7))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = [v3 setFalseWakeWithNoTriggerPhraseCount_];
LABEL_21:
  if ((*(a1 + 88) & 1) != 0 || !v3)
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 80);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (HIDWORD(v8))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = [v3 setFalseWakeWithSpeechNoMatchCount_];
LABEL_26:
  if ((*(a1 + 104) & 1) != 0 || !v3)
  {
    goto LABEL_31;
  }

  v9 = *(a1 + 96);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (HIDWORD(v9))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  result = [v3 setFalseWakeWithTTMMitigationCount_];
LABEL_31:
  if ((*(a1 + 120) & 1) != 0 || !v3)
  {
    goto LABEL_36;
  }

  v10 = *(a1 + 112);
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if (HIDWORD(v10))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = [v3 setNcAcceptPostNcMitigationCount_];
LABEL_36:
  if ((*(a1 + 136) & 1) != 0 || !v3)
  {
    goto LABEL_41;
  }

  v11 = *(a1 + 128);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (HIDWORD(v11))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = [v3 setSpkidAcceptPostSpkidMitigationCount_];
LABEL_41:
  if ((*(a1 + 152) & 1) != 0 || !v3)
  {
    return v3;
  }

  v12 = *(a1 + 144);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  if (!HIDWORD(v12))
  {
    [v3 setTtmAcceptPostTtmMitigationCount_];
    return v3;
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_2479062F4(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_24794ECC4();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24794EBB4();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v15 = sub_24794EC04();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  if (!v23)
  {
    return v23;
  }

  sub_2478FA014(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_2478FB164(v14);
    return 0;
  }

  (*(v16 + 32))(v22, v14, v15);
  sub_24794EBF4();
  v24 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v25 = sub_24794EBE4();
  v26 = [v24 initWithNSUUID_];

  v27 = v20;
  v28 = *(v16 + 8);
  v28(v27, v15);
  [v23 setOddId_];

  v29 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v30 = sub_24794EBE4();
  v31 = [v29 initWithNSUUID_];

  [v23 setDeviceAggregationId_];
  result = sub_24794EB74();
  v34 = v33 * 1000.0;
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v34 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v34 < 1.84467441e19)
  {
    [v23 setEventTimestampInMsSince1970_];
    v35 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    sub_24794EC94();
    sub_24794EC54();
    (*(v37 + 8))(v6, v3);
    sub_24794EB74();
    if (v36 > -1.0 && v36 < 1.84467441e19 && v36 == trunc(v36))
    {
      [v35 setStartTimestampInSecondsSince1970_];
      if (v35)
      {
        [v35 setNumberOfSeconds_];
      }
    }

    [v23 setAggregationInterval_];
    [v23 setEventOrigin_];

    (*(v38 + 8))(v10, v39);
    v28(v22, v15);
    return v23;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_2479067D0()
{
  result = qword_27EE57448;
  if (!qword_27EE57448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57448);
  }

  return result;
}

void sub_24790681C()
{
  v1 = (*(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = *(v0 + 112);
    v5 = v1[1];

    v6 = sub_2478EFE9C(v3, v2);

    v7 = *(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16);
    v8 = *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
    v9 = __CFADD__(v8, v6);
    v10 = v8 + v6;
    if (!v9)
    {
      *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v10;

      sub_247940408();

      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_27EE571C0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v11 = sub_24794ED34();
  __swift_project_value_buffer(v11, qword_27EE58DF8);
  v12 = sub_24794ED14();
  v13 = sub_24794F164();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2478E1000, v12, v13, "#SpkrIdActionEvent: Canot get userSamplingId from policy metadata", v14, 2u);
    MEMORY[0x24C1AF180](v14, -1, -1);
  }
}

uint64_t sub_2479069E4()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2478F72B8;
  v3 = *(v0 + 16);

  return sub_247906A80(v1);
}

uint64_t sub_247906A80(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_247906AA4, 0, 0);
}

void sub_247906AA4()
{
  v45 = v0;
  v1 = *(*(v0 + 16) + 112);
  v2 = *(v1 + 40);

  v3 = [v2 publisher];
  v44[0] = *(v1 + 16);
  v4 = sub_2478EF144(v44, v3);

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  v6 = __swift_project_value_buffer(v5, qword_27EE58DF8);

  v7 = sub_24794ED14();
  v8 = sub_24794F154();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (v4 >> 62)
    {
      v10 = sub_24794F414();
    }

    else
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;

    _os_log_impl(&dword_2478E1000, v7, v8, "#SpkrIdActionEvent: got events count: %ld", v9, 0xCu);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 16);
  v12 = *(v11 + 88);
  v13 = *(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
  v14 = *(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount);
  v15 = (*(**(*(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 320))();
  v17 = (*(*(*(v11 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v18 = v17[1];
  if (v18)
  {
    if (*(v0 + 48))
    {
      v41 = v6;
      v42 = *v17;
      v19 = *(v0 + 16);
      v20 = v15;

      sub_2479072A0(v4, v13, v14, v20, v42, v18);
      v22 = v21;
      *(v0 + 24) = v21;

      if (v22)
      {
        v23 = [v22 speakerIdModelSampleManifestReported];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 odsampleIdsCount];

          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            (*(**(*(*(v11 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 328))(v25);
            v34 = *(v0 + 16);

            sub_247940408();

            v35 = v34[4];
            v36 = v34[5];
            v37 = v34[6];
            v38 = v34[7];
            v43 = (*(v36 + 136) + **(v36 + 136));
            v39 = *(*(v36 + 136) + 4);
            v40 = swift_task_alloc();
            *(v0 + 32) = v40;
            *v40 = v0;
            v40[1] = sub_2479070C4;

            v43(v22, v37, v38, v41, v35, v36);
          }

          return;
        }

        v30 = sub_24794ED14();
        v31 = sub_24794F164();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_2478E1000, v30, v31, "#SpkrIdActionEvent: aggregatedCount cannot be fetched", v32, 2u);
          MEMORY[0x24C1AF180](v32, -1, -1);
        }

        sub_2478E95CC();
        swift_allocError();
        *v33 = xmmword_247950F50;
        *(v33 + 16) = 2;
        swift_willThrow();

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = *(v0 + 8);
    goto LABEL_10;
  }

  v26 = sub_24794ED14();
  v27 = sub_24794F164();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2478E1000, v26, v27, "#SpkrIdActionEvents: userSamplingId is nil for events aggregations", v28, 2u);
    MEMORY[0x24C1AF180](v28, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v29 = xmmword_24794FF10;
  *(v29 + 16) = 2;
  swift_willThrow();
LABEL_9:
  v16 = *(v0 + 8);
LABEL_10:

  v16();
}

uint64_t sub_2479070C4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_24790723C;
  }

  else
  {
    v3 = sub_2479071D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2479071D8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24790723C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

void sub_2479072A0(unint64_t a1, void (*a2)(char *, char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v46 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = sub_24794EC04();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v54 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v47 = a3;
  for (i = a2; v16; i = a2)
  {
    v17 = 0;
    a3 = v50;
    v52 = v50 & 0xFFFFFFFFFFFFFF8;
    v53 = v50 & 0xC000000000000001;
    v18 = (v49 + 48);
    v19 = (v49 + 32);
    v20 = MEMORY[0x277D84F90];
    v51 = v16;
    while (v53)
    {
      v21 = MEMORY[0x24C1AE890](v17, a3);
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      a2 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(a2 + v21, v12);

      if ((*v18)(v12, 1, v13) == 1)
      {
        sub_2478FB164(v12);
      }

      else
      {
        a2 = *v19;
        (*v19)(v54, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24793AADC(0, *(v20 + 2) + 1, 1, v20);
        }

        v24 = *(v20 + 2);
        v23 = *(v20 + 3);
        if (v24 >= v23 >> 1)
        {
          v20 = sub_24793AADC(v23 > 1, v24 + 1, 1, v20);
        }

        *(v20 + 2) = v24 + 1;
        a2(&v20[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v24], v54, v13);
        a3 = v50;
      }

      ++v17;
      if (v22 == v51)
      {
        goto LABEL_21;
      }
    }

    if (v17 >= *(v52 + 16))
    {
      goto LABEL_18;
    }

    v21 = *(a3 + 8 * v17 + 32);

    v22 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v16 = sub_24794F414();
    v47 = a3;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_21:
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v25 = sub_24794ED34();
  __swift_project_value_buffer(v25, qword_27EE58DF8);

  v26 = sub_24794ED14();
  v27 = sub_24794F154();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v55 = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x24C1AE590](v20, v13);
    v32 = sub_247924380(v30, v31, &v55);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2478E1000, v26, v27, "#SpkrIdActionEvent: aggregating for events: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1AF180](v29, -1, -1);
    MEMORY[0x24C1AF180](v28, -1, -1);
  }

  v33 = i;
  v34 = *(v20 + 2);
  if (v34 >= i && v34 >= v47)
  {
    v35 = v44;
    v36 = v45;
    v37 = v20;
    v38 = 2;
LABEL_28:
    sub_2478E8DC8(v35, v36, v37, v38, v33);

    return;
  }

  if (__CFADD__(v47, v46))
  {
    __break(1u);
  }

  else if (v34 >= v47 + v46)
  {
    v42 = i;
    if (sub_2479077C4(v46))
    {
      v35 = v44;
      v36 = v45;
      v37 = v20;
      v38 = 1;
      v33 = v42;
      goto LABEL_28;
    }
  }

  else
  {

    v39 = sub_24794ED14();
    v40 = sub_24794F154();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2478E1000, v39, v40, "#SpkrIdActionEvent: not enough events in biome stream to create manifest", v41, 2u);
      MEMORY[0x24C1AF180](v41, -1, -1);
    }
  }
}

uint64_t sub_2479077C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247907890();
  result = 1;
  if ((v4 & 1) == 0 && !a1)
  {
    v6 = *(v1 + 88);
    v7 = *(v2 + 88);

    v8 = vcvtd_n_f64_u64(sub_247907ADC(0x20000000000001uLL), 0x35uLL);
    v9 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance);

    if (v8 <= v9)
    {
      return 1;
    }

    else
    {
      *(*(*(*(v2 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) = 2;

      sub_247940408();

      sub_2478E6EE0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_247907890()
{
  v1 = (*(**(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 360))();
  v3 = 1;
  if ((v2 & 1) != 0 || v1 < *(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount))
  {
    return 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  __swift_project_value_buffer(v5, qword_27EE58DF8);
  v6 = sub_24794ED14();
  v7 = sub_24794F154();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2478E1000, v6, v7, "#SpkrIdActionEvent: keep the selection because legacy build has selected user", v8, 2u);
    MEMORY[0x24C1AF180](v8, -1, -1);
  }

  return v3;
}

unint64_t sub_247907ADC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1AF190](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1AF190](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247907BA0(uint64_t a1)
{
  if ((sub_2478ECA98(a1) & 1) == 0 || (sub_247907D98(a1) & 1) == 0)
  {
    return 0;
  }

  return sub_247907BF8(a1);
}

uint64_t sub_247907BF8(uint64_t a1)
{
  v3 = v1[4];
  if ((*(v1[5] + 160))(v1[10]))
  {
    return 1;
  }

  v5 = *(a1 + 17);
  if (v5 != 2 && (v5 & 1) != 0)
  {
    return 1;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v6 = sub_24794ED34();
  __swift_project_value_buffer(v6, qword_27EE58DF8);
  v7 = sub_24794ED14();
  v8 = sub_24794F164();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2478E1000, v7, v8, "#SpkrIdRecordSelectionRule: sat triggered is no", v9, 2u);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  return 0;
}

uint64_t sub_247907D1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_247907D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v65 - v4;
  v6 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) != 0 || (*v6 != 80 ? (v7 = *v6 == 17) : (v7 = 1), !v7))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v19 = sub_24794ED34();
    __swift_project_value_buffer(v19, qword_27EE58DF8);

    v11 = sub_24794ED14();
    v20 = sub_24794F164();

    if (!os_log_type_enabled(v11, v20))
    {
      goto LABEL_47;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v68[0] = v22;
    *v21 = 136315394;
    v23 = *(v6 + 4);
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = *v6;
    }

    LODWORD(v67) = v24;
    BYTE4(v67) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
    v25 = sub_24794EF14();
    v27 = sub_247924380(v25, v26, v68);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v29 = (*(*a1 + 1264))(v28);
    v31 = sub_247924380(v29, v30, v68);

    *(v21 + 14) = v31;
    v32 = "#SpkrIdRecordSelectionRule: siri invocationSource is %s for %s";
    goto LABEL_20;
  }

  if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v34 = sub_24794ED34();
    __swift_project_value_buffer(v34, qword_27EE58DF8);

    v11 = sub_24794ED14();
    v12 = sub_24794F164();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_47;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v68[0] = v14;
    *v13 = 136315138;
    v35 = (*(*a1 + 1264))();
    v37 = sub_247924380(v35, v36, v68);

    *(v13 + 4) = v37;
    v18 = "#SpkrIdRecordSelectionRule: siri input locale being nil for %s";
LABEL_45:
    _os_log_impl(&dword_2478E1000, v11, v12, v18, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1AF180](v14, -1, -1);
    v33 = v13;
    goto LABEL_46;
  }

  v8 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478FA014(a1 + v8, v5);
  v9 = sub_24794EC04();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v5, 1, v9);
  sub_2478FB164(v5);
  if (v8 == 1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v10 = sub_24794ED34();
    __swift_project_value_buffer(v10, qword_27EE58DF8);

    v11 = sub_24794ED14();
    v12 = sub_24794F164();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_47;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v67 = v14;
    *v13 = 136315138;
    v15 = (*(*a1 + 1264))();
    v17 = sub_247924380(v15, v16, &v67);

    *(v13 + 4) = v17;
    v18 = "#SpkrIdRecordSelectionRule: request_id is nil for %s";
    goto LABEL_45;
  }

  if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v50 = sub_24794ED34();
    __swift_project_value_buffer(v50, qword_27EE58DF8);

    v11 = sub_24794ED14();
    v12 = sub_24794F164();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_47;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v67 = v14;
    *v13 = 136315138;
    v51 = (*(*a1 + 1264))();
    v53 = sub_247924380(v51, v52, &v67);

    *(v13 + 4) = v53;
    v18 = "#SpkrIdRecordSelectionRule: device_type is nil for %s";
    goto LABEL_45;
  }

  v38 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason);
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason + 4) & 1) == 0 && *v38)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v39 = sub_24794ED34();
    __swift_project_value_buffer(v39, qword_27EE58DF8);

    v11 = sub_24794ED14();
    v20 = sub_24794F164();

    if (!os_log_type_enabled(v11, v20))
    {
      goto LABEL_47;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67 = v22;
    *v21 = 136315394;
    v40 = *(v38 + 4);
    if (v40)
    {
      v41 = 0;
    }

    else
    {
      v41 = *v38;
    }

    v65[2] = v41;
    v66 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
    v58 = sub_24794EF14();
    v60 = sub_247924380(v58, v59, &v67);

    *(v21 + 4) = v60;
    *(v21 + 12) = 2080;
    v62 = (*(*a1 + 1264))(v61);
    v64 = sub_247924380(v62, v63, &v67);

    *(v21 + 14) = v64;
    v32 = "#SpkrIdRecordSelectionRule: request is clearly cancelled for %s for %s";
LABEL_20:
    _os_log_impl(&dword_2478E1000, v11, v20, v32, v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v22, -1, -1);
    v33 = v21;
LABEL_46:
    MEMORY[0x24C1AF180](v33, -1, -1);
LABEL_47:

    return 0;
  }

  v42 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location);
  if (!v42)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v55 = sub_24794ED34();
    __swift_project_value_buffer(v55, qword_27EE58DF8);
    v43 = sub_24794ED14();
    v56 = sub_24794F164();
    if (os_log_type_enabled(v43, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2478E1000, v43, v56, "#SpkrIdRecordSelectionRule: request location is nil", v57, 2u);
      MEMORY[0x24C1AF180](v57, -1, -1);
    }

    goto LABEL_54;
  }

  v43 = v42;
  [v43 latitude];
  if (v44 == 0.0)
  {
    [v43 longitude];
    if (v45 == 0.0)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v46 = sub_24794ED34();
      __swift_project_value_buffer(v46, qword_27EE58DF8);
      v47 = sub_24794ED14();
      v48 = sub_24794F164();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2478E1000, v47, v48, "#SpkrIdRecordSelectionRule: location is (0.0, 0.0)", v49, 2u);
        MEMORY[0x24C1AF180](v49, -1, -1);
      }

LABEL_54:
      return 0;
    }
  }

  return 1;
}

void sub_24790877C()
{
  v2 = v0;
  v13 = *(v0 + 32);
  sub_2478EB2C4(&v13);
  sub_247908C38();
  v3 = (*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 360))();
  if (v4)
  {
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount);
  v6 = __CFADD__(v3, v5);
  v7 = v3 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount;
    v8 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
    if (v8 < v7)
    {
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = 0;
      return;
    }

    if (v8 >= v3)
    {
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = v8 - v3;
      if (qword_27EE571C0 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  swift_once();
LABEL_12:
  v9 = sub_24794ED34();
  __swift_project_value_buffer(v9, qword_27EE58DF8);

  oslog = sub_24794ED14();
  v10 = sub_24794F154();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v2 + v1);

    _os_log_impl(&dword_2478E1000, oslog, v10, "#SpkrIdSamplingPolicy: overriding max total upload limit to: %lu", v11, 0xCu);
    MEMORY[0x24C1AF180](v11, -1, -1);
  }

  else
  {
  }
}

void sub_247908ADC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v2 + 8);
  if ((*(v4 + 80))(v3, v4) & 1) != 0 && ((*(v4 + 88))(v3, v4) & 1) != 0 && (sub_2478EBB7C())
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    v5 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
    sub_2479406A8(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate);
  }
}

uint64_t sub_247908B9C()
{
  v2 = sub_2478EA840();
  if (!v1)
  {
    v3 = ((*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 320))() >= *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount)) | v2;
  }

  return v3 & 1;
}

void sub_247908C38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v79 - v3;
  v5 = sub_24794EC04();
  v6 = *(v5 - 8);
  v84 = v5;
  v85 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  v16 = sub_24794EBB4();
  v86 = *(v16 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale);
  v20 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale + 8);
  v22 = sub_247937E20();
  if (!v23)
  {
LABEL_4:

    sub_24793857C();
    return;
  }

  v24 = v22;
  v25 = v23;
  sub_24793699C(v87);
  v26 = v87[0];
  if (v87[0] == 3)
  {

    goto LABEL_4;
  }

  sub_247936D44(v24, v25, v15);
  v27 = v86;
  if ((*(v86 + 48))(v15, 1, v16) == 1)
  {

    sub_2478E9620(v15, &qword_27EE572D0, &unk_2479504E0);
    sub_24793857C();
    return;
  }

  v82 = v26;
  (*(v27 + 32))(v19, v15, v16);
  sub_247937684(v24, v25, v4);
  v28 = v19;
  v29 = v85;
  v30 = v16;
  v31 = v84;
  if ((*(v85 + 48))(v4, 1, v84) == 1)
  {

    sub_2478E9620(v4, &qword_27EE57278, &unk_247950590);
    sub_24793857C();
    (*(v27 + 8))(v28, v30);
    return;
  }

  v81 = v28;
  v32 = v83;
  (*(v29 + 32))(v83, v4, v31);
  v33 = v82;
  if ((v82 - 1) <= 1)
  {
    v34 = v0;
    v35 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
    *(*(v35 + 16) + 16) = v82;
    sub_247940408();
    (*(v27 + 16))(v13, v81, v30);
    v36 = *(v27 + 56);
    v80 = v30;
    v36(v13, 0, 1, v30);
    v37 = *(v35 + 16);
    v38 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    swift_beginAccess();

    sub_2479096C8(v13, v37 + v38);
    swift_endAccess();

    sub_247940408();
    sub_2478E9620(v13, &qword_27EE572D0, &unk_2479504E0);
    v39 = sub_24794EBD4();
    v40 = (*(v35 + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    v41 = v40[1];
    *v40 = v39;
    v40[1] = v42;

    sub_247940408();

    v43 = sub_247938110(v24, v25);
    LOBYTE(v37) = v44;

    if (v37)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v45 = sub_24794ED34();
      __swift_project_value_buffer(v45, qword_27EE58DF8);
      v46 = sub_24794ED14();
      v47 = sub_24794F154();
      v48 = os_log_type_enabled(v46, v47);
      v50 = v84;
      v49 = v85;
      v51 = v83;
      if (v48)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_2478E1000, v46, v47, "SpkrIdSamplingPolicy: Cannot get uploadedSampleCount, no need to migrate aggregated sample count", v52, 2u);
        MEMORY[0x24C1AF180](v52, -1, -1);
      }

      sub_24793857C();
      (*(v49 + 8))(v51, v50);
      (*(v86 + 8))(v81, v80);
      return;
    }

    if (v33 == 1)
    {
      v63 = v86;
      if (v43)
      {
        v64 = *(v35 + 16);
        if (*(v34 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) >= v43)
        {
          (*(*v64 + 368))(v43, 0);
          v66 = v83;
          v65 = v84;
          sub_247940408();
        }

        else
        {
          v64[16] = 2;
          sub_247940408();
          v66 = v83;
          v65 = v84;
        }

        sub_24793857C();
        (*(v85 + 8))(v66, v65);
        goto LABEL_39;
      }

      v73 = v83;
      v72 = v84;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v76 = sub_24794ED34();
      __swift_project_value_buffer(v76, qword_27EE58DF8);
      v68 = sub_24794ED14();
      v69 = sub_24794F154();
      v77 = os_log_type_enabled(v68, v69);
      v71 = v85;
      if (!v77)
      {
LABEL_36:

        sub_24793857C();
        (*(v71 + 8))(v73, v72);
LABEL_39:
        (*(v63 + 8))(v81, v80);
        return;
      }

      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "SpkrIdSamplingPolicy: aggregatedSampleCount is 0, no need to migrate aggregated sample count";
    }

    else
    {
      v63 = v86;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v67 = sub_24794ED34();
      __swift_project_value_buffer(v67, qword_27EE58DF8);
      v68 = sub_24794ED14();
      v69 = sub_24794F154();
      v70 = os_log_type_enabled(v68, v69);
      v72 = v84;
      v71 = v85;
      v73 = v83;
      if (!v70)
      {
        goto LABEL_36;
      }

      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "SpkrIdSamplingPolicy: sampling status is already finished, no need to migrate aggregated sample count";
    }

    _os_log_impl(&dword_2478E1000, v68, v69, v75, v74, 2u);
    v78 = v74;
    v63 = v86;
    MEMORY[0x24C1AF180](v78, -1, -1);
    goto LABEL_36;
  }

  v53 = v31;

  v54 = v30;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v55 = sub_24794ED34();
  __swift_project_value_buffer(v55, qword_27EE58DF8);
  v56 = sub_24794ED14();
  v57 = sub_24794F154();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v85;
  v60 = v82;
  if (v58)
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = v60;
    _os_log_impl(&dword_2478E1000, v56, v57, "#SpkrIdSamplingPolicy: Unsupported sampling status %ld found in legacy version metadata. Removing legacy metadata", v61, 0xCu);
    v62 = v61;
    v27 = v86;
    MEMORY[0x24C1AF180](v62, -1, -1);
  }

  sub_24793857C();
  (*(v59 + 8))(v32, v53);
  (*(v27 + 8))(v81, v54);
}

uint64_t type metadata accessor for SpkrIdSamplingPolicy()
{
  result = qword_27EE57458;
  if (!qword_27EE57458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2479096C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_247909738(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v101 - v6;
  v7 = sub_24794EC04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v101 - v14;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v16 = sub_24794ED34();
  v17 = __swift_project_value_buffer(v16, qword_27EE58DF8);

  v103 = v17;
  v18 = sub_24794ED14();
  v19 = sub_24794F154();

  if (os_log_type_enabled(v18, v19))
  {
    v101 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v107[0] = v21;
    *v20 = 136315138;
    v22 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    sub_2478E9680(a1 + v22, v15, &qword_27EE57278, &unk_247950590);
    if ((*(v8 + 48))(v15, 1, v7))
    {
      sub_2478E9620(v15, &qword_27EE57278, &unk_247950590);
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      (*(v8 + 16))(v11, v15, v7);
      sub_2478E9620(v15, &qword_27EE57278, &unk_247950590);
      v25 = sub_24794EBD4();
      v23 = v26;
      (*(v8 + 8))(v11, v7);
      v24 = v25;
    }

    v27 = sub_247924380(v24, v23, v107);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_2478E1000, v18, v19, "#SiriSessionGenerator: validating request: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1AF180](v21, -1, -1);
    MEMORY[0x24C1AF180](v20, -1, -1);

    v2 = v101;
  }

  else
  {
  }

  if (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn) != 1)
  {
    v30 = sub_24794ED14();
    v37 = sub_24794F154();
    if (os_log_type_enabled(v30, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "#SiriSessionGenerator: userOptIn is false";
LABEL_18:
      _os_log_impl(&dword_2478E1000, v30, v37, v39, v38, 2u);
LABEL_30:
      MEMORY[0x24C1AF180](v38, -1, -1);
    }

LABEL_71:

    return 0;
  }

  v28 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason);
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason + 4) & 1) == 0)
  {

    v30 = sub_24794ED14();
    v40 = sub_24794F154();

    if (os_log_type_enabled(v30, v40))
    {
      v38 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v107[0] = v41;
      *v38 = 136315138;
      v42 = *(v28 + 4);
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v28;
      }

      LODWORD(v104) = v43;
      BYTE4(v104) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
      v48 = sub_24794EF14();
      v50 = sub_247924380(v48, v49, v107);

      *(v38 + 4) = v50;
      _os_log_impl(&dword_2478E1000, v30, v40, "#SiriSessionGenerator: orchCancelledReason is not nil: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C1AF180](v41, -1, -1);
      goto LABEL_30;
    }

    goto LABEL_71;
  }

  v29 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location);
  if (!v29)
  {
    v30 = sub_24794ED14();
    v37 = sub_24794F154();
    if (os_log_type_enabled(v30, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "#SiriSessionGenerator: location is nil";
      goto LABEL_18;
    }

    goto LABEL_71;
  }

  v30 = v29;
  [v30 latitude];
  if (v31 == 0.0)
  {
    [v30 longitude];
    if (v32 == 0.0)
    {
      v33 = sub_24794ED14();
      v34 = sub_24794F154();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "#SiriSessionGenerator: location invalid: (0.0, 0.0)";
LABEL_25:
        _os_log_impl(&dword_2478E1000, v33, v34, v36, v35, 2u);
        v47 = v35;
LABEL_69:
        MEMORY[0x24C1AF180](v47, -1, -1);
        goto LABEL_70;
      }

      goto LABEL_70;
    }
  }

  v44 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  v45 = v102;
  sub_2478E9680(a1 + v44, v102, &qword_27EE572D0, &unk_2479504E0);
  v46 = sub_24794EBB4();
  LODWORD(v44) = (*(*(v46 - 8) + 48))(v45, 1, v46);
  sub_2478E9620(v45, &qword_27EE572D0, &unk_2479504E0);
  if (v44 == 1)
  {
    v33 = sub_24794ED14();
    v34 = sub_24794F154();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "#SiriSessionGenerator: request date is nil";
      goto LABEL_25;
    }

LABEL_70:

    goto LABEL_71;
  }

  v51 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
  if (v51)
  {
    v52 = v51;
    v53 = SISchemaISOLocale.toString()();
    countAndFlagsBits = v53._countAndFlagsBits;
    object = v53._object;
  }

  else
  {
    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  v56 = *(v2 + 16);
  v57 = [v56 locale];
  if (!v57)
  {
    goto LABEL_44;
  }

  v58 = v57;
  v59 = sub_24794EF04();
  v61 = v60;

  if (countAndFlagsBits == v59 && object == v61)
  {

    goto LABEL_39;
  }

  v62 = sub_24794F4E4();

  if ((v62 & 1) == 0)
  {
LABEL_44:

    v33 = sub_24794ED14();
    v73 = sub_24794F154();

    if (!os_log_type_enabled(v33, v73))
    {

      goto LABEL_70;
    }

    v66 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v104 = v74;
    *v66 = 136315394;
    v75 = sub_247924380(countAndFlagsBits, object, &v104);

    *(v66 + 4) = v75;
    *(v66 + 12) = 2080;
    v76 = [v56 locale];

    if (v76)
    {
      v78 = sub_24794EF04();
      v80 = v79;

      v81 = sub_247924380(v78, v80, &v104);

      *(v66 + 14) = v81;
      _os_log_impl(&dword_2478E1000, v33, v73, "#SiriSessionGenerator: requestLocale: %s does not match siriInputLocale: %s", v66, 0x16u);
      swift_arrayDestroy();
      v82 = v74;
LABEL_68:
      MEMORY[0x24C1AF180](v82, -1, -1);
      v47 = v66;
      goto LABEL_69;
    }

    __break(1u);
    return result;
  }

LABEL_39:

  if (CSIsCommunalDevice())
  {
    v63 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier);
    if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier + 8))
    {
      v33 = sub_24794ED14();
      v34 = sub_24794F154();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "#SiriSessionGenerator: uniqueSpeakerIdentifier is nil on communal device";
        goto LABEL_25;
      }

      goto LABEL_70;
    }

    v64 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification);
    if (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification + 4))
    {

      v33 = sub_24794ED14();
      v65 = sub_24794F154();

      if (!os_log_type_enabled(v33, v65))
      {
        goto LABEL_70;
      }

      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v106 = v67;
      *v66 = 136315138;
      v68 = v63[1];
      v104 = *v63;
      v105 = v68;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v69 = sub_24794EF14();
      v71 = sub_247924380(v69, v70, &v106);

      *(v66 + 4) = v71;
      v72 = "#SiriSessionGenerator: userIdentifyClassification is nil on communal device for loggableSharedUser: %s";
      goto LABEL_66;
    }

    if (*v64 <= 6u && ((1 << *v64) & 0x51) != 0)
    {

      v33 = sub_24794ED14();
      v89 = sub_24794F154();

      if (!os_log_type_enabled(v33, v89))
      {
        goto LABEL_70;
      }

      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v106 = v67;
      *v66 = 136315394;
      v90 = sub_24794F204();
      v92 = sub_247924380(v90, v91, &v106);

      *(v66 + 4) = v92;
      *(v66 + 12) = 2080;
      v93 = v63[1];
      v104 = *v63;
      v105 = v93;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v94 = sub_24794EF14();
      v96 = sub_247924380(v94, v95, &v106);

      *(v66 + 14) = v96;
      _os_log_impl(&dword_2478E1000, v33, v89, "#SiriSessionGenerator: invalid user identity confidence on communal device: %s for loggableSharedUser: %s", v66, 0x16u);
      swift_arrayDestroy();
      goto LABEL_67;
    }

    v83 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
    v84 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4);
    if ((*v84 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_49:

    v33 = sub_24794ED14();
    v65 = sub_24794F154();

    if (!os_log_type_enabled(v33, v65))
    {
      goto LABEL_70;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v104 = v67;
    *v66 = 136315138;
    v85 = *v84;
    if (*v84)
    {
      v86 = 0;
    }

    else
    {
      v86 = *v83;
    }

    LODWORD(v106) = v86;
    BYTE4(v106) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
    v97 = sub_24794EF14();
    v99 = sub_247924380(v97, v98, &v104);

    *(v66 + 4) = v99;
    v72 = "#SiriSessionGenerator: invalid invocation source: %s";
LABEL_66:
    _os_log_impl(&dword_2478E1000, v33, v65, v72, v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
LABEL_67:
    v82 = v67;
    goto LABEL_68;
  }

  v83 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
  v84 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4);
  if (*v84)
  {
    goto LABEL_49;
  }

  v87 = *v83 - 17;
  if (v87 <= 0x3F && ((1 << v87) & 0x8000000000000101) != 0)
  {
    v88 = *(a1 + 17);
    if (v88 == 2 || (v88 & 1) == 0)
    {
      v33 = sub_24794ED14();
      v34 = sub_24794F154();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "#SiriSessionGenerator: requestRecord is not SAT trigger on non-communal device";
        goto LABEL_25;
      }

      goto LABEL_70;
    }
  }

LABEL_73:
  v100 = *v83;
  if (*v83 > 78)
  {
    if (v100 != 79 && v100 != 80)
    {
      goto LABEL_49;
    }
  }

  else if (v100 != 17 && v100 != 25)
  {
    goto LABEL_49;
  }

  return 1;
}

uint64_t sub_24790A4C4(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57468, &qword_247951058);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v114 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v114 - v13);
  v15 = sub_24794EC04();
  v127 = *(v15 - 8);
  v16 = *(v127 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v114 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v114 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v122 = &v114 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v131 = (&v114 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v128 = (&v114 - v29);
  MEMORY[0x28223BE20](v28);
  v31 = (&v114 - v30);
  v32 = sub_24794E020(MEMORY[0x277D84F90]);
  v137 = v32;
  v133 = a1;
  if (a1 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24794F414())
  {
    v125 = v8;
    v132 = v10;
    v134 = v23;
    v135 = v15;
    if (i)
    {
      break;
    }

    v58 = v32;
    v59 = v8;
LABEL_37:
    v126 = sub_24794E020(MEMORY[0x277D84F90]);
    v60 = *(v58 + 64);
    v116 = v58 + 64;
    v61 = 1 << *(v58 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v58;
    v15 = v62 & v60;
    v23 = (v61 + 63) >> 6;
    v130 = (v127 + 16);
    v131 = (v127 + 32);
    v129 = (v127 + 8);
    v123 = v63;

    v64 = 0;
    v8 = &qword_27EE57470;
    *&v65 = 136315394;
    v115 = v65;
    *&v65 = 136315138;
    v114 = v65;
    v121 = v2;
    v124 = v23;
LABEL_41:
    v67 = v64;
    if (v15)
    {
      while (2)
      {
        v68 = v67;
LABEL_50:
        v70 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v71 = v70 | (v68 << 6);
        v72 = v123;
        v73 = v127;
        v74 = v122;
        v75 = v135;
        (*(v127 + 16))(v122, *(v123 + 48) + *(v127 + 72) * v71, v135);
        v76 = *(*(v72 + 56) + 8 * v71);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
        v78 = *(v77 + 48);
        (*(v73 + 32))(v59, v74, v75);
        *(v59 + v78) = v76;
        (*(*(v77 - 8) + 56))(v59, 0, 1, v77);

        v31 = v68;
        v2 = v121;
        v10 = v132;
LABEL_51:
        sub_24790C0BC(v59, v10);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
        if ((*(*(v23 - 8) + 48))(v10, 1, v23) == 1)
        {

          return v126;
        }

        v32 = *(v10 + *(v23 + 48));
        (*v131)(v134, v10, v135);
        v128 = (v32 >> 62);
        v14 = (v32 & 0xFFFFFFFFFFFFFF8);
        if (v32 >> 62)
        {
          v8 = sub_24794F414();
        }

        else
        {
          v8 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v79 = 0;
        v10 = v32 & 0xC000000000000001;
        v133 = v31;
        do
        {
          if (v8 == v79)
          {

            v95 = v126;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v136[0] = v95;
            v97 = v134;
            sub_24794B520(v32, v134, isUniquelyReferenced_nonNull_native);
            v126 = v136[0];
            if (qword_27EE571C0 != -1)
            {
              swift_once();
            }

            v98 = sub_24794ED34();
            __swift_project_value_buffer(v98, qword_27EE58DF8);
            v99 = v120;
            v100 = v135;
            (*v130)(v120, v97, v135);

            v101 = sub_24794ED14();
            v102 = sub_24794F154();
            if (os_log_type_enabled(v101, v102))
            {
              LODWORD(v118) = v102;
              v103 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              v136[0] = v117;
              *v103 = v115;
              sub_24790C1B4();
              v104 = sub_24794F4D4();
              v106 = v105;
              v107 = v99;
              v108 = *v129;
              (*v129)(v107, v100);
              v109 = sub_247924380(v104, v106, v136);

              *(v103 + 4) = v109;
              *(v103 + 12) = 2048;
              if (v128)
              {
                v110 = sub_24794F414();
              }

              else
              {
                v110 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v64 = v133;
              v111 = v134;

              *(v103 + 14) = v110;

              _os_log_impl(&dword_2478E1000, v101, v118, "#SiriSessionGenerator: Session %s is valid with %ld requests", v103, 0x16u);
              v112 = v117;
              __swift_destroy_boxed_opaque_existential_0(v117);
              MEMORY[0x24C1AF180](v112, -1, -1);
              MEMORY[0x24C1AF180](v103, -1, -1);

              (v108)(v111, v135);
              v23 = v124;
              v59 = v125;
              v10 = v132;
              v8 = &qword_27EE57470;
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v32 = v129;
              v66 = *v129;
              (*v129)(v99, v100);
              (v66)(v97, v100);
              v23 = v124;
              v59 = v125;
              v10 = v132;
              v64 = v133;
              v8 = &qword_27EE57470;
            }

            goto LABEL_41;
          }

          if (v10)
          {
            v80 = MEMORY[0x24C1AE890](v79, v32);
            if (__OFADD__(v79, 1))
            {
              goto LABEL_81;
            }
          }

          else
          {
            if (v79 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v80 = *(v32 + 8 * v79 + 32);

            if (__OFADD__(v79, 1))
            {
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }
          }

          v23 = sub_247909738(v80);

          ++v79;
        }

        while ((v23 & 1) != 0);

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v81 = sub_24794ED34();
        __swift_project_value_buffer(v81, qword_27EE58DF8);
        v82 = v119;
        v83 = v134;
        v14 = v135;
        (*v130)(v119, v134, v135);
        v32 = sub_24794ED14();
        v84 = sub_24794F154();
        if (os_log_type_enabled(v32, v84))
        {
          v85 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v136[0] = v128;
          *v85 = v114;
          sub_24790C1B4();
          v86 = sub_24794F4D4();
          v87 = v82;
          v89 = v88;
          v90 = *v129;
          (*v129)(v87, v14);
          v91 = sub_247924380(v86, v89, v136);

          *(v85 + 4) = v91;
          _os_log_impl(&dword_2478E1000, v32, v84, "#SiriSessionGenerator: Session %s contains invalid requests, excluding entire session", v85, 0xCu);
          v92 = v128;
          __swift_destroy_boxed_opaque_existential_0(v128);
          MEMORY[0x24C1AF180](v92, -1, -1);
          MEMORY[0x24C1AF180](v85, -1, -1);

          (v90)(v134, v14);
        }

        else
        {

          v32 = v129;
          v93 = *v129;
          (*v129)(v82, v14);
          (v93)(v83, v14);
        }

        v10 = v132;
        v67 = v133;
        v23 = v124;
        v59 = v125;
        v8 = &qword_27EE57470;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (v23 <= v67 + 1)
    {
      v69 = v67 + 1;
    }

    else
    {
      v69 = v23;
    }

    v31 = (v69 - 1);
    while (1)
    {
      v68 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v68 >= v23)
      {
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
        (*(*(v94 - 8) + 56))(v59, 1, 1, v94);
        v15 = 0;
        goto LABEL_51;
      }

      v15 = *(v116 + 8 * v68);
      v67 = (v67 + 1);
      if (v15)
      {
        goto LABEL_50;
      }
    }

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
LABEL_88:
    ;
  }

  v10 = 0;
  v130 = (v133 & 0xC000000000000001);
  v116 = v133 & 0xFFFFFFFFFFFFFF8;
  v129 = (v127 + 48);
  v121 = (v127 + 32);
  v126 = (v127 + 8);
  v123 = v127 + 16;
  v117 = ((v127 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  *&v115 = v31;
  v118 = i;
  while (1)
  {
    if (v130)
    {
      v32 = MEMORY[0x24C1AE890](v10, v133);
      v8 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v10 >= *(v116 + 16))
      {
        goto LABEL_85;
      }

      v32 = v133[v10 + 4];

      v8 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_84;
      }
    }

    v34 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId;
    swift_beginAccess();
    v35 = v32 + v34;
    v23 = &qword_27EE57278;
    sub_2478E9680(v35, v14, &qword_27EE57278, &unk_247950590);
    if ((*v129)(v14, 1, v15) != 1)
    {
      break;
    }

    sub_2478E9620(v14, &qword_27EE57278, &unk_247950590);
LABEL_6:
    ++v10;
    if (v8 == i)
    {
      v58 = v137;
      v59 = v125;
      v10 = v132;
      goto LABEL_37;
    }
  }

  (*v121)(v31, v14, v15);
  if (*(v137 + 16))
  {
    sub_24792C228(v31);
    v36 = *v123;
    if (v37)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v36 = *v123;
  }

  v38 = v128;
  v124 = v36;
  v36(v128, v31, v15);
  v23 = v137;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v136[0] = v23;
  v40 = sub_24792C228(v38);
  v41 = *(v23 + 16);
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    goto LABEL_86;
  }

  v44 = v39;
  if (*(v23 + 24) >= v43)
  {
    if (v15)
    {
      v15 = v135;
      v23 = v136[0];
      if (v39)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_24794C8A0();
      v15 = v135;
      v23 = v136[0];
      if (v44)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    v31 = v14;
    *(v23 + 8 * (v40 >> 6) + 64) |= 1 << v40;
    v49 = v127;
    v14 = v128;
    v124(*(v23 + 48) + *(v127 + 72) * v40, v128, v15);
    *(*(v23 + 56) + 8 * v40) = MEMORY[0x277D84F90];
    (*(v49 + 8))(v14, v15);
    v50 = *(v23 + 16);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_87;
    }

    *(v23 + 16) = v52;
    v14 = v31;
    v31 = v115;
    goto LABEL_29;
  }

  sub_24794A550(v43, v15);
  v45 = sub_24792C228(v128);
  if ((v44 & 1) == (v46 & 1))
  {
    v40 = v45;
    v15 = v135;
    v23 = v136[0];
    if ((v44 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    v47 = *(v23 + 56);
    v48 = *(v47 + 8 * v40);
    *(v47 + 8 * v40) = MEMORY[0x277D84F90];

    (*v126)(v128, v15);
LABEL_29:
    v137 = v23;
    v36 = v124;
LABEL_30:
    v36(v131, v31, v15);
    v54 = sub_24791F080(v136);
    if (*v53)
    {
      v55 = v53;

      MEMORY[0x24C1AE560](v56);
      if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v57 = *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
        v31 = v115;
      }

      sub_24794F0A4();
    }

    (v54)(v136, 0);

    v32 = v126;
    v23 = *v126;
    (*v126)(v131, v15);
    (v23)(v31, v15);
    i = v118;
    goto LABEL_6;
  }

  result = sub_24794F514();
  __break(1u);
  return result;
}