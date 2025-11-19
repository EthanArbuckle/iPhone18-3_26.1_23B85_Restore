void sub_245855388()
{

  sub_245855C24(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_biometricBindingEnrollmentProvider);

  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView);
}

id sub_245855478(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2458555B0(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          return MEMORY[0x282151CD8]();
        }

        else
        {
          return MEMORY[0x282151CE8]();
        }
      }

      else
      {
        return MEMORY[0x282151CE0]();
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        return MEMORY[0x282151C90]();
      }

      else
      {
        return MEMORY[0x282151CC8]();
      }
    }

    else
    {
      return MEMORY[0x282151CB0]();
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return MEMORY[0x282151C98]();
    }

    else
    {
      return MEMORY[0x282151CD0]();
    }
  }

  else
  {
    return MEMORY[0x282151CB8]();
  }
}

unint64_t sub_245855634(void *a1)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsToBeReviewed);
  if (!v10)
  {
    sub_24590C714();
    v23 = sub_24590F344();
    v24 = sub_245910F64();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245767000, v23, v24, "Documents to be reviewed are nil. This is a developer error.", v25, 2u);
      MEMORY[0x245D77B40](v25, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return [objc_allocWithZone(MEMORY[0x277D75B48]) init];
  }

  v11 = sub_2459109C4();
  v12 = sub_24590C244();
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:v12];

  type metadata accessor for IdentityProofingDocumentPreviewTableViewCell();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    sub_24590C714();
    v26 = sub_24590F344();
    v27 = sub_245910F64();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_245767000, v26, v27, "cell cannot be nil developer error. This is a developer error.", v28, 2u);
      MEMORY[0x245D77B40](v28, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    return [objc_allocWithZone(MEMORY[0x277D75B48]) init];
  }

  v15 = v14;
  result = sub_24590C264();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (result >= *(v10 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = sub_24584FC48();
  v18 = sub_2459109C4();

  [v17 setText_];

  result = sub_24590C264();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < *(v10 + 16))
  {
    v19 = *(v10 + 32 + 24 * result + 16);
    v20 = v19;
    sub_245850694(v19);

    v21 = sub_24590C264();
    v22 = *(v10 + 16);

    if (v21 == v22 - 1)
    {
      [v15 setSeparatorInset_];
    }

    return v15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245855C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245854778(a1, v4, v5, v6);
}

uint64_t sub_245855D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_24585354C(a1, v4, v5, v6);
}

uint64_t sub_245855E30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_24585354C(a1, v4, v5, v6);
}

uint64_t sub_245855EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245851D6C(a1, v4, v5, v6);
}

void sub_245855F98()
{
  v1 = (v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_tableViewCellIdentifier);
  *v1 = 0xD000000000000024;
  v1[1] = 0x800000024592A3F0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsToBeReviewed) = 0;
  v2 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsRepository;
  if (qword_27EE286A0 != -1)
  {
    swift_once();
  }

  *(v0 + v2) = qword_27EE32B48;
  v3 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_context;
  v4 = objc_allocWithZone(MEMORY[0x277CD4790]);

  *(v0 + v3) = [v4 init];
  v5 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_eligibilityHelper;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v6 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v6 + 16) = sub_24590C8B4();
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_hasAttemptedToShowLivenessAlert) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingRequestTimeout) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView) = 0;
  sub_2459115D4();
  __break(1u);
}

uint64_t sub_245856144@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  *a2 = a1;
  v7 = *(a1 + 232);
  if (!v7 || !*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_24588C5BC(0x7453656E696C6E69, 0xEC00000070557065);
  if ((v9 & 1) == 0)
  {

LABEL_6:
    v14 = sub_24590E544();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    goto LABEL_7;
  }

  v10 = v8;
  v11 = *(v7 + 56);
  v12 = sub_24590E544();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);

  (*(v13 + 56))(v6, 0, 1, v12);
LABEL_7:
  v15 = type metadata accessor for InlineStepUpViewConfiguration();
  return sub_245856B38(v6, a2 + *(v15 + 20));
}

uint64_t sub_245856324()
{
  v1 = v0;
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2459109B4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for InlineStepUpViewConfiguration();
  sub_2457934F4(v1 + *(v7 + 20), v6);
  v8 = sub_24590E544();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_245793564(v6);
  }

  else
  {
    v10 = sub_24590E504();
    v12 = v11;
    (*(v9 + 8))(v6, v8);
    if (v12)
    {
      v13 = sub_24586C880(v10, v12);

      return v13;
    }
  }

  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_245856594()
{
  v1 = sub_24590C234();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2459109B4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for InlineStepUpViewConfiguration();
  sub_2457934F4(v0 + *(v6 + 20), v5);
  v7 = sub_24590E544();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_245793564(v5);
  }

  else
  {
    v9 = sub_24590E534();
    (*(v8 + 8))(v5, v7);
    if (v9)
    {
      if (v9[2])
      {
        v10 = v9[4];
        v11 = v9[5];

        v12 = sub_24586C880(v10, v11);

        return v12;
      }
    }
  }

  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v14 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_245856828()
{
  v1 = sub_24590C234();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2459109B4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for InlineStepUpViewConfiguration();
  sub_2457934F4(v0 + *(v6 + 20), v5);
  v7 = sub_24590E544();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_245793564(v5);
  }

  else
  {
    v9 = sub_24590E514();
    (*(v8 + 8))(v5, v7);
    if (v9)
    {
      if (v9[2])
      {
        v10 = v9[4];
        v11 = v9[5];

        v12 = sub_24586C880(v10, v11);

        return v12;
      }
    }
  }

  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v14 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t type metadata accessor for InlineStepUpViewConfiguration()
{
  result = qword_27EE2A9B0;
  if (!qword_27EE2A9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245856B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_245856BD0()
{
  type metadata accessor for IdentityProofingFlowManager();
  if (v0 <= 0x3F)
  {
    sub_245856C54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_245856C54()
{
  if (!qword_27EE2A9C0)
  {
    sub_24590E544();
    v0 = sub_2459112C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE2A9C0);
    }
  }
}

uint64_t sub_245856CD0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AAA0);
  v3[8] = swift_task_alloc();
  v4 = sub_24590ED94();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v3[11] = *(v5 + 64);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v3[13] = swift_task_alloc();
  v6 = sub_24590F354();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245856E68, 0, 0);
}

uint64_t sub_245856E68()
{
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_session))
  {
    sub_24590C714();
    v2 = sub_24590F344();
    v3 = sub_245910F54();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245767000, v2, v3, "Liveness Session already running. Unable to start new liveness session.", v8, 2u);
      MEMORY[0x245D77B40](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[5];
    v12 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_navigationController);
    *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_navigationController) = v11;
    v13 = v11;

    v0[17] = sub_245910D34();
    v0[18] = sub_245910D24();
    v15 = sub_245910CD4();

    return MEMORY[0x2822009F8](sub_24585703C, v15, v14);
  }
}

uint64_t sub_24585703C()
{
  v1 = *(v0 + 40);

  *(v0 + 152) = [v1 topViewController];

  return MEMORY[0x2822009F8](sub_2458570C4, 0, 0);
}

uint64_t sub_2458570C4()
{
  v2 = v0[12];
  v1 = v0[13];
  v25 = v2;
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v27 = v0[8];
  v8 = v0[5];
  v9 = *&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_originalTopVC];
  *&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_originalTopVC] = v0[19];

  v10 = sub_245910D64();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v26 = *(v3 + 16);
  v26(v2, v6, v5);
  v24 = v8;
  v11 = v7;
  v12 = sub_245910D24();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  (*(v3 + 32))(v15 + v13, v25, v5);
  *(v15 + v14) = v11;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_2458B90EC(0, 0, v1, &unk_24591B8B0, v15);

  v26(v27, v6, v5);
  (*(v3 + 56))(v27, 0, 1, v5);
  v17 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_config;
  swift_beginAccess();
  sub_24585EDD4(v27, &v11[v17], &qword_27EE2AAA0);
  swift_endAccess();
  v18 = *&v11[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_documentsRepository] + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_videoFrameRate;
  v19 = *v18;
  v20 = *(v18 + 8) == 0;
  v21 = 5;
  if (v20)
  {
    v21 = v19;
  }

  *&v11[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameRate] = v21;

  v22 = v0[1];

  return v22();
}

uint64_t sub_24585736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_24590ECD4();
  v6[5] = swift_task_alloc();
  v7 = sub_24590ED94();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_245910D34();
  v6[9] = sub_245910D24();
  v9 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245857490, v9, v8);
}

uint64_t sub_245857490()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = v0[3];

  (*(v3 + 16))(v1, v4, v2);
  type metadata accessor for RGBCaptureSessionManager(0);
  sub_24585E234(&qword_27EE2AAA8, type metadata accessor for RGBCaptureSessionManager);
  v17 = v5;
  sub_24585E234(&unk_27EE2AAB0, type metadata accessor for RGBCaptureSessionManager);
  sub_24590EEE4();
  swift_allocObject();
  v6 = v5;
  v7 = sub_24590EEF4();

  sub_24590ECC4();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ABD0));
  v9 = sub_24590FC44();
  sub_24590ED54();
  if ((v10 & 1) != 0 || (v11 = sub_24590C754(), v12 = 2, v11 != sub_24590C754()))
  {
    v12 = 0;
  }

  v13 = v0[4];
  v14 = v0[3];
  [v9 setOverrideUserInterfaceStyle_];
  *(v14 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_session) = v7;

  sub_24590EED4();
  [v13 pushViewController:v9 animated:1];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2458576BC(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_navigationController];
  if (v8)
  {
    v9 = *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_originalTopVC];
    if (v9)
    {
      v10 = [v8 popToViewController:v9 animated:a2 & 1];
    }

    else
    {
      v10 = [v8 popViewControllerAnimated_];
    }
  }

  v11 = sub_245910D64();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_245910D34();
  v12 = v2;
  v13 = a1;
  v14 = sub_245910D24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = a1;
  sub_2458B90EC(0, 0, v7, &unk_24591B898, v15);
}

uint64_t sub_245857848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_245910D34();
  v5[4] = sub_245910D24();
  v7 = sub_245910CD4();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2458578E0, v7, v6);
}

uint64_t sub_2458578E0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_session;
  v0[7] = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_session;
  v3 = *(v1 + v2);
  v0[8] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_2458579EC;
    v5 = v0[3];

    return MEMORY[0x282150850](v5);
  }

  else
  {

    *(v0[2] + v0[7]) = 0;

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2458579EC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_245857B30, v3, v2);
}

uint64_t sub_245857B30()
{

  *(v0[2] + v0[7]) = 0;

  v1 = v0[1];

  return v1();
}

void sub_245857BA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v37 - v8;
  v9 = sub_24590EEB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA98);
  MEMORY[0x28223BE20](v13);
  v15 = (&v37 - v14);
  *(v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_session) = 0;

  sub_245778F2C(a1, v15, &qword_27EE2AA98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    sub_24590C714();
    v17 = v16;
    v18 = sub_24590F344();
    v19 = sub_245910F64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_2459117D4();
      v24 = sub_2458CC378(v22, v23, &v40);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_245767000, v18, v19, "Error occured during liveness capture %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245D77B40](v21, -1, -1);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    (*(v38 + 8))(v7, v39);
    sub_2458576BC(v16, 1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager);
      if ((*(v26 + 144) & 3) == 2 || *(v26 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) == 1)
      {
        swift_unknownObjectRelease();
      }

      else
      {

        sub_2458ADD90();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    sub_24585E344(v12);
    sub_2457821D4(v12);
    v27 = sub_24590EE84();
    v29 = v28;
    v30 = objc_allocWithZone(MEMORY[0x277CBF758]);
    v31 = sub_24590C144();
    v32 = [v30 initWithData_];

    sub_24578FC28(v27, v29);
    if (v32)
    {
      sub_24585D2B4(v32, 2);
    }

    else
    {
      v33 = v37;
      sub_24590C714();
      v34 = sub_24590F344();
      v35 = sub_245910F64();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_245767000, v34, v35, "unable to process the RGB Selfie", v36, 2u);
        MEMORY[0x245D77B40](v36, -1, -1);
      }

      (*(v38 + 8))(v33, v39);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_245858094()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v5 = sub_24590C144();
  v11 = [v4 initWithData_];

  if (v11)
  {
    sub_24585D2B4(v11, 2);
    v6 = v11;
  }

  else
  {
    sub_24590C714();
    v7 = sub_24590F344();
    v8 = sub_245910F64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245767000, v7, v8, "unable to process the RGB Selfie Preview", v9, 2u);
      MEMORY[0x245D77B40](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_245858260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_245858280, 0, 0);
}

uint64_t sub_245858280()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    sub_245910D34();
    *(v0 + 40) = sub_245910D24();
    v3 = sub_245910CD4();

    return MEMORY[0x2822009F8](sub_24585836C, v3, v2);
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24585836C()
{

  sub_2458634E0();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24583E36C, 0, 0);
}

void sub_2458583E0(uint64_t a1)
{
  v141 = sub_24590EA74();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v142 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA90);
  MEMORY[0x28223BE20](v3 - 8);
  v152 = &v134 - v4;
  v5 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  v149 = *(v5 - 8);
  v150 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v143 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v151 = &v134 - v8;
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  v155 = v9;
  v156 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v147 = &v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v145 = &v134 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v138 = &v134 - v19;
  MEMORY[0x28223BE20](v18);
  v146 = &v134 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v140 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v134 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v134 - v27;
  v29 = sub_24590C094();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v134 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v144 = &v134 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v137 = &v134 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v148 = &v134 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v134 - v42;
  v45 = v44;
  sub_245778F2C(a1, v28, &unk_27EE29470);
  v46 = *(v45 + 48);
  if (v46(v28, 1, v29) == 1)
  {
    sub_245778F94(v28, &unk_27EE29470);
    sub_24590C714();
    v47 = sub_24590F344();
    v48 = sub_245910F64();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_245767000, v47, v48, "Liveness video not recorded. Skipping upload.", v49, 2u);
      MEMORY[0x245D77B40](v49, -1, -1);
    }

    (*(v156 + 8))(v13, v155);
  }

  else
  {
    v136 = v45;
    v50 = *(v45 + 32);
    v153 = v43;
    v135 = v50;
    v50(v43, v28, v29);
    sub_24590C6C4();
    v51 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_proofingFlowManager;
    v52 = *(v154 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_proofingFlowManager);
    v53 = v29;
    if (*(v52 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp) == 1)
    {
      v54 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_auxiliaryURL;
      swift_beginAccess();
      sub_245778F2C(v52 + v54, v26, &unk_27EE29470);
      if (v46(v26, 1, v29) == 1)
      {
        sub_245778F94(v26, &unk_27EE29470);
        (*(v139 + 104))(v142, *MEMORY[0x277CFFBA0], v141);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_24585E234(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        v55 = swift_allocError();
        sub_24590EA94();
        v56 = v138;
        sub_24590C714();
        sub_24590C724();
        (*(v156 + 8))(v56, v155);
        (*(v136 + 8))(v153, v29);
      }

      else
      {
        v69 = v148;
        v135(v148, v26, v29);
        v70 = v146;
        sub_24590C714();
        v71 = v136;
        v72 = *(v136 + 16);
        v73 = v137;
        v72(v137, v153, v53);
        v74 = v144;
        v145 = v72;
        v72(v144, v69, v53);
        v75 = sub_24590F344();
        v76 = sub_245910F54();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v157 = v140;
          *v77 = 136315394;
          v78 = sub_24590C024();
          v79 = v73;
          v80 = v71;
          v82 = v81;
          v83 = *(v80 + 8);
          v141 = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v83(v79, v53);
          v84 = sub_2458CC378(v78, v82, &v157);
          v142 = v51;
          v85 = v84;

          *(v77 + 4) = v85;
          *(v77 + 12) = 2080;
          v86 = v144;
          v87 = sub_24590C024();
          v89 = v88;
          v147 = v83;
          v83(v86, v53);
          v90 = sub_2458CC378(v87, v89, &v157);

          *(v77 + 14) = v90;
          _os_log_impl(&dword_245767000, v75, v76, "Inline step up video recordings complete. The video data exists at urls %s, and %s", v77, 0x16u);
          v91 = v140;
          swift_arrayDestroy();
          MEMORY[0x245D77B40](v91, -1, -1);
          MEMORY[0x245D77B40](v77, -1, -1);

          (*(v156 + 8))(v146, v155);
        }

        else
        {

          v114 = *(v71 + 8);
          v141 = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v114(v74, v53);
          v147 = v114;
          v114(v73, v53);
          (*(v156 + 8))(v70, v155);
        }

        v115 = v151;
        v116 = v153;
        v117 = v145;
        (v145)(v151, v153, v53);
        v118 = sub_24590C014();
        v119 = v150;
        v120 = &v115[*(v150 + 20)];
        *v120 = v118;
        v120[1] = v121;
        v122 = v143;
        v123 = v148;
        (v117)(v143, v148, v53);
        v124 = sub_24590C014();
        v125 = (v122 + *(v119 + 20));
        *v125 = v124;
        v125[1] = v126;
        v127 = v152;
        sub_24585E27C(v122, v152, type metadata accessor for IdentityProofingLivenessVideoData);
        (*(v149 + 56))(v127, 0, 1, v119);

        sub_24586F158(v115, v127);

        sub_245778F94(v127, &qword_27EE2AA90);
        sub_24585E2E4(v122, type metadata accessor for IdentityProofingLivenessVideoData);
        sub_24585E2E4(v115, type metadata accessor for IdentityProofingLivenessVideoData);
        v128 = v147;
        (v147)(v123, v53);
        (v128)(v116, v53);
      }
    }

    else
    {
      v142 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_proofingFlowManager;
      if (*(v52 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPerformInlineStepUp) == 1)
      {
        v57 = v145;
        sub_24590C714();
        v58 = v136;
        v59 = v153;
        (*(v136 + 16))(v35, v153, v53);
        v60 = sub_24590F344();
        v61 = sub_245910F54();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v158[0] = v63;
          *v62 = 136315138;
          v64 = sub_24590C024();
          v65 = v53;
          v67 = v66;
          (*(v58 + 8))(v35, v65);
          v68 = sub_2458CC378(v64, v67, v158);
          v53 = v65;
          v59 = v153;

          *(v62 + 4) = v68;
          _os_log_impl(&dword_245767000, v60, v61, "Live Photo video exists at %s, will prepare after inline step up.", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x245D77B40](v63, -1, -1);
          MEMORY[0x245D77B40](v62, -1, -1);

          (*(v156 + 8))(v145, v155);
        }

        else
        {

          (*(v58 + 8))(v35, v53);
          (*(v156 + 8))(v57, v155);
        }

        v111 = *&v142[v154];
        v112 = v140;
        v135(v140, v59, v53);
        (*(v58 + 56))(v112, 0, 1, v53);
        v113 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_auxiliaryURL;
        swift_beginAccess();

        sub_24585EDD4(v112, v111 + v113, &unk_27EE29470);
        swift_endAccess();
      }

      else
      {
        v92 = v153;
        v93 = sub_24590C014();
        v95 = v94;
        sub_24590C714();
        v96 = v136;
        v148 = *(v136 + 16);
        (v148)(v32, v92, v53);

        v97 = sub_24590F344();
        v98 = sub_245910F54();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v146 = v53;
          v100 = v99;
          v145 = swift_slowAlloc();
          v158[0] = v145;
          *v100 = 136315394;
          LODWORD(v144) = v98;
          v101 = sub_24590C064();
          v103 = v102;
          v104 = *(v96 + 8);
          v143 = v93;
          v104(v32, v146);
          v105 = sub_2458CC378(v101, v103, v158);
          v92 = v153;

          *(v100 + 4) = v105;
          *(v100 + 12) = 2080;
          if (v95)
          {
            v106 = v143;
          }

          else
          {
            v106 = 0x6E776F6E6B6E75;
          }

          if (v95)
          {
            v107 = v95;
          }

          else
          {
            v107 = 0xE700000000000000;
          }

          v108 = sub_2458CC378(v106, v107, v158);

          *(v100 + 14) = v108;
          _os_log_impl(&dword_245767000, v97, v144, "Liveness video recording complete. The video data exists in the url %s with file size %s", v100, 0x16u);
          v109 = v145;
          swift_arrayDestroy();
          MEMORY[0x245D77B40](v109, -1, -1);
          v110 = v100;
          v53 = v146;
          MEMORY[0x245D77B40](v110, -1, -1);
        }

        else
        {

          v104 = *(v96 + 8);
          v104(v32, v53);
        }

        (*(v156 + 8))(v147, v155);
        v129 = v151;
        (v148)(v151, v92, v53);
        v130 = sub_24590C014();
        v131 = &v129[*(v150 + 20)];
        *v131 = v130;
        v131[1] = v132;
        v133 = v152;
        (*(v149 + 56))(v152, 1, 1);

        sub_24586F158(v129, v133);

        sub_245778F94(v133, &qword_27EE2AA90);
        sub_24585E2E4(v129, type metadata accessor for IdentityProofingLivenessVideoData);
        v104(v92, v53);
      }
    }
  }
}

