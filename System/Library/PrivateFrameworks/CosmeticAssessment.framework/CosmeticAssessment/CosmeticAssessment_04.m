uint64_t sub_247C88D88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v56 - v2;
  v3 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FileUploadToken(0);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v66 = type metadata accessor for FlowResponse.Step(0);
  v64 = *(v66 - 8);
  v14 = MEMORY[0x28223BE20](v66);
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = (&v56 - v17);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v21 = *(v0 + 32);
  v22 = *(v21 + 16);
  v69 = v3;
  v67 = v11;
  v62 = v22;
  if (v22)
  {
    v23 = 0;
    v57 = MEMORY[0x277D84F90];
    v60 = v21;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      v24 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v25 = *(v64 + 72);
      sub_247C8A144(v21 + v24 + v25 * v23, v20, type metadata accessor for FlowResponse.Step);
      v26 = *&v20[*(v66 + 20)];
      v27 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
      swift_beginAccess();
      sub_247C2BD10(v26 + v27, v13, &unk_27EE63230);
      v28 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
      if ((*(*(v28 - 8) + 48))(v13, 1, v28) == 1)
      {
        sub_247C27100(v13, &unk_27EE63230);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_247C8A0E4(v13, type metadata accessor for FlowResponse.Step.OneOf_Contents);
        if (EnumCaseMultiPayload == 1)
        {
          sub_247C8A07C(v20, v58, type metadata accessor for FlowResponse.Step);
          v30 = v57;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_247CE23C8(0, *(v30 + 16) + 1, 1);
            v30 = v70;
          }

          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_247CE23C8(v32 > 1, v33 + 1, 1);
            v30 = v70;
          }

          *(v30 + 16) = v33 + 1;
          v57 = v30;
          result = sub_247C8A07C(v58, v30 + v24 + v33 * v25, type metadata accessor for FlowResponse.Step);
          v11 = v67;
          goto LABEL_5;
        }
      }

      result = sub_247C8A0E4(v20, type metadata accessor for FlowResponse.Step);
      v11 = v67;
LABEL_5:
      ++v23;
      v21 = v60;
      if (v62 == v23)
      {
        goto LABEL_15;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_15:
  v34 = v57;
  v35 = *(v57 + 16);
  if (v35)
  {
    v71 = MEMORY[0x277D84F90];
    sub_247CE2384(0, v35, 0);
    v36 = v71;
    v37 = v34 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v58 = (v65 + 56);
    v64 = *(v64 + 72);
    v61 = v7;
    v62 = (v65 + 48);
    v38 = v59;
    while (1)
    {
      v39 = v68;
      v40 = v69;
      sub_247C8A144(v37, v68, type metadata accessor for FlowResponse.Step);
      v41 = *(v39 + *(v66 + 20));
      v42 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
      swift_beginAccess();
      sub_247C2BD10(v41 + v42, v11, &unk_27EE63230);
      v43 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
      if ((*(*(v43 - 8) + 48))(v11, 1, v43) == 1)
      {
        break;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_247C8A0E4(v11, type metadata accessor for FlowResponse.Step.OneOf_Contents);
        goto LABEL_22;
      }

      sub_247C8A07C(v11, v5, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      v44 = v63;
LABEL_23:
      sub_247C2BD10(&v5[*(v69 + 36)], v38, &qword_27EE63290);
      v48 = *v62;
      v49 = (*v62)(v38, 1, v44);
      v50 = v61;
      if (v49 == 1)
      {
        *v61 = 0;
        *(v50 + 1) = 0xE000000000000000;
        *(v50 + 2) = 0;
        *(v50 + 3) = 0xE000000000000000;
        *(v50 + 4) = 0;
        *(v50 + 5) = 0xE000000000000000;
        *(v50 + 6) = 0;
        *(v50 + 7) = 0xE000000000000000;
        sub_247D1F188();
        sub_247C8A0E4(v5, type metadata accessor for FlowResponse.Step.CosmeticCapture);
        v60 = v35;
        v51 = *(v44 + 36);
        v52 = type metadata accessor for Metadata(0);
        (*(*(v52 - 8) + 56))(&v50[v51], 1, 1, v52);
        v53 = v48(v38, 1, v44);
        v35 = v60;
        v11 = v67;
        if (v53 != 1)
        {
          sub_247C27100(v38, &qword_27EE63290);
        }
      }

      else
      {
        sub_247C8A0E4(v5, type metadata accessor for FlowResponse.Step.CosmeticCapture);
        sub_247C8A07C(v38, v50, type metadata accessor for FileUploadToken);
        v11 = v67;
      }

      sub_247C8A0E4(v68, type metadata accessor for FlowResponse.Step);
      v71 = v36;
      v55 = *(v36 + 16);
      v54 = *(v36 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_247CE2384(v54 > 1, v55 + 1, 1);
        v36 = v71;
      }

      *(v36 + 16) = v55 + 1;
      sub_247C8A07C(v50, v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v55, type metadata accessor for FileUploadToken);
      v37 += v64;
      if (!--v35)
      {

        return v36;
      }
    }

    sub_247C27100(v11, &unk_27EE63230);
LABEL_22:
    *v5 = 0;
    *(v5 + 1) = 0xE000000000000000;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0xE000000000000000;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0xE000000000000000;
    *(v5 + 6) = MEMORY[0x277D84F90];
    sub_247D1F188();
    v44 = v63;
    (*v58)(&v5[*(v40 + 36)], 1, 1, v63);
    v45 = *(v40 + 40);
    v46 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
    v47 = *(*(v46 - 8) + 56);
    v47(&v5[v45], 1, 1, v46);
    v47(&v5[*(v69 + 44)], 1, 1, v46);
    v38 = v59;
    goto LABEL_23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_247C896B4(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (!(a3 >> 6))
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_247D202C8();
    MEMORY[0x24C1B7B80](0x7065745374697865, 0xEA0000000000203ALL);
    if (a1)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (a1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x24C1B7B80](v5, v6);

    MEMORY[0x24C1B7B80](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
    sub_247D20388();
    return v8[0];
  }

  if (a3 >> 6 == 1)
  {
    sub_247D202C8();

    strcpy(v8, "noStepWithID: ");
    HIBYTE(v8[1]) = -18;
    MEMORY[0x24C1B7B80](a1, a2);
    return v8[0];
  }

  if ((a2 | a1) == 0 && a3 == 128)
  {
    return 0x53676E697373696DLL;
  }

  else
  {
    return 0x73706574536F6ELL;
  }
}

uint64_t sub_247C89884@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = type metadata accessor for FlowResponse.Step.Action(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for FlowResponse.Step.Exit(0);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for FlowResponse.Step(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 3);
  v17 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v20 = v19;

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    sub_247C89FC4();
    swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    v31 = 128;
    goto LABEL_7;
  }

  v23 = v54;
  MEMORY[0x28223BE20](v21);
  *(&v49 - 2) = a1;
  sub_247C41060(sub_247C89FA4, v24, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_247C27100(v11, &qword_27EE63218);
    v25 = *(a1 + 3);
    v26 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v27 = (*(v26 + 8))(v25, v26);
    v29 = v28;
    sub_247C89FC4();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    v31 = 64;
LABEL_7:
    *(v30 + 16) = v31;
    return swift_willThrow();
  }

  v33 = v23;
  v34 = v15;
  sub_247C8A07C(v11, v15, type metadata accessor for FlowResponse.Step);
  v35 = *&v15[*(v12 + 20)];
  v36 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  sub_247C2BD10(v35 + v36, v6, &unk_27EE63230);
  v37 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v37 - 8) + 48))(v6, 1, v37) == 1)
  {
    sub_247C27100(v6, &unk_27EE63230);
LABEL_14:
    v42 = v52;
    sub_247C8A144(v23, v52, _s5StateVMa);
    v43 = _s5StateVMa();
    return sub_247C8A018(v34, v42 + *(v43 + 40));
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_247C8A0E4(v6, type metadata accessor for FlowResponse.Step.OneOf_Contents);
    goto LABEL_14;
  }

  v38 = v51;
  sub_247C8A07C(v6, v51, type metadata accessor for FlowResponse.Step.Exit);
  sub_247C5F368(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63240);
  v39 = v49;
  if (swift_dynamicCast())
  {
    sub_247C8A0E4(v39, type metadata accessor for FlowResponse.Step.Action);
    v40 = *(v33 + *(_s5StateVMa() + 40) + *(v12 + 20));
    swift_beginAccess();
    v41 = *(v40 + 74);
  }

  else
  {
    v41 = 0;
  }

  v44 = *v38;
  v45 = *(v38 + 8);
  swift_beginAccess();
  if (*(v35 + 56) == 1)
  {
    v46 = 0x50908040302010AuLL >> (8 * *(v35 + 48));
  }

  else
  {
    LOWORD(v46) = 10;
  }

  v47 = v45 | (v46 << 8);
  sub_247C89FC4();
  swift_allocError();
  *v48 = v41;
  *(v48 + 8) = v44;
  *(v48 + 16) = v47;
  swift_willThrow();
  sub_247C8A0E4(v38, type metadata accessor for FlowResponse.Step.Exit);
  return sub_247C8A0E4(v34, type metadata accessor for FlowResponse.Step);
}

uint64_t sub_247C89EB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = *(v7 + 8);

  if (v5 == v8(v6, v7) && v4 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_247D20538();
  }

  return v11 & 1;
}

unint64_t sub_247C89FC4()
{
  result = qword_27EE63548;
  if (!qword_27EE63548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63548);
  }

  return result;
}

uint64_t sub_247C8A018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8A07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C8A0E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C8A144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18CosmeticAssessment06DeviceB14ViewControllerC5StateV13FlowStepErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (((v1 >> 6) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return v1 >> 6;
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_247C8A1E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 18))
  {
    return (*a1 + 126);
  }

  v3 = ((2 * *(a1 + 16)) & 0x7C | (*(a1 + 16) >> 6)) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_247C8A234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ((((-a2 >> 2) & 0x1F) - 32 * a2) & 0x7F);
    }
  }

  return result;
}

uint64_t sub_247C8A298(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFF01 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 128;
  }

  return result;
}

id sub_247C8A2D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v0 setFillColor_];
  [v0 setLineWidth_];
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  v3 = [v2 CGColor];

  [v0 setFillColor_];
  v4 = [v1 greenColor];
  v5 = [v4 CGColor];

  [v0 setStrokeColor_];
  return v0;
}

id sub_247C8A3EC(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v2 setLineWidth_];
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  v5 = [v4 CGColor];

  [v2 setFillColor_];
  v6 = [v3 *a1];
  v7 = [v6 CGColor];

  [v2 setStrokeColor_];
  return v2;
}

char *sub_247C8A4F0(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration];
  sub_247C6166C(v21);
  v5 = v21[5];
  *(v4 + 4) = v21[4];
  *(v4 + 5) = v5;
  *(v4 + 6) = v22[0];
  *(v4 + 105) = *(v22 + 9);
  v6 = v21[1];
  *v4 = v21[0];
  *(v4 + 1) = v6;
  v7 = v21[3];
  *(v4 + 2) = v21[2];
  *(v4 + 3) = v7;
  v8 = OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_tiltLayer;
  *&v1[v8] = sub_247C8A2D8();
  v9 = OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_horizontalLineLayer;
  *&v1[v9] = sub_247C8A3EC(&selRef_redColor);
  v10 = OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_verticalLineLayer;
  *&v1[v10] = sub_247C8A3EC(&selRef_blueColor);
  v11 = &v1[OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_lastUpdateTimestamp];
  *v11 = 0;
  v11[8] = 1;
  v12 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v12;
  v13 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v13;
  *(v4 + 105) = *(a1 + 105);
  v14 = a1[6];
  *(v4 + 5) = a1[5];
  *(v4 + 6) = v14;
  *(v4 + 4) = a1[4];
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v15 setClearsContextBeforeDrawing_];
  [v15 setOpaque_];
  v16 = [v15 layer];
  [v16 addSublayer_];

  v17 = [v15 layer];
  [v17 addSublayer_];

  v18 = [v15 layer];
  [v18 addSublayer_];

  return v15;
}

void sub_247C8A96C()
{
  v1 = (v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration);
  sub_247C6166C(v9);
  v2 = v9[5];
  v1[4] = v9[4];
  v1[5] = v2;
  v1[6] = v10[0];
  *(v1 + 105) = *(v10 + 9);
  v3 = v9[1];
  *v1 = v9[0];
  v1[1] = v3;
  v4 = v9[3];
  v1[2] = v9[2];
  v1[3] = v4;
  v5 = OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_tiltLayer;
  *(v0 + v5) = sub_247C8A2D8();
  v6 = OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_horizontalLineLayer;
  *(v0 + v6) = sub_247C8A3EC(&selRef_redColor);
  v7 = OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_verticalLineLayer;
  *(v0 + v7) = sub_247C8A3EC(&selRef_blueColor);
  v8 = v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_lastUpdateTimestamp;
  *v8 = 0;
  *(v8 + 8) = 1;
  sub_247D20398();
  __break(1u);
}

void sub_247C8AA60()
{
  v1 = (v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration + 80);
  v26[4] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration + 64);
  v26[5] = v2;
  v27[0] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration + 96);
  *(v27 + 9) = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration + 105);
  v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration + 16);
  v26[0] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration);
  v26[1] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration + 48);
  v26[2] = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_configuration + 32);
  v26[3] = v4;
  if (sub_247C3503C(v26) != 1)
  {
    v6 = v1[3];
    v5 = v1[4];
    v7 = v1[5];
    v8 = v1[6];
    v9 = v1[7];
    v10 = v1[8];
    v11 = v1[9];
    v12 = v1[10];
    v24 = v1[12];
    v25 = v1[11];
    v22 = v1[14];
    v23 = v1[13];
    v13 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v13 moveToPoint_];
    [v13 addLineToPoint_];
    [v13 addLineToPoint_];
    [v13 addLineToPoint_];
    [v13 closePath];
    v14 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_tiltLayer);
    v15 = [v13 CGPath];
    [v14 setPath_];

    v16 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v16 moveToPoint_];
    v28.origin.x = v25;
    v28.origin.y = v24;
    v28.size.width = v23;
    v28.size.height = v22;
    [v16 addLineToPoint_];
    v17 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_verticalLineLayer);
    v18 = [v16 CGPath];
    [v17 setPath_];

    v19 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v19 moveToPoint_];
    v29.origin.x = v25;
    v29.origin.y = v24;
    v29.size.width = v23;
    v29.size.height = v22;
    [v19 addLineToPoint_];
    v20 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23TiltRecognizerDebugView_horizontalLineLayer);
    v21 = [v19 CGPath];
    [v20 setPath_];
  }
}

uint64_t sub_247C8AD08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for MetadataDebugView.Configuration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_configuration;
  swift_beginAccess();
  sub_247C8C128(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_247C8C0C0(v4);
  }

  sub_247C8C198(v4, v8);
  v11 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_ambientLightIntensityLabel];
  v35 = 0x203A78754CLL;
  v36 = 0xE500000000000000;
  v12 = sub_247D1FF98();
  MEMORY[0x24C1B7B80](v12);

  v13 = sub_247D1FBB8();

  [v11 setText_];

  v14 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_rotationLabel];
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_247D202C8();
  MEMORY[0x24C1B7B80](0xD000000000000010, 0x8000000247D30070);
  sub_247D1FFA8();
  v15 = sub_247D1FBB8();

  [v14 setText_];

  v16 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_verticalTiltLabel];
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_247D202C8();
  MEMORY[0x24C1B7B80](0x6C61636974726556, 0xEF203A746C695420);
  sub_247D1FFA8();
  v17 = sub_247D1FBB8();

  [v16 setText_];

  v18 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_horizontalTiltLabel];
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_247D202C8();
  MEMORY[0x24C1B7B80](0xD000000000000011, 0x8000000247D30090);
  sub_247D1FFA8();
  v19 = sub_247D1FBB8();

  [v18 0x278EDEAF8];

  v20 = &v8[*(v5 + 28)];
  if (v20[16])
  {
    v21 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize1080pLabel];
    v22 = sub_247D1FBB8();
    [v21 0x278EDEAF8];

    v23 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize4KLabel];
    v24 = sub_247D1FBB8();
    [v23 0x278EDEAF8];
  }

  else
  {
    v26 = *v20;
    v25 = *(v20 + 1);
    v27 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize1080pLabel];
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_247D202C8();

    v35 = 0xD000000000000013;
    v36 = 0x8000000247D300F0;
    v34 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632A0);
    v28 = sub_247D1ECF8();
    MEMORY[0x24C1B7B80](v28);

    MEMORY[0x24C1B7B80](3827744, 0xE300000000000000);
    v34 = v25;
    v29 = sub_247D1ECF8();
    MEMORY[0x24C1B7B80](v29);

    v30 = sub_247D1FBB8();

    [v27 0x278EDEAF8];

    v31 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize4KLabel];
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_247D202C8();

    v35 = 0xD000000000000011;
    v36 = 0x8000000247D30110;
    v34 = v26 + v26;
    v32 = sub_247D1ECF8();
    MEMORY[0x24C1B7B80](v32);

    MEMORY[0x24C1B7B80](3827744, 0xE300000000000000);
    v34 = v25 * 2.22;
    v33 = sub_247D1ECF8();
    MEMORY[0x24C1B7B80](v33);

    v24 = sub_247D1FBB8();

    [v31 0x278EDEAF8];
  }

  [v1 setNeedsDisplay];
  return sub_247C8C1FC(v8);
}

char *sub_247C8B310(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_configuration;
  v53 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_configuration;
  v3 = type metadata accessor for MetadataDebugView.Configuration(0);
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_ambientLightIntensityLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = objc_opt_self();
  v7 = [v6 systemGreenColor];
  [v5 setTextColor_];

  v8 = sub_247D1FBB8();
  [v5 setText_];

  *&v1[v4] = v5;
  v9 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_rotationLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = [v6 systemGreenColor];
  [v10 setTextColor_];

  v12 = sub_247D1FBB8();
  [v10 setText_];

  *&v1[v9] = v10;
  v13 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_verticalTiltLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v15 = [v6 systemGreenColor];
  [v14 setTextColor_];

  v16 = sub_247D1FBB8();
  [v14 setText_];

  *&v1[v13] = v14;
  v17 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_horizontalTiltLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v19 = [v6 systemGreenColor];
  [v18 setTextColor_];

  v20 = sub_247D1FBB8();
  [v18 setText_];

  *&v1[v17] = v18;
  v21 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize1080pLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v23 = [v6 systemGreenColor];
  [v22 setTextColor_];

  v24 = sub_247D1FBB8();
  [v22 setText_];

  *&v1[v21] = v22;
  v25 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize4KLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v27 = [v6 systemGreenColor];
  [v26 setTextColor_];

  v28 = sub_247D1FBB8();
  [v26 setText_];

  *&v1[v25] = v26;
  v29 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_labelContainer;
  v30 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v30 setAxis_];
  [v30 setSpacing_];
  v31 = v30;
  v32 = [v6 blackColor];
  v33 = [v32 colorWithAlphaComponent_];

  [v31 setBackgroundColor_];
  *&v1[v29] = v31;
  swift_beginAccess();
  sub_247C8C050(a1, &v1[v53]);
  swift_endAccess();
  v56.receiver = v1;
  v56.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v34 setOpaque_];
  v35 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_labelContainer;
  [*&v34[OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_labelContainer] addArrangedSubview_];
  [*&v34[v35] addArrangedSubview_];
  [*&v34[v35] addArrangedSubview_];
  [*&v34[v35] addArrangedSubview_];
  [*&v34[v35] addArrangedSubview_];
  [*&v34[v35] addArrangedSubview_];
  v36 = *&v34[v35];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 addSubview_];

  v37 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_247D24010;
  v39 = [*&v34[v35] topAnchor];
  v40 = [v34 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:12.0];

  *(v38 + 32) = v41;
  v42 = [*&v34[v35] leadingAnchor];
  v43 = [v34 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:12.0];

  *(v38 + 40) = v44;
  v45 = [v34 bottomAnchor];
  v46 = [*&v34[v35] bottomAnchor];
  v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46 constant:12.0];

  *(v38 + 48) = v47;
  v48 = [v34 trailingAnchor];

  v49 = [*&v34[v35] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:12.0];

  *(v38 + 56) = v50;
  sub_247C7C6F8();
  v51 = sub_247D1FDB8();

  [v37 activateConstraints_];

  sub_247C8C0C0(a1);
  return v34;
}

void sub_247C8BCE8()
{
  sub_247C8BFFC(319, &qword_27EE635C0, type metadata accessor for MetadataDebugView.Configuration);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_247C8BDE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_247C8BE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_247C8BEE8()
{
  sub_247C8BFA0();
  if (v0 <= 0x3F)
  {
    sub_247C8BFFC(319, &qword_27EE635E0, type metadata accessor for CGSize);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247C8BFA0()
{
  if (!qword_27EE635D8)
  {
    sub_247C5FC58();
    v0 = sub_247D1ED38();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE635D8);
    }
  }
}

void sub_247C8BFFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_247D20208();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_247C8C050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8C0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247C8C128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8C198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataDebugView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8C1FC(uint64_t a1)
{
  v2 = type metadata accessor for MetadataDebugView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_247C8C258()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_configuration;
  v2 = type metadata accessor for MetadataDebugView.Configuration(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_ambientLightIntensityLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = objc_opt_self();
  v6 = [v5 systemGreenColor];
  [v4 setTextColor_];

  v7 = sub_247D1FBB8();
  [v4 setText_];

  *(v0 + v3) = v4;
  v8 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_rotationLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = [v5 systemGreenColor];
  [v9 setTextColor_];

  v11 = sub_247D1FBB8();
  [v9 setText_];

  *(v0 + v8) = v9;
  v12 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_verticalTiltLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = [v5 systemGreenColor];
  [v13 setTextColor_];

  v15 = sub_247D1FBB8();
  [v13 setText_];

  *(v0 + v12) = v13;
  v16 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_horizontalTiltLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v18 = [v5 systemGreenColor];
  [v17 setTextColor_];

  v19 = sub_247D1FBB8();
  [v17 setText_];

  *(v0 + v16) = v17;
  v20 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize1080pLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v22 = [v5 systemGreenColor];
  [v21 setTextColor_];

  v23 = sub_247D1FBB8();
  [v21 setText_];

  *(v0 + v20) = v21;
  v24 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_imageCropSize4KLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v26 = [v5 systemGreenColor];
  [v25 setTextColor_];

  v27 = sub_247D1FBB8();
  [v25 setText_];

  *(v0 + v24) = v25;
  v28 = OBJC_IVAR____TtC18CosmeticAssessment17MetadataDebugView_labelContainer;
  v29 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v29 setAxis_];
  [v29 setSpacing_];
  v30 = v29;
  v31 = [v5 blackColor];
  v32 = [v31 colorWithAlphaComponent_];

  [v30 setBackgroundColor_];
  *(v0 + v28) = v30;
  sub_247D20398();
  __break(1u);
}

uint64_t sub_247C8C6E8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 209) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = _s15DiagnosticStyleOMa(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = sub_247D1FEA8();
  *(v4 + 104) = sub_247D1FE98();
  v6 = sub_247D1FE38();
  *(v4 + 112) = v6;
  *(v4 + 120) = v5;

  return MEMORY[0x2822009F8](sub_247C8C7F8, v6, v5);
}

