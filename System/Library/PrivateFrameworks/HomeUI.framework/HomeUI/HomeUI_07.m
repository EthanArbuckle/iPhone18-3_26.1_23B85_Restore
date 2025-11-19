uint64_t sub_20CF67600()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CF6767C()
{
  v26 = v0;

  *(v0 + 280) = *(v0 + 264);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C838280;
  sub_20D565998();
  v2 = sub_20D565968();
  v3 = sub_20D567EA8();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20CEE913C(0x6F43646E65736572, 0xEE00293A5F286564, &v25);
    _os_log_impl(&dword_20CEB6000, v2, v3, "%s Requesting another OTP failed", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = sub_20D567838();
  v12 = v11;
  swift_getErrorValue();
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  *(v0 + 40) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
  sub_20CEC80B0((v0 + 16), (v0 + 48));
  v16 = *(v0 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v16;
  sub_20CEEF74C((v0 + 48), v10, v12, isUniquelyReferenced_nonNull_native);

  v18 = v25;
  *(v0 + 168) = v25;
  v19 = sub_20D567838();
  v21 = v20;
  *(v0 + 104) = MEMORY[0x277D83E88];
  *(v0 + 80) = 13;
  sub_20CEC80B0((v0 + 80), (v0 + 112));
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v18;
  sub_20CEEF74C((v0 + 112), v19, v21, v22);

  v23 = v25;
  *(v0 + 288) = v25;
  *(v0 + 168) = v23;

  return MEMORY[0x2822009F8](sub_20CF674C8, 0, 0);
}

void sub_20CF67958(char *a1)
{
  sub_20CF6A54C();
  sub_20CF6A668();
  v2 = [a1 navigationItem];
  v3 = [v2 rightBarButtonItem];

  if (v3)
  {
    v4 = [*&a1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField] text];
    if (v4)
    {
      v5 = v4;
      sub_20D567838();

      v6 = sub_20D5678D8();

      v7 = (v6 == *&a1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeLengthMax]) & ~a1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeLengthMax + 8];
    }

    else
    {
      v7 = a1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeLengthMax + 8];
    }

    [v3 setEnabled_];
  }
}

uint64_t sub_20CF67A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v8 = qword_27C838280;
  sub_20D565998();
  v9 = sub_20D565968();
  v10 = sub_20D567EC8();
  v11 = os_log_type_enabled(v9, v10);
  v29[4] = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v28 = a2;
    v13 = v12;
    v27 = swift_slowAlloc();
    v29[0] = v27;
    *v13 = 136315394;
    *(v13 + 4) = sub_20CEE913C(0x6F43646E65736572, 0xEE00293A5F286564, v29);
    *(v13 + 12) = 2080;
    swift_beginAccess();
    sub_20D5663C8();
    v14 = sub_20D567768();
    v26 = v4;
    v15 = v14;
    v17 = v16;

    v18 = sub_20CEE913C(v15, v17, v29);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_20CEB6000, v9, v10, "%s Finished with results %s", v13, 0x16u);
    v19 = v27;
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v19, -1, -1);
    v20 = v13;
    a2 = v28;
    MEMORY[0x20F31FC70](v20, -1, -1);

    (*(v5 + 8))(v7, v26);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
  result = swift_beginAccess();
  v23 = *(a2 + v21);
  if (v23)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v24 = sub_20D5663C8();
    sub_20CF27E80(v24);

    v25 = sub_20D567738();

    [v23 viewController:a2 didFinishWithConfigurationResults:v25];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CF67DDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_20D565988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField;
  [*&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField] resignFirstResponder];
  v10 = [*&v1[v9] text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_20D567838();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v15 = qword_27C838280;
  sub_20D565998();
  sub_20D5663C8();
  v16 = sub_20D565968();
  v17 = sub_20D567EC8();

  v18 = os_log_type_enabled(v16, v17);
  v38 = v12;
  if (!v18)
  {

    (*(v6 + 8))(v8, v5);
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_15:
    v25 = &v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_otpCode];
    *v25 = v38;
    v25[1] = v14;

    goto LABEL_16;
  }

  v19 = swift_slowAlloc();
  v37 = v4;
  v20 = v19;
  v21 = swift_slowAlloc();
  v39 = v21;
  *v20 = 136315138;
  if (!v14)
  {
    v12 = 0x3E4C494E3CLL;
  }

  v36 = v5;
  if (v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  sub_20D5663C8();
  v23 = sub_20CEE913C(v12, v22, &v39);

  *(v20 + 4) = v23;
  _os_log_impl(&dword_20CEB6000, v16, v17, "New code: %s", v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v21);
  MEMORY[0x20F31FC70](v21, -1, -1);
  v24 = v20;
  v4 = v37;
  MEMORY[0x20F31FC70](v24, -1, -1);

  (*(v6 + 8))(v8, v36);
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_16:
  v26 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v27 = [v1 navigationItem];
  v28 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v27 setRightBarButtonItem_];

  [v26 startAnimating];
  v29 = [v1 navigationItem];
  [v29 setHidesBackButton_];

  [*&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_resendCodeButton] setEnabled_];
  v30 = sub_20D567C58();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  sub_20D567C18();
  v31 = v1;
  v32 = sub_20D567C08();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v31;
  sub_20CF18960(0, 0, v4, &unk_20D5BFB38, v33);
}

uint64_t sub_20CF68260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a4;
  v5 = sub_20D565988();
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = sub_20D567C18();
  *(v4 + 296) = sub_20D567C08();
  v6 = MEMORY[0x277D84F98];
  *(v4 + 208) = 13;
  *(v4 + 216) = v6;
  *(v4 + 336) = 0;
  v7 = swift_task_alloc();
  *(v4 + 304) = v7;
  *v7 = v4;
  v7[1] = sub_20CF6838C;

  return sub_20CF69DD0();
}

uint64_t sub_20CF6838C(char a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_20D567BA8();
    v7 = v6;
    v8 = sub_20CF68CBC;
  }

  else
  {
    *(v4 + 337) = a1 & 1;
    v5 = sub_20D567BA8();
    v7 = v9;
    v8 = sub_20CF68510;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_20CF68510()
{
  v46 = v0;
  if (*(v0 + 337) != 1)
  {
    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v5 = qword_281120C18;
    sub_20D565998();
    v6 = sub_20D565968();
    v7 = sub_20D567EA8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 280);
    v10 = *(v0 + 256);
    v11 = *(v0 + 264);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v45[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D0510, v45);
      _os_log_impl(&dword_20CEB6000, v6, v7, "%s Could not verify OTP", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x20F31FC70](v13, -1, -1);
      MEMORY[0x20F31FC70](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    sub_20CEF5CA0();
    v14 = swift_allocError();
    *v15 = 13;
    swift_willThrow();
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v16 = qword_27C838280;
    sub_20D565998();
    v17 = v14;
    v18 = sub_20D565968();
    v19 = sub_20D567EA8();

    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 256);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45[0] = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D0510, v45);
      *(v24 + 12) = 2112;
      v27 = v14;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_20CEB6000, v18, v19, "%s Verify OTP failed: %@", v24, 0x16u);
      sub_20CEF928C(v25, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F31FC70](v26, -1, -1);
      MEMORY[0x20F31FC70](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
    *(v0 + 224) = v14;
    v29 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
    v30 = MEMORY[0x277D18328];
    if (swift_dynamicCast())
    {
      v31 = *(v0 + 232);
      switch(v31)
      {
        case 1:

          v4 = 0;
          v32 = 2;
          goto LABEL_22;
        case 5:

          v4 = 0;
          v32 = 3;
          goto LABEL_22;
        case 7:

          v4 = 0;
          v32 = 1;
LABEL_22:
          *(v0 + 336) = v32;
          goto LABEL_23;
      }

      v33 = sub_20D567838();
      v35 = v42;
      *(v0 + 144) = v30;
      *(v0 + 120) = v31;
      sub_20CEC80B0((v0 + 120), (v0 + 152));
      v43 = *(v0 + 216);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v43;
      v41 = (v0 + 152);
    }

    else
    {
      v33 = sub_20D567838();
      v35 = v34;
      swift_getErrorValue();
      v36 = *(v0 + 184);
      v37 = *(v0 + 192);
      *(v0 + 80) = v37;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v36, v37);
      sub_20CEC80B0((v0 + 56), (v0 + 88));
      v39 = *(v0 + 216);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v39;
      v41 = (v0 + 88);
    }

    sub_20CEEF74C(v41, v33, v35, isUniquelyReferenced_nonNull_native);

    v4 = 0;
    *(v0 + 216) = v45[0];
    goto LABEL_23;
  }

  v1 = sub_20D564B68();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_20CF6B6B0(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  v2 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D07370], v1);
  LOBYTE(v1) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v3 = 17;
  if (v1)
  {
    v3 = 7;
  }

  *(v0 + 208) = v3;
  v4 = *(v0 + 312);
LABEL_23:
  *(v0 + 320) = v4;

  return MEMORY[0x2822009F8](sub_20CF68AE8, 0, 0);
}

uint64_t sub_20CF68AE8()
{
  *(v0 + 328) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF68B74, v2, v1);
}

void sub_20CF68B74()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 248);

  sub_20CF69068(v2, (v0 + 336), v0 + 216, (v0 + 208));
  if (v1)
  {
  }

  else
  {
    v4 = sub_20D567BA8();

    MEMORY[0x2822009F8](sub_20CF68C40, v4, v3);
  }
}

uint64_t sub_20CF68C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CF68CBC()
{
  v32 = v0;
  v1 = *(v0 + 312);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27C838280;
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D0510, &v31);
    *(v10 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Verify OTP failed: %@", v10, 0x16u);
    sub_20CEF928C(v11, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  *(v0 + 224) = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  v16 = MEMORY[0x277D18328];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = sub_20D567838();
    v21 = v20;
    swift_getErrorValue();
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    *(v0 + 80) = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v22, v23);
    sub_20CEC80B0((v0 + 56), (v0 + 88));
    v25 = *(v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v25;
    v27 = (v0 + 88);
LABEL_11:
    sub_20CEEF74C(v27, v19, v21, isUniquelyReferenced_nonNull_native);

    *(v0 + 216) = v31;
    goto LABEL_15;
  }

  v17 = *(v0 + 232);
  if (v17 == 1)
  {

    v18 = 2;
    goto LABEL_14;
  }

  if (v17 == 5)
  {

    v18 = 3;
    goto LABEL_14;
  }

  if (v17 != 7)
  {
    v19 = sub_20D567838();
    v21 = v28;
    *(v0 + 144) = v16;
    *(v0 + 120) = v17;
    sub_20CEC80B0((v0 + 120), (v0 + 152));
    v29 = *(v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v29;
    v27 = (v0 + 152);
    goto LABEL_11;
  }

  v18 = 1;
LABEL_14:
  *(v0 + 336) = v18;
LABEL_15:
  *(v0 + 320) = 0;

  return MEMORY[0x2822009F8](sub_20CF68AE8, 0, 0);
}

void sub_20CF69068(uint64_t a1, char *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_20D565988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF6A54C();
  if (*a2)
  {
    sub_20CF694DC(*a2);
    sub_20CF6A668();
  }

  else
  {
    v11 = sub_20D567838();
    v13 = v12;
    v14 = *a4;
    v35[3] = MEMORY[0x277D83E88];
    v35[0] = v14;
    swift_beginAccess();
    sub_20CED9A44(v35, v11, v13);
    swift_endAccess();
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v15 = qword_27C838280;
    sub_20D565998();
    v16 = sub_20D565968();
    v17 = sub_20D567EC8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = v17;
      v19 = v18;
      v36 = swift_slowAlloc();
      v35[0] = v36;
      *v19 = 136315394;
      *(v19 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D0510, v35);
      *(v19 + 12) = 2080;
      swift_beginAccess();
      v33 = v8;
      sub_20D5663C8();
      v20 = sub_20D567768();
      v32 = v16;
      v21 = v20;
      v23 = v22;

      v24 = sub_20CEE913C(v21, v23, v35);

      *(v19 + 14) = v24;
      v25 = v32;
      _os_log_impl(&dword_20CEB6000, v32, v34, "%s Finished with results %s", v19, 0x16u);
      v26 = v36;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v26, -1, -1);
      MEMORY[0x20F31FC70](v19, -1, -1);

      (*(v33 + 8))(v10, v7);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v27 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
    swift_beginAccess();
    v28 = *(a1 + v27);
    if (v28)
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      v29 = sub_20D5663C8();
      sub_20CF27E80(v29);

      v30 = sub_20D567738();

      [v28 viewController:a1 didFinishWithConfigurationResults:v30];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20CF69468(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_20D568628();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

void sub_20CF694DC(char a1)
{
  v2 = v1;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v8 = qword_27C838280;
  sub_20D565998();
  v9 = sub_20D565968();
  v10 = sub_20D567EC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D04F0, aBlock);
    _os_log_impl(&dword_20CEB6000, v9, v10, "%s Presenting OTP error alert", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (a1)
  {
    v13 = sub_20D5677F8();
    v14 = HULocalizedString(v13);

    sub_20D567838();
    v15 = sub_20D5677F8();
    v16 = HULocalizedString(v15);

    sub_20D567838();
  }

  v17 = sub_20D5677F8();

  v18 = sub_20D5677F8();

  v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v20 = sub_20D5677F8();
  v21 = HULocalizedString(v20);

  if (!v21)
  {
    sub_20D567838();
    v21 = sub_20D5677F8();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v2;
  aBlock[4] = sub_20CF6B874;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF13714;
  aBlock[3] = &block_descriptor_39;
  v23 = _Block_copy(aBlock);
  v24 = v2;

  v25 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v23];
  _Block_release(v23);

  [v19 addAction_];
  [v24 presentViewController:v19 animated:1 completion:0];
}

uint64_t sub_20CF69988(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_20D565988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v12 = qword_27C838280;
  sub_20D565998();
  v13 = sub_20D565968();
  v14 = sub_20D567EC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36[0] = v6;
    v16 = a3;
    v17 = v15;
    v18 = v9;
    v19 = v5;
    v20 = a2;
    v21 = swift_slowAlloc();
    v37[0] = v21;
    *v17 = 136315138;
    *(v17 + 4) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D04F0, v37);
    _os_log_impl(&dword_20CEB6000, v13, v14, "%s Tapped Code Alert", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    a2 = v20;
    v5 = v19;
    v9 = v18;
    MEMORY[0x20F31FC70](v22, -1, -1);
    v23 = v17;
    a3 = v16;
    v6 = v36[0];
    MEMORY[0x20F31FC70](v23, -1, -1);
  }

  v24 = *(v6 + 8);
  result = v24(v11, v5);
  if (a2 == 3)
  {
    v26 = v12;
    sub_20D565998();
    v27 = sub_20D565968();
    v28 = sub_20D567EA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D04F0, v37);
      _os_log_impl(&dword_20CEB6000, v27, v28, "%s Finishing onboarding flow due to too many attempts ", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x20F31FC70](v30, -1, -1);
      MEMORY[0x20F31FC70](v29, -1, -1);
    }

    v24(v9, v5);
    v31 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
    result = swift_beginAccess();
    v32 = *(a3 + v31);
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20D5BC410;
      v36[1] = sub_20D567838();
      v36[2] = v34;
      swift_unknownObjectRetain();
      sub_20D5687F8();
      *(inited + 96) = MEMORY[0x277D83E88];
      *(inited + 72) = 16;
      sub_20CEF49C8(inited);
      swift_setDeallocating();
      sub_20CEF928C(inited + 32, &qword_27C81D8D0);
      v35 = sub_20D567738();

      [v32 viewController:a3 didFinishWithConfigurationResults:v35];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20CF69DD0()
{
  v1[2] = v0;
  v2 = sub_20D565988();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_20D567C18();
  v1[7] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_20CF69ED0, v4, v3);
}

uint64_t sub_20CF69ED0()
{
  v29 = v0;
  v1 = (v0[2] + OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_otpCode);
  v3 = *v1;
  v2 = v1[1];
  v0[10] = v2;
  if (v2)
  {
    v4 = qword_27C81A2D8;
    sub_20D5663C8();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_27C838280;
    sub_20D565998();
    sub_20D5663C8();
    v6 = sub_20D565968();
    v7 = sub_20D567EC8();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[6];
    v10 = v0[3];
    v11 = v0[4];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_20CEE913C(0x4F7966697265765FLL, 0xEC00000029285054, v28);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_20CEE913C(v3, v2, v28);
      _os_log_impl(&dword_20CEB6000, v6, v7, "%s Verifying OTP code %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v13, -1, -1);
      MEMORY[0x20F31FC70](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    v14 = *(v0[2] + OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_onboardingContext);
    v0[11] = v14;
    v14;
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_20CF6A2F4;

    return sub_20CEE1DD8(v3, v2);
  }

  else
  {

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v17 = qword_27C838280;
    sub_20D565998();
    v18 = sub_20D565968();
    v19 = sub_20D567EA8();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_20CEE913C(0x4F7966697265765FLL, 0xEC00000029285054, v28);
      _os_log_impl(&dword_20CEB6000, v18, v19, "%s Unknown otpCode. Aborting onboarding.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x20F31FC70](v25, -1, -1);
      MEMORY[0x20F31FC70](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
    sub_20CEF5CA0();
    swift_allocError();
    *v26 = 7;
    swift_willThrow();

    v27 = v0[1];

    return v27(0);
  }
}

uint64_t sub_20CF6A2F4(char a1)
{
  v4 = *v2;
  *(v4 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20CF6A4D4;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20CF6A458;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20CF6A458()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_20CF6A4D4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

id sub_20CF6A54C()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (v2)
  {
    v3 = [v2 customView];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        [v4 stopAnimating];
        [v5 setHidesWhenStopped_];
      }
    }
  }

  v6 = [v0 navigationItem];
  [v6 setHidesBackButton_];

  v7 = *&v0[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_resendCodeButton];

  return [v7 setEnabled_];
}

void sub_20CF6A668()
{
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  sub_20D567838();
  v3 = type metadata accessor for UtilityOnboardingEnterOTP();
  v18[3] = v3;
  v18[0] = v0;
  v4 = v0;
  v5 = sub_20D5677F8();

  if (v3)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v18, v3);
    v7 = *(v3 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_20D568BD8();
    (*(v7 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v12 = [v11 initWithTitle:v5 style:2 target:v10 action:{sel_navBarButtonTapped_, v18[0]}];

  swift_unknownObjectRelease();
  v13 = *&v4[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_nextButton];
  *&v4[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_nextButton] = v12;
  v14 = v12;

  if (v14)
  {
    v15 = v14;
    v16 = sub_20D5677F8();
    [v15 setAccessibilityIdentifier_];

    v17 = [v4 navigationItem];
    [v17 setRightBarButtonItem:v15 animated:0];
  }
}

void sub_20CF6A8D8()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentDevice];
  v6 = [v14 orientation];
  if ([v14 userInterfaceIdiom] == 1 && ((IsLandscape = UIDeviceOrientationIsLandscape(v6)) || UIDeviceOrientationIsPortrait(v6)))
  {
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v8 = qword_27C838280;
    sub_20D565998();
    v9 = sub_20D565968();
    v10 = sub_20D567EC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20CEE913C(0xD00000000000002FLL, 0x800000020D5D0530, &v15);
      *(v11 + 12) = 1024;
      *(v11 + 14) = IsLandscape;
      _os_log_impl(&dword_20CEB6000, v9, v10, "%s Is landscape mode? %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x20F31FC70](v12, -1, -1);
      MEMORY[0x20F31FC70](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    [v1 setShouldAdjustScrollViewInsetForKeyboard_];
  }

  else
  {
    v13 = v14;
  }
}

id sub_20CF6AB7C()
{
  v0 = [objc_opt_self() futureWithNoResult];

  return v0;
}

uint64_t sub_20CF6AC00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v11 = sub_20D5633F8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v34 - v16;
  if (v6[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeLengthMax + 8])
  {
    return 0;
  }

  v34[0] = *&v6[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeLengthMax];
  v34[1] = a3;
  v34[2] = a4;
  v34[3] = a5;
  sub_20D5633C8();
  sub_20D5633E8();
  v18 = *(v12 + 8);
  v18(v17, v11);
  sub_20CEF44D8();
  sub_20D568598();
  v20 = v19;
  v18(v15, v11);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = [a1 text];
  if (v21)
  {
    v22 = v21;
    v23 = sub_20D567838();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = sub_20D567E28();
  if (v28)
  {

    return 0;
  }

  sub_20CF6AE90(v26, v27, a4, a5, v23, v25);

  v29 = sub_20D5678D8();

  v30 = v34[0];
  if (v34[0] < v29)
  {
    return 0;
  }

  v32 = [v6 navigationItem];
  v33 = [v32 rightBarButtonItem];

  if (v33)
  {
    [v33 setEnabled_];
  }

  return 1;
}

unint64_t sub_20CF6AE90(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_20D5663C8();
  sub_20D568548();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_20D5663C8();
  sub_20D568548();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_20CF6B634(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_20D567938();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_20CF6B634(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_20CF6B634(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_20D567938();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_20D567918();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x20F31CD60](result);
LABEL_23:
        sub_20D567998();
        sub_20CF6B9E8();
        sub_20D5678F8();

        sub_20D5678F8();
        sub_20CF6B5E8(a2, a5, a6);
        sub_20D5678F8();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id UtilityOnboardingEnterOTP.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingEnterOTP.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingEnterOTP.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingEnterOTP();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20CF6B5E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_20D567998();
  }

  __break(1u);
  return result;
}

uint64_t sub_20CF6B634(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_20D567948();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F31CDD0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_20CF6B6B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CF6B880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20CF68260(a1, v4, v5, v6);
}

uint64_t sub_20CF6B934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CF66C48(a1, v4, v5, v6);
}

unint64_t sub_20CF6B9E8()
{
  result = qword_27C81D8D8;
  if (!qword_27C81D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D8D8);
  }

  return result;
}

uint64_t CCUIGridSizeClass.description.getter()
{
  v0 = NSStringFromCCUIGridSizeClass();
  v1 = sub_20D567838();

  return v1;
}

uint64_t sub_20CF6BAA0()
{
  v0 = NSStringFromCCUIGridSizeClass();
  v1 = sub_20D567838();

  return v1;
}

uint64_t sub_20CF6BAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 1)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == 2 && a1 == 1)
    {
      return 2;
    }

    if (a2 == 4 && a1 == 1)
    {
      return 3;
    }

    if (a2 == 2 && a1 == 2)
    {
      return 4;
    }

    if (a2 == 4)
    {
      v10 = a1 - 2;
      if (a1 - 2) < 7 && ((0x55u >> v10))
      {
        return qword_20D5BFB98[v10];
      }
    }

    else
    {
      if (a2 == 6 && a1 == 4)
      {
        return 8;
      }

      if (a2 == 8 && a1 == 4)
      {
        return 10;
      }
    }
  }

  v11 = v6;
  if (qword_28111FAD0 != -1)
  {
    swift_once();
  }

  v12 = qword_281120C08;
  sub_20D565998();
  v13 = sub_20D565968();
  v14 = sub_20D567EB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_20CEE913C(0x293A5F2874696E69, 0xE800000000000000, &v18);
    *(v15 + 12) = 2048;
    *(v15 + 14) = a1;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a2;
    _os_log_impl(&dword_20CEB6000, v13, v14, "%s no CCUIGridSizeClass for HUGridSize(%ld,%ld)", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F31FC70](v16, -1, -1);
    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v11);
  return 4;
}

