uint64_t sub_247C38D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102[5] = *MEMORY[0x277D85DE8];
  v91 = sub_247D1F448();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v83 - v6);
  v101 = sub_247D1EE08();
  v93 = *(v101 - 8);
  v8 = MEMORY[0x28223BE20](v101);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v83 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v100 = &v83 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v83 - v17;
  v19 = sub_247D1EF48();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v24 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE0);
  v25 = swift_allocObject();
  v85 = xmmword_247D23880;
  *(v25 + 16) = xmmword_247D23880;
  sub_247D1EF38();
  sub_247D1EF08();
  v27 = v26;
  (*(v20 + 8))(v22, v19);
  v28 = MEMORY[0x277D83A80];
  *(v25 + 56) = MEMORY[0x277D839F8];
  *(v25 + 64) = v28;
  *(v25 + 32) = v27;
  v29 = sub_247D1FC18();
  v31 = v30;
  v86 = v24;
  v32 = &v24[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState];
  v33 = *(v32 + 1);
  v102[0] = *v32;
  v102[1] = v33;

  MEMORY[0x24C1B7B80](95, 0xE100000000000000);
  MEMORY[0x24C1B7B80](v29, v31);

  v34 = objc_opt_self();
  v35 = [v34 defaultManager];
  v36 = [v35 temporaryDirectory];
  v92 = v16;
  v37 = v36;

  sub_247D1EDD8();
  v87 = v18;
  sub_247D1EDC8();

  v38 = [v34 defaultManager];
  v39 = sub_247D1EDA8();
  v102[0] = 0;
  LODWORD(v31) = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:v102];

  if (v31)
  {
    v40 = v102[0];
  }

  else
  {
    v41 = v102[0];
    v42 = sub_247D1ECA8();

    swift_willThrow();
  }

  v94 = 0;
  v43 = *&v32[*(_s5StateVMa() + 20)];
  if (v43 >> 62)
  {
    v44 = sub_247D203B8();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = a3;
  if (v44)
  {
    v102[0] = MEMORY[0x277D84F90];
    sub_247CE2364(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
    }

    v45 = v102[0];
    sub_247D1FEA8();
    v46 = 0;
    v47 = v43;
    v96 = (v43 & 0xC000000000000001);
    v97 = v44;
    v98 = v43;
    v99 = v7;
    do
    {
      if (v96)
      {
        v48 = MEMORY[0x24C1B8190](v46, v47);
      }

      else
      {
        v48 = v47[v46 + 4];
      }

      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_247C2BD10(v48 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_uploadRequestData, v7, &qword_27EE62DE8);
      v49 = type metadata accessor for RecordedImage.UploadRequestData(0);
      if ((*(*(v49 - 8) + 48))(v7, 1, v49) == 1)
      {
        sub_247C27100(v7, &qword_27EE62DE8);
        v50 = 0;
        v51 = 0xF000000000000000;
      }

      else
      {
        v50 = *v7;
        v51 = v7[1];
        sub_247C30174(*v7, v51);
        sub_247C3F040(v7, type metadata accessor for RecordedImage.UploadRequestData);
      }

      v52 = *(v48 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name);
      v53 = *(v48 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name + 8);

      v102[0] = v45;
      v55 = v45[2];
      v54 = v45[3];
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        sub_247CE2364((v54 > 1), v55 + 1, 1);
        v45 = v102[0];
      }

      v46 = (v46 + 1);
      v45[2] = v56;
      v57 = &v45[4 * v55];
      v57[4] = v50;
      v57[5] = v51;
      v57[6] = v52;
      v57[7] = v53;
      v47 = v98;
      v7 = v99;
    }

    while (v97 != v46);
    goto LABEL_23;
  }

  v45 = MEMORY[0x277D84F90];
  v56 = *(MEMORY[0x277D84F90] + 16);
  if (v56)
  {
LABEL_23:
    v99 = (v93 + 8);
    v96 = (v93 + 16);
    v97 = (v88 + 8);
    v88 = v93 + 32;
    v58 = v45 + 7;
    v59 = MEMORY[0x277D84F90];
    do
    {
      v61 = *(v58 - 3);
      v60 = *(v58 - 2);
      v62 = *(v58 - 1);
      v63 = *v58;
      sub_247C3E6D4(v61, v60);

      sub_247C3E6D4(v61, v60);
      if (v60 >> 60 == 15)
      {
        sub_247C3E6E8(v61, v60);
      }

      else
      {
        sub_247C3E6D4(v61, v60);

        sub_247C3E6E8(v61, v60);
        if (v63)
        {
          v98 = v59;
          sub_247CCD6A4(v62);

          v64 = v89;
          sub_247D1EDC8();

          v65 = v90;
          sub_247D1F438();
          sub_247D1EDB8();
          (*v97)(v65, v91);
          v66 = *v99;
          (*v99)(v64, v101);
          v67 = v94;
          sub_247D1EE68();
          if (v67)
          {
          }

          v94 = 0;
          v59 = v98;
          (*v96)(v95, v100, v101);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_247C805D8(0, v59[2] + 1, 1, v59);
          }

          v69 = v59[2];
          v68 = v59[3];
          if (v69 >= v68 >> 1)
          {
            v59 = sub_247C805D8(v68 > 1, v69 + 1, 1, v59);
          }

          sub_247C3E6E8(v61, v60);
          sub_247C3E6E8(v61, v60);

          v70 = v101;
          v66(v100, v101);
          v59[2] = v69 + 1;
          (*(v93 + 32))(v59 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v69, v95, v70);
        }

        else
        {
          sub_247C3E6E8(v61, v60);

          sub_247C3E6E8(v61, v60);
        }
      }

      v58 += 4;
      --v56;
    }

    while (v56);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE8);
  v71 = swift_allocObject();
  *(v71 + 16) = v85;
  v72 = v101;
  *(v71 + 56) = v101;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v71 + 32));
  v74 = v92;
  (*(v93 + 16))(boxed_opaque_existential_0, v92, v72);
  v75 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v76 = sub_247D1FDB8();

  v77 = [v75 initWithActivityItems:v76 applicationActivities:0];

  v78 = [v77 popoverPresentationController];
  if (v78)
  {
    v79 = v78;
    [v78 setSourceItem_];
  }

  v80 = v86;
  [v86 presentViewController:v77 animated:1 completion:0];

  v81 = *(v93 + 8);
  v82 = v101;
  v81(v74, v101);
  return (v81)(v87, v82);
}

uint64_t sub_247C398C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_247D1EF48();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v12 = &v32 - v11;
  v13 = &v0[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_loadingTask];
  v14 = v0[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_loadingTask + 16];
  if (v14 != 255)
  {
    v15 = v0[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_loadingTask + 16];
    v16 = *v13;
    v17 = v13[1];
    v18 = *v13;
    v36 = v10;
    v37 = v17;
    v35 = v14 & 1;
    sub_247C3E760(v16, v17, v14 & 1);
    v19 = [v0 headerView];
    v20 = [v19 customIconContainerView];

    if (v20)
    {
      v21 = [v20 subviews];

      sub_247C3194C(0, &qword_27EE62FF8);
      v22 = sub_247D1FDC8();

      if (v22 >> 62)
      {
        v23 = sub_247D203B8();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v23)
      {
        v24 = sub_247C367B4();
        [v24 startAnimating];
      }
    }

    v34 = v12;
    sub_247D1EF18();
    v25 = sub_247D1FEC8();
    (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
    v26 = v4;
    (*(v5 + 16))(v8, v12, v4);
    sub_247D1FEA8();
    v27 = v37;
    sub_247C3E770(v18, v37, v15);
    v33 = v0;
    v28 = sub_247D1FE98();
    v29 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 16) = v28;
    *(v30 + 24) = v31;
    *(v30 + 32) = v18;
    *(v30 + 40) = v27;
    *(v30 + 48) = v35;
    *(v30 + 56) = v33;
    (*(v5 + 32))(v30 + v29, v8, v26);
    sub_247C2D2D0(0, 0, v3, &unk_247D23E20, v30);

    sub_247C3E98C(v18, v27, v15);
    return (*(v5 + 8))(v34, v26);
  }

  return result;
}

void sub_247C39D18(uint64_t a1, int a2, __int128 *a3)
{
  v40 = a2;
  v6 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v41 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v38 = &v36 - v12;
  v39 = v3;
  v13 = a3[1];
  v45 = *a3;
  v46 = v13;
  v47 = *(a3 + 4);
  v14 = *&v3[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_hiddenActions];
  v15 = *(v14 + 16);
  if (v15)
  {
    sub_247D1FEA8();
    v16 = 0;
    v17 = v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      sub_247C3EFD8(v17 + *(v41 + 72) * v16, v11, type metadata accessor for FlowResponse.Step.HiddenAction);
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v18 = *(v11 + 2);
      if (v40)
      {
        if (a1 > 2)
        {
          if (a1 == 3)
          {
            if (v18 == 3)
            {
              goto LABEL_25;
            }
          }

          else if (a1 == 4)
          {
            if (v18 == 4)
            {
              goto LABEL_25;
            }
          }

          else if (v18 == 5)
          {
LABEL_25:
            v19 = v38;
            sub_247C3F0A0(v11, v38, type metadata accessor for FlowResponse.Step.HiddenAction);
            v20 = v39;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v21 = v37;
              sub_247C3EFD8(v19, v37, type metadata accessor for FlowResponse.Step.HiddenAction);
              sub_247C5B128(v20 + OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState);
              swift_unknownObjectRelease();
              sub_247C3F040(v21, type metadata accessor for FlowResponse.Step.HiddenAction);
            }

            sub_247C3F040(v19, type metadata accessor for FlowResponse.Step.HiddenAction);
            return;
          }
        }

        else if (a1)
        {
          if (a1 == 1)
          {
            if (v18 == 1)
            {
              goto LABEL_25;
            }
          }

          else if (v18 == 2)
          {
            goto LABEL_25;
          }
        }

        else if (!v18)
        {
          goto LABEL_25;
        }
      }

      else if (v18 == a1)
      {
        goto LABEL_25;
      }

      ++v16;
      sub_247C3F040(v11, type metadata accessor for FlowResponse.Step.HiddenAction);
    }

    while (v15 != v16);
  }

  v22 = v39;
  v23 = sub_247D1F468();
  v24 = sub_247D20038();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44 = v26;
    *v25 = 136315394;
    v27 = &v22[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState];
    v28 = &v27[*(_s5StateVMa() + 40)];
    v29 = *&v28[*(type metadata accessor for FlowResponse.Step(0) + 20)];
    swift_beginAccess();
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    v32 = sub_247CB03B4(v30, v31, &v44);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v42 = a1;
    v43 = v40 & 1;
    v33 = sub_247D1FC68();
    v35 = sub_247CB03B4(v33, v34, &v44);

    *(v25 + 14) = v35;
    _os_log_impl(&dword_247C1F000, v23, v24, "Missing required hidden action for loading step %s, with context: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v26, -1, -1);
    MEMORY[0x24C1B9080](v25, -1, -1);
  }
}

uint64_t sub_247C3A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 296) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 48) = _s15DiagnosticStyleOMa(0);
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = _s5StateVMa();
  *(v8 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63000);
  *(v8 + 80) = swift_task_alloc();
  v9 = type metadata accessor for FileStatusResponse(0);
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = sub_247D1FEA8();
  *(v8 + 120) = sub_247D1FE98();
  v11 = sub_247D1FE38();
  *(v8 + 128) = v11;
  *(v8 + 136) = v10;

  return MEMORY[0x2822009F8](sub_247C3A390, v11, v10);
}

uint64_t sub_247C3A390()
{
  if (*(v0 + 296))
  {
    v14 = (*(v0 + 16) + **(v0 + 16));
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_247C3A608;

    return v14();
  }

  else
  {
    *(v0 + 144) = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 152) = Strong;
    if (Strong)
    {
      v4 = *(v0 + 32);
      v5 = *(v0 + 16);
      v6 = sub_247D1FE98();
      v7 = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState;
      *(v0 + 176) = v6;
      *(v0 + 184) = v7;
      v8 = swift_task_alloc();
      *(v0 + 192) = v8;
      *v8 = v0;
      v8[1] = sub_247C3A920;
      v9 = *(v0 + 80);
      v10 = MEMORY[0x277D84F90];

      return sub_247CA9AB4(v9, v5, v4 + v7, v10, 0);
    }

    else
    {
      v11 = *(v0 + 80);
      (*(*(v0 + 96) + 56))(v11, 1, 1, *(v0 + 88));
      sub_247C27100(v11, &qword_27EE63000);
      v12 = swift_task_alloc();
      *(v0 + 216) = v12;
      *v12 = v0;
      v12[1] = sub_247C3B168;
      v13 = *(v0 + 40);

      return sub_247C3E9C4(v13);
    }
  }
}

uint64_t sub_247C3A608()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 168) = v3;
  *v3 = v2;
  v3[1] = sub_247C3A74C;
  v4 = *(v1 + 40);

  return sub_247C3E9C4(v4);
}

uint64_t sub_247C3A74C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_247C3A86C, v3, v2);
}

uint64_t sub_247C3A86C()
{
  v5 = v0;

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_247C39D18(0, 1, v3);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C3A920()
{
  *(*v1 + 200) = v0;

  v3 = sub_247D1FE38();
  if (v0)
  {
    v4 = sub_247C3B060;
  }

  else
  {
    v4 = sub_247C3AA7C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_247C3AA7C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_247C3AAEC, v1, v2);
}

uint64_t sub_247C3AAEC()
{
  v1 = v0[13];
  v2 = v0[10];
  (*(v0[12] + 56))(v2, 0, 1, v0[11]);
  sub_247C3F0A0(v2, v1, type metadata accessor for FileStatusResponse);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_247C3ABC4;
  v4 = v0[5];

  return sub_247C3E9C4(v4);
}

uint64_t sub_247C3ABC4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_247C3ACE4, v3, v2);
}

uint64_t sub_247C3ACE4()
{
  v29 = v0;
  v1 = v0[13];
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      if (v2 == 1)
      {

        memset(v28, 0, 40);
        sub_247C39D18(0, 1, v28);
LABEL_22:
        v11 = v1;
        goto LABEL_23;
      }

      v12 = v0[23];
      v13 = v0[8];
      v14 = v0[4];

      v15 = *(v14 + v12 + *(v13 + 44));
      v16 = *(v14 + v12 + 48);
      if (*(v16 + 16) && (v17 = sub_247CCFDA8(0xD000000000000011, 0x8000000247D2E310), (v18 & 1) != 0))
      {
        v19 = (*(v16 + 56) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];

        v22 = sub_247CECA84(v21, v20);
        v24 = v23;

        if (v24)
        {
          if (v15 < 2)
          {
            goto LABEL_20;
          }

LABEL_18:
          v1 = v0[13];
          v28[0] = xmmword_247D22CC0;
          *&v28[1] = 0x8000000247D2D900;
          *(&v28[1] + 8) = xmmword_247D23C00;
          v25 = 2;
LABEL_21:
          sub_247C39D18(v25, 1, v28);
          sub_247C3EF94(*&v28[0], *(&v28[0] + 1), *&v28[1]);
          goto LABEL_22;
        }

        if (v22 < v15)
        {
          goto LABEL_18;
        }
      }

      else if (v15 > 1)
      {
        goto LABEL_18;
      }

LABEL_20:
      v1 = v0[13];
      v28[0] = xmmword_247D22CD0;
      *&v28[1] = 0x8000000247D2D930;
      *(&v28[1] + 8) = xmmword_247D23C00;
      v25 = 5;
      goto LABEL_21;
    }
  }

  v3 = sub_247D1F468();
  v4 = sub_247D20038();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_247C1F000, v3, v4, "Critical Error: Invalid or missing assessment result", v5, 2u);
    MEMORY[0x24C1B9080](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
    v10 = v0[13];

    v11 = v10;
LABEL_23:
    sub_247C3F040(v11, type metadata accessor for FileStatusResponse);

    v26 = v0[1];

    return v26();
  }

  sub_247C3EF40();
  v0[29] = swift_allocError();
  *v7 = 0;
  v0[30] = sub_247D1FE98();
  v9 = sub_247D1FE38();
  v0[31] = v9;
  v0[32] = v8;

  return MEMORY[0x2822009F8](sub_247C3B31C, v9, v8);
}

uint64_t sub_247C3B060()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_247C3B0D0, v1, v2);
}

uint64_t sub_247C3B0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C3B168()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_247C3B288, v3, v2);
}

uint64_t sub_247C3B288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C3B31C()
{
  sub_247C3EFD8(v0[4] + v0[23], v0[9], _s5StateVMa);
  v0[33] = sub_247D1FE98();
  v2 = sub_247D1FE38();
  v0[34] = v2;
  v0[35] = v1;

  return MEMORY[0x2822009F8](sub_247C3B3D0, v2, v1);
}

uint64_t sub_247C3B3D0()
{
  v1 = v0[29];
  v2 = v0[9];
  v3 = v0[7];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247C3EFD8(v2, v3, _s5StateVMa);
  *(v3 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_247C3B4E0;
  v7 = v0[7];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247C3B4E0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_247C3F040(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);

  return MEMORY[0x2822009F8](sub_247C3B638, v4, v3);
}

uint64_t sub_247C3B638()
{
  v1 = v0[9];

  sub_247C3F040(v1, _s5StateVMa);
  v2 = v0[31];
  v3 = v0[32];

  return MEMORY[0x2822009F8](sub_247C3B6BC, v2, v3);
}

uint64_t sub_247C3B6BC()
{
  v1 = v0[29];

  swift_unknownObjectRelease();

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_247C3B734, v2, v3);
}