uint64_t sub_247C8C7F8()
{
  if (*(v0[4] + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_exitSessionTask))
  {
    v1 = v0[7];
    v2 = v0[2];

    sub_247C8ECAC(v2, v1, _s15DiagnosticStyleOMa);
    v3 = sub_247D1F468();
    v4 = sub_247D20058();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[7];
    if (!v5)
    {
      sub_247C7BCF8(v0[7], _s15DiagnosticStyleOMa);
LABEL_20:

      v18 = v0[1];

      return v18();
    }

    v7 = v0[6];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_247C8ECAC(v6, v7, _s15DiagnosticStyleOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_16;
      }

      v14 = v0[6];
      v15 = _s15DiagnosticStyleOMa;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_247C7BCF8(v0[6], _s15DiagnosticStyleOMa);
LABEL_16:
        v16 = 0;
LABEL_19:
        sub_247C7BCF8(v0[7], _s15DiagnosticStyleOMa);
        *(v8 + 4) = v16;
        _os_log_impl(&dword_247C1F000, v3, v4, "Ignore presentation of %ld as we are ending the session.", v8, 0xCu);
        MEMORY[0x24C1B9080](v8, -1, -1);
        goto LABEL_20;
      }

      v17 = v0[6];

      v15 = _s5StateVMa;
      v14 = v17;
    }

    sub_247C7BCF8(v14, v15);
    v16 = 1;
    goto LABEL_19;
  }

  v10 = sub_247CD0E40();
  v11 = [v10 visibleViewController];

  if (!v11)
  {
    goto LABEL_9;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

LABEL_9:
    v11 = *(v0[4] + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController);
  }

  v0[16] = v11;
  v0[17] = sub_247D1FE98();
  v13 = sub_247D1FE38();
  v0[18] = v13;
  v0[19] = v12;

  return MEMORY[0x2822009F8](sub_247C8CB4C, v13, v12);
}

uint64_t sub_247C8CB4C()
{
  v1 = v0[16];
  v2 = v0[2];
  v3 = sub_247D1FE98();
  v0[20] = v3;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_247C8CC64;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 26, v3, v6, 0xD000000000000024, 0x8000000247D30190, sub_247C8E4A4, v4, v7);
}

uint64_t sub_247C8CC64()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_247C8CDC4, v3, v2);
}

uint64_t sub_247C8CDC4()
{

  *(v0 + 210) = *(v0 + 208);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_247C8CE38, v1, v2);
}

uint64_t sub_247C8CE38()
{
  if (*(v0 + 210) != 1)
  {
    v15 = *(v0 + 72);
    v16 = *(v0 + 16);

    sub_247C8ECAC(v16, v15, _s15DiagnosticStyleOMa);
    v8 = sub_247D1F468();
    v9 = sub_247D20058();
    v17 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 72);
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = *(v0 + 64);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    sub_247C8ECAC(v11, v18, _s15DiagnosticStyleOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_16;
      }

      v20 = *(v0 + 64);
      v21 = _s15DiagnosticStyleOMa;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_247C7BCF8(*(v0 + 64), _s15DiagnosticStyleOMa);
LABEL_16:
        v22 = 0;
LABEL_23:
        sub_247C7BCF8(*(v0 + 72), _s15DiagnosticStyleOMa);
        *(v13 + 4) = v22;
        v30 = "Ignore presentation of %ld.";
LABEL_24:
        _os_log_impl(&dword_247C1F000, v8, v9, v30, v13, 0xCu);
        MEMORY[0x24C1B9080](v13, -1, -1);
        goto LABEL_25;
      }

      v29 = *(v0 + 64);

      v21 = _s5StateVMa;
      v20 = v29;
    }

    sub_247C7BCF8(v20, v21);
    v22 = 1;
    goto LABEL_23;
  }

  v1 = [*(*(v0 + 32) + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController) visibleViewController];
  if (v1)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = (*(v4 + 24))(*(v0 + 16), *(v0 + 24), *(v0 + 209), ObjectType);

      if (v5)
      {
        v6 = *(v0 + 88);
        v7 = *(v0 + 16);

        sub_247C8ECAC(v7, v6, _s15DiagnosticStyleOMa);
        v8 = sub_247D1F468();
        v9 = sub_247D20058();
        v10 = os_log_type_enabled(v8, v9);
        v11 = *(v0 + 88);
        if (v10)
        {
          v12 = *(v0 + 80);
          v13 = swift_slowAlloc();
          *v13 = 134217984;
          sub_247C8ECAC(v11, v12, _s15DiagnosticStyleOMa);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 > 1)
          {
            if (v14 != 2)
            {
              goto LABEL_30;
            }

            v32 = *(v0 + 80);
            v33 = _s15DiagnosticStyleOMa;
          }

          else
          {
            if (!v14)
            {
              sub_247C7BCF8(*(v0 + 80), _s15DiagnosticStyleOMa);
LABEL_30:
              v34 = 0;
LABEL_33:
              sub_247C7BCF8(*(v0 + 88), _s15DiagnosticStyleOMa);
              *(v13 + 4) = v34;
              v30 = "Current view controller will handle presentation of %ld.";
              goto LABEL_24;
            }

            v35 = *(v0 + 80);

            v33 = _s5StateVMa;
            v32 = v35;
          }

          sub_247C7BCF8(v32, v33);
          v34 = 1;
          goto LABEL_33;
        }

LABEL_13:
        sub_247C7BCF8(v11, _s15DiagnosticStyleOMa);
LABEL_25:

        v31 = *(v0 + 8);

        return v31();
      }
    }

    else
    {
    }
  }

  v24 = *(v0 + 24);
  v23 = *(v0 + 32);
  v25 = *(v0 + 209);
  v26 = *(v0 + 16);
  *(v0 + 184) = sub_247D1FE98();
  v27 = swift_task_alloc();
  *(v0 + 192) = v27;
  *(v27 + 16) = v26;
  *(v27 + 24) = v23;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  v28 = swift_task_alloc();
  *(v0 + 200) = v28;
  *v28 = v0;
  v28[1] = sub_247C8D3B8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_247C8D3B8()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_247C8D518, v3, v2);
}

uint64_t sub_247C8D518()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_247C8D5C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v29 = a5;
  v28 = a4;
  v34 = a3;
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE635E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = _s15DiagnosticStyleOMa(0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  sub_247D1FEA8();
  v33 = sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = sub_247C8E4BC();
  sub_247C8ECAC(a2, v15, _s15DiagnosticStyleOMa);
  v16 = a2;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_247C8ECAC(v16, v13, _s15DiagnosticStyleOMa);
  (*(v7 + 16))(v9, v32, v6);
  v18 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v19 = (v11 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_247C8EB64(v13, v20 + v18);
  (*(v7 + 32))(v20 + v19, v9, v6);
  v21 = sub_247C226BC(v15, sub_247C8EBC8, v20);
  v22 = [v21 popoverPresentationController];
  if (v22)
  {
    v23 = v22;
    v24 = v29;
    if (v29 != 0xFF)
    {
      if (v29)
      {
        v25 = v28;
        sub_247C57DE0(v28, 1);
        sub_247C57DE0(v25, 1);
        [v23 setSourceItem_];
        swift_unknownObjectRelease();
        sub_247C57DEC(v25, v24);
      }

      else
      {
        [v22 setSourceItem_];
      }
    }
  }

  v26 = sub_247C95044();
  [v26 presentViewController:v21 animated:1 completion:0];
}

uint64_t sub_247C8D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v56 = a3;
  v54 = _s15DiagnosticStyleOMa(0);
  v6 = MEMORY[0x28223BE20](v54);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v10;
  v59 = sub_247D1F488();
  v11 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  v24 = _s15DiagnosticStyleO6ResultOMa(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247C8ECAC(a1, v26, _s15DiagnosticStyleO6ResultOMa);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B78);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = v11;
      v30 = Strong;
      v31 = v13;
      v32 = v59;
      (*(v11 + 16))(v13, Strong + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_log, v59);

      v33 = v58;
      sub_247C8ECAC(v56, v58, _s15DiagnosticStyleOMa);
      v34 = sub_247D1F468();
      v35 = sub_247D20058();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v61 = v56;
        *v36 = 136446210;
        v37 = v57;
        sub_247C8ECAC(v33, v57, _s15DiagnosticStyleOMa);
        v38 = v55;
        sub_247C8ECAC(v37, v55, _s15DiagnosticStyleOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_247C7BCF8(v38, _s15DiagnosticStyleOMa);
            v40 = 0x8000000247D2D770;
            sub_247C7BCF8(v57, _s15DiagnosticStyleOMa);
            sub_247C7BCF8(v33, _s15DiagnosticStyleOMa);
            v41 = 0xD000000000000018;
          }

          else
          {
            v40 = 0x8000000247D2D790;
            sub_247C7BCF8(v57, _s15DiagnosticStyleOMa);
            sub_247C7BCF8(v33, _s15DiagnosticStyleOMa);
            v41 = 0xD00000000000001ELL;
          }
        }

        else if (EnumCaseMultiPayload)
        {

          sub_247C7BCF8(v57, _s15DiagnosticStyleOMa);
          sub_247C7BCF8(v33, _s15DiagnosticStyleOMa);
          sub_247C7BCF8(v38, _s5StateVMa);
          v40 = 0xEB00000000656369;
          v41 = 0x7665446B63656863;
        }

        else
        {
          v40 = 0x8000000247D2D7B0;
          sub_247C7BCF8(v57, _s15DiagnosticStyleOMa);
          sub_247C7BCF8(v33, _s15DiagnosticStyleOMa);
          sub_247C7BCF8(v38, _s15DiagnosticStyleOMa);
          v41 = 0xD000000000000011;
        }

        v50 = sub_247CB03B4(v41, v40, &v61);

        *(v36 + 4) = v50;
        _os_log_impl(&dword_247C1F000, v34, v35, "Dismissed alert: %{public}s", v36, 0xCu);
        v51 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x24C1B9080](v51, -1, -1);
        MEMORY[0x24C1B9080](v36, -1, -1);
      }

      else
      {

        sub_247C7BCF8(v33, _s15DiagnosticStyleOMa);
      }

      (*(v29 + 8))(v31, v32);
    }
  }

  else
  {
    v42 = *&v26[*(v27 + 48)];
    sub_247C8ED14(v26, v23);
    v43 = sub_247D1FEC8();
    (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
    sub_247C8ED84(v23, v21);
    sub_247D1FEA8();

    v44 = v42;
    v45 = sub_247D1FE98();
    v46 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v47 = (v19 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = MEMORY[0x277D85700];
    v48[2] = v45;
    v48[3] = v49;
    v48[4] = a2;
    sub_247C8ED14(v21, v48 + v46);
    *(v48 + v47) = v42;
    sub_247CD0B2C(0, 0, v16, &unk_247D25528, v48);

    sub_247C8F290(v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE635E8);
  return sub_247D1FE68();
}

uint64_t sub_247C8E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_247D1FEA8();
  v6[9] = sub_247D1FE98();
  v8 = sub_247D1FE38();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x2822009F8](sub_247C8E198, v8, v7);
}

uint64_t sub_247C8E198()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_247C8E2AC;
    v4 = *(v0 + 56);

    return sub_247C9457C(v4, v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_247C8E2AC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_247C8E3EC, v4, v3);
}

uint64_t sub_247C8E3EC()
{

  **(v0 + 40) = *(v0 + 96) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void *sub_247C8E460()
{
  v0 = sub_247CD0E40();
  v1 = sub_247C3F898();

  return v1;
}

unint64_t sub_247C8E4BC()
{
  result = qword_27EE631D8;
  if (!qword_27EE631D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE631D8);
  }

  return result;
}

uint64_t sub_247C8E508()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247C8E540()
{
  v1 = *(_s15DiagnosticStyleOMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE635E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = v8;
      v34 = v4;

      v20 = type metadata accessor for FlowResponse(0);
      v21 = *(v20 + 36);
      v22 = sub_247D1F198();
      v32 = *(*(v22 - 8) + 8);
      v32(v9 + v21, v22);
      v23 = v9 + *(v20 + 40);
      v24 = type metadata accessor for FlowResponse.Product(0);
      if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
      {

        v32(&v23[*(v24 + 24)], v22);
      }

      v25 = _s5StateVMa();

      v26 = v9 + v25[8];

      if (*(v26 + 14))
      {
      }

      v27 = v25[9];
      v28 = sub_247D1F488();
      (*(*(v28 - 8) + 8))(v9 + v27, v28);
      v32(v9 + v25[10], v22);
      type metadata accessor for FlowResponse.Step(0);

      __swift_destroy_boxed_opaque_existential_1(v9 + v25[12]);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_16;
      }

      v33 = v8;
      v34 = v4;

      v11 = type metadata accessor for FlowResponse(0);
      v12 = *(v11 + 36);
      v13 = sub_247D1F198();
      v31 = *(*(v13 - 8) + 8);
      v31(v9 + v12, v13);
      v14 = v9 + *(v11 + 40);
      v15 = type metadata accessor for FlowResponse.Product(0);
      if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
      {

        v31(&v14[*(v15 + 24)], v13);
      }

      v16 = _s5StateVMa();

      v17 = v9 + v16[8];

      if (*(v17 + 14))
      {
      }

      v18 = v16[9];
      v19 = sub_247D1F488();
      (*(*(v19 - 8) + 8))(v9 + v18, v19);
      v31(v9 + v16[10], v13);
      type metadata accessor for FlowResponse.Step(0);

      __swift_destroy_boxed_opaque_existential_1(v9 + v16[12]);
    }

    v8 = v33;
    v4 = v34;
  }

LABEL_16:
  v29 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v29, v5);

  return MEMORY[0x2821FE8E8](v0, v29 + v8, v2 | v7 | 7);
}

uint64_t sub_247C8EB64(uint64_t a1, uint64_t a2)
{
  v4 = _s15DiagnosticStyleOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8EBC8(uint64_t a1)
{
  v3 = *(_s15DiagnosticStyleOMa(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE635E8) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_247C8D964(a1, v7, v1 + v4, v8);
}

uint64_t sub_247C8ECAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C8ED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8ED84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8EDF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = _s5StateVMa();
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {

    v7 = type metadata accessor for FlowResponse(0);
    v8 = *(v7 + 36);
    v9 = sub_247D1F198();
    v10 = (*(v9 - 8) + 8);
    v18 = *v10;
    (*v10)(v5 + v8, v9);
    v11 = v5 + *(v7 + 40);
    v12 = type metadata accessor for FlowResponse.Product(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v18(v11 + *(v12 + 24), v9);
    }

    v13 = v5 + v6[8];

    if (*(v13 + 112))
    {
    }

    v14 = v6[9];
    v15 = sub_247D1F488();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
    v18(v5 + v6[10], v9);
    type metadata accessor for FlowResponse.Step(0);

    __swift_destroy_boxed_opaque_existential_1(v5 + v6[12]);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_247C8F150(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_247C2793C;

  return sub_247C8E0FC(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_247C8F290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247C8F2FC(char a1)
{
  result = 2036430689;
  switch(a1)
  {
    case 1:
      result = 0x65736F6C63;
      break;
    case 2:
      result = 1952867692;
      break;
    case 3:
      result = 0x7468676972;
      break;
    case 4:
      result = 0x654C657461746F72;
      break;
    case 5:
      result = 0x6952657461746F72;
      break;
    case 6:
      result = 0x7466654C746C6974;
      break;
    case 7:
      result = 0x68676952746C6974;
      break;
    case 8:
      result = 0x7055746C6974;
      break;
    case 9:
      result = 0x6E776F44746C6974;
      break;
    case 10:
      result = 0x7269766E456D6964;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x7669737365637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_247C8F4D4()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1 + 1001);
  return sub_247D20658();
}

uint64_t sub_247C8F54C()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1 + 1001);
  return sub_247D20658();
}

uint64_t sub_247C8F590@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247C902A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_247C8F5F8()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1 + 2001);
  return sub_247D20658();
}

uint64_t sub_247C8F670()
{
  v1 = *v0;
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1 + 2001);
  return sub_247D20658();
}

uint64_t sub_247C8F6B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247C90460(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_247C8F6F0(char a1)
{
  if (a1 < 0)
  {
    v3 = 0x6F5464656C696166;
    v4 = 0xD000000000000018;
    v5 = 0xD000000000000014;
    if ((a1 & 0x7F) != 3)
    {
      v5 = 0xD000000000000023;
    }

    if ((a1 & 0x7F) != 2)
    {
      v4 = v5;
    }

    if ((a1 & 0x7F) != 0)
    {
      v3 = 0xD000000000000013;
    }

    if ((a1 & 0x7Fu) <= 1)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    result = 2036430689;
    switch(a1)
    {
      case 1:
        result = 0x65736F6C63;
        break;
      case 2:
        result = 1952867692;
        break;
      case 3:
        result = 0x7468676972;
        break;
      case 4:
        result = 0x654C657461746F72;
        break;
      case 5:
        result = 0x6952657461746F72;
        break;
      case 6:
        result = 0x7466654C746C6974;
        break;
      case 7:
        result = 0x68676952746C6974;
        break;
      case 8:
        result = 0x7055746C6974;
        break;
      case 9:
        result = 0x6E776F44746C6974;
        break;
      case 10:
        result = 0x7269766E456D6964;
        break;
      case 11:
        result = 0xD000000000000011;
        break;
      case 12:
        result = 0xD000000000000013;
        break;
      case 13:
        result = 0xD000000000000011;
        break;
      case 14:
        result = 0x7669737365637865;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_247C8F980()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment29RealWorldEnvironmentQualifier_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_247C8FCF8(v0 + OBJC_IVAR____TtC18CosmeticAssessment29RealWorldEnvironmentQualifier_visionRequestHandler);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RealWorldEnvironmentQualifier()
{
  result = qword_27EE63600;
  if (!qword_27EE63600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C8FA90()
{
  result = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    result = _s20VisionRequestHandlerVMa();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_247C8FB68(void *a1)
{
  v3 = _s20VisionRequestHandlerVMa();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1F478();
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment29RealWorldEnvironmentQualifier_ciContext) = a1;
  v7 = a1;
  sub_247D1F478();
  v8 = *(v4 + 28);
  *&v6[v8] = [objc_allocWithZone(MEMORY[0x277CE2E10]) init];
  sub_247C8FC94(v6, v1 + OBJC_IVAR____TtC18CosmeticAssessment29RealWorldEnvironmentQualifier_visionRequestHandler);
  return v1;
}

uint64_t sub_247C8FC94(uint64_t a1, uint64_t a2)
{
  v4 = _s20VisionRequestHandlerVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C8FCF8(uint64_t a1)
{
  v2 = _s20VisionRequestHandlerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for RealWorldEnvironmentQualifier.Hint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RealWorldEnvironmentQualifier.Hint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_247C8FEF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 241))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_247C8FF4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealWorldEnvironmentQualifier.Result.UnqualifiedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for RealWorldEnvironmentQualifier.Result.UnqualifiedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247C90190()
{
  result = qword_27EE63610;
  if (!qword_27EE63610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63610);
  }

  return result;
}

unint64_t sub_247C901E8()
{
  result = qword_27EE63618;
  if (!qword_27EE63618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63618);
  }

  return result;
}

unint64_t sub_247C90250()
{
  result = qword_27EE63628;
  if (!qword_27EE63628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63628);
  }

  return result;
}

uint64_t sub_247C902A4(uint64_t a1)
{
  if ((a1 - 1001) >= 0xF)
  {
    return 15;
  }

  else
  {
    return a1 - 1001;
  }
}

uint64_t getEnumTagSinglePayload for RealWorldEnvironmentQualifier.SkipReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RealWorldEnvironmentQualifier.SkipReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247C9040C()
{
  result = qword_27EE63630;
  if (!qword_27EE63630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63630);
  }

  return result;
}

uint64_t sub_247C90460(uint64_t a1)
{
  if ((a1 - 2001) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 2001;
  }
}

uint64_t sub_247C90484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C904DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

void *sub_247C9052C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_247C9055C(uint64_t a1, int64_t a2)
{
  if (a2 <= 3)
  {
    v8 = 0xD000000000000028;
    v9 = 0xD00000000000002BLL;
    if (a2 != 3)
    {
      v9 = a1;
    }

    if (a2 == 2)
    {
      v9 = 0xD000000000000028;
    }

    v10 = 0xD00000000000001ALL;
    if (a2 != 1)
    {
      v8 = a1;
    }

    if (a2)
    {
      v10 = v8;
    }

    if (a2 <= 1)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v2 = 0xD000000000000023;
    v3 = 0xD000000000000022;
    if (a2 != 8)
    {
      v3 = a1;
    }

    if (a2 != 7)
    {
      v2 = v3;
    }

    if (a2 == 6)
    {
      v4 = 0xD000000000000024;
    }

    else
    {
      v4 = v2;
    }

    v5 = 0xD000000000000023;
    v6 = 0xD000000000000023;
    if (a2 != 5)
    {
      v6 = a1;
    }

    if (a2 != 4)
    {
      v5 = v6;
    }

    if (a2 <= 5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }
  }

  sub_247C90CD8(a1, a2);
  return v7;
}

uint64_t sub_247C906DC@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = sub_247C9055C(a1, a2);
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    sub_247D1EDF8();
    v23 = sub_247D1EE08();
    v24 = *(v23 - 8);
    result = (*(v24 + 48))(v9, 1, v23);
    if (result != 1)
    {
      return (*(v24 + 32))(a3, v9, v23);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_247C9055C(a1, a2);
  sub_247D1EDE8();

  v19 = sub_247D1EE08();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v14, 1, v19) != 1)
  {
    return (*(v20 + 32))(a3, v14, v19);
  }

  sub_247D1EDF8();
  result = (v21)(v12, 1, v19);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  (*(v20 + 32))(a3, v12, v19);
  result = (v21)(v14, 1, v19);
  if (result != 1)
  {
    return sub_247C3674C(v14);
  }

  return result;
}

uint64_t sub_247C909B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_247C90CD8(a2, a3);
  sub_247D1FCB8();
}

uint64_t sub_247C90B68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_247D20618();
  sub_247C909B8(v4, v1, v2);
  return sub_247D20658();
}

uint64_t sub_247C90BBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_247D20618();
  sub_247C909B8(v4, v1, v2);
  return sub_247D20658();
}

unint64_t sub_247C90C1C()
{
  result = qword_27EE63638;
  if (!qword_27EE63638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63638);
  }

  return result;
}

unint64_t sub_247C90C74()
{
  result = qword_27EE63640;
  if (!qword_27EE63640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63640);
  }

  return result;
}

uint64_t sub_247C90CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_247C90CEC(uint64_t a1, int64_t a2, unint64_t a3, int64_t a4)
{
  v5 = a3;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        v7 = 0x8000000247D30420;
        v6 = 0xD00000000000002BLL;
        if (a4 > 3)
        {
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      v8 = "https://tula-it-ause1.corp.apple.com/api";
    }

    else
    {
      if (!a2)
      {
        v7 = 0x8000000247D304B0;
        v6 = 0xD00000000000001ALL;
        if (a4 > 3)
        {
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      v6 = a1;
      v7 = a2;
      if (a2 != 1)
      {
        goto LABEL_23;
      }

      v8 = "https://tula-qa-ause1.corp.apple.com/api";
    }

    v7 = (v8 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000028;
    if (a4 > 3)
    {
      goto LABEL_24;
    }

LABEL_36:
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v10 = 0x8000000247D30450;
        a3 = 0xD000000000000028;
      }

      else
      {
        v10 = 0x8000000247D30420;
        a3 = 0xD00000000000002BLL;
      }
    }

    else
    {
      v12 = 0x8000000247D30480;
      v13 = 0xD000000000000028;
      if (a4 != 1)
      {
        v13 = a3;
        v12 = a4;
      }

      if (a4)
      {
        a3 = v13;
      }

      else
      {
        a3 = 0xD00000000000001ALL;
      }

      if (a4)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0x8000000247D304B0;
      }
    }

    goto LABEL_50;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      v9 = "https://tula-aws-use1.apple.com/api";
    }

    else
    {
      v9 = "https://tula-aws-euw1.apple.com/api";
    }