uint64_t sub_245859450(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v47 - v10;
  v11 = sub_24590C094();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v55 = sub_24590F354();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v20 = *(v12 + 16);
  v56 = a1;
  v20(v17, a1, v11);
  v54 = v20;
  v20(v15, v60, v11);
  v21 = sub_24590F344();
  v22 = sub_245910F54();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v49 = v22;
    v24 = v23;
    v50 = swift_slowAlloc();
    v61 = v50;
    *v24 = 136315394;
    v48 = v21;
    v25 = sub_24590C024();
    v51 = v9;
    v52 = v5;
    v27 = v26;
    v28 = *(v12 + 8);
    v28(v17, v11);
    v29 = sub_2458CC378(v25, v27, &v61);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = sub_24590C024();
    v32 = v31;
    v28(v15, v11);
    v9 = v51;
    v33 = sub_2458CC378(v30, v32, &v61);
    v5 = v52;

    *(v24 + 14) = v33;
    v34 = v48;
    _os_log_impl(&dword_245767000, v48, v49, "Inline step up video recordings complete. The video data exists at urls %s, and %s", v24, 0x16u);
    v35 = v50;
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v35, -1, -1);
    MEMORY[0x245D77B40](v24, -1, -1);
  }

  else
  {

    v36 = *(v12 + 8);
    v36(v15, v11);
    v36(v17, v11);
  }

  (*(v53 + 8))(v19, v55);
  v37 = v59;
  v38 = v54;
  v54(v59, v56, v11);
  v39 = sub_24590C014();
  v40 = v58;
  v41 = &v37[*(v58 + 20)];
  *v41 = v39;
  v41[1] = v42;
  v38(v9, v60, v11);
  v43 = sub_24590C014();
  v44 = &v9[*(v40 + 20)];
  *v44 = v43;
  v44[1] = v45;
  sub_24585E27C(v9, v5, type metadata accessor for IdentityProofingLivenessVideoData);
  (*(v57 + 56))(v5, 0, 1, v40);

  sub_24586F158(v37, v5);

  sub_245778F94(v5, &qword_27EE2AA90);
  sub_24585E2E4(v9, type metadata accessor for IdentityProofingLivenessVideoData);
  return sub_24585E2E4(v37, type metadata accessor for IdentityProofingLivenessVideoData);
}

uint64_t sub_245859A98(uint64_t a1, unint64_t a2, const char *a3, void (*a4)(void, void))
{
  v7 = v4;
  v10 = sub_24590F354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();

  v14 = sub_24590F344();
  v15 = sub_245910F84();

  v16 = os_log_type_enabled(v14, v15);
  v25 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v23 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = a4;
    v20 = v19;
    v26 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2458CC378(a1, a2, &v26);
    _os_log_impl(&dword_245767000, v14, v15, a3, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = v20;
    a4 = v24;
    MEMORY[0x245D77B40](v21, -1, -1);
    MEMORY[0x245D77B40](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a4(v25, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_245859D4C(const char *a1, void (*a2)(void))
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v8 = sub_24590F344();
  v9 = sub_245910F84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_245767000, v8, v9, a1, v10, 2u);
    MEMORY[0x245D77B40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_245859EC0(uint64_t a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&dword_245767000, v6, v7, "RGBCaptureSessionManager captureSelfieDidRestart from cause: %ld", v8, 0xCu);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_245866518(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24585A038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590EA74();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24585A154, 0, 0);
}

uint64_t sub_24585A154()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    sub_24590C714();
    v2 = sub_24590F344();
    v3 = sub_245910F84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_245767000, v2, v3, "RGBCaptureSessionManager captureSelfieObtainNewConfiguration", v4, 2u);
      MEMORY[0x245D77B40](v4, -1, -1);
    }

    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];

    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_24585A40C;
    v9 = v0[2];

    return sub_245866BB8(v9);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], *MEMORY[0x277CFF920], v0[4]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24585E234(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24585A40C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24585A598;
  }

  else
  {
    v2 = sub_24585A520;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24585A520()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24585A598()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_24585A610(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  v38 = a2;
  v34 = a1;
  v5 = sub_24590F354();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590EA74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24590EF14();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = type metadata accessor for RGBCaptureIMQResult(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameCount);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameCount) = v24;
      v25 = v38;
      sub_24590F1C4();
      v26 = sub_24585ABD4(v18);
      v36 = *(v13 + 8);
      v36(v18, v12);
      if (v26)
      {
        if (v26 == 1)
        {
          sub_24585C284(v25, Strong, v21);
          v27 = 0;
        }

        else
        {
          v29 = objc_allocWithZone(MEMORY[0x277CBF758]);
          v30 = [v29 initWithCVPixelBuffer_];
          v31 = [v30 imageByApplyingCGOrientation_];

          v32 = v31;
          sub_24585AEF4(v32, v25, Strong, v21);
          v35 = v32;

          v27 = 1;
        }

        sub_24590F1C4();
        (*(v13 + 104))(v16, *MEMORY[0x277CFF298], v12);
        sub_24585E234(&qword_27EE2AA88, MEMORY[0x277CFF2B8]);
        sub_245910BF4();
        sub_245910BF4();
        v33 = v36;
        v36(v16, v12);
        v33(v18, v12);
        if (v41 == v40 && (sub_24590E9C4() & 1) == 0)
        {
          sub_24586493C(v21);
        }

        sub_24590F1C4();
        sub_24585C8B4(v21);
        swift_unknownObjectRelease();
        v33(v18, v12);
        sub_24585E2E4(v21, type metadata accessor for RGBCaptureIMQResult);
        if (v27)
        {
        }
      }

      else
      {
        sub_24590F224();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x277CFFA40], v8);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24585E234(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v28 = swift_allocError();
    sub_24590EA94();
    sub_24590C714();
    sub_24590C3F4();
    (*(v35 + 1))(v7, v36);

    sub_24590F234();
  }
}

uint64_t sub_24585ABD4(uint64_t a1)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590EF14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277CFF2A8])
  {
    sub_24590C714();
    v12 = sub_24590F344();
    v13 = sub_245910F64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_245767000, v12, v13, "RGBLivenessImageType.none was given, skipping image quality.", v14, 2u);
      MEMORY[0x245D77B40](v14, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v11 == *MEMORY[0x277CFF2B0])
  {
LABEL_7:
    v16 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameRate);
    if (v16 != -1)
    {
      v17 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameCount);
      if (v16)
      {
        v17 %= v16;
      }

      return 2 * (v17 == 0);
    }

    return 2;
  }

  if (v11 != *MEMORY[0x277CFF290])
  {
    if (v11 == *MEMORY[0x277CFF280])
    {
      goto LABEL_7;
    }

    if (v11 == *MEMORY[0x277CFF298])
    {
      return 2;
    }

    if (v11 != *MEMORY[0x277CFF2A0] && v11 != *MEMORY[0x277CFF288])
    {
      (*(v8 + 8))(v10, v7);
      return 0;
    }
  }

  v18 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameRate);
  if (v18 == -1)
  {
    return 2;
  }

  v19 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameCount);
  if (v18)
  {
    v19 %= v18;
  }

  if (v19)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

