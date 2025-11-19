uint64_t sub_247C534D0()
{
  v1 = v0[6];
  v2 = *(*(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_timeoutController) + 16);
  if (v2)
  {
    [v2 invalidate];
    v1 = v0[6];
  }

  v3 = v0[10];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = *MEMORY[0x277D76438];
  v8 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v1 + v8, v3, _s5StateVMa);
  sub_247D1FB88();
  sub_247C88264(v4);
  (*(v5 + 8))(v4, v6);
  sub_247C5E468(v3, _s5StateVMa);
  v9 = sub_247D1FBB8();

  UIAccessibilityPostNotification(v7, v9);

  v10 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView;
  v11 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView);
  v12 = sub_247CC74F8();
  sub_247CBBBB0(1);

  v13 = [objc_allocWithZone(MEMORY[0x277D757B8]) init];
  v0[15] = v13;
  [v13 notificationOccurred_];
  AudioServicesPlaySystemSound(0x454u);
  v14 = *(v1 + v10);
  v0[16] = v14;
  v15 = v14;
  v0[17] = sub_247D1FE98();
  v17 = sub_247D1FE38();
  v0[18] = v17;
  v0[19] = v16;

  return MEMORY[0x2822009F8](sub_247C536F0, v17, v16);
}

uint64_t sub_247C536F0()
{
  v1 = *(v0[16] + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_imagePreviewView);
  v2 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  [*(v1 + OBJC_IVAR____TtC18CosmeticAssessment16ImagePreviewView_imageView) setImage_];

  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_247C537D8;

  return sub_247CC95EC();
}

uint64_t sub_247C537D8()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_247C538F8, v3, v2);
}

uint64_t sub_247C538F8()
{
  v1 = v0[16];

  sub_247CC9A30();

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_247C5399C;
  v3 = v0[5];

  return sub_247C54098(v3);
}

uint64_t sub_247C5399C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_247C53ABC, v3, v2);
}

uint64_t sub_247C53ABC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_247C53B44(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = _s5StateVMa();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_apertureView);
  v10 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v3 + v10, v8, _s5StateVMa);
  v11 = v9;
  sub_247CBDA38(v8, v24);
  v12 = sub_247CC74F8();
  v13 = sub_247CBAFA8(v24);

  v31 = v24[0];
  sub_247C5FCB4(&v31);
  v30 = v24[1];
  sub_247C5FCB4(&v30);

  if (v13)
  {
    sub_247C2BD10(v3 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v32, &unk_27EE631F0);
    sub_247C3D044(v32, v20);
    v14 = v21;
    v15 = v22;
    v19[1] = __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_247C57E10(v3 + v10, v8, _s5StateVMa);
    sub_247C88620(v25);
    sub_247C5E468(v8, _s5StateVMa);
    v29 = *&v27[23];
    v16 = sub_247C90474(a1);
    v18 = v17;
    sub_247C27100(&v29, &unk_27EE63200);
    v23[0] = *a2;
    LOBYTE(v23[1]) = 0;
    *(&v23[1] + 1) = *&v25[9];
    *(&v23[3] + 1) = v26;
    *(&v23[5] + 1) = *v27;
    v23[7] = *&v27[15];
    v23[8] = v16;
    v23[9] = v18;
    memcpy(&v23[10], v28, 0x130uLL);
    LOBYTE(v23[48]) = 1;
    strcpy(&v23[49], "hintDisplayed");
    HIWORD(v23[50]) = -4864;
    memcpy(v32, v23, 0x198uLL);
    (*(v15 + 8))(v32, v14, v15);
    sub_247C318F8(v23);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

id sub_247C53DFC(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = _s5StateVMa();
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v7 + v18, v17, _s5StateVMa);
  sub_247C2BD10(&v17[*(v15 + 56)], v29, &qword_27EE62FB0);
  sub_247C3D044(v29, v30);
  v19 = *__swift_project_boxed_opaque_existential_1(v30, v30[3]);
  LOBYTE(v18) = sub_247C7A700();

  sub_247C5E468(v17, _s5StateVMa);
  result = __swift_destroy_boxed_opaque_existential_1(v30);
  if (v18)
  {
    v21 = objc_opt_self();
    [v21 begin];
    [a1 removeFromSuperlayer];
    v22 = [objc_opt_self() bezierPathWithRect_];
    v23 = [v22 CGPath];

    [a1 setPath_];
    v24 = [a2 colorWithAlphaComponent_];
    v25 = [v24 CGColor];

    [a1 setFillColor_];
    v26 = sub_247C41308();
    v27 = [v26 layer];

    [v27 addSublayer_];
    return [v21 commit];
  }

  return result;
}

uint64_t sub_247C54098(uint64_t a1)
{
  v2[492] = v1;
  v2[491] = a1;
  v2[493] = _s15DiagnosticStyleOMa(0);
  v2[494] = swift_task_alloc();
  _s5StateVMa();
  v2[495] = swift_task_alloc();
  v2[496] = swift_task_alloc();
  v2[497] = swift_task_alloc();
  v2[498] = *(type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo(0) - 8);
  v2[499] = swift_task_alloc();
  type metadata accessor for FileStatusResponse(0);
  v2[500] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v2[501] = swift_task_alloc();
  v2[502] = swift_task_alloc();
  v3 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v2[503] = v3;
  v2[504] = *(v3 - 8);
  v2[505] = swift_task_alloc();
  v2[506] = swift_task_alloc();
  v4 = sub_247D1EF48();
  v2[507] = v4;
  v2[508] = *(v4 - 8);
  v2[509] = swift_task_alloc();
  v2[510] = swift_task_alloc();
  v2[511] = swift_task_alloc();
  v2[512] = sub_247D1FEA8();
  v2[513] = sub_247D1FE98();
  v6 = sub_247D1FE38();
  v2[514] = v6;
  v2[515] = v5;

  return MEMORY[0x2822009F8](sub_247C54354, v6, v5);
}

uint64_t sub_247C54354()
{
  v74 = v0;
  v1 = v0;
  v2 = *(v0 + 3936);
  sub_247D1EF18();
  v3 = v2 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureStep;
  swift_beginAccess();
  if (*(*(v3 + 48) + 16))
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 4032);
  v5 = *(v0 + 4024);
  v6 = *(v0 + 4016);
  swift_beginAccess();
  v7 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(v3 + *(v7 + 44), v6, &qword_27EE62DE0);
  v8 = *(v4 + 48);
  if (v8(v6, 1, v5) == 1)
  {
    v10 = *(v0 + 4024);
    v11 = *(v0 + 4016);
    v9 = *(v0 + 4048);
    *v9 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v8(v11, 1, v10) != 1)
    {
      sub_247C27100(*(v0 + 4016), &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C5F1AC(*(v0 + 4016), *(v0 + 4048), type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  v12 = *(v0 + 4048);
  swift_endAccess();
  v13 = sub_247C57F80(0xD000000000000021, 0x8000000247D2DC50, 0);
  sub_247C5E468(v12, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  if (v13)
  {
LABEL_7:
    sub_247D1EF18();
    *(v0 + 4128) = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 4136) = Strong;
    if (Strong)
    {
      v15 = *(v3 + 48);
      v16 = *(v15 + 16);
      v17 = MEMORY[0x277D84F90];
      if (v16)
      {
        v68 = *(v1 + 3992);
        v18 = *(v1 + 3984);
        v73 = MEMORY[0x277D84F90];

        sub_247CE2470(0, v16, 0);
        v17 = v73;
        v19 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        do
        {
          v21 = v1;
          v22 = *(v1 + 3992);
          sub_247C57E10(v19, v22, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
          v23 = *v22;
          v24 = *(v68 + 8);

          sub_247C5E468(v22, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
          v73 = v17;
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_247CE2470((v25 > 1), v26 + 1, 1);
            v17 = v73;
          }

          *(v17 + 16) = v26 + 1;
          v27 = v17 + 16 * v26;
          *(v27 + 32) = v23;
          *(v27 + 40) = v24;
          v19 += v20;
          --v16;
          v1 = v21;
        }

        while (v16);
      }

      *(v1 + 4144) = v17;
      v28 = *(v1 + 4032);
      v29 = *(v1 + 4024);
      v30 = *(v1 + 4008);
      v31 = *(v1 + 3928);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
      v32 = swift_allocObject();
      *(v1 + 4152) = v32;
      *(v32 + 16) = xmmword_247D24040;
      *(v32 + 32) = v31;
      swift_beginAccess();
      v33 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
      sub_247C2BD10(v3 + *(v33 + 44), v30, &qword_27EE62DE0);
      v34 = *(v28 + 48);
      v35 = v34(v30, 1, v29);
      v36 = *(v1 + 4040);
      if (v35 == 1)
      {
        v37 = *(v1 + 4024);
        v38 = *(v1 + 4008);

        *v36 = sub_247CD8184(MEMORY[0x277D84F90]);
        sub_247D1F188();
        if (v34(v38, 1, v37) != 1)
        {
          sub_247C27100(*(v1 + 4008), &qword_27EE62DE0);
        }
      }

      else
      {
        sub_247C5F1AC(*(v1 + 4008), *(v1 + 4040), type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
      }

      v62 = *(v1 + 4040);
      swift_endAccess();
      *(v1 + 4352) = sub_247C57F80(0xD000000000000021, 0x8000000247D2DC50, 0) & 1;
      sub_247C5E468(v62, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
      *(v1 + 4160) = sub_247D1FE98();
      v64 = sub_247D1FE38();
      *(v1 + 4168) = v64;
      *(v1 + 4176) = v63;

      return MEMORY[0x2822009F8](sub_247C54C4C, v64, v63);
    }

    v39 = (v0 + 3896);
    sub_247C3EF40();
    v40 = swift_allocError();
    *v41 = 6;
    swift_willThrow();
    *(v0 + 4248) = v40;
    v42 = *(v0 + 4072);
    v43 = *(v0 + 4064);
    v67 = *(v0 + 4056);
    v44 = *(v0 + 3960);
    v45 = *(v0 + 3936);
    sub_247C2BD10(v45 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 3608, &unk_27EE631F0);
    sub_247C3D044((v0 + 3608), v0 + 3568);
    v69 = *(v0 + 3592);
    v46 = *(v0 + 3600);
    __swift_project_boxed_opaque_existential_1((v0 + 3568), v69);
    v47 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    *(v1 + 4256) = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    sub_247C57E10(v45 + v47, v44, _s5StateVMa);
    sub_247C88620(v1 + 1648);
    sub_247C5E468(v44, _s5StateVMa);
    *v39 = *(v1 + 1696);
    *v70 = *(v1 + 1657);
    *&v70[15] = *(v1 + 1672);
    LODWORD(v71) = *(v1 + 1689);
    *(&v71 + 3) = *(v1 + 1692);
    memcpy(__dst, (v1 + 1712), sizeof(__dst));
    swift_getErrorValue();
    v48 = sub_247D205B8();
    v49 = v1;
    v51 = v50;
    sub_247C27100(v39, &unk_27EE63200);
    swift_getErrorValue();
    v52 = sub_247CC595C(*(v49 + 3808));
    LOBYTE(v73) = 0;
    sub_247D1EF18();
    sub_247D1EE88();
    v54 = v53;
    v55 = *(v43 + 8);
    *(v49 + 4264) = v55;
    *(v49 + 4272) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v42, v67);
    v56 = v73;
    *(v49 + 832) = v54;
    *(v49 + 840) = 0;
    *(v49 + 841) = *v70;
    *(v49 + 856) = *&v70[15];
    *(v49 + 864) = v52;
    *(v49 + 872) = v56;
    *(v49 + 873) = v71;
    *(v49 + 876) = *(&v71 + 3);
    *(v49 + 880) = v48;
    *(v49 + 888) = v51;
    memcpy((v49 + 896), __dst, 0x140uLL);
    *(v49 + 1216) = 1;
    *(v49 + 1224) = 0xD000000000000016;
    *(v49 + 1232) = 0x8000000247D2E830;
    memcpy((v49 + 424), (v49 + 832), 0x198uLL);
    (*(v46 + 8))(v49 + 424, v69, v46);
    sub_247C318F8(v49 + 832);
    __swift_destroy_boxed_opaque_existential_1(v49 + 3568);
    v57 = sub_247D1F468();
    v58 = sub_247D20038();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_247C1F000, v57, v58, "Failure to complete required individual capture validation.", v59, 2u);
      MEMORY[0x24C1B9080](v59, -1, -1);
    }

    v60 = swift_task_alloc();
    *(v49 + 4280) = v60;
    *v60 = v49;
    v60[1] = sub_247C55DD4;
    v61 = *(v49 + 4088);
  }

  else
  {
    v65 = swift_task_alloc();
    *(v0 + 4240) = v65;
    *v65 = v0;
    v65[1] = sub_247C55B5C;
    v61 = *(v0 + 4088);
  }

  return sub_247C5EE6C(v61);
}

uint64_t sub_247C54C4C()
{
  v1 = *(v0 + 3976);
  v2 = *(v0 + 3936);
  v3 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  *(v0 + 4184) = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v2 + v3, v1, _s5StateVMa);
  v4 = swift_task_alloc();
  *(v0 + 4192) = v4;
  *v4 = v0;
  v4[1] = sub_247C54D48;
  v5 = *(v0 + 4352);
  v6 = *(v0 + 4152);
  v7 = *(v0 + 4144);
  v8 = *(v0 + 4000);
  v9 = *(v0 + 3976);

  return sub_247CA9AB4(v8, v6, v9, v7, v5);
}

uint64_t sub_247C54D48()
{
  v2 = *v1;
  (*v1)[525] = v0;

  sub_247C5E468(v2[497], _s5StateVMa);

  v3 = v2[522];
  v4 = v2[521];
  if (v0)
  {
    v5 = sub_247C55490;
  }

  else
  {
    v5 = sub_247C54EF0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247C54EF0()
{

  v1 = swift_task_alloc();
  *(v0 + 4208) = v1;
  *v1 = v0;
  v1[1] = sub_247C54F8C;
  v2 = *(v0 + 4088);

  return sub_247C5EE6C(v2);
}

uint64_t sub_247C54F8C()
{
  v1 = *v0;

  v2 = *(v1 + 4120);
  v3 = *(v1 + 4112);

  return MEMORY[0x2822009F8](sub_247C550AC, v3, v2);
}

uint64_t sub_247C550AC()
{
  v1 = *(v0 + 4200);
  v2 = *(v0 + 4184);
  v3 = *(v0 + 4000);
  v4 = *(v0 + 3968);
  v5 = *(v0 + 3936);
  sub_247C2BD10(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 3688, &unk_27EE631F0);
  sub_247C3D044((v0 + 3688), v0 + 3648);
  v6 = *(v0 + 3672);
  v7 = *(v0 + 3680);
  __swift_project_boxed_opaque_existential_1((v0 + 3648), v6);
  sub_247C57E10(v5 + v2, v4, _s5StateVMa);
  sub_247C88620(v0 + 2032);
  sub_247C5E468(v4, _s5StateVMa);
  memcpy((v0 + 2416), (v0 + 2032), 0x180uLL);
  sub_247C3189C(v0 + 2032, v0 + 2800);
  sub_247C56A38(v0 + 2416, v3);
  if (v1)
  {

    memcpy((v0 + 3184), (v0 + 2416), 0x180uLL);

    return sub_247C319E8(v0 + 3184);
  }

  else
  {
    v9 = *(v0 + 4000);
    sub_247C319E8(v0 + 2032);
    memcpy((v0 + 1240), (v0 + 2416), 0x180uLL);
    *(v0 + 1624) = 1;
    *(v0 + 1632) = 0xD00000000000001BLL;
    *(v0 + 1640) = 0x8000000247D2E850;
    memcpy((v0 + 16), (v0 + 1240), 0x198uLL);
    (*(v7 + 8))(v0 + 16, v6, v7);
    sub_247C318F8(v0 + 1240);
    __swift_destroy_boxed_opaque_existential_1(v0 + 3648);
    v10 = *(v9 + 40);
    if (v10[2])
    {
      v12 = v10[4];
      v11 = v10[5];
      *(v0 + 4216) = v11;

      v13 = swift_task_alloc();
      *(v0 + 4224) = v13;
      *v13 = v0;
      v13[1] = sub_247C558B0;

      return sub_247C56C0C(v12, v11);
    }

    else
    {
      v14 = *(v0 + 4088);
      v15 = *(v0 + 4080);
      v16 = *(v0 + 4064);
      v17 = *(v0 + 4056);
      v18 = *(v0 + 4000);
      v19 = *(v0 + 3928);

      sub_247C472C8(v19, 1);
      swift_unknownObjectRelease();
      v20 = *(v16 + 8);
      v20(v15, v17);
      v20(v14, v17);
      sub_247C5E468(v18, type metadata accessor for FileStatusResponse);

      v21 = *(v0 + 8);

      return v21();
    }
  }
}

uint64_t sub_247C55490()
{

  v1 = *(v0 + 4120);
  v2 = *(v0 + 4112);

  return MEMORY[0x2822009F8](sub_247C554F8, v2, v1);
}

uint64_t sub_247C554F8()
{
  v25 = v0;
  swift_unknownObjectRelease();
  *(v0 + 4248) = *(v0 + 4200);
  v1 = *(v0 + 4072);
  v2 = *(v0 + 4064);
  v20 = *(v0 + 4056);
  v3 = *(v0 + 3960);
  v4 = *(v0 + 3936);
  sub_247C2BD10(v4 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 3608, &unk_27EE631F0);
  sub_247C3D044((v0 + 3608), v0 + 3568);
  v21 = *(v0 + 3592);
  v5 = *(v0 + 3600);
  __swift_project_boxed_opaque_existential_1((v0 + 3568), v21);
  v6 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  *(v0 + 4256) = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v4 + v6, v3, _s5StateVMa);
  sub_247C88620(v0 + 1648);
  sub_247C5E468(v3, _s5StateVMa);
  *(v0 + 3896) = *(v0 + 1696);
  *v22 = *(v0 + 1657);
  *&v22[15] = *(v0 + 1672);
  LODWORD(v23) = *(v0 + 1689);
  *(&v23 + 3) = *(v0 + 1692);
  memcpy(__dst, (v0 + 1712), sizeof(__dst));
  swift_getErrorValue();
  v7 = sub_247D205B8();
  v9 = v8;
  sub_247C27100(v0 + 3896, &unk_27EE63200);
  swift_getErrorValue();
  v10 = sub_247CC595C(*(v0 + 3808));
  sub_247D1EF18();
  sub_247D1EE88();
  v12 = v11;
  v13 = *(v2 + 8);
  *(v0 + 4264) = v13;
  *(v0 + 4272) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v1, v20);
  *(v0 + 832) = v12;
  *(v0 + 840) = 0;
  *(v0 + 841) = *v22;
  *(v0 + 856) = *&v22[15];
  *(v0 + 864) = v10;
  *(v0 + 872) = 0;
  *(v0 + 873) = v23;
  *(v0 + 876) = *(&v23 + 3);
  *(v0 + 880) = v7;
  *(v0 + 888) = v9;
  memcpy((v0 + 896), __dst, 0x140uLL);
  *(v0 + 1216) = 1;
  *(v0 + 1224) = 0xD000000000000016;
  *(v0 + 1232) = 0x8000000247D2E830;
  memcpy((v0 + 424), (v0 + 832), 0x198uLL);
  (*(v5 + 8))(v0 + 424, v21, v5);
  sub_247C318F8(v0 + 832);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3568);
  v14 = sub_247D1F468();
  v15 = sub_247D20038();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_247C1F000, v14, v15, "Failure to complete required individual capture validation.", v16, 2u);
    MEMORY[0x24C1B9080](v16, -1, -1);
  }

  v17 = swift_task_alloc();
  *(v0 + 4280) = v17;
  *v17 = v0;
  v17[1] = sub_247C55DD4;
  v18 = *(v0 + 4088);

  return sub_247C5EE6C(v18);
}

uint64_t sub_247C558B0()
{
  v2 = *v1;
  *(*v1 + 4232) = v0;

  if (v0)
  {
    v3 = *(v2 + 4120);
    v4 = *(v2 + 4112);
    v5 = sub_247C56654;
  }

  else
  {

    v3 = *(v2 + 4120);
    v4 = *(v2 + 4112);
    v5 = sub_247C559D4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247C559D4()
{
  v1 = v0[511];
  v2 = v0[510];
  v3 = v0[508];
  v4 = v0[507];
  v5 = v0[500];

  swift_unknownObjectRelease();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);
  sub_247C5E468(v5, type metadata accessor for FileStatusResponse);

  v7 = v0[1];

  return v7();
}

uint64_t sub_247C55B5C()
{
  v1 = *v0;

  v2 = *(v1 + 4120);
  v3 = *(v1 + 4112);

  return MEMORY[0x2822009F8](sub_247C55C7C, v3, v2);
}

uint64_t sub_247C55C7C()
{
  v1 = v0[511];
  v2 = v0[508];
  v3 = v0[507];
  v4 = v0[491];

  sub_247C472C8(v4, 0);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_247C55DD4()
{
  v1 = *v0;

  v2 = *(v1 + 4120);
  v3 = *(v1 + 4112);

  return MEMORY[0x2822009F8](sub_247C55EF4, v3, v2);
}

uint64_t sub_247C55EF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[536] = Strong;
  if (Strong)
  {
    v0[537] = sub_247D1FE98();
    v3 = sub_247D1FE38();
    v0[538] = v3;
    v0[539] = v2;

    return MEMORY[0x2822009F8](sub_247C560DC, v3, v2);
  }

  else
  {
    v4 = v0[533];
    v5 = v0[531];
    v6 = v0[511];
    v7 = v0[510];
    v8 = v0[507];

    v4(v7, v8);
    v4(v6, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_247C560DC()
{
  sub_247C57E10(v0[492] + v0[532], v0[495], _s5StateVMa);
  v0[540] = sub_247D1FE98();
  v2 = sub_247D1FE38();
  v0[541] = v2;
  v0[542] = v1;

  return MEMORY[0x2822009F8](sub_247C56194, v2, v1);
}

uint64_t sub_247C56194()
{
  v1 = v0[531];
  v2 = v0[495];
  v3 = v0[494];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247C57E10(v2, v3, _s5StateVMa);
  *(v3 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[543] = v6;
  *v6 = v0;
  v6[1] = sub_247C562A8;
  v7 = v0[494];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247C562A8()
{
  v1 = *v0;
  v2 = *(*v0 + 3952);

  sub_247C5E468(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 4336);
  v4 = *(v1 + 4328);

  return MEMORY[0x2822009F8](sub_247C56400, v4, v3);
}

uint64_t sub_247C56400()
{
  v1 = v0[495];

  sub_247C5E468(v1, _s5StateVMa);
  v2 = v0[539];
  v3 = v0[538];

  return MEMORY[0x2822009F8](sub_247C56488, v3, v2);
}

uint64_t sub_247C56488()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 4120);
  v2 = *(v0 + 4112);

  return MEMORY[0x2822009F8](sub_247C564FC, v2, v1);
}

uint64_t sub_247C564FC()
{
  v1 = v0[533];
  v2 = v0[531];
  v3 = v0[511];
  v4 = v0[510];
  v5 = v0[507];

  v1(v4, v5);
  v1(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_247C56654()
{
  v26 = v0;
  v1 = *(v0 + 4000);
  swift_unknownObjectRelease();

  sub_247C5E468(v1, type metadata accessor for FileStatusResponse);
  *(v0 + 4248) = *(v0 + 4232);
  v2 = *(v0 + 4072);
  v3 = *(v0 + 4064);
  v21 = *(v0 + 4056);
  v4 = *(v0 + 3960);
  v5 = *(v0 + 3936);
  sub_247C2BD10(v5 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v0 + 3608, &unk_27EE631F0);
  sub_247C3D044((v0 + 3608), v0 + 3568);
  v22 = *(v0 + 3592);
  v6 = *(v0 + 3600);
  __swift_project_boxed_opaque_existential_1((v0 + 3568), v22);
  v7 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  *(v0 + 4256) = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v5 + v7, v4, _s5StateVMa);
  sub_247C88620(v0 + 1648);
  sub_247C5E468(v4, _s5StateVMa);
  *(v0 + 3896) = *(v0 + 1696);
  *v23 = *(v0 + 1657);
  *&v23[15] = *(v0 + 1672);
  LODWORD(v24) = *(v0 + 1689);
  *(&v24 + 3) = *(v0 + 1692);
  memcpy(__dst, (v0 + 1712), sizeof(__dst));
  swift_getErrorValue();
  v8 = sub_247D205B8();
  v10 = v9;
  sub_247C27100(v0 + 3896, &unk_27EE63200);
  swift_getErrorValue();
  v11 = sub_247CC595C(*(v0 + 3808));
  sub_247D1EF18();
  sub_247D1EE88();
  v13 = v12;
  v14 = *(v3 + 8);
  *(v0 + 4264) = v14;
  *(v0 + 4272) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v2, v21);
  *(v0 + 832) = v13;
  *(v0 + 840) = 0;
  *(v0 + 841) = *v23;
  *(v0 + 856) = *&v23[15];
  *(v0 + 864) = v11;
  *(v0 + 872) = 0;
  *(v0 + 873) = v24;
  *(v0 + 876) = *(&v24 + 3);
  *(v0 + 880) = v8;
  *(v0 + 888) = v10;
  memcpy((v0 + 896), __dst, 0x140uLL);
  *(v0 + 1216) = 1;
  *(v0 + 1224) = 0xD000000000000016;
  *(v0 + 1232) = 0x8000000247D2E830;
  memcpy((v0 + 424), (v0 + 832), 0x198uLL);
  (*(v6 + 8))(v0 + 424, v22, v6);
  sub_247C318F8(v0 + 832);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3568);
  v15 = sub_247D1F468();
  v16 = sub_247D20038();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_247C1F000, v15, v16, "Failure to complete required individual capture validation.", v17, 2u);
    MEMORY[0x24C1B9080](v17, -1, -1);
  }

  v18 = swift_task_alloc();
  *(v0 + 4280) = v18;
  *v18 = v0;
  v18[1] = sub_247C55DD4;
  v19 = *(v0 + 4088);

  return sub_247C5EE6C(v19);
}

uint64_t sub_247C56A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1EF48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 40);
  if (*(v8 + 16))
  {
    *(a1 + 201) = 0;
    v15[1] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63270);
    v15[0] = v4;
    sub_247C2A7FC(&qword_27EE63278, &qword_27EE63270);
    v4 = v15[0];
    v9 = sub_247D1FB68();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    *(a1 + 201) = 1;
  }

  *(a1 + 208) = v9;
  *(a1 + 216) = v11;
  sub_247D1EF18();
  sub_247D1EE88();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  *a1 = v13;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_247C56C0C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = _s5StateVMa();
  v3[19] = swift_task_alloc();
  type metadata accessor for FlowResponse.Step(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63228);
  v3[21] = swift_task_alloc();
  v4 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = sub_247D1FEA8();
  v3[27] = sub_247D1FE98();
  v6 = sub_247D1FE38();
  v3[28] = v6;
  v3[29] = v5;

  return MEMORY[0x2822009F8](sub_247C56DA8, v6, v5);
}

uint64_t sub_247C56DA8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 240) = Strong;
  if (!Strong)
  {

    sub_247C3EF40();
    swift_allocError();
    *v15 = 6;
    swift_willThrow();
LABEL_7:

    v16 = *(v0 + 8);

    return v16();
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 136) + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v9 + *(v6 + 40), v4, type metadata accessor for FlowResponse.Step);
  sub_247C769BC(v8, v7, v5);
  sub_247C5E468(v4, type metadata accessor for FlowResponse.Step);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    v10 = *(v0 + 168);

    sub_247C27100(v10, &qword_27EE63228);
    v11 = sub_247D1F468();
    v12 = sub_247D20038();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_247C1F000, v11, v12, "Missing error action for image validation failure.", v13, 2u);
      MEMORY[0x24C1B9080](v13, -1, -1);
    }

    sub_247C3EF40();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v18 = *(v0 + 200);
  v19 = *(v0 + 192);
  v20 = *(v0 + 152);
  sub_247C5F1AC(*(v0 + 168), v18, type metadata accessor for FlowResponse.Step.HiddenAction);
  sub_247C57E10(v18, v19, type metadata accessor for FlowResponse.Step.HiddenAction);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_247C57E10(v9, v20, _s5StateVMa);
  sub_247C5B128(v20);
  sub_247C5E468(v20, _s5StateVMa);
  sub_247C5E468(v19, type metadata accessor for FlowResponse.Step.HiddenAction);
  *(v0 + 248) = sub_247D1FE98();
  v22 = sub_247D1FE38();
  *(v0 + 256) = v22;
  *(v0 + 264) = v21;

  return MEMORY[0x2822009F8](sub_247C5716C, v22, v21);
}

uint64_t sub_247C5716C()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_247C57228;

  return sub_247CD1644(7, v0 + 56);
}

uint64_t sub_247C57228()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_247C574A0;
  }

  else
  {
    v5 = sub_247C5733C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247C5733C()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_247C573A0, v1, v2);
}

uint64_t sub_247C573A0()
{
  v1 = v0[25];
  v2 = v0[17];

  v3 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor);
  os_unfair_lock_lock(v3 + 6);
  sub_247CEDC0C();
  os_unfair_lock_unlock(v3 + 6);
  swift_unknownObjectRelease();
  sub_247C5E468(v1, type metadata accessor for FlowResponse.Step.HiddenAction);

  v4 = v0[1];

  return v4();
}

uint64_t sub_247C574A0()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_247C57504, v1, v2);
}

uint64_t sub_247C57504()
{
  v1 = *(v0 + 200);

  swift_unknownObjectRelease();
  sub_247C5E468(v1, type metadata accessor for FlowResponse.Step.HiddenAction);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C575D4()
{
  v1 = v0;
  v2 = _s5StateVMa();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;

  sub_247C918D4(v8, v7);
  v9 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v18[4] = v7;
  v10 = *(*v9 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_247C61544(v9 + v10);
  os_unfair_lock_unlock((v9 + v11));
  v12 = type metadata accessor for DeviceAttitude();
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    v13 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_hasRecordedPeerDeviceMotionError;
    if ((*(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_hasRecordedPeerDeviceMotionError) & 1) == 0)
    {
      sub_247C2BD10(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics, v26, &unk_27EE631F0);
      sub_247C3D044(v26, v19);
      v14 = v20;
      v15 = v21;
      v18[1] = __swift_project_boxed_opaque_existential_1(v19, v20);
      v16 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
      swift_beginAccess();
      sub_247C57E10(v1 + v16, v4, _s5StateVMa);
      sub_247C88620(v23);
      sub_247C5E468(v4, _s5StateVMa);
      v25 = v23[3];
      sub_247C27100(&v25, &unk_27EE63200);
      v22[0] = v23[0];
      v22[1] = v23[1];
      v22[2] = v23[2];
      *&v22[3] = 0xD00000000000003CLL;
      *(&v22[3] + 1) = 0x8000000247D2ECB0;
      memcpy(&v22[4], v24, 0x140uLL);
      LOBYTE(v22[24]) = 1;
      *(&v22[24] + 1) = 0xD000000000000015;
      *&v22[25] = 0x8000000247D2ECF0;
      memcpy(v26, v22, 0x198uLL);
      (*(v15 + 8))(v26, v14, v15);
      sub_247C318F8(v22);
      __swift_destroy_boxed_opaque_existential_1(v19);
      *(v1 + v13) = 1;
    }
  }

  return sub_247C27100(v7, &unk_27EE631A0);
}

void sub_247C57918()
{
  v1 = _s5StateVMa();
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v39 = v14;
    v40 = v16;
    v41 = v0;
    v19 = v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
    swift_beginAccess();
    v20 = *(v1 + 40);
    v38 = v19;
    v21 = *(v19 + v20 + *(type metadata accessor for FlowResponse.Step(0) + 20));
    swift_beginAccess();
    v22 = *(v21 + 40);
    v23 = *(v22 + 16);
    if (v23)
    {
      v35 = v8;
      v36 = v3;
      v37 = v18;
      sub_247D1FEA8();
      v24 = v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

      v25 = 0;
      while (v25 < *(v22 + 16))
      {
        sub_247C57E10(v24 + *(v5 + 72) * v25, v11, type metadata accessor for FlowResponse.Step.HiddenAction);
        sub_247D1FE98();
        sub_247D1FE38();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v26 = *(v11 + 2);

        if (v26 == 3)
        {

          v30 = v39;
          sub_247C5F1AC(v11, v39, type metadata accessor for FlowResponse.Step.HiddenAction);
          v31 = v40;
          sub_247C5F1AC(v30, v40, type metadata accessor for FlowResponse.Step.HiddenAction);
          v32 = v35;
          sub_247C57E10(v31, v35, type metadata accessor for FlowResponse.Step.HiddenAction);
          v42 = 0u;
          v43 = 0u;
          v44 = 0;
          v33 = v36;
          sub_247C57E10(v38, v36, _s5StateVMa);
          sub_247C5B128(v33);
          swift_unknownObjectRelease();
          sub_247C5E468(v33, _s5StateVMa);
          sub_247C5E468(v32, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C5E468(v31, type metadata accessor for FlowResponse.Step.HiddenAction);
          return;
        }

        ++v25;
        sub_247C5E468(v11, type metadata accessor for FlowResponse.Step.HiddenAction);
        if (v23 == v25)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      v27 = sub_247D1F468();
      v28 = sub_247D20038();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_247C1F000, v27, v28, "Missing error action for capture timeout", v29, 2u);
        MEMORY[0x24C1B9080](v29, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_247C57D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_247C57DE0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void sub_247C57DEC(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_247C57E04(a1, a2 & 1);
  }
}

void sub_247C57E04(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_247C57E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C57E78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247C57EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_247C27E44;

  return sub_247C4692C(a1, v4, v5, v7, v6);
}

uint64_t sub_247C57F80(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  if (*(v5 + 16))
  {
    v6 = sub_247CCFDA8(a1, a2);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = *v8 == 1702195828 && v10 == 0xE400000000000000;
      if (v11 || (sub_247D20538() & 1) != 0)
      {
        a3 = 1;
      }

      else if (v9 == 0x65736C6166 && v10 == 0xE500000000000000)
      {
        a3 = 0;
      }

      else
      {
        a3 &= sub_247D20538() ^ 1;
      }
    }
  }

  return a3 & 1;
}

unint64_t sub_247C5804C(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*(v3 + 16))
  {
    result = sub_247CCFDA8(result, a2);
    if (v4)
    {
      v5 = (*(v3 + 56) + 16 * result);
      v7 = *v5;
      v6 = v5[1];

      sub_247C58340(v7, v6);
    }
  }

  return result;
}

unint64_t sub_247C580D8(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*(v3 + 16))
  {
    result = sub_247CCFDA8(result, a2);
    if (v4)
    {
      v5 = (*(v3 + 56) + 16 * result);
      v7 = *v5;
      v6 = v5[1];

      sub_247CE2EA4(v7, v6);
    }
  }

  return result;
}

unint64_t sub_247C58164(unint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (*(v3 + 16))
  {
    result = sub_247CCFDA8(result, a2);
    if (v4)
    {
      v5 = (*(v3 + 56) + 16 * result);
      v7 = *v5;
      v6 = v5[1];

      sub_247C58340(v7, v6);
    }
  }

  return result;
}

uint64_t sub_247C581F0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 + 48);
  if (*(v5 + 16))
  {
    v6 = sub_247CCFDA8(a1, a2);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = *v8 == 1702195828 && v10 == 0xE400000000000000;
      if (v11 || (sub_247D20538() & 1) != 0)
      {
        a3 = 1;
      }

      else if (v9 == 0x65736C6166 && v10 == 0xE500000000000000)
      {
        a3 = 0;
      }

      else
      {
        a3 &= sub_247D20538() ^ 1;
      }
    }
  }

  return a3 & 1;
}