uint64_t sub_20CF6BDDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20D568768();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_20D568768();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20CF3BD24();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20CF85834(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20CF6BF7C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_20D568768();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_20D568768();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_20CF6C07C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20CEE8664(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821640);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20CF6C180(uint64_t result)
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

  result = sub_20CEE89EC(result, v11, 1, v3);
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

uint64_t sub_20CF6C2E4(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t), unint64_t *a4)
{
  v10 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_20D568768();
  }

  else
  {
    v12 = *(a1 + 16);
  }

  if (!(*v4 >> 62))
  {
    v13 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = __OFADD__(v13, v12);
    result = v13 + v12;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = sub_20D568768();
  v14 = __OFADD__(v20, v12);
  result = v20 + v12;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_6:
  (a2)();
  a2 = *v4;
  v5 = *v4 & 0xFFFFFFFFFFFFFF8;
  v16 = *(v5 + 0x10);
  v17 = (*(v5 + 0x18) >> 1) - v16;
  result = a3(&v41, v5 + 8 * v16 + 32, v17, a1);
  if (result < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v18 = *(v5 + 16);
    v14 = __OFADD__(v18, result);
    v19 = v18 + result;
    if (v14)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v5 + 16) = v19;
  }

  if (result != v17)
  {
LABEL_11:
    result = sub_20CEC80DC();
    *v10 = a2;
    return result;
  }

LABEL_16:
  a3 = *(v5 + 16);
  v12 = v42;
  v5 = v44;
  v36 = v43;
  v37 = v41;
  v6 = v45;
  if (v41 < 0)
  {
LABEL_20:
    if (!sub_20D568798())
    {
      goto LABEL_11;
    }

    sub_20CECF940(0, a4);
    result = swift_dynamicCast();
    v22 = v40;
    goto LABEL_31;
  }

  if (!v45)
  {
    v23 = (v43 + 64) >> 6;
    if (v23 <= v44 + 1)
    {
      v24 = v44 + 1;
    }

    else
    {
      v24 = (v43 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v21 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_59;
      }

      if (v21 >= v23)
      {
        v22 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v42 + 8 * v21);
      ++v5;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v21 = v44;
LABEL_29:
  v26 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v22 = *(*(v41 + 48) + ((v21 << 9) | (8 * v26)));
  result = v22;
  v25 = v21;
LABEL_30:
  v44 = v25;
  v45 = v6;
  v5 = v25;
LABEL_31:
  v27 = v37;
  v28 = a3;
  if (!v22)
  {
    goto LABEL_11;
  }

  v29 = (v36 + 64) >> 6;
LABEL_33:
  if (v28 + 1 > *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_20D567AB8();
    v27 = v37;
  }

  a2 = *v10;
  v30 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v35 = *v10 & 0xFFFFFFFFFFFFFF8;
  if (v28 > v30)
  {
    v30 = v28;
  }

  v38 = v30;
  while (1)
  {
    while (1)
    {
      if (v28 == v38)
      {
        v28 = v38;
        *(v35 + 16) = v38;
        goto LABEL_33;
      }

      *(v35 + 32 + 8 * v28++) = v22;
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_20D568798())
      {
        sub_20CECF940(0, a4);
        result = swift_dynamicCast();
        v27 = v37;
        v22 = v40;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v39 = v28;
    if (!v6)
    {
      break;
    }

    v31 = v5;
LABEL_54:
    v34 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v22 = *(*(v27 + 48) + ((v31 << 9) | (8 * v34)));
    result = v22;
    v27 = v37;
    v33 = v31;
LABEL_39:
    v41 = v27;
    v42 = v12;
    v43 = v36;
    v44 = v33;
    v5 = v33;
    v45 = v6;
    v28 = v39;
    if (!v22)
    {
LABEL_56:
      *(v35 + 16) = v28;
      goto LABEL_11;
    }
  }

  if (v29 <= v5 + 1)
  {
    v32 = v5 + 1;
  }

  else
  {
    v32 = (v36 + 64) >> 6;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
      v22 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v12 + 8 * v31);
    ++v5;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_20CF6C6A0(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v4 = objc_opt_self();
  if ([v4 isAMac])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (([Strong respondsToSelector_] & 1) == 0)
      {
        result = sub_20D568A58();
        __break(1u);
        return result;
      }

      v7 = a1;
      v8 = [v6 addActionDelegateForNavigationBarButton_];
      v9 = [v6 homeForNavigationBarButton_];
      v10 = [v6 roomForNavigationBarButton_];
      sub_20CF6D734(v9, v10, v8, 0);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    sub_20CECF940(0, &qword_28111FB78);
    return sub_20D568308();
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = v1;
  *(v13 + 16) = v1;
  *(v13 + 24) = v12;
  v34 = sub_20CF72D24;
  v35 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_20CF6CF70;
  v33 = &block_descriptor_140;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 elementWithUncachedProvider_];
  _Block_release(v15);
  v17 = v16;
  MEMORY[0x20F31CEE0]();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v18 = v36;
  if ([v4 isAMac])
  {
    goto LABEL_10;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v14;
  v34 = sub_20CF72D2C;
  v35 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_20CF6CF70;
  v33 = &block_descriptor_147;
  v21 = _Block_copy(&aBlock);

  v22 = [v11 elementWithUncachedProvider_];
  _Block_release(v21);
  v23 = v22;
  MEMORY[0x20F31CEE0]();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    sub_20D567B08();

    v18 = v36;
LABEL_10:
    if (v18 >> 62)
    {
      break;
    }

    v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_23;
    }

LABEL_12:
    aBlock = v3;
    sub_20D5688F8();
    if ((v23 & 0x8000000000000000) == 0)
    {
      sub_20CECF940(0, &qword_28111FB78);
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x20F31DD20](v24, v18);
        }

        else
        {
          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        ++v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_20D5BA040;
        *(v27 + 32) = v26;
        sub_20D568308();
        sub_20D5688C8();
        sub_20D568908();
        sub_20D568918();
        sub_20D5688D8();
      }

      while (v23 != v24);

      if (aBlock >> 62)
      {
        goto LABEL_24;
      }

LABEL_19:
      sub_20D5663C8();
      sub_20D568C08();
      sub_20CECF940(0, &unk_28111FFC0);
      goto LABEL_20;
    }

    __break(1u);
LABEL_26:
    sub_20D567AB8();
  }

  v23 = sub_20D568768();
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_23:

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_19;
  }

LABEL_24:
  sub_20CECF940(0, &unk_28111FFC0);
  sub_20D5663C8();
  sub_20D568A78();

LABEL_20:

  sub_20CECF940(0, &qword_28111FB78);
  v28 = sub_20D568308();

  return v28;
}

uint64_t sub_20CF6CD6C(void (*a1)(uint64_t))
{
  v2 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_5:

LABEL_6:
    sub_20CF6BF7C(v2, sub_20CF3BD24, sub_20CF85D4C);
    a1(v11);
  }

  v6 = v5;
  if ([v5 respondsToSelector_])
  {
    v7 = v4;
    v8 = [v6 addActionDelegateForNavigationBarButton_];
    v9 = [v6 homeForNavigationBarButton_];
    v4 = [v6 roomForNavigationBarButton_];
    v2 = sub_20CF6D734(v9, v4, v8, 0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  result = sub_20D568A58();
  __break(1u);
  return result;
}

uint64_t sub_20CF6CF70(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_20CF72DE4, v4);
}