int *sub_24585AEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v153 = a1;
  v154 = a4;
  v142 = sub_24590F1D4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_24590F354();
  v145 = *(v146 - 8);
  v7 = MEMORY[0x28223BE20](v146);
  v143 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v144 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0);
  MEMORY[0x28223BE20](v10 - 8);
  v149 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98);
  MEMORY[0x28223BE20](v12 - 8);
  v157 = &v135 - v13;
  v14 = sub_24590E9D4();
  v150 = *(v14 - 8);
  v151 = v14;
  MEMORY[0x28223BE20](v14);
  v159 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_24590C474();
  v158 = *(v161 - 8);
  v16 = MEMORY[0x28223BE20](v161);
  v147 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v135 - v18;
  v20 = sub_24590EF14();
  v156 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v137 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v135 - v23;
  v160 = sub_24590C814();
  v155 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F1A4();
  v162 = v27;
  v163 = v28;
  v164 = v29;
  v165 = v30;
  v166 = 0;
  sub_24590F1B4();
  sub_24590F164();
  v148 = v4;

  sub_245883448();

  sub_24590F194();
  sub_24590C7F4();
  sub_24590F1C4();
  v31 = v156;
  v32 = *(v156 + 88);
  v138 = v24;
  v139 = v20;
  result = v32(v24, v20);
  if (result == *MEMORY[0x277CFF2B0])
  {
    v34 = v158;
    (*(v158 + 104))(v19, *MEMORY[0x277CFF330], v161);
    v156 = *(v152 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor);
    v35 = v155;
    v36 = v157;
    v37 = v160;
    (*(v155 + 16))(v157, v26, v160);
    (*(v35 + 56))(v36, 0, 1, v37);
    v38 = sub_24590C454();
    v39 = v149;
    (*(*(v38 - 8) + 56))(v149, 1, 1, v38);

    v40 = v159;
    sub_245793D94(v153, v39, v36, 0, v19, 1, v159);

    sub_245778F94(v39, &qword_27EE28FA0);
    sub_245778F94(v36, &qword_27EE28F98);
    v41 = v154;
    v42 = sub_24586397C(v154, v40, v19, 1);
    v44 = v43;
    v45 = *(*(v156 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes);

    v46 = sub_245788840(v41, v45);

    (*(v150 + 8))(v40, v151);
    (*(v34 + 8))(v19, v161);
    (*(v35 + 8))(v26, v160);
    result = type metadata accessor for RGBCaptureIMQResult(0);
    v47 = (v41 + result[5]);
    *v47 = v42;
LABEL_6:
    v47[1] = v44;
    v64 = result[6];
    v65 = v46 & 1;
LABEL_15:
    *(v41 + v64) = v65;
    *(v41 + result[7]) = 0;
    return result;
  }

  v48 = v157;
  v49 = v158;
  v50 = v159;
  v51 = v19;
  v52 = v161;
  if (result != *MEMORY[0x277CFF290])
  {
    v66 = v31;
    v67 = result == *MEMORY[0x277CFF280];
    v68 = v26;
    v136 = v26;
    if (v67)
    {
      v69 = v158;
      v70 = v19;
      (*(v158 + 104))(v19, *MEMORY[0x277CFF310], v161);
      v156 = *(v152 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor);
      v71 = v155;
      v72 = v48;
      v73 = v160;
      (*(v155 + 16))(v48, v68, v160);
      (*(v71 + 56))(v48, 0, 1, v73);
      v74 = sub_24590C454();
      v75 = v149;
      (*(*(v74 - 8) + 56))(v149, 1, 1, v74);

      sub_245793D94(v153, v75, v72, 0, v19, 1, v50);

      sub_245778F94(v75, &qword_27EE28FA0);
      sub_245778F94(v72, &qword_27EE28F98);
      v76 = v50;
      v41 = v154;
      v77 = sub_24586397C(v154, v76, v70, 1);
      v79 = v78;
      v80 = *(*(v156 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes);

      v81 = sub_245788840(v41, v80);

      (*(v150 + 8))(v76, v151);
      (*(v69 + 8))(v70, v161);
    }

    else
    {
      v82 = v157;
      if (result == *MEMORY[0x277CFF298])
      {
        v83 = *(v148 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_selfieCount);
        v84 = __OFADD__(v83, 1);
        v85 = v83 + 1;
        v86 = v153;
        if (v84)
        {
          __break(1u);
          return result;
        }

        *(v148 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_selfieCount) = v85;
        sub_24590C7E4();
        v87 = v51;
        (*(v49 + 104))(v51, *MEMORY[0x277CFF310], v52);
        v88 = *(v152 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor);
        v89 = v155;
        v90 = v68;
        v91 = v49;
        v92 = v160;
        (*(v155 + 16))(v82, v90, v160);
        (*(v89 + 56))(v82, 0, 1, v92);
        v93 = sub_24590C454();
        v94 = v149;
        (*(*(v93 - 8) + 56))(v149, 1, 1, v93);

        sub_245793D94(v86, v94, v82, 0, v51, 0, v50);

        sub_245778F94(v94, &qword_27EE28FA0);
        sub_245778F94(v82, &qword_27EE28F98);
        v95 = v50;
        v41 = v154;
        v77 = sub_24586397C(v154, v95, v51, 0);
        v79 = v96;
        v97 = *(*(v88 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes);

        v81 = sub_245788840(v41, v97);

        (*(v150 + 8))(v95, v151);
        (*(v91 + 8))(v87, v161);
        (*(v89 + 8))(v136, v160);
        goto LABEL_14;
      }

      v103 = v158;
      v104 = v153;
      if (result != *MEMORY[0x277CFF2A0])
      {
        v113 = v152;
        if (result != *MEMORY[0x277CFF288])
        {
          sub_24590C714();
          v122 = v141;
          v123 = v140;
          v124 = v142;
          (*(v141 + 16))(v140, a2, v142);
          v125 = sub_24590F344();
          v126 = sub_245910F64();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *v127 = 134217984;
            v128 = v137;
            sub_24590F1C4();
            v129 = sub_24590EF04();
            v130 = v139;
            (*(v66 + 8))(v128, v139);
            (*(v122 + 8))(v123, v124);
            *(v127 + 4) = v129;
            _os_log_impl(&dword_245767000, v125, v126, "Liveness gave an invalid imageType: %ld", v127, 0xCu);
            MEMORY[0x245D77B40](v127, -1, -1);
            v131 = v154;
            v132 = v155;
            v133 = v160;
            v134 = v136;
          }

          else
          {
            (*(v122 + 8))(v123, v124);
            v131 = v154;
            v132 = v155;
            v133 = v160;
            v134 = v136;
            v130 = v139;
          }

          (*(v145 + 8))(v143, v146);
          (*(v132 + 8))(v134, v133);
          sub_24585E27C(v148 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_passingIMQResult, v131, type metadata accessor for RGBCaptureIMQResult);
          return (*(v66 + 8))(v138, v130);
        }

        v114 = *(v158 + 104);
        v115 = v161;
        v114(v51, *MEMORY[0x277CFF320], v161);
        v135 = v51;
        v116 = *(v113 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor);

        sub_2457966A8(v104, v136, v51, 0, v50);

        v117 = v147;
        v114(v147, *MEMORY[0x277CFF330], v115);
        v118 = v50;
        v41 = v154;
        v77 = sub_24586397C(v154, v118, v117, 0);
        v79 = v119;
        v120 = *(v103 + 8);
        v120(v117, v115);
        v121 = *(*(v116 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes);

        v81 = sub_245788840(v41, v121);

        (*(v150 + 8))(v118, v151);
        v120(v135, v115);
        (*(v155 + 8))(v136, v160);
LABEL_14:
        result = type metadata accessor for RGBCaptureIMQResult(0);
        v98 = (v41 + result[5]);
        *v98 = v77;
        v98[1] = v79;
        v64 = result[6];
        v65 = v81 & 1;
        goto LABEL_15;
      }

      v105 = v51;
      (*(v158 + 104))(v51, *MEMORY[0x277CFF320], v161);
      v156 = *(v152 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor);
      v71 = v155;
      v106 = v48;
      v107 = v103;
      v73 = v160;
      (*(v155 + 16))(v48, v68, v160);
      (*(v71 + 56))(v48, 0, 1, v73);
      v108 = sub_24590C454();
      v109 = v149;
      (*(*(v108 - 8) + 56))(v149, 1, 1, v108);

      sub_245793D94(v104, v109, v106, 0, v51, 1, v50);

      sub_245778F94(v109, &qword_27EE28FA0);
      sub_245778F94(v106, &qword_27EE28F98);
      v110 = v50;
      v41 = v154;
      v77 = sub_24586397C(v154, v110, v51, 1);
      v79 = v111;
      v112 = *(*(v156 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes);

      v81 = sub_245788840(v41, v112);

      (*(v150 + 8))(v110, v151);
      (*(v107 + 8))(v105, v161);
    }

    (*(v71 + 8))(v136, v73);
    goto LABEL_14;
  }

  v53 = sub_24590F184();
  if ((v53 & 0x8000000000000000) == 0)
  {
    v54 = *MEMORY[0x277CFF330];
    v55 = v49;
    v56 = *(v49 + 104);
    v135 = v51;
    v56(v51, v54, v52);
    v136 = v26;
    v156 = *(v152 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor);

    v57 = v26;
    v58 = v135;
    sub_2457966A8(v153, v57, v135, v53, v50);

    v59 = v147;
    v56(v147, v54, v52);
    v41 = v154;
    v60 = v159;
    v157 = sub_24586397C(v154, v159, v59, 0);
    v44 = v61;
    v62 = *(v55 + 8);
    v62(v59, v52);
    v63 = *(*(v156 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes);

    v46 = sub_245788840(v41, v63);

    (*(v150 + 8))(v60, v151);
    v62(v58, v52);
    (*(v155 + 8))(v136, v160);
    result = type metadata accessor for RGBCaptureIMQResult(0);
    v47 = (v41 + result[5]);
    *v47 = v157;
    goto LABEL_6;
  }

  v99 = v144;
  sub_24590C714();
  v100 = sub_24590F344();
  v101 = sub_245910F64();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134217984;
    *(v102 + 4) = v53;
    _os_log_impl(&dword_245767000, v100, v101, "Received invalid video sequence %ld, skipping video quality checks.", v102, 0xCu);
    MEMORY[0x245D77B40](v102, -1, -1);
  }

  (*(v145 + 8))(v99, v146);
  (*(v155 + 8))(v26, v160);
  return sub_24585E27C(v148 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_passingIMQResult, v154, type metadata accessor for RGBCaptureIMQResult);
}

int *sub_24585C284@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v48 = sub_24590F1D4();
  v42 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24590F354();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590EF14();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = sub_24590C474();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24590C814();
  v17 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F1A4();
  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v23;
  v56 = 0;
  sub_24590F1B4();
  v51 = 1;
  sub_24590C7F4();
  sub_24590F1C4();
  v44 = v8;
  v24 = (*(v8 + 88))(v12, v7);
  v25 = MEMORY[0x277CFF330];
  if (v24 == *MEMORY[0x277CFF2B0] || v24 == *MEMORY[0x277CFF290] || (v25 = MEMORY[0x277CFF310], v24 == *MEMORY[0x277CFF280]) || v24 == *MEMORY[0x277CFF298] || (v25 = MEMORY[0x277CFF320], v24 == *MEMORY[0x277CFF2A0]) || v24 == *MEMORY[0x277CFF288])
  {
    (*(v14 + 104))(v16, *v25, v13);

    sub_24579748C(v16, a3);

    (*(v14 + 8))(v16, v13);
    (*(v17 + 8))(v19, v50);
    result = type metadata accessor for RGBCaptureIMQResult(0);
    v37 = (a3 + result[5]);
    *v37 = 0;
    v37[1] = 0;
    *(a3 + result[6]) = 0;
    *(a3 + result[7]) = 1;
  }

  else
  {
    sub_24590C714();
    v27 = v41;
    v26 = v42;
    (*(v42 + 16))(v41, a1, v48);
    v28 = sub_24590F344();
    v29 = sub_245910F64();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v27;
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v39 = v29;
      v32 = v40;
      v49 = v28;
      v33 = v30;
      sub_24590F1C4();
      v38 = sub_24590EF04();
      v34 = v44;
      (*(v44 + 8))(v32, v7);
      v35 = v33;
      v28 = v49;
      (*(v26 + 8))(v35, v48);
      *(v31 + 4) = v38;
      _os_log_impl(&dword_245767000, v28, v39, "Skipping lightweight checks, invalid image type: %ld", v31, 0xCu);
      MEMORY[0x245D77B40](v31, -1, -1);
    }

    else
    {
      (*(v26 + 8))(v27, v48);
      v34 = v44;
    }

    (*(v43 + 8))(v47, v45);
    (*(v17 + 8))(v19, v50);
    sub_24585E27C(v46 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_passingIMQResult, a3, type metadata accessor for RGBCaptureIMQResult);
    return (*(v34 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_24585C8B4(uint64_t a1)
{
  v2 = sub_24590E9D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + *(type metadata accessor for RGBCaptureIMQResult(0) + 28)) & 1) == 0)
  {
    sub_24585CC28(a1);
  }

  sub_24590F244();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CFF778])
  {
    return sub_24590F1E4();
  }

  if (v6 == *MEMORY[0x277CFF828])
  {
    sub_24590F254();
    sub_24590F204();
    return sub_24590F214();
  }

  if (v6 == *MEMORY[0x277CFF840] || v6 == *MEMORY[0x277CFF838] || v6 == *MEMORY[0x277CFF7A0] || v6 == *MEMORY[0x277CFF7C0] || v6 == *MEMORY[0x277CFF780] || v6 == *MEMORY[0x277CFF7A8] || v6 == *MEMORY[0x277CFF770] || v6 == *MEMORY[0x277CFF788] || v6 == *MEMORY[0x277CFF800] || v6 == *MEMORY[0x277CFF818] || v6 == *MEMORY[0x277CFF7D8] || v6 == *MEMORY[0x277CFF7F8])
  {
    sub_24590F254();
    return sub_24590F214();
  }

  if (v6 == *MEMORY[0x277CFF798])
  {
    sub_24590F254();
    sub_24590F1F4();
    return sub_24590F214();
  }

  if (v6 == *MEMORY[0x277CFF7B8])
  {
    return sub_24590F214();
  }

  if (v6 == *MEMORY[0x277CFF790] || v6 == *MEMORY[0x277CFF7B0])
  {
    return sub_24590F1E4();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24585CC28(uint64_t a1)
{
  v44 = a1;
  v1 = sub_24590E9D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v40 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29BF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v35[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v35[-v12];
  v14 = sub_24590EF14();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 104))(v17, *MEMORY[0x277CFF298], v14);
  sub_24585E234(&qword_27EE2AA88, MEMORY[0x277CFF2B8]);
  sub_245910BF4();
  sub_245910BF4();
  (*(v15 + 8))(v17, v14);
  if (v46 == v45)
  {
    return 1;
  }

  v37 = *(v2 + 16);
  v37(v13, v44, v1);
  v38 = *(v2 + 56);
  v39 = v2 + 56;
  v38(v13, 0, 1, v1);
  v19 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_lastResult;
  v20 = v41;
  swift_beginAccess();
  v21 = *(v4 + 48);
  sub_245778F2C(v13, v6, &qword_27EE295E8);
  sub_245778F2C(v20 + v19, &v6[v21], &qword_27EE295E8);
  v22 = *(v2 + 48);
  if (v22(v6, 1, v1) == 1)
  {
    sub_245778F94(v13, &qword_27EE295E8);
    v23 = v22(&v6[v21], 1, v1);
    v24 = v43;
    if (v23 == 1)
    {
      result = sub_245778F94(v6, &qword_27EE295E8);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_245778F2C(v6, v42, &qword_27EE295E8);
  if (v22(&v6[v21], 1, v1) == 1)
  {
    sub_245778F94(v13, &qword_27EE295E8);
    (*(v2 + 8))(v42, v1);
    v24 = v43;
LABEL_8:
    sub_245778F94(v6, &unk_27EE29BF0);
LABEL_9:
    v25 = 1;
    v26 = v44;
    v27 = &qword_27EE2A000;
    goto LABEL_12;
  }

  v28 = v40;
  (*(v2 + 32))(v40, &v6[v21], v1);
  sub_24585E234(&unk_27EE29C00, MEMORY[0x277CFF850]);
  v29 = v42;
  v36 = sub_245910934();
  v30 = *(v2 + 8);
  v30(v28, v1);
  sub_245778F94(v13, &qword_27EE295E8);
  v30(v29, v1);
  result = sub_245778F94(v6, &qword_27EE295E8);
  v24 = v43;
  if ((v36 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v27 = &qword_27EE2A000;
  v31 = *(v20 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_resultCount);
  v32 = __OFADD__(v31, 1);
  v25 = v31 + 1;
  v26 = v44;
  if (v32)
  {
    __break(1u);
    return result;
  }

LABEL_12:
  v33 = v27[323];
  *(v20 + v33) = v25;
  v37(v24, v26, v1);
  v34 = v38;
  v38(v24, 0, 1, v1);
  swift_beginAccess();
  sub_24585EDD4(v24, v20 + v19, &qword_27EE295E8);
  swift_endAccess();
  result = 0;
  if (*(v20 + v33) >= 3)
  {
    v34(v24, 1, 1, v1);
    swift_beginAccess();
    sub_24585EDD4(v24, v20 + v19, &qword_27EE295E8);
    swift_endAccess();
    result = 1;
    *(v20 + v33) = 0;
  }

  return result;
}

uint64_t sub_24585D2B4(void *a1, int a2)
{
  v4 = sub_24590C474();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_24590F354();
  v7 = *(v39 - 8);
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v35[-v10];
  v12 = [objc_opt_self() standardUserDefaults];
  sub_24590D8D4();
  v13 = sub_245910F94();

  if ((v13 & 1) == 0)
  {
    return sub_245781818(a1, a2);
  }

  v36 = a2;
  sub_24590C714();
  v14 = sub_24590F344();
  v15 = sub_245910F54();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_245767000, v14, v15, "Internal settings enabled, will inject selfie image.", v16, 2u);
    MEMORY[0x245D77B40](v16, -1, -1);
  }

  v17 = *(v7 + 8);
  v18 = v39;
  v17(v11, v39);
  v19 = sub_24590C3E4();
  if (v19)
  {
    v20 = v19;
    v21 = v37;
    (*(v37 + 104))(v6, *MEMORY[0x277CFF310], v4);
    sub_24590C464();
    (*(v21 + 8))(v6, v4);
    v22 = sub_2459109C4();

    v23 = [v20 getReplacementProofingImage_];

    swift_unknownObjectRelease();
    if (v23)
    {
      v24 = sub_24590C154();
      v26 = v25;

      v27 = objc_allocWithZone(MEMORY[0x277CBF758]);
      sub_24578FB80(v24, v26);
      v28 = sub_24590C144();
      v29 = [v27 initWithData_];

      sub_24578FC28(v24, v26);
      if (v29)
      {
        sub_245781818(v29, v36);
        sub_24590C6C4();

        return sub_24578FC28(v24, v26);
      }

      sub_24578FC28(v24, v26);
    }
  }

  v31 = v38;
  sub_24590C714();
  v32 = sub_24590F344();
  v33 = sub_245910F64();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_245767000, v32, v33, "Failed to inject selfie image.", v34, 2u);
    MEMORY[0x245D77B40](v34, -1, -1);
  }

  return (v17)(v31, v18);
}

id sub_24585D750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RGBCaptureSessionManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24585D918()
{
  sub_24585DB0C(319, &qword_27EE2AA60, MEMORY[0x277CFF270]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RGBCaptureIMQResult(319);
    if (v1 <= 0x3F)
    {
      sub_24585DB0C(319, &qword_280ADF778, MEMORY[0x277CFF850]);
      if (v2 <= 0x3F)
      {
        sub_24590CB54();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24585DB0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2459112C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24585DBA8()
{
  sub_24590C094();
  if (v0 <= 0x3F)
  {
    sub_24585DC2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24585DC2C()
{
  if (!qword_27EE289B8)
  {
    v0 = sub_2459112C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE289B8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24585DE34()
{
  sub_24590E9D4();
  if (v0 <= 0x3F)
  {
    sub_24585DC2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24585DED4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_245910D64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_2458B93DC(0, 0, v3, &unk_24591B880, v5);
}

uint64_t sub_24585E020(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24585E0C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2457A18F4;

  return sub_24585A038(a1);
}

uint64_t sub_24585E180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245858260(a1, v4, v5, v6);
}

uint64_t sub_24585E234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24585E27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24585E2E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24585E344(uint64_t a1)
{
  v2 = sub_24590EEB4();
  v83 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v85 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v84 = &v78 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v89 = &v78 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v88 = &v78 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v78 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v78 - v15;
  v16 = sub_24590F354();
  v81 = *(v16 - 8);
  v82 = v16;
  MEMORY[0x28223BE20](v16);
  v90 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24590ED04();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24590EDF4();
  v23 = *(v19 + 104);
  v23(v21, *MEMORY[0x277CFF268], v18);
  v24 = sub_24590ECF4();
  v25 = *(v19 + 8);
  v25(v21, v18);
  if (v24 == v22)
  {
    v26 = 0xE700000000000000;
    v79 = 0x4E574F4E4B4E55;
  }

  else
  {
    v23(v21, *MEMORY[0x277CFF260], v18);
    v27 = sub_24590ECF4();
    v25(v21, v18);
    if (v27 == v22)
    {
      v26 = 0xE400000000000000;
      v79 = 1163282764;
    }

    else
    {
      v23(v21, *MEMORY[0x277CFF258], v18);
      v28 = sub_24590ECF4();
      v25(v21, v18);
      v29 = 0x5241535245564441;
      if (v28 != v22)
      {
        v29 = 0;
      }

      v79 = v29;
      if (v28 == v22)
      {
        v26 = 0xEB000000004C4149;
      }

      else
      {
        v26 = 0xE000000000000000;
      }
    }
  }

  sub_24590C714();
  v30 = v83;
  v31 = *(v83 + 16);
  v32 = v80;
  v31(v80, a1, v2);
  v31(v86, a1, v2);
  v31(v87, a1, v2);
  v31(v88, a1, v2);
  v31(v89, a1, v2);
  v33 = v84;
  v31(v84, a1, v2);
  v34 = v85;
  v31(v85, a1, v2);

  v35 = sub_24590F344();
  v36 = sub_245910F54();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v91 = v78;
    *v37 = 136316930;
    v38 = sub_2458CC378(v79, v26, &v91);
    LODWORD(v79) = v36;
    v39 = v38;

    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    v40 = sub_24590EE34();
    v41 = sub_2457E76F0();
    v42 = MEMORY[0x245D762C0](v40, v41);
    v44 = v43;

    v45 = *(v30 + 8);
    v45(v32, v2);
    v46 = sub_2458CC378(v42, v44, &v91);

    *(v37 + 14) = v46;
    *(v37 + 22) = 2080;
    v47 = v86;
    sub_24590EE14();
    v48 = v35;
    v49 = MEMORY[0x245D762C0]();
    v51 = v50;

    v45(v47, v2);
    v52 = sub_2458CC378(v49, v51, &v91);

    *(v37 + 24) = v52;
    *(v37 + 32) = 2080;
    v53 = v87;
    sub_24590EDE4();
    v54 = sub_245910E64();
    v56 = v55;
    v45(v53, v2);
    v57 = sub_2458CC378(v54, v56, &v91);

    *(v37 + 34) = v57;
    *(v37 + 42) = 2048;
    v58 = v88;
    v59 = sub_24590EDC4();
    v45(v58, v2);
    *(v37 + 44) = v59;
    *(v37 + 52) = 2080;
    v60 = v89;
    sub_24590EE54();
    v61 = sub_245910E64();
    v63 = v62;
    v45(v60, v2);
    v64 = sub_2458CC378(v61, v63, &v91);

    *(v37 + 54) = v64;
    *(v37 + 62) = 2080;
    v65 = v84;
    sub_24590EE64();
    v66 = sub_245910E64();
    v68 = v67;
    v45(v65, v2);
    v69 = sub_2458CC378(v66, v68, &v91);

    *(v37 + 64) = v69;
    *(v37 + 72) = 2080;
    v70 = v85;
    sub_24590EDB4();
    v71 = sub_245910E64();
    v73 = v72;
    v45(v70, v2);
    v74 = sub_2458CC378(v71, v73, &v91);

    *(v37 + 74) = v74;
    _os_log_impl(&dword_245767000, v48, v79, "***** RGBCaptureLiveness Results *****\nLiveness label:   %s\nGesture sequence: %s\nFAC Assessments:  %s\nFAC:              %s\nTA:               %ld\nFake PRD:         %s\nLive PRD:         %s\nID Match:         %s", v37, 0x52u);
    v75 = v78;
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v75, -1, -1);
    MEMORY[0x245D77B40](v37, -1, -1);
  }

  else
  {
    v76 = *(v30 + 8);
    v76(v88, v2);

    v76(v34, v2);
    v76(v33, v2);
    v76(v89, v2);
    v76(v87, v2);
    v76(v86, v2);
    v76(v32, v2);
  }

  return (*(v81 + 8))(v90, v82);
}

uint64_t sub_24585EBDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_245857848(a1, v4, v5, v7, v6);
}

uint64_t sub_24585EC9C(uint64_t a1)
{
  v4 = *(sub_24590ED94() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2457AA49C;

  return sub_24585736C(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_24585EDD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24585EE3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24585EE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24585EED4()
{
  v0 = sub_24590D5E4();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0xE000000000000000;
  }

  v3 = sub_24586C880(v0, v2);

  return v3;
}

uint64_t sub_24585EF34()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_24585F090(uint64_t a1)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2459109B4();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(a1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) != 1 || (*(a1 + 144) & 3) == 2)
  {
    return 0;
  }

  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v5 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

id sub_24585F240(uint64_t a1)
{
  if (*(a1 + 144) & 3) == 2 || (*(a1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp))
  {
    v2 = sub_2458935F0();
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v6 = sub_24590C144();
    v7 = [v5 initWithData_];

    sub_24578FC28(v2, v4);
    return v7;
  }

  else
  {

    return sub_2458B4690(0);
  }
}

uint64_t sub_24585F2FC(uint64_t a1)
{
  if ((*(a1 + 144) & 3) == 2)
  {
    return 2;
  }

  if (*(a1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp))
  {
    return 2;
  }

  return 1;
}

char *sub_24585F334(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_24590ED84();
  v6 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v7 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v7 + 16) = sub_24590C8B4();
  *&v2[v6] = v7;
  v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto] = 0;
  v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 2;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_timeoutRestarts] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_stitchDetectedRestarts] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceOutOfBoundsRestarts] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceTooSmallRestarts] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_sentToBackgroundRestarts] = 0;
  v8 = qword_27EE286A0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27EE32B48;
  type metadata accessor for RGBCaptureInteractor();
  v10 = swift_allocObject();
  v10[2] = v9;
  type metadata accessor for ImageQualityManager();
  swift_allocObject();
  swift_retain_n();

  v10[3] = sub_245793B60(v9, a2);
  v10[4] = a2;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor] = v10;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] = a2;
  type metadata accessor for IdentityProofingCardArtResolutionHelper();
  v11 = swift_allocObject();
  type metadata accessor for IdentityProofingImageAssetProvider();
  v12 = swift_allocObject();
  v12[3] = v11;
  v12[4] = a1;
  v12[2] = a2;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_analyticsReporter] = *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
  v13 = &v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_configuration];
  *(v13 + 3) = &type metadata for RGBCaptureViewConfiguration;
  *(v13 + 4) = &off_285889A70;
  v14 = swift_allocObject();
  *v13 = v14;
  v14[2] = a2;
  v14[3] = a1;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_uiConfig] = a1;
  v14[4] = v11;
  v14[5] = v12;
  LODWORD(v13) = *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp);
  swift_retain_n();
  v15 = a1;
  swift_retain_n();
  v16 = v15;

  if (v13 == 1)
  {
    v17 = sub_24590E244();
  }

  else
  {
    v17 = sub_24590E194();
  }

  v19 = &v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_pageTag];
  *v19 = v17;
  v19[1] = v18;
  v20 = &v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_lastPageTagThatDidAppear];
  *v20 = v17;
  v20[1] = v18;

  v21 = v16;

  v22 = sub_24588DE4C(a2, v21, v11, v12, v3);
  v23 = objc_allocWithZone(type metadata accessor for RGBCaptureSessionManager(0));
  v24 = v22;
  v25 = sub_245867CF4(v9, v24, a2, v23);

  v26 = *&v24[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager];
  v27 = *(v26 + 336);
  *(v26 + 336) = v25;

  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  v29 = &v24[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v30 = *&v24[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v29 = sub_245868878;
  *(v29 + 1) = v28;
  v31 = v24;
  sub_245771C34(v30);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v33 = &v31[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v34 = *&v31[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v33 = sub_24586807C;
  v33[1] = v32;
  sub_245771C34(v34);

  return v31;
}

char *sub_24585F75C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590ED84();
  v8 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v9 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  v10 = sub_24590C8B4();
  *&v1[v8] = v9;
  *(v9 + 16) = v10;
  v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto] = 0;
  v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 2;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_timeoutRestarts] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_stitchDetectedRestarts] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceOutOfBoundsRestarts] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceTooSmallRestarts] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_sentToBackgroundRestarts] = 0;
  sub_24590C714();
  v11 = sub_24590F344();
  v12 = sub_245910F54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245767000, v11, v12, "Initializing RGBCaptureVC for ILSU", v13, 2u);
    MEMORY[0x245D77B40](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v14 = qword_27EE286A0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE32B48;
  type metadata accessor for RGBCaptureInteractor();
  v16 = swift_allocObject();
  v16[2] = v15;
  type metadata accessor for ImageQualityManager();
  swift_allocObject();
  swift_retain_n();

  v16[3] = sub_245793B60(v15, a1);
  v16[4] = a1;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor] = v16;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] = a1;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_analyticsReporter] = *(a1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
  v42 = type metadata accessor for InlineStepUpViewConfiguration();
  v43 = &off_285889848;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  swift_retain_n();

  sub_245856144(a1, boxed_opaque_existential_1);
  v18 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_configuration;
  sub_245771B9C(&v41, &v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_configuration]);
  v19 = objc_allocWithZone(sub_24590D664());
  *&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_uiConfig] = sub_24590D5C4();
  v20 = sub_24590E244();
  v21 = &v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_pageTag];
  *v21 = v20;
  v21[1] = v22;
  v23 = &v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_lastPageTagThatDidAppear];
  *v23 = v20;
  v23[1] = v22;
  sub_2457ACB24(&v2[v18], &v41);
  v24 = v42;
  v25 = v43;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v41, v42);
  MEMORY[0x28223BE20](v26);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);

  v30 = sub_2458A8FD8(v28, v2, v24, v25);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  v31 = objc_allocWithZone(type metadata accessor for RGBCaptureSessionManager(0));
  v32 = v30;
  v33 = sub_245867CF4(v15, v32, a1, v31);

  v34 = *&v32[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager];
  v35 = *(v34 + 336);
  *(v34 + 336) = v33;

  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  v37 = &v32[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v38 = *&v32[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v37 = sub_245868058;
  v37[1] = v36;
  sub_245771C34(v38);

  return v32;
}

uint64_t sub_24585FCA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v17 = v16 - v3;
  v16[3] = sub_24590E3B4();
  v16[4] = v4;
  v5 = *&v0[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_pageTag];
  v16[1] = *&v0[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_pageTag + 8];
  v16[2] = v5;
  sub_24590DF54();

  sub_24590DF74();

  if ((*(*&v0[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v6 = [v0 navigationController];
  v7 = sub_2457906C8(v6);

  if (v7)
  {

    sub_24590E264();
  }

  if ((*(**&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();

  v8 = sub_2458A1B04();
  sub_2458B4FCC(1);

  v9 = sub_245910D64();
  v10 = v17;
  (*(*(v9 - 8) + 56))(v17, 1, 1, v9);
  sub_245910D34();
  v11 = v1;
  v12 = sub_245910D24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_2458B90EC(0, 0, v10, &unk_24591BA18, v13);
}

uint64_t sub_24585FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_2459107E4();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_245910814();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_24590EA74();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = sub_24590EA84();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v9 = sub_24590F354();
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v4[30] = swift_task_alloc();
  v4[31] = sub_245910D34();
  v4[32] = sub_245910D24();
  v11 = sub_245910CD4();
  v4[33] = v11;
  v4[34] = v10;

  return MEMORY[0x2822009F8](sub_245860258, v11, v10);
}

uint64_t sub_245860258()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
  v0[35] = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
  v0[36] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_245860308;

  return sub_245882938();
}

uint64_t sub_245860308(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = a2;

  v5 = *(v3 + 272);
  v6 = *(v3 + 264);

  return MEMORY[0x2822009F8](sub_245860458, v6, v5);
}

uint64_t sub_245860458()
{
  v1 = *(v0 + 312);
  v2 = v0[38];

  if (v1)
  {
    v43 = v0[38];
    v3 = v0[27];
    v4 = v0[28];
    v37 = v0[26];
    v46 = v0[25];
    v5 = v0[24];
    v36 = v0[23];
    v6 = v0[21];
    v7 = v0[22];
    v8 = v0[20];
    v44 = v0[18];
    v45 = v0[17];
    v39 = v0[19];
    v40 = v0[16];
    v41 = v0[14];
    v42 = v0[15];
    v38 = v0[13];
    sub_2459114D4();

    swift_getErrorValue();
    v9 = sub_2459117D4();
    MEMORY[0x245D76160](v9);

    (*(v6 + 104))(v7, *MEMORY[0x277CFFAC0], v8);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA94();
    sub_2458686A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v10 = swift_allocError();
    (*(v5 + 16))(v11, v46, v36);
    sub_24590C714();
    sub_24590C724();
    (*(v3 + 8))(v4, v37);

    sub_24579D5E0(0, &qword_27EE2ABC0);
    v12 = sub_245911034();
    v13 = swift_allocObject();
    *(v13 + 16) = v38;
    v0[6] = sub_245868688;
    v0[7] = v13;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2458935A8;
    v0[5] = &block_descriptor_24;
    v14 = _Block_copy(v0 + 2);
    v15 = v38;
    sub_245910804();
    v0[12] = MEMORY[0x277D84F90];
    sub_2458686A8(&qword_27EE2A980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    sub_2459113A4();
    MEMORY[0x245D76690](0, v39, v40, v14);
    _Block_release(v14);

    sub_2457CBA4C(v43);
    (*(v42 + 8))(v40, v41);
    (*(v44 + 8))(v39, v45);
    (*(v5 + 8))(v46, v36);
  }

  else
  {
    v16 = v0[38];
    v17 = v0[30];
    v18 = v0[13];
    v19 = sub_245910D64();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = v18;
    sub_2458686F0(v16);
    v21 = sub_245910D24();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    v22[5] = v2;
    sub_24586CFCC(0, 0, v17, &unk_24591BA30, v22);

    v24 = sub_24590D424();
    if (v24)
    {
      v25 = v0[38];

      sub_24587E49C();
      sub_2457CBA4C(v25);
    }

    else
    {
      sub_24590C714();
      v26 = sub_24590F344();
      v27 = sub_245910F54();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[38];
      v30 = v0[29];
      v31 = v0[26];
      v32 = v0[27];
      if (v28)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_245767000, v26, v27, "Passive only, will skip fetching extra LivenessConfig", v33, 2u);
        MEMORY[0x245D77B40](v33, -1, -1);
      }

      sub_2457CBA4C(v29);
      (*(v32 + 8))(v30, v31);
    }
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_245860A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_245910D34();
  v5[3] = sub_245910D24();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_245860B40;

  return sub_245862284(a5);
}

uint64_t sub_245860B40()
{
  *(*v1 + 40) = v0;

  v3 = sub_245910CD4();
  if (v0)
  {
    v4 = sub_245860C9C;
  }

  else
  {
    v4 = sub_2457B5318;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_245860C9C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_245860D00(void *a1)
{

  v2 = [a1 navigationController];
  sub_2458866E0(v2, 0);

  v3 = sub_2458A1B04();
  sub_2458B4FCC(0);
}

uint64_t sub_245860DA4()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "Secondary button pressed, showing cancellation alert.", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  sub_245887AB8(v1, 0x6E61437472656C61, 0xEB000000006C6563, 1, 0, 0);
}

uint64_t sub_245860F58(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RGBCaptureViewController();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  sub_24590E3D4();
  sub_24590DF54();

  sub_24590DF74();

  if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v4 = [v1 navigationController];
  v5 = sub_2457906C8(v4);

  if (v5)
  {

    sub_24590E264();
  }

  if ((*(**&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

void sub_2458611B4(char a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v8 = sub_24590F344();
  v9 = sub_245910F54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_245767000, v8, v9, "Setting default settings for primary button in viewWillAppear", v10, 2u);
    MEMORY[0x245D77B40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = type metadata accessor for RGBCaptureViewController();
  v13.receiver = v2;
  v13.super_class = v11;
  objc_msgSendSuper2(&v13, sel_viewWillAppear_, a1 & 1);
  v12 = sub_2458A1B04();
  sub_2458B4FCC(0);
}

id sub_245861388()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for RGBCaptureViewController();
  v27.receiver = v0;
  v27.super_class = v8;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() systemBackgroundColor];
    [v10 setBackgroundColor_];

    v12 = [v0 navigationController];
    if (v12)
    {
      v13 = v12;
      [v12 setDelegate_];
    }

    v14 = sub_245910D64();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_245910D34();
    v15 = v0;
    v16 = sub_245910D24();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    sub_2458B90EC(0, 0, v7, &unk_24591BA40, v17);

    if (sub_245861E10())
    {
      v19 = [v15 navigationItem];
      [v19 setHidesBackButton_];

      v20 = [v15 navigationItem];
      [v20 setLeftBarButtonItem_];

      sub_24590C714();
      v21 = sub_24590F344();
      v22 = sub_245910F54();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_245767000, v21, v22, "RGBLiveness UI, for Phone Liveness Step Up from Wallet, using a back button", v23, 2u);
        MEMORY[0x245D77B40](v23, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = &v15[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
    v26 = *&v15[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
    *v25 = sub_245868870;
    v25[1] = v24;

    sub_245771C34(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24586174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_24590F354();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_24590EA74();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_245910D34();
  v4[13] = sub_245910D24();
  v8 = sub_245910CD4();
  v4[14] = v8;
  v4[15] = v7;

  return MEMORY[0x2822009F8](sub_24586189C, v8, v7);
}

uint64_t sub_24586189C()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
  v0[16] = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
  v0[17] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_24586194C;

  return sub_245882938();
}

uint64_t sub_24586194C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);

  return MEMORY[0x2822009F8](sub_245861A9C, v6, v5);
}

uint64_t sub_245861A9C()
{
  v30 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);

  if (v1)
  {
    v26 = *(v0 + 128);
    v27 = *(v0 + 152);
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 64);
    v24 = *(v0 + 80);
    v25 = *(v0 + 56);
    v7 = *(v0 + 48);
    v28 = 0;
    v29 = 0xE000000000000000;
    v8 = v2;
    sub_2459114D4();
    MEMORY[0x245D76160](0x74276E646C756F43, 0xEE002064616F6C20);
    v9 = [v7 description];
    v10 = sub_245910A04();
    v12 = v11;

    MEMORY[0x245D76160](v10, v12);

    MEMORY[0x245D76160](0xD000000000000023, 0x800000024592AA80);
    swift_getErrorValue();
    v13 = sub_2459117D4();
    MEMORY[0x245D76160](v13);

    (*(v4 + 104))(v3, *MEMORY[0x277CFFAC0], v24);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458686A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v14 = swift_allocError();
    v23[2] = 178;
    strcpy(v23, "viewDidLoad()");
    HIWORD(v23[1]) = -4864;
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();
    (*(v6 + 8))(v5, v25);

    v15 = [v7 navigationController];
    sub_2458866E0(v15, 0);
    sub_2457CBA4C(v27);

    v16 = v27;
  }

  else
  {
    v17 = v2;
    v18 = sub_24590D434();
    v19 = v18;
    if (v18)
    {
    }

    v20 = *(v0 + 152);
    sub_2458620D4(v19 != 0);
    sub_2457CBA4C(v20);
    v16 = v20;
  }

  sub_2457CBA4C(v16);

  v21 = *(v0 + 8);

  return v21();
}

id sub_245861E10()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager];
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) != 1 || (*(v1 + 144) & 3) == 2)
  {
    return 0;
  }

  result = [v0 navigationController];
  if (result)
  {
    v3 = result;
    v4 = [result viewControllers];
    sub_24579D5E0(0, &qword_27EE28F28);
    v5 = sub_245910C44();

    if (v5 >> 62)
    {
      v6 = sub_245911424();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v6 > 2);
  }

  return result;
}

void sub_245861F10()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24590C714();
    v6 = sub_24590F344();
    v7 = sub_245910F54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245767000, v6, v7, "RGBCaptureViewController cancelling", v8, 2u);
      MEMORY[0x245D77B40](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    [v5 cancelBarButtonClicked];
  }
}

void sub_2458620D4(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_uiConfig);
  v4 = sub_24590D5F4();

  if (!v4)
  {
    goto LABEL_7;
  }

  if (!v4[2])
  {

LABEL_7:
    v10 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_uiConfig);
    v11 = sub_24590D634();
    v13 = v12;

    if (!v13)
    {
      return;
    }

    sub_24586C880(v11, v13);
    v15 = v14;

    if (!v15)
    {
      return;
    }

    v9 = sub_2458A1880();
    goto LABEL_10;
  }

  v5 = v4[4];
  v6 = v4[5];

  sub_24586C880(v5, v6);
  v8 = v7;

  v9 = sub_2458A1880();
  if (!v8)
  {
    v16 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v16 = sub_2459109C4();
LABEL_11:
  v17 = v16;
  [v9 setText_];
}