uint64_t sub_247C3B734()
{
  v1 = *(v0 + 104);

  sub_247C3F040(v1, type metadata accessor for FileStatusResponse);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C3B808()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_247C3B89C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InformationViewController()
{
  result = qword_27EE62F50;
  if (!qword_27EE62F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C3BA64()
{
  result = _s5StateVMa();
  if (v1 <= 0x3F)
  {
    result = sub_247D1F488();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_247C3BB98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247C3BBE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

BOOL sub_247C3BC7C()
{
  v1 = v0 + OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState;
  v2 = v1 + *(_s5StateVMa() + 40);
  v3 = *(v2 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  return (*(v3 + 74) & 1) == 0;
}

unsigned int (*sub_247C3BCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(char *, uint64_t, uint64_t)
{
  v127 = a5;
  v122 = a3;
  v123 = a2;
  v137 = a1;
  v112 = type metadata accessor for CheckingPhotosIconView();
  MEMORY[0x28223BE20](v112);
  v113 = (&v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = _s5StateVMa();
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v133 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v111 - v12;
  v130 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v132 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_247D1FB98();
  v135 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v116 = &v111 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v111 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v111 - v24;
  v26 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v111 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v111 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v111 - v37;
  v39 = *(type metadata accessor for FlowResponse.Step.Information(0) + 28);
  v138 = a4;
  v134 = v39;
  sub_247C2BD10(a4 + v39, v25, &qword_27EE62F68);
  v42 = *(v27 + 48);
  v40 = v27 + 48;
  v41 = v42;
  v43 = v42(v25, 1, v26);
  v136 = v42;
  if (v43 == 1)
  {
    *v38 = 0;
    *(v38 + 1) = 0xE000000000000000;
    v38[16] = 0;
    *(v38 + 3) = 0;
    *(v38 + 4) = 0xE000000000000000;
    *(v38 + 5) = 0;
    *(v38 + 6) = 0xE000000000000000;
    *(v38 + 7) = 0;
    v38[64] = 1;
    sub_247D1F188();
    (*(v129 + 56))(&v38[*(v26 + 40)], 1, 1, v130);
    if (v41(v25, 1, v26) != 1)
    {
      sub_247C27100(v25, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v25, v38, type metadata accessor for FlowResponse.Step.Masthead);
  }

  sub_247C3F040(v38, type metadata accessor for FlowResponse.Step.Masthead);
  sub_247D1FBA8();
  v120 = sub_247C88264(v15);
  v126 = v44;
  v45 = *(v135 + 8);
  v135 += 8;
  v45(v15, v128);
  sub_247C2BD10(v138 + v134, v23, &qword_27EE62F68);
  v46 = v136;
  v47 = v136(v23, 1, v26);
  v115 = v30;
  v114 = v40;
  if (v47 == 1)
  {
    *v36 = 0;
    *(v36 + 1) = 0xE000000000000000;
    v36[16] = 0;
    *(v36 + 3) = 0;
    *(v36 + 4) = 0xE000000000000000;
    *(v36 + 5) = 0;
    *(v36 + 6) = 0xE000000000000000;
    *(v36 + 7) = 0;
    v36[64] = 1;
    sub_247D1F188();
    (*(v129 + 56))(&v36[*(v26 + 40)], 1, 1, v130);
    if (v46(v23, 1, v26) != 1)
    {
      sub_247C27100(v23, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v23, v36, type metadata accessor for FlowResponse.Step.Masthead);
  }

  sub_247C3F040(v36, type metadata accessor for FlowResponse.Step.Masthead);
  sub_247D1FBA8();
  v119 = sub_247C88264(v15);
  v125 = v48;
  v49 = v128;
  v45(v15, v128);
  v50 = v138;

  sub_247D1FBA8();
  v117 = sub_247C88264(v15);
  v124 = v51;
  v45(v15, v49);
  v52 = *v50;
  v53 = v50 + v134;
  v54 = v116;
  sub_247C2BD10(v53, v116, &qword_27EE62F68);
  v55 = v136;
  if (v136(v54, 1, v26) == 1)
  {
    *v33 = 0;
    *(v33 + 1) = 0xE000000000000000;
    v33[16] = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = 0xE000000000000000;
    *(v33 + 5) = 0;
    *(v33 + 6) = 0xE000000000000000;
    *(v33 + 7) = 0;
    v33[64] = 1;
    sub_247D1F188();
    v56 = v129;
    v57 = v130;
    (*(v129 + 56))(&v33[*(v26 + 40)], 1, 1, v130);
    v58 = v55(v54, 1, v26);
    v59 = v132;
    v60 = v115;
    if (v58 != 1)
    {
      sub_247C27100(v54, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v54, v33, type metadata accessor for FlowResponse.Step.Masthead);
    v59 = v132;
    v57 = v130;
    v56 = v129;
    v60 = v115;
  }

  v130 = *(v33 + 7);
  LODWORD(v135) = v33[64];
  sub_247C3F040(v33, type metadata accessor for FlowResponse.Step.Masthead);
  v61 = v118;
  sub_247C2BD10(v138 + v134, v118, &qword_27EE62F68);
  v62 = v136;
  if (v136(v61, 1, v26) == 1)
  {
    *v60 = 0;
    *(v60 + 8) = 0xE000000000000000;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0xE000000000000000;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0xE000000000000000;
    *(v60 + 56) = 0;
    *(v60 + 64) = 1;
    sub_247D1F188();
    (*(v56 + 56))(v60 + *(v26 + 40), 1, 1, v57);
    if (v62(v61, 1, v26) != 1)
    {
      sub_247C27100(v61, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v61, v60, type metadata accessor for FlowResponse.Step.Masthead);
  }

  v63 = v121;
  sub_247C2BD10(v60 + *(v26 + 40), v121, &qword_27EE62F60);
  v64 = *(v56 + 48);
  if (v64(v63, 1, v57) == 1)
  {
    *v59 = 0;
    *(v59 + 1) = 0xE000000000000000;
    v65 = *(v57 + 20);
    v66 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
    (*(*(v66 - 8) + 56))(&v59[v65], 1, 1, v66);
    v59[*(v57 + 24)] = 0;
    sub_247D1F188();
    sub_247C3F040(v60, type metadata accessor for FlowResponse.Step.Masthead);
    if (v64(v63, 1, v57) != 1)
    {
      sub_247C27100(v63, &qword_27EE62F60);
    }
  }

  else
  {
    sub_247C3F040(v60, type metadata accessor for FlowResponse.Step.Masthead);
    sub_247C3F0A0(v63, v59, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  }

  v67 = v131;
  sub_247C3EFD8(v137, v131, _s5StateVMa);
  v68 = v133;
  sub_247C3EFD8(v59, v133, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  (*(v56 + 56))(v68, 0, 1, v57);
  v69 = type metadata accessor for InformationViewController();
  v70 = objc_allocWithZone(v69);
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController____lazy_storage___loadingIndicator] = 1;
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v71 = qword_27EE72D00;
  v72 = *(qword_27EE72D00 + 16);

  [v72 lock];
  sub_247CAEF98(v71, &_s26ImageUploadDataProviderKeyON, &v139);
  v73 = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController__imageUploadDataProvider;
  [v72 unlock];
  sub_247C3D044(&v139, &v70[v73]);

  v74 = &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_delegate];
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_247D1F478();
  v75 = &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_caption];
  *v75 = 0;
  v75[1] = 0;
  v76 = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_bulletedListItems;
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_bulletedListItems] = 0;
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_customAnimationView] = 0;
  sub_247C3EFD8(v67, &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState], _s5StateVMa);
  *(v74 + 1) = v122;
  swift_unknownObjectWeakAssign();
  v77 = MEMORY[0x277D84F90];
  if (v127)
  {
    v78 = v127;
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
  }

  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_actions] = v78;
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_hiddenActions] = v77;
  v79 = &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_loadingTask];
  *v79 = 0;
  *(v79 + 1) = 0;
  v79[16] = -1;
  v80 = v124;
  *v75 = v117;
  v75[1] = v80;

  *&v70[v76] = v52;

  v81 = sub_247D1FBB8();
  v82 = v125;

  v83 = sub_247D1FBB8();

  v84 = sub_247CB7A2C(v133);
  v147.receiver = v70;
  v147.super_class = v69;
  v85 = objc_msgSendSuper2(&v147, sel_initWithTitle_detailText_icon_contentLayout_, v81, v83, v84, 2);

  if ((v135 & 1) == 0)
  {

    swift_unknownObjectRelease();

    v86 = v132;
LABEL_33:
    v95 = v131;
LABEL_39:
    sub_247C3F040(v137, _s5StateVMa);
    sub_247C27100(v133, &qword_27EE62F60);
    sub_247C3F040(v95, _s5StateVMa);
    sub_247C3F040(v86, type metadata accessor for FlowResponse.SFSymbolConfiguration);
    sub_247C3F040(v138, type metadata accessor for FlowResponse.Step.Information);
    return v85;
  }

  v86 = v132;
  if (!v130)
  {

    swift_unknownObjectRelease();

    goto LABEL_33;
  }

  v136 = v85;
  if (v130 == 1)
  {
    LOBYTE(v146) = 0;
    sub_247D1F8F8();
    v87 = v139;
    v88 = *(&v139 + 1);
    v146 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F90);
    sub_247D1F8F8();
    v90 = *(&v139 + 1);
    v89 = v139;
    v146 = 0;
    sub_247D1F8F8();
    v91 = v139;
    LOBYTE(v139) = v87;
    *(&v139 + 1) = v88;
    v140 = v89;
    v141 = v90;
    v142 = v91;
    v143 = 0;
    v144 = 0;
    v145 = vdupq_n_s64(0x4051800000000000uLL);
    v92 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F98));
    v93 = sub_247D1F6A8();
    v94 = [v93 view];

    v95 = v131;
    if (v94)
    {
      v86 = v132;
LABEL_35:

      v102 = [v136 headerView];
      v103 = [v102 customIconContainerView];

      if (v103)
      {
        [v103 setClipsToBounds_];
        [v103 addSubview_];
        [v94 setTranslatesAutoresizingMaskIntoConstraints_];
        v104 = [v94 centerXAnchor];
        v105 = [v103 centerXAnchor];
        v106 = [v104 constraintEqualToAnchor_];

        [v106 setActive_];
        v107 = [v94 centerYAnchor];
        v108 = [v103 centerYAnchor];
        v109 = [v107 constraintEqualToAnchor_];

        v86 = v132;
        [v109 setActive_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v85 = v136;
      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
    v96 = sub_247D1F888();
    KeyPath = swift_getKeyPath();
    v90 = v113;
    *v113 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F70);
    swift_storeEnumTagMultiPayload();
    v98 = v90 + *(v112 + 20);
    *&v139 = sub_247D1F888();
    sub_247C3D064();
    v146 = sub_247D1F8D8();
    sub_247D1F8F8();
    v99 = v139;
    *v98 = v139;
    v139 = v99;
    v146 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F80);
    sub_247D1F918();
    v100 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F88));
    v101 = sub_247D1F6A8();
    v94 = [v101 view];

    v95 = v131;
    if (v94)
    {
      goto LABEL_35;
    }
  }

  __break(1u);

  result = [v90 unlock];
  __break(1u);
  return result;
}

uint64_t sub_247C3D044(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_247C3D064()
{
  result = qword_27EE62F78;
  if (!qword_27EE62F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62F78);
  }

  return result;
}

id sub_247C3D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v127 = a7;
  v126 = a6;
  v134 = a5;
  v121 = a4;
  v132 = a3;
  v141 = a1;
  v114 = type metadata accessor for CheckingPhotosIconView();
  MEMORY[0x28223BE20](v114);
  v115 = (&v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v122 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v114 - v12;
  v116 = _s5StateVMa();
  MEMORY[0x28223BE20](v116);
  v140 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v135 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v125 = &v114 - v17;
  v130 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v139 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v131 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_247D1FB98();
  v138 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v118 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v117 = &v114 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v114 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v114 - v29;
  v31 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v114 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v114 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v114 - v42;
  v44 = *(type metadata accessor for FlowResponse.Step.Loading(0) + 24);
  v133 = a2;
  v137 = v44;
  sub_247C2BD10(a2 + v44, v30, &qword_27EE62F68);
  v45 = *(v32 + 48);
  v46 = v45(v30, 1, v31);
  v129 = v45;
  if (v46 == 1)
  {
    *v43 = 0;
    *(v43 + 1) = 0xE000000000000000;
    v43[16] = 0;
    *(v43 + 3) = 0;
    *(v43 + 4) = 0xE000000000000000;
    *(v43 + 5) = 0;
    *(v43 + 6) = 0xE000000000000000;
    *(v43 + 7) = 0;
    v43[64] = 1;
    sub_247D1F188();
    (*(v139 + 56))(&v43[*(v31 + 40)], 1, 1, v130);
    if (v45(v30, 1, v31) != 1)
    {
      sub_247C27100(v30, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v30, v43, type metadata accessor for FlowResponse.Step.Masthead);
  }

  sub_247C3F040(v43, type metadata accessor for FlowResponse.Step.Masthead);
  sub_247D1FBA8();
  v120 = sub_247C88264(v20);
  v123 = v47;
  v48 = *(v138 + 8);
  v138 += 8;
  v48(v20, v128);
  sub_247C2BD10(v133 + v137, v28, &qword_27EE62F68);
  v49 = v129;
  if (v129(v28, 1, v31) == 1)
  {
    *v41 = 0;
    *(v41 + 1) = 0xE000000000000000;
    v41[16] = 0;
    *(v41 + 3) = 0;
    *(v41 + 4) = 0xE000000000000000;
    *(v41 + 5) = 0;
    *(v41 + 6) = 0xE000000000000000;
    *(v41 + 7) = 0;
    v41[64] = 1;
    sub_247D1F188();
    (*(v139 + 56))(&v41[*(v31 + 40)], 1, 1, v130);
    if (v49(v28, 1, v31) != 1)
    {
      sub_247C27100(v28, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v28, v41, type metadata accessor for FlowResponse.Step.Masthead);
  }

  sub_247C3F040(v41, type metadata accessor for FlowResponse.Step.Masthead);
  sub_247D1FBA8();
  v119 = sub_247C88264(v20);
  v124 = v50;
  v48(v20, v128);
  v51 = v133;
  v52 = v117;
  sub_247C2BD10(v133 + v137, v117, &qword_27EE62F68);
  v53 = v129;
  if (v129(v52, 1, v31) == 1)
  {
    *v38 = 0;
    *(v38 + 1) = 0xE000000000000000;
    v38[16] = 0;
    *(v38 + 3) = 0;
    *(v38 + 4) = 0xE000000000000000;
    *(v38 + 5) = 0;
    *(v38 + 6) = 0xE000000000000000;
    *(v38 + 7) = 0;
    v38[64] = 1;
    sub_247D1F188();
    v54 = v130;
    (*(v139 + 56))(&v38[*(v31 + 40)], 1, 1, v130);
    if (v53(v52, 1, v31) != 1)
    {
      sub_247C27100(v52, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v52, v38, type metadata accessor for FlowResponse.Step.Masthead);
    v54 = v130;
  }

  v138 = *(v38 + 7);
  v55 = v38[64];
  sub_247C3F040(v38, type metadata accessor for FlowResponse.Step.Masthead);
  v56 = v118;
  sub_247C2BD10(v51 + v137, v118, &qword_27EE62F68);
  if (v53(v56, 1, v31) == 1)
  {
    *v35 = 0;
    *(v35 + 1) = 0xE000000000000000;
    v35[16] = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = 0xE000000000000000;
    *(v35 + 5) = 0;
    *(v35 + 6) = 0xE000000000000000;
    *(v35 + 7) = 0;
    v35[64] = 1;
    sub_247D1F188();
    (*(v139 + 56))(&v35[*(v31 + 40)], 1, 1, v54);
    v57 = v53(v56, 1, v31);
    v58 = v127;
    v59 = v131;
    if (v57 != 1)
    {
      sub_247C27100(v56, &qword_27EE62F68);
    }
  }

  else
  {
    sub_247C3F0A0(v56, v35, type metadata accessor for FlowResponse.Step.Masthead);
    v58 = v127;
    v59 = v131;
  }

  v60 = &v35[*(v31 + 40)];
  v61 = v125;
  sub_247C2BD10(v60, v125, &qword_27EE62F60);
  v62 = v139;
  v63 = *(v139 + 48);
  if (v63(v61, 1, v54) == 1)
  {
    *v59 = 0;
    v59[1] = 0xE000000000000000;
    v64 = *(v54 + 20);
    v65 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
    v66 = v59 + v64;
    v67 = v125;
    (*(*(v65 - 8) + 56))(v66, 1, 1, v65);
    *(v59 + *(v54 + 24)) = 0;
    sub_247D1F188();
    sub_247C3F040(v35, type metadata accessor for FlowResponse.Step.Masthead);
    if (v63(v67, 1, v54) != 1)
    {
      sub_247C27100(v67, &qword_27EE62F60);
    }
  }

  else
  {
    sub_247C3F040(v35, type metadata accessor for FlowResponse.Step.Masthead);
    sub_247C3F0A0(v61, v59, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  }

  sub_247C3EFD8(v141, v140, _s5StateVMa);
  sub_247C2BD10(v58, v136, &qword_27EE62FA0);
  v68 = v135;
  sub_247C3EFD8(v59, v135, type metadata accessor for FlowResponse.SFSymbolConfiguration);
  (*(v62 + 56))(v68, 0, 1, v54);
  v69 = type metadata accessor for InformationViewController();
  v70 = objc_allocWithZone(v69);
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController____lazy_storage___loadingIndicator] = 1;
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v71 = qword_27EE72D00;
  v72 = *(qword_27EE72D00 + 16);

  [v72 lock];
  sub_247CAEF98(v71, &_s26ImageUploadDataProviderKeyON, &v142);
  v73 = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController__imageUploadDataProvider;
  [v72 unlock];
  sub_247C3D044(&v142, &v70[v73]);

  v74 = &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_delegate];
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_247D1F478();
  v75 = &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_caption];
  *v75 = 0;
  *(v75 + 1) = 0;
  v76 = OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_bulletedListItems;
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_bulletedListItems] = 0;
  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_customAnimationView] = 0;
  v77 = v140;
  sub_247C3EFD8(v140, &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_flowState], _s5StateVMa);
  *(v74 + 1) = v121;
  swift_unknownObjectWeakAssign();
  v78 = MEMORY[0x277D84F90];
  if (v134)
  {
    v79 = v134;
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_actions] = v79;
  if (v126)
  {
    v78 = v126;
  }

  *&v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_hiddenActions] = v78;
  v80 = v122;
  sub_247C2BD10(v136, v122, &qword_27EE62FA0);
  v81 = type metadata accessor for FlowResponse.Step.Loading.OneOf_Operation(0);
  if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
  {

    v82 = 0;
    v83 = -1;
  }

  else
  {
    v82 = *(v77 + *(v116 + 20));

    sub_247C27100(v80, &qword_27EE62FA0);
    v83 = 0;
  }

  v84 = &v70[OBJC_IVAR____TtC18CosmeticAssessment25InformationViewController_loadingTask];
  *v84 = v82;
  *(v84 + 1) = 0;
  v84[16] = v83;
  *v75 = 0;
  *(v75 + 1) = 0;

  *&v70[v76] = 0;

  v85 = sub_247D1FBB8();
  v86 = v124;

  v87 = sub_247D1FBB8();

  v88 = sub_247CB7A2C(v135);
  v150.receiver = v70;
  v150.super_class = v69;
  v89 = objc_msgSendSuper2(&v150, sel_initWithTitle_detailText_icon_contentLayout_, v85, v87, v88, 2);

  v90 = v131;
  if (!v55 || !v138)
  {

    swift_unknownObjectRelease();

LABEL_42:
    v112 = v140;
    sub_247C27100(v127, &qword_27EE62FA0);
    sub_247C3F040(v51, type metadata accessor for FlowResponse.Step.Loading);
    sub_247C3F040(v141, _s5StateVMa);
    sub_247C27100(v135, &qword_27EE62F60);
    sub_247C27100(v136, &qword_27EE62FA0);
    sub_247C3F040(v112, _s5StateVMa);
    sub_247C3F040(v90, type metadata accessor for FlowResponse.SFSymbolConfiguration);
    return v89;
  }

  if (v138 == 1)
  {
    LOBYTE(v149) = 0;
    sub_247D1F8F8();
    v91 = v142;
    v92 = *(&v142 + 1);
    v149 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F90);
    sub_247D1F8F8();
    v86 = *(&v142 + 1);
    v93 = v142;
    v149 = 0;
    sub_247D1F8F8();
    v94 = v142;
    LOBYTE(v142) = v91;
    *(&v142 + 1) = v92;
    v143 = v93;
    v144 = v86;
    v145 = v94;
    v146 = 0;
    v147 = 0;
    v148 = vdupq_n_s64(0x4051800000000000uLL);
    v95 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F98));
    v96 = sub_247D1F6A8();
    v97 = [v96 view];

    if (v97)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  else
  {
    v98 = sub_247D1F888();
    KeyPath = swift_getKeyPath();
    v100 = v115;
    *v115 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F70);
    swift_storeEnumTagMultiPayload();
    v101 = (v100 + *(v114 + 20));
    *&v142 = sub_247D1F888();
    sub_247C3D064();
    v149 = sub_247D1F8D8();
    sub_247D1F8F8();
    v102 = v142;
    *v101 = v142;
    v142 = v102;
    v149 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F80);
    sub_247D1F918();
    v103 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F88));
    v96 = sub_247D1F6A8();
    v97 = [v96 view];

    if (v97)
    {
LABEL_38:

      v104 = [v89 headerView];
      v105 = [v104 customIconContainerView];

      if (v105)
      {
        [v105 setClipsToBounds_];
        [v105 addSubview_];
        [v97 setTranslatesAutoresizingMaskIntoConstraints_];
        v106 = [v97 centerXAnchor];
        v107 = [v105 centerXAnchor];
        v108 = [v106 constraintEqualToAnchor_];

        [v108 setActive_];
        v109 = [v97 centerYAnchor];
        v110 = [v105 centerYAnchor];
        v111 = [v109 constraintEqualToAnchor_];

        [v111 setActive_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_42;
    }
  }

  __break(1u);

  result = [v86 unlock];
  __break(1u);
  return result;
}