void sub_20CF6D004(uint64_t a1, uint64_t a2)
{
  sub_20CECF940(0, &unk_28111FFC0);
  v3 = sub_20D567A58();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_20CF6D080(uint64_t (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(MEMORY[0x277D84F90]);
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

    return a1(MEMORY[0x277D84F90]);
  }

  v5 = v4;
  if ([v4 respondsToSelector_])
  {
    [v5 addActionDelegateForNavigationBarButton_];
    v6 = sub_20D5677F8();
    v7 = HULocalizedString(v6);

    sub_20D567838();
    v8 = swift_allocObject();
    strcpy((v8 + 16), "HUAddMenuHome");
    *(v8 + 30) = -4864;
    v9 = sub_20D5677F8();
    v10 = [objc_opt_self() systemImageNamed_];

    sub_20CECF940(0, &unk_28111FB00);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = sub_20CF72D34;
    v12[4] = v8;
    v18 = v12;
    v13 = sub_20D568438();
    v14 = sub_20D5677F8();
    [v13 setAccessibilityIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_20D5BA040;
    *(v15 + 32) = v13;
    v16 = v13;
    a1(v15);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    result = sub_20D568A58();
    __break(1u);
  }

  return result;
}

uint64_t sub_20CF6D3E8(void *a1)
{
  v12 = MEMORY[0x277D84F90];
  if ([objc_opt_self() isAMac])
  {
    v3 = sub_20CF6F054(a1);
    sub_20CF6BF7C(v3, sub_20CF3BD24, sub_20CF85D4C);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;
    aBlock[4] = sub_20CF6D6C4;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF6CF70;
    aBlock[3] = &block_descriptor_9;
    v7 = _Block_copy(aBlock);

    v8 = [v4 elementWithUncachedProvider_];
    _Block_release(v7);
    v9 = v8;
    MEMORY[0x20F31CEE0]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
  }

  sub_20CECF940(0, &qword_28111FB78);
  return sub_20D568308();
}

uint64_t sub_20CF6D5F8(void (*a1)(uint64_t))
{
  v5 = MEMORY[0x277D84F90];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = sub_20CF6F054(Strong);

  sub_20CF6BF7C(v3, sub_20CF3BD24, sub_20CF85D4C);
  a1(v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CF6D734(void *a1, void *a2, uint64_t a3, char a4)
{
  v158 = MEMORY[0x277D84F90];
  if ([a1 hf_currentUserIsAdministrator])
  {
    v6 = [a1 hf_shouldBlockCurrentUserFromHome] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_20D567EC8();
  sub_20CECF940(0, &qword_28111FAB8);
  v8 = a1;
  v9 = sub_20D568518();
  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = a2;
    v12 = v6;
    v13 = swift_slowAlloc();
    v157 = v13;
    *v10 = 136316418;
    v14 = sub_20D568E18();
    v16 = sub_20CEE913C(v14, v15, &v157);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20CEE913C(0xD000000000000033, 0x800000020D5D05B0, &v157);
    *(v10 + 22) = 1024;
    *(v10 + 24) = v12;
    *(v10 + 28) = 1024;
    v17 = [v8 hf_currentUserIsAdministrator];

    *(v10 + 30) = v17;
    *(v10 + 34) = 1024;
    v18 = [v8 hf_shouldBlockCurrentUserFromHome];

    *(v10 + 36) = v18;
    *(v10 + 40) = 1024;
    *(v10 + 42) = a4 & 1;
    _os_log_impl(&dword_20CEB6000, v9, v7, "(%s:%s userHasAddPermissions = %{BOOL}d. home.hf_currentUserIsAdministrator = %{BOOL}d home.hf_shouldBlockCurrentUserFromHome = %{BOOL}d includeDisabledElements = %{BOOL}d", v10, 0x2Eu);
    swift_arrayDestroy();
    v19 = v13;
    v6 = v12;
    a2 = v11;
    MEMORY[0x20F31FC70](v19, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  else
  {
  }

  if (v6)
  {
    if ([objc_opt_self() supportsAccessorySetup])
    {
      v20 = [objc_opt_self() addAccessoryString];
      sub_20D567838();

      v21 = swift_allocObject();
      *(v21 + 16) = v8;
      *(v21 + 24) = a2;
      v22 = a2;
      v23 = v8;
      v24 = sub_20D5677F8();
      v25 = [objc_opt_self() systemImageNamed_];

      sub_20CECF940(0, &unk_28111FB00);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = sub_20CF72E10;
      v27[4] = v21;
      v140 = v27;
      v28 = sub_20D568438();
      v29 = sub_20D5677F8();
      [v28 setAccessibilityIdentifier_];

      goto LABEL_18;
    }

    if ((a4 & 1) == 0)
    {
      v153 = 0;
      v41 = 0;
      if (![v8 hf_containsActionableAccessories])
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }
  }

  else if ((a4 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (([objc_opt_self() isAMac] & 1) == 0)
  {
    v31 = [objc_opt_self() addAccessoryString];
    sub_20D567838();

    v32 = swift_allocObject();
    *(v32 + 16) = v8;
    *(v32 + 24) = a2;
    v33 = a2;
    v34 = v8;
    v35 = sub_20D5677F8();
    v36 = [objc_opt_self() systemImageNamed_];

    sub_20CECF940(0, &unk_28111FB00);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = sub_20CF72A18;
    v38[4] = v32;
    v142 = v38;
    v28 = sub_20D568438();
    v39 = sub_20D5677F8();
    [v28 setAccessibilityIdentifier_];

    [v28 setAttributes_];
LABEL_18:
    v40 = v28;
    MEMORY[0x20F31CEE0]();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
    v153 = v40;

    if ((v6 & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        v154 = v6;
        v152 = 0;
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (([v8 hf_containsActionableAccessories] & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        v41 = 0;
        goto LABEL_33;
      }

      goto LABEL_29;
    }

LABEL_27:
    v42 = sub_20D5677F8();
    v43 = HULocalizedString(v42);

    sub_20D567838();
    v44 = swift_allocObject();
    *(v44 + 16) = v8;
    strcpy((v44 + 24), "HUAddMenuScene");
    *(v44 + 39) = -18;
    v45 = v8;
    v46 = sub_20D5677F8();
    v47 = [objc_opt_self() systemImageNamed_];

    sub_20CECF940(0, &unk_28111FB00);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    v49[2] = v48;
    v49[3] = sub_20CF72E04;
    v49[4] = v44;
    v143 = v49;
    v50 = sub_20D568438();
    v51 = sub_20D5677F8();
    [v50 setAccessibilityIdentifier_];

    goto LABEL_30;
  }

  if (v6)
  {
    v153 = 0;
    if ([v8 hf_containsActionableAccessories])
    {
      goto LABEL_27;
    }
  }

  else
  {
    v153 = 0;
  }

LABEL_29:
  v52 = sub_20D5677F8();
  v53 = HULocalizedString(v52);

  sub_20D567838();
  v54 = swift_allocObject();
  *(v54 + 16) = v8;
  strcpy((v54 + 24), "HUAddMenuScene");
  *(v54 + 39) = -18;
  v55 = v8;
  v56 = sub_20D5677F8();
  v57 = [objc_opt_self() systemImageNamed_];

  sub_20CECF940(0, &unk_28111FB00);
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = sub_20CF729B0;
  v59[4] = v54;
  v144 = v59;
  v50 = sub_20D568438();
  v60 = sub_20D5677F8();
  [v50 setAccessibilityIdentifier_];

  [v50 setAttributes_];
LABEL_30:
  v41 = v50;
  MEMORY[0x20F31CEE0]();
  if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();

  if (!v6)
  {
    v152 = v41;
    if (a4)
    {
LABEL_40:
      v70 = sub_20D5677F8();
      v71 = HULocalizedString(v70);

      sub_20D567838();
      v72 = swift_allocObject();
      v72[2] = 0xD000000000000013;
      v72[3] = 0x800000020D5D05F0;
      v72[4] = v8;
      v73 = v8;
      v74 = sub_20D5677F8();
      v75 = [objc_opt_self() systemImageNamed_];

      sub_20CECF940(0, &unk_28111FB00);
      v76 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v77 = swift_allocObject();
      v77[2] = v76;
      v77[3] = sub_20CF72964;
      v77[4] = v72;
      v145 = v77;
      v69 = sub_20D568438();
      [v69 setAttributes_];
      goto LABEL_41;
    }

    v154 = 0;
LABEL_38:
    v150 = 0;
    v151 = 0;
    goto LABEL_51;
  }

LABEL_33:
  v152 = v41;
  if (([v8 hf_userCanCreateTrigger] & 1) == 0 && !HFForceAllowAutomationCreation())
  {
    if ((a4 & 1) == 0)
    {
      v154 = v6;
      v151 = 0;
LABEL_44:
      v83 = sub_20D5677F8();
      v84 = HULocalizedString(v83);

      sub_20D567838();
      v85 = swift_allocObject();
      *(v85 + 16) = v8;
      strcpy((v85 + 24), "HUAddMenuRoom");
      *(v85 + 38) = -4864;
      v86 = v8;
      v87 = sub_20D5677F8();
      v88 = [objc_opt_self() systemImageNamed_];

      sub_20CECF940(0, &unk_28111FB00);
      v89 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = swift_allocObject();
      v90[2] = v89;
      v90[3] = sub_20CF72DFC;
      v90[4] = v85;
      v146 = v90;
      v91 = sub_20D568438();
      v92 = sub_20D5677F8();
      [v91 setAccessibilityIdentifier_];

LABEL_47:
      v102 = v91;
      MEMORY[0x20F31CEE0]();
      if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
      v150 = v102;

      goto LABEL_51;
    }

    goto LABEL_40;
  }

  v61 = sub_20D5677F8();
  v62 = HULocalizedString(v61);

  sub_20D567838();
  v63 = swift_allocObject();
  v63[2] = 0xD000000000000013;
  v63[3] = 0x800000020D5D05F0;
  v63[4] = v8;
  v64 = v8;
  v65 = sub_20D5677F8();
  v66 = [objc_opt_self() systemImageNamed_];

  sub_20CECF940(0, &unk_28111FB00);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = swift_allocObject();
  v68[2] = v67;
  v68[3] = sub_20CF72E00;
  v68[4] = v63;
  v136 = 0;
  v137 = 0;
  v139 = sub_20CF72DF8;
  v141 = v68;
  v138 = 0;
  v69 = sub_20D568438();
LABEL_41:
  v78 = v69;
  MEMORY[0x20F31CEE0](v78, v79, v80, v81, v82);
  if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();

  v154 = v6;
  v151 = v78;
  if (v6)
  {
    goto LABEL_44;
  }

  if (a4)
  {
    v93 = sub_20D5677F8();
    v94 = HULocalizedString(v93);

    sub_20D567838();
    v95 = swift_allocObject();
    *(v95 + 16) = v8;
    strcpy((v95 + 24), "HUAddMenuRoom");
    *(v95 + 38) = -4864;
    v96 = v8;
    v97 = sub_20D5677F8();
    v98 = [objc_opt_self() systemImageNamed_];

    sub_20CECF940(0, &unk_28111FB00);
    v99 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = swift_allocObject();
    v100[2] = v99;
    v100[3] = sub_20CF7293C;
    v100[4] = v95;
    v147 = v100;
    v91 = sub_20D568438();
    v101 = sub_20D5677F8();
    [v91 setAccessibilityIdentifier_];

    [v91 setAttributes_];
    goto LABEL_47;
  }

  v150 = 0;
LABEL_51:
  v30 = v158;
  v103 = [v8 hf_canAddHomeMember];
  v104 = [v8 hf_canAddAccessCode];
  v105 = v104;
  v106 = v103 | v104;
  v107 = sub_20D567EC8();
  v108 = sub_20D568518();
  if (os_log_type_enabled(v108, v107))
  {
    v109 = swift_slowAlloc();
    v155 = v8;
    v110 = swift_slowAlloc();
    v157 = v110;
    *v109 = 136316162;
    v111 = sub_20D568E18();
    v113 = sub_20CEE913C(v111, v112, &v157);

    *(v109 + 4) = v113;
    *(v109 + 12) = 2080;
    *(v109 + 14) = sub_20CEE913C(0xD000000000000033, 0x800000020D5D05B0, &v157);
    *(v109 + 22) = 1024;
    *(v109 + 24) = v106 & 1;
    *(v109 + 28) = 1024;
    *(v109 + 30) = v103;
    *(v109 + 34) = 1024;
    *(v109 + 36) = v105 & 1;
    _os_log_impl(&dword_20CEB6000, v108, v107, "(%s:%s canAddPeople = %{BOOL}d. canAddHomeMember = %{BOOL}d canAddAccessCode = %{BOOL}d", v109, 0x28u);
    swift_arrayDestroy();
    v114 = v110;
    v8 = v155;
    MEMORY[0x20F31FC70](v114, -1, -1);
    MEMORY[0x20F31FC70](v109, -1, -1);
  }

  if ((v154 & v106) == 1)
  {
    v115 = sub_20D5677F8();
    v116 = HULocalizedString(v115);

    sub_20D567838();
    v117 = swift_allocObject();
    v117[2] = v8;
    v117[3] = 0x6E654D6464415548;
    v117[4] = 0xEF656C706F655075;
    v118 = v8;
    v119 = sub_20D5677F8();
    v120 = [objc_opt_self() systemImageNamed_];

    sub_20CECF940(0, &unk_28111FB00);
    v121 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v122 = swift_allocObject();
    v122[2] = v121;
    v122[3] = sub_20CF72DF4;
    v122[4] = v117;
    v148 = v122;
    v123 = sub_20D568438();
    v124 = sub_20D5677F8();
    [v123 setAccessibilityIdentifier_];
  }

  else
  {
    if ((a4 & 1) == 0)
    {

      return v30;
    }

    v125 = sub_20D5677F8();
    v126 = HULocalizedString(v125);

    sub_20D567838();
    v127 = swift_allocObject();
    v127[2] = v8;
    v127[3] = 0x6E654D6464415548;
    v127[4] = 0xEF656C706F655075;
    v128 = v8;
    v129 = sub_20D5677F8();
    v130 = [objc_opt_self() systemImageNamed_];

    sub_20CECF940(0, &unk_28111FB00);
    v131 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v132 = swift_allocObject();
    v132[2] = v131;
    v132[3] = sub_20CF728F4;
    v132[4] = v127;
    v149 = v132;
    v123 = sub_20D568438();
    v133 = sub_20D5677F8();
    [v123 setAccessibilityIdentifier_];

    [v123 setAttributes_];
  }

  v134 = v123;
  MEMORY[0x20F31CEE0]();
  if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();

  return v158;
}

uint64_t sub_20CF6F054(void *a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v113 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v3;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v3;
  }

  v6 = Strong;
  if ([Strong respondsToSelector_])
  {
    v7 = a1;
    v8 = [v6 navigationActionDelegateForNavigationBarButton_];
    v9 = [objc_opt_self() sharedDispatcher];
    v10 = [v9 homeManager];

    if (v10)
    {
      v11 = [v10 hf_orderedHomes];
      sub_20CECF940(0, &qword_28111FB80);
      v12 = sub_20D567A78();
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    if (v12 >> 62)
    {
      if (sub_20D568768())
      {
        goto LABEL_10;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if (([objc_opt_self() isInternalTest] & 1) == 0)
    {

      if (qword_27C81A320 != -1)
      {
        swift_once();
      }

      v20 = qword_27C8382B8;
      v21 = sub_20D567EC8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20CEB6000, v20, v21, "Attempting to display locations without any homes", v22, 2u);
        MEMORY[0x20F31FC70](v22, -1, -1);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }

LABEL_10:
    v13 = [v6 homeForNavigationBarButton_];
    v111 = [v6 roomForNavigationBarButton_];
    v14 = [v6 respondsToSelector_];
    v15 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
    if (v14)
    {
      v16 = [v6 statusItemsForNavigationBarButton:v7 inHome:v13];
      sub_20CECF940(0, &qword_27C821B00);
      v17 = sub_20D567A78();

      v18 = sub_20CF700F4(v17, v8);

      if (v18)
      {
        v19 = v18;
        MEMORY[0x20F31CEE0]();
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();

        v3 = v113;
      }

      else
      {
        v3 = MEMORY[0x277D84F90];
      }
    }

    if ([v13 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
    {
      goto LABEL_55;
    }

    if ([v6 respondsToSelector_])
    {
      v23 = [v6 editActionDelegateForNavigationBarButton_];
      v108 = v23;
      if (v10)
      {
LABEL_24:
        v24 = [v10 incomingHomeInvitations];
        sub_20CECF940(0, &qword_27C81D9B0);
        v25 = sub_20D567A78();

        if (v25 >> 62)
        {
          v26 = sub_20D568768();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v23 = v108;

LABEL_29:
        v109 = v8;
        v110 = v2;
        v107 = v10;
        if (v23)
        {
          v105 = [v23 supportsEditing];
          v27 = [v23 editActionTitleLocalizationKey];
          if (v27)
          {
            v28 = v27;
            v101 = sub_20D567838();
            v106 = v29;
          }

          else
          {
            v101 = 0;
            v106 = 0;
          }
        }

        else
        {
          v101 = 0;
          v106 = 0;
          v105 = 0;
        }

        v112 = v15;
        v30 = sub_20D5677F8();
        v31 = HULocalizedString(v30);

        sub_20D567838();
        v103 = objc_opt_self();
        v32 = [v103 hu:v26 gearSymbolImageWithBadgeCount:?];
        v33 = swift_allocObject();
        v33[2] = v26;
        v33[3] = v13;
        v33[4] = v2;
        v33[5] = 0xD00000000000001CLL;
        v33[6] = 0x800000020D5D07A0;
        sub_20CECF940(0, &unk_28111FB00);
        v34 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v35 = swift_allocObject();
        v35[2] = v34;
        v35[3] = sub_20CF72D58;
        v35[4] = v33;
        v102 = v13;
        v36 = sub_20D568438();
        v37 = sub_20D5677F8();
        [v36 setAccessibilityIdentifier_];

        v38 = v36;
        MEMORY[0x20F31CEE0]();
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();
        v104 = v38;
        if (v111)
        {
          v39 = sub_20D5677F8();
          v40 = HULocalizedString(v39);

          sub_20D567838();
          v41 = [v103 hu:0 gearSymbolImageWithBadgeCount:?];
          v42 = swift_allocObject();
          v42[2] = v111;
          v42[3] = v110;
          v42[4] = 0xD00000000000001CLL;
          v42[5] = 0x800000020D5D0810;
          v43 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v44 = swift_allocObject();
          v44[2] = v43;
          v44[3] = sub_20CF72D98;
          v44[4] = v42;
          v45 = v111;
          v46 = sub_20D568438();
          v47 = sub_20D5677F8();
          [v46 setAccessibilityIdentifier_];

          MEMORY[0x20F31CEE0]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20D567AB8();
          }

          sub_20D567B08();

          v38 = v104;
        }

        v48 = v112;
        if ([objc_opt_self() supportsEditView])
        {
          v10 = v107;
          if (v105)
          {
            if (v108 && v106)
            {
              swift_unknownObjectRetain();
              v49 = sub_20D5677F8();
              v50 = HULocalizedString(v49);

              sub_20D567838();
              v51 = swift_allocObject();
              *(v51 + 16) = v101;
              *(v51 + 24) = v106;
              sub_20D5663C8();
              v52 = sub_20D5677F8();
              v53 = [v103 systemImageNamed_];

              v54 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v55 = swift_allocObject();
              v55[2] = v54;
              v55[3] = sub_20CF72D74;
              v55[4] = v51;
              v100 = v55;
              v56 = sub_20D568438();
              v57 = sub_20D5677F8();
              v58 = HULocalizedString(v57);

              sub_20D567838();
              v98 = sub_20CEF44D8();
              v94 = MEMORY[0x277D837D0];
              v59 = sub_20D5685C8();
              v61 = v60;

              MEMORY[0x20F31CDB0](v59, v61);

              v62 = sub_20D5677F8();

              [v56 setAccessibilityIdentifier_];

              MEMORY[0x20F31CEE0]();
              if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20D567AB8();
              }

              sub_20D567B08();

              swift_unknownObjectRelease();
              v48 = v112;
              v8 = v109;
              v10 = v107;
              v38 = v104;
            }

            goto LABEL_48;
          }
        }

        else
        {
          v10 = v107;
          if (v105)
          {
LABEL_48:
            if (!v111)
            {
              v63 = sub_20D5677F8();
              v64 = HULocalizedString(v63);

              sub_20D567838();
              v65 = swift_allocObject();
              v65[2] = 0;
              v65[3] = v102;
              v65[4] = 0xD000000000000029;
              v65[5] = 0x800000020D5D07E0;
              v66 = v102;
              v67 = sub_20D5677F8();
              v68 = [v103 systemImageNamed_];

              v69 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v70 = swift_allocObject();
              v70[2] = v69;
              v70[3] = sub_20CF72D68;
              v70[4] = v65;
              v95 = 0;
              v97 = sub_20CF72DF8;
              v99 = v70;
              v96 = 0;
              v71 = sub_20D568438();
              MEMORY[0x20F31CEE0](v71, v72, v73, v74, v75);
              if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20D567AB8();
              }

              sub_20D567B08();

              v48 = v112;
              v10 = v107;
              v38 = v104;
            }
          }
        }

        sub_20CECF940(0, &qword_28111FB78);
        v93 = v48;
        v76 = sub_20D568308();

        v77 = v76;
        MEMORY[0x20F31CEE0](v77, v78, v79, v80, v81);
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();

        swift_unknownObjectRelease();
        v3 = v113;
LABEL_55:
        if (v12 >> 62)
        {
          v82 = sub_20D568768();
        }

        else
        {
          v82 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v83 = &off_277DC8000;
        if (v82 < 2)
        {
        }

        else
        {
          v84 = [v10 currentHome];
          v85 = sub_20CF70570(v12, v13, v84, v8);

          v86 = v85;
          MEMORY[0x20F31CEE0](v86, v87, v88, v89, v90);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20D567AB8();
            v83 = &off_277DC8000;
          }

          sub_20D567B08();

          v3 = v113;
        }

        if ([v6 v83[475]] & 1) != 0 && !objc_msgSend(v6, sel_shouldIncludeRoomsInHomeMenu) || (objc_msgSend(v13, sel_hf_isEmpty))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v91 = sub_20CF70F38(v13, v111, v8);
          MEMORY[0x20F31CEE0]();
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20D567AB8();
          }

          sub_20D567B08();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return v113;
        }

        return v3;
      }
    }

    else
    {
      v23 = 0;
      v108 = 0;
      if (v10)
      {
        goto LABEL_24;
      }
    }

    v26 = 0;
    goto LABEL_29;
  }

  result = sub_20D568A58();
  __break(1u);
  return result;
}

uint64_t sub_20CF700F4(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v36 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v29 = a2;
    v30 = sub_20D568768();
    a2 = v29;
    v4 = v30;
    if (v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v33 = MEMORY[0x277D84F90];
      v34 = v2;
      while (1)
      {
        v7 = v5;
        while (1)
        {
          if (v6)
          {
            v8 = MEMORY[0x20F31DD20](v7, v2);
          }

          else
          {
            if (v7 >= *(v3 + 16))
            {
              goto LABEL_25;
            }

            v8 = *(v2 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v10 = [v8 latestResults];
          if (!v10)
          {
            goto LABEL_6;
          }

          v11 = v10;
          v12 = sub_20D567758();

          v13 = sub_20D567838();
          if (*(v12 + 16))
          {
            break;
          }

LABEL_6:

LABEL_7:
          ++v7;
          if (v5 == v4)
          {
            goto LABEL_28;
          }
        }

        v15 = v4;
        v16 = sub_20CEED668(v13, v14);
        v18 = v17;

        if ((v18 & 1) == 0)
        {

          v4 = v15;
          v2 = v34;
          goto LABEL_7;
        }

        sub_20CED43FC(*(v12 + 56) + 32 * v16, v35);

        if ((swift_dynamicCast() & 1) == 0)
        {

          v4 = v15;
          v2 = v34;
          goto LABEL_7;
        }

        ObjectType = swift_getObjectType();
        sub_20CF72084(v9);
        v20 = swift_allocObject();
        *(v20 + 16) = ObjectType;
        *(v20 + 24) = v32;
        sub_20CECF940(0, &unk_28111FB00);
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = sub_20CF72D1C;
        v22[4] = v20;

        sub_20D568438();

        MEMORY[0x20F31CEE0](v23, v24, v25, v26, v27);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();
        v33 = v36;
        v4 = v15;
        v28 = v5 == v15;
        v2 = v34;
        if (v28)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_28:
  if (v33 >> 62)
  {
    if (sub_20D568768())
    {
      sub_20CECF940(0, &unk_28111FFC0);
      sub_20D5663C8();
      sub_20D568A78();

      goto LABEL_31;
    }
  }

  else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_20D5663C8();
    sub_20D568C08();
    sub_20CECF940(0, &unk_28111FFC0);
LABEL_31:

    sub_20CECF940(0, &qword_28111FB78);
    return sub_20D568308();
  }

  return 0;
}

uint64_t sub_20CF70570(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v74 = a4;
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D948);
  MEMORY[0x28223BE20](v72);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v71 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v59 - v14;
  v84 = sub_20D563818();
  v15 = *(v84 - 8);
  v16 = MEMORY[0x28223BE20](v84);
  v70 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v59 - v18;
  v85 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_32:
    v19 = sub_20D568768();
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_3:
      v20 = a3;
      a3 = 0;
      v68 = a1 & 0xFFFFFFFFFFFFFF8;
      v69 = a1 & 0xC000000000000001;
      v78 = (v15 + 1);
      v82 = (v15 + 7);
      v60 = (v15 + 4);
      v61 = "B40";
      v62 = v11;
      v21 = &selRef_textField;
      v11 = v20;
      v66 = a1;
      v67 = v20;
      v65 = v7;
      v64 = v19;
      v63 = (v15 + 6);
      while (1)
      {
        if (v69)
        {
          v22 = MEMORY[0x20F31DD20](a3, a1);
        }

        else
        {
          if (a3 >= *(v68 + 16))
          {
            goto LABEL_31;
          }

          v22 = *(a1 + 8 * a3 + 32);
        }

        v83 = v22;
        a1 = v76;
        if (__OFADD__(a3, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v80 = a3 + 1;
        v81 = a3;
        v23 = v21[275];
        v24 = v21;
        v25 = v83;
        v26 = [v83 v23];
        v27 = v84;
        v28 = v77;
        sub_20D5637E8();

        v29 = [v73 v24 + 2040];
        v30 = v70;
        sub_20D5637E8();

        v79 = sub_20D5637D8();
        v31 = *v78;
        (*v78)(v30, v27);
        v31(v28, v27);
        v32 = [v25 v24 + 2040];
        sub_20D5637E8();

        v33 = *v82;
        v34 = 1;
        (*v82)(a1, 0, 1, v27);
        if (v11)
        {
          v35 = [v11 v24 + 2040];
          v36 = v71;
          sub_20D5637E8();

          v34 = 0;
        }

        else
        {
          v36 = v71;
        }

        v37 = v84;
        v33(v36, v34, 1, v84);
        v38 = *(v72 + 48);
        sub_20CF073C8(a1, v7);
        sub_20CF073C8(v36, &v7[v38]);
        v39 = *v63;
        if ((*v63)(v7, 1, v37) != 1)
        {
          break;
        }

        sub_20CEF928C(v36, &qword_27C81C180);
        sub_20CEF928C(a1, &qword_27C81C180);
        v40 = v39(&v7[v38], 1, v84);
        v41 = v81;
        v21 = &selRef_textField;
        if (v40 != 1)
        {
          goto LABEL_16;
        }

        sub_20CEF928C(v7, &qword_27C81C180);
        v42 = 1;
LABEL_18:
        v45 = v83;
        v46 = [v83 name];
        sub_20D567838();

        v47 = swift_allocObject();
        *(v47 + 16) = v75;
        *(v47 + 24) = v45;
        sub_20CECF940(0, &unk_28111FB00);
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = sub_20CF72CE0;
        v49[4] = v47;
        v50 = v45;
        v51 = sub_20D568438();
        v52 = 0;
        a1 = v66;
        if (v42)
        {
          v53 = [objc_opt_self() configurationWithScale_];
          v54 = sub_20D5677F8();
          v52 = [objc_opt_self() systemImageNamed:v54 withConfiguration:v53];

          v55 = v51;
          v56 = sub_20D5677F8();
          v57 = HULocalizedString(v56);

          if (!v57)
          {
            sub_20D567838();
            v57 = sub_20D5677F8();
          }

          [v55 setSubtitle_];
        }

        [v51 setState_];

        v15 = &v85;
        MEMORY[0x20F31CEE0]();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();
        a3 = v41 + 1;
        v11 = v67;
        v7 = v65;
        if (v80 == v64)
        {
          if (v85 >> 62)
          {
            goto LABEL_34;
          }

LABEL_28:
          sub_20D5663C8();
          sub_20D568C08();
          sub_20CECF940(0, &unk_28111FFC0);
          goto LABEL_29;
        }
      }

      v43 = v62;
      sub_20CF073C8(v7, v62);
      if (v39(&v7[v38], 1, v84) != 1)
      {
        v44 = v77;
        (*v60)(v77, &v7[v38], v27);
        sub_20CF72C88();
        v42 = sub_20D5677E8();
        v31(v44, v27);
        sub_20CEF928C(v36, &qword_27C81C180);
        sub_20CEF928C(a1, &qword_27C81C180);
        v31(v43, v27);
        sub_20CEF928C(v7, &qword_27C81C180);
        v41 = v81;
        v21 = &selRef_textField;
        goto LABEL_18;
      }

      sub_20CEF928C(v36, &qword_27C81C180);
      sub_20CEF928C(a1, &qword_27C81C180);
      v31(v43, v84);
      v41 = v81;
      v21 = &selRef_textField;
LABEL_16:
      sub_20CEF928C(v7, &qword_27C81D948);
      v42 = 0;
      goto LABEL_18;
    }
  }

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_28;
  }

LABEL_34:
  sub_20CECF940(0, &unk_28111FFC0);
  sub_20D5663C8();
  sub_20D568A78();

LABEL_29:

  sub_20CECF940(0, &qword_28111FB78);
  return sub_20D568308();
}

uint64_t sub_20CF70F38(void *a1, void *a2, uint64_t a3)
{
  v67 = a3;
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D948);
  MEMORY[0x28223BE20](v66);
  v71 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  v18 = [a1 hf_orderedRooms];
  sub_20CECF940(0, &unk_27C81EFA0);
  v19 = sub_20D567A78();

  v78 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    v21 = 0;
    v64 = v19 & 0xFFFFFFFFFFFFFF8;
    v65 = v19 & 0xC000000000000001;
    v70 = (v6 + 56);
    v56 = (v6 + 48);
    v52 = (v6 + 32);
    v55 = (v6 + 8);
    v22 = &selRef_textField;
    v62 = v5;
    v63 = a2;
    v60 = v15;
    v61 = v12;
    v58 = v19;
    v59 = v17;
    v57 = i;
    while (1)
    {
      if (v65)
      {
        v23 = MEMORY[0x20F31DD20](v21, v19);
      }

      else
      {
        if (v21 >= *(v64 + 16))
        {
          goto LABEL_23;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v19 = v23;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v69 = v21 + 1;
      v24 = [v23 v22[275]];
      sub_20D5637E8();

      v25 = *v70;
      v26 = 1;
      (*v70)(v17, 0, 1, v5);
      if (a2)
      {
        v27 = [a2 v22[275]];
        sub_20D5637E8();

        v26 = 0;
      }

      v25(v15, v26, 1, v5);
      v28 = *(v66 + 48);
      v29 = v71;
      sub_20CF073C8(v17, v71);
      sub_20CF073C8(v15, v29 + v28);
      v30 = *v56;
      if ((*v56)(v29, 1, v5) != 1)
      {
        v32 = v71;
        sub_20CF073C8(v71, v12);
        if (v30(v32 + v28, 1, v5) != 1)
        {
          v33 = v71;
          v34 = v53;
          (*v52)(v53, v71 + v28, v5);
          sub_20CF72C88();
          v54 = sub_20D5677E8();
          v35 = *v55;
          (*v55)(v34, v5);
          sub_20CEF928C(v15, &qword_27C81C180);
          sub_20CEF928C(v17, &qword_27C81C180);
          v35(v12, v5);
          sub_20CEF928C(v33, &qword_27C81C180);
          v31 = v54 & 1;
          goto LABEL_17;
        }

        sub_20CEF928C(v15, &qword_27C81C180);
        sub_20CEF928C(v17, &qword_27C81C180);
        (*v55)(v12, v5);
LABEL_15:
        sub_20CEF928C(v71, &qword_27C81D948);
        v31 = 0;
        goto LABEL_17;
      }

      sub_20CEF928C(v15, &qword_27C81C180);
      sub_20CEF928C(v17, &qword_27C81C180);
      if (v30(v71 + v28, 1, v5) != 1)
      {
        goto LABEL_15;
      }

      sub_20CEF928C(v71, &qword_27C81C180);
      v31 = 1;
LABEL_17:
      v36 = [v19 name];
      sub_20D567838();

      v37 = swift_allocObject();
      *(v37 + 16) = v68;
      *(v37 + 24) = v19;
      sub_20CECF940(0, &unk_28111FB00);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = sub_20CF72C58;
      v39[4] = v37;
      v6 = v19;
      v40 = sub_20D568438();
      [v40 setState_];
      v41 = v40;
      v42 = [v6 name];
      v43 = sub_20D567838();
      v45 = v44;

      v76 = v43;
      v77 = v45;
      v74 = 32;
      v75 = 0xE100000000000000;
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_20CEF44D8();
      v46 = sub_20D5685C8();
      v48 = v47;

      v76 = 0x2E656D6F48;
      v77 = 0xE500000000000000;
      MEMORY[0x20F31CDB0](v46, v48);

      v49 = sub_20D5677F8();

      [v41 setAccessibilityIdentifier_];

      MEMORY[0x20F31CEE0]();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20D567AB8();
      }

      sub_20D567B08();
      ++v21;
      v5 = v62;
      a2 = v63;
      v15 = v60;
      v12 = v61;
      v19 = v58;
      v17 = v59;
      v22 = &selRef_textField;
      if (v69 == v57)
      {
        v50 = v78;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_26:

  if (v50 >> 62)
  {
    sub_20CECF940(0, &unk_28111FFC0);
    sub_20D5663C8();
    sub_20D568A78();
  }

  else
  {
    sub_20D5663C8();
    sub_20D568C08();
    sub_20CECF940(0, &unk_28111FFC0);
  }

  sub_20CECF940(0, &qword_28111FB78);
  return sub_20D568308();
}

void sub_20CF71868(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 addAccessoryToHome:a2 room:a3];
  if ([a1 respondsToSelector_])
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 addAccessoryLocalizationStringKey];
    sub_20D567838();

    v6 = sub_20D5677F8();
    [a1 sendContextMenuMetricsWithTitleLocalizationKey_];

    swift_unknownObjectRelease();
  }
}

id sub_20CF71970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v6 = sub_20D5677F8();
    [a1 sendContextMenuMetricsWithTitleLocalizationKey_];
    swift_unknownObjectRelease();
  }

  return [a1 addAutomationToHome_];
}

void sub_20CF71A18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  [a1 *a5];
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v6 = sub_20D5677F8();
    [a1 sendContextMenuMetricsWithTitleLocalizationKey_];
    swift_unknownObjectRelease();
  }
}

void sub_20CF71AD0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  [a1 *a4];
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v5 = sub_20D5677F8();
    [a1 sendContextMenuMetricsWithTitleLocalizationKey_];
    swift_unknownObjectRelease();
  }
}

void sub_20CF71B84(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = sub_20CFED69C(a2, a3);
  }

  else
  {
    v4 = sub_20CFED888(a3);
  }

  v5 = v4;
  v6 = type metadata accessor for DashboardSectionListViewController();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___HUDashboardSectionListViewController____lazy_storage___layoutManager] = 0;
  *&v7[OBJC_IVAR___HUDashboardSectionListViewController__sortedIdentifiers] = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR___HUDashboardSectionListViewController_dashboardContext] = v5;
  v8 = *&v5[OBJC_IVAR___HUDashboardContext_room];
  objc_allocWithZone(type metadata accessor for DashboardSectionListItemManager());
  v9 = v8;
  v10 = v5;
  v11 = DashboardSectionListItemManager.init(delegate:room:)(0, v8);
  v17.receiver = v7;
  v17.super_class = v6;
  v12 = objc_msgSendSuper2(&v17, sel_initUsingCompositionalLayoutWithItemManager_, v11);

  v13 = &v11[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate];
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for DashboardSectionListViewController;
  swift_unknownObjectWeakAssign();

  [a1 showDashboardSectionListViewController_];
  v14 = swift_dynamicCastObjCProtocolConditional();
  if (v14 || (v14 = swift_dynamicCastObjCProtocolConditional()) != 0) && (v15 = v14, ([v14 respondsToSelector_]))
  {
    swift_unknownObjectRetain_n();
    v16 = sub_20D5677F8();
    [v15 sendContextMenuMetricsWithTitleLocalizationKey_];

    swift_unknownObjectRelease_n();
    v10 = v16;
  }

  else
  {
  }
}