uint64_t sub_245862284(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_24590F354();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_24590ED94();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_245910D34();
  v2[19] = sub_245910D24();
  v6 = sub_245910CD4();
  v2[20] = v6;
  v2[21] = v5;

  return MEMORY[0x2822009F8](sub_2458623E0, v6, v5);
}

uint64_t sub_2458623E0()
{
  v1 = [*(v0 + 88) navigationController];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 144);
    v4 = *(v0 + 128);
    v5 = *(v0 + 88);
    v21 = *(v0 + 80);
    v22 = *(v0 + 120);
    v23 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;

    sub_24586F98C();

    sub_2457ACB24(v5 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_configuration, v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    (*(v7 + 208))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    sub_2458629E8(v21, v3);
    v8 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_captureConfig;
    swift_beginAccess();
    (*(v4 + 40))(v5 + v8, v3, v22);
    swift_endAccess();
    v9 = *(*(v5 + v23) + 336);
    *(v0 + 184) = v9;
    if (v9)
    {
      (*(*(v0 + 128) + 16))(*(v0 + 136), v5 + v8, *(v0 + 120));
      v9;
      v10 = swift_task_alloc();
      *(v0 + 192) = v10;
      *v10 = v0;
      v10[1] = sub_245862714;
      v11 = *(v0 + 136);

      return sub_245856CD0(v2, v11);
    }
  }

  else
  {

    sub_24590C714();
    v13 = sub_24590F344();
    v14 = sub_245910F64();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245767000, v13, v14, "Starting capture with a nil navigation controller.", v19, 2u);
      MEMORY[0x245D77B40](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_245862714()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  *(*v1 + 200) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 168);
  v8 = *(v2 + 160);
  if (v0)
  {
    v9 = sub_245862954;
  }

  else
  {
    v9 = sub_2458628CC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2458628CC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245862954()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2458629E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ABB8);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v44 - v5;
  v6 = sub_24590F144();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ABD8);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = v44 - v9;
  v48 = sub_24590F084();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590ED84();
  sub_24590ED44();
  sub_24590ED74();
  sub_24590ED64();
  v12 = sub_24590D424();
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  sub_24590F074();
  v14 = sub_24590DB74();
  v15 = v14;
  if (v14 >> 62)
  {
    v16 = sub_245911424();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v13;
  v44[1] = a2;
  v45 = a1;
  if (v16)
  {
    v54 = MEMORY[0x277D84F90];
    sub_24577CD54(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v17 = 0;
    v18 = v54;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x245D76B30](v17, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = sub_24590C864();

      v54 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24577CD54((v22 > 1), v23 + 1, 1);
        v18 = v54;
      }

      ++v17;
      *(v18 + 16) = v23 + 1;
      *(v18 + 8 * v23 + 32) = v21;
    }

    while (v16 != v17);

    a1 = v45;
  }

  else
  {
  }

  sub_24590EF74();
  v24 = sub_24590DB74();
  v25 = v24;
  if (v24 >> 62)
  {
    v26 = sub_245911424();
    if (v26)
    {
LABEL_17:
      v54 = MEMORY[0x277D84F90];
      sub_24577CD54(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v28 = v54;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x245D76B30](v27, v25);
          }

          else
          {
            v29 = *(v25 + 8 * v27 + 32);
          }

          v30 = v29;
          v31 = sub_24590C854();

          v54 = v28;
          v33 = *(v28 + 16);
          v32 = *(v28 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_24577CD54((v32 > 1), v33 + 1, 1);
            v28 = v54;
          }

          ++v27;
          *(v28 + 16) = v33 + 1;
          *(v28 + 8 * v33 + 32) = v31;
        }

        while (v26 != v27);

        a1 = v45;
        goto LABEL_29;
      }

LABEL_34:
      __break(1u);
      return;
    }
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_17;
    }
  }

LABEL_29:
  sub_24590EF24();
  v34 = v53;
  sub_24590DC34();
  sub_24590F024();
  sub_24590DBA4();
  sub_24590F014();
  sub_24590DBF4();
  sub_24590F044();
  sub_24590DB24();
  sub_24590F004();
  sub_24590DC04();
  sub_24590F034();
  sub_24590DB44();
  sub_24590EF44();
  sub_24590DB54();
  sub_24590EF54();
  sub_24590DBE4();
  sub_24590EFD4();
  sub_24590DC24();
  sub_24590EFF4();
  sub_24590DBC4();
  sub_24590EFB4();
  sub_24590DC14();
  sub_24590EFE4();
  sub_24590DBD4();
  sub_24590EFC4();
  sub_24590DC54();
  sub_24590F064();
  sub_24590DC44();
  sub_24590F054();
  sub_24590DB84();
  sub_24590EF84();
  sub_24590DBB4();
  sub_24590EFA4();
  sub_24590DB94();
  sub_24590EF94();
  sub_24590DB34();
  sub_24590EF34();
  sub_24590DB64();
  sub_24590EF64();
  v36 = v46;
  v35 = v47;
  v37 = v48;
  (*(v46 + 16))(v47, v11, v48);
  (*(v36 + 56))(v35, 0, 1, v37);
  sub_24590ED14();

  (*(v36 + 8))(v11, v37);
LABEL_30:
  v38 = sub_24590D434();
  if (v38)
  {
    v39 = v38;
    v40 = v49;
    sub_24590F134();
    sub_24590DCF4();
    sub_24590F094();
    sub_24590DD04();
    sub_24590F0A4();
    sub_24590DD64();
    sub_24590F104();
    sub_24590DD34();
    sub_24590F0D4();
    sub_24590DD84();
    sub_24590F124();
    sub_24590DD24();
    sub_24590F0C4();
    sub_24590DD54();
    sub_24590F0F4();
    sub_24590DD74();
    sub_24590F114();
    sub_24590DD14();
    sub_24590F0B4();
    sub_24590DD44();
    sub_24590F0E4();
    v41 = v50;
    v42 = v51;
    v43 = v52;
    (*(v51 + 16))(v50, v40, v52);
    (*(v42 + 56))(v41, 0, 1, v43);
    sub_24590ED34();

    (*(v42 + 8))(v40, v43);
  }

  else
  {
  }
}

uint64_t sub_245863180()
{

  v1 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_captureConfig;
  v2 = sub_24590ED94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_configuration);
}