uint64_t sub_247C3E4C4()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247C3E518()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247C3E560()
{
  v1 = (type metadata accessor for FlowResponse.Step.Action(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_247D1F198();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_247C3E660(void *a1)
{
  v3 = *(type metadata accessor for FlowResponse.Step.Action(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_247C38B08(a1, v4, v5);
}

uint64_t sub_247C3E6D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247C30174(a1, a2);
  }

  return a1;
}

uint64_t sub_247C3E6E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247C301C8(a1, a2);
  }

  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_247C3E760(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_247C3E770(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_247C3E760(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_247C3E788()
{
  v1 = sub_247D1EF48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  sub_247C3E860(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247C3E860(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_247C3E870(uint64_t a1)
{
  v4 = *(sub_247D1EF48() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_247C2793C;

  return sub_247C3A1F8(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_247C3E98C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_247C3E860(result, a2, a3 & 1);
  }

  return result;
}

void sub_247C3E9A4(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_247C3E9B4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_247C3E9C4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_247D20368();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_247D1EF48();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_247D1FEA8();
  v1[9] = sub_247D1FE98();
  v5 = sub_247D1FE38();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x2822009F8](sub_247C3EB14, v5, v4);
}

uint64_t sub_247C3EB14()
{
  v2 = *(v0 + 7);
  v1 = *(v0 + 8);
  v3 = *(v0 + 6);
  sub_247D1EF18();
  sub_247D1EE88();
  v5 = v4;
  v0[12] = v4;
  (*(v2 + 8))(v1, v3);
  if (v5 >= 3.6)
  {

    v6 = *(v0 + 1);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_247C3EC28, 0, 0);
  }
}

uint64_t sub_247C3EC28()
{
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_247C3ED14;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247C3ED14()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_247C3EF28;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v8 = v3[10];
    v9 = v3[11];
    v7 = sub_247C3EEB4;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_247C3EEB4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_247C3EF40()
{
  result = qword_27EE63008;
  if (!qword_27EE63008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63008);
  }

  return result;
}

uint64_t sub_247C3EF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_247C3EFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C3F040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C3F0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C3F108()
{
  v1 = (type metadata accessor for FlowResponse.Step.Action(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_247D1F198();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

BOOL sub_247C3F2AC(double a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0.0;
  v8 = 0;
  if ([objc_opt_self() calculateArea:v9 forContour:v1 orientedArea:0 error:&v8])
  {
    v3 = v9[0] < a1;
    v4 = v8;
  }

  else
  {
    v5 = v8;
    v6 = sub_247D1ECA8();

    swift_willThrow();
    return 0;
  }

  return v3;
}

uint64_t sub_247C3F38C(double a1, double a2, double a3, double a4)
{
  v9 = sub_247D1F488();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= a2 || a3 >= a4)
  {
    if (a1 > 0.0 || a2 > 0.0 || a3 > 0.0 || a4 > 0.0)
    {
      v15 = result;
      sub_247D1F478();
      v16 = sub_247D1F468();
      v17 = sub_247D20058();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134218752;
        *(v18 + 4) = a1;
        *(v18 + 12) = 2048;
        *(v18 + 14) = a2;
        *(v18 + 22) = 2048;
        *(v18 + 24) = a3;
        *(v18 + 32) = 2048;
        *(v18 + 34) = a4;
        _os_log_impl(&dword_247C1F000, v16, v17, "Misconfigured bounds – %f – %f – %f – %f", v18, 0x2Au);
        MEMORY[0x24C1B9080](v18, -1, -1);
      }

      (*(v10 + 8))(v13, v15);
    }

    return 0;
  }

  if (a1 > a2 || a3 > a4)
  {
    __break(1u);
  }

  else
  {
    v20 = [v4 normalizedPath];
    v21 = COERCE_DOUBLE(CGPathGetBoundingBox(v20));

    if (v21 < a1 || v21 > a2)
    {
      return 0;
    }

    v23 = [v4 normalizedPath];
    BoundingBox = CGPathGetBoundingBox(v23);
    y = BoundingBox.origin.y;

    if (y < a3)
    {
      return 0;
    }

    return y <= a4;
  }

  return result;
}

uint64_t sub_247C3F5FC(CGFloat a1)
{
  v3 = [v1 normalizedPath];
  BoundingBox = CGPathGetBoundingBox(v3);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;

  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (CGRectGetMinY(v11) >= a1 && (v12.origin.x = x, v12.origin.y = y, v12.size.width = width, v12.size.height = height, CGRectGetMinX(v12) >= a1) && (v13.origin.x = x, v13.origin.y = y, v13.size.width = width, v13.size.height = height, 1.0 - CGRectGetMaxX(v13) >= a1))
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v8 = 1.0 - CGRectGetMaxY(v14) < a1;
  }

  else
  {
    v8 = 1;
  }

  return ([v1 pointCount] > 100) & v8;
}

BOOL sub_247C3F708()
{
  v15[1] = *MEMORY[0x277D85DE8];
  sub_247C5804C(0xD000000000000013, 0x8000000247D2E330);
  v2 = v1;
  sub_247C5804C(0xD000000000000013, 0x8000000247D2E350);
  if (v2 > v3)
  {
    __break(1u);
  }

  v4 = v3;
  v15[0] = 0;
  v14 = 0;
  if ([objc_opt_self() calculateArea:v15 forContour:v0 orientedArea:0 error:&v14])
  {
    v5 = v14;
    [v0 aspectRatio];
    v7 = v6;
    v8 = v4 >= v7 && v2 <= v7;
    v9 = *v15;
    sub_247C5804C(0x6C657A65426E696DuLL, 0xEC00000061657241);
    return v10 < v9 && v8;
  }

  else
  {
    v12 = v14;
    v13 = sub_247D1ECA8();

    swift_willThrow();
    return 0;
  }
}

void *sub_247C3F898()
{
  v1 = [v0 viewControllers];
  sub_247C3FD40();
  v2 = sub_247D1FDC8();

  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_24:

    return 0;
  }

  while (1)
  {
    while (1)
    {
      if (__OFSUB__(v3--, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v2 + 32 + 8 * v3);
        goto LABEL_11;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      v3 = sub_247D203B8();
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    v5 = MEMORY[0x24C1B8190](v3, v2);
LABEL_11:
    v6 = v5;
    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      if (v6)
      {
        break;
      }
    }

LABEL_15:
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v6)
    {

      return v6;
    }

    if (!v3)
    {
      goto LABEL_24;
    }
  }

  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 8);
  v11 = v6;
  v12 = v10(ObjectType, v8);
  if (!v12)
  {

    goto LABEL_15;
  }

  v13 = v12;

  v6 = v10(ObjectType, v8);
  return v6;
}

void sub_247C3FA88(void *a1)
{
  v2 = v1;
  v4 = a1;
  if (!a1)
  {
    v4 = sub_247C3F898();
  }

  v5 = a1;
  v6 = [v1 topViewController];
  if (v6)
  {
    v20 = v6;
    if (!v4)
    {
      v16 = 0;
LABEL_14:

      return;
    }

    if (v20 == v4)
    {
LABEL_13:
      v18 = type metadata accessor for SystemCrossfadeTransitionAnimator();
      v20 = sub_247C7583C(v18, &off_2859DC9A0);

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v7 = [v1 viewControllers];
  sub_247C3FD40();
  v8 = sub_247D1FDC8();

  v21 = v4;
  MEMORY[0x28223BE20](v9);
  v19[2] = &v21;
  v10 = v4;
  v11 = sub_247C3FD8C(sub_247C3FF04, v19, v8);
  LOBYTE(v7) = v12;

  if ((v7 & 1) == 0)
  {
    v13 = [v2 viewControllers];
    v14 = sub_247D1FDC8();

    v21 = v14;
    v15 = sub_247D1FDB8();

    [v2 setViewControllers:v15 animated:0];
  }
}

uint64_t sub_247C3FCAC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_247C3FEA0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_247C3FD40()
{
  result = qword_27EE63250;
  if (!qword_27EE63250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE63250);
  }

  return result;
}

unint64_t sub_247C3FD8C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_18:
    v13 = a3;
    v14 = sub_247D203B8();
    a3 = v13;
    v5 = v14;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a3 & 0xC000000000000001;
  v15 = a3;
  v7 = a3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6)
    {
      v9 = MEMORY[0x24C1B8190](v8 - 1, v15);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v17 = v9;
    v11 = a1(&v17);
  }

  while (!v3 && (v11 & 1) == 0);
  return v5;
}

uint64_t sub_247C3FEA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_247D203B8();
  }

  return sub_247D202E8();
}

uint64_t sub_247C3FF5C(uint64_t a1, void *a2, void *a3, void (**a4)(__int128 *, uint64_t))
{
  v113 = a4;
  v111 = a3;
  v6 = sub_247D1EF48();
  v114 = *(v6 - 8);
  v115 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v110 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v109 = &v81 - v10;
  MEMORY[0x28223BE20](v9);
  v108 = (&v81 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v81 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v81 - v22;
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v24 = qword_27EE72D00;
  v25 = *(qword_27EE72D00 + 16);

  [v25 lock];
  sub_247CAD9C4(v24, &_s19AnalyticsManagerKeyON, v132);
  [v25 unlock];
  sub_247C3D044(v132, v131);

  v26 = sub_247CD0E40();
  v27 = [v26 topViewController];

  if (v27)
  {
    v28 = v27;
    v29 = [v28 description];
    v112 = sub_247D1FBE8();
    v116 = v30;
  }

  else
  {
    v112 = 0;
    v116 = 0xE000000000000000;
  }

  sub_247C2BD10(a1, v23, &qword_27EE62BA0);
  v31 = _s5StateVMa();
  if ((*(*(v31 - 8) + 48))(v23, 1, v31) == 1)
  {
    sub_247C27100(v23, &qword_27EE62BA0);
    sub_247C40E50(v130);
  }

  else
  {
    sub_247C88620(v120);
    sub_247C40EB4(v23, _s5StateVMa);
    memcpy(v132, v120, 0x180uLL);
    nullsub_1(v132);
    memcpy(v130, v132, 0x180uLL);
  }

  *&v132[0] = a2;
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
  v33 = type metadata accessor for TulaError();
  v34 = swift_dynamicCast();
  v35 = *(*(v33 - 8) + 56);
  if (v34)
  {
    v35(v20, 0, 1, v33);
    v36 = *v20;
    v37 = v20[8];
    sub_247C40EB4(v20, type metadata accessor for TulaError);
    v38 = v37 == 1;
    v39 = v116;
    if (v38 && v36 == 3)
    {
      sub_247C2BD10(v131, v132, &unk_27EE631F0);
      sub_247C3D044(v132, v126);
      v40 = v127;
      v113 = v128;
      v111 = __swift_project_boxed_opaque_existential_1(v126, v127);
      memcpy(v129, v130, sizeof(v129));
      if (sub_247C40E90(v129) == 1)
      {
        v41 = 0;
        v94 = 0;
        *&v95 = 0;
        *&v97 = 0;
        v105 = 0;
        v106 = 0;
        v107 = 0;
        v110 = 0;
        v104 = 0u;
        v96 = 0u;
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
        v102 = 0u;
        v93 = xmmword_247D23E90;
        v103 = 0u;
        v101 = 0u;
        v87 = 0u;
        v88 = 0u;
        v92 = 2;
        v42 = 1;
        v43 = 1;
        v44 = 1;
        v45 = 1;
        LODWORD(v91) = 2;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v89 = 0u;
      }

      else
      {
        v110 = *(&v129[23] + 1);
        v101 = v129[22];
        v102 = v129[19];
        v98 = v129[18];
        v99 = v129[20];
        v100 = v129[17];
        v106 = *&v129[15];
        v107 = *&v129[23];
        v105 = *(&v129[15] + 1);
        v96 = v129[14];
        v103 = v129[21];
        v104 = v129[13];
        LODWORD(v91) = BYTE9(v129[12]);
        v92 = BYTE8(v129[12]);
        v93 = *(&v129[11] + 8);
        v45 = LOBYTE(v129[10]);
        v88 = v129[3];
        v89 = *(&v129[10] + 8);
        *&v97 = *&v129[2];
        v44 = BYTE8(v129[2]);
        v43 = BYTE8(v129[1]);
        v42 = BYTE8(v129[0]);
        v86 = v129[6];
        v87 = v129[4];
        v84 = v129[8];
        v85 = v129[5];
        v83 = v129[7];
        v94 = *(&v129[9] + 1);
        *&v95 = *&v129[1];
        v41 = *&v129[9];
      }

      v119 = v42;
      v124 = v43;
      v122 = v44;
      LODWORD(v90) = v45;
      v118 = v45;
      sub_247C2BD10(v130, v132, &unk_27EE63030);
      v67 = v116;

      v68 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
      v69 = v117;
      swift_beginAccess();
      sub_247C2BD10(v69 + v68, v17, &unk_27EE631E0);
      v71 = v114;
      v70 = v115;
      v72 = (*(v114 + 48))(v17, 1, v115);
      if (v72 == 1)
      {

        sub_247C27100(v130, &unk_27EE63030);
        v73 = 0;
      }

      else
      {
        v82 = v41;
        v117 = v40;
        (*(v71 + 32))(v108, v17, v70);
        sub_247D1FEA8();
        sub_247D1FE98();
        sub_247D1FE38();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v74 = v109;
        sub_247D1EF18();
        v75 = v108;
        sub_247D1EE88();
        v73 = v76;
        v67 = v116;

        v77 = *(v114 + 8);
        v78 = v74;
        v79 = v115;
        v77(v78, v115);
        v77(v75, v79);

        sub_247C27100(v130, &unk_27EE63030);
        v40 = v117;
        v41 = v82;
      }

      v119 = v72 == 1;
      *&v120[0] = v73;
      BYTE8(v120[0]) = v72 == 1;
      *&v120[1] = v95;
      BYTE8(v120[1]) = v43;
      *&v120[2] = v97;
      BYTE8(v120[2]) = v44;
      v120[3] = v88;
      v120[4] = v87;
      v120[5] = v85;
      v120[6] = v86;
      v120[7] = v83;
      v120[8] = v84;
      *&v120[9] = v41;
      *(&v120[9] + 1) = v94;
      LOBYTE(v120[10]) = v90;
      *(&v120[10] + 8) = v89;
      *(&v120[11] + 8) = v93;
      BYTE8(v120[12]) = v92;
      BYTE9(v120[12]) = v91;
      v120[13] = v104;
      v120[14] = v96;
      *&v120[15] = v106;
      *(&v120[15] + 1) = v105;
      *&v120[16] = v112;
      *(&v120[16] + 1) = v67;
      v120[17] = v100;
      v120[18] = v98;
      v120[19] = v102;
      v120[20] = v99;
      v120[21] = v103;
      v120[22] = v101;
      *&v120[23] = v107;
      *(&v120[23] + 1) = v110;
      LOBYTE(v120[24]) = 1;
      *(&v120[24] + 1) = 0xD000000000000010;
      *&v120[25] = 0x8000000247D2E3C0;
      memcpy(v132, v120, 0x198uLL);
      v113[1](v132, v40);
      goto LABEL_32;
    }
  }

  else
  {
    v35(v20, 1, 1, v33);
    sub_247C27100(v20, &qword_27EE62C10);
    v39 = v116;
  }

  sub_247C2BD10(v131, v132, &unk_27EE631F0);
  sub_247C3D044(v132, v126);
  v46 = v127;
  v108 = v128;
  v107 = __swift_project_boxed_opaque_existential_1(v126, v127);
  memcpy(v129, v130, sizeof(v129));
  if (sub_247C40E90(v129) == 1)
  {
    *&v96 = 0;
    v105 = 0;
    v106 = 0;
    v104 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v102 = 0u;
    v95 = xmmword_247D23E90;
    v47 = 0uLL;
    v103 = 0u;
    v101 = 0u;
    v90 = 0u;
    v91 = 0u;
    LODWORD(v94) = 2;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    LODWORD(v93) = 2;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
  }

  else
  {
    v101 = v129[22];
    v102 = v129[19];
    v98 = v129[18];
    v99 = v129[20];
    v100 = v129[17];
    v105 = *(&v129[15] + 1);
    v106 = *&v129[15];
    v97 = v129[14];
    v103 = v129[21];
    v104 = v129[13];
    LODWORD(v93) = BYTE9(v129[12]);
    LODWORD(v94) = BYTE8(v129[12]);
    v95 = *(&v129[11] + 8);
    v50 = LOBYTE(v129[10]);
    *&v96 = *&v129[1];
    v49 = BYTE8(v129[1]);
    v48 = BYTE8(v129[0]);
    v90 = v129[4];
    v91 = *(&v129[10] + 8);
    v87 = v129[7];
    v88 = v129[5];
    v47 = v129[8];
    v85 = v129[9];
    v86 = v129[6];
  }

  v84 = v47;
  v125 = v48;
  LODWORD(v89) = v49;
  v124 = v49;
  v92 = v50;
  v122 = v50;
  sub_247C2BD10(v130, v132, &unk_27EE63030);

  swift_getErrorValue();
  v51 = sub_247D205B8();
  v53 = v52;

  swift_getErrorValue();
  v54 = sub_247CC595C(v121);
  v123 = 0;
  v55 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
  v56 = v117;
  swift_beginAccess();
  sub_247C2BD10(v56 + v55, v15, &unk_27EE631E0);
  v58 = v114;
  v57 = v115;
  v59 = (*(v114 + 48))(v15, 1, v115);
  if (v59 == 1)
  {

    sub_247C27100(v130, &unk_27EE63030);
    v60 = 0;
  }

  else
  {
    v117 = v46;
    (*(v58 + 32))(v110, v15, v57);
    sub_247D1FEA8();
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v61 = v109;
    sub_247D1EF18();
    v62 = v110;
    sub_247D1EE88();
    v60 = v63;

    v64 = *(v114 + 8);
    v65 = v61;
    v66 = v115;
    v64(v65, v115);
    v64(v62, v66);
    v39 = v116;

    sub_247C27100(v130, &unk_27EE63030);
    v46 = v117;
  }

  v125 = v59 == 1;
  *&v120[0] = v60;
  BYTE8(v120[0]) = v59 == 1;
  *&v120[1] = v96;
  BYTE8(v120[1]) = v89;
  *&v120[2] = v54;
  BYTE8(v120[2]) = v123;
  *&v120[3] = v51;
  *(&v120[3] + 1) = v53;
  v120[4] = v90;
  v120[5] = v88;
  v120[6] = v86;
  v120[7] = v87;
  v120[8] = v84;
  v120[9] = v85;
  LOBYTE(v120[10]) = v92;
  *(&v120[10] + 8) = v91;
  *(&v120[11] + 8) = v95;
  BYTE8(v120[12]) = v94;
  BYTE9(v120[12]) = v93;
  v120[13] = v104;
  v120[14] = v97;
  *&v120[15] = v106;
  *(&v120[15] + 1) = v105;
  *&v120[16] = v112;
  *(&v120[16] + 1) = v39;
  v120[17] = v100;
  v120[18] = v98;
  v120[19] = v102;
  v120[20] = v99;
  v120[21] = v103;
  v120[22] = v101;
  *&v120[23] = v111;
  *(&v120[23] + 1) = v113;
  LOBYTE(v120[24]) = 1;
  strcpy(&v120[24] + 8, "endFlowError");
  BYTE5(v120[25]) = 0;
  WORD3(v120[25]) = -5120;
  memcpy(v132, v120, 0x198uLL);
  v108[1](v132, v46);
LABEL_32:
  sub_247C318F8(v120);
  sub_247C27100(v131, &unk_27EE631F0);
  return __swift_destroy_boxed_opaque_existential_1(v126);
}

double sub_247C40E50(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  return result;
}

uint64_t sub_247C40E90(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247C40EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18CosmeticAssessment17FacadeEnvironmentO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18CosmeticAssessment17FacadeEnvironmentOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 9;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_247C40F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_247C40FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247C41130@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = a3(0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v26 = v14;
    v27 = a7;
    v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = v15;
    v20 = *(v15 + 72);
    while (1)
    {
      sub_247C57E10(v19, v17, a4);
      v21 = a1(v17);
      if (v7)
      {
        return sub_247C5E468(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_247C5E468(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a7 = v27;
        goto LABEL_10;
      }
    }

    a7 = v27;
    sub_247C5F1AC(v17, v27, v28);
    v22 = 0;
LABEL_10:
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v22 = 1;
  }

  return (*(v15 + 56))(a7, v22, 1, v14);
}

unint64_t sub_247C412D0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247C5E3A4(*a1);
  *a2 = result;
  return result;
}

id sub_247C41308()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder;
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24));
    v4 = v0;
    v5 = sub_247CDCDB4();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_247C41388()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___gradientLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___gradientLayer];
  }

  else
  {
    v4 = sub_247C413EC(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_247C413EC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_247D23880;
    v14 = [objc_opt_self() clearColor];
    v15 = [v14 CGColor];

    type metadata accessor for CGColor(0);
    *(v13 + 56) = v16;
    *(v13 + 32) = v15;
    v17 = sub_247D1FDB8();

    [v2 setColors_];

    [v2 setHidden_];
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_247C41580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v147 = a6;
  v145 = a5;
  v157 = a2;
  v158 = a4;
  v143 = a3;
  v160 = a1;
  ObjectType = swift_getObjectType();
  v9 = _s5StateVMa();
  MEMORY[0x28223BE20](v9 - 8);
  v151 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631A0);
  MEMORY[0x28223BE20](v11 - 8);
  v150 = &v133 - v12;
  v13 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v13);
  v156 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowResponse(0);
  MEMORY[0x28223BE20](v15 - 8);
  v155 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  MEMORY[0x28223BE20](v148);
  v144 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v142 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v138 = &v133 - v21;
  v140 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v159 = *(v140 - 8);
  v22 = MEMORY[0x28223BE20](v140);
  v24 = (&v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v153 = (&v133 - v25);
  v26 = sub_247D1FB98();
  v136 = *(v26 - 8);
  v137 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v133 - v30;

  v32 = &v6[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_delegate];
  *(v32 + 1) = 0;
  v139 = v32;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_minimumRecordedImageShowTime] = 0x3FF0000000000000;
  *&v6[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_performanceMetrics] = MEMORY[0x277D84F90];
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v141 = v24;
  v146 = v13;
  v33 = qword_27EE72D00;
  v34 = *(qword_27EE72D00 + 16);
  swift_retain_n();
  [v34 lock];
  sub_247CAD9C4(v33, &_s19AnalyticsManagerKeyON, v191);
  v152 = ObjectType;
  v35 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics;
  [v34 unlock];
  sub_247C3D044(v191, &v7[v35]);

  v36 = v33[2];
  [v36 lock];
  sub_247CAEF98(v33, &_s26ImageUploadDataProviderKeyON, v192);
  v154 = 0;
  v37 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__imageUploadDataProvider;
  [v36 unlock];
  sub_247C3D044(v192, &v7[v37]);
  v149 = v33;

  sub_247D1F478();
  *&v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_candidateRecordedImage] = 0;
  sub_247D1EF38();
  v38 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureInitiatedTimeStamp;
  v39 = sub_247D1EF48();
  v40 = *(*(v39 - 8) + 56);
  v40(&v7[v38], 1, 1, v39);
  v40(&v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_authenticationDurationTimestamp], 1, 1, v39);
  v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_hasRecordedPeerDeviceMotionError] = 0;
  *&v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder] = 0;
  *&v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___gradientLayer] = 0;
  v41 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_tiltRecognizerDebugView;
  sub_247C5F214(v171);
  v195[4] = v171[4];
  v195[5] = v171[5];
  v196[0] = v172[0];
  *(v196 + 9) = *(v172 + 9);
  v195[0] = v171[0];
  v195[1] = v171[1];
  v195[2] = v171[2];
  v195[3] = v171[3];
  v42 = objc_allocWithZone(type metadata accessor for TiltRecognizerDebugView());
  *&v7[v41] = sub_247C8A4F0(v195);
  v43 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_contourDebugView;
  v44 = type metadata accessor for OcclusionDebugView();
  memset(v193, 0, sizeof(v193));
  v194 = 0;
  v45 = objc_allocWithZone(v44);
  *&v7[v43] = sub_247C83204(v193);
  v46 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_metadataDebugView;
  v47 = type metadata accessor for MetadataDebugView.Configuration(0);
  (*(*(v47 - 8) + 56))(v31, 1, 1, v47);
  v48 = objc_allocWithZone(type metadata accessor for MetadataDebugView(0));
  *&v7[v46] = sub_247C8B310(v31);
  v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_didConfigureCaptureSession] = 0;
  v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus] = 0;
  v49 = &v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorUIKitFrame];
  *v49 = 0u;
  v49[1] = 0u;
  v50 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_objectRecognitionMaskLayer;
  *&v7[v50] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v51 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_rectangleRecognitionMaskLayer;
  *&v7[v51] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v52 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorFrameLayer;
  *&v7[v52] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v53 = &v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements];
  sub_247C5F214(&v173);
  *(v170 + 9) = *(v179 + 9);
  v169 = v178;
  v170[0] = v179[0];
  v167 = v176;
  v168 = v177;
  v165 = v174;
  v166 = v175;
  v164 = v173;
  v180 = v173;
  v181 = v174;
  v182 = v175;
  v183 = v176;
  v186 = v179[0];
  v187 = v170[1];
  v184 = v177;
  v185 = v178;
  v189 = 0u;
  v190 = 0u;
  v188 = 0u;
  v191[2] = v175;
  v191[3] = v176;
  v191[0] = v173;
  v191[1] = v174;
  v191[7] = v170[1];
  v191[6] = v179[0];
  v191[5] = v178;
  v191[4] = v177;
  memset(&v191[8], 0, 48);
  sub_247C5F238(&v180, v162);
  sub_247C5F294(v191);
  v54 = v189;
  v53[8] = v188;
  v53[9] = v54;
  v53[10] = v190;
  v55 = v185;
  v53[4] = v184;
  v53[5] = v55;
  v56 = v187;
  v53[6] = v186;
  v53[7] = v56;
  v57 = v181;
  *v53 = v180;
  v53[1] = v57;
  v58 = v183;
  v53[2] = v182;
  v53[3] = v58;
  v59 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_timeoutController;
  type metadata accessor for CaptureTimeoutController();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 32) = 0;
  swift_unknownObjectWeakInit();
  *&v7[v59] = v60;
  v61 = v158;

  sub_247D1FBA8();
  v62 = sub_247C88264(v28);
  v134 = v63;
  v135 = v62;
  v64 = v137;
  v65 = *(v136 + 8);
  v65(v28, v137);

  sub_247D1FBA8();
  v66 = sub_247C88264(v28);
  v136 = v67;
  v65(v28, v64);
  v68 = v146;
  v69 = v138;
  sub_247C2BD10(v61 + *(v146 + 44), v138, &qword_27EE62DE0);
  v71 = v159 + 48;
  v70 = *(v159 + 48);
  v72 = v140;
  if (v70(v69, 1, v140) == 1)
  {
    v73 = sub_247CD8184(MEMORY[0x277D84F90]);
    v74 = v153;
    *v153 = v73;
    sub_247D1F188();
    if (v70(v69, 1, v72) != 1)
    {
      sub_247C27100(v69, &qword_27EE62DE0);
    }
  }

  else
  {
    v74 = v153;
    sub_247C5F1AC(v69, v153, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  v75 = *v74;
  v76 = *(*v74 + 16);
  v77 = 0.5;
  v159 = v71;
  v137 = v70;
  if (v76)
  {
    v78 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D2E9D0);
    if (v79)
    {
      v80 = (*(v75 + 56) + 16 * v78);
      v82 = *v80;
      v81 = v80[1];
      v162[0] = 0;

      v83 = v154;
      v84 = sub_247C58340(v82, v81);
      v154 = v83;
      if (v84)
      {
        v77 = *v162;
      }

      v74 = v153;
    }
  }

  sub_247C5E468(v74, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  type metadata accessor for AperturedCameraSessionOverlayView.Configuration();
  v85 = swift_allocObject();
  sub_247D1F0F8();
  v86 = v134;
  *(v85 + 2) = v135;
  *(v85 + 3) = v86;
  v87 = v136;
  *(v85 + 4) = v66;
  *(v85 + 5) = v87;
  v85[6] = v77;
  v88 = v160;
  sub_247C58164(0xD000000000000021, 0x8000000247D2E9F0);
  v90 = v89;
  sub_247C58164(0xD00000000000001ALL, 0x8000000247D2EA20);
  v92 = v91;
  sub_247C58164(0xD000000000000010, 0x8000000247D2EA40);
  v162[0] = v90;
  v162[1] = v92;
  v162[2] = v93;
  v163 = xmmword_247D23FF0;
  v94 = objc_allocWithZone(type metadata accessor for AperturedCameraSessionOverlayView());

  *&v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView] = sub_247CC7BE8(v95, v162);
  v96 = type metadata accessor for AVCameraSessionProvider();
  v97 = [objc_allocWithZone(v96) init];
  v98 = &v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider];
  v98[3] = v96;
  v98[4] = &off_281B55EC0;
  *v98 = v97;
  sub_247C57E10(v88, &v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState], _s5StateVMa);
  *(v139 + 1) = v143;
  swift_unknownObjectWeakAssign();
  v99 = &v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_sessionId];
  v100 = v147;
  *v99 = v145;
  v99[1] = v100;
  sub_247C57E10(v61, &v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep], type metadata accessor for FlowResponse.Step.CosmeticCapture);
  sub_247C57E10(v88, v155, type metadata accessor for FlowResponse);
  v101 = sub_247C581F0(0x4D73646E65707061, 0xEF61746164617465, 1);
  sub_247C57E10(v61, v156, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v102 = type metadata accessor for DeviceAttitude();
  v103 = v150;
  (*(*(v102 - 8) + 56))(v150, 1, 1, v102);
  v104 = v142;
  sub_247C2BD10(v61 + *(v68 + 40), v142, &qword_27EE62DE0);
  v105 = v137;
  if (v137(v104, 1, v72) == 1)
  {
    v106 = sub_247CD8184(MEMORY[0x277D84F90]);
    v107 = v141;
    *v141 = v106;
    sub_247D1F188();
    v108 = &off_278EDD000;
    if (v105(v104, 1, v72) != 1)
    {
      sub_247C27100(v104, &qword_27EE62DE0);
    }
  }

  else
  {
    v107 = v141;
    sub_247C5F1AC(v104, v141, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v108 = &off_278EDD000;
  }

  v109 = sub_247C57F80(0xD00000000000001CLL, 0x8000000247D2E730, 0);
  sub_247C5E468(v107, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  if (v109)
  {
    v110 = 0;
  }

  else
  {
    v110 = 2;
  }

  v111 = v144;
  sub_247C5F1AC(v155, v144, type metadata accessor for FlowResponse);
  v112 = v148;
  *(v111 + *(v148 + 20)) = v101 & 1;
  *(v111 + v112[6]) = 0;
  sub_247C5F1AC(v156, v111 + v112[7], type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v113 = (v111 + v112[8]);
  *v113 = 0u;
  v113[1] = 0u;
  v114 = (v111 + v112[9]);
  *v114 = 0u;
  v114[1] = 0u;
  *(v111 + v112[10]) = MEMORY[0x277D84F90];
  *(v111 + v112[11]) = 1;
  sub_247C5FB38(v103, v111 + v112[12]);
  *(v111 + v112[13]) = v110;
  *(v111 + v112[14]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63260);
  v115 = swift_allocObject();
  *(v115 + ((*(*v115 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_247C5F1AC(v111, v115 + *(*v115 + *MEMORY[0x277D841D0] + 16), type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
  *&v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties] = v115;
  v116 = v149;
  v117 = v149[2];
  [v117 lock];
  v118 = v154;
  v119 = sub_247CADFD0(v116, &_s26DeviceBackAuthenticatorKeyON);
  v120 = v158;
  if (v118)
  {

    result = [v117 v108[291]];
    __break(1u);
  }

  else
  {
    v121 = v119;
    [v117 v108[291]];

    v122 = v160;
    v123 = v151;
    sub_247C57E10(v160, v151, _s5StateVMa);
    v124 = objc_allocWithZone(MEMORY[0x277CBF740]);

    v125 = [v124 init];
    type metadata accessor for RealTimeImageProcessor();
    swift_allocObject();
    v126 = sub_247CEEBD4(v123, v121, v125);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63268);
    v127 = swift_allocObject();
    *(v127 + 24) = 0;
    *(v127 + 16) = v126;
    *&v7[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor] = v127;
    v161.receiver = v7;
    v161.super_class = v152;
    v128 = objc_msgSendSuper2(&v161, sel_initWithNibName_bundle_, 0, 0);
    *(*&v128[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_timeoutController] + 32) = &off_2859D8058;
    v129 = swift_unknownObjectWeakAssign();
    v130 = *&v128[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor];
    MEMORY[0x28223BE20](v129);
    *(&v133 - 2) = v128;
    v131 = v128;

    os_unfair_lock_lock((v130 + 24));
    sub_247C5FBA8((v130 + 16));
    os_unfair_lock_unlock((v130 + 24));

    swift_unknownObjectRelease();
    sub_247C5E468(v122, _s5StateVMa);

    sub_247C5E468(v120, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    return v131;
  }

  return result;
}

void sub_247C427FC()
{
  v1 = v0;
  v115 = _s5StateVMa();
  MEMORY[0x28223BE20](v115);
  v3 = v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setView_];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [objc_opt_self() blackColor];
  [v6 setBackgroundColor_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v114 = v3;
  v10 = sub_247C41308();
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 addSubview_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
  v14 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addSubview_];

  v113[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_247D24000;
  v16 = [*&v1[v13] topAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v20;
  v21 = [*&v1[v13] leadingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v15 + 40) = v25;
  v26 = [*&v1[v13] bottomAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v15 + 48) = v30;
  v31 = [*&v1[v13] trailingAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = v32;
  v34 = [v32 trailingAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v15 + 56) = v35;
  v36 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder;
  v37 = [*&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder] widthAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v39 = v38;
  v116 = objc_opt_self();
  v40 = [v39 widthAnchor];

  v41 = [v37 &selRef:v40 initWithSuiteName:? + 5];
  *(v15 + 64) = v41;
  v42 = [*&v1[v36] heightAnchor];
  v43 = [*&v1[v36] widthAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 multiplier:1.33333333];

  *(v15 + 72) = v44;
  v45 = [*&v1[v36] centerYAnchor];
  v46 = [*(*&v1[v13] + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView) centerYAnchor];
  v47 = [v45 &selRef:v46 initWithSuiteName:? + 5];

  *(v15 + 80) = v47;
  v48 = [*&v1[v36] centerXAnchor];
  v113[0] = v13;
  v49 = [*(*&v1[v13] + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView) centerXAnchor];
  v50 = [v48 &selRef:v49 initWithSuiteName:? + 5];

  *(v15 + 88) = v50;
  v113[1] = sub_247C3194C(0, &qword_27EE63310);
  v51 = sub_247D1FDB8();

  [v116 activateConstraints_];

  v52 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  v53 = v114;
  sub_247C57E10(&v1[v52], v114, _s5StateVMa);
  v54 = v115;
  sub_247C2BD10(v53 + *(v115 + 48), v117, &qword_27EE62FB0);
  sub_247C3D044(v117, v118);
  v55 = *__swift_project_boxed_opaque_existential_1(v118, v119);
  LOBYTE(v51) = sub_247C7A700();

  sub_247C5E468(v53, _s5StateVMa);
  __swift_destroy_boxed_opaque_existential_1(v118);
  if (v51)
  {
    v56 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_tiltRecognizerDebugView];
    v57 = *&v1[v36];
    [v56 setTranslatesAutoresizingMaskIntoConstraints_];
    [v57 addSubview_];

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_247D24010;
    v59 = [v56 leadingAnchor];
    v60 = [*&v1[v36] leadingAnchor];
    v61 = [v59 &selRef:v60 initWithSuiteName:? + 5];

    *(v58 + 32) = v61;
    v62 = [v56 trailingAnchor];
    v63 = [*&v1[v36] trailingAnchor];
    v64 = [v62 &selRef:v63 initWithSuiteName:? + 5];

    *(v58 + 40) = v64;
    v65 = [v56 topAnchor];
    v66 = [*&v1[v36] topAnchor];
    v67 = [v65 &selRef:v66 initWithSuiteName:? + 5];

    *(v58 + 48) = v67;
    v68 = [v56 bottomAnchor];
    v69 = [*&v1[v36] bottomAnchor];
    v53 = v114;
    v70 = [v68 &selRef:v69 initWithSuiteName:? + 5];

    *(v58 + 56) = v70;
    v54 = v115;
    v71 = sub_247D1FDB8();

    [v116 activateConstraints_];
  }

  sub_247C57E10(&v1[v52], v53, _s5StateVMa);
  sub_247C2BD10(v53 + *(v54 + 48), v117, &qword_27EE62FB0);
  sub_247C3D044(v117, v118);
  v72 = *__swift_project_boxed_opaque_existential_1(v118, v119);
  v73 = sub_247C7A7A0();

  sub_247C5E468(v53, _s5StateVMa);
  __swift_destroy_boxed_opaque_existential_1(v118);
  if (v73)
  {
    v74 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_contourDebugView];
    v75 = *&v1[v36];
    [v74 setTranslatesAutoresizingMaskIntoConstraints_];
    [v75 addSubview_];

    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_247D24010;
    v77 = [v74 leadingAnchor];
    v78 = [*&v1[v36] leadingAnchor];
    v79 = [v77 &selRef:v78 initWithSuiteName:? + 5];

    *(v76 + 32) = v79;
    v80 = [v74 trailingAnchor];
    v81 = [*&v1[v36] trailingAnchor];
    v82 = [v80 &selRef:v81 initWithSuiteName:? + 5];

    *(v76 + 40) = v82;
    v83 = [v74 topAnchor];
    v53 = v114;
    v84 = [*&v1[v36] topAnchor];
    v85 = [v83 &selRef:v84 initWithSuiteName:? + 5];

    *(v76 + 48) = v85;
    v86 = [v74 bottomAnchor];
    v87 = [*&v1[v36] bottomAnchor];
    v88 = [v86 &selRef:v87 initWithSuiteName:? + 5];

    *(v76 + 56) = v88;
    v54 = v115;
    v89 = sub_247D1FDB8();

    [v116 activateConstraints_];
  }

  sub_247C57E10(&v1[v52], v53, _s5StateVMa);
  sub_247C2BD10(v53 + *(v54 + 48), v117, &qword_27EE62FB0);
  sub_247C3D044(v117, v118);
  v90 = *__swift_project_boxed_opaque_existential_1(v118, v119);
  v91 = sub_247C7A840();

  sub_247C5E468(v53, _s5StateVMa);
  __swift_destroy_boxed_opaque_existential_1(v118);
  if (v91)
  {
    v92 = v113[0];
    v93 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_metadataDebugView];
    v94 = *&v1[v113[0]];
    [v93 setTranslatesAutoresizingMaskIntoConstraints_];
    [v94 addSubview_];

    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_247D24010;
    v96 = [v93 leadingAnchor];
    v97 = [*&v1[v92] safeAreaLayoutGuide];
    v98 = [v97 leadingAnchor];

    v99 = [v96 &selRef:v98 initWithSuiteName:? + 5];
    *(v95 + 32) = v99;
    v100 = [v93 trailingAnchor];
    v101 = [*&v1[v92] safeAreaLayoutGuide];
    v102 = [v101 trailingAnchor];

    v103 = [v100 &selRef:v102 initWithSuiteName:? + 5];
    *(v95 + 40) = v103;
    v104 = [v93 topAnchor];
    v105 = [*&v1[v92] safeAreaLayoutGuide];
    v106 = [v105 topAnchor];

    v107 = [v104 &selRef:v106 initWithSuiteName:? + 5];
    *(v95 + 48) = v107;
    v108 = [v93 bottomAnchor];
    v109 = [*&v1[v92] safeAreaLayoutGuide];
    v110 = [v109 bottomAnchor];

    v111 = [v108 &selRef:v110 initWithSuiteName:? + 5];
    *(v95 + 56) = v111;
    v112 = sub_247D1FDB8();

    [v116 activateConstraints_];
  }
}

uint64_t sub_247C436C8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_247C437E8();
  sub_247C43B9C();
  v5 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep;
  swift_beginAccess();
  sub_247C57E10(&v0[v5], v4, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v6 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor];
  v9 = v4;
  os_unfair_lock_lock(v6 + 6);
  sub_247C6139C();
  os_unfair_lock_unlock(v6 + 6);
  return sub_247C5E468(v4, type metadata accessor for FlowResponse.Step.CosmeticCapture);
}

id sub_247C437E8()
{
  v1 = type metadata accessor for FlowResponse(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-v5];
  v7 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v13 = [result layer];

    v14 = sub_247C41388();
    [v13 insertSublayer:v14 atIndex:0];

    sub_247C444F8();
    v15 = &v0[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep];
    swift_beginAccess();
    v16 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
    sub_247C2BD10(&v15[*(v16 + 44)], v6, &qword_27EE62DE0);
    v17 = *(v8 + 48);
    if (v17(v6, 1, v7) == 1)
    {
      *v10 = sub_247CD8184(MEMORY[0x277D84F90]);
      sub_247D1F188();
      if (v17(v6, 1, v7) != 1)
      {
        sub_247C27100(v6, &qword_27EE62DE0);
      }
    }

    else
    {
      sub_247C5F1AC(v6, v10, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    }

    swift_endAccess();
    v18 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    sub_247C57E10(&v0[v18], v3, type metadata accessor for FlowResponse);
    v19 = *(v3 + 6);
    if (*(v19 + 16))
    {
      v20 = sub_247CCFDA8(0xD000000000000016, 0x8000000247D2E9B0);
      if (v21)
      {
        v22 = (*(v19 + 56) + 16 * v20);
        v24 = *v22;
        v23 = v22[1];
        v27 = 0.0;

        if (sub_247C58340(v24, v23))
        {
          v25 = v27;

LABEL_12:
          sub_247C5E468(v3, type metadata accessor for FlowResponse);
          sub_247CDCAE8(v10, v25);
          return sub_247C5E468(v10, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
        }
      }
    }

    v25 = 45.0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_247C43B9C()
{
  v1 = v0;
  v2 = sub_247D1FB98();
  v62 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v61 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s5StateVMa();
  MEMORY[0x28223BE20](v4);
  v60 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowResponse.Step.Action(0);
  v63 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v55 = &v49 - v13;
  v56 = v14;
  MEMORY[0x28223BE20](v12);
  v58 = &v49 - v15;
  v16 = [v1 navigationItem];
  v17 = [v16 standardAppearance];

  if (!v17)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  }

  [v17 _setOverrideUserInterfaceStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247D23880;
  v19 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 whiteColor];
  *(inited + 64) = sub_247C3194C(0, &qword_27EE632F8);
  *(inited + 40) = v22;
  sub_247CD85F4(inited);
  swift_setDeallocating();
  sub_247C27100(inited + 32, &unk_27EE632E8);
  type metadata accessor for Key(0);
  sub_247C61354(&qword_27EE629D0, type metadata accessor for Key);
  v23 = sub_247D1FAF8();

  [v17 setTitleTextAttributes_];

  v24 = [v1 navigationItem];
  v59 = v17;
  [v24 setStandardAppearance_];

  v25 = [v1 navigationController];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 navigationBar];

    v28 = [v20 whiteColor];
    [v27 setTintColor_];
  }

  v29 = &v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState];
  swift_beginAccess();
  v30 = &v29[*(v4 + 40)];
  v31 = *&v30[*(type metadata accessor for FlowResponse.Step(0) + 20)];
  swift_beginAccess();
  v32 = *(v31 + 32);
  v33 = *(v32 + 16);
  if (v33)
  {
    v52 = v29;
    v53 = v2;
    v54 = v1;
    sub_247D1FEA8();
    v34 = *(v63 + 80);
    v50 = ~v34;
    v51 = v34;
    v35 = v32 + ((v34 + 32) & ~v34);

    v36 = 0;
    while (v36 < *(v32 + 16))
    {
      sub_247C57E10(v35 + *(v63 + 72) * v36, v11, type metadata accessor for FlowResponse.Step.Action);
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v37 = *(v11 + 4);
      if (v11[40] == 1)
      {

        if (v37 >= 2)
        {
LABEL_14:

          v38 = v55;
          sub_247C5F1AC(v11, v55, type metadata accessor for FlowResponse.Step.Action);
          v39 = v58;
          sub_247C5F1AC(v38, v58, type metadata accessor for FlowResponse.Step.Action);
          v1 = v54;
          v40 = [v54 navigationItem];
          [v40 setHidesBackButton_];

          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v42 = v57;
          sub_247C57E10(v39, v57, type metadata accessor for FlowResponse.Step.Action);
          v43 = (v51 + 24) & v50;
          v44 = swift_allocObject();
          *(v44 + 16) = v41;
          sub_247C5F1AC(v42, v44 + v43, type metadata accessor for FlowResponse.Step.Action);

          sub_247CC5F14(1, sub_247C614D0, v44);

          sub_247C5E468(v39, type metadata accessor for FlowResponse.Step.Action);

LABEL_16:
          v2 = v53;
          v29 = v52;
          goto LABEL_17;
        }
      }

      else
      {

        if (v37 == 2)
        {
          goto LABEL_14;
        }
      }

      ++v36;
      sub_247C5E468(v11, type metadata accessor for FlowResponse.Step.Action);
      if (v33 == v36)
      {

        v1 = v54;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v45 = v29;
    v46 = v60;
    sub_247C57E10(v45, v60, _s5StateVMa);
    swift_beginAccess();

    v47 = v61;
    sub_247D1FBA8();
    sub_247C88264(v47);
    (*(v62 + 8))(v47, v2);
    sub_247C5E468(v46, _s5StateVMa);
    v48 = sub_247D1FBB8();

    [v1 setTitle_];
  }
}

void sub_247C4442C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_247C444F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v46 - v3;
  v50 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v56 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_247D1FB98();
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5StateVMa();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  v51 = _s5StateVMa;
  v46 = v11;
  sub_247C57E10(&v1[v11], v10, _s5StateVMa);
  v12 = &v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep];
  swift_beginAccess();

  sub_247D1FBA8();
  sub_247C88264(v7);
  v48 = *(v5 + 8);
  v49 = v5 + 8;
  v13 = v58;
  v48(v7, v58);
  v47 = _s5StateVMa;
  sub_247C5E468(v10, _s5StateVMa);
  v14 = sub_247D1FBB8();

  [v1 setTitle_];

  v15 = v1;
  v16 = v51;
  sub_247C57E10(&v1[v11], v10, v51);

  sub_247D1FBA8();
  v17 = sub_247C88264(v7);
  v54 = v18;
  v55 = v17;
  v19 = v48;
  v48(v7, v13);
  v20 = v47;
  sub_247C5E468(v10, v47);
  v57 = v15;
  v21 = &v15[v46];
  v22 = v50;
  sub_247C57E10(v21, v10, v16);

  v23 = v52;
  sub_247D1FBA8();
  v24 = sub_247C88264(v7);
  v51 = v25;
  v19(v7, v58);
  v26 = v10;
  v27 = v53;
  sub_247C5E468(v26, v20);
  swift_beginAccess();
  v28 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(&v12[*(v28 + 44)], v27, &qword_27EE62DE0);
  v29 = *(v23 + 48);
  if (v29(v27, 1, v22) == 1)
  {
    v30 = sub_247CD8184(MEMORY[0x277D84F90]);
    v31 = v24;
    v32 = v56;
    *v56 = v30;
    sub_247D1F188();
    v33 = v29(v27, 1, v22);
    v34 = v32;
    v24 = v31;
    if (v33 != 1)
    {
      sub_247C27100(v27, &qword_27EE62DE0);
    }
  }

  else
  {
    v34 = v56;
    sub_247C5F1AC(v27, v56, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  swift_endAccess();
  v35 = *v34;
  v36 = 0.5;
  if (*(*v34 + 16))
  {
    v37 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D2E9D0);
    if (v38)
    {
      v39 = (*(v35 + 56) + 16 * v37);
      v41 = *v39;
      v40 = v39[1];
      v59 = 0.0;

      if (sub_247C58340(v41, v40))
      {
        v36 = v59;
      }
    }
  }

  sub_247C5E468(v34, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  type metadata accessor for AperturedCameraSessionOverlayView.Configuration();
  v42 = swift_allocObject();
  sub_247D1F0F8();
  v43 = v54;
  *(v42 + 2) = v55;
  *(v42 + 3) = v43;
  v44 = v51;
  *(v42 + 4) = v24;
  *(v42 + 5) = v44;
  v42[6] = v36;
  v45 = *&v57[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView];
  sub_247CC6828(v42);
}

uint64_t sub_247C44B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_247D1FEA8();
  v4[3] = sub_247D1FE98();
  v6 = sub_247D1FE38();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_247C44C30, v6, v5);
}

uint64_t sub_247C44C30()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_didConfigureCaptureSession;
  v0[6] = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_didConfigureCaptureSession;
  if (*(v1 + v2))
  {

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24));
    sub_247CE0B54();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_247C44D2C;

    return sub_247C44ED4();
  }
}

uint64_t sub_247C44D2C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_247C44E4C, v3, v2);
}