LABEL_35:
    v7 = (v9 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000023;
    if (a4 <= 3)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  if (a2 == 6)
  {
    v7 = 0x8000000247D30390;
    v6 = 0xD000000000000024;
LABEL_23:
    if (a4 <= 3)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  if (a2 == 7)
  {
    v9 = "https://tula-aws-usw2.apple.com/api";
    goto LABEL_35;
  }

  v6 = a1;
  v7 = a2;
  if (a2 != 8)
  {
    goto LABEL_23;
  }

  v7 = 0x8000000247D30330;
  v6 = 0xD000000000000022;
  if (a4 <= 3)
  {
    goto LABEL_36;
  }

LABEL_24:
  if (a4 <= 5)
  {
    if (a4 == 4)
    {
      v11 = "https://tula-aws-use1.apple.com/api";
    }

    else
    {
      v11 = "https://tula-aws-euw1.apple.com/api";
    }

    goto LABEL_49;
  }

  if (a4 == 6)
  {
    v10 = 0x8000000247D30390;
    a3 = 0xD000000000000024;
    goto LABEL_50;
  }

  if (a4 == 7)
  {
    v11 = "https://tula-aws-usw2.apple.com/api";
LABEL_49:
    v10 = (v11 - 32) | 0x8000000000000000;
    a3 = 0xD000000000000023;
    goto LABEL_50;
  }

  v10 = a4;
  if (a4 == 8)
  {
    v10 = 0x8000000247D30330;
    a3 = 0xD000000000000022;
  }

LABEL_50:
  if (v6 == a3 && v7 == v10)
  {
    v14 = 1;
  }

  else
  {
    v15 = a1;
    v16 = a2;
    v17 = sub_247D20538();
    a2 = v16;
    v14 = v17;
    a1 = v15;
  }

  sub_247C90CD8(a1, a2);
  sub_247C90CD8(v5, a4);

  return v14 & 1;
}

uint64_t sub_247C9101C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  sub_247D1EDE8();
  v8 = sub_247D1EE08();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {

    sub_247C3674C(v6);
    return 0;
  }

  sub_247C3674C(v6);
  v27 = 0x8000000247D30360;
  v28 = 0x8000000247D30330;
  v24 = 0x8000000247D303C0;
  v25 = 0x8000000247D303F0;
  v26 = 0x8000000247D30390;
  v31 = 0x8000000247D30450;
  v32 = 0x8000000247D30420;
  v29 = 0x8000000247D304B0;
  v30 = 0x8000000247D30480;
  v11 = 9;
  for (i = &unk_2859D5EB8; ; i += 2)
  {
    v9 = *(i - 1);
    v13 = *i;
    if (*i <= 3)
    {
      v18 = 0xD000000000000028;
      v19 = 0xD00000000000002BLL;
      if (*i != 3)
      {
        v19 = *(i - 1);
      }

      v20 = v32;
      if (*i != 3)
      {
        v20 = *i;
      }

      if (v13 == 2)
      {
        v19 = 0xD000000000000028;
        v20 = v31;
      }

      if (v13 != 1)
      {
        v18 = *(i - 1);
      }

      v21 = v30;
      if (v13 != 1)
      {
        v21 = *i;
      }

      if (!v13)
      {
        v18 = 0xD00000000000001ALL;
        v21 = v29;
      }

      if (v13 <= 1)
      {
        v16 = v18;
      }

      else
      {
        v16 = v19;
      }

      if (v13 <= 1)
      {
        v17 = v21;
      }

      else
      {
        v17 = v20;
      }
    }

    else if (v13 <= 5)
    {
      v16 = 0xD000000000000023;
      v17 = v25;
      if (v13 != 4)
      {
        v16 = *(i - 1);
        v17 = *i;
        if (v13 == 5)
        {
          v16 = 0xD000000000000023;
          v17 = v24;
        }
      }
    }

    else
    {
      v14 = 0xD000000000000022;
      if (v13 != 8)
      {
        v14 = *(i - 1);
      }

      v15 = v28;
      if (v13 != 8)
      {
        v15 = *i;
      }

      if (v13 == 7)
      {
        v14 = 0xD000000000000023;
        v15 = v27;
      }

      if (v13 == 6)
      {
        v16 = 0xD000000000000024;
      }

      else
      {
        v16 = v14;
      }

      if (v13 == 6)
      {
        v17 = v26;
      }

      else
      {
        v17 = v15;
      }
    }

    if (v16 == a1 && v17 == a2)
    {
      sub_247C90CD8(*(i - 1), *i);
      sub_247C90CD8(v9, v13);

      return v9;
    }

    v22 = sub_247D20538();
    sub_247C90CD8(v9, v13);
    sub_247C90CD8(v9, v13);

    if (v22)
    {
      break;
    }

    sub_247C91380(v9, v13);
    if (!--v11)
    {
      return a1;
    }
  }

  return v9;
}

uint64_t sub_247C91380(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

void *sub_247C913A8@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = sub_247CD8D4C();

  if (v3)
  {
    a1[3] = &type metadata for CurrentDeviceDetailsProvider;
    a1[4] = &off_2859DA850;
    result = swift_allocObject();
    *a1 = result;
    result[2] = 0;
    result[3] = 0xE000000000000000;
    result[4] = 0;
    result[5] = 0xE000000000000000;
    result[6] = 0;
    result[7] = 0xE000000000000000;
    result[8] = 0;
    result[9] = 0xE000000000000000;
  }

  else
  {
    result = sub_247D20398();
    __break(1u);
  }

  return result;
}

uint64_t sub_247C91498()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void sub_247C914E8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 systemName];
  v21 = sub_247D1FBE8();
  v6 = v5;

  v7 = [a1 systemVersion];
  v8 = sub_247D1FBE8();
  v10 = v9;

  v11 = [a1 model];
  v12 = sub_247D1FBE8();
  v14 = v13;

  v15 = sub_247D1FBB8();
  v16 = MGGetStringAnswer();
  if (v16)
  {
    v17 = v16;
    v18 = sub_247D1FBE8();
    v20 = v19;

    *a2 = v21;
    a2[1] = v6;
    a2[2] = v8;
    a2[3] = v10;
    a2[4] = v12;
    a2[5] = v14;
    a2[6] = v18;
    a2[7] = v20;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_247C91634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_247C91680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247C916FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_247D1F488();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_247C91788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_247D1F488();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for DeviceAttitude()
{
  result = qword_27EE63650;
  if (!qword_27EE63650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C91850()
{
  result = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247C918D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeviceAttitude();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 28);
  sub_247D1F478();
  if (*(a1 + 16) && (v10 = sub_247CCFDA8(0x6863746970, 0xE500000000000000), (v11 & 1) != 0) && *(a1 + 16) && (v12 = *(*(a1 + 56) + 8 * v10), v13 = sub_247CCFDA8(1819045746, 0xE400000000000000), (v14 & 1) != 0) && *(a1 + 16) && (v15 = *(*(a1 + 56) + 8 * v13), v16 = sub_247CCFDA8(7823737, 0xE300000000000000), (v17 & 1) != 0))
  {
    v18 = *(*(a1 + 56) + 8 * v16);

    *v8 = v12;
    *(v8 + 1) = v15;
    *(v8 + 2) = v18;
    sub_247C62C00(v8, a2);
    (*(v5 + 56))(a2, 0, 1, v4);
    return sub_247C62C64(v8);
  }

  else
  {

    v20 = sub_247D1F468();
    v21 = sub_247D20038();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_247C1F000, v20, v21, "Missing required keys in attitude", v22, 2u);
      MEMORY[0x24C1B9080](v22, -1, -1);
    }

    v23 = sub_247D1F488();
    (*(*(v23 - 8) + 8))(&v8[v9], v23);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

BOOL sub_247C91B68(double *a1)
{
  v3 = type metadata accessor for DeviceAttitude();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v25 - v8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = vabdd_f64(*v1, *a1);
  v16 = fabs(vabdd_f64(v1[1], a1[1]) + -3.14159265);
  sub_247C62C00(v1, &v25 - v13);
  sub_247C62C00(a1, v12);
  sub_247C62C00(v1, v9);
  sub_247C62C00(a1, v6);
  v17 = sub_247D1F468();
  v18 = sub_247D20058();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67110400;
    *(v19 + 4) = v16 < 0.785398163;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v15 < 0.785398163;
    *(v19 + 14) = 2048;
    v20 = *(v14 + 1);
    sub_247C62C64(v14);
    *(v19 + 16) = v20;
    *(v19 + 24) = 2048;
    v21 = *(v12 + 1);
    sub_247C62C64(v12);
    *(v19 + 26) = v21;
    *(v19 + 34) = 2048;
    v22 = *v9;
    sub_247C62C64(v9);
    *(v19 + 36) = v22;
    *(v19 + 44) = 2048;
    v23 = *v6;
    sub_247C62C64(v6);
    *(v19 + 46) = v23;
    _os_log_impl(&dword_247C1F000, v17, v18, "%{BOOL}d;%{BOOL}d;%f;%f;%f;%f", v19, 0x36u);
    MEMORY[0x24C1B9080](v19, -1, -1);
  }

  else
  {

    sub_247C62C64(v6);
    sub_247C62C64(v9);
    sub_247C62C64(v12);
    sub_247C62C64(v14);
  }

  return v15 < 0.785398163 && v16 < 0.785398163;
}

uint64_t sub_247C91DE4()
{
  sub_247D1FFA8();
  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  sub_247D1FFA8();
  MEMORY[0x24C1B7B80](59, 0xE100000000000000);
  sub_247D1FFA8();
  return 0;
}

uint64_t sub_247C91E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v22 = (*(a10 + 8) + **(a10 + 8));
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_247C2793C;
  v20.n128_f64[0] = a9;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_247C92008(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 184) = a2;
  *(v9 + 168) = a9;
  *(v9 + 176) = v19;
  *(v9 + 105) = v18;
  *(v9 + 152) = a7;
  *(v9 + 160) = a8;
  *(v9 + 136) = a5;
  *(v9 + 144) = a6;
  *(v9 + 128) = a1;
  v10 = sub_247D20358();
  *(v9 + 192) = v10;
  *(v9 + 200) = *(v10 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v11 = sub_247D20368();
  *(v9 + 224) = v11;
  *(v9 + 232) = *(v11 - 8);
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = *(type metadata accessor for FileStatusResponse.FileResult(0) - 8);
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = type metadata accessor for FileStatusResponse(0);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  sub_247D1F1C8();
  *(v9 + 288) = swift_task_alloc();
  v12 = sub_247D1F1E8();
  *(v9 + 296) = v12;
  *(v9 + 304) = *(v12 - 8);
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = type metadata accessor for FileStatusRequest(0);
  v13 = swift_task_alloc();
  v14 = OBJC_IVAR____TtC18CosmeticAssessment18FileStatusProvider_log;
  *(v9 + 328) = v13;
  *(v9 + 336) = v14;
  *(v9 + 344) = 0;
  v15 = *(v9 + 136);

  return MEMORY[0x2822009F8](sub_247C922A8, v15, 0);
}

uint64_t sub_247C922A8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 105);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = swift_task_alloc();
  v7 = *(v0 + 152);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 40) = v4;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  sub_247C93E48(&qword_27EE63678, type metadata accessor for FileStatusRequest);
  sub_247D1F348();

  sub_247D1F1D8();
  v8 = sub_247D1F2F8();
  if (v1)
  {
    v10 = *(v0 + 328);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    sub_247C93EF8(v10, type metadata accessor for FileStatusRequest);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v8;
    v14 = v9;
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    v15 = sub_247CD8184(MEMORY[0x277D84F90]);
    *(v0 + 16) = 0;
    *(v0 + 24) = v13;
    *(v0 + 32) = v14;
    *(v0 + 40) = 1;
    *(v0 + 48) = 3;
    *(v0 + 56) = v15;
    *(v0 + 64) = 0;
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    v16 = swift_task_alloc();
    *(v0 + 352) = v16;
    *v16 = v0;
    v16[1] = sub_247C9255C;

    return sub_247CCDBE0(v0 + 16, 0);
  }
}

uint64_t sub_247C9255C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[45] = v2;

  v7 = v6[17];
  if (v2)
  {
    v8 = sub_247C92D28;
  }

  else
  {
    v6[46] = a2;
    v6[47] = a1;
    v8 = sub_247C9269C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_247C9269C()
{
  v45 = v0;
  v1 = *(v0 + 360);
  sub_247D1F1B8();
  sub_247D1F1A8();
  sub_247C93E48(&qword_27EE63680, type metadata accessor for FileStatusResponse);
  sub_247D1F308();
  if (v1)
  {
    sub_247C93EF8(*(v0 + 328), type metadata accessor for FileStatusRequest);
    sub_247C82A58(v0 + 16);
LABEL_3:

    v2 = *(v0 + 8);
LABEL_4:

    return v2();
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 128);
  sub_247C93EF8(*(v0 + 328), type metadata accessor for FileStatusRequest);
  sub_247C82A58(v0 + 16);
  sub_247C93E90(v5, v4, type metadata accessor for FileStatusResponse);
  v6 = sub_247D1F468();
  v7 = sub_247D20058();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 280);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    v11 = *v9;
    sub_247C93EF8(*(v0 + 280), type metadata accessor for FileStatusResponse);
    *(v10 + 4) = v11;
    _os_log_impl(&dword_247C1F000, v6, v7, "File status: %{public}ld", v10, 0xCu);
    MEMORY[0x24C1B9080](v10, -1, -1);
  }

  else
  {
    sub_247C93EF8(*(v0 + 280), type metadata accessor for FileStatusResponse);
  }

  v12 = *(v0 + 128);

  if (*(v12 + 8) == 1)
  {
    v13 = *(v0 + 128);
    if (!*v13)
    {
      v17 = v13[4];
      v18 = *(v17 + 16);
      v19 = MEMORY[0x277D84F90];
      if (v18)
      {
        v20 = *(v0 + 248);
        v43 = *(v0 + 256);
        v44 = MEMORY[0x277D84F90];
        sub_247CE2490(0, v18, 0);
        v19 = v44;
        v21 = v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
        v42 = *(v20 + 72);
        do
        {
          v22 = *(v0 + 256);
          sub_247C93E90(v21, v22, type metadata accessor for FileStatusResponse.FileResult);
          v23 = *v22;
          v24 = *(v43 + 8);
          v25 = *(v43 + 40);

          sub_247C93EF8(v22, type metadata accessor for FileStatusResponse.FileResult);
          v44 = v19;
          v27 = *(v19 + 16);
          v26 = *(v19 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_247CE2490((v26 > 1), v27 + 1, 1);
            v19 = v44;
          }

          *(v19 + 16) = v27 + 1;
          v28 = (v19 + 24 * v27);
          v28[4] = v23;
          v28[5] = v24;
          v28[6] = v25;
          v21 += v42;
          --v18;
        }

        while (v18);
        v13 = *(v0 + 128);
      }

      sub_247C93E90(v13, *(v0 + 272), type metadata accessor for FileStatusResponse);

      v30 = sub_247D1F468();
      v31 = sub_247D20058();

      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 272);
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 134349314;
        v36 = *(v33 + 16);
        sub_247C93EF8(*(v0 + 272), type metadata accessor for FileStatusResponse);
        *(v34 + 4) = v36;
        *(v34 + 12) = 2082;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63FC0);
        v38 = MEMORY[0x24C1B7C90](v19, v37);
        v40 = v39;

        v41 = sub_247CB03B4(v38, v40, &v44);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_247C1F000, v30, v31, "File status assessment: %{public}ld – %{public}s", v34, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x24C1B9080](v35, -1, -1);
        MEMORY[0x24C1B9080](v34, -1, -1);
      }

      else
      {
        sub_247C93EF8(*(v0 + 272), type metadata accessor for FileStatusResponse);
      }

      v2 = *(v0 + 8);
      goto LABEL_4;
    }

    if (*v13 != 1)
    {
      sub_247C250C8();
      swift_allocError();
      *v29 = xmmword_247D22CE0;
      *(v29 + 16) = 0x8000000247D2D960;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xE000000000000000;
      swift_willThrow();
      sub_247C93EF8(v13, type metadata accessor for FileStatusResponse);
      goto LABEL_3;
    }
  }

  v14 = sub_247D20688();
  v16 = v15;
  sub_247D205A8();
  *(v0 + 112) = v14;
  *(v0 + 120) = v16;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  return MEMORY[0x2822009F8](sub_247C92E2C, 0, 0);
}

uint64_t sub_247C92D28()
{
  v1 = *(v0 + 328);
  sub_247C82A58(v0 + 16);
  sub_247C93EF8(v1, type metadata accessor for FileStatusRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C92E2C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = sub_247C93E48(&qword_27EE62DA0, MEMORY[0x277D85928]);
  sub_247D20588();
  sub_247C93E48(&qword_27EE62DA8, MEMORY[0x277D858F8]);
  sub_247D20378();
  v5 = *(v2 + 8);
  v0[48] = v5;
  v0[49] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[50] = v6;
  *v6 = v0;
  v6[1] = sub_247C92FB0;
  v8 = v0[27];
  v7 = v0[28];

  return MEMORY[0x2822008C8](v8, v0 + 11, v7, v4);
}

uint64_t sub_247C92FB0()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    (*(v2 + 384))(*(v2 + 216), *(v2 + 192));
    v3 = sub_247C93198;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 384);
    v7 = *(v2 + 232);
    v6 = *(v2 + 240);
    v8 = *(v2 + 216);
    v9 = *(v2 + 224);
    v10 = *(v2 + 192);
    v11 = *(v2 + 136);
    v5(v8, v10);
    (*(v7 + 8))(v6, v9);
    v3 = sub_247C93114;
    v4 = v11;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_247C93114()
{
  sub_247C93EF8(v0[16], type metadata accessor for FileStatusResponse);
  v0[43] = v0[51];
  v1 = v0[17];

  return MEMORY[0x2822009F8](sub_247C922A8, v1, 0);
}

uint64_t sub_247C93198()
{
  v1 = v0[17];
  (*(v0[29] + 8))(v0[30], v0[28]);

  return MEMORY[0x2822009F8](sub_247C93214, v1, 0);
}