void sub_20CF71D98(id a1, uint64_t a2)
{
  if (a2 < 1)
  {
    [a1 showHomeSettings_];
  }

  else
  {
    [a1 showAllHomesSettings];
  }

  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2 || (v5 = &unk_282557098, (v2 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      swift_unknownObjectRetain_n();
      v4 = sub_20D5677F8();
      [v3 sendContextMenuMetricsWithTitleLocalizationKey_];
      swift_unknownObjectRelease_n();
    }
  }
}

void sub_20CF71E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9 || (v12 = &unk_282557098, (v9 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      swift_unknownObjectRetain_n();
      v11 = sub_20D5677F8();
      [v10 sendContextMenuMetricsWithTitleLocalizationKey_];
      swift_unknownObjectRelease_n();
    }
  }
}

void sub_20CF71F9C(void *a1, uint64_t a2)
{
  [a1 showRoomSettings_];
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2 || (v5 = &unk_282557098, (v2 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      swift_unknownObjectRetain_n();
      v4 = sub_20D5677F8();
      [v3 sendContextMenuMetricsWithTitleLocalizationKey_];
      swift_unknownObjectRelease_n();
    }
  }
}

id sub_20CF72084(void *a1)
{
  v1 = [a1 latestResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20D567758();

  v4 = sub_20D567838();
  if (!*(v3 + 16))
  {

    goto LABEL_10;
  }

  v6 = sub_20CEED668(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_20CED43FC(*(v3 + 56) + 32 * v6, v20);

  sub_20CECF940(0, &unk_27C81F7A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if ([v19 isSystemImage])
  {
    v9 = [v19 imageIdentifier];
    v10 = sub_20D567838();
    v12 = v11;

    v20[0] = v10;
    v20[1] = v12;
    sub_20D5663C8();
    LOBYTE(v9) = sub_20D567958();

    if (v9)
    {
      v13 = sub_20D5678D8();
      sub_20CF722F0(v13);
    }

    v14 = sub_20D5677F8();

    v15 = [objc_opt_self() systemImageNamed_];

    return v15;
  }

  else
  {
    v17 = [v19 imageIdentifier];
    if (!v17)
    {
      sub_20D567838();
      v17 = sub_20D5677F8();
    }

    v18 = [objc_opt_self() imageNamed_];

    return v18;
  }
}

uint64_t sub_20CF722F0(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      v4 = sub_20D5678E8();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x2821FBD18]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBD18]();
  }

  return result;
}

void sub_20CF723A0(void *a1)
{
  [a1 showStatusDetailsForStatusItemClass_];
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1 || (v4 = &unk_282557098, (v1 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      swift_unknownObjectRetain_n();
      v3 = sub_20D5677F8();
      [v2 sendContextMenuMetricsWithTitleLocalizationKey_];
      swift_unknownObjectRelease_n();
    }
  }
}

uint64_t sub_20CF7249C(void *a1, uint64_t a2, void (*a3)(void))
{
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v5 = qword_27C8382B8;
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = a1;
    *v8 = a1;
    v9 = a1;
    _os_log_impl(&dword_20CEB6000, v5, v6, "User tapped context menu item: %@", v7, 0xCu);
    sub_20CEF928C(v8, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    a3();
    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_20D567EA8();
    if (qword_28111FAD0 != -1)
    {
      swift_once();
    }

    v12 = qword_281120C08;
    result = os_log_type_enabled(qword_281120C08, v11);
    if (result)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = a1;
      *v14 = a1;
      v15 = a1;
      _os_log_impl(&dword_20CEB6000, v12, v11, "No delegate for context menu item: %@", v13, 0xCu);
      sub_20CEF928C(v14, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v14, -1, -1);
      return MEMORY[0x20F31FC70](v13, -1, -1);
    }
  }

  return result;
}

id NavigationMenuFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NavigationMenuFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationMenuFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NavigationMenuFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationMenuFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20CF727E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20CF72BA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static NavigationMenuFactory.systemImage(for:)(uint64_t a1)
{
  sub_20CF72A44(a1);
  v1 = sub_20D5677F8();

  v2 = [objc_opt_self() systemImageNamed_];

  return v2;
}

