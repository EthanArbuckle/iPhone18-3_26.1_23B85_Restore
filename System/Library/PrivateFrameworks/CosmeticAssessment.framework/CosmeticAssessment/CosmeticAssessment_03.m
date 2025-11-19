uint64_t sub_247C72BC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = (v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FlowResponse.Step.Action(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FlowResponse.Step(0);
  v14 = *(a1 + *(v13 + 20));
  swift_beginAccess();
  v15 = *(v14 + 32);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v49 = v13;
    v50 = a2;
    v51 = v14;
    v52 = v2;
    v53 = v7;
    v56 = MEMORY[0x277D84F90];
    v18 = v15;

    sub_247CE2470(0, v16, 0);
    v17 = v56;
    v19 = *(v10 + 80);
    v48[1] = v18;
    v20 = v18 + ((v19 + 32) & ~v19);
    v21 = *(v10 + 72);
    do
    {
      sub_247C74BF4(v20, v12, type metadata accessor for FlowResponse.Step.Action);
      v23 = *v12;
      v22 = v12[1];

      sub_247C74DAC(v12, type metadata accessor for FlowResponse.Step.Action);
      v56 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_247CE2470((v24 > 1), v25 + 1, 1);
        v17 = v56;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v20 += v21;
      --v16;
    }

    while (v16);

    v3 = v52;
    v7 = v53;
    a2 = v50;
    v14 = v51;
    v13 = v49;
  }

  v27 = *(a2 + *(v13 + 20));
  v28 = swift_beginAccess();
  v29 = *(v27 + 24);
  v55[0] = *(v27 + 16);
  v55[1] = v29;
  MEMORY[0x28223BE20](v28);
  v48[-2] = v55;

  v30 = v3;
  v31 = sub_247CCBF00(sub_247C74E60, &v48[-4], v17);

  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v33 = swift_beginAccess();
    v34 = *(v14 + 40);
    v35 = *(v34 + 16);
    v36 = MEMORY[0x277D84F90];
    if (v35)
    {
      v53 = v30;
      v54[0] = MEMORY[0x277D84F90];

      sub_247CE2470(0, v35, 0);
      v36 = v54[0];
      v37 = *(v7 + 80);
      v52 = v34;
      v38 = v34 + ((v37 + 32) & ~v37);
      v39 = *(v7 + 72);
      do
      {
        v40 = v57;
        sub_247C74BF4(v38, v57, type metadata accessor for FlowResponse.Step.HiddenAction);
        v41 = *v40;
        v42 = v40[1];

        sub_247C74DAC(v40, type metadata accessor for FlowResponse.Step.HiddenAction);
        v54[0] = v36;
        v44 = *(v36 + 16);
        v43 = *(v36 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_247CE2470((v43 > 1), v44 + 1, 1);
          v36 = v54[0];
        }

        *(v36 + 16) = v44 + 1;
        v45 = v36 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        v38 += v39;
        --v35;
      }

      while (v35);
    }

    v46 = *(v27 + 24);
    v54[0] = *(v27 + 16);
    v54[1] = v46;
    MEMORY[0x28223BE20](v33);
    v48[-2] = v54;

    v32 = sub_247CCBF00(sub_247C75514, &v48[-4], v36);
  }

  return v32 & 1;
}

uint64_t sub_247C73064(uint64_t a1, unint64_t a2)
{
  v4 = sub_247D1EFC8();
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_247D1ECB8();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_247D1FB98();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_247D1ECD8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_247D1FBA8();
    *v8 = type metadata accessor for DeviceAssessmentViewController(0);
    (*(v6 + 104))(v8, *MEMORY[0x277CC9120], v42);
    sub_247D1EFB8();
    sub_247D1ECE8();
    v21 = *(v11 + 16);
    v21(v16, v19, v10);
    v22 = sub_247D1FC48();
    v24 = v23;
    v26 = v10;
    v27 = v11;
    v28 = v19;
    if (v22 == sub_247D1ECC8() && v24 == v25)
    {

      v29 = v44;
    }

    else
    {
      v30 = sub_247D20538();

      v29 = v44;
      if ((v30 & 1) == 0)
      {
        return (*(v27 + 8))(v19, v26);
      }
    }

    type metadata accessor for FlowResponseValidator();
    v21(v29, v19, v26);
    v31 = sub_247D1F468();
    v32 = sub_247D20038();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136446210;
      v35 = sub_247D1ECC8();
      v36 = v29;
      v38 = v37;
      v39 = *(v27 + 8);
      v39(v36, v26);
      v40 = sub_247CB03B4(v35, v38, &v45);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_247C1F000, v31, v32, "No value exists for key: %{public}s, this may render verbatim.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x24C1B9080](v34, -1, -1);
      MEMORY[0x24C1B9080](v33, -1, -1);
    }

    else
    {

      v39 = *(v27 + 8);
      v39(v29, v26);
    }

    return (v39)(v28, v26);
  }

  return result;
}

uint64_t sub_247C73508(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  if (*(v3 + 16) == *a2 && *(v3 + 24) == a2[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_247D20538();
  }

  return v5 & 1;
}

uint64_t sub_247C73590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for FileUploadToken(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(a1 + *(v9 + 36), v4, &qword_27EE63290);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5) == 1)
  {
    *v8 = 0;
    *(v8 + 1) = 0xE000000000000000;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0xE000000000000000;
    *(v8 + 4) = 0;
    *(v8 + 5) = 0xE000000000000000;
    *(v8 + 6) = 0;
    *(v8 + 7) = 0xE000000000000000;
    sub_247D1F188();
    v11 = *(v5 + 36);
    v12 = type metadata accessor for Metadata(0);
    (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
    if (v10(v4, 1, v5) != 1)
    {
      sub_247C27100(v4, &qword_27EE63290);
    }
  }

  else
  {
    sub_247C74EA0(v4, v8, type metadata accessor for FileUploadToken);
  }

  v13 = *(v8 + 6);

  sub_247C74DAC(v8, type metadata accessor for FileUploadToken);
  return v13;
}