uint64_t sub_247C58310@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

BOOL sub_247C58340(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_247D202B8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_247C58438(uint64_t a1)
{
  v197 = MEMORY[0x28223BE20](a1);
  v198 = v1;
  v168 = v2;
  v167 = v3;
  v196 = v4;
  v6 = v5;
  v8 = v7;
  v175 = v9;
  v10 = sub_247D1EF48();
  v194 = *(v10 - 8);
  v195 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v189 = v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v162[2] = v162 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v162[4] = v162 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v180 = (v162 - v18);
  MEMORY[0x28223BE20](v17);
  v173 = v162 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v162[1] = v162 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v162[3] = v162 - v25;
  MEMORY[0x28223BE20](v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63218);
  MEMORY[0x28223BE20](v26 - 8);
  v179 = v162 - v27;
  v184 = type metadata accessor for FlowResponse.Step(0);
  v178 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v174 = v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  MEMORY[0x28223BE20](v29 - 8);
  v169 = v162 - v30;
  v31 = sub_247D1EE08();
  v170 = *(v31 - 8);
  v171 = v31;
  MEMORY[0x28223BE20](v31);
  v166 = v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FlowResponse.Step.URL(0);
  MEMORY[0x28223BE20](v33 - 8);
  v182 = v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63228);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v172 = v162 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v181 = v162 - v38;
  v39 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v185 = *(v39 - 8);
  v186 = v39;
  v40 = MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v176 = v162 - v41;
  v163 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v163);
  v165 = v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v187 = v162 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v164 = v162 - v47;
  MEMORY[0x28223BE20](v46);
  v183 = v162 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v49 - 8);
  v190 = v162 - v50;
  v192 = _s5StateVMa();
  v188 = *(v192 - 8);
  v51 = MEMORY[0x28223BE20](v192);
  v193 = v162 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v52;
  MEMORY[0x28223BE20](v51);
  v54 = v162 - v53;
  v200[3] = type metadata accessor for FlowResponse.Step.Action(0);
  v200[4] = &off_2859DA2E8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v200);
  sub_247C57E10(v6, boxed_opaque_existential_0, type metadata accessor for FlowResponse.Step.Action);
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v56 = qword_27EE72D00;
  v57 = *(qword_27EE72D00 + 16);

  [v57 lock];
  sub_247CAD9C4(v56, &_s19AnalyticsManagerKeyON, &v203);
  [v57 unlock];
  sub_247C3D044(&v203, v199);

  sub_247C89884(v200, v54);
  v195 = v8;
  v58 = sub_247D1FEC8();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v61 = v190;
  v189 = v58;
  v180 = v60;
  v173 = (v59 + 56);
  (v60)(v190, 1, 1);
  v177 = v54;
  v62 = v54;
  v63 = v193;
  sub_247C57E10(v62, v193, _s5StateVMa);
  v64 = sub_247D1FEA8();
  v65 = v198;
  v66 = v196;
  sub_247C2BD10(v196, &v203, &qword_27EE63248);
  v172 = v64;
  v67 = sub_247D1FE98();
  v68 = (*(v188 + 80) + 40) & ~*(v188 + 80);
  v69 = (v191 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v194 = *(v188 + 80);
  v70 = swift_allocObject();
  v71 = MEMORY[0x277D85700];
  v70[2] = v67;
  v70[3] = v71;
  v198 = v65;
  v70[4] = v65;
  sub_247C5F1AC(v63, v70 + v68, _s5StateVMa);
  v72 = v70 + v69;
  v73 = *(v66 + 16);
  *v72 = *v66;
  *(v72 + 1) = v73;
  *(v72 + 4) = *(v66 + 32);
  sub_247C2D2D0(0, 0, v61, &unk_247D24498, v70);

  v74 = *(v66 + 16);
  if (v74)
  {
    v202 = *v196;
    v201 = *(v196 + 24);
    sub_247C250C8();
    v75 = swift_allocError();
    *v76 = v202;
    *(v76 + 16) = v74;
    *(v76 + 24) = v201;
  }

  else
  {
    v75 = 0;
  }

  v77 = v183;
  v78 = v184;
  v79 = v187;
  sub_247C2BD10(v196, &v203, &qword_27EE63248);
  v80 = v177;
  v81 = v198;
  sub_247CA29C8(v177, v75);

  v82 = sub_247CD0E40();
  v83 = [v82 visibleViewController];

  if (v83)
  {
    type metadata accessor for CosmeticDiagnosticsViewController(0);
    v84 = swift_dynamicCastClass();
    if (!v84)
    {

      goto LABEL_16;
    }

    v188 = v84;
    v85 = *(v80 + *(v192 + 40) + *(v78 + 20));
    v86 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
    swift_beginAccess();
    sub_247C2BD10(v85 + v86, v77, &unk_27EE63230);
    v87 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
    v88 = (*(v87 - 8) + 48);
    v89 = *v88;
    if ((*v88)(v77, 1, v87) == 1)
    {

      sub_247C27100(v77, &unk_27EE63230);
LABEL_15:
      v81 = v198;
      v79 = v187;
      v80 = v177;
      goto LABEL_16;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_247C5E468(v77, type metadata accessor for FlowResponse.Step.OneOf_Contents);
      goto LABEL_15;
    }

    sub_247C5E468(v77, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    v90 = v85 + v86;
    v91 = v164;
    sub_247C2BD10(v90, v164, &unk_27EE63230);
    if (v89(v91, 1, v87) == 1)
    {
      sub_247C27100(v91, &unk_27EE63230);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v138 = v177;
      if (EnumCaseMultiPayload == 1)
      {
        v139 = v165;
        sub_247C5F1AC(v91, v165, type metadata accessor for FlowResponse.Step.CosmeticCapture);
LABEL_75:
        sub_247C4A974(v139, v138);

        sub_247C5E468(v139, type metadata accessor for FlowResponse.Step.CosmeticCapture);
        sub_247C27100(v199, &unk_27EE631F0);
        sub_247C5E468(v138, _s5StateVMa);
        return __swift_destroy_boxed_opaque_existential_1(v200);
      }

      sub_247C5E468(v91, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    }

    v139 = v165;
    *v165 = 0;
    *(v139 + 1) = 0xE000000000000000;
    *(v139 + 2) = 0;
    *(v139 + 3) = 0xE000000000000000;
    *(v139 + 4) = 0;
    *(v139 + 5) = 0xE000000000000000;
    *(v139 + 6) = MEMORY[0x277D84F90];
    v155 = v163;
    sub_247D1F188();
    v156 = v155[9];
    v157 = type metadata accessor for FileUploadToken(0);
    (*(*(v157 - 8) + 56))(&v139[v156], 1, 1, v157);
    v158 = v155[10];
    v159 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v160 = *(*(v159 - 8) + 56);
    v160(&v139[v158], 1, 1, v159);
    v160(&v139[v155[11]], 1, 1, v159);
    v138 = v177;
    goto LABEL_75;
  }

LABEL_16:
  sub_247C5F368(v200, &v203);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63240);
  v92 = v181;
  v93 = v186;
  v94 = swift_dynamicCast();
  v95 = *(v185 + 56);
  if (v94)
  {
    v95(v92, 0, 1, v93);
    v96 = v176;
    sub_247C5F1AC(v92, v176, type metadata accessor for FlowResponse.Step.HiddenAction);
    v97 = v197;
    v98 = v182;
    if (*(v96 + 24) == 1 && ((1 << *(v96 + 16)) & 0x35) == 0)
    {
      v134 = sub_247C9521C(v80);
      v135 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v135 setModalInPresentation_];
      [v135 setModalPresentationStyle_];
      v136 = sub_247C95044();
      [v136 presentViewController:v135 animated:1 completion:0];

      sub_247C5E468(v96, type metadata accessor for FlowResponse.Step.HiddenAction);
      goto LABEL_47;
    }

    sub_247C5E468(v96, type metadata accessor for FlowResponse.Step.HiddenAction);
  }

  else
  {
    v95(v92, 1, 1, v93);
    sub_247C27100(v92, &qword_27EE63228);
    v97 = v197;
    v98 = v182;
  }

  v99 = *(v80 + *(v192 + 40) + *(v78 + 20));
  v100 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(v99 + v100, v79, &unk_27EE63230);
  v101 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v101 - 8) + 48))(v79, 1, v101) == 1)
  {
    v102 = sub_247C27100(v79, &unk_27EE63230);
    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v102 = sub_247C5E468(v79, type metadata accessor for FlowResponse.Step.OneOf_Contents);
LABEL_27:
    MEMORY[0x28223BE20](v102);
    v162[-2] = v200;
    v106 = v179;
    sub_247C41130(sub_247C6164C, v107, type metadata accessor for FlowResponse.Step, type metadata accessor for FlowResponse.Step, type metadata accessor for FlowResponse.Step, type metadata accessor for FlowResponse.Step, v179);
    if ((*(v178 + 48))(v106, 1, v78) == 1)
    {
      sub_247C27100(v106, &qword_27EE63218);
      v108 = sub_247C9521C(v80);
      v109 = sub_247CD0E40();
      sub_247C3FA88(v175);

      v110 = *&v81[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_247D24040;
      *(v111 + 32) = v108;
      sub_247C3194C(0, &qword_27EE63250);
      v112 = v108;
      v113 = v110;
      v114 = sub_247D1FDB8();

      [v113 setViewControllers_];

      v80 = v177;
    }

    else
    {
      v115 = v106;
      v116 = v174;
      sub_247C5F1AC(v115, v174, type metadata accessor for FlowResponse.Step);
      v117 = v193;
      sub_247C57E10(v97, v193, _s5StateVMa);
      sub_247C5F9F0(v116, v117 + *(v192 + 40), type metadata accessor for FlowResponse.Step);
      sub_247CA33E4(v117);
      sub_247C5E468(v116, type metadata accessor for FlowResponse.Step);
      sub_247C5E468(v117, _s5StateVMa);
    }

    v118 = [v81 presentedViewController];
    if (v118)
    {

      [v81 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_247CA32F0();
    }

    swift_beginAccess();
    if (*(v99 + 56) != 1)
    {
      goto LABEL_47;
    }

    v119 = *(v99 + 48);
    if (v119 > 3)
    {
      if (v119 > 5)
      {
        if (v119 == 6)
        {
          v120 = 9;
        }

        else
        {
          v120 = 5;
        }
      }

      else if (v119 == 4)
      {
        v120 = 4;
      }

      else
      {
        v120 = 8;
      }
    }

    else
    {
      if (v119 <= 1)
      {
        if (v119)
        {
          v120 = 1;
          goto LABEL_53;
        }

LABEL_47:
        sub_247C27100(v199, &unk_27EE631F0);
LABEL_70:
        sub_247C5E468(v80, _s5StateVMa);
        return __swift_destroy_boxed_opaque_existential_1(v200);
      }

      if (v119 == 2)
      {
        v120 = 2;
      }

      else
      {
        v120 = 3;
      }
    }

LABEL_53:
    if (sub_247C35234(v120) == 0x75737349776F6873 && v140 == 0xEE00646E756F4665)
    {
    }

    else
    {
      v141 = sub_247D20538();

      if ((v141 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v143 = *v196;
    v142 = *(v196 + 1);
    v144 = *(v196 + 2);
    v145 = *(v196 + 3);
    v146 = *(v196 + 4);
    if (!v144)
    {
      sub_247C2BD10(v196, &v203, &qword_27EE63248);
      sub_247C27100(v199, &unk_27EE631F0);
      sub_247C3EF94(v143, v142, 0);
      sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);
LABEL_69:
      v80 = v177;
      goto LABEL_70;
    }

    if (v143 == 11)
    {
      if (v142 == 0xD00000000000002ELL && v144 == 0x8000000247D2D900 || (sub_247D20538() & 1) != 0)
      {
        if (!v145 && v146 == 0xE000000000000000)
        {
          sub_247C2BD10(v196, &v203, &qword_27EE63248);
          sub_247C5F98C(11, v142, v144);
          sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);

          sub_247C3EF94(11, v142, v144);
LABEL_72:
          v149 = v190;
          v180(v190, 1, 1, v189);
          v150 = v81;
          v151 = v196;
          sub_247C2BD10(v196, &v203, &qword_27EE63248);
          v152 = sub_247D1FE98();
          v153 = swift_allocObject();
          *(v153 + 16) = v152;
          *(v153 + 24) = MEMORY[0x277D85700];
          *(v153 + 32) = v150;
          v154 = *(v151 + 16);
          *(v153 + 40) = *v151;
          *(v153 + 56) = v154;
          *(v153 + 72) = *(v151 + 32);
          sub_247C2D2D0(0, 0, v149, &unk_247D244A0, v153);

          sub_247C27100(v199, &unk_27EE631F0);
          sub_247C5E468(v177, _s5StateVMa);
          return __swift_destroy_boxed_opaque_existential_1(v200);
        }

        v148 = sub_247D20538();
        sub_247C2BD10(v196, &v203, &qword_27EE63248);
        sub_247C5F98C(11, v142, v144);
        sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);

        sub_247C3EF94(11, v142, v144);
        if (v148)
        {
          goto LABEL_72;
        }

        goto LABEL_68;
      }

      sub_247C2BD10(v196, &v203, &qword_27EE63248);
      v147 = 11;
    }

    else
    {
      sub_247C2BD10(v196, &v203, &qword_27EE63248);
      v147 = v143;
    }

    sub_247C5F98C(v147, v142, v144);
    sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);

    sub_247C3EF94(v143, v142, v144);
LABEL_68:
    sub_247C27100(v199, &unk_27EE631F0);
    goto LABEL_69;
  }

  sub_247C5F1AC(v79, v98, type metadata accessor for FlowResponse.Step.URL);
  v103 = v169;
  sub_247D1EDF8();
  v104 = v170;
  v105 = v171;
  if ((*(v170 + 48))(v103, 1, v171) == 1)
  {
    sub_247C5E468(v98, type metadata accessor for FlowResponse.Step.URL);
    v102 = sub_247C27100(v103, &qword_27EE63220);
    v78 = v184;
    goto LABEL_27;
  }

  v121 = v194;
  v197 = ~v194;
  v122 = v166;
  (*(v104 + 32))(v166, v103, v105);
  v198 = [objc_opt_self() sharedApplication];
  v123 = v104;
  v124 = sub_247D1EDA8();
  sub_247CD871C(MEMORY[0x277D84F90]);
  v125 = v80;
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_247C61354(&qword_27EE629C0, type metadata accessor for OpenExternalURLOptionsKey);
  v126 = sub_247D1FAF8();

  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = v193;
  sub_247C57E10(v125, v193, _s5StateVMa);
  v129 = v98;
  v130 = (v121 + 24) & v197;
  v131 = swift_allocObject();
  *(v131 + 16) = v127;
  sub_247C5F1AC(v128, v131 + v130, _s5StateVMa);
  v206 = sub_247C616A4;
  v207 = v131;
  *&v203 = MEMORY[0x277D85DD0];
  *(&v203 + 1) = 1107296256;
  v204 = sub_247C57D8C;
  v205 = &block_descriptor_101;
  v132 = _Block_copy(&v203);

  v133 = v198;
  [v198 openURL:v124 options:v126 completionHandler:v132];
  _Block_release(v132);

  (*(v123 + 8))(v122, v171);
  sub_247C27100(v199, &unk_27EE631F0);
  sub_247C5E468(v177, _s5StateVMa);
  sub_247C5E468(v129, type metadata accessor for FlowResponse.Step.URL);
  return __swift_destroy_boxed_opaque_existential_1(v200);
}

uint64_t sub_247C5B128(uint64_t a1)
{
  v196 = MEMORY[0x28223BE20](a1);
  v197 = v1;
  v166 = v2;
  v165 = v3;
  v192 = v4;
  v6 = v5;
  v8 = v7;
  v174 = v9;
  v10 = sub_247D1EF48();
  v194 = *(v10 - 8);
  v195 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v188 = v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v161[2] = v161 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v161[4] = v161 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v181 = (v161 - v18);
  MEMORY[0x28223BE20](v17);
  v172 = v161 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v161[1] = v161 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v161[3] = v161 - v25;
  MEMORY[0x28223BE20](v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63218);
  MEMORY[0x28223BE20](v26 - 8);
  v180 = v161 - v27;
  v184 = type metadata accessor for FlowResponse.Step(0);
  v179 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v173 = v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  MEMORY[0x28223BE20](v29 - 8);
  v167 = v161 - v30;
  v31 = sub_247D1EE08();
  v169 = *(v31 - 8);
  v170 = v31;
  MEMORY[0x28223BE20](v31);
  v168 = v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FlowResponse.Step.URL(0);
  MEMORY[0x28223BE20](v33 - 8);
  v177 = v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63228);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v171 = v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v182 = v161 - v38;
  v39 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v185 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v178 = v161 - v41;
  v162 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v162);
  v164 = v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v183 = (v161 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x28223BE20](v44);
  v163 = v161 - v47;
  MEMORY[0x28223BE20](v46);
  v175 = v161 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v49 - 8);
  v189 = v161 - v50;
  v191 = _s5StateVMa();
  v187 = *(v191 - 8);
  v51 = MEMORY[0x28223BE20](v191);
  v193 = v161 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v52;
  MEMORY[0x28223BE20](v51);
  v54 = v161 - v53;
  v186 = v39;
  v199[3] = v39;
  v199[4] = &off_2859DA2D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v199);
  sub_247C57E10(v6, boxed_opaque_existential_0, type metadata accessor for FlowResponse.Step.HiddenAction);
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v56 = qword_27EE72D00;
  v57 = *(qword_27EE72D00 + 16);

  [v57 lock];
  sub_247CAD9C4(v56, &_s19AnalyticsManagerKeyON, &v202);
  [v57 unlock];
  sub_247C3D044(&v202, v198);

  sub_247C89884(v199, v54);
  v195 = v8;
  v58 = sub_247D1FEC8();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v61 = v189;
  v188 = v58;
  v181 = v60;
  v172 = (v59 + 56);
  (v60)(v189, 1, 1);
  v176 = v54;
  v62 = v54;
  v63 = v193;
  sub_247C57E10(v62, v193, _s5StateVMa);
  v64 = sub_247D1FEA8();
  v65 = v197;
  v66 = v192;
  sub_247C2BD10(v192, &v202, &qword_27EE63248);
  v171 = v64;
  v67 = sub_247D1FE98();
  v68 = (*(v187 + 80) + 40) & ~*(v187 + 80);
  v69 = (v190 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v194 = *(v187 + 80);
  v70 = swift_allocObject();
  v71 = MEMORY[0x277D85700];
  v70[2] = v67;
  v70[3] = v71;
  v197 = v65;
  v70[4] = v65;
  sub_247C5F1AC(v63, v70 + v68, _s5StateVMa);
  v72 = v70 + v69;
  v73 = v66;
  v74 = *(v66 + 16);
  *v72 = *v66;
  *(v72 + 1) = v74;
  *(v72 + 4) = *(v66 + 32);
  sub_247C2D2D0(0, 0, v61, &unk_247D243B0, v70);

  v75 = *(v66 + 16);
  if (v75)
  {
    v201 = *v66;
    v200 = *(v66 + 24);
    sub_247C250C8();
    v76 = swift_allocError();
    *v77 = v201;
    *(v77 + 16) = v75;
    *(v77 + 24) = v200;
  }

  else
  {
    v76 = 0;
  }

  v78 = v183;
  v79 = v184;
  sub_247C2BD10(v73, &v202, &qword_27EE63248);
  v80 = v176;
  v81 = v197;
  sub_247CA29C8(v176, v76);

  v82 = sub_247CD0E40();
  v83 = [v82 visibleViewController];

  v84 = v196;
  if (v83)
  {
    type metadata accessor for CosmeticDiagnosticsViewController(0);
    v85 = swift_dynamicCastClass();
    if (!v85)
    {

      goto LABEL_16;
    }

    v187 = v85;
    v86 = *(v80 + *(v191 + 40) + *(v79 + 20));
    v87 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
    swift_beginAccess();
    v88 = v175;
    sub_247C2BD10(v86 + v87, v175, &unk_27EE63230);
    v89 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
    v183 = *(*(v89 - 8) + 48);
    if (v183(v88, 1, v89) == 1)
    {

      sub_247C27100(v88, &unk_27EE63230);
LABEL_15:
      v73 = v192;
      v84 = v196;
      v81 = v197;
      v80 = v176;
      goto LABEL_16;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_247C5E468(v88, type metadata accessor for FlowResponse.Step.OneOf_Contents);
      goto LABEL_15;
    }

    sub_247C5E468(v88, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    v90 = v86 + v87;
    v91 = v163;
    sub_247C2BD10(v90, v163, &unk_27EE63230);
    if (v183(v91, 1, v89) == 1)
    {
      sub_247C27100(v91, &unk_27EE63230);
      v92 = v164;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v92 = v164;
      if (EnumCaseMultiPayload == 1)
      {
        sub_247C5F1AC(v91, v164, type metadata accessor for FlowResponse.Step.CosmeticCapture);
LABEL_76:
        v160 = v176;
        sub_247C4A974(v92, v176);

        sub_247C5E468(v92, type metadata accessor for FlowResponse.Step.CosmeticCapture);
        sub_247C27100(v198, &unk_27EE631F0);
        v132 = _s5StateVMa;
        v133 = v160;
        goto LABEL_71;
      }

      sub_247C5E468(v91, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    }

    *v92 = 0;
    *(v92 + 1) = 0xE000000000000000;
    *(v92 + 2) = 0;
    *(v92 + 3) = 0xE000000000000000;
    *(v92 + 4) = 0;
    *(v92 + 5) = 0xE000000000000000;
    *(v92 + 6) = MEMORY[0x277D84F90];
    v154 = v162;
    sub_247D1F188();
    v155 = v154[9];
    v156 = type metadata accessor for FileUploadToken(0);
    (*(*(v156 - 8) + 56))(&v92[v155], 1, 1, v156);
    v157 = v154[10];
    v158 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v159 = *(*(v158 - 8) + 56);
    v159(&v92[v157], 1, 1, v158);
    v159(&v92[v154[11]], 1, 1, v158);
    goto LABEL_76;
  }

LABEL_16:
  sub_247C5F368(v199, &v202);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63240);
  v93 = v182;
  v94 = v186;
  v95 = swift_dynamicCast();
  v96 = *(v185 + 56);
  if (v95)
  {
    v96(v93, 0, 1, v94);
    v97 = v93;
    v98 = v178;
    sub_247C5F1AC(v97, v178, type metadata accessor for FlowResponse.Step.HiddenAction);
    if (*(v98 + 24) == 1 && ((1 << *(v98 + 16)) & 0x35) == 0)
    {
      v134 = sub_247C9521C(v80);
      v135 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v135 setModalInPresentation_];
      [v135 setModalPresentationStyle_];
      v136 = sub_247C95044();
      [v136 presentViewController:v135 animated:1 completion:0];

      sub_247C5E468(v98, type metadata accessor for FlowResponse.Step.HiddenAction);
      goto LABEL_47;
    }

    sub_247C5E468(v98, type metadata accessor for FlowResponse.Step.HiddenAction);
  }

  else
  {
    v96(v93, 1, 1, v94);
    sub_247C27100(v93, &qword_27EE63228);
  }

  v99 = *(v80 + *(v191 + 40) + *(v79 + 20));
  v100 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(v99 + v100, v78, &unk_27EE63230);
  v101 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v101 - 8) + 48))(v78, 1, v101) == 1)
  {
    v102 = sub_247C27100(v78, &unk_27EE63230);
    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v102 = sub_247C5E468(v78, type metadata accessor for FlowResponse.Step.OneOf_Contents);
LABEL_27:
    MEMORY[0x28223BE20](v102);
    v161[-2] = v199;
    v106 = v180;
    sub_247C41130(sub_247C5F8A8, v107, type metadata accessor for FlowResponse.Step, type metadata accessor for FlowResponse.Step, type metadata accessor for FlowResponse.Step, type metadata accessor for FlowResponse.Step, v180);
    if ((*(v179 + 48))(v106, 1, v79) == 1)
    {
      sub_247C27100(v106, &qword_27EE63218);
      v108 = sub_247C9521C(v80);
      v109 = sub_247CD0E40();
      sub_247C3FA88(v174);

      v110 = *&v81[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_247D24040;
      *(v111 + 32) = v108;
      sub_247C3194C(0, &qword_27EE63250);
      v112 = v108;
      v113 = v110;
      v114 = sub_247D1FDB8();

      [v113 setViewControllers_];

      v80 = v176;
    }

    else
    {
      v115 = v106;
      v116 = v173;
      sub_247C5F1AC(v115, v173, type metadata accessor for FlowResponse.Step);
      v117 = v193;
      sub_247C57E10(v84, v193, _s5StateVMa);
      sub_247C5F9F0(v116, v117 + *(v191 + 40), type metadata accessor for FlowResponse.Step);
      sub_247CA33E4(v117);
      sub_247C5E468(v116, type metadata accessor for FlowResponse.Step);
      sub_247C5E468(v117, _s5StateVMa);
    }

    v118 = [v81 presentedViewController];
    if (v118)
    {

      [v81 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_247CA32F0();
    }

    swift_beginAccess();
    if (*(v99 + 56) != 1)
    {
      goto LABEL_47;
    }

    v119 = *(v99 + 48);
    if (v119 > 3)
    {
      if (v119 > 5)
      {
        if (v119 == 6)
        {
          v120 = 9;
        }

        else
        {
          v120 = 5;
        }
      }

      else if (v119 == 4)
      {
        v120 = 4;
      }

      else
      {
        v120 = 8;
      }
    }

    else
    {
      if (v119 <= 1)
      {
        if (v119)
        {
          v120 = 1;
          goto LABEL_53;
        }

LABEL_47:
        sub_247C27100(v198, &unk_27EE631F0);
LABEL_70:
        v132 = _s5StateVMa;
        v133 = v80;
        goto LABEL_71;
      }

      if (v119 == 2)
      {
        v120 = 2;
      }

      else
      {
        v120 = 3;
      }
    }

LABEL_53:
    if (sub_247C35234(v120) == 0x75737349776F6873 && v138 == 0xEE00646E756F4665)
    {
    }

    else
    {
      v139 = sub_247D20538();

      if ((v139 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v140 = v73;
    v141 = *v73;
    v142 = *(v140 + 8);
    v143 = *(v140 + 16);
    v145 = *(v140 + 24);
    v144 = *(v140 + 32);
    if (!v143)
    {
      sub_247C2BD10(v140, &v202, &qword_27EE63248);
      sub_247C27100(v198, &unk_27EE631F0);
      sub_247C3EF94(v141, v142, 0);
      sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);
LABEL_69:
      v80 = v176;
      goto LABEL_70;
    }

    if (v141 == 11)
    {
      if (v142 == 0xD00000000000002ELL && v143 == 0x8000000247D2D900 || (sub_247D20538() & 1) != 0)
      {
        if (!v145 && v144 == 0xE000000000000000)
        {
          sub_247C2BD10(v140, &v202, &qword_27EE63248);
          sub_247C5F98C(11, v142, v143);
          sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);

          sub_247C3EF94(11, v142, v143);
LABEL_73:
          v149 = v189;
          v181(v189, 1, 1, v188);
          v150 = v81;
          sub_247C2BD10(v140, &v202, &qword_27EE63248);
          v151 = sub_247D1FE98();
          v152 = swift_allocObject();
          *(v152 + 16) = v151;
          *(v152 + 24) = MEMORY[0x277D85700];
          *(v152 + 32) = v150;
          v153 = *(v140 + 16);
          *(v152 + 40) = *v140;
          *(v152 + 56) = v153;
          *(v152 + 72) = *(v140 + 32);
          sub_247C2D2D0(0, 0, v149, &unk_247D243B8, v152);

          sub_247C27100(v198, &unk_27EE631F0);
          v132 = _s5StateVMa;
          v133 = v176;
          goto LABEL_71;
        }

        v148 = sub_247D20538();
        sub_247C2BD10(v140, &v202, &qword_27EE63248);
        sub_247C5F98C(11, v142, v143);
        sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);

        sub_247C3EF94(11, v142, v143);
        if (v148)
        {
          goto LABEL_73;
        }

        goto LABEL_68;
      }

      sub_247C2BD10(v140, &v202, &qword_27EE63248);
      v146 = 11;
    }

    else
    {
      sub_247C2BD10(v140, &v202, &qword_27EE63248);
      v146 = v141;
    }

    sub_247C5F98C(v146, v142, v143);
    sub_247C3EF94(11, 0xD00000000000002ELL, 0x8000000247D2D900);

    sub_247C3EF94(v141, v142, v143);
LABEL_68:
    sub_247C27100(v198, &unk_27EE631F0);
    goto LABEL_69;
  }

  sub_247C5F1AC(v78, v177, type metadata accessor for FlowResponse.Step.URL);
  v103 = v167;
  sub_247D1EDF8();
  v104 = v169;
  v105 = v170;
  if ((*(v169 + 48))(v103, 1, v170) == 1)
  {
    sub_247C5E468(v177, type metadata accessor for FlowResponse.Step.URL);
    v102 = sub_247C27100(v103, &qword_27EE63220);
    v79 = v184;
    v81 = v197;
    goto LABEL_27;
  }

  v121 = v194;
  v195 = ~v194;
  (*(v104 + 32))();
  v196 = [objc_opt_self() sharedApplication];
  v122 = sub_247D1EDA8();
  sub_247CD871C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  v123 = v104;
  v124 = v80;
  sub_247C61354(&qword_27EE629C0, type metadata accessor for OpenExternalURLOptionsKey);
  v125 = sub_247D1FAF8();

  v126 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v127 = v193;
  sub_247C57E10(v124, v193, _s5StateVMa);
  v128 = (v121 + 24) & v195;
  v129 = swift_allocObject();
  *(v129 + 16) = v126;
  sub_247C5F1AC(v127, v129 + v128, _s5StateVMa);
  v205 = sub_247C5F9D4;
  v206 = v129;
  *&v202 = MEMORY[0x277D85DD0];
  *(&v202 + 1) = 1107296256;
  v203 = sub_247C57D8C;
  v204 = &block_descriptor_3;
  v130 = _Block_copy(&v202);

  v131 = v196;
  [v196 openURL:v122 options:v125 completionHandler:v130];
  _Block_release(v130);

  (*(v123 + 8))(v168, v105);
  sub_247C27100(v198, &unk_27EE631F0);
  sub_247C5E468(v124, _s5StateVMa);
  v132 = type metadata accessor for FlowResponse.Step.URL;
  v133 = v177;
LABEL_71:
  sub_247C5E468(v133, v132);
  return __swift_destroy_boxed_opaque_existential_1(v199);
}

uint64_t sub_247C5DEAC(void *a1, uint64_t a2, char *a3)
{
  v37 = a2;
  v5 = type metadata accessor for FlowResponse(0);
  v36 = *(v5 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247D1F9F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247D1FA38();
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *&a3[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_bufferQueue];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a1;
  v15[4] = &off_2859D8078;
  v45 = sub_247C610CC;
  v46 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v33 = &v43;
  v43 = sub_247CDD038;
  v44 = &block_descriptor_121;
  v16 = _Block_copy(&aBlock);
  v17 = a3;
  v18 = a1;
  sub_247D1FA08();
  v40 = MEMORY[0x277D84F90];
  v32 = sub_247C61354(&qword_27EE632C8, MEMORY[0x277D85198]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
  v30 = sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v14, v10, v16);
  _Block_release(v16);
  v19 = *(v8 + 8);
  v29 = v8 + 8;
  v19(v10, v7);
  v20 = *(v39 + 8);
  v39 += 8;
  v20(v14, v38);

  v28 = *&v17[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_sessionQueue];
  v21 = v34;
  sub_247C57E10(v37, v34, type metadata accessor for FlowResponse);
  v22 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v23 = (v35 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_247C5F1AC(v21, v24 + v22, type metadata accessor for FlowResponse);
  *(v24 + v23) = v17;
  v45 = sub_247C6127C;
  v46 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_247CDD038;
  v44 = &block_descriptor_127;
  v25 = _Block_copy(&aBlock);
  v26 = v17;
  sub_247D1FA08();
  v40 = MEMORY[0x277D84F90];
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v14, v10, v25);
  _Block_release(v25);
  v19(v10, v7);
  v20(v14, v38);
}

unint64_t sub_247C5E3A4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_247C5E3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C491C0(a1, v4, v5, v6);
}

uint64_t sub_247C5E468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C5E4C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_247C5E538()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v33 - v2;
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_minimumRecordedImageShowTime) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_performanceMetrics) = MEMORY[0x277D84F90];
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE72D00;
  v5 = *(qword_27EE72D00 + 16);
  swift_retain_n();
  [v5 lock];
  sub_247CAD9C4(v4, &_s19AnalyticsManagerKeyON, v55);
  v6 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__analytics;
  [v5 unlock];
  sub_247C3D044(v55, v0 + v6);

  v7 = v4[2];
  [v7 lock];
  sub_247CAEF98(v4, &_s26ImageUploadDataProviderKeyON, v56);
  v8 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController__imageUploadDataProvider;
  [v7 unlock];
  sub_247C3D044(v56, v0 + v8);

  sub_247D1F478();
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_candidateRecordedImage) = 0;
  sub_247D1EF38();
  v9 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_captureInitiatedTimeStamp;
  v10 = sub_247D1EF48();
  v11 = *(*(v10 - 8) + 56);
  v11(v0 + v9, 1, 1, v10);
  v11(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_authenticationDurationTimestamp, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_hasRecordedPeerDeviceMotionError) = 0;
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___viewfinder) = 0;
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController____lazy_storage___gradientLayer) = 0;
  v12 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_tiltRecognizerDebugView;
  sub_247C5F214(v35);
  v59[4] = v35[4];
  v59[5] = v35[5];
  v60[0] = v36[0];
  *(v60 + 9) = *(v36 + 9);
  v59[0] = v35[0];
  v59[1] = v35[1];
  v59[2] = v35[2];
  v59[3] = v35[3];
  v13 = objc_allocWithZone(type metadata accessor for TiltRecognizerDebugView());
  v14 = v0;
  *(v0 + v12) = sub_247C8A4F0(v59);
  v15 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_contourDebugView;
  v16 = type metadata accessor for OcclusionDebugView();
  memset(v57, 0, sizeof(v57));
  v58 = 0;
  v17 = objc_allocWithZone(v16);
  *(v0 + v15) = sub_247C83204(v57);
  v18 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_metadataDebugView;
  v19 = type metadata accessor for MetadataDebugView.Configuration(0);
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = objc_allocWithZone(type metadata accessor for MetadataDebugView(0));
  *(v0 + v18) = sub_247C8B310(v3);
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_didConfigureCaptureSession) = 0;
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_isDeviceInFocus) = 0;
  v21 = (v0 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorUIKitFrame);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_objectRecognitionMaskLayer;
  *(v14 + v22) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v23 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_rectangleRecognitionMaskLayer;
  *(v14 + v23) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v24 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_focusIndicatorFrameLayer;
  *(v14 + v24) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v25 = (v14 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_experimentsMeasurements);
  sub_247C5F214(&v37);
  *(v34 + 9) = *(v43 + 9);
  v33[16] = v42;
  v34[0] = v43[0];
  v33[14] = v40;
  v33[15] = v41;
  v33[12] = v38;
  v33[13] = v39;
  v33[11] = v37;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  v47 = v40;
  v50 = v43[0];
  v51 = v34[1];
  v48 = v41;
  v49 = v42;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v55[2] = v39;
  v55[3] = v40;
  v55[0] = v37;
  v55[1] = v38;
  v55[6] = v43[0];
  v55[7] = v34[1];
  v55[4] = v41;
  v55[5] = v42;
  memset(&v55[8], 0, 48);
  sub_247C5F238(&v44, v33);
  sub_247C5F294(v55);
  v26 = v53;
  v25[8] = v52;
  v25[9] = v26;
  v25[10] = v54;
  v27 = v49;
  v25[4] = v48;
  v25[5] = v27;
  v28 = v51;
  v25[6] = v50;
  v25[7] = v28;
  v29 = v45;
  *v25 = v44;
  v25[1] = v29;
  v30 = v47;
  v25[2] = v46;
  v25[3] = v30;
  v31 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_timeoutController;
  type metadata accessor for CaptureTimeoutController();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + v31) = v32;
  sub_247D20398();
  __break(1u);
}