uint64_t sub_247C44E4C()
{
  v1 = v0[6];
  v2 = v0[2];

  *(v2 + v1) = 1;
  v3 = sub_247C41388();
  [v3 setHidden_];

  v4 = v0[1];

  return v4();
}

uint64_t sub_247C44ED4()
{
  v1[21] = v0;
  v2 = sub_247D1FB98();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  _s5StateVMa();
  v1[25] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632C0);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  sub_247D1FEA8();
  v1[29] = sub_247D1FE98();
  v5 = sub_247D1FE38();
  v1[30] = v5;
  v1[31] = v4;

  return MEMORY[0x2822009F8](sub_247C4505C, v5, v4);
}

uint64_t sub_247C4505C()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277CE5EA8];
  v3 = [v1 authorizationStatusForMediaType_];
  if ((v3 - 1) < 2)
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[21];

    sub_247C4C154();
    v9 = sub_247C41308();
    v10 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    sub_247C57E10(v8 + v10, v4, _s5StateVMa);
    sub_247D1FB88();
    sub_247C88264(v5);
    (*(v7 + 8))(v5, v6);
    sub_247C5E468(v4, _s5StateVMa);
    v11 = sub_247D1FBB8();

    [v9 setAccessibilityHint_];

    goto LABEL_10;
  }

  if (v3)
  {
    if (v3 == 3)
    {

      sub_247C4BE08();
    }

    else
    {
    }

LABEL_10:

    v16 = v0[1];

    return v16();
  }

  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_247C453B4;
  swift_continuation_init();
  v0[17] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_247D1FE48();
  (*(v13 + 32))(boxed_opaque_existential_0, v12, v14);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_247C4C0F8;
  v0[13] = &block_descriptor_115;
  [v1 requestAccessForMediaType:v2 completionHandler:v0 + 10];
  (*(v13 + 8))(boxed_opaque_existential_0, v14);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_247C453B4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_247C454BC, v2, v1);
}

uint64_t sub_247C454BC()
{

  if (*(v0 + 256) == 1)
  {
    sub_247C4BE08();
  }

  v1 = *(v0 + 8);

  return v1();
}

id sub_247C4589C(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1 & 1);
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider], *&v2[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24]);
  sub_247CE0B74();
  result = *(*&v2[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_timeoutController] + 16);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t sub_247C45940(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for FlowResponse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-v8];
  v10 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_viewDidAppear_, a1 & 1);
  v14 = &v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep];
  swift_beginAccess();
  v15 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(&v14[*(v15 + 44)], v9, &qword_27EE62DE0);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    *v13 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v16(v9, 1, v10) != 1)
    {
      sub_247C27100(v9, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C5F1AC(v9, v13, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  swift_endAccess();
  v17 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(&v1[v17], v6, type metadata accessor for FlowResponse);
  v18 = *(v6 + 6);
  if (!*(v18 + 16))
  {
    goto LABEL_10;
  }

  v19 = sub_247CCFDA8(0xD000000000000016, 0x8000000247D2E9B0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = (*(v18 + 56) + 16 * v19);
  v23 = *v21;
  v22 = v21[1];
  v27 = 0.0;

  if (!sub_247C58340(v23, v22))
  {

LABEL_10:
    v24 = 45.0;
    goto LABEL_11;
  }

  v24 = v27;

LABEL_11:
  sub_247C5E468(v6, type metadata accessor for FlowResponse);
  sub_247CDCAE8(v13, v24);
  return sub_247C5E468(v13, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
}

void sub_247C45CD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

id sub_247C45DB4(uint64_t a1, char *a2)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [a2 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5 && (v6 = [v5 windowScene], v5, v6))
    {
      v7 = [v6 effectiveGeometry];

      v8 = [v7 interfaceOrientation];
    }

    else
    {
      v8 = 1;
    }

    v9 = *&a2[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties];
    v10 = v9 + *(*v9 + *MEMORY[0x277D841D0] + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    *(v10 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 44)) = v8;
    os_unfair_lock_unlock((v9 + v11));
    sub_247C45F78();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247C45F78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v43 - v2;
  v4 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_247C41308();
  v9 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
  v10 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView);
  v11 = *&v10[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView];
  v12 = *&v10[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView];
  v13 = v10;
  v14 = v11;
  [v12 frame];
  [v14 convertRect:v13 toCoordinateSpace:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v8 convertRect:*(v0 + v9) fromCoordinateSpace:{v16, v18, v20, v22}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = (v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorUIKitFrame);
  *v31 = v24;
  v31[1] = v26;
  v31[2] = v28;
  v31[3] = v30;
  v32 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v33 = *(*v32 + *MEMORY[0x277D841D0] + 16);
  v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v32 + v34));
  v35 = (v32 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 32) + v33);
  *v35 = v24;
  v35[1] = v26;
  v35[2] = v28;
  v35[3] = v30;
  os_unfair_lock_unlock((v32 + v34));
  v44.origin.x = v24;
  v44.origin.y = v26;
  v44.size.width = v28;
  v44.size.height = v30;
  Width = CGRectGetWidth(v44);
  [*(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder) bounds];
  v37 = CGRectGetWidth(v45);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24));
  v38 = v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep;
  swift_beginAccess();
  v39 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(v38 + *(v39 + 44), v3, &qword_27EE62DE0);
  v40 = *(v5 + 48);
  if (v40(v3, 1, v4) == 1)
  {
    *v7 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v40(v3, 1, v4) != 1)
    {
      sub_247C27100(v3, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C5F1AC(v3, v7, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  swift_endAccess();
  v41 = Width / v37;
  sub_247CDFFB4(v7, v41);
  return sub_247C5E468(v7, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
}

uint64_t sub_247C464E8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = _s15DiagnosticStyleOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247C3194C(0, &qword_27EE631D8);
  sub_247C57E10(a1, v10, _s15DiagnosticStyleOMa);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_247C226BC(v10, sub_247C4BE00, v11);
  v13 = [v12 popoverPresentationController];
  if (v13)
  {
    v14 = v13;
    if (a3 != -1)
    {
      if (a3)
      {
        sub_247C57DE0(a2, 1);
        sub_247C57DE0(a2, 1);
        [v14 setSourceItem_];
        swift_unknownObjectRelease();
        sub_247C57DEC(a2, a3);
      }

      else
      {
        [v13 setSourceItem_];
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider], *&v4[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24]);
  sub_247CE0B74();
  [v4 presentViewController:v12 animated:1 completion:0];

  return 1;
}

void sub_247C466BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = _s15DiagnosticStyleO6ResultOMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_247C57E10(a1, v7, _s15DiagnosticStyleO6ResultOMa);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
    if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
    {
      __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider], *&v9[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24]);
      sub_247CE0B54();
    }

    else
    {
      v11 = *&v7[*(v10 + 48)];
      v12 = sub_247D1FEC8();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      sub_247D1FEA8();
      v13 = v9;
      v14 = v11;
      v15 = sub_247D1FE98();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v13;
      v16[5] = v11;
      sub_247CD0B2C(0, 0, v4, &unk_247D242B8, v16);

      sub_247C27100(v7, &qword_27EE62BA0);
    }
  }
}

uint64_t sub_247C4692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  v5[8] = swift_task_alloc();
  v5[9] = sub_247D1FEA8();
  v5[10] = sub_247D1FE98();
  v7 = sub_247D1FE38();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_247C46A04, v7, v6);
}

uint64_t sub_247C46A04()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    *(v0 + 112) = sub_247D1FE98();
    v3 = sub_247D1FE38();
    *(v0 + 120) = v3;
    *(v0 + 128) = v2;

    return MEMORY[0x2822009F8](sub_247C46B00, v3, v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 104) == 0;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_247C46B00()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v3 + v4, v1, _s5StateVMa);
  v5 = _s5StateVMa();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_247C46C28;
  v7 = v0[8];

  return sub_247C9457C(v7, v2);
}

uint64_t sub_247C46C28()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  sub_247C27100(v2, &qword_27EE62BA0);
  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_247C46D7C, v4, v3);
}

uint64_t sub_247C46D7C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_247C46DE8, v1, v2);
}

uint64_t sub_247C46DE8()
{

  **(v0 + 40) = *(v0 + 104) == 0;

  v1 = *(v0 + 8);

  return v1();
}

void sub_247C46E64(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = _s5StateVMa();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowResponse.Step.Action(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_247C57E10(a3, v10, type metadata accessor for FlowResponse.Step.Action);
      v13 = v12;
      if ([a1 sender])
      {
        sub_247D20238();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v16[0] = v17;
      v16[1] = v18;
      if (*(&v18 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE62FD0);
        swift_dynamicCast();
      }

      else
      {
        sub_247C27100(v16, &unk_27EE63300);
      }

      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v14 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
      swift_beginAccess();
      sub_247C57E10(v13 + v14, v7, _s5StateVMa);
      sub_247C58438(v7);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_247C5E468(v7, _s5StateVMa);
      sub_247C5E468(v10, type metadata accessor for FlowResponse.Step.Action);
    }

    else
    {
    }
  }
}