void sub_247C737CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v36 = a4;
  v35 = type metadata accessor for FlowResponse.Step(0);
  MEMORY[0x28223BE20](v35);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2BD10(a2 + *(v16 + 44), v10, &qword_27EE62DE0);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    *v14 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v17(v10, 1, v11) != 1)
    {
      sub_247C27100(v10, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C74EA0(v10, v14, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  v18 = *v14;

  sub_247C74DAC(v14, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v19 = sub_247C636CC(v15);
  if (*(v18 + 16))
  {
    sub_247CCFDA8(v19, v20);
    v22 = v21;

    if (v22)
    {
      return;
    }
  }

  else
  {
  }

  type metadata accessor for FlowResponseValidator();
  sub_247C74BF4(v36, v7, type metadata accessor for FlowResponse.Step);
  v23 = sub_247D1F468();
  v24 = sub_247D20038();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136446466;
    v27 = *&v7[*(v35 + 20)];
    swift_beginAccess();
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_247C74DAC(v7, type metadata accessor for FlowResponse.Step);
    v30 = sub_247CB03B4(v28, v29, &v38);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v31 = sub_247C636CC(v15);
    v33 = sub_247CB03B4(v31, v32, &v38);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_247C1F000, v23, v24, "Step %{public}s is missing configuration for key: %{public}s.", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v26, -1, -1);
    MEMORY[0x24C1B9080](v25, -1, -1);
  }

  else
  {

    sub_247C74DAC(v7, type metadata accessor for FlowResponse.Step);
  }
}

uint64_t sub_247C73C08(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_247C73C68(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 13; ++i)
  {
    v7 = *(&unk_2859D5D28 + i + 32);
    result = sub_247C73CD4(&v7, a1, a2);
    if (v2)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_247C73CD4(char *a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = type metadata accessor for FlowResponse.Step(0);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v50 - v8;
  v9 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v51 = v5;
  v19 = *(v5 + 20);
  v52 = a2;
  v20 = *(a2 + v19);
  v21 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(v20 + v21, v14, &unk_27EE63230);
  v22 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
  {
    sub_247C27100(v14, &unk_27EE63230);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_247C74EA0(v14, v17, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      v23 = v56;
      v24 = v18;
      goto LABEL_7;
    }

    sub_247C74DAC(v14, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  }

  v23 = v56;
  v24 = v18;
  v25 = MEMORY[0x277D84F90];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0xE000000000000000;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0xE000000000000000;
  *(v17 + 6) = v25;
  sub_247D1F188();
  v26 = v15[9];
  v27 = type metadata accessor for FileUploadToken(0);
  (*(*(v27 - 8) + 56))(&v17[v26], 1, 1, v27);
  v28 = *(v10 + 56);
  v28(&v17[v15[10]], 1, 1, v9);
  v28(&v17[v15[11]], 1, 1, v9);
LABEL_7:
  v29 = v55;
  sub_247C2BD10(&v17[v15[11]], v55, &qword_27EE62DE0);
  v30 = *(v10 + 48);
  if (v30(v29, 1, v9) == 1)
  {
    v31 = sub_247CD8184(MEMORY[0x277D84F90]);
    v32 = v54;
    *v54 = v31;
    sub_247D1F188();
    sub_247C74DAC(v17, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    if (v30(v29, 1, v9) != 1)
    {
      sub_247C27100(v29, &qword_27EE62DE0);
    }
  }

  else
  {
    sub_247C74DAC(v17, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    v32 = v54;
    sub_247C74EA0(v29, v54, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  }

  v33 = *v32;

  sub_247C74DAC(v32, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v34 = sub_247C636CC(v24);
  if (*(v33 + 16))
  {
    sub_247CCFDA8(v34, v35);
    v37 = v36;

    if (v37)
    {
      return result;
    }
  }

  else
  {
  }

  type metadata accessor for FlowResponseValidator();
  sub_247C74BF4(v52, v23, type metadata accessor for FlowResponse.Step);
  v39 = sub_247D1F468();
  v40 = sub_247D20038();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v57 = v42;
    *v41 = 136315394;
    v43 = sub_247C636CC(v24);
    v45 = sub_247CB03B4(v43, v44, &v57);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = *(v23 + *(v51 + 20));
    swift_beginAccess();
    v47 = *(v46 + 16);
    v48 = *(v46 + 24);

    sub_247C74DAC(v23, type metadata accessor for FlowResponse.Step);
    v49 = sub_247CB03B4(v47, v48, &v57);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_247C1F000, v39, v40, "Missing configuration: %s in step: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v42, -1, -1);
    MEMORY[0x24C1B9080](v41, -1, -1);
  }

  else
  {

    sub_247C74DAC(v23, type metadata accessor for FlowResponse.Step);
  }

  sub_247C74E0C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_247C743E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63340);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlowResponseValidator()
{
  result = qword_27EE63350;
  if (!qword_27EE63350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C744CC(uint64_t a1, uint64_t a2, int a3)
{
  v25 = type metadata accessor for FlowResponse.Step(0);
  v6 = MEMORY[0x28223BE20](v25);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 72);
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v23;
    v15 = MEMORY[0x277D84F90];
    v24 = a3;
    while (1)
    {
      sub_247C74BF4(v14, v11, type metadata accessor for FlowResponse.Step);
      v16 = *&v11[*(v25 + 20)];
      swift_beginAccess();
      v17 = *(v16 + 64);
      if (a3)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            if (v17 == 2)
            {
              goto LABEL_12;
            }
          }

          else if (v17 == 3)
          {
LABEL_12:
            sub_247C74EA0(v11, v8, type metadata accessor for FlowResponse.Step);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_247CE23C8(0, *(v15 + 16) + 1, 1);
              v15 = v26;
            }

            v20 = *(v15 + 16);
            v19 = *(v15 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_247CE23C8(v19 > 1, v20 + 1, 1);
              v15 = v26;
            }

            *(v15 + 16) = v20 + 1;
            sub_247C74EA0(v8, v15 + v23 + v20 * v13, type metadata accessor for FlowResponse.Step);
            LOBYTE(a3) = v24;
            goto LABEL_5;
          }
        }

        else if (a2)
        {
          if (v17 == 1)
          {
            goto LABEL_12;
          }
        }

        else if (!v17)
        {
          goto LABEL_12;
        }
      }

      else if (v17 == a2)
      {
        goto LABEL_12;
      }

      sub_247C74DAC(v11, type metadata accessor for FlowResponse.Step);
LABEL_5:
      v14 += v13;
      if (!--v12)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_247C74784()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247C74820()
{
  v1 = *(type metadata accessor for FlowResponse.Step.CosmeticCapture(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 32);

  return v2;
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v17 = (v2 + 16) & ~v2;
  v18 = v0;
  v3 = v0 + v17;

  v4 = v1[8];
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 8);
  v6(v3 + v4, v5);
  v7 = v3 + v1[9];
  v8 = type metadata accessor for FileUploadToken(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v6(v7 + *(v8 + 32), v5);
    v9 = v7 + *(v8 + 36);
    v10 = type metadata accessor for Metadata(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v6(v9 + *(v10 + 28), v5);
    }
  }

  v11 = v3 + v1[10];
  v12 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v13 = *(*(v12 - 8) + 48);
  if (!v13(v11, 1, v12))
  {

    v6(v11 + *(v12 + 20), v5);
  }

  v14 = v3 + v1[11];
  if (!v13(v14, 1, v12))
  {

    v6(v14 + *(v12 + 20), v5);
  }

  return MEMORY[0x2821FE8E8](v18, v17 + v16, v2 | 7);
}

uint64_t sub_247C74BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(type metadata accessor for FlowResponse.Step(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_247D1F198();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_247C74D48()
{
  result = qword_27EE63278;
  if (!qword_27EE63278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63278);
  }

  return result;
}

uint64_t sub_247C74DAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_247C74E0C()
{
  result = qword_27EE63348;
  if (!qword_27EE63348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63348);
  }

  return result;
}

uint64_t sub_247C74EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C74F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for FlowResponseValidator.ValidationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FlowResponseValidator.ValidationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_247C75074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_247D1F488();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_247C75134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_247D1F488();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_247C751D8()
{
  sub_247C7525C();
  if (v0 <= 0x3F)
  {
    sub_247D1F488();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247C7525C()
{
  if (!qword_27EE63360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63368);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE63360);
    }
  }
}

unint64_t sub_247C752C8()
{
  result = qword_27EE63370;
  if (!qword_27EE63370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63370);
  }

  return result;
}

id sub_247C75538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_opt_self() areAnimationsEnabled];
  if (a2)
  {
    v9 = [v4 delegate];
    v10 = objc_allocWithZone(type metadata accessor for TemporaryAnimationNavigationDelegate());
    v11 = sub_247C7673C(a2, a3, v9);
    swift_unknownObjectRelease();
    [v4 setDelegate_];
    [v4 pushViewController:a1 animated:v8];
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v11;
    v13 = v11;
    v14 = v4;
    v15 = [v14 transitionCoordinator];
    if (v15)
    {
      v16 = v15;
      v17 = swift_allocObject();
      v17[2] = v14;
      v17[3] = sub_247C769A4;
      v17[4] = v12;
      v23[4] = sub_247C769A8;
      v23[5] = v17;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 1107296256;
      v23[2] = sub_247C9451C;
      v23[3] = &block_descriptor_33;
      v18 = _Block_copy(v23);
      v19 = v14;

      [v16 animateAlongsideTransition:0 completion:v18];

      _Block_release(v18);
      return swift_unknownObjectRelease();
    }

    else
    {
      v21 = [v14 delegate];
      if (v21 && (v22 = v21, swift_unknownObjectRelease(), v22 == v13))
      {
        [v14 setDelegate_];

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {

    return [v4 pushViewController:a1 animated:v8];
  }
}

id sub_247C7583C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() areAnimationsEnabled];
  if (!a1)
  {
    return [v3 popViewControllerAnimated_];
  }

  v7 = [v3 delegate];
  v8 = objc_allocWithZone(type metadata accessor for TemporaryAnimationNavigationDelegate());
  v9 = sub_247C7673C(a1, a2, v7);
  swift_unknownObjectRelease();
  [v3 setDelegate_];
  v10 = [v3 popViewControllerAnimated_];
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v9;
  v12 = v9;
  v13 = v3;
  v14 = [v13 transitionCoordinator];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = sub_247C769A4;
    v16[4] = v11;
    v22[4] = sub_247C769A8;
    v22[5] = v16;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_247C9451C;
    v22[3] = &block_descriptor_16;
    v17 = _Block_copy(v22);
    v18 = v13;

    [v15 animateAlongsideTransition:0 completion:v17];

    _Block_release(v17);
  }

  else
  {
    v20 = [v13 delegate];
    if (!v20 || (v21 = v20, swift_unknownObjectRelease(), v21 != v12))
    {

      return v10;
    }

    [v13 setDelegate_];
  }

  swift_unknownObjectRelease();
  return v10;
}

void sub_247C75AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() areAnimationsEnabled];
  if (a2)
  {
    v8 = [v4 delegate];
    v9 = objc_allocWithZone(type metadata accessor for TemporaryAnimationNavigationDelegate());
    v10 = sub_247C7673C(a2, a3, v8);
    swift_unknownObjectRelease();
    [v4 setDelegate_];
    sub_247C3FD40();
    v11 = sub_247D1FDB8();
    [v4 setViewControllers:v11 animated:v7];

    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v10;
    v13 = v10;
    v14 = v4;
    v15 = [v14 transitionCoordinator];
    if (v15)
    {
      v16 = v15;
      v17 = swift_allocObject();
      v17[2] = v14;
      v17[3] = sub_247C76850;
      v17[4] = v12;
      aBlock[4] = sub_247C76858;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_247C9451C;
      aBlock[3] = &block_descriptor_5;
      v18 = _Block_copy(aBlock);
      v19 = v14;

      [v16 animateAlongsideTransition:0 completion:v18];

      _Block_release(v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = [v14 delegate];
      if (v20 && (v21 = v20, swift_unknownObjectRelease(), v21 == v13))
      {
        [v14 setDelegate_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_247C3FD40();
    v22 = sub_247D1FDB8();
    [v4 setViewControllers:v22 animated:v7];
  }
}

uint64_t sub_247C75E18@<X0>(uint64_t a1@<X1>, unsigned __int8 *a2@<X8>)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [Strong respondsToSelector_];

    result = swift_unknownObjectRelease();
  }

  else
  {

    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_247C75F08(uint64_t a1, uint64_t a2, char a3)
{
  sub_247D1FE98();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_247C7690C(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_247D202C8();
  MEMORY[0x24C1B7B80](0xD00000000000003FLL, 0x8000000247D2F100);
  v11 = sub_247D206B8();
  MEMORY[0x24C1B7B80](v11);

  MEMORY[0x24C1B7B80](46, 0xE100000000000000);
  result = sub_247D20398();
  __break(1u);
  return result;
}

uint64_t sub_247C760C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_247D1FE98();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_247C768AC(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_247D202C8();
  MEMORY[0x24C1B7B80](0xD00000000000003FLL, 0x8000000247D2F100);
  v12 = sub_247D206B8();
  MEMORY[0x24C1B7B80](v12);

  MEMORY[0x24C1B7B80](46, 0xE100000000000000);
  result = sub_247D20398();
  __break(1u);
  return result;
}

uint64_t sub_247C7637C@<X0>(uint64_t *a1@<X8>)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  *a1 = Strong;
  return result;
}

id sub_247C7669C(void *a1, id a2)
{
  result = [a1 delegate];
  if (result)
  {
    v5 = result;
    result = swift_unknownObjectRelease();
    if (v5 == a2)
    {
      [a1 setDelegate_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_247C7673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC18CosmeticAssessmentP33_6B9104B5AA470470A66128F22B73BA0036TemporaryAnimationNavigationDelegate_transitionType];
  *v8 = a1;
  *(v8 + 1) = a2;
  if (!a3 || !swift_dynamicCastClass() || !swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
  }

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_247C76810()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_247C768AC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_247C7690C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247C769BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v65 = a1;
  v66 = a2;
  v69 = a3;
  v5 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo(0);
  v67 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64);
  v60 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v60 - v11);
  v61 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v61);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63398);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  v25 = *(v4 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  v26 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v68 = v25;
  sub_247C2BD10(v25 + v26, v24, &unk_27EE63230);
  v27 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  v28 = *(*(v27 - 8) + 48);
  if (v28(v24, 1, v27) == 1)
  {
    sub_247C27100(v24, &unk_27EE63230);
    return (*(v71 + 56))(v69, 1, 1, v70);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_247C77618(v24, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(v71 + 56))(v69, 1, 1, v70);
  }

  sub_247C2BD10(v68 + v26, v22, &unk_27EE63230);
  if (v28(v22, 1, v27) == 1)
  {
    sub_247C27100(v22, &unk_27EE63230);
    v31 = v66;
    v30 = v67;
    v32 = v65;
  }

  else
  {
    v34 = swift_getEnumCaseMultiPayload();
    v31 = v66;
    v30 = v67;
    v32 = v65;
    if (v34 == 1)
    {
      sub_247C77678(v22, v14, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      goto LABEL_11;
    }

    sub_247C77618(v22, type metadata accessor for FlowResponse.Step.OneOf_Contents);
  }

  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0xE000000000000000;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0xE000000000000000;
  *(v14 + 6) = MEMORY[0x277D84F90];
  v35 = v61;
  sub_247D1F188();
  v36 = v35[9];
  v37 = type metadata accessor for FileUploadToken(0);
  (*(*(v37 - 8) + 56))(&v14[v36], 1, 1, v37);
  v67 = v35[10];
  v38 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v39 = *(*(v38 - 8) + 56);
  v39(&v14[v67], 1, 1, v38);
  v39(&v14[v35[11]], 1, 1, v38);
LABEL_11:
  v40 = *(v14 + 6);

  result = sub_247C77618(v14, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = 0;
    while (v42 < *(v40 + 16))
    {
      sub_247C775B0(v40 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v42, v12, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
      v43 = *v12 == v32 && v12[1] == v31;
      if (v43 || (sub_247D20538() & 1) != 0)
      {

        v45 = v63;
        sub_247C77678(v12, v63, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
        v44 = 0;
        goto LABEL_22;
      }

      ++v42;
      result = sub_247C77618(v12, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
      if (v41 == v42)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:

    v44 = 1;
    v45 = v63;
LABEL_22:
    v46 = v64;
    (*(v30 + 56))(v45, v44, 1, v64);
    v47 = v62;
    sub_247C2BD10(v45, v62, &qword_27EE63398);
    v48 = (*(v30 + 48))(v47, 1, v46);
    v49 = v71;
    if (v48 == 1)
    {
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v52 = v60;
      sub_247C77678(v47, v60, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
      v50 = *(v52 + 16);
      v51 = *(v52 + 24);

      sub_247C77618(v52, type metadata accessor for FlowResponse.Step.CosmeticCapture.ImageValidationInfo);
    }

    sub_247C27100(v45, &qword_27EE63398);
    v53 = v68;
    swift_beginAccess();
    v54 = *(v53 + 40);
    v55 = *(v54 + 16);
    if (!v55)
    {
LABEL_38:

      return (*(v49 + 56))(v69, 1, 1, v70);
    }

    v56 = v54 + ((*(v49 + 80) + 32) & ~*(v49 + 80));

    v57 = 0;
    while (v57 < *(v54 + 16))
    {
      sub_247C775B0(v56 + *(v49 + 72) * v57, v8, type metadata accessor for FlowResponse.Step.HiddenAction);
      if (v51)
      {
        v58 = *v8 == v50 && v51 == v8[1];
        if (v58 || (sub_247D20538() & 1) != 0)
        {

          v59 = v69;
          sub_247C77678(v8, v69, type metadata accessor for FlowResponse.Step.HiddenAction);
          return (*(v49 + 56))(v59, 0, 1, v70);
        }
      }

      ++v57;
      result = sub_247C77618(v8, type metadata accessor for FlowResponse.Step.HiddenAction);
      if (v55 == v57)
      {

        goto LABEL_38;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_247C77220()
{
  v1 = type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  sub_247C2BD10(v0 + *(v7 + 20), v6, &qword_27EE63390);
  v8 = type metadata accessor for FlowResponse.SFSymbolConfiguration.OneOf_SymbolStyle(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1 || swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = [objc_opt_self() configurationPreferringMonochrome];
  }

  else
  {
    sub_247C77678(v6, v3, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
    v9 = *v3;
    v10 = *(*v3 + 16);
    if (v10)
    {
      v19[1] = MEMORY[0x277D84F90];
      sub_247D20328();
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 16;
        sub_247C77504(v12, v13);
        sub_247D20308();
        sub_247D20338();
        sub_247D20348();
        sub_247D20318();
        --v10;
      }

      while (v10);
    }

    sub_247C77564();
    v14 = sub_247D1FDB8();

    v15 = [objc_opt_self() configurationWithPaletteColors_];

    sub_247C77618(v3, type metadata accessor for FlowResponse.SFSymbolConfiguration.SFSymbolColors);
  }

  if (*(v0 + *(v7 + 24)) != 1)
  {
    return v15;
  }

  v16 = [objc_opt_self() configurationWithColorRenderingMode_];
  v17 = [v15 configurationByApplyingConfiguration_];

  return v17;
}

id sub_247C77504(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = off_278EDD470[a1];
  }

  else
  {
    v2 = &selRef_clearColor;
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

unint64_t sub_247C77564()
{
  result = qword_27EE632F8;
  if (!qword_27EE632F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE632F8);
  }

  return result;
}

uint64_t sub_247C775B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C77618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C77678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C776E0(uint64_t a1)
{
  v2 = v1;
  sub_247D1F478();
  v4 = OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_reader;
  *(v2 + v4) = [objc_allocWithZone(MEMORY[0x277D79768]) init];
  v5 = (a1 + *(_s5StateVMa() + 28));
  v7 = *v5;
  v6 = v5[1];
  v8 = (v2 + OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_sessionID);
  *v8 = v7;
  v8[1] = v6;
  v9 = *(a1 + 48);
  if (!*(v9 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_247CCFDA8(0xD000000000000018, 0x8000000247D2F1D0);
  if ((v11 & 1) == 0)
  {
LABEL_7:
    v18 = 4;
    goto LABEL_8;
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v13 = *v12;
  v14 = v12[1];

  v15 = sub_247CECA84(v13, v14);
  v17 = v16;

  v18 = 4;
  if ((v17 & 1) == 0)
  {
    v18 = v15;
  }

LABEL_8:
  *(v2 + OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_timeTolerance) = v18;
  v19 = *(v2 + OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_reader);
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_247C78724;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247C779F0;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  [v19 setProgressHandler_];
  _Block_release(v21);
  sub_247C7886C(a1, _s5StateVMa);
  return v2;
}

void sub_247C77900(float a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_247D1F468();
    v3 = sub_247D20058();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349056;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_247C1F000, v2, v3, "%{public}f", v4, 0xCu);
      MEMORY[0x24C1B9080](v4, -1, -1);
    }
  }
}

uint64_t sub_247C779F0(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_247C77A44(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = sub_247D1EF48();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v16 = [*(v4 + OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_reader) readWatermarkIn_];
  if (!v16)
  {
    v42 = sub_247D1F468();
    v43 = sub_247D20058();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_247C1F000, v42, v43, "Missing data", v44, 2u);
      MEMORY[0x24C1B9080](v44, -1, -1);
    }

    sub_247C78744(a1, a2, 1);

    return 0;
  }

  v49 = a1;
  v17 = v16;
  v51 = sub_247D1FBE8();
  v48 = v18;

  result = sub_247D1EF38();
  v20 = *(v4 + OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_timeTolerance);
  if (v20 == 0x8000000000000000)
  {
LABEL_29:
    __break(1u);
  }

  else if ((v20 & 0x8000000000000000) == 0)
  {
    v46 = a4;
    v47 = a2;
    v50 = v4;
    v21 = -v20;
    v22 = (v10 + 8);
    v23 = 2 * v20;
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_247D1EEF8();
      sub_247D1EF08();
      v26 = fmod(v25, 1000.0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_247C80B5C(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_247C80B5C((v27 > 1), v28 + 1, 1, v24);
      }

      v29 = *v22;
      result = (*v22)(v13, v9);
      *(v24 + 2) = v28 + 1;
      *&v24[8 * v28 + 32] = round(v26);
      if (!v23)
      {
        break;
      }

      --v23;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    MEMORY[0x28223BE20](result);
    v31 = v46;
    *(&v45 - 2) = v50;
    *(&v45 - 1) = v31;
    v32 = sub_247CED860(sub_247C78754, (&v45 - 4), v24);
    v33 = v32 + 40;
    v34 = *(v32 + 2) + 1;
    v35 = v48;
    do
    {
      v36 = --v34 != 0;
      if (!v34)
      {
        break;
      }

      if (*(v33 - 1) == v51 && *v33 == v35)
      {
        break;
      }

      v33 += 2;
    }

    while ((sub_247D20538() & 1) == 0);

    v38 = sub_247D1F468();
    v39 = sub_247D20058();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v34 != 0;
      v41 = swift_slowAlloc();
      *v41 = 67109120;
      *(v41 + 4) = v40;
      _os_log_impl(&dword_247C1F000, v38, v39, "%{BOOL}d", v41, 8u);
      MEMORY[0x24C1B9080](v41, -1, -1);
    }

    sub_247C78744(v49, v47, 1);

    v29(v15, v9);
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_247C77E98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v5 = sub_247D1FAC8();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247D1FAB8();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_247D1FC38();
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_sessionID);
  v20 = *(a1 + OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_sessionID + 8);
  v53 = v19;
  v21 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  sub_247C2FFE0(a2 + *(v21 + 40), v14);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    *v18 = sub_247CD8184(MEMORY[0x277D84F90]);
    sub_247D1F188();
    if (v22(v14, 1, v15) != 1)
    {
      sub_247C78804(v14);
    }
  }

  else
  {
    sub_247C788CC(v14, v18);
  }

  if (*(*v18 + 16))
  {
    sub_247CCFDA8(0xD000000000000011, 0x8000000247D2EE10);
    v23 = 0xE000000000000000;
    if (v24)
    {
      v25 = off_2859DCB18;

      v25(&v60);
      if (v61)
      {
        v26 = v60;
      }

      else
      {
        v26 = 0;
      }

      if (v61)
      {
        v23 = v61;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    v23 = 0xE000000000000000;
  }

  sub_247C7886C(v18, type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v27 = sub_247D1FF98();
  v29 = v28;
  v60 = v53;
  v61 = v20;

  MEMORY[0x24C1B7B80](95, 0xE100000000000000);
  MEMORY[0x24C1B7B80](v26, v23);
  MEMORY[0x24C1B7B80](95, 0xE100000000000000);
  MEMORY[0x24C1B7B80](v27, v29);

  sub_247D1FC28();
  v30 = sub_247D1FBF8();
  v32 = v31;

  (*(v9 + 8))(v11, v54);
  if (v32 >> 60 == 15)
  {

    v34 = 0;
    v35 = 0;
  }

  else
  {
    sub_247C30284(&qword_27EE62DF0, MEMORY[0x277CC5540]);
    v36 = v48;
    v37 = v50;
    sub_247D1FAA8();
    sub_247C30174(v30, v32);
    v38 = v56;
    sub_247C2E988(v30, v32);
    v56 = v38;
    sub_247C3E6E8(v30, v32);
    v39 = v55;
    sub_247D1FA98();
    (*(v49 + 8))(v36, v37);
    v40 = v52;
    v62 = v52;
    v63 = sub_247C30284(&qword_27EE633D0, MEMORY[0x277CC5290]);
    v41 = __swift_allocate_boxed_opaque_existential_0(&v60);
    v42 = v51;
    (*(v51 + 16))(v41, v39, v40);
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    sub_247D1EC58();
    v56 = v23;
    v43 = v58;
    v44 = v59;
    __swift_destroy_boxed_opaque_existential_1(&v60);
    v34 = sub_247D1EE38();
    v35 = v45;
    sub_247C301C8(v43, v44);
    sub_247C3E6E8(v30, v32);
    (*(v42 + 8))(v55, v40);
  }

  v46 = v57;
  *v57 = v34;
  v46[1] = v35;
  return result;
}

uint64_t sub_247C78524()
{
  v1 = OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor22WatermarkAuthenticator_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s22WatermarkAuthenticatorCMa()
{
  result = qword_27EE633C0;
  if (!qword_27EE633C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C78638()
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

uint64_t sub_247C786EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_247C78744(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

_BYTE *sub_247C78770@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_247C78930(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_247C789E8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_247C78A64(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_247C78804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247C7886C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C788CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C78930(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_247C789E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247D1EC18();
  swift_allocObject();
  result = sub_247D1EBD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_247D1EE18();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_247C78A64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247D1EC18();
  swift_allocObject();
  result = sub_247D1EBD8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_247C78AE8(char a1)
{
  result = 0x7461746F526E696DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      return result;
    case 10:
      result = 0x7461746F5278616DLL;
      break;
    case 11:
      v3 = 1450076525;
      goto LABEL_6;
    case 12:
      v3 = 1450729837;
LABEL_6:
      result = v3 | 0x6974726500000000;
      break;
    case 13:
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 17:
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_247C78D90(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  if ((sub_247C7A8E0() & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0 && a1 <= 6u)
  {
    if (((1 << a1) & 3) != 0)
    {
      if (a2 > 1u)
      {
        if (a2 != 2)
        {
          return 0;
        }

        goto LABEL_11;
      }

      v10 = sub_247D20538();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    else if (((1 << a1) & 0x18) != 0)
    {
      if (a2 > 1u)
      {
        if (a2 != 2)
        {
          return 0;
        }
      }

      else if (a2)
      {
        goto LABEL_11;
      }

      v11 = sub_247D20538();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else if (((1 << a1) & 0x60) != 0)
    {
      if (a2 > 1u)
      {
        if (a2 != 2)
        {
          return 0;
        }
      }

      else if (!a2)
      {
LABEL_11:

        goto LABEL_3;
      }

      v12 = sub_247D20538();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_3:
  sub_247C78AE8(a1);
  v7 = sub_247D1FBB8();

  v8 = [v3 objectForKey_];

  if (v8)
  {
    sub_247D20238();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_247C27100(v16, &unk_27EE63300);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

id sub_247C79140()
{
  result = sub_247C79160();
  qword_27EE72C60 = result;
  return result;
}

id sub_247C79160()
{
  v0 = sub_247D1F488();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  if (sub_247CBDF50())
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v9 = sub_247D1FBB8();
    v10 = [v8 initWithSuiteName_];

    if (v10)
    {

      return v10;
    }

    else
    {
      sub_247C7AD68();
      sub_247D206B8();
      sub_247D1F478();
      v15 = sub_247D1F468();
      v16 = sub_247D20038();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v20 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_247CB03B4(0xD00000000000001CLL, 0x8000000247D2DC30, &v20);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x24C1B9080](v18, -1, -1);
        MEMORY[0x24C1B9080](v17, -1, -1);
      }

      (*(v1 + 8))(v6, v0);
      return v7;
    }
  }

  else
  {
    sub_247C7AD68();
    sub_247D206B8();
    sub_247D1F478();
    v12 = sub_247D1F468();
    v13 = sub_247D20058();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_247C1F000, v12, v13, "Opting out of overrides.", v14, 2u);
      MEMORY[0x24C1B9080](v14, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    type metadata accessor for NoOpUserDefaults();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }
}

unint64_t sub_247C79494(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
    case 2:
    case 16:
      result = 0xD000000000000016;
      break;
    case 3:
    case 11:
    case 12:
      result = 0xD000000000000013;
      break;
    case 4:
      v3 = 13;
      goto LABEL_17;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x656469727265766FLL;
      break;
    case 9:
      result = 0x6D6E6F7269766E65;
      break;
    case 10:
      v3 = 5;
LABEL_17:
      result = v3 | 0xD000000000000012;
      break;
    case 13:
      result = 0x7954656369766564;
      break;
    case 14:
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0xD000000000000020;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

id sub_247C797B0(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C79874(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C79938(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C799FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C79AC0(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C79B84(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C79C48(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C79D0C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C79DD0(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C79E94(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C79F58(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C7A01C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C7A104(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C7A1E4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C7A2A8(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_247D1FBE8();

    v4 = sub_247D1FBB8();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_247C7A36C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_247D1FBE8();
    v4 = a1;
    v5 = sub_247D1FBB8();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v7 = sub_247D1FBB8();
  [a1 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

id sub_247C7A430(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_247C7A4A0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_247D1FBB8();
  [v5 setBool:a3 forKey:v4];
}

id sub_247C7A520(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_247C7A590(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_247D1FBB8();
  [v5 setBool:a3 forKey:v4];
}

id sub_247C7A610(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_247C7A680(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_247D1FBB8();
  [v5 setBool:a3 forKey:v4];
}

uint64_t sub_247C7A700()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v3 = sub_247D1FBB8();
    v4 = [v0 BOOLForKey_];

    return v4;
  }
}

uint64_t sub_247C7A7A0()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v3 = sub_247D1FBB8();
    v4 = [v0 BOOLForKey_];

    return v4;
  }
}

uint64_t sub_247C7A840()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v3 = sub_247D1FBB8();
    v4 = [v0 BOOLForKey_];

    return v4;
  }
}

uint64_t sub_247C7A8E0()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v3 = sub_247D1FBB8();
    v4 = [v0 BOOLForKey_];

    return v4;
  }
}

uint64_t sub_247C7A980()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v3 = sub_247D1FBB8();
    v4 = [v0 BOOLForKey_];

    return v4;
  }
}

id sub_247C7AA20(void *a1)
{
  v1 = a1;
  v2 = sub_247D1FBB8();
  v3 = [v1 integerForKey_];

  return v3;
}

void sub_247C7AA90(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_247D1FBB8();
  [v5 setInteger:a3 forKey:v4];
}

unint64_t sub_247C7AD68()
{
  result = qword_27EE633D8;
  if (!qword_27EE633D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE633D8);
  }

  return result;
}

uint64_t sub_247C7ADB4()
{
  xmlFreeDoc(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_247C7AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 48);
    swift_beginAccess();
    *(a1 + 16) = v8;
  }

  else
  {
    a2 = 0;
  }

  *a3 = v7;
  a3[1] = a2;
  return result;
}

uint64_t sub_247C7AE9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE633F0);
  result = swift_allocObject();
  *(result + 16) = sub_247C7B4A0;
  *(result + 24) = v6;
  *a1 = result;
  return result;
}

uint64_t sub_247C7AF4C()
{
  v1 = sub_247C7B080(*v0, v0[1]);

  return v1;
}

const xmlChar *sub_247C7AFB0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = xmlBufferCreate();
  htmlNodeDump(v3, *(v1 + 16), v2);
  result = xmlBufferContent(v3);
  if (result)
  {
    v5 = sub_247D1FCD8();
    xmlBufferFree(v3);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_247C7B01C()
{
  result = qword_27EE633E0;
  if (!qword_27EE633E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE633E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE633E0);
  }

  return result;
}

uint64_t sub_247C7B080(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = v5;
  swift_retain_n();

  result = swift_beginAccess();
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v4;
    v8 = 0;
    v9 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      v10 = *(v5 + 48);
      if (v8)
      {

        v11 = __OFSUB__(v8--, 1);
        if (v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v12 = v7[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE633F8);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = v15 + 4;
        v20 = v7[3] >> 1;
        v9 = &v15[2 * v20 + 4];
        v21 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
        if (v7[2])
        {
          if (v15 != v7 || v19 >= &v7[2 * v20 + 4])
          {
            memmove(v19, v7 + 4, 16 * v20);
          }

          v7[2] = 0;
        }

        else
        {
        }

        v7 = v15;
        v11 = __OFSUB__(v21, 1);
        v8 = v21 - 1;
        if (v11)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }
      }

      *v9 = v5;
      v9[1] = a2;
      v9 += 2;
      v5 = v10;
      if (!v10)
      {
        v23 = 0;
        v4 = v27;
        goto LABEL_26;
      }
    }
  }

  v8 = 0;
  v23 = *(v4 + 16);
LABEL_26:
  *(v4 + 16) = v23;

  v24 = v7[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v11 = __OFSUB__(v25, v8);
    v26 = v25 - v8;
    if (v11)
    {
      goto LABEL_32;
    }

    v7[2] = v26;
  }

  return v7;
}

uint64_t sub_247C7B280(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = *(a4 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE633F0);
  result = swift_allocObject();
  v13 = result;
  *(result + 16) = sub_247C7B3BC;
  *(result + 24) = v11;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = v13;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = 1;
    while (1)
    {
      (*(v13 + 16))(&v17);
      v15 = v18;
      if (!v18)
      {
        break;
      }

      *a2 = v17;
      a2[1] = v15;
      if (a3 == v14)
      {
        goto LABEL_12;
      }

      a2 += 2;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v14 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247C7B408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_247C7B450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247C7B4A4(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 transitionCoordinator];
  if (!v6)
  {
    return a1();
  }

  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v12[4] = sub_247C76858;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_247C9451C;
  v12[3] = &block_descriptor_7;
  v9 = _Block_copy(v12);
  v10 = v3;

  [v7 animateAlongsideTransition:0 completion:v9];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_247C7B5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247C7B4A4(a3, a4);
}

uint64_t sub_247C7B688()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_247C7B6E0(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632C0);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = _s15DiagnosticStyleOMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a2;
  v11 = [v10 presentedViewController];
  if (v11)
  {
    while (1)
    {
      v12 = v11;
      if ([v11 isBeingDismissed])
      {
        break;
      }

      v11 = [v12 presentedViewController];
      v10 = v12;
      if (!v11)
      {
        goto LABEL_9;
      }
    }
  }

  v12 = v10;
LABEL_9:
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 preferredStyle];
    if (v15)
    {
      if (v15 == 1)
      {
        LOBYTE(aBlock[0]) = 0;
LABEL_19:
        sub_247D1FE68();

        return;
      }

LABEL_18:
      LOBYTE(aBlock[0]) = 1;
      goto LABEL_19;
    }

    sub_247C7BAD4(v24, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = _s15DiagnosticStyleOMa;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_247C7BCF8(v9, _s15DiagnosticStyleOMa);
        goto LABEL_18;
      }

      v17 = _s5StateVMa;
    }

    sub_247C7BCF8(v9, v17);
    v18 = v23;
    (*(v23 + 16))(v6, v25, v4);
    v19 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v20 = swift_allocObject();
    (*(v18 + 32))(v20 + v19, v6, v4);
    aBlock[4] = sub_247C7BC8C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247CDD038;
    aBlock[3] = &block_descriptor_6;
    v21 = _Block_copy(aBlock);

    [v14 dismissViewControllerAnimated:1 completion:v21];

    _Block_release(v21);
  }

  else
  {

    LOBYTE(aBlock[0]) = 1;
    sub_247D1FE68();
  }
}

uint64_t sub_247C7BAD4(uint64_t a1, uint64_t a2)
{
  v4 = _s15DiagnosticStyleOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C7BB38()
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632C0);
  sub_247D1FE68();
}

uint64_t sub_247C7BBF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247C7BC8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632C0);

  return sub_247C7BB38();
}

uint64_t sub_247C7BCF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_247C7BD74(void *a1@<X8>)
{
  v2 = sub_247D1EF78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() processInfo];
  if (sub_247CD8E34())
  {
  }

  else
  {
    v7 = sub_247CD8D4C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_247D1EF68();
  sub_247D1EF58();
  (*(v3 + 8))(v5, v2);
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_247D1FBB8();

  v10 = [v8 initWithSuiteName_];

  if (v10)
  {
    a1[3] = &type metadata for AppMetadataStorageConfigurationProvider;
    a1[4] = &off_2859D9E40;
    *a1 = v10;
    return;
  }

LABEL_6:
  sub_247D20398();
  __break(1u);
}

void sub_247C7BF64()
{
  [v0 setUserInteractionEnabled_];
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  [v0 setBackgroundColor_];

  v3 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment16ImagePreviewView_imageView];
  [v0 addSubview_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_247D24010;
  v6 = [v3 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:14.0];

  *(v5 + 32) = v8;
  v9 = [v3 leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:14.0];

  *(v5 + 40) = v11;
  v12 = [v0 bottomAnchor];
  v13 = [v3 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:14.0];

  *(v5 + 48) = v14;
  v15 = [v0 trailingAnchor];
  v16 = [v3 trailingAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:14.0];

  *(v5 + 56) = v17;
  sub_247C7C6F8();
  v18 = sub_247D1FDB8();

  [v4 activateConstraints_];

  [v3 setContentMode_];
  [v3 setClipsToBounds_];
  v19 = [v0 layer];
  v20 = [v1 blackColor];
  v21 = [v20 CGColor];

  [v19 setShadowColor_];
  v22 = [v0 layer];
  LODWORD(v23) = 1050253722;
  [v22 setShadowOpacity_];

  v24 = [v0 layer];
  [v24 setShadowRadius_];

  v25 = [v0 layer];
  [v25 setShadowOffset_];
}

unint64_t sub_247C7C6F8()
{
  result = qword_27EE63310;
  if (!qword_27EE63310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE63310);
  }

  return result;
}

void sub_247C7C744()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v45 - v7;
  v9 = type metadata accessor for FlowResponse.Step.Action(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - v14;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  v16 = [v1 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    v19 = [objc_opt_self() tintColor];
    [v18 setTintColor_];
  }

  v47 = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_topBarTrailingAction;
  swift_beginAccess();
  sub_247C2BD10(&v1[v20], v8, &qword_27EE62FA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_247C27100(v8, &qword_27EE62FA8);
  }

  else
  {
    sub_247C7FB2C(v8, v15, type metadata accessor for FlowResponse.Step.Action);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_247C7FA64(v15, v13, type metadata accessor for FlowResponse.Step.Action);
    v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    sub_247C7FB2C(v13, v23 + v22, type metadata accessor for FlowResponse.Step.Action);

    sub_247CC5F14(1, sub_247C7F9F0, v23);

    sub_247C7FACC(v15, type metadata accessor for FlowResponse.Step.Action);
  }

  v24 = &v1[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState];
  v25 = _s5StateVMa();
  sub_247C2BD10(&v24[*(v25 + 48)], v45, &qword_27EE62FB0);
  sub_247C3F2A4(v45, v46);
  v26 = *__swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v27 = sub_247C7A980();

  __swift_destroy_boxed_opaque_existential_1(v46);
  if (v27)
  {
    sub_247C3194C(0, &qword_27EE62FB8);
    v28 = sub_247D20068();
    sub_247C3194C(0, &unk_27EE62FC0);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    v31 = v28;
    v32 = sub_247D20198();
    [v31 setPrimaryAction_];

    v33 = v31;
    MEMORY[0x24C1B7C60]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_247D1FDE8();
    }

    sub_247D1FE08();
  }

  v34 = [v1 navigationItem];
  sub_247C3194C(0, &qword_27EE62FB8);
  v35 = sub_247D1FDB8();

  [v34 setRightBarButtonItems_];

  v36 = &v1[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_loadingTask];
  v37 = v1[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_loadingTask + 16];
  if (v37 != 255)
  {
    v39 = *v36;
    v38 = v36[1];
    v40 = sub_247D1FEC8();
    (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
    sub_247D1FEA8();
    sub_247C3E770(v39, v38, v37);
    sub_247C3E770(v39, v38, v37);
    v41 = v1;
    v42 = sub_247D1FE98();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    *(v43 + 32) = v39;
    *(v43 + 40) = v38;
    *(v43 + 48) = v37 & 1;
    *(v43 + 56) = v41;
    sub_247C2D2D0(0, 0, v5, &unk_247D24D00, v43);
    sub_247C3E98C(v39, v38, v37);
  }
}

void sub_247C7CE18(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = _s5StateVMa();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowResponse.Step.Action(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_247C7FA64(a3, v10, type metadata accessor for FlowResponse.Step.Action);
      v13 = v12;
      if ([a1 sender])
      {
        sub_247D20238();
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      v15[0] = v16;
      v15[1] = v17;
      if (*(&v17 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE62FD0);
        swift_dynamicCast();
      }

      else
      {
        sub_247C27100(v15, &unk_27EE63300);
      }

      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      sub_247C7FA64(v13 + OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState, v7, _s5StateVMa);
      sub_247C58438(v7);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_247C7FACC(v7, _s5StateVMa);
      sub_247C7FACC(v10, type metadata accessor for FlowResponse.Step.Action);
    }

    else
    {
    }
  }
}

uint64_t sub_247C7D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104[5] = *MEMORY[0x277D85DE8];
  v93 = sub_247D1F448();
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v84 - v6);
  v103 = sub_247D1EE08();
  v94 = *(v103 - 8);
  v8 = MEMORY[0x28223BE20](v103);
  v97 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v84 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v84 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v84 - v15;
  MEMORY[0x28223BE20](v14);
  v89 = &v84 - v16;
  v17 = sub_247D1EF48();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_247D1FEA8();
  v88 = sub_247D1FE98();
  v101 = v21;
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE0);
    v24 = swift_allocObject();
    v86 = xmmword_247D23880;
    *(v24 + 16) = xmmword_247D23880;
    sub_247D1EF38();
    sub_247D1EF08();
    v26 = v25;
    (*(v18 + 8))(v20, v17);
    v27 = MEMORY[0x277D83A80];
    *(v24 + 56) = MEMORY[0x277D839F8];
    *(v24 + 64) = v27;
    *(v24 + 32) = v26;
    v28 = sub_247D1FC18();
    v30 = v29;
    v87 = v23;
    v31 = &v23[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState];
    v32 = *&v23[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState + 8];
    v104[0] = *&v23[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState];
    v104[1] = v32;

    MEMORY[0x24C1B7B80](95, 0xE100000000000000);
    MEMORY[0x24C1B7B80](v28, v30);

    v33 = objc_opt_self();
    v34 = [v33 defaultManager];
    v35 = [v34 temporaryDirectory];

    sub_247D1EDD8();
    sub_247D1EDC8();

    v36 = [v33 defaultManager];
    v37 = sub_247D1EDA8();
    v104[0] = 0;
    LODWORD(v30) = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v104];

    if (v30)
    {
      v38 = v104[0];
    }

    else
    {
      v39 = v104[0];
      v40 = sub_247D1ECA8();

      swift_willThrow();
    }

    v96 = 0;
    v41 = *&v31[*(_s5StateVMa() + 20)];
    if (v41 >> 62)
    {
      v82 = v41;
      v83 = sub_247D203B8();
      v41 = v82;
      v42 = v83;
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = a3;
    if (v42)
    {
      v43 = v41;
      v104[0] = MEMORY[0x277D84F90];
      sub_247CE2364(0, v42 & ~(v42 >> 63), 0);
      if (v42 < 0)
      {
        __break(1u);
      }

      v44 = 0;
      v45 = v104[0];
      v46 = v43;
      v98 = (v43 & 0xC000000000000001);
      v99 = v42;
      v100 = v43;
      do
      {
        if (v98)
        {
          v47 = MEMORY[0x24C1B8190](v44, v46);
        }

        else
        {
          v47 = v46[v44 + 4];
        }

        sub_247D1FE98();
        sub_247D1FE38();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        sub_247C2BD10(v47 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_uploadRequestData, v7, &qword_27EE62DE8);
        v48 = type metadata accessor for RecordedImage.UploadRequestData(0);
        if ((*(*(v48 - 8) + 48))(v7, 1, v48) == 1)
        {
          sub_247C27100(v7, &qword_27EE62DE8);
          v49 = 0;
          v50 = 0xF000000000000000;
        }

        else
        {
          v49 = *v7;
          v50 = v7[1];
          sub_247C30174(*v7, v50);
          sub_247C7FACC(v7, type metadata accessor for RecordedImage.UploadRequestData);
        }

        v51 = *(v47 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name);
        v52 = *(v47 + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name + 8);

        v104[0] = v45;
        v54 = v45[2];
        v53 = v45[3];
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          sub_247CE2364((v53 > 1), v54 + 1, 1);
          v45 = v104[0];
        }

        v44 = (v44 + 1);
        v45[2] = v55;
        v56 = &v45[4 * v54];
        v56[4] = v49;
        v56[5] = v50;
        v56[6] = v51;
        v56[7] = v52;
        v46 = v100;
      }

      while (v99 != v44);
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
      v55 = *(MEMORY[0x277D84F90] + 16);
      if (!v55)
      {
LABEL_38:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE8);
        v70 = swift_allocObject();
        *(v70 + 16) = v86;
        v71 = v103;
        *(v70 + 56) = v103;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v70 + 32));
        (*(v94 + 16))(boxed_opaque_existential_0, v95, v71);
        v73 = objc_allocWithZone(MEMORY[0x277D546D8]);
        v74 = sub_247D1FDB8();

        v75 = [v73 initWithActivityItems:v74 applicationActivities:0];

        v76 = [v75 popoverPresentationController];
        if (v76)
        {
          v77 = v76;
          [v76 setSourceItem_];
        }

        v78 = v87;
        [v87 presentViewController:v75 animated:1 completion:0];

        v79 = *(v94 + 8);
        v80 = v103;
        v79(v95, v103);
        v79(v89, v80);
      }
    }

    v101 = (v94 + 8);
    v98 = (v94 + 16);
    v99 = (v90 + 8);
    v90 = v94 + 32;
    v57 = v45 + 7;
    v58 = MEMORY[0x277D84F90];
    do
    {
      v60 = *(v57 - 3);
      v59 = *(v57 - 2);
      v61 = *(v57 - 1);
      v62 = *v57;
      sub_247C3E6D4(v60, v59);

      sub_247C3E6D4(v60, v59);
      if (v59 >> 60 == 15)
      {
        sub_247C3E6E8(v60, v59);
      }

      else
      {
        sub_247C3E6D4(v60, v59);

        sub_247C3E6E8(v60, v59);
        if (v62)
        {
          v100 = v58;
          sub_247CCD6A4(v61);

          v63 = v91;
          sub_247D1EDC8();

          v64 = v92;
          sub_247D1F438();
          sub_247D1EDB8();
          (*v99)(v64, v93);
          v65 = *v101;
          (*v101)(v63, v103);
          v66 = v96;
          sub_247D1EE68();
          if (v66)
          {
          }

          v96 = 0;
          v58 = v100;
          (*v98)(v97, v102, v103);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_247C805D8(0, v58[2] + 1, 1, v58);
          }

          v68 = v58[2];
          v67 = v58[3];
          if (v68 >= v67 >> 1)
          {
            v58 = sub_247C805D8(v67 > 1, v68 + 1, 1, v58);
          }

          sub_247C3E6E8(v60, v59);
          sub_247C3E6E8(v60, v59);

          v69 = v103;
          v65(v102, v103);
          v58[2] = v68 + 1;
          (*(v94 + 32))(v58 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v68, v97, v69);
        }

        else
        {
          sub_247C3E6E8(v60, v59);

          sub_247C3E6E8(v60, v59);
        }
      }

      v57 += 4;
      --v55;
    }

    while (v55);
    goto LABEL_38;
  }
}

void sub_247C7DD00(uint64_t a1, int a2, __int128 *a3)
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
  v14 = *&v3[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_hiddenActions];
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

      sub_247C7FA64(v17 + *(v41 + 72) * v16, v11, type metadata accessor for FlowResponse.Step.HiddenAction);
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
            sub_247C7FB2C(v11, v38, type metadata accessor for FlowResponse.Step.HiddenAction);
            v20 = v39;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v21 = v37;
              sub_247C7FA64(v19, v37, type metadata accessor for FlowResponse.Step.HiddenAction);
              sub_247C5B128(v20 + OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState);
              swift_unknownObjectRelease();
              sub_247C7FACC(v21, type metadata accessor for FlowResponse.Step.HiddenAction);
            }

            sub_247C7FACC(v19, type metadata accessor for FlowResponse.Step.HiddenAction);
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
      sub_247C7FACC(v11, type metadata accessor for FlowResponse.Step.HiddenAction);
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
    v27 = &v22[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState];
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

uint64_t sub_247C7E1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 264) = a6;
  *(v7 + 16) = a4;
  *(v7 + 40) = _s15DiagnosticStyleOMa(0);
  *(v7 + 48) = swift_task_alloc();
  *(v7 + 56) = _s5StateVMa();
  *(v7 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63000);
  *(v7 + 72) = swift_task_alloc();
  v8 = type metadata accessor for FileStatusResponse(0);
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = sub_247D1FEA8();
  *(v7 + 112) = sub_247D1FE98();
  v10 = sub_247D1FE38();
  *(v7 + 120) = v10;
  *(v7 + 128) = v9;

  return MEMORY[0x2822009F8](sub_247C7E378, v10, v9);
}

uint64_t sub_247C7E378()
{
  if (*(v0 + 264))
  {
    v15 = (*(v0 + 16) + **(v0 + 16));
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_247C7E5EC;

    return v15();
  }

  else
  {
    *(v0 + 136) = OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 144) = Strong;
    if (Strong)
    {
      v4 = *(v0 + 32);
      v5 = *(v0 + 16);
      v6 = sub_247D1FE98();
      v7 = OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState;
      *(v0 + 160) = v6;
      *(v0 + 168) = v7;
      v8 = swift_task_alloc();
      *(v0 + 176) = v8;
      *v8 = v0;
      v8[1] = sub_247C7E7C0;
      v9 = *(v0 + 72);
      v10 = MEMORY[0x277D84F90];

      return sub_247CA9AB4(v9, v5, v4 + v7, v10, 0);
    }

    else
    {
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      v13 = *(v0 + 72);

      (*(v12 + 56))(v13, 1, 1, v11);
      sub_247C27100(v13, &qword_27EE63000);

      v14 = *(v0 + 8);

      return v14();
    }
  }
}

uint64_t sub_247C7E5EC()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_247C7E70C, v3, v2);
}

uint64_t sub_247C7E70C()
{
  v5 = v0;

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_247C7DD00(0, 1, v3);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C7E7C0()
{
  *(*v1 + 184) = v0;

  v3 = sub_247D1FE38();
  if (v0)
  {
    v4 = sub_247C7ED4C;
  }

  else
  {
    v4 = sub_247C7E91C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_247C7E91C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_247C7E98C, v1, v2);
}

uint64_t sub_247C7E98C()
{
  v31 = v0;
  v1 = v0[12];
  v2 = v0[9];
  (*(v0[11] + 56))(v2, 0, 1, v0[10]);
  sub_247C7FB2C(v2, v1, type metadata accessor for FileStatusResponse);
  if (*(v1 + 24) == 1)
  {
    v3 = v0[12];
    v4 = *(v3 + 16);
    if (v4)
    {
      if (v4 == 1)
      {

        memset(v30, 0, 40);
        sub_247C7DD00(0, 1, v30);
LABEL_22:
        v13 = v3;
        goto LABEL_23;
      }

      v14 = v0[21];
      v15 = v0[7];
      v16 = v0[4];

      v17 = *(v16 + v14 + *(v15 + 44));
      v18 = *(v16 + v14 + 48);
      if (*(v18 + 16) && (v19 = sub_247CCFDA8(0xD000000000000011, 0x8000000247D2E310), (v20 & 1) != 0))
      {
        v21 = (*(v18 + 56) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];

        v24 = sub_247CECA84(v23, v22);
        v26 = v25;

        if (v26)
        {
          if (v17 < 2)
          {
            goto LABEL_20;
          }

LABEL_18:
          v3 = v0[12];
          v30[0] = xmmword_247D22CC0;
          *&v30[1] = 0x8000000247D2D900;
          *(&v30[1] + 8) = xmmword_247D23C00;
          v27 = 2;
LABEL_21:
          sub_247C7DD00(v27, 1, v30);
          sub_247C3EF94(*&v30[0], *(&v30[0] + 1), *&v30[1]);
          goto LABEL_22;
        }

        if (v24 < v17)
        {
          goto LABEL_18;
        }
      }

      else if (v17 > 1)
      {
        goto LABEL_18;
      }

LABEL_20:
      v3 = v0[12];
      v30[0] = xmmword_247D22CD0;
      *&v30[1] = 0x8000000247D2D930;
      *(&v30[1] + 8) = xmmword_247D23C00;
      v27 = 5;
      goto LABEL_21;
    }
  }

  v5 = sub_247D1F468();
  v6 = sub_247D20038();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_247C1F000, v5, v6, "Critical Error: Invalid or missing assessment result", v7, 2u);
    MEMORY[0x24C1B9080](v7, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    v12 = v0[12];

    v13 = v12;
LABEL_23:
    sub_247C7FACC(v13, type metadata accessor for FileStatusResponse);

    v28 = v0[1];

    return v28();
  }

  sub_247C3EF40();
  v0[25] = swift_allocError();
  *v9 = 0;
  v0[26] = sub_247D1FE98();
  v11 = sub_247D1FE38();
  v0[27] = v11;
  v0[28] = v10;

  return MEMORY[0x2822009F8](sub_247C7EE54, v11, v10);
}

uint64_t sub_247C7ED4C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_247C7EDBC, v1, v2);
}

uint64_t sub_247C7EDBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C7EE54()
{
  sub_247C7FA64(v0[4] + v0[21], v0[8], _s5StateVMa);
  v0[29] = sub_247D1FE98();
  v2 = sub_247D1FE38();
  v0[30] = v2;
  v0[31] = v1;

  return MEMORY[0x2822009F8](sub_247C7EF08, v2, v1);
}

uint64_t sub_247C7EF08()
{
  v1 = v0[25];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247C7FA64(v2, v3, _s5StateVMa);
  *(v3 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_247C7F018;
  v7 = v0[6];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247C7F018()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_247C7FACC(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_247C7F170, v4, v3);
}

uint64_t sub_247C7F170()
{
  v1 = v0[8];

  sub_247C7FACC(v1, _s5StateVMa);
  v2 = v0[27];
  v3 = v0[28];

  return MEMORY[0x2822009F8](sub_247C7F1F4, v2, v3);
}

uint64_t sub_247C7F1F4()
{
  v1 = v0[25];

  swift_unknownObjectRelease();

  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_247C7F26C, v2, v3);
}

uint64_t sub_247C7F26C()
{
  v1 = *(v0 + 96);

  sub_247C7FACC(v1, type metadata accessor for FileStatusResponse);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for ProgressViewController()
{
  result = qword_27EE63438;
  if (!qword_27EE63438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247C7F4FC()
{
  _s5StateVMa();
  if (v0 <= 0x3F)
  {
    sub_247D1F488();
    if (v1 <= 0x3F)
    {
      sub_247C7F62C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_247C7F62C()
{
  if (!qword_27EE63448)
  {
    type metadata accessor for FlowResponse.Step.Action(255);
    v0 = sub_247D20208();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE63448);
    }
  }
}

BOOL sub_247C7F6DC()
{
  v1 = v0 + OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState;
  v2 = v1 + *(_s5StateVMa() + 40);
  v3 = *(v2 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  return (*(v3 + 74) & 1) == 0;
}

uint64_t sub_247C7F74C()
{
  swift_unknownObjectRelease();
  sub_247C3E860(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247C7F798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247C2793C;

  return sub_247C7E1E0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_247C7F870()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247C7F8A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247C7F8F0()
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

void sub_247C7F9F0(void *a1)
{
  v3 = *(type metadata accessor for FlowResponse.Step.Action(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_247C7CE18(a1, v4, v5);
}

uint64_t sub_247C7FA64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C7FACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C7FB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_247C7FB94(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  Width = CGRectGetWidth(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  if (Width * CGRectGetHeight(v22) > 0.0)
  {
    v23.origin.x = a5;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    v24 = CGRectIntersection(v23, v26);
    if (v24.size.width != 0.0 || v24.size.height != 0.0)
    {
      x = v24.origin.x;
      y = v24.origin.y;
      v18 = v24.size.width;
      height = v24.size.height;
      CGRectGetWidth(v24);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = v18;
      v25.size.height = height;
      CGRectGetHeight(v25);
    }
  }
}

double sub_247C7FCC8(char a1, double result, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ((a1 & 1) == 0)
  {
    v5 = result;
    Width = CGRectGetWidth(*&result);
    v13.origin.x = v5;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    Height = CGRectGetHeight(v13);
    if (Height < Width)
    {
      Width = Height;
    }

    v14.origin.x = v5;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    if (Width == CGRectGetWidth(v14))
    {
      v11 = v5;
    }

    else
    {
      v11 = a3;
    }

    v12 = v11;
    v15.origin.x = v5;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    CGRectGetWidth(v15);
    v16.origin.x = v5;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGRectGetHeight(v16);
    v17.origin.x = v5;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetHeight(v17);
    v18.origin.x = v5;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetWidth(v18);
    v19.origin.x = v5;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetHeight(v19);
    v20.origin.x = v5;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    CGRectGetWidth(v20);
    v21.origin.x = v5;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    CGRectGetHeight(v21);
    v22.origin.x = v5;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    CGRectGetWidth(v22);
    v23.origin.x = v5;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    CGRectGetHeight(v23);
    return v12;
  }

  return result;
}

BOOL sub_247C7FE60(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11)
{
  v26 = a10;
  if (a11 >= a10)
  {
    v27 = a10;
  }

  else
  {
    v27 = a11;
  }

  if (a10 <= a11)
  {
    v26 = a11;
  }

  v28 = v27 / v26;
  v51.origin.x = a6;
  v51.origin.y = a7;
  v51.size.width = a8;
  v51.size.height = a9;
  v29 = v28 * CGRectGetHeight(v51);
  v52.origin.x = a6;
  v52.origin.y = a7;
  v52.size.width = a8;
  v52.size.height = a9;
  v50 = (v29 - CGRectGetWidth(v52)) * -0.5;
  v53.origin.x = a6;
  v53.origin.y = a7;
  v53.size.width = a8;
  v53.size.height = a9;
  Height = CGRectGetHeight(v53);
  if (a1 >= 3)
  {
    if (a1 == 3)
    {
      v59.origin.x = a2;
      v59.origin.y = a3;
      v33 = a4;
      v59.size.width = a4;
      v59.size.height = a5;
      v34 = 1.0 - a3 - CGRectGetHeight(v59);
      v60.origin.x = a2;
      v60.origin.y = a3;
      v60.size.width = a4;
      v60.size.height = a5;
      v35 = 1.0 - a2 - CGRectGetWidth(v60);
      v61.origin.x = a2;
      v61.origin.y = a3;
      v61.size.width = v33;
      v61.size.height = a5;
      normalizedRect = CGRectGetHeight(v61);
      v62.origin.x = a2;
      v62.origin.y = a3;
      v62.size.width = v33;
      v62.size.height = a5;
      Width = CGRectGetWidth(v62);
      a3 = v34;
      a2 = v35;
    }

    else if (a1 == 4)
    {
      v57.origin.x = a2;
      v57.origin.y = a3;
      v57.size.width = a4;
      v57.size.height = a5;
      normalizedRect = CGRectGetHeight(v57);
      v58.origin.x = a2;
      v58.origin.y = a3;
      v58.size.width = a4;
      v58.size.height = a5;
      Width = CGRectGetWidth(v58);
    }

    else
    {
      v36 = a2;
      v63.origin.x = a2;
      v63.origin.y = a3;
      v63.size.width = a4;
      v63.size.height = a5;
      a2 = 1.0 - a3 - CGRectGetHeight(v63);
      v64.origin.x = v36;
      v64.origin.y = a3;
      v64.size.width = a4;
      v64.size.height = a5;
      normalizedRect = CGRectGetWidth(v64);
      v65.origin.x = v36;
      v65.origin.y = a3;
      v65.size.width = a4;
      v65.size.height = a5;
      Width = CGRectGetHeight(v65);
      a3 = v36;
    }
  }

  else
  {
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v31 = 1.0 - a3 - CGRectGetHeight(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    normalizedRect = CGRectGetWidth(v55);
    v56.origin.x = a2;
    v56.origin.y = a3;
    v56.size.width = a4;
    v56.size.height = a5;
    Width = CGRectGetHeight(v56);
    a3 = a2;
    a2 = v31;
  }

  v66.origin.y = 0.0;
  v66.origin.x = v50;
  v66.size.width = v29;
  v66.size.height = Height;
  v37 = CGRectGetWidth(v66);
  v67.origin.y = 0.0;
  v67.origin.x = v50;
  v67.size.width = v29;
  v67.size.height = Height;
  v38 = CGRectGetHeight(v67);
  if (v37 > v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  v68.origin.y = 0.0;
  v68.origin.x = v50;
  v68.size.width = v29;
  v68.size.height = Height;
  v40 = CGRectGetWidth(v68);
  v69.origin.y = 0.0;
  v69.origin.x = v50;
  v69.size.width = v29;
  v69.size.height = Height;
  v41 = CGRectGetHeight(v69);
  if (v41 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v41;
  }

  result = UIInterfaceOrientationIsPortrait(a1);
  if (result)
  {
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v42 <= -9.22337204e18)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v42 >= 9.22337204e18)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v39 <= -9.22337204e18)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v44 = v42;
    v45 = v39;
    if (v39 < 9.22337204e18)
    {
LABEL_33:
      v46 = v44;
      v47 = v45;
      v70.origin.x = a3;
      v70.origin.y = a2;
      v70.size.width = normalizedRect;
      v70.size.height = Width;
      VNImageRectForNormalizedRect(v70, v46, v47);
      return UIInterfaceOrientationIsLandscape(a1);
    }

    __break(1u);
  }

  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = v39;
  v45 = v42;
  if (v42 < 9.22337204e18)
  {
    goto LABEL_33;
  }

LABEL_44:
  __break(1u);
  return result;
}

char *sub_247C802D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_247C803C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63FE0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247C804D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE64060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_247C80628(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_247C80804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63480);
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

void *sub_247C80908(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63470);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247C80A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63458);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247C80B5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_247C80C60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247C80D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 336);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 336 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unsigned __int8 *sub_247C80E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_247D1FD58();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247C81428();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247D202F8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_247C81428()
{
  v0 = sub_247D1FD68();
  v4 = sub_247C814A8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_247C814A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_247D20218();
    if (!v9 || (v10 = v9, v11 = sub_247CB07F4(v9, 0), v12 = sub_247C81600(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_247D1FCA8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_247D1FCA8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_247D202F8();
LABEL_4:

  return sub_247D1FCA8();
}

unint64_t sub_247C81600(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_247C81820(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_247D1FD18();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_247D202F8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_247C81820(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_247D1FCF8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_247C81820(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247D1FD28();
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
    v5 = MEMORY[0x24C1B7BC0](15, a1 >> 16);
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

unint64_t sub_247C8189C(uint64_t a1, unint64_t a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = a1;
    result = a2;
  }

  else
  {
    result = 0xE100000000000000;
  }

  v4 = HIBYTE(result) & 0xF;
  v5 = v2 & 0xFFFFFFFFFFFFLL;
  if ((result & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(result) & 0xF;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v10 = sub_247C80E9C(v2, result, 10);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      return v10;
    }

    return 0;
  }

  if ((result & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v7 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v32 = result;
      v7 = sub_247D202F8();
      result = v32;
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        v17 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          if (!v7)
          {
            goto LABEL_65;
          }

          v18 = v7 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v17)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_74;
    }

    if (v8 == 45)
    {
      if (v5 >= 1)
      {
        v9 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          if (!v7)
          {
            goto LABEL_65;
          }

          v11 = v7 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_73;
    }

    if (v5)
    {
      v10 = 0;
      if (!v7)
      {
        goto LABEL_65;
      }

      while (1)
      {
        v24 = *v7 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v7;
        if (!--v5)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_64;
  }

  v33[0] = v2;
  v33[1] = result & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 == 45)
    {
      if (!v4)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v7 = (v4 - 1);
      if (v4 != 1)
      {
        v10 = 0;
        v14 = v33 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v7)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v4)
    {
      v10 = 0;
      v26 = v33;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v4)
        {
LABEL_63:
          LOBYTE(v7) = 0;
          goto LABEL_65;
        }
      }
    }

LABEL_64:
    v10 = 0;
    LOBYTE(v7) = 1;
LABEL_65:
    v34 = v7;
    v29 = v7;

    if ((v29 & 1) == 0)
    {
      return v10;
    }

    return 0;
  }

  if (v4)
  {
    v7 = (v4 - 1);
    if (v4 != 1)
    {
      v10 = 0;
      v21 = v33 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_247C81BB8@<X0>(unint64_t *a1@<X8>)
{
  sub_247C81DDC();
  v2 = sub_247D20228();

  if (*(v2 + 16) <= 2uLL)
  {
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_247C80A50(0, *(v2 + 16) + 1, 1, v2);
      }

      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_247C80A50((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 16) = v4 + 1;
      v5 = v2 + 16 * v4;
      *(v5 + 32) = 48;
      *(v5 + 40) = 0xE100000000000000;
    }

    while (v4 < 2);
  }

  v6 = *(v2 + 32);
  v7 = *(v2 + 40);

  result = sub_247C8189C(v6, v7);
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);

  result = sub_247C8189C(v10, v11);
  if (*(v2 + 16) < 3uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = result;
  v13 = sub_247D20228();
  v14 = v13;
  v15 = v13 + 2;
  v16 = v13[2];
  if (!v16)
  {
    v19 = sub_247C8189C(0, 0);
    v22 = 0;
    v21 = 0;
    goto LABEL_13;
  }

  v17 = v13[4];
  v18 = v13[5];

  result = sub_247C8189C(v17, v18);
  if (v16 <= v14[2])
  {
    v19 = result;
    v20 = &v15[2 * v16];
    v22 = *v20;
    v21 = v20[1];

LABEL_13:

    *a1 = v9;
    a1[1] = v12;
    a1[2] = v19;
    a1[3] = v22;
    a1[4] = v21;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_247C81DDC()
{
  result = qword_27EE63450;
  if (!qword_27EE63450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63450);
  }

  return result;
}

uint64_t sub_247C81E30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_247C81E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_247C81EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_247C2793C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_247C8203C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 296) = a3;
  *(v4 + 304) = a4;
  *(v4 + 288) = a1;
  sub_247D1F1C8();
  *(v4 + 312) = swift_task_alloc();
  v6 = sub_247D1F1E8();
  *(v4 + 320) = v6;
  *(v4 + 328) = *(v6 - 8);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = type metadata accessor for FlowRequest(0);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = type metadata accessor for FlowResponseValidator();
  *(v4 + 368) = swift_task_alloc();
  v7 = a2[7];
  *(v4 + 112) = a2[6];
  *(v4 + 128) = v7;
  v8 = a2[9];
  *(v4 + 144) = a2[8];
  *(v4 + 160) = v8;
  v9 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v9;
  v10 = a2[5];
  *(v4 + 80) = a2[4];
  *(v4 + 96) = v10;
  v11 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v11;

  return MEMORY[0x2822009F8](sub_247C821B8, 0, 0);
}

uint64_t sub_247C821B8()
{
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE72D00;
  v2 = *(qword_27EE72D00 + 16);

  [v2 lock];
  sub_247CAE5E4(v1, &_s42AppMetadataStorageConfigurationProviderKeyON, (v0 + 248));
  v3 = *(v0 + 368);
  v4 = *(v0 + 296);
  [v2 unlock];
  sub_247C3F2A4((v0 + 248), v3);

  sub_247D1F478();
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  *(v5 + 24) = v4;
  sub_247C82AAC(&qword_27EE634A8, type metadata accessor for FlowRequest);
  sub_247D1F348();

  sub_247D1F1D8();
  v6 = sub_247D1F2F8();
  v8 = v7;
  v9 = *(v0 + 352);
  (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
  sub_247C82AF4(v9, type metadata accessor for FlowRequest);
  v10 = sub_247CD8184(MEMORY[0x277D84F90]);
  *(v0 + 176) = 0;
  *(v0 + 184) = v6;
  *(v0 + 192) = v8;
  *(v0 + 200) = 1;
  *(v0 + 208) = 2;
  *(v0 + 216) = v10;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 240) = 0;
  v11 = swift_task_alloc();
  *(v0 + 376) = v11;
  *v11 = v0;
  v11[1] = sub_247C8257C;

  return sub_247CCDBE0(v0 + 176, 0);
}

uint64_t sub_247C8257C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[48] = a1;
  v4[49] = a2;
  v4[50] = v2;

  if (v2)
  {
    v5 = sub_247C828DC;
  }

  else
  {
    v5 = sub_247C82694;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_247C82694()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  type metadata accessor for FlowResponse(0);
  sub_247C30174(v3, v1);
  sub_247D1F1B8();
  sub_247D1F1A8();
  sub_247C82AAC(&qword_27EE634B0, type metadata accessor for FlowResponse);
  sub_247D1F308();
  if (v2)
  {
    v4 = v0[48];
    v5 = v0[49];
    sub_247C82AF4(v0[46], type metadata accessor for FlowResponseValidator);
    sub_247C301C8(v4, v5);
  }

  else
  {
    v6 = v0[36];
    sub_247C63940(v6);
    sub_247C667EC(v6);
    v8 = v0[48];
    v7 = v0[49];
    sub_247C82AF4(v0[46], type metadata accessor for FlowResponseValidator);
    sub_247C301C8(v8, v7);
  }

  sub_247C82A58((v0 + 22));

  v9 = v0[1];

  return v9();
}

uint64_t sub_247C828DC()
{
  v1 = *(v0 + 368);
  sub_247C82A58(v0 + 176);
  sub_247C82AF4(v1, type metadata accessor for FlowResponseValidator);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C82994(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  *a1 = v5;
  a1[1] = v4;
  v6 = sub_247D1EF98();
  v8 = v7;

  a1[2] = v6;
  a1[3] = v8;
  if (*(a2 + 16))
  {
    v9 = 0x5245504C4548;
  }

  else
  {
    v9 = 0x544547524154;
  }

  a1[4] = v9;
  a1[5] = 0xE600000000000000;
  return result;
}

uint64_t sub_247C82AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247C82AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C82B54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_247C82B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_247C83030()
{
  result = qword_27EE634B8;
  if (!qword_27EE634B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE634B8);
  }

  return result;
}

id sub_247C8307C()
{
  v1 = v0;
  v2 = sub_247D1EF48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1EF38();
  sub_247D1EF08();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = &v1[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_lastUpdateTimestamp];
  *v8 = v7;
  v8[8] = 0;
  result = [v1 setHidden_];
  v10 = &v1[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_configuration];
  v11 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_configuration + 32];
  if (v11)
  {
    v13 = v10[2];
    v12 = v10[3];
    v15 = *v10;
    v14 = v10[1];
    v16 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_observedRectangleView];
    *&v16[OBJC_IVAR____TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView_observations] = v11;
    swift_bridgeObjectRetain_n();

    [v16 setFrame_];

    return [v16 setNeedsDisplay];
  }

  return result;
}

char *sub_247C83204(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_configuration];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_observedRectangleView;
  v6 = objc_allocWithZone(type metadata accessor for ObservedRectangleView());
  *&v1[v5] = sub_247C834A8(MEMORY[0x277D84F90]);
  v7 = &v1[OBJC_IVAR____TtC18CosmeticAssessment18OcclusionDebugView_lastUpdateTimestamp];
  *v7 = 0;
  v7[8] = 1;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  *(v4 + 4) = *(a1 + 32);

  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 addSubview_];
  return v9;
}

char *sub_247C834A8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView_maskLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v1[OBJC_IVAR____TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView_observations] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setClearsContextBeforeDrawing_];
  [v5 setOpaque_];
  v6 = [v5 layer];
  [v6 addSublayer_];

  return v5;
}

uint64_t sub_247C8375C()
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

uint64_t sub_247C83868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247C838B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_247C83908()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView_observations;
  if (*(*&v0[OBJC_IVAR____TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView_observations] + 16))
  {
    v29 = *&v0[OBJC_IVAR____TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView_maskLayer];
    [v29 setSublayers_];
    v2 = *(*&v0[v1] + 16);
    if (v2)
    {
      v28 = v0;
      v3 = ( + 40);
      v4 = &selRef_setShadowOffset_;
      do
      {
        v7 = *(v3 - 8);
        v8 = *v3;
        v33.a = 0.0;
        v9 = v8;
        LODWORD(v10) = 1008981770;
        v11 = [v9 v4[6]];
        if (v11)
        {
          v12 = v11;
          v13 = *&v33.a;
          v14 = [v12 normalizedPath];

          if (v14)
          {
            [v0 bounds];
            Width = CGRectGetWidth(v35);
            [v0 bounds];
            Height = CGRectGetHeight(v36);
            CGAffineTransformMakeScale(&v33, Width, Height);
            tx = v33.tx;
            ty = v33.ty;
            v30 = *&v33.c;
            v31 = *&v33.a;
            v19 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
            [v19 setLineWidth_];
            v20 = objc_opt_self();
            v21 = [v20 clearColor];
            v22 = [v21 CGColor];

            [v19 setFillColor_];
            v23 = &selRef_systemRedColor;
            if (!v7)
            {
              v23 = &selRef_systemOrangeColor;
            }

            v24 = [v20 *v23];
            v25 = [v24 CGColor];

            [v19 setStrokeColor_];
            v26 = [objc_opt_self() bezierPathWithCGPath_];
            CGAffineTransformMakeScale(&v33, 1.0, -1.0);
            CGAffineTransformTranslate(&v32, &v33, 0.0, -1.0);
            v33 = v32;
            [v26 applyTransform_];
            *&v33.a = v31;
            *&v33.c = v30;
            v33.tx = tx;
            v33.ty = ty;
            [v26 applyTransform_];
            v27 = [v26 CGPath];
            [v19 setPath_];

            v4 = &selRef_setShadowOffset_;
            v0 = v28;
            [v29 addSublayer_];
          }

          else
          {
          }
        }

        else
        {
          v5 = *&v33.a;
          v6 = sub_247D1ECA8();

          swift_willThrow();
        }

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t sub_247C83CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_247C27E44;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_247C83E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_247C83F58;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_247C83F58(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_247C84058(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0xD000000000000026;
    case 1:
      return 0xD00000000000001CLL;
    case 2:
      return 0xD000000000000032;
  }

  sub_247D202C8();
  MEMORY[0x24C1B7B80](0xD00000000000001BLL, 0x8000000247D2FDD0);
  swift_getErrorValue();
  sub_247D20518();
  return 0;
}

uint64_t sub_247C8414C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_247C84170, v2, 0);
}

uint64_t sub_247C84170(uint64_t a1, uint64_t a2)
{
  v4 = v2[7];
  v3 = v2[8];
  v5 = v2[6];
  sub_247C86ECC(&qword_27EE63510, a2, type metadata accessor for ImageUploadDataProvider);
  v6 = swift_task_alloc();
  v2[9] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v2[10] = v7;
  *v7 = v2;
  v7[1] = sub_247C84298;

  return MEMORY[0x2822008A8]();
}

uint64_t sub_247C84298()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_247C843D4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_247C843BC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_247C843D4()
{
  v1 = *(v0 + 88);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 88);
  if (v3)
  {

    v4 = *(v0 + 24);
    *(v0 + 40) = v4;
    sub_247C86B50();
    swift_willThrowTypedImpl();
  }

  else
  {

    *(v0 + 32) = v4;
    sub_247C86B50();
    swift_willThrowTypedImpl();
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_247C844E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v7 = *(type metadata accessor for ImageUploadTicket() - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247C845F8, a4, 0);
}

uint64_t sub_247C845F8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 104);
    v28 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v27 = *(v3 + 72);
    v26 = (v4 + 40) & ~v4;
    v25 = (*(v0 + 112) + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_247D1FEC8();
    v7 = *(v6 - 8);
    v24 = *(v7 + 56);
    v23 = (v7 + 48);
    v22 = (v7 + 8);
    do
    {
      v29 = v2;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 120);
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v24(v10, 1, 1, v6);
      sub_247C86FD8(v5, v12);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v14;
      sub_247C87464(v12, v15 + v26, type metadata accessor for ImageUploadTicket);
      *(v15 + v25) = v13;
      sub_247C2BD10(v10, v11, &qword_27EE62FF0);
      LODWORD(v11) = (*v23)(v11, 1, v6);

      v16 = *(v0 + 128);
      if (v11 == 1)
      {
        sub_247C27100(*(v0 + 128), &qword_27EE62FF0);
      }

      else
      {
        sub_247D1FEB8();
        (*v22)(v16, v6);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = sub_247D1FE38();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      if (v19 | v17)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_247C27100(v9, &qword_27EE62FF0);
      v5 += v27;
      v2 = v29 - 1;
    }

    while (v29 != 1);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_247C84950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_247C849FC;

  return sub_247C84BC8(a4, a5);
}

uint64_t sub_247C849FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_247C84B48, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_247C84B48()
{
  v1 = *(v0 + 24);
  sub_247C86B50();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_247C84BC8(uint64_t a1, uint64_t a2)
{
  v3[134] = v2;
  v3[133] = a2;
  v3[132] = a1;
  sub_247D1F058();
  v3[135] = swift_task_alloc();
  v4 = sub_247D1F098();
  v3[136] = v4;
  v3[137] = *(v4 - 8);
  v3[138] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288);
  v3[139] = swift_task_alloc();
  v5 = type metadata accessor for Metadata(0);
  v3[140] = v5;
  v3[141] = *(v5 - 8);
  v3[142] = swift_task_alloc();
  v6 = sub_247D1EB88();
  v3[143] = v6;
  v3[144] = *(v6 - 8);
  v3[145] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  v3[146] = swift_task_alloc();
  v7 = sub_247D1EE08();
  v3[147] = v7;
  v3[148] = *(v7 - 8);
  v3[149] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247C84E40, v2, 0);
}

uint64_t sub_247C84E40()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  *(v0 + 1248) = *(type metadata accessor for ImageUploadTicket() + 20);
  sub_247D1EDF8();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_247C27100(*(v0 + 1168), &qword_27EE63220);
    *(v0 + 1016) = 0;
    sub_247C86B50();
    swift_willThrowTypedImpl();

    v4 = *(v0 + 8);

    return v4(0);
  }

  else
  {
    v6 = *(v0 + 1192);
    v7 = *(v0 + 1064);
    v8 = *(v0 + 1056);
    (*(*(v0 + 1184) + 32))(v6, *(v0 + 1168), *(v0 + 1176));
    result = sub_247C86098(v6, v8);
    if (v7 < 0)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 1072);
      v10 = *(v0 + 1056);
      *(v0 + 1200) = *v10;
      *(v0 + 1208) = v10[1];
      *(v0 + 1216) = 0;
      v11 = v9[19];
      v12 = v9[20];
      __swift_project_boxed_opaque_existential_1(v9 + 16, v11);
      v17 = (*(v12 + 16) + **(v12 + 16));
      v13 = swift_task_alloc();
      *(v0 + 1224) = v13;
      *v13 = v0;
      v13[1] = sub_247C85104;
      v14 = *(v0 + 1208);
      v15 = *(v0 + 1200);
      v16 = *(v0 + 1160);

      return v17(v16, v15, v14, v11, v12);
    }
  }

  return result;
}

uint64_t sub_247C85104(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  *(v8 + 1232) = a3;
  *(v8 + 1240) = v3;

  v9 = *(v7 + 1072);
  if (v3)
  {
    v10 = sub_247C85D80;
  }

  else
  {
    sub_247C301C8(a1, a2);
    v10 = sub_247C85254;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

void sub_247C85254()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 1232);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = &off_278EDD000;
    if ([v3 statusCode] == 200 || objc_msgSend(v3, sel_statusCode) == 201 || objc_msgSend(v3, sel_statusCode) == 202)
    {
      v6 = *(v0 + 1208);

      v7 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        if (v7)
        {
          v31 = *(v0 + 1200);
          v32 = *(v0 + 1204);
          v23 = __OFSUB__(v32, v31);
          LODWORD(v8) = v32 - v31;
          if (v23)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v8 = v8;
        }

        else
        {
          v8 = *(v0 + 1214);
        }

        goto LABEL_22;
      }

      if (v7 != 2)
      {
        v93 = 0;
LABEL_24:
        v33 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v34 = sub_247D1EE28();
        v35 = [v33 initWithData_];

        v36 = 0.0;
        v37 = 0.0;
        if (v35)
        {
          [v35 size];
          v37 = v38;
        }

        v39 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v40 = sub_247D1EE28();
        v41 = [v39 initWithData_];

        if (v41)
        {
          [v41 size];
          v36 = v42;
        }

        v43 = *(v0 + 1072);
        v44 = *(v0 + 1056);
        v45 = (v44 + *(type metadata accessor for RecordedImage.UploadRequestData(0) + 24));
        v46 = *v45;
        v47 = v45[1];
        v48 = sub_247CEB840();
        v50 = v49;
        sub_247C5F368(v43 + 168, v0 + 904);
        v51 = *(v0 + 928);
        v52 = *(v0 + 936);
        __swift_project_boxed_opaque_existential_1((v0 + 904), v51);
        if (v37 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v37 < 9.22337204e18)
        {
          if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v36 > -9.22337204e18)
            {
              if (v36 < 9.22337204e18)
              {
                v90 = v50;
                v91 = v48;
                v92 = v46;
                v53 = *(v0 + 1128);
                v54 = *(v0 + 1120);
                v55 = *(v0 + 1112);
                v56 = *(v0 + 1056) + *(v0 + 1248);
                v57 = type metadata accessor for FileUploadToken(0);
                sub_247C2BD10(v56 + *(v57 + 36), v55, &qword_27EE63288);
                v58 = *(v53 + 48);
                v59 = v58(v55, 1, v54);
                v60 = *(v0 + 1136);
                if (v59 == 1)
                {
                  v61 = *(v0 + 1120);
                  v62 = *(v0 + 1112);
                  *v60 = 0;
                  v60[1] = 0xE000000000000000;
                  v60[2] = 0;
                  v60[3] = 0xE000000000000000;
                  v60[4] = 0;
                  v60[5] = 0xE000000000000000;

                  sub_247D1F188();
                  if (v58(v62, 1, v61) != 1)
                  {
                    sub_247C27100(*(v0 + 1112), &qword_27EE63288);
                  }
                }

                else
                {
                  sub_247C87464(*(v0 + 1112), v60, type metadata accessor for Metadata);
                }

                v63 = *(v0 + 1192);
                v64 = *(v0 + 1184);
                v88 = *(v0 + 1232);
                v89 = *(v0 + 1176);
                v65 = *(v0 + 1152);
                v86 = *(v0 + 1144);
                v87 = *(v0 + 1160);
                v66 = *(v0 + 1136);
                v68 = *v66;
                v67 = v66[1];

                sub_247C86E70(v66);
                *(v0 + 832) = 0u;
                *(v0 + 848) = 0u;
                *(v0 + 864) = 0u;
                *(v0 + 880) = 0u;
                *(v0 + 896) = 0;
                sub_247C27100(v0 + 832, &qword_27EE62E28);
                *(v0 + 424) = 0;
                *(v0 + 432) = 1;
                *(v0 + 440) = 0;
                *(v0 + 448) = 1;
                *(v0 + 456) = 0;
                *(v0 + 464) = 1;
                *(v0 + 472) = 0u;
                *(v0 + 488) = 0u;
                *(v0 + 504) = v93 / 1000;
                *(v0 + 512) = v37;
                *(v0 + 520) = v36;
                *(v0 + 528) = v92;
                *(v0 + 536) = v47;
                *(v0 + 544) = v91;
                *(v0 + 552) = v90;
                *(v0 + 560) = v68;
                *(v0 + 568) = v67;
                *(v0 + 576) = 0;
                *(v0 + 584) = 1;
                *(v0 + 592) = 0u;
                *(v0 + 608) = xmmword_247D23E90;
                *(v0 + 624) = 514;
                *(v0 + 632) = 0u;
                *(v0 + 648) = 0u;
                *(v0 + 664) = 0u;
                *(v0 + 680) = 0u;
                *(v0 + 696) = 0u;
                *(v0 + 712) = 0u;
                *(v0 + 728) = 0u;
                *(v0 + 744) = 0u;
                *(v0 + 760) = 0u;
                *(v0 + 776) = 0u;
                *(v0 + 792) = 0u;
                *(v0 + 808) = 1;
                *(v0 + 816) = 0xD000000000000017;
                *(v0 + 824) = 0x8000000247D2FD50;
                memcpy((v0 + 16), (v0 + 424), 0x198uLL);
                (*(v52 + 8))(v0 + 16, v51);
                sub_247C318F8(v0 + 424);

                (*(v65 + 8))(v87, v86);
                (*(v64 + 8))(v63, v89);
                __swift_destroy_boxed_opaque_existential_1(v0 + 904);

                v69 = *(v0 + 8);

                v69();
                return;
              }

              goto LABEL_50;
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_48;
      }

      v21 = *(*(v0 + 1200) + 16);
      v22 = *(*(v0 + 1200) + 24);
      v23 = __OFSUB__(v22, v21);
      v8 = v22 - v21;
      if (!v23)
      {
LABEL_22:
        v93 = v8;
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_16;
    }

    v2 = *(v0 + 1232);
    *(v0 + 968) = 0x646F632050545448;
    *(v0 + 976) = 0xEA00000000002065;
    *(v0 + 1048) = [v3 statusCode];
    v79 = sub_247D204D8();
    MEMORY[0x24C1B7B80](v79);

    v80 = *(v0 + 968);
    v81 = *(v0 + 976);
    type metadata accessor for TulaError();
    sub_247C86ECC(&qword_27EE634F8, 255, type metadata accessor for TulaError);
    v5 = swift_allocError();
    v83 = v82;
    *(v0 + 1000) = 0;
    *(v0 + 1008) = 0xE000000000000000;
    sub_247D202C8();

    *(v0 + 984) = 0xD00000000000001BLL;
    *(v0 + 992) = 0x8000000247D2FD30;
    MEMORY[0x24C1B7B80](v80, v81);

    MEMORY[0x24C1B7B80](46, 0xE100000000000000);
    v84 = *(v0 + 984);
    v85 = *(v0 + 992);
    *v83 = 0;
    *(v83 + 8) = 1;
    *(v83 + 16) = 0;
    *(v83 + 24) = 0xE000000000000000;
    *(v83 + 32) = 0;
    *(v83 + 40) = 0xE000000000000000;
    sub_247D1F188();
    *v83 = 0;
    *(v83 + 8) = 1;
    *(v83 + 16) = v84;
    *(v83 + 24) = v85;

    swift_willThrow();
  }

  else
  {
    v9 = *(v0 + 1104);
    v10 = *(v0 + 1096);
    v11 = *(v0 + 1088);
    sub_247D1F048();
    sub_247C86ECC(&qword_27EE62C18, 255, MEMORY[0x277CC9AE8]);
    sub_247D1EC88();
    v5 = sub_247D1F068();
    (*(v10 + 8))(v9, v11);
    swift_willThrow();
  }

  swift_getErrorValue();
  if ((sub_247CC2170(*(v0 + 952), *(v0 + 960)) & 1) == 0)
  {
LABEL_16:
    v24 = *(v0 + 1192);
    v25 = *(v0 + 1184);
    v26 = *(v0 + 1176);
    v27 = *(v0 + 1160);
    v28 = *(v0 + 1152);
    v29 = *(v0 + 1144);
    v20 = 1;
    *(v0 + 1032) = 1;
    sub_247C86B50();
    swift_willThrowTypedImpl();

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
    goto LABEL_17;
  }

  v12 = *(v0 + 1216);
  v13 = *(v0 + 1064);

  if (v12 == v13)
  {
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1184);
    v16 = *(v0 + 1176);
    v17 = *(v0 + 1160);
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1144);
    v20 = 2;
    *(v0 + 1040) = 2;
    sub_247C86B50();
    swift_willThrowTypedImpl();
    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
LABEL_17:

    v30 = *(v0 + 8);

    v30(v20);
    return;
  }

  v70 = *(v0 + 1216);
  v23 = __OFADD__(v70, 1);
  v71 = v70 + 1;
  if (v23)
  {
LABEL_52:
    __break(1u);
    return;
  }

  *(v0 + 1216) = v71;
  v72 = *(v0 + 1072);
  v73 = v72[19];
  v74 = v72[20];
  __swift_project_boxed_opaque_existential_1(v72 + 16, v73);
  v94 = (*(v74 + 16) + **(v74 + 16));
  v75 = swift_task_alloc();
  *(v0 + 1224) = v75;
  *v75 = v0;
  v75[1] = sub_247C85104;
  v76 = *(v0 + 1208);
  v77 = *(v0 + 1200);
  v78 = *(v0 + 1160);

  v94(v78, v77, v76, v73, v74);
}