uint64_t objectdestroy_40Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_20CF72A44(uint64_t a1)
{
  result = 0x6C7562746867696CLL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 12:
      result = 0x636F6C636B736564;
      break;
    case 2:
      result = 0x6174732E6E6F6F6DLL;
      break;
    case 3:
    case 10:
      result = 0x6573756F68;
      break;
    case 4:
      result = 0x322E6E6F73726570;
      break;
    case 5:
      v3 = 13;
      goto LABEL_8;
    case 6:
    case 7:
      result = 1918985575;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      v3 = 5;
LABEL_8:
      result = v3 | 0xD000000000000012;
      break;
    case 11:
      result = 1918989427;
      break;
    default:
      result = sub_20D568C38();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_20CF72BA0(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20CF72BB4()
{
  result = qword_27C81D940;
  if (!qword_27C81D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D940);
  }

  return result;
}

unint64_t sub_20CF72C88()
{
  result = qword_27C820680[0];
  if (!qword_27C820680[0])
  {
    sub_20D563818();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C820680);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CF72E14@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v15 = *a1;
  v16[0] = v3;
  *(v16 + 10) = *(a1 + 26);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    v6 = [v5 formattedTemperature];
    if (!v6)
    {
      v7 = sub_20D5677F8();
      v6 = HFLocalizedString();
    }

    v8 = sub_20D567838();
    v10 = v9;

    if (*(&v15 + 1) >= 5uLL)
    {
      result = sub_20D568C38();
      __break(1u);
    }

    else
    {
      v11 = [objc_opt_self() systemFontOfSize:dbl_20D5BFD00[*(&v15 + 1)] weight:**(&unk_277DB63E8 + *(&v15 + 1))];
      if (*(&v15 + 1) == 2)
      {
        v12 = 4;
      }

      else
      {
        v12 = 1;
      }

      v13 = sub_20CF73038(&v15, v5);
      result = swift_unknownObjectRelease();
      *a2 = v8;
      *(a2 + 8) = v10;
      *(a2 + 16) = v12;
      *(a2 + 24) = v11;
      *(a2 + 32) = v13;
      *(a2 + 40) = 1;
    }
  }

  else
  {
    sub_20CF72FE4();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_20CF72FE4()
{
  result = qword_27C81D9B8;
  if (!qword_27C81D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D9B8);
  }

  return result;
}

id sub_20CF73038(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = objc_opt_self();
  v5 = &selRef_systemGrayColor;
  if (v3 != 3)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  if (![a2 targetHeatingCoolingMode])
  {
    return v6;
  }

  v7 = [a2 heatingCoolingMode];
  if (v7 > 3)
  {
    return v6;
  }

  v8 = qword_20D5BFD28[v7];
  v9 = [objc_opt_self() *off_277DB6410[v7]];
  v10 = [v9 hu:v8 colorForPrimaryState:?];

  return v10;
}

void sub_20CF7312C(uint64_t a1@<X8>)
{
  v5 = v1;
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 24);
  v83 = v9;
  v84 = *(v5 + 16);
  v10 = *(v5 + 32);
  v82.i8[0] = *(v5 + 33);
  if ((*(v5 + 34) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v9)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v8 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_165;
  }

  if (!v84)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v7 == 0x8000000000000000 && v84 == -1)
  {
    goto LABEL_166;
  }

  v12 = v7 / v84 * (v8 / v9);
  if ((v7 / v84 * (v8 / v9)) >> 64 != v12 >> 63)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v2 = *(v5 + 40);
  if (*(v2 + 16) >= v12)
  {
    v4 = v7 / v84 * (v8 / v9);
  }

  else
  {
    v4 = *(v2 + 16);
  }

  if (v12 < 0)
  {
    __break(1u);
LABEL_16:
    v2 = *(v5 + 40);
    v4 = *(v2 + 16);
  }

  v3 = (2 * v4) | 1;
  v81 = v2 + 32;
  if (!v10)
  {
    sub_20CEF9178(v5, v90, &qword_27C81D9C0);
    v7 = MEMORY[0x277D84F90];
    *a1 = sub_20CEF2F30(MEMORY[0x277D84F90]);
    *(a1 + 64) = v7;
    if (v8 < 0)
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v16 = MEMORY[0x277D84F90];
    if (v8)
    {
      v17 = sub_20D567AE8();
      *(v17 + 16) = v8;
      bzero((v17 + 32), 8 * v8);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    *(a1 + 8) = v8;
    *(a1 + 16) = v17;
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    *(a1 + 40) = v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    sub_20CEF9178(v5, v90, &qword_27C81D9C0);
    sub_20D568C18();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      sub_20CEF928C(v5, &qword_27C81D9C0);
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (v22 == v4)
    {
      v23 = swift_dynamicCastClass();
      sub_20CEF928C(v5, &qword_27C81D9C0);
      if (v23)
      {
LABEL_42:
        sub_20CEFB16C(v23, 0, 0, 1);
        sub_20CEF928C(v5, &qword_27C81D9C0);

        return;
      }

      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_20CEF928C(v5, &qword_27C81D9C0);
      sub_20CF81B0C(v2, v81, 0, (2 * v4) | 1);
      v23 = v78;
    }

    sub_20CEF928C(v5, &qword_27C81D9C0);
    goto LABEL_42;
  }

  v80 = a1;
  if (v10 == 1)
  {
    sub_20CEF9178(v5, v90, &qword_27C81D9C0);
    v13 = MEMORY[0x277D84F90];
    *&v85 = sub_20CEF2F30(MEMORY[0x277D84F90]);
    v89 = v13;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v14 = MEMORY[0x277D84F90];
      if (v8)
      {
        v15 = sub_20D567AE8();
        *(v15 + 16) = v8;
        bzero((v15 + 32), 8 * v8);
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
      }

      *(&v85 + 1) = v8;
      *&v86 = v15;
      *(&v86 + 1) = 2;
      LOBYTE(v87) = 0;
      *(&v87 + 1) = v14;
      *&v88 = 2;
      BYTE8(v88) = 0;
      sub_20CEF9178(v5, v90, &qword_27C81D9C0);
      sub_20D568C18();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        sub_20CEF928C(v5, &qword_27C81D9C0);
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (v20 == v4)
      {
        v3 = swift_dynamicCastClass();
        sub_20CEF928C(v5, &qword_27C81D9C0);
        if (v3)
        {
          if ((v82.i8[0] & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_88;
        }

        v3 = MEMORY[0x277D84F90];
LABEL_87:
        sub_20CEF928C(v5, &qword_27C81D9C0);
        if ((v82.i8[0] & 1) == 0)
        {
LABEL_126:
          sub_20CEFB16C(v3, v84, v83, 0);
          sub_20CEF928C(v5, &qword_27C81D9C0);

          *(v80 + 32) = v87;
          *(v80 + 48) = v88;
          *(v80 + 64) = v89;
          *v80 = v85;
          *(v80 + 16) = v86;
          return;
        }

LABEL_88:
        sub_20CEF9178(v5, v90, &qword_27C81D9C0);
        v37 = 0;
        v38 = v2;
        v39 = v2 + 40;
        v40 = MEMORY[0x277D84F90];
        v41 = vdupq_n_s64(2uLL);
LABEL_89:
        if (v37 <= v4)
        {
          v42 = v4;
        }

        else
        {
          v42 = v37;
        }

        v43 = v42 + 1;
        v44 = (v39 + 24 * v37);
        while (v4 != v37)
        {
          if (v43 == ++v37)
          {
            __break(1u);
            goto LABEL_144;
          }

          v45 = v44 + 3;
          v46 = *v44 == 2 && v44[1] == 2;
          v44 += 3;
          if (v46)
          {
            v82 = v41;
            v81 = v39;
            v47 = *(v45 - 4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90[0] = v40;
            v2 = v7;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_20CEF0A68(0, *(v40 + 16) + 1, 1);
              v40 = v90[0];
            }

            v41 = v82;
            v50 = *(v40 + 16);
            v49 = *(v40 + 24);
            v51 = v50 + 1;
            if (v50 >= v49 >> 1)
            {
              sub_20CEF0A68((v49 > 1), v50 + 1, 1);
              v41 = v82;
              v51 = v50 + 1;
              v40 = v90[0];
            }

            *(v40 + 16) = v51;
            v52 = v40 + 24 * v50;
            *(v52 + 32) = v47;
            *(v52 + 40) = v41;
            v7 = v2;
            v39 = v81;
            goto LABEL_89;
          }
        }

        sub_20CEF928C(v5, &qword_27C81D9C0);
        v53 = *(v40 + 16);

        if (!v83)
        {
          goto LABEL_168;
        }

        if (v84)
        {
          if (v7 == 0x8000000000000000 && v84 == -1)
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          v54 = v7 / v84 * (v8 / v83);
          if ((v7 / v84 * (v8 / v83)) >> 64 != v54 >> 63)
          {
            goto LABEL_170;
          }

          v55 = __OFSUB__(v54, v4);
          v56 = v54 - v4;
          if (!v55)
          {
            v55 = __OFSUB__(v56, v53);
            v57 = v56 - v53;
            if (v55)
            {
              goto LABEL_172;
            }

            if (v57 >= 1)
            {
              v58 = vdupq_n_s64(2uLL);
              v2 = v4;
LABEL_114:
              v7 = 24 * v2;
              while ((--v2 & 0x8000000000000000) == 0)
              {
                if (v2 >= v4)
                {
                  goto LABEL_146;
                }

                v60 = *(v38 + v7 + 16);
                v59 = *(v38 + v7 + 24);
                v7 -= 24;
                if (v60 != 2 || v59 != 2)
                {
                  v82 = v58;
                  v62 = *(v38 + v7 + 32);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v3 = sub_20CF3B810(v3);
                  }

                  if (v2 >= *(v3 + 16))
                  {
                    goto LABEL_174;
                  }

                  v63 = v3 + v7;
                  v64 = *(v63 + 32);
                  *(v63 + 32) = v62;

                  v58 = v82;
                  *(v63 + 40) = v82;
                  if (v57-- < 2)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_114;
                }
              }
            }

            goto LABEL_126;
          }

          goto LABEL_171;
        }

LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

LABEL_159:
      sub_20CEF928C(v5, &qword_27C81D9C0);
      sub_20CF81B0C(v2, v81, 0, v3);
      v3 = v77;
      goto LABEL_87;
    }

    goto LABEL_156;
  }

  sub_20CEF9178(v5, v90, &qword_27C81D9C0);
  v3 = MEMORY[0x277D84F90];
  *&v92 = sub_20CEF2F30(MEMORY[0x277D84F90]);
  v96 = v3;
  if (v8 < 0)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v18 = MEMORY[0x277D84F90];
  if (v8)
  {
    v3 = sub_20D567AE8();
    *(v3 + 16) = v8;
    bzero((v3 + 32), 8 * v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(&v92 + 1) = v8;
  *&v93 = v3;
  *(&v93 + 1) = 2;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v18;
  *&v95 = 2;
  BYTE8(v95) = 0;
  if (!v83)
  {
    __break(1u);
    goto LABEL_162;
  }

  if (!v84)
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v7 == 0x8000000000000000 && v84 == -1)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v24 = v7 / v84 * (v8 / v83);
  if ((v7 / v84 * (v8 / v83)) >> 64 != v24 >> 63)
  {
    goto LABEL_163;
  }

  v25 = v24 - v4;
  if (__OFSUB__(v24, v4))
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v79 = v2;
  if (v25 >= 1)
  {
    sub_20CEF9178(v5, v90, &qword_27C81D9C0);
    v7 = 0;
    v2 = 24;
    while (v7 != v4)
    {
      if (v7 >= v4)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v26 = v4 - v7;
      if (__OFSUB__(v4, v7))
      {
        goto LABEL_145;
      }

      v27 = v81 + 24 * v7;
      v29 = *(v27 + 8);
      v28 = *(v27 + 16);
      v30 = *v27;
      if (v82.i8[0])
      {
        v31 = 2;
      }

      else
      {
        v31 = v29;
      }

      if (v82.i8[0])
      {
        v32 = 2;
      }

      else
      {
        v32 = v28;
      }

      if (v25 >= v26)
      {
        v8 = v31;
      }

      else
      {
        v8 = v29;
      }

      if (v25 >= v26)
      {
        v33 = v32;
      }

      else
      {
        v33 = v28;
      }

      v34 = v30;
      sub_20CF74340(v34, v8, v33, &v92, v84, v83, 1, 1, v90);

      if (v91)
      {
        v3 = v4;
        if (v26)
        {
          v3 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_152;
          }
        }

        if (v4 < v3)
        {
          goto LABEL_149;
        }

        if (v3 < v7)
        {
          goto LABEL_151;
        }
      }

      else
      {
        if (v26)
        {
          v3 = v7 + 1;
        }

        else
        {
          v3 = v4;
        }

        if (v4 < v3)
        {
          goto LABEL_148;
        }

        v36 = v90[2] != 1 || v90[3] != 2;
        if (v3 < v7)
        {
          goto LABEL_150;
        }

        v25 -= v36;
      }

      v7 = v3;
      if (v25 <= 0)
      {
        goto LABEL_128;
      }
    }

    goto LABEL_129;
  }

  sub_20CEF9178(v5, v90, &qword_27C81D9C0);
  v3 = 0;
LABEL_128:
  if (v3 == v4)
  {
LABEL_129:
    sub_20CEF928C(v5, &qword_27C81D9C0);
    swift_unknownObjectRelease();
LABEL_142:
    v75 = v93;
    v76 = v95;
    *(v80 + 32) = v94;
    *(v80 + 48) = v76;
    *(v80 + 64) = v96;
    *v80 = v92;
    *(v80 + 16) = v75;
    return;
  }

  v66 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v8 = MEMORY[0x277D84F90];
  if (!v66)
  {
LABEL_141:
    sub_20CEFB16C(v8, 0, 0, 1);
    sub_20CEF928C(v5, &qword_27C81D9C0);
    swift_unknownObjectRelease();

    goto LABEL_142;
  }

  v90[0] = MEMORY[0x277D84F90];
  sub_20CEF0A68(0, v66 & ~(v66 >> 63), 0);
  if ((v66 & 0x8000000000000000) == 0)
  {
    v8 = v90[0];
    if (v4 <= v3)
    {
      v67 = v3;
    }

    else
    {
      v67 = v4;
    }

    v2 = v67 - v3;
    v7 = 24;
    v68 = (v79 + 24 * v3 + 32);
    v4 = v83;
    while (v2)
    {
      v69 = *v68;
      v90[0] = v8;
      v71 = *(v8 + 16);
      v70 = *(v8 + 24);
      v3 = v71 + 1;
      v72 = v69;
      if (v71 >= v70 >> 1)
      {
        v74 = v72;
        sub_20CEF0A68((v70 > 1), v71 + 1, 1);
        v72 = v74;
        v8 = v90[0];
      }

      *(v8 + 16) = v3;
      v73 = (v8 + 24 * v71);
      v73[4] = v72;
      v73[5] = v84;
      v73[6] = v83;
      --v2;
      v68 += 3;
      if (!--v66)
      {
        goto LABEL_141;
      }
    }

LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

LABEL_176:
  __break(1u);
}

uint64_t sub_20CF73BAC@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(*(v3 + 40) + 16) <= a1)
  {
    v13 = *(v3 + 48);
    *(a3 + 32) = *(v3 + 32);
    *(a3 + 48) = v13;
    *(a3 + 64) = *(v3 + 64);
    v14 = *(v3 + 16);
    *a3 = *v3;
    *(a3 + 16) = v14;
    return sub_20CEF9178(v3, &v96, &qword_27C81C370);
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = MEMORY[0x277D84F90];
  *&v91 = sub_20CEF2F30(MEMORY[0x277D84F90]);
  v95 = v9;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v6 < 0)
  {
LABEL_107:
    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v75 = a3;
    if (v6)
    {
      v12 = sub_20D567AE8();
      *(v12 + 16) = v6;
      v90 = 8 * v6;
      bzero((v12 + 32), 8 * v6);
    }

    else
    {
      v90 = 0;
      v12 = MEMORY[0x277D84F90];
    }

    *(&v91 + 1) = v6;
    *&v92 = v12;
    v82 = v12;
    *(&v92 + 1) = v10;
    LOBYTE(v93) = v8 & 1;
    *(&v93 + 1) = v11;
    *&v94 = v7;
    BYTE8(v94) = v8;
    v16 = *v3 + 64;
    v17 = 1 << *(*v3 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(*v3 + 64);
    v76 = (v17 + 63) >> 6;
    v83 = a1 - 1;
    v20 = __OFSUB__(a1, 1);
    v84 = v20;
    v86 = *v3;
    sub_20D5663C8();
    v21 = 0;
    v22 = a2;
    while (1)
    {
      while (1)
      {
        if (!v19)
        {
          while (1)
          {
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v23 >= v76)
            {
              goto LABEL_92;
            }

            v19 = *(v16 + 8 * v23);
            ++v21;
            if (v19)
            {
              v21 = v23;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

LABEL_21:
        v24 = __clz(__rbit64(v19)) | (v21 << 6);
        v25 = *(*(v86 + 48) + 8 * v24);
        v26 = (*(v86 + 56) + 32 * v24);
        v88 = v26[1];
        v89 = *v26;
        v27 = v25;
        if (!v25)
        {
LABEL_92:

          *(v75 + 32) = v93;
          *(v75 + 48) = v94;
          *(v75 + 64) = v95;
          *v75 = v91;
          *(v75 + 16) = v92;
          return result;
        }

        v28 = v88 - 1;
        if (__OFSUB__(v88, 1))
        {
          goto LABEL_97;
        }

        v29 = v89;
        v30 = __OFADD__(v89, v28);
        v31 = v89 + v28;
        if (v30)
        {
          goto LABEL_98;
        }

        if (v84)
        {
          goto LABEL_99;
        }

        v19 &= v19 - 1;
        if (v83 >= v31)
        {
          break;
        }

        v32 = *v22;
        v33 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_20CEE7E24(0, v32[2] + 1, 1, v32);
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v32 = sub_20CEE7E24((v34 > 1), v35 + 1, 1, v32);
        }

        v32[2] = v35 + 1;
        v36 = &v32[5 * v35];
        v36[4] = v33;
        *(v36 + 7) = v88;
        *(v36 + 5) = v89;
        *v22 = v32;
      }

      v37 = v89 + v88;
      if (__OFADD__(v89, v88))
      {
        goto LABEL_109;
      }

      if (v37 < v89)
      {
        goto LABEL_110;
      }

      v80 = v27;
      if (v89 != v37)
      {
        break;
      }

LABEL_79:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v91;
      v59 = sub_20CEED6E0(v80);
      v60 = *(v91 + 16);
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_111;
      }

      v63 = v58;
      if (*(v91 + 24) >= v62)
      {
        v66 = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20CF9C6D8();
          v66 = v88;
        }
      }

      else
      {
        sub_20CF97EE8(v62, isUniquelyReferenced_nonNull_native);
        v64 = sub_20CEED6E0(v80);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_115;
        }

        v59 = v64;
        v66 = v88;
      }

      v67 = v80;
      v68 = v96;
      if (v63)
      {
        v69 = (v96[7] + 32 * v59);
        *v69 = v89;
        v69[1] = v66;
      }

      else
      {
        v96[(v59 >> 6) + 8] |= 1 << v59;
        *(v68[6] + 8 * v59) = v80;
        v70 = (v68[7] + 32 * v59);
        *v70 = v89;
        v70[1] = v66;
        v71 = v68[2];
        v30 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v30)
        {
          goto LABEL_114;
        }

        v68[2] = v72;
        v73 = v80;
        v67 = v80;
      }

      *&v91 = v68;
      v74 = v67;
      MEMORY[0x20F31CEE0]();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
    }

    v38 = *(&v89 + 1);
    if (__OFADD__(*(&v89 + 1), *(&v88 + 1)))
    {
      goto LABEL_112;
    }

    if (*(&v89 + 1) + *(&v88 + 1) < *(&v89 + 1))
    {
      goto LABEL_113;
    }

    v79 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_20CF3B7D4(v82);
    }

    v87 = v82 + 32;
    v77 = v89 + 1;
    v39 = *(&v89 + 1) + *(&v88 + 1);
    v78 = v16;
    while (v29 < v37)
    {
      v81 = v29 + 1;
      v40 = v38;
      if (v38 != v39)
      {
        while (v40 < v39)
        {
          if (v40 < v6)
          {
            v41 = v11[2];
            if (__OFSUB__(v81, v41))
            {
              goto LABEL_100;
            }

            if (v81 - v41 >= 1)
            {
              v42 = v77 - v41;
              do
              {
                if (v6)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C81C3E8);
                  v43 = sub_20D567AE8();
                  *(v43 + 16) = v6;
                  bzero((v43 + 32), v90);
                }

                else
                {
                  v43 = MEMORY[0x277D84F90];
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = sub_20CEE7E00(0, v11[2] + 1, 1, v11);
                }

                v45 = v11[2];
                v44 = v11[3];
                if (v45 >= v44 >> 1)
                {
                  v11 = sub_20CEE7E00((v44 > 1), v45 + 1, 1, v11);
                }

                v11[2] = v45 + 1;
                v11[v45 + 4] = v43;
                --v42;
              }

              while (v42);
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_20CF3B7FC(v11);
            }

            v22 = a2;
            v16 = v78;
            if (v29 < 0)
            {
              goto LABEL_101;
            }

            if (v29 >= v11[2])
            {
              goto LABEL_102;
            }

            v46 = v11 + 4;
            v47 = v11[v29 + 4];
            v48 = swift_isUniquelyReferenced_nonNull_native();
            v11[v29 + 4] = v47;
            if (v48)
            {
              v49 = v80;
              if (v40 < 0)
              {
                goto LABEL_103;
              }
            }

            else
            {
              v47 = sub_20CF3B7E8();
              v46[v29] = v47;
              v49 = v80;
              if (v40 < 0)
              {
                goto LABEL_103;
              }
            }

            if (v40 >= *(v47 + 16))
            {
              goto LABEL_104;
            }

            v50 = v47 + 8 * v40;
            v51 = *(v50 + 32);
            *(v50 + 32) = v49;
            v52 = v79;

            *(&v93 + 1) = v11;
            if (v40 >= *(v82 + 2))
            {
              goto LABEL_105;
            }

            v53 = *&v87[8 * v40];
            v54 = v11[2];
            if (v54 < v53)
            {
              goto LABEL_106;
            }

            if (v53 < v54)
            {
              v55 = *&v87[8 * v40];
              v38 = *(&v89 + 1);
              while ((v53 & 0x8000000000000000) == 0)
              {
                v56 = v46[v55];
                if (v40 >= *(v56 + 16))
                {
                  goto LABEL_95;
                }

                if (!*(v56 + 8 * v40 + 32))
                {
                  v53 = v55;
                  goto LABEL_44;
                }

                if (v54 == ++v55)
                {
                  v53 = v11[2];
                  goto LABEL_44;
                }
              }

              goto LABEL_94;
            }

            v38 = *(&v89 + 1);
LABEL_44:
            *&v87[8 * v40] = v53;
            v39 = *(&v89 + 1) + *(&v88 + 1);
          }

          if (++v40 == v39)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_96;
      }

LABEL_39:
      ++v77;
      ++v29;
      v37 = v89 + v88;
      if (v81 == v89 + v88)
      {

        *&v92 = v82;
        goto LABEL_79;
      }
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  sub_20CECF940(0, &qword_281120AC0);
  result = sub_20D568C68();
  __break(1u);
  return result;
}

void sub_20CF74340(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = a4[1];
  v17 = a4[3];
  v100 = a4[2];
  v101 = v17;
  v102 = *(a4 + 8);
  v18 = a4[1];
  v98 = *a4;
  v99 = v18;
  v19 = a4[3];
  v97 = *(a4 + 8);
  v95 = v100;
  v96 = v19;
  v93 = v98;
  v94 = v16;
  sub_20CF930DC(a2, a3, v84);
  if (a2 != a5 || a3 != a6)
  {
    v20 = a4[3];
    v90 = a4[2];
    v91 = v20;
    v92 = *(a4 + 8);
    v21 = a4[1];
    v88 = *a4;
    v89 = v21;
    sub_20CF930DC(a5, a6, &v80);
    if ((v83 & 1) == 0)
    {
      v22 = v80;
      v23 = v81;
      v24 = v82;
      if (v85 & 1) != 0 || (v75 = v81, v25 = sub_20CF75B98(v80, v81, *v84, *&v84[8], *(a4 + 6), *(a4 + 56)), v23 = v75, (v25))
      {
        *v84 = v22;
        *&v84[8] = v23;
        *&v84[24] = v24;
        LOBYTE(v85) = 0;
      }
    }
  }

  if (v85)
  {
    sub_20CEF9178(&v98, v84, &qword_27C81C370);
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v26 = sub_20D565988();
    __swift_project_value_buffer(v26, qword_281120958);
    sub_20CEF9178(&v98, v84, &qword_27C81C370);
    sub_20CEF9178(&v98, v84, &qword_27C81C370);
    v27 = sub_20D565968();
    v28 = sub_20D567EA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v80 = v72;
      *v29 = 136315650;
      strcpy(v84, "gridSize-");
      *&v84[10] = 0;
      *&v84[12] = -385875968;
      v71 = v28;
      v30 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v30);

      MEMORY[0x20F31CDB0](120, 0xE100000000000000);
      v31 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v31);

      v32 = sub_20CEE913C(*v84, *&v84[8], &v80);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v33 = sub_20CF75E2C(*(&v99 + 1), v100, *(&v100 + 1));
      v35 = v34;
      sub_20CEF928C(&v98, &qword_27C81C370);
      sub_20CEF928C(&v98, &qword_27C81C370);
      v36 = sub_20CEE913C(v33, v35, &v80);

      *(v29 + 14) = v36;
      *(v29 + 22) = 2080;
      strcpy(v84, "gridSize-");
      *&v84[10] = 0;
      *&v84[12] = -385875968;
      v37 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v37);

      MEMORY[0x20F31CDB0](120, 0xE100000000000000);
      v79 = a7;
      v38 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v38);

      v39 = sub_20CEE913C(*v84, *&v84[8], &v80);

      *(v29 + 24) = v39;
      _os_log_impl(&dword_20CEB6000, v27, v71, "AdaptiveTileLayoutSolver couldn't fit %s into %s; trying backup size %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v72, -1, -1);
      MEMORY[0x20F31FC70](v29, -1, -1);
    }

    else
    {
      sub_20CEF928C(&v98, &qword_27C81C370);

      sub_20CEF928C(&v98, &qword_27C81C370);
    }

    v47 = a4[2];
    v86 = a4[3];
    v87 = *(a4 + 8);
    v48 = *a4;
    *&v84[16] = a4[1];
    v85 = v47;
    *v84 = v48;
    sub_20CF930DC(a7, a8, &v80);
    v40 = v80;
    v43 = *(&v81 + 1);
    v41 = v81;
    v42 = v82;
    if (v83)
    {
      sub_20CEF9178(&v98, &v80, &qword_27C81C370);
      v49 = a1;
      v50 = sub_20D565968();
      v51 = sub_20D567EB8();

      if (os_log_type_enabled(v50, v51))
      {
        v74 = v50;
        v52 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v52 = 136315906;
        v79 = v78;
        v80 = 0x657A695364697267;
        *&v81 = 0xE90000000000002DLL;
        v73 = v51;
        v53 = sub_20D568BB8();
        MEMORY[0x20F31CDB0](v53);

        MEMORY[0x20F31CDB0](120, 0xE100000000000000);
        v54 = sub_20D568BB8();
        MEMORY[0x20F31CDB0](v54);

        v55 = sub_20CEE913C(v80, v81, &v79);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        v80 = 0x657A695364697267;
        *&v81 = 0xE90000000000002DLL;
        v56 = sub_20D568BB8();
        MEMORY[0x20F31CDB0](v56);

        MEMORY[0x20F31CDB0](120, 0xE100000000000000);
        v57 = sub_20D568BB8();
        MEMORY[0x20F31CDB0](v57);

        v58 = sub_20CEE913C(v80, v81, &v79);

        *(v52 + 14) = v58;
        *(v52 + 22) = 2080;
        v59 = sub_20CF75E2C(*(&v99 + 1), v100, *(&v100 + 1));
        v61 = v60;
        sub_20CEF928C(&v98, &qword_27C81C370);
        sub_20CEF928C(&v98, &qword_27C81C370);
        v62 = sub_20CEE913C(v59, v61, &v79);

        *(v52 + 24) = v62;
        *(v52 + 32) = 2080;
        v80 = v49;
        sub_20CECF940(0, &qword_281120AC0);
        v63 = v49;
        v64 = sub_20D567858();
        v66 = sub_20CEE913C(v64, v65, &v79);

        *(v52 + 34) = v66;
        _os_log_impl(&dword_20CEB6000, v74, v73, "AdaptiveTileLayoutSolver failed to fit size %s or %s into %s for %s", v52, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v78, -1, -1);
        MEMORY[0x20F31FC70](v52, -1, -1);
      }

      else
      {
        sub_20CEF928C(&v98, &qword_27C81C370);
        sub_20CEF928C(&v98, &qword_27C81C370);
      }

      v67 = 1;
      goto LABEL_22;
    }

    sub_20CEF928C(&v98, &qword_27C81C370);
    v68 = a1;
    sub_20CF94564(a1, v40, v41, v43, v42);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *a4;
    sub_20CEEF36C(v40, v41, v43, v42, v68, isUniquelyReferenced_nonNull_native);
    *a4 = v79;
    v70 = v68;
  }

  else
  {
    v41 = *&v84[8];
    v40 = *v84;
    v43 = *&v84[16];
    v42 = *&v84[24];
    v44 = a1;
    sub_20CF94564(a1, v40, v41, v43, v42);

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *a4;
    sub_20CEEF36C(v40, v41, v43, v42, v44, v45);
    *a4 = v80;
    v46 = v44;
  }

  MEMORY[0x20F31CEE0]();
  if (*((a4[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v67 = 0;
LABEL_22:
  *a9 = v40;
  *(a9 + 8) = v41;
  *(a9 + 16) = v43;
  *(a9 + 24) = v42;
  *(a9 + 32) = v67;
}

id ControlCenterModuleLayoutManager.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_disableLayoutRowCropping] = 0;
  sub_20CF75C98(a1, &v3[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config], type metadata accessor for ControlCenterModuleConfiguration);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_20CF75D00(a1, type metadata accessor for ControlCenterModuleConfiguration);
  return v4;
}

id ControlCenterModuleLayoutManager.init(configuration:)(uint64_t a1)
{
  v1[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_disableLayoutRowCropping] = 0;
  sub_20CF75C98(a1, &v1[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config], type metadata accessor for ControlCenterModuleConfiguration);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlCenterModuleLayoutManager();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_20CF75D00(a1, type metadata accessor for ControlCenterModuleConfiguration);
  return v3;
}

uint64_t type metadata accessor for ControlCenterModuleLayoutManager()
{
  result = qword_2811202C8;
  if (!qword_2811202C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CF74E80()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config;
  swift_beginAccess();
  sub_20CF75C98(v0 + v5, v4, type metadata accessor for ControlCenterModuleConfiguration);
  if (*&v4[*(v2 + 28)] <= 1uLL)
  {
    sub_20CF75D00(v4, type metadata accessor for ControlCenterModuleConfiguration);
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = CCUINumberOfRowsForGridSizeClass();
    sub_20CF75D00(v4, type metadata accessor for ControlCenterModuleConfiguration);
    if (v7 > 1)
    {
      return 2;
    }
  }

  else
  {
    sub_20CF75D00(v4, type metadata accessor for ControlCenterModuleConfiguration);
  }

  return 1;
}

uint64_t static ControlCenterModuleLayoutManager.gridSize(for:configuration:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for ControlCenterModuleConfiguration(0) + 20)) < 2uLL)
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() && CCUINumberOfRowsForGridSizeClass() > 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_20CF750D0(__int128 *a1)
{
  v1 = *(a1 + 16);
  v22 = *a1;
  v23 = v1;
  v19 = 0xD000000000000017;
  v20 = 0x800000020D5D0880;
  v21 = 1;
  v2 = _s6HomeUI23CollectionLayoutManagerC5StyleO2eeoiySbAE_AEtFZ_0(&v22, &v19);
  sub_20CEFF424(v19, v20, v21);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 fractionalWidthDimension_];
    v5 = [v3 fractionalHeightDimension_];
    v6 = objc_opt_self();
    v7 = [v6 sizeWithWidthDimension:v4 heightDimension:v5];

    v8 = [objc_opt_self() itemWithLayoutSize_];
    v9 = [v3 fractionalWidthDimension_];
    v10 = [v3 fractionalHeightDimension_];
    v11 = [v6 sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20D5BA040;
    *(v13 + 32) = v8;
    sub_20CECF940(0, &qword_28111FE40);
    v14 = v8;
    v15 = sub_20D567A58();

    v16 = [v12 verticalGroupWithLayoutSize:v11 subitems:v15];

    v17 = [objc_opt_self() sectionWithGroup_];
    return v17;
  }

  else
  {
    result = sub_20D568A58();
    __break(1u);
  }

  return result;
}