void sub_247C470FC(id a1@<X1>, double *a2@<X0>, void *a3@<X8>)
{
  [a1 setExtent_];
  v5 = [a1 outputImage];
  if (!v5)
  {
    v17 = [objc_opt_self() blackColor];
    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_247D1FDF8();
  *(v7 + 16) = 4;
  *(v7 + 32) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  [v8 render:v6 toBitmap:v7 + 32 rowBytes:4 bounds:*MEMORY[0x277CBF9C8] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];
  v10 = *(v7 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 < 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 != 3)
  {
    LOBYTE(v9) = *(v7 + 32);
    *&v11 = v9;
    v12 = *&v11 / 255.0;
    LOBYTE(v11) = *(v7 + 33);
    *&v13 = v11;
    v14 = *&v13 / 255.0;
    LOBYTE(v13) = *(v7 + 34);
    *&v15 = v13;
    v16 = *&v15 / 255.0;
    LOBYTE(v15) = *(v7 + 35);
    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v12 green:v14 blue:v16 alpha:v15 / 255.0];

LABEL_8:
    *a3 = v17;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_247C472C8(void *a1, int a2)
{
  LODWORD(v154) = a2;
  v156 = a1;
  v153 = sub_247D1EF48();
  v3 = *(v153 - 8);
  v4 = MEMORY[0x28223BE20](v153);
  v148 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v151 = &v140 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v150 = &v140 - v11;
  v12 = _s5StateVMa();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v149 = &v140 - v17;
  MEMORY[0x28223BE20](v16);
  v158 = &v140 - v18;
  v19 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v161 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v157 = (&v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v140 - v27;
  MEMORY[0x28223BE20](v26);
  v155 = &v140 - v29;
  v160 = v2;
  v30 = &v2[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState];
  swift_beginAccess();
  v152 = v12;
  v31 = *(v12 + 40);
  v159 = v30;
  v32 = *(v30 + v31 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  v33 = *(v32 + 40);
  v34 = *(v33 + 16);
  if (!v34)
  {
LABEL_15:
    v38 = sub_247D1F468();
    v39 = sub_247D20038();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_247C1F000, v38, v39, "Capture step requires a hidden action to proceed.", v40, 2u);
      MEMORY[0x24C1B9080](v40, -1, -1);
    }

    return;
  }

  v146 = v10;
  v147 = v3;
  v144 = v25;
  v145 = v15;
  v162 = sub_247D1FEA8();
  v35 = v33 + ((*(v22 + 80) + 32) & ~*(v22 + 80));

  v36 = 0;
  while (1)
  {
    if (v36 >= *(v33 + 16))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_247C57E10(v35 + *(v22 + 72) * v36, v28, type metadata accessor for FlowResponse.Step.HiddenAction);
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v37 = *(v28 + 16);
    if (*(v28 + 24) != 1)
    {

      if (!v37)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if ((v37 - 1) >= 4)
    {
      break;
    }

LABEL_10:
    sub_247C5E468(v28, type metadata accessor for FlowResponse.Step.HiddenAction);
LABEL_11:
    if (v34 == ++v36)
    {

      goto LABEL_15;
    }
  }

  if (v37 == 5)
  {
    sub_247C5E468(v28, type metadata accessor for FlowResponse.Step.HiddenAction);

    goto LABEL_11;
  }

LABEL_19:

  sub_247C5F1AC(v28, v155, type metadata accessor for FlowResponse.Step.HiddenAction);
  v22 = v159;
  v34 = v160;
  v28 = v152;
  if (v160[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus])
  {
    v160[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus] = 0;
    v41 = v34;
    v42 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
    v43 = *&v41[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView];
    v44 = v43[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus];
    v43[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus] = 0;
    if (v44)
    {
      v45 = *&v43[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer];
      v46 = objc_allocWithZone(MEMORY[0x277D75348]);
      v47 = v43;
      v48 = [v46 initWithRed:0.29 green:0.62 blue:0.97 alpha:1.0];
      v49 = [v48 CGColor];

      [v45 setStrokeColor_];
    }

    v50 = *&v160[v42];
    v34 = v160;
    v51 = v50;
    v52 = sub_247CC74F8();
    sub_247CBBBB0(0);
  }

  sub_247C5F214(&v171);
  *(&v200[6] + 9) = *(v177 + 9);
  v200[5] = v176;
  v200[6] = v177[0];
  v200[3] = v174;
  v200[4] = v175;
  v200[1] = v172;
  v200[2] = v173;
  v200[0] = v171;
  v178 = v171;
  v179 = v172;
  v180 = v173;
  v181 = v174;
  v184 = v177[0];
  v185 = v200[7];
  v182 = v175;
  v183 = v176;
  v186 = 0u;
  v187 = 0u;
  v189[1] = v172;
  v189[2] = v173;
  v188 = 0u;
  v189[0] = v171;
  v189[5] = v176;
  v189[6] = v177[0];
  v189[3] = v174;
  v189[4] = v175;
  v189[7] = v200[7];
  memset(&v189[8], 0, 48);
  sub_247C5F238(&v178, v204);
  sub_247C5F294(v189);
  v53 = &v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements];
  v54 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 144];
  v190[8] = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 128];
  v190[9] = v54;
  v190[10] = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 160];
  v55 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 80];
  v190[4] = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 64];
  v190[5] = v55;
  v56 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 112];
  v190[6] = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 96];
  v190[7] = v56;
  v57 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 16];
  v190[0] = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements];
  v190[1] = v57;
  v58 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 48];
  v190[2] = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements + 32];
  v190[3] = v58;
  v59 = v187;
  *(v53 + 8) = v186;
  *(v53 + 9) = v59;
  *(v53 + 10) = v188;
  v60 = v183;
  *(v53 + 4) = v182;
  *(v53 + 5) = v60;
  v61 = v185;
  *(v53 + 6) = v184;
  *(v53 + 7) = v61;
  v62 = v179;
  *v53 = v178;
  *(v53 + 1) = v62;
  v63 = v181;
  *(v53 + 2) = v180;
  *(v53 + 3) = v63;
  sub_247C5F294(v190);
  __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider], *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24]);
  sub_247CDF9D0();
  v64 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties];
  v65 = v64 + *(*v64 + *MEMORY[0x277D841D0] + 16);
  v66 = (*(*v64 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v64 + v66));
  v67 = *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 24);
  v141 = v65;
  v142 = v66;
  *(v65 + v67) = 0;
  v143 = v64;
  os_unfair_lock_unlock((v64 + v66));
  v68 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor];
  os_unfair_lock_lock(v68 + 6);
  sub_247C621A0();
  os_unfair_lock_unlock(v68 + 6);
  swift_beginAccess();
  v69 = *(v28 + 20);

  MEMORY[0x24C1B7C60](v70);
  if (*((*(v22 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v22 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_97:
    sub_247D1FDE8();
  }

  sub_247D1FE08();
  v71 = swift_endAccess();
  if ((v154 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v72 = *(v28 + 24);

  MEMORY[0x24C1B7C60](v73);
  if (*((*(v22 + v72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v22 + v72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    sub_247D1FE08();
    v71 = swift_endAccess();
LABEL_27:
    v74 = *(v22 + *(v28 + 20));
    if (v74 >> 62)
    {
      v71 = sub_247D203B8();
      v28 = v71;
    }

    else
    {
      v28 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v157;
    v75 = MEMORY[0x277D84F90];
    if (!v28)
    {
      break;
    }

    *&v204[0] = MEMORY[0x277D84F90];

    sub_247CE240C(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v76 = 0;
      v75 = *&v204[0];
      do
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x24C1B8190](v76, v74);
        }

        else
        {
          v77 = *(v74 + 8 * v76 + 32);
        }

        sub_247C57E10(v77 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep, v22, type metadata accessor for FlowResponse.Step.CosmeticCapture);

        *&v204[0] = v75;
        v79 = *(v75 + 16);
        v78 = *(v75 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_247CE240C(v78 > 1, v79 + 1, 1);
          v75 = *&v204[0];
        }

        ++v76;
        *(v75 + 16) = v79 + 1;
        sub_247C5F1AC(v22, v75 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + v161[9] * v79, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      }

      while (v28 != v76);

      v34 = v160;
      break;
    }

    __break(1u);
LABEL_100:
    sub_247D1FDE8();
  }

  MEMORY[0x28223BE20](v71);
  *(&v140 - 2) = v75;
  v81 = v142;
  v80 = v143;
  os_unfair_lock_lock((v143 + v142));
  sub_247C5F2E8(v141);
  os_unfair_lock_unlock((v80 + v81));

  v22 = sub_247CD8844(MEMORY[0x277D84F90]);
  v82 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_performanceMetrics;
  swift_beginAccess();
  v152 = v82;
  v83 = *&v34[v82];
  v28 = *(v83 + 16);
  if (v28)
  {

    v84 = 0;
    v85 = 0;
    v34 = (v83 + 101);
    v86 = 0.0;
    while (1)
    {
      if (v85 >= *(v83 + 16))
      {
        goto LABEL_93;
      }

      v91 = *v34;
      v92 = *(v34 - 69);
      if ((v91 & 0x80000000) == 0)
      {
        break;
      }

LABEL_43:
      ++v85;
      v86 = v86 + v92;
      v34 += 336;
      if (v28 == v85)
      {
        v143 = v84;

        v34 = v160;
        v104 = v86 / *(*&v160[v152] + 16);
        goto LABEL_58;
      }
    }

    sub_247C5F340(v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v204[0] = v22;
    v94 = sub_247D15E7C(v91);
    v96 = *(v22 + 16);
    v97 = (v95 & 1) == 0;
    v89 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v89)
    {
      goto LABEL_94;
    }

    v99 = v95;
    if (*(v22 + 24) >= v98)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      v103 = v94;
      sub_247CB137C();
      v94 = v103;
      v22 = *&v204[0];
      if ((v99 & 1) == 0)
      {
LABEL_52:
        *(v22 + 8 * (v94 >> 6) + 64) |= 1 << v94;
        *(*(v22 + 48) + v94) = v91;
        *(*(v22 + 56) + 8 * v94) = 0;
        v101 = *(v22 + 16);
        v89 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v89)
        {
          goto LABEL_96;
        }

        *(v22 + 16) = v102;
      }
    }

    else
    {
      sub_247CD6A20(v98, isUniquelyReferenced_nonNull_native);
      v94 = sub_247D15E7C(v91);
      if ((v99 & 1) != (v100 & 1))
      {
        sub_247D20578();
        __break(1u);
        JUMPOUT(0x247C48838);
      }

LABEL_51:
      v22 = *&v204[0];
      if ((v99 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v87 = *(v22 + 56);
    v88 = *(v87 + 8 * v94);
    v89 = __OFADD__(v88, 1);
    v90 = v88 + 1;
    if (v89)
    {
      goto LABEL_95;
    }

    *(v87 + 8 * v94) = v90;
    v84 = sub_247C2126C;
    goto LABEL_43;
  }

  v143 = 0;
  v104 = NAN;
LABEL_58:
  v105 = 1 << *(v22 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & *(v22 + 64);
  v154 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics;
  v108 = (v105 + 63) >> 6;
  v141 = 0x8000000247D2E890;
  v142 = 0x8000000247D2E870;
  v140 = 0x8000000247D2E8B0;

  v28 = 0;
  while (v107)
  {
LABEL_68:
    v112 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v113 = v112 | (v28 << 6);
    v114 = *(*(v22 + 48) + v113);
    v157 = *(*(v22 + 56) + 8 * v113);
    sub_247C2BD10(&v34[v154], v204, &unk_27EE631F0);
    sub_247C3D044(v204, v163);
    v115 = v163[4];
    v161 = v163[3];
    v156 = __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    v116 = v158;
    sub_247C57E10(v159, v158, _s5StateVMa);
    sub_247C88620(&v191);
    sub_247C5E468(v116, _s5StateVMa);
    v199 = *&v194[23];
    v196[0] = v192[0];
    *(v196 + 3) = *(v192 + 3);
    v169 = v193;
    v170[0] = *v194;
    v110 = 0xE400000000000000;
    v109 = 2036430689;
    *(v170 + 15) = *&v194[15];
    switch(v114)
    {
      case 1:
        v110 = 0xE500000000000000;
        v109 = 0x65736F6C63;
        break;
      case 2:
        v109 = 1952867692;
        break;
      case 3:
        v110 = 0xE500000000000000;
        v109 = 0x7468676972;
        break;
      case 4:
        v110 = 0xEA00000000007466;
        v109 = 0x654C657461746F72;
        break;
      case 5:
        v109 = 0x6952657461746F72;
        v110 = 0xEB00000000746867;
        break;
      case 6:
        v110 = 0xE800000000000000;
        v109 = 0x7466654C746C6974;
        break;
      case 7:
        v110 = 0xE900000000000074;
        v109 = 0x68676952746C6974;
        break;
      case 8:
        v110 = 0xE600000000000000;
        v109 = 0x7055746C6974;
        break;
      case 9:
        v110 = 0xE800000000000000;
        v109 = 0x6E776F44746C6974;
        break;
      case 10:
        v109 = 0x7269766E456D6964;
        v117 = 0x746E656D6E6FLL;
        goto LABEL_81;
      case 11:
        v109 = 0xD000000000000011;
        v110 = v140;
        break;
      case 12:
        v109 = 0xD000000000000013;
        v110 = v141;
        break;
      case 13:
        v109 = 0xD000000000000011;
        v110 = v142;
        break;
      case 14:
        v109 = 0x7669737365637865;
        v117 = 0x6572616C4765;
LABEL_81:
        v110 = v117 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        break;
      default:
        break;
    }

    sub_247C27100(&v199, &unk_27EE63200);
    LOBYTE(v166[0]) = 0;
    LOBYTE(v201) = 0;
    *(v204 + 9) = v196[0];
    HIDWORD(v204[0]) = *(v196 + 3);
    memcpy(&v204[5], v195, 0x130uLL);
    *(&v204[1] + 9) = v169;
    *v204 = v104;
    BYTE8(v204[0]) = 0;
    *&v204[1] = v157;
    BYTE8(v204[1]) = 0;
    *(&v204[2] + 9) = v170[0];
    *(&v204[3] + 1) = *(v170 + 15);
    *&v204[4] = v109;
    *(&v204[4] + 1) = v110;
    LOBYTE(v204[24]) = 1;
    strcpy(&v204[24] + 8, "detectedHint");
    BYTE5(v204[25]) = 0;
    WORD3(v204[25]) = -5120;
    memcpy(v200, v204, 0x198uLL);
    (*(v115 + 8))(v200, v161, v115);
    sub_247C318F8(v204);
    __swift_destroy_boxed_opaque_existential_1(v163);
    v34 = v160;
  }

  while (1)
  {
    v111 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_92;
    }

    if (v111 >= v108)
    {
      break;
    }

    v107 = *(v22 + 64 + 8 * v111);
    ++v28;
    if (v107)
    {
      v28 = v111;
      goto LABEL_68;
    }
  }

  sub_247C2BD10(&v34[v154], v204, &unk_27EE631F0);
  sub_247C3D044(v204, v166);
  v118 = v167;
  v119 = v168;
  v161 = __swift_project_boxed_opaque_existential_1(v166, v167);
  v120 = v149;
  sub_247C57E10(v159, v149, _s5StateVMa);
  sub_247C88620(v196);
  sub_247C5E468(v120, _s5StateVMa);
  v165 = v197;
  memcpy(v164, v198, sizeof(v164));
  v121 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureInitiatedTimeStamp;
  swift_beginAccess();
  v122 = v150;
  sub_247C2BD10(&v34[v121], v150, &unk_27EE631E0);
  v123 = v147;
  v124 = v153;
  v125 = (*(v147 + 48))(v122, 1, v153);
  if (v125 == 1)
  {

    v126 = 0;
  }

  else
  {
    v157 = v119;
    v158 = v118;
    (*(v123 + 32))(v151, v122, v124);
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v127 = v148;
    sub_247D1EF18();
    v128 = v151;
    sub_247D1EE88();
    v126 = v129;
    v123 = v147;
    v130 = *(v147 + 8);
    v131 = v127;
    v124 = v153;
    v130(v131, v153);
    v130(v128, v124);

    v34 = v160;
    v119 = v157;
    v118 = v158;
  }

  v165 = v125 == 1;
  v163[0] = v126;
  LOBYTE(v163[1]) = v125 == 1;
  memcpy(&v163[1] + 1, v164, 0x177uLL);
  LOBYTE(v163[48]) = 1;
  v163[49] = 0xD000000000000019;
  v163[50] = 0x8000000247D2E8D0;
  memcpy(v204, v163, 0x198uLL);
  v119[1](v204, v118, v119);
  sub_247C318F8(v163);
  __swift_destroy_boxed_opaque_existential_1(v166);
  *&v34[v152] = MEMORY[0x277D84F90];

  v132 = v146;
  sub_247D1EF18();
  v133 = *(v123 + 56);
  v133(v132, 0, 1, v124);
  swift_beginAccess();
  sub_247C5E4C8(v132, &v34[v121]);
  swift_endAccess();
  sub_247D1EF18();
  v133(v132, 0, 1, v124);
  v134 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_authenticationDurationTimestamp;
  swift_beginAccess();
  sub_247C5E4C8(v132, &v34[v134]);
  swift_endAccess();
  v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_hasRecordedPeerDeviceMotionError] = 0;
  v135 = *&v34[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView];
  sub_247CC66CC();

  Strong = swift_unknownObjectWeakLoadStrong();
  v137 = v155;
  if (Strong)
  {
    v138 = v144;
    sub_247C57E10(v155, v144, type metadata accessor for FlowResponse.Step.HiddenAction);
    v201 = 0u;
    v202 = 0u;
    v203 = 0;
    v139 = v145;
    sub_247C57E10(v159, v145, _s5StateVMa);
    sub_247C5B128(v139);
    swift_unknownObjectRelease();
    sub_247C5E468(v139, _s5StateVMa);
    sub_247C5E468(v138, type metadata accessor for FlowResponse.Step.HiddenAction);
  }

  sub_247C5E468(v137, type metadata accessor for FlowResponse.Step.HiddenAction);
  sub_247C5F340(v143);
}

void sub_247C48874(char a1, int a2)
{
  v3 = v2;
  v46 = a2;
  v5 = a1 & 1;
  v6 = sub_247D1FB98();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5StateVMa();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v45 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus] != v5)
  {
    v43 = v6;
    v44 = v14;
    v3[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus] = v5;
    v21 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
    v22 = *&v3[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView];
    sub_247CC6CA0(v5);

    v23 = *&v3[v21];
    if (a1)
    {
      v24 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
      swift_beginAccess();
      sub_247C57E10(&v3[v24], v11, _s5StateVMa);
      v25 = v23;
      sub_247D1FB88();
      v26 = sub_247C88264(v8);
      v28 = v27;
      (*(v47 + 8))(v8, v43);
      sub_247C5E468(v11, _s5StateVMa);
      v48[0] = v26;
      v48[1] = v28;
      v48[2] = v26;
      v48[3] = v28;
      v49 = 1;

      v29 = sub_247CC74F8();
      sub_247CBAFA8(v48);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v30 = v23;
      v31 = sub_247CC74F8();
      sub_247CBBBB0(0);

      v32 = v44;
      if (v46)
      {
        v33 = &v3[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep];
        swift_beginAccess();
        v34 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
        sub_247C2BD10(&v33[*(v34 + 40)], v17, &qword_27EE62DE0);
        v35 = *(v45 + 48);
        if (v35(v17, 1, v18) == 1)
        {
          *v20 = sub_247CD8184(MEMORY[0x277D84F90]);
          sub_247D1F188();
          if (v35(v17, 1, v18) != 1)
          {
            sub_247C27100(v17, &qword_27EE62DE0);
          }
        }

        else
        {
          sub_247C5F1AC(v17, v20, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
        }

        swift_endAccess();
        v36 = sub_247C57F80(0xD00000000000001CLL, 0x8000000247D2E730, 0);
        sub_247C5E468(v20, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
        if (v36)
        {
          v37 = sub_247D1FEC8();
          (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
          sub_247D1FEA8();
          v38 = v3;
          v39 = sub_247D1FE98();
          v40 = swift_allocObject();
          v41 = MEMORY[0x277D85700];
          v40[2] = v39;
          v40[3] = v41;
          v40[4] = v38;
          sub_247CD0B2C(0, 0, v32, &unk_247D242E0, v40);

          sub_247C48DEC();
        }
      }
    }
  }
}

uint64_t sub_247C48DEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep;
  swift_beginAccess();
  v10 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(v9 + *(v10 + 40), v4, &qword_27EE62DE0);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    *v8 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v11(v4, 1, v5) != 1)
    {
      sub_247C27100(v4, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C5F1AC(v4, v8, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  swift_endAccess();
  v12 = sub_247C57F80(0xD00000000000001CLL, 0x8000000247D2E730, 0);
  sub_247C5E468(v8, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v13 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v14 = v13 + *(*v13 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  v17 = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  *(v14 + *(v17 + 52)) = v16;
  os_unfair_lock_unlock((v13 + v15));
  os_unfair_lock_lock((v13 + v15));
  *(v14 + *(v17 + 56)) = 0;
  os_unfair_lock_unlock((v13 + v15));
  if (*(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus))
  {
    *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus) = 0;
    v18 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
    v19 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView);
    v20 = v19[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus];
    v19[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus] = 0;
    if (v20)
    {
      v21 = *&v19[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer];
      v22 = objc_allocWithZone(MEMORY[0x277D75348]);
      v23 = v19;
      v24 = [v22 initWithRed:0.29 green:0.62 blue:0.97 alpha:1.0];
      v25 = [v24 CGColor];

      [v21 setStrokeColor_];
    }

    v26 = *(v1 + v18);
    v27 = sub_247CC74F8();
    sub_247CBBBB0(0);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24));
  return sub_247CDF9D0();
}

uint64_t sub_247C491C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v4[9] = sub_247D1FEA8();
  v4[10] = sub_247D1FE98();
  v6 = sub_247D1FE38();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_247C4925C, v6, v5);
}

uint64_t sub_247C4925C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    *(v0 + 112) = sub_247D1FE98();
    v3 = sub_247D1FE38();
    *(v0 + 120) = v3;
    *(v0 + 128) = v2;

    return MEMORY[0x2822009F8](sub_247C49348, v3, v2);
  }

  else
  {

    **(v0 + 56) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_247C49348()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_247C49404;

  return sub_247CD1644(7, v0 + 16);
}

uint64_t sub_247C49404()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_247C495FC;
  }

  else
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_247C49528;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247C49528()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_247C49594, v1, v2);
}

uint64_t sub_247C49594()
{

  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C495FC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_247C49668, v1, v2);
}

uint64_t sub_247C49668()
{

  **(v0 + 56) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C496D4()
{
  v1[336] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v1[337] = swift_task_alloc();
  v1[338] = swift_task_alloc();
  _s5StateVMa();
  v1[339] = swift_task_alloc();
  v1[340] = swift_task_alloc();
  v2 = sub_247D1EF48();
  v1[341] = v2;
  v1[342] = *(v2 - 8);
  v1[343] = swift_task_alloc();
  v1[344] = swift_task_alloc();
  v1[345] = swift_task_alloc();
  v1[346] = sub_247D1FEA8();
  v1[347] = sub_247D1FE98();
  v4 = sub_247D1FE38();
  v1[348] = v4;
  v1[349] = v3;

  return MEMORY[0x2822009F8](sub_247C49864, v4, v3);
}

uint64_t sub_247C49864()
{
  v48 = v0;
  v1 = *(v0 + 2688);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24));
  sub_247CDF6CC();
  v2 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  *(v0 + 2800) = v2;
  v3 = *v2;
  v4 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 2808) = v4;
  v5 = v2 + v4;
  v6 = *(v3 + 48);
  *(v0 + 2864) = v6;
  v7 = (v6 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v7));
  v8 = *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 52);
  *(v0 + 2868) = v8;
  v5[v8] = 1;
  os_unfair_lock_unlock((v2 + v7));
  sub_247D1EF18();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 2816) = Strong;
  if (Strong)
  {
    *(v0 + 2824) = sub_247D1FE98();
    v11 = sub_247D1FE38();
    *(v0 + 2832) = v11;
    *(v0 + 2840) = v10;

    return MEMORY[0x2822009F8](sub_247C49F40, v11, v10);
  }

  else
  {

    v12 = *(v0 + 2800);
    v13 = *(v0 + 2752);
    v14 = *(v0 + 2736);
    v37 = *(v0 + 2728);
    v15 = *(v0 + 2720);
    v40 = *(v0 + 2712);
    v42 = *(v0 + 2868);
    v44 = *(v0 + 2704);
    v16 = *(v0 + 2688);
    v38 = (*(v0 + 2864) + 3) & 0x1FFFFFFFCLL;
    v39 = v12 + *(v0 + 2808);
    v41 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics;
    sub_247C2BD10(v16 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 2496, &unk_27EE631F0);
    sub_247C3D044((v0 + 2496), v0 + 2456);
    v17 = *(v0 + 2480);
    v18 = *(v0 + 2488);
    __swift_project_boxed_opaque_existential_1((v0 + 2456), v17);
    v19 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    sub_247C57E10(v16 + v19, v15, _s5StateVMa);
    sub_247C88620(v0 + 2032);
    sub_247C5E468(v15, _s5StateVMa);
    memcpy(__dst, (v0 + 2041), 0x177uLL);
    sub_247D1EF18();
    sub_247D1EE88();
    v21 = v20;
    v45 = *(v14 + 8);
    v45(v13, v37);
    *(v0 + 832) = v21;
    *(v0 + 840) = 0;
    memcpy((v0 + 841), __dst, 0x177uLL);
    *(v0 + 1216) = 1;
    *(v0 + 1224) = 0xD00000000000001BLL;
    *(v0 + 1232) = 0x8000000247D2E770;
    memcpy((v0 + 16), (v0 + 832), 0x198uLL);
    (*(v18 + 8))(v0 + 16, v17, v18);
    sub_247C318F8(v0 + 832);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2456);
    os_unfair_lock_lock((v12 + v38));
    *(v39 + v42) = 2;
    os_unfair_lock_unlock((v12 + v38));
    sub_247C48874(1, 0);
    sub_247C2BD10(v16 + v41, v0 + 2576, &unk_27EE631F0);
    sub_247C3D044((v0 + 2576), v0 + 2536);
    v22 = *(v0 + 2568);
    v43 = *(v0 + 2560);
    __swift_project_boxed_opaque_existential_1((v0 + 2536), v43);
    sub_247C57E10(v16 + v19, v40, _s5StateVMa);
    sub_247C88620(v0 + 1648);
    sub_247C5E468(v40, _s5StateVMa);
    memcpy(__src, (v0 + 1657), sizeof(__src));
    v23 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_authenticationDurationTimestamp;
    swift_beginAccess();
    sub_247C2BD10(v16 + v23, v44, &unk_27EE631E0);
    v24 = (*(v14 + 48))(v44, 1, v37);
    v25 = 0;
    if (v24 != 1)
    {
      (*(*(v0 + 2736) + 32))(*(v0 + 2744), *(v0 + 2704), *(v0 + 2728));
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v26 = *(v0 + 2752);
      v27 = *(v0 + 2744);
      v28 = *(v0 + 2728);
      sub_247D1EF18();
      sub_247D1EE88();
      v25 = v29;
      v45(v26, v28);
      v45(v27, v28);
    }

    v30 = v24 == 1;
    v31 = *(v0 + 2760);
    v32 = *(v0 + 2736);
    v33 = *(v0 + 2728);
    v34 = *(v0 + 2696);
    __dst[376] = v30;
    *(v0 + 1240) = v25;
    *(v0 + 1248) = v30;
    memcpy((v0 + 1249), __src, 0x177uLL);
    *(v0 + 1624) = 1;
    *(v0 + 1632) = 0xD000000000000016;
    *(v0 + 1640) = 0x8000000247D2E790;
    memcpy((v0 + 424), (v0 + 1240), 0x198uLL);
    (*(v22 + 8))(v0 + 424, v43, v22);
    sub_247C318F8(v0 + 1240);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2536);
    sub_247D1EF18();
    v45(v31, v33);
    (*(v32 + 56))(v34, 0, 1, v33);
    swift_beginAccess();
    sub_247C5E4C8(v34, v16 + v23);
    swift_endAccess();

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_247C49F40()
{
  *(v0 + 2416) = 0u;
  *(v0 + 2432) = 0u;
  *(v0 + 2448) = 0;
  v1 = swift_task_alloc();
  *(v0 + 2848) = v1;
  *v1 = v0;
  v1[1] = sub_247C49FF8;

  return sub_247CD1644(6, v0 + 2416);
}