void sub_247C85D80()
{
  v1 = v0[155];
  swift_getErrorValue();
  if ((sub_247CC2170(v0[119], v0[120]) & 1) == 0)
  {
    v11 = v0[149];
    v12 = v0[148];
    v13 = v0[147];
    v14 = v0[145];
    v15 = v0[144];
    v16 = v0[143];
    v10 = 1;
    v0[129] = 1;
    sub_247C86B50();
    swift_willThrowTypedImpl();

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
    goto LABEL_5;
  }

  v2 = v0[152];
  v3 = v0[133];

  if (v2 == v3)
  {
    v4 = v0[149];
    v5 = v0[148];
    v6 = v0[147];
    v7 = v0[145];
    v8 = v0[144];
    v9 = v0[143];
    v10 = 2;
    v0[130] = 2;
    sub_247C86B50();
    swift_willThrowTypedImpl();
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
LABEL_5:

    v17 = v0[1];

    v17(v10);
    return;
  }

  v18 = v0[152];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v0[152] = v20;
    v21 = v0[134];
    v22 = v21[19];
    v23 = v21[20];
    __swift_project_boxed_opaque_existential_1(v21 + 16, v22);
    v28 = (*(v23 + 16) + **(v23 + 16));
    v24 = swift_task_alloc();
    v0[153] = v24;
    *v24 = v0;
    v24[1] = sub_247C85104;
    v25 = v0[151];
    v26 = v0[150];
    v27 = v0[145];

    v28(v27, v26, v25, v22, v23);
  }
}