uint64_t sub_247C93214()
{
  sub_247C93EF8(*(v0 + 128), type metadata accessor for FileStatusResponse);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C9330C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v78) = a6;
  v75 = a5;
  v79 = a2;
  v82 = type metadata accessor for RecordedImage.UploadRequestData(0);
  MEMORY[0x28223BE20](v82);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63288);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v60 - v14;
  v77 = type metadata accessor for Metadata(0);
  v68 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v16 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v60 - v18;
  v72 = type metadata accessor for FileUploadToken(0);
  v67 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ImageUploadTicket();
  v21 = *(v71 - 8);
  v22 = MEMORY[0x28223BE20](v71);
  v81 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v80 = &v60 - v24;
  v25 = type metadata accessor for FileStatusRequest.FileInfo(0);
  v69 = *(v25 - 8);
  v70 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  *a1 = v79;
  a1[1] = a3;
  v63 = a1;
  v28 = *(a4 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v61 = a7;
    v62 = v7;
    v83 = MEMORY[0x277D84F90];
    sub_247CE24B0(0, v28, 0);
    v29 = v83;
    v30 = a4 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v31 = v67 + 6;
    v64 = (v68 + 7);
    v66 = *(v21 + 72);
    v67 = v68 + 6;
    v65 = v78 & 1;
    v68 = v31;
    do
    {
      v78 = v28;
      v79 = v29;
      v32 = v16;
      v33 = v80;
      sub_247C93E90(v30, v80, type metadata accessor for ImageUploadTicket);
      v34 = v33;
      v35 = v81;
      sub_247C93E90(v34, v81, type metadata accessor for ImageUploadTicket);
      sub_247D1F188();
      v36 = v35 + *(v71 + 20);
      v37 = *(v36 + 56);
      *v27 = *(v36 + 48);
      *(v27 + 1) = v37;
      v38 = v35 + *(v82 + 20);
      v39 = v38 + *(type metadata accessor for FlowResponse.Step.CosmeticCapture(0) + 36);
      v40 = v76;
      sub_247C2BD10(v39, v76, &qword_27EE63290);
      v41 = *v31;
      v42 = v72;
      if ((*v31)(v40, 1, v72) == 1)
      {
        *v20 = 0;
        *(v20 + 1) = 0xE000000000000000;
        *(v20 + 2) = 0;
        *(v20 + 3) = 0xE000000000000000;
        *(v20 + 4) = 0;
        *(v20 + 5) = 0xE000000000000000;
        *(v20 + 6) = 0;
        *(v20 + 7) = 0xE000000000000000;

        sub_247D1F188();
        (*v64)(&v20[*(v42 + 36)], 1, 1, v77);
        v43 = v41(v40, 1, v42);
        v44 = v73;
        v16 = v32;
        if (v43 != 1)
        {
          sub_247C27100(v76, &qword_27EE63290);
        }
      }

      else
      {
        sub_247C93F58(v40, v20, type metadata accessor for FileUploadToken);

        v44 = v73;
        v16 = v32;
      }

      sub_247C2BD10(&v20[*(v42 + 36)], v44, &qword_27EE63288);
      v45 = *v67;
      v46 = v77;
      if ((*v67)(v44, 1, v77) == 1)
      {
        *v16 = 0;
        v16[1] = 0xE000000000000000;
        v16[2] = 0;
        v16[3] = 0xE000000000000000;
        v16[4] = 0;
        v16[5] = 0xE000000000000000;
        sub_247D1F188();
        sub_247C93EF8(v20, type metadata accessor for FileUploadToken);
        sub_247C93EF8(v80, type metadata accessor for ImageUploadTicket);
        v47 = v45(v44, 1, v46);
        v48 = v78;
        if (v47 != 1)
        {
          sub_247C27100(v44, &qword_27EE63288);
        }
      }

      else
      {
        sub_247C93EF8(v20, type metadata accessor for FileUploadToken);
        sub_247C93EF8(v80, type metadata accessor for ImageUploadTicket);
        sub_247C93F58(v44, v16, type metadata accessor for Metadata);
        v48 = v78;
      }

      v50 = *v16;
      v49 = v16[1];

      sub_247C93EF8(v16, type metadata accessor for Metadata);
      *(v27 + 3) = v50;
      *(v27 + 4) = v49;
      v51 = v81;
      v52 = v74;
      sub_247C93E90(v81, v74, type metadata accessor for RecordedImage.UploadRequestData);
      sub_247C93EF8(v51, type metadata accessor for ImageUploadTicket);
      v53 = (v52 + *(v82 + 28));
      v55 = *v53;
      v54 = v53[1];

      sub_247C93EF8(v52, type metadata accessor for RecordedImage.UploadRequestData);
      *(v27 + 5) = v55;
      *(v27 + 6) = v54;
      *(v27 + 7) = v75;
      v27[16] = v65;
      v29 = v79;
      v83 = v79;
      v57 = *(v79 + 16);
      v56 = *(v79 + 24);

      if (v57 >= v56 >> 1)
      {
        sub_247CE24B0(v56 > 1, v57 + 1, 1);
        v29 = v83;
      }

      *(v29 + 16) = v57 + 1;
      sub_247C93F58(v27, v29 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v57, type metadata accessor for FileStatusRequest.FileInfo);
      v30 += v66;
      v28 = v48 - 1;
      v31 = v68;
    }

    while (v28);
    a7 = v61;
  }

  v58 = v63;

  v58[2] = v29;
  if (a7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a7 <= 0x7FFFFFFF)
  {
    *(v58 + 6) = a7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_247C93B50()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC18CosmeticAssessment18FileStatusProvider_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for FileStatusProvider()
{
  result = qword_27EE63668;
  if (!qword_27EE63668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247C93C24()
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

uint64_t sub_247C93CC8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE72D00;
  v3 = *(qword_27EE72D00 + 16);

  [v3 lock];
  v4 = sub_247CAE904(v2, &_s14APIProviderKeyON);
  v6 = v5;
  [v3 unlock];

  v7 = type metadata accessor for FileStatusProvider();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_247D1F478();
  *(v8 + 112) = v4;
  *(v8 + 120) = v6;
  a1[3] = v7;
  a1[4] = &off_2859DA8E8;
  *a1 = v8;
  return result;
}

uint64_t sub_247C93E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247C93E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247C93EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247C93F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *sub_247C93FD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_247C30320(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_247CD7308(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_247C27100(a1, &unk_27EE63300);
    v7 = sub_247D15DA4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_247CB0EF0();
        v11 = v13;
      }

      sub_247C30320((*(v11 + 56) + 32 * v9), v14);
      sub_247CB0A60(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_247C27100(v14, &unk_27EE63300);
  }

  return result;
}

uint64_t sub_247C940D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FlowResponse.Step(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_247CB3A20(a3 + v15 + v16 * v13, v12, type metadata accessor for FlowResponse.Step);
      v17 = a1(v12);
      if (v3)
      {
        sub_247CB3A88(v12, type metadata accessor for FlowResponse.Step);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_247CB385C(v12, v24, type metadata accessor for FlowResponse.Step);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_247CE23C8(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_247CE23C8(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_247CB385C(v24, v14 + v15 + v20 * v16, type metadata accessor for FlowResponse.Step);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_247CB3A88(v12, type metadata accessor for FlowResponse.Step);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

void *sub_247C94360(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_247D203B8();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x24C1B8190](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_247D20308();
          sub_247D20338();
          v5 = v14;
          sub_247D20348();
          v3 = &v18;
          sub_247D20318();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_247C9451C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_247C9457C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for FlowResponse.Step(0);
  v3[13] = swift_task_alloc();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0) - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = sub_247D1FEA8();
  v3[20] = sub_247D1FE98();
  v6 = sub_247D1FE38();
  v3[21] = v6;
  v3[22] = v5;

  return MEMORY[0x2822009F8](sub_247C94708, v6, v5);
}

uint64_t sub_247C94708()
{
  v53 = v0;
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_exitSessionTask;
  v0[23] = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_exitSessionTask;
  v3 = *&v1[v2];
  v0[24] = v3;
  if (v3)
  {
    v4 = v0[9];
    sub_247C2BD10(v0[8], v0[18], &qword_27EE62BA0);

    v5 = v4;
    v6 = sub_247D1F468();
    v7 = sub_247D20058();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[18];
    if (v8)
    {
      v10 = v0[17];
      v11 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v11 = 136446466;
      sub_247C2BD10(v9, v10, &qword_27EE62BA0);
      v12 = _s5StateVMa();
      v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);
      v14 = v0[17];
      if (v13 == 1)
      {
        sub_247C27100(v14, &qword_27EE62BA0);
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v34 = v0[12];
        v33 = v0[13];
        v35 = *(v12 + 40);
        v36 = v0[17];
        sub_247CB3A20(v14 + v35, v33, type metadata accessor for FlowResponse.Step);
        sub_247CB3A88(v36, _s5StateVMa);
        v37 = *(v33 + *(v34 + 20));
        swift_beginAccess();
        v15 = *(v37 + 16);
        v16 = *(v37 + 24);

        sub_247CB3A88(v33, type metadata accessor for FlowResponse.Step);
      }

      v38 = v0[18];
      v39 = v0[9];
      v0[5] = v15;
      v0[6] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63200);
      v40 = sub_247D1FC68();
      v42 = v41;
      sub_247C27100(v38, &qword_27EE62BA0);
      v43 = sub_247CB03B4(v40, v42, &v52);

      *(v11 + 4) = v43;
      *(v11 + 12) = 2082;
      v0[7] = v39;
      v44 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63688);
      v45 = sub_247D1FC68();
      v47 = sub_247CB03B4(v45, v46, &v52);

      *(v11 + 14) = v47;
      _os_log_impl(&dword_247C1F000, v6, v7, "Duplicate session end requests. Ignoring. %{public}s %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B9080](v50, -1, -1);
      MEMORY[0x24C1B9080](v11, -1, -1);
    }

    else
    {

      sub_247C27100(v9, &qword_27EE62BA0);
    }

    v48 = swift_task_alloc();
    v0[25] = v48;
    *v48 = v0;
    v48[1] = sub_247C94C64;
  }

  else
  {
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    v20 = v0[11];
    v51 = v20;
    v22 = v0[8];
    v21 = v0[9];
    v23 = sub_247D1FEC8();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
    sub_247C2BD10(v22, v17, &qword_27EE62BA0);
    v24 = v21;
    v25 = v1;
    v26 = sub_247D1FE98();
    v27 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v26;
    v29[3] = v30;
    v29[4] = v25;
    sub_247CB1C14(v17, v29 + v27, &qword_27EE62BA0);
    *(v29 + v28) = v21;
    v31 = sub_247CD082C(0, 0, v51, &unk_247D25C30, v29);
    v0[26] = v31;
    *&v1[v2] = v31;

    v32 = swift_task_alloc();
    v0[27] = v32;
    *v32 = v0;
    v32[1] = sub_247C94E2C;
  }

  return MEMORY[0x282200460]();
}

uint64_t sub_247C94C64()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_247C94D84, v3, v2);
}

uint64_t sub_247C94D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C94E2C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_247C94F4C, v3, v2);
}

uint64_t sub_247C94F4C()
{
  v1 = v0[23];
  v2 = v0[10];

  if (*(v2 + v1))
  {

    sub_247D1FF28();
  }

  v3 = v0[23];
  v4 = v0[10];

  *(v4 + v3) = 0;

  v5 = v0[1];

  return v5();
}

void *sub_247C95044()
{
  v1 = sub_247CD0E40();
  v2 = [v1 visibleViewController];

  if (v2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      goto LABEL_5;
    }
  }

  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController);
LABEL_5:
  v3 = v2;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    v5 = v3;
    while (1)
    {
      v6 = v4;
      if ([v4 isBeingDismissed])
      {
        break;
      }

      v4 = [v6 presentedViewController];
      v5 = v6;
      if (!v4)
      {
        v5 = v6;
        goto LABEL_12;
      }
    }

    v3 = v6;
  }

  else
  {
    v5 = v3;
  }

LABEL_12:

  return v5;
}