uint64_t sub_247C49FF8()
{
  v2 = *v1;
  *(*v1 + 2856) = v0;

  v3 = *(v2 + 2840);
  v4 = *(v2 + 2832);
  if (v0)
  {
    v5 = sub_247C4A71C;
  }

  else
  {
    v5 = sub_247C4A114;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247C4A114()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 2792);
  v2 = *(v0 + 2784);

  return MEMORY[0x2822009F8](sub_247C4A188, v2, v1);
}

uint64_t sub_247C4A188()
{
  v37 = v0;

  v1 = *(v0 + 2800);
  v2 = *(v0 + 2752);
  v3 = *(v0 + 2736);
  v26 = *(v0 + 2728);
  v4 = *(v0 + 2720);
  v29 = *(v0 + 2712);
  v31 = *(v0 + 2868);
  v33 = *(v0 + 2704);
  v5 = *(v0 + 2688);
  v27 = (*(v0 + 2864) + 3) & 0x1FFFFFFFCLL;
  v28 = v1 + *(v0 + 2808);
  v30 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics;
  sub_247C2BD10(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 2496, &unk_27EE631F0);
  sub_247C3D044((v0 + 2496), v0 + 2456);
  v6 = *(v0 + 2480);
  v7 = *(v0 + 2488);
  __swift_project_boxed_opaque_existential_1((v0 + 2456), v6);
  v8 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v5 + v8, v4, _s5StateVMa);
  sub_247C88620(v0 + 2032);
  sub_247C5E468(v4, _s5StateVMa);
  memcpy(__dst, (v0 + 2041), 0x177uLL);
  sub_247D1EF18();
  sub_247D1EE88();
  v10 = v9;
  v34 = *(v3 + 8);
  v34(v2, v26);
  *(v0 + 832) = v10;
  *(v0 + 840) = 0;
  memcpy((v0 + 841), __dst, 0x177uLL);
  *(v0 + 1216) = 1;
  *(v0 + 1224) = 0xD00000000000001BLL;
  *(v0 + 1232) = 0x8000000247D2E770;
  memcpy((v0 + 16), (v0 + 832), 0x198uLL);
  (*(v7 + 8))(v0 + 16, v6, v7);
  sub_247C318F8(v0 + 832);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2456);
  os_unfair_lock_lock((v1 + v27));
  *(v28 + v31) = 2;
  os_unfair_lock_unlock((v1 + v27));
  sub_247C48874(1, 0);
  sub_247C2BD10(v5 + v30, v0 + 2576, &unk_27EE631F0);
  sub_247C3D044((v0 + 2576), v0 + 2536);
  v11 = *(v0 + 2568);
  v32 = *(v0 + 2560);
  __swift_project_boxed_opaque_existential_1((v0 + 2536), v32);
  sub_247C57E10(v5 + v8, v29, _s5StateVMa);
  sub_247C88620(v0 + 1648);
  sub_247C5E468(v29, _s5StateVMa);
  memcpy(__src, (v0 + 1657), sizeof(__src));
  v12 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_authenticationDurationTimestamp;
  swift_beginAccess();
  sub_247C2BD10(v5 + v12, v33, &unk_27EE631E0);
  v13 = (*(v3 + 48))(v33, 1, v26);
  v14 = 0;
  if (v13 != 1)
  {
    (*(*(v0 + 2736) + 32))(*(v0 + 2744), *(v0 + 2704), *(v0 + 2728));
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v15 = *(v0 + 2752);
    v16 = *(v0 + 2744);
    v17 = *(v0 + 2728);
    sub_247D1EF18();
    sub_247D1EE88();
    v14 = v18;
    v34(v15, v17);
    v34(v16, v17);
  }

  v19 = v13 == 1;
  v20 = *(v0 + 2760);
  v21 = *(v0 + 2736);
  v22 = *(v0 + 2728);
  v23 = *(v0 + 2696);
  __dst[376] = v19;
  *(v0 + 1240) = v14;
  *(v0 + 1248) = v19;
  memcpy((v0 + 1249), __src, 0x177uLL);
  *(v0 + 1624) = 1;
  *(v0 + 1632) = 0xD000000000000016;
  *(v0 + 1640) = 0x8000000247D2E790;
  memcpy((v0 + 424), (v0 + 1240), 0x198uLL);
  (*(v11 + 8))(v0 + 424, v32, v11);
  sub_247C318F8(v0 + 1240);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2536);
  sub_247D1EF18();
  v34(v20, v22);
  (*(v21 + 56))(v23, 0, 1, v22);
  swift_beginAccess();
  sub_247C5E4C8(v23, v5 + v12);
  swift_endAccess();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_247C4A71C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 2792);
  v2 = *(v0 + 2784);

  return MEMORY[0x2822009F8](sub_247C4A790, v2, v1);
}

uint64_t sub_247C4A790()
{
  v1 = v0[357];
  v2 = v0[345];
  v3 = v0[342];
  v4 = v0[341];

  (*(v3 + 8))(v2, v4);
  v5 = v1;
  v6 = sub_247D1F468();
  v7 = sub_247D20038();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[357];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_247C1F000, v6, v7, "Failed capture transition %@", v9, 0xCu);
    sub_247C27100(v10, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v10, -1, -1);
    MEMORY[0x24C1B9080](v9, -1, -1);
  }

  v13 = v0[357];

  sub_247C48DEC();

  v14 = v0[1];

  return v14();
}

void sub_247C4A974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_247D1EF48();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v56 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v58 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v54 - v16);
  v18 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  v59 = a2;
  sub_247C5F9F0(a2, v3 + v18, _s5StateVMa);
  swift_endAccess();
  v19 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep;
  swift_beginAccess();
  sub_247C5F9F0(a1, v3 + v19, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  swift_endAccess();
  v20 = *(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v64 = a1;
  v21 = v20 + *(*v20 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v20 + v22));
  sub_247C5FA58(v21);
  os_unfair_lock_unlock((v20 + v22));
  v55 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v23 = *(v55 + 40);
  v63 = a1;
  v24 = a1 + v23;
  v25 = v13;
  v26 = v56;
  sub_247C2BD10(v24, v12, &qword_27EE62DE0);
  v27 = *(v26 + 6);
  v28 = v27(v12, 1, v25);
  v56 = v27;
  if (v28 == 1)
  {
    *v17 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v27(v12, 1, v25) != 1)
    {
      sub_247C27100(v12, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C5F1AC(v12, v17, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  v29 = sub_247C57F80(0xD00000000000001CLL, 0x8000000247D2E730, 0);
  sub_247C5E468(v17, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  os_unfair_lock_lock((v20 + v22));
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = 2;
  }

  *(v21 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 52)) = v30;
  os_unfair_lock_unlock((v20 + v22));
  v31 = *(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor);
  MEMORY[0x28223BE20](v32);
  v33 = v63;
  *(&v54 - 2) = v63;
  os_unfair_lock_lock(v31 + 6);
  sub_247C6168C();
  os_unfair_lock_unlock(v31 + 6);
  v34 = *(*(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_timeoutController) + 16);
  if (v34)
  {
    [v34 invalidate];
  }

  sub_247C444F8();
  if (*(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus))
  {
    *(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus) = 0;
    v35 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
    v36 = *(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView);
    v37 = v36[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus];
    v36[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus] = 0;
    if (v37)
    {
      v38 = *&v36[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer];
      v39 = objc_allocWithZone(MEMORY[0x277D75348]);
      v40 = v36;
      v41 = [v39 initWithRed:0.29 green:0.62 blue:0.97 alpha:1.0];
      v42 = [v41 CGColor];

      [v38 setStrokeColor_];
      v33 = v63;
    }

    v43 = *(v3 + v35);
    v44 = sub_247CC74F8();
    sub_247CBBBB0(0);
  }

  sub_247C45F78();
  v45 = v57;
  sub_247C2BD10(v33 + *(v55 + 44), v57, &qword_27EE62DE0);
  v46 = v56;
  v47 = v56(v45, 1, v25);
  v48 = v58;
  if (v47 == 1)
  {
    *v48 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v46(v45, 1, v25) != 1)
    {
      sub_247C27100(v45, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C5F1AC(v45, v58, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  sub_247C58164(0xD000000000000016, 0x8000000247D2E9B0);
  sub_247CDCAE8(v48, v49);
  sub_247C5E468(v48, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v50 = *(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView);
  v51 = sub_247CC74F8();
  v52 = v60;
  sub_247D1EF18();

  v53 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_timeCaptureInitiated;
  swift_beginAccess();
  (*(v61 + 40))(&v51[v53], v52, v62);
  swift_endAccess();
}

void sub_247C4B420()
{
  _s5StateVMa();
  if (v0 <= 0x3F)
  {
    sub_247D1F488();
    if (v1 <= 0x3F)
    {
      sub_247D1EF48();
      if (v2 <= 0x3F)
      {
        sub_247C4BB34(319, &qword_27EE63960, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for FlowResponse.Step.CosmeticCapture(319);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_247C4B694(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FlowResponse(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[10]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631A0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_247C4B828(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FlowResponse(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631A0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[12];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_247C4B9C8()
{
  type metadata accessor for FlowResponse(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FlowResponse.Step.CosmeticCapture(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        sub_247C4BB34(319, &qword_27EE631C0, type metadata accessor for FlowResponse.Step.CosmeticCapture, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIInterfaceOrientation(319);
          if (v4 <= 0x3F)
          {
            sub_247C4BB34(319, &qword_27EE631C8, type metadata accessor for DeviceAttitude, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_247C4BB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for CaptureState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CaptureState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247C4BCEC()
{
  result = qword_27EE631D0;
  if (!qword_27EE631D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE631D0);
  }

  return result;
}

uint64_t sub_247C4BD40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  return sub_247C57E10(v1 + v3, a1, _s5StateVMa);
}

uint64_t sub_247C4BDC8()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247C4BE08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  v5 = sub_247D1EF48();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FlowResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider], *&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24]);
  v13 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(&v1[v13], v11, type metadata accessor for FlowResponse);
  sub_247C5DEAC(v1, v11, *v12);
  sub_247C5E468(v11, type metadata accessor for FlowResponse);
  sub_247C45F78();
  v14 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView];
  v15 = sub_247CC74F8();
  sub_247D1EF18();

  v16 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_timeCaptureInitiated;
  swift_beginAccess();
  (*(v6 + 40))(&v15[v16], v8, v5);
  swift_endAccess();

  sub_247D1EF18();
  v17 = *(v6 + 56);
  v17(v4, 0, 1, v5);
  v18 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureInitiatedTimeStamp;
  swift_beginAccess();
  sub_247C5E4C8(v4, &v1[v18]);
  swift_endAccess();
  sub_247D1EF18();
  v17(v4, 0, 1, v5);
  v19 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_authenticationDurationTimestamp;
  swift_beginAccess();
  sub_247C5E4C8(v4, &v1[v19]);
  return swift_endAccess();
}

uint64_t sub_247C4C0F8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632C0);
  return sub_247D1FE68();
}

void sub_247C4C154()
{
  v1 = sub_247D1FB98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s5StateVMa();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  v27 = _s5StateVMa;
  v28 = v0;
  sub_247C57E10(v0 + v8, v7, _s5StateVMa);
  sub_247D1FB88();
  v29 = sub_247C88264(v4);
  v9 = *(v2 + 8);
  v31 = v1;
  v9(v4, v1);
  v30 = _s5StateVMa;
  sub_247C5E468(v7, _s5StateVMa);
  v24 = v8;
  sub_247C57E10(v0 + v8, v7, _s5StateVMa);
  sub_247D1FB88();
  sub_247C88264(v4);
  v25 = v2 + 8;
  v9(v4, v1);
  v10 = v30;
  sub_247C5E468(v7, v30);
  v11 = sub_247D1FBB8();

  v12 = sub_247D1FBB8();

  v26 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v13 = v28;
  v14 = v28 + v8;
  v15 = v27;
  sub_247C57E10(v14, v7, v27);
  sub_247D1FB88();
  sub_247C88264(v4);
  v9(v4, v31);
  sub_247C5E468(v7, v10);
  v16 = sub_247D1FBB8();

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v16 style:1 handler:0];
  v29 = v18;

  v19 = v26;
  [v26 addAction_];
  sub_247C57E10(v13 + v24, v7, v15);
  sub_247D1FB88();
  sub_247C88264(v4);
  v9(v4, v31);
  sub_247C5E468(v7, v30);
  v20 = sub_247D1FBB8();

  aBlock[4] = sub_247C4C630;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247C23D60;
  aBlock[3] = &block_descriptor_143;
  v21 = _Block_copy(aBlock);

  v22 = [v17 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v19 addAction_];
  [v13 presentViewController:v19 animated:1 completion:0];
}

uint64_t sub_247C4C630()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_247D1EE08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247D1FBE8();
  sub_247D1EDF8();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_247C27100(v2, &qword_27EE63220);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_247CBEBB8();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_247C4C834(double a1)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_247C41308();
  [v2 setAlpha_];
}

uint64_t sub_247C4C904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_247D1FEA8();
  *(v4 + 72) = sub_247D1FE98();
  v6 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C4C99C, v6, v5);
}

uint64_t sub_247C4C99C()
{
  v1 = v0[8];

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0x3FF0000000000000;
  v0[6] = sub_247C61348;
  v0[7] = v4;
  v5 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_247CDD038;
  v0[5] = &block_descriptor_136;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  v0[6] = sub_247C61308;
  v0[7] = v2;
  v0[2] = v5;
  v0[3] = 1107296256;
  v0[4] = sub_247C57D8C;
  v0[5] = &block_descriptor_139;
  v8 = _Block_copy(v0 + 2);

  [v3 animateWithDuration:v6 animations:v8 completion:0.0];
  _Block_release(v8);
  _Block_release(v6);

  v9 = v0[1];

  return v9();
}

void sub_247C4CB68(uint64_t a1, uint64_t a2)
{
  v3 = sub_247D1FB98();
  v22 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateVMa();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_247C41308();
  v10 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  v23 = _s5StateVMa;
  sub_247C57E10(a2 + v10, v9, _s5StateVMa);
  sub_247D1FB88();
  sub_247C88264(v6);
  v11 = *(v4 + 8);
  v21 = v4 + 8;
  v11(v6, v3);
  sub_247C5E468(v9, _s5StateVMa);
  v12 = sub_247D1FBB8();

  v13 = v24;
  [v24 setAccessibilityHint_];

  sub_247C57E10(a2 + v10, v9, v23);
  sub_247D1FB88();
  sub_247C88264(v6);
  v11(v6, v22);
  sub_247C5E468(v9, _s5StateVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632E0);
  inited = swift_initStackObject();
  v15 = *MEMORY[0x277D76510];
  *(inited + 32) = *MEMORY[0x277D76510];
  *(inited + 16) = xmmword_247D23880;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v16 = v15;
  sub_247CD85F4(inited);
  swift_setDeallocating();
  sub_247C27100(inited + 32, &unk_27EE632E8);
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_247D1FBB8();

  type metadata accessor for Key(0);
  sub_247C61354(&qword_27EE629D0, type metadata accessor for Key);
  v19 = sub_247D1FAF8();

  v20 = [v17 initWithString:v18 attributes:v19];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v20);
}

uint64_t sub_247C4CF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = _s15DiagnosticStyleOMa(0);
  v5[9] = swift_task_alloc();
  _s5StateVMa();
  v5[10] = swift_task_alloc();
  v5[11] = sub_247D1FEA8();
  v5[12] = sub_247D1FE98();
  v7 = sub_247D1FE38();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_247C4D008, v7, v6);
}

uint64_t sub_247C4D008()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    *(v0 + 128) = sub_247D1FE98();
    v3 = sub_247D1FE38();
    *(v0 + 136) = v3;
    *(v0 + 144) = v2;

    return MEMORY[0x2822009F8](sub_247C4D10C, v3, v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 120) == 0;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_247C4D10C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v2 + v3, v1, _s5StateVMa);
  v0[19] = sub_247D1FE98();
  v5 = sub_247D1FE38();
  v0[20] = v5;
  v0[21] = v4;

  return MEMORY[0x2822009F8](sub_247C4D1E0, v5, v4);
}

uint64_t sub_247C4D1E0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247C57E10(v2, v1, _s5StateVMa);
  *(v1 + v4) = v3;
  swift_storeEnumTagMultiPayload();
  v5 = v3;
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_247C4D2EC;
  v7 = v0[9];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247C4D2EC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  sub_247C5E468(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_247C4D444, v4, v3);
}

uint64_t sub_247C4D444()
{
  v1 = v0[10];

  sub_247C5E468(v1, _s5StateVMa);
  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822009F8](sub_247C4D4C8, v2, v3);
}

uint64_t sub_247C4D4C8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_247C4D534, v1, v2);
}

uint64_t sub_247C4D534()
{

  **(v0 + 40) = *(v0 + 120) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C4D5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[181] = v14;
  v8[180] = v13;
  v8[179] = a8;
  v8[178] = a7;
  v8[177] = a6;
  v8[176] = a5;
  v8[175] = a4;
  _s5StateVMa();
  v8[182] = swift_task_alloc();
  sub_247D1FEA8();
  v8[183] = sub_247D1FE98();
  v10 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C4D69C, v10, v9);
}

uint64_t sub_247C4D69C()
{
  v1 = *(v0 + 1456);
  v25 = *(v0 + 1440);
  v26 = *(v0 + 1448);
  v2 = *(v0 + 1424);
  v24 = *(v0 + 1416);
  v27 = *(v0 + 1432);
  v28 = *(v0 + 1408);
  v3 = *(v0 + 1400);

  sub_247C2BD10(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 1256, &unk_27EE631F0);
  sub_247C3D044((v0 + 1256), v0 + 1216);
  v29 = *(v0 + 1248);
  v30 = *(v0 + 1240);
  __swift_project_boxed_opaque_existential_1((v0 + 1216), v30);
  v4 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v3 + v4, v1, _s5StateVMa);
  sub_247C88620(v0 + 832);
  sub_247C5E468(v1, _s5StateVMa);
  *(v0 + 1320) = *(v0 + 1072);
  *(v0 + 1336) = *(v0 + 1056);
  *(v0 + 1352) = *(v0 + 1136);
  *(v0 + 1368) = *(v0 + 1120);

  sub_247C27100(v0 + 1368, &unk_27EE63200);
  *(v0 + 1384) = v2;
  v5 = sub_247D204D8();
  v22 = v6;
  v23 = v5;
  sub_247C27100(v0 + 1352, &unk_27EE63200);

  sub_247C27100(v0 + 1336, &unk_27EE63200);
  *(v0 + 1392) = v26;
  v7 = sub_247D204D8();
  v9 = v8;
  sub_247C27100(v0 + 1320, &unk_27EE63200);
  v10 = *(v0 + 1008);
  *(v0 + 176) = *(v0 + 992);
  *(v0 + 192) = v10;
  v11 = *(v0 + 1040);
  *(v0 + 208) = *(v0 + 1024);
  *(v0 + 224) = v11;
  v12 = *(v0 + 944);
  *(v0 + 112) = *(v0 + 928);
  *(v0 + 128) = v12;
  v13 = *(v0 + 976);
  *(v0 + 144) = *(v0 + 960);
  *(v0 + 160) = v13;
  v14 = *(v0 + 880);
  *(v0 + 48) = *(v0 + 864);
  *(v0 + 64) = v14;
  v15 = *(v0 + 912);
  *(v0 + 80) = *(v0 + 896);
  *(v0 + 96) = v15;
  v16 = *(v0 + 848);
  *(v0 + 16) = *(v0 + 832);
  *(v0 + 32) = v16;
  *(v0 + 240) = v27;
  *(v0 + 248) = v25;
  *(v0 + 256) = v7;
  *(v0 + 264) = v9;
  v17 = *(v0 + 1104);
  *(v0 + 272) = *(v0 + 1088);
  *(v0 + 288) = v17;
  *(v0 + 304) = v28;
  *(v0 + 312) = v24;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  v18 = *(v0 + 1168);
  *(v0 + 336) = *(v0 + 1152);
  *(v0 + 352) = v18;
  v19 = *(v0 + 1200);
  *(v0 + 368) = *(v0 + 1184);
  *(v0 + 384) = v19;
  *(v0 + 400) = 1;
  *(v0 + 408) = 0xD00000000000001ALL;
  *(v0 + 416) = 0x8000000247D2EBC0;
  memcpy((v0 + 424), (v0 + 16), 0x198uLL);
  (*(v29 + 8))(v0 + 424, v30);
  sub_247C318F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1216);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_247C4D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_247D1FEA8();
  v5[8] = sub_247D1FE98();
  v7 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C4DA54, v7, v6);
}

char *sub_247C4DA54()
{
  v1 = *(v0 + 56);
  v2 = sub_247C41388();
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    v29 = MEMORY[0x277D84F90];
    result = sub_247CE2450(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v28 = v2;
      v5 = 0;
      v6 = v1 & 0xC000000000000001;
      v7 = v1 & 0xFFFFFFFFFFFFFF8;
      v8 = *(v0 + 56) + 32;
      v1 = &off_278EDD000;
      while (1)
      {
        if (v6)
        {
          v9 = MEMORY[0x24C1B8190](v5, *(v0 + 56));
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            v3 = sub_247D203B8();
            goto LABEL_3;
          }

          if (v5 >= *(v7 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v8 + 8 * v5);
        }

        v10 = v9;
        v11 = [v9 CGColor];
        type metadata accessor for CGColor(0);
        *(v0 + 40) = v12;

        *(v0 + 16) = v11;
        v14 = *(v29 + 16);
        v13 = *(v29 + 24);
        v2 = (v14 + 1);
        if (v14 >= v13 >> 1)
        {
          sub_247CE2450((v13 > 1), v14 + 1, 1);
        }

        ++v5;
        *(v29 + 16) = v2;
        sub_247C30320((v0 + 16), (v29 + 32 * v14 + 32));
        if (v3 == v5)
        {
          v2 = v28;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_15:
  v15 = *(v0 + 48);
  v16 = sub_247D1FDB8();

  [v2 setColors_];

  v17 = *&v15[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___gradientLayer];
  result = [v15 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = result;

  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setFrame_];
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_247C4DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  v4[22] = swift_task_alloc();
  v5 = sub_247D1EF48();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  sub_247D1FEA8();
  v4[26] = sub_247D1FE98();
  v7 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C4DE10, v7, v6);
}

uint64_t sub_247C4DE10()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);

  sub_247C5ECD0();
  v6 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_tiltRecognizerDebugView);
  sub_247C5F214(v0 + 16);
  v7 = &v6[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration];
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v7 + 2) = *(v0 + 48);
  *(v7 + 3) = v10;
  *v7 = v8;
  *(v7 + 1) = v9;
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  *(v7 + 105) = *(v0 + 121);
  *(v7 + 5) = v12;
  *(v7 + 6) = v13;
  *(v7 + 4) = v11;
  sub_247D1EF38();
  sub_247D1EF08();
  v15 = v14;
  (*(v3 + 8))(v1, v2);
  v16 = &v6[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_lastUpdateTimestamp];
  *v16 = v15;
  v16[8] = 0;
  [v6 setHidden_];
  [v6 setNeedsDisplay];
  v17 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_contourDebugView) + OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_configuration;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;

  sub_247C8307C();
  v18 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_metadataDebugView);
  v19 = type metadata accessor for MetadataDebugView.Configuration(0);
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_configuration;
  swift_beginAccess();
  sub_247C615A0(v4, v18 + v20, &qword_27EE63258);
  swift_endAccess();
  sub_247C8AD08();
  sub_247C27100(v4, &qword_27EE63258);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_247C4E038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_247D1FEA8();
  v5[7] = sub_247D1FE98();
  v7 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C4E0D0, v7, v6);
}