uint64_t sub_20CF75398()
{
  v1 = MEMORY[0x20F31E320]();
  swift_beginAccess();
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v2 = CCUINumberOfRowsForGridSizeClass();
  v3 = *(v0 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v2;
    v6 = v3;
    [v6 sectionTopMargin];
    v8 = v7;
    [v6 sectionBottomMargin];
    v10 = v9;

    if (v8 + v10 > 0.0)
    {
      v1 = v1 - (v8 + v10) / v5;
    }
  }

  return *&v1;
}

uint64_t sub_20CF75478@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v5 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config;
  swift_beginAccess();
  sub_20CF75C98(v2 + v8, v7, type metadata accessor for ControlCenterModuleConfiguration);
  static ControlCenterModuleLayoutManager.adaptiveTileLayout(items:configuration:cropLayoutToRows:)(a1, v7, (*(v2 + OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_disableLayoutRowCropping) & 1) == 0, a2);
  return sub_20CF75D00(v7, type metadata accessor for ControlCenterModuleConfiguration);
}

uint64_t static ControlCenterModuleLayoutManager.adaptiveTileLayout(items:configuration:cropLayoutToRows:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v8 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  v34 = a2;
  sub_20CEF9BB4(sub_20CF75C78, v32, a1);
  v30 = v11;
  v12 = type metadata accessor for ControlCenterModuleConfiguration(0);
  v13 = *(a2 + *(v12 + 20));
  v14 = CCUINumberOfRowsForGridSizeClass();
  v15 = CCUINumberOfColumnsForGridSizeClass();
  if (v13 < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = *(a2 + *(v12 + 24));
  if (v17 != 3)
  {
    goto LABEL_14;
  }

  if (CCUINumberOfRowsForGridSizeClass() < 2)
  {
    goto LABEL_6;
  }

  sub_20CF75C98(a2, v10, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_6:
      LOBYTE(v17) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20CF75D00(v10, type metadata accessor for ControlCenterModuleConfiguration.Content);
      LOBYTE(v17) = 1;
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    v19 = sub_20D563818();
    (*(*(v19 - 8) + 8))(v10, v19);
  }

  LOBYTE(v17) = 2;
LABEL_14:
  v48[0] = v14;
  v48[1] = v15;
  v48[2] = 1;
  v48[3] = v16;
  v49 = v17;
  v50 = 1;
  v51 = v31 & 1;
  v52 = v30;
  sub_20CF7312C(v42);
  if (v51)
  {
    v41 = MEMORY[0x277D84F90];
    sub_20CF73BAC(v48[0], &v41, v35);
    sub_20CEF928C(v48, &qword_27C81D9C0);
    sub_20CEF928C(v42, &qword_27C81C370);

    v21 = v35[0];
    v22 = v35[1];
    v23 = v35[2];
    v24 = v35[3];
    v25 = v36;
    v27 = v37;
    v26 = v38;
    v28 = v39;
    v29 = v40;
  }

  else
  {
    result = sub_20CEF928C(v48, &qword_27C81D9C0);
    v29 = v47;
    v28 = v46;
    v23 = v42[2];
    v24 = v42[3];
    v27 = v44;
    v26 = v45;
    v21 = v42[0];
    v22 = v42[1];
    v25 = v43;
  }

  *a4 = v21;
  *(a4 + 8) = v22;
  *(a4 + 16) = v23;
  *(a4 + 24) = v24;
  *(a4 + 32) = v25 & 1;
  *(a4 + 40) = v27;
  *(a4 + 48) = v26;
  *(a4 + 56) = v28;
  *(a4 + 64) = v29;
  return result;
}

id sub_20CF758B4@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *a3 = *a1;
  if (*(a2 + *(type metadata accessor for ControlCenterModuleConfiguration(0) + 20)) > 1uLL)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    result = v4;
    if (!v7 || (result = CCUINumberOfRowsForGridSizeClass(), result <= 1))
    {
      v8 = xmmword_20D5BC410;
      goto LABEL_8;
    }

    v6 = 2;
  }

  else
  {
    result = v4;
    v6 = 1;
  }

  v8 = vdupq_n_s64(v6);
LABEL_8:
  *(a3 + 8) = v8;
  return result;
}

void *sub_20CF75968(void *a1)
{
  v2 = sub_20CEFDC1C();
  swift_beginAccess();
  type metadata accessor for ControlCenterModuleConfiguration(0);
  CCUINumberOfColumnsForGridSizeClass();
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_20D568168();
  v5 = sub_20D568DA8();
  [v2 setOverrideNumberOfColumns_];

  return v2;
}

id ControlCenterModuleLayoutManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlCenterModuleLayoutManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlCenterModuleLayoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF75B98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (result == a3)
    {
      return a2 < a4;
    }

    else
    {
      return result < a3;
    }
  }

  v6 = floor(result / a5);
  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = floor(a3 / a5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = v6 < v7;
  if (*&v6 == *&v7)
  {
    v8 = a2 < a4;
    if (a2 == a4)
    {
      return result < a3;
    }
  }

  return v8;
}

uint64_t sub_20CF75C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CF75D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CF75D68()
{
  result = type metadata accessor for ControlCenterModuleConfiguration(319);
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

uint64_t sub_20CF75E2C(uint64_t result, char a2, uint64_t a3)
{
  v46 = result;
  v52 = *(a3 + 16);
  if (v52)
  {
    v3 = 0;
    v49 = a3 + 32;
    v4 = MEMORY[0x277D84F90];
    v5 = 1;
    while (1)
    {
      v6 = *(v49 + 8 * v3);
      v7 = *(v6 + 16);
      if (v7)
      {
        break;
      }

      v9 = MEMORY[0x277D84F90];
LABEL_16:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20CEE8078(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v20 = v4[2];
      v19 = v4[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        result = sub_20CEE8078((v19 > 1), v20 + 1, 1, v4);
        v4 = result;
      }

      ++v3;
      v4[2] = v21;
      v4[v20 + 4] = v9;
      if (v3 == v52)
      {
        v22 = v46;
        goto LABEL_24;
      }
    }

    v54 = v3;
    v50 = v4;
    v56 = MEMORY[0x277D84F90];
    sub_20D5663C8();
    sub_20CEF0A88(0, v7, 0);
    v8 = 0;
    v9 = v56;
    while (v8 < *(v6 + 16))
    {
      v10 = *(v6 + 8 * v8 + 32);
      if (v10)
      {
        sub_20CECF940(0, &qword_281120AC0);
        v11 = v10;
        v12 = sub_20D567858();
        v14 = v13;
        v15 = sub_20D5678D8();

        if (v15 > v5)
        {
          v5 = v15;
        }
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v17 = *(v56 + 16);
      v16 = *(v56 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_20CEF0A88((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v56 + 16) = v17 + 1;
      v18 = v56 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      if (v7 == v8)
      {

        v4 = v50;
        v3 = v54;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v4 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);
  if (!v21)
  {
LABEL_44:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
    sub_20CF76364();
    v44 = sub_20D5677D8();

    return v44;
  }

  v22 = result;
LABEL_24:
  v23 = 0;
  v51 = v4;
  v47 = v4 + 4;
  v55 = MEMORY[0x277D84F90];
  v45 = v21;
  while (v23 < v51[2])
  {
    v53 = v23;
    v25 = v47[v23];
    v26 = *(v25 + 16);
    if (v26)
    {
      sub_20D5663C8();
      sub_20CEF44D8();
      v27 = v25 + 40;
      do
      {
        v27 += 16;
        sub_20D5663C8();
        v28 = sub_20D568608();
        v30 = v29;

        MEMORY[0x20F31CDB0](v28, v30);

        MEMORY[0x20F31CDB0](32, 0xE100000000000000);
        MEMORY[0x20F31CDB0](32, 0xE100000000000000);

        --v26;
      }

      while (v26);

      v26 = 0;
      v21 = v45;
      v22 = v46;
    }

    sub_20D5663C8();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20CEE7F6C(0, *(v55 + 16) + 1, 1, v55);
      v55 = result;
    }

    v31 = v53;
    v33 = *(v55 + 16);
    v32 = *(v55 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_20CEE7F6C((v32 > 1), v33 + 1, 1, v55);
      v31 = v53;
      v55 = result;
    }

    v34 = v31 + 1;
    *(v55 + 16) = v33 + 1;
    v35 = v55 + 16 * v33;
    *(v35 + 32) = v26;
    *(v35 + 40) = 0xE000000000000000;
    if (a2)
    {
      v24 = v34;

      v23 = v24;
      if (v24 == v21)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_48;
      }

      v36 = v34;
      if (v34 % v22)
      {
      }

      else
      {
        sub_20D5678D8();

        result = sub_20D567978();
        v39 = *(v55 + 16);
        v38 = *(v55 + 24);
        if (v39 >= v38 >> 1)
        {
          v41 = result;
          v42 = v37;
          v43 = sub_20CEE7F6C((v38 > 1), v39 + 1, 1, v55);
          v37 = v42;
          v55 = v43;
          result = v41;
        }

        *(v55 + 16) = v39 + 1;
        v40 = v55 + 16 * v39;
        *(v40 + 32) = result;
        *(v40 + 40) = v37;
      }

      v23 = v36;
      if (v36 == v21)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

unint64_t sub_20CF76364()
{
  result = qword_281120040;
  if (!qword_281120040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120040);
  }

  return result;
}

char *sub_20CF763C8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider] = 0;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for AccessoryDetailsLinkedApplicationItemManager();
  v5 = objc_msgSendSuper2(&v19, sel_initWithDelegate_sourceItem_, 0, a1);
  v6 = [a1 accessories];
  sub_20CF76A34();
  sub_20CF76A80();
  v7 = sub_20D567D08();

  v8 = sub_20CFAF940(v7);

  if (v8)
  {
    v9 = [objc_allocWithZone(HULinkedApplicationItemProvider) initWithHome_];
    v10 = OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider;
    v11 = *&v5[OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider];
    *&v5[OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider] = v9;

    v12 = *&v5[v10];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v8;
      v18[4] = sub_20CF76AD8;
      v18[5] = v13;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 1107296256;
      v18[2] = sub_20CF765C0;
      v18[3] = &block_descriptor_10;
      v14 = _Block_copy(v18);
      v15 = v12;
      v16 = v8;

      [v15 setFilter_];

      _Block_release(v14);
      a2 = v5;
      v8 = v15;
    }

    else
    {
    }
  }

  else
  {

    v8 = v5;
  }

  return v5;
}

uint64_t sub_20CF765C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

id AccessoryDetailsLinkedApplicationItemManager.__allocating_init(delegate:sourceItem:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithDelegate:a1 sourceItem:a2];
  swift_unknownObjectRelease();

  return v4;
}

id AccessoryDetailsLinkedApplicationItemManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDetailsLinkedApplicationItemManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF767A4()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider];
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20D5BA040;
    *(v6 + 32) = v5;
  }

  else
  {
    sub_20D565958();
    v7 = v0;
    v8 = sub_20D565968();
    v9 = sub_20D567EA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v8;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19 = v13;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v12 = v7;
      *(v10 + 12) = 2080;
      v14 = v7;
      *(v10 + 14) = sub_20CEE913C(0xD000000000000019, 0x800000020D5D0A70, &v19);
      v15 = v18;
      _os_log_impl(&dword_20CEB6000, v18, v9, "%@ - %s cannot build item providers without a linkedApplicationItemProvider.", v10, 0x16u);
      sub_20CF31DFC(v12);
      MEMORY[0x20F31FC70](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x20F31FC70](v13, -1, -1);
      MEMORY[0x20F31FC70](v10, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    v6 = MEMORY[0x277D84F90];
  }

  v16 = v5;
  return v6;
}

unint64_t sub_20CF76A34()
{
  result = qword_28111FFF0;
  if (!qword_28111FFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FFF0);
  }

  return result;
}

unint64_t sub_20CF76A80()
{
  result = qword_27C820660;
  if (!qword_27C820660)
  {
    sub_20CF76A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820660);
  }

  return result;
}

id sub_20CF76AD8(id result)
{
  if (result)
  {
    return [result isEqual_];
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CF76C2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D5642E8();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20D5646C8();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820470);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v47 - v9;
  v10 = sub_20D563818();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v56 = sub_20D5641B8();
  v18 = *(v56 - 8);
  v19 = MEMORY[0x28223BE20](v56);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  sub_20D563F48();
  v24 = sub_20D563F18();
  sub_20D563EC8();

  v60 = &unk_28251B0C8;
  v25 = swift_dynamicCastObjCProtocolConditional();
  if (v25)
  {
    v26 = v25;
    v47 = v7;
    v48 = a2;
    v27 = a1;
    v28 = [v26 home];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 uniqueIdentifier];
      sub_20D5637E8();

      (*(v57 + 32))(v17, v15, v58);
      v31 = sub_20D563F18();
      v32 = sub_20D563EE8();

      if (*(v32 + 16) && (v33 = sub_20CEED7C0(v17), (v34 & 1) != 0))
      {
        v35 = v56;
        (*(v18 + 16))(v21, *(v32 + 56) + *(v18 + 72) * v33, v56);

        (*(v57 + 8))(v17, v58);

        (*(v18 + 8))(v23, v35);
        (*(v18 + 32))(v23, v21, v35);
      }

      else
      {

        (*(v57 + 8))(v17, v58);
      }
    }

    else
    {
    }

    v7 = v47;
    a2 = v48;
  }

  sub_20D565D18();
  if (swift_dynamicCastClass())
  {
    v36 = a1;
    v37 = sub_20D563F18();
    sub_20D563ED8();

    v38 = v51;
    sub_20D565D08();
    v39 = v53;
    sub_20D5646B8();

    (*(v54 + 8))(v38, v55);
    (*(v50 + 8))(v7, v52);
    v40 = sub_20D5644D8();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v39, 1, v40) != 1)
    {
      (*(v18 + 8))(v23, v56);
      (*(v41 + 32))(a2, v39, v40);
      return (*(v41 + 56))(a2, 0, 1, v40);
    }

    sub_20CEF928C(v39, &qword_27C820470);
  }

  v59 = &unk_2824C0788;
  v42 = swift_dynamicCastObjCProtocolConditional();
  if (v42)
  {
    v43 = [objc_msgSend(v42 homeKitObject)];
    v44 = v49;
    sub_20D5637E8();

    sub_20D564128();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v44, v58);
    return (*(v18 + 8))(v23, v56);
  }

  else
  {
    (*(v18 + 8))(v23, v56);
    v46 = sub_20D5644D8();
    return (*(*(v46 - 8) + 56))(a2, 1, 1, v46);
  }
}