unint64_t sub_247C9514C(unsigned __int8 a1)
{
  v1 = 0xD00000000000003CLL;
  if (a1 != 5)
  {
    v1 = 0xD000000000000026;
  }

  v2 = 0xD000000000000046;
  if (a1 != 3)
  {
    v2 = 0xD000000000000021;
  }

  if (a1 <= 4u)
  {
    v1 = v2;
  }

  v3 = 0xD000000000000027;
  if (a1 == 1)
  {
    v3 = 0xD00000000000003BLL;
  }

  if (!a1)
  {
    v3 = 0xD00000000000003FLL;
  }

  if (a1 <= 2u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

id sub_247C9521C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v113 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v114 = &v112 - v5;
  v126 = type metadata accessor for FlowResponse.Step.Action(0);
  v135 = *(v126 - 8);
  v6 = MEMORY[0x28223BE20](v126);
  v134 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v112 = &v112 - v8;
  v116 = sub_247D1FB98();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v123 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63740);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v122 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v130 = &v112 - v13;
  v121 = type metadata accessor for FlowResponse.Step.Progress(0);
  v14 = MEMORY[0x28223BE20](v121);
  v125 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v128 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FA0);
  MEMORY[0x28223BE20](v17 - 8);
  v120 = &v112 - v18;
  v19 = type metadata accessor for FlowResponse.Step.Loading(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v118 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v119 = &v112 - v22;
  v23 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v117 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v112 - v27;
  MEMORY[0x28223BE20](v26);
  v129 = (&v112 - v29);
  v30 = _s5StateVMa();
  v31 = MEMORY[0x28223BE20](v30);
  v127 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v112 - v34;
  MEMORY[0x28223BE20](v33);
  v131 = &v112 - v36;
  v37 = type metadata accessor for FlowResponse.Step.Information(0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v112 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63230);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v46 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v112 - v47;
  v124 = v30;
  v49 = *(v30 + 40);
  v132 = a1;
  v50 = *(a1 + v49 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  v51 = OBJC_IVAR____TtCVV18CosmeticAssessment12FlowResponse4StepP33_55BDE06F91E259AAD3319661EAAA73C513_StorageClass__contents;
  swift_beginAccess();
  v52 = v50 + v51;
  v53 = v48;
  sub_247C2BD10(v52, v48, &unk_27EE63230);
  v54 = type metadata accessor for FlowResponse.Step.OneOf_Contents(0);
  if ((*(*(v54 - 8) + 48))(v48, 1, v54) == 1)
  {
    goto LABEL_2;
  }

  sub_247C2BD10(v48, v46, &unk_27EE63230);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_247CB385C(v46, v42, type metadata accessor for FlowResponse.Step.Information);
      v82 = v131;
      sub_247CB3A20(v132, v131, _s5StateVMa);
      sub_247CB3A20(v42, v40, type metadata accessor for FlowResponse.Step.Information);
      swift_beginAccess();
      v83 = *(v50 + 32);

      v84 = v133;
      v85 = v133;
      v55 = sub_247C3BCEC(v82, v84, &off_2859DA918, v40, v83);
      sub_247CB3A88(v42, type metadata accessor for FlowResponse.Step.Information);
      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v58 = v129;
      sub_247CB385C(v46, v129, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      v59 = v131;
      sub_247CB3A20(v132, v131, _s5StateVMa);
      sub_247CB3A20(v58, v28, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      sub_247CB3A20(v59, v35, _s5StateVMa);
      v60 = v117;
      sub_247CB3A20(v28, v117, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      v61 = (v59 + *(v124 + 28));
      v62 = v61[1];
      v135 = *v61;
      objc_allocWithZone(type metadata accessor for CosmeticDiagnosticsViewController(0));
      v63 = v133;
      v64 = v133;

      v55 = sub_247C41580(v35, v63, &off_2859DA918, v60, v135, v62);
      sub_247CB3A88(v28, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      sub_247CB3A88(v59, _s5StateVMa);
      sub_247CB3A88(v129, type metadata accessor for FlowResponse.Step.CosmeticCapture);
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v86 = v119;
    sub_247CB385C(v46, v119, type metadata accessor for FlowResponse.Step.Loading);
    v87 = v131;
    sub_247CB3A20(v132, v131, _s5StateVMa);
    v88 = v118;
    sub_247CB3A20(v86, v118, type metadata accessor for FlowResponse.Step.Loading);
    swift_beginAccess();
    v89 = *(v50 + 32);
    swift_beginAccess();
    v90 = *(v50 + 40);
    v91 = v120;
    sub_247C2BD10(v86, v120, &qword_27EE62FA0);
    v92 = v133;
    v93 = v133;

    v55 = sub_247C3D0B8(v87, v88, v92, &off_2859DA918, v89, v90, v91);
    sub_247CB3A88(v86, type metadata accessor for FlowResponse.Step.Loading);
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_13:
    sub_247CB3A88(v46, type metadata accessor for FlowResponse.Step.OneOf_Contents);
LABEL_2:
    type metadata accessor for LoadingViewController();
    v55 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_3;
  }

  v131 = v48;
  v65 = v128;
  sub_247CB385C(v46, v128, type metadata accessor for FlowResponse.Step.Progress);
  v66 = v127;
  sub_247CB3A20(v132, v127, _s5StateVMa);
  sub_247CB3A20(v65, v125, type metadata accessor for FlowResponse.Step.Progress);
  swift_beginAccess();
  v67 = *(v50 + 32);
  swift_beginAccess();
  v68 = *(v50 + 40);
  sub_247C2BD10(v65 + *(v121 + 24), v130, &qword_27EE63740);
  v69 = type metadata accessor for ProgressViewController();
  v70 = objc_allocWithZone(v69);
  v71 = qword_27EE625B8;

  if (v71 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v72 = qword_27EE72D00;
    v73 = *(qword_27EE72D00 + 16);

    [v73 lock];
    sub_247CAEF98(v72, &_s26ImageUploadDataProviderKeyON, v137);
    v74 = v134;
    v75 = OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController__imageUploadDataProvider;
    [v73 unlock];
    sub_247C3D044(v137, &v70[v75]);

    v76 = &v70[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_delegate];
    *&v70[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_247D1F478();
    v77 = *(v135 + 56);
    v132 = v135 + 56;
    v129 = v77;
    (v77)(&v70[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_topBarTrailingAction], 1, 1, v126);
    sub_247CB3A20(v66, &v70[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_flowState], _s5StateVMa);
    *(v76 + 1) = &off_2859DA918;
    swift_unknownObjectWeakAssign();
    *&v70[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_hiddenActions] = v68;
    v78 = v122;
    sub_247C2BD10(v130, v122, &qword_27EE63740);
    v79 = type metadata accessor for FlowResponse.Step.Progress.OneOf_Operation(0);
    if ((*(*(v79 - 8) + 48))(v78, 1, v79) == 1)
    {
      v80 = 0;
      v81 = -1;
    }

    else
    {
      v80 = *(v66 + *(v124 + 20));

      sub_247C27100(v78, &qword_27EE63740);
      v81 = 0;
    }

    v94 = v116;
    v95 = v115;
    v96 = &v70[OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_loadingTask];
    *v96 = v80;
    *(v96 + 1) = 0;
    v96[16] = v81;

    v97 = v123;
    sub_247D1FBA8();
    sub_247C88264(v97);
    (*(v95 + 8))(v97, v94);
    v68 = sub_247D1FBB8();

    v136.receiver = v70;
    v136.super_class = v69;
    v55 = objc_msgSendSuper2(&v136, sel_initWithSpinnerText_, v68);

    v98 = *(v67 + 16);
    if (!v98)
    {
      break;
    }

    v69 = sub_247D1FEA8();
    v66 = v67 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
    v99 = v55;
    v100 = 0;
    while (v100 < *(v67 + 16))
    {
      sub_247CB3A20(v66 + *(v135 + 72) * v100, v74, type metadata accessor for FlowResponse.Step.Action);
      v68 = sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v74 = v134;
      v70 = *(v134 + 32);
      if (*(v134 + 40) == 1)
      {
        if (v70 >= 2)
        {

          sub_247C27100(v130, &qword_27EE63740);
          sub_247CB3A88(v127, _s5StateVMa);
          sub_247CB3A88(v128, type metadata accessor for FlowResponse.Step.Progress);

LABEL_32:
          v104 = v114;
          sub_247CB385C(v74, v114, type metadata accessor for FlowResponse.Step.Action);
          v102 = 0;
          v53 = v131;
          v103 = v126;
          goto LABEL_33;
        }

        sub_247CB3A88(v134, type metadata accessor for FlowResponse.Step.Action);
      }

      else
      {

        if (v70 == 2)
        {

          sub_247C27100(v130, &qword_27EE63740);
          sub_247CB3A88(v127, _s5StateVMa);
          sub_247CB3A88(v128, type metadata accessor for FlowResponse.Step.Progress);
          goto LABEL_32;
        }

        sub_247CB3A88(v74, type metadata accessor for FlowResponse.Step.Action);
      }

      if (v98 == ++v100)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v101 = v55;
LABEL_30:

  sub_247C27100(v130, &qword_27EE63740);
  sub_247CB3A88(v127, _s5StateVMa);
  sub_247CB3A88(v128, type metadata accessor for FlowResponse.Step.Progress);
  v102 = 1;
  v53 = v131;
  v103 = v126;
  v104 = v114;
LABEL_33:
  v105 = v125;
  v106 = v129;
  (v129)(v104, v102, 1, v103);
  sub_247CB3A88(v105, type metadata accessor for FlowResponse.Step.Progress);
  if ((*(v135 + 48))(v104, 1, v103) == 1)
  {

    sub_247C27100(v104, &qword_27EE62FA8);
  }

  else
  {
    v107 = v104;
    v108 = v112;
    sub_247CB385C(v107, v112, type metadata accessor for FlowResponse.Step.Action);
    v109 = v108;
    v110 = v113;
    sub_247CB385C(v109, v113, type metadata accessor for FlowResponse.Step.Action);
    v106(v110, 0, 1, v103);
    v111 = OBJC_IVAR____TtC18CosmeticAssessment22ProgressViewController_topBarTrailingAction;
    swift_beginAccess();
    sub_247CB1E04(v110, v55 + v111, &qword_27EE62FA8);
    swift_endAccess();
  }

LABEL_3:
  sub_247C27100(v53, &unk_27EE63230);
  return v55;
}

uint64_t sub_247C964B0()
{
  v1[491] = v0;
  v1[492] = swift_getObjectType();
  v2 = sub_247D1EF78();
  v1[493] = v2;
  v3 = *(v2 - 8);
  v1[494] = v3;
  v1[495] = *(v3 + 64);
  v1[496] = swift_task_alloc();
  v1[497] = swift_task_alloc();
  v1[498] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  v1[499] = swift_task_alloc();
  v4 = _s5StateVMa();
  v1[500] = v4;
  v5 = *(v4 - 8);
  v1[501] = v5;
  v1[502] = *(v5 + 64);
  v1[503] = swift_task_alloc();
  v1[504] = swift_task_alloc();
  v1[505] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637C0);
  v1[506] = swift_task_alloc();
  v1[507] = swift_task_alloc();
  v6 = type metadata accessor for FlowResponse.Product(0);
  v1[508] = v6;
  v1[509] = *(v6 - 8);
  v1[510] = swift_task_alloc();
  v1[511] = swift_task_alloc();
  v1[512] = type metadata accessor for FlowResponse(0);
  v1[513] = swift_task_alloc();
  v1[514] = swift_task_alloc();
  v7 = sub_247D1EF48();
  v1[515] = v7;
  v8 = *(v7 - 8);
  v1[516] = v8;
  v1[517] = *(v8 + 64);
  v1[518] = swift_task_alloc();
  v1[519] = swift_task_alloc();
  v1[520] = swift_task_alloc();
  v9 = sub_247D1EFC8();
  v1[521] = v9;
  v1[522] = *(v9 - 8);
  v1[523] = swift_task_alloc();
  v1[524] = swift_task_alloc();
  v10 = sub_247D1ECB8();
  v1[525] = v10;
  v1[526] = *(v10 - 8);
  v1[527] = swift_task_alloc();
  sub_247D1FB98();
  v1[528] = swift_task_alloc();
  sub_247D1ECD8();
  v1[529] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v1[530] = swift_task_alloc();
  v1[531] = sub_247D1FEA8();
  v1[532] = sub_247D1FE98();
  v12 = sub_247D1FE38();
  v1[533] = v12;
  v1[534] = v11;

  return MEMORY[0x2822009F8](sub_247C96944, v12, v11);
}

uint64_t sub_247C96944()
{
  v1 = *(v0 + 4240);
  v2 = *(v0 + 4216);
  v3 = *(v0 + 4208);
  v50 = *(v0 + 4200);
  v4 = *(v0 + 4128);
  v5 = *(v0 + 4120);
  v6 = *(v0 + 3936);
  v7 = *(v0 + 3928);
  sub_247D1EF18();
  (*(v4 + 56))(v1, 0, 1, v5);
  v8 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
  swift_beginAccess();
  sub_247CB1E04(v1, v7 + v8, &unk_27EE631E0);
  swift_endAccess();
  sub_247D1FB88();
  *v2 = v6;
  v9 = *MEMORY[0x277CC9120];
  v10 = *(v3 + 104);
  v10(v2, v9, v50);
  sub_247D1EFB8();
  sub_247D1ECE8();
  v11 = sub_247D1FC48();
  v51 = v12;
  v52 = v11;
  sub_247D1FB88();
  *v2 = v6;
  v10(v2, v9, v50);
  sub_247D1EFB8();
  sub_247D1ECE8();
  v13 = sub_247D1FC48();
  v15 = v14;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = objc_allocWithZone(type metadata accessor for SessionInitializingLoadingViewController());
  v18 = sub_247CE7628(v52, v51, v13, v15, sub_247CB1EA4, v16);
  *(v0 + 4280) = v18;
  sub_247D1EF18();
  v19 = v18;
  v20 = sub_247CD0E40();
  sub_247CB18C0(v19, v20);

  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v21 = qword_27EE72D00;
  *(v0 + 4288) = qword_27EE72D00;
  v22 = v21[2];
  swift_retain_n();
  [v22 lock];
  sub_247CAEBBC(v21, &_s19FlowDataProviderKeyON, (v0 + 3536));
  [v22 unlock];
  sub_247C3D044((v0 + 3536), v0 + 3616);

  v23 = v21[2];

  [v23 lock];
  sub_247CAEF98(v21, &_s26ImageUploadDataProviderKeyON, (v0 + 3256));
  [v23 unlock];
  sub_247C3D044((v0 + 3256), v0 + 3456);

  v24 = v21[2];
  [v24 lock];
  sub_247CAF8F8(v21, &_s34DiagnosticTestSuiteDataProviderKeyON, (v0 + 3296));
  v25 = swift_allocObject();
  *(v0 + 4296) = v25;
  [v24 unlock];
  sub_247C3D044((v0 + 3296), v25 + 16);

  v26 = v21[2];
  [v26 lock];
  sub_247CAD9C4(v21, &_s19AnalyticsManagerKeyON, (v0 + 3336));
  v27 = *(v0 + 3928);
  v28 = swift_allocObject();
  *(v0 + 4304) = v28;
  [v26 unlock];
  sub_247C3D044((v0 + 3336), v28 + 16);

  sub_247C2BD10(v0 + 3616, v0 + 3416, &qword_27EE637C8);
  sub_247C3D044((v0 + 3416), v0 + 3376);
  v29 = __swift_project_boxed_opaque_existential_1((v0 + 3376), *(v0 + 3400));
  v30 = (v27 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_configuration);
  v31 = *(v27 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_configuration + 16);
  *(v0 + 2416) = *(v27 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_configuration);
  *(v0 + 2432) = v31;
  v32 = v30[4];
  v33 = v30[5];
  v34 = v30[3];
  *(v0 + 2448) = v30[2];
  *(v0 + 2496) = v33;
  *(v0 + 2480) = v32;
  *(v0 + 2464) = v34;
  v35 = v30[8];
  v36 = v30[9];
  v37 = v30[7];
  *(v0 + 2512) = v30[6];
  *(v0 + 2560) = v36;
  *(v0 + 2544) = v35;
  *(v0 + 2528) = v37;
  v38 = v30[1];
  *(v0 + 2576) = *v30;
  *(v0 + 2592) = v38;
  v39 = v30[4];
  v40 = v30[5];
  v41 = v30[3];
  *(v0 + 2608) = v30[2];
  *(v0 + 2656) = v40;
  *(v0 + 2640) = v39;
  *(v0 + 2624) = v41;
  v42 = v30[8];
  v43 = v30[9];
  v44 = v30[7];
  *(v0 + 2672) = v30[6];
  *(v0 + 2720) = v43;
  *(v0 + 2704) = v42;
  *(v0 + 2688) = v44;
  sub_247C317E0(v0 + 2416, v0 + 2736);
  sub_247D1EFB8();
  v45 = *v29;
  v46 = swift_task_alloc();
  *(v0 + 4312) = v46;
  *v46 = v0;
  v46[1] = sub_247C96F30;
  v47 = *(v0 + 4184);
  v48 = *(v0 + 4112);

  return sub_247C8203C(v48, (v0 + 2576), v47, v45);
}

uint64_t sub_247C96F30()
{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 2576);
  *(*v1 + 4320) = v0;

  (*(v2[522] + 8))(v2[523], v2[521]);
  v5 = *v4;
  if (v0)
  {
    *(v3 + 182) = v4[1];
    *(v3 + 181) = v5;
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    *(v3 + 186) = v4[5];
    *(v3 + 185) = v8;
    *(v3 + 184) = v7;
    *(v3 + 183) = v6;
    v9 = v4[6];
    v10 = v4[7];
    v11 = v4[8];
    *(v3 + 190) = v4[9];
    *(v3 + 189) = v11;
    *(v3 + 188) = v10;
    *(v3 + 187) = v9;
    sub_247C31994((v3 + 362));
    v12 = v3[534];
    v13 = v3[533];
    v14 = sub_247C987F8;
  }

  else
  {
    *(v3 + 192) = v4[1];
    *(v3 + 191) = v5;
    v15 = v4[2];
    v16 = v4[3];
    v17 = v4[4];
    *(v3 + 196) = v4[5];
    *(v3 + 195) = v17;
    *(v3 + 194) = v16;
    *(v3 + 193) = v15;
    v18 = v4[6];
    v19 = v4[7];
    v20 = v4[8];
    *(v3 + 200) = v4[9];
    *(v3 + 199) = v20;
    *(v3 + 198) = v19;
    *(v3 + 197) = v18;
    sub_247C31994((v3 + 382));
    v12 = v3[534];
    v13 = v3[533];
    v14 = sub_247C97148;
  }

  return MEMORY[0x2822009F8](v14, v13, v12);
}

id sub_247C97148()
{
  v1 = *(v0 + 4112);
  v2 = *(v0 + 4096);
  v3 = *(v0 + 4072);
  v4 = *(v0 + 4064);
  v5 = *(v0 + 4056);

  __swift_destroy_boxed_opaque_existential_1(v0 + 3376);
  v6 = *(v2 + 40);
  sub_247C2BD10(v1 + v6, v5, &qword_27EE637C0);
  v7 = *(v3 + 48);
  v8 = v7(v5, 1, v4);
  v9 = *(v0 + 4088);
  if (v8 == 1)
  {
    v10 = *(v0 + 4064);
    v11 = *(v0 + 4056);
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    sub_247D1F188();
    if (v7(v11, 1, v10) != 1)
    {
      sub_247C27100(*(v0 + 4056), &qword_27EE637C0);
    }
  }

  else
  {
    sub_247CB385C(*(v0 + 4056), v9, type metadata accessor for FlowResponse.Product);
  }

  v12 = *(v0 + 4088);
  v13 = *(v0 + 4064);
  v14 = *(v0 + 4048);
  v15 = v12[1];
  v124 = *v12;

  sub_247CB3A88(v12, type metadata accessor for FlowResponse.Product);

  sub_247C2BD10(v1 + v6, v14, &qword_27EE637C0);
  v16 = v7(v14, 1, v13);
  v17 = *(v0 + 4080);
  if (v16 == 1)
  {
    v18 = *(v0 + 4064);
    v19 = *(v0 + 4048);
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v17[2] = 0;
    v17[3] = 0xE000000000000000;
    sub_247D1F188();
    if (v7(v19, 1, v18) != 1)
    {
      sub_247C27100(*(v0 + 4048), &qword_27EE637C0);
    }
  }

  else
  {
    sub_247CB385C(*(v0 + 4048), v17, type metadata accessor for FlowResponse.Product);
  }

  v127 = *(v0 + 4320);
  v20 = *(v0 + 4304);
  v21 = *(v0 + 4288);
  v121 = *(v0 + 4104);
  v122 = *(v0 + 4112);
  v22 = *(v0 + 4080);
  v23 = *(v0 + 4032);
  v24 = *(v0 + 4000);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);

  sub_247CB3A88(v22, type metadata accessor for FlowResponse.Product);

  *(v0 + 1648) = 0;
  *(v0 + 1656) = 1;
  *(v0 + 1664) = 0;
  *(v0 + 1672) = 1;
  *(v0 + 1680) = 0;
  *(v0 + 1688) = 1;
  *(v0 + 1696) = 0u;
  *(v0 + 1712) = 0u;
  *(v0 + 1728) = 0u;
  *(v0 + 1744) = 0u;
  *(v0 + 1760) = 0u;
  *(v0 + 1776) = 0u;
  *(v0 + 1792) = 0u;
  *(v0 + 1808) = 1;
  *(v0 + 1816) = 0u;
  *(v0 + 1832) = 0x74736F6E67616964;
  *(v0 + 1840) = 0xEB00000000736369;
  *(v0 + 1848) = 514;
  *(v0 + 1952) = 0u;
  *(v0 + 1936) = 0u;
  *(v0 + 1920) = 0u;
  *(v0 + 1904) = 0u;
  *(v0 + 1888) = 0u;
  *(v0 + 1872) = 0u;
  *(v0 + 1856) = 0u;
  *(v0 + 1968) = v124;
  *(v0 + 1976) = v15;
  *(v0 + 1984) = v25;
  *(v0 + 1992) = v26;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 0u;
  sub_247C2BD10(v20 + 16, v0 + 3496, &unk_27EE631F0);
  sub_247C3D044((v0 + 3496), v0 + 3216);
  v27 = *(v0 + 3240);
  v28 = *(v0 + 3248);
  __swift_project_boxed_opaque_existential_1((v0 + 3216), v27);
  memcpy((v0 + 832), (v0 + 1648), 0x180uLL);
  *(v0 + 1216) = 1;
  *(v0 + 1224) = 0x6F6C467472617473;
  *(v0 + 1232) = 0xE900000000000077;
  memcpy((v0 + 16), (v0 + 832), 0x198uLL);
  v29 = *(v28 + 8);
  sub_247C3189C(v0 + 1648, v0 + 2032);
  v29(v0 + 16, v27, v28);
  sub_247C318F8(v0 + 832);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3216);
  sub_247CB3A20(v122, v121, type metadata accessor for FlowResponse);
  v30 = MEMORY[0x277D84F90];
  *(v23 + v24[5]) = MEMORY[0x277D84F90];
  *(v23 + v24[6]) = v30;
  v31 = v24[9];
  sub_247D1F478();
  *(v23 + v24[11]) = 1;
  v32 = v21[2];

  [v32 lock];
  sub_247CAE5E4(v21, &_s42AppMetadataStorageConfigurationProviderKeyON, (v0 + 3576));
  if (v127)
  {

    return [v32 unlock];
  }

  else
  {
    v34 = *(v0 + 4104);
    v35 = *(v0 + 4032);
    v36 = *(*(v0 + 4000) + 48);
    [v32 unlock];
    sub_247C3D044((v0 + 3576), v35 + v36);

    v37 = *(v34 + 32);
    if (*(v37 + 16))
    {
      v38 = *(v0 + 4304);
      v104 = *(v0 + 4280);
      v106 = *(v0 + 4296);
      v108 = *(v0 + 4160);
      v113 = *(v0 + 4152);
      v117 = *(v0 + 4144);
      v107 = *(v0 + 4128);
      v110 = *(v0 + 4120);
      v99 = *(v0 + 4112);
      v39 = *(v0 + 4104);
      v40 = *(v0 + 4040);
      v41 = *(v0 + 4032);
      v118 = *(v0 + 4024);
      v103 = *(v0 + 4016);
      v120 = *(v0 + 4008);
      v42 = *(v0 + 4000);
      v114 = *(v0 + 3992);
      v111 = *(v0 + 3984);
      v125 = *(v0 + 3976);
      v112 = *(v0 + 3968);
      v98 = *(v0 + 3960);
      v109 = *(v0 + 3952);
      v131 = *(v0 + 3944);
      v119 = *(v0 + 3928);
      v43 = *(v0 + 2424);
      v44 = *(v0 + 2416);
      v45 = *(type metadata accessor for FlowResponse.Step(0) - 8);
      v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v47 = (v41 + v42[7]);
      *v47 = v44;
      v47[1] = v43;
      sub_247CB385C(v39, v41, type metadata accessor for FlowResponse);
      sub_247CB3A20(v37 + v46, v41 + v42[10], type metadata accessor for FlowResponse.Step);
      memcpy((v41 + v42[8]), (v0 + 1648), 0x180uLL);
      sub_247CB385C(v41, v40, _s5StateVMa);
      sub_247C2BD10(v38 + 16, v0 + 3696, &unk_27EE631F0);
      sub_247C3D044((v0 + 3696), v0 + 3656);
      v48 = *(v0 + 3680);
      v49 = *(v0 + 3688);
      __swift_project_boxed_opaque_existential_1((v0 + 3656), v48);

      v123 = v40;
      sub_247C88620(v0 + 1240);
      *(v0 + 1624) = 1;
      *(v0 + 1632) = 0xD000000000000010;
      *(v0 + 1640) = 0x8000000247D30810;
      memcpy((v0 + 424), (v0 + 1240), 0x198uLL);
      (*(v49 + 8))(v0 + 424, v48, v49);
      sub_247C318F8(v0 + 1240);
      __swift_destroy_boxed_opaque_existential_1(v0 + 3656);
      sub_247D1EF18();
      v130 = sub_247D1FEC8();
      v128 = *(*(v130 - 8) + 56);
      v128(v114, 1, 1, v130);
      sub_247CB3A20(v40, v118, _s5StateVMa);
      v50 = v119;

      v51 = sub_247D1FE98();
      v97 = *(v120 + 80);
      v116 = (v97 + 40) & ~v97;
      v102 = (v116 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      v53 = MEMORY[0x277D85700];
      v52[2] = v51;
      v52[3] = v53;
      v52[4] = v50;
      sub_247CB385C(v118, v52 + v116, _s5StateVMa);
      *(v52 + v102) = v38;
      v54 = sub_247CD082C(0, 0, v114, &unk_247D25DB0, v52);
      sub_247D1EF68();
      v55 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_tasks;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = *&v50[v55];
      *&v50[v55] = 0x8000000000000000;
      sub_247CD7884(v54, v111, isUniquelyReferenced_nonNull_native);
      v115 = *(v109 + 8);
      v115(v111, v131);
      *&v50[v55] = v132;
      swift_endAccess();
      sub_247D1EF68();
      v128(v114, 1, 1, v130);
      sub_247CB3A20(v123, v118, _s5StateVMa);
      v94 = *(v107 + 16);
      v94(v117, v113, v110);
      v100 = v50;

      v95 = sub_247D1FE98();
      v57 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = *(v107 + 80);
      v58 = swift_allocObject();
      *(v58 + 2) = v95;
      *(v58 + 3) = MEMORY[0x277D85700];
      *(v58 + 4) = v54;
      sub_247CB385C(v118, &v58[v116], _s5StateVMa);
      *&v58[v102] = v100;
      *&v58[v57] = v38;
      v96 = *(v107 + 32);
      v96(&v58[(v93 + 8 + v57) & ~v93], v117, v110);
      v59 = sub_247CD082C(0, 0, v114, &unk_247D25DC0, v58);
      swift_beginAccess();
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v133 = *&v50[v55];
      *&v50[v55] = 0x8000000000000000;
      sub_247CD7884(v59, v111, v60);
      *&v50[v55] = v133;
      swift_endAccess();
      sub_247D1EF68();
      v128(v114, 1, 1, v130);
      (*(v109 + 16))(v112, v111, v131);
      sub_247CB3A20(v123, v118, _s5StateVMa);
      v94(v117, v108, v110);
      v105 = v104;
      v101 = v100;
      v61 = sub_247D1FE98();
      v62 = (*(v109 + 80) + 40) & ~*(v109 + 80);
      v63 = (v98 + v97 + v62) & ~v97;
      v64 = (v103 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 2) = v61;
      *(v65 + 3) = MEMORY[0x277D85700];
      *(v65 + 4) = v101;
      (*(v109 + 32))(&v65[v62], v112, v131);
      sub_247CB385C(v118, &v65[v63], _s5StateVMa);
      *&v65[v64] = v105;
      v96(&v65[(v64 + v93 + 8) & ~v93], v117, v110);
      v66 = sub_247CD082C(0, 0, v114, &unk_247D25DD0, v65);
      swift_beginAccess();
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v134 = *&v50[v55];
      *&v50[v55] = 0x8000000000000000;
      sub_247CD7884(v66, v125, v67);
      v115(v125, v131);
      *&v50[v55] = v134;
      swift_endAccess();
      sub_247D1EF68();
      v128(v114, 1, 1, v130);
      sub_247CB3A20(v123, v118, _s5StateVMa);
      v68 = v101;

      v69 = sub_247D1FE98();
      v70 = swift_allocObject();
      v70[2] = v69;
      v70[3] = MEMORY[0x277D85700];
      v70[4] = v106;
      sub_247CB385C(v118, v70 + v116, _s5StateVMa);
      *(v70 + v102) = v68;
      v71 = sub_247CD082C(0, 0, v114, &unk_247D25DE0, v70);
      swift_beginAccess();
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v135 = *&v50[v55];
      *&v50[v55] = 0x8000000000000000;
      sub_247CD7884(v71, v125, v72);
      v115(v125, v131);
      *&v50[v55] = v135;
      swift_endAccess();
      sub_247D1EF68();
      v128(v114, 1, 1, v130);
      sub_247CB3A20(v123, v118, _s5StateVMa);

      v73 = sub_247D1FE98();
      v74 = swift_allocObject();
      v74[2] = v73;
      v74[3] = MEMORY[0x277D85700];
      v74[4] = v38;
      sub_247CB385C(v118, v74 + v116, _s5StateVMa);
      v75 = sub_247CD082C(0, 0, v114, &unk_247D25DF0, v74);
      swift_beginAccess();
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v136 = *&v50[v55];
      *&v50[v55] = 0x8000000000000000;
      sub_247CD7884(v75, v125, v76);
      v115(v125, v131);
      *&v50[v55] = v136;
      swift_endAccess();
      sub_247D1EF68();
      v128(v114, 1, 1, v130);
      sub_247CB3A20(v123, v118, _s5StateVMa);

      v77 = sub_247D1FE98();
      v78 = swift_allocObject();
      v78[2] = v77;
      v78[3] = MEMORY[0x277D85700];
      v78[4] = v38;
      sub_247CB385C(v118, v78 + v116, _s5StateVMa);
      v79 = sub_247CD082C(0, 0, v114, &unk_247D25E00, v78);
      swift_beginAccess();
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v137 = *&v50[v55];
      *&v50[v55] = 0x8000000000000000;
      sub_247CD7884(v79, v125, v80);
      v115(v125, v131);
      *&v50[v55] = v137;
      swift_endAccess();
      sub_247D1EF68();
      v128(v114, 1, 1, v130);
      sub_247CB3A20(v123, v118, _s5StateVMa);

      v81 = sub_247D1FE98();
      v82 = swift_allocObject();
      v82[2] = v81;
      v82[3] = MEMORY[0x277D85700];
      v82[4] = v38;
      sub_247CB385C(v118, v82 + v116, _s5StateVMa);
      v83 = sub_247CD082C(0, 0, v114, &unk_247D25E10, v82);
      swift_beginAccess();
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v138 = *&v50[v55];
      *&v50[v55] = 0x8000000000000000;
      sub_247CD7884(v83, v125, v84);
      v115(v125, v131);
      *&v50[v55] = v138;
      swift_endAccess();

      v115(v111, v131);
      v85 = *(v107 + 8);
      v85(v113, v110);
      sub_247CB3A88(v123, _s5StateVMa);
      sub_247CB3A88(v99, type metadata accessor for FlowResponse);
      sub_247C27100(v0 + 3456, &unk_27EE63020);
      sub_247C27100(v0 + 3616, &qword_27EE637C8);
      v85(v108, v110);
    }

    else
    {
      v87 = *(v0 + 4280);
      v88 = *(v0 + 4128);
      v89 = *(v0 + 4120);
      v90 = *(v0 + 4112);
      v126 = *(v0 + 4160);
      v129 = *(v0 + 4104);
      sub_247C319E8(v0 + 1648);
      sub_247C89FC4();
      swift_allocError();
      *v91 = xmmword_247D25C00;
      *(v91 + 16) = 128;
      swift_willThrow();

      sub_247CB3A88(v90, type metadata accessor for FlowResponse);
      sub_247C27100(v0 + 3456, &unk_27EE63020);
      sub_247C27100(v0 + 3616, &qword_27EE637C8);
      (*(v88 + 8))(v126, v89);
      sub_247CB3A88(v129, type metadata accessor for FlowResponse);
      v92 = sub_247D1F488();
      (*(*(v92 - 8) + 8))(v23 + v31, v92);
      sub_247C27100(v35 + v36, &qword_27EE62FB0);
    }

    v86 = *(v0 + 8);

    return v86();
  }
}

uint64_t sub_247C987F8()
{
  v1 = v0[535];
  v2 = v0[520];
  v3 = v0[516];
  v4 = v0[515];

  sub_247C27100((v0 + 432), &unk_27EE63020);
  sub_247C27100((v0 + 452), &qword_27EE637C8);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 422));

  v5 = v0[1];

  return v5();
}

uint64_t sub_247C98A1C(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_247D1FEC8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_247D1FEA8();

  sub_247C5F4DC(a1, a2);
  v10 = sub_247D1FE98();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a3;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  sub_247CD0B2C(0, 0, v8, &unk_247D25EA8, v11);
}

uint64_t sub_247C98B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 152) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  *(v6 + 64) = _s15DiagnosticStyleOMa(0);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = sub_247D1FEA8();
  *(v6 + 88) = sub_247D1FE98();
  v8 = sub_247D1FE38();
  *(v6 + 96) = v8;
  *(v6 + 104) = v7;

  return MEMORY[0x2822009F8](sub_247C98C34, v8, v7);
}

uint64_t sub_247C98C34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    *(v0 + 120) = sub_247D1FE98();
    v3 = sub_247D1FE38();
    *(v0 + 128) = v3;
    *(v0 + 136) = v2;

    return MEMORY[0x2822009F8](sub_247C98D3C, v3, v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 112) == 0;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_247C98D3C()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_247C98DE8;
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 152);

  return sub_247C8C6E8(v2, v3, v4);
}

uint64_t sub_247C98DE8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_247C98F40, v4, v3);
}

uint64_t sub_247C98F40()
{
  v1 = v0[14];

  v2 = v0[12];
  v3 = v0[13];

  return MEMORY[0x2822009F8](sub_247C98FA8, v2, v3);
}

uint64_t sub_247C98FA8()
{

  **(v0 + 40) = *(v0 + 112) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C99024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[178] = a6;
  v6[177] = a5;
  v6[176] = a4;
  v6[179] = _s15DiagnosticStyleOMa(0);
  v6[180] = swift_task_alloc();
  v7 = sub_247D1EF48();
  v6[181] = v7;
  v6[182] = *(v7 - 8);
  v6[183] = swift_task_alloc();
  v6[184] = swift_task_alloc();
  v6[185] = sub_247D1FEA8();
  v6[186] = sub_247D1FE98();
  v9 = sub_247D1FE38();
  v6[187] = v9;
  v6[188] = v8;

  return MEMORY[0x2822009F8](sub_247C99164, v9, v8);
}

uint64_t sub_247C99164()
{
  v4 = *(v0 + 1408);
  sub_247D1EF18();
  *(v0 + 1512) = sub_247D1FE98();
  v1 = swift_task_alloc();
  *(v0 + 1520) = v1;
  *(v1 + 16) = v4;
  v2 = swift_task_alloc();
  *(v0 + 1528) = v2;
  *v2 = v0;
  v2[1] = sub_247C99274;

  return MEMORY[0x282200740]();
}

uint64_t sub_247C99274()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {
    v3 = *(v2 + 1504);
    v4 = *(v2 + 1496);
    v5 = sub_247C99450;
  }

  else
  {

    v3 = *(v2 + 1504);
    v4 = *(v2 + 1496);
    v5 = sub_247C993A4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247C993A4()
{
  v1 = v0[184];
  v2 = v0[182];
  v3 = v0[181];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_247C99450()
{
  v39 = v0;
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1456);
  v34 = *(v0 + 1448);
  v3 = *(v0 + 1424);

  sub_247C2BD10(v3 + 16, v0 + 1256, &unk_27EE631F0);
  sub_247C3D044((v0 + 1256), v0 + 1216);
  v4 = *(v0 + 1240);
  v5 = *(v0 + 1248);
  __swift_project_boxed_opaque_existential_1((v0 + 1216), v4);
  sub_247C88620(v0 + 832);
  *(v0 + 1368) = *(v0 + 880);
  *v36 = *(v0 + 841);
  *&v36[15] = *(v0 + 856);
  LODWORD(v37) = *(v0 + 873);
  *(&v37 + 3) = *(v0 + 876);
  memcpy(__dst, (v0 + 896), sizeof(__dst));
  swift_getErrorValue();
  v6 = sub_247D205B8();
  v8 = v7;
  sub_247C27100(v0 + 1368, &unk_27EE63200);
  swift_getErrorValue();
  v9 = sub_247CC595C(*(v0 + 1328));
  sub_247D1EF18();
  sub_247D1EE88();
  v11 = v10;
  v12 = *(v2 + 8);
  *(v0 + 1544) = v12;
  *(v0 + 1552) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = v34;
  v35 = v12;
  v12(v1, v13);
  *(v0 + 424) = v11;
  *(v0 + 432) = 0;
  *(v0 + 433) = *v36;
  *(v0 + 448) = *&v36[15];
  *(v0 + 456) = v9;
  *(v0 + 464) = 0;
  *(v0 + 465) = v37;
  *(v0 + 468) = *(&v37 + 3);
  *(v0 + 472) = v6;
  *(v0 + 480) = v8;
  memcpy((v0 + 488), __dst, 0x140uLL);
  *(v0 + 808) = 1;
  *(v0 + 816) = 0xD000000000000015;
  *(v0 + 824) = 0x8000000247D308D0;
  memcpy((v0 + 16), (v0 + 424), 0x198uLL);
  (*(v5 + 8))(v0 + 16, v4, v5);
  sub_247C318F8(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1216);
  swift_getErrorValue();
  if (sub_247CC2560(*(v0 + 1352), *(v0 + 1360)))
  {

    v14 = sub_247D1F468();
    v15 = sub_247D20058();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1536);
    v18 = *(v0 + 1472);
    v19 = *(v0 + 1448);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_247C1F000, v14, v15, "Begin session timeout canceled.", v20, 2u);
      MEMORY[0x24C1B9080](v20, -1, -1);
    }

    else
    {
    }

    v35(v18, v19);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v21 = *(v0 + 1536);
    v22 = v21;
    v23 = sub_247D1F468();
    v24 = sub_247D20038();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 1536);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v25;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_247C1F000, v23, v24, "Failed to connect to peer device: %@", v26, 0xCu);
      sub_247C27100(v27, &qword_27EE62EE0);
      MEMORY[0x24C1B9080](v27, -1, -1);
      MEMORY[0x24C1B9080](v26, -1, -1);
    }

    *(v0 + 1560) = sub_247D1FE98();
    v31 = sub_247D1FE38();
    *(v0 + 1568) = v31;
    *(v0 + 1576) = v30;

    return MEMORY[0x2822009F8](sub_247C9996C, v31, v30);
  }
}