uint64_t sub_247C4E0D0()
{
  v1 = v0[5];

  v2 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_performanceMetrics;
  swift_beginAccess();
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_247C80D80(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_247C80D80((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[6];
  *(v3 + 2) = v6 + 1;
  memcpy(&v3[336 * v6 + 32], v7, 0x149uLL);
  *(v1 + v2) = v3;
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

uint64_t sub_247C4E1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_247D1FEA8();
  *(v4 + 24) = sub_247D1FE98();
  v6 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C6162C, v6, v5);
}

uint64_t sub_247C4E288()
{
  v0[2] = sub_247D1FEA8();
  v0[3] = sub_247D1FE98();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_247C4E334;

  return sub_247C496D4();
}

uint64_t sub_247C4E334()
{

  v1 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C616A8, v1, v0);
}

void sub_247C4E470(double a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, double *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, CGFloat a10@<D2>, CGFloat a11@<D3>, CGFloat a12@<D4>)
{
  v247 = a6;
  v248 = a1;
  LODWORD(v233) = a5;
  v232 = a4;
  v244 = a2;
  v226 = a7;
  v19 = sub_247D1F488();
  v223 = *(v19 - 8);
  v224 = v19;
  MEMORY[0x28223BE20](v19);
  v249 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288);
  MEMORY[0x28223BE20](v21 - 8);
  v222 = &v212 - v22;
  v227 = type metadata accessor for Metadata(0);
  v231 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v221 = &v212 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v24 - 8);
  *&v219 = &v212 - v25;
  *&v220 = COERCE_DOUBLE(type metadata accessor for FileUploadToken(0));
  v218 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v27 = &v212 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = COERCE_DOUBLE(type metadata accessor for FlowResponse.Step.CosmeticCapture(0));
  v28 = MEMORY[0x28223BE20](*&v245);
  v213 = &v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v246 = &v212 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v31 - 8);
  *&v217 = &v212 - v32;
  v215 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v230 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v216 = (&v212 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  v35 = v34 - 8;
  MEMORY[0x28223BE20](v34);
  v37 = &v212 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v12;
  v38 = *(v12 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v39 = *(*v38 + *MEMORY[0x277D841D0] + 16);
  v40 = (*(*v38 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v38 + v40));
  v250 = v37;
  sub_247C57E10(v38 + v39, v37, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
  os_unfair_lock_unlock((v38 + v40));
  v41 = *(v35 + 36);
  v42 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v43 = [v42 initWithCVImageBuffer_];
  v279.a = 1.0;
  v279.b = 0.0;
  v279.c = 0.0;
  v279.d = 1.0;
  v279.ty = 0.0;
  v279.tx = 0.0;
  CGAffineTransformRotate(&v258, &v279, a8 * 3.14159265 / 180.0);
  v279 = v258;
  v44 = [v43 imageByApplyingTransform_];

  v45 = sub_247C7FCC8(a8 == 0.0, a9, a10, a11, a12);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  [v44 extent];
  Width = CGRectGetWidth(v294);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  [v44 extent];
  Height = CGRectGetHeight(v295);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_73:
    __break(1u);
    return;
  }

  v214 = v44;
  v54 = Height;
  v296.origin.x = v45;
  v296.origin.y = v47;
  v296.size.width = v49;
  v296.size.height = v51;
  v297 = VNImageRectForNormalizedRect(v296, Width, v54);
  x = v297.origin.x;
  y = v297.origin.y;
  v57 = v297.size.width;
  v58 = v297.size.height;
  v277 = 1;
  v293[0] = xmmword_247D24020;
  memset(&v293[1], 0, 80);
  v59 = v247[1];
  v228 = *v247;
  v60 = v247[3];
  v243 = v247[2];
  v244 = v59;
  v61 = v247[5];
  v241 = v247[4];
  v242 = v60;
  v62 = v247[7];
  v239 = v247[6];
  v240 = v61;
  v63 = v247[9];
  v237 = v247[8];
  v238 = v62;
  v64 = v247[11];
  v235 = v247[10];
  v236 = v63;
  v234 = v64;
  sub_247C2BD10(v247, &v279, &qword_27EE63298);
  sub_247C27100(v293, &qword_27EE63298);
  if (LOBYTE(v233))
  {
    v232 = -2.68156159e154;
    v233 = 0.0;
  }

  else
  {
    *&v65 = COERCE_DOUBLE(sub_247D1FF98());
    v232 = v66;
    v233 = *&v65;
  }

  v67 = v230;
  v68 = v231;
  v69 = *(a3 + 464);
  v70 = *(a3 + 432);
  v266 = *(a3 + 448);
  v267 = v69;
  v71 = *(a3 + 464);
  v268[0] = *(a3 + 480);
  *(v268 + 9) = *(a3 + 489);
  v72 = *(a3 + 400);
  v262 = *(a3 + 384);
  v263 = v72;
  v73 = *(a3 + 432);
  v75 = *(a3 + 384);
  v74 = *(a3 + 400);
  v264 = *(a3 + 416);
  v265 = v73;
  v273 = v266;
  v274 = v71;
  v275[0] = *(a3 + 480);
  *(v275 + 9) = *(a3 + 489);
  v269 = v75;
  v270 = v74;
  v76 = &v250[v41];
  v212 = *(a3 + 568);
  v278 = *(a3 + 576);
  v271 = v264;
  v272 = v70;
  if (sub_247C3503C(&v269) == 1)
  {
    v230 = 0.0;
    v231 = 0.0;
    v229 = 0.0;
  }

  else
  {
    v230 = *(&v269 + 1);
    v231 = *&v269;
    v229 = *&v270;
    v277 = 0;
  }

  v77 = v221;
  v78 = *&v217;
  sub_247C2BD10(v76 + *(*&v245 + 44), *&v217, &qword_27EE62DE0);
  v79 = *(*&v67 + 48);
  v80 = v215;
  if (v79(v78, 1, v215) == 1)
  {
    v81 = sub_247CD8184(MEMORY[0x277D84F90]);
    v82 = v216;
    *v216 = v81;
    sub_247D1F188();
    v83 = v79(v78, 1, v80);
    v84 = v220;
    if (v83 != 1)
    {
      sub_247C27100(v78, &qword_27EE62DE0);
    }
  }

  else
  {
    v82 = v216;
    sub_247C5F1AC(v78, v216, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
    v84 = v220;
  }

  v85 = sub_247C57F80(0xD000000000000012, 0x8000000247D2EA60, 1);
  sub_247C5E468(v82, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v86 = v85 & 1;
  sub_247C57E10(v76, v246, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v87 = OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_flowState;
  v88 = (*&v248 + *(_s5StateVMa() + 28) + v87);
  v89 = v88[1];
  v279.a = *v88;
  v279.b = v89;

  MEMORY[0x24C1B7B80](45, 0xE100000000000000);
  v90 = v76 + *(*&v245 + 36);
  v91 = *&v219;
  sub_247C2BD10(v90, *&v219, &qword_27EE63290);
  v92 = *(*&v218 + 48);
  if (v92(v91, 1, v84) == 1)
  {
    *v27 = 0;
    *(v27 + 1) = 0xE000000000000000;
    *(v27 + 2) = 0;
    *(v27 + 3) = 0xE000000000000000;
    *(v27 + 4) = 0;
    *(v27 + 5) = 0xE000000000000000;
    *(v27 + 6) = 0;
    *(v27 + 7) = 0xE000000000000000;
    sub_247D1F188();
    (*(*&v68 + 56))(&v27[*(v84 + 36)], 1, 1, v227);
    v93 = v92(v91, 1, v84) == 1;
    v94 = v91;
    v95 = &off_278EDD000;
    v96 = v228;
    if (!v93)
    {
      sub_247C27100(v94, &qword_27EE63290);
    }
  }

  else
  {
    sub_247C5F1AC(v91, v27, type metadata accessor for FileUploadToken);
    v95 = &off_278EDD000;
    v96 = v228;
  }

  v97 = &v27[*(v84 + 36)];
  v98 = v222;
  sub_247C2BD10(v97, v222, &qword_27EE63288);
  v99 = *(*&v68 + 48);
  v100 = v227;
  if (v99(v98, 1, v227) == 1)
  {
    *v77 = 0;
    *(v77 + 8) = 0xE000000000000000;
    *(v77 + 16) = 0;
    *(v77 + 24) = 0xE000000000000000;
    *(v77 + 32) = 0;
    *(v77 + 40) = 0xE000000000000000;
    sub_247D1F188();
    sub_247C5E468(v27, type metadata accessor for FileUploadToken);
    if (v99(v98, 1, v100) != 1)
    {
      sub_247C27100(v98, &qword_27EE63288);
    }
  }

  else
  {
    sub_247C5E468(v27, type metadata accessor for FileUploadToken);
    sub_247C5F1AC(v98, v77, type metadata accessor for Metadata);
  }

  v101 = *v77;
  v102 = *(v77 + 8);

  sub_247C5E468(v77, type metadata accessor for Metadata);
  MEMORY[0x24C1B7B80](v101, v102);

  v222 = *&v279.a;
  b = v279.b;
  v104 = *(*&v248 + OBJC_IVAR____TtC18CosmeticAssessment22RealTimeImageProcessor_ciContext);
  v105 = v250;
  LODWORD(v227) = sub_247C581F0(0x4D73646E65707061, 0xEF61746164617465, 1);
  v279.a = v233;
  v279.b = v232;
  v279.c = v231;
  v279.d = v230;
  v279.tx = v229;
  LOBYTE(v279.ty) = v277;
  *(&v279.ty + 1) = v276[0];
  HIDWORD(v279.ty) = *(v276 + 3);
  v280 = v96;
  v281 = v244;
  v282 = v243;
  v283 = v242;
  v284 = v241;
  v285 = v240;
  v286 = v239;
  v287 = v238;
  v288 = v237;
  v289 = v236;
  v290 = v235;
  v291 = v234;
  v292 = v86;
  v106 = *(v105 + 48);
  v107 = *(v106 + 16);
  v245 = b;
  if (v107)
  {
    sub_247C2FF84(&v279, &v258);
    v108 = sub_247CCFDA8(0x64646150706F7263, 0xEB00000000676E69);
    a = 0.1;
    v110 = v214;
    if (v111)
    {
      v112 = (*(v106 + 56) + 16 * v108);
      v113 = *v112;
      v114 = v112[1];
      v258.a = 0.0;

      if (sub_247C58340(v113, v114))
      {
        a = v258.a;
      }
    }
  }

  else
  {
    sub_247C2FF84(&v279, &v258);
    a = 0.1;
    v110 = v214;
  }

  v115 = 0.4;
  if (*(v106 + 16) && (v116 = sub_247CCFDA8(0x5077656976657270, 0xEE00676E69646461), (v117 & 1) != 0))
  {
    v118 = (*(v106 + 56) + 16 * v116);
    v120 = *v118;
    v119 = v118[1];
    v258.a = 0.0;

    v121 = v86;
    if (sub_247C58340(v120, v119))
    {
      v115 = v258.a;
    }
  }

  else
  {
    v121 = v86;
  }

  sub_247D1F478();
  v122 = v110;
  v123 = sub_247D1F468();
  v124 = sub_247D20058();

  v125 = os_log_type_enabled(v123, v124);
  v248 = v58;
  *&v221 = v115;
  if (v125)
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v256[0].a = v127;
    *v126 = 136315906;
    [v122 v95[275]];
    v129 = v128;
    v131 = v130;
    v133 = v132;
    v135 = v134;
    *&v258.a = sub_247D1FF98();
    v258.b = v136;
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v137 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v137);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v298.origin.x = v129;
    v298.origin.y = v131;
    v298.size.width = v133;
    v298.size.height = v135;
    CGRectGetWidth(v298);
    v138 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v138);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v299.origin.x = v129;
    v58 = v248;
    v299.origin.y = v131;
    v299.size.width = v133;
    v299.size.height = v135;
    CGRectGetHeight(v299);
    v139 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v139);

    v140 = sub_247CB03B4(*&v258.a, *&v258.b, v256);

    *(v126 + 4) = v140;
    *(v126 + 12) = 2080;
    *&v258.a = sub_247D1FF98();
    v258.b = v141;
    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v142 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v142);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v300.origin.x = x;
    v300.origin.y = y;
    v300.size.width = v57;
    v300.size.height = v58;
    CGRectGetWidth(v300);
    v143 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v143);

    MEMORY[0x24C1B7B80](59, 0xE100000000000000);
    v301.origin.x = x;
    v301.origin.y = y;
    v301.size.width = v57;
    v301.size.height = v58;
    CGRectGetHeight(v301);
    v144 = sub_247D1FF98();
    MEMORY[0x24C1B7B80](v144);

    v145 = sub_247CB03B4(*&v258.a, *&v258.b, v256);

    *(v126 + 14) = v145;
    v95 = &off_278EDD000;
    *(v126 + 22) = 1024;
    *(v126 + 24) = v227 & 1;
    *(v126 + 28) = 2048;
    *(v126 + 30) = a;
    _os_log_impl(&dword_247C1F000, v123, v124, "Initializing: %s;%s;%{BOOL}d;%f", v126, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v127, -1, -1);
    MEMORY[0x24C1B9080](v126, -1, -1);
  }

  v302.origin.x = x;
  v302.origin.y = y;
  v302.size.width = v57;
  v302.size.height = v58;
  v146 = a;
  v147 = round(a * CGRectGetWidth(v302));
  v303.origin.x = x;
  v303.origin.y = y;
  v303.size.width = v57;
  v303.size.height = v58;
  v148 = v57;
  v149 = round(v146 * CGRectGetHeight(v303));
  v304.origin.x = x;
  v304.origin.y = y;
  v304.size.width = v148;
  v304.size.height = v58;
  v217 = CGRectGetWidth(v304);
  v305.origin.x = x;
  v305.origin.y = y;
  v305.size.width = v148;
  v305.size.height = v58;
  v150 = CGRectGetHeight(v305);
  v151 = v58;
  v152 = x;
  v153 = y;
  v218 = v148;
  v219 = v149;
  *&v220 = v147;
  v154 = sub_247C3038C(v122, x, y, v148, v151, v147, v149);
  v156 = v155;
  v158 = v157;
  v160 = v159;
  [v122 v95[275]];
  if (v161 >= 0.0 && ([v122 v95[275]], v162 >= 0.0))
  {
    v165 = [v104 createCGImage:v122 fromRect:{v154, v156, v158, v160}];
    if (!v165)
    {
LABEL_51:
      sub_247C30050(&v279);

      v181 = sub_247D1F468();
      v182 = sub_247D20038();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&dword_247C1F000, v181, v182, "Failed to initialize.", v183, 2u);
        MEMORY[0x24C1B9080](v183, -1, -1);
      }

      sub_247C5E468(v246, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      (*(v223 + 8))(v249, v224);
      sub_247C5FBE4(&v258);
      goto LABEL_58;
    }
  }

  else
  {
    v163 = sub_247C3203C(v104);
    if (!v163)
    {
      goto LABEL_51;
    }

    v164 = v163;
    v306.origin.x = v154;
    v306.origin.y = v156;
    v306.size.width = v158;
    v306.size.height = v160;
    v165 = CGImageCreateWithImageInRect(v163, v306);

    if (!v165)
    {
      goto LABEL_51;
    }
  }

  v166 = v165;
  sub_247C31AA4(v158, v160);
  v168 = v167;

  if (!v168)
  {
    goto LABEL_51;
  }

  v169 = sub_247C3038C(v122, v152, v153, v218, v248, round(*&v221 * v217), round(*&v221 * v150));
  v171 = v170;
  v173 = v172;
  v175 = v174;
  [v122 v95[275]];
  if (v176 >= 0.0 && ([v122 v95[275]], v177 >= 0.0))
  {
    v180 = [v104 createCGImage:v122 fromRect:{v169, v171, v173, v175}];
    if (!v180)
    {
LABEL_56:
      v186 = v168;
      goto LABEL_57;
    }
  }

  else
  {
    v178 = sub_247C3203C(v104);
    if (!v178)
    {
      goto LABEL_56;
    }

    v179 = v178;
    v307.origin.x = v169;
    v307.origin.y = v171;
    v307.size.width = v173;
    v307.size.height = v175;
    v180 = CGImageCreateWithImageInRect(v178, v307);

    if (!v180)
    {
      goto LABEL_56;
    }
  }

  v184 = v180;
  sub_247C31AA4(v173, v175);
  v186 = v185;

  if (!v186)
  {
    goto LABEL_56;
  }

LABEL_57:
  v187 = CGImageGetWidth(v168);
  v188 = *&v220;
  v189 = v187 - (v188 + v188);
  v190 = CGImageGetHeight(v168);
  v191 = v219;
  v192 = v190 - (v191 + v191);
  v193 = v246;
  v194 = v213;
  sub_247C57E10(v246, v213, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  type metadata accessor for RecordedImage(0);
  swift_allocObject();
  v195 = sub_247C2F0DC(v168, v186, v194, v222, *&v245, v227 & 1, &v279, v188, v191, v189, v192);

  sub_247C5E468(v193, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  (*(v223 + 8))(v249, v224);
  *&v256[1].d = v266;
  *&v256[1].ty = v267;
  *&v256[2].b = v268[0];
  *(&v256[2].c + 1) = *(v268 + 9);
  *&v256[0].b = v262;
  *&v256[0].d = v263;
  *&v256[0].ty = v264;
  *&v256[1].b = v265;
  LOBYTE(v255) = v278;
  *&v256[0].a = v195;
  *(&v256[2].tx + 1) = LODWORD(v251.a);
  HIDWORD(v256[2].tx) = *(&v251.a + 3);
  v256[2].ty = v212;
  v257 = v278;
  nullsub_1(v256);
  v260 = v256[2];
  v261 = v257;
  v258 = v256[0];
  v259 = v256[1];
LABEL_58:
  v256[0].a = v233;
  v256[0].b = v232;
  v256[0].c = v231;
  v256[0].d = v230;
  v256[0].tx = v229;
  LOBYTE(v256[0].ty) = v277;
  *(&v256[0].ty + 1) = v276[0];
  HIDWORD(v256[0].ty) = *(v276 + 3);
  v256[1].a = v228;
  v256[1].b = v244;
  v256[1].c = v243;
  v256[1].d = v242;
  v256[1].tx = v241;
  v256[1].ty = v240;
  v256[2].a = v239;
  v256[2].b = v238;
  v256[2].c = v237;
  v256[2].d = v236;
  v256[2].tx = v235;
  v256[2].ty = v234;
  v257 = v121;
  sub_247C30050(v256);
  v196 = *(v247 + 1);
  if (v196 == 1)
  {
    v197 = 0xEC0000006D616572;
  }

  else
  {
    v197 = 0xED00006572757470;
  }

  v198 = sub_247D1F468();
  v199 = sub_247D20028();

  sub_247C5FC04(&v258);
  if (os_log_type_enabled(v198, v199))
  {
    if (v196 == 1)
    {
      v200 = 0x7473206F65646976;
    }

    else
    {
      v200 = 0x6163206F746F6870;
    }

    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v255 = v202;
    *v201 = 136315394;
    v203 = sub_247CB03B4(v200, v197, &v255);

    *(v201 + 4) = v203;
    *(v201 + 12) = 2080;
    v253 = v260;
    v254 = v261;
    v251 = v258;
    v252 = v259;

    v204 = sub_247D1FC68();
    v206 = sub_247CB03B4(v204, v205, &v255);

    *(v201 + 14) = v206;
    _os_log_impl(&dword_247C1F000, v198, v199, "Capture validation result for %s: %s", v201, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v202, -1, -1);
    MEMORY[0x24C1B9080](v201, -1, -1);

    sub_247C5E468(v250, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
  }

  else
  {

    sub_247C5E468(v250, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
  }

  v207 = *&v260.c;
  v208 = v226;
  *(v226 + 96) = *&v260.a;
  *(v208 + 112) = v207;
  *(v208 + 128) = *&v260.tx;
  *(v208 + 144) = v261;
  v209 = *&v259.a;
  *(v208 + 32) = *&v258.tx;
  *(v208 + 48) = v209;
  v210 = *&v259.tx;
  *(v208 + 64) = *&v259.c;
  *(v208 + 80) = v210;
  v211 = *&v258.c;
  *v208 = *&v258.a;
  *(v208 + 16) = v211;
}

uint64_t sub_247C4FCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_247D1FEA8();
  *(v4 + 24) = sub_247D1FE98();
  v6 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C4FD78, v6, v5);
}

uint64_t sub_247C4FD78()
{

  sub_247C5ECD0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C4FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a4;
  v5[47] = a5;
  v6 = sub_247D1EF48();
  v5[48] = v6;
  v5[49] = *(v6 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  sub_247D1FEA8();
  v5[52] = sub_247D1FE98();
  v8 = sub_247D1FE38();
  v5[53] = v8;
  v5[54] = v7;

  return MEMORY[0x2822009F8](sub_247C4FEDC, v8, v7);
}

uint64_t sub_247C4FEDC()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  v3 = *(v1 + 80);
  v5 = *(v1 + 32);
  v4 = *(v1 + 48);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 96) = v3;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v7 = *(v1 + 112);
  v6 = *(v1 + 128);
  v8 = *(v1 + 96);
  *(v0 + 160) = *(v1 + 144);
  *(v0 + 128) = v7;
  *(v0 + 144) = v6;
  *(v0 + 112) = v8;
  if (sub_247C5EE54((v0 + 16)) != 1)
  {
    v9 = *(*(v0 + 376) + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
    v10 = v9 + *(*v9 + *MEMORY[0x277D841D0] + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    *(v10 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 24)) = 1;
    os_unfair_lock_unlock((v9 + v11));
  }

  v12 = *(v0 + 368);
  sub_247C5ECD0();
  v13 = *(v12 + 16);
  *(v0 + 168) = *v12;
  *(v0 + 184) = v13;
  v14 = *(v12 + 32);
  v15 = *(v12 + 48);
  v16 = *(v12 + 80);
  *(v0 + 232) = *(v12 + 64);
  *(v0 + 248) = v16;
  *(v0 + 200) = v14;
  *(v0 + 216) = v15;
  v17 = *(v12 + 96);
  v18 = *(v12 + 112);
  v19 = *(v12 + 128);
  *(v0 + 312) = *(v12 + 144);
  *(v0 + 280) = v18;
  *(v0 + 296) = v19;
  *(v0 + 264) = v17;
  if (sub_247C5EE54((v0 + 168)) == 1 && (v20 = *(v0 + 400), v21 = *(v0 + 408), v22 = *(v0 + 384), v23 = *(v0 + 392), v24 = *(v0 + 376), v25 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_uiUpdatesBuffer, swift_beginAccess(), (*(v23 + 16))(v21, v24 + v25, v22), sub_247D1EF18(), sub_247D1EF28(), v27 = v26, v28 = *(v23 + 8), v28(v20, v22), v28(v21, v22), v27 <= 0.5))
  {

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v29 = swift_task_alloc();
    *(v0 + 440) = v29;
    *v29 = v0;
    v29[1] = sub_247C5017C;
    v30 = *(v0 + 368);

    return sub_247C5036C(v30);
  }
}

uint64_t sub_247C5017C()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_247C5029C, v3, v2);
}

uint64_t sub_247C5029C()
{
  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[47];

  sub_247D1EF18();
  v5 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_uiUpdatesBuffer;
  swift_beginAccess();
  (*(v3 + 40))(v4 + v5, v1, v2);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_247C5036C(uint64_t a1)
{
  v2[345] = v1;
  v2[344] = a1;
  _s5StateVMa();
  v2[346] = swift_task_alloc();
  sub_247D1FEA8();
  v2[347] = sub_247D1FE98();
  v4 = sub_247D1FE38();
  v2[348] = v4;
  v2[349] = v3;

  return MEMORY[0x2822009F8](sub_247C50438, v4, v3);
}

uint64_t sub_247C50438()
{
  v1 = *(v0 + 2752);
  v2 = *(v1 + 16);
  *(v0 + 2368) = *v1;
  *(v0 + 2384) = v2;
  v3 = *(v1 + 64);
  v4 = *(v1 + 80);
  v5 = *(v1 + 48);
  *(v0 + 2400) = *(v1 + 32);
  *(v0 + 2448) = v4;
  *(v0 + 2432) = v3;
  *(v0 + 2416) = v5;
  v7 = *(v1 + 112);
  v6 = *(v1 + 128);
  v8 = *(v1 + 144);
  *(v0 + 2464) = *(v1 + 96);
  *(v0 + 2512) = v8;
  *(v0 + 2496) = v6;
  *(v0 + 2480) = v7;
  if (sub_247C5EE54((v0 + 2368)) == 1)
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v25 = *(v0 + 2368);
    v11 = *(v0 + 2456);
    *(v0 + 2584) = *(v0 + 2440);
    *(v0 + 2600) = v11;
    *(v0 + 2616) = *(v0 + 2472);
    *(v0 + 2625) = *(v0 + 2481);
    v12 = *(v0 + 2392);
    *(v0 + 2520) = *(v0 + 2376);
    *(v0 + 2536) = v12;
    v13 = *(v0 + 2424);
    *(v0 + 2552) = *(v0 + 2408);
    *(v0 + 2568) = v13;
    v14 = *(v0 + 2504);
    v15 = *(v0 + 2512);
    v16 = sub_247D1F468();
    v17 = sub_247D20028();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_247C1F000, v16, v17, "Capture completed.", v18, 2u);
      MEMORY[0x24C1B9080](v18, -1, -1);
    }

    v19 = *(v0 + 2768);
    v20 = *(v0 + 2760);

    sub_247C2BD10(v20 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 2688, &unk_27EE631F0);
    sub_247C3D044((v0 + 2688), v0 + 2648);
    v21 = *(v0 + 2672);
    v22 = *(v0 + 2680);
    __swift_project_boxed_opaque_existential_1((v0 + 2648), v21);
    v23 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    sub_247C57E10(v20 + v23, v19, _s5StateVMa);
    sub_247C88620(v0 + 832);
    sub_247C5E468(v19, _s5StateVMa);
    memcpy((v0 + 1216), (v0 + 832), 0x180uLL);
    sub_247C3189C(v0 + 832, v0 + 1600);
    sub_247C53060(v0 + 1216, v14, v15 & 1, (v0 + 2520), v20);
    sub_247C319E8(v0 + 832);
    memcpy((v0 + 424), (v0 + 1216), 0x180uLL);
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000013;
    *(v0 + 824) = 0x8000000247D2E7F0;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v22 + 8))(v0 + 16, v21, v22);
    sub_247C318F8(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2648);
    v24 = swift_task_alloc();
    *(v0 + 2800) = v24;
    *v24 = v0;
    v24[1] = sub_247C50808;

    return sub_247C533AC(v25);
  }
}