uint64_t sub_20CF77320()
{
  v0 = sub_20D5681F8();
  v1 = v0;
  if ((v0 & 0xC000000000000001) != 0)
  {
    if (sub_20D568768() == 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    return 0;
  }

  if (*(v0 + 16) != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = sub_20CFAF940(v1);

  if (v2)
  {
    v3 = sub_20D567E38();
    v5 = v4;

    return (v3 != 0) & ~v5;
  }

  return 0;
}

id AccessoryDetailsRouter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDetailsRouter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF773F0()
{
  v0 = sub_20D564508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20D5BECD0;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 serviceType_];
  *(v4 + 40) = [v5 serviceType_];
  (*(v1 + 104))(v3, *MEMORY[0x277D15ED8], v0);
  sub_20D5644F8();
  (*(v1 + 8))(v3, v0);
  v6 = sub_20D568DB8();
  v7 = [v5 matterDeviceType_];

  *(v4 + 48) = v7;
  return v4;
}

uint64_t sub_20CF775A0(void *a1)
{
  v2 = sub_20D563DC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D5642E8();
  v158 = *(v6 - 8);
  v159 = v6;
  MEMORY[0x28223BE20](v6);
  v156 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_20D5646C8();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v154 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D563818();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v151 = &v138 - v15;
  MEMORY[0x28223BE20](v14);
  v152 = &v138 - v16;
  v17 = sub_20D5641B8();
  v160 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v150 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v161 = &v138 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820470);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v153 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v138 - v24;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v148 = v25;
    v28 = v17;
    v29 = v13;
    v30 = v10;
    v31 = v9;
    v32 = v5;
    v33 = v3;
    v34 = v2;
    v35 = a1;
    v36 = a1;
    if (([v27 isHomePod] & 1) != 0 || (objc_msgSend(v27, sel_isHomePodMediaSystem) & 1) != 0 || objc_msgSend(v27, sel_isAppleTV))
    {
      if (qword_27C81A258 != -1)
      {
        swift_once();
      }

      v37 = sub_20D565988();
      __swift_project_value_buffer(v37, qword_27C81FC58);
      v38 = v36;
      v39 = sub_20D565968();
      v40 = sub_20D567EC8();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v164[0] = v43;
        *v41 = 136315650;
        *(v41 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, v164);
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_20CEE913C(0x6F66286574756F72, 0xEB00000000293A72, v164);
        *(v41 + 22) = 2112;
        *(v41 + 24) = v27;
        *v42 = v27;
        v44 = v38;
        _os_log_impl(&dword_20CEB6000, v39, v40, "%s - %s Displaying legacy details view for mediaItem (%@)", v41, 0x20u);
        sub_20CEF928C(v42, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v42, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v43, -1, -1);
        MEMORY[0x20F31FC70](v41, -1, -1);

        return 0;
      }

LABEL_48:
      return 0;
    }

    a1 = v35;
    v2 = v34;
    v3 = v33;
    v5 = v32;
    v9 = v31;
    v10 = v30;
    v13 = v29;
    v17 = v28;
    v25 = v148;
  }

  v149 = a1;
  sub_20CECF940(0, &unk_27C81D9E8);
  if (sub_20D567EE8())
  {
    if (qword_27C81A258 != -1)
    {
      swift_once();
    }

    v45 = sub_20D565988();
    __swift_project_value_buffer(v45, qword_27C81FC58);
    v46 = sub_20D565968();
    v47 = sub_20D567EC8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v164[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, v164);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_20CEE913C(0x6F66286574756F72, 0xEB00000000293A72, v164);
      _os_log_impl(&dword_20CEB6000, v46, v47, "%s - %s Displaying new details view because forceNewAccessoryDetails is true", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v49, -1, -1);
      MEMORY[0x20F31FC70](v48, -1, -1);
    }

    goto LABEL_16;
  }

  v164[1] = &unk_28251AC90;
  v51 = swift_dynamicCastObjCProtocolConditional();
  if (!v51)
  {
    if (qword_27C81A258 != -1)
    {
      swift_once();
    }

    v72 = sub_20D565988();
    __swift_project_value_buffer(v72, qword_27C81FC58);
    v73 = v149;
    v39 = sub_20D565968();
    v74 = sub_20D567EC8();

    if (os_log_type_enabled(v39, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v164[0] = v77;
      *v75 = 136315650;
      *(v75 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, v164);
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_20CEE913C(0x6F66286574756F72, 0xEB00000000293A72, v164);
      *(v75 + 22) = 2112;
      *(v75 + 24) = v73;
      *v76 = v73;
      v78 = v73;
      _os_log_impl(&dword_20CEB6000, v39, v74, "%s - %s Displaying legacy details view because not accessory representable object | item = %@", v75, 0x20u);
      sub_20CEF928C(v76, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v76, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v77, -1, -1);
      MEMORY[0x20F31FC70](v75, -1, -1);
    }

    goto LABEL_48;
  }

  v146 = v9;
  v52 = [v51 accessoryRepresentableObject];
  ObjectType = swift_getObjectType();
  v147 = v52;
  if (sub_20D568208())
  {
    sub_20D565D18();
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      v55 = v54;
      v143 = ObjectType;
      v148 = v25;
      v56 = sub_20D563F48();
      v57 = v149;
      v58 = sub_20D563F18();
      sub_20D563EC8();

      v163 = &unk_28251B0C8;
      v59 = swift_dynamicCastObjCProtocolUnconditional();
      v142 = v55;
      v60 = [v59 home];
      v141 = v5;
      v140 = v3;
      v139 = v13;
      v145 = v57;
      v144 = v56;
      if (v60)
      {
        v61 = v60;
        v62 = [v60 uniqueIdentifier];
        v63 = v151;
        sub_20D5637E8();

        v64 = v152;
        (*(v10 + 32))(v152, v63, v146);
        v65 = sub_20D563F18();
        v66 = sub_20D563EE8();

        if (*(v66 + 16) && (v67 = sub_20CEED7C0(v64), (v68 & 1) != 0))
        {
          v69 = v160;
          v70 = v150;
          (*(v160 + 16))(v150, *(v66 + 56) + *(v160 + 72) * v67, v17);

          v57 = v145;
          (*(v10 + 8))(v64, v146);

          v71 = v161;
          (*(v69 + 8))(v161, v17);
          (*(v69 + 32))(v71, v70, v17);
        }

        else
        {

          v57 = v145;

          (*(v10 + 8))(v64, v146);
        }
      }

      else
      {
      }

      v79 = v142;
      v80 = sub_20D563F18();
      v81 = v154;
      sub_20D563ED8();

      v82 = v156;
      sub_20D565D08();
      v83 = v153;
      sub_20D5646B8();

      (*(v158 + 8))(v82, v159);
      (*(v155 + 8))(v81, v157);
      v84 = sub_20D5644D8();
      v85 = *(v84 - 8);
      v86 = *(v85 + 48);
      v87 = v86(v83, 1, v84);
      v152 = v79;
      if (v87 == 1)
      {
        sub_20CEF928C(v83, &qword_27C820470);
        v162 = &unk_2824C0788;
        v88 = [swift_dynamicCastObjCProtocolUnconditional() homeKitObject];
        v159 = v17;
        v89 = v10;
        v90 = [v88 uniqueIdentifier];
        v91 = v86;
        v92 = v139;
        sub_20D5637E8();

        v93 = v148;
        v94 = v161;
        sub_20D564128();
        swift_unknownObjectRelease();
        v95 = v92;
        v86 = v91;
        (*(v89 + 8))(v95, v146);
        (*(v160 + 8))(v94, v159);
      }

      else
      {
        (*(v160 + 8))(v161, v17);
        v93 = v148;
        (*(v85 + 32))(v148, v83, v84);
        (*(v85 + 56))(v93, 0, 1, v84);
      }

      if (v86(v93, 1, v84) != 1)
      {
        sub_20CEF928C(v93, &qword_27C820470);
        v119 = v145;
        if (qword_27C81A258 != -1)
        {
          swift_once();
        }

        v120 = sub_20D565988();
        __swift_project_value_buffer(v120, qword_27C81FC58);
        v121 = v119;
        v46 = sub_20D565968();
        v122 = sub_20D567EC8();

        v123 = os_log_type_enabled(v46, v122);
        v124 = v152;
        if (v123)
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v164[0] = v127;
          *v125 = 136315650;
          *(v125 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, v164);
          *(v125 + 12) = 2080;
          *(v125 + 14) = sub_20CEE913C(0x6F66286574756F72, 0xEB00000000293A72, v164);
          *(v125 + 22) = 2112;
          *(v125 + 24) = v124;
          *v126 = v124;
          v128 = v121;
          _os_log_impl(&dword_20CEB6000, v46, v122, "%s - %s Displaying new accessory details view for matter item = %@", v125, 0x20u);
          sub_20CEF928C(v126, &unk_27C81BE60);
          MEMORY[0x20F31FC70](v126, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x20F31FC70](v127, -1, -1);
          MEMORY[0x20F31FC70](v125, -1, -1);
          swift_unknownObjectRelease();

LABEL_16:
          return 1;
        }

LABEL_62:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      sub_20CEF928C(v93, &qword_27C820470);
      v3 = v140;
      v5 = v141;
    }
  }

  if ((sub_20CF77320() & 1) == 0)
  {
    goto LABEL_43;
  }

  v96 = v5;
  v97 = v3;
  v98 = v2;
  sub_20CECF940(0, &qword_28111FB10);
  v99 = sub_20D568198();
  v100 = [objc_opt_self() serviceType_];
  v101 = sub_20D5683F8();

  if (v101)
  {
    v102 = sub_20D5681F8();
    v103 = v102;
    if ((v102 & 0xC000000000000001) != 0)
    {
      v104 = sub_20D568768();
    }

    else
    {
      v104 = *(v102 + 16);
    }

    if (v104 == 1)
    {
      v129 = sub_20CFAF940(v103);

      if (!v129)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      if (qword_27C81A258 != -1)
      {
        swift_once();
      }

      v130 = sub_20D565988();
      __swift_project_value_buffer(v130, qword_27C81FC58);
      v131 = v149;
      v46 = sub_20D565968();
      v132 = sub_20D567EC8();

      if (os_log_type_enabled(v46, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v164[0] = v135;
        *v133 = 136315650;
        *(v133 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, v164);
        *(v133 + 12) = 2080;
        *(v133 + 14) = sub_20CEE913C(0x6F66286574756F72, 0xEB00000000293A72, v164);
        *(v133 + 22) = 2112;
        *(v133 + 24) = v131;
        *v134 = v131;
        v136 = v131;
        _os_log_impl(&dword_20CEB6000, v46, v132, "%s - %s Displaying new accessory details view for lock mechanism accessory | item = %@", v133, 0x20u);
        sub_20CEF928C(v134, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v134, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v135, -1, -1);
        MEMORY[0x20F31FC70](v133, -1, -1);
      }

      goto LABEL_62;
    }

LABEL_68:
    swift_unknownObjectRelease();

    return 0;
  }

  (*(v97 + 104))(v96, *MEMORY[0x277D15280], v98);
  sub_20CF7968C(&qword_27C81D9F8, MEMORY[0x277D15298]);
  v105 = sub_20D563978();
  (*(v97 + 8))(v96, v98);
  if ((v105 & 1) == 0 || (v106 = sub_20CF773F0(), v107 = sub_20D568198(), v164[0] = v107, MEMORY[0x28223BE20](v107), *(&v138 - 2) = v164, v108 = sub_20CED44F8(sub_20CF796D4, (&v138 - 4), v106), v107, , (v108 & 1) == 0))
  {
LABEL_43:
    if (qword_27C81A258 != -1)
    {
      swift_once();
    }

    v112 = sub_20D565988();
    __swift_project_value_buffer(v112, qword_27C81FC58);
    v113 = v149;
    v39 = sub_20D565968();
    v114 = sub_20D567EC8();

    if (os_log_type_enabled(v39, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v164[0] = v117;
      *v115 = 136315650;
      *(v115 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, v164);
      *(v115 + 12) = 2080;
      *(v115 + 14) = sub_20CEE913C(0x6F66286574756F72, 0xEB00000000293A72, v164);
      *(v115 + 22) = 2112;
      *(v115 + 24) = v113;
      *v116 = v113;
      v118 = v113;
      _os_log_impl(&dword_20CEB6000, v39, v114, "%s - %s Displaying legacy details view | item = %@", v115, 0x20u);
      sub_20CEF928C(v116, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v116, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v117, -1, -1);
      MEMORY[0x20F31FC70](v115, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  v109 = sub_20D5681F8();
  v110 = v109;
  if ((v109 & 0xC000000000000001) != 0)
  {
    v111 = sub_20D568768();
  }

  else
  {
    v111 = *(v109 + 16);
  }

  if (v111 != 1)
  {
    goto LABEL_68;
  }

  v137 = sub_20CFAF940(v110);
  swift_unknownObjectRelease();

  if (!v137)
  {
    return 0;
  }

  return 1;
}

id sub_20CF78BA0(void *a1)
{
  v12[1] = &unk_28251B0C8;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    return [objc_allocWithZone(HUServiceDetailsViewController) initWithServiceLikeItem_];
  }

  if (qword_27C81A258 != -1)
  {
    swift_once();
  }

  v4 = sub_20D565988();
  __swift_project_value_buffer(v4, qword_27C81FC58);
  v5 = a1;
  v6 = sub_20D565968();
  v7 = sub_20D567EA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12[0] = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, v12);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20CEE913C(0xD000000000000028, 0x800000020D5D0B30, v12);
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_20CEB6000, v6, v7, "%s - %s Failed to get service details view controller for item (%@)", v8, 0x20u);
    sub_20CEF928C(v9, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  return 0;
}

uint64_t sub_20CF78DC8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a4;
  v54 = a3;
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820470);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v8 = sub_20D5644D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D9D8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_20D5666F8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v56 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  MEMORY[0x28223BE20](v22);
  v55 = &v47 - v25;
  sub_20CF76C2C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20CEF928C(v7, &qword_27C820470);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_10:
    sub_20CEF928C(v17, &qword_27C81D9D8);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  v60 = &unk_28251B0C8;
  v26 = swift_dynamicCastObjCProtocolConditional();
  if (v26)
  {
    v51 = v24;
    v49 = v26;
    v27 = objc_opt_self();
    v28 = a1;
    v29 = [v27 sharedDispatcher];
    v30 = [v29 home];

    if (v30)
    {
      v48 = v28;
      v50 = v30;
      v31 = v49;
      v32 = [v49 accessories];
      sub_20CECF940(0, &qword_28111FFF0);
      sub_20CF76A80();
      v33 = sub_20D567D08();

      v34 = sub_20CFAF940(v33);

      v35 = type metadata accessor for AccessoryDetailsHelper(0);
      v36 = objc_allocWithZone(v35);
      v37 = sub_20D04EE74(v31, v50, v34);
      (*(v9 + 16))(v12, v14, v8);
      v58 = v35;
      v59 = sub_20CF7968C(&qword_27C81D9E0, type metadata accessor for AccessoryDetailsHelper);
      v57 = v37;
      v38 = v53;
      sub_20CEC81F4(v52);
      sub_20D5666E8();

      (*(v9 + 8))(v14, v8);
      v39 = 0;
    }

    else
    {
      (*(v9 + 8))(v14, v8);

      v39 = 1;
    }

    v24 = v51;
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v39 = 1;
  }

  (*(v19 + 56))(v17, v39, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_10;
  }

  v41 = v55;
  (*(v19 + 32))(v55, v17, v18);
  v42 = v24;
  v43 = *(v19 + 16);
  v43(v42, v41, v18);
  v44 = objc_allocWithZone(type metadata accessor for DetailsHostingController());
  v44[qword_27C820460] = 0;
  *&v44[qword_27C820468] = 0;
  v43(v56, v42, v18);
  v45 = sub_20D566C08();
  v46 = *(v19 + 8);
  v46(v42, v18);
  v46(v41, v18);
  return v45;
}

id _s6HomeUI22AccessoryDetailsRouterC11detailsView3for20navigationController7dismissSo33HUDetailsPresentationDelegateHost_So06UIViewJ0CXcSgSo6HFItemC_So012UINavigationJ0CSgyycSgtFZ_0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27C81A270 != -1)
  {
    swift_once();
  }

  v8 = sub_20D565988();
  __swift_project_value_buffer(v8, qword_27C81FC88);
  v9 = a1;
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D0AD0, &v17);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20CEE913C(0xD00000000000002ELL, 0x800000020D5D0B00, &v17);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s - %s item (%@)", v12, 0x20u);
    sub_20CEF928C(v13, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v14, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  if (sub_20CF775A0(v9))
  {

    return sub_20CF78DC8(v9, a3, a4, a2);
  }

  else
  {

    return sub_20CF78BA0(v9);
  }
}

uint64_t sub_20CF7968C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20CF7973C()
{
  result = [objc_allocWithZone(type metadata accessor for DashboardLaunchCoordinator()) init];
  qword_281120668 = result;
  return result;
}

id static DashboardLaunchCoordinator.shared.getter()
{
  if (qword_281120660 != -1)
  {
    swift_once();
  }

  v1 = qword_281120668;

  return v1;
}

void sub_20CF79884(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 selectedHomeAppTabIdentifier];

  if (v8)
  {
    v9 = sub_20D567838();
    v11 = v10;
    if (v9 == sub_20D567838() && v11 == v12)
    {
    }

    else
    {
      v14 = sub_20D568BF8();

      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    v15 = OBJC_IVAR___HUDashboardLaunchCoordinator_prefetchTask;
    if (!*(v1 + OBJC_IVAR___HUDashboardLaunchCoordinator_prefetchTask))
    {
      v16 = [a1 accessories];
      sub_20CECF940(0, &qword_28111FFF0);
      v17 = sub_20D567A78();

      v18 = sub_20CF7A0AC(v17, ObjectType, sub_20CF79C68);

      v19 = [a1 hf_characteristicValueManager];
      v20 = sub_20D5677F8();
      [v19 beginTransactionWithReason_];

      v21 = sub_20D5663C8();
      sub_20CEF3050(v21);

      sub_20CECF940(0, &unk_27C81AE40);
      sub_20CF7B1A0();
      v22 = sub_20D567CD8();

      v23 = [v19 readValuesForCharacteristics_];

      v24 = sub_20D5677F8();
      [v19 commitTransactionWithReason_];

      if (v18 >> 62)
      {
        v25 = sub_20D568768();
      }

      else
      {
        v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = sub_20D567C58();
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v25;
      v27[5] = v23;
      v27[6] = ObjectType;
      v28 = v23;
      v29 = sub_20CF7ACF4(0, 0, v6, &unk_20D5BFE30, v27);

      sub_20CEF928C(v6, &qword_27C81C610);
      *(v1 + v15) = v29;
    }
  }
}

uint64_t sub_20CF79C68@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = [*a1 services];
  sub_20CECF940(0, &qword_27C81AEC0);
  v6 = sub_20D567A78();

  v7 = sub_20CF7A0AC(v6, a2, sub_20CF79D24);

  *a3 = v7;
  return result;
}

uint64_t sub_20CF79D24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v3 = sub_20D5645C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D564028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  sub_20D5684D8();
  v10 = sub_20D564018();
  (*(v7 + 8))(v9, v6);
  v24 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v11 = *(v10 + 56);
  v26 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v25 = (v12 + 63) >> 6;
  v28 = (v4 + 8);
  v29 = v4 + 16;
  v30 = v10;
  result = sub_20D5663C8();
  v16 = 0;