uint64_t sub_247C9996C()
{
  v1 = v0[192];
  v2 = v0[180];
  v3 = v0[177];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247CB3A20(v3, v2, _s5StateVMa);
  *(v2 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[198] = v6;
  *v6 = v0;
  v6[1] = sub_247C99A80;
  v7 = v0[180];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247C99A80()
{
  v1 = *v0;
  v2 = *(*v0 + 1440);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 1576);
  v4 = *(v1 + 1568);

  return MEMORY[0x2822009F8](sub_247C99BD8, v4, v3);
}

uint64_t sub_247C99BD8()
{

  v1 = *(v0 + 1504);
  v2 = *(v0 + 1496);

  return MEMORY[0x2822009F8](sub_247C99C40, v2, v1);
}

uint64_t sub_247C99C40()
{
  v1 = v0[193];
  v2 = v0[192];
  v3 = v0[184];
  v4 = v0[181];

  v1(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_247C99D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(_s5StateVMa() - 8);
  v4[5] = v5;
  v4[6] = *(v5 + 64);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  v4[8] = swift_task_alloc();
  v4[9] = sub_247D1FEA8();
  v4[10] = sub_247D1FE98();
  v7 = sub_247D1FE38();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x2822009F8](sub_247C99E3C, v7, v6);
}

uint64_t sub_247C99E3C()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v16 = v3;
  v5 = v0[3];
  v6 = sub_247D1FEC8();
  v17 = *(*(v6 - 8) + 56);
  v17(v1, 1, 1, v6);
  sub_247CB3A20(v3, v2, _s5StateVMa);
  v7 = *(v4 + 80);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  sub_247CB385C(v2, v8 + ((v7 + 40) & ~v7), _s5StateVMa);
  v9 = v5;
  sub_247C9AD28(v1, &unk_247D25E58, v8);
  sub_247C27100(v1, &qword_27EE62FF0);
  v17(v1, 1, 1, v6);
  sub_247CB3A20(v16, v2, _s5StateVMa);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_247CB385C(v2, v10 + ((v7 + 32) & ~v7), _s5StateVMa);
  sub_247C9AD28(v1, &unk_247D25E68, v10);
  sub_247C27100(v1, &qword_27EE62FF0);
  v11 = sub_247D1FE98();
  v0[13] = v11;
  v12 = swift_task_alloc();
  v0[14] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63810);
  *v12 = v0;
  v12[1] = sub_247C9A0E0;
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x2822004D0](v0 + 16, v11, v14, v13);
}

uint64_t sub_247C9A0E0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_247C9A2B8;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_247C9A1FC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247C9A1FC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
  sub_247D1FF78();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C9A2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C9A344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[338] = a5;
  v5[337] = a4;
  v6 = sub_247D1EF48();
  v5[339] = v6;
  v5[340] = *(v6 - 8);
  v5[341] = swift_task_alloc();
  v5[342] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247C9A414, 0, 0);
}

uint64_t sub_247C9A414()
{
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE72D00;
  v2 = *(qword_27EE72D00 + 16);

  [v2 lock];
  sub_247CAD9C4(v1, &_s19AnalyticsManagerKeyON, v0 + 307);
  v3 = v0[337];
  [v2 unlock];
  sub_247C3D044((v0 + 307), (v0 + 302));

  sub_247D1EF18();
  v0[343] = *(v3 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_peerDeviceSession);
  v4 = swift_task_alloc();
  v0[344] = v4;
  *v4 = v0;
  v4[1] = sub_247C9A5A4;

  return sub_247CD12F0();
}

uint64_t sub_247C9A5A4()
{
  *(*v1 + 2760) = v0;

  if (v0)
  {
    v2 = sub_247C9ABC4;
  }

  else
  {
    v2 = sub_247C9A6B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247C9A6B8()
{
  v13 = v0;
  v1 = *(v0 + 2736);
  v2 = *(v0 + 2728);
  v3 = *(v0 + 2720);
  v4 = *(v0 + 2712);
  sub_247C2BD10(v0 + 2416, v0 + 2536, &unk_27EE631F0);
  sub_247C3D044((v0 + 2536), v0 + 2496);
  v5 = *(v0 + 2520);
  v6 = *(v0 + 2528);
  __swift_project_boxed_opaque_existential_1((v0 + 2496), v5);
  sub_247C88620(v0 + 2032);
  memcpy(__dst, (v0 + 2041), sizeof(__dst));
  sub_247D1EF18();
  sub_247D1EE88();
  v8 = v7;
  v9 = *(v3 + 8);
  *(v0 + 2768) = v9;
  *(v0 + 2776) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  *(v0 + 832) = v8;
  *(v0 + 840) = 0;
  memcpy((v0 + 841), __dst, 0x177uLL);
  *(v0 + 1216) = 1;
  *(v0 + 1224) = 0xD000000000000010;
  *(v0 + 1232) = 0x8000000247D308F0;
  memcpy((v0 + 16), (v0 + 832), 0x198uLL);
  (*(v6 + 8))(v0 + 16, v5, v6);
  sub_247C318F8(v0 + 832);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2496);
  sub_247D1EF18();
  (*(v3 + 40))(v1, v2, v4);
  *(v0 + 2576) = 0u;
  *(v0 + 2592) = 0u;
  *(v0 + 2608) = 0;
  v10 = swift_task_alloc();
  *(v0 + 2784) = v10;
  *v10 = v0;
  v10[1] = sub_247C9A8E0;

  return sub_247CD1644(0, v0 + 2576);
}

uint64_t sub_247C9A8E0()
{
  *(*v1 + 2792) = v0;

  if (v0)
  {
    v2 = sub_247C9AC74;
  }

  else
  {
    v2 = sub_247C9A9F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247C9A9F4()
{
  v12 = v0;
  v1 = *(v0 + 2768);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2728);
  v4 = *(v0 + 2712);
  sub_247C2BD10(v0 + 2416, v0 + 2656, &unk_27EE631F0);
  sub_247C3D044((v0 + 2656), v0 + 2616);
  v5 = *(v0 + 2640);
  v6 = *(v0 + 2648);
  __swift_project_boxed_opaque_existential_1((v0 + 2616), v5);
  sub_247C88620(v0 + 1648);
  memcpy(__dst, (v0 + 1657), sizeof(__dst));
  sub_247D1EF18();
  sub_247D1EE88();
  v8 = v7;
  v1(v3, v4);
  *(v0 + 1240) = v8;
  *(v0 + 1248) = 0;
  memcpy((v0 + 1249), __dst, 0x177uLL);
  *(v0 + 1624) = 1;
  *(v0 + 1632) = 0xD00000000000001CLL;
  *(v0 + 1640) = 0x8000000247D30910;
  memcpy((v0 + 424), (v0 + 1240), 0x198uLL);
  (*(v6 + 8))(v0 + 424, v5, v6);
  sub_247C318F8(v0 + 1240);
  sub_247C27100(v0 + 2416, &unk_27EE631F0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2616);
  v1(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_247C9ABC4()
{
  v1 = v0[340];
  sub_247C27100((v0 + 302), &unk_27EE631F0);
  (*(v1 + 8))(v0[342], v0[339]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_247C9AC74()
{
  sub_247C27100(v0 + 2416, &unk_27EE631F0);
  (*(v0 + 2768))(*(v0 + 2736), *(v0 + 2712));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C9AD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_247C2BD10(a1, v18 - v8, &qword_27EE62FF0);
  v10 = sub_247D1FEC8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_247C27100(v9, &qword_27EE62FF0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_247D1FE38();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_247D1FEB8();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_247C9AF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_247D20368();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247C9AFD8, 0, 0);
}

uint64_t sub_247C9AFD8()
{
  sub_247C58164(0xD000000000000015, 0x8000000247D2EF80);
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_247C9B0DC;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247C9B0DC()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_247C9B2E4;
  }

  else
  {
    v5 = sub_247C9B24C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_247C9B24C()
{
  sub_247C3EF40();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C9B2E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C9B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[179] = a8;
  v8[178] = a7;
  v8[177] = a6;
  v8[176] = a5;
  v8[180] = _s15DiagnosticStyleOMa(0);
  v8[181] = swift_task_alloc();
  v9 = sub_247D1EF48();
  v8[182] = v9;
  v8[183] = *(v9 - 8);
  v8[184] = swift_task_alloc();
  v10 = sub_247D20368();
  v8[185] = v10;
  v8[186] = *(v10 - 8);
  v8[187] = swift_task_alloc();
  v8[188] = sub_247D1FEA8();
  v8[189] = sub_247D1FE98();
  v11 = swift_task_alloc();
  v8[190] = v11;
  *v11 = v8;
  v11[1] = sub_247C9B4FC;

  return MEMORY[0x282200460]();
}

uint64_t sub_247C9B4FC()
{
  v1 = *v0;

  v3 = sub_247D1FE38();
  *(v1 + 1528) = v3;
  *(v1 + 1536) = v2;

  return MEMORY[0x2822009F8](sub_247C9B644, v3, v2);
}

uint64_t sub_247C9B644()
{
  sub_247C58164(0xD000000000000026, 0x8000000247D2EF50);
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 1544) = v4;
  *v4 = v0;
  v4[1] = sub_247C9B748;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247C9B748()
{
  v2 = *v1;
  v3 = *(*v1 + 1496);
  v4 = *(*v1 + 1488);
  v5 = *(*v1 + 1480);
  *(*v1 + 1552) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 1536);
  v7 = *(v2 + 1528);
  if (v0)
  {
    v8 = sub_247C9BDD0;
  }

  else
  {
    v8 = sub_247C9B8E0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_247C9B8E0()
{
  v31 = v0;
  sub_247C3EF40();
  v1 = swift_allocError();
  *v2 = 5;
  swift_willThrow();
  *(v0 + 1560) = v1;
  swift_getErrorValue();
  if (sub_247CC2560(*(v0 + 1304), *(v0 + 1312)))
  {

    v3 = sub_247D1F468();
    v4 = sub_247D20058();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_247C1F000, v3, v4, "Begin session timeout canceled.", v5, 2u);
      MEMORY[0x24C1B9080](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 1472);
    v9 = *(v0 + 1464);
    v27 = *(v0 + 1456);
    sub_247C2BD10(*(v0 + 1424) + 16, v0 + 1256, &unk_27EE631F0);
    sub_247C3D044((v0 + 1256), v0 + 1216);
    v10 = *(v0 + 1240);
    v11 = *(v0 + 1248);
    __swift_project_boxed_opaque_existential_1((v0 + 1216), v10);
    sub_247C88620(v0 + 832);
    *(v0 + 1368) = *(v0 + 880);
    *v28 = *(v0 + 841);
    *&v28[15] = *(v0 + 856);
    LODWORD(v29) = *(v0 + 873);
    *(&v29 + 3) = *(v0 + 876);
    memcpy(__dst, (v0 + 896), sizeof(__dst));
    swift_getErrorValue();
    v12 = sub_247D205B8();
    v14 = v13;
    sub_247C27100(v0 + 1368, &unk_27EE63200);
    swift_getErrorValue();
    v15 = sub_247CC595C(*(v0 + 1352));
    sub_247D1EF18();
    sub_247D1EE88();
    v17 = v16;
    (*(v9 + 8))(v8, v27);
    *(v0 + 424) = v17;
    *(v0 + 432) = 0;
    *(v0 + 433) = *v28;
    *(v0 + 448) = *&v28[15];
    *(v0 + 456) = v15;
    *(v0 + 464) = 0;
    *(v0 + 465) = v29;
    *(v0 + 468) = *(&v29 + 3);
    *(v0 + 472) = v12;
    *(v0 + 480) = v14;
    memcpy((v0 + 488), __dst, 0x140uLL);
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000015;
    *(v0 + 824) = 0x8000000247D308B0;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v11 + 8))(v0 + 16, v10, v11);
    sub_247C318F8(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1216);
    v18 = v1;
    v19 = sub_247D1F468();
    v20 = sub_247D20038();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_247C1F000, v19, v20, "Begin session timeout failed: %@", v21, 0xCu);
      sub_247C27100(v22, &qword_27EE62EE0);
      MEMORY[0x24C1B9080](v22, -1, -1);
      MEMORY[0x24C1B9080](v21, -1, -1);
    }

    *(v0 + 1568) = sub_247D1FE98();
    v26 = sub_247D1FE38();
    *(v0 + 1576) = v26;
    *(v0 + 1584) = v25;

    return MEMORY[0x2822009F8](sub_247C9C294, v26, v25);
  }
}

uint64_t sub_247C9BDD0()
{
  v30 = v0;
  v1 = *(v0 + 1552);
  *(v0 + 1560) = v1;
  swift_getErrorValue();
  if (sub_247CC2560(*(v0 + 1304), *(v0 + 1312)))
  {

    v2 = sub_247D1F468();
    v3 = sub_247D20058();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_247C1F000, v2, v3, "Begin session timeout canceled.", v4, 2u);
      MEMORY[0x24C1B9080](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 1472);
    v8 = *(v0 + 1464);
    v26 = *(v0 + 1456);
    sub_247C2BD10(*(v0 + 1424) + 16, v0 + 1256, &unk_27EE631F0);
    sub_247C3D044((v0 + 1256), v0 + 1216);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1248);
    __swift_project_boxed_opaque_existential_1((v0 + 1216), v9);
    sub_247C88620(v0 + 832);
    *(v0 + 1368) = *(v0 + 880);
    *v27 = *(v0 + 841);
    *&v27[15] = *(v0 + 856);
    LODWORD(v28) = *(v0 + 873);
    *(&v28 + 3) = *(v0 + 876);
    memcpy(__dst, (v0 + 896), sizeof(__dst));
    swift_getErrorValue();
    v11 = sub_247D205B8();
    v13 = v12;
    sub_247C27100(v0 + 1368, &unk_27EE63200);
    swift_getErrorValue();
    v14 = sub_247CC595C(*(v0 + 1352));
    sub_247D1EF18();
    sub_247D1EE88();
    v16 = v15;
    (*(v8 + 8))(v7, v26);
    *(v0 + 424) = v16;
    *(v0 + 432) = 0;
    *(v0 + 433) = *v27;
    *(v0 + 448) = *&v27[15];
    *(v0 + 456) = v14;
    *(v0 + 464) = 0;
    *(v0 + 465) = v28;
    *(v0 + 468) = *(&v28 + 3);
    *(v0 + 472) = v11;
    *(v0 + 480) = v13;
    memcpy((v0 + 488), __dst, 0x140uLL);
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000015;
    *(v0 + 824) = 0x8000000247D308B0;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v10 + 8))(v0 + 16, v9, v10);
    sub_247C318F8(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1216);
    v17 = v1;
    v18 = sub_247D1F468();
    v19 = sub_247D20038();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_247C1F000, v18, v19, "Begin session timeout failed: %@", v20, 0xCu);
      sub_247C27100(v21, &qword_27EE62EE0);
      MEMORY[0x24C1B9080](v21, -1, -1);
      MEMORY[0x24C1B9080](v20, -1, -1);
    }

    *(v0 + 1568) = sub_247D1FE98();
    v25 = sub_247D1FE38();
    *(v0 + 1576) = v25;
    *(v0 + 1584) = v24;

    return MEMORY[0x2822009F8](sub_247C9C294, v25, v24);
  }
}

uint64_t sub_247C9C294()
{
  v1 = v0[195];
  v2 = v0[181];
  v3 = v0[176];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247CB3A20(v3, v2, _s5StateVMa);
  *(v2 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[199] = v6;
  *v6 = v0;
  v6[1] = sub_247C9C3A8;
  v7 = v0[181];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247C9C3A8()
{
  v1 = *v0;
  v2 = *(*v0 + 1448);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 1584);
  v4 = *(v1 + 1576);

  return MEMORY[0x2822009F8](sub_247C9C500, v4, v3);
}

uint64_t sub_247C9C500()
{

  v1 = *(v0 + 1536);
  v2 = *(v0 + 1528);

  return MEMORY[0x2822009F8](sub_247C9C568, v2, v1);
}

uint64_t sub_247C9C568()
{
  v1 = *(v0 + 1560);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C9C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v8[14] = _s15DiagnosticStyleOMa(0);
  v8[15] = swift_task_alloc();
  v8[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637E8);
  v8[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637F0);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = sub_247D1FEA8();
  v8[22] = sub_247D1FE98();
  v11 = sub_247D1FE38();
  v8[23] = v11;
  v8[24] = v10;

  return MEMORY[0x2822009F8](sub_247C9C76C, v11, v10);
}

uint64_t sub_247C9C76C()
{
  v2 = v0[16];
  v1 = v0[17];
  sub_247C2BD10(*(v0[9] + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_peerDeviceSession) + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_commandReceivedStream, v1, &qword_27EE637E8);
  v3 = *(v2 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637F8);
  sub_247D1FEF8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63800);
  (*(*(v5 - 8) + 8))(v1 + v3, v5);
  (*(*(v4 - 8) + 8))(v1, v4);
  v6 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_log;
  v0[25] = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_tasks;
  v0[26] = v6;
  v7 = sub_247D1FE98();
  v0[27] = v7;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_247C9C92C;
  v9 = v0[18];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 8, v7, v10, v9);
}

uint64_t sub_247C9C92C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_247C9CA70, v3, v2);
}

uint64_t sub_247C9CA70()
{
  v1 = v0[8];
  v0[29] = v1;
  if (v1)
  {
    if (v1 == 5)
    {
      (*(v0[19] + 8))(v0[20], v0[18]);

      v2 = v0[1];

      return v2();
    }
  }

  else
  {
    v4 = v0[25];
    v5 = v0[9];
    swift_beginAccess();
    if (*(*(v5 + v4) + 16) && (sub_247D15F30(v0[10]), (v6 & 1) != 0))
    {
      swift_endAccess();

      sub_247D1FF28();
    }

    else
    {
      swift_endAccess();
    }

    v7 = v0[10];
    swift_beginAccess();
    sub_247C9D38C(v7);
    swift_endAccess();
  }

  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_247C9CC64;
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];

  return sub_247C9D454(v1, v11, v9, &off_2859DC500, v10);
}

uint64_t sub_247C9CC64()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  *(*v1 + 248) = v0;

  sub_247CB3AE8(v3);
  v4 = *(v2 + 192);
  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_247C9CE78;
  }

  else
  {
    v6 = sub_247C9CDBC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_247C9CDBC()
{
  v1 = sub_247D1FE98();
  v0[27] = v1;
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_247C9C92C;
  v3 = v0[18];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 8, v1, v4, v3);
}

uint64_t sub_247C9CE78()
{
  v1 = v0[31];
  v2 = v1;
  v3 = sub_247D1F468();
  v4 = sub_247D20038();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_247C1F000, v3, v4, "Failed to send command to peer device: %@", v6, 0xCu);
    sub_247C27100(v7, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v7, -1, -1);
    MEMORY[0x24C1B9080](v6, -1, -1);
  }

  v0[32] = sub_247D1FE98();
  v11 = sub_247D1FE38();
  v0[33] = v11;
  v0[34] = v10;

  return MEMORY[0x2822009F8](sub_247C9CFFC, v11, v10);
}

uint64_t sub_247C9CFFC()
{
  v1 = v0[31];
  v2 = v0[15];
  v3 = v0[11];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247CB3A20(v3, v2, _s5StateVMa);
  *(v2 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_247C9D10C;
  v7 = v0[15];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247C9D10C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_247C9D264, v4, v3);
}

uint64_t sub_247C9D264()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x2822009F8](sub_247C9D2C8, v1, v2);
}

uint64_t sub_247C9D2C8()
{
  v1 = sub_247D1FE98();
  *(v0 + 216) = v1;
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_247C9C92C;
  v3 = *(v0 + 144);
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 64, v1, v4, v3);
}

uint64_t sub_247C9D38C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_247D15F30(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_247CB1640();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_247D1EF78();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_247CB0BD0(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_247C9D454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[42] = a5;
  v6[43] = v5;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63228);
  v6[45] = swift_task_alloc();
  v7 = type metadata accessor for FlowResponse.Step.HiddenAction(0);
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v8 = type metadata accessor for FlowResponse.Step(0);
  v6[49] = v8;
  v6[50] = *(v8 - 8);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v9 = sub_247D20368();
  v6[56] = v9;
  v6[57] = *(v9 - 8);
  v6[58] = swift_task_alloc();
  v10 = sub_247D1EF48();
  v6[59] = v10;
  v6[60] = *(v10 - 8);
  v6[61] = swift_task_alloc();
  v11 = _s5StateVMa();
  v6[62] = v11;
  v6[63] = *(v11 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = sub_247D1FEA8();
  v6[70] = sub_247D1FE98();
  v13 = sub_247D1FE38();
  v6[71] = v13;
  v6[72] = v12;

  return MEMORY[0x2822009F8](sub_247C9D798, v13, v12);
}

uint64_t sub_247C9D798()
{
  v147 = v0;
  v1 = sub_247CD0E40();
  v2 = [v1 visibleViewController];

  if (v2)
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = *(v0 + 544);
      v6 = *(v0 + 536);
      (*(v4 + 8))(ObjectType, v4);

      sub_247CB385C(v6, v5, _s5StateVMa);
      goto LABEL_6;
    }
  }

  sub_247CB3A20(*(v0 + 312), *(v0 + 544), _s5StateVMa);
LABEL_6:
  v7 = *(v0 + 304);
  *(v0 + 584) = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_log;
  sub_247CB3B50(v7);
  v8 = sub_247D1F468();
  v9 = sub_247D20058();
  sub_247CB3AF8(v7);
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = *(v0 + 304);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v146[0] = v12;
  *v11 = 136446210;
  if (v10 <= 1)
  {
    v13 = 0xEC0000006E6F6973;
    if (!v10)
    {
      v14 = 0x7365536E69676562;
      goto LABEL_19;
    }

    if (v10 == 1)
    {
      v14 = 0x7365537972746572;
      goto LABEL_19;
    }

LABEL_18:
    v13 = 0xEE00656475746974;
    v14 = 0x7441656369766564;
    goto LABEL_19;
  }

  if (v10 == 2)
  {
    v14 = 0xD000000000000010;
    v13 = 0x8000000247D2E0F0;
    goto LABEL_19;
  }

  if (v10 == 3)
  {
    v13 = 0xED00006172656D61;
    v14 = 0x4365726170657270;
    goto LABEL_19;
  }

  if (v10 != 4)
  {
    goto LABEL_18;
  }

  v13 = 0x8000000247D2E0D0;
  v14 = 0xD000000000000013;