id sub_245863270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RGBCaptureViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RGBCaptureViewController()
{
  result = qword_27EE2ABA8;
  if (!qword_27EE2ABA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2458633F0()
{
  result = sub_24590ED94();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_2458634E0()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
  v10 = *&v0[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager];

  v11 = [v0 navigationController];
  if (*(v10 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPerformInlineStepUp) == 1 && (*(v10 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp) & 1) == 0)
  {
    *(v10 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp) = 1;
    v16 = v11;
    v17 = objc_allocWithZone(type metadata accessor for RGBCaptureViewController());

    v19 = sub_24585F75C(v18);
    sub_24586D558(v19, v16);

    sub_24590C714();
    v20 = sub_24590F344();
    v21 = sub_245910F54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_245767000, v20, v21, "Passive is complete, preparing for inline step up.", v22, 2u);
      MEMORY[0x245D77B40](v22, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {

    sub_24590C594();
    sub_24590C524();
    v12 = [v0 navigationController];
    if (v12)
    {
      v13 = v12;
      [v12 setDelegate_];
    }

    v14 = *&v1[v9];
    if (*(v14 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) == 1 && (*(v14 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_selfieImageIsRequired) & 1) == 0)
    {
      sub_24590C714();
      v23 = sub_24590F344();
      v24 = sub_245910F54();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_245767000, v23, v24, "Attempting to upload liveness video early for selfie-less async step up.", v25, 2u);
        MEMORY[0x245D77B40](v25, -1, -1);
      }

      (*(v3 + 8))(v6, v2);

      sub_24586EFCC(1);

      v26 = *&v1[v9];
      v27 = v1;

      sub_24588F7AC(v27, v26, v27);
    }

    else
    {
      v15 = [v1 navigationController];

      sub_24586CA74(v15, 2, 0, 0);
    }
  }
}

uint64_t sub_245863904(void *a1)
{
  v1 = [a1 navigationController];

  sub_24586CA74(v1, 2, 0, 0);
}

uint64_t sub_24586397C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((sub_24590E9C4() & 1) == 0)
  {
    if (*(*(*(*(v4 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_interactor) + 24) + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration) != 1)
    {

      v19 = sub_24579AC34(a2, a3, a4 & 1);

      v20 = sub_24590E9D4();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      return v19;
    }

    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245767000, v14, v15, "Exploration enabled, skipping iq feedback and continuing.", v16, 2u);
      MEMORY[0x245D77B40](v16, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }

  v17 = *MEMORY[0x277CFF848];
  v18 = sub_24590E9D4();
  (*(*(v18 - 8) + 104))(a1, v17, v18);
  return 0;
}

uint64_t sub_245863CE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();

  v10 = sub_24590F344();
  v11 = sub_245910F84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2458CC378(a1, a2, &v34);
    _os_log_impl(&dword_245767000, v10, v11, "RGBCaptureViewController captureSelfieWillMonitorGesture gesture: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245D77B40](v13, -1, -1);
    MEMORY[0x245D77B40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = sub_24590DFD4();
  v15 = &v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_lastPageTagThatDidAppear];
  *v15 = v14;
  v15[1] = v16;

  v30 = sub_24590E3D4();
  v32 = v17;
  v29 = sub_24590DFD4();
  v31 = v18;
  v19 = sub_24590DF54();
  v33 = a1;
  if (v19 == a1 && v20 == a2)
  {
    goto LABEL_5;
  }

  v21 = sub_245911714();

  if (v21)
  {
    goto LABEL_7;
  }

  if (sub_24590DF74() == a1 && v26 == a2)
  {
LABEL_5:

LABEL_7:
    v22 = v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v27 = sub_245911714();

  if (v27)
  {
    goto LABEL_7;
  }

  v22 = 2;
LABEL_8:
  v28[3] = v22;
  if ((*(*&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v23 = [v3 navigationController];
  v24 = sub_2457906C8(v23);

  if (v24)
  {

    sub_24590E264();
  }

  if ((*(**&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_2458640F0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();

  v10 = sub_24590F344();
  v11 = sub_245910F84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2458CC378(a1, a2, &v31);
    _os_log_impl(&dword_245767000, v10, v11, "RGBCaptureViewController captureSelfieDidFinishGestureMonitoring gesture: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245D77B40](v13, -1, -1);
    MEMORY[0x245D77B40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v27 = sub_24590E2C4();
  v29 = v14;
  v26 = sub_24590DFD4();
  v28 = v15;
  v16 = sub_24590DF54();
  v30 = a1;
  if (v16 == a1 && v17 == a2)
  {
    goto LABEL_5;
  }

  v18 = sub_245911714();

  if (v18)
  {
    goto LABEL_7;
  }

  if (sub_24590DF74() == a1 && v23 == a2)
  {
LABEL_5:

LABEL_7:
    v19 = v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v24 = sub_245911714();

  if (v24)
  {
    goto LABEL_7;
  }

  v19 = 2;
LABEL_8:
  v25[3] = v19;
  if ((*(*&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v20 = [v3 navigationController];
  v21 = sub_2457906C8(v20);

  if (v21)
  {

    sub_24590E264();
  }

  if ((*(**&v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v3[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_24586451C(uint64_t a1, unint64_t a2, const char *a3, uint64_t (*a4)(void))
{
  v7 = v4;
  v10 = sub_24590F354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();

  v14 = sub_24590F344();
  v15 = sub_245910F84();

  v16 = os_log_type_enabled(v14, v15);
  v40 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = a4;
    v19 = v18;
    v41 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2458CC378(v40, a2, &v41);
    _os_log_impl(&dword_245767000, v14, v15, a3, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    a4 = v39;
    MEMORY[0x245D77B40](v20, -1, -1);
    v21 = v17;
    a1 = v40;
    MEMORY[0x245D77B40](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v36 = sub_24590E2B4();
  v39 = v22;
  v35 = sub_24590DFD4();
  v38 = v23;
  v34 = a4();
  v37 = v24;
  if (sub_24590DF54() == a1 && v25 == a2)
  {
    goto LABEL_5;
  }

  v26 = sub_245911714();

  if (v26)
  {
    goto LABEL_7;
  }

  if (sub_24590DF74() == a1 && v31 == a2)
  {
LABEL_5:

LABEL_7:
    v27 = v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v32 = sub_245911714();

  if (v32)
  {
    goto LABEL_7;
  }

  v27 = 2;
LABEL_8:
  v33[3] = v27;
  if ((*(*&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v28 = [v7 navigationController];
  v29 = sub_2457906C8(v28);

  if (v29)
  {

    sub_24590E264();
  }

  if ((*(**&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_24586493C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590E9D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590F354();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  (*(v5 + 16))(v7, a1, v4);
  v11 = sub_24590F344();
  v12 = sub_245910F84();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = a1;
    v16 = v15;
    v35 = v15;
    *v14 = 136315138;
    v17 = sub_24590E9B4();
    v33 = v2;
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_2458CC378(v17, v19, &v35);
    v2 = v33;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_245767000, v11, v12, "RGBCaptureViewController captureSelfieDidEncounterImageQualityError iqaCode: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v21 = v16;
    a1 = v32;
    MEMORY[0x245D77B40](v21, -1, -1);
    MEMORY[0x245D77B40](v14, -1, -1);

    (*(v34 + 8))(v10, v31);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v34 + 8))(v10, v8);
  }

  v32 = sub_24590E294();
  v34 = v22;
  v31 = sub_24590E0C4();
  v33 = v23;
  v24 = sub_24590E494();
  if (*(v24 + 16) && (v25 = sub_24588C88C(a1), (v26 & 1) != 0))
  {
    v30 = *(*(v24 + 56) + 16 * v25);
  }

  else
  {
    v30 = 0;
  }

  sub_24590DF54();

  sub_24590DF74();

  if ((*(*&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v27 = [v2 navigationController];
  v28 = sub_2457906C8(v27);

  if (v28)
  {

    sub_24590E264();
  }

  if ((*(**&v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v2[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_245864E34(uint64_t a1, unint64_t a2, const char *a3, uint64_t (*a4)(void))
{
  v7 = v4;
  v10 = sub_24590F354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();

  v14 = sub_24590F344();
  v15 = sub_245910F84();

  v16 = os_log_type_enabled(v14, v15);
  v40 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = a4;
    v19 = v18;
    v41 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2458CC378(v40, a2, &v41);
    _os_log_impl(&dword_245767000, v14, v15, a3, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    a4 = v39;
    MEMORY[0x245D77B40](v20, -1, -1);
    v21 = v17;
    a1 = v40;
    MEMORY[0x245D77B40](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v36 = sub_24590E3B4();
  v39 = v22;
  v35 = sub_24590DFD4();
  v38 = v23;
  v34 = a4();
  v37 = v24;
  if (sub_24590DF54() == a1 && v25 == a2)
  {
    goto LABEL_5;
  }

  v26 = sub_245911714();

  if (v26)
  {
    goto LABEL_7;
  }

  if (sub_24590DF74() == a1 && v31 == a2)
  {
LABEL_5:

LABEL_7:
    v27 = v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v32 = sub_245911714();

  if (v32)
  {
    goto LABEL_7;
  }

  v27 = 2;
LABEL_8:
  v33[3] = v27;
  if ((*(*&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v28 = [v7 navigationController];
  v29 = sub_2457906C8(v28);

  if (v29)
  {

    sub_24590E264();
  }

  if ((*(**&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_24586528C()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "RGBCaptureViewController captureSelfieDidRetakeAfterSelfie", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v28 = sub_24590E3B4();
  v31 = v9;
  v27 = sub_24590E0C4();
  v30 = v10;
  v26 = sub_24590E004();
  v29 = v11;
  v12 = sub_245867504();
  v14 = v13;
  if (v12 == sub_24590DF54() && v14 == v15)
  {
    goto LABEL_5;
  }

  v16 = sub_245911714();

  if (v16)
  {
    goto LABEL_7;
  }

  if (v12 == sub_24590DF74() && v14 == v21)
  {
LABEL_5:

LABEL_7:
    v17 = v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v22 = sub_245911714();

  if (v22)
  {
    goto LABEL_7;
  }

  v17 = 2;
LABEL_8:
  v24 = v17;
  if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v18 = [v1 navigationController];
  v19 = sub_2457906C8(v18);

  if (v19)
  {

    sub_24590E264();
  }

  v23[1] = v12;
  v25 = v14;
  if ((*(**&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();

  v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto] = 0;
  return result;
}

uint64_t sub_2458656AC(const char *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v7 = v3;
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, a1, v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  v15 = (*(v9 + 8))(v11, v8);
  v33 = a2(v15);
  v35 = v16;
  v32 = a3();
  v34 = v17;
  v18 = sub_245867504();
  v20 = v19;
  v21 = sub_24590DF54();
  v31 = v18;
  if (v18 == v21 && v20 == v22)
  {
    goto LABEL_5;
  }

  v23 = sub_245911714();

  if (v23)
  {
    goto LABEL_7;
  }

  if (v18 == sub_24590DF74() && v20 == v28)
  {
LABEL_5:

LABEL_7:
    v24 = v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v29 = sub_245911714();

  if (v29)
  {
    goto LABEL_7;
  }

  v24 = 2;
LABEL_8:
  v30[1] = v24;
  if ((*(*&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v25 = [v7 navigationController];
  v26 = sub_2457906C8(v25);

  if (v26)
  {

    sub_24590E264();
  }

  if ((*(**&v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v7[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_245865A60()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "RGBCaptureViewController takeSelfieViewDidAppear", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = sub_24590E074();
  v10 = &v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_lastPageTagThatDidAppear];
  *v10 = v9;
  v10[1] = v11;

  v16[2] = sub_24590E3D4();
  v16[3] = v12;
  v16[1] = sub_24590E074();
  sub_24590DF54();

  sub_24590DF74();

  if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v13 = [v1 navigationController];
  v14 = sub_2457906C8(v13);

  if (v14)
  {

    sub_24590E264();
  }

  if ((*(**&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_245865D70()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "RGBCaptureViewController confirmSelfieViewDidAppear", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = sub_24590E0C4();
  v10 = &v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_lastPageTagThatDidAppear];
  *v10 = v9;
  v10[1] = v11;

  v29 = sub_24590E3D4();
  v31 = v12;
  v28 = sub_24590E0C4();
  v30 = v13;
  v14 = sub_245867504();
  v16 = v15;
  v17 = sub_24590DF54();
  v27 = v14;
  if (v14 == v17 && v16 == v18)
  {
    goto LABEL_5;
  }

  v19 = sub_245911714();

  if (v19)
  {
    goto LABEL_7;
  }

  if (v14 == sub_24590DF74() && v16 == v24)
  {
LABEL_5:

LABEL_7:
    v20 = v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v25 = sub_245911714();

  if (v25)
  {
    goto LABEL_7;
  }

  v20 = 2;
LABEL_8:
  v26[1] = v20;
  if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v21 = [v1 navigationController];
  v22 = sub_2457906C8(v21);

  if (v22)
  {

    sub_24590E264();
  }

  if ((*(**&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_245866154(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v10 = sub_24590F344();
  v11 = sub_245910F84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_245767000, v10, v11, a1, v12, 2u);
    MEMORY[0x245D77B40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v32 = sub_24590E3B4();
  v35 = v13;
  v31 = a2();
  v34 = v14;
  v30 = sub_24590E054();
  v33 = v15;
  v16 = sub_245867504();
  v18 = v17;
  v19 = sub_24590DF54();
  v29 = v18;
  if (v16 == v19 && v18 == v20)
  {
    goto LABEL_5;
  }

  v21 = sub_245911714();

  if (v21)
  {
    goto LABEL_7;
  }

  if (v16 == sub_24590DF74() && v18 == v26)
  {
LABEL_5:

LABEL_7:
    v22 = v5[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto];
    goto LABEL_8;
  }

  v27 = sub_245911714();

  if (v27)
  {
    goto LABEL_7;
  }

  v22 = 2;
LABEL_8:
  v28[1] = v22;
  if ((*(*&v5[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v23 = [v5 navigationController];
  v24 = sub_2457906C8(v23);

  if (v24)
  {

    sub_24590E264();
  }

  if ((*(**&v5[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v5[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  }

  sub_24590E484();
}

uint64_t sub_245866518(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v8 = sub_24590F344();
  v9 = sub_245910F84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&dword_245767000, v8, v9, "RGBCaptureViewController captureSelfieDidRestart from cause: %ld", v10, 0xCu);
    MEMORY[0x245D77B40](v10, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  if (a1 <= 1)
  {
    goto LABEL_10;
  }

  if (a1 == 2)
  {
LABEL_15:
    v12 = (v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceOutOfBoundsRestarts);
    v17 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceOutOfBoundsRestarts);
    v14 = __OFADD__(v17, 1);
    v15 = v17 + 1;
    if (!v14)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      goto LABEL_23;
    }

    v12 = (v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_sentToBackgroundRestarts);
    v13 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_sentToBackgroundRestarts);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_10:
    if (!a1)
    {
      goto LABEL_21;
    }

    if (a1 == 1)
    {
      v12 = (v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_stitchDetectedRestarts);
      v16 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_stitchDetectedRestarts);
      v14 = __OFADD__(v16, 1);
      v15 = v16 + 1;
      if (!v14)
      {
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_23:

    sub_245783A58(a1 == 4);
  }

LABEL_18:
  v12 = (v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceTooSmallRestarts);
  v18 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceTooSmallRestarts);
  v14 = __OFADD__(v18, 1);
  v15 = v18 + 1;
  if (!v14)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_21:
  v12 = (v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_timeoutRestarts);
  v19 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_timeoutRestarts);
  v14 = __OFADD__(v19, 1);
  v15 = v19 + 1;
  if (!v14)
  {
LABEL_22:
    *v12 = v15;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_245866754()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "RGBCaptureViewController previewed livePhoto", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto) = 1;
  return result;
}

uint64_t sub_2458668A4()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag;
  v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
  sub_24590C714();
  v7 = sub_24590F344();
  v8 = sub_245910F54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245767000, v7, v8, "RGBCaptureViewController pressed AccessibilityOptions", v9, 2u);
    MEMORY[0x245D77B40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15[3] = sub_24590E3B4();
  v15[5] = v10;
  v15[2] = sub_24590DFD4();
  v15[4] = v11;
  v15[1] = sub_24590E224();
  sub_24590DF54();

  sub_24590DF74();

  if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  v12 = [v1 navigationController];
  v13 = sub_2457906C8(v12);

  if (v13)
  {

    sub_24590E264();
  }

  if ((*(**&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
  {
    v1[v6] = 1;
  }

  sub_24590E484();
}

uint64_t sub_245866BB8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_24590EA74();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_24590EA84();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_24590ED94();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_24590F354();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_245910D34();
  v2[29] = sub_245910D24();
  v8 = sub_245910CD4();
  v2[30] = v8;
  v2[31] = v7;

  return MEMORY[0x2822009F8](sub_245866DCC, v8, v7);
}

uint64_t sub_245866DCC()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "RGBCaptureViewController captureSelfieObtainNewConfiguration", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[15];

  v8 = *(v6 + 8);
  v0[32] = v8;
  v8(v4, v5);
  v9 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
  v0[33] = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
  v0[34] = *(v7 + v9);

  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = sub_245866F28;

  return sub_245882938();
}

uint64_t sub_245866F28(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = a2;

  v5 = *(v3 + 248);
  v6 = *(v3 + 240);

  return MEMORY[0x2822009F8](sub_245867078, v6, v5);
}

uint64_t sub_245867078()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 288);
  v27 = *(v0 + 216);
  v28 = *(v0 + 168);
  if (v1)
  {
    v24 = *(v0 + 200);
    v26 = *(v0 + 256);
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    sub_2459114D4();
    MEMORY[0x245D76160](0xD000000000000037, 0x800000024592AAF0);
    swift_getErrorValue();
    v8 = sub_2459117D4();
    v22 = v2;
    MEMORY[0x245D76160](v8);

    (*(v5 + 104))(v6, *MEMORY[0x277CFFAC0], v7);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA94();
    sub_2458686A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v9 = swift_allocError();
    v10 = *(v3 + 16);
    v10(v11, v28, v4);
    sub_24590C714();
    sub_24590C724();
    v26(v27, v24);

    swift_allocError();
    v10(v12, v28, v4);
    swift_willThrow();
    sub_2457CBA4C(v22);
    (*(v3 + 8))(v28, v4);
  }

  else
  {
    v14 = *(v0 + 184);
    v25 = *(v0 + 192);
    v23 = *(v0 + 176);
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);

    sub_24586F98C();

    sub_2457ACB24(v15 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_configuration, v0 + 16);
    v17 = v2;
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
    (*(v18 + 208))(v19, v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    sub_2458629E8(v17, v16);
    (*(v14 + 16))(v25, v16, v23);
    v20 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_captureConfig;
    swift_beginAccess();
    (*(v14 + 40))(v15 + v20, v25, v23);
    swift_endAccess();

    sub_24587E49C();
    sub_2457CBA4C(v17);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_245867504()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ABB8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_24590ED94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager);
  if (*(v9 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) == 1)
  {

    return MEMORY[0x282151AC8](v6);
  }

  else if ((*(v9 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPerformInlineStepUp) & 1) != 0 || *(v9 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp) == 1)
  {

    return sub_24590DF74();
  }

  else
  {
    v10 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_captureConfig;
    v11 = v6;
    swift_beginAccess();
    (*(v5 + 16))(v8, v0 + v10, v11);
    sub_24590ED24();
    (*(v5 + 8))(v8, v11);
    v12 = sub_24590F144();
    v13 = (*(*(v12 - 8) + 48))(v3, 1, v12);
    sub_245778F94(v3, &qword_27EE2ABB8);
    if (v13 == 1)
    {
      return sub_24590DF34();
    }

    else
    {
      return sub_24590DF54();
    }
  }
}

id sub_2458677E0()
{
  v1 = v0;
  v2 = [v0 navigationController];
  v3 = sub_2457906C8(v2);

  if (v3)
  {

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_24590E3B4();

    sub_24590DF54();

    sub_24590DF74();

    v5 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager;
    if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager] + 144) & 3) == 2)
    {
      sub_24590E1C4();
    }

    else
    {
      sub_24590E1B4();
    }

    v6 = [v1 navigationController];
    v7 = sub_2457906C8(v6);

    if (v7)
    {

      sub_24590E264();
    }

    if ((*(**&v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper] + 96))())
    {
      v1[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag] = 1;
    }

    sub_24590E484();

    sub_24590C594();
    sub_24590C524();
    v8 = *(*&v1[v5] + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    if (v8 == 1)
    {
      v10 = 0xD000000000000020;
      v11 = 0x800000024592A9D0;
      v12 = v1;
    }

    else
    {
      v11 = 0x8000000245926590;
      v12 = v1;
      v10 = 0xD000000000000012;
    }

    sub_245887AB8(v12, v10, v11, 0, sub_2458680A0, v9);
  }
}

void sub_245867B8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(*(Strong + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_proofingFlowManager) + 336);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v4 = sub_24590ECE4();
      sub_2458686A8(&qword_27EE2ABC8, MEMORY[0x277CFF248]);
      v5 = swift_allocError();
      (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277CFF240], v4);
      sub_2458576BC(v5, 0);
    }
  }
}

id sub_245867CF4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = sub_2459107F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_session] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_navigationController] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_originalTopVC] = 0;
  v12 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_encryptionQueue;
  sub_24579D5E0(0, &qword_27EE2ABC0);
  (*(v9 + 104))(v11, *MEMORY[0x277D851C8], v8);
  v13 = sub_245911074();
  (*(v9 + 8))(v11, v8);
  *&a4[v12] = v13;
  v14 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_config;
  v15 = sub_24590ED94();
  v16 = *(*(v15 - 8) + 56);
  v16(&a4[v14], 1, 1, v15);
  v16(&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_ilsuConfig], 1, 1, v15);
  a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_isPerformingInlineStepUp] = 0;
  v17 = &a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_passingIMQResult];
  v18 = *MEMORY[0x277CFF848];
  v19 = sub_24590E9D4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  v21 = type metadata accessor for RGBCaptureIMQResult(0);
  v22 = &v17[v21[5]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v17[v21[6]] = 0;
  v17[v21[7]] = 0;
  (*(v20 + 56))(&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_lastResult], 1, 1, v19);
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_resultCount] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameCount] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_selfieCount] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_repeatCount] = 3;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_frameRate] = 5;
  v23 = &a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_delegate];
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_24590CB44();
  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_documentsRepository] = a1;
  *(v23 + 1) = &off_285889B98;
  swift_unknownObjectWeakAssign();

  *&a4[OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureSessionManager_proofingFlowManager] = a3;
  v24 = type metadata accessor for RGBCaptureSessionManager(0);
  v26.receiver = a4;
  v26.super_class = v24;
  return objc_msgSendSuper2(&v26, sel_init);
}

void sub_2458680A8()
{
  sub_24590ED84();
  v1 = OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_eligibilityHelper;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v2 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  v3 = sub_24590C8B4();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_previewedLivePhoto) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_axFlowEnabledFlag) = 2;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_timeoutRestarts) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_stitchDetectedRestarts) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceOutOfBoundsRestarts) = 0;
  *(v2 + 16) = v3;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_faceTooSmallRestarts) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI24RGBCaptureViewController_sentToBackgroundRestarts) = 0;
  sub_2459115D4();
  __break(1u);
}

void sub_2458681BC(void *a1)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ABD0);
  if (swift_dynamicCastClass())
  {
LABEL_2:
    v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelBarButtonClicked];
    v8 = [a1 navigationItem];
    [v8 setHidesBackButton:1 animated:0];

    v9 = [a1 navigationItem];
    [v9 setLeftBarButtonItem_];

    sub_24590C714();
    v10 = a1;
    v11 = sub_24590F344();
    v12 = sub_245910F54();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_245767000, v11, v12, "RGBLiveness UI, %@ Adding a cancel button", v13, 0xCu);
      sub_245778F94(v14, &qword_27EE297C0);
      MEMORY[0x245D77B40](v14, -1, -1);
      MEMORY[0x245D77B40](v13, -1, -1);
      v16 = v7;
    }

    else
    {
      v16 = v11;
      v11 = v7;
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v17 = [v1 navigationController];
  if (!v17)
  {
    return;
  }

  v28 = v17;
  v18 = [v28 viewControllers];
  sub_24579D5E0(0, &qword_27EE28F28);
  v19 = sub_245910C44();

  if (v19 >> 62)
  {
    v20 = sub_245911424();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 != 1)
  {
    goto LABEL_21;
  }

  v21 = [v28 viewControllers];
  v22 = sub_245910C44();

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  if (!sub_245911424())
  {
LABEL_20:

LABEL_21:

    v26 = v28;

    return;
  }

LABEL_10:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x245D76B30](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  type metadata accessor for RGBCaptureViewController();
  v25 = swift_dynamicCastClass();

  if (v25)
  {
    goto LABEL_2;
  }
}

uint64_t sub_2458685D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_24585FFAC(a1, v4, v5, v6);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2458686A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2458686FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_245860A84(a1, v4, v5, v7, v6);
}

uint64_t sub_2458687BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_24586174C(a1, v4, v5, v6);
}

uint64_t sub_24586887C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_24590EA74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_24590EA54();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2457C50A4(v2);
    return -6000;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v7, v9, v3);
  v11 = (*(v4 + 88))(v7, v3);
  if (v11 == *MEMORY[0x277CFF9C8])
  {
    (*(v4 + 8))(v9, v3);
    return -6001;
  }

  else
  {
    v13 = v11 == *MEMORY[0x277CFFCD0] || v11 == *MEMORY[0x277CFFD38] || v11 == *MEMORY[0x277CFFD08];
    if (v13 || v11 == *MEMORY[0x277CFFC78])
    {
      (*(v4 + 8))(v9, v3);
      return -6002;
    }

    else
    {
      if (v11 != *MEMORY[0x277CFFC90])
      {
        v14 = *(v4 + 8);
        v14(v9, v3);
        v14(v7, v3);
        return -6000;
      }

      (*(v4 + 8))(v9, v3);
      return -6003;
    }
  }
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245868C08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_245868C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245868CB4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_245868CE4()
{
  v1 = *(v0 + 24);

  return v1;
}

void *sub_245868D1C()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_245868D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590E544();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v84 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v84 - v11;
  MEMORY[0x28223BE20](v10);
  v86 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v87 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v84 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v84 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v84 - v25;
  v89 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
  v27 = *(v5 + 56);
  v27(&v84 - v25, 1, 1, v4);
  v28 = *(a1 + 144);
  v88 = a1;
  v29 = *(a1 + 232);
  if (v28 == 2)
  {
    if (v29 && *(v29 + 16))
    {

      v34 = sub_24588C5BC(0xD000000000000012, 0x800000024592AC40);
      if (v35)
      {
        (*(v5 + 16))(v21, *(v29 + 56) + *(v5 + 72) * v34, v4);

        v36 = v21;
        v37 = 0;
      }

      else
      {

        v36 = v21;
        v37 = 1;
      }

      v27(v36, v37, 1, v4);
      v24 = v21;
    }

    else
    {
      v27(v21, 1, 1, v4);

      v24 = v21;
    }
  }

  else if (v28 == 3)
  {
    if (v29 && *(v29 + 16))
    {

      v30 = sub_24588C5BC(0xD000000000000011, 0x800000024592AC60);
      if (v31)
      {
        (*(v5 + 16))(v24, *(v29 + 56) + *(v5 + 72) * v30, v4);

        v32 = v24;
        v33 = 0;
      }

      else
      {

        v32 = v24;
        v33 = 1;
      }

      v27(v32, v33, 1, v4);
    }

    else
    {
      v27(v24, 1, 1, v4);
    }
  }

  else
  {
    if (v29 && *(v29 + 16))
    {

      v38 = sub_24588C5BC(0xD000000000000012, 0x800000024592AC20);
      if (v39)
      {
        (*(v5 + 16))(v18, *(v29 + 56) + *(v5 + 72) * v38, v4);

        v40 = v18;
        v41 = 0;
      }

      else
      {

        v40 = v18;
        v41 = 1;
      }

      v27(v40, v41, 1, v4);
    }

    else
    {
      v27(v18, 1, 1, v4);
    }

    v24 = v18;
  }

  sub_245869774(v24, v26);
  v42 = *(v5 + 48);
  if (v42(v26, 1, v4))
  {
    v92 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v86;
    (*(v5 + 16))(v86, v26, v4);
    v92 = sub_24590E504();
    v43 = v45;
    (*(v5 + 8))(v44, v4);
  }

  if (!v42(v26, 1, v4))
  {
    v53 = v91;
    (*(v5 + 16))(v91, v26, v4);
    v54 = sub_24590E534();
    (*(v5 + 8))(v53, v4);
    if (v54)
    {
      if (v54[2])
      {
        v46 = v54[5];
        v91 = v54[4];

        goto LABEL_30;
      }
    }
  }

  v91 = 0;
  v46 = 0;
LABEL_30:
  if (v42(v26, 1, v4) || (v55 = v90, (*(v5 + 16))(v90, v26, v4), v56 = sub_24590E514(), (*(v5 + 8))(v55, v4), !v56))
  {
LABEL_31:
    v90 = 0;
    v47 = 0;
    if (!v43)
    {
      goto LABEL_41;
    }

LABEL_32:

    v92 = sub_24586C880(v92, v43);
    v86 = v48;
    swift_bridgeObjectRelease_n();
    if (!v46)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  if (!v56[2])
  {

    goto LABEL_31;
  }

  v47 = v56[5];
  v90 = v56[4];

  if (v43)
  {
    goto LABEL_32;
  }

LABEL_41:
  v86 = 0;
  if (!v46)
  {
LABEL_42:
    v85 = 0;
    v49 = v88;
    if (!v47)
    {
      goto LABEL_43;
    }

LABEL_34:

    v90 = sub_24586C880(v90, v47);
    v52 = v51;
    swift_bridgeObjectRelease_n();
    goto LABEL_44;
  }

LABEL_33:

  v49 = v88;
  v91 = sub_24586C880(v91, v46);
  v85 = v50;
  swift_bridgeObjectRelease_n();
  if (v47)
  {
    goto LABEL_34;
  }

LABEL_43:
  v52 = 0;
LABEL_44:
  v57 = v87;
  sub_2457934F4(v26, v87);
  if (v42(v57, 1, v4) == 1)
  {
    v58 = 0;
  }

  else
  {
    v59 = v84;
    (*(v5 + 32))(v84, v57, v4);
    v60 = sub_24590E4E4();
    if (v60)
    {
      if (*(v60 + 16))
      {

        (*(v5 + 8))(v59, v4);

        v61 = sub_24590E634();
        v63 = v62;

        if (v63)
        {
          v93 = v61;
          v94 = v63;
          MEMORY[0x245D76160](46, 0xE100000000000000);
          if (*(v49 + 288))
          {
            v64 = sub_245910A84();
            v66 = v65;
          }

          else
          {
            v64 = 0;
            v66 = 0xE000000000000000;
          }

          MEMORY[0x245D76160](v64, v66);
          swift_bridgeObjectRelease_n();

          v67 = v93;
          v68 = v94;
        }

        else
        {
          swift_bridgeObjectRelease_n();
          v67 = 0;
          v68 = 0xE000000000000000;
        }

        v69 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
        swift_beginAccess();
        v70 = *(v49 + v69);
        if (*(v70 + 16))
        {

          v71 = sub_24588C5BC(v67, v68);
          if (v72)
          {
            v73 = (*(v70 + 56) + 16 * v71);
            v75 = *v73;
            v74 = v73[1];
            sub_24578FB80(*v73, v74);

            v76 = objc_allocWithZone(MEMORY[0x277D755B8]);
            sub_24578FB80(v75, v74);
            v77 = sub_24590C144();
            v58 = [v76 initWithData_];

            sub_24578FC28(v75, v74);
            v78 = v75;
            v49 = v88;
            sub_24578FC28(v78, v74);
            goto LABEL_64;
          }
        }

        v58 = 0;
        goto LABEL_64;
      }
    }

    (*(v5 + 8))(v59, v4);
    v58 = 0;
  }

LABEL_64:
  v79 = *(v49 + 144);

  result = sub_245793564(v26);
  v81 = v92;
  *a2 = v89;
  *(a2 + 8) = v81;
  v82 = v91;
  *(a2 + 16) = v86;
  *(a2 + 24) = v82;
  v83 = v90;
  *(a2 + 32) = v85;
  *(a2 + 40) = v83;
  *(a2 + 48) = v52;
  *(a2 + 56) = 1;
  *(a2 + 64) = v58;
  *(a2 + 72) = 2;
  *(a2 + 74) = (v79 & 3) == 2;
  *(a2 + 75) = 1;
  return result;
}

uint64_t sub_245869774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245869840()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = sub_24590DF24();
  v3 = v2;
  if (*(*&v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAddedToWalletViewController_proofingFlowManager] + 144) == 2)
  {

    v4 = sub_24590DFA4();
    v3 = v5;
  }

  else
  {
    v4 = v1;
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 2) = v6;
  *(v7 + 3) = v4;
  *(v7 + 4) = v3;
  v8 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v9 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v8 = sub_245869D68;
  v8[1] = v7;

  sub_245771C34(v9);

  sub_24590E324();
  sub_24590E1D4();
  sub_24590E484();
}

uint64_t sub_2458699F4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAddedToWalletViewController_proofingFlowManager);
    v2 = result;
    v3 = objc_allocWithZone(type metadata accessor for UsingYourIDViewController());
    *&v3[OBJC_IVAR____TtC9CoreIDVUI25UsingYourIDViewController_proofingFlowManager] = v1;
    v4 = swift_retain_n();
    sub_2458B02EC(v4, v8);
    v5 = sub_24588EF48(v8, v3);
    v6 = [v2 navigationController];
    sub_24586D558(v5, v6);

    v7 = *&v2[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAddedToWalletViewController_viewConfig + 64];

    sub_24590E3B4();
    sub_24590E1D4();
    sub_24590E484();
  }

  return result;
}

void sub_245869C20()
{

  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAddedToWalletViewController_viewConfig + 64);
}

id sub_245869D74()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setShowsVerticalScrollIndicator_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_245869E10()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___primaryStackView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___primaryStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___primaryStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlignment_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_245869ED4()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___bottomTray;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___bottomTray);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___bottomTray);
  }

  else
  {
    v4 = sub_2457AFEC0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_245869F34()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = sub_245869D74();
  v5 = sub_245869E10();
  [v4 addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = sub_245869ED4();
  [v6 addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  v9 = OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___scrollView;
  [result addSubview_];

  v10 = OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___bottomTray;
  v11 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___bottomTray] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  v13 = [result safeAreaLayoutGuide];

  v14 = [v13 bottomAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:-40.0];

  v16 = OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController_bottomTrayBottomConstraint;
  v17 = *&v0[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController_bottomTrayBottomConstraint];
  *&v0[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController_bottomTrayBottomConstraint] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2459176D0;
  v19 = [*&v0[v10] widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = result;
  v21 = [result widthAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:-40.0];
  *(v18 + 32) = v22;
  v23 = [*&v0[v10] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = result;
  v25 = [result centerXAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v18 + 40) = v26;
  v27 = [*&v0[v9] bottomAnchor];
  v28 = [*&v0[v10] topAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v18 + 48) = v29;
  v30 = [*&v0[v9] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = result;
  v32 = [result safeAreaLayoutGuide];

  v33 = [v32 topAnchor];
  v34 = [v30 constraintEqualToAnchor_];

  *(v18 + 56) = v34;
  v35 = [*&v0[v9] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = result;
  v63 = v16;
  v37 = [result safeAreaLayoutGuide];

  v38 = [v37 leadingAnchor];
  v39 = [v35 constraintEqualToAnchor:v38 constant:24.0];

  *(v18 + 64) = v39;
  v40 = [*&v0[v9] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v41 = result;
  v62 = objc_opt_self();
  v42 = [v41 safeAreaLayoutGuide];

  v43 = [v42 trailingAnchor];
  v44 = [v40 constraintEqualToAnchor:v43 constant:-24.0];

  *(v18 + 72) = v44;
  v45 = OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___primaryStackView;
  v46 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___primaryStackView] topAnchor];
  v47 = [*&v0[v9] topAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v18 + 80) = v48;
  v49 = [*&v0[v45] bottomAnchor];
  v50 = [*&v0[v9] bottomAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v18 + 88) = v51;
  v52 = [*&v0[v45] leadingAnchor];
  v53 = [*&v0[v9] leadingAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v18 + 96) = v54;
  v55 = [*&v0[v45] trailingAnchor];
  v56 = [*&v0[v9] trailingAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v18 + 104) = v57;
  v58 = [*&v0[v45] widthAnchor];
  v59 = [*&v0[v9] widthAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v18 + 112) = v60;
  sub_2457B191C();
  v61 = sub_245910C34();

  [v62 activateConstraints_];

  result = *&v0[v63];
  if (result)
  {

    return [result setActive_];
  }

  return result;
}

id sub_24586A770(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController_shouldHideBackButton] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController_bottomTrayBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___scrollView] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___primaryStackView] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___bottomTray] = 0;
  if (a2)
  {
    v5 = sub_2459109C4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for IdentityProofingBaseViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_24586A88C(void *a1)
{
  v1[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController_shouldHideBackButton] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController_bottomTrayBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___scrollView] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___primaryStackView] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI34IdentityProofingBaseViewController____lazy_storage___bottomTray] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for IdentityProofingBaseViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24586A958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingBaseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24586AA40(unint64_t a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = [objc_opt_self() di_mainScreen];
  [v15 scale];
  v17 = v16;

  if (!a1)
  {
    goto LABEL_22;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
      goto LABEL_4;
    }

LABEL_22:
    sub_24590C714();
    v34 = sub_24590F344();
    v35 = sub_245910F54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_245767000, v34, v35, "invalid asset data from the config", v36, 2u);
      MEMORY[0x245D77B40](v36, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  result = sub_245911424();
  if (result < 1)
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x245D76B30](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(a1 + 32);
  }

  v20 = v19;
  v21 = sub_24590D754();
  if (!v22)
  {
    sub_24590C714();
    v25 = sub_24590F344();
    v26 = sub_245910F54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_245767000, v25, v26, "Invalid assetID", v27, 2u);
      MEMORY[0x245D77B40](v27, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  v38 = v21;
  if (v17 <= 2.0 || (sub_24590D744(), v23 >> 60 == 15))
  {
    sub_24590D734();
    if (v24 >> 60 == 15)
    {

      return 0;
    }

    else
    {
      sub_24590C714();
      v28 = sub_24590F344();
      v29 = sub_245910F54();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_245767000, v28, v29, "returning 2x size image based on the screen scale factor", v30, 2u);
        MEMORY[0x245D77B40](v30, -1, -1);
      }

      (*(v3 + 8))(v12, v2);
      return v38;
    }
  }

  else
  {
    sub_24590C714();
    v31 = sub_24590F344();
    v32 = sub_245910F54();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_245767000, v31, v32, "returning 3x size image based on the screen scale factor", v33, 2u);
      MEMORY[0x245D77B40](v33, -1, -1);
    }

    (*(v3 + 8))(v14, v2);
    return v38;
  }
}

uint64_t sub_24586AEE4()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {

    return swift_unknownObjectRetain();
  }

  else
  {
    sub_24590C714();
    v7 = sub_24590F344();
    v8 = sub_245910F54();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245767000, v7, v8, "IdentityProofingFlowManager creating a new xpc connection", v9, 2u);
      MEMORY[0x245D77B40](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v10 = objc_allocWithZone(sub_24590D864());

    v11 = sub_24590D854();
    *(v1 + 16) = v11;
    v12 = v11;
    swift_unknownObjectRelease();
    return v12;
  }
}

void sub_24586B0F4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() currentNotificationCenter];
    v4[4] = sub_24586B318;
    v4[5] = v1;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_245823208;
    v4[3] = &block_descriptor_25;
    v3 = _Block_copy(v4);

    [v2 getNotificationSettingsWithCompletionHandler_];
    _Block_release(v3);
  }
}

uint64_t sub_24586B2B4()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24586B338()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_24590EA74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  sub_24590EA54();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2457C50A4(v2);
    return -5000;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v7, v9, v3);
  v11 = (*(v4 + 88))(v7, v3);
  if (v11 == *MEMORY[0x277CFF9C8] || v11 == *MEMORY[0x277CFFB30] || v11 == *MEMORY[0x277CFFA40] || v11 == *MEMORY[0x277CFFB70] || v11 == *MEMORY[0x277CFF9B8] || v11 == *MEMORY[0x277CFF9F8] || v11 == *MEMORY[0x277CFFBB0] || v11 == *MEMORY[0x277CFFAC8])
  {
    goto LABEL_27;
  }

  if (v11 == *MEMORY[0x277CFFAA0])
  {
    (*(v4 + 8))(v9, v3);
    return -5005;
  }

  if (v11 == *MEMORY[0x277CFFB90] || v11 == *MEMORY[0x277CFFA50])
  {
    goto LABEL_27;
  }

  if (v11 == *MEMORY[0x277CFFA68])
  {
    (*(v4 + 8))(v9, v3);
    return -5002;
  }

  if (v11 == *MEMORY[0x277CFFAF8])
  {
    goto LABEL_27;
  }

  if (v11 == *MEMORY[0x277CFFA98])
  {
    (*(v4 + 8))(v9, v3);
    return -5006;
  }

  if (v11 == *MEMORY[0x277CFFA80])
  {
LABEL_27:
    (*(v4 + 8))(v9, v3);
    return -5001;
  }

  if (v11 == *MEMORY[0x277CFFA78])
  {
    (*(v4 + 8))(v9, v3);
    return -5007;
  }

  else
  {
    if (v11 != *MEMORY[0x277CFFAD0])
    {
      v19 = *(v4 + 8);
      v19(v9, v3);
      v19(v7, v3);
      return -5000;
    }

    (*(v4 + 8))(v9, v3);
    return -5008;
  }
}

uint64_t sub_24586B7E4()
{
  sub_2457B2F00(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24586B86C()
{
  v1 = *v0;
  v2 = 3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v2;
}

uint64_t sub_24586B8EC(uint64_t a1, void *a2, int a3)
{
  v32 = a3;
  v5 = sub_24590C234();
  MEMORY[0x28223BE20](v5 - 8);
  v30[1] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2459109B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24590D5E4();
  v10 = v8;
  if (v9)
  {
    v10 = sub_24586C880(v8, v9);
    v31 = v11;
  }

  else
  {
    v31 = 0;
  }

  v12 = sub_24590D624();
  if (v12)
  {
    if (v12[2])
    {
      v13 = v12[4];
      v14 = v12[5];
      swift_bridgeObjectRetain_n();

      v15 = sub_24586C880(v13, v14);
      v17 = v16;
      swift_bridgeObjectRelease_n();
      goto LABEL_9;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_9:
  v18 = sub_24590D584();
  v20 = v18;
  if (v19)
  {
    v20 = sub_24586C880(v18, v19);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 144);
  type metadata accessor for IdentityProofingErrorViewConfiguration();
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 64) = 1;
  *(v24 + 72) = sub_24590D534();
  *(v24 + 80) = v25;
  *(v24 + 88) = 0;
  *(v24 + 112) = 259;
  v26 = v31;
  *(v24 + 32) = v10;
  *(v24 + 40) = v26;
  *(v24 + 48) = v15;
  *(v24 + 56) = v17;
  if (v32)
  {

    sub_245910944();
    if (qword_27EE28690 != -1)
    {
      swift_once();
    }

    v27 = qword_27EE32B38;
    sub_24590C224();
    v20 = sub_245910A54();
    v22 = v28;
  }

  *(v24 + 96) = v20;
  *(v24 + 104) = v22;
  *(v24 + 114) = (v23 & 3) == 2;
  return v24;
}

uint64_t sub_24586BBB4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_24590C234();
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2459109B4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24590E504();
  v11 = v9;
  if (v10)
  {
    v11 = sub_24586C880(v9, v10);
    v36 = v12;
  }

  else
  {
    v36 = 0;
  }

  v13 = sub_24590E534();
  if (v13)
  {
    if (v13[2])
    {
      v14 = v13[4];
      v15 = v13[5];
      swift_bridgeObjectRetain_n();

      v16 = sub_24586C880(v14, v15);
      v18 = v17;
      swift_bridgeObjectRelease_n();
      goto LABEL_9;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_9:
  v19 = sub_24590E514();
  if (v19)
  {
    if (v19[2])
    {
      v20 = a3;
      v22 = v19[4];
      v21 = v19[5];
      swift_bridgeObjectRetain_n();

      v23 = sub_24586C880(v22, v21);
      v25 = v24;
      a3 = v20;
      swift_bridgeObjectRelease_n();
      goto LABEL_14;
    }
  }

  v23 = 0;
  v25 = 0;
LABEL_14:
  v35 = *(a1 + 144);
  type metadata accessor for IdentityProofingErrorViewConfiguration();
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + 64) = 1;
  *(v26 + 72) = sub_24590D534();
  *(v26 + 80) = v27;
  *(v26 + 88) = 0;
  *(v26 + 112) = 259;
  v28 = v36;
  *(v26 + 32) = v11;
  *(v26 + 40) = v28;
  *(v26 + 48) = v16;
  *(v26 + 56) = v18;
  if (a3)
  {

    sub_245910944();
    if (qword_27EE28690 != -1)
    {
      swift_once();
    }

    v29 = qword_27EE32B38;
    sub_24590C224();
    v23 = sub_245910A54();
    v25 = v30;

    v31 = sub_24590E544();
    (*(*(v31 - 8) + 8))(a2, v31);
  }

  else
  {
    v32 = sub_24590E544();
    (*(*(v32 - 8) + 8))(a2, v32);
  }

  *(v26 + 96) = v23;
  *(v26 + 104) = v25;
  *(v26 + 114) = (v35 & 3) == 2;
  return v26;
}

uint64_t sub_24586BF94()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for IdentityProofingErrorViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v2 = sub_24586C824;
  v2[1] = v1;

  sub_245771C34(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  v6 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v5 = sub_24586C82C;
  v5[1] = v4;

  sub_245771C34(v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v9 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v8 = sub_24586C834;
  v8[1] = v7;

  sub_245771C34(v9);
}

void sub_24586C114()
{
  v0 = sub_24590EA74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24590EA84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v1 + 104))(v3, *MEMORY[0x277CFFAD0], v0);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA94();
    if (*&v9[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager])
    {
      sub_2457D8B88(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v10 = swift_allocError();
      (*(v5 + 16))(v11, v7, v4);
      sub_245883548(v10);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_24586C3C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_24590C094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager);
    v9 = Strong;

    if (v8)
    {
      if (*(v8 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL + 8))
      {

        sub_24590C084();

        if ((*(v4 + 48))(v2, 1, v3) == 1)
        {
          sub_2457B2590(v2);
        }

        else
        {
          (*(v4 + 32))(v6, v2, v3);
          v10 = [objc_opt_self() sharedApplication];
          v11 = sub_24590C034();
          sub_2458B880C(MEMORY[0x277D84F90]);
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_2457D8B88(&qword_27EE28988, type metadata accessor for OpenExternalURLOptionsKey);
          v12 = sub_2459108E4();

          [v10 openURL:v11 options:v12 completionHandler:0];

          (*(v4 + 8))(v6, v3);
        }
      }
    }
  }
}

void sub_24586C680()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager))
    {

      sub_245883548(0);
    }
  }
}

uint64_t sub_24586C740()
{
}

id sub_24586C780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingErrorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24586C83C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24586C880(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();

  v10 = sub_24590F344();
  v11 = sub_245910F54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2458CC378(a1, a2, &v17);
    _os_log_impl(&dword_245767000, v10, v11, "looking up text for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245D77B40](v13, -1, -1);
    MEMORY[0x245D77B40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if (!*(v3 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_textReplacementHelper))
  {
    return 0;
  }

  v14 = sub_24590E664();

  return v14;
}

void sub_24586CA74(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24590F354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2458919E0();
  type metadata accessor for IdentityProofingTCViewController();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v4 + 176);
    *(v5 + 176) = v14;
    v16 = v33;

    swift_weakAssign();
    sub_24590C714();
    v17 = sub_24590F344();
    v18 = sub_245910F54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = a1;
      v20 = a3;
      v21 = a4;
      v22 = v19;
      *v19 = 0;
      _os_log_impl(&dword_245767000, v17, v18, "The page to show is termsAndConditions", v19, 2u);
      v23 = v22;
      a4 = v21;
      a3 = v20;
      a1 = v33;
      MEMORY[0x245D77B40](v23, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v24 = *(v5 + 176);
    if (v24)
    {
      v25 = v24;
      sub_2458978FC(a1, a3, a4);
    }

    v26 = *(v5 + 176);
    if (v26)
    {
      v27 = &v26[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeClicked];
      v28 = *&v26[OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_agreeClicked];
      *v27 = sub_245892458;
      v27[1] = v5;
      v29 = v26;

      sub_245771C34(v28);
    }
  }

  else
  {
    if (a1)
    {
      v30 = v33;
      if (a2 == 2)
      {
        a2 = sub_245887110(v33);
        v30 = v33;
      }

      sub_245780628(v30, a2 & 1, a3, a4);
    }

    v31 = v33;
  }
}

uint64_t sub_24586CD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_24590C094();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (!*(v2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL + 8))
    {
      return result;
    }
  }

  sub_24590C084();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_245778F94(v6, &unk_27EE29470);
  }

  (*(v8 + 32))(v11, v6, v7);
  v12 = [objc_opt_self() sharedApplication];
  v13 = sub_24590C034();
  sub_2458B880C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_245892EA0(&qword_27EE28988, type metadata accessor for OpenExternalURLOptionsKey);
  v14 = sub_2459108E4();

  [v12 openURL:v13 options:v14 completionHandler:0];

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_24586CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_245778F2C(a3, v22 - v9, &unk_27EE297B0);
  v11 = sub_245910D64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_245778F94(v10, &unk_27EE297B0);
  }

  else
  {
    sub_245910D54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_245910CD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_245910AA4() + 32;

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

      sub_245778F94(a3, &unk_27EE297B0);

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

  sub_245778F94(a3, &unk_27EE297B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24586D278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_245778F2C(a3, v24 - v11, &unk_27EE297B0);
  v13 = sub_245910D64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_245778F94(v12, &unk_27EE297B0);
  }

  else
  {
    sub_245910D54();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_245910CD4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_245910AA4() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_245778F94(a3, &unk_27EE297B0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_245778F94(a3, &unk_27EE297B0);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_24586D558(void *a1, void *a2)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245887110(a1);
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_245767000, v9, v10, "shouldAnimate while pushing viewcontroller on the navigation stack : %{BOOL}d", v11, 8u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return [a2 pushViewController:a1 animated:v8];
}

uint64_t sub_24586D6DC(void *a1)
{
  v54 = a1;
  v2 = sub_24590F354();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v55 = v1;
  v56 = v4;
  v17 = *(v1 + 232);
  v59 = &v52 - v15;
  if (v17 && *(v17 + 16))
  {

    v18 = sub_24588C5BC(0xD00000000000001FLL, 0x800000024592C090);
    if (v19)
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = sub_24590E544();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = v21 + *(v23 + 72) * v20;
      v16 = v59;
      (*(v23 + 16))(v59, v25, v22);

      (*(v24 + 56))(v16, 0, 1, v22);
    }

    else
    {

      v22 = sub_24590E544();
      v16 = v59;
      (*(*(v22 - 8) + 56))(v59, 1, 1, v22);
    }
  }

  else
  {
    v22 = sub_24590E544();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  sub_245778F2C(v16, v14, &qword_27EE28F30);
  sub_24590E544();
  v26 = *(v22 - 8);
  v27 = *(v26 + 48);
  if (v27(v14, 1, v22) == 1)
  {
    sub_245778F94(v14, &qword_27EE28F30);
  }

  else
  {
    v28 = sub_24590E504();
    v30 = v29;
    (*(v26 + 8))(v14, v22);
    if (v30)
    {
      v53 = sub_24586C880(v28, v30);
      v32 = v31;

      goto LABEL_12;
    }
  }

  v53 = 0;
  v32 = 0;
LABEL_12:
  sub_245778F2C(v16, v11, &qword_27EE28F30);
  if (v27(v11, 1, v22) == 1)
  {
    sub_245778F94(v11, &qword_27EE28F30);
  }

  else
  {
    v33 = sub_24590E534();
    (*(v26 + 8))(v11, v22);
    if (v33)
    {
      if (v33[2])
      {
        v35 = v33[4];
        v34 = v33[5];

        sub_24586C880(v35, v34);
        v37 = v36;
        v16 = v59;

        goto LABEL_19;
      }
    }
  }

  v37 = 0;
LABEL_19:
  sub_245778F2C(v16, v8, &qword_27EE28F30);
  if (v27(v8, 1, v22) == 1)
  {
    sub_245778F94(v8, &qword_27EE28F30);
  }

  else
  {
    v38 = sub_24590E514();
    (*(v26 + 8))(v8, v22);
    if (!v38)
    {
      if (!v32)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v38[2])
    {
      v39 = v38[4];
      v40 = v38[5];

      sub_24586C880(v39, v40);
      v38 = v41;

      if (!v32)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  v38 = 0;
  if (!v32)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v37 && v38)
  {
    v42 = sub_2459109C4();

    v43 = sub_2459109C4();

    v44 = [objc_opt_self() alertControllerWithTitle:v42 message:v43 preferredStyle:1];

    v45 = sub_2459109C4();

    v46 = [objc_opt_self() actionWithTitle:v45 style:0 handler:0];

    [v44 addAction_];
    [v54 presentViewController:v44 animated:1 completion:0];

    return sub_245778F94(v59, &qword_27EE28F30);
  }

LABEL_31:

  v47 = v56;
  sub_24590C714();
  v48 = sub_24590F344();
  v49 = sub_245910F54();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_245767000, v48, v49, "Unable to show the Account Service unable alert as the server doesn't have the related fields in the config", v50, 2u);
    MEMORY[0x245D77B40](v50, -1, -1);
  }

  (*(v57 + 8))(v47, v58);
  return sub_245778F94(v59, &qword_27EE28F30);
}

uint64_t sub_24586DE3C(void *a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a3;
  v73 = a2;
  v4 = sub_24590F354();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v70 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  v79 = v3;
  v18 = *(v3 + 232);
  if (v18 && *(v18 + 16))
  {

    v19 = sub_24588C5BC(0x4153487472656C61, 0xE900000000000032);
    if (v20)
    {
      v21 = v19;
      v22 = *(v18 + 56);
      v23 = sub_24590E544();
      v24 = *(v23 - 8);
      (*(v24 + 16))(v17, v22 + *(v24 + 72) * v21, v23);

      (*(v24 + 56))(v17, 0, 1, v23);
      goto LABEL_7;
    }
  }

  v23 = sub_24590E544();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
LABEL_7:
  sub_245778F2C(v17, v15, &qword_27EE28F30);
  sub_24590E544();
  v25 = *(v23 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v23) == 1)
  {
    sub_245778F94(v15, &qword_27EE28F30);
  }

  else
  {
    v27 = sub_24590E504();
    v29 = v28;
    (*(v25 + 8))(v15, v23);
    if (v29)
    {
      v72 = sub_24586C880(v27, v29);
      v31 = v30;

      goto LABEL_12;
    }
  }

  v72 = 0;
  v31 = 0;
LABEL_12:
  sub_245778F2C(v17, v12, &qword_27EE28F30);
  if (v26(v12, 1, v23) == 1)
  {
    sub_245778F94(v12, &qword_27EE28F30);
  }

  else
  {
    v32 = sub_24590E534();
    (*(v25 + 8))(v12, v23);
    if (v32)
    {
      if (v32[2])
      {
        v70 = v31;
        v33 = v17;
        v34 = v32[4];
        v35 = v32[5];

        v71 = sub_24586C880(v34, v35);
        v37 = v36;
        v17 = v33;
        v31 = v70;

        goto LABEL_19;
      }
    }
  }

  v71 = 0;
  v37 = 0;
LABEL_19:
  sub_245778F2C(v17, v9, &qword_27EE28F30);
  if (v26(v9, 1, v23) == 1)
  {
    sub_245778F94(v9, &qword_27EE28F30);
    v38 = 0;
    v39 = 0;
    if (!v31)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v56 = v17;
  v57 = sub_24590E514();
  (*(v25 + 8))(v9, v23);
  if (!v57)
  {
    goto LABEL_33;
  }

  v58 = v57[2];
  if (!v58)
  {

LABEL_33:
    v38 = 0;
    v39 = 0;
    goto LABEL_34;
  }

  v59 = v57[4];
  v60 = v57[5];

  sub_24586C880(v59, v60);
  v39 = v61;

  if (!v39 || v58 == 1)
  {

    v38 = 0;
    goto LABEL_34;
  }

  if (v57[2] >= 2uLL)
  {
    v67 = v57[6];
    v68 = v57[7];

    sub_24586C880(v67, v68);
    v38 = v69;

LABEL_34:
    v17 = v56;
    if (!v31)
    {
      goto LABEL_35;
    }

LABEL_21:
    if (v37 && v39 && v38)
    {
      v40 = sub_2459109C4();
      v78 = v17;
      v41 = v40;

      v42 = sub_2459109C4();

      v43 = [objc_opt_self() alertControllerWithTitle:v41 message:v42 preferredStyle:1];

      v44 = swift_allocObject();
      v45 = v73;
      v46 = v74;
      v44[2] = v79;
      v44[3] = v46;
      v47 = v75;
      v44[4] = v45;
      v44[5] = v47;

      v48 = v46;

      v49 = sub_2459109C4();

      aBlock[4] = sub_245892EE8;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_245823208;
      aBlock[3] = &block_descriptor_384;
      v50 = _Block_copy(aBlock);

      v51 = objc_opt_self();
      v52 = [v51 actionWithTitle:v49 style:0 handler:v50];
      v53 = v50;
      v17 = v78;
      _Block_release(v53);

      v54 = sub_2459109C4();

      v55 = [v51 actionWithTitle:v54 style:0 handler:0];

      [v43 addAction_];
      [v43 addAction_];
      [v48 presentViewController:v43 animated:1 completion:0];

      return sub_245778F94(v17, &qword_27EE28F30);
    }

LABEL_35:

    v63 = v76;
    sub_24590C714();
    v64 = sub_24590F344();
    v65 = sub_245910F54();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_245767000, v64, v65, "Unable to show the HSA2 upgrade alert as the server doesn't have the related fields in the config", v66, 2u);
      MEMORY[0x245D77B40](v66, -1, -1);
    }

    (*(v77 + 8))(v63, v78);
    return sub_245778F94(v17, &qword_27EE28F30);
  }

  __break(1u);
  return result;
}

void sub_24586E734(void *a1)
{
  v91 = a1;
  v1 = sub_24590CDC4();
  v90 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v89 = v82 - v5;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v85 = v82 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v84 = v82 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v82 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v86 = v82 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v87 = v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v82 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v88 = v82 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v82 - v26;
  sub_24590C714();
  v28 = sub_24590F344();
  v29 = sub_245910F54();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_245767000, v28, v29, "navigateToConsentScreenIfNecessary: Check if consent screens need to be shown", v30, 2u);
    MEMORY[0x245D77B40](v30, -1, -1);
  }

  v32 = v7 + 8;
  v31 = *(v7 + 8);
  v33 = v6;
  v31(v27, v6);
  v34 = v92;
  v35 = v92[21];
  if (v35)
  {
    v36 = v92[31];
    v37 = v35;
    v38 = v37;
    if (v36)
    {
      v39 = v37;
      sub_24590DDB4();
      v40 = v89;
      sub_24590CDD4();
      v41 = *MEMORY[0x277CFF448];
      v82[0] = v23;
      v82[1] = v32;
      v42 = v34;
      v43 = v33;
      v44 = v31;
      v45 = v39;
      v46 = v90;
      (*(v90 + 104))(v4, v41, v1);
      LOBYTE(v39) = sub_24590CDB4();
      v47 = *(v46 + 8);
      v47(v4, v1);
      v47(v40, v1);
      v38 = v45;
      v31 = v44;
      v33 = v43;
      v34 = v42;
      v23 = v82[0];
      if (v39)
      {
        v48 = v88;
        sub_24590C714();
        v49 = sub_24590F344();
        v50 = sub_245910F54();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_245767000, v49, v50, "fed-stats is enabled for passport proofing. Navigating to fed-stats screen", v51, 2u);
          MEMORY[0x245D77B40](v51, -1, -1);
        }

        v31(v48, v33);
        v52 = v42[31];
        v53 = objc_allocWithZone(type metadata accessor for IdentityProofingFedStatsOptinViewController());
        v54 = v52;

        v56 = sub_2457C1270(v55, v52);

        sub_24586D558(v56, v91);
        return;
      }
    }

    v57 = v91;
    if (sub_24579088C(v91))
    {
      sub_24590C714();
      v58 = sub_24590F344();
      v59 = sub_245910F54();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = v23;
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_245767000, v58, v59, "Proofing is in auth code flow. No consent screens to show. Terminating the proofing flow", v61, 2u);
        v62 = v61;
        v23 = v60;
        MEMORY[0x245D77B40](v62, -1, -1);
      }

      v63 = v23;
      goto LABEL_32;
    }

    v67 = v34[30];
    if (v34[31])
    {
      if (v67)
      {
        v68 = v87;
        sub_24590C714();
        v69 = sub_24590F344();
        v70 = sub_245910F54();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          v72 = "Proofing in both liveness and fed-stats enabled. Navigating to manual review UI";
LABEL_23:
          _os_log_impl(&dword_245767000, v69, v70, v72, v71, 2u);
          MEMORY[0x245D77B40](v71, -1, -1);
          goto LABEL_24;
        }

        goto LABEL_24;
      }

      if ((v34[18] & 3) != 2)
      {
        v78 = v84;
        sub_24590C714();
        v79 = sub_24590F344();
        v80 = sub_245910F54();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_245767000, v79, v80, "Proofing in only fed-stats enabled. Navigating to non manual review UI", v81, 2u);
          MEMORY[0x245D77B40](v81, -1, -1);
        }

        v31(v78, v33);
        sub_24588C11C(v57);
        goto LABEL_33;
      }

      v73 = v83;
      sub_24590C714();
      v74 = sub_24590F344();
      v75 = sub_245910F54();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        v77 = "No fed-stats in gift watch scenario. Terminating the proofing flow";