uint64_t sub_247C86098(uint64_t a1, uint64_t *a2)
{
  v4 = sub_247D1FAD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247D1FAE8();
  v17 = *(v8 - 8);
  v18 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247D1EE08();
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_247D1EB38();
  sub_247D1EB18();
  type metadata accessor for ImageUploadTicket();
  sub_247D1EB78();
  sub_247D1EB78();
  v14 = *a2;
  v15 = a2[1];
  sub_247C86ECC(&qword_27EE63500, 255, MEMORY[0x277CC5588]);
  sub_247D1FAA8();
  sub_247C30174(v14, v15);
  sub_247C86BA4(v14, v15);
  sub_247C301C8(v14, v15);
  sub_247D1FA98();
  (*(v5 + 8))(v7, v4);
  v19 = sub_247C864A0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63270);
  sub_247C74D48();
  sub_247D1FB68();

  (*(v17 + 8))(v10, v18);
  sub_247D1EB78();
}

uint64_t sub_247C86428()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_247C864A0(uint64_t a1)
{
  v2 = sub_247D1FAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247C86ECC(&qword_27EE63508, 255, MEMORY[0x277CC55B0]);
  v6 = sub_247D1FD88();
  v34 = MEMORY[0x277D84F90];
  sub_247CE2470(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_247D1FD78();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_247D23880;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE0);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x277D84B78];
        *(v13 + 64) = MEMORY[0x277D84BC0];
        *(v13 + 32) = v12;
        result = sub_247D1FC18();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_247CE2470((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_247D23880;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE0);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = MEMORY[0x277D84B78];
        *(v22 + 64) = MEMORY[0x277D84BC0];
        *(v22 + 32) = v21;
        result = sub_247D1FC18();
        v34 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_247CE2470((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = result;
        *(v26 + 40) = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247C86844@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE72D00;
  v3 = *(qword_27EE72D00 + 16);
  swift_retain_n();
  [v3 lock];
  v4 = sub_247CAE904(v2, &_s14APIProviderKeyON);
  v6 = v5;
  [v3 unlock];

  v7 = v2[2];
  [v7 lock];
  sub_247CAD9C4(v2, &_s19AnalyticsManagerKeyON, v20);
  [v7 unlock];
  sub_247C3D044(v20, v21);

  v8 = v2[2];
  [v8 lock];
  sub_247CADCE4(v2, &_s24ConfigurationProviderKeyON, &v17);
  [v8 unlock];
  sub_247C3D044(&v17, v20);

  v9 = [objc_opt_self() defaultSessionConfiguration];
  [v9 setNetworkServiceType_];
  v10 = [objc_opt_self() sessionWithConfiguration_];
  v18 = sub_247C36700();
  v19 = &off_2859D7D58;

  *&v17 = v10;
  sub_247C5F368(&v17, v16);
  sub_247C2BD10(v21, v14, &unk_27EE631F0);
  sub_247C3D044(v14, v15);
  v11 = type metadata accessor for ImageUploadDataProvider();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = v4;
  *(v12 + 120) = v6;
  sub_247C3D044(v16, v12 + 128);
  sub_247C3D044(v15, v12 + 168);
  a1[3] = v11;
  a1[4] = &off_2859DA158;
  *a1 = v12;
  sub_247C27100(v20, &qword_27EE634E8);
  sub_247C27100(v21, &unk_27EE631F0);
  return __swift_destroy_boxed_opaque_existential_1(&v17);
}

uint64_t type metadata accessor for ImageUploadTicket()
{
  result = qword_27EE63518;
  if (!qword_27EE63518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247C86B50()
{
  result = qword_27EE634F0;
  if (!qword_27EE634F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE634F0);
  }

  return result;
}

uint64_t sub_247C86BA4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_247D1FAD8();
      sub_247C86ECC(&qword_27EE63500, 255, MEMORY[0x277CC5588]);
      return sub_247D1FA88();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_247C86D8C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_247C86D8C(v4, v5);
  }

  sub_247D1FAD8();
  sub_247C86ECC(&qword_27EE63500, 255, MEMORY[0x277CC5588]);
  return sub_247D1FA88();
}

uint64_t sub_247C86D8C(uint64_t a1, uint64_t a2)
{
  result = sub_247D1EBE8();
  if (!result || (result = sub_247D1EC08(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_247D1EBF8();
      sub_247D1FAD8();
      sub_247C86ECC(&qword_27EE63500, 255, MEMORY[0x277CC5588]);
      return sub_247D1FA88();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247C86E70(uint64_t a1)
{
  v2 = type metadata accessor for Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247C86ECC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247C86F14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_247C2793C;

  return sub_247C844E8(a1, a2, v6, v7, v8);
}

uint64_t sub_247C86FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageUploadTicket();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8703C()
{
  v19 = type metadata accessor for ImageUploadTicket();
  v22 = *(*(v19 - 8) + 80);
  v20 = *(*(v19 - 8) + 64);
  swift_unknownObjectRelease();

  v23 = v0;
  v21 = (v22 + 40) & ~v22;
  v1 = v0 + v21;
  sub_247C301C8(*(v0 + v21), *(v0 + v21 + 8));
  v2 = v0 + v21 + *(type metadata accessor for RecordedImage.UploadRequestData(0) + 20);

  v3 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v4 = v3[8];
  v5 = sub_247D1F198();
  v6 = *(*(v5 - 8) + 8);
  v6(v2 + v4, v5);
  v7 = v2 + v3[9];
  v8 = type metadata accessor for FileUploadToken(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v6(v7 + *(v8 + 32), v5);
    v9 = v7 + *(v8 + 36);
    v10 = type metadata accessor for Metadata(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v6(v9 + *(v10 + 28), v5);
    }
  }

  v11 = v2 + v3[10];
  v12 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v13 = *(*(v12 - 8) + 48);
  if (!v13(v11, 1, v12))
  {

    v6(v11 + *(v12 + 20), v5);
  }

  v14 = v2 + v3[11];
  if (!v13(v14, 1, v12))
  {

    v6(v14 + *(v12 + 20), v5);
  }

  v15 = v1 + *(v19 + 20);

  v6(v15 + *(v8 + 32), v5);
  v16 = v15 + *(v8 + 36);
  v17 = type metadata accessor for Metadata(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {

    v6(v16 + *(v17 + 28), v5);
  }

  return MEMORY[0x2821FE8E8](v23, ((v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v22 | 7);
}

uint64_t sub_247C87464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C874CC()
{
  v2 = *(type metadata accessor for ImageUploadTicket() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_247C27E44;

  return sub_247C84950(v4, v5, v6, v0 + v3, v7);
}

uint64_t get_enum_tag_for_layout_string_18CosmeticAssessment28ImageUploadDataProviderErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_247C87600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C8765C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_247C876D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecordedImage.UploadRequestData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FileUploadToken(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_247C877D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RecordedImage.UploadRequestData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FileUploadToken(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_247C878D0()
{
  result = type metadata accessor for RecordedImage.UploadRequestData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FileUploadToken(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceAssessmentViewController.Configuration.AssessmentContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceAssessmentViewController.Configuration.AssessmentContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_247C87AC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 5522759;
  }

  else
  {
    v3 = 1414745936;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 5522759;
  }

  else
  {
    v5 = 1414745936;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_247D20538();
  }

  return v8 & 1;
}

uint64_t sub_247C87B5C()
{
  sub_247D20618();
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247C87BD0()
{
  sub_247D1FCB8();
}

uint64_t sub_247C87C30()
{
  sub_247D20618();
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247C87CA0@<X0>(char *a1@<X8>)
{
  v2 = sub_247D20408();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_247C87D00(uint64_t *a1@<X8>)
{
  v2 = 1414745936;
  if (*v1)
  {
    v2 = 5522759;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_247C87D34()
{
  result = qword_27EE63528;
  if (!qword_27EE63528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63528);
  }

  return result;
}

uint64_t sub_247C87DDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FlowResponse(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_247D1F488();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = type metadata accessor for FlowResponse.Step(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_247C87F64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for FlowResponse(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_247D1F488();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = type metadata accessor for FlowResponse.Step(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t _s5StateVMa()
{
  result = qword_27EE63530;
  if (!qword_27EE63530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247C88124()
{
  type metadata accessor for FlowResponse(319);
  if (v0 <= 0x3F)
  {
    sub_247C8820C();
    if (v1 <= 0x3F)
    {
      sub_247D1F488();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FlowResponse.Step(319);
        if (v3 <= 0x3F)
        {
          sub_247C7525C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_247C8820C()
{
  if (!qword_27EE63540)
  {
    type metadata accessor for RecordedImage(255);
    v0 = sub_247D1FE18();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE63540);
    }
  }
}

uint64_t sub_247C88264(uint64_t a1)
{
  v26 = a1;
  v1 = sub_247D1EFC8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_247D1ECB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_247D1FB98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_247D1ECD8();
  v10 = *(v27 - 8);
  v11 = MEMORY[0x28223BE20](v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  (*(v7 + 16))(v9, v26, v6);
  *v5 = type metadata accessor for DeviceAssessmentViewController(0);
  (*(v3 + 104))(v5, *MEMORY[0x277CC9120], v2);
  sub_247D1EFB8();
  sub_247D1ECE8();
  v16 = *(v28 + 40);
  v17 = sub_247D1ECC8();
  if (!*(v16 + 16))
  {

    goto LABEL_5;
  }

  v19 = sub_247CCFDA8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_5:
    v24 = v27;
    (*(v10 + 16))(v13, v15, v27);
    v22 = sub_247D1FC48();
    (*(v10 + 8))(v15, v24);
    return v22;
  }

  v22 = *(*(v16 + 56) + 16 * v19);
  v23 = *(v10 + 8);

  v23(v15, v27);
  return v22;
}

uint64_t sub_247C885BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_247CCFDA8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

__n128 sub_247C88620@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v65 - v4;
  v5 = type metadata accessor for Metadata(0);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v65 - v8;
  v74 = type metadata accessor for FileUploadToken(0);
  v67 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v65 - v11;
  v66 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v66);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateVMa();
  v15 = (v1 + *(v14 + 32));
  memcpy(v100, v15, 0x180uLL);
  v16 = v15[9];
  v97 = v15[8];
  v98 = v16;
  v99 = *(v15 + 20);
  v17 = v15[5];
  v93 = v15[4];
  v94 = v17;
  v18 = v15[7];
  v95 = v15[6];
  v96 = v18;
  v19 = v15[1];
  v89 = *v15;
  v90 = v19;
  v20 = v15[3];
  v91 = v15[2];
  v92 = v20;
  v21 = v100[21];
  v22 = v100[22];
  v23 = *(v15 + 232);
  v85 = *(v15 + 216);
  v86 = v23;
  v87 = *(v15 + 248);
  v88 = *(v15 + 33);
  v24 = *(v15 + 200);
  v83 = *(v15 + 184);
  v84 = v24;
  v25 = v15[20];
  v26 = v15[21];
  v27 = v15[23];
  v81 = v15[22];
  v82 = v27;
  v79 = v25;
  v80 = v26;
  v28 = v15[19];
  v29 = v1 + *(v14 + 40);
  v77 = v15[18];
  v78 = v28;
  v30 = *(v29 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);
  sub_247C3189C(v100, &v76);

  v33 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(v30 + v33, v12, &unk_27EE63230);
  v34 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
  {
    sub_247C27100(v12, &unk_27EE63230);
LABEL_8:
    v50 = v21;
    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_247C8A0E4(v12, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    goto LABEL_8;
  }

  v65 = v32;
  v35 = v12;
  v36 = v75;
  sub_247C8A07C(v35, v75, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  v37 = v68;
  sub_247C2BD10(v36 + *(v66 + 36), v68, &qword_27EE63290);
  v38 = *(v67 + 48);
  v39 = v74;
  if (v38(v37, 1, v74) == 1)
  {
    v40 = v69;
    *v69 = 0;
    v40[1] = 0xE000000000000000;
    v40[2] = 0;
    v40[3] = 0xE000000000000000;
    v40[4] = 0;
    v40[5] = 0xE000000000000000;
    v40[6] = 0;
    v40[7] = 0xE000000000000000;
    sub_247D1F188();
    v41 = v70;
    v42 = *(v70 + 56);
    v43 = v40 + *(v39 + 36);
    v67 = v31;
    v44 = v71;
    v42(v43, 1, 1, v71);
    v45 = v38(v37, 1, v39);
    v31 = v67;
    v46 = v45 == 1;
    v47 = v37;
    v49 = v72;
    v48 = v73;
    if (!v46)
    {
      sub_247C27100(v47, &qword_27EE63290);
    }
  }

  else
  {
    v40 = v69;
    sub_247C8A07C(v37, v69, type metadata accessor for FileUploadToken);
    v49 = v72;
    v48 = v73;
    v41 = v70;
    v44 = v71;
  }

  sub_247C2BD10(v40 + *(v74 + 36), v48, &qword_27EE63288);
  v51 = *(v41 + 48);
  if (v51(v48, 1, v44) == 1)
  {
    *v49 = 0;
    v49[1] = 0xE000000000000000;
    v49[2] = 0;
    v49[3] = 0xE000000000000000;
    v49[4] = 0;
    v49[5] = 0xE000000000000000;
    sub_247D1F188();
    sub_247C8A0E4(v40, type metadata accessor for FileUploadToken);
    sub_247C8A0E4(v75, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    if (v51(v48, 1, v44) != 1)
    {
      sub_247C27100(v48, &qword_27EE63288);
    }
  }

  else
  {
    sub_247C8A0E4(v40, type metadata accessor for FileUploadToken);
    sub_247C8A0E4(v75, type metadata accessor for FlowResponse.Step.CosmeticCapture);
    sub_247C8A07C(v48, v49, type metadata accessor for Metadata);
  }

  v50 = *v49;
  v22 = v49[1];

  sub_247C8A0E4(v49, type metadata accessor for Metadata);

  v32 = v65;
LABEL_15:
  v52 = v98;
  *(a1 + 128) = v97;
  *(a1 + 144) = v52;
  v53 = v99;
  v54 = v94;
  *(a1 + 64) = v93;
  *(a1 + 80) = v54;
  v55 = v96;
  *(a1 + 96) = v95;
  *(a1 + 112) = v55;
  v56 = v90;
  *a1 = v89;
  *(a1 + 16) = v56;
  v57 = v92;
  *(a1 + 32) = v91;
  *(a1 + 48) = v57;
  *(a1 + 160) = v53;
  *(a1 + 168) = v50;
  *(a1 + 176) = v22;
  v58 = v86;
  *(a1 + 216) = v85;
  *(a1 + 232) = v58;
  *(a1 + 248) = v87;
  v59 = v88;
  v60 = v84;
  *(a1 + 184) = v83;
  *(a1 + 200) = v60;
  *(a1 + 264) = v59;
  *(a1 + 272) = v32;
  *(a1 + 280) = v31;
  v61 = v78;
  *(a1 + 288) = v77;
  *(a1 + 304) = v61;
  result = v79;
  v63 = v80;
  v64 = v82;
  *(a1 + 352) = v81;
  *(a1 + 368) = v64;
  *(a1 + 320) = result;
  *(a1 + 336) = v63;
  return result;
}