uint64_t sub_247C5EAC8(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  [v1 extent];
  Height = CGRectGetHeight(v16);
  [v1 extent];
  v3 = Height - CGRectGetHeight(v17) / 10.0;
  [v1 extent];
  Width = CGRectGetWidth(v18);
  [v1 extent];
  v5 = CGRectGetHeight(v19) / 10.0;
  [v1 extent];
  v6 = CGRectGetWidth(v20);
  [v1 extent];
  v7 = CGRectGetHeight(v21);
  v8 = [objc_opt_self() areaAverageFilter];
  [v8 setInputImage_];
  v15 = MEMORY[0x277D84F90];
  sub_247D20328();
  v10 = 0;
  v11 = v3;
  v12 = Width;
  v13 = v5;
  sub_247C470FC(v8, &v10, &v14);
  sub_247D20308();
  sub_247D20338();
  sub_247D20348();
  sub_247D20318();
  v10 = 0;
  v11 = 0.0;
  v12 = v6;
  v13 = v7 / 10.0;
  sub_247C470FC(v8, &v10, &v14);
  sub_247D20308();
  sub_247D20338();
  sub_247D20348();
  sub_247D20318();

  return v15;
}

id sub_247C5ECD0()
{
  v1 = v0;
  v2 = _s5StateVMa();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_flowState;
  swift_beginAccess();
  sub_247C57E10(v1 + v6, v5, _s5StateVMa);
  sub_247C2BD10(&v5[*(v3 + 56)], v11, &qword_27EE62FB0);
  sub_247C3D044(v11, v12);
  v7 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
  LOBYTE(v6) = sub_247C7A700();

  sub_247C5E468(v5, _s5StateVMa);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  if (v6)
  {
    v9 = objc_opt_self();
    [v9 begin];
    [*(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_objectRecognitionMaskLayer) removeFromSuperlayer];
    [*(v1 + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_rectangleRecognitionMaskLayer) removeFromSuperlayer];
    return [v9 commit];
  }

  return result;
}

uint64_t sub_247C5EE54(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_247C5EE6C(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_247C5EFBC, v5, v4);
}

uint64_t sub_247C5EFBC()
{
  v2 = *(v0 + 7);
  v1 = *(v0 + 8);
  v3 = *(v0 + 6);
  sub_247D1EF18();
  sub_247D1EE88();
  v5 = v4;
  v0[12] = v4;
  (*(v2 + 8))(v1, v3);
  if (v5 >= 1.0)
  {

    v6 = *(v0 + 1);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_247C5F0C8, 0, 0);
  }
}

uint64_t sub_247C5F0C8()
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

uint64_t sub_247C5F1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_247C5F214(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_247C5F2E8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 40);

  *(a1 + v4) = v3;
  return result;
}

uint64_t sub_247C5F340(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247C5F350(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_247C5F368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_247C5F3D0(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247C27E44;

  return sub_247CA6F7C(a1, v6, v7, v9, v8, v1 + 48, v1 + v5);
}

id sub_247C5F4DC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_247C57DE0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_247C5F4F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(_s5StateVMa() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_247C27E44;

  return sub_247CA6B80(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_247C5F63C(uint64_t a1)
{
  v3 = v2;
  v5 = *(_s5StateVMa() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_247C27E44;

  return sub_247CA5A5C(a1, v8, v9, v11, v10, v1 + 48, v1 + v6, v1 + v7);
}

uint64_t sub_247C5F77C(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247C27E44;

  return sub_247CA3C90(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_247C5F8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247CA5730(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_247C5F98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247C5F9F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C5FA58(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  return sub_247C5F9F0(v3, a1 + *(v4 + 28), type metadata accessor for FlowResponse.Step.CosmeticCapture);
}

_BYTE *sub_247C5FAB8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_247C5FB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_247C5FBE4(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_247C5FC58()
{
  result = qword_27EE632A8;
  if (!qword_27EE632A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE632A8);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 88) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t objectdestroy_42Tm()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64) + v3 + 7;
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = type metadata accessor for FlowResponse(0);
  v7 = *(v6 + 36);
  v8 = sub_247D1F198();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = v5 + *(v6 + 40);
  v11 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v9(v10 + *(v11 + 24), v8);
  }

  v12 = v4 & 0xFFFFFFFFFFFFFFF8;

  v13 = v5 + v1[8];

  if (*(v13 + 112))
  {
  }

  v14 = v1[9];
  v15 = sub_247D1F488();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v9(v5 + v1[10], v8);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v5 + v1[12]);
  v16 = *(v0 + v12 + 8);
  if (v16 != 255)
  {
    sub_247C57E04(*(v0 + v12), v16 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + 9, v2 | 7);
}

uint64_t sub_247C6032C(uint64_t a1)
{
  v3 = v2;
  v5 = *(_s5StateVMa() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_247C2793C;

  return sub_247CA6B80(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_46Tm()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 88) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, ((v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 40, v2 | 7);
}

uint64_t objectdestroy_50Tm()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64) + v3 + 7;
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = type metadata accessor for FlowResponse(0);
  v7 = *(v6 + 36);
  v8 = sub_247D1F198();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = v5 + *(v6 + 40);
  v11 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v9(v10 + *(v11 + 24), v8);
  }

  v12 = v4 & 0xFFFFFFFFFFFFFFF8;

  v13 = v5 + v1[8];

  if (*(v13 + 112))
  {
  }

  v14 = v1[9];
  v15 = sub_247D1F488();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v9(v5 + v1[10], v8);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v5 + v1[12]);
  if (*(v0 + v12 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v12 + 40, v2 | 7);
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_247C60B00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C2793C;

  return sub_247CA5730(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_61Tm()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v15 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_247C60EB4(uint64_t a1)
{
  v3 = *(_s5StateVMa() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_247CA4F3C(a1, v4, v5);
}

uint64_t sub_247C60F28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247C60FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C44B98(a1, v4, v5, v6);
}

uint64_t sub_247C6108C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247C610D8()
{
  v1 = (type metadata accessor for FlowResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  v6 = sub_247D1F198();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + v1[12];
  v9 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v7(v8 + *(v9 + 24), v6);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

void sub_247C6127C()
{
  v1 = *(type metadata accessor for FlowResponse(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_247CDD090(v0 + v2, v3);
}

uint64_t sub_247C61310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247C61354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247C613D0()
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

void sub_247C614D0(void *a1)
{
  v3 = *(type metadata accessor for FlowResponse.Step.Action(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_247C46E64(a1, v4, v5);
}

uint64_t sub_247C61544(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  return sub_247C615A0(v3, a1 + *(v4 + 48), &unk_27EE631A0);
}

uint64_t sub_247C615A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_247C616AC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = [v2 isDeviceMotionAvailable];
  oslog = sub_247D1F468();
  if (v3)
  {
    v4 = sub_247D20058();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_247C1F000, oslog, v4, "Starting motion updates", v5, 2u);
      MEMORY[0x24C1B9080](v5, -1, -1);
    }

    [v2 setDeviceMotionUpdateInterval_];
    v6 = *(v1 + 32);
    v7 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_247C62BE0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247C62114;
    aBlock[3] = &block_descriptor_4;
    v8 = _Block_copy(aBlock);

    [v2 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v6 withHandler:v8];
    _Block_release(v8);
  }

  else
  {
    v9 = sub_247D20038();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_247C1F000, oslog, v9, "Failed to start motion updates. Device motion not available", v10, 2u);
      MEMORY[0x24C1B9080](v10, -1, -1);
    }
  }
}

void sub_247C618CC(void *a1, void *a2)
{
  v4 = type metadata accessor for DeviceAttitude();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v35 - v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v12 = a2;
      sub_247C61D2C();
    }

    else if (a1)
    {
      v13 = a1;
      v14 = [v13 attitude];
      sub_247D1F478();
      [v14 pitch];
      *v9 = v15;
      [v14 roll];
      v9[1] = v16;
      [v14 yaw];
      v18 = v17;

      v9[2] = v18;
      sub_247C62C00(v9, v7);
      v19 = sub_247D1F468();
      v20 = sub_247D20058();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v35 = v13;
        v36 = 0;
        v23 = v22;
        *v21 = 136315138;
        v37 = 0xE000000000000000;
        v38 = v22;
        sub_247D1FFA8();
        MEMORY[0x24C1B7B80](59, 0xE100000000000000);
        sub_247D1FFA8();
        MEMORY[0x24C1B7B80](59, 0xE100000000000000);
        sub_247D1FFA8();
        v24 = v36;
        v25 = v37;
        sub_247C62C64(v7);
        v26 = sub_247CB03B4(v24, v25, &v38);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_247C1F000, v19, v20, "Updating: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v27 = v23;
        v13 = v35;
        MEMORY[0x24C1B9080](v27, -1, -1);
        MEMORY[0x24C1B9080](v21, -1, -1);
      }

      else
      {

        v28 = sub_247C62C64(v7);
      }

      v32 = *(v11 + 24);
      MEMORY[0x28223BE20](v28);
      *(&v35 - 2) = v9;
      v33 = *(*v32 + *MEMORY[0x277D841D0] + 16);
      v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v32 + v34));
      sub_247C62CC0(v32 + v33);
      os_unfair_lock_unlock((v32 + v34));

      sub_247C62C64(v9);
    }

    else
    {
      v29 = sub_247D1F468();
      v30 = sub_247D20038();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_247C1F000, v29, v30, "Failed to get device motion data", v31, 2u);
        MEMORY[0x24C1B9080](v31, -1, -1);
      }
    }
  }
}

uint64_t sub_247C61D2C()
{
  v0 = sub_247D1EC98();
  v1 = sub_247D1F468();
  v2 = sub_247D20038();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v0;
    *v4 = v0;
    v5 = v0;
    _os_log_impl(&dword_247C1F000, v1, v2, "Failed to get device motion data with error: %@", v3, 0xCu);
    sub_247C27100(v4, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v4, -1, -1);
    MEMORY[0x24C1B9080](v3, -1, -1);
  }

  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v6 = qword_27EE72D00;
  v7 = *(qword_27EE72D00 + 16);

  [v7 lock];
  sub_247CAD9C4(v6, &_s19AnalyticsManagerKeyON, v21);
  [v7 unlock];
  sub_247C3D044(v21, v22);

  sub_247C2BD10(v22, __dst, &unk_27EE631F0);
  sub_247C3D044(__dst, v17);
  v8 = v19;
  v16 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  LOBYTE(__dst[0]) = 1;
  LOBYTE(__src[0]) = 1;
  v9 = v0;
  v10 = [v0 code];
  v11 = [v9 localizedDescription];
  v12 = sub_247D1FBE8();
  v14 = v13;

  *&__src[0] = 0;
  BYTE8(__src[0]) = 1;
  *&__src[1] = 0;
  BYTE8(__src[1]) = 1;
  *&__src[2] = v10;
  BYTE8(__src[2]) = 0;
  *&__src[3] = v12;
  *(&__src[3] + 1) = v14;
  memset(&__src[4], 0, 96);
  LOBYTE(__src[10]) = 1;
  *(&__src[10] + 1) = 0;
  *&__src[11] = 0;
  *(&__src[11] + 8) = xmmword_247D23E90;
  WORD4(__src[12]) = 514;
  memset(&__src[13], 0, 176);
  LOBYTE(__src[24]) = 1;
  *(&__src[24] + 1) = 0xD000000000000011;
  *&__src[25] = 0x8000000247D2EDB0;
  memcpy(__dst, __src, 0x198uLL);
  (*(v8 + 8))(__dst, v16, v8);
  sub_247C318F8(__src);

  sub_247C27100(v22, &unk_27EE631F0);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_247C62080(uint64_t a1, uint64_t a2)
{
  sub_247C27100(a1, &unk_27EE631A0);
  sub_247C62C00(a2, a1);
  v4 = type metadata accessor for DeviceAttitude();
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

void sub_247C62114(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_247C621A0()
{
  v1 = v0;
  v2 = sub_247D1F468();
  v3 = sub_247D20058();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_247C1F000, v2, v3, "Stopping", v4, 2u);
    MEMORY[0x24C1B9080](v4, -1, -1);
  }

  v5 = *(v1 + 16);

  return [v5 stopDeviceMotionUpdates];
}

BOOL sub_247C6225C(uint64_t a1)
{
  v62 = type metadata accessor for DeviceAttitude();
  v68 = *(v62 - 8);
  v3 = MEMORY[0x28223BE20](v62);
  v58 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v67 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v54 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v63 = *(v1 + 16);
  v60 = [v63 isDeviceMotionActive];
  v24 = *(v1 + 24);
  v25 = *(*v24 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v24 + v26));
  sub_247C2BD10(v24 + v25, v23, &unk_27EE631A0);
  os_unfair_lock_unlock((v24 + v26));

  v65 = v23;
  v27 = v23;
  v28 = v18;
  sub_247C2BD10(v27, v21, &unk_27EE631A0);
  v59 = a1;
  sub_247C2BD10(a1, v18, &unk_27EE631A0);
  v29 = sub_247D1F468();
  v30 = sub_247D20058();
  if (os_log_type_enabled(v29, v30))
  {
    v56 = v30;
    v57 = v29;
    v31 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v71 = v55;
    *v31 = 67109634;
    *(v31 + 4) = v60;
    *(v31 + 8) = 2080;
    sub_247C2BD10(v21, v15, &unk_27EE631A0);
    v32 = v62;
    v33 = *(v68 + 48);
    if (v33(v15, 1, v62) == 1)
    {
      sub_247C27100(v15, &unk_27EE631A0);
      v34 = 0xE400000000000000;
      v35 = 1701736270;
    }

    else
    {
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_247D1FFA8();
      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      sub_247D1FFA8();
      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      sub_247D1FFA8();
      v35 = v69;
      v34 = v70;
      sub_247C62C64(v15);
    }

    sub_247C27100(v21, &unk_27EE631A0);
    v37 = sub_247CB03B4(v35, v34, &v71);

    *(v31 + 10) = v37;
    *(v31 + 18) = 2080;
    v38 = v61;
    sub_247C2BD10(v28, v61, &unk_27EE631A0);
    if (v33(v38, 1, v32) == 1)
    {
      sub_247C27100(v38, &unk_27EE631A0);
      v39 = 0xE400000000000000;
      v36 = v64;
      v40 = v57;
      v41 = 1701736270;
    }

    else
    {
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_247D1FFA8();
      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      sub_247D1FFA8();
      MEMORY[0x24C1B7B80](59, 0xE100000000000000);
      sub_247D1FFA8();
      v41 = v69;
      v39 = v70;
      sub_247C62C64(v38);
      v36 = v64;
      v40 = v57;
    }

    sub_247C27100(v28, &unk_27EE631A0);
    v42 = sub_247CB03B4(v41, v39, &v71);

    *(v31 + 20) = v42;
    _os_log_impl(&dword_247C1F000, v40, v56, "%{BOOL}d;%s;%s", v31, 0x1Cu);
    v43 = v55;
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v43, -1, -1);
    MEMORY[0x24C1B9080](v31, -1, -1);
  }

  else
  {

    sub_247C27100(v28, &unk_27EE631A0);
    sub_247C27100(v21, &unk_27EE631A0);
    v32 = v62;
    v36 = v64;
  }

  v44 = [v63 isDeviceMotionActive];
  v45 = v67;
  v46 = v68;
  v48 = v65;
  v47 = v66;
  if (v44)
  {
    sub_247C2BD10(v65, v36, &unk_27EE631A0);
    v49 = *(v46 + 48);
    if (v49(v36, 1, v32) == 1)
    {
      sub_247C27100(v48, &unk_27EE631A0);
      v50 = 0;
      v48 = v36;
    }

    else
    {
      sub_247C63038(v36, v45);
      sub_247C2BD10(v59, v47, &unk_27EE631A0);
      if (v49(v47, 1, v32) == 1)
      {
        sub_247C62C64(v45);
        sub_247C27100(v48, &unk_27EE631A0);
        v50 = 0;
        v48 = v47;
      }

      else
      {
        v52 = v47;
        v53 = v58;
        sub_247C63038(v52, v58);
        v50 = sub_247C91B68(v53);
        sub_247C62C64(v53);
        sub_247C62C64(v45);
      }
    }
  }

  else
  {
    v50 = 0;
  }

  sub_247C27100(v48, &unk_27EE631A0);
  return v50;
}