uint64_t sub_247C50808()
{
  v1 = *v0;

  v2 = *(v1 + 2792);
  v3 = *(v1 + 2784);

  return MEMORY[0x2822009F8](sub_247C50928, v3, v2);
}

uint64_t sub_247C50928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C50990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_247D1EF48();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_247D1FEA8();
  v4[13] = sub_247D1FE98();
  v7 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C50A90, v7, v6);
}

uint64_t sub_247C50A90()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  v6 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_uiUpdatesBuffer;
  swift_beginAccess();
  (*(v3 + 16))(v1, v5 + v6, v4);
  sub_247D1EF18();
  sub_247D1EF28();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v1, v4);
  if (v8 > 0.5)
  {
    v10 = v0[12];
    v11 = v0[9];
    v12 = v0[10];
    sub_247C48874(1, 0);
    sub_247D1EF18();
    swift_beginAccess();
    (*(v12 + 40))(v5 + v6, v10, v11);
    swift_endAccess();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_247C50C00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 120) = a4;
  v7 = sub_247D1EF48();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  sub_247D1FEA8();
  *(v6 + 112) = sub_247D1FE98();
  v9 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C50D04, v9, v8);
}

uint64_t sub_247C50D04()
{
  v1 = *(v0 + 120);

  if (v1 != 130)
  {
    v2 = *(*(v0 + 64) + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
    v3 = v2 + *(*v2 + *MEMORY[0x277D841D0] + 16);
    v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v2 + v4));
    result = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
    v6 = *(result + 56);
    v7 = *(v3 + v6);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
      return result;
    }

    *(v3 + v6) = v9;
    os_unfair_lock_unlock((v2 + v4));
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_uiUpdatesBuffer;
  swift_beginAccess();
  (*(v13 + 16))(v11, v14 + v15, v12);
  sub_247D1EF18();
  sub_247D1EF28();
  v17 = v16;
  v18 = *(v13 + 8);
  v18(v10, v12);
  v18(v11, v12);
  if (v17 > 0.5)
  {
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = *(v0 + 88);
    sub_247C50F08(*(v0 + 120), *(v0 + 72));
    sub_247D1EF18();
    swift_beginAccess();
    (*(v21 + 40))(v14 + v15, v19, v20);
    swift_endAccess();
  }

  v22 = *(v0 + 8);

  return v22();
}

void sub_247C50F08(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for FlowResponse(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v9 = v8 + *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  v11 = *(v9 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 56));
  os_unfair_lock_unlock((v8 + v10));
  if ((a1 & 0x80) == 0)
  {
    sub_247C53B44(a1, a2);
    v12 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor);
    os_unfair_lock_lock(v12 + 6);
    sub_247CEDC0C();
    os_unfair_lock_unlock(v12 + 6);

LABEL_13:
    sub_247C48874(0, 1);
    return;
  }

  v13 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v2 + v13, v7, type metadata accessor for FlowResponse);
  v14 = *(v7 + 6);
  if (*(v14 + 16))
  {
    v15 = sub_247CCFDA8(0xD000000000000014, 0x8000000247D2EAA0);
    if (v16)
    {
      v17 = (*(v14 + 56) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_247CECA84(v18, v19);
      v22 = v21;

      if (v22)
      {
        v23 = 1;
      }

      else
      {
        v23 = v20;
      }
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  sub_247C5E468(v7, type metadata accessor for FlowResponse);
  if (v23 < v11)
  {
    goto LABEL_13;
  }
}

uint64_t sub_247C51160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 257) = a7;
  *(v7 + 272) = a5;
  *(v7 + 280) = a6;
  *(v7 + 264) = a4;
  sub_247D1FEA8();
  *(v7 + 288) = sub_247D1FE98();
  v9 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C61628, v9, v8);
}

uint64_t sub_247C51200(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v109 = a4;
  v107 = *&a3;
  LODWORD(v105) = a1;
  v7 = sub_247D1ED88();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v113 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247D1EFC8();
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632A0);
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v110 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v102 - v14;
  v16 = _s5StateVMa();
  MEMORY[0x28223BE20](v16);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_247D1EF48();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 24);
  v24 = *(a2 + 56);
  v25 = *(a2 + 40);
  v26 = *(a2 + 88);
  v27 = *(a2 + 72);
  v28 = *(a2 + 104);
  v29 = *(a2 + 112);
  v30 = *(a2 + 120);
  LODWORD(v21) = *(a2 + 128);
  v116 = *(a2 + 8);
  v117 = v25;
  v131 = v116;
  v132 = v23;
  v118 = v23;
  v119 = v27;
  v133 = v25;
  v134 = v24;
  v120 = v24;
  v121 = v26;
  v135 = v27;
  v136 = v26;
  *&v137 = v28;
  *(&v137 + 1) = v29;
  v138 = v30;
  v106 = v21;
  v139 = v21;
  v31 = sub_247C3503C(&v131);
  v122 = v22;
  v104 = v20;
  if (v31 == 1)
  {
    v32 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_tiltRecognizerDebugView);
    if (([v32 isHidden] & 1) == 0 && (v32[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_lastUpdateTimestamp + 8] & 1) == 0)
    {
      v33 = *&v32[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_lastUpdateTimestamp];
      sub_247D1EF38();
      sub_247D1EF08();
      v35 = v34;
      (*(v104 + 8))(v122, v19);
      if (v35 - v33 > 0.3)
      {
        [v32 setHidden_];
      }
    }
  }

  else
  {
    v36 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_tiltRecognizerDebugView);
    v127 = v135;
    v128 = v136;
    v129[0] = v137;
    *&v129[1] = v138;
    v123 = v131;
    v124 = v132;
    v125 = v133;
    v126 = v134;
    sub_247C5FCAC(&v123);
    v37 = &v36[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration];
    v38 = v123;
    v39 = v124;
    v40 = v126;
    v37[2] = v125;
    v37[3] = v40;
    *v37 = v38;
    v37[1] = v39;
    v41 = v127;
    v42 = v128;
    v43 = v129[0];
    *(v37 + 105) = *(v129 + 9);
    v37[5] = v42;
    v37[6] = v43;
    v37[4] = v41;
    sub_247D1EF38();
    sub_247D1EF08();
    v45 = v44;
    (*(v20 + 8))(v122, v19);
    v46 = &v36[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_lastUpdateTimestamp];
    *v46 = v45;
    v46[8] = 0;
    [v36 setHidden_];
    [v36 setNeedsDisplay];
  }

  v103 = v19;
  v47 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v5 + v47, v18, _s5StateVMa);
  sub_247C2BD10(&v18[*(v16 + 48)], v130, &qword_27EE62FB0);
  sub_247C3D044(v130, &v123);
  v48 = *__swift_project_boxed_opaque_existential_1(&v123, v124.i64[1]);
  v49 = sub_247C7A700();

  sub_247C5E468(v18, _s5StateVMa);
  __swift_destroy_boxed_opaque_existential_1(&v123);
  if (v49)
  {
    if (v105)
    {
      [*(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_objectRecognitionMaskLayer) removeFromSuperlayer];
    }

    else
    {
      v105 = v15;
      if ((*(a2 + 176) & 1) == 0)
      {
        v51 = *(a2 + 160);
        v50 = *(a2 + 168);
        v53 = *(a2 + 144);
        v52 = *(a2 + 152);
        v54 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_objectRecognitionMaskLayer);
        v55 = objc_opt_self();
        v56 = v54;
        v57 = [v55 orangeColor];
        sub_247C53DFC(v56, v57, v53, v52, v51, v50);
      }

      v58 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorUIKitFrame);
      v59 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorUIKitFrame + 8);
      v60 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorUIKitFrame + 16);
      v61 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorUIKitFrame + 24);
      v62 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorFrameLayer);
      v63 = objc_opt_self();
      v64 = v62;
      v65 = [v63 blueColor];
      sub_247C53DFC(v64, v65, v58, v59, v60, v61);

      v15 = v105;
    }
  }

  sub_247C57E10(v5 + v47, v18, _s5StateVMa);
  sub_247C2BD10(&v18[*(v16 + 48)], v130, &qword_27EE62FB0);
  sub_247C3D044(v130, &v123);
  v66 = *__swift_project_boxed_opaque_existential_1(&v123, v124.i64[1]);
  v67 = sub_247C7A7A0();

  sub_247C5E468(v18, _s5StateVMa);
  __swift_destroy_boxed_opaque_existential_1(&v123);
  if (v67)
  {
    if ((*(a2 + 176) & 1) != 0 || (v68 = *(a2 + 184)) == 0)
    {
      v71 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_contourDebugView);
      if (([v71 isHidden] & 1) == 0 && (v71[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_lastUpdateTimestamp + 8] & 1) == 0)
      {
        v72 = *&v71[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_lastUpdateTimestamp];
        v73 = v122;
        sub_247D1EF38();
        sub_247D1EF08();
        v75 = v74;
        (*(v104 + 8))(v73, v103);
        if (v75 - v72 > 0.3)
        {
          [v71 setHidden_];
        }
      }
    }

    else
    {
      v69 = *(a2 + 160);
      v70 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_contourDebugView) + OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_configuration;
      *v70 = *(a2 + 144);
      *(v70 + 16) = v69;
      *(v70 + 32) = v68;

      sub_247C8307C();
    }
  }

  sub_247C57E10(v5 + v47, v18, _s5StateVMa);
  sub_247C2BD10(&v18[*(v16 + 48)], v130, &qword_27EE62FB0);
  sub_247C3D044(v130, &v123);
  v76 = *__swift_project_boxed_opaque_existential_1(&v123, v124.i64[1]);
  v77 = sub_247C7A840();

  sub_247C5E468(v18, _s5StateVMa);
  result = __swift_destroy_boxed_opaque_existential_1(&v123);
  if (v77)
  {
    v79 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_metadataDebugView);
    if (v109)
    {
      v80 = NAN;
    }

    else
    {
      v80 = v107;
    }

    v123 = v116;
    v124 = v118;
    v125 = v117;
    v126 = v120;
    v127 = v119;
    v128 = v121;
    *v129 = v28;
    *(v129 + 1) = v29;
    *&v129[1] = v30;
    BYTE8(v129[1]) = v106;
    v81 = sub_247C3503C(&v123);
    v82 = v81 == 1;
    if (v81 == 1)
    {
      v83 = 0.0;
    }

    else
    {
      v83 = v28;
    }

    if (v81 == 1)
    {
      v84 = 0.0;
    }

    else
    {
      v84 = v29;
    }

    if (v81 == 1)
    {
      v85 = 0.0;
    }

    else
    {
      v85 = v30;
    }

    if (*(a2 + 240))
    {
      v86 = 0;
    }

    else
    {
      v86 = *(a2 + 224);
    }

    if (*(a2 + 240))
    {
      v87 = 0;
    }

    else
    {
      v87 = *(a2 + 232);
    }

    sub_247D1EFA8();
    sub_247C5FC58();
    v88 = v110;
    sub_247D1ED08();
    v89 = v113;
    sub_247D1ED78();
    v90 = v112;
    MEMORY[0x24C1B6BE0](v89, v112);
    (*(v114 + 8))(v89, v115);
    (*(v111 + 8))(v88, v90);
    v91 = type metadata accessor for MetadataDebugView.Configuration(0);
    *&v15[v91[5]] = v80;
    v92 = &v15[v91[6]];
    v93 = vdup_n_s32(v82);
    v94.i64[0] = v93.u32[0];
    v94.i64[1] = v93.u32[1];
    v95 = vcltzq_s64(vshlq_n_s64(v94, 0x3FuLL));
    v96 = vbslq_s8(v95, xmmword_247D24030, v118);
    *v92 = vbslq_s8(v95, vdupq_n_s64(0x7FF8000000000000uLL), v116);
    *(v92 + 1) = v96;
    v97 = vbicq_s8(v120, v95);
    *(v92 + 2) = vbicq_s8(v117, v95);
    *(v92 + 3) = v97;
    v98 = vbicq_s8(v119, v95);
    v99 = vbicq_s8(v121, v95);
    *(v92 + 4) = v98;
    *(v92 + 5) = v99;
    *(v92 + 12) = v83;
    *(v92 + 13) = v84;
    *(v92 + 14) = v85;
    v100 = &v15[v91[7]];
    *v100 = v86;
    *(v100 + 1) = v87;
    v100[16] = 0;
    (*(*(v91 - 1) + 56))(v15, 0, 1, v91);
    v101 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_configuration;
    swift_beginAccess();
    sub_247C615A0(v15, v79 + v101, &qword_27EE63258);
    swift_endAccess();
    sub_247C8AD08();
    return sub_247C27100(v15, &qword_27EE63258);
  }

  return result;
}

uint64_t sub_247C51CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_247D1FEA8();
  *(v4 + 24) = sub_247D1FE98();
  v6 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C51D4C, v6, v5);
}

uint64_t sub_247C51D4C()
{
  v1 = *(v0 + 16);

  v2 = *(*__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24)) + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureMode);
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 20));
  v3 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v4 = v3 + *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  *(v4 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 24)) = 0;
  os_unfair_lock_unlock((v3 + v5));
  v6 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor);
  os_unfair_lock_lock(v6 + 6);
  sub_247CEDC0C();
  os_unfair_lock_unlock(v6 + 6);
  sub_247C48874(0, 1);
  v7 = *(v0 + 8);

  return v7();
}

void sub_247C51E94(char a1)
{
  v3 = *(*__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24)) + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureMode);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = 0;
  os_unfair_lock_unlock((v3 + 20));
  if ((a1 & 1) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
    v5 = v4 + *(*v4 + *MEMORY[0x277D841D0] + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    *(v5 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 24)) = 0;
    os_unfair_lock_unlock((v4 + v6));
  }

  v7 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor);
  os_unfair_lock_lock(v7 + 6);
  sub_247CEDC0C();
  os_unfair_lock_unlock(v7 + 6);

  sub_247C48874(0, 1);
}

uint64_t sub_247C51FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_247D1FEA8();
  *(v4 + 24) = sub_247D1FE98();
  v6 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C52048, v6, v5);
}

uint64_t sub_247C52048()
{

  sub_247C48DEC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C520AC()
{
  v0[2] = sub_247D1FEA8();
  v0[3] = sub_247D1FE98();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_247C52158;

  return sub_247C496D4();
}

uint64_t sub_247C52158()
{

  v1 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C52294, v1, v0);
}

uint64_t sub_247C52294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C522F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 176) = a5;
  v6 = *(a5 + 112);
  *(v5 + 112) = *(a5 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(a5 + 128);
  *(v5 + 160) = *(a5 + 144);
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  v8 = *(a5 + 80);
  *(v5 + 80) = *(a5 + 64);
  *(v5 + 96) = v8;
  v9 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v9;
  sub_247D1FEA8();
  *(v5 + 184) = sub_247D1FE98();
  v11 = sub_247D1FE38();
  *(v5 + 192) = v11;
  *(v5 + 200) = v10;

  return MEMORY[0x2822009F8](sub_247C523BC, v11, v10);
}

uint64_t sub_247C523BC()
{
  sub_247C5ECD0();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_247C52458;
  v2 = *(v0 + 176);

  return sub_247C5036C(v2);
}

uint64_t sub_247C52458()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_247C52578, v3, v2);
}

uint64_t sub_247C52578()
{

  v1 = sub_247C5EE54((v0 + 16)) == 0;
  sub_247C51E94(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C525F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 1344) = a6;
  *(v6 + 1329) = a5;
  *(v6 + 1336) = a4;
  _s5StateVMa();
  *(v6 + 1352) = swift_task_alloc();
  sub_247D1FEA8();
  *(v6 + 1360) = sub_247D1FE98();
  v8 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C526BC, v8, v7);
}

uint64_t sub_247C526BC()
{
  v37 = v0;
  v1 = *(*(v0 + 1336) + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v2 = v1 + *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  result = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  v5 = *(result + 56);
  v6 = *(v2 + v5);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = *(v0 + 1344);
    v11 = *(v0 + 1336);
    v12 = *(v0 + 1329);
    *(v2 + v5) = v8;
    os_unfair_lock_unlock((v1 + v3));

    sub_247C50F08(v12, v10);
    v13 = *(*__swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider), *(v11 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_cameraSessionProvider + 24)) + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureMode);
    os_unfair_lock_lock((v13 + 20));
    *(v13 + 16) = 0;
    os_unfair_lock_unlock((v13 + 20));
    os_unfair_lock_lock((v1 + v3));
    *(v2 + *(v9 + 24)) = 0;
    os_unfair_lock_unlock((v1 + v3));
    v14 = *(v11 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor);
    os_unfair_lock_lock(v14 + 6);
    sub_247CEDC0C();
    os_unfair_lock_unlock(v14 + 6);
    sub_247C48874(0, 1);
    v15 = sub_247D1F468();
    v16 = sub_247D20058();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 1329);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136446210;
      v21 = (v18 & 0x7F) + 2001;
      v22 = v18 + 1001;
      v35 = v21;
      if ((v18 & 0x80u) == 0)
      {
        v21 = v18 + 1001;
      }

      *(v0 + 1320) = v21;
      *(v0 + 1328) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE632B0);
      v23 = sub_247D1FC68();
      v25 = sub_247CB03B4(v23, v24, &v36);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_247C1F000, v15, v16, "Failed environment quality %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x24C1B9080](v20, -1, -1);
      MEMORY[0x24C1B9080](v19, -1, -1);
    }

    else
    {

      v35 = (v18 & 0x7F) + 2001;
      v22 = v18 + 1001;
    }

    v26 = *(v0 + 1352);
    v27 = *(v0 + 1329);
    v28 = *(v0 + 1336);
    sub_247C2BD10(v28 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 1256, &unk_27EE631F0);
    sub_247C3D044((v0 + 1256), v0 + 1216);
    v29 = *(v0 + 1240);
    v30 = *(v0 + 1248);
    __swift_project_boxed_opaque_existential_1((v0 + 1216), v29);
    v31 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    sub_247C57E10(v28 + v31, v26, _s5StateVMa);
    sub_247C88620(v0 + 832);
    sub_247C5E468(v26, _s5StateVMa);
    v32 = *(v0 + 848);
    *(v0 + 424) = *(v0 + 832);
    *(v0 + 440) = v32;
    v33 = v35;
    if (v27 >= 0)
    {
      v33 = v22;
    }

    *(v0 + 456) = v33;
    *(v0 + 464) = 0;
    memcpy((v0 + 465), (v0 + 873), 0x157uLL);
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000013;
    *(v0 + 824) = 0x8000000247D2EA80;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v30 + 8))(v0 + 16, v29, v30);
    sub_247C318F8(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1216);

    v34 = *(v0 + 8);

    return v34();
  }

  return result;
}

uint64_t sub_247C52AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 257) = a7;
  *(v7 + 272) = a5;
  *(v7 + 280) = a6;
  *(v7 + 264) = a4;
  sub_247D1FEA8();
  *(v7 + 288) = sub_247D1FE98();
  v9 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C52B94, v9, v8);
}

uint64_t sub_247C52B94()
{
  v1 = *(v0 + 257);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);

  v5 = *(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v6 = v5 + *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  LODWORD(v6) = *(v6 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 24));
  os_unfair_lock_unlock((v5 + v7));
  v8 = *(v4 + 376);
  v9 = *(v4 + 392);
  v10 = *(v4 + 424);
  *(v0 + 48) = *(v4 + 408);
  *(v0 + 64) = v10;
  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  v11 = *(v4 + 440);
  v12 = *(v4 + 456);
  v13 = *(v4 + 488);
  *(v0 + 112) = *(v4 + 472);
  *(v0 + 128) = v13;
  *(v0 + 80) = v11;
  *(v0 + 96) = v12;
  v14 = *(v4 + 504);
  v15 = *(v4 + 520);
  v16 = *(v4 + 552);
  *(v0 + 176) = *(v4 + 536);
  *(v0 + 192) = v16;
  *(v0 + 144) = v14;
  *(v0 + 160) = v15;
  v17 = *(v4 + 568);
  v18 = *(v4 + 584);
  v19 = *(v4 + 600);
  *(v0 + 256) = *(v4 + 616);
  *(v0 + 224) = v18;
  *(v0 + 240) = v19;
  *(v0 + 208) = v17;
  sub_247C51200(v6, v0 + 16, v2, v1 & 1);
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_247C52CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_247D1FB98();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  _s5StateVMa();
  v4[14] = swift_task_alloc();
  sub_247D1FEA8();
  v4[15] = sub_247D1FE98();
  v7 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247C52E08, v7, v6);
}

uint64_t sub_247C52E08()
{
  v1 = *(v0 + 80);

  if (*(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus) != 1)
  {
    v2 = *(v0 + 80);
    *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus) = 1;
    v3 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
    v4 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView);
    v5 = v4[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus];
    v4[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus] = 1;
    if (v5 != 1)
    {
      v6 = *&v4[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer];
      v7 = objc_allocWithZone(MEMORY[0x277D75348]);
      v8 = v4;
      v9 = [v7 initWithRed:0.2 green:0.78 blue:0.35 alpha:1.0];
      v10 = [v9 CGColor];

      [v6 setStrokeColor_];
    }

    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 80);
    v16 = *(v2 + v3);
    v17 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    sub_247C57E10(v15 + v17, v11, _s5StateVMa);
    v18 = v16;
    sub_247D1FB88();
    v19 = sub_247C88264(v12);
    v21 = v20;
    (*(v14 + 8))(v12, v13);
    sub_247C5E468(v11, _s5StateVMa);
    *(v0 + 16) = v19;
    *(v0 + 24) = v21;
    *(v0 + 32) = v19;
    *(v0 + 40) = v21;
    *(v0 + 48) = 1;

    v22 = sub_247CC74F8();
    sub_247CBAFA8(v0 + 16);

    swift_bridgeObjectRelease_n();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_247C53060(uint64_t a1, uint64_t a2, char a3, _OWORD *a4, uint64_t a5)
{
  v31 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_247D1EF48();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  *(a1 + 152) = a2;
  *(a1 + 160) = a3 & 1;
  v19 = a4[5];
  v34[4] = a4[4];
  v34[5] = v19;
  v35[0] = a4[6];
  *(v35 + 9) = *(a4 + 105);
  v20 = a4[1];
  v34[0] = *a4;
  v34[1] = v20;
  v21 = a4[3];
  v34[2] = a4[2];
  v34[3] = v21;
  v22 = 0;
  v23 = 0;
  if (sub_247C3503C(v34) != 1)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    MEMORY[0x24C1B7B80](40, 0xE100000000000000);
    sub_247D1FFA8();
    MEMORY[0x24C1B7B80](8236, 0xE200000000000000);
    sub_247D1FFA8();
    MEMORY[0x24C1B7B80](8236, 0xE200000000000000);
    sub_247D1FFA8();
    MEMORY[0x24C1B7B80](41, 0xE100000000000000);
    v22 = v32;
    v23 = v33;
  }

  *(a1 + 352) = v22;
  *(a1 + 360) = v23;
  v24 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureInitiatedTimeStamp;
  v25 = v31;
  swift_beginAccess();
  sub_247C2BD10(v25 + v24, v11, &unk_27EE631E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_247C27100(v11, &unk_27EE631E0);
  }

  (*(v13 + 32))(v18, v11, v12);
  sub_247D1EF18();
  sub_247D1EE88();
  v28 = v27;
  v29 = *(v13 + 8);
  v29(v16, v12);
  result = (v29)(v18, v12);
  *a1 = v28;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_247C533AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_247D1FB98();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  _s5StateVMa();
  v2[10] = swift_task_alloc();
  v2[11] = sub_247D1FEA8();
  v2[12] = sub_247D1FE98();
  v5 = sub_247D1FE38();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x2822009F8](sub_247C534D0, v5, v4);
}