LABEL_5:
  while (v14)
  {
LABEL_10:
    v20 = *(v4 + 72);
    (*(v4 + 16))(v31, *(v30 + 48) + v20 * (__clz(__rbit64(v14)) | (v16 << 6)), v3);
    if (qword_27C81A200 != -1)
    {
      swift_once();
    }

    v14 &= v14 - 1;
    v21 = qword_27C838140;
    v22 = *(qword_27C838140 + 16) + 1;
    while (--v22)
    {
      sub_20CF7B3A4();
      v21 += v20;
      if (sub_20D5677E8())
      {
        result = (*v28)(v31, v3);
        goto LABEL_5;
      }
    }

    v17 = v31;
    v18 = sub_20D5684E8();
    result = (*v28)(v17, v3);
    if (v18)
    {
      MEMORY[0x20F31CEE0](result);
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      result = sub_20D567B08();
      v24 = v32;
    }
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v25)
    {

      *v23 = v24;
      return result;
    }

    v14 = *(v26 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20CF7A0AC(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, void (*a3)(unint64_t *__return_ptr, unint64_t *, uint64_t))
{
  v4 = v3;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v5 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = v5;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F31DD20](v6, v31);
      }

      else
      {
        if (v6 >= *(v35 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v6);
      }

      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v42 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = v4;
      a3(&v41, &v42, a2);
      if (v4)
      {
        goto LABEL_40;
      }

      v11 = v41;
      v12 = v41 >> 62;
      if (v41 >> 62)
      {
        v8 = sub_20D568768();
      }

      else
      {
        v8 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v7 >> 62;
      if (v7 >> 62)
      {
        v28 = sub_20D568768();
        v15 = v28 + v8;
        if (__OFADD__(v28, v8))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v7;
        }
      }

      else
      {
        v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v8;
        if (__OFADD__(v14, v8))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v16 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_20D568768();
        goto LABEL_21;
      }

      if (v13)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20D568888();
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v12)
      {
        v20 = v16;
        isUniquelyReferenced_nonNull_bridgeObject = sub_20D568768();
        v16 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v8 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      if (((v18 >> 1) - v17) < v8)
      {
        goto LABEL_44;
      }

      v39 = v7;
      v21 = v16 + 8 * v17 + 32;
      v32 = v16;
      if (v12)
      {
        if (v19 < 1)
        {
          goto LABEL_46;
        }

        sub_20CF7B340();
        for (i = 0; i != v19; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA18);
          v23 = sub_20CEFDF58(v40, i, v11);
          v25 = *v24;
          (v23)(v40, 0);
          *(v21 + 8 * i) = v25;
        }
      }

      else
      {
        sub_20CECF940(0, &unk_27C81AE40);
        swift_arrayInitWithCopy();
      }

      v4 = v10;
      v7 = v39;
      if (v8 >= 1)
      {
        v26 = *(v32 + 16);
        v9 = __OFADD__(v26, v8);
        v27 = v26 + v8;
        if (v9)
        {
          goto LABEL_45;
        }

        *(v32 + 16) = v27;
      }

LABEL_5:
      if (v6 == v33)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v5 = sub_20D568768();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20CF7A414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_20D5658D8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = sub_20D565898();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF7A560, 0, 0);
}

uint64_t sub_20CF7A560()
{
  if (qword_27C81A1F8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D5658C8();
  v0[14] = __swift_project_value_buffer(v1, qword_27C838128);
  sub_20D565888();
  v2 = sub_20D5658A8();
  v3 = sub_20D568098();
  if (sub_20D568508())
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    v6 = sub_20D565878();
    _os_signpost_emit_with_name_impl(&dword_20CEB6000, v2, v3, v6, "DashboardLaunchCoordinator.prefetchState", "Fetching %ld", v5, 0xCu);
    MEMORY[0x20F31FC70](v5, -1, -1);
  }

  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[8];
  v10 = v0[9];

  (*(v10 + 16))(v7, v8, v9);
  sub_20D565908();
  swift_allocObject();
  v0[15] = sub_20D5658F8();
  v11 = *(v10 + 8);
  v0[16] = v11;
  v0[17] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  v0[18] = v12;
  v13 = sub_20CECF940(0, &qword_27C81DA10);
  *v12 = v0;
  v12[1] = sub_20CF7A784;
  v14 = v0[3];

  return MEMORY[0x28216D8F8](v14, v13);
}

uint64_t sub_20CF7A784(void *a1)
{
  *(*v2 + 152) = v1;

  if (v1)
  {
    v4 = sub_20CF7AA6C;
  }

  else
  {

    v4 = sub_20CF7A8A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CF7A8A0()
{
  v1 = sub_20D5658A8();
  sub_20D5658E8();
  v2 = sub_20D568088();
  if (sub_20D568508())
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);

    sub_20D565918();

    if ((*(v5 + 88))(v3, v4) == *MEMORY[0x277D85B00])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
      v6 = "Successfully read all values";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_20D565878();
    _os_signpost_emit_with_name_impl(&dword_20CEB6000, v1, v2, v8, "DashboardLaunchCoordinator.prefetchState", v6, v7, 2u);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  (*(v0 + 128))(*(v0 + 88), *(v0 + 64));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CF7AA6C()
{
  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_20D5658A8();
  sub_20D5658E8();
  v4 = sub_20D568088();

  if (sub_20D568508())
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);

    sub_20D565918();

    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
    {
      v8 = 0;
      v9 = 0;
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      v10 = "Failed with error: %@";
      v9 = 2;
      v8 = 1;
    }

    v11 = *(v0 + 152);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = v9;
    *(v12 + 1) = v8;
    *(v12 + 2) = 2112;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    v16 = sub_20D565878();
    _os_signpost_emit_with_name_impl(&dword_20CEB6000, v3, v4, v16, "DashboardLaunchCoordinator.prefetchState", v10, v12, 0xCu);
    sub_20CEF928C(v13, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 128))(*(v0 + 80), *(v0 + 64));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_20CF7ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20CF646CC(a3, v22 - v9);
  v11 = sub_20D567C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20CEF928C(v10, &qword_27C81C610);
  }

  else
  {
    sub_20D567C48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20D567BA8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20D567878() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20CF7AFB8()
{
  v0 = sub_20D5658C8();
  __swift_allocate_value_buffer(v0, qword_27C838128);
  __swift_project_value_buffer(v0, qword_27C838128);
  return sub_20D5658B8();
}

uint64_t sub_20CF7B03C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA28);
  v0 = sub_20D5645C8();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D5BC410;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277D16138], v0);
  qword_27C838140 = v3;
  return result;
}

id DashboardLaunchCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardLaunchCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20CF7B1A0()
{
  result = qword_27C81FC10;
  if (!qword_27C81FC10)
  {
    sub_20CECF940(255, &unk_27C81AE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FC10);
  }

  return result;
}

uint64_t sub_20CF7B208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF5FFC;

  return sub_20CF7A414(a1, v4, v5, v6, v7);
}

unint64_t sub_20CF7B340()
{
  result = qword_27C820740;
  if (!qword_27C820740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820740);
  }

  return result;
}

unint64_t sub_20CF7B3A4()
{
  result = qword_27C81DA20;
  if (!qword_27C81DA20)
  {
    sub_20D5645C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DA20);
  }

  return result;
}

double sub_20CF7B3FC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 superview];
    if (v2)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      if (ObjectType != sub_20CECF940(0, &qword_27C81DA48))
      {
        v5 = v3;
        sub_20CF7B3FC(v3);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20D5BA040;
        *(inited + 32) = v1;
        v7 = v1;
        sub_20CF6BEF8(inited);

        return result;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v9 = swift_allocObject();
    *&result = 1;
    *(v9 + 16) = xmmword_20D5BA040;
    *(v9 + 32) = v1;
  }

  return result;
}

id sub_20CF7B528()
{
  result = [objc_allocWithZone(type metadata accessor for TipsManager()) init];
  qword_2811208A0 = result;
  return result;
}

id TipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TipsManager.shared.getter()
{
  if (qword_281120898 != -1)
  {
    swift_once();
  }

  v1 = qword_2811208A0;

  return v1;
}

uint64_t sub_20CF7B644()
{
  v1 = sub_20D566458();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip + 8);
  v7[0] = *(v0 + OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip);
  v7[1] = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277CE1A08], v1);
  sub_20CF7B774();
  sub_20D5663C8();
  sub_20D5662C8();
  (*(v2 + 8))(v4, v1);
}

unint64_t sub_20CF7B774()
{
  result = qword_2811207F0;
  if (!qword_2811207F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811207F0);
  }

  return result;
}

uint64_t sub_20CF7B904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_20D567EC8();
  sub_20CECF940(0, &qword_28111FAB8);
  v3 = sub_20D568518();
  sub_20D565868();

  v4 = sub_20D567C58();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_20CF18960(0, 0, v2, &unk_20D5BFE90, v5);
}

uint64_t sub_20CF7BA74()
{
  if (qword_2811208C8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA50);
  __swift_project_value_buffer(v1, qword_281120C68);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_20CEF5FFC;

  return MEMORY[0x282134AA8]();
}

id TipsManager.init()()
{
  v1 = &v0[OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip];
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x800000020D5D0CF0;
  v2 = &v0[OBJC_IVAR___HUTipsManager_Swift_unanalyzedCameraClipTip];
  *v2 = 0xD000000000000021;
  *(v2 + 1) = 0x800000020D5D0D10;
  v3 = &v0[OBJC_IVAR___HUTipsManager_Swift_homeEnergyTip];
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x800000020D5D0D40;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

id TipsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF7C1E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CEF934C;

  return sub_20CF7BA58();
}

uint64_t sub_20CF7C364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CEF5FFC;

  return sub_20CF7BA58();
}

uint64_t sub_20CF7C410(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_20D568768();
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

id AccessoryItemModule.__allocating_init(home:itemUpdater:itemProviderBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType] = 1;
  swift_unknownObjectWeakAssign();
  v10 = &v9[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_itemProviderBlock];
  *v10 = a3;
  *(v10 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithItemUpdater_, a2);

  swift_unknownObjectRelease();
  return v11;
}

id AccessoryItemModule.init(home:itemUpdater:itemProviderBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v9 = sub_20CF86924(a1, a2, a3, a4, v4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_20CF7C638()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = Strong;
  v3 = *(v0 + OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_itemProviderBlock);
  if (v3)
  {

    v4 = v3(v2);
    sub_20CEC9248(v4);
    v6 = v5;

    sub_20CEC8164(v3);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_20CF7C704(uint64_t a1)
{
  v3 = [v1 allItems];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v4 = sub_20D567D08();

  sub_20D5663C8();
  v5 = sub_20CF84068(v4, a1);

  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v5);

  v7 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  v8 = *(v1 + v7);
  switch(v8)
  {
    case 0:
      v10 = objc_allocWithZone(MEMORY[0x277D14850]);
      v11 = sub_20D5677F8();
      v12 = [v10 initWithIdentifier_];

      sub_20CF81C8C(v6, sub_20CF51348, sub_20CF50080);

      v17 = sub_20CF85584(v13, sub_20CF51348, sub_20CF85F00);
      sub_20CF819FC(&v17, sub_20CF832C4, sub_20CF82424);

      v14 = sub_20D567A58();

      [v12 setItems_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      result = swift_allocObject();
      *(result + 16) = xmmword_20D5BA040;
      *(result + 32) = v12;
      return result;
    case 2:
      v9 = sub_20CF7CAE8(v6);
      break;
    case 1:
      v9 = sub_20CF7CFCC(v6);
      break;
    default:
      result = sub_20D568C38();
      __break(1u);
      return result;
  }

  v16 = v9;

  return v16;
}

uint64_t sub_20CF7CAE8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = Strong;
  v4 = sub_20CF81C8C(a1, sub_20CF51348, sub_20CF50080);
  v5 = sub_20CFAFC20(v4);

  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v6 = sub_20D5663C8();
  sub_20CF7C410(v6, sub_20CF51348, sub_20CF860B4);
  v7 = sub_20D5663C8();
  aBlock[0] = sub_20CF85584(v7, sub_20CF51348, sub_20CF860B4);
  sub_20CF81A90(aBlock);

  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB88);
  v9 = sub_20D567A58();

  aBlock[4] = sub_20CF7CFC8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF87B80;
  aBlock[3] = &block_descriptor_92;
  v10 = _Block_copy(aBlock);

  v11 = [v8 createAccessoryCategorySectionsWithItems:v9 inHome:v3 sectionIdentifierBlock:v10];

  _Block_release(v10);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    if (!v11)
    {
      sub_20CECF940(0, &unk_28111FFD0);
      sub_20D567A78();
      v11 = sub_20D567A58();
    }

    v12 = objc_opt_self();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v13 = sub_20D567CD8();
    v14 = [v12 filterSections:v11 toDisplayedItems:v13];

    sub_20CECF940(0, &unk_28111FFD0);
    v15 = sub_20D567A78();

    return v15;
  }

  return result;
}

unint64_t sub_20CF7CE40(void *a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_20D568858();

  v9 = 0xD000000000000013;
  v10 = 0x800000020D5D1240;
  v6 = [a1 uniqueIdentifier];
  sub_20D5637E8();

  sub_20CF87A2C(&qword_2811209D0, 255, MEMORY[0x277CC95F0]);
  v7 = sub_20D568BB8();
  MEMORY[0x20F31CDB0](v7);

  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_20CF7CFCC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = Strong;
  sub_20CF81C8C(a1, sub_20CF51348, sub_20CF50080);

  sub_20CF7C410(v4, sub_20CF51348, sub_20CF85F00);
  v5 = sub_20D5663C8();
  aBlock[0] = sub_20CF85584(v5, sub_20CF51348, sub_20CF85F00);
  sub_20CF819FC(aBlock, sub_20CF82550, sub_20CF81F80);

  v6 = objc_opt_self();
  v7 = sub_20CECF940(0, &qword_281120AC0);
  v8 = sub_20D567A58();

  aBlock[4] = sub_20CF7D31C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF87B80;
  aBlock[3] = &block_descriptor_89;
  v9 = _Block_copy(aBlock);

  v10 = [v6 createRoomSectionsWithItems:v8 inHome:v3 sectionIdentifierBlock:v9];

  _Block_release(v9);
  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    if (!v10)
    {
      sub_20CECF940(0, &unk_28111FFD0);
      sub_20D567A78();
      v10 = sub_20D567A58();
    }

    v11 = objc_opt_self();
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v12 = sub_20D567CD8();
    v13 = [v11 filterSections:v10 toDisplayedItems:v12];

    sub_20CECF940(0, &unk_28111FFD0);
    v14 = sub_20D567A78();

    return v14;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20CF7D31C(void *a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v9, "roomSection-");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v6 = [a1 uniqueIdentifier];
  sub_20D5637E8();

  sub_20CF87A2C(&qword_2811209D0, 255, MEMORY[0x277CC95F0]);
  v7 = sub_20D568BB8();
  MEMORY[0x20F31CDB0](v7);

  (*(v3 + 8))(v5, v2);
  return v9[0];
}

id sub_20CF7D48C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
  v5 = v4;

  if (v5)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_20CF7D508(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = [objc_opt_self() defaultItemComparator];
  v8 = v7[2](v7, a1, a2);
  _Block_release(v7);
  if (v8)
  {
    return v8 == -1;
  }

  v11 = [a1 latestResults];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = sub_20D567758();

  v14 = sub_20D567838();
  if (!*(v13 + 16))
  {

LABEL_17:
    v20 = 0;
    v21 = 0;
    goto LABEL_19;
  }

  v16 = sub_20CEED668(v14, v15);
  v18 = v17;

  if (v18)
  {
    sub_20CED43FC(*(v13 + 56) + 32 * v16, v36);

    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v34;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v35;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {

    v20 = 0;
    v21 = 0;
  }

LABEL_19:
  v22 = [a2 latestResults];
  if (v22)
  {
    v23 = v22;
    v24 = sub_20D567758();

    v25 = sub_20D567838();
    if (*(v24 + 16))
    {
      v37 = v20;
      v27 = sub_20CEED668(v25, v26);
      v29 = v28;

      if (v29)
      {
        sub_20CED43FC(*(v24 + 56) + 32 * v27, v36);

        v30 = swift_dynamicCast();
        v31 = v34;
        if (v30)
        {
          v22 = v35;
        }

        else
        {
          v31 = 0;
          v22 = 0;
        }

        v20 = v37;
        if (!v21)
        {
LABEL_31:
          if (v22)
          {

            return 0;
          }

          return v8 == -1;
        }
      }

      else
      {

        v31 = 0;
        v22 = 0;
        v20 = v37;
        if (!v21)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {

      v31 = 0;
      v22 = 0;
      if (!v21)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v31 = 0;
    if (!v21)
    {
      goto LABEL_31;
    }
  }

  if (!v22)
  {

    return 1;
  }

  v36[0] = v20;
  v36[1] = v21;
  v34 = v31;
  v35 = v22;
  v32 = sub_20D563838();
  (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
  sub_20CEF44D8();
  v33 = sub_20D5685F8();
  sub_20CEF928C(v6, &qword_27C81CE50);

  return v33 == -1;
}

uint64_t sub_20CF7D8EC()
{
  v1 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CF7D930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t AccessoryItemModule.SectionGroupingType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id AccessoryItemModule.__allocating_init(itemUpdater:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithItemUpdater_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_20CF7DB04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF7DBC0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

char *AccessoryRepresentableItemModule.init(context:in:itemUpdater:)(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v3[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a1;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType] = 1;
  swift_unknownObjectWeakAssign();
  v8 = &v3[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_itemProviderBlock];
  *v8 = 0;
  *(v8 + 1) = 0;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for AccessoryItemModule();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v16, sel_initWithItemUpdater_, a3);

  swift_unknownObjectRelease();
  v11 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v12 = *&v9[v11];
  v13 = v10;

  v14 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v13[v14] = v12;

  return v13;
}

uint64_t sub_20CF7DE0C(uint64_t a1)
{
  v3 = (*(v1 + OBJC_IVAR___HUAccessoryRepresentableItemModule_context) + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = sub_20D5663C8();
    return sub_20CF8167C(v5, v4);
  }

  else
  {
    sub_20D5663C8();
  }

  return a1;
}

uint64_t sub_20CF7DEA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BF60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D5BC410;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 32) = sub_20CF869EC;
  *(v0 + 40) = v1;
  return v0;
}

void sub_20CF7DF30(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v23 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_20D5663C8();
    if (!*(v3 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v5 = *(Strong + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);
  v6 = Strong;
  sub_20D5663C8();
  v7 = v5;

  v8 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  swift_beginAccess();
  LODWORD(v8) = v7[v8];

  if (v8 == 1)
  {
    sub_20D0895BC(&v21);
    sub_20CEF928C(&v21, &qword_27C81BF00);
    v3 = v23;
  }

  if (*(v3 + 16))
  {
LABEL_7:
    v9 = *MEMORY[0x277D13E88];
    v10 = sub_20CEF9358(*MEMORY[0x277D13E88]);
    if (v11)
    {
      sub_20CED43FC(*(v3 + 56) + 32 * v10, &v21);
      v12 = sub_20CECF940(0, &unk_27C820BA0);
      if (swift_dynamicCast())
      {
        v13 = v20[0];
        v14 = [v20[0] identifier];
        if (!v14)
        {
          sub_20D567838();
          v14 = sub_20D5677F8();
        }

        v15 = *MEMORY[0x277D13758];
        v16 = [v20[0] iconModifiers];
        if (v16)
        {
          sub_20CECF940(0, &qword_28111FB20);
          sub_20D567758();

          v16 = sub_20D567738();
        }

        v17 = [objc_allocWithZone(MEMORY[0x277D14440]) initWithPackageIdentifier:v14 state:v15 modifiers:v16];

        v22 = v12;
        *&v21 = v17;
        sub_20CEC80B0(&v21, v20);
        v18 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_20CEEF89C(v20, v9, isUniquelyReferenced_nonNull_native);

        v3 = v18;
      }
    }
  }

LABEL_14:
  *a2 = v3;
}

unint64_t sub_20CF7E200()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = Strong;
  sub_20CF7E714(Strong);
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_18:

    v19 = MEMORY[0x277D84F90];
LABEL_19:
    v20 = sub_20CEF3314(v19);

    return v20;
  }

  while (1)
  {
    v6 = result;
    v28 = MEMORY[0x277D84F90];
    result = sub_20D5688F8();
    if (v5 < 0)
    {
      break;
    }

    v7 = 0;
    v8 = v6;
    v24 = OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider;
    v25 = v6 & 0xC000000000000001;
    v22 = v3;
    v23 = v6 & 0xFFFFFFFFFFFFFF8;
    v3 = v27;
    v9 = v5;
    v10 = v8;
    while (1)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v25)
      {
        result = MEMORY[0x20F31DD20](v7);
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_16;
        }

        result = *(v8 + 8 * v7 + 32);
      }

      v12 = result;
      v13 = *(v1 + v24);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = objc_allocWithZone(MEMORY[0x277D14C38]);
      v27[2] = sub_20CF869F4;
      v27[3] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v27[0] = sub_20CF3B6B0;
      v27[1] = &block_descriptor_11;
      v16 = _Block_copy(aBlock);
      v17 = [v15 initWithSourceProvider:v13 transformationBlock:v16];
      _Block_release(v16);

      v18 = [v17 asGeneric];

      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      result = sub_20D5688D8();
      ++v7;
      v8 = v10;
      if (v11 == v9)
      {

        v19 = v28;
        v3 = v22;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v21 = result;
    v5 = sub_20D568768();
    result = v21;
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}