LABEL_30:
        _os_log_impl(&dword_245767000, v74, v75, v77, v76, 2u);
        MEMORY[0x245D77B40](v76, -1, -1);
      }
    }

    else
    {
      if (v67)
      {
        v68 = v86;
        sub_24590C714();
        v69 = sub_24590F344();
        v70 = sub_245910F54();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          v72 = "Proofing in only liveness enabled. Navigating to manual review UI";
          goto LABEL_23;
        }

LABEL_24:

        v31(v68, v33);
        sub_24588B688(v57);
LABEL_33:

        return;
      }

      v73 = v85;
      sub_24590C714();
      v74 = sub_24590F344();
      v75 = sub_245910F54();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        v77 = "Both fed-stats and liveness consent are not enabled. Terminating the proofing flow.";
        goto LABEL_30;
      }
    }

    v63 = v73;
LABEL_32:
    v31(v63, v33);
    sub_245883548(0);
    goto LABEL_33;
  }

  sub_24590C714();
  v64 = sub_24590F344();
  v65 = sub_245910F54();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_245767000, v64, v65, "Configuration doesn't exist to show consent screens. Terminating the proofing flow", v66, 2u);
    MEMORY[0x245D77B40](v66, -1, -1);
  }

  v31(v10, v33);
  sub_245883548(0);
}