uint64_t sub_247C629F0()
{

  v1 = OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor23DeviceBackAuthenticator_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s23DeviceBackAuthenticatorCMa()
{
  result = qword_27EE63320;
  if (!qword_27EE63320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C62AF8()
{
  result = sub_247D1F488();
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

uint64_t sub_247C62BA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247C62C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceAttitude();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C62C64(uint64_t a1)
{
  v2 = type metadata accessor for DeviceAttitude();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247C62CDC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DeviceAttitude();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63330);
  v11 = swift_allocObject();
  *(v11 + ((*(*v11 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v12 = MEMORY[0x277D841D0];
  sub_247C5FB38(v8, v11 + *(*v11 + *MEMORY[0x277D841D0] + 16));
  *(v1 + 24) = v11;
  sub_247D1F478();
  *(v1 + 16) = a1;
  v10(v8, 1, 1, v9);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_247C2BD10(v8, v6, &unk_27EE631A0);
  v14 = a1;
  sub_247C27100(v8, &unk_27EE631A0);
  sub_247C5FB38(v6, v13 + *(*v13 + *v12 + 16));
  *(v1 + 24) = v13;

  v15 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v1 + 32) = v15;
  v16 = v15;
  v17 = sub_247D1FBB8();
  [v16 setName_];

  [*(v1 + 32) setMaxConcurrentOperationCount_];
  return v1;
}

uint64_t sub_247C63038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceAttitude();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_247C63124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247C6316C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_247C631CC(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v23 = MEMORY[0x277D84F90];
    sub_247CE2324(0, v5, 0);
    v8 = v23;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v19[0] = *(i - 8);
      v20 = v10;
      v11 = v10;
      a1(&v21, v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v12 = v21;
      v13 = v22;
      v23 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v22;
        v18 = v21;
        sub_247CE2324((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v18;
        v8 = v23;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 32 * v15;
      *(v16 + 32) = v12;
      *(v16 + 48) = v13;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_247C63300(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for FlowResponse.Step(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_247CE23C8(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_247CE23C8(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_247C74EA0(v9, v11 + v18 + v15 * v13, type metadata accessor for FlowResponse.Step);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247C634A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_247CE2470(0, v1, 0);
    v2 = v14;
    v4 = type metadata accessor for FlowResponse.Step(0);
    v5 = a1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
    v6 = *(*(v4 - 8) + 72);
    do
    {
      v7 = *(v5 + *(v4 + 20));
      swift_beginAccess();
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_247CE2470((v10 > 1), v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_247C63600(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(type metadata accessor for FlowResponse.Step(0) - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

unint64_t sub_247C636CC(char a1)
{
  result = 0x65746164696C6176;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      return result;
    case 4:
    case 8:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_247C63878()
{
  sub_247D20618();
  MEMORY[0x24C1B84E0](0);
  return sub_247D20658();
}

uint64_t sub_247C638E4()
{
  sub_247D20618();
  MEMORY[0x24C1B84E0](0);
  return sub_247D20658();
}

void sub_247C63940(uint64_t a1)
{
  v125 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288);
  MEMORY[0x28223BE20](v1 - 8);
  v119 = v104 - v2;
  v118 = type metadata accessor for Metadata(0);
  v3 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v121 = (v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v104 - v6;
  v8 = type metadata accessor for FileUploadToken(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v120 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  MEMORY[0x28223BE20](v11 - 8);
  v117 = v104 - v12;
  v116 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v116);
  v123 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63218);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v128 = v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v130 = (v104 - v17);
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    sub_247D1FBE8();
  }

  sub_247D1FC78();

  has_internal_ui = os_variant_has_internal_ui();

  v21 = v128;
  if (!has_internal_ui)
  {
    type metadata accessor for FlowResponseValidator();
    v130 = sub_247D1F468();
    v97 = sub_247D20058();
    if (os_log_type_enabled(v130, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_247C1F000, v130, v97, "Skip overrides.", v98, 2u);
      MEMORY[0x24C1B9080](v98, -1, -1);
    }

    v99 = v130;

    return;
  }

  sub_247C2BD10(v126, &v131, &qword_27EE62FB0);
  sub_247C3F2A4(&v131, v134);
  v122 = *__swift_project_boxed_opaque_existential_1(v134, v134[3]);
  __swift_destroy_boxed_opaque_existential_1(v134);
  v115 = v7;
  v22 = 0;
  v112 = (v9 + 56);
  v114 = (v9 + 48);
  v108 = (v3 + 56);
  v113 = (v3 + 48);
  v124 = 0x8000000247D2EF10;
  v111 = 0x8000000247D2EF30;
  v107 = "itiationCommandTimeout";
  v106 = "inlineAlertCoolOffDuration";
  v105 = 0xD000000000000010;
  v104[1] = "validatesTiltAndRotation";
  *&v23 = 136446210;
  v110 = v23;
  *&v23 = 136446466;
  v109 = v23;
  v104[0] = "Front_White_Cropped";
  v127 = v8;
  while (1)
  {
    v26 = *(&unk_2859D5D58 + v22 + 32);
    if (v26 > 0xE)
    {
      if (v26 == 15)
      {
        v129 = 0xD000000000000015;
        v27 = v134;
      }

      else
      {
        if (v26 != 16)
        {
LABEL_16:
          type metadata accessor for FlowResponseValidator();
          v28 = sub_247D1F468();
          v29 = sub_247D20058();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v131 = v31;
            *v30 = v110;
            v32 = sub_247C78AE8(v26);
            v34 = sub_247CB03B4(v32, v33, &v131);
            v21 = v128;

            *(v30 + 4) = v34;
            v8 = v127;
            _os_log_impl(&dword_247C1F000, v28, v29, "No key for override: %{public}s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v31);
            MEMORY[0x24C1B9080](v31, -1, -1);
            MEMORY[0x24C1B9080](v30, -1, -1);
          }

          goto LABEL_8;
        }

        v129 = 0xD000000000000026;
        v27 = &v131 + 8;
      }
    }

    else if (v26 == 7)
    {
      v129 = v105;
      v27 = &v133;
    }

    else
    {
      if (v26 != 8)
      {
        goto LABEL_16;
      }

      v129 = 0xD000000000000017;
      v27 = &v132;
    }

    v35 = *(v27 - 32);
    v36 = type metadata accessor for FlowResponse.Step(0);
    v37 = *(v36 - 8);
    v38 = v130;
    (*(v37 + 56))(v130, 1, 1, v36);
    sub_247C2BD10(v38, v21, &qword_27EE63218);
    if ((*(v37 + 48))(v21, 1, v36) == 1)
    {
      sub_247C27100(v21, &qword_27EE63218);
      v39 = 0;
      v40 = 0;
      v41 = 0xE000000000000000;
      goto LABEL_23;
    }

    v43 = *(v21 + *(v36 + 20));
    v44 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
    swift_beginAccess();
    v45 = v117;
    sub_247C2BD10(v43 + v44, v117, &unk_27EE63230);
    v46 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
      sub_247C27100(v45, &unk_27EE63230);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v123;
        sub_247C74EA0(v45, v123, type metadata accessor for FlowResponse.Step.CosmeticCapture);
        v48 = v119;
        v49 = v118;
        v50 = v116;
        goto LABEL_37;
      }

      sub_247C74DAC(v45, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    }

    v47 = v123;
    *v123 = 0;
    *(v47 + 1) = 0xE000000000000000;
    *(v47 + 2) = 0;
    *(v47 + 3) = 0xE000000000000000;
    *(v47 + 4) = 0;
    *(v47 + 5) = 0xE000000000000000;
    *(v47 + 6) = MEMORY[0x277D84F90];
    v50 = v116;
    sub_247D1F188();
    (*v112)(&v47[v50[9]], 1, 1, v8);
    v52 = v50[10];
    v53 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v54 = *(*(v53 - 8) + 56);
    v54(&v47[v52], 1, 1, v53);
    v54(&v47[v50[11]], 1, 1, v53);
    v8 = v127;
    v48 = v119;
    v49 = v118;
LABEL_37:
    sub_247C74DAC(v128, type metadata accessor for FlowResponse.Step);
    v55 = &v47[v50[9]];
    v56 = v115;
    sub_247C2BD10(v55, v115, &qword_27EE63290);
    v57 = *v114;
    if ((*v114)(v56, 1, v8) == 1)
    {
      v58 = v120;
      *v120 = 0;
      *(v58 + 1) = 0xE000000000000000;
      *(v58 + 2) = 0;
      *(v58 + 3) = 0xE000000000000000;
      *(v58 + 4) = 0;
      *(v58 + 5) = 0xE000000000000000;
      *(v58 + 6) = 0;
      *(v58 + 7) = 0xE000000000000000;
      sub_247D1F188();
      (*v108)(&v58[*(v8 + 36)], 1, 1, v49);
      v59 = v58;
      if (v57(v56, 1, v8) != 1)
      {
        sub_247C27100(v56, &qword_27EE63290);
      }
    }

    else
    {
      v59 = v120;
      sub_247C74EA0(v56, v120, type metadata accessor for FileUploadToken);
    }

    sub_247C2BD10(&v59[*(v8 + 36)], v48, &qword_27EE63288);
    v60 = *v113;
    if ((*v113)(v48, 1, v49) == 1)
    {
      v61 = v121;
      *v121 = 0;
      v61[1] = 0xE000000000000000;
      v61[2] = 0;
      v61[3] = 0xE000000000000000;
      v61[4] = 0;
      v61[5] = 0xE000000000000000;
      sub_247D1F188();
      sub_247C74DAC(v59, type metadata accessor for FileUploadToken);
      v62 = v49;
      v63 = v61;
      v8 = v127;
      if (v60(v48, 1, v62) != 1)
      {
        sub_247C27100(v48, &qword_27EE63288);
      }
    }

    else
    {
      sub_247C74DAC(v59, type metadata accessor for FileUploadToken);
      v63 = v121;
      sub_247C74EA0(v48, v121, type metadata accessor for Metadata);
    }

    v40 = *v63;
    v41 = v63[1];

    sub_247C74DAC(v63, type metadata accessor for Metadata);
    sub_247C74DAC(v123, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    v39 = v40 == 0xD000000000000013;
    if (v40 == 0xD000000000000013 && v124 == v41)
    {
LABEL_47:

      v51 = 1;
      goto LABEL_48;
    }

LABEL_23:
    if (sub_247D20538())
    {
      goto LABEL_47;
    }

    v42 = v111 == v41 && v39;
    if (v42 || (sub_247D20538() & 1) != 0)
    {

      v51 = 0;
    }

    else if (v40 == 0x5F414E5F6B636142 && v41 == 0xEF646570706F7243)
    {

      v51 = 2;
    }

    else
    {
      v96 = sub_247D20538();

      v51 = (v96 & 1) != 0 ? 2 : 3;
    }

LABEL_48:
    v64 = sub_247C78D90(v26, v51, 0);
    v66 = v65;
    sub_247C27100(v130, &qword_27EE63218);
    if (!v66)
    {
      type metadata accessor for FlowResponseValidator();

      v83 = sub_247D1F468();
      v84 = sub_247D20058();

      v85 = os_log_type_enabled(v83, v84);
      v86 = v129;
      if (v85)
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v131 = v88;
        *v87 = v110;
        v89 = sub_247CB03B4(v86, v35 | 0x8000000000000000, &v131);

        *(v87 + 4) = v89;
        _os_log_impl(&dword_247C1F000, v83, v84, "No override value for root key: %{public}s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        v90 = v88;
        v8 = v127;
        MEMORY[0x24C1B9080](v90, -1, -1);
        MEMORY[0x24C1B9080](v87, -1, -1);
      }

      else
      {
      }

      goto LABEL_7;
    }

    type metadata accessor for FlowResponseValidator();

    v67 = sub_247D1F468();
    v68 = sub_247D20058();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v129;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v131 = v72;
      *v71 = v109;
      *(v71 + 4) = sub_247CB03B4(v70, v35 | 0x8000000000000000, &v131);
      *(v71 + 12) = 2082;
      *(v71 + 14) = sub_247CB03B4(v64, v66, &v131);
      _os_log_impl(&dword_247C1F000, v67, v68, "Override root key: %{public}s with value: %{public}s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B9080](v72, -1, -1);
      MEMORY[0x24C1B9080](v71, -1, -1);
    }

    v73 = v125;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(v73 + 48);
    *&v131 = v75;
    v77 = sub_247CCFDA8(v70, v35 | 0x8000000000000000);
    v78 = *(v75 + 16);
    v79 = (v76 & 1) == 0;
    v25 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      break;
    }

    v80 = v76;
    if (*(v75 + 24) >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v82 = v131;
        if ((v76 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v25 = sub_247CB14C8();
        v82 = v131;
        if ((v80 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      sub_247CD6C9C(v25, isUniquelyReferenced_nonNull_native);
      v25 = sub_247CCFDA8(v70, v35 | 0x8000000000000000);
      if ((v80 & 1) != (v81 & 1))
      {
        goto LABEL_80;
      }

      v77 = v25;
      v82 = v131;
      if ((v80 & 1) == 0)
      {
LABEL_60:
        v82[(v77 >> 6) + 8] |= 1 << v77;
        v91 = (v82[6] + 16 * v77);
        *v91 = v70;
        v91[1] = v35 | 0x8000000000000000;
        v92 = (v82[7] + 16 * v77);
        *v92 = v64;
        v92[1] = v66;
        v93 = v82[2];
        v94 = __OFADD__(v93, 1);
        v95 = v93 + 1;
        if (v94)
        {
          goto LABEL_79;
        }

        v82[2] = v95;
        goto LABEL_6;
      }
    }

    v24 = (v82[7] + 16 * v77);
    *v24 = v64;
    v24[1] = v66;

LABEL_6:
    *(v125 + 48) = v82;
    v8 = v127;
LABEL_7:
    v21 = v128;
LABEL_8:
    if (++v22 == 22)
    {
      v100 = v125;
      v101 = *(v125 + 32);
      MEMORY[0x28223BE20](v25);
      v102 = v122;
      v104[-2] = v126;
      v104[-1] = v102;
      v103 = sub_247C63300(sub_247C74E80, &v104[-4], v101);

      *(v100 + 32) = v103;
      return;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_247D20578();
  __break(1u);
}

uint64_t sub_247C64AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v177 = a3;
  v185 = a2;
  v157 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v171 = v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v170 = v155 - v8;
  v9 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v202 = *(v9 - 8);
  v203 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v169 = (v155 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288);
  MEMORY[0x28223BE20](v14 - 8);
  v165 = v155 - v15;
  v172 = type metadata accessor for Metadata(0);
  v205 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v164 = (v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v17 - 8);
  v176 = v155 - v18;
  v197 = type metadata accessor for FileUploadToken(0);
  v19 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v163 = v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v21 = MEMORY[0x28223BE20](v191);
  v187 = v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v173 = v155 - v24;
  MEMORY[0x28223BE20](v23);
  v198 = v155 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63218);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v196 = v155 - v30;
  v31 = type metadata accessor for FlowResponse.Step(0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v195 = v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v168 = v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v186 = v155 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v167 = v155 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v162 = v155 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = v155 - v43;
  v194 = v31;
  v45 = *(v31 + 20);
  v183 = a1;
  v46 = *(a1 + v45);
  v47 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(v46 + v47, v44, &unk_27EE63230);
  v48 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v193 = v49 + 48;
  v192 = v50;
  if (v50(v44, 1, v48) == 1)
  {
    sub_247C27100(v44, &unk_27EE63230);
    return sub_247C74BF4(v183, v157, type metadata accessor for FlowResponse.Step);
  }

  v200 = v48;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_247C74DAC(v44, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  if (EnumCaseMultiPayload != 1)
  {
    return sub_247C74BF4(v183, v157, type metadata accessor for FlowResponse.Step);
  }

  sub_247C74BF4(v183, v195, type metadata accessor for FlowResponse.Step);
  v52 = 0;
  v155[10] = 0x8000000247D2DC50;
  v155[9] = 0x8000000247D2EA60;
  v155[8] = 0x8000000247D2E730;
  v155[7] = 0x8000000247D2DF20;
  v155[6] = 0x8000000247D2DFE0;
  v155[5] = 0x8000000247D2E000;
  v155[4] = 0x8000000247D2DFA0;
  v155[3] = 0x8000000247D2DFC0;
  v155[2] = 0x8000000247D2E020;
  v155[1] = 0x8000000247D2E040;
  v155[12] = 0x8000000247D2DF60;
  v155[11] = 0x8000000247D2DF40;
  v175 = (v32 + 56);
  v174 = (v32 + 48);
  v184 = (v19 + 56);
  v201 = (v202 + 56);
  v53 = (v19 + 48);
  v156 = (v205 + 56);
  v161 = (v205 + 48);
  v178 = 0x8000000247D2EF10;
  v160 = 0x8000000247D2EF30;
  v182 = (v202 + 48);
  v181 = (v49 + 56);
  *&v54 = 136446210;
  v158 = v54;
  *&v54 = 136446466;
  v159 = v54;
  v166 = v12;
  v55 = v176;
  v56 = v197;
  v57 = v173;
  v189 = v29;
  v58 = v194;
  v188 = v53;
  while (2)
  {
    v63 = *(&unk_2859D5D58 + v52 + 32);
    v64 = 0xEE00646C6F687365;
    v65 = 0x7268546572616C67;
    v199 = v52 + 1;
    switch(v63)
    {
      case 1:
      case 4:
      case 6:
        v65 = 0xD000000000000013;
        v75 = &v183;
        goto LABEL_23;
      case 2:
        goto LABEL_24;
      case 7:
      case 8:
      case 15:
      case 16:
        type metadata accessor for FlowResponseValidator();
        v66 = sub_247D1F468();
        v67 = sub_247D20058();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v204 = v69;
          *v68 = v158;
          v70 = sub_247C78AE8(v63);
          v72 = sub_247CB03B4(v70, v71, &v204);

          *(v68 + 4) = v72;
          v55 = v176;
          _os_log_impl(&dword_247C1F000, v66, v67, "No key for override: %{public}s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          v73 = v69;
          v57 = v173;
          MEMORY[0x24C1B9080](v73, -1, -1);
          v74 = v68;
          v56 = v197;
          MEMORY[0x24C1B9080](v74, -1, -1);
        }

        goto LABEL_62;
      case 9:
        v65 = 0xD000000000000019;
        v75 = &v172;
        goto LABEL_23;
      case 10:
        v65 = 0xD000000000000019;
        v75 = &v173;
        goto LABEL_23;
      case 11:
        v65 = 0xD000000000000018;
        v75 = &v174;
        goto LABEL_23;
      case 12:
        v65 = 0xD000000000000018;
        v75 = &v175;
        goto LABEL_23;
      case 13:
        v65 = 0xD00000000000001ALL;
        v75 = &v176;
        goto LABEL_23;
      case 14:
        v65 = 0xD00000000000001ALL;
        v75 = &v177;
        goto LABEL_23;
      case 17:
        v65 = 0xD000000000000015;
        v75 = &v178;
        goto LABEL_23;
      case 18:
        v65 = 0xD00000000000001CLL;
        v75 = &v179;
        goto LABEL_23;
      case 19:
        v65 = 0x65746164696C6176;
        v64 = 0xEE006572616C4773;
        goto LABEL_24;
      case 20:
        v65 = 0xD000000000000012;
        v75 = &v180;
        goto LABEL_23;
      case 21:
        v65 = 0xD000000000000021;
        v75 = &v181;
        goto LABEL_23;
      default:
        v65 = 0xD000000000000013;
        v75 = &v182;
LABEL_23:
        v64 = *(v75 - 32);
LABEL_24:
        v205 = v64;
        v202 = v65;
        v76 = v196;
        sub_247C74BF4(v183, v196, type metadata accessor for FlowResponse.Step);
        (*v175)(v76, 0, 1, v58);
        sub_247C2BD10(v76, v29, &qword_27EE63218);
        if ((*v174)(v29, 1, v58) == 1)
        {
          sub_247C27100(v29, &qword_27EE63218);
          v77 = 0;
          v78 = 0;
          v79 = 0xE000000000000000;
          v80 = v205;
          goto LABEL_26;
        }

        v83 = *&v29[*(v58 + 20)];
        v84 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
        swift_beginAccess();
        v85 = v83 + v84;
        v86 = v162;
        sub_247C2BD10(v85, v162, &unk_27EE63230);
        if (v192(v86, 1, v200) == 1)
        {
          sub_247C27100(v86, &unk_27EE63230);
          v87 = v198;
        }

        else
        {
          v88 = swift_getEnumCaseMultiPayload();
          v87 = v198;
          if (v88 == 1)
          {
            sub_247C74EA0(v86, v198, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v89 = v165;
            v90 = v191;
            goto LABEL_39;
          }

          sub_247C74DAC(v86, type metadata accessor for FlowResponse.Step.OneOf_Contents);
        }

        *v87 = 0;
        *(v87 + 1) = 0xE000000000000000;
        *(v87 + 2) = 0;
        *(v87 + 3) = 0xE000000000000000;
        *(v87 + 4) = 0;
        *(v87 + 5) = 0xE000000000000000;
        *(v87 + 6) = MEMORY[0x277D84F90];
        v90 = v191;
        sub_247D1F188();
        (*v184)(&v87[v90[9]], 1, 1, v56);
        v91 = *v201;
        v92 = v203;
        (*v201)(&v198[v90[10]], 1, 1, v203);
        v91(&v198[v90[11]], 1, 1, v92);
        v87 = v198;
        v89 = v165;
        v53 = v188;
LABEL_39:
        v80 = v205;
        sub_247C74DAC(v189, type metadata accessor for FlowResponse.Step);
        sub_247C2BD10(&v87[v90[9]], v55, &qword_27EE63290);
        v93 = *v53;
        v94 = (*v53)(v55, 1, v56);
        v190 = v63;
        if (v94 == 1)
        {
          v95 = v163;
          *v163 = 0;
          *(v95 + 1) = 0xE000000000000000;
          *(v95 + 2) = 0;
          *(v95 + 3) = 0xE000000000000000;
          *(v95 + 4) = 0;
          *(v95 + 5) = 0xE000000000000000;
          *(v95 + 6) = 0;
          *(v95 + 7) = 0xE000000000000000;
          sub_247D1F188();
          (*v156)(&v95[*(v56 + 36)], 1, 1, v172);
          if (v93(v55, 1, v56) != 1)
          {
            sub_247C27100(v55, &qword_27EE63290);
          }
        }

        else
        {
          v95 = v163;
          sub_247C74EA0(v55, v163, type metadata accessor for FileUploadToken);
        }

        v96 = v55;
        sub_247C2BD10(&v95[*(v56 + 36)], v89, &qword_27EE63288);
        v97 = *v161;
        v63 = v172;
        if ((*v161)(v89, 1, v172) == 1)
        {
          v98 = v164;
          *v164 = 0;
          v98[1] = 0xE000000000000000;
          v98[2] = 0;
          v98[3] = 0xE000000000000000;
          v98[4] = 0;
          v98[5] = 0xE000000000000000;
          sub_247D1F188();
          sub_247C74DAC(v95, type metadata accessor for FileUploadToken);
          v99 = v97(v89, 1, v63);
          LOBYTE(v63) = v190;
          if (v99 != 1)
          {
            sub_247C27100(v89, &qword_27EE63288);
          }
        }

        else
        {
          sub_247C74DAC(v95, type metadata accessor for FileUploadToken);
          v98 = v164;
          sub_247C74EA0(v89, v164, type metadata accessor for Metadata);
          LOBYTE(v63) = v190;
        }

        v78 = *v98;
        v79 = v98[1];

        sub_247C74DAC(v98, type metadata accessor for Metadata);
        sub_247C74DAC(v198, type metadata accessor for FlowResponse.Step.CosmeticCapture);
        v77 = v78 == 0xD000000000000013;
        v29 = v189;
        v55 = v96;
        if (v78 == 0xD000000000000013)
        {
          v53 = v188;
          if (v178 == v79)
          {
LABEL_50:

            v82 = 1;
            goto LABEL_51;
          }
        }

        else
        {
          v53 = v188;
        }

LABEL_26:
        if (sub_247D20538())
        {
          goto LABEL_50;
        }

        v81 = v160 == v79 && v77;
        if (v81 || (sub_247D20538() & 1) != 0)
        {

          v82 = 0;
        }

        else if (v78 == 0x5F414E5F6B636142 && v79 == 0xEF646570706F7243)
        {

          v82 = 2;
        }

        else
        {
          v153 = sub_247D20538();

          if (v153)
          {
            v82 = 2;
          }

          else
          {
            v82 = 3;
          }
        }

LABEL_51:
        v100 = sub_247C78D90(v63, v82, 0);
        v102 = v101;
        sub_247C27100(v196, &qword_27EE63218);
        if (v102)
        {
          type metadata accessor for FlowResponseValidator();

          v103 = sub_247D1F468();
          v104 = sub_247D20058();

          v105 = os_log_type_enabled(v103, v104);
          v190 = v100;
          if (v105)
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v204 = v107;
            *v106 = v159;
            *(v106 + 4) = sub_247CB03B4(v202, v80, &v204);
            *(v106 + 12) = 2082;
            *(v106 + 14) = sub_247CB03B4(v100, v102, &v204);
            _os_log_impl(&dword_247C1F000, v103, v104, "Override capture key: %{public}s with value: %{public}s", v106, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1B9080](v107, -1, -1);
            MEMORY[0x24C1B9080](v106, -1, -1);
          }

          v108 = v169;
          v109 = v191;
          v110 = *(v194 + 20);
          v111 = *(v195 + v110);
          v112 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
          swift_beginAccess();
          v113 = v111 + v112;
          v114 = v167;
          sub_247C2BD10(v113, v167, &unk_27EE63230);
          if (v192(v114, 1, v200) == 1)
          {
            sub_247C27100(v114, &unk_27EE63230);
            v115 = v203;
          }

          else
          {
            v121 = swift_getEnumCaseMultiPayload();
            v115 = v203;
            if (v121 == 1)
            {
              sub_247C74EA0(v114, v57, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              goto LABEL_65;
            }

            sub_247C74DAC(v114, type metadata accessor for FlowResponse.Step.OneOf_Contents);
          }

          *v57 = 0;
          *(v57 + 1) = 0xE000000000000000;
          *(v57 + 2) = 0;
          *(v57 + 3) = 0xE000000000000000;
          *(v57 + 4) = 0;
          *(v57 + 5) = 0xE000000000000000;
          *(v57 + 6) = MEMORY[0x277D84F90];
          sub_247D1F188();
          (*v184)(&v57[v109[9]], 1, 1, v197);
          v122 = *v201;
          (*v201)(&v57[v109[10]], 1, 1, v115);
          v122(&v57[v109[11]], 1, 1, v115);
LABEL_65:
          v123 = v170;
          v124 = v109[10];
          sub_247C2BD10(&v57[v124], v170, &qword_27EE62DE0);
          v125 = *v182;
          v126 = (*v182)(v123, 1, v115);
          v180 = v125;
          if (v126 == 1)
          {
            *v108 = sub_247CD8184(MEMORY[0x277D84F90]);
            sub_247D1F188();
            if (v125(v123, 1, v115) != 1)
            {
              sub_247C27100(v123, &qword_27EE62DE0);
            }
          }

          else
          {
            sub_247C74EA0(v123, v108, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
          }

          v127 = v205;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v204 = *v108;
          sub_247CD76FC(v190, v102, v202, v127, isUniquelyReferenced_nonNull_native);

          *v108 = v204;
          sub_247C27100(&v57[v124], &qword_27EE62DE0);
          sub_247C74EA0(v108, &v57[v124], type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
          v129 = *v201;
          (*v201)(&v57[v124], 0, 1, v203);
          v130 = v195;
          v131 = swift_isUniquelyReferenced_nonNull_native();
          v132 = *(v130 + v110);
          if ((v131 & 1) == 0)
          {
            type metadata accessor for FlowResponse.Step._StorageClass(0);
            swift_allocObject();
            v132 = sub_247CFEB68(v132);
            *(v130 + v110) = v132;
          }

          v133 = v191;
          v134 = v168;
          v135 = v57;
          v136 = v186;
          sub_247C74EA0(v135, v186, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          v137 = v200;
          swift_storeEnumTagMultiPayload();
          v179 = *v181;
          v179(v136, 0, 1, v137);
          v138 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
          swift_beginAccess();
          sub_247C74F08(v136, v132 + v138);
          swift_endAccess();
          sub_247C2BD10(v132 + v138, v134, &unk_27EE63230);
          if (v192(v134, 1, v137) == 1)
          {
            sub_247C27100(v134, &unk_27EE63230);
            v139 = v171;
          }

          else
          {
            v140 = swift_getEnumCaseMultiPayload();
            v139 = v171;
            if (v140 == 1)
            {
              v141 = v187;
              sub_247C74EA0(v134, v187, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v142 = v203;
LABEL_77:
              v143 = v133[11];
              sub_247C2BD10(&v141[v143], v139, &qword_27EE62DE0);
              v144 = v180;
              if (v180(v139, 1, v142) == 1)
              {
                v145 = sub_247CD8184(MEMORY[0x277D84F90]);
                v146 = v166;
                *v166 = v145;
                sub_247D1F188();
                v147 = v144(v139, 1, v142);
                v55 = v176;
                if (v147 != 1)
                {
                  sub_247C27100(v139, &qword_27EE62DE0);
                }
              }

              else
              {
                v146 = v166;
                sub_247C74EA0(v139, v166, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
                v55 = v176;
              }

              v148 = swift_isUniquelyReferenced_nonNull_native();
              v204 = *v146;
              sub_247CD76FC(v190, v102, v202, v205, v148);

              *v146 = v204;
              v149 = v187;
              sub_247C27100(&v187[v143], &qword_27EE62DE0);
              sub_247C74EA0(v146, &v149[v143], type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
              v129(&v149[v143], 0, 1, v203);
              v150 = v195;
              v151 = swift_isUniquelyReferenced_nonNull_native();
              v152 = *(v150 + v110);
              if ((v151 & 1) == 0)
              {
                type metadata accessor for FlowResponse.Step._StorageClass(0);
                swift_allocObject();
                v152 = sub_247CFEB68(v152);
                *(v150 + v110) = v152;
              }

              v56 = v197;
              v29 = v189;
              v58 = v194;
              v59 = v200;
              v53 = v188;
              v60 = v149;
              v61 = v186;
              sub_247C74EA0(v60, v186, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              swift_storeEnumTagMultiPayload();
              v179(v61, 0, 1, v59);
              v62 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
              swift_beginAccess();
              sub_247C74F08(v61, v152 + v62);
              swift_endAccess();
              v57 = v173;
              goto LABEL_6;
            }

            sub_247C74DAC(v134, type metadata accessor for FlowResponse.Step.OneOf_Contents);
          }

          v141 = v187;
          *v187 = 0;
          *(v141 + 1) = 0xE000000000000000;
          *(v141 + 2) = 0;
          *(v141 + 3) = 0xE000000000000000;
          *(v141 + 4) = 0;
          *(v141 + 5) = 0xE000000000000000;
          *(v141 + 6) = MEMORY[0x277D84F90];
          sub_247D1F188();
          (*v184)(&v141[v133[9]], 1, 1, v197);
          v142 = v203;
          v129(&v141[v133[10]], 1, 1, v203);
          v129(&v141[v133[11]], 1, 1, v142);
          goto LABEL_77;
        }

        type metadata accessor for FlowResponseValidator();

        v116 = sub_247D1F468();
        v117 = sub_247D20058();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v204 = v119;
          *v118 = v158;
          v120 = sub_247CB03B4(v202, v80, &v204);

          *(v118 + 4) = v120;
          v55 = v176;
          _os_log_impl(&dword_247C1F000, v116, v117, "No override value for capture key: %{public}s", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v119);
          MEMORY[0x24C1B9080](v119, -1, -1);
          MEMORY[0x24C1B9080](v118, -1, -1);
        }

        else
        {
        }

        v56 = v197;
LABEL_62:
        v58 = v194;
LABEL_6:
        v52 = v199;
        if (v199 != 22)
        {
          continue;
        }

        return sub_247C74EA0(v195, v157, type metadata accessor for FlowResponse.Step);
    }
  }
}

os_log_t sub_247C667EC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for FlowResponse.Step.URL(0);
  MEMORY[0x28223BE20](v6 - 8);
  v1574 = (&v1457 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FlowResponse.Step.Progress(0);
  MEMORY[0x28223BE20](v8 - 8);
  v1582 = &v1457 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1572 = type metadata accessor for FlowResponse.Step.Loading(0);
  MEMORY[0x28223BE20](v1572);
  v1584 = &v1457 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1514 = type metadata accessor for Metadata(0);
  v11 = *(v1514 - 8);
  v12 = MEMORY[0x28223BE20](v1514);
  v1513 = (&v1457 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v1512 = (&v1457 - v15);
  MEMORY[0x28223BE20](v14);
  v1511 = (&v1457 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v1485 = &v1457 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v1469 = &v1457 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v1468 = &v1457 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v1467 = &v1457 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v1483 = &v1457 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v1482 = &v1457 - v29;
  MEMORY[0x28223BE20](v28);
  v1481 = &v1457 - v30;
  v1555 = type metadata accessor for FileUploadToken(0);
  v31 = *(v1555 - 8);
  v32 = MEMORY[0x28223BE20](v1555);
  v1484 = &v1457 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v1466 = &v1457 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v1510 = &v1457 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v1465 = &v1457 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v1509 = &v1457 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v1464 = &v1457 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v1508 = &v1457 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v1553 = &v1457 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v1478 = &v1457 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v1552 = &v1457 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v1477 = &v1457 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v1551 = &v1457 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v1476 = &v1457 - v57;
  MEMORY[0x28223BE20](v56);
  v1550 = &v1457 - v58;
  v1554 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v1577 = *(v1554 - 8);
  v59 = MEMORY[0x28223BE20](v1554);
  v1561 = &v1457 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v1507 = &v1457 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v1505 = &v1457 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v1475 = &v1457 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v1504 = &v1457 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v1474 = &v1457 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v1503 = &v1457 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v1473 = &v1457 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v1539 = &v1457 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v1499 = &v1457 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v1538 = &v1457 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v1498 = &v1457 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v1537 = &v1457 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v1497 = &v1457 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v1564 = &v1457 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v1534 = &v1457 - v90;
  v1576 = v91;
  MEMORY[0x28223BE20](v89);
  v1598 = (&v1457 - v92);
  v1579 = type metadata accessor for FlowResponse.Step.Masthead(0);
  v1704 = *(v1579 - 8);
  v93 = MEMORY[0x28223BE20](v1579);
  v1571 = &v1457 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x28223BE20](v93);
  v1516 = &v1457 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v1549 = &v1457 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v1548 = (&v1457 - v100);
  v101 = MEMORY[0x28223BE20](v99);
  v1568 = &v1457 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v1515 = &v1457 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v1542 = &v1457 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v1558 = &v1457 - v108;
  MEMORY[0x28223BE20](v107);
  v1541 = &v1457 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F68);
  v111 = MEMORY[0x28223BE20](v110 - 8);
  v1547 = &v1457 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x28223BE20](v111);
  v1570 = &v1457 - v114;
  MEMORY[0x28223BE20](v113);
  v1567 = &v1457 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
  v117 = MEMORY[0x28223BE20](v116 - 8);
  v1560 = &v1457 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x28223BE20](v117);
  v1559 = &v1457 - v120;
  MEMORY[0x28223BE20](v119);
  v1621 = &v1457 - v121;
  v1629 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  *&v1698 = *(v1629 - 8);
  v122 = MEMORY[0x28223BE20](v1629);
  v1546 = &v1457 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = MEMORY[0x28223BE20](v122);
  v1540 = &v1457 - v125;
  MEMORY[0x28223BE20](v124);
  v1626 = &v1457 - v126;
  v1625 = type metadata accessor for FlowResponse.Step.Information.BulletedListItem(0);
  v1628 = *(v1625 - 8);
  MEMORY[0x28223BE20](v1625);
  v1643 = &v1457 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1566 = type metadata accessor for FlowResponse.Step.Information(0);
  MEMORY[0x28223BE20](v1566);
  v1585 = &v1457 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  v130 = MEMORY[0x28223BE20](v129 - 8);
  v1620 = &v1457 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v130);
  v1622 = &v1457 - v132;
  v133 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v1688 = *(v133 - 8);
  v134 = MEMORY[0x28223BE20](v133 - 8);
  v1671 = &v1457 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v134);
  v1641 = &v1457 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1640 = &v1457 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v1670 = &v1457 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v1639 = &v1457 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v1638 = &v1457 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v1685 = &v1457 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v1677 = (&v1457 - v149);
  v150 = MEMORY[0x28223BE20](v148);
  v1676 = &v1457 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v1654 = &v1457 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v1653 = (&v1457 - v155);
  v156 = MEMORY[0x28223BE20](v154);
  v1652 = &v1457 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v1678 = &v1457 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v1651 = &v1457 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v1650 = &v1457 - v163;
  MEMORY[0x28223BE20](v162);
  v1695 = &v1457 - v164;
  v165 = type metadata accessor for FlowResponse.Step.Action(0);
  v1690 = *(v165 - 8);
  v166 = MEMORY[0x28223BE20](v165 - 8);
  v1684 = &v1457 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = MEMORY[0x28223BE20](v166);
  v1683 = (&v1457 - v169);
  v170 = MEMORY[0x28223BE20](v168);
  v1668 = &v1457 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v1681 = &v1457 - v173;
  v174 = MEMORY[0x28223BE20](v172);
  v1663 = &v1457 - v175;
  v176 = MEMORY[0x28223BE20](v174);
  v1662 = &v1457 - v177;
  v178 = MEMORY[0x28223BE20](v176);
  v1680 = &v1457 - v179;
  v180 = MEMORY[0x28223BE20](v178);
  v1661 = (&v1457 - v181);
  v182 = MEMORY[0x28223BE20](v180);
  v1660 = &v1457 - v183;
  MEMORY[0x28223BE20](v182);
  v185 = &v1457 - v184;
  v1702 = type metadata accessor for FlowResponse.Step(0);
  v1633 = *(v1702 - 8);
  v186 = MEMORY[0x28223BE20](v1702);
  v1602 = &v1457 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = MEMORY[0x28223BE20](v186);
  v1634 = &v1457 - v189;
  v190 = MEMORY[0x28223BE20](v188);
  v1696 = &v1457 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v1703 = &v1457 - v193;
  v194 = MEMORY[0x28223BE20](v192);
  v1597 = &v1457 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v1596 = &v1457 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v1595 = &v1457 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v1533 = &v1457 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v1532 = &v1457 - v203;
  v204 = MEMORY[0x28223BE20](v202);
  v1531 = &v1457 - v205;
  v206 = MEMORY[0x28223BE20](v204);
  v1536 = &v1457 - v207;
  v208 = MEMORY[0x28223BE20](v206);
  v1502 = &v1457 - v209;
  v210 = MEMORY[0x28223BE20](v208);
  v1530 = &v1457 - v211;
  v212 = MEMORY[0x28223BE20](v210);
  v1557 = &v1457 - v213;
  v214 = MEMORY[0x28223BE20](v212);
  v1529 = &v1457 - v215;
  v216 = MEMORY[0x28223BE20](v214);
  v1522 = &v1457 - v217;
  v218 = MEMORY[0x28223BE20](v216);
  v1496 = &v1457 - v219;
  v220 = MEMORY[0x28223BE20](v218);
  v1565 = &v1457 - v221;
  v222 = MEMORY[0x28223BE20](v220);
  v1480 = &v1457 - v223;
  v224 = MEMORY[0x28223BE20](v222);
  v1545 = &v1457 - v225;
  v226 = MEMORY[0x28223BE20](v224);
  v1562 = &v1457 - v227;
  v228 = MEMORY[0x28223BE20](v226);
  v1495 = &v1457 - v229;
  v230 = MEMORY[0x28223BE20](v228);
  v1569 = &v1457 - v231;
  v232 = MEMORY[0x28223BE20](v230);
  v1544 = &v1457 - v233;
  v234 = MEMORY[0x28223BE20](v232);
  v1543 = &v1457 - v235;
  v236 = MEMORY[0x28223BE20](v234);
  v1506 = &v1457 - v237;
  v238 = MEMORY[0x28223BE20](v236);
  v1494 = &v1457 - v239;
  v240 = MEMORY[0x28223BE20](v238);
  v1472 = &v1457 - v241;
  v242 = MEMORY[0x28223BE20](v240);
  v1493 = &v1457 - v243;
  v244 = MEMORY[0x28223BE20](v242);
  v1471 = &v1457 - v245;
  v246 = MEMORY[0x28223BE20](v244);
  v1492 = &v1457 - v247;
  v248 = MEMORY[0x28223BE20](v246);
  v1470 = &v1457 - v249;
  v250 = MEMORY[0x28223BE20](v248);
  v1521 = &v1457 - v251;
  v252 = MEMORY[0x28223BE20](v250);
  v1491 = &v1457 - v253;
  v254 = MEMORY[0x28223BE20](v252);
  v1520 = &v1457 - v255;
  v256 = MEMORY[0x28223BE20](v254);
  v1490 = &v1457 - v257;
  v258 = MEMORY[0x28223BE20](v256);
  v1519 = &v1457 - v259;
  v260 = MEMORY[0x28223BE20](v258);
  v1489 = &v1457 - v261;
  v262 = MEMORY[0x28223BE20](v260);
  v1563 = &v1457 - v263;
  v264 = MEMORY[0x28223BE20](v262);
  v1528 = &v1457 - v265;
  v266 = MEMORY[0x28223BE20](v264);
  v1527 = &v1457 - v267;
  v268 = MEMORY[0x28223BE20](v266);
  v1556 = &v1457 - v269;
  v270 = MEMORY[0x28223BE20](v268);
  v1526 = &v1457 - v271;
  v272 = MEMORY[0x28223BE20](v270);
  v1525 = &v1457 - v273;
  v274 = MEMORY[0x28223BE20](v272);
  v1524 = &v1457 - v275;
  v276 = MEMORY[0x28223BE20](v274);
  v1523 = &v1457 - v277;
  v278 = MEMORY[0x28223BE20](v276);
  v1535 = &v1457 - v279;
  v280 = MEMORY[0x28223BE20](v278);
  v1501 = &v1457 - v281;
  v282 = MEMORY[0x28223BE20](v280);
  v1518 = &v1457 - v283;
  v284 = MEMORY[0x28223BE20](v282);
  v1488 = &v1457 - v285;
  v286 = MEMORY[0x28223BE20](v284);
  v1500 = &v1457 - v287;
  v288 = MEMORY[0x28223BE20](v286);
  v1479 = &v1457 - v289;
  v290 = MEMORY[0x28223BE20](v288);
  v1517 = &v1457 - v291;
  v292 = MEMORY[0x28223BE20](v290);
  v1487 = &v1457 - v293;
  v294 = MEMORY[0x28223BE20](v292);
  v1601 = &v1457 - v295;
  v296 = MEMORY[0x28223BE20](v294);
  v1600 = &v1457 - v297;
  v298 = MEMORY[0x28223BE20](v296);
  v1599 = &v1457 - v299;
  v300 = MEMORY[0x28223BE20](v298);
  v1605 = &v1457 - v301;
  v302 = MEMORY[0x28223BE20](v300);
  v1604 = &v1457 - v303;
  v304 = MEMORY[0x28223BE20](v302);
  v1603 = &v1457 - v305;
  v306 = MEMORY[0x28223BE20](v304);
  v1635 = &v1457 - v307;
  v308 = MEMORY[0x28223BE20](v306);
  v1619 = &v1457 - v309;
  v310 = MEMORY[0x28223BE20](v308);
  v1618 = &v1457 - v311;
  v312 = MEMORY[0x28223BE20](v310);
  v1669 = &v1457 - v313;
  v314 = MEMORY[0x28223BE20](v312);
  v1637 = &v1457 - v315;
  v316 = MEMORY[0x28223BE20](v314);
  v1636 = &v1457 - v317;
  v318 = MEMORY[0x28223BE20](v316);
  v1675 = &v1457 - v319;
  v320 = MEMORY[0x28223BE20](v318);
  v1674 = &v1457 - v321;
  v322 = MEMORY[0x28223BE20](v320);
  v1673 = &v1457 - v323;
  v324 = MEMORY[0x28223BE20](v322);
  v1649 = &v1457 - v325;
  v326 = MEMORY[0x28223BE20](v324);
  v1648 = &v1457 - v327;
  v328 = MEMORY[0x28223BE20](v326);
  v1647 = &v1457 - v329;
  v330 = MEMORY[0x28223BE20](v328);
  v1646 = &v1457 - v331;
  v332 = MEMORY[0x28223BE20](v330);
  v1645 = &v1457 - v333;
  v334 = MEMORY[0x28223BE20](v332);
  v1644 = &v1457 - v335;
  v336 = MEMORY[0x28223BE20](v334);
  v1667 = &v1457 - v337;
  v338 = MEMORY[0x28223BE20](v336);
  v1666 = &v1457 - v339;
  v340 = MEMORY[0x28223BE20](v338);
  v1665 = &v1457 - v341;
  v342 = MEMORY[0x28223BE20](v340);
  v1659 = &v1457 - v343;
  v344 = MEMORY[0x28223BE20](v342);
  v1658 = &v1457 - v345;
  v346 = MEMORY[0x28223BE20](v344);
  v1657 = &v1457 - v347;
  v348 = MEMORY[0x28223BE20](v346);
  v1656 = &v1457 - v349;
  v350 = MEMORY[0x28223BE20](v348);
  v1679 = &v1457 - v351;
  v352 = MEMORY[0x28223BE20](v350);
  v1655 = &v1457 - v353;
  v354 = MEMORY[0x28223BE20](v352);
  v1624 = &v1457 - v355;
  v356 = MEMORY[0x28223BE20](v354);
  v1616 = &v1457 - v357;
  v358 = MEMORY[0x28223BE20](v356);
  v1615 = &v1457 - v359;
  v360 = MEMORY[0x28223BE20](v358);
  v1623 = &v1457 - v361;
  v362 = MEMORY[0x28223BE20](v360);
  v1614 = &v1457 - v363;
  v364 = MEMORY[0x28223BE20](v362);
  v1613 = &v1457 - v365;
  v366 = MEMORY[0x28223BE20](v364);
  v1632 = &v1457 - v367;
  v368 = MEMORY[0x28223BE20](v366);
  v1612 = &v1457 - v369;
  v370 = MEMORY[0x28223BE20](v368);
  v1611 = &v1457 - v371;
  v372 = MEMORY[0x28223BE20](v370);
  v1610 = &v1457 - v373;
  v374 = MEMORY[0x28223BE20](v372);
  v1609 = &v1457 - v375;
  v376 = MEMORY[0x28223BE20](v374);
  v1608 = &v1457 - v377;
  v378 = MEMORY[0x28223BE20](v376);
  v1594 = &v1457 - v379;
  v380 = MEMORY[0x28223BE20](v378);
  v1593 = &v1457 - v381;
  v382 = MEMORY[0x28223BE20](v380);
  v1592 = &v1457 - v383;
  v384 = MEMORY[0x28223BE20](v382);
  v1591 = &v1457 - v385;
  v386 = MEMORY[0x28223BE20](v384);
  v1590 = &v1457 - v387;
  v388 = MEMORY[0x28223BE20](v386);
  v1589 = &v1457 - v389;
  v390 = MEMORY[0x28223BE20](v388);
  v1588 = &v1457 - v391;
  v392 = MEMORY[0x28223BE20](v390);
  v1587 = &v1457 - v393;
  v394 = MEMORY[0x28223BE20](v392);
  v1586 = &v1457 - v395;
  v1583 = v396;
  MEMORY[0x28223BE20](v394);
  v1700 = &v1457 - v398;
  v1694 = a1[4];
  if (!*(v1694 + 16))
  {
    isa_high = a1;
    type metadata accessor for FlowResponseValidator();
    v399 = sub_247D1F468();
    v400 = sub_247D20038();
    if (os_log_type_enabled(v399, v400))
    {
      v401 = swift_slowAlloc();
      *&v1697 = v31;
      v402 = v185;
      v403 = v4;
      v404 = v401;
      *v401 = 0;
      _os_log_impl(&dword_247C1F000, v399, v400, "Missing steps.", v401, 2u);
      v405 = v404;
      v4 = v403;
      v185 = v402;
      v3 = v2;
      v31 = v1697;
      MEMORY[0x24C1B9080](v405, -1, -1);
    }

    a1 = isa_high;
  }

  v1692 = a1[5];
  if (!*(v1692 + 16))
  {
    isa_high = a1;
    type metadata accessor for FlowResponseValidator();
    v406 = sub_247D1F468();
    v407 = sub_247D20038();
    if (os_log_type_enabled(v406, v407))
    {
      v408 = swift_slowAlloc();
      *&v1697 = v31;
      v409 = v11;
      v410 = v3;
      v411 = v185;
      v412 = v4;
      v413 = v408;
      *v408 = 0;
      _os_log_impl(&dword_247C1F000, v406, v407, "Missing localization content.", v408, 2u);
      v414 = v413;
      v4 = v412;
      v185 = v411;
      v3 = v410;
      v11 = v409;
      v31 = v1697;
      MEMORY[0x24C1B9080](v414, -1, -1);
    }

    a1 = isa_high;
  }

  if (!*(a1[6] + 16))
  {
    type metadata accessor for FlowResponseValidator();
    v415 = sub_247D1F468();
    v416 = sub_247D20038();
    if (os_log_type_enabled(v415, v416))
    {
      v417 = swift_slowAlloc();
      *&v1697 = v31;
      v418 = v11;
      v419 = v3;
      v420 = v185;
      v421 = v4;
      v422 = v417;
      *v417 = 0;
      _os_log_impl(&dword_247C1F000, v415, v416, "No server-side global configurations.", v417, 2u);
      v423 = v422;
      v4 = v421;
      v185 = v420;
      v3 = v419;
      v11 = v418;
      v31 = v1697;
      MEMORY[0x24C1B9080](v423, -1, -1);
    }
  }

  v424 = v1694;
  v425 = *(v1694 + 16);
  v1701 = v4;
  v1607 = v425;
  if (!v425)
  {
    v431 = v1694;
LABEL_321:
    v1704 = v3;
    v1398 = 0;
    *&v397 = 134217984;
    v1698 = v397;
    *&v397 = 134218240;
    v1697 = v397;
    while (1)
    {
      isa_high = v1398;
      v1399 = &unk_2859D5D90 + 16 * v1398;
      v1400 = *(v1399 + 4);
      v1401 = v1399[40];
      v1402 = *(v431 + 16);

      if (v1402)
      {
        v1404 = *(v1633 + 72);
        v1700 = (*(v1633 + 80) + 32) & ~*(v1633 + 80);
        v1405 = v1403 + v1700;
        v1406 = MEMORY[0x277D84F90];
        while (1)
        {
          v1407 = v1703;
          sub_247C74BF4(v1405, v1703, type metadata accessor for FlowResponse.Step);
          v1408 = *(v1407 + *(v1702 + 20));
          swift_beginAccess();
          v1409 = *(v1408 + 48);
          if (v1401)
          {
            if (v1400 > 3)
            {
              if (v1400 > 5)
              {
                if (v1400 == 6)
                {
                  if (v1409 == 6)
                  {
                    goto LABEL_337;
                  }
                }

                else if (v1409 == 7)
                {
LABEL_337:
                  sub_247C74EA0(v1703, v1696, type metadata accessor for FlowResponse.Step);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v1705 = v1406;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_247CE23C8(0, *(v1406 + 16) + 1, 1);
                    v1406 = v1705;
                  }

                  v1412 = *(v1406 + 16);
                  v1411 = *(v1406 + 24);
                  if (v1412 >= v1411 >> 1)
                  {
                    sub_247CE23C8(v1411 > 1, v1412 + 1, 1);
                    v1406 = v1705;
                  }

                  *(v1406 + 16) = v1412 + 1;
                  sub_247C74EA0(v1696, v1406 + v1700 + v1412 * v1404, type metadata accessor for FlowResponse.Step);
                  goto LABEL_329;
                }
              }

              else if (v1400 == 4)
              {
                if (v1409 == 4)
                {
                  goto LABEL_337;
                }
              }

              else if (v1409 == 5)
              {
                goto LABEL_337;
              }
            }

            else if (v1400 > 1)
            {
              if (v1400 == 2)
              {
                if (v1409 == 2)
                {
                  goto LABEL_337;
                }
              }

              else if (v1409 == 3)
              {
                goto LABEL_337;
              }
            }

            else if (v1400)
            {
              if (v1409 == 1)
              {
                goto LABEL_337;
              }
            }

            else if (!v1409)
            {
              goto LABEL_337;
            }
          }

          else if (v1409 == v1400)
          {
            goto LABEL_337;
          }

          sub_247C74DAC(v1703, type metadata accessor for FlowResponse.Step);
LABEL_329:
          v1405 += v1404;
          if (!--v1402)
          {
            goto LABEL_359;
          }
        }
      }

      v1406 = MEMORY[0x277D84F90];
LABEL_359:
      v431 = v1694;

      v1413 = v1704;
      v1414 = sub_247C634A8(v1406);
      v1704 = v1413;

      v1415 = *(v1414 + 16);
      if (v1415)
      {
        if (v1415 != 1 && !sub_247CF82EC(v1400, v1401, 0) && !sub_247CF82EC(v1400, v1401, 5))
        {
          type metadata accessor for FlowResponseValidator();

          v1416 = sub_247D1F468();
          v1417 = sub_247D20038();
          if (!os_log_type_enabled(v1416, v1417))
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_324;
          }

          v1418 = swift_slowAlloc();
          *v1418 = v1697;
          *(v1418 + 4) = v1400;
          *(v1418 + 12) = 2048;
          *(v1418 + 14) = *(v1414 + 16);
          swift_bridgeObjectRelease_n();
          v1419 = v1417;
          v1420 = v1416;
          v1421 = "Peer step %ld is in %ld steps.";
          v1422 = v1418;
          v1423 = 22;
          goto LABEL_367;
        }
      }

      else
      {
        type metadata accessor for FlowResponseValidator();
        v1416 = sub_247D1F468();
        v1424 = sub_247D20038();
        if (os_log_type_enabled(v1416, v1424))
        {
          v1418 = swift_slowAlloc();
          *v1418 = v1698;
          *(v1418 + 4) = v1400;

          v1419 = v1424;
          v1420 = v1416;
          v1421 = "Peer step %ld is missing.";
          v1422 = v1418;
          v1423 = 12;
LABEL_367:
          _os_log_impl(&dword_247C1F000, v1420, v1419, v1421, v1422, v1423);
          MEMORY[0x24C1B9080](v1418, -1, -1);

          goto LABEL_324;
        }
      }

LABEL_324:
      v1398 = (isa_high + 1);
      if (isa_high == 7)
      {
        v1425 = &byte_2859D5E58;
        v1426 = 4;
        while (1)
        {
          v1427 = *(v1425 - 1);
          v1428 = *v1425;

          v1430 = v1704;
          v1431 = sub_247C744CC(v1429, v1427, v1428);

          v1432 = sub_247C634A8(v1431);
          v1704 = v1430;

          v1433 = *(v1432 + 16);
          if (v1433 == 2)
          {
            if (!v1427)
            {
              goto LABEL_371;
            }

            type metadata accessor for FlowResponseValidator();
            v1434 = sub_247D1F468();
            v1440 = sub_247D20058();
            if (os_log_type_enabled(v1434, v1440))
            {
              v1436 = swift_slowAlloc();
              *v1436 = v1698;
              *(v1436 + 4) = v1427;

              v1437 = v1440;
              v1438 = v1434;
              v1439 = "Peer command %ld is in two steps.";
              goto LABEL_380;
            }
          }

          else
          {
            if (v1433)
            {
              goto LABEL_371;
            }

            type metadata accessor for FlowResponseValidator();
            v1434 = sub_247D1F468();
            v1435 = sub_247D20038();
            if (os_log_type_enabled(v1434, v1435))
            {
              v1436 = swift_slowAlloc();
              *v1436 = v1698;
              *(v1436 + 4) = v1427;

              v1437 = v1435;
              v1438 = v1434;
              v1439 = "Peer command %ld is missing.";
LABEL_380:
              _os_log_impl(&dword_247C1F000, v1438, v1437, v1439, v1436, 0xCu);
              MEMORY[0x24C1B9080](v1436, -1, -1);

              goto LABEL_372;
            }
          }

LABEL_371:

LABEL_372:
          v1425 += 16;
          if (!--v1426)
          {
            v1441 = *(v1694 + 16);

            if (!v1441)
            {
              v1445 = MEMORY[0x277D84F90];
LABEL_394:

              MEMORY[0x28223BE20](v1456);
              *(&v1457 - 2) = v1701;
              sub_247C63600(sub_247C7475C, (&v1457 - 4), v1445);
            }

            v1443 = *(v1633 + 72);
            v1703 = (*(v1633 + 80) + 32) & ~*(v1633 + 80);
            v1444 = v1442 + v1703;
            v1445 = MEMORY[0x277D84F90];
            while (2)
            {
              v1446 = v1634;
              sub_247C74BF4(v1444, v1634, type metadata accessor for FlowResponse.Step);
              v1447 = *(v1446 + *(v1702 + 20));
              v1448 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
              swift_beginAccess();
              v1449 = v1447 + v1448;
              v1450 = v1620;
              sub_247C2BD10(v1449, v1620, &unk_27EE63230);
              v1451 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
              if ((*(*(v1451 - 8) + 48))(v1450, 1, v1451) == 1)
              {
                sub_247C27100(v1450, &unk_27EE63230);
              }

              else
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                sub_247C74DAC(v1450, type metadata accessor for FlowResponse.Step.OneOf_Contents);
                if (EnumCaseMultiPayload == 1)
                {
                  sub_247C74EA0(v1634, v1602, type metadata accessor for FlowResponse.Step);
                  v1453 = swift_isUniquelyReferenced_nonNull_native();
                  v1707 = v1445;
                  if ((v1453 & 1) == 0)
                  {
                    sub_247CE23C8(0, *(v1445 + 16) + 1, 1);
                    v1445 = v1707;
                  }

                  v1455 = *(v1445 + 16);
                  v1454 = *(v1445 + 24);
                  if (v1455 >= v1454 >> 1)
                  {
                    sub_247CE23C8(v1454 > 1, v1455 + 1, 1);
                    v1445 = v1707;
                  }

                  *(v1445 + 16) = v1455 + 1;
                  sub_247C74EA0(v1602, v1445 + v1703 + v1455 * v1443, type metadata accessor for FlowResponse.Step);
LABEL_385:
                  v1444 += v1443;
                  if (!--v1441)
                  {
                    goto LABEL_394;
                  }

                  continue;
                }
              }

              break;
            }

            sub_247C74DAC(v1634, type metadata accessor for FlowResponse.Step);
            goto LABEL_385;
          }
        }
      }
    }
  }

  v426 = *(v1633 + 80);
  v1606 = v1694 + ((v426 + 32) & ~v426);
  result = type metadata accessor for FlowResponseValidator();
  v1617 = result;
  isa_high = SHIDWORD(result[2].isa);
  v1581 = v426;
  v1580 = (v426 + 16) & ~v426;
  v428 = 0;
  v1578 = (v1704 + 48);
  v1627 = (v1698 + 48);
  v429 = (v31 + 48);
  v1462 = (v1698 + 56);
  v1463 = (v11 + 56);
  *&v430 = 136446210;
  v1631 = v430;
  *&v430 = 136446466;
  v1687 = v430;
  v1575 = xmmword_247D246B0;
  *(&v430 + 1) = 12;
  v1573 = xmmword_247D246C0;
  *&v430 = 136446722;
  v1672 = v430;
  v431 = v424;
  v1693 = v185;
  v1486 = v429;
  while (2)
  {
    if (v428 >= *(v431 + 16))
    {
      goto LABEL_398;
    }

    v442 = *(v1633 + 72);
    v1630 = v428;
    v443 = v1606 + v442 * v428;
    v444 = v431;
    v445 = v1700;
    v446 = sub_247C74BF4(v443, v1700, type metadata accessor for FlowResponse.Step);
    MEMORY[0x28223BE20](v446);
    *(&v1457 - 2) = v445;

    v447 = sub_247C940D4(sub_247C7448C, (&v1457 - 4), v444);
    v1704 = v3;
    v448 = *(v447 + 16);

    v449 = v1632;
    if (!v448)
    {
      v450 = v1586;
      sub_247C74BF4(v445, v1586, type metadata accessor for FlowResponse.Step);
      v451 = v1587;
      sub_247C74BF4(v450, v1587, type metadata accessor for FlowResponse.Step);
      v452 = v1588;
      sub_247C74EA0(v450, v1588, type metadata accessor for FlowResponse.Step);
      v453 = sub_247D1F468();
      v454 = sub_247D20038();
      if (os_log_type_enabled(v453, v454))
      {
        v455 = swift_slowAlloc();
        v456 = swift_slowAlloc();
        v1706[0] = v456;
        *v455 = v1631;
        v457 = *(v451 + *(v1702 + 20));
        swift_beginAccess();
        v458 = *(v457 + 16);
        v459 = *(v457 + 24);

        v460 = sub_247CB03B4(v458, v459, v1706);

        *(v455 + 4) = v460;
        sub_247C74DAC(v452, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v451, type metadata accessor for FlowResponse.Step);
        _os_log_impl(&dword_247C1F000, v453, v454, "Step %{public}s is not being used.", v455, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v456);
        v449 = v1632;
        MEMORY[0x24C1B9080](v456, -1, -1);
        MEMORY[0x24C1B9080](v455, -1, -1);
      }

      else
      {

        sub_247C74DAC(v452, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v451, type metadata accessor for FlowResponse.Step);
      }

      v445 = v1700;
    }

    v461 = v445;
    v462 = *(v445 + *(v1702 + 20));
    swift_beginAccess();
    v463 = *(*(v462 + 32) + 16);
    v1642 = v462;
    if (!v463)
    {
      v464 = v1589;
      sub_247C74BF4(v461, v1589, type metadata accessor for FlowResponse.Step);
      v465 = v1590;
      sub_247C74BF4(v464, v1590, type metadata accessor for FlowResponse.Step);
      v466 = v1591;
      sub_247C74EA0(v464, v1591, type metadata accessor for FlowResponse.Step);
      v467 = sub_247D1F468();
      v468 = sub_247D20058();
      if (os_log_type_enabled(v467, v468))
      {
        v469 = swift_slowAlloc();
        v470 = swift_slowAlloc();
        v1706[0] = v470;
        *v469 = v1631;
        v471 = *(v465 + *(v1702 + 20));
        swift_beginAccess();
        v472 = *(v471 + 16);
        v473 = *(v471 + 24);

        v474 = sub_247CB03B4(v472, v473, v1706);

        *(v469 + 4) = v474;
        sub_247C74DAC(v466, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v465, type metadata accessor for FlowResponse.Step);
        _os_log_impl(&dword_247C1F000, v467, v468, "Step %{public}s has no actions.", v469, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v470);
        v475 = v470;
        v462 = v1642;
        v449 = v1632;
        MEMORY[0x24C1B9080](v475, -1, -1);
        MEMORY[0x24C1B9080](v469, -1, -1);
      }

      else
      {

        sub_247C74DAC(v466, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v465, type metadata accessor for FlowResponse.Step);
      }

      v461 = v1700;
    }

    swift_beginAccess();
    if (!*(*(v462 + 40) + 16))
    {
      v476 = v1592;
      sub_247C74BF4(v461, v1592, type metadata accessor for FlowResponse.Step);
      v477 = v1593;
      sub_247C74BF4(v476, v1593, type metadata accessor for FlowResponse.Step);
      v478 = v1594;
      sub_247C74EA0(v476, v1594, type metadata accessor for FlowResponse.Step);
      v479 = sub_247D1F468();
      v480 = sub_247D20058();
      if (os_log_type_enabled(v479, v480))
      {
        v481 = swift_slowAlloc();
        v482 = swift_slowAlloc();
        v1706[0] = v482;
        *v481 = v1631;
        v483 = *(v477 + *(v1702 + 20));
        swift_beginAccess();
        v484 = *(v483 + 16);
        v485 = *(v483 + 24);

        v486 = sub_247CB03B4(v484, v485, v1706);

        *(v481 + 4) = v486;
        sub_247C74DAC(v478, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v477, type metadata accessor for FlowResponse.Step);
        _os_log_impl(&dword_247C1F000, v479, v480, "Step %{public}s has no hiddenActions.", v481, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v482);
        v449 = v1632;
        MEMORY[0x24C1B9080](v482, -1, -1);
        MEMORY[0x24C1B9080](v481, -1, -1);
      }

      else
      {

        sub_247C74DAC(v478, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v477, type metadata accessor for FlowResponse.Step);
      }

      v461 = v1700;
    }

    v487 = v1608;
    sub_247C74BF4(v461, v1608, type metadata accessor for FlowResponse.Step);
    v488 = v1609;
    sub_247C74BF4(v487, v1609, type metadata accessor for FlowResponse.Step);
    v489 = v1610;
    sub_247C74EA0(v487, v1610, type metadata accessor for FlowResponse.Step);
    v490 = v1611;
    sub_247C74BF4(v461, v1611, type metadata accessor for FlowResponse.Step);
    v491 = v1612;
    sub_247C74BF4(v490, v1612, type metadata accessor for FlowResponse.Step);
    sub_247C74EA0(v490, v449, type metadata accessor for FlowResponse.Step);
    v492 = sub_247D1F468();
    v493 = sub_247D20058();
    if (os_log_type_enabled(v492, v493))
    {
      v494 = swift_slowAlloc();
      LODWORD(v1698) = v493;
      v495 = v494;
      *&v1697 = swift_slowAlloc();
      v1706[0] = v1697;
      *v495 = v1687;
      v496 = v1702;
      v497 = *(v488 + *(v1702 + 20));
      swift_beginAccess();
      v498 = *(v497 + 16);
      v499 = *(v497 + 24);

      v500 = sub_247CB03B4(v498, v499, v1706);

      *(v495 + 4) = v500;
      sub_247C74DAC(v489, type metadata accessor for FlowResponse.Step);
      sub_247C74DAC(v488, type metadata accessor for FlowResponse.Step);
      *(v495 + 12) = 2048;
      v501 = *(v491 + *(v496 + 20));
      swift_beginAccess();
      v502 = *(v501 + 48);
      sub_247C74DAC(v491, type metadata accessor for FlowResponse.Step);
      *(v495 + 14) = v502;
      sub_247C74DAC(v1632, type metadata accessor for FlowResponse.Step);
      _os_log_impl(&dword_247C1F000, v492, v1698, "Step %{public}s has peer step: %ld", v495, 0x16u);
      v503 = v1697;
      __swift_destroy_boxed_opaque_existential_1(v1697);
      MEMORY[0x24C1B9080](v503, -1, -1);
      MEMORY[0x24C1B9080](v495, -1, -1);
    }

    else
    {
      sub_247C74DAC(v491, type metadata accessor for FlowResponse.Step);

      sub_247C74DAC(v489, type metadata accessor for FlowResponse.Step);
      sub_247C74DAC(v488, type metadata accessor for FlowResponse.Step);
      sub_247C74DAC(v449, type metadata accessor for FlowResponse.Step);
    }

    v504 = v1624;
    v505 = v1616;
    v506 = v1623;
    v507 = v1614;
    v508 = v1700;
    v509 = v1613;
    sub_247C74BF4(v1700, v1613, type metadata accessor for FlowResponse.Step);
    sub_247C74BF4(v509, v507, type metadata accessor for FlowResponse.Step);
    sub_247C74EA0(v509, v506, type metadata accessor for FlowResponse.Step);
    v510 = v1615;
    sub_247C74BF4(v508, v1615, type metadata accessor for FlowResponse.Step);
    sub_247C74BF4(v510, v505, type metadata accessor for FlowResponse.Step);
    sub_247C74EA0(v510, v504, type metadata accessor for FlowResponse.Step);
    v511 = sub_247D1F468();
    v512 = sub_247D20058();
    if (os_log_type_enabled(v511, v512))
    {
      v513 = swift_slowAlloc();
      *&v1698 = swift_slowAlloc();
      v1706[0] = v1698;
      *v513 = v1687;
      v514 = v1702;
      v515 = *(v507 + *(v1702 + 20));
      swift_beginAccess();
      v516 = *(v515 + 16);
      v517 = *(v515 + 24);

      v518 = v505;
      v519 = sub_247CB03B4(v516, v517, v1706);

      *(v513 + 4) = v519;
      sub_247C74DAC(v1623, type metadata accessor for FlowResponse.Step);
      sub_247C74DAC(v507, type metadata accessor for FlowResponse.Step);
      *(v513 + 12) = 2048;
      v520 = *(v518 + *(v514 + 20));
      swift_beginAccess();
      v521 = *(v520 + 64);
      sub_247C74DAC(v518, type metadata accessor for FlowResponse.Step);
      *(v513 + 14) = v521;
      sub_247C74DAC(v1624, type metadata accessor for FlowResponse.Step);
      _os_log_impl(&dword_247C1F000, v511, v512, "Step %{public}s has command: %ld", v513, 0x16u);
      v522 = v1698;
      __swift_destroy_boxed_opaque_existential_1(v1698);
      MEMORY[0x24C1B9080](v522, -1, -1);
      MEMORY[0x24C1B9080](v513, -1, -1);
    }

    else
    {
      sub_247C74DAC(v505, type metadata accessor for FlowResponse.Step);

      sub_247C74DAC(v506, type metadata accessor for FlowResponse.Step);
      sub_247C74DAC(v507, type metadata accessor for FlowResponse.Step);
      sub_247C74DAC(v504, type metadata accessor for FlowResponse.Step);
    }

    v3 = v1704;
    v431 = v1694;
    v523 = v1695;
    v524 = *(v1642 + 32);
    v525 = v1693;
    *&v1697 = *(v524 + 16);
    v526 = v1700;
    if (v1697)
    {
      v1689 = v524 + ((*(v1690 + 80) + 32) & ~*(v1690 + 80));

      v527 = 0;
      isa = result;
      while (v527 < result[2].isa)
      {
        v528 = sub_247C74BF4(v1689 + *(v1690 + 72) * v527, v525, type metadata accessor for FlowResponse.Step.Action);
        MEMORY[0x28223BE20](v528);
        *(&v1457 - 2) = v525;

        v529 = v3;
        v530 = sub_247C940D4(sub_247C744AC, (&v1457 - 4), v431);
        v531 = sub_247C634A8(v530);
        v1704 = v529;

        v532 = *(v531 + 16);
        if (v532 == 2)
        {
          v555 = v1657;
          sub_247C74BF4(v526, v1657, type metadata accessor for FlowResponse.Step);
          v556 = v1658;
          sub_247C74BF4(v555, v1658, type metadata accessor for FlowResponse.Step);
          v557 = v1659;
          sub_247C74EA0(v555, v1659, type metadata accessor for FlowResponse.Step);
          v558 = v1662;
          sub_247C74BF4(v525, v1662, type metadata accessor for FlowResponse.Step.Action);
          v559 = v1663;
          sub_247C74BF4(v558, v1663, type metadata accessor for FlowResponse.Step.Action);
          v560 = v1681;
          sub_247C74EA0(v558, v1681, type metadata accessor for FlowResponse.Step.Action);
          swift_bridgeObjectRetain_n();
          v561 = sub_247D1F468();
          v562 = sub_247D20038();
          if (os_log_type_enabled(v561, v562))
          {
            v563 = swift_slowAlloc();
            *&v1698 = v531;
            v564 = v559;
            v565 = v557;
            v566 = v563;
            v1686 = swift_slowAlloc();
            v1706[0] = v1686;
            *v566 = v1672;
            v567 = *(v1702 + 20);
            LODWORD(v1682) = v562;
            v568 = *(v556 + v567);
            swift_beginAccess();
            v570 = *(v568 + 16);
            v569 = *(v568 + 24);

            v571 = sub_247CB03B4(v570, v569, v1706);

            *(v566 + 4) = v571;
            v572 = v565;
            v526 = v1700;
            sub_247C74DAC(v572, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v556, type metadata accessor for FlowResponse.Step);
            *(v566 + 12) = 2082;
            v574 = *v564;
            v573 = v564[1];

            v575 = sub_247CB03B4(v574, v573, v1706);

            *(v566 + 14) = v575;
            sub_247C74DAC(v1681, type metadata accessor for FlowResponse.Step.Action);
            sub_247C74DAC(v564, type metadata accessor for FlowResponse.Step.Action);
            *(v566 + 22) = 2082;
            v576 = v1698;
            v1705 = v1698;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63270);
            sub_247C74D48();
            v577 = sub_247D1FB68();
            v579 = sub_247CB03B4(v577, v578, v1706);

            *(v566 + 24) = v579;
            v531 = v576;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&dword_247C1F000, v561, v1682, "Step %{public}s action %{public}s has multiple step ids %{public}s.", v566, 0x20u);
            v580 = v1686;
            swift_arrayDestroy();
            v534 = v1693;
            MEMORY[0x24C1B9080](v580, -1, -1);
            MEMORY[0x24C1B9080](v566, -1, -1);

            v533 = v1694;
          }

          else
          {

            sub_247C74DAC(v557, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v556, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v560, type metadata accessor for FlowResponse.Step.Action);
            sub_247C74DAC(v559, type metadata accessor for FlowResponse.Step.Action);
            swift_bridgeObjectRelease_n();
            v533 = v1694;
            v534 = v1693;
            v526 = v1700;
          }
        }

        else
        {
          v533 = v431;
          v534 = v525;
          if (!v532)
          {
            *&v1698 = v531;
            v535 = v1655;
            sub_247C74BF4(v526, v1655, type metadata accessor for FlowResponse.Step);
            v536 = v1679;
            sub_247C74BF4(v535, v1679, type metadata accessor for FlowResponse.Step);
            v537 = v1656;
            sub_247C74EA0(v535, v1656, type metadata accessor for FlowResponse.Step);
            v538 = v525;
            v539 = v1660;
            sub_247C74BF4(v525, v1660, type metadata accessor for FlowResponse.Step.Action);
            v540 = v1661;
            sub_247C74BF4(v539, v1661, type metadata accessor for FlowResponse.Step.Action);
            v541 = v1680;
            sub_247C74EA0(v539, v1680, type metadata accessor for FlowResponse.Step.Action);
            v542 = sub_247D1F468();
            v543 = sub_247D20038();
            if (os_log_type_enabled(v542, v543))
            {
              v544 = swift_slowAlloc();
              LODWORD(v1682) = v543;
              v545 = v544;
              v1686 = swift_slowAlloc();
              v1706[0] = v1686;
              *v545 = v1687;
              v546 = *(v536 + *(v1702 + 20));
              swift_beginAccess();
              v547 = v537;
              v548 = *(v546 + 16);
              v549 = *(v546 + 24);

              v550 = sub_247CB03B4(v548, v549, v1706);

              *(v545 + 4) = v550;
              sub_247C74DAC(v547, type metadata accessor for FlowResponse.Step);
              sub_247C74DAC(v1679, type metadata accessor for FlowResponse.Step);
              *(v545 + 12) = 2082;
              v551 = *v540;
              v552 = v540[1];

              v553 = sub_247CB03B4(v551, v552, v1706);

              *(v545 + 14) = v553;
              v526 = v1700;
              v534 = v1693;
              sub_247C74DAC(v1680, type metadata accessor for FlowResponse.Step.Action);
              sub_247C74DAC(v540, type metadata accessor for FlowResponse.Step.Action);
              _os_log_impl(&dword_247C1F000, v542, v1682, "Step %{public}s action %{public}s pointing to non-existing step id.", v545, 0x16u);
              v554 = v1686;
              swift_arrayDestroy();
              MEMORY[0x24C1B9080](v554, -1, -1);
              MEMORY[0x24C1B9080](v545, -1, -1);

              v533 = v1694;
            }

            else
            {

              sub_247C74DAC(v537, type metadata accessor for FlowResponse.Step);
              sub_247C74DAC(v536, type metadata accessor for FlowResponse.Step);
              sub_247C74DAC(v541, type metadata accessor for FlowResponse.Step.Action);
              sub_247C74DAC(v540, type metadata accessor for FlowResponse.Step.Action);
              v533 = v1694;
              v534 = v538;
              v526 = v1700;
            }

            v531 = v1698;
          }
        }

        v582 = *(v534 + 16);
        v581 = *(v534 + 24);
        sub_247C885BC(v582, v581, v1692);
        if (v583)
        {

          v525 = v534;
          v431 = v533;
        }

        else
        {
          v1686 = v581;
          *&v1698 = v531;
          v584 = v1665;
          sub_247C74BF4(v526, v1665, type metadata accessor for FlowResponse.Step);
          v585 = v1666;
          sub_247C74BF4(v584, v1666, type metadata accessor for FlowResponse.Step);
          v586 = v1667;
          sub_247C74EA0(v584, v1667, type metadata accessor for FlowResponse.Step);
          v587 = v1668;
          sub_247C74BF4(v534, v1668, type metadata accessor for FlowResponse.Step.Action);
          v588 = v1683;
          sub_247C74BF4(v587, v1683, type metadata accessor for FlowResponse.Step.Action);
          v589 = v587;
          v590 = v1684;
          sub_247C74EA0(v589, v1684, type metadata accessor for FlowResponse.Step.Action);
          v591 = sub_247D1F468();
          LODWORD(v1682) = sub_247D20038();
          if (os_log_type_enabled(v591, v1682))
          {
            v592 = swift_slowAlloc();
            v1664 = swift_slowAlloc();
            v1706[0] = v1664;
            *v592 = v1687;
            v593 = *(v585 + *(v1702 + 20));
            swift_beginAccess();
            v594 = *(v593 + 16);
            v595 = *(v593 + 24);

            v596 = v586;
            v597 = sub_247CB03B4(v594, v595, v1706);

            *(v592 + 4) = v597;
            sub_247C74DAC(v596, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v585, type metadata accessor for FlowResponse.Step);
            *(v592 + 12) = 2082;
            v598 = v1683;
            v599 = *v1683;
            v600 = v1683[1];

            v601 = sub_247CB03B4(v599, v600, v1706);

            *(v592 + 14) = v601;

            sub_247C74DAC(v1684, type metadata accessor for FlowResponse.Step.Action);
            sub_247C74DAC(v598, type metadata accessor for FlowResponse.Step.Action);
            _os_log_impl(&dword_247C1F000, v591, v1682, "Step %{public}s action %{public}s missing localized key.", v592, 0x16u);
            v602 = v1664;
            swift_arrayDestroy();
            MEMORY[0x24C1B9080](v602, -1, -1);
            v603 = v592;
            v431 = v1694;
            MEMORY[0x24C1B9080](v603, -1, -1);
          }

          else
          {

            sub_247C74DAC(v586, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v585, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v590, type metadata accessor for FlowResponse.Step.Action);
            sub_247C74DAC(v588, type metadata accessor for FlowResponse.Step.Action);
            v431 = v533;
          }

          sub_247C73064(v582, v1686);
          v525 = v1693;
          v526 = v1700;
        }

        v527 = (v527 + 1);
        sub_247C74DAC(v525, type metadata accessor for FlowResponse.Step.Action);
        v523 = v1695;
        v3 = v1704;
        result = isa;
        if (v1697 == v527)
        {

          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_396:
      __break(1u);
      goto LABEL_397;
    }

LABEL_60:
    v604 = *(v1642 + 40);
    isa = v604[2].isa;
    if (!isa)
    {
      goto LABEL_86;
    }

    v1689 = v604 + ((*(v1688 + 80) + 32) & ~*(v1688 + 80));

    v605 = 0;
    v1686 = v604;
    do
    {
      if (v605 >= v604[2].isa)
      {
        goto LABEL_396;
      }

      v606 = *(v1688 + 72);
      *&v1697 = v605;
      v607 = sub_247C74BF4(v1689 + v606 * v605, v523, type metadata accessor for FlowResponse.Step.HiddenAction);
      MEMORY[0x28223BE20](v607);
      *(&v1457 - 2) = v523;

      v608 = sub_247C940D4(sub_247C754F8, (&v1457 - 4), v431);
      v609 = sub_247C634A8(v608);
      v1704 = v3;

      v610 = *(v609 + 16);
      *&v1698 = v609;
      if (v610 == 2)
      {
        v631 = v1647;
        sub_247C74BF4(v1700, v1647, type metadata accessor for FlowResponse.Step);
        v632 = v1648;
        sub_247C74BF4(v631, v1648, type metadata accessor for FlowResponse.Step);
        v633 = v1649;
        sub_247C74EA0(v631, v1649, type metadata accessor for FlowResponse.Step);
        v634 = v1652;
        sub_247C74BF4(v523, v1652, type metadata accessor for FlowResponse.Step.HiddenAction);
        v635 = v1653;
        sub_247C74BF4(v634, v1653, type metadata accessor for FlowResponse.Step.HiddenAction);
        v636 = v1654;
        sub_247C74EA0(v634, v1654, type metadata accessor for FlowResponse.Step.HiddenAction);
        swift_bridgeObjectRetain_n();
        v637 = sub_247D1F468();
        v638 = sub_247D20038();
        if (os_log_type_enabled(v637, v638))
        {
          v639 = swift_slowAlloc();
          v1682 = swift_slowAlloc();
          v1706[0] = v1682;
          *v639 = v1672;
          v640 = *(v1702 + 20);
          LODWORD(v1664) = v638;
          v641 = *(v632 + v640);
          swift_beginAccess();
          v643 = *(v641 + 16);
          v642 = *(v641 + 24);

          v644 = sub_247CB03B4(v643, v642, v1706);

          *(v639 + 4) = v644;
          sub_247C74DAC(v633, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v632, type metadata accessor for FlowResponse.Step);
          *(v639 + 12) = 2082;
          v646 = *v635;
          v645 = v635[1];

          v647 = sub_247CB03B4(v646, v645, v1706);

          *(v639 + 14) = v647;
          sub_247C74DAC(v636, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C74DAC(v635, type metadata accessor for FlowResponse.Step.HiddenAction);
          *(v639 + 22) = 2082;
          v1705 = v1698;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63270);
          sub_247C74D48();
          v648 = sub_247D1FB68();
          v650 = sub_247CB03B4(v648, v649, v1706);

          *(v639 + 24) = v650;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_247C1F000, v637, v1664, "Step %{public}s action %{public}s has multiple step ids %{public}s.", v639, 0x20u);
          v651 = v1682;
          swift_arrayDestroy();
          MEMORY[0x24C1B9080](v651, -1, -1);
          v652 = v639;
          v523 = v1695;
          MEMORY[0x24C1B9080](v652, -1, -1);
        }

        else
        {

          sub_247C74DAC(v633, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v632, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v636, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C74DAC(v635, type metadata accessor for FlowResponse.Step.HiddenAction);
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        if (v610)
        {

          goto LABEL_63;
        }

        v611 = v1644;
        sub_247C74BF4(v1700, v1644, type metadata accessor for FlowResponse.Step);
        v612 = v1645;
        sub_247C74BF4(v611, v1645, type metadata accessor for FlowResponse.Step);
        v613 = v1646;
        sub_247C74EA0(v611, v1646, type metadata accessor for FlowResponse.Step);
        v614 = v1650;
        sub_247C74BF4(v523, v1650, type metadata accessor for FlowResponse.Step.HiddenAction);
        v615 = v1651;
        sub_247C74BF4(v614, v1651, type metadata accessor for FlowResponse.Step.HiddenAction);
        v616 = v614;
        v617 = v1678;
        sub_247C74EA0(v616, v1678, type metadata accessor for FlowResponse.Step.HiddenAction);
        v618 = sub_247D1F468();
        v619 = sub_247D20038();
        if (os_log_type_enabled(v618, v619))
        {
          v620 = v615;
          v621 = swift_slowAlloc();
          v1682 = swift_slowAlloc();
          v1706[0] = v1682;
          *v621 = v1687;
          v622 = *(v612 + *(v1702 + 20));
          swift_beginAccess();
          v623 = *(v622 + 16);
          v624 = *(v622 + 24);

          v625 = sub_247CB03B4(v623, v624, v1706);

          *(v621 + 4) = v625;
          sub_247C74DAC(v613, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v612, type metadata accessor for FlowResponse.Step);
          *(v621 + 12) = 2082;
          v626 = *v620;
          v627 = v620[1];

          v628 = sub_247CB03B4(v626, v627, v1706);

          *(v621 + 14) = v628;
          v629 = v1700;
          sub_247C74DAC(v1678, type metadata accessor for FlowResponse.Step.HiddenAction);
          v523 = v1695;
          sub_247C74DAC(v620, type metadata accessor for FlowResponse.Step.HiddenAction);
          _os_log_impl(&dword_247C1F000, v618, v619, "Step %{public}s action %{public}s pointing to non-existing step id.", v621, 0x16u);
          v630 = v1682;
          swift_arrayDestroy();
          MEMORY[0x24C1B9080](v630, -1, -1);
          MEMORY[0x24C1B9080](v621, -1, -1);

          goto LABEL_74;
        }

        sub_247C74DAC(v613, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v612, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v617, type metadata accessor for FlowResponse.Step.HiddenAction);
        sub_247C74DAC(v615, type metadata accessor for FlowResponse.Step.HiddenAction);
      }

      v629 = v1700;
LABEL_74:
      if (*(v523 + 24) == 1 && *(v523 + 16))
      {
        v653 = v1636;
        sub_247C74BF4(v629, v1636, type metadata accessor for FlowResponse.Step);
        v654 = v1637;
        sub_247C74BF4(v653, v1637, type metadata accessor for FlowResponse.Step);
        sub_247C74EA0(v653, v1669, type metadata accessor for FlowResponse.Step);
        v655 = v1638;
        sub_247C74BF4(v523, v1638, type metadata accessor for FlowResponse.Step.HiddenAction);
        v656 = v1639;
        sub_247C74BF4(v655, v1639, type metadata accessor for FlowResponse.Step.HiddenAction);
        sub_247C74EA0(v655, v1670, type metadata accessor for FlowResponse.Step.HiddenAction);
        v657 = v1640;
        sub_247C74BF4(v523, v1640, type metadata accessor for FlowResponse.Step.HiddenAction);
        v658 = v1641;
        sub_247C74BF4(v657, v1641, type metadata accessor for FlowResponse.Step.HiddenAction);
        sub_247C74EA0(v657, v1671, type metadata accessor for FlowResponse.Step.HiddenAction);
        v659 = sub_247D1F468();
        v660 = sub_247D20058();
        if (os_log_type_enabled(v659, v660))
        {
          v661 = swift_slowAlloc();
          v1682 = swift_slowAlloc();
          v1706[0] = v1682;
          *v661 = v1672;
          v662 = *(v654 + *(v1702 + 20));
          swift_beginAccess();
          v663 = *(v662 + 16);
          v664 = *(v662 + 24);

          v665 = v656;
          v666 = sub_247CB03B4(v663, v664, v1706);

          *(v661 + 4) = v666;
          sub_247C74DAC(v1669, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v654, type metadata accessor for FlowResponse.Step);
          *(v661 + 12) = 2082;
          v667 = *v665;
          v668 = v665[1];

          v669 = sub_247CB03B4(v667, v668, v1706);

          *(v661 + 14) = v669;
          sub_247C74DAC(v1670, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C74DAC(v665, type metadata accessor for FlowResponse.Step.HiddenAction);
          *(v661 + 22) = 2048;
          v670 = *(v658 + 16);
          sub_247C74DAC(v658, type metadata accessor for FlowResponse.Step.HiddenAction);
          *(v661 + 24) = v670;

          sub_247C74DAC(v1671, type metadata accessor for FlowResponse.Step.HiddenAction);
          _os_log_impl(&dword_247C1F000, v659, v660, "Step %{public}s action %{public}s has child context %ld.", v661, 0x20u);
          v671 = v1682;
          swift_arrayDestroy();
          MEMORY[0x24C1B9080](v671, -1, -1);
          MEMORY[0x24C1B9080](v661, -1, -1);
        }

        else
        {
          sub_247C74DAC(v658, type metadata accessor for FlowResponse.Step.HiddenAction);

          sub_247C74DAC(v1669, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v654, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v1670, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C74DAC(v656, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C74DAC(v1671, type metadata accessor for FlowResponse.Step.HiddenAction);
        }

        v431 = v1694;
        v523 = v1695;
      }

      else
      {
        v672 = v1673;
        sub_247C74BF4(v629, v1673, type metadata accessor for FlowResponse.Step);
        v673 = v1674;
        sub_247C74BF4(v672, v1674, type metadata accessor for FlowResponse.Step);
        v674 = v1675;
        sub_247C74EA0(v672, v1675, type metadata accessor for FlowResponse.Step);
        v675 = v1676;
        sub_247C74BF4(v523, v1676, type metadata accessor for FlowResponse.Step.HiddenAction);
        v676 = v1677;
        sub_247C74BF4(v675, v1677, type metadata accessor for FlowResponse.Step.HiddenAction);
        v677 = v675;
        v678 = v1685;
        sub_247C74EA0(v677, v1685, type metadata accessor for FlowResponse.Step.HiddenAction);
        v679 = sub_247D1F468();
        v680 = sub_247D20038();
        if (os_log_type_enabled(v679, v680))
        {
          v681 = swift_slowAlloc();
          v1682 = swift_slowAlloc();
          v1706[0] = v1682;
          *v681 = v1687;
          v682 = *(v673 + *(v1702 + 20));
          swift_beginAccess();
          v683 = *(v682 + 16);
          v684 = *(v682 + 24);

          v685 = sub_247CB03B4(v683, v684, v1706);

          *(v681 + 4) = v685;
          sub_247C74DAC(v674, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v673, type metadata accessor for FlowResponse.Step);
          *(v681 + 12) = 2082;
          v686 = *v676;
          v687 = v676[1];

          v688 = sub_247CB03B4(v686, v687, v1706);
          v523 = v1695;

          *(v681 + 14) = v688;

          sub_247C74DAC(v1685, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C74DAC(v676, type metadata accessor for FlowResponse.Step.HiddenAction);
          _os_log_impl(&dword_247C1F000, v679, v680, "Step %{public}s action %{public}s missing child context.", v681, 0x16u);
          v689 = v1682;
          swift_arrayDestroy();
          MEMORY[0x24C1B9080](v689, -1, -1);
          MEMORY[0x24C1B9080](v681, -1, -1);
        }

        else
        {

          sub_247C74DAC(v674, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v673, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v678, type metadata accessor for FlowResponse.Step.HiddenAction);
          sub_247C74DAC(v676, type metadata accessor for FlowResponse.Step.HiddenAction);
        }

        v431 = v1694;
      }

      v604 = v1686;
LABEL_63:
      v605 = (v1697 + 1);
      result = sub_247C74DAC(v523, type metadata accessor for FlowResponse.Step.HiddenAction);
      v3 = v1704;
    }

    while (isa != v605);

LABEL_86:
    v690 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
    v691 = v1642;
    swift_beginAccess();
    v692 = v691 + v690;
    v693 = v1622;
    sub_247C2BD10(v692, v1622, &unk_27EE63230);
    v694 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
    if ((*(*(v694 - 8) + 48))(v693, 1, v694) == 1)
    {
      v695 = v1595;
      sub_247C74BF4(v1700, v1595, type metadata accessor for FlowResponse.Step);
      v696 = v1596;
      sub_247C74BF4(v695, v1596, type metadata accessor for FlowResponse.Step);
      v697 = v1597;
      sub_247C74EA0(v695, v1597, type metadata accessor for FlowResponse.Step);
      v698 = sub_247D1F468();
      v699 = sub_247D20038();
      if (!os_log_type_enabled(v698, v699))
      {

        sub_247C74DAC(v697, type metadata accessor for FlowResponse.Step);
        v700 = v696;
        v701 = type metadata accessor for FlowResponse.Step;
        goto LABEL_89;
      }

      v432 = swift_slowAlloc();
      v433 = swift_slowAlloc();
      v1706[0] = v433;
      *v432 = v1631;
      LODWORD(v1698) = v699;
      v434 = v432;
      v435 = *(v1702 + 20);
      v1704 = v3;
      v436 = *(v696 + v435);
      swift_beginAccess();
      v437 = *(v436 + 16);
      v438 = *(v436 + 24);

      v439 = sub_247CB03B4(v437, v438, v1706);

      *(v434 + 1) = v439;
      sub_247C74DAC(v697, type metadata accessor for FlowResponse.Step);
      v3 = v1704;
      sub_247C74DAC(v696, type metadata accessor for FlowResponse.Step);
      _os_log_impl(&dword_247C1F000, v698, v1698, "Step %{public}s missing contents object.", v434, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v433);
      v440 = v433;
      v431 = v1694;
      MEMORY[0x24C1B9080](v440, -1, -1);
      MEMORY[0x24C1B9080](v434, -1, -1);

LABEL_16:
      v441 = v1630;
      goto LABEL_17;
    }

    v702 = swift_getEnumCaseMultiPayload();
    if (v702 > 2)
    {
      v441 = v1630;
      if (v702 == 3)
      {
        sub_247C74DAC(v1622, type metadata accessor for FlowResponse.Step.OneOf_Contents);
        goto LABEL_17;
      }

      if (v702 == 4)
      {
        v708 = v1574;
        sub_247C74EA0(v1622, v1574, type metadata accessor for FlowResponse.Step.URL);
        v709 = v708[1];
        v710 = *v708 & 0xFFFFFFFFFFFFLL;
        if ((v709 & 0x2000000000000000) != 0)
        {
          v710 = HIBYTE(v709) & 0xF;
        }

        if (!v710)
        {
          v711 = v1531;
          sub_247C74BF4(v1700, v1531, type metadata accessor for FlowResponse.Step);
          v712 = v1532;
          sub_247C74BF4(v711, v1532, type metadata accessor for FlowResponse.Step);
          v713 = v1533;
          sub_247C74EA0(v711, v1533, type metadata accessor for FlowResponse.Step);
          v714 = sub_247D1F468();
          v715 = sub_247D20038();
          if (os_log_type_enabled(v714, v715))
          {
            v716 = swift_slowAlloc();
            v717 = swift_slowAlloc();
            v1706[0] = v717;
            *v716 = v1631;
            v718 = *(v1702 + 20);
            v1704 = v3;
            v719 = *(v712 + v718);
            swift_beginAccess();
            v720 = *(v719 + 16);
            v721 = *(v719 + 24);

            v722 = v712;
            v723 = sub_247CB03B4(v720, v721, v1706);

            *(v716 + 4) = v723;
            sub_247C74DAC(v713, type metadata accessor for FlowResponse.Step);
            v724 = v722;
            v3 = v1704;
            sub_247C74DAC(v724, type metadata accessor for FlowResponse.Step);
            _os_log_impl(&dword_247C1F000, v714, v715, "Step %{public}s (URL) is missing valid URL string.", v716, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v717);
            v725 = v717;
            v431 = v1694;
            MEMORY[0x24C1B9080](v725, -1, -1);
            MEMORY[0x24C1B9080](v716, -1, -1);
          }

          else
          {

            sub_247C74DAC(v713, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v712, type metadata accessor for FlowResponse.Step);
          }

          v708 = v1574;
          v441 = v1630;
        }

        sub_247C74DAC(v708, type metadata accessor for FlowResponse.Step.URL);
        goto LABEL_17;
      }

      v1704 = v3;
      v796 = v1582;
      sub_247C74EA0(v1622, v1582, type metadata accessor for FlowResponse.Step.Progress);
      v797 = *v796;
      v798 = v796[1];
      sub_247C885BC(*v796, v798, v1692);
      if (v799)
      {
      }

      else
      {
        v829 = v1529;
        sub_247C74BF4(v1700, v1529, type metadata accessor for FlowResponse.Step);
        v830 = v1557;
        sub_247C74BF4(v829, v1557, type metadata accessor for FlowResponse.Step);
        v831 = v829;
        v832 = v1530;
        sub_247C74EA0(v831, v1530, type metadata accessor for FlowResponse.Step);
        v833 = sub_247D1F468();
        v834 = sub_247D20038();
        if (os_log_type_enabled(v833, v834))
        {
          v835 = swift_slowAlloc();
          *&v1698 = swift_slowAlloc();
          v1706[0] = v1698;
          *v835 = v1631;
          v836 = *(v830 + *(v1702 + 20));
          swift_beginAccess();
          v837 = *(v836 + 16);
          v838 = *(v836 + 24);

          v839 = sub_247CB03B4(v837, v838, v1706);
          LODWORD(v1697) = v834;
          v840 = v839;

          *(v835 + 4) = v840;
          sub_247C74DAC(v832, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v1557, type metadata accessor for FlowResponse.Step);
          _os_log_impl(&dword_247C1F000, v833, v1697, "Step %{public}s masthead missing localized key.", v835, 0xCu);
          v841 = v1698;
          __swift_destroy_boxed_opaque_existential_1(v1698);
          MEMORY[0x24C1B9080](v841, -1, -1);
          v842 = v835;
          v431 = v1694;
          MEMORY[0x24C1B9080](v842, -1, -1);
        }

        else
        {

          sub_247C74DAC(v832, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v830, type metadata accessor for FlowResponse.Step);
        }

        sub_247C73064(v797, v798);
      }

      v861 = *(v1582 + 16);
      v862 = *(v1582 + 24);
      v863 = HIBYTE(v862) & 0xF;
      if ((v862 & 0x2000000000000000) == 0)
      {
        v863 = v861 & 0xFFFFFFFFFFFFLL;
      }

      if (v863)
      {
        sub_247C885BC(*(v1582 + 16), *(v1582 + 24), v1692);
        if (v864)
        {
        }

        else
        {
          v865 = v1502;
          sub_247C74BF4(v1700, v1502, type metadata accessor for FlowResponse.Step);
          sub_247C74BF4(v865, v1536, type metadata accessor for FlowResponse.Step);
          v866 = v1580;
          v867 = swift_allocObject();
          sub_247C74EA0(v865, v867 + v866, type metadata accessor for FlowResponse.Step);
          *&v1697 = sub_247D1F468();
          LODWORD(v1698) = sub_247D20058();
          v868 = swift_allocObject();
          *(v868 + 16) = 34;
          v869 = swift_allocObject();
          *(v869 + 16) = 8;
          v870 = swift_allocObject();
          *(v870 + 16) = sub_247C753E4;
          *(v870 + 24) = v867;
          v871 = swift_allocObject();
          *(v871 + 16) = sub_247C747BC;
          *(v871 + 24) = v870;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
          inited = swift_initStackObject();
          *(inited + 16) = v1575;
          *(inited + 32) = sub_247C7477C;
          *(inited + 40) = v868;
          *(inited + 48) = sub_247C75534;
          *(inited + 56) = v869;
          *(inited + 64) = sub_247C747C4;
          *(inited + 72) = v871;
          swift_setDeallocating();
          isa = v867;

          sub_247C743E0();
          v873 = v1697;
          if (os_log_type_enabled(v1697, v1698))
          {
            v874 = swift_slowAlloc();
            v1689 = swift_slowAlloc();
            v1706[0] = v1689;
            *v874 = 258;
            *(v874 + 2) = 34;

            *(v874 + 3) = 8;

            v875 = v1536;
            v876 = *(v1536 + *(v1702 + 20));
            swift_beginAccess();
            v877 = *(v876 + 16);
            v878 = *(v876 + 24);

            v879 = sub_247CB03B4(v877, v878, v1706);

            *(v874 + 4) = v879;

            sub_247C74DAC(v875, type metadata accessor for FlowResponse.Step);
            v880 = v1697;
            _os_log_impl(&dword_247C1F000, v1697, v1698, "Step %{public}s masthead missing subtitle.", v874, 0xCu);
            v881 = v1689;
            __swift_destroy_boxed_opaque_existential_1(v1689);
            MEMORY[0x24C1B9080](v881, -1, -1);
            MEMORY[0x24C1B9080](v874, -1, -1);
          }

          else
          {

            sub_247C74DAC(v1536, type metadata accessor for FlowResponse.Step);
          }

          sub_247C73064(v861, v862);
          v431 = v1694;
        }
      }

      v999 = type metadata accessor for FlowResponse.Step.Progress;
      v1000 = v1582;
LABEL_250:
      sub_247C74DAC(v1000, v999);
      v3 = v1704;
      goto LABEL_16;
    }

    v703 = v1584;
    if (v702)
    {
      v1704 = v3;
      if (v702 == 1)
      {
        v704 = v1598;
        sub_247C74EA0(v1622, v1598, type metadata accessor for FlowResponse.Step.CosmeticCapture);
        v705 = *v704;
        v706 = v704[1];
        sub_247C885BC(*v704, v706, v1692);
        if (v707)
        {
        }

        else
        {
          v817 = v1523;
          sub_247C74BF4(v1700, v1523, type metadata accessor for FlowResponse.Step);
          v818 = v1524;
          sub_247C74BF4(v817, v1524, type metadata accessor for FlowResponse.Step);
          v819 = v1525;
          sub_247C74EA0(v817, v1525, type metadata accessor for FlowResponse.Step);
          v820 = sub_247D1F468();
          v821 = sub_247D20058();
          if (os_log_type_enabled(v820, v821))
          {
            v822 = swift_slowAlloc();
            LODWORD(v1698) = v821;
            v823 = v822;
            *&v1697 = swift_slowAlloc();
            v1706[0] = v1697;
            *v823 = v1631;
            v824 = *(v818 + *(v1702 + 20));
            swift_beginAccess();
            v825 = *(v824 + 16);
            v826 = *(v824 + 24);

            v827 = sub_247CB03B4(v825, v826, v1706);

            *(v823 + 4) = v827;
            sub_247C74DAC(v819, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v818, type metadata accessor for FlowResponse.Step);
            _os_log_impl(&dword_247C1F000, v820, v1698, "Step %{public}s navigation missing localized key.", v823, 0xCu);
            v828 = v1697;
            __swift_destroy_boxed_opaque_existential_1(v1697);
            MEMORY[0x24C1B9080](v828, -1, -1);
            MEMORY[0x24C1B9080](v823, -1, -1);
          }

          else
          {

            sub_247C74DAC(v819, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v818, type metadata accessor for FlowResponse.Step);
          }

          sub_247C73064(v705, v706);
          v3 = v1704;
        }

        v847 = v1598[2];
        v848 = v1598[3];
        sub_247C885BC(v847, v848, v1692);
        if (v849)
        {
        }

        else
        {
          v850 = v1526;
          sub_247C74BF4(v1700, v1526, type metadata accessor for FlowResponse.Step);
          v851 = v1556;
          sub_247C74BF4(v850, v1556, type metadata accessor for FlowResponse.Step);
          v852 = v1527;
          sub_247C74EA0(v850, v1527, type metadata accessor for FlowResponse.Step);
          v853 = sub_247D1F468();
          v854 = sub_247D20038();
          if (os_log_type_enabled(v853, v854))
          {
            v855 = swift_slowAlloc();
            *&v1698 = swift_slowAlloc();
            v1706[0] = v1698;
            *v855 = v1631;
            v856 = *(v851 + *(v1702 + 20));
            swift_beginAccess();
            v857 = *(v856 + 16);
            v858 = *(v856 + 24);

            v859 = sub_247CB03B4(v857, v858, v1706);

            *(v855 + 4) = v859;
            sub_247C74DAC(v852, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v1556, type metadata accessor for FlowResponse.Step);
            _os_log_impl(&dword_247C1F000, v853, v854, "Step %{public}s missing localized key.", v855, 0xCu);
            v860 = v1698;
            __swift_destroy_boxed_opaque_existential_1(v1698);
            MEMORY[0x24C1B9080](v860, -1, -1);
            MEMORY[0x24C1B9080](v855, -1, -1);
          }

          else
          {

            sub_247C74DAC(v852, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v851, type metadata accessor for FlowResponse.Step);
          }

          sub_247C73064(v847, v848);
          v3 = v1704;
        }

        v891 = v1598;
        v892 = v1598[5];
        *&v1697 = v1598[4];
        sub_247C885BC(v1697, v892, v1692);
        if (v893)
        {
        }

        else
        {
          v1664 = v892;
          v894 = v1528;
          sub_247C74BF4(v1700, v1528, type metadata accessor for FlowResponse.Step);
          sub_247C74BF4(v894, v1563, type metadata accessor for FlowResponse.Step);
          v895 = v1580;
          v896 = swift_allocObject();
          isa = v896;
          sub_247C74EA0(v894, v896 + v895, type metadata accessor for FlowResponse.Step);
          v897 = v891;
          v898 = v1534;
          sub_247C74BF4(v897, v1534, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          sub_247C74BF4(v898, v1564, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          v899 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
          *&v1698 = swift_allocObject();
          sub_247C74EA0(v898, v1698 + v899, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          v1460 = sub_247D1F468();
          LODWORD(v1682) = sub_247D20038();
          v900 = swift_allocObject();
          *(v900 + 16) = 34;
          v901 = swift_allocObject();
          *(v901 + 16) = 8;
          v902 = v901;
          v903 = swift_allocObject();
          *(v903 + 16) = sub_247C753E4;
          *(v903 + 24) = v896;
          v904 = swift_allocObject();
          *(v904 + 16) = sub_247C75530;
          *(v904 + 24) = v903;
          v905 = v904;
          v1459 = v904;
          v1689 = swift_allocObject();
          *(v1689 + 16) = 34;
          v1686 = swift_allocObject();
          LOBYTE(v1686[2].isa) = 8;
          v906 = swift_allocObject();
          v907 = v1698;
          *(v906 + 16) = sub_247C74820;
          *(v906 + 24) = v907;
          v908 = swift_allocObject();
          *(v908 + 16) = sub_247C75530;
          *(v908 + 24) = v906;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
          v909 = swift_allocObject();
          *(v909 + 16) = v1573;
          *(v909 + 32) = sub_247C75534;
          *(v909 + 40) = v900;
          *(v909 + 48) = sub_247C75534;
          *(v909 + 56) = v902;
          *(v909 + 64) = sub_247C7531C;
          *(v909 + 72) = v905;
          v910 = v1689;
          *(v909 + 80) = sub_247C75534;
          *(v909 + 88) = v910;
          v911 = v1686;
          *(v909 + 96) = sub_247C75534;
          *(v909 + 104) = v911;
          *(v909 + 112) = sub_247C7531C;
          *(v909 + 120) = v908;
          swift_setDeallocating();

          v1461 = v903;

          v1642 = v906;

          sub_247C743E0();
          v912 = v1460;
          if (os_log_type_enabled(v1460, v1682))
          {
            v913 = swift_slowAlloc();
            v1458 = swift_slowAlloc();
            v1706[0] = v1458;
            *v913 = 514;
            *(v913 + 2) = 34;

            *(v913 + 3) = 8;

            v914 = v1563;
            v915 = *(v1563 + *(v1702 + 20));
            swift_beginAccess();
            v916 = *(v915 + 16);
            v917 = *(v915 + 24);

            v918 = sub_247CB03B4(v916, v917, v1706);

            *(v913 + 4) = v918;

            sub_247C74DAC(v914, type metadata accessor for FlowResponse.Step);
            *(v913 + 12) = 34;

            *(v913 + 13) = 8;

            v919 = v1564;
            v920 = *(v1564 + 32);
            v921 = *(v1564 + 40);

            v922 = sub_247CB03B4(v920, v921, v1706);

            *(v913 + 14) = v922;

            sub_247C74DAC(v919, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            _os_log_impl(&dword_247C1F000, v912, v1682, "Step %{public}s missing localized key '%{public}s'.", v913, 0x16u);
            v923 = v1458;
            swift_arrayDestroy();
            MEMORY[0x24C1B9080](v923, -1, -1);
            MEMORY[0x24C1B9080](v913, -1, -1);
          }

          else
          {

            sub_247C74DAC(v1563, type metadata accessor for FlowResponse.Step);

            sub_247C74DAC(v1564, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          }

          sub_247C73064(v1697, v1664);
          v3 = v1704;
        }

        v924 = v1700;
        v925 = v1598;
        if (sub_247CFCF0C())
        {
          v926 = v1550;
          sub_247CFC9E4(v1550);
          v928 = *v926;
          v927 = *(v926 + 1);

          sub_247C74DAC(v926, type metadata accessor for FileUploadToken);

          v929 = HIBYTE(v927) & 0xF;
          if ((v927 & 0x2000000000000000) == 0)
          {
            v929 = v928 & 0xFFFFFFFFFFFFLL;
          }

          if (!v929)
          {
            v930 = v1489;
            sub_247C74BF4(v924, v1489, type metadata accessor for FlowResponse.Step);
            sub_247C74BF4(v930, v1519, type metadata accessor for FlowResponse.Step);
            v931 = v1580;
            v932 = swift_allocObject();
            isa = v932;
            sub_247C74EA0(v930, v932 + v931, type metadata accessor for FlowResponse.Step);
            v933 = v1497;
            sub_247C74BF4(v925, v1497, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            sub_247C74BF4(v933, v1537, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v934 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
            v935 = swift_allocObject();
            *&v1697 = v935;
            sub_247C74EA0(v933, v935 + v934, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v1686 = sub_247D1F468();
            LODWORD(v1682) = sub_247D20038();
            *&v1698 = swift_allocObject();
            *(v1698 + 16) = 34;
            v936 = swift_allocObject();
            *(v936 + 16) = 8;
            v937 = swift_allocObject();
            *(v937 + 16) = sub_247C753E4;
            *(v937 + 24) = v932;
            v938 = swift_allocObject();
            *(v938 + 16) = sub_247C75530;
            *(v938 + 24) = v937;
            v939 = swift_allocObject();
            *(v939 + 16) = 34;
            v1689 = swift_allocObject();
            *(v1689 + 16) = 8;
            v940 = swift_allocObject();
            *(v940 + 16) = sub_247C74BF0;
            *(v940 + 24) = v935;
            v941 = swift_allocObject();
            v941[2].isa = sub_247C75530;
            v941[3].isa = v940;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
            v942 = swift_allocObject();
            *(v942 + 16) = v1573;
            v943 = v1698;
            *(v942 + 32) = sub_247C75534;
            *(v942 + 40) = v943;
            *(v942 + 48) = sub_247C75534;
            *(v942 + 56) = v936;
            *(v942 + 64) = sub_247C7531C;
            *(v942 + 72) = v938;
            *(v942 + 80) = sub_247C75534;
            *(v942 + 88) = v939;
            v944 = v1689;
            *(v942 + 96) = sub_247C75534;
            *(v942 + 104) = v944;
            *(v942 + 112) = sub_247C7531C;
            *(v942 + 120) = v941;
            swift_setDeallocating();

            v1642 = v937;

            v1664 = v939;

            sub_247C743E0();
            v945 = v1686;
            if (os_log_type_enabled(v1686, v1682))
            {
              v1460 = v941;
              v1461 = v940;
              v946 = swift_slowAlloc();
              v1459 = swift_slowAlloc();
              v1706[0] = v1459;
              *v946 = 514;
              *(v946 + 2) = 34;

              *(v946 + 3) = 8;

              v947 = v1519;
              v948 = *(v1519 + *(v1702 + 20));
              swift_beginAccess();
              v949 = *(v948 + 16);
              v950 = *(v948 + 24);

              v951 = sub_247CB03B4(v949, v950, v1706);

              *(v946 + 4) = v951;

              sub_247C74DAC(v947, type metadata accessor for FlowResponse.Step);
              *(v946 + 12) = 34;

              *(v946 + 13) = 8;

              v952 = v1481;
              sub_247C2BD10(v1537 + *(v1554 + 36), v1481, &qword_27EE63290);
              v953 = *v1486;
              v954 = v1555;
              if ((*v1486)(v952, 1, v1555) == 1)
              {
                v955 = v1476;
                *v1476 = 0;
                *(v955 + 1) = 0xE000000000000000;
                *(v955 + 2) = 0;
                *(v955 + 3) = 0xE000000000000000;
                *(v955 + 4) = 0;
                *(v955 + 5) = 0xE000000000000000;
                *(v955 + 6) = 0;
                *(v955 + 7) = 0xE000000000000000;
                sub_247D1F188();
                (*v1463)(&v955[*(v954 + 36)], 1, 1, v1514);
                v956 = v954;
                v957 = v955;
                v958 = v953(v952, 1, v956);
                v3 = v1704;
                v924 = v1700;
                v959 = v1682;
                if (v958 != 1)
                {
                  sub_247C27100(v1481, &qword_27EE63290);
                }
              }

              else
              {
                v957 = v1476;
                sub_247C74EA0(v952, v1476, type metadata accessor for FileUploadToken);
                v3 = v1704;
                v924 = v1700;
                v959 = v1682;
              }

              v1152 = *(v957 + 6);
              v1153 = *(v957 + 7);

              sub_247C74DAC(v957, type metadata accessor for FileUploadToken);
              v1154 = sub_247CB03B4(v1152, v1153, v1706);

              *(v946 + 14) = v1154;

              sub_247C74DAC(v1537, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1155 = v1686;
              _os_log_impl(&dword_247C1F000, v1686, v959, "Step %{public}s missing upload URL for token %{public}s.", v946, 0x16u);
              v1156 = v1459;
              swift_arrayDestroy();
              MEMORY[0x24C1B9080](v1156, -1, -1);
              MEMORY[0x24C1B9080](v946, -1, -1);

              v925 = v1598;
            }

            else
            {

              sub_247C74DAC(v1519, type metadata accessor for FlowResponse.Step);

              sub_247C74DAC(v1537, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v3 = v1704;
              v925 = v1598;
              v924 = v1700;
            }
          }

          v1157 = v1551;
          sub_247CFC9E4(v1551);
          v1159 = *(v1157 + 2);
          v1158 = *(v1157 + 3);

          sub_247C74DAC(v1157, type metadata accessor for FileUploadToken);

          v1160 = HIBYTE(v1158) & 0xF;
          if ((v1158 & 0x2000000000000000) == 0)
          {
            v1160 = v1159 & 0xFFFFFFFFFFFFLL;
          }

          if (!v1160)
          {
            v1161 = v1490;
            sub_247C74BF4(v924, v1490, type metadata accessor for FlowResponse.Step);
            sub_247C74BF4(v1161, v1520, type metadata accessor for FlowResponse.Step);
            v1162 = v1580;
            v1163 = swift_allocObject();
            isa = v1163;
            sub_247C74EA0(v1161, v1163 + v1162, type metadata accessor for FlowResponse.Step);
            v1164 = v1498;
            sub_247C74BF4(v925, v1498, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            sub_247C74BF4(v1164, v1538, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v1165 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
            v1166 = swift_allocObject();
            *&v1697 = v1166;
            sub_247C74EA0(v1164, v1166 + v1165, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v1686 = sub_247D1F468();
            LODWORD(v1682) = sub_247D20038();
            *&v1698 = swift_allocObject();
            *(v1698 + 16) = 34;
            v1167 = swift_allocObject();
            *(v1167 + 16) = 8;
            v1168 = swift_allocObject();
            *(v1168 + 16) = sub_247C753E4;
            *(v1168 + 24) = v1163;
            v1169 = swift_allocObject();
            *(v1169 + 16) = sub_247C75530;
            *(v1169 + 24) = v1168;
            v1170 = swift_allocObject();
            *(v1170 + 16) = 34;
            v1689 = swift_allocObject();
            *(v1689 + 16) = 8;
            v1171 = swift_allocObject();
            *(v1171 + 16) = sub_247C7543C;
            *(v1171 + 24) = v1166;
            v1172 = swift_allocObject();
            v1172[2].isa = sub_247C75530;
            v1172[3].isa = v1171;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
            v1173 = swift_allocObject();
            *(v1173 + 16) = v1573;
            v1174 = v1698;
            *(v1173 + 32) = sub_247C75534;
            *(v1173 + 40) = v1174;
            *(v1173 + 48) = sub_247C75534;
            *(v1173 + 56) = v1167;
            *(v1173 + 64) = sub_247C7531C;
            *(v1173 + 72) = v1169;
            *(v1173 + 80) = sub_247C75534;
            *(v1173 + 88) = v1170;
            v1175 = v1689;
            *(v1173 + 96) = sub_247C75534;
            *(v1173 + 104) = v1175;
            *(v1173 + 112) = sub_247C7531C;
            *(v1173 + 120) = v1172;
            swift_setDeallocating();

            v1642 = v1168;

            v1664 = v1170;

            sub_247C743E0();
            v1176 = v1686;
            if (os_log_type_enabled(v1686, v1682))
            {
              v1460 = v1172;
              v1461 = v1171;
              v1177 = swift_slowAlloc();
              v1459 = swift_slowAlloc();
              v1706[0] = v1459;
              *v1177 = 514;
              *(v1177 + 2) = 34;

              *(v1177 + 3) = 8;

              v1178 = v1520;
              v1179 = *(v1520 + *(v1702 + 20));
              swift_beginAccess();
              v1180 = *(v1179 + 16);
              v1181 = *(v1179 + 24);

              v1182 = sub_247CB03B4(v1180, v1181, v1706);

              *(v1177 + 4) = v1182;

              sub_247C74DAC(v1178, type metadata accessor for FlowResponse.Step);
              *(v1177 + 12) = 34;

              *(v1177 + 13) = 8;

              v1183 = v1482;
              sub_247C2BD10(v1538 + *(v1554 + 36), v1482, &qword_27EE63290);
              v1184 = *v1486;
              v1185 = v1555;
              if ((*v1486)(v1183, 1, v1555) == 1)
              {
                v1186 = v1477;
                *v1477 = 0;
                *(v1186 + 1) = 0xE000000000000000;
                *(v1186 + 2) = 0;
                *(v1186 + 3) = 0xE000000000000000;
                *(v1186 + 4) = 0;
                *(v1186 + 5) = 0xE000000000000000;
                *(v1186 + 6) = 0;
                *(v1186 + 7) = 0xE000000000000000;
                sub_247D1F188();
                (*v1463)(&v1186[*(v1185 + 36)], 1, 1, v1514);
                v1187 = v1185;
                v1188 = v1186;
                v1189 = v1184(v1183, 1, v1187);
                v3 = v1704;
                v924 = v1700;
                v1190 = v1682;
                if (v1189 != 1)
                {
                  sub_247C27100(v1482, &qword_27EE63290);
                }
              }

              else
              {
                v1188 = v1477;
                sub_247C74EA0(v1183, v1477, type metadata accessor for FileUploadToken);
                v3 = v1704;
                v924 = v1700;
                v1190 = v1682;
              }

              v1191 = *(v1188 + 6);
              v1192 = *(v1188 + 7);

              sub_247C74DAC(v1188, type metadata accessor for FileUploadToken);
              v1193 = sub_247CB03B4(v1191, v1192, v1706);

              *(v1177 + 14) = v1193;

              sub_247C74DAC(v1538, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1194 = v1686;
              _os_log_impl(&dword_247C1F000, v1686, v1190, "Step %{public}s missing upload key for token %{public}s.", v1177, 0x16u);
              v1195 = v1459;
              swift_arrayDestroy();
              MEMORY[0x24C1B9080](v1195, -1, -1);
              MEMORY[0x24C1B9080](v1177, -1, -1);

              v925 = v1598;
            }

            else
            {

              sub_247C74DAC(v1520, type metadata accessor for FlowResponse.Step);

              sub_247C74DAC(v1538, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v3 = v1704;
              v925 = v1598;
              v924 = v1700;
            }
          }

          v1196 = v1552;
          sub_247CFC9E4(v1552);
          v1198 = *(v1196 + 2);
          v1197 = *(v1196 + 3);

          sub_247C74DAC(v1196, type metadata accessor for FileUploadToken);

          v1199 = HIBYTE(v1197) & 0xF;
          if ((v1197 & 0x2000000000000000) == 0)
          {
            v1199 = v1198 & 0xFFFFFFFFFFFFLL;
          }

          if (!v1199)
          {
            v1200 = v1491;
            sub_247C74BF4(v924, v1491, type metadata accessor for FlowResponse.Step);
            sub_247C74BF4(v1200, v1521, type metadata accessor for FlowResponse.Step);
            v1201 = v1580;
            v1202 = swift_allocObject();
            isa = v1202;
            sub_247C74EA0(v1200, v1202 + v1201, type metadata accessor for FlowResponse.Step);
            v1203 = v1499;
            sub_247C74BF4(v925, v1499, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            sub_247C74BF4(v1203, v1539, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v1204 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
            v1205 = swift_allocObject();
            *&v1697 = v1205;
            sub_247C74EA0(v1203, v1205 + v1204, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v1686 = sub_247D1F468();
            LODWORD(v1682) = sub_247D20038();
            *&v1698 = swift_allocObject();
            *(v1698 + 16) = 34;
            v1206 = swift_allocObject();
            *(v1206 + 16) = 8;
            v1207 = swift_allocObject();
            *(v1207 + 16) = sub_247C753E4;
            *(v1207 + 24) = v1202;
            v1208 = swift_allocObject();
            *(v1208 + 16) = sub_247C75530;
            *(v1208 + 24) = v1207;
            v1209 = swift_allocObject();
            *(v1209 + 16) = 34;
            v1689 = swift_allocObject();
            *(v1689 + 16) = 8;
            v1210 = swift_allocObject();
            *(v1210 + 16) = sub_247C7543C;
            *(v1210 + 24) = v1205;
            v1211 = swift_allocObject();
            v1211[2].isa = sub_247C75530;
            v1211[3].isa = v1210;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
            v1212 = swift_allocObject();
            *(v1212 + 16) = v1573;
            v1213 = v1698;
            *(v1212 + 32) = sub_247C75534;
            *(v1212 + 40) = v1213;
            *(v1212 + 48) = sub_247C75534;
            *(v1212 + 56) = v1206;
            *(v1212 + 64) = sub_247C7531C;
            *(v1212 + 72) = v1208;
            *(v1212 + 80) = sub_247C75534;
            *(v1212 + 88) = v1209;
            v1214 = v1689;
            *(v1212 + 96) = sub_247C75534;
            *(v1212 + 104) = v1214;
            *(v1212 + 112) = sub_247C7531C;
            *(v1212 + 120) = v1211;
            swift_setDeallocating();

            v1642 = v1207;

            v1664 = v1209;

            sub_247C743E0();
            v1215 = v1686;
            if (os_log_type_enabled(v1686, v1682))
            {
              v1460 = v1211;
              v1461 = v1210;
              v1216 = swift_slowAlloc();
              v1459 = swift_slowAlloc();
              v1706[0] = v1459;
              *v1216 = 514;
              *(v1216 + 2) = 34;

              *(v1216 + 3) = 8;

              v1217 = v1521;
              v1218 = *(v1521 + *(v1702 + 20));
              swift_beginAccess();
              v1219 = *(v1218 + 16);
              v1220 = *(v1218 + 24);

              v1221 = sub_247CB03B4(v1219, v1220, v1706);

              *(v1216 + 4) = v1221;

              sub_247C74DAC(v1217, type metadata accessor for FlowResponse.Step);
              *(v1216 + 12) = 34;

              *(v1216 + 13) = 8;

              v1222 = v1483;
              sub_247C2BD10(v1539 + *(v1554 + 36), v1483, &qword_27EE63290);
              v1223 = *v1486;
              v1224 = v1555;
              if ((*v1486)(v1222, 1, v1555) == 1)
              {
                v1225 = v1478;
                *v1478 = 0;
                *(v1225 + 1) = 0xE000000000000000;
                *(v1225 + 2) = 0;
                *(v1225 + 3) = 0xE000000000000000;
                *(v1225 + 4) = 0;
                *(v1225 + 5) = 0xE000000000000000;
                *(v1225 + 6) = 0;
                *(v1225 + 7) = 0xE000000000000000;
                sub_247D1F188();
                (*v1463)(&v1225[*(v1224 + 36)], 1, 1, v1514);
                v1226 = v1224;
                v1227 = v1225;
                v1228 = v1223(v1222, 1, v1226);
                v3 = v1704;
                v924 = v1700;
                v1229 = v1682;
                if (v1228 != 1)
                {
                  sub_247C27100(v1483, &qword_27EE63290);
                }
              }

              else
              {
                v1227 = v1478;
                sub_247C74EA0(v1222, v1478, type metadata accessor for FileUploadToken);
                v3 = v1704;
                v924 = v1700;
                v1229 = v1682;
              }

              v1230 = *(v1227 + 6);
              v1231 = *(v1227 + 7);

              sub_247C74DAC(v1227, type metadata accessor for FileUploadToken);
              v1232 = sub_247CB03B4(v1230, v1231, v1706);

              *(v1216 + 14) = v1232;

              sub_247C74DAC(v1539, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1233 = v1686;
              _os_log_impl(&dword_247C1F000, v1686, v1229, "Step %{public}s missing authToken key for token %{public}s.", v1216, 0x16u);
              v1234 = v1459;
              swift_arrayDestroy();
              MEMORY[0x24C1B9080](v1234, -1, -1);
              MEMORY[0x24C1B9080](v1216, -1, -1);

              v925 = v1598;
            }

            else
            {

              sub_247C74DAC(v1521, type metadata accessor for FlowResponse.Step);

              sub_247C74DAC(v1539, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v3 = v1704;
              v925 = v1598;
              v924 = v1700;
            }
          }

          v1235 = v1553;
          sub_247CFC9E4(v1553);
          v1236 = sub_247D1B2F4();
          sub_247C74DAC(v1235, type metadata accessor for FileUploadToken);
          if (v1236)
          {
            v1237 = v1508;
            sub_247CFC9E4(v1508);
            v1238 = v1511;
            sub_247D1B3E0(v1511);
            sub_247C74DAC(v1237, type metadata accessor for FileUploadToken);
            v1240 = *v1238;
            v1239 = v1238[1];

            sub_247C74DAC(v1238, type metadata accessor for Metadata);

            v1241 = HIBYTE(v1239) & 0xF;
            if ((v1239 & 0x2000000000000000) == 0)
            {
              v1241 = v1240 & 0xFFFFFFFFFFFFLL;
            }

            if (!v1241)
            {
              v1242 = v1470;
              sub_247C74BF4(v924, v1470, type metadata accessor for FlowResponse.Step);
              sub_247C74BF4(v1242, v1492, type metadata accessor for FlowResponse.Step);
              v1243 = v1580;
              v1244 = swift_allocObject();
              isa = v1244;
              sub_247C74EA0(v1242, v1244 + v1243, type metadata accessor for FlowResponse.Step);
              v1245 = v1473;
              sub_247C74BF4(v925, v1473, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              sub_247C74BF4(v1245, v1503, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1246 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
              v1247 = swift_allocObject();
              *&v1697 = v1247;
              sub_247C74EA0(v1245, v1247 + v1246, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1686 = sub_247D1F468();
              LODWORD(v1682) = sub_247D20038();
              *&v1698 = swift_allocObject();
              *(v1698 + 16) = 34;
              v1248 = swift_allocObject();
              *(v1248 + 16) = 8;
              v1249 = swift_allocObject();
              *(v1249 + 16) = sub_247C753E4;
              *(v1249 + 24) = v1244;
              v1250 = swift_allocObject();
              *(v1250 + 16) = sub_247C75530;
              *(v1250 + 24) = v1249;
              v1251 = swift_allocObject();
              *(v1251 + 16) = 34;
              v1689 = swift_allocObject();
              *(v1689 + 16) = 8;
              v1252 = swift_allocObject();
              *(v1252 + 16) = sub_247C7543C;
              *(v1252 + 24) = v1247;
              v1253 = swift_allocObject();
              v1253[2].isa = sub_247C75530;
              v1253[3].isa = v1252;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
              v1254 = swift_allocObject();
              *(v1254 + 16) = v1573;
              v1255 = v1698;
              *(v1254 + 32) = sub_247C75534;
              *(v1254 + 40) = v1255;
              *(v1254 + 48) = sub_247C75534;
              *(v1254 + 56) = v1248;
              *(v1254 + 64) = sub_247C7531C;
              *(v1254 + 72) = v1250;
              *(v1254 + 80) = sub_247C75534;
              *(v1254 + 88) = v1251;
              v1256 = v1689;
              *(v1254 + 96) = sub_247C75534;
              *(v1254 + 104) = v1256;
              *(v1254 + 112) = sub_247C7531C;
              *(v1254 + 120) = v1253;
              swift_setDeallocating();

              v1642 = v1249;

              v1664 = v1251;

              sub_247C743E0();
              v1257 = v1686;
              if (os_log_type_enabled(v1686, v1682))
              {
                v1460 = v1253;
                v1461 = v1252;
                v1258 = swift_slowAlloc();
                v1459 = swift_slowAlloc();
                v1706[0] = v1459;
                *v1258 = 514;
                *(v1258 + 2) = 34;

                *(v1258 + 3) = 8;

                v1259 = v1492;
                v1260 = *(v1492 + *(v1702 + 20));
                swift_beginAccess();
                v1261 = *(v1260 + 16);
                v1262 = *(v1260 + 24);

                v1263 = sub_247CB03B4(v1261, v1262, v1706);

                *(v1258 + 4) = v1263;

                sub_247C74DAC(v1259, type metadata accessor for FlowResponse.Step);
                *(v1258 + 12) = 34;

                *(v1258 + 13) = 8;

                v1264 = v1467;
                sub_247C2BD10(v1503 + *(v1554 + 36), v1467, &qword_27EE63290);
                v1265 = *v1486;
                v1266 = v1555;
                if ((*v1486)(v1264, 1, v1555) == 1)
                {
                  v1267 = v1464;
                  *v1464 = 0;
                  *(v1267 + 1) = 0xE000000000000000;
                  *(v1267 + 2) = 0;
                  *(v1267 + 3) = 0xE000000000000000;
                  *(v1267 + 4) = 0;
                  *(v1267 + 5) = 0xE000000000000000;
                  *(v1267 + 6) = 0;
                  *(v1267 + 7) = 0xE000000000000000;
                  sub_247D1F188();
                  (*v1463)(&v1267[*(v1266 + 36)], 1, 1, v1514);
                  v1268 = v1266;
                  v1269 = v1267;
                  v1270 = v1265(v1264, 1, v1268);
                  v3 = v1704;
                  v924 = v1700;
                  if (v1270 != 1)
                  {
                    sub_247C27100(v1467, &qword_27EE63290);
                  }
                }

                else
                {
                  v1269 = v1464;
                  sub_247C74EA0(v1264, v1464, type metadata accessor for FileUploadToken);
                  v3 = v1704;
                  v924 = v1700;
                }

                v1308 = *(v1269 + 6);
                v1309 = *(v1269 + 7);

                sub_247C74DAC(v1269, type metadata accessor for FileUploadToken);
                v1310 = sub_247CB03B4(v1308, v1309, v1706);

                *(v1258 + 14) = v1310;

                sub_247C74DAC(v1503, type metadata accessor for FlowResponse.Step.CosmeticCapture);
                v1311 = v1686;
                _os_log_impl(&dword_247C1F000, v1686, v1682, "Step %{public}s missing upload metadata color for token %{public}s.", v1258, 0x16u);
                v1312 = v1459;
                swift_arrayDestroy();
                MEMORY[0x24C1B9080](v1312, -1, -1);
                MEMORY[0x24C1B9080](v1258, -1, -1);

                v925 = v1598;
              }

              else
              {

                sub_247C74DAC(v1492, type metadata accessor for FlowResponse.Step);

                sub_247C74DAC(v1503, type metadata accessor for FlowResponse.Step.CosmeticCapture);
                v3 = v1704;
                v925 = v1598;
                v924 = v1700;
              }
            }

            v1313 = v1509;
            sub_247CFC9E4(v1509);
            v1314 = v1512;
            sub_247D1B3E0(v1512);
            sub_247C74DAC(v1313, type metadata accessor for FileUploadToken);
            v1316 = v1314[2];
            v1315 = v1314[3];

            sub_247C74DAC(v1314, type metadata accessor for Metadata);

            v1317 = HIBYTE(v1315) & 0xF;
            if ((v1315 & 0x2000000000000000) == 0)
            {
              v1317 = v1316 & 0xFFFFFFFFFFFFLL;
            }

            if (!v1317)
            {
              v1318 = v1471;
              sub_247C74BF4(v924, v1471, type metadata accessor for FlowResponse.Step);
              sub_247C74BF4(v1318, v1493, type metadata accessor for FlowResponse.Step);
              v1319 = v1580;
              v1320 = swift_allocObject();
              *&v1698 = v1320;
              sub_247C74EA0(v1318, v1320 + v1319, type metadata accessor for FlowResponse.Step);
              v1321 = v1474;
              sub_247C74BF4(v925, v1474, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              sub_247C74BF4(v1321, v1504, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1322 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
              v1323 = swift_allocObject();
              v1686 = v1323;
              sub_247C74EA0(v1321, v1323 + v1322, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              isa = sub_247D1F468();
              LODWORD(v1689) = sub_247D20038();
              v1324 = swift_allocObject();
              *(v1324 + 16) = 34;
              v1325 = v1324;
              *&v1697 = v1324;
              v1461 = swift_allocObject();
              *(v1461 + 16) = 8;
              v1326 = swift_allocObject();
              *(v1326 + 16) = sub_247C753E4;
              *(v1326 + 24) = v1320;
              v1327 = swift_allocObject();
              *(v1327 + 16) = sub_247C75530;
              *(v1327 + 24) = v1326;
              v1328 = swift_allocObject();
              *(v1328 + 16) = 34;
              v1329 = swift_allocObject();
              *(v1329 + 16) = 8;
              v1330 = swift_allocObject();
              v1330[2].isa = sub_247C7543C;
              v1330[3].isa = v1323;
              v1331 = swift_allocObject();
              *(v1331 + 16) = sub_247C75530;
              *(v1331 + 24) = v1330;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
              v1332 = swift_allocObject();
              *(v1332 + 16) = v1573;
              *(v1332 + 32) = sub_247C75534;
              *(v1332 + 40) = v1325;
              v1333 = v1461;
              *(v1332 + 48) = sub_247C75534;
              *(v1332 + 56) = v1333;
              *(v1332 + 64) = sub_247C7531C;
              *(v1332 + 72) = v1327;
              *(v1332 + 80) = sub_247C75534;
              *(v1332 + 88) = v1328;
              *(v1332 + 96) = sub_247C75534;
              *(v1332 + 104) = v1329;
              *(v1332 + 112) = sub_247C7531C;
              *(v1332 + 120) = v1331;
              swift_setDeallocating();

              v1642 = v1326;

              v1682 = v1328;

              v1664 = v1329;

              sub_247C743E0();
              v1334 = isa;
              if (os_log_type_enabled(isa, v1689))
              {
                v1459 = v1331;
                v1460 = v1330;
                v1335 = swift_slowAlloc();
                v1458 = swift_slowAlloc();
                v1706[0] = v1458;
                *v1335 = 514;
                *(v1335 + 2) = 34;

                *(v1335 + 3) = 8;

                v1336 = v1493;
                v1337 = *(v1493 + *(v1702 + 20));
                swift_beginAccess();
                v1338 = *(v1337 + 16);
                v1339 = *(v1337 + 24);

                v1340 = sub_247CB03B4(v1338, v1339, v1706);

                *(v1335 + 4) = v1340;

                sub_247C74DAC(v1336, type metadata accessor for FlowResponse.Step);
                *(v1335 + 12) = 34;

                *(v1335 + 13) = 8;

                v1341 = v1468;
                sub_247C2BD10(v1504 + *(v1554 + 36), v1468, &qword_27EE63290);
                v1342 = *v1486;
                v1343 = v1555;
                if ((*v1486)(v1341, 1, v1555) == 1)
                {
                  v1344 = v1465;
                  *v1465 = 0;
                  *(v1344 + 1) = 0xE000000000000000;
                  *(v1344 + 2) = 0;
                  *(v1344 + 3) = 0xE000000000000000;
                  *(v1344 + 4) = 0;
                  *(v1344 + 5) = 0xE000000000000000;
                  *(v1344 + 6) = 0;
                  *(v1344 + 7) = 0xE000000000000000;
                  sub_247D1F188();
                  (*v1463)(&v1344[*(v1343 + 36)], 1, 1, v1514);
                  v1345 = v1343;
                  v1346 = v1344;
                  v1347 = v1342(v1341, 1, v1345);
                  v3 = v1704;
                  v924 = v1700;
                  if (v1347 != 1)
                  {
                    sub_247C27100(v1468, &qword_27EE63290);
                  }
                }

                else
                {
                  v1346 = v1465;
                  sub_247C74EA0(v1341, v1465, type metadata accessor for FileUploadToken);
                  v3 = v1704;
                  v924 = v1700;
                }

                v1348 = *(v1346 + 6);
                v1349 = *(v1346 + 7);

                sub_247C74DAC(v1346, type metadata accessor for FileUploadToken);
                v1350 = sub_247CB03B4(v1348, v1349, v1706);

                *(v1335 + 14) = v1350;

                sub_247C74DAC(v1504, type metadata accessor for FlowResponse.Step.CosmeticCapture);
                v1351 = isa;
                _os_log_impl(&dword_247C1F000, isa, v1689, "Step %{public}s missing upload metadata position for token %{public}s.", v1335, 0x16u);
                v1352 = v1458;
                swift_arrayDestroy();
                MEMORY[0x24C1B9080](v1352, -1, -1);
                MEMORY[0x24C1B9080](v1335, -1, -1);
              }

              else
              {

                sub_247C74DAC(v1493, type metadata accessor for FlowResponse.Step);

                sub_247C74DAC(v1504, type metadata accessor for FlowResponse.Step.CosmeticCapture);
                v3 = v1704;
                v924 = v1700;
              }
            }

            v1353 = v1510;
            sub_247CFC9E4(v1510);
            v1354 = v1513;
            sub_247D1B3E0(v1513);
            sub_247C74DAC(v1353, type metadata accessor for FileUploadToken);
            v1356 = v1354[4];
            v1355 = v1354[5];

            sub_247C74DAC(v1354, type metadata accessor for Metadata);

            v1357 = HIBYTE(v1355) & 0xF;
            if ((v1355 & 0x2000000000000000) == 0)
            {
              v1357 = v1356 & 0xFFFFFFFFFFFFLL;
            }

            v979 = v1701;
            v1358 = v924;
            if (!v1357)
            {
              v1359 = v1472;
              sub_247C74BF4(v924, v1472, type metadata accessor for FlowResponse.Step);
              sub_247C74BF4(v1359, v1494, type metadata accessor for FlowResponse.Step);
              v1360 = v1580;
              v1361 = swift_allocObject();
              isa = v1361;
              sub_247C74EA0(v1359, v1361 + v1360, type metadata accessor for FlowResponse.Step);
              v1362 = v1475;
              sub_247C74BF4(v1598, v1475, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              sub_247C74BF4(v1362, v1505, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1363 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
              v1364 = swift_allocObject();
              *&v1697 = v1364;
              sub_247C74EA0(v1362, v1364 + v1363, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v1682 = sub_247D1F468();
              LODWORD(v1664) = sub_247D20038();
              *&v1698 = swift_allocObject();
              *(v1698 + 16) = 34;
              v1365 = swift_allocObject();
              *(v1365 + 16) = 8;
              v1366 = v1365;
              v1367 = swift_allocObject();
              *(v1367 + 16) = sub_247C753E4;
              *(v1367 + 24) = v1361;
              v1368 = swift_allocObject();
              *(v1368 + 16) = sub_247C75530;
              *(v1368 + 24) = v1367;
              v1369 = v1368;
              v1689 = swift_allocObject();
              *(v1689 + 16) = 34;
              v1686 = swift_allocObject();
              LOBYTE(v1686[2].isa) = 8;
              v1370 = swift_allocObject();
              *(v1370 + 16) = sub_247C7543C;
              *(v1370 + 24) = v1364;
              v1371 = swift_allocObject();
              v1371[2].isa = sub_247C75530;
              v1371[3].isa = v1370;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
              v1372 = swift_allocObject();
              *(v1372 + 16) = v1573;
              v1373 = v1698;
              *(v1372 + 32) = sub_247C75534;
              *(v1372 + 40) = v1373;
              *(v1372 + 48) = sub_247C75534;
              *(v1372 + 56) = v1366;
              *(v1372 + 64) = sub_247C7531C;
              *(v1372 + 72) = v1369;
              v1374 = v1689;
              *(v1372 + 80) = sub_247C75534;
              *(v1372 + 88) = v1374;
              v1375 = v1686;
              *(v1372 + 96) = sub_247C75534;
              *(v1372 + 104) = v1375;
              *(v1372 + 112) = sub_247C7531C;
              *(v1372 + 120) = v1371;
              swift_setDeallocating();

              v1642 = v1367;

              sub_247C743E0();
              v1376 = v1682;
              if (os_log_type_enabled(v1682, v1664))
              {
                v1460 = v1371;
                v1461 = v1370;
                v1287 = swift_slowAlloc();
                v1459 = swift_slowAlloc();
                v1706[0] = v1459;
                *v1287 = 514;
                *(v1287 + 2) = 34;

                *(v1287 + 3) = 8;

                v1377 = v1494;
                v1378 = *(v1494 + *(v1702 + 20));
                swift_beginAccess();
                v1379 = *(v1378 + 16);
                v1380 = *(v1378 + 24);

                v1381 = sub_247CB03B4(v1379, v1380, v1706);

                *(v1287 + 4) = v1381;

                sub_247C74DAC(v1377, type metadata accessor for FlowResponse.Step);
                *(v1287 + 12) = 34;

                *(v1287 + 13) = 8;

                v1382 = v1469;
                sub_247C2BD10(v1505 + *(v1554 + 36), v1469, &qword_27EE63290);
                v1383 = *v1486;
                v1384 = v1555;
                if ((*v1486)(v1382, 1, v1555) == 1)
                {
                  v1385 = v1466;
                  *v1466 = 0;
                  *(v1385 + 1) = 0xE000000000000000;
                  *(v1385 + 2) = 0;
                  *(v1385 + 3) = 0xE000000000000000;
                  *(v1385 + 4) = 0;
                  *(v1385 + 5) = 0xE000000000000000;
                  *(v1385 + 6) = 0;
                  *(v1385 + 7) = 0xE000000000000000;
                  sub_247D1F188();
                  (*v1463)(&v1385[*(v1384 + 36)], 1, 1, v1514);
                  v1386 = v1384;
                  v1387 = v1385;
                  v1388 = v1383(v1382, 1, v1386);
                  v3 = v1704;
                  if (v1388 != 1)
                  {
                    sub_247C27100(v1469, &qword_27EE63290);
                  }
                }

                else
                {
                  v1387 = v1466;
                  sub_247C74EA0(v1382, v1466, type metadata accessor for FileUploadToken);
                  v3 = v1704;
                }

                v1389 = *(v1387 + 6);
                v1390 = *(v1387 + 7);

                sub_247C74DAC(v1387, type metadata accessor for FileUploadToken);
                v1391 = sub_247CB03B4(v1389, v1390, v1706);

                *(v1287 + 14) = v1391;

                sub_247C74DAC(v1505, type metadata accessor for FlowResponse.Step.CosmeticCapture);
                v1304 = v1664;
                v1305 = v1682;
                v1306 = v1682;
                v1307 = "Step %{public}s missing upload metadata size for token %{public}s.";
                goto LABEL_312;
              }

              sub_247C74DAC(v1494, type metadata accessor for FlowResponse.Step);

              v1300 = v1505;
LABEL_309:
              sub_247C74DAC(v1300, type metadata accessor for FlowResponse.Step.CosmeticCapture);
              v3 = v1704;
              goto LABEL_313;
            }

LABEL_315:
            v1393 = MEMORY[0x28223BE20](v1358);
            *(&v1457 - 4) = v1598;
            *(&v1457 - 3) = v979;
            *(&v1457 - 2) = v1393;
            if (qword_2859D5D38)
            {
              v1394 = qword_2859D5D38 - 1;
              v1395 = &byte_2859D5D48;
              do
              {
                v1396 = v1394;
                v1397 = *v1395++;
                LOBYTE(v1706[0]) = v1397;
                sub_247C7488C(v1706);
                if (v3)
                {
                  break;
                }

                v1394 = v1396 - 1;
              }

              while (v1396);
            }

            sub_247C74DAC(v1598, type metadata accessor for FlowResponse.Step.CosmeticCapture);
            v431 = v1694;
            goto LABEL_16;
          }

          v1271 = v1506;
          sub_247C74BF4(v924, v1506, type metadata accessor for FlowResponse.Step);
          sub_247C74BF4(v1271, v1543, type metadata accessor for FlowResponse.Step);
          v1272 = v1580;
          v1273 = swift_allocObject();
          isa = v1273;
          sub_247C74EA0(v1271, v1273 + v1272, type metadata accessor for FlowResponse.Step);
          v1274 = v1507;
          sub_247C74BF4(v925, v1507, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          sub_247C74BF4(v1274, v1561, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          v1275 = (*(v1577 + 80) + 16) & ~*(v1577 + 80);
          v1276 = swift_allocObject();
          *&v1697 = v1276;
          sub_247C74EA0(v1274, v1276 + v1275, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          v1686 = sub_247D1F468();
          LODWORD(v1682) = sub_247D20038();
          *&v1698 = swift_allocObject();
          *(v1698 + 16) = 34;
          v1277 = swift_allocObject();
          *(v1277 + 16) = 8;
          v1278 = swift_allocObject();
          *(v1278 + 16) = sub_247C753E4;
          *(v1278 + 24) = v1273;
          v1279 = swift_allocObject();
          *(v1279 + 16) = sub_247C75530;
          *(v1279 + 24) = v1278;
          v1280 = swift_allocObject();
          *(v1280 + 16) = 34;
          v1689 = swift_allocObject();
          *(v1689 + 16) = 8;
          v1281 = swift_allocObject();
          *(v1281 + 16) = sub_247C7543C;
          *(v1281 + 24) = v1276;
          v1282 = swift_allocObject();
          v1282[2].isa = sub_247C75530;
          v1282[3].isa = v1281;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
          v1283 = swift_allocObject();
          *(v1283 + 16) = v1573;
          v1284 = v1698;
          *(v1283 + 32) = sub_247C75534;
          *(v1283 + 40) = v1284;
          *(v1283 + 48) = sub_247C75534;
          *(v1283 + 56) = v1277;
          *(v1283 + 64) = sub_247C7531C;
          *(v1283 + 72) = v1279;
          *(v1283 + 80) = sub_247C75534;
          *(v1283 + 88) = v1280;
          v1285 = v1689;
          *(v1283 + 96) = sub_247C75534;
          *(v1283 + 104) = v1285;
          *(v1283 + 112) = sub_247C7531C;
          *(v1283 + 120) = v1282;
          swift_setDeallocating();

          v1642 = v1278;

          v1664 = v1280;

          sub_247C743E0();
          v1286 = v1686;
          if (!os_log_type_enabled(v1686, v1682))
          {

            sub_247C74DAC(v1543, type metadata accessor for FlowResponse.Step);

            v1300 = v1561;
            goto LABEL_309;
          }

          v1460 = v1282;
          v1461 = v1281;
          v1287 = swift_slowAlloc();
          v1459 = swift_slowAlloc();
          v1706[0] = v1459;
          *v1287 = 514;
          *(v1287 + 2) = 34;

          *(v1287 + 3) = 8;

          v1288 = v1543;
          v1289 = *(v1543 + *(v1702 + 20));
          swift_beginAccess();
          v1290 = *(v1289 + 16);
          v1291 = *(v1289 + 24);

          v1292 = sub_247CB03B4(v1290, v1291, v1706);

          *(v1287 + 4) = v1292;

          sub_247C74DAC(v1288, type metadata accessor for FlowResponse.Step);
          *(v1287 + 12) = 34;

          *(v1287 + 13) = 8;

          v1293 = v1485;
          sub_247C2BD10(v1561 + *(v1554 + 36), v1485, &qword_27EE63290);
          v1294 = *v1486;
          v1295 = v1555;
          if ((*v1486)(v1293, 1, v1555) == 1)
          {
            v1296 = v1484;
            *v1484 = 0;
            *(v1296 + 1) = 0xE000000000000000;
            *(v1296 + 2) = 0;
            *(v1296 + 3) = 0xE000000000000000;
            *(v1296 + 4) = 0;
            *(v1296 + 5) = 0xE000000000000000;
            *(v1296 + 6) = 0;
            *(v1296 + 7) = 0xE000000000000000;
            sub_247D1F188();
            (*v1463)(&v1296[*(v1295 + 36)], 1, 1, v1514);
            v1297 = v1295;
            v1298 = v1296;
            v1299 = v1294(v1293, 1, v1297);
            v3 = v1704;
            if (v1299 != 1)
            {
              sub_247C27100(v1485, &qword_27EE63290);
            }
          }

          else
          {
            v1298 = v1484;
            sub_247C74EA0(v1293, v1484, type metadata accessor for FileUploadToken);
            v3 = v1704;
          }

          v1301 = *(v1298 + 6);
          v1302 = *(v1298 + 7);

          sub_247C74DAC(v1298, type metadata accessor for FileUploadToken);
          v1303 = sub_247CB03B4(v1301, v1302, v1706);

          *(v1287 + 14) = v1303;

          sub_247C74DAC(v1561, type metadata accessor for FlowResponse.Step.CosmeticCapture);
          v1304 = v1682;
          v1305 = v1686;
          v1306 = v1686;
          v1307 = "Step %{public}s missing upload metadata for token %{public}s.";
LABEL_312:
          _os_log_impl(&dword_247C1F000, v1306, v1304, v1307, v1287, 0x16u);
          v1392 = v1459;
          swift_arrayDestroy();
          MEMORY[0x24C1B9080](v1392, -1, -1);
          MEMORY[0x24C1B9080](v1287, -1, -1);

LABEL_313:
          v979 = v1701;
        }

        else
        {
          v960 = v1544;
          sub_247C74BF4(v924, v1544, type metadata accessor for FlowResponse.Step);
          sub_247C74BF4(v960, v1569, type metadata accessor for FlowResponse.Step);
          v961 = v1580;
          v962 = swift_allocObject();
          sub_247C74EA0(v960, v962 + v961, type metadata accessor for FlowResponse.Step);
          v963 = sub_247D1F468();
          v964 = sub_247D20038();
          v965 = swift_allocObject();
          *(v965 + 16) = 34;
          v966 = swift_allocObject();
          *(v966 + 16) = 8;
          v967 = swift_allocObject();
          *(v967 + 16) = sub_247C753E4;
          *(v967 + 24) = v962;
          v968 = swift_allocObject();
          *(v968 + 16) = sub_247C75530;
          *(v968 + 24) = v967;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
          v969 = swift_allocObject();
          *(v969 + 16) = v1575;
          *(v969 + 32) = sub_247C75534;
          *(v969 + 40) = v965;
          *(v969 + 48) = sub_247C75534;
          *(v969 + 56) = v966;
          *(v969 + 64) = sub_247C7531C;
          *(v969 + 72) = v968;
          swift_setDeallocating();

          sub_247C743E0();
          LODWORD(v1698) = v964;
          if (os_log_type_enabled(v963, v964))
          {
            v970 = swift_slowAlloc();
            v971 = swift_slowAlloc();
            *&v1697 = v963;
            v972 = v971;
            v1706[0] = v971;
            *v970 = 258;
            *(v970 + 2) = 34;

            *(v970 + 3) = 8;

            v973 = v1569;
            v974 = *(v1569 + *(v1702 + 20));
            swift_beginAccess();
            v975 = *(v974 + 16);
            v976 = *(v974 + 24);

            v977 = sub_247CB03B4(v975, v976, v1706);

            *(v970 + 4) = v977;

            sub_247C74DAC(v973, type metadata accessor for FlowResponse.Step);
            v978 = v1697;
            _os_log_impl(&dword_247C1F000, v1697, v1698, "Step %{public}s missing upload token.", v970, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v972);
            MEMORY[0x24C1B9080](v972, -1, -1);
            MEMORY[0x24C1B9080](v970, -1, -1);
          }

          else
          {

            sub_247C74DAC(v1569, type metadata accessor for FlowResponse.Step);
          }

          v979 = v1701;
          v3 = v1704;
        }

        v1358 = v1700;
        goto LABEL_315;
      }

      v790 = v1584;
      sub_247C74EA0(v1622, v1584, type metadata accessor for FlowResponse.Step.Loading);
      v791 = *(v1572 + 24);
      v792 = v1570;
      sub_247C2BD10(v703 + v791, v1570, &qword_27EE62F68);
      v793 = *v1578;
      v794 = v1579;
      v795 = (*v1578)(v792, 1, v1579);
      sub_247C27100(v792, &qword_27EE62F68);
      if (v795 != 1)
      {
        v810 = v1547;
        sub_247C2BD10(v790 + v791, v1547, &qword_27EE62F68);
        v811 = v793(v810, 1, v794);
        v812 = v1562;
        if (v811 == 1)
        {
          v813 = v1548;
          *v1548 = 0;
          v813[1] = 0xE000000000000000;
          *(v813 + 16) = 0;
          v813[3] = 0;
          v813[4] = 0xE000000000000000;
          v813[5] = 0;
          v813[6] = 0xE000000000000000;
          v813[7] = 0;
          *(v813 + 64) = 1;
          sub_247D1F188();
          (*v1462)(v813 + *(v794 + 40), 1, 1, v1629);
          v814 = v793(v810, 1, v794);
          v815 = v1565;
          v816 = v1545;
          if (v814 != 1)
          {
            sub_247C27100(v810, &qword_27EE62F68);
          }
        }

        else
        {
          v813 = v1548;
          sub_247C74EA0(v810, v1548, type metadata accessor for FlowResponse.Step.Masthead);
          v815 = v1565;
          v816 = v1545;
        }

        v843 = v813[3];
        v844 = v813[4];

        sub_247C74DAC(v813, type metadata accessor for FlowResponse.Step.Masthead);
        sub_247C885BC(v843, v844, v1692);
        v846 = v845;

        if (v846)
        {
        }

        else
        {
          v882 = v1495;
          sub_247C74BF4(v1700, v1495, type metadata accessor for FlowResponse.Step);
          sub_247C74BF4(v882, v812, type metadata accessor for FlowResponse.Step);
          sub_247C74EA0(v882, v816, type metadata accessor for FlowResponse.Step);
          v883 = sub_247D1F468();
          v884 = sub_247D20038();
          if (os_log_type_enabled(v883, v884))
          {
            v885 = swift_slowAlloc();
            v886 = swift_slowAlloc();
            v1706[0] = v886;
            *v885 = v1631;
            v887 = *(v1562 + *(v1702 + 20));
            swift_beginAccess();
            v888 = *(v887 + 16);
            v889 = *(v887 + 24);

            v890 = sub_247CB03B4(v888, v889, v1706);

            *(v885 + 4) = v890;
            v815 = v1565;
            sub_247C74DAC(v816, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v1562, type metadata accessor for FlowResponse.Step);
            _os_log_impl(&dword_247C1F000, v883, v884, "Step %{public}s masthead missing localized key.", v885, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v886);
            MEMORY[0x24C1B9080](v886, -1, -1);
            MEMORY[0x24C1B9080](v885, -1, -1);
          }

          else
          {

            sub_247C74DAC(v816, type metadata accessor for FlowResponse.Step);
            sub_247C74DAC(v812, type metadata accessor for FlowResponse.Step);
          }

          v1001 = v1558;
          sub_247CFCD50(v1558);
          v1002 = *(v1001 + 24);
          v1003 = *(v1001 + 32);

          sub_247C74DAC(v1001, type metadata accessor for FlowResponse.Step.Masthead);
          sub_247C73064(v1002, v1003);
        }

        v1004 = v1700;
        v1005 = v1549;
        sub_247CFCD50(v1549);
        v1007 = *(v1005 + 40);
        v1006 = *(v1005 + 48);

        sub_247C74DAC(v1005, type metadata accessor for FlowResponse.Step.Masthead);

        v1008 = HIBYTE(v1006) & 0xF;
        if ((v1006 & 0x2000000000000000) == 0)
        {
          v1008 = v1007 & 0xFFFFFFFFFFFFLL;
        }

        if (v1008)
        {
          v1009 = v1516;
          sub_247CFCD50(v1516);
          v1010 = *(v1009 + 40);
          v1011 = *(v1009 + 48);

          sub_247C74DAC(v1009, type metadata accessor for FlowResponse.Step.Masthead);
          sub_247C885BC(v1010, v1011, v1692);
          v1013 = v1012;

          if (v1013)
          {
          }

          else
          {
            v1014 = v1480;
            sub_247C74BF4(v1004, v1480, type metadata accessor for FlowResponse.Step);
            sub_247C74BF4(v1014, v815, type metadata accessor for FlowResponse.Step);
            v1015 = v1580;
            v1016 = swift_allocObject();
            sub_247C74EA0(v1014, v1016 + v1015, type metadata accessor for FlowResponse.Step);
            v1017 = sub_247D1F468();
            LODWORD(v1014) = sub_247D20058();
            v1018 = swift_allocObject();
            *(v1018 + 16) = 34;
            v1019 = swift_allocObject();
            *(v1019 + 16) = 8;
            v1020 = swift_allocObject();
            *(v1020 + 16) = sub_247C753E4;
            *(v1020 + 24) = v1016;
            v1021 = swift_allocObject();
            *(v1021 + 16) = sub_247C75530;
            *(v1021 + 24) = v1020;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
            v1022 = swift_allocObject();
            *(v1022 + 16) = v1575;
            *(v1022 + 32) = sub_247C75534;
            *(v1022 + 40) = v1018;
            *(v1022 + 48) = sub_247C75534;
            *(v1022 + 56) = v1019;
            *(v1022 + 64) = sub_247C7531C;
            *(v1022 + 72) = v1021;
            swift_setDeallocating();

            sub_247C743E0();
            LODWORD(v1698) = v1014;
            v1023 = v1014;
            v1024 = v1017;
            if (os_log_type_enabled(v1017, v1023))
            {
              v1025 = swift_slowAlloc();
              v1026 = swift_slowAlloc();
              v1706[0] = v1026;
              *v1025 = 258;
              *(v1025 + 2) = 34;

              *(v1025 + 3) = 8;

              v1027 = *(v1565 + *(v1702 + 20));
              swift_beginAccess();
              v1028 = *(v1027 + 16);
              v1029 = *(v1027 + 24);

              v1030 = sub_247CB03B4(v1028, v1029, v1706);

              *(v1025 + 4) = v1030;

              sub_247C74DAC(v1565, type metadata accessor for FlowResponse.Step);
              _os_log_impl(&dword_247C1F000, v1024, v1698, "Step %{public}s masthead missing subtitle.", v1025, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v1026);
              MEMORY[0x24C1B9080](v1026, -1, -1);
              MEMORY[0x24C1B9080](v1025, -1, -1);
            }

            else
            {

              sub_247C74DAC(v1565, type metadata accessor for FlowResponse.Step);
            }

            v1062 = v1558;
            sub_247CFCD50(v1558);
            v1063 = *(v1062 + 40);
            v1064 = *(v1062 + 48);

            sub_247C74DAC(v1062, type metadata accessor for FlowResponse.Step.Masthead);
            sub_247C73064(v1063, v1064);

            v1004 = v1700;
          }
        }

        v1065 = v1571;
        sub_247CFCD50(v1571);
        v1066 = v1560;
        sub_247C2BD10(v1065 + *(v1579 + 40), v1560, &qword_27EE62F60);
        v1067 = *v1627;
        v1068 = v1629;
        if ((*v1627)(v1066, 1, v1629) == 1)
        {
          v1069 = v1546;
          *v1546 = 0;
          *(v1069 + 1) = 0xE000000000000000;
          v1070 = *(v1068 + 20);
          v1071 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
          (*(*(v1071 - 8) + 56))(&v1069[v1070], 1, 1, v1071);
          v1069[*(v1068 + 24)] = 0;
          sub_247D1F188();
          v1072 = v1067(v1066, 1, v1068);
          v1073 = v1069;
          v431 = v1694;
          if (v1072 != 1)
          {
            sub_247C27100(v1560, &qword_27EE62F60);
          }
        }

        else
        {
          v1073 = v1546;
          sub_247C74EA0(v1066, v1546, type metadata accessor for FlowResponse.SFSymbolConfiguration);
          v431 = v1694;
        }

        sub_247C74DAC(v1571, type metadata accessor for FlowResponse.Step.Masthead);
        v1074 = v1073;
        v1076 = *v1073;
        v1075 = *(v1073 + 1);

        sub_247C74DAC(v1074, type metadata accessor for FlowResponse.SFSymbolConfiguration);

        v1077 = HIBYTE(v1075) & 0xF;
        if ((v1075 & 0x2000000000000000) == 0)
        {
          v1077 = v1076 & 0xFFFFFFFFFFFFLL;
        }

        v3 = v1704;
        if (v1077)
        {
          v701 = type metadata accessor for FlowResponse.Step.Loading;
          v700 = v1584;
LABEL_89:
          sub_247C74DAC(v700, v701);
        }

        else
        {
          v1078 = v1496;
          sub_247C74BF4(v1004, v1496, type metadata accessor for FlowResponse.Step);
          sub_247C74BF4(v1078, v1522, type metadata accessor for FlowResponse.Step);
          v1079 = v1580;
          v1080 = swift_allocObject();
          sub_247C74EA0(v1078, v1080 + v1079, type metadata accessor for FlowResponse.Step);
          v1081 = sub_247D1F468();
          v1082 = sub_247D20058();
          v1083 = swift_allocObject();
          *(v1083 + 16) = 34;
          v1084 = swift_allocObject();
          *(v1084 + 16) = 8;
          v1085 = swift_allocObject();
          *(v1085 + 16) = sub_247C753E4;
          *(v1085 + 24) = v1080;
          v1086 = swift_allocObject();
          *(v1086 + 16) = sub_247C75530;
          *(v1086 + 24) = v1085;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
          v1087 = swift_allocObject();
          *(v1087 + 16) = v1575;
          *(v1087 + 32) = sub_247C75534;
          *(v1087 + 40) = v1083;
          *(v1087 + 48) = sub_247C75534;
          *(v1087 + 56) = v1084;
          *(v1087 + 64) = sub_247C7531C;
          *(v1087 + 72) = v1086;
          swift_setDeallocating();

          sub_247C743E0();
          LODWORD(v1698) = v1082;
          if (os_log_type_enabled(v1081, v1082))
          {
            v1088 = swift_slowAlloc();
            v1089 = swift_slowAlloc();
            *&v1697 = v1081;
            v1090 = v1089;
            v1706[0] = v1089;
            *v1088 = 258;
            *(v1088 + 2) = 34;

            *(v1088 + 3) = 8;

            v1091 = v1522;
            v1092 = *(v1522 + *(v1702 + 20));
            swift_beginAccess();
            v1093 = *(v1092 + 16);
            v1094 = *(v1092 + 24);

            v1095 = sub_247CB03B4(v1093, v1094, v1706);

            *(v1088 + 4) = v1095;

            sub_247C74DAC(v1091, type metadata accessor for FlowResponse.Step);
            v1096 = v1697;
            _os_log_impl(&dword_247C1F000, v1697, v1698, "Step %{public}s masthead has no symbol name.", v1088, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v1090);
            MEMORY[0x24C1B9080](v1090, -1, -1);
            MEMORY[0x24C1B9080](v1088, -1, -1);
          }

          else
          {

            sub_247C74DAC(v1522, type metadata accessor for FlowResponse.Step);
          }

          sub_247C74DAC(v1584, type metadata accessor for FlowResponse.Step.Loading);
          v3 = v1704;
          v431 = v1694;
        }

        goto LABEL_16;
      }

      sub_247C74DAC(v790, type metadata accessor for FlowResponse.Step.Loading);
      v431 = v1694;
      v441 = v1630;
      v3 = v1704;
LABEL_17:
      v428 = v441 + 1;
      result = sub_247C74DAC(v1700, type metadata accessor for FlowResponse.Step);
      if (v428 == v1607)
      {
        goto LABEL_321;
      }

      continue;
    }

    break;
  }

  v726 = v1585;
  result = sub_247C74EA0(v1622, v1585, type metadata accessor for FlowResponse.Step.Information);
  v727 = *v726;
  isa = *(*v726 + 16);
  if (!isa)
  {
LABEL_136:
    v1704 = v3;
    v800 = v1585;
    v801 = v1567;
    sub_247C2BD10(v1585 + *(v1566 + 28), v1567, &qword_27EE62F68);
    v802 = v1579;
    v803 = (*v1578)(v801, 1, v1579);
    sub_247C27100(v801, &qword_27EE62F68);
    if (v803 != 1)
    {
      v804 = v1541;
      sub_247CFCB94(v1541);
      v805 = *(v804 + 24);
      v806 = *(v804 + 32);

      sub_247C74DAC(v804, type metadata accessor for FlowResponse.Step.Masthead);
      sub_247C885BC(v805, v806, v1692);
      v808 = v807;

      if (v808)
      {

        v809 = v1559;
      }

      else
      {
        v980 = v1487;
        sub_247C74BF4(v1700, v1487, type metadata accessor for FlowResponse.Step);
        sub_247C74BF4(v980, v1517, type metadata accessor for FlowResponse.Step);
        v981 = v1580;
        v982 = swift_allocObject();
        sub_247C74EA0(v980, v982 + v981, type metadata accessor for FlowResponse.Step);
        v983 = sub_247D1F468();
        v984 = sub_247D20038();
        v985 = swift_allocObject();
        *(v985 + 16) = 34;
        v986 = swift_allocObject();
        *(v986 + 16) = 8;
        v987 = swift_allocObject();
        *(v987 + 16) = sub_247C74C5C;
        *(v987 + 24) = v982;
        v988 = swift_allocObject();
        *(v988 + 16) = sub_247C75530;
        *(v988 + 24) = v987;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
        v989 = swift_allocObject();
        *(v989 + 16) = v1575;
        *(v989 + 32) = sub_247C75534;
        *(v989 + 40) = v985;
        *(v989 + 48) = sub_247C75534;
        *(v989 + 56) = v986;
        *(v989 + 64) = sub_247C7531C;
        *(v989 + 72) = v988;
        swift_setDeallocating();

        sub_247C743E0();
        LODWORD(v1698) = v984;
        if (os_log_type_enabled(v983, v984))
        {
          v990 = swift_slowAlloc();
          v991 = swift_slowAlloc();
          *&v1697 = v983;
          v992 = v1517;
          v993 = v991;
          v1706[0] = v991;
          *v990 = 258;
          *(v990 + 2) = 34;

          *(v990 + 3) = 8;

          v994 = *(v992 + *(v1702 + 20));
          swift_beginAccess();
          v995 = *(v994 + 16);
          v996 = *(v994 + 24);

          v997 = sub_247CB03B4(v995, v996, v1706);

          *(v990 + 4) = v997;

          sub_247C74DAC(v992, type metadata accessor for FlowResponse.Step);
          v998 = v1697;
          _os_log_impl(&dword_247C1F000, v1697, v1698, "Step %{public}s masthead missing localized key.", v990, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v993);
          MEMORY[0x24C1B9080](v993, -1, -1);
          MEMORY[0x24C1B9080](v990, -1, -1);
        }

        else
        {

          sub_247C74DAC(v1517, type metadata accessor for FlowResponse.Step);
        }

        v1031 = v1558;
        sub_247CFCB94(v1558);
        v1032 = *(v1031 + 24);
        v1033 = *(v1031 + 32);

        sub_247C74DAC(v1031, type metadata accessor for FlowResponse.Step.Masthead);
        sub_247C73064(v1032, v1033);

        v802 = v1579;
        v809 = v1559;
      }

      v1034 = v1542;
      sub_247CFCB94(v1542);
      v1036 = *(v1034 + 40);
      v1035 = *(v1034 + 48);

      sub_247C74DAC(v1034, type metadata accessor for FlowResponse.Step.Masthead);

      v1037 = HIBYTE(v1035) & 0xF;
      if ((v1035 & 0x2000000000000000) == 0)
      {
        v1037 = v1036 & 0xFFFFFFFFFFFFLL;
      }

      if (v1037)
      {
        v1038 = v1515;
        sub_247CFCB94(v1515);
        v1039 = *(v1038 + 40);
        v1040 = *(v1038 + 48);

        sub_247C74DAC(v1038, type metadata accessor for FlowResponse.Step.Masthead);
        sub_247C885BC(v1039, v1040, v1692);
        v1042 = v1041;

        if (v1042)
        {
        }

        else
        {
          v1043 = v1479;
          sub_247C74BF4(v1700, v1479, type metadata accessor for FlowResponse.Step);
          sub_247C74BF4(v1043, v1500, type metadata accessor for FlowResponse.Step);
          v1044 = v1580;
          v1045 = swift_allocObject();
          sub_247C74EA0(v1043, v1045 + v1044, type metadata accessor for FlowResponse.Step);
          v1046 = sub_247D1F468();
          v1047 = sub_247D20058();
          v1048 = swift_allocObject();
          *(v1048 + 16) = 34;
          v1049 = swift_allocObject();
          *(v1049 + 16) = 8;
          v1050 = swift_allocObject();
          *(v1050 + 16) = sub_247C753E4;
          *(v1050 + 24) = v1045;
          v1051 = swift_allocObject();
          *(v1051 + 16) = sub_247C75530;
          *(v1051 + 24) = v1050;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
          v1052 = swift_allocObject();
          *(v1052 + 16) = v1575;
          *(v1052 + 32) = sub_247C75534;
          *(v1052 + 40) = v1048;
          *(v1052 + 48) = sub_247C75534;
          *(v1052 + 56) = v1049;
          *(v1052 + 64) = sub_247C7531C;
          *(v1052 + 72) = v1051;
          swift_setDeallocating();

          sub_247C743E0();
          LODWORD(v1698) = v1047;
          if (os_log_type_enabled(v1046, v1047))
          {
            v1053 = swift_slowAlloc();
            v1054 = swift_slowAlloc();
            *&v1697 = v1046;
            v1055 = v1500;
            v1056 = v1054;
            v1706[0] = v1054;
            *v1053 = 258;
            *(v1053 + 2) = 34;

            *(v1053 + 3) = 8;

            v1057 = *(v1055 + *(v1702 + 20));
            swift_beginAccess();
            v1058 = *(v1057 + 16);
            v1059 = *(v1057 + 24);

            v1060 = sub_247CB03B4(v1058, v1059, v1706);

            *(v1053 + 4) = v1060;

            sub_247C74DAC(v1055, type metadata accessor for FlowResponse.Step);
            v1061 = v1697;
            _os_log_impl(&dword_247C1F000, v1697, v1698, "Step %{public}s masthead missing subtitle.", v1053, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v1056);
            MEMORY[0x24C1B9080](v1056, -1, -1);
            MEMORY[0x24C1B9080](v1053, -1, -1);
          }

          else
          {

            sub_247C74DAC(v1500, type metadata accessor for FlowResponse.Step);
          }

          v1097 = v1558;
          sub_247CFCB94(v1558);
          v1098 = *(v1097 + 40);
          v1099 = *(v1097 + 48);

          sub_247C74DAC(v1097, type metadata accessor for FlowResponse.Step.Masthead);
          sub_247C73064(v1098, v1099);

          v802 = v1579;
          v809 = v1559;
        }
      }

      v1100 = v1568;
      sub_247CFCB94(v1568);
      sub_247C2BD10(v1100 + *(v802 + 40), v809, &qword_27EE62F60);
      v1101 = *v1627;
      v1102 = v1629;
      if ((*v1627)(v809, 1, v1629) == 1)
      {
        v1103 = v1540;
        *v1540 = 0;
        *(v1103 + 1) = 0xE000000000000000;
        v1104 = *(v1102 + 20);
        v1105 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
        (*(*(v1105 - 8) + 56))(&v1103[v1104], 1, 1, v1105);
        v1103[*(v1102 + 24)] = 0;
        sub_247D1F188();
        v1106 = v1101(v809, 1, v1102);
        v1107 = v1103;
        if (v1106 != 1)
        {
          sub_247C27100(v809, &qword_27EE62F60);
        }
      }

      else
      {
        v1107 = v1540;
        sub_247C74EA0(v809, v1540, type metadata accessor for FlowResponse.SFSymbolConfiguration);
      }

      sub_247C74DAC(v1568, type metadata accessor for FlowResponse.Step.Masthead);
      v1108 = v1107;
      v1110 = *v1107;
      v1109 = *(v1107 + 1);

      sub_247C74DAC(v1108, type metadata accessor for FlowResponse.SFSymbolConfiguration);

      v1111 = HIBYTE(v1109) & 0xF;
      if ((v1109 & 0x2000000000000000) == 0)
      {
        v1111 = v1110 & 0xFFFFFFFFFFFFLL;
      }

      v800 = v1585;
      if (!v1111)
      {
        v1112 = v1488;
        sub_247C74BF4(v1700, v1488, type metadata accessor for FlowResponse.Step);
        sub_247C74BF4(v1112, v1518, type metadata accessor for FlowResponse.Step);
        v1113 = v1580;
        v1114 = swift_allocObject();
        sub_247C74EA0(v1112, v1114 + v1113, type metadata accessor for FlowResponse.Step);
        v1115 = sub_247D1F468();
        v1116 = sub_247D20058();
        v1117 = swift_allocObject();
        *(v1117 + 16) = 34;
        v1118 = swift_allocObject();
        *(v1118 + 16) = 8;
        v1119 = swift_allocObject();
        *(v1119 + 16) = sub_247C753E4;
        *(v1119 + 24) = v1114;
        v1120 = swift_allocObject();
        *(v1120 + 16) = sub_247C75530;
        *(v1120 + 24) = v1119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
        v1121 = swift_allocObject();
        *(v1121 + 16) = v1575;
        *(v1121 + 32) = sub_247C75534;
        *(v1121 + 40) = v1117;
        *(v1121 + 48) = sub_247C75534;
        *(v1121 + 56) = v1118;
        *(v1121 + 64) = sub_247C7531C;
        *(v1121 + 72) = v1120;
        swift_setDeallocating();

        sub_247C743E0();
        LODWORD(v1698) = v1116;
        if (os_log_type_enabled(v1115, v1116))
        {
          v1122 = swift_slowAlloc();
          v1123 = swift_slowAlloc();
          *&v1697 = v1115;
          v1124 = v1123;
          v1706[0] = v1123;
          *v1122 = 258;
          *(v1122 + 2) = 34;

          *(v1122 + 3) = 8;

          v1125 = v1518;
          v1126 = *(v1518 + *(v1702 + 20));
          swift_beginAccess();
          v1127 = *(v1126 + 16);
          v1128 = *(v1126 + 24);

          v1129 = sub_247CB03B4(v1127, v1128, v1706);

          *(v1122 + 4) = v1129;

          sub_247C74DAC(v1125, type metadata accessor for FlowResponse.Step);
          v1130 = v1697;
          _os_log_impl(&dword_247C1F000, v1697, v1698, "Step %{public}s masthead has no symbol name.", v1122, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v1124);
          MEMORY[0x24C1B9080](v1124, -1, -1);
          MEMORY[0x24C1B9080](v1122, -1, -1);
        }

        else
        {

          sub_247C74DAC(v1518, type metadata accessor for FlowResponse.Step);
        }

        v800 = v1585;
      }
    }

    v1131 = *(v800 + 8);
    v1132 = *(v800 + 16);
    v1133 = HIBYTE(v1132) & 0xF;
    if ((v1132 & 0x2000000000000000) == 0)
    {
      v1133 = v1131 & 0xFFFFFFFFFFFFLL;
    }

    v431 = v1694;
    if (v1133)
    {
      sub_247C885BC(*(v800 + 8), *(v800 + 16), v1692);
      if (v1134)
      {
      }

      else
      {
        v1135 = v1501;
        sub_247C74BF4(v1700, v1501, type metadata accessor for FlowResponse.Step);
        sub_247C74BF4(v1135, v1535, type metadata accessor for FlowResponse.Step);
        v1136 = v1580;
        v1137 = swift_allocObject();
        sub_247C74EA0(v1135, v1137 + v1136, type metadata accessor for FlowResponse.Step);
        *&v1697 = sub_247D1F468();
        LODWORD(v1698) = sub_247D20058();
        v1138 = swift_allocObject();
        *(v1138 + 16) = 34;
        v1139 = swift_allocObject();
        *(v1139 + 16) = 8;
        v1140 = swift_allocObject();
        *(v1140 + 16) = sub_247C753E4;
        *(v1140 + 24) = v1137;
        v1141 = swift_allocObject();
        *(v1141 + 16) = sub_247C75530;
        *(v1141 + 24) = v1140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63338);
        v1142 = swift_allocObject();
        *(v1142 + 16) = v1575;
        *(v1142 + 32) = sub_247C75534;
        *(v1142 + 40) = v1138;
        *(v1142 + 48) = sub_247C75534;
        *(v1142 + 56) = v1139;
        *(v1142 + 64) = sub_247C7531C;
        *(v1142 + 72) = v1141;
        swift_setDeallocating();
        isa = v1137;

        sub_247C743E0();
        v1143 = v1697;
        if (os_log_type_enabled(v1697, v1698))
        {
          v1144 = swift_slowAlloc();
          v1689 = swift_slowAlloc();
          v1706[0] = v1689;
          *v1144 = 258;
          *(v1144 + 2) = 34;

          *(v1144 + 3) = 8;

          v1145 = v1535;
          v1146 = *(v1535 + *(v1702 + 20));
          swift_beginAccess();
          v1147 = *(v1146 + 16);
          v1148 = *(v1146 + 24);

          v1149 = sub_247CB03B4(v1147, v1148, v1706);

          *(v1144 + 4) = v1149;

          sub_247C74DAC(v1145, type metadata accessor for FlowResponse.Step);
          v1150 = v1697;
          _os_log_impl(&dword_247C1F000, v1697, v1698, "Step %{public}s masthead missing localized key.", v1144, 0xCu);
          v1151 = v1689;
          __swift_destroy_boxed_opaque_existential_1(v1689);
          MEMORY[0x24C1B9080](v1151, -1, -1);
          MEMORY[0x24C1B9080](v1144, -1, -1);
        }

        else
        {

          sub_247C74DAC(v1535, type metadata accessor for FlowResponse.Step);
        }

        sub_247C73064(v1131, v1132);
        v431 = v1694;
      }
    }

    v999 = type metadata accessor for FlowResponse.Step.Information;
    v1000 = v1585;
    goto LABEL_250;
  }

  v728 = 0;
  v1686 = (v727 + ((*(v1628 + 80) + 32) & ~*(v1628 + 80)));
  v729 = v1621;
  v730 = v1635;
  v1689 = v727;
  while (v728 < *(v727 + 16))
  {
    v731 = *(v1628 + 72);
    *&v1698 = v728;
    v732 = v1686 + v731 * v728;
    v733 = v1643;
    sub_247C74BF4(v732, v1643, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
    v735 = *v733;
    v734 = *(v733 + 8);
    v736 = *(v1692 + 16);
    v1704 = v3;
    if (!v736 || (sub_247CCFDA8(v735, v734), (v737 & 1) == 0))
    {
      *&v1697 = v734;
      v738 = v1618;
      sub_247C74BF4(v1700, v1618, type metadata accessor for FlowResponse.Step);
      v739 = v1619;
      sub_247C74BF4(v738, v1619, type metadata accessor for FlowResponse.Step);
      sub_247C74EA0(v738, v730, type metadata accessor for FlowResponse.Step);
      v740 = sub_247D1F468();
      v741 = sub_247D20038();
      if (os_log_type_enabled(v740, v741))
      {
        v742 = swift_slowAlloc();
        v743 = swift_slowAlloc();
        v1682 = v735;
        v744 = v743;
        v1706[0] = v743;
        *v742 = v1631;
        v745 = *(v739 + *(v1702 + 20));
        swift_beginAccess();
        v746 = *(v745 + 16);
        v747 = *(v745 + 24);

        v748 = sub_247CB03B4(v746, v747, v1706);

        *(v742 + 4) = v748;
        sub_247C74DAC(v1635, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v739, type metadata accessor for FlowResponse.Step);
        _os_log_impl(&dword_247C1F000, v740, v741, "Step %{public}s bullet item missing localized key.", v742, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v744);
        v749 = v744;
        v735 = v1682;
        MEMORY[0x24C1B9080](v749, -1, -1);
        v750 = v742;
        v730 = v1635;
        v729 = v1621;
        MEMORY[0x24C1B9080](v750, -1, -1);
      }

      else
      {

        sub_247C74DAC(v730, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v739, type metadata accessor for FlowResponse.Step);
      }

      sub_247C73064(v735, v1697);
      v3 = v1704;
    }

    v751 = *(v1643 + 16);
    v752 = *(v1643 + 24);
    v753 = HIBYTE(v752) & 0xF;
    if ((v752 & 0x2000000000000000) == 0)
    {
      v753 = v751 & 0xFFFFFFFFFFFFLL;
    }

    if (v753)
    {
      if (!*(v1692 + 16) || (sub_247CCFDA8(*(v1643 + 16), *(v1643 + 24)), (v754 & 1) == 0))
      {
        v755 = v1603;
        sub_247C74BF4(v1700, v1603, type metadata accessor for FlowResponse.Step);
        v756 = v1604;
        sub_247C74BF4(v755, v1604, type metadata accessor for FlowResponse.Step);
        v757 = v1605;
        sub_247C74EA0(v755, v1605, type metadata accessor for FlowResponse.Step);
        v758 = sub_247D1F468();
        v759 = sub_247D20058();
        if (os_log_type_enabled(v758, v759))
        {
          v760 = swift_slowAlloc();
          LODWORD(v1697) = v759;
          v761 = v760;
          v1682 = swift_slowAlloc();
          v1706[0] = v1682;
          *v761 = v1631;
          v762 = *(v756 + *(v1702 + 20));
          swift_beginAccess();
          v763 = *(v762 + 16);
          v764 = *(v762 + 24);

          v765 = sub_247CB03B4(v763, v764, v1706);

          *(v761 + 4) = v765;
          sub_247C74DAC(v757, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v756, type metadata accessor for FlowResponse.Step);
          _os_log_impl(&dword_247C1F000, v758, v1697, "Step %{public}s bullet item missing description.", v761, 0xCu);
          v766 = v1682;
          __swift_destroy_boxed_opaque_existential_1(v1682);
          MEMORY[0x24C1B9080](v766, -1, -1);
          v729 = v1621;
          MEMORY[0x24C1B9080](v761, -1, -1);
        }

        else
        {

          sub_247C74DAC(v757, type metadata accessor for FlowResponse.Step);
          sub_247C74DAC(v756, type metadata accessor for FlowResponse.Step);
        }

        sub_247C73064(v751, v752);
        v3 = v1704;
        v730 = v1635;
      }
    }

    sub_247C2BD10(v1643 + *(v1625 + 36), v729, &qword_27EE62F60);
    v767 = *v1627;
    v768 = v1629;
    if ((*v1627)(v729, 1, v1629) == 1)
    {
      v769 = v1626;
      *v1626 = 0;
      *(v769 + 1) = 0xE000000000000000;
      v770 = *(v768 + 20);
      v771 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
      (*(*(v771 - 8) + 56))(&v769[v770], 1, 1, v771);
      v769[*(v768 + 24)] = 0;
      sub_247D1F188();
      v772 = v768;
      v773 = v769;
      v774 = v767(v729, 1, v772);
      v730 = v1635;
      if (v774 != 1)
      {
        sub_247C27100(v729, &qword_27EE62F60);
      }
    }

    else
    {
      v773 = v1626;
      sub_247C74EA0(v729, v1626, type metadata accessor for FlowResponse.SFSymbolConfiguration);
    }

    v776 = *v773;
    v775 = *(v773 + 1);

    sub_247C74DAC(v773, type metadata accessor for FlowResponse.SFSymbolConfiguration);

    v777 = HIBYTE(v775) & 0xF;
    if ((v775 & 0x2000000000000000) == 0)
    {
      v777 = v776 & 0xFFFFFFFFFFFFLL;
    }

    if (!v777)
    {
      v778 = v729;
      v779 = v1599;
      sub_247C74BF4(v1700, v1599, type metadata accessor for FlowResponse.Step);
      v780 = v1600;
      sub_247C74BF4(v779, v1600, type metadata accessor for FlowResponse.Step);
      v781 = v1601;
      sub_247C74EA0(v779, v1601, type metadata accessor for FlowResponse.Step);
      v782 = sub_247D1F468();
      v783 = sub_247D20058();
      if (os_log_type_enabled(v782, v783))
      {
        v784 = swift_slowAlloc();
        *&v1697 = swift_slowAlloc();
        v1706[0] = v1697;
        *v784 = v1631;
        v785 = *(v780 + *(v1702 + 20));
        swift_beginAccess();
        v786 = *(v785 + 16);
        v787 = *(v785 + 24);

        v788 = sub_247CB03B4(v786, v787, v1706);

        *(v784 + 4) = v788;
        sub_247C74DAC(v781, type metadata accessor for FlowResponse.Step);
        v3 = v1704;
        sub_247C74DAC(v780, type metadata accessor for FlowResponse.Step);
        _os_log_impl(&dword_247C1F000, v782, v783, "Step %{public}s bullet item has no symbol name.", v784, 0xCu);
        v789 = v1697;
        __swift_destroy_boxed_opaque_existential_1(v1697);
        v730 = v1635;
        v729 = v1621;
        MEMORY[0x24C1B9080](v789, -1, -1);
        MEMORY[0x24C1B9080](v784, -1, -1);
      }

      else
      {

        sub_247C74DAC(v781, type metadata accessor for FlowResponse.Step);
        sub_247C74DAC(v780, type metadata accessor for FlowResponse.Step);
        v729 = v778;
        v730 = v1635;
      }
    }

    v728 = v1698 + 1;
    result = sub_247C74DAC(v1643, type metadata accessor for FlowResponse.Step.Information.BulletedListItem);
    v727 = v1689;
    if (isa == v728)
    {
      goto LABEL_136;
    }
  }

LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
  return result;
}