LABEL_19:
  v15 = sub_247CB03B4(v14, v13, v146);

  *(v11 + 4) = v15;
  _os_log_impl(&dword_247C1F000, v8, v9, "Handling command: %{public}s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v12);
  MEMORY[0x24C1B9080](v12, -1, -1);
  MEMORY[0x24C1B9080](v11, -1, -1);
LABEL_20:

  v19 = *(v0 + 304);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v40 = *(v0 + 496);
      v41 = *(v0 + 504);
      v42 = *(v0 + 352);
      sub_247CB3A20(*(v0 + 544), v42, _s5StateVMa);
      (*(v41 + 56))(v42, 0, 1, v40);
      sub_247C250C8();
      v43 = swift_allocError();
      *(v0 + 648) = v43;
      *v44 = xmmword_247D22CB0;
      *(v44 + 16) = 0x8000000247D2D8D0;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0xE000000000000000;
      v45 = swift_task_alloc();
      *(v0 + 656) = v45;
      *v45 = v0;
      v45[1] = sub_247C9FA9C;
      v24 = *(v0 + 352);
      v25 = v43;
      goto LABEL_37;
    }

    if (v19 != 3)
    {
      if (v19 == 4)
      {
        v20 = *(v0 + 496);
        v21 = *(v0 + 504);
        v22 = *(v0 + 352);
        sub_247CB3A20(*(v0 + 544), v22, _s5StateVMa);
        (*(v21 + 56))(v22, 0, 1, v20);
        v23 = swift_task_alloc();
        *(v0 + 664) = v23;
        *v23 = v0;
        v23[1] = sub_247C9FD60;
        v24 = *(v0 + 352);
        v25 = 0;
LABEL_37:

        return sub_247C9457C(v24, v25);
      }

      goto LABEL_57;
    }

    v47 = *(v0 + 544);

    v48 = *(v47 + 32);
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = *(v0 + 392);
      v52 = *(v0 + 400);
      v53 = v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      while (1)
      {
        if (v50 >= *(v48 + 16))
        {
          __break(1u);
          goto LABEL_116;
        }

        sub_247CB3A20(v53 + *(v52 + 72) * v50, *(v0 + 408), type metadata accessor for FlowResponse.Step);
        sub_247D1FE98();
        sub_247D1FE38();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v54 = *(*(v0 + 408) + *(v51 + 20));
        swift_beginAccess();
        v55 = *(v54 + 64);

        if (v55 == 2)
        {
          break;
        }

        ++v50;
        v16 = sub_247CB3A88(*(v0 + 408), type metadata accessor for FlowResponse.Step);
        if (v49 == v50)
        {
          goto LABEL_47;
        }
      }

      v96 = *(v0 + 544);
      v97 = *(v0 + 496);
      v99 = *(v0 + 416);
      v98 = *(v0 + 424);
      v100 = *(v0 + 368);
      v101 = *(v0 + 376);
      v102 = *(v0 + 360);
      sub_247CB385C(*(v0 + 408), v99, type metadata accessor for FlowResponse.Step);
      sub_247CB385C(v99, v98, type metadata accessor for FlowResponse.Step);
      v103 = *(v96 + *(v97 + 40) + *(v51 + 20));
      swift_beginAccess();
      v104 = *(v103 + 40);
      *(swift_task_alloc() + 16) = v98;

      sub_247C410C8(sub_247CB3B60, v104, v102);

      if ((*(v101 + 48))(v102, 1, v100) != 1)
      {
        v129 = *(v0 + 544);
        v37 = *(v0 + 424);
        v130 = *(v0 + 384);
        sub_247CB385C(*(v0 + 360), v130, type metadata accessor for FlowResponse.Step.HiddenAction);
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0;
        sub_247C5B128(v129);
        sub_247CB3A88(v130, type metadata accessor for FlowResponse.Step.HiddenAction);
        sub_247CB3A88(v129, _s5StateVMa);
        v57 = type metadata accessor for FlowResponse.Step;
        goto LABEL_52;
      }

      sub_247C27100(*(v0 + 360), &qword_27EE63228);
      v105 = sub_247D1F468();
      v106 = sub_247D20038();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_247C1F000, v105, v106, "Missing hidden action for camera step.", v107, 2u);
        MEMORY[0x24C1B9080](v107, -1, -1);
      }

      v108 = *(v0 + 544);
      v109 = *(v0 + 424);

      sub_247CB3A88(v108, _s5StateVMa);
      v58 = type metadata accessor for FlowResponse.Step;
      v59 = v109;
      goto LABEL_72;
    }

LABEL_47:
    v34 = sub_247D1F468();
    v35 = sub_247D20038();
    v56 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 544);
    if (!v56)
    {
      goto LABEL_50;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Missing prepare camera step.";
    goto LABEL_49;
  }

  if (!v19)
  {
    v61 = *(v0 + 480);
    v60 = *(v0 + 488);
    v62 = *(v0 + 472);
    sub_247D1EF18();
    sub_247D1EE88();
    v64 = v63;
    *(v0 + 592) = v63;
    (*(v61 + 8))(v60, v62);
    if (v64 < 3.6)
    {
      v16 = sub_247C9EB28;
      v17 = 0;
      v18 = 0;

      return MEMORY[0x2822009F8](v16, v17, v18);
    }

    v66 = *(v0 + 496);
    v67 = *(v0 + 392);
    v68 = *(*(v0 + 544) + *(v66 + 40) + *(v67 + 20));
    swift_beginAccess();
    if (*(v68 + 56) != 1)
    {
      goto LABEL_65;
    }

    v69 = *(v68 + 48);
    if (v69 > 3)
    {
      if (v69 > 5)
      {
        if (v69 == 6)
        {
          v140 = 9;
        }

        else
        {
          v140 = 5;
        }
      }

      else if (v69 == 4)
      {
        v140 = 4;
      }

      else
      {
        v140 = 8;
      }
    }

    else if (v69 > 1)
    {
      if (v69 == 2)
      {
        v140 = 2;
      }

      else
      {
        v140 = 3;
      }
    }

    else
    {
      if (!v69)
      {
LABEL_65:
        v70 = *(v0 + 544);
        v71 = *(v0 + 528);
        v72 = *(v0 + 520);

        sub_247CB3A20(v70, v71, _s5StateVMa);
        sub_247CB3A20(v70, v72, _s5StateVMa);
        v73 = sub_247D1F468();
        v74 = sub_247D20038();
        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v0 + 528);
        v77 = *(v0 + 520);
        if (v75)
        {
          v78 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v146[0] = v145;
          *v78 = 136446466;
          v79 = *(v76 + *(v66 + 40) + *(v67 + 20));
          swift_beginAccess();
          v144 = v74;
          v80 = *(v79 + 16);
          v81 = *(v79 + 24);

          sub_247CB3A88(v76, _s5StateVMa);
          v82 = sub_247CB03B4(v80, v81, v146);

          *(v78 + 4) = v82;
          *(v78 + 12) = 2050;
          v83 = *(v77 + *(v66 + 40) + *(v67 + 20));
          swift_beginAccess();
          v84 = *(v83 + 48);
          sub_247CB3A88(*(v0 + 520), _s5StateVMa);
          *(v78 + 14) = v84;
          _os_log_impl(&dword_247C1F000, v73, v144, "No related command to step: %{public}s, peer step: %{public}ld", v78, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v145);
          MEMORY[0x24C1B9080](v145, -1, -1);
          MEMORY[0x24C1B9080](v78, -1, -1);
        }

        else
        {
          sub_247CB3A88(*(v0 + 520), _s5StateVMa);

          sub_247CB3A88(v76, _s5StateVMa);
        }

        v37 = *(v0 + 544);
        v131 = *(v0 + 344);
        v132 = *(v0 + 320);
        sub_247CA29C8(v37, 0);
        sub_247CA32F0();
        v133 = sub_247C9521C(v37);
        v134 = sub_247CD0E40();
        sub_247C3FA88(v132);

        v135 = *(v131 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_247D24040;
        *(v136 + 32) = v133;
        sub_247C3194C(0, &qword_27EE63250);
        v137 = v133;
        v138 = v135;
        v139 = sub_247D1FDB8();

        [v138 setViewControllers_];

LABEL_51:
        v57 = _s5StateVMa;
LABEL_52:
        v58 = v57;
        v59 = v37;
        goto LABEL_72;
      }

      v140 = 1;
    }

    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    v141 = v0 + 96;
    v142 = swift_task_alloc();
    *(v0 + 616) = v142;
    *v142 = v0;
    v143 = sub_247C9F47C;
    goto LABEL_112;
  }

  if (v19 != 1)
  {
LABEL_57:

    if (sub_247CA3938())
    {
      type metadata accessor for CosmeticDiagnosticsViewController(0);
      v65 = swift_dynamicCastClass();
      if (v65)
      {
        swift_unknownObjectRetain();
        sub_247C575D4();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v65 = 0;
    }

    v85 = *(v0 + 304);

    v86 = sub_247D1F468();
    v87 = sub_247D20058();
    sub_247CB3AF8(v85);
    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 544);
    if (v88)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v146[0] = v91;
      *v90 = 136446210;
      v92 = sub_247D1FB28();
      v94 = sub_247CB03B4(v92, v93, v146);

      *(v90 + 4) = v94;
      _os_log_impl(&dword_247C1F000, v86, v87, "Peer Attitude: %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x24C1B9080](v91, -1, -1);
      MEMORY[0x24C1B9080](v90, -1, -1);
    }

    else
    {
    }

    v58 = _s5StateVMa;
    v59 = v89;
LABEL_72:
    sub_247CB3A88(v59, v58);

    v95 = *(v0 + 8);

    return v95();
  }

  v26 = *(*(v0 + 544) + 32);
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_34:

    v34 = sub_247D1F468();
    v35 = sub_247D20038();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 544);
    if (!v36)
    {
LABEL_50:

      goto LABEL_51;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Missing retry step.";
LABEL_49:
    _os_log_impl(&dword_247C1F000, v34, v35, v39, v38, 2u);
    MEMORY[0x24C1B9080](v38, -1, -1);
    goto LABEL_50;
  }

  v28 = 0;
  v29 = *(v0 + 392);
  v30 = *(v0 + 400);
  v31 = v26 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    sub_247CB3A20(v31 + *(v30 + 72) * v28, *(v0 + 432), type metadata accessor for FlowResponse.Step);
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v32 = *(*(v0 + 432) + *(v29 + 20));
    swift_beginAccess();
    v33 = *(v32 + 64);

    if (v33 == 1)
    {
      break;
    }

    ++v28;
    v16 = sub_247CB3A88(*(v0 + 432), type metadata accessor for FlowResponse.Step);
    if (v27 == v28)
    {
      goto LABEL_34;
    }
  }

  v110 = *(v0 + 544);
  v111 = *(v0 + 512);
  v112 = *(v0 + 496);
  v113 = *(v0 + 440);
  sub_247CB385C(*(v0 + 432), v113, type metadata accessor for FlowResponse.Step);
  sub_247CA32F0();
  sub_247CB3A20(v110, v111, _s5StateVMa);
  v114 = v111 + *(v112 + 40);
  v16 = sub_247CB3B80(v113, v114);
  v115 = *(v112 + 44);
  v116 = *(v111 + v115);
  v117 = __OFADD__(v116, 1);
  v118 = v116 + 1;
  if (v117)
  {
LABEL_117:
    __break(1u);
    return MEMORY[0x2822009F8](v16, v17, v18);
  }

  v119 = *(v0 + 512);
  v120 = *(v0 + 496);
  *(v111 + v115) = v118;
  v121 = *(v120 + 20);

  v122 = MEMORY[0x277D84F90];
  *(v119 + v121) = MEMORY[0x277D84F90];
  v123 = *(v120 + 24);

  *(v119 + v123) = v122;
  sub_247CA33E4(v119);
  v124 = *(v114 + *(v29 + 20));
  swift_beginAccess();
  if (*(v124 + 56) != 1)
  {
LABEL_84:

    v126 = *(v0 + 544);
    v127 = *(v0 + 512);
    v128 = *(v0 + 440);
    sub_247CA29C8(v127, 0);
    sub_247CB3A88(v128, type metadata accessor for FlowResponse.Step);
    sub_247CB3A88(v126, _s5StateVMa);
    v59 = v127;
    v58 = _s5StateVMa;
    goto LABEL_72;
  }

  v125 = *(v124 + 48);
  if (v125 > 3)
  {
    if (v125 > 5)
    {
      if (v125 == 6)
      {
        v140 = 9;
      }

      else
      {
        v140 = 5;
      }
    }

    else if (v125 == 4)
    {
      v140 = 4;
    }

    else
    {
      v140 = 8;
    }
  }

  else if (v125 > 1)
  {
    if (v125 == 2)
    {
      v140 = 2;
    }

    else
    {
      v140 = 3;
    }
  }

  else
  {
    if (!v125)
    {
      goto LABEL_84;
    }

    v140 = 1;
  }

  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v141 = v0 + 56;
  v142 = swift_task_alloc();
  *(v0 + 632) = v142;
  *v142 = v0;
  v143 = sub_247C9F7E8;
LABEL_112:
  v142[1] = v143;

  return sub_247CD1644(v140, v141);
}

uint64_t sub_247C9EB28()
{
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 600) = v4;
  *v4 = v0;
  v4[1] = sub_247C9EC14;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247C9EC14()
{
  v2 = *v1;
  v2[76] = v0;

  (*(v2[57] + 8))(v2[58], v2[56]);
  if (v0)
  {
    v3 = sub_247C9F308;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = v2[72];
    v4 = v2[71];
    v3 = sub_247C9ED8C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_247C9ED8C()
{
  v37 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 392);
  v3 = *(*(v0 + 544) + *(v1 + 40) + *(v2 + 20));
  swift_beginAccess();
  if (*(v3 + 56) != 1)
  {
LABEL_5:
    v5 = *(v0 + 544);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);

    sub_247CB3A20(v5, v6, _s5StateVMa);
    sub_247CB3A20(v5, v7, _s5StateVMa);
    v8 = sub_247D1F468();
    v9 = sub_247D20038();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    if (v10)
    {
      v13 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v13 = 136446466;
      v14 = *(v11 + *(v1 + 40) + *(v2 + 20));
      swift_beginAccess();
      v34 = v9;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);

      sub_247CB3A88(v11, _s5StateVMa);
      v17 = sub_247CB03B4(v15, v16, &v36);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      v18 = *(v12 + *(v1 + 40) + *(v2 + 20));
      swift_beginAccess();
      v19 = *(v18 + 48);
      sub_247CB3A88(*(v0 + 520), _s5StateVMa);
      *(v13 + 14) = v19;
      _os_log_impl(&dword_247C1F000, v8, v34, "No related command to step: %{public}s, peer step: %{public}ld", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x24C1B9080](v35, -1, -1);
      MEMORY[0x24C1B9080](v13, -1, -1);
    }

    else
    {
      sub_247CB3A88(*(v0 + 520), _s5StateVMa);

      sub_247CB3A88(v11, _s5StateVMa);
    }

    v20 = *(v0 + 544);
    v21 = *(v0 + 344);
    v22 = *(v0 + 320);
    sub_247CA29C8(v20, 0);
    sub_247CA32F0();
    v23 = sub_247C9521C(v20);
    v24 = sub_247CD0E40();
    sub_247C3FA88(v22);

    v25 = *(v21 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_247D24040;
    *(v26 + 32) = v23;
    sub_247C3194C(0, &qword_27EE63250);
    v27 = v23;
    v28 = v25;
    v29 = sub_247D1FDB8();

    [v28 setViewControllers_];

    sub_247CB3A88(v20, _s5StateVMa);

    v30 = *(v0 + 8);

    return v30();
  }

  v4 = *(v3 + 48);
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v32 = 9;
      }

      else
      {
        v32 = 5;
      }
    }

    else if (v4 == 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = 8;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    v32 = 1;
  }

  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v33 = swift_task_alloc();
  *(v0 + 616) = v33;
  *v33 = v0;
  v33[1] = sub_247C9F47C;

  return sub_247CD1644(v32, v0 + 96);
}

uint64_t sub_247C9F324()
{
  v1 = *(v0 + 544);

  sub_247CB3A88(v1, _s5StateVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C9F47C()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 576);
  v4 = *(v2 + 568);
  if (v0)
  {
    v5 = sub_247C9FEB4;
  }

  else
  {
    v5 = sub_247C9F598;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247C9F598()
{

  v1 = v0[68];
  v2 = v0[43];
  v3 = v0[40];
  sub_247CA29C8(v1, 0);
  sub_247CA32F0();
  v4 = sub_247C9521C(v1);
  v5 = sub_247CD0E40();
  sub_247C3FA88(v3);

  v6 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_247D24040;
  *(v7 + 32) = v4;
  sub_247C3194C(0, &qword_27EE63250);
  v8 = v4;
  v9 = v6;
  v10 = sub_247D1FDB8();

  [v9 setViewControllers_];

  sub_247CB3A88(v1, _s5StateVMa);

  v11 = v0[1];

  return v11();
}

uint64_t sub_247C9F7E8()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 576);
  v4 = *(v2 + 568);
  if (v0)
  {
    v5 = sub_247CA000C;
  }

  else
  {
    v5 = sub_247C9F904;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247C9F904()
{

  v1 = v0[68];
  v2 = v0[64];
  v3 = v0[55];
  sub_247CA29C8(v2, 0);
  sub_247CB3A88(v3, type metadata accessor for FlowResponse.Step);
  sub_247CB3A88(v1, _s5StateVMa);
  sub_247CB3A88(v2, _s5StateVMa);

  v4 = v0[1];

  return v4();
}

uint64_t sub_247C9FA9C()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 352);

  sub_247C27100(v3, &qword_27EE62BA0);
  v4 = *(v1 + 576);
  v5 = *(v1 + 568);

  return MEMORY[0x2822009F8](sub_247C9FC0C, v5, v4);
}

uint64_t sub_247C9FC0C()
{
  v1 = *(v0 + 544);

  sub_247CB3A88(v1, _s5StateVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247C9FD60()
{
  v1 = *v0;
  v2 = *(*v0 + 352);

  sub_247C27100(v2, &qword_27EE62BA0);
  v3 = *(v1 + 576);
  v4 = *(v1 + 568);

  return MEMORY[0x2822009F8](sub_247CB47AC, v4, v3);
}

uint64_t sub_247C9FEB4()
{
  v1 = *(v0 + 544);

  sub_247CB3A88(v1, _s5StateVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247CA000C()
{
  v1 = v0[68];
  v2 = v0[64];
  v3 = v0[55];

  sub_247CB3A88(v3, type metadata accessor for FlowResponse.Step);
  sub_247CB3A88(v1, _s5StateVMa);
  sub_247CB3A88(v2, _s5StateVMa);

  v4 = v0[1];

  return v4();
}

uint64_t sub_247CA0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v6[19] = _s15DiagnosticStyleOMa(0);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for TestStatusResponse(0);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = sub_247D1FEA8();
  v6[29] = sub_247D1FE98();
  v8 = sub_247D1FE38();
  v6[30] = v8;
  v6[31] = v7;

  return MEMORY[0x2822009F8](sub_247CA0300, v8, v7);
}

uint64_t sub_247CA0300()
{
  v1 = *(v0 + 136);
  sub_247C2BD10(*(v0 + 128) + 16, v0 + 56, &qword_27EE63698);
  sub_247C3D044((v0 + 56), v0 + 16);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 256) = v1[2];
  *(v0 + 264) = v1[3];
  v3 = (v1 + *(_s5StateVMa() + 28));
  *(v0 + 272) = *v3;
  *(v0 + 280) = v3[1];
  *(v0 + 288) = *v1;
  *(v0 + 296) = v1[1];
  sub_247C58164(0xD000000000000014, 0x8000000247D30890);
  *(v0 + 304) = v4;
  sub_247C58164(0xD000000000000014, 0x8000000247D30790);
  *(v0 + 312) = v5;
  v6 = *v2;
  *(v0 + 320) = *v2;

  return MEMORY[0x2822009F8](sub_247CA0428, v6, 0);
}

uint64_t sub_247CA0428()
{
  v1 = v0[40];
  v2 = *(v1 + 168);
  v0[41] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[42] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
    *v3 = v0;
    v5 = sub_247CA06B8;
  }

  else
  {
    v7 = v0[38];
    v6 = v0[39];
    v8 = v0[37];
    v21 = v0[36];
    v10 = v0[34];
    v9 = v0[35];
    v12 = v0[32];
    v11 = v0[33];
    v13 = v0[21];
    v14 = sub_247D1FEC8();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = sub_247CB3B08(&qword_27EE637E0, type metadata accessor for TestSuiteDataProvider);
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v15;
    v16[4] = v1;
    v16[5] = v12;
    v16[6] = v11;
    v16[7] = v10;
    v16[8] = v9;
    v16[9] = v21;
    v16[10] = v8;
    v16[11] = v7;
    v16[12] = v6;
    swift_retain_n();

    v2 = sub_247C2D594(0, 0, v13, &unk_247D25E20, v16);
    v0[44] = v2;
    *(v1 + 168) = v2;

    v3 = swift_task_alloc();
    v0[45] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
    *v3 = v0;
    v5 = sub_247CA07E4;
  }

  v3[1] = v5;
  v17 = v0[27];
  v18 = v0[22];
  v19 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v17, v2, v18, v4, v19);
}

uint64_t sub_247CA06B8()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_247CA0974;
  }

  else
  {
    v4 = sub_247CA0910;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_247CA07E4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_247CA0F84;
  }

  else
  {
    v4 = sub_247CA0F20;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_247CA0910()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x2822009F8](sub_247CA09E0, v1, v2);
}

uint64_t sub_247CA0974()
{

  v0[47] = v0[43];
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x2822009F8](sub_247CA0CD8, v1, v2);
}

uint64_t sub_247CA09E0()
{
  v27 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_247CB3A20(v2, v1, type metadata accessor for TestStatusResponse);
  sub_247CB3A20(v2, v3, type metadata accessor for TestStatusResponse);
  sub_247CB3A20(v2, v4, type metadata accessor for TestStatusResponse);
  sub_247CB3A20(v2, v5, type metadata accessor for TestStatusResponse);
  v6 = sub_247D1F468();
  v7 = sub_247D20058();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[25];
    v8 = v0[26];
    v24 = v0[24];
    v25 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446978;
    v13 = *(v8 + 8);
    v12 = *(v8 + 16);

    sub_247CB3A88(v8, type metadata accessor for TestStatusResponse);
    v14 = sub_247CB03B4(v13, v12, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    LODWORD(v14) = *v9;
    sub_247CB3A88(v9, type metadata accessor for TestStatusResponse);
    *(v10 + 14) = v14;
    *(v10 + 18) = 1024;
    LODWORD(v12) = *(v24 + 1);
    sub_247CB3A88(v24, type metadata accessor for TestStatusResponse);
    *(v10 + 20) = v12;
    *(v10 + 24) = 2048;
    v15 = *(v25 + 24);
    v16 = v0[27];
    sub_247CB3A88(v0[23], type metadata accessor for TestStatusResponse);
    *(v10 + 26) = v15;
    _os_log_impl(&dword_247C1F000, v6, v7, "Polling finished for %{public}s: %{BOOL}d – %{BOOL}d – %ld", v10, 0x22u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x24C1B9080](v11, -1, -1);
    MEMORY[0x24C1B9080](v10, -1, -1);

    v17 = v16;
  }

  else
  {
    v19 = v0[26];
    v18 = v0[27];
    v21 = v0[24];
    v20 = v0[25];
    sub_247CB3A88(v0[23], type metadata accessor for TestStatusResponse);
    sub_247CB3A88(v21, type metadata accessor for TestStatusResponse);
    sub_247CB3A88(v20, type metadata accessor for TestStatusResponse);

    sub_247CB3A88(v19, type metadata accessor for TestStatusResponse);
    v17 = v18;
  }

  sub_247CB3A88(v17, type metadata accessor for TestStatusResponse);

  v22 = v0[1];

  return v22();
}