uint64_t sub_24586EFCC(char a1)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager))
  {

    sub_24589C650(a1 & 1);
  }

  else
  {
    sub_24590C714();
    v8 = sub_24590F344();
    v9 = sub_245910F64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245767000, v8, v9, "livenessVideoUploadsManager is not instantiated yet, cannot upload liveness video.", v10, 2u);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24586F158(void *a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v5 = sub_245911024();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_245910FF4();
  MEMORY[0x28223BE20](v61);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245910814();
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AA90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v15 = type metadata accessor for IdentityProofingLivenessVideoData(0);
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v71 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v58 = sub_24590F354();
  v23 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  sub_245892CD4(a1, v22);
  sub_245892CD4(a1, v20);
  v26 = sub_24590F344();
  v27 = sub_245910F54();
  v28 = os_log_type_enabled(v26, v27);
  v69 = v14;
  v70 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57 = v2;
    v31 = v30;
    v72[0] = v30;
    *v29 = 136315394;
    v32 = sub_24590C064();
    v34 = v33;
    sub_245892D38(v22);
    v35 = sub_2458CC378(v32, v34, v72);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v36 = sub_24590C014();
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0x6E776F6E6B6E75;
    }

    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0xE700000000000000;
    }

    sub_245892D38(v20);
    v40 = sub_2458CC378(v38, v39, v72);
    a1 = v70;

    *(v29 + 14) = v40;
    _os_log_impl(&dword_245767000, v26, v27, "Liveness video data is stored in the instance variable %s with fileSize %s", v29, 0x16u);
    swift_arrayDestroy();
    v41 = v31;
    v3 = v57;
    MEMORY[0x245D77B40](v41, -1, -1);
    v42 = v29;
    v14 = v69;
    MEMORY[0x245D77B40](v42, -1, -1);
  }

  else
  {

    sub_245892D38(v20);
    sub_245892D38(v22);
  }

  (*(v23 + 8))(v25, v58);
  v43 = v3[33];
  v44 = v3[29];
  v45 = v3[14];
  sub_245892CD4(a1, v71);
  sub_245778F2C(v59, v14, &qword_27EE2AA90);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v58 = v44;

  v59 = v45;
  swift_unknownObjectRetain();

  sub_245910804();
  v72[0] = MEMORY[0x277D84F90];
  sub_245892EA0(&qword_27EE28E78, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E80);
  v46 = v3;
  sub_24578FCA0(&qword_27EE28E88, &qword_27EE28E80);
  sub_2459113A4();
  (*(v64 + 104))(v63, *MEMORY[0x277D85260], v65);
  v65 = sub_245911064();
  if (qword_27EE286A0 != -1)
  {
    swift_once();
  }

  v47 = qword_27EE32B48;
  type metadata accessor for IdentityProofingUploadsManager();
  v48 = swift_allocObject();
  sub_24590C794();

  v49 = sub_24590C784();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v49;
  *(v48 + 40) = 0;
  swift_weakInit();
  v50 = v67;
  v51 = *(v66 + 56);
  v51(v48 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_livenessVideoData, 1, 1, v67);
  v51(v48 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_auxiliaryVideoData, 1, 1, v50);
  *(v48 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_hasUserConsentToUploadOnExpensiveNetwork) = 0;
  v52 = v48 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_storedUploadSizeInBytes;
  *v52 = 0;
  *(v52 + 8) = 1;
  *(v48 + 32) = v43;

  *(v48 + 24) = v58;

  *(v48 + 48) = v59;
  swift_weakAssign();
  v53 = v68;
  sub_245892D94(v71, v68, type metadata accessor for IdentityProofingLivenessVideoData);
  v51(v53, 0, 1, v50);
  v54 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_livenessVideoData;
  swift_beginAccess();
  sub_24585EDD4(v53, v48 + v54, &qword_27EE2AA90);
  swift_endAccess();
  v55 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_auxiliaryVideoData;
  swift_beginAccess();
  sub_24585EDD4(v69, v48 + v55, &qword_27EE2AA90);
  swift_endAccess();
  *(v48 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_queue) = v65;
  *(v48 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_documentsRepository) = v47;
  *(v46 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager) = v48;

  return sub_245890058(v70);
}

uint64_t sub_24586F98C()
{
  v1 = v0[36];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[38];
  if (!v2)
  {
    return 0;
  }

  v3 = v0[35];
  v4 = v0[37];
  v7 = v0[10];
  v8 = v0[11];

  MEMORY[0x245D76160](46, 0xE100000000000000);
  MEMORY[0x245D76160](v4, v2);

  MEMORY[0x245D76160](46, 0xE100000000000000);
  MEMORY[0x245D76160](v3, v1);

  v5 = sub_24586FA80(v7, v8);

  return v5;
}

uint64_t sub_24586FA80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = v3[36];
  if (v13 && (v14 = v3[38]) != 0)
  {
    v38 = v3[35];
    v39 = v3[37];
    v40 = a1;

    sub_24590C714();

    v15 = sub_24590F344();
    v16 = sub_245910F54();

    if (os_log_type_enabled(v15, v16))
    {
      v37 = a2;
      v17 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v17 = 136315650;
      v18 = sub_2458CC378(v38, v13, &v41);

      *(v17 + 4) = v18;
      *(v17 + 12) = 2080;
      v19 = sub_2458CC378(v39, v14, &v41);

      *(v17 + 14) = v19;
      *(v17 + 22) = 2080;
      v20 = v3[21];
      if (v20)
      {
        v21 = v20;
        sub_24590DDB4();

        v22 = sub_24590CDA4();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 4999502;
      }

      v29 = sub_2458CC378(v22, v24, &v41);

      *(v17 + 24) = v29;
      _os_log_impl(&dword_245767000, v15, v16, "The state is %s, country is %s, documentType is %s", v17, 0x20u);
      v30 = v36;
      swift_arrayDestroy();
      MEMORY[0x245D77B40](v30, -1, -1);
      MEMORY[0x245D77B40](v17, -1, -1);

      (*(v7 + 8))(v12, v6);
      a2 = v37;
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v31 = v3[34];
    v32 = v40;
    if (*(v31 + 16))
    {

      v33 = sub_24588C5BC(v32, a2);
      if (v34)
      {
        v35 = *(*(v31 + 56) + 16 * v33);

        return v35;
      }
    }
  }

  else
  {
    sub_24590C714();
    v25 = sub_24590F344();
    v26 = sub_245910F54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_245767000, v25, v26, "State and Country cannot be nil)", v27, 2u);
      MEMORY[0x245D77B40](v27, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

void *sub_24586FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a6;
  v35 = a2;
  v33 = sub_24590F354();
  v12 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = 0xD000000000000010;
  *(v6 + 24) = 0x800000024592C190;
  strcpy((v6 + 32), "id.subregion");
  *(v6 + 45) = 0;
  *(v6 + 46) = -5120;
  strcpy((v6 + 48), "idtype.proper");
  *(v6 + 62) = -4864;
  strcpy((v6 + 64), "idtype.lower");
  *(v6 + 77) = 0;
  *(v6 + 78) = -5120;
  *(v6 + 80) = 0x6E2E726575737369;
  *(v6 + 88) = 0xEB00000000656D61;
  *(v6 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 136) = 0x4008000000000000;
  *(v6 + 144) = 0;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v6 + 216) = 0;
  *(v6 + 224) = 1;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  v15 = MEMORY[0x277D84F90];
  *(v6 + 264) = sub_2458B8388(MEMORY[0x277D84F90]);
  *(v6 + 272) = sub_2458B8388(v15);
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0;
  *(v6 + 320) = v15;
  *(v6 + 328) = v15;
  *(v6 + 336) = 0;
  v16 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_auxiliaryURL;
  v17 = sub_24590C094();
  (*(*(v17 - 8) + 56))(v6 + v16, 1, 1, v17);
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_textReplacementHelper) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchTask) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchError) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPreFetchLivenessConfig) = 2;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager) = 0;
  v18 = v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_waitingForWiFiAlertDataThresholdInBytes;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_lowDataModeAlertDataThresholdInBytes;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = (v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL);
  *v20 = 0;
  v20[1] = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPerformInlineStepUp) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_ilsuConfig) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) = 0;
  *(v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_selfieImageIsRequired) = 1;
  v21 = (v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__passcode);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter;
  sub_24590E4B4();
  *(v6 + v22) = sub_24590E4A4();
  v23 = (v6 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsSessionID);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
  *(v7 + v24) = sub_2458B849C(v15);
  v25 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__termsAndConditions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AD08);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v7 + v25) = v26;
  *(v7 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsStatusTask) = 0;
  *(v7 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsTask) = 0;
  *(v7 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_proofingDataTask) = 0;
  sub_24590C714();
  v27 = sub_24590F344();
  v28 = sub_245910F54();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_245767000, v27, v28, "IdentityProofingFlowManager - init", v29, 2u);
    MEMORY[0x245D77B40](v29, -1, -1);
  }

  (*(v12 + 8))(v14, v33);
  v7[19] = a1;
  v7[20] = a3;
  v7[15] = a4;
  *(v7 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_attributeConfigHelper) = a5;
  v7[16] = v34;

  v30 = sub_24586AEE4();

  v7[14] = v30;
  swift_weakAssign();

  swift_weakAssign();

  return v7;
}

id *sub_24587035C()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, "IdentityProofingFlowManager - deinit", v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  v15 = *(v3 + 8);
  v15(v11, v2);
  sub_24590D864();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_24590C714();
    v16 = sub_24590F344();
    v17 = sub_245910F54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v16, v17, "IdentityProofingFlowManager - connection is IdentityManagementUIClient, calling invalidate", v18, 2u);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    v15(v6, v2);
    sub_24590D844();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24590C714();
    v19 = sub_24590F344();
    v20 = sub_245910F54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_245767000, v19, v20, "IdentityProofingFlowManager - connection is not IdentityManagementUIClient, no invalidate called", v21, 2u);
      MEMORY[0x245D77B40](v21, -1, -1);
    }

    v15(v9, v2);
  }

  sub_2457B2F00((v1 + 12));
  swift_unknownObjectRelease();

  MEMORY[0x245D77C60](v1 + 25);
  MEMORY[0x245D77C60](v1 + 26);

  sub_245778F94(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_auxiliaryURL, &unk_27EE29470);

  return v1;
}

uint64_t sub_245870848()
{
  sub_24587035C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingFlowManager()
{
  result = qword_27EE2AC80;
  if (!qword_27EE2AC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2458708F4()
{
  sub_2457B9C88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_245870A70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590EA74();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245870BBC, 0, 0);
}

uint64_t sub_245870BBC()
{
  v1 = *(v0[3] + 168);
  v0[14] = v1;
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = v1;
  sub_24590DDC4();
  if ((v3 & 1) != 0 || (v4 = sub_24590C754(), v4 != sub_24590C754()))
  {

LABEL_19:
    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[11];
    v18 = v0[7];
    v19 = v0[8];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_245767000, v14, v15, "IdentityProofingFlowManager configuration is not eligible for precursor provisioning", v20, 2u);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    (*(v19 + 8))(v17, v18);
    goto LABEL_22;
  }

  v5 = sub_24590DA44();
  if (!v5)
  {
    (*(v0[5] + 104))(v0[6], *MEMORY[0x277CFFAC8], v0[4]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    v23 = v0[14];
    swift_willThrow();

    v21 = v0[1];
    goto LABEL_23;
  }

  v6 = v5;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  v45 = v2;
  if (v5 >> 62)
  {
LABEL_40:
    v8 = sub_245911424();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {

      sub_24590C714();
      v24 = sub_24590F344();
      v25 = sub_245910F54();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_245767000, v24, v25, "IdentityProofingFlowManager attempting to provision precursor pass", v26, 2u);
        MEMORY[0x245D77B40](v26, -1, -1);
      }

      v27 = v0[13];
      v29 = v0[7];
      v28 = v0[8];

      v30 = *(v28 + 8);
      v0[15] = v30;
      v30(v27, v29);
      v31 = sub_24590DE54();
      v33 = v32;
      v0[16] = v31;
      v0[17] = v32;
      sub_24590DDC4();
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v43 = sub_24590C754();
        v35 = v43 == sub_24590C754();
      }

      v44 = swift_task_alloc();
      v0[18] = v44;
      *v44 = v0;
      v44[1] = sub_2458711B0;

      return sub_24579BDD0(v31, v33, v35);
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x245D76B30](v9, v6);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_39;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (sub_24590D5D4() == 0x726F727265 && v13 == 0xE500000000000000)
    {
      break;
    }

    v10 = sub_245911714();

    ++v9;
    if (v10)
    {
      goto LABEL_31;
    }
  }

LABEL_31:

  sub_24590C714();
  v36 = sub_24590F344();
  v37 = sub_245910F64();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[12];
  v41 = v0[7];
  v40 = v0[8];
  if (v38)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_245767000, v36, v37, "IdentityProofingFlowManager should not provision a precursor pass due to error view", v42, 2u);
    MEMORY[0x245D77B40](v42, -1, -1);
  }

  (*(v40 + 8))(v39, v41);
LABEL_22:

  v21 = v0[1];
LABEL_23:

  return v21();
}

uint64_t sub_2458711B0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  sub_245771C44(*(v2 + 128), *(v2 + 136));
  if (v0)
  {
    v3 = sub_2458713A8;
  }

  else
  {
    v3 = sub_2458712F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2458712F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458713A8()
{
  v1 = v0[19];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_245767000, v3, v4, "IdentityProofingFlowManager failed to provision precursor pass: %@", v6, 0xCu);
    sub_245778F94(v7, &qword_27EE297C0);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  v10 = v0[15];
  v11 = v0[10];
  v12 = v0[7];

  v10(v11, v12);
  sub_24590DDC4();
  if ((v13 & 1) != 0 || (v14 = sub_24590C754(), v14 != sub_24590C754()))
  {
    sub_24590C714();
    v17 = sub_24590F344();
    v18 = sub_245910F64();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[19];
    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[9];
    v24 = v0[7];
    if (v19)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245767000, v17, v18, "IdentityProofingFlowManager failed to provision pass; failing silently", v25, 2u);
      MEMORY[0x245D77B40](v25, -1, -1);
    }

    else
    {
    }

    v21(v23, v24);

    v26 = v0[1];

    return v26();
  }

  else
  {
    sub_245910D34();
    v0[20] = sub_245910D24();
    v16 = sub_245910CD4();

    return MEMORY[0x2822009F8](sub_2458716C4, v16, v15);
  }
}

uint64_t sub_2458716C4()
{

  sub_245871838();

  return MEMORY[0x2822009F8](sub_245871770, 0, 0);
}

uint64_t sub_245871770()
{
  v1 = *(v0 + 112);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245871838()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_245767000, v4, v5, "IdentityProofingFlowManager failed to provision pass on watch, cleaning up and throwing error", v6, 2u);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_245874374();
}

uint64_t sub_245871988(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a2;
  *(v4 + 248) = a1;
  v5 = sub_24590F354();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245871A74, 0, 0);
}

uint64_t sub_245871A74()
{
  v33 = v0;
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  if (v3)
  {
    v7 = *(v0 + 248);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2080;
    v10 = sub_24590DA14();
    v12 = sub_2458CC378(v10, v11, &v32);

    *(v8 + 10) = v12;
    _os_log_impl(&dword_245767000, v1, v2, "saveIdentityProofingDataSharingUserConsent called with consent: %{BOOL}d for consentType: %s", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  v13 = *(v6 + 8);
  v13(v4, v5);
  *(v0 + 216) = v13;
  v14 = *(v0 + 160);
  v15 = v14[21];
  *(v0 + 224) = v15;
  if (v15)
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 248);
    v18 = v14[14];
    v19 = v15;
    v20 = sub_24590DDB4();
    v21 = sub_245910C34();
    *(v0 + 232) = v21;
    v22 = v14[18];
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_245871DF8;
    v23 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24579D0B4;
    *(v0 + 104) = &block_descriptor_364;
    *(v0 + 112) = v23;
    [v18 saveIdentityProofingDataSharingUserConsentWithDocumentType:v20 axSettings:v21 consent:v17 consentType:v16 proofingOptions:v22 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_24590C714();
    v24 = sub_24590F344();
    v25 = sub_245910F64();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 192);
    v28 = *(v0 + 168);
    if (v26)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_245767000, v24, v25, "the configuration is unavailable. This is not a terminal error.", v29, 2u);
      MEMORY[0x245D77B40](v29, -1, -1);
    }

    v13(v27, v28);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_245871DF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_245872050;
  }

  else
  {
    v2 = sub_245871F08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245871F08()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = *(v0 + 168);
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Successfully saved the user's consent to share the proofing data.", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  else
  {

    v1 = v5;
  }

  v4(v6, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_245872050()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[23];
  v6 = v0[21];
  swift_willThrow();

  sub_24590C714();
  sub_24590C724();

  v4(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_245872148()
{
  v1[19] = v0;
  v2 = sub_24590EA74();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_24590F354();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245872270, 0, 0);
}

uint64_t sub_245872270()
{
  v1 = v0[19];
  v2 = v1[18];
  if (v2)
  {
    v3 = v1[21];
    v0[27] = v3;
    if (v3)
    {
      v4 = v1[14];
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_245872728;
      v5 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACE8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2458935E8;
      v0[13] = &block_descriptor_360;
      v0[14] = v5;
      [v4 fetchExtendedReviewDisplayInfoWithConfiguration:v3 proofingOptions:v2 completionHandler:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245767000, v15, v16, "proofing configuration doesn't exist, unable to request for extended review UI data", v17, 2u);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    v18 = v0[26];
    v19 = v0[23];
    v20 = v0[24];
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[20];

    (*(v20 + 8))(v18, v19);
    (*(v22 + 104))(v21, *MEMORY[0x277CFFBE8], v23);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
  }

  else
  {
    sub_24590C714();
    v6 = sub_24590F344();
    v7 = sub_245910F64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245767000, v6, v7, "proofing options doesn't exist, unable to request for extended review UI data", v8, 2u);
      MEMORY[0x245D77B40](v8, -1, -1);
    }

    v10 = v0[24];
    v9 = v0[25];
    v11 = v0[22];
    v12 = v0[23];
    v13 = v0[20];
    v14 = v0[21];

    (*(v10 + 8))(v9, v12);
    (*(v14 + 104))(v11, *MEMORY[0x277CFF9A0], v13);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
  }

  sub_24590EA94();
  swift_willThrow();

  v24 = v0[1];

  return v24();
}