uint64_t sub_247CA0CD8()
{
  v1 = v0[47];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v2 = v1;
  v3 = sub_247D1F468();
  v4 = sub_247D20038();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[47];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_247C1F000, v3, v4, "Test suite failed: %@", v6, 0xCu);
    sub_247C27100(v7, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v7, -1, -1);
    MEMORY[0x24C1B9080](v6, -1, -1);
  }

  swift_getErrorValue();
  if (sub_247CC290C(v0[13], v0[14]))
  {
    v0[48] = sub_247D1FE98();
    v11 = sub_247D1FE38();
    v0[49] = v11;
    v0[50] = v10;

    return MEMORY[0x2822009F8](sub_247CA0FF0, v11, v10);
  }

  else
  {
    v12 = v0[47];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_247CA0F20()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x2822009F8](sub_247CA09E0, v1, v2);
}

uint64_t sub_247CA0F84()
{

  v0[47] = v0[46];
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x2822009F8](sub_247CA0CD8, v1, v2);
}

uint64_t sub_247CA0FF0()
{
  v1 = v0[47];
  v2 = v0[20];
  v3 = v0[17];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247CB3A20(v3, v2, _s5StateVMa);
  *(v2 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_247CA1100;
  v7 = v0[20];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247CA1100()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);

  return MEMORY[0x2822009F8](sub_247CA1258, v4, v3);
}

uint64_t sub_247CA1258()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x2822009F8](sub_247CA12BC, v1, v2);
}

uint64_t sub_247CA12BC()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247CA137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[116] = a5;
  v5[115] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637D0);
  v5[117] = swift_task_alloc();
  v6 = sub_247D20108();
  v5[118] = v6;
  v5[119] = *(v6 - 8);
  v5[120] = swift_task_alloc();
  v5[121] = sub_247D1FEA8();
  v5[122] = sub_247D1FE98();
  v8 = sub_247D1FE38();
  v5[123] = v8;
  v5[124] = v7;

  return MEMORY[0x2822009F8](sub_247CA14B4, v8, v7);
}

uint64_t sub_247CA14B4()
{
  v1 = [objc_opt_self() defaultCenter];
  v0[125] = sub_247D20118();

  sub_247D200F8();
  v0[126] = sub_247D1FE98();
  v2 = sub_247CB3B08(&qword_27EE637D8, MEMORY[0x277CC9D68]);
  v3 = swift_task_alloc();
  v0[127] = v3;
  *v3 = v0;
  v3[1] = sub_247CA1600;
  v4 = v0[118];
  v5 = v0[117];

  return MEMORY[0x282200308](v5, v4, v2);
}

uint64_t sub_247CA1600()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  v3 = *(v2 + 1008);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_247D1FE38();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_247CA1ABC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_247D1FE38();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_247CA1798;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_247CA1798()
{

  v1 = *(v0 + 992);
  v2 = *(v0 + 984);

  return MEMORY[0x2822009F8](sub_247CA1800, v2, v1);
}

uint64_t sub_247CA1800()
{
  v12 = v0;
  v1 = *(v0 + 936);
  v2 = sub_247D1EBC8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_247C2BD10(*(v0 + 920) + 16, v0 + 872, &unk_27EE631F0);
    sub_247C3D044((v0 + 872), v0 + 832);
    v5 = *(v0 + 856);
    v6 = *(v0 + 864);
    __swift_project_boxed_opaque_existential_1((v0 + 832), v5);
    sub_247C88620(v11);
    memcpy((v0 + 424), v11, 0x180uLL);
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000011;
    *(v0 + 824) = 0x8000000247D30870;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v6 + 8))(v0 + 16, v5, v6);
    sub_247C318F8(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1(v0 + 832);
    sub_247C27100(v1, &qword_27EE637D0);
    *(v0 + 1008) = sub_247D1FE98();
    v7 = sub_247CB3B08(&qword_27EE637D8, MEMORY[0x277CC9D68]);
    v8 = swift_task_alloc();
    *(v0 + 1016) = v8;
    *v8 = v0;
    v8[1] = sub_247CA1600;
    v9 = *(v0 + 944);
    v10 = *(v0 + 936);

    return MEMORY[0x282200308](v10, v9, v7);
  }
}

uint64_t sub_247CA1ABC()
{
  *(v0 + 912) = *(v0 + 1024);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_247CA1B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[116] = a5;
  v5[115] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637D0);
  v5[117] = swift_task_alloc();
  v6 = sub_247D20108();
  v5[118] = v6;
  v5[119] = *(v6 - 8);
  v5[120] = swift_task_alloc();
  v5[121] = sub_247D1FEA8();
  v5[122] = sub_247D1FE98();
  v8 = sub_247D1FE38();
  v5[123] = v8;
  v5[124] = v7;

  return MEMORY[0x2822009F8](sub_247CA1C80, v8, v7);
}

uint64_t sub_247CA1C80()
{
  v1 = [objc_opt_self() defaultCenter];
  v0[125] = sub_247D20118();

  sub_247D200F8();
  v0[126] = sub_247D1FE98();
  v2 = sub_247CB3B08(&qword_27EE637D8, MEMORY[0x277CC9D68]);
  v3 = swift_task_alloc();
  v0[127] = v3;
  *v3 = v0;
  v3[1] = sub_247CA1DCC;
  v4 = v0[118];
  v5 = v0[117];

  return MEMORY[0x282200308](v5, v4, v2);
}

uint64_t sub_247CA1DCC()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  v3 = *(v2 + 1008);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_247D1FE38();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_247CB4774;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_247D1FE38();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_247CA1F64;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_247CA1F64()
{

  v1 = *(v0 + 992);
  v2 = *(v0 + 984);

  return MEMORY[0x2822009F8](sub_247CA1FCC, v2, v1);
}

uint64_t sub_247CA1FCC()
{
  v12 = v0;
  v1 = *(v0 + 936);
  v2 = sub_247D1EBC8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_247C2BD10(*(v0 + 920) + 16, v0 + 872, &unk_27EE631F0);
    sub_247C3D044((v0 + 872), v0 + 832);
    v5 = *(v0 + 856);
    v6 = *(v0 + 864);
    __swift_project_boxed_opaque_existential_1((v0 + 832), v5);
    sub_247C88620(v11);
    memcpy((v0 + 424), v11, 0x180uLL);
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000013;
    *(v0 + 824) = 0x8000000247D30850;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v6 + 8))(v0 + 16, v5, v6);
    sub_247C318F8(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1(v0 + 832);
    sub_247C27100(v1, &qword_27EE637D0);
    *(v0 + 1008) = sub_247D1FE98();
    v7 = sub_247CB3B08(&qword_27EE637D8, MEMORY[0x277CC9D68]);
    v8 = swift_task_alloc();
    *(v0 + 1016) = v8;
    *v8 = v0;
    v8[1] = sub_247CA1DCC;
    v9 = *(v0 + 944);
    v10 = *(v0 + 936);

    return MEMORY[0x282200308](v10, v9, v7);
  }
}

uint64_t sub_247CA2288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[116] = a5;
  v5[115] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637D0);
  v5[117] = swift_task_alloc();
  v6 = sub_247D20108();
  v5[118] = v6;
  v5[119] = *(v6 - 8);
  v5[120] = swift_task_alloc();
  v5[121] = sub_247D1FEA8();
  v5[122] = sub_247D1FE98();
  v8 = sub_247D1FE38();
  v5[123] = v8;
  v5[124] = v7;

  return MEMORY[0x2822009F8](sub_247CA23C0, v8, v7);
}

uint64_t sub_247CA23C0()
{
  v1 = [objc_opt_self() defaultCenter];
  v0[125] = sub_247D20118();

  sub_247D200F8();
  v0[126] = sub_247D1FE98();
  v2 = sub_247CB3B08(&qword_27EE637D8, MEMORY[0x277CC9D68]);
  v3 = swift_task_alloc();
  v0[127] = v3;
  *v3 = v0;
  v3[1] = sub_247CA250C;
  v4 = v0[118];
  v5 = v0[117];

  return MEMORY[0x282200308](v5, v4, v2);
}

uint64_t sub_247CA250C()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  v3 = *(v2 + 1008);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_247D1FE38();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_247CB4774;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_247D1FE38();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_247CA26A4;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_247CA26A4()
{

  v1 = *(v0 + 992);
  v2 = *(v0 + 984);

  return MEMORY[0x2822009F8](sub_247CA270C, v2, v1);
}

uint64_t sub_247CA270C()
{
  v12 = v0;
  v1 = *(v0 + 936);
  v2 = sub_247D1EBC8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_247C2BD10(*(v0 + 920) + 16, v0 + 872, &unk_27EE631F0);
    sub_247C3D044((v0 + 872), v0 + 832);
    v5 = *(v0 + 856);
    v6 = *(v0 + 864);
    __swift_project_boxed_opaque_existential_1((v0 + 832), v5);
    sub_247C88620(v11);
    memcpy((v0 + 424), v11, 0x180uLL);
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000017;
    *(v0 + 824) = 0x8000000247D30830;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v6 + 8))(v0 + 16, v5, v6);
    sub_247C318F8(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1(v0 + 832);
    sub_247C27100(v1, &qword_27EE637D0);
    *(v0 + 1008) = sub_247D1FE98();
    v7 = sub_247CB3B08(&qword_27EE637D8, MEMORY[0x277CC9D68]);
    v8 = swift_task_alloc();
    *(v0 + 1016) = v8;
    *v8 = v0;
    v8[1] = sub_247CA250C;
    v9 = *(v0 + 944);
    v10 = *(v0 + 936);

    return MEMORY[0x282200308](v10, v9, v7);
  }
}

uint64_t sub_247CA29C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  v5 = sub_247D1EF48();
  v69 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v67 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v61 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v16 = qword_27EE72D00;
  v17 = *(qword_27EE72D00 + 16);

  [v17 lock];
  sub_247CAD9C4(v16, &_s19AnalyticsManagerKeyON, v105);
  [v17 unlock];
  sub_247C3D044(v105, v91);

  sub_247C2BD10(v91, v105, &unk_27EE631F0);
  sub_247C3D044(v105, v88);
  v59 = v90;
  v60 = v89;
  v58 = __swift_project_boxed_opaque_existential_1(v88, v89);
  sub_247C88620(v92);
  v103 = v95;
  v87 = v92[8];
  v86[0] = v93[0];
  *(v86 + 15) = *(v93 + 15);
  v84[0] = *v94;
  *(v84 + 3) = *&v94[3];
  memcpy(v83, v96, sizeof(v83));
  if (a2)
  {
    swift_getErrorValue();
    v18 = sub_247D205B8();
    v56 = v19;
    v57 = v18;
    sub_247C27100(&v103, &unk_27EE63200);
    swift_getErrorValue();
    v55 = sub_247CC595C(v71);
  }

  else
  {
    sub_247C27100(&v103, &unk_27EE63200);
    v56 = 0;
    v57 = 0;
    v55 = 0;
  }

  v85 = a2 == 0;
  v20 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
  swift_beginAccess();
  v65 = v3;
  v63 = v20;
  sub_247C2BD10(v3 + v20, v15, &unk_27EE631E0);
  v21 = *(v69 + 48);
  v70 = v5;
  v62 = v21;
  v22 = v21(v15, 1, v5);
  v23 = 0;
  if (v22 != 1)
  {
    (*(v69 + 32))(v61, v15, v70);
    sub_247D1FEA8();
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v24 = v66;
    sub_247D1EF18();
    v25 = v61;
    sub_247D1EE88();
    v23 = v26;
    v27 = *(v69 + 8);
    v28 = v24;
    v29 = v70;
    v27(v28, v70);
    v27(v25, v29);
  }

  v30 = v22 == 1;
  v87 = v30;
  v31 = v85;
  *&v105[0] = 2003134838;
  *(&v105[0] + 1) = 0xE400000000000000;
  v32 = v68 + *(_s5StateVMa() + 40);
  v33 = *(v32 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  v34 = *(v33 + 16);
  v35 = *(v33 + 24);

  MEMORY[0x24C1B7B80](v34, v35);

  v82[0] = v23;
  LOBYTE(v82[1]) = v30;
  *(&v82[1] + 1) = v86[0];
  v82[3] = *(v86 + 15);
  v82[4] = v55;
  LOBYTE(v82[5]) = v31;
  *(&v82[5] + 1) = v84[0];
  HIDWORD(v82[5]) = *(v84 + 3);
  v82[6] = v57;
  v82[7] = v56;
  memcpy(&v82[8], v83, 0x140uLL);
  LOBYTE(v82[48]) = 0;
  *&v82[49] = v105[0];
  memcpy(v105, v82, 0x198uLL);
  (*(v59 + 8))(v105, v60);
  sub_247C318F8(v82);
  __swift_destroy_boxed_opaque_existential_1(v88);
  sub_247C2BD10(v91, v104, &unk_27EE631F0);
  sub_247C3D044(v104, v79);
  v36 = v80;
  v37 = v81;
  v61 = __swift_project_boxed_opaque_existential_1(v79, v80);
  sub_247C88620(v97);
  v102 = v100;
  v78 = v97[8];
  *v77 = v98[0];
  *&v77[15] = *(v98 + 15);
  v75[0] = *v99;
  *(v75 + 3) = *&v99[3];
  memcpy(v74, v101, sizeof(v74));
  if (a2)
  {
    swift_getErrorValue();
    v38 = sub_247D205B8();
    v40 = v39;
    sub_247C27100(&v102, &unk_27EE63200);
    swift_getErrorValue();
    v41 = sub_247CC595C(v72);
  }

  else
  {
    sub_247C27100(&v102, &unk_27EE63200);
    v40 = 0;
    v38 = 0;
    v41 = 0;
  }

  v42 = v64;
  v76 = a2 == 0;
  sub_247C2BD10(v65 + v63, v64, &unk_27EE631E0);
  v43 = v70;
  v44 = v62(v42, 1, v70);
  v45 = 0;
  if (v44 != 1)
  {
    v65 = v38;
    v68 = v40;
    v46 = v69;
    (*(v69 + 32))(v67, v42, v43);
    sub_247D1FEA8();
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v47 = v66;
    sub_247D1EF18();
    v48 = v67;
    sub_247D1EE88();
    v45 = v49;
    v50 = *(v46 + 8);
    v51 = v47;
    v52 = v70;
    v50(v51, v70);
    v50(v48, v52);

    v40 = v68;
    v38 = v65;
  }

  v78 = v44 == 1;
  v73[0] = v45;
  LOBYTE(v73[1]) = v44 == 1;
  *(&v73[1] + 1) = *v77;
  v73[3] = *&v77[15];
  v73[4] = v41;
  LOBYTE(v73[5]) = v76;
  *(&v73[5] + 1) = v75[0];
  HIDWORD(v73[5]) = *(v75 + 3);
  v73[6] = v38;
  v73[7] = v40;
  memcpy(&v73[8], v74, 0x140uLL);
  LOBYTE(v73[48]) = 1;
  v73[49] = 0xD000000000000012;
  v73[50] = 0x8000000247D30730;
  memcpy(v104, v73, sizeof(v104));
  (*(v37 + 8))(v104, v36, v37);
  sub_247C318F8(v73);
  sub_247C27100(v91, &unk_27EE631F0);
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

void sub_247CA32F0()
{
  v1 = v0;
  v2 = [v1 presentedViewController];
  if (v2)
  {
    while (1)
    {
      v6 = v2;
      if ([v2 isBeingDismissed])
      {
        break;
      }

      v2 = [v6 presentedViewController];
      v3 = v6;
      v1 = v6;
      if (!v2)
      {
        goto LABEL_7;
      }
    }
  }

  v3 = v1;
LABEL_7:
  v7 = v3;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if (![v4 preferredStyle])
    {
      [v5 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_247CA33E4(uint64_t a1)
{
  v2 = sub_247C9521C(a1);
  v3 = sub_247CD0E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D24040;
  *(v4 + 32) = v2;
  sub_247C3194C(0, &qword_27EE63250);
  v5 = v2;
  v6 = sub_247D1FDB8();

  [v3 setViewControllers:v6 animated:1];

  v7 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController;
  v8 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  v10 = v5;
  v11 = v1;
  v12 = v8;
  v13 = [v12 transitionCoordinator];
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = sub_247CB1BD0;
    v15[4] = v9;
    v45 = sub_247C769A8;
    v46 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_247C9451C;
    v44 = &block_descriptor_52;
    v16 = _Block_copy(&aBlock);
    v17 = v12;

    [v14 animateAlongsideTransition:0 completion:v16];

    v18 = v16;
LABEL_5:
    _Block_release(v18);
    return swift_unknownObjectRelease();
  }

  v19 = *&v1[v7];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_247D24040;
  *(v20 + 32) = v10;
  v21 = type metadata accessor for SystemCrossfadeTransitionAnimator();
  v22 = objc_opt_self();
  v40 = v10;
  v23 = v19;
  v24 = [v22 areAnimationsEnabled];
  v25 = [v23 delegate];
  v26 = objc_allocWithZone(type metadata accessor for TemporaryAnimationNavigationDelegate());
  v27 = sub_247C7673C(v21, &off_2859DC9A0, v25);
  swift_unknownObjectRelease();
  [v23 setDelegate_];
  v28 = sub_247D1FDB8();

  [v23 setViewControllers:v28 animated:v24];

  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v27;
  v30 = v23;
  v31 = v27;
  v32 = [v30 &off_278EDD678];
  if (v32)
  {
    v33 = v32;
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = sub_247C76850;
    v34[4] = v29;
    v45 = sub_247C76858;
    v46 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_247C9451C;
    v44 = &block_descriptor_8;
    v35 = _Block_copy(&aBlock);
    v36 = v30;

    [v33 animateAlongsideTransition:0 completion:v35];

    v18 = v35;
    goto LABEL_5;
  }

  v38 = [v30 delegate];
  if (v38 && (v39 = v38, swift_unknownObjectRelease(), v39 == v31))
  {
    [v30 setDelegate_];

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_247CA3938()
{
  v0 = sub_247CD0E40();
  v1 = [v0 viewControllers];

  sub_247C3194C(0, &qword_27EE63250);
  v2 = sub_247D1FDC8();

  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_247D203B8())
  {
    sub_247D1FEA8();
    while (!__OFSUB__(i--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1B8190](i, v2);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 32 + 8 * i);
      }

      v6 = v5;
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getObjectType();
      v7 = swift_conformsToProtocol2();

      if (v7 && v6)
      {
        MEMORY[0x28223BE20](v8);
        v11 = i;
        sub_247CB3BE4(&v11, &v12);
        v9 = v12;
        goto LABEL_21;
      }

      if (!i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v9 = 0;
LABEL_21:

  if (v9)
  {
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

      return 0;
    }
  }

  return v9;
}

uint64_t sub_247CA3B94(uint64_t *a1, uint64_t a2)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  if (v5 == *(v6 + 16) && v4 == *(v6 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_247D20538();
  }

  return v8 & 1;
}

uint64_t sub_247CA3C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = a6;
  *(v6 + 96) = a4;
  *(v6 + 120) = sub_247D1FEA8();
  *(v6 + 128) = sub_247D1FE98();
  v9 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v9;
  *(v6 + 48) = *(a6 + 32);
  v10 = swift_task_alloc();
  *(v6 + 136) = v10;
  *v10 = v6;
  v10[1] = sub_247CA3D6C;

  return sub_247CA4114(a5, v6 + 16);
}

uint64_t sub_247CA3D6C()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {
    v4 = sub_247D1FE38();

    return MEMORY[0x2822009F8](sub_247CA40B0, v4, v3);
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    *(v2 + 56) = *v5;
    *(v2 + 72) = v7;
    *(v2 + 88) = v6;
    v8 = swift_task_alloc();
    *(v2 + 152) = v8;
    *v8 = v2;
    v8[1] = sub_247CA3F10;
    v9 = *(v2 + 104);

    return sub_247CA4948(v9);
  }
}

uint64_t sub_247CA3F10()
{

  v1 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247CA404C, v1, v0);
}

uint64_t sub_247CA404C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA40B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA4114(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  *(v3 + 144) = _s5StateVMa();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v5 = *(a2 + 16);
  *(v3 + 168) = *a2;
  *(v3 + 184) = v5;
  *(v3 + 200) = *(a2 + 32);
  sub_247D1FEA8();
  *(v3 + 208) = sub_247D1FE98();
  v7 = sub_247D1FE38();
  *(v3 + 216) = v7;
  *(v3 + 224) = v6;

  return MEMORY[0x2822009F8](sub_247CA4200, v7, v6);
}

uint64_t sub_247CA4200()
{
  v29 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128) + *(v1 + 40);
  v3 = type metadata accessor for FlowResponse.Step(0);
  v4 = *(v2 + *(v3 + 20));
  swift_beginAccess();
  if (*(v4 + 56) != 1)
  {
LABEL_5:
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 128);

    sub_247CB3A20(v8, v6, _s5StateVMa);
    sub_247CB3A20(v8, v7, _s5StateVMa);
    v9 = sub_247D1F468();
    v10 = sub_247D20058();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    if (v11)
    {
      v27 = v10;
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v14 = 136446466;
      v15 = *(v13 + *(v1 + 40) + *(v3 + 20));
      swift_beginAccess();
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      sub_247CB3A88(v13, _s5StateVMa);
      v18 = sub_247CB03B4(v16, v17, &v28);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      v19 = *(v12 + *(v1 + 40) + *(v3 + 20));
      swift_beginAccess();
      v20 = *(v19 + 48);
      sub_247CB3A88(*(v0 + 152), _s5StateVMa);
      *(v14 + 14) = v20;
      _os_log_impl(&dword_247C1F000, v9, v27, "No related command to step: %{public}s, peer step: %{public}ld", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x24C1B9080](v26, -1, -1);
      MEMORY[0x24C1B9080](v14, -1, -1);
    }

    else
    {
      sub_247CB3A88(*(v0 + 152), _s5StateVMa);

      sub_247CB3A88(v13, _s5StateVMa);
    }

    v21 = *(v0 + 8);

    return v21();
  }

  v5 = *(v4 + 48);
  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        v23 = 9;
      }

      else
      {
        v23 = 5;
      }
    }

    else if (v5 == 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = 8;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    v23 = 1;
  }

  *(v0 + 248) = v23;
  *(v0 + 16) = *(v0 + 168);
  v24 = *(v0 + 200);
  *(v0 + 32) = *(v0 + 184);
  *(v0 + 48) = v24;
  v25 = swift_task_alloc();
  *(v0 + 232) = v25;
  *v25 = v0;
  v25[1] = sub_247CA45D4;

  return sub_247CD1644(v23, v0 + 16);
}