uint64_t type metadata accessor for WorkoutDetailFeature.TaskIdentifier()
{
  result = qword_27F035558;
  if (!qword_27F035558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B712F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B712F84(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B712FE0(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_24B75C3E8();
  v4[3] = sub_24B75C3D8();
  v8 = a2[1];
  v12 = (*a2 + **a2);
  v9 = (*a2)[1];
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_24B710B78;

  return v12(a3, a4);
}

uint64_t sub_24B713100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_24B75C3E8();
  v3[3] = sub_24B75C3D8();
  v6 = *(a2 + 24);
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = *(*(a2 + 16) + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_24B710828;

  return v10(a3);
}

uint64_t sub_24B713214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_24B75C3E8();
  v5[3] = sub_24B75C3D8();
  v10 = *(a2 + 40);
  v14 = (*(a2 + 32) + **(a2 + 32));
  v11 = *(*(a2 + 32) + 4);
  v12 = swift_task_alloc();
  v5[4] = v12;
  *v12 = v5;
  v12[1] = sub_24B710B78;

  return v14(a3, a4, a5);
}

uint64_t sub_24B713340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_24B75C3E8();
  v4[3] = sub_24B75C3D8();
  v8 = *(a2 + 56);
  v12 = (*(a2 + 48) + **(a2 + 48));
  v9 = *(*(a2 + 48) + 4);
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_24B710B78;

  return v12(a3, a4);
}

uint64_t sub_24B713460(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B713340(a1, v1 + 16, v4, v5);
}

uint64_t sub_24B71354C(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6F3D84;

  return sub_24B713214(a1, v1 + 16, v6, v7, v1 + v5);
}

uint64_t sub_24B71363C(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6C412C;

  return sub_24B713100(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_24B713770(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B712FE0(a1, (v1 + 16), v4, v5);
}

void sub_24B713954()
{
  sub_24B75B108();
  if (v0 <= 0x3F)
  {
    sub_24B7139F0();
    if (v1 <= 0x3F)
    {
      sub_24B713A5C();
      if (v2 <= 0x3F)
      {
        sub_24B713A8C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24B7139F0()
{
  if (!qword_27F035568)
  {
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F035568);
    }
  }
}

uint64_t sub_24B713A5C()
{
  result = qword_27F035570;
  if (!qword_27F035570)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F035570);
  }

  return result;
}

uint64_t sub_24B713A8C()
{
  result = qword_27F035578;
  if (!qword_27F035578)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F035578);
  }

  return result;
}

uint64_t sub_24B713B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B713B4C(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = sub_24B75B108();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v65 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035588, &unk_24B763A00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v65 - v26;
  v29 = (&v65 + *(v28 + 56) - v26);
  sub_24B712F1C(v71, &v65 - v26, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  sub_24B712F1C(v72, v29, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v10;
    v37 = v68;
    v38 = v69;
    v72 = v7;
    v39 = v70;
    if (EnumCaseMultiPayload)
    {
      v71 = v27;
      sub_24B712F1C(v27, v20, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      v46 = *v20;
      v45 = *(v20 + 1);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035538, &qword_24B763898) + 48);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v38 + 8))(&v20[v47], v39);

        v27 = v71;
        goto LABEL_32;
      }

      v48 = v29[1];
      v66 = *v29;
      v67 = v46;
      v49 = *(v38 + 32);
      v50 = &v20[v47];
      v51 = v39;
      v49(v72, v50, v39);
      v49(v37, v29 + v47, v39);
      if (v67 == v66 && v45 == v48)
      {

        v54 = v71;
      }

      else
      {
        v53 = sub_24B75C6B8();

        v54 = v71;
        if ((v53 & 1) == 0)
        {
          v55 = *(v38 + 8);
          v55(v37, v51);
          v55(v72, v51);
          sub_24B712F84(v54);
          goto LABEL_33;
        }
      }

      v62 = v72;
      v56 = sub_24B75B0F8();
      v63 = *(v38 + 8);
      v63(v37, v51);
      v63(v62, v51);
      v59 = v54;
    }

    else
    {
      sub_24B712F1C(v27, v23, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v38 + 8))(v23, v39);
LABEL_32:
        sub_24B714160(v27);
        goto LABEL_33;
      }

      v57 = v39;
      (*(v38 + 32))(v36, v29, v39);
      v56 = sub_24B75B0F8();
      v58 = *(v38 + 8);
      v58(v36, v57);
      v58(v23, v57);
      v59 = v27;
    }

    sub_24B712F84(v59);
    return v56 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    sub_24B712F1C(v27, v14, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
    v32 = *v14;
    v31 = v14[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (v32 != *v29 || v31 != v29[1])
      {
        v34 = v29[1];
        v35 = sub_24B75C6B8();

        if (v35)
        {
          goto LABEL_38;
        }

        goto LABEL_20;
      }

      v61 = v29[1];
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  sub_24B712F1C(v27, v17, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  v41 = *v17;
  v40 = v17[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_21:

    goto LABEL_32;
  }

  if (v41 == *v29 && v40 == v29[1])
  {
    v60 = v29[1];
LABEL_37:

    goto LABEL_38;
  }

  v43 = v29[1];
  v44 = sub_24B75C6B8();

  if (v44)
  {
LABEL_38:
    sub_24B712F84(v27);
    v56 = 1;
    return v56 & 1;
  }

LABEL_20:
  sub_24B712F84(v27);
LABEL_33:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_24B714160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035588, &unk_24B763A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7141CC()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x64656863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_24B714220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7160DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B714248(uint64_t a1)
{
  v2 = sub_24B715A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B714284(uint64_t a1)
{
  v2 = sub_24B715A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7142C0(uint64_t a1)
{
  v2 = sub_24B715B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7142FC(uint64_t a1)
{
  v2 = sub_24B715B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B714338(uint64_t a1)
{
  v2 = sub_24B715B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B714374(uint64_t a1)
{
  v2 = sub_24B715B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7143B0(uint64_t a1)
{
  v2 = sub_24B715BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7143EC(uint64_t a1)
{
  v2 = sub_24B715BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035590, &qword_24B763A10);
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - v4;
  v5 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035598, &qword_24B763A18);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355A0, &qword_24B763A20);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  v17 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355A8, &qword_24B763A28);
  v20 = *(v43 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v43);
  v23 = &v33 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B715A58();
  sub_24B75C738();
  sub_24B715AAC(v42, v19);
  v25 = (*(v6 + 48))(v19, 2, v5);
  if (v25)
  {
    if (v25 == 1)
    {
      v44 = 0;
      sub_24B715BB8();
      v26 = v43;
      sub_24B75C638();
      (*(v33 + 8))(v15, v34);
    }

    else
    {
      v45 = 1;
      sub_24B715B64();
      v32 = v35;
      v26 = v43;
      sub_24B75C638();
      (*(v36 + 8))(v32, v37);
    }

    return (*(v20 + 8))(v23, v26);
  }

  else
  {
    v42 = type metadata accessor for WorkoutContextMenuPreviewContent;
    v27 = v38;
    sub_24B715C0C(v19, v38, type metadata accessor for WorkoutContextMenuPreviewContent);
    v46 = 2;
    sub_24B715B10();
    v28 = v39;
    v29 = v43;
    sub_24B75C638();
    sub_24B715CBC(&qword_27F034378, type metadata accessor for WorkoutContextMenuPreviewContent);
    v30 = v41;
    sub_24B75C6A8();
    (*(v40 + 8))(v28, v30);
    sub_24B7161F4(v27, v42);
    return (*(v20 + 8))(v23, v29);
  }
}

uint64_t WorkoutContextMenuPreviewLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355D0, &qword_24B763A30);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v53 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355D8, &qword_24B763A38);
  v62 = *(v57 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355E0, &qword_24B763A40);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355E8, &qword_24B763A48);
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  v18 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24B715A58();
  v26 = v65;
  sub_24B75C728();
  if (!v26)
  {
    v53 = v20;
    v54 = v23;
    v28 = v61;
    v27 = v62;
    v29 = v63;
    v65 = 0;
    v30 = sub_24B75C628();
    v31 = (2 * *(v30 + 16)) | 1;
    v67 = v30;
    v68 = v30 + 32;
    v69 = 0;
    v70 = v31;
    v32 = sub_24B6B9E08();
    v33 = v16;
    if (v32 == 3 || v69 != v70 >> 1)
    {
      v36 = sub_24B75C568();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
      *v38 = State;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
    }

    else if (v32)
    {
      if (v32 == 1)
      {
        v71 = 1;
        sub_24B715B64();
        v34 = v65;
        sub_24B75C598();
        v35 = v64;
        if (v34)
        {
          (*(v64 + 8))(v16, v13);
LABEL_10:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v66);
        }

        (*(v27 + 8))(v28, v57);
        (*(v35 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v51 = type metadata accessor for WorkoutContextMenuPreviewContent();
        v43 = v54;
        (*(*(v51 - 8) + 56))(v54, 2, 2, v51);
        goto LABEL_18;
      }

      v71 = 2;
      sub_24B715B10();
      v44 = v29;
      v45 = v65;
      sub_24B75C598();
      v46 = v64;
      if (!v45)
      {
        v47 = v60;
        v48 = type metadata accessor for WorkoutContextMenuPreviewContent();
        sub_24B715CBC(&qword_27F034398, type metadata accessor for WorkoutContextMenuPreviewContent);
        v49 = v53;
        v50 = v58;
        sub_24B75C618();
        (*(v59 + 8))(v44, v50);
        (*(v46 + 8))(v33, v13);
        swift_unknownObjectRelease();
        (*(*(v48 - 8) + 56))(v49, 0, 2, v48);
        v43 = v54;
        sub_24B715C0C(v49, v54, type metadata accessor for WorkoutContextMenuPreviewLoadState);
        v52 = v47;
LABEL_19:
        sub_24B715C0C(v43, v52, type metadata accessor for WorkoutContextMenuPreviewLoadState);
        return __swift_destroy_boxed_opaque_existential_1(v66);
      }
    }

    else
    {
      v71 = 0;
      sub_24B715BB8();
      v41 = v65;
      sub_24B75C598();
      if (!v41)
      {
        (*(v55 + 8))(v12, v56);
        (*(v64 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v42 = type metadata accessor for WorkoutContextMenuPreviewContent();
        v43 = v54;
        (*(*(v42 - 8) + 56))(v54, 1, 2, v42);
LABEL_18:
        v52 = v60;
        goto LABEL_19;
      }
    }

    (*(v64 + 8))(v33, v13);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t WorkoutContextMenuPreviewLoadState.hash(into:)(uint64_t a1)
{
  v45 = a1;
  v1 = sub_24B75AFE8();
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v38 - v19;
  v21 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  v27 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B715AAC(v44, v29);
  v30 = (*(v22 + 48))(v29, 2, v21);
  if (v30)
  {
    return MEMORY[0x24C2489B0](v30 != 1);
  }

  v39 = v12;
  v40 = v9;
  v44 = v5;
  v31 = v42;
  sub_24B715C0C(v29, v25, type metadata accessor for WorkoutContextMenuPreviewContent);
  MEMORY[0x24C2489B0](2);
  sub_24B6B9D34(v25, v20, &qword_27F0344E8, &unk_24B76A050);
  if ((*(v41 + 48))(v20, 1, v13) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    sub_24B6C7484(v20, v16);
    sub_24B75C6F8();
    sub_24B75B2B8();
    sub_24B6B9CD4(v16, &qword_27F0344C0, &unk_24B763A50);
  }

  v33 = v44;
  v34 = v39;
  sub_24B6B9D34(&v25[*(v21 + 20)], v39, &qword_27F034508, &qword_24B761E50);
  v35 = v43;
  v36 = *(v43 + 48);
  if (v36(v34, 1, v31) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v35 + 32))(v33, v34, v31);
    sub_24B75C6F8();
    sub_24B715CBC(&qword_27F0354A0, MEMORY[0x277CC8C40]);
    sub_24B75C2C8();
    (*(v35 + 8))(v33, v31);
  }

  v37 = v40;
  sub_24B6B9D34(&v25[*(v21 + 24)], v40, &qword_27F034508, &qword_24B761E50);
  if (v36(v37, 1, v31) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v35 + 32))(v33, v37, v31);
    sub_24B75C6F8();
    sub_24B715CBC(&qword_27F0354A0, MEMORY[0x277CC8C40]);
    sub_24B75C2C8();
    (*(v35 + 8))(v33, v31);
  }

  return sub_24B7161F4(v25, type metadata accessor for WorkoutContextMenuPreviewContent);
}

uint64_t WorkoutContextMenuPreviewLoadState.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewLoadState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B71570C()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewLoadState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B715750()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewLoadState.hash(into:)(v1);
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail34WorkoutContextMenuPreviewLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  v10 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035648, &qword_24B763EF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_24B715AAC(a1, &v23 - v16);
  sub_24B715AAC(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_24B715AAC(v17, v12);
    if (!v19(&v17[v18], 2, v4))
    {
      sub_24B715C0C(&v17[v18], v8, type metadata accessor for WorkoutContextMenuPreviewContent);
      v21 = _s20FitnessProductDetail32WorkoutContextMenuPreviewContentV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_24B7161F4(v8, type metadata accessor for WorkoutContextMenuPreviewContent);
      sub_24B7161F4(v12, type metadata accessor for WorkoutContextMenuPreviewContent);
      sub_24B7161F4(v17, type metadata accessor for WorkoutContextMenuPreviewLoadState);
      return v21;
    }

    sub_24B7161F4(v12, type metadata accessor for WorkoutContextMenuPreviewContent);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_24B6B9CD4(v17, &qword_27F035648, &qword_24B763EF8);
    return 0;
  }

  sub_24B7161F4(v17, type metadata accessor for WorkoutContextMenuPreviewLoadState);
  return 1;
}

unint64_t sub_24B715A58()
{
  result = qword_27F0355B0;
  if (!qword_27F0355B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355B0);
  }

  return result;
}

uint64_t sub_24B715AAC(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B715B10()
{
  result = qword_27F0355B8;
  if (!qword_27F0355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355B8);
  }

  return result;
}

unint64_t sub_24B715B64()
{
  result = qword_27F0355C0;
  if (!qword_27F0355C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355C0);
  }

  return result;
}

unint64_t sub_24B715BB8()
{
  result = qword_27F0355C8;
  if (!qword_27F0355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355C8);
  }

  return result;
}

uint64_t sub_24B715C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B715CBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B715D70()
{
  result = qword_27F0355F8;
  if (!qword_27F0355F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355F8);
  }

  return result;
}

unint64_t sub_24B715DC8()
{
  result = qword_27F035600;
  if (!qword_27F035600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035600);
  }

  return result;
}

unint64_t sub_24B715E20()
{
  result = qword_27F035608;
  if (!qword_27F035608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035608);
  }

  return result;
}

unint64_t sub_24B715E78()
{
  result = qword_27F035610;
  if (!qword_27F035610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035610);
  }

  return result;
}

unint64_t sub_24B715ED0()
{
  result = qword_27F035618;
  if (!qword_27F035618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035618);
  }

  return result;
}

unint64_t sub_24B715F28()
{
  result = qword_27F035620;
  if (!qword_27F035620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035620);
  }

  return result;
}

unint64_t sub_24B715F80()
{
  result = qword_27F035628;
  if (!qword_27F035628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035628);
  }

  return result;
}

unint64_t sub_24B715FD8()
{
  result = qword_27F035630;
  if (!qword_27F035630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035630);
  }

  return result;
}

unint64_t sub_24B716030()
{
  result = qword_27F035638;
  if (!qword_27F035638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035638);
  }

  return result;
}

unint64_t sub_24B716088()
{
  result = qword_27F035640;
  if (!qword_27F035640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035640);
  }

  return result;
}

uint64_t sub_24B7160DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B7161F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B716254()
{
  v1 = *v0;
  v2 = 0x6F43646564616F6CLL;
  v3 = 0xD000000000000015;
  if (v1 != 4)
  {
    v3 = 0x6570704177656976;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 1)
  {
    v2 = 0x7070615465726F6DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B716334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7194B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B71635C(uint64_t a1)
{
  v2 = sub_24B717254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716398(uint64_t a1)
{
  v2 = sub_24B717254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7163D4(uint64_t a1)
{
  v2 = sub_24B7174B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716410(uint64_t a1)
{
  v2 = sub_24B7174B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71644C(uint64_t a1)
{
  v2 = sub_24B71745C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716488(uint64_t a1)
{
  v2 = sub_24B71745C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7164C4(uint64_t a1)
{
  v2 = sub_24B717408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716500(uint64_t a1)
{
  v2 = sub_24B717408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71653C()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_24B716574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B716658(uint64_t a1)
{
  v2 = sub_24B7173B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716694(uint64_t a1)
{
  v2 = sub_24B7173B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7166D0(uint64_t a1)
{
  v2 = sub_24B717360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71670C(uint64_t a1)
{
  v2 = sub_24B717360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B716748(uint64_t a1)
{
  v2 = sub_24B71730C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716784(uint64_t a1)
{
  v2 = sub_24B71730C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035650, &qword_24B763F00);
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v64 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035658, &qword_24B763F08);
  v78 = *(v80 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035660, &qword_24B763F10);
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x28223BE20](v7);
  v81 = &v64 - v9;
  v10 = sub_24B75B108();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v64 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035668, &qword_24B763F18);
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035670, &qword_24B763F20);
  v71 = *(v17 - 8);
  v72 = v17;
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v17);
  v68 = &v64 - v19;
  v66 = type metadata accessor for EditorialDetailContent();
  v20 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035678, &qword_24B763F28);
  v65 = *(v23 - 8);
  v24 = *(v65 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - v25;
  v27 = type metadata accessor for EditorialDetailAction();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035680, &unk_24B763F30);
  v86 = *(v90 - 8);
  v31 = *(v86 + 64);
  MEMORY[0x28223BE20](v90);
  v33 = &v64 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B717254();
  v89 = v33;
  sub_24B75C738();
  sub_24B7172A8(v88, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v91 = 0;
      sub_24B7174B0();
      v53 = v89;
      v52 = v90;
      sub_24B75C638();
      (*(v65 + 8))(v26, v23);
      return (*(v86 + 8))(v53, v52);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v93 = 2;
      sub_24B717408();
      v46 = v67;
      v48 = v89;
      v47 = v90;
      sub_24B75C638();
      (*(v69 + 8))(v46, v70);
    }

    else
    {
      v98 = 5;
      sub_24B71730C();
      v62 = v74;
      v48 = v89;
      v47 = v90;
      sub_24B75C638();
      (*(v75 + 8))(v62, v76);
    }

    v60 = *(v86 + 8);
    v61 = v48;
    return v60(v61, v47);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_24B718234(v30, v22, type metadata accessor for EditorialDetailContent);
    v92 = 1;
    sub_24B71745C();
    v49 = v68;
    v43 = v89;
    v42 = v90;
    sub_24B75C638();
    sub_24B6A7260(&qword_27F0352C8, type metadata accessor for EditorialDetailContent);
    v50 = v72;
    sub_24B75C6A8();
    (*(v71 + 8))(v49, v50);
    sub_24B719738(v22, type metadata accessor for EditorialDetailContent);
    return (*(v86 + 8))(v43, v42);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v55 = v84;
    v54 = v85;
    v56 = v73;
    (*(v84 + 32))();
    v97 = 4;
    sub_24B717360();
    v57 = v77;
    v58 = v89;
    v47 = v90;
    sub_24B75C638();
    sub_24B6A7260(&qword_27F0341E0, MEMORY[0x277CC9260]);
    v59 = v80;
    sub_24B75C6A8();
    (*(v78 + 8))(v57, v59);
    (*(v55 + 8))(v56, v54);
    v60 = *(v86 + 8);
    v61 = v58;
    return v60(v61, v47);
  }

  v37 = *v30;
  v36 = *(v30 + 1);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70);
  v39 = v84;
  v40 = v79;
  (*(v84 + 32))(v79, &v30[*(v38 + 48)], v85);
  v96 = 3;
  sub_24B7173B4();
  v41 = v81;
  v43 = v89;
  v42 = v90;
  sub_24B75C638();
  v95 = 0;
  v44 = v83;
  v45 = v87;
  sub_24B75C648();
  if (v45)
  {

    (*(v82 + 8))(v41, v44);
    (*(v39 + 8))(v40, v85);
    return (*(v86 + 8))(v43, v42);
  }

  v94 = 1;
  sub_24B6A7260(&qword_27F0341E0, MEMORY[0x277CC9260]);
  v63 = v85;
  sub_24B75C6A8();
  (*(v82 + 8))(v41, v44);
  (*(v39 + 8))(v40, v63);
  return (*(v86 + 8))(v89, v90);
}

uint64_t type metadata accessor for EditorialDetailAction()
{
  result = qword_27F035700;
  if (!qword_27F035700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B717254()
{
  result = qword_27F035688;
  if (!qword_27F035688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035688);
  }

  return result;
}

uint64_t sub_24B7172A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B71730C()
{
  result = qword_27F035690;
  if (!qword_27F035690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035690);
  }

  return result;
}

unint64_t sub_24B717360()
{
  result = qword_27F035698;
  if (!qword_27F035698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035698);
  }

  return result;
}

unint64_t sub_24B7173B4()
{
  result = qword_27F0356A0;
  if (!qword_27F0356A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356A0);
  }

  return result;
}

unint64_t sub_24B717408()
{
  result = qword_27F0356A8;
  if (!qword_27F0356A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356A8);
  }

  return result;
}

unint64_t sub_24B71745C()
{
  result = qword_27F0356B0;
  if (!qword_27F0356B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356B0);
  }

  return result;
}

unint64_t sub_24B7174B0()
{
  result = qword_27F0356B8;
  if (!qword_27F0356B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356B8);
  }

  return result;
}

uint64_t EditorialDetailAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356C0, &qword_24B763F40);
  v78 = *(v80 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v87 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356C8, &qword_24B763F48);
  v6 = *(v5 - 8);
  v81 = v5;
  v82 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v86 = &v69 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356D0, &qword_24B763F50);
  v83 = *(v79 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v79);
  v91 = &v69 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356D8, &qword_24B763F58);
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v85 = &v69 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356E0, &qword_24B763F60);
  v77 = *(v90 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v69 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356E8, &qword_24B763F68);
  v73 = *(v74 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v84 = &v69 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356F0, &unk_24B763F70);
  v93 = *(v88 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x28223BE20](v88);
  v19 = &v69 - v18;
  v20 = type metadata accessor for EditorialDetailAction();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v69 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v69 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_24B717254();
  v35 = v94;
  sub_24B75C728();
  if (!v35)
  {
    v71 = v29;
    v70 = v23;
    v69 = v26;
    v37 = v89;
    v36 = v90;
    v38 = v91;
    v72 = v20;
    v94 = v32;
    v39 = v92;
    v40 = v88;
    v41 = sub_24B75C628();
    v42 = (2 * *(v41 + 16)) | 1;
    v96 = v41;
    v97 = v41 + 32;
    v98 = 0;
    v99 = v42;
    v43 = sub_24B6B9E14();
    if (v43 != 6 && v98 == v99 >> 1)
    {
      if (v43 > 2u)
      {
        if (v43 == 3)
        {
          v100 = 3;
          sub_24B7173B4();
          v60 = v38;
          sub_24B75C598();
          v100 = 0;
          v61 = v79;
          v65 = sub_24B75C5B8();
          v67 = v66;
          v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70) + 48);
          v68 = v69;
          *v69 = v65;
          v68[1] = v67;
          v89 = v67;
          sub_24B75B108();
          v100 = 1;
          sub_24B6A7260(&qword_27F0341F8, MEMORY[0x277CC9260]);
          sub_24B75C618();
          (*(v83 + 8))(v60, v61);
          (*(v93 + 8))(v19, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v47 = v68;
          goto LABEL_18;
        }

        if (v43 == 4)
        {
          v100 = 4;
          sub_24B717360();
          v53 = v86;
          sub_24B75C598();
          v54 = v93;
          sub_24B75B108();
          sub_24B6A7260(&qword_27F0341F8, MEMORY[0x277CC9260]);
          v55 = v70;
          v56 = v81;
          sub_24B75C618();
          (*(v82 + 8))(v53, v56);
          (*(v54 + 8))(v19, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v47 = v55;
          goto LABEL_18;
        }

        v100 = 5;
        sub_24B71730C();
        v63 = v87;
        sub_24B75C598();
        v64 = v93;
        (*(v78 + 8))(v63, v80);
        (*(v64 + 8))(v19, v40);
        swift_unknownObjectRelease();
        v59 = v94;
      }

      else if (v43)
      {
        v44 = v19;
        v45 = v93;
        if (v43 == 1)
        {
          v100 = 1;
          sub_24B71745C();
          sub_24B75C598();
          type metadata accessor for EditorialDetailContent();
          sub_24B6A7260(&qword_27F0352F0, type metadata accessor for EditorialDetailContent);
          sub_24B75C618();
          (*(v77 + 8))(v37, v36);
          (*(v45 + 8))(v44, v40);
          swift_unknownObjectRelease();
          v46 = v71;
          swift_storeEnumTagMultiPayload();
          v47 = v46;
LABEL_18:
          v59 = v94;
          sub_24B718234(v47, v94, type metadata accessor for EditorialDetailAction);
          goto LABEL_19;
        }

        v100 = 2;
        sub_24B717408();
        v62 = v85;
        sub_24B75C598();
        (*(v75 + 8))(v62, v76);
        (*(v45 + 8))(v44, v40);
        swift_unknownObjectRelease();
        v59 = v94;
      }

      else
      {
        v100 = 0;
        sub_24B7174B0();
        v57 = v84;
        sub_24B75C598();
        v58 = v93;
        (*(v73 + 8))(v57, v74);
        (*(v58 + 8))(v19, v40);
        swift_unknownObjectRelease();
        v59 = v94;
      }

      swift_storeEnumTagMultiPayload();
LABEL_19:
      sub_24B718234(v59, v39, type metadata accessor for EditorialDetailAction);
      return __swift_destroy_boxed_opaque_existential_1(v95);
    }

    v48 = sub_24B75C568();
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v50 = v72;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    (*(v93 + 8))(v19, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v95);
}

uint64_t sub_24B718234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t EditorialDetailAction.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B75B108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for EditorialDetailContent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EditorialDetailAction();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B7172A8(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v24 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v24 = 2;
    }

    else
    {
      v24 = 5;
    }

    return MEMORY[0x24C2489B0](v24);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *v19;
      v21 = *(v19 + 1);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70);
      (*(v5 + 32))(v11, &v19[*(v23 + 48)], v4);
      MEMORY[0x24C2489B0](3);
      sub_24B75C6F8();
      if (v21)
      {
        sub_24B75C358();
      }

      sub_24B6A7260(&qword_27F034130, MEMORY[0x277CC9260]);
      sub_24B75C2C8();
      return (*(v5 + 8))(v11, v4);
    }

    else
    {
      (*(v5 + 32))(v8, v19, v4);
      MEMORY[0x24C2489B0](4);
      sub_24B6A7260(&qword_27F034130, MEMORY[0x277CC9260]);
      sub_24B75C2C8();
      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    sub_24B718234(v19, v15, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](1);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B719738(v15, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t EditorialDetailAction.hashValue.getter()
{
  sub_24B75C6D8();
  EditorialDetailAction.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B718670()
{
  sub_24B75C6D8();
  EditorialDetailAction.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B7186B4()
{
  sub_24B75C6D8();
  EditorialDetailAction.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail09EditorialC6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = v57[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - v9;
  MEMORY[0x28223BE20](v10);
  v56 = &v55 - v11;
  v12 = type metadata accessor for EditorialDetailContent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EditorialDetailAction();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v55 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357B0, &qword_24B764728);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v55 - v28;
  v31 = (&v55 + *(v30 + 56) - v28);
  sub_24B7172A8(a1, &v55 - v28);
  sub_24B7172A8(a2, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B7172A8(v29, v22);
        v34 = *v22;
        v33 = v22[1];
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = *v31;
          v36 = v31[1];
          v38 = v57[4];
          v39 = v22 + v35;
          v40 = v58;
          v38(v56, v39, v58);
          v41 = v31 + v35;
          v42 = v55;
          v38(v55, v41, v40);
          if (v33)
          {
            if (v36)
            {
              if (v34 != v37 || v33 != v36)
              {
                v44 = sub_24B75C6B8();

                if (v44)
                {
                  goto LABEL_34;
                }

                goto LABEL_32;
              }

LABEL_34:
              v51 = v56;
              v47 = sub_24B75B0F8();
              v52 = v58;
              v53 = v57[1];
              v53(v42, v58);
              v53(v51, v52);
              goto LABEL_35;
            }
          }

          else if (!v36)
          {
            goto LABEL_34;
          }

LABEL_32:
          v49 = v58;
          v50 = v57[1];
          v50(v42, v58);
          v50(v56, v49);
          sub_24B719738(v29, type metadata accessor for EditorialDetailAction);
          goto LABEL_28;
        }

        (v57[1])(v22 + v35, v58);

LABEL_27:
        sub_24B7196D0(v29);
LABEL_28:
        v47 = 0;
        return v47 & 1;
      }

      sub_24B7172A8(v29, v19);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (v57[1])(v19, v58);
        goto LABEL_27;
      }

      v46 = v57;
      v45 = v58;
      (v57[4])(v7, v31, v58);
      v47 = sub_24B75B0F8();
      v48 = v46[1];
      v48(v7, v45);
      v48(v19, v45);
    }

    else
    {
      sub_24B7172A8(v29, v25);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24B719738(v25, type metadata accessor for EditorialDetailContent);
        goto LABEL_27;
      }

      sub_24B718234(v31, v15, type metadata accessor for EditorialDetailContent);
      v47 = _s20FitnessProductDetail09EditorialC7ContentV2eeoiySbAC_ACtFZ_0(v25, v15);
      sub_24B719738(v15, type metadata accessor for EditorialDetailContent);
      sub_24B719738(v25, type metadata accessor for EditorialDetailContent);
    }

LABEL_35:
    sub_24B719738(v29, type metadata accessor for EditorialDetailAction);
    return v47 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_27;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_27;
  }

  sub_24B719738(v29, type metadata accessor for EditorialDetailAction);
  v47 = 1;
  return v47 & 1;
}

void sub_24B718D0C()
{
  type metadata accessor for EditorialDetailContent();
  if (v0 <= 0x3F)
  {
    sub_24B718D94();
    if (v1 <= 0x3F)
    {
      sub_24B75B108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B718D94()
{
  if (!qword_27F035710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035718, &qword_24B764058);
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F035710);
    }
  }
}

unint64_t sub_24B718E88()
{
  result = qword_27F035720;
  if (!qword_27F035720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035720);
  }

  return result;
}

unint64_t sub_24B718EE0()
{
  result = qword_27F035728;
  if (!qword_27F035728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035728);
  }

  return result;
}

unint64_t sub_24B718F38()
{
  result = qword_27F035730;
  if (!qword_27F035730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035730);
  }

  return result;
}

unint64_t sub_24B718F90()
{
  result = qword_27F035738;
  if (!qword_27F035738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035738);
  }

  return result;
}

unint64_t sub_24B718FE8()
{
  result = qword_27F035740;
  if (!qword_27F035740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035740);
  }

  return result;
}

unint64_t sub_24B719040()
{
  result = qword_27F035748;
  if (!qword_27F035748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035748);
  }

  return result;
}

unint64_t sub_24B719098()
{
  result = qword_27F035750;
  if (!qword_27F035750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035750);
  }

  return result;
}

unint64_t sub_24B7190F0()
{
  result = qword_27F035758;
  if (!qword_27F035758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035758);
  }

  return result;
}

unint64_t sub_24B719148()
{
  result = qword_27F035760;
  if (!qword_27F035760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035760);
  }

  return result;
}

unint64_t sub_24B7191A0()
{
  result = qword_27F035768;
  if (!qword_27F035768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035768);
  }

  return result;
}

unint64_t sub_24B7191F8()
{
  result = qword_27F035770;
  if (!qword_27F035770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035770);
  }

  return result;
}

unint64_t sub_24B719250()
{
  result = qword_27F035778;
  if (!qword_27F035778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035778);
  }

  return result;
}

unint64_t sub_24B7192A8()
{
  result = qword_27F035780;
  if (!qword_27F035780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035780);
  }

  return result;
}

unint64_t sub_24B719300()
{
  result = qword_27F035788;
  if (!qword_27F035788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035788);
  }

  return result;
}

unint64_t sub_24B719358()
{
  result = qword_27F035790;
  if (!qword_27F035790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035790);
  }

  return result;
}

unint64_t sub_24B7193B0()
{
  result = qword_27F035798;
  if (!qword_27F035798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035798);
  }

  return result;
}

unint64_t sub_24B719408()
{
  result = qword_27F0357A0;
  if (!qword_27F0357A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357A0);
  }

  return result;
}

unint64_t sub_24B719460()
{
  result = qword_27F0357A8;
  if (!qword_27F0357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357A8);
  }

  return result;
}

uint64_t sub_24B7194B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B76BF70 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43646564616F6CLL && a2 == 0xED0000746E65746ELL || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7070615465726F6DLL && a2 == 0xEA00000000006465 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76BF90 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B76BFB0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B7196D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357B0, &qword_24B764728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B719738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutDetailSectionDensityFactor.init(count:span:spacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_24B719808()
{
  v1 = 0x676E6963617073;
  if (*v0 != 1)
  {
    v1 = 1851879539;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_24B719858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B71A0B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B719880(uint64_t a1)
{
  v2 = sub_24B719AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7198BC(uint64_t a1)
{
  v2 = sub_24B719AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailSectionDensityFactor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357B8, &qword_24B764730);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B719AB8();
  sub_24B75C738();
  v17 = 0;
  sub_24B75C698();
  if (!v2)
  {
    v16 = v10;
    v15 = 1;
    sub_24B6F1D10();
    sub_24B75C6A8();
    v14 = 2;
    sub_24B75C698();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B719AB8()
{
  result = qword_27F0357C0;
  if (!qword_27F0357C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357C0);
  }

  return result;
}

uint64_t WorkoutDetailSectionDensityFactor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357C8, &qword_24B764738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B719AB8();
  sub_24B75C728();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_24B75C608();
    v15[15] = 1;
    sub_24B6F1FC4();
    sub_24B75C618();
    v13 = v16;
    v15[14] = 2;
    v14 = sub_24B75C608();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutDetailSectionDensityFactor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2489B0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2489D0](*&v3);
  return MEMORY[0x24C2489B0](v2);
}

uint64_t WorkoutDetailSectionDensityFactor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x24C2489D0](*&v4);
  MEMORY[0x24C2489B0](v3);
  return sub_24B75C718();
}

uint64_t sub_24B719E18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2489B0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2489D0](*&v3);
  return MEMORY[0x24C2489B0](v2);
}

uint64_t sub_24B719E78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x24C2489D0](*&v4);
  MEMORY[0x24C2489B0](v3);
  return sub_24B75C718();
}

unint64_t sub_24B719EFC()
{
  result = qword_27F0357D0;
  if (!qword_27F0357D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357D0);
  }

  return result;
}

unint64_t sub_24B719FAC()
{
  result = qword_27F0357D8;
  if (!qword_27F0357D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357D8);
  }

  return result;
}

unint64_t sub_24B71A004()
{
  result = qword_27F0357E0;
  if (!qword_27F0357E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357E0);
  }

  return result;
}

unint64_t sub_24B71A05C()
{
  result = qword_27F0357E8;
  if (!qword_27F0357E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357E8);
  }

  return result;
}

uint64_t sub_24B71A0B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851879539 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ArtworkBannerView.init(store:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a5 = sub_24B6C4E74;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
  LODWORD(a2) = *(type metadata accessor for ArtworkBannerView() + 20);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t type metadata accessor for ArtworkBannerView()
{
  result = qword_27F0357F8;
  if (!qword_27F0357F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArtworkBannerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArtworkBannerView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24B71A418(v1, a1);
  sub_24B71C3A0(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B71CF84(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ArtworkBannerView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357F0, &qword_24B764960);
  v9 = (a1 + *(result + 36));
  *v9 = sub_24B71C404;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_24B71A418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v120 = sub_24B75BEE8();
  v118 = *(v120 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B75BAE8();
  v116 = *(v5 - 8);
  v117 = v5;
  v6 = *(v116 + 64);
  MEMORY[0x28223BE20](v5);
  v115 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B75B1F8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114[2] = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B75C2F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v114[1] = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  v14 = *(*(v144 - 1) + 64);
  MEMORY[0x28223BE20](v144);
  v145 = v114 - v15;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035910, &qword_24B764A60);
  v16 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v148 = v114 - v17;
  v125 = sub_24B75B248();
  v123 = *(v125 - 8);
  v18 = *(v123 + 64);
  MEMORY[0x28223BE20](v125);
  v121 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v126 = *(v136 - 8);
  v20 = *(v126 + 64);
  MEMORY[0x28223BE20](v136);
  v124 = v114 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035918, &qword_24B764A68);
  v128 = *(v133 - 8);
  v22 = *(v128 + 64);
  MEMORY[0x28223BE20](v133);
  v127 = v114 - v23;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035920, &qword_24B764A70);
  v24 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v135 = v114 - v25;
  v26 = type metadata accessor for WorkoutSchedule();
  v131 = *(v26 - 8);
  v132 = v26;
  v27 = *(v131 + 64);
  MEMORY[0x28223BE20](v26);
  v122 = v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035890, &qword_24B764A08);
  v29 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v137 = v114 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v139 = *(v31 - 8);
  v140 = v31;
  v32 = *(v139 + 64);
  MEMORY[0x28223BE20](v31);
  v130 = v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v143 = v114 - v35;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035928, &qword_24B764A78);
  v36 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v38 = v114 - v37;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  v40 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v138 = v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035850, &qword_24B7649F0);
  v42 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v44 = v114 - v43;
  v45 = *a1;
  v46 = a1[1];
  v129 = a1;
  v47 = *(a1 + 16);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035810, &qword_24B7649D8);
  sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8);
  sub_24B75B408();
  swift_getKeyPath();
  sub_24B75C218();

  if (v214)
  {

    v143 = v48;
    sub_24B75B408();
    swift_getKeyPath();
    v49 = v145;
    sub_24B75C218();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (*v49)
        {
          sub_24B71D060(&v211);
        }

        else
        {
          sub_24B75C2E8();
          type metadata accessor for LocalizationBundle();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v85 = [objc_opt_self() bundleForClass_];
          sub_24B75B408();
          swift_getKeyPath();
          sub_24B75C218();

          v86 = sub_24B75BB58();
          v88 = v87;
          v90 = v89;
          LODWORD(v211) = sub_24B75B838();
          v91 = sub_24B75BBE8();
          v93 = v92;
          v95 = v94;
          sub_24B6E89A0(v86, v88, v90 & 1);

          sub_24B75BA28();
          v97 = v115;
          v96 = v116;
          v98 = v117;
          (*(v116 + 104))(v115, *MEMORY[0x277CE0A10], v117);
          sub_24B75BB28();

          (*(v96 + 8))(v97, v98);
          v99 = sub_24B75BC18();
          v101 = v100;
          LOBYTE(v96) = v102;

          sub_24B6E89A0(v91, v93, v95 & 1);

          sub_24B75BA88();
          v103 = sub_24B75BB68();
          v105 = v104;
          LOBYTE(v88) = v106;
          v108 = v107;
          sub_24B6E89A0(v99, v101, v96 & 1);

          v109 = sub_24B75B9A8();
          LOBYTE(v88) = v88 & 1;
          LOBYTE(v187) = v88;
          LOBYTE(v163) = 0;
          sub_24B75C168();
          sub_24B75B5C8();
          *&v150[55] = v218;
          *&v150[71] = v219;
          *&v150[87] = v220;
          *&v150[103] = v221;
          *&v150[7] = v215;
          *&v150[23] = v216;
          *&v150[39] = v217;
          (*(v118 + 104))(v119, *MEMORY[0x277CE0EE0], v120);
          v110 = sub_24B75BF48();
          v111 = sub_24B75B9A8();
          *(v213 + 8) = xmmword_24B762590;
          *(&v213[1] + 8) = xmmword_24B762590;
          *(&v213[6] + 9) = *&v150[64];
          *(&v213[7] + 9) = *&v150[80];
          *(&v213[8] + 9) = *&v150[96];
          *(&v213[2] + 9) = *v150;
          *(&v213[3] + 9) = *&v150[16];
          *(&v213[4] + 9) = *&v150[32];
          *&v211 = v103;
          *(&v211 + 1) = v105;
          LOBYTE(v212) = v88;
          *(&v212 + 1) = v108;
          LOBYTE(v213[0]) = v109;
          BYTE8(v213[2]) = 0;
          *(&v213[5] + 9) = *&v150[48];
          *(&v213[9] + 1) = *&v150[111];
          *&v213[10] = v110;
          BYTE8(v213[10]) = v111;
          sub_24B71D080(&v211);
        }

        v209 = v213[8];
        v210[0] = v213[9];
        *(v210 + 10) = *(&v213[9] + 10);
        v205 = v213[4];
        v206 = v213[5];
        v208 = v213[7];
        v207 = v213[6];
        v201 = v213[0];
        v202 = v213[1];
        v204 = v213[3];
        v203 = v213[2];
        v200 = v212;
        v199 = v211;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358E8, &qword_24B764A30);
        sub_24B71CC64();
        sub_24B75B7A8();
        v65 = v148;
        v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035930, &qword_24B764B00) + 48);
        v173 = v185;
        v174[0] = v186[0];
        *(v174 + 10) = *(v186 + 10);
        v169 = v181;
        v170 = v182;
        v171 = v183;
        v172 = v184;
        v167 = v179;
        v168 = v180;
        v165 = v177;
        v166 = v178;
        v163 = v175;
        v164 = v176;
        sub_24B71D06C(&v163);
        v213[8] = v173;
        v213[9] = v174[0];
        *(&v213[9] + 11) = *(v174 + 11);
        v213[4] = v169;
        v213[5] = v170;
        v213[7] = v172;
        v213[6] = v171;
        v213[0] = v165;
        v213[1] = v166;
        v213[3] = v168;
        v213[2] = v167;
        v212 = v164;
        v211 = v163;
        sub_24B6B9D34(&v175, &v199, &qword_27F0358D8, &qword_24B764A28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358D8, &qword_24B764A28);
        sub_24B71C79C();
        sub_24B71CBD8();
        sub_24B75B7A8();
        v197 = v161;
        v198[0] = v162[0];
        *(v198 + 11) = *(v162 + 11);
        v193 = v157;
        v194 = v158;
        v196 = v160;
        v195 = v159;
        v189 = v153;
        v190 = v154;
        v192 = v156;
        v191 = v155;
        v188 = v152;
        v187 = v151;
        sub_24B71D078(&v187);
        v209 = v197;
        v210[0] = v198[0];
        *(v210 + 12) = *(v198 + 12);
        v205 = v193;
        v206 = v194;
        v208 = v196;
        v207 = v195;
        v201 = v189;
        v202 = v190;
        v204 = v192;
        v203 = v191;
        v200 = v188;
        v199 = v187;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358C8, &qword_24B764A20);
        sub_24B71CB4C();
        sub_24B75B7A8();
        sub_24B6B9CD4(&v175, &qword_27F0358D8, &qword_24B764A28);
        v209 = v213[8];
        v210[0] = v213[9];
        *(v210 + 12) = *(&v213[9] + 12);
        v205 = v213[4];
        v206 = v213[5];
        v208 = v213[7];
        v207 = v213[6];
        v201 = v213[0];
        v202 = v213[1];
        v204 = v213[3];
        v203 = v213[2];
        v200 = v212;
        v199 = v211;
        v113 = sub_24B75B1D8();
        (*(*(v113 - 8) + 8))(&v145[v112], v113);
        v213[8] = v209;
        v213[9] = v210[0];
        *(&v213[9] + 12) = *(v210 + 12);
        v213[4] = v205;
        v213[5] = v206;
        v213[7] = v208;
        v213[6] = v207;
        v213[0] = v201;
        v213[1] = v202;
        v213[3] = v204;
        v213[2] = v203;
        v212 = v200;
        v211 = v199;
        goto LABEL_14;
      }

      sub_24B6B9CD4(v49, &qword_27F033FA8, &qword_24B75D810);
      sub_24B71D054(&v199);
      v197 = v209;
      v198[0] = v210[0];
      v51 = *(v210 + 12);
    }

    else
    {
      sub_24B75C158();
      sub_24B75B458();
      *&v163 = v175;
      BYTE8(v163) = BYTE8(v175);
      *&v164 = v176;
      BYTE8(v164) = BYTE8(v176);
      v165 = v177;
      sub_24B71D088(&v163);
      v213[8] = v173;
      v213[9] = v174[0];
      *(&v213[9] + 11) = *(v174 + 11);
      v213[4] = v169;
      v213[5] = v170;
      v213[7] = v172;
      v213[6] = v171;
      v213[0] = v165;
      v213[1] = v166;
      v213[3] = v168;
      v213[2] = v167;
      v212 = v164;
      v211 = v163;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358D8, &qword_24B764A28);
      sub_24B71C79C();
      sub_24B71CBD8();
      sub_24B75B7A8();
      v209 = v161;
      v210[0] = v162[0];
      *(v210 + 11) = *(v162 + 11);
      v205 = v157;
      v206 = v158;
      v208 = v160;
      v207 = v159;
      v201 = v153;
      v202 = v154;
      v204 = v156;
      v203 = v155;
      v200 = v152;
      v199 = v151;
      sub_24B71D078(&v199);
      v197 = v209;
      v198[0] = v210[0];
      v51 = *(v210 + 12);
    }

    *(v198 + 12) = v51;
    v193 = v205;
    v194 = v206;
    v196 = v208;
    v195 = v207;
    v189 = v201;
    v190 = v202;
    v192 = v204;
    v191 = v203;
    v188 = v200;
    v187 = v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358C8, &qword_24B764A20);
    sub_24B71CB4C();
    sub_24B75B7A8();
    v65 = v148;
LABEL_14:
    v66 = v213[9];
    v65[10] = v213[8];
    v65[11] = v66;
    *(v65 + 188) = *(&v213[9] + 12);
    v67 = v213[5];
    v65[6] = v213[4];
    v65[7] = v67;
    v68 = v213[7];
    v65[8] = v213[6];
    v65[9] = v68;
    v69 = v213[1];
    v65[2] = v213[0];
    v65[3] = v69;
    v70 = v213[3];
    v65[4] = v213[2];
    v65[5] = v70;
    v71 = v212;
    *v65 = v211;
    v65[1] = v71;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358B8, &qword_24B764A18);
    sub_24B71C710();
    sub_24B71CAC0();
    return sub_24B75B7A8();
  }

  v144 = v38;
  v145 = v44;
  sub_24B75B408();
  swift_getKeyPath();
  v52 = v138;
  sub_24B75C218();

  if ((*(v139 + 48))(v52, 1, v140) == 1)
  {
    sub_24B75C158();
    sub_24B75B458();
    v53 = BYTE8(v211);
    v54 = v212;
    v55 = BYTE8(v212);
    v56 = v144;
    *v144 = v211;
    *(v56 + 8) = v53;
    v56[2] = v54;
    *(v56 + 24) = v55;
    *(v56 + 2) = v213[0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
    sub_24B71C79C();
    sub_24B71C95C();
    v57 = v145;
    sub_24B75B7A8();
    v58 = v148;
  }

  else
  {
    v59 = v143;
    sub_24B6F2D2C(v52, v143);
    v60 = v59;
    v61 = v130;
    sub_24B6B9D34(v60, v130, &qword_27F033F50, &unk_24B764A50);
    if ((*(v131 + 48))(v61, 1, v132) == 1)
    {
      sub_24B6B9CD4(v61, &qword_27F033F50, &unk_24B764A50);
      swift_storeEnumTagMultiPayload();
      v62 = sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
      v63 = sub_24B71CA6C();
      *&v211 = v136;
      *(&v211 + 1) = &type metadata for WorkoutScheduleBannerLabelStyle;
      *&v212 = v62;
      *(&v212 + 1) = v63;
      swift_getOpaqueTypeConformance2();
      v64 = v137;
      sub_24B75B7A8();
    }

    else
    {
      v73 = v122;
      v74 = sub_24B71CF84(v61, v122, type metadata accessor for WorkoutSchedule);
      MEMORY[0x28223BE20](v74);
      v75 = v124;
      sub_24B75BFB8();
      sub_24B75B408();
      swift_getKeyPath();
      v76 = v121;
      sub_24B75C218();

      v77 = sub_24B75B208();
      (*(v123 + 8))(v76, v125);
      LOBYTE(v211) = v77 & 1;
      v78 = sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
      v79 = sub_24B71CA6C();
      v80 = v127;
      v81 = v136;
      sub_24B75BCC8();
      (*(v126 + 8))(v75, v81);
      v82 = v128;
      v83 = v133;
      (*(v128 + 16))(v135, v80, v133);
      swift_storeEnumTagMultiPayload();
      *&v211 = v81;
      *(&v211 + 1) = &type metadata for WorkoutScheduleBannerLabelStyle;
      *&v212 = v78;
      *(&v212 + 1) = v79;
      swift_getOpaqueTypeConformance2();
      v64 = v137;
      sub_24B75B7A8();
      (*(v82 + 8))(v80, v83);
      sub_24B71CFF4(v73, type metadata accessor for WorkoutSchedule);
    }

    v58 = v148;
    v57 = v145;
    sub_24B6B9D34(v64, v144, &qword_27F035890, &qword_24B764A08);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
    sub_24B71C79C();
    sub_24B71C95C();
    sub_24B75B7A8();
    sub_24B6B9CD4(v64, &qword_27F035890, &qword_24B764A08);
    sub_24B6B9CD4(v143, &qword_27F033F50, &unk_24B764A50);
  }

  sub_24B6B9D34(v57, v58, &qword_27F035850, &qword_24B7649F0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358B8, &qword_24B764A18);
  sub_24B71C710();
  sub_24B71CAC0();
  sub_24B75B7A8();
  return sub_24B6B9CD4(v57, &qword_27F035850, &qword_24B7649F0);
}

double sub_24B71BCFC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_24B75B1F8();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24B75B248();
  v25 = *(v27 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24B75AFE8();
  v24 = *(v26 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for ArtworkBannerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  v22 = *(&v32 + 1);
  v23 = v32;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035810, &qword_24B7649D8);
  sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8);
  sub_24B75B408();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B75B408();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B6EE604(v7, v13);
  (*(v28 + 8))(v7, v29);
  (*(v25 + 8))(v10, v27);
  v23(&v32, v13);

  (*(v24 + 8))(v13, v26);
  v18 = v33;
  v19 = v34;
  result = *&v32;
  v21 = v31;
  *v31 = v32;
  *(v21 + 16) = v18;
  *(v21 + 3) = v19;
  return result;
}

uint64_t sub_24B71C058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75BF98();
  *a1 = result;
  return result;
}

uint64_t sub_24B71C098(uint64_t *a1)
{
  v2 = type metadata accessor for ArtworkBannerAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035810, &qword_24B7649D8);
  sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8);
  sub_24B75B408();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_24B75C228();

  return sub_24B71CFF4(v5, type metadata accessor for ArtworkBannerAction);
}

uint64_t sub_24B71C1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B71A418(v2, a2);
  sub_24B71C3A0(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B71CF84(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ArtworkBannerView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357F0, &qword_24B764960);
  v9 = (a2 + *(result + 36));
  *v9 = sub_24B71D090;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_24B71C328@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24B71C364@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24B71C3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkBannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24B71C44C()
{
  sub_24B71C4D0();
  if (v0 <= 0x3F)
  {
    sub_24B6C71E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B71C4D0()
{
  if (!qword_27F035808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035810, &qword_24B7649D8);
    sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8);
    v0 = sub_24B75B418();
    if (!v1)
    {
      atomic_store(v0, &qword_27F035808);
    }
  }
}

unint64_t sub_24B71C574()
{
  result = qword_27F035820;
  if (!qword_27F035820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0357F0, &qword_24B764960);
    sub_24B71C600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035820);
  }

  return result;
}

unint64_t sub_24B71C600()
{
  result = qword_27F035828;
  if (!qword_27F035828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035830, &qword_24B7649E0);
    sub_24B71C684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035828);
  }

  return result;
}

unint64_t sub_24B71C684()
{
  result = qword_27F035838;
  if (!qword_27F035838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035840, &qword_24B7649E8);
    sub_24B71C710();
    sub_24B71CAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035838);
  }

  return result;
}

unint64_t sub_24B71C710()
{
  result = qword_27F035848;
  if (!qword_27F035848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035850, &qword_24B7649F0);
    sub_24B71C79C();
    sub_24B71C95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035848);
  }

  return result;
}

unint64_t sub_24B71C79C()
{
  result = qword_27F035858;
  if (!qword_27F035858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035860, &qword_24B7649F8);
    sub_24B71C828();
    sub_24B71C908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035858);
  }

  return result;
}

unint64_t sub_24B71C828()
{
  result = qword_27F035868;
  if (!qword_27F035868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035870, &qword_24B764A00);
    sub_24B71C8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035868);
  }

  return result;
}

unint64_t sub_24B71C8B4()
{
  result = qword_27F035878;
  if (!qword_27F035878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035878);
  }

  return result;
}

unint64_t sub_24B71C908()
{
  result = qword_27F035880;
  if (!qword_27F035880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035880);
  }

  return result;
}

unint64_t sub_24B71C95C()
{
  result = qword_27F035888;
  if (!qword_27F035888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035890, &qword_24B764A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
    sub_24B71CA6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035888);
  }

  return result;
}

unint64_t sub_24B71CA6C()
{
  result = qword_27F0358A8;
  if (!qword_27F0358A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358A8);
  }

  return result;
}

unint64_t sub_24B71CAC0()
{
  result = qword_27F0358B0;
  if (!qword_27F0358B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358B8, &qword_24B764A18);
    sub_24B71CB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358B0);
  }

  return result;
}

unint64_t sub_24B71CB4C()
{
  result = qword_27F0358C0;
  if (!qword_27F0358C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358C8, &qword_24B764A20);
    sub_24B71C79C();
    sub_24B71CBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358C0);
  }

  return result;
}

unint64_t sub_24B71CBD8()
{
  result = qword_27F0358D0;
  if (!qword_27F0358D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358D8, &qword_24B764A28);
    sub_24B71CC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358D0);
  }

  return result;
}

unint64_t sub_24B71CC64()
{
  result = qword_27F0358E0;
  if (!qword_27F0358E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358E8, &qword_24B764A30);
    sub_24B71CD1C();
    sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358E0);
  }

  return result;
}

unint64_t sub_24B71CD1C()
{
  result = qword_27F0358F0;
  if (!qword_27F0358F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358F8, &qword_24B764A38);
    sub_24B71CDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358F0);
  }

  return result;
}

unint64_t sub_24B71CDA8()
{
  result = qword_27F035900;
  if (!qword_27F035900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035908, &unk_24B764A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035900);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for ArtworkBannerView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2);
  v5 = *(v0 + v2 + 8);
  v6 = *(v0 + v2 + 16);
  sub_24B6C7004();
  v7 = v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B71CF24()
{
  v1 = *(type metadata accessor for ArtworkBannerView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24B71C098(v2);
}

uint64_t sub_24B71CF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B71CFF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B71D094()
{
  v1 = *v0;
  v2 = 0x4164694477656976;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x5472656E69617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7070615465726F6DLL;
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

uint64_t sub_24B71D158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B71F4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B71D180(uint64_t a1)
{
  v2 = sub_24B71DF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D1BC(uint64_t a1)
{
  v2 = sub_24B71DF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D1F8(uint64_t a1)
{
  v2 = sub_24B71E10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D234(uint64_t a1)
{
  v2 = sub_24B71E10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473696C79616C70 && a2 == 0xEB000000004C5255)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B71D31C(uint64_t a1)
{
  v2 = sub_24B71E0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D358(uint64_t a1)
{
  v2 = sub_24B71E0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D394()
{
  if (*v0)
  {
    result = 0x7473696C79616C70;
  }

  else
  {
    result = 0x6564496B63617274;
  }

  *v0;
  return result;
}

uint64_t sub_24B71D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564496B63617274 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B71D4CC(uint64_t a1)
{
  v2 = sub_24B71E064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D508(uint64_t a1)
{
  v2 = sub_24B71E064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024B76C0C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B75C6B8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B71D5F4(uint64_t a1)
{
  v2 = sub_24B71E010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D630(uint64_t a1)
{
  v2 = sub_24B71E010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D66C(uint64_t a1)
{
  v2 = sub_24B71E160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D6A8(uint64_t a1)
{
  v2 = sub_24B71E160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035938, &qword_24B764B30);
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2);
  v66 = &v59 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035940, &qword_24B764B38);
  v69 = *(v64 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v64);
  v74 = &v59 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035948, &qword_24B764B40);
  v65 = *(v73 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v59 - v8;
  v9 = sub_24B75B108();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035950, &qword_24B764B48);
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v16);
  v61 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035958, &qword_24B764B50);
  v59 = *(v19 - 8);
  v60 = v19;
  v20 = *(v59 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  v23 = type metadata accessor for WorkoutDetailAction();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035960, &unk_24B764B58);
  v28 = *(v27 - 8);
  v77 = v27;
  v78 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v59 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B71DF58();
  v76 = v31;
  sub_24B75C738();
  sub_24B71DFAC(v75, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v72;
    v36 = v73;
    v38 = v74;
    v40 = v70;
    v39 = v71;
    if (EnumCaseMultiPayload)
    {
      v51 = *v26;
      v52 = *(v26 + 1);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50);
      v54 = v12;
      (*(v40 + 32))(v12, &v26[*(v53 + 48)], v39);
      v85 = 3;
      sub_24B71E064();
      v55 = v76;
      v56 = v77;
      sub_24B75C638();
      v84 = 0;
      v57 = v64;
      v58 = v79;
      sub_24B75C678();

      if (!v58)
      {
        v83 = 1;
        sub_24B6A72A8(&qword_27F0341E0);
        sub_24B75C6A8();
      }

      (*(v69 + 8))(v38, v57);
      (*(v40 + 8))(v54, v39);
      return (*(v78 + 8))(v55, v56);
    }

    else
    {
      (*(v70 + 32))(v15, v26, v71);
      v82 = 2;
      sub_24B71E0B8();
      v42 = v76;
      v41 = v77;
      sub_24B75C638();
      sub_24B6A72A8(&qword_27F0341E0);
      sub_24B75C6A8();
      (*(v65 + 8))(v37, v36);
      (*(v40 + 8))(v15, v39);
      return (*(v78 + 8))(v42, v41);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v45 = *v26;
    v44 = *(v26 + 1);
    v86 = 4;
    sub_24B71E010();
    v46 = v66;
    v48 = v76;
    v47 = v77;
    sub_24B75C638();
    v49 = v68;
    sub_24B75C678();

    (*(v67 + 8))(v46, v49);
    return (*(v78 + 8))(v48, v47);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v80 = 0;
      sub_24B71E160();
      v35 = v76;
      v34 = v77;
      sub_24B75C638();
      (*(v59 + 8))(v22, v60);
    }

    else
    {
      v81 = 1;
      sub_24B71E10C();
      v50 = v61;
      v35 = v76;
      v34 = v77;
      sub_24B75C638();
      (*(v62 + 8))(v50, v63);
    }

    return (*(v78 + 8))(v35, v34);
  }
}

uint64_t type metadata accessor for WorkoutDetailAction()
{
  result = qword_27F0359C8;
  if (!qword_27F0359C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B71DF58()
{
  result = qword_27F035968;
  if (!qword_27F035968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035968);
  }

  return result;
}

uint64_t sub_24B71DFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B71E010()
{
  result = qword_27F035970;
  if (!qword_27F035970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035970);
  }

  return result;
}

unint64_t sub_24B71E064()
{
  result = qword_27F035978;
  if (!qword_27F035978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035978);
  }

  return result;
}

unint64_t sub_24B71E0B8()
{
  result = qword_27F035980;
  if (!qword_27F035980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035980);
  }

  return result;
}

unint64_t sub_24B71E10C()
{
  result = qword_27F035988;
  if (!qword_27F035988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035988);
  }

  return result;
}

unint64_t sub_24B71E160()
{
  result = qword_27F035990;
  if (!qword_27F035990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035990);
  }

  return result;
}

uint64_t WorkoutDetailAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035998, &qword_24B764B68);
  v4 = *(v3 - 8);
  v88 = v3;
  v89 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v97 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359A0, &qword_24B764B70);
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v7);
  v93 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359A8, &qword_24B764B78);
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = *(v86 + 64);
  MEMORY[0x28223BE20](v10);
  v96 = &v77 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359B0, &qword_24B764B80);
  v84 = *(v85 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v95 = &v77 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359B8, &qword_24B764B88);
  v82 = *(v83 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v92 = &v77 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359C0, &unk_24B764B90);
  v94 = *(v99 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x28223BE20](v99);
  v19 = &v77 - v18;
  v20 = type metadata accessor for WorkoutDetailAction();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v77 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_24B71DF58();
  v35 = v101;
  sub_24B75C728();
  if (!v35)
  {
    v80 = v29;
    v78 = v23;
    v36 = v95;
    v79 = v26;
    v37 = v96;
    v38 = v97;
    v81 = v32;
    v101 = v20;
    v39 = v98;
    v40 = v99;
    v41 = sub_24B75C628();
    v42 = (2 * *(v41 + 16)) | 1;
    v102 = v41;
    v103 = v41 + 32;
    v104 = 0;
    v105 = v42;
    v43 = sub_24B6B9E10();
    if (v43 != 5 && v104 == v105 >> 1)
    {
      if (v43 > 1u)
      {
        if (v43 == 2)
        {
          v106 = 2;
          sub_24B71E0B8();
          v58 = v37;
          sub_24B75C598();
          sub_24B75B108();
          sub_24B6A72A8(&qword_27F0341F8);
          v59 = v80;
          v60 = v87;
          sub_24B75C618();
          v61 = v94;
          (*(v86 + 8))(v58, v60);
          (*(v61 + 8))(v19, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v65 = v59;
        }

        else
        {
          if (v43 == 3)
          {
            v106 = 3;
            sub_24B71E064();
            v44 = v93;
            sub_24B75C598();
            v45 = v39;
            v106 = 0;
            v46 = v44;
            v47 = sub_24B75C5E8();
            v48 = v94;
            v67 = v66;
            v68 = v47;
            v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50) + 48);
            v70 = v79;
            *v79 = v68;
            *(v70 + 8) = v67;
            sub_24B75B108();
            v106 = 1;
            sub_24B6A72A8(&qword_27F0341F8);
            v71 = v91;
            sub_24B75C618();
            (*(v90 + 8))(v46, v71);
            (*(v48 + 8))(v19, v99);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v76 = v81;
            sub_24B71ED28(v70, v81);
LABEL_17:
            v64 = v100;
LABEL_19:
            sub_24B71ED28(v76, v45);
            v53 = v64;
            return __swift_destroy_boxed_opaque_existential_1(v53);
          }

          v106 = 4;
          sub_24B71E010();
          sub_24B75C598();
          v62 = v88;
          v72 = sub_24B75C5E8();
          v74 = v73;
          (*(v89 + 8))(v38, v62);
          (*(v94 + 8))(v19, v40);
          swift_unknownObjectRelease();
          v75 = v78;
          *v78 = v72;
          v75[1] = v74;
          swift_storeEnumTagMultiPayload();
          v65 = v75;
        }

        v76 = v81;
        sub_24B71ED28(v65, v81);
        v64 = v100;
        v45 = v39;
        goto LABEL_19;
      }

      v55 = v19;
      if (v43)
      {
        v106 = 1;
        sub_24B71E10C();
        sub_24B75C598();
        v63 = v94;
        v45 = v39;
        (*(v84 + 8))(v36, v85);
        (*(v63 + 8))(v19, v40);
      }

      else
      {
        v106 = 0;
        sub_24B71E160();
        v56 = v92;
        sub_24B75C598();
        v57 = v94;
        v45 = v39;
        (*(v82 + 8))(v56, v83);
        (*(v57 + 8))(v55, v40);
      }

      swift_unknownObjectRelease();
      v76 = v81;
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    }

    v49 = sub_24B75C568();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v51 = v101;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    (*(v94 + 8))(v19, v40);
    swift_unknownObjectRelease();
  }

  v53 = v100;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_24B71ED28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24B71EDBC()
{
  sub_24B71EE44();
  if (v0 <= 0x3F)
  {
    sub_24B71EE8C();
    if (v1 <= 0x3F)
    {
      sub_24B713A5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B71EE44()
{
  if (!qword_27F0359D8)
  {
    v0 = sub_24B75B108();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0359D8);
    }
  }
}

void sub_24B71EE8C()
{
  if (!qword_27F0359E0)
  {
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F0359E0);
    }
  }
}

unint64_t sub_24B71EF5C()
{
  result = qword_27F0359E8;
  if (!qword_27F0359E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0359E8);
  }

  return result;
}

unint64_t sub_24B71EFB4()
{
  result = qword_27F0359F0;
  if (!qword_27F0359F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0359F0);
  }

  return result;
}

unint64_t sub_24B71F00C()
{
  result = qword_27F0359F8;
  if (!qword_27F0359F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0359F8);
  }

  return result;
}

unint64_t sub_24B71F064()
{
  result = qword_27F035A00;
  if (!qword_27F035A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A00);
  }

  return result;
}

unint64_t sub_24B71F0BC()
{
  result = qword_27F035A08;
  if (!qword_27F035A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A08);
  }

  return result;
}

unint64_t sub_24B71F114()
{
  result = qword_27F035A10;
  if (!qword_27F035A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A10);
  }

  return result;
}

unint64_t sub_24B71F16C()
{
  result = qword_27F035A18;
  if (!qword_27F035A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A18);
  }

  return result;
}

unint64_t sub_24B71F1C4()
{
  result = qword_27F035A20;
  if (!qword_27F035A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A20);
  }

  return result;
}

unint64_t sub_24B71F21C()
{
  result = qword_27F035A28;
  if (!qword_27F035A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A28);
  }

  return result;
}

unint64_t sub_24B71F274()
{
  result = qword_27F035A30;
  if (!qword_27F035A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A30);
  }

  return result;
}

unint64_t sub_24B71F2CC()
{
  result = qword_27F035A38;
  if (!qword_27F035A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A38);
  }

  return result;
}

unint64_t sub_24B71F324()
{
  result = qword_27F035A40;
  if (!qword_27F035A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A40);
  }

  return result;
}

unint64_t sub_24B71F37C()
{
  result = qword_27F035A48;
  if (!qword_27F035A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A48);
  }

  return result;
}

unint64_t sub_24B71F3D4()
{
  result = qword_27F035A50;
  if (!qword_27F035A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A50);
  }

  return result;
}

unint64_t sub_24B71F42C()
{
  result = qword_27F035A58;
  if (!qword_27F035A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A58);
  }

  return result;
}

unint64_t sub_24B71F484()
{
  result = qword_27F035A60;
  if (!qword_27F035A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A60);
  }

  return result;
}

uint64_t sub_24B71F4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4164694477656976 && a2 == 0xED00007261657070;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7070615465726F6DLL && a2 == 0xEA00000000006465 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76C080 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76C0A0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5472656E69617274 && a2 == 0xED00006465707061)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B71F6B0()
{
  v1 = 0x6157646564697567;
  v2 = 0x697461746964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x7552646564697567;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B71F730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B720070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B71F758(uint64_t a1)
{
  v2 = sub_24B71FE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F794(uint64_t a1)
{
  v2 = sub_24B71FE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F7D0(uint64_t a1)
{
  v2 = sub_24B71FF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F80C(uint64_t a1)
{
  v2 = sub_24B71FF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F848(uint64_t a1)
{
  v2 = sub_24B71FFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F884(uint64_t a1)
{
  v2 = sub_24B71FFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F8C0(uint64_t a1)
{
  v2 = sub_24B71FF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F8FC(uint64_t a1)
{
  v2 = sub_24B71FF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F938(uint64_t a1)
{
  v2 = sub_24B71FEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F974(uint64_t a1)
{
  v2 = sub_24B71FEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailContentMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t WorkoutDetailContentMediaType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A68, &qword_24B765240);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A70, &qword_24B765248);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A78, &qword_24B765250);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A80, &qword_24B765258);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A88, &qword_24B765260);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B71FE5C();
  sub_24B75C738();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_24B71FF04();
      v12 = v29;
      sub_24B75C638();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_24B71FEB0();
      v12 = v32;
      sub_24B75C638();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_24B71FF58();
    sub_24B75C638();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_24B71FFAC();
  sub_24B75C638();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_24B71FE5C()
{
  result = qword_27F035A90;
  if (!qword_27F035A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A90);
  }

  return result;
}

unint64_t sub_24B71FEB0()
{
  result = qword_27F035A98;
  if (!qword_27F035A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A98);
  }

  return result;
}

unint64_t sub_24B71FF04()
{
  result = qword_27F035AA0;
  if (!qword_27F035AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AA0);
  }

  return result;
}

unint64_t sub_24B71FF58()
{
  result = qword_27F035AA8;
  if (!qword_27F035AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AA8);
  }

  return result;
}

unint64_t sub_24B71FFAC()
{
  result = qword_27F035AB0;
  if (!qword_27F035AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AB0);
  }

  return result;
}

void *sub_24B720018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B7201E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24B720070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_24B7201E4(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B18, &qword_24B765750);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B20, &qword_24B765758);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B28, &qword_24B765760);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B30, &qword_24B765768);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B38, &unk_24B765770);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B71FE5C();
  v21 = v50;
  sub_24B75C728();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_24B75C628();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_24B6B668C();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_24B71FF58();
        v36 = v40;
        sub_24B75C598();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_24B71FFAC();
        v29 = v40;
        sub_24B75C598();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_24B71FF04();
      v35 = v40;
      sub_24B75C598();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_24B71FEB0();
      v37 = v40;
      sub_24B75C598();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_24B75C568();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
  *v15 = &type metadata for WorkoutDetailContentMediaType;
  sub_24B75C5A8();
  sub_24B75C558();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_24B720828()
{
  result = qword_27F035AB8;
  if (!qword_27F035AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AB8);
  }

  return result;
}

unint64_t sub_24B7208E0()
{
  result = qword_27F035AC0;
  if (!qword_27F035AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AC0);
  }

  return result;
}

unint64_t sub_24B720938()
{
  result = qword_27F035AC8;
  if (!qword_27F035AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AC8);
  }

  return result;
}

unint64_t sub_24B720990()
{
  result = qword_27F035AD0;
  if (!qword_27F035AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AD0);
  }

  return result;
}

unint64_t sub_24B7209E8()
{
  result = qword_27F035AD8;
  if (!qword_27F035AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AD8);
  }

  return result;
}

unint64_t sub_24B720A40()
{
  result = qword_27F035AE0;
  if (!qword_27F035AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AE0);
  }

  return result;
}

unint64_t sub_24B720A98()
{
  result = qword_27F035AE8;
  if (!qword_27F035AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AE8);
  }

  return result;
}

unint64_t sub_24B720AF0()
{
  result = qword_27F035AF0;
  if (!qword_27F035AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AF0);
  }

  return result;
}

unint64_t sub_24B720B48()
{
  result = qword_27F035AF8;
  if (!qword_27F035AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AF8);
  }

  return result;
}

unint64_t sub_24B720BA0()
{
  result = qword_27F035B00;
  if (!qword_27F035B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035B00);
  }

  return result;
}

unint64_t sub_24B720BF8()
{
  result = qword_27F035B08;
  if (!qword_27F035B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035B08);
  }

  return result;
}

unint64_t sub_24B720C50()
{
  result = qword_27F035B10;
  if (!qword_27F035B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035B10);
  }

  return result;
}

uint64_t sub_24B720CBC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    if (a1 != 6)
    {
      v6 = 0x6269737365636361;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return 0x6269737365636361;
    }
  }

  else
  {
    v1 = 0x616D536172747865;
    v2 = 0x656772616CLL;
    v3 = 0x72614C6172747865;
    if (a1 != 4)
    {
      v3 = 0x7478456172747865;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6C616D73;
    if (a1 != 1)
    {
      v4 = 0x6D756964656DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B720E68(uint64_t a1)
{
  v2 = sub_24B7221A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B720EA4(uint64_t a1)
{
  v2 = sub_24B7221A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B720EE0(uint64_t a1)
{
  v2 = sub_24B72214C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B720F1C(uint64_t a1)
{
  v2 = sub_24B72214C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B720F58(uint64_t a1)
{
  v2 = sub_24B7220F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B720F94(uint64_t a1)
{
  v2 = sub_24B7220F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B720FD0(uint64_t a1)
{
  v2 = sub_24B7220A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B72100C(uint64_t a1)
{
  v2 = sub_24B7220A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721048(uint64_t a1)
{
  v2 = sub_24B722050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721084(uint64_t a1)
{
  v2 = sub_24B722050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7210C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B722520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7210FC(uint64_t a1)
{
  v2 = sub_24B721FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721138(uint64_t a1)
{
  v2 = sub_24B721FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721174(uint64_t a1)
{
  v2 = sub_24B7221F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7211B0(uint64_t a1)
{
  v2 = sub_24B7221F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7211EC(uint64_t a1)
{
  v2 = sub_24B722248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721228(uint64_t a1)
{
  v2 = sub_24B722248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721264(uint64_t a1)
{
  v2 = sub_24B72229C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7212A0(uint64_t a1)
{
  v2 = sub_24B72229C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7212DC(uint64_t a1)
{
  v2 = sub_24B7223EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721318(uint64_t a1)
{
  v2 = sub_24B7223EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721354(uint64_t a1)
{
  v2 = sub_24B7222F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721390(uint64_t a1)
{
  v2 = sub_24B7222F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7213CC(uint64_t a1)
{
  v2 = sub_24B722344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721408(uint64_t a1)
{
  v2 = sub_24B722344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721444(uint64_t a1)
{
  v2 = sub_24B722398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721480(uint64_t a1)
{
  v2 = sub_24B722398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailDynamicTypeSize.encode(to:)(void *a1, int a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B40, &qword_24B765780);
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B48, &qword_24B765788);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B50, &qword_24B765790);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v9);
  v78 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B58, &qword_24B765798);
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12);
  v75 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B60, &qword_24B7657A0);
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = *(v73 + 64);
  MEMORY[0x28223BE20](v15);
  v72 = &v55 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B68, &qword_24B7657A8);
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v55 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B70, &qword_24B7657B0);
  v67 = *(v68 - 8);
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v55 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B78, &qword_24B7657B8);
  v64 = *(v65 - 8);
  v22 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v55 - v23;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B80, &qword_24B7657C0);
  v61 = *(v62 - 8);
  v24 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v55 - v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B88, &qword_24B7657C8);
  v58 = *(v59 - 8);
  v26 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v55 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B90, &qword_24B7657D0);
  v56 = *(v28 - 8);
  v29 = *(v56 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v55 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B98, &qword_24B7657D8);
  v55 = *(v32 - 8);
  v33 = *(v55 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v55 - v34;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035BA0, &qword_24B7657E0);
  v36 = *(v89 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v89);
  v39 = &v55 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B721FFC();
  v88 = v39;
  sub_24B75C738();
  v41 = (v36 + 8);
  if (v87 > 5u)
  {
    if (v87 > 8u)
    {
      if (v87 == 9)
      {
        v99 = 9;
        sub_24B7220F8();
        v44 = v78;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v79;
        v45 = v80;
      }

      else if (v87 == 10)
      {
        v100 = 10;
        sub_24B7220A4();
        v44 = v81;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v82;
        v45 = v83;
      }

      else
      {
        v101 = 11;
        sub_24B722050();
        v44 = v84;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v85;
        v45 = v86;
      }
    }

    else
    {
      if (v87 == 6)
      {
        v96 = 6;
        sub_24B7221F4();
        v51 = v69;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        (*(v70 + 8))(v51, v71);
        return (*v41)(v43, v42);
      }

      if (v87 == 7)
      {
        v97 = 7;
        sub_24B7221A0();
        v44 = v72;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v73;
        v45 = v74;
      }

      else
      {
        v98 = 8;
        sub_24B72214C();
        v44 = v75;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v76;
        v45 = v77;
      }
    }

    (*(v46 + 8))(v44, v45);
    return (*v41)(v43, v42);
  }

  if (v87 > 2u)
  {
    if (v87 == 3)
    {
      v93 = 3;
      sub_24B7222F0();
      v52 = v60;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v61 + 8))(v52, v62);
    }

    else if (v87 == 4)
    {
      v94 = 4;
      sub_24B72229C();
      v47 = v63;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v64 + 8))(v47, v65);
    }

    else
    {
      v95 = 5;
      sub_24B722248();
      v54 = v66;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v67 + 8))(v54, v68);
    }
  }

  else
  {
    if (!v87)
    {
      v90 = 0;
      sub_24B7223EC();
      v48 = v88;
      v49 = v89;
      sub_24B75C638();
      (*(v55 + 8))(v35, v32);
      return (*v41)(v48, v49);
    }

    if (v87 == 1)
    {
      v91 = 1;
      sub_24B722398();
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v56 + 8))(v31, v28);
    }

    else
    {
      v92 = 2;
      sub_24B722344();
      v53 = v57;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v58 + 8))(v53, v59);
    }
  }

  return (*v41)(v43, v42);
}

unint64_t sub_24B721FFC()
{
  result = qword_27F035BA8;
  if (!qword_27F035BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BA8);
  }

  return result;
}

unint64_t sub_24B722050()
{
  result = qword_27F035BB0;
  if (!qword_27F035BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BB0);
  }

  return result;
}

unint64_t sub_24B7220A4()
{
  result = qword_27F035BB8;
  if (!qword_27F035BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BB8);
  }

  return result;
}

unint64_t sub_24B7220F8()
{
  result = qword_27F035BC0;
  if (!qword_27F035BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BC0);
  }

  return result;
}

unint64_t sub_24B72214C()
{
  result = qword_27F035BC8;
  if (!qword_27F035BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BC8);
  }

  return result;
}

unint64_t sub_24B7221A0()
{
  result = qword_27F035BD0;
  if (!qword_27F035BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BD0);
  }

  return result;
}

unint64_t sub_24B7221F4()
{
  result = qword_27F035BD8;
  if (!qword_27F035BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BD8);
  }

  return result;
}

unint64_t sub_24B722248()
{
  result = qword_27F035BE0;
  if (!qword_27F035BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BE0);
  }

  return result;
}

unint64_t sub_24B72229C()
{
  result = qword_27F035BE8;
  if (!qword_27F035BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BE8);
  }

  return result;
}

unint64_t sub_24B7222F0()
{
  result = qword_27F035BF0;
  if (!qword_27F035BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BF0);
  }

  return result;
}

unint64_t sub_24B722344()
{
  result = qword_27F035BF8;
  if (!qword_27F035BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BF8);
  }

  return result;
}

unint64_t sub_24B722398()
{
  result = qword_27F035C00;
  if (!qword_27F035C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C00);
  }

  return result;
}

unint64_t sub_24B7223EC()
{
  result = qword_27F035C08;
  if (!qword_27F035C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C08);
  }

  return result;
}

uint64_t sub_24B722458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B7228F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ProgramDetailDynamicTypeSize.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B722520(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7478456172747865 && a2 == 0xEF656772614C6172 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76C0E0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00317974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00327974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00337974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00347974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00357974696C69)
  {

    return 11;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_24B7228F4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035CF0, &qword_24B766308);
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x28223BE20](v2);
  v100 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035CF8, &qword_24B766310);
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v5);
  v105 = &v69 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D00, &qword_24B766318);
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v104 = &v69 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D08, &qword_24B766320);
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v99 = &v69 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D10, &qword_24B766328);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v98 = &v69 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D18, &qword_24B766330);
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v97 = &v69 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D20, &qword_24B766338);
  v83 = *(v82 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  v103 = &v69 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D28, &qword_24B766340);
  v81 = *(v80 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v102 = &v69 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D30, &qword_24B766348);
  v78 = *(v79 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v101 = &v69 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D38, &qword_24B766350);
  v76 = *(v77 - 8);
  v22 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v96 = &v69 - v23;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D40, &qword_24B766358);
  v74 = *(v75 - 8);
  v24 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D48, &qword_24B766360);
  v73 = *(v27 - 8);
  v28 = *(v73 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D50, &qword_24B766368);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v69 - v34;
  v37 = a1[3];
  v36 = a1[4];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_24B721FFC();
  v38 = v106;
  sub_24B75C728();
  if (v38)
  {
    goto LABEL_12;
  }

  v70 = v30;
  v69 = v27;
  v71 = v26;
  v39 = v101;
  v40 = v102;
  v41 = v103;
  v42 = v104;
  v72 = 0;
  v43 = v105;
  v106 = v32;
  v44 = sub_24B75C628();
  v45 = (2 * *(v44 + 16)) | 1;
  v108 = v44;
  v109 = v44 + 32;
  v110 = 0;
  v111 = v45;
  v46 = sub_24B6B9E0C();
  v47 = v35;
  if (v46 != 12 && v110 == v111 >> 1)
  {
    v32 = v46;
    if (v46 <= 5u)
    {
      if (v46 <= 2u)
      {
        v48 = v72;
        if (v46)
        {
          if (v46 == 1)
          {
            v112 = 1;
            sub_24B722398();
            v49 = v71;
            sub_24B75C598();
            if (!v48)
            {
              (*(v74 + 8))(v49, v75);
LABEL_45:
              v55 = v106;
              goto LABEL_47;
            }
          }

          else
          {
            v112 = 2;
            sub_24B722344();
            v65 = v96;
            sub_24B75C598();
            if (!v48)
            {
              (*(v76 + 8))(v65, v77);
              goto LABEL_45;
            }
          }
        }

        else
        {
          v112 = 0;
          sub_24B7223EC();
          v61 = v70;
          sub_24B75C598();
          if (!v48)
          {
            (*(v73 + 8))(v61, v69);
            goto LABEL_45;
          }
        }

        v55 = v106;
        goto LABEL_41;
      }

      v55 = v106;
      v58 = v72;
      if (v46 == 3)
      {
        v112 = 3;
        sub_24B7222F0();
        sub_24B75C598();
        if (!v58)
        {
          (*(v78 + 8))(v39, v79);
          goto LABEL_47;
        }
      }

      else if (v46 == 4)
      {
        v112 = 4;
        sub_24B72229C();
        sub_24B75C598();
        if (!v58)
        {
          (*(v81 + 8))(v40, v80);
          goto LABEL_47;
        }
      }

      else
      {
        v112 = 5;
        sub_24B722248();
        sub_24B75C598();
        if (!v58)
        {
          (*(v83 + 8))(v41, v82);
          goto LABEL_47;
        }
      }

      goto LABEL_41;
    }

    if (v46 <= 8u)
    {
      v55 = v106;
      if (v46 == 6)
      {
        v112 = 6;
        sub_24B7221F4();
        v62 = v97;
        v63 = v72;
        sub_24B75C598();
        if (!v63)
        {
          (*(v84 + 8))(v62, v85);
          goto LABEL_47;
        }
      }

      else
      {
        v56 = v72;
        if (v46 == 7)
        {
          v112 = 7;
          sub_24B7221A0();
          v57 = v98;
          sub_24B75C598();
          if (!v56)
          {
            (*(v86 + 8))(v57, v87);
LABEL_47:
            (*(v55 + 8))(v47, v31);
LABEL_50:
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v107);
            return v32;
          }
        }

        else
        {
          v112 = 8;
          sub_24B72214C();
          v66 = v99;
          sub_24B75C598();
          if (!v56)
          {
            (*(v88 + 8))(v66, v89);
            goto LABEL_47;
          }
        }
      }

LABEL_41:
      (*(v55 + 8))(v47, v31);
      goto LABEL_11;
    }

    v59 = v106;
    if (v46 == 9)
    {
      v112 = 9;
      sub_24B7220F8();
      v64 = v72;
      sub_24B75C598();
      if (!v64)
      {
        (*(v90 + 8))(v42, v91);
        goto LABEL_49;
      }
    }

    else if (v46 == 10)
    {
      v112 = 10;
      sub_24B7220A4();
      v60 = v72;
      sub_24B75C598();
      if (!v60)
      {
        (*(v92 + 8))(v43, v93);
LABEL_49:
        (*(v59 + 8))(v47, v31);
        goto LABEL_50;
      }
    }

    else
    {
      v112 = 11;
      sub_24B722050();
      v67 = v100;
      v68 = v72;
      sub_24B75C598();
      if (!v68)
      {
        (*(v94 + 8))(v67, v95);
        goto LABEL_49;
      }
    }

    (*(v59 + 8))(v47, v31);
    goto LABEL_11;
  }

  v50 = v31;
  v51 = sub_24B75C568();
  swift_allocError();
  v53 = v52;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
  *v53 = &type metadata for ProgramDetailDynamicTypeSize;
  sub_24B75C5A8();
  sub_24B75C558();
  (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
  swift_willThrow();
  (*(v106 + 8))(v47, v50);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v107);
  return v32;
}

unint64_t sub_24B7236D4()
{
  result = qword_27F035C10;
  if (!qword_27F035C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C10);
  }

  return result;
}

uint64_t sub_24B723738(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B7237C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B72394C()
{
  result = qword_27F035C18;
  if (!qword_27F035C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C18);
  }

  return result;
}

unint64_t sub_24B7239A4()
{
  result = qword_27F035C20;
  if (!qword_27F035C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C20);
  }

  return result;
}

unint64_t sub_24B7239FC()
{
  result = qword_27F035C28;
  if (!qword_27F035C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C28);
  }

  return result;
}

unint64_t sub_24B723A54()
{
  result = qword_27F035C30;
  if (!qword_27F035C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C30);
  }

  return result;
}

unint64_t sub_24B723AAC()
{
  result = qword_27F035C38;
  if (!qword_27F035C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C38);
  }

  return result;
}

unint64_t sub_24B723B04()
{
  result = qword_27F035C40;
  if (!qword_27F035C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C40);
  }

  return result;
}

unint64_t sub_24B723B5C()
{
  result = qword_27F035C48;
  if (!qword_27F035C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C48);
  }

  return result;
}

unint64_t sub_24B723BB4()
{
  result = qword_27F035C50;
  if (!qword_27F035C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C50);
  }

  return result;
}

unint64_t sub_24B723C0C()
{
  result = qword_27F035C58;
  if (!qword_27F035C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C58);
  }

  return result;
}

unint64_t sub_24B723C64()
{
  result = qword_27F035C60;
  if (!qword_27F035C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C60);
  }

  return result;
}

unint64_t sub_24B723CBC()
{
  result = qword_27F035C68;
  if (!qword_27F035C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C68);
  }

  return result;
}

unint64_t sub_24B723D14()
{
  result = qword_27F035C70;
  if (!qword_27F035C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C70);
  }

  return result;
}

unint64_t sub_24B723D6C()
{
  result = qword_27F035C78;
  if (!qword_27F035C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C78);
  }

  return result;
}

unint64_t sub_24B723DC4()
{
  result = qword_27F035C80;
  if (!qword_27F035C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C80);
  }

  return result;
}

unint64_t sub_24B723E1C()
{
  result = qword_27F035C88;
  if (!qword_27F035C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C88);
  }

  return result;
}

unint64_t sub_24B723E74()
{
  result = qword_27F035C90;
  if (!qword_27F035C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C90);
  }

  return result;
}

unint64_t sub_24B723ECC()
{
  result = qword_27F035C98;
  if (!qword_27F035C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C98);
  }

  return result;
}

unint64_t sub_24B723F24()
{
  result = qword_27F035CA0;
  if (!qword_27F035CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CA0);
  }

  return result;
}

unint64_t sub_24B723F7C()
{
  result = qword_27F035CA8;
  if (!qword_27F035CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CA8);
  }

  return result;
}

unint64_t sub_24B723FD4()
{
  result = qword_27F035CB0;
  if (!qword_27F035CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CB0);
  }

  return result;
}

unint64_t sub_24B72402C()
{
  result = qword_27F035CB8;
  if (!qword_27F035CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CB8);
  }

  return result;
}

unint64_t sub_24B724084()
{
  result = qword_27F035CC0;
  if (!qword_27F035CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CC0);
  }

  return result;
}

unint64_t sub_24B7240DC()
{
  result = qword_27F035CC8;
  if (!qword_27F035CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CC8);
  }

  return result;
}

unint64_t sub_24B724134()
{
  result = qword_27F035CD0;
  if (!qword_27F035CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CD0);
  }

  return result;
}

unint64_t sub_24B72418C()
{
  result = qword_27F035CD8;
  if (!qword_27F035CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CD8);
  }

  return result;
}

unint64_t sub_24B7241E4()
{
  result = qword_27F035CE0;
  if (!qword_27F035CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CE0);
  }

  return result;
}

unint64_t sub_24B72423C()
{
  result = qword_27F035CE8;
  if (!qword_27F035CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CE8);
  }

  return result;
}

uint64_t sub_24B7242E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B724374(uint64_t a1)
{
  v2 = sub_24B724538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7243B0(uint64_t a1)
{
  v2 = sub_24B724538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D58, &qword_24B766370);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B724538();
  sub_24B75C738();
  v12 = v8;
  sub_24B72458C();
  sub_24B75C6A8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B724538()
{
  result = qword_27F035D60;
  if (!qword_27F035D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D60);
  }

  return result;
}

unint64_t sub_24B72458C()
{
  result = qword_27F035D68;
  if (!qword_27F035D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D68);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewLayout.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D70, &qword_24B766378);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B724538();
  sub_24B75C728();
  if (!v2)
  {
    sub_24B72474C();
    sub_24B75C618();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B72474C()
{
  result = qword_27F035D78;
  if (!qword_27F035D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D78);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewLayout.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B724848()
{
  result = qword_27F035D80;
  if (!qword_27F035D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D80);
  }

  return result;
}

unint64_t sub_24B7248C0()
{
  result = qword_27F035D88;
  if (!qword_27F035D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D88);
  }

  return result;
}

unint64_t sub_24B724918()
{
  result = qword_27F035D90;
  if (!qword_27F035D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D90);
  }

  return result;
}

unint64_t sub_24B724970()
{
  result = qword_27F035D98;
  if (!qword_27F035D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D98);
  }

  return result;
}

uint64_t ArtworkBannerEnvironment.init(fetchWorkoutSchedule:resolveSampleContentPlaybackRestriction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t RelatedWorkoutItemContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B724A20();
  return v1;
}

uint64_t sub_24B724A2C()
{
  if (*v0)
  {
    result = 0x6C6F686563616C70;
  }

  else
  {
    result = 1835365481;
  }

  *v0;
  return result;
}

uint64_t sub_24B724A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B724B48(uint64_t a1)
{
  v2 = sub_24B72591C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B724B84(uint64_t a1)
{
  v2 = sub_24B72591C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B724BDC(uint64_t a1)
{
  v2 = sub_24B7259C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B724C18(uint64_t a1)
{
  v2 = sub_24B7259C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B724C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B724CE4(uint64_t a1)
{
  v2 = sub_24B725970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B724D20(uint64_t a1)
{
  v2 = sub_24B725970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RelatedWorkoutItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DA0, &qword_24B7665F0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DA8, &qword_24B7665F8);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DB0, &qword_24B766600);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B72591C();
  sub_24B75C738();
  if (v16)
  {
    v30 = 1;
    sub_24B725970();
    v18 = v24;
    sub_24B75C638();
    v19 = v26;
    sub_24B75C678();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_24B7259C4();
    sub_24B75C638();
    v20 = v23;
    sub_24B75C678();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t RelatedWorkoutItemContext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x24C2489B0](*(v0 + 16));

  return sub_24B75C358();
}

uint64_t RelatedWorkoutItemContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v3);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t RelatedWorkoutItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DD0, &qword_24B766608);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DD8, &qword_24B766610);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DE0, &unk_24B766618);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B72591C();
  v17 = v39;
  sub_24B75C728();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_24B75C628();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_24B6B9E04();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_24B75C568();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
      *v30 = &type metadata for RelatedWorkoutItemContext;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_24B725970();
        sub_24B75C598();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_24B75C5E8();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_24B7259C4();
        v33 = v9;
        sub_24B75C598();
        v23 = v38;
        v22 = v39;
        v25 = sub_24B75C5E8();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_24B725624()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v3);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B725688()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x24C2489B0](*(v0 + 16));

  return sub_24B75C358();
}

uint64_t sub_24B7256DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v3);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail25RelatedWorkoutItemContextO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_24B724A20();
    sub_24B724A20();
    sub_24B725E70();
    sub_24B725E70();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_24B75C6B8();
    sub_24B724A20();
    sub_24B724A20();
    sub_24B725E70();
    sub_24B725E70();
    return v14 & 1;
  }

LABEL_15:
  sub_24B724A20();
  sub_24B724A20();
  sub_24B725E70();
  sub_24B725E70();
  return 1;
}

unint64_t sub_24B72591C()
{
  result = qword_27F035DB8;
  if (!qword_27F035DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DB8);
  }

  return result;
}

unint64_t sub_24B725970()
{
  result = qword_27F035DC0;
  if (!qword_27F035DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DC0);
  }

  return result;
}

unint64_t sub_24B7259C4()
{
  result = qword_27F035DC8;
  if (!qword_27F035DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DC8);
  }

  return result;
}

unint64_t sub_24B725A1C()
{
  result = qword_27F035DE8;
  if (!qword_27F035DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DE8);
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

uint64_t sub_24B725A90(uint64_t a1, unsigned int a2)
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

uint64_t sub_24B725AD8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B725B5C()
{
  result = qword_27F035DF0;
  if (!qword_27F035DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DF0);
  }

  return result;
}

unint64_t sub_24B725BB4()
{
  result = qword_27F035DF8;
  if (!qword_27F035DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DF8);
  }

  return result;
}

unint64_t sub_24B725C0C()
{
  result = qword_27F035E00;
  if (!qword_27F035E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E00);
  }

  return result;
}

unint64_t sub_24B725C64()
{
  result = qword_27F035E08;
  if (!qword_27F035E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E08);
  }

  return result;
}

unint64_t sub_24B725CBC()
{
  result = qword_27F035E10;
  if (!qword_27F035E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E10);
  }

  return result;
}

unint64_t sub_24B725D14()
{
  result = qword_27F035E18;
  if (!qword_27F035E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E18);
  }

  return result;
}

unint64_t sub_24B725D6C()
{
  result = qword_27F035E20;
  if (!qword_27F035E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E20);
  }

  return result;
}

unint64_t sub_24B725DC4()
{
  result = qword_27F035E28;
  if (!qword_27F035E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E28);
  }

  return result;
}

unint64_t sub_24B725E1C()
{
  result = qword_27F035E30;
  if (!qword_27F035E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E30);
  }

  return result;
}

uint64_t WorkoutDetailArtwork.init(backgroundColor:templateURL:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24B6B8DE8(a1, a5, &qword_27F034120, &unk_24B75E1E0);
  v9 = type metadata accessor for WorkoutDetailArtwork();
  result = sub_24B6B8DE8(a2, a5 + *(v9 + 20), &qword_27F034118, &qword_24B75E1D8);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t WorkoutDetailArtwork.textColor.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetailArtwork() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_24B725FC4(uint64_t a1)
{
  v2 = sub_24B72720C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B726000(uint64_t a1)
{
  v2 = sub_24B72720C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E38, &qword_24B766AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B72720C();
  sub_24B75C738();
  v17[15] = 0;
  sub_24B75B298();
  sub_24B6A6F54(&qword_27F0341D8, MEMORY[0x277D09D68]);
  sub_24B75C668();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutDetailArtwork();
    v12 = *(v11 + 20);
    v17[14] = 1;
    sub_24B75B108();
    sub_24B6A6F54(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C668();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v17[13] = 2;
    sub_24B75C678();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutDetailArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E48, &qword_24B766AD8);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = type metadata accessor for WorkoutDetailArtwork();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B72720C();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v22 = v29;
  sub_24B75B298();
  v34 = 0;
  sub_24B6A6F54(&qword_27F0341F0, MEMORY[0x277D09D68]);
  sub_24B75C5D8();
  sub_24B6B8DE8(v11, v19, &qword_27F034120, &unk_24B75E1E0);
  sub_24B75B108();
  v33 = 1;
  sub_24B6A6F54(&qword_27F0341F8, MEMORY[0x277CC9260]);
  sub_24B75C5D8();
  sub_24B6B8DE8(v7, &v19[*(v16 + 20)], &qword_27F034118, &qword_24B75E1D8);
  v32 = 2;
  v23 = sub_24B75C5E8();
  v25 = v24;
  (*(v22 + 8))(v15, v30);
  v26 = &v19[*(v16 + 24)];
  *v26 = v23;
  v26[1] = v25;
  sub_24B727260(v19, v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24B7272C4(v19);
}

uint64_t WorkoutDetailArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_24B75B108();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_24B75B298();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = v1;
  sub_24B6B9D34(v1, &v27 - v16, &qword_27F034120, &unk_24B75E1E0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_24B75C6F8();
    sub_24B6A6F54(&qword_27F034128, MEMORY[0x277D09D68]);
    sub_24B75C2C8();
    (*(v10 + 8))(v13, v9);
  }

  v19 = type metadata accessor for WorkoutDetailArtwork();
  sub_24B6B9D34(v1 + *(v19 + 20), v8, &qword_27F034118, &qword_24B75E1D8);
  v21 = v29;
  v20 = v30;
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v22 = v28;
    (*(v21 + 32))(v28, v8, v20);
    sub_24B75C6F8();
    sub_24B6A6F54(&qword_27F034130, MEMORY[0x277CC9260]);
    sub_24B75C2C8();
    (*(v21 + 8))(v22, v20);
  }

  v23 = (v18 + *(v19 + 24));
  v24 = *v23;
  v25 = v23[1];
  return sub_24B75C358();
}

uint64_t WorkoutDetailArtwork.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutDetailArtwork.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B726AD0()
{
  sub_24B75C6D8();
  WorkoutDetailArtwork.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B726B14()
{
  sub_24B75C6D8();
  WorkoutDetailArtwork.hash(into:)();
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail07WorkoutC7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v54 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v54 - v11;
  v12 = sub_24B75B298();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v54 - v23;
  v26 = *(v25 + 56);
  v60 = a1;
  sub_24B6B9D34(a1, &v54 - v23, &qword_27F034120, &unk_24B75E1E0);
  v61 = a2;
  sub_24B6B9D34(a2, &v24[v26], &qword_27F034120, &unk_24B75E1E0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_24B6B9CD4(v24, &qword_27F034120, &unk_24B75E1E0);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_27F034220;
    v29 = &unk_24B75E810;
    v30 = v24;
LABEL_14:
    sub_24B6B9CD4(v30, v28, v29);
    goto LABEL_15;
  }

  sub_24B6B9D34(v24, v20, &qword_27F034120, &unk_24B75E1E0);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v20, v12);
    goto LABEL_6;
  }

  (*(v13 + 32))(v16, &v24[v26], v12);
  sub_24B6A6F54(&qword_27F034230, MEMORY[0x277D09D68]);
  v31 = sub_24B75C2D8();
  v32 = *(v13 + 8);
  v32(v16, v12);
  v32(v20, v12);
  sub_24B6B9CD4(v24, &qword_27F034120, &unk_24B75E1E0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v33 = type metadata accessor for WorkoutDetailArtwork();
  v34 = *(v33 + 20);
  v35 = v57;
  v36 = *(v56 + 48);
  v37 = v60;
  sub_24B6B9D34(v60 + v34, v57, &qword_27F034118, &qword_24B75E1D8);
  v38 = v61 + v34;
  v39 = v61;
  sub_24B6B9D34(v38, v35 + v36, &qword_27F034118, &qword_24B75E1D8);
  v41 = v58;
  v40 = v59;
  v42 = *(v58 + 48);
  if (v42(v35, 1, v59) != 1)
  {
    v43 = v55;
    sub_24B6B9D34(v35, v55, &qword_27F034118, &qword_24B75E1D8);
    if (v42(v35 + v36, 1, v40) == 1)
    {
      (*(v41 + 8))(v43, v40);
      goto LABEL_13;
    }

    v46 = v35 + v36;
    v47 = v54;
    (*(v41 + 32))(v54, v46, v40);
    sub_24B6A6F54(&qword_27F034228, MEMORY[0x277CC9260]);
    v48 = sub_24B75C2D8();
    v49 = *(v41 + 8);
    v49(v47, v40);
    v49(v43, v40);
    sub_24B6B9CD4(v35, &qword_27F034118, &qword_24B75E1D8);
    if (v48)
    {
      goto LABEL_18;
    }

LABEL_15:
    v44 = 0;
    return v44 & 1;
  }

  if (v42(v35 + v36, 1, v40) != 1)
  {
LABEL_13:
    v28 = &qword_27F034218;
    v29 = &unk_24B761640;
    v30 = v35;
    goto LABEL_14;
  }

  sub_24B6B9CD4(v35, &qword_27F034118, &qword_24B75E1D8);
LABEL_18:
  v50 = *(v33 + 24);
  v51 = *(v37 + v50);
  v52 = *(v37 + v50 + 8);
  v53 = (v39 + v50);
  if (v51 == *v53 && v52 == v53[1])
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_24B75C6B8();
  }

  return v44 & 1;
}

uint64_t type metadata accessor for WorkoutDetailArtwork()
{
  result = qword_2810F77C8;
  if (!qword_2810F77C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B72720C()
{
  result = qword_27F035E40;
  if (!qword_27F035E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E40);
  }

  return result;
}

uint64_t sub_24B727260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7272C4(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B7273A4()
{
  result = qword_27F035E58;
  if (!qword_27F035E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E58);
  }

  return result;
}

unint64_t sub_24B7273FC()
{
  result = qword_27F035E60;
  if (!qword_27F035E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E60);
  }

  return result;
}

unint64_t sub_24B727454()
{
  result = qword_27F035E68;
  if (!qword_27F035E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E68);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewEnvironment.init(fetchContextMenuPreviewContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24B7274C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24B75B8E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_24B75B3D8();
    *(&v13 + 1) = v15;
    *(&v14 + 1) = v16;
  }

  v18[0] = v13;
  v18[1] = v14;
  v19 = a3 & 1;
  sub_24B75B8D8();
  MEMORY[0x24C248140](v12, a4, v8, a5);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_24B7275FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035F58, qword_24B766E48);
  sub_24B6C743C(qword_27F035F60, &qword_27F035F58, qword_24B766E48);

  return sub_24B75B408();
}

uint64_t sub_24B72769C()
{
  v0 = sub_24B75BEE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *MEMORY[0x277CE0EE0];
  v7 = *(v1 + 104);
  v7(v5, v6, v0, v3);
  v8 = sub_24B75BF48();
  (v7)(v5, v6, v0);
  sub_24B75BF48();
  return v8;
}

uint64_t sub_24B7277D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  return sub_24B75B268();
}

uint64_t sub_24B72783C(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  sub_24B75B288();
  sub_24B75B278();
  return v4;
}

uint64_t sub_24B7278B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t (*sub_24B72793C(uint64_t a1))()
{
  v1 = *(a1 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  *(swift_allocObject() + 16) = v3;
  return sub_24B735478;
}

uint64_t ProgramDetailView.init(store:workoutsCanvasViewBuilder:artworkViewBuilder:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for ProgramDetailView();
  v10 = (a6 + v9[14]);
  *v10 = sub_24B72769C();
  v10[1] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *a6 = sub_24B6C4E74;
  *(a6 + 8) = v12;
  *(a6 + 16) = 0;
  v13 = v9[16];

  a3(v14);
  v15 = v9[13];

  sub_24B7277D4();
  v16 = a6 + v9[15];
  sub_24B7278B4(a4, a5);
}

uint64_t sub_24B727B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a6;
  v48 = a5;
  v55 = a3;
  v56 = a4;
  v53 = a1;
  v54 = a2;
  v57 = a7;
  v9 = *(a6 + 16);
  sub_24B75B958();
  v52 = v9;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  v10 = sub_24B75C178();
  WitnessTable = swift_getWitnessTable();
  v45 = v10;
  v11 = sub_24B75C088();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v42 - v16;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v42 = swift_getWitnessTable();
  v17 = sub_24B75C088();
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v24 = sub_24B75B7B8();
  v50 = *(v24 - 8);
  v51 = v24;
  v25 = *(v50 + 64);
  MEMORY[0x28223BE20](v24);
  v49 = &v42 - v26;
  v27 = v8;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  LOBYTE(v8) = v60;
  v28 = sub_24B75B788();
  MEMORY[0x28223BE20](v28);
  *(&v42 - 10) = v52;
  *(&v42 - 9) = *(v27 + 24);
  *(&v42 - 7) = *(v27 + 40);
  *(&v42 - 6) = v7;
  v29 = v54;
  *(&v42 - 5) = v53;
  *(&v42 - 4) = v29;
  v30 = v56;
  *(&v42 - 3) = v55;
  *(&v42 - 2) = v30;
  if (v8)
  {
    *(&v42 - 1) = v48;
    sub_24B75C078();
    v31 = swift_getWitnessTable();
    v32 = v46;
    sub_24B6C7504(v14, v11, v31);
    v33 = *(v47 + 8);
    v33(v14, v11);
    sub_24B6C7504(v32, v11, v31);
    swift_getWitnessTable();
    v34 = v49;
    sub_24B738894(v14, v17, v11);
    v33(v14, v11);
    v33(v32, v11);
  }

  else
  {
    sub_24B75C078();
    v35 = swift_getWitnessTable();
    sub_24B6C7504(v20, v17, v35);
    v36 = *(v43 + 8);
    v36(v20, v17);
    sub_24B6C7504(v23, v17, v35);
    swift_getWitnessTable();
    v34 = v49;
    sub_24B73898C(v20, v17);
    v36(v20, v17);
    v36(v23, v17);
  }

  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v58 = v37;
  v59 = v38;
  v39 = v51;
  v40 = swift_getWitnessTable();
  sub_24B6C7504(v34, v39, v40);
  return (*(v50 + 8))(v34, v39);
}

uint64_t sub_24B728240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v103 = a3;
  v104 = a8;
  v99 = a7;
  v101 = a5;
  v102 = a4;
  v77 = a2;
  v95 = a9;
  v98 = a10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E78, &qword_24B766D50);
  v13 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v73 - v16;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v22 = sub_24B75B558();
  v76 = *(v22 - 8);
  v23 = *(v76 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v73 - v24;
  v79 = sub_24B75B558();
  v81 = *(v79 - 8);
  v26 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v73 - v27;
  v82 = sub_24B75B558();
  v85 = *(v82 - 8);
  v28 = v85[8];
  MEMORY[0x28223BE20](v82);
  v78 = &v73 - v29;
  v83 = sub_24B75B558();
  v88 = *(v83 - 8);
  v30 = *(v88 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v73 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  v87 = sub_24B75B558();
  v90 = *(v87 - 8);
  v32 = *(v90 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = &v73 - v33;
  v89 = sub_24B75B558();
  v91 = *(v89 - 8);
  v34 = *(v91 + 64);
  MEMORY[0x28223BE20](v89);
  v100 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v86 = &v73 - v37;
  MEMORY[0x28223BE20](v38);
  v96 = a6;
  v97 = &v73 - v39;
  v116 = a6;
  v117 = a7;
  v40 = v104;
  v118 = v104;
  v119 = a10;
  v41 = type metadata accessor for ProgramDetailView();
  v42 = sub_24B72783C(v41);
  v42(v77);

  sub_24B75BDA8();
  (*(v17 + 8))(v21, a6);
  sub_24B75B568();
  sub_24B75B998();
  v43 = sub_24B73593C(&qword_27F034580, MEMORY[0x277CDE470]);
  v120 = v40;
  v121 = v43;
  v77 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v45 = v75;
  sub_24B75BD68();
  (*(v76 + 8))(v25, v22);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v46 = a1;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v115[10] = WitnessTable;
  v115[11] = MEMORY[0x277CE0880];
  v47 = v79;
  v48 = swift_getWitnessTable();
  v49 = v78;
  sub_24B75BCE8();
  (*(v81 + 8))(v45, v47);
  sub_24B75B9B8();
  v50 = v46;
  v74 = v46;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v115[8] = v48;
  v115[9] = MEMORY[0x277CE01B0];
  v51 = v82;
  v52 = swift_getWitnessTable();
  v53 = v80;
  sub_24B75BE48();
  (v85[1])(v49, v51);
  sub_24B75C148();
  v85 = &v73;
  v105 = v96;
  v106 = v99;
  v107 = v104;
  v108 = v98;
  v109 = v50;
  v110 = v103;
  v111 = v102;
  v112 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361B8, &qword_24B7670D0);
  v115[6] = v52;
  v115[7] = MEMORY[0x277CDF918];
  v54 = v83;
  v55 = swift_getWitnessTable();
  sub_24B6C743C(&qword_27F0361C0, &qword_27F0361B8, &qword_24B7670D0);
  v56 = v84;
  sub_24B75BE38();
  (*(v88 + 8))(v53, v54);
  v57 = sub_24B6C743C(&qword_27F0361C8, &qword_27F035E70, &qword_24B766D48);
  v115[4] = v55;
  v115[5] = v57;
  v58 = v87;
  v59 = swift_getWitnessTable();
  v60 = v86;
  sub_24B75BEB8();
  (*(v90 + 8))(v56, v58);
  v115[2] = v59;
  v115[3] = MEMORY[0x277CDFC48];
  v61 = v89;
  v62 = swift_getWitnessTable();
  v63 = v97;
  v64 = v60;
  sub_24B6C7504(v60, v61, v62);
  v65 = v91;
  v66 = *(v91 + 8);
  v66(v64, v61);
  v67 = v92;
  sub_24B729BC8(v74, v103, v102, v101, v96, v99, v104, v98, v92);
  v68 = v93;
  *(v67 + *(v93 + 36)) = 256;
  v69 = *(v65 + 16);
  v70 = v100;
  v69(v100, v63, v61);
  v116 = v70;
  v71 = v94;
  sub_24B6B9D34(v67, v94, &qword_27F035E78, &qword_24B766D50);
  v117 = v71;
  v115[0] = v61;
  v115[1] = v68;
  v113 = v62;
  v114 = sub_24B735998();
  sub_24B7386C4(&v116, 2uLL, v115);
  sub_24B6B9CD4(v67, &qword_27F035E78, &qword_24B766D50);
  v66(v97, v61);
  sub_24B6B9CD4(v71, &qword_27F035E78, &qword_24B766D50);
  return (v66)(v100, v61);
}

uint64_t sub_24B728CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = sub_24B75C148();
  a9[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036238, &qword_24B767160);
  return sub_24B728D90(a1, a2, a3, a4, a5, a6, a7, a8, a9 + *(v19 + 44));
}

uint64_t sub_24B728D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v45 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036240, &qword_24B767168);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036248, &qword_24B767170);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  v41 = a5;
  v42 = a6;
  v46 = a5;
  *&v47 = a6;
  v26 = a1;
  v43 = a7;
  v44 = a8;
  *(&v47 + 1) = a7;
  *&v48 = a8;
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (BYTE8(v48) > 6u)
  {
    v35 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036250, &qword_24B767178);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24B760380;
    *(v27 + 32) = sub_24B75BF08();
    v28 = [objc_opt_self() systemBackgroundColor];
    *(v27 + 40) = sub_24B75BED8();
    MEMORY[0x24C2483D0](v27);
    sub_24B75C1B8();
    sub_24B75C1A8();
    sub_24B75B528();
    v37 = sub_24B75B568();
    v29 = sub_24B75B998();
    v30 = v46;
    *v25 = sub_24B75B788();
    *(v25 + 1) = 0;
    v25[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036258, &qword_24B767180);
    sub_24B72911C(v26, v38, v39, v40, v41, v42, v43, v44, &v25[*(v31 + 44)]);
    sub_24B6B9D34(v25, v22, &qword_27F036248, &qword_24B767170);
    *v18 = v30;
    v32 = v47;
    *(v18 + 24) = v48;
    *(v18 + 8) = v32;
    *(v18 + 5) = v37;
    v18[48] = v29;
    v33 = v45;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036260, &unk_24B767188);
    sub_24B6B9D34(v22, &v18[*(v34 + 48)], &qword_27F036248, &qword_24B767170);

    sub_24B6B9CD4(v25, &qword_27F036248, &qword_24B767170);
    sub_24B6B9CD4(v22, &qword_27F036248, &qword_24B767170);

    sub_24B6B8DE8(v18, v33, &qword_27F036240, &qword_24B767168);
    v35 = 0;
  }

  return (*(v15 + 56))(v45, v35, 1, v14);
}

uint64_t sub_24B72911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v124 = a4;
  v125 = a9;
  v145 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v144 = &v123 - v17;
  v18 = sub_24B75AFE8();
  v19 = *(v18 - 8);
  v135 = v18;
  v136 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v137 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B75B768();
  v142 = *(v22 - 8);
  v143 = v22;
  v23 = *(v142 + 64);
  MEMORY[0x28223BE20](v22);
  v141 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24B75BAE8();
  v26 = *(v25 - 8);
  v27 = v26[8];
  MEMORY[0x28223BE20](v25);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v147 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v146 = &v123 - v34;
  v166 = a5;
  v167 = a6;
  v168 = a7;
  v169 = a8;
  v130 = type metadata accessor for ProgramDetailView();
  v133 = a1;
  v35 = sub_24B72793C(v130);
  v36 = (v35)(a2);
  v38 = v37;
  LOBYTE(a1) = v39;
  v140 = v40;

  sub_24B75BA58();
  sub_24B75BA48();

  v41 = v26[13];
  v129 = *MEMORY[0x277CE0A10];
  v127 = v41;
  v128 = v26 + 13;
  v41(v29);
  sub_24B75BB28();

  v42 = v26[1];
  v123 = v29;
  v131 = v25;
  v132 = v26 + 1;
  v126 = v42;
  v42(v29, v25);
  v43 = sub_24B75BC18();
  v45 = v44;
  LOBYTE(v26) = v46;
  v48 = v47;

  sub_24B6E89A0(v36, v38, a1 & 1);

  KeyPath = swift_getKeyPath();
  v166 = v43;
  v167 = v45;
  LOBYTE(v168) = v26 & 1;
  v169 = v48;
  v170 = KeyPath;
  v171 = 3;
  LOBYTE(v172) = 0;
  v50 = v141;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  sub_24B6E8D88();
  sub_24B75BDD8();
  v51 = v144;
  (*(v142 + 8))(v50, v143);
  sub_24B6E89A0(v43, v45, v26 & 1);

  v52 = v135;

  sub_24B6B9D34(v145, v51, &qword_27F034508, &qword_24B761E50);
  v53 = v136;
  if ((*(v136 + 48))(v51, 1, v52) == 1)
  {
    sub_24B6B9CD4(v51, &qword_27F034508, &qword_24B761E50);
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v140 = 0;
    v141 = 0;
    v138 = 0;
    v139 = 0;
    v54 = v131;
    v55 = v123;
  }

  else
  {
    v56 = v137;
    (*(v53 + 32))(v137, v51, v52);
    v57 = sub_24B72793C(v130);
    v58 = (v57)(v56);
    v60 = v59;
    v62 = v61;
    v142 = v63;

    sub_24B75BA38();
    v64 = v123;
    v65 = v131;
    v127(v123, v129, v131);
    sub_24B75BB28();

    v126(v64, v65);
    v66 = sub_24B75BC18();
    v144 = v67;
    v145 = v66;
    v69 = v68;
    v143 = v70;

    sub_24B6E89A0(v58, v60, v62 & 1);

    v142 = swift_getKeyPath();
    LOBYTE(v65) = sub_24B75B9B8();
    sub_24B75B3D8();
    v140 = v72;
    v141 = v71;
    v138 = v74;
    v139 = v73;
    (*(v53 + 8))(v137, v52);
    LOBYTE(v166) = v69 & 1;
    LOBYTE(v159) = 0;
    LOBYTE(v184[0]) = 0;
    v135 = v69 & 1;
    v137 = 0;
    v136 = v65;
    v134 = 2;
    v54 = v131;
    v55 = v64;
  }

  v75 = sub_24B72793C(v130);
  v76 = (v75)(v124);
  v78 = v77;
  v80 = v79;

  sub_24B75BB38();
  v127(v55, v129, v54);
  sub_24B75BB28();

  v126(v55, v54);
  v81 = sub_24B75BC18();
  v132 = v82;
  v133 = v81;
  v84 = v83;
  v86 = v85;

  sub_24B6E89A0(v76, v78, v80 & 1);

  LODWORD(v131) = sub_24B75B9B8();
  sub_24B75B3D8();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v84 &= 1u;
  LOBYTE(v159) = v84;
  LOBYTE(v184[0]) = 0;
  LODWORD(v130) = sub_24B75B9C8();
  sub_24B75B3D8();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  LOBYTE(v166) = 0;
  v104 = v146;
  v103 = v147;
  sub_24B6B9D34(v146, v147, &qword_27F0346C0, &qword_24B75FAC0);
  v105 = v103;
  v106 = v125;
  sub_24B6B9D34(v105, v125, &qword_27F0346C0, &qword_24B75FAC0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036268, &qword_24B767198);
  v108 = v106 + *(v107 + 48);
  *&v152 = v145;
  *(&v152 + 1) = v144;
  *&v153 = v135;
  *(&v153 + 1) = v143;
  *&v154 = v142;
  *(&v154 + 1) = v134;
  *&v155 = v137;
  *(&v155 + 1) = v136;
  *&v156 = v141;
  *(&v156 + 1) = v140;
  *&v157 = v139;
  *(&v157 + 1) = v138;
  v158 = 0;
  *(v108 + 96) = 0;
  v109 = v153;
  *v108 = v152;
  *(v108 + 16) = v109;
  v110 = v155;
  *(v108 + 32) = v154;
  *(v108 + 48) = v110;
  v111 = v157;
  *(v108 + 64) = v156;
  *(v108 + 80) = v111;
  v112 = (v106 + *(v107 + 64));
  v114 = v132;
  v113 = v133;
  *&v159 = v133;
  *(&v159 + 1) = v132;
  LOBYTE(v160) = v84;
  DWORD1(v160) = *&v149[3];
  *(&v160 + 1) = *v149;
  v115 = v86;
  *(&v160 + 1) = v86;
  LOBYTE(v86) = v131;
  LOBYTE(v161) = v131;
  DWORD1(v161) = *&v148[3];
  *(&v161 + 1) = *v148;
  *(&v161 + 1) = v88;
  *&v162 = v90;
  *(&v162 + 1) = v92;
  *&v163 = v94;
  BYTE8(v163) = 0;
  HIDWORD(v163) = *&v151[3];
  *(&v163 + 9) = *v151;
  LOBYTE(v106) = v130;
  LOBYTE(v164) = v130;
  DWORD1(v164) = *&v150[3];
  *(&v164 + 1) = *v150;
  *(&v164 + 1) = v96;
  *&v165[0] = v98;
  *(&v165[0] + 1) = v100;
  *&v165[1] = v102;
  BYTE8(v165[1]) = 0;
  v116 = v159;
  v117 = v160;
  v118 = v162;
  v112[2] = v161;
  v112[3] = v118;
  *v112 = v116;
  v112[1] = v117;
  v119 = v163;
  v120 = v164;
  v121 = v165[0];
  *(v112 + 105) = *(v165 + 9);
  v112[5] = v120;
  v112[6] = v121;
  v112[4] = v119;
  sub_24B6B9D34(&v152, &v166, &qword_27F036228, &qword_24B767150);
  sub_24B6B9D34(&v159, &v166, &qword_27F036230, &qword_24B767158);
  sub_24B6B9CD4(v104, &qword_27F0346C0, &qword_24B75FAC0);
  v166 = v113;
  v167 = v114;
  LOBYTE(v168) = v84;
  *(&v168 + 1) = *v149;
  HIDWORD(v168) = *&v149[3];
  v169 = v115;
  LOBYTE(v170) = v86;
  *(&v170 + 1) = *v148;
  HIDWORD(v170) = *&v148[3];
  v171 = v88;
  v172 = v90;
  v173 = v92;
  v174 = v94;
  v175 = 0;
  *&v176[3] = *&v151[3];
  *v176 = *v151;
  v177 = v106;
  *&v178[3] = *&v150[3];
  *v178 = *v150;
  v179 = v96;
  v180 = v98;
  v181 = v100;
  v182 = v102;
  v183 = 0;
  sub_24B6B9CD4(&v166, &qword_27F036230, &qword_24B767158);
  v184[0] = v145;
  v184[1] = v144;
  v184[2] = v135;
  v184[3] = v143;
  v184[4] = v142;
  v184[5] = v134;
  v184[6] = v137;
  v184[7] = v136;
  v184[8] = v141;
  v184[9] = v140;
  v184[10] = v139;
  v184[11] = v138;
  v185 = 0;
  sub_24B6B9CD4(v184, &qword_27F036228, &qword_24B767150);
  return sub_24B6B9CD4(v147, &qword_27F0346C0, &qword_24B75FAC0);
}

uint64_t sub_24B729BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v152 = a4;
  v149 = a3;
  v144 = a2;
  v157 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036200, &unk_24B7670E8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v133 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v148 = &v133 - v21;
  v151 = sub_24B75AFE8();
  v154 = *(v151 - 8);
  v22 = *(v154 + 64);
  MEMORY[0x28223BE20](v151);
  v150 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24B75B768();
  v146 = *(v24 - 8);
  v147 = v24;
  v25 = *(v146 + 64);
  MEMORY[0x28223BE20](v24);
  v145 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24B75BAE8();
  v28 = *(v27 - 8);
  v158 = v27;
  v159 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v155 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036208, &qword_24B7670F8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v156 = &v133 - v36;
  *&v178 = a5;
  *(&v178 + 1) = a6;
  *&v179 = a7;
  *(&v179 + 1) = a8;
  v37 = type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v180 < 7u)
  {
    return (*(v15 + 56))(v157, 1, 1, v14);
  }

  v153 = v34;
  v133 = v18;
  v134 = v15;
  v135 = v14;
  v39 = sub_24B72793C(v37);
  v40 = (v39)(v144);
  v137 = v37;
  v138 = a1;
  v42 = v41;
  v44 = v43;

  sub_24B75BA18();
  sub_24B75BA48();

  v46 = v158;
  v45 = v159;
  v47 = *(v159 + 104);
  v48 = v155;
  v141 = *MEMORY[0x277CE0A10];
  v139 = v47;
  v140 = v159 + 104;
  v47(v155);
  sub_24B75BB28();

  v49 = *(v45 + 8);
  v159 = v45 + 8;
  v136 = v49;
  v49(v48, v46);
  v50 = sub_24B75BC18();
  v52 = v51;
  LOBYTE(v46) = v53;
  v55 = v54;

  sub_24B6E89A0(v40, v42, v44 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v40) = sub_24B75B9B8();
  sub_24B75B3D8();
  LOBYTE(v171) = v46 & 1;
  LOBYTE(v188[0]) = 0;
  LOBYTE(v164) = 0;
  *&v178 = v50;
  *(&v178 + 1) = v52;
  LOBYTE(v179) = v46 & 1;
  *(&v179 + 1) = v55;
  *&v180 = KeyPath;
  *(&v180 + 1) = 3;
  LOBYTE(v181) = 0;
  BYTE8(v181) = v40;
  *&v182 = v57;
  *(&v182 + 1) = v58;
  *&v183 = v59;
  *(&v183 + 1) = v60;
  LOBYTE(v184) = 0;
  v61 = v145;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036210, &unk_24B767130);
  sub_24B735B00();
  sub_24B75BDD8();
  (*(v146 + 8))(v61, v147);
  v197[4] = v182;
  v197[5] = v183;
  v198 = v184;
  v197[0] = v178;
  v197[1] = v179;
  v197[2] = v180;
  v197[3] = v181;
  sub_24B6B9CD4(v197, &qword_27F036210, &unk_24B767130);
  v62 = v148;
  sub_24B6B9D34(v149, v148, &qword_27F034508, &qword_24B761E50);
  v63 = v151;
  if ((*(v154 + 48))(v62, 1, v151) == 1)
  {
    sub_24B6B9CD4(v62, &qword_27F034508, &qword_24B761E50);
    v148 = 0;
    v149 = 0;
    v147 = 0;
    v142 = 0uLL;
    v150 = 0;
    v151 = 0;
    v154 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v64 = v158;
    v65 = v155;
  }

  else
  {
    v66 = v154;
    v67 = v150;
    (*(v154 + 32))(v150, v62, v63);
    v68 = sub_24B72793C(v137);
    v69 = (v68)(v67);
    v71 = v70;
    v73 = v72;
    v146 = v74;

    sub_24B75BA38();
    v75 = v155;
    v76 = v158;
    v139(v155, v141, v158);
    sub_24B75BB28();

    v136(v75, v76);
    v77 = sub_24B75BC18();
    v148 = v78;
    v149 = v77;
    v80 = v79;
    v147 = v81;

    sub_24B6E89A0(v69, v71, v73 & 1);

    *&v142 = swift_getKeyPath();
    LOBYTE(v76) = sub_24B75B9B8();
    sub_24B75B3D8();
    v145 = v83;
    v146 = v82;
    v143 = v85;
    v144 = v84;
    (*(v66 + 8))(v150, v63);
    LOBYTE(v178) = v80 & 1;
    LOBYTE(v171) = 0;
    LOBYTE(v188[0]) = 0;
    v150 = (v80 & 1);
    v154 = 0;
    v151 = v76;
    *(&v142 + 1) = 2;
    v64 = v158;
    v65 = v75;
  }

  v86 = sub_24B72793C(v137);
  v87 = (v86)(v152);
  v89 = v88;
  v91 = v90;

  sub_24B75BB38();
  v139(v65, v141, v64);
  sub_24B75BB28();

  v136(v65, v64);
  v92 = sub_24B75BC18();
  v158 = v93;
  v159 = v94;
  v96 = v95;

  sub_24B6E89A0(v87, v89, v91 & 1);

  LODWORD(v155) = sub_24B75B9B8();
  sub_24B75B3D8();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  LOBYTE(v87) = v96 & 1;
  LOBYTE(v171) = v96 & 1;
  LOBYTE(v188[0]) = 0;
  LODWORD(v152) = sub_24B75B9C8();
  sub_24B75B3D8();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  LOBYTE(v178) = 0;
  v113 = v156;
  v114 = v153;
  sub_24B6B9D34(v156, v153, &qword_27F036208, &qword_24B7670F8);
  v115 = v133;
  sub_24B6B9D34(v114, v133, &qword_27F036208, &qword_24B7670F8);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036220, &qword_24B767148);
  v117 = v115 + *(v116 + 48);
  *&v164 = v149;
  *(&v164 + 1) = v148;
  *&v165 = v150;
  *(&v165 + 1) = v147;
  v166 = v142;
  *&v167 = v154;
  *(&v167 + 1) = v151;
  *&v168 = v146;
  *(&v168 + 1) = v145;
  *&v169 = v144;
  *(&v169 + 1) = v143;
  v170 = 0;
  *(v117 + 96) = 0;
  v118 = v165;
  *v117 = v164;
  *(v117 + 16) = v118;
  v119 = v167;
  *(v117 + 32) = v166;
  *(v117 + 48) = v119;
  v120 = v169;
  *(v117 + 64) = v168;
  *(v117 + 80) = v120;
  v121 = (v115 + *(v116 + 64));
  v122 = v158;
  v123 = v159;
  *&v171 = v92;
  *(&v171 + 1) = v158;
  LOBYTE(v172) = v96 & 1;
  DWORD1(v172) = *&v161[3];
  *(&v172 + 1) = *v161;
  *(&v172 + 1) = v159;
  v124 = v155;
  LOBYTE(v173) = v155;
  DWORD1(v173) = *&v160[3];
  *(&v173 + 1) = *v160;
  *(&v173 + 1) = v98;
  *&v174 = v100;
  *(&v174 + 1) = v102;
  *&v175 = v104;
  BYTE8(v175) = 0;
  HIDWORD(v175) = *&v163[3];
  *(&v175 + 9) = *v163;
  v125 = v152;
  LOBYTE(v176) = v152;
  DWORD1(v176) = *&v162[3];
  *(&v176 + 1) = *v162;
  *(&v176 + 1) = v106;
  *&v177[0] = v108;
  *(&v177[0] + 1) = v110;
  *&v177[1] = v112;
  BYTE8(v177[1]) = 0;
  v126 = v171;
  v127 = v172;
  v128 = v174;
  v121[2] = v173;
  v121[3] = v128;
  *v121 = v126;
  v121[1] = v127;
  v129 = v175;
  v130 = v176;
  v131 = v177[0];
  *(v121 + 105) = *(v177 + 9);
  v121[5] = v130;
  v121[6] = v131;
  v121[4] = v129;
  sub_24B6B9D34(&v164, &v178, &qword_27F036228, &qword_24B767150);
  sub_24B6B9D34(&v171, &v178, &qword_27F036230, &qword_24B767158);
  sub_24B6B9CD4(v113, &qword_27F036208, &qword_24B7670F8);
  *&v178 = v92;
  *(&v178 + 1) = v122;
  LOBYTE(v179) = v87;
  *(&v179 + 1) = *v161;
  DWORD1(v179) = *&v161[3];
  *(&v179 + 1) = v123;
  LOBYTE(v180) = v124;
  *(&v180 + 1) = *v160;
  DWORD1(v180) = *&v160[3];
  *(&v180 + 1) = v98;
  *&v181 = v100;
  *(&v181 + 1) = v102;
  *&v182 = v104;
  BYTE8(v182) = 0;
  HIDWORD(v182) = *&v163[3];
  *(&v182 + 9) = *v163;
  LOBYTE(v183) = v125;
  DWORD1(v183) = *&v162[3];
  *(&v183 + 1) = *v162;
  *(&v183 + 1) = v106;
  v184 = v108;
  v185 = v110;
  v186 = v112;
  v187 = 0;
  sub_24B6B9CD4(&v178, &qword_27F036230, &qword_24B767158);
  v188[0] = v149;
  v188[1] = v148;
  v188[2] = v150;
  v188[3] = v147;
  v189 = v142;
  v190 = v154;
  v191 = v151;
  v192 = v146;
  v193 = v145;
  v194 = v144;
  v195 = v143;
  v196 = 0;
  sub_24B6B9CD4(v188, &qword_27F036228, &qword_24B767150);
  sub_24B6B9CD4(v153, &qword_27F036208, &qword_24B7670F8);
  v132 = v157;
  sub_24B6B8DE8(v115, v157, &qword_27F036200, &unk_24B7670E8);
  return (*(v134 + 56))(v132, 0, 1, v135);
}

uint64_t sub_24B72A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v89 = a9;
  v90 = a8;
  v84 = a5;
  v85 = a6;
  v83 = a4;
  v93 = a3;
  v72 = a2;
  v95 = a1;
  v94 = a11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E90, &qword_24B766D68);
  v13 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v66 - v16;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v22 = sub_24B75B558();
  v71 = *(v22 - 8);
  v23 = *(v71 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  v26 = sub_24B75B558();
  v73 = *(v26 - 8);
  v27 = *(v73 + 64);
  MEMORY[0x28223BE20](v26);
  v67 = &v66 - v28;
  v70 = sub_24B75B558();
  v76 = *(v70 - 8);
  v29 = *(v76 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v66 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  v75 = sub_24B75B558();
  v80 = *(v75 - 8);
  v31 = *(v80 + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v66 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  v78 = sub_24B75B558();
  v81 = *(v78 - 8);
  v33 = *(v81 + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v66 - v34;
  v79 = sub_24B75B558();
  v82 = *(v79 - 8);
  v35 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v91 = a7;
  v92 = &v66 - v38;
  v108 = a7;
  v109 = a8;
  v110 = a10;
  v111 = v94;
  v39 = type metadata accessor for ProgramDetailView();
  v40 = sub_24B72783C(v39);
  v40(v72);

  sub_24B75BDA8();
  (*(v17 + 8))(v21, a7);
  sub_24B75B568();
  sub_24B75B998();
  v41 = sub_24B73593C(&qword_27F034580, MEMORY[0x277CDE470]);
  v107[12] = a10;
  v107[13] = v41;
  v66 = a10;
  WitnessTable = swift_getWitnessTable();
  v43 = v67;
  sub_24B75BD68();
  (*(v71 + 8))(v25, v22);
  sub_24B75C158();
  v107[10] = WitnessTable;
  v107[11] = MEMORY[0x277CE0880];
  v44 = swift_getWitnessTable();
  v45 = v68;
  sub_24B75BE08();
  (*(v73 + 8))(v43, v26);
  sub_24B75C148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036270, &qword_24B7671A0);
  v107[8] = v44;
  v107[9] = MEMORY[0x277CDF678];
  v46 = v70;
  v47 = swift_getWitnessTable();
  sub_24B735B8C();
  v48 = v69;
  sub_24B75BE38();
  (*(v76 + 8))(v45, v46);
  sub_24B75C148();
  v96 = v91;
  v97 = v90;
  v98 = a10;
  v99 = v94;
  v100 = v95;
  v101 = v93;
  v102 = v83;
  v103 = v84;
  v104 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036288, &qword_24B7671A8);
  v49 = sub_24B6C743C(&qword_27F036290, &qword_27F035E80, &qword_24B766D58);
  v107[6] = v47;
  v107[7] = v49;
  v50 = v75;
  v51 = swift_getWitnessTable();
  sub_24B735CC4();
  v52 = v74;
  sub_24B75BE38();
  (*(v80 + 8))(v48, v50);
  v53 = sub_24B6C743C(&qword_27F0362B0, &qword_27F035E88, &qword_24B766D60);
  v107[4] = v51;
  v107[5] = v53;
  v54 = v78;
  v55 = swift_getWitnessTable();
  v56 = v77;
  sub_24B75BEB8();
  (*(v81 + 8))(v52, v54);
  v107[2] = v55;
  v107[3] = MEMORY[0x277CDFC48];
  v57 = v79;
  v58 = swift_getWitnessTable();
  v59 = v92;
  sub_24B6C7504(v56, v57, v58);
  v60 = v82;
  v85 = *(v82 + 8);
  v85(v56, v57);
  v61 = v86;
  sub_24B72C824(v93, v91, v90, v66, v94, v86);
  v62 = v87;
  *(v61 + *(v87 + 36)) = 256;
  (*(v60 + 16))(v56, v59, v57);
  v108 = v56;
  v63 = v88;
  sub_24B6B9D34(v61, v88, &qword_27F035E90, &qword_24B766D68);
  v109 = v63;
  v107[0] = v57;
  v107[1] = v62;
  v105 = v58;
  v106 = sub_24B735D7C();
  sub_24B7386C4(&v108, 2uLL, v107);
  sub_24B6B9CD4(v61, &qword_27F035E90, &qword_24B766D68);
  v64 = v85;
  v85(v92, v57);
  sub_24B6B9CD4(v63, &qword_27F035E90, &qword_24B766D68);
  return v64(v56, v57);
}

__n128 sub_24B72B1E0@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036250, &qword_24B767178);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24B760380;
  *(v2 + 32) = sub_24B75BF08();
  v3 = [objc_opt_self() systemBackgroundColor];
  *(v2 + 40) = sub_24B75BED8();
  MEMORY[0x24C2483D0](v2);
  sub_24B75C1B8();
  sub_24B75C1A8();
  sub_24B75B528();
  v4 = sub_24B75B568();
  v5 = sub_24B75B998();
  *a1 = v7;
  result = v9;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_24B72B2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v30 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362D0, &qword_24B7671C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362A8, &qword_24B7671B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v24 - v20;
  v31 = a6;
  v32 = a7;
  v29 = a8;
  v33 = a8;
  v34 = a10;
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v35 > 6u)
  {
    swift_storeEnumTagMultiPayload();
    sub_24B6C743C(&qword_27F0362A0, &qword_27F0362A8, &qword_24B7671B0);
    return sub_24B75B7A8();
  }

  else
  {
    *v21 = sub_24B75B788();
    *(v21 + 1) = 0;
    v21[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362D8, &qword_24B7671D0);
    sub_24B72B578(a1, v25, v26, v27, v28, a6, a7, v29, &v21[*(v22 + 44)], a10);
    sub_24B6B9D34(v21, v17, &qword_27F0362A8, &qword_24B7671B0);
    swift_storeEnumTagMultiPayload();
    sub_24B6C743C(&qword_27F0362A0, &qword_27F0362A8, &qword_24B7671B0);
    sub_24B75B7A8();
    return sub_24B6B9CD4(v21, &qword_27F0362A8, &qword_24B7671B0);
  }
}

uint64_t sub_24B72B578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v149 = a4;
  v150 = a5;
  v170 = a3;
  v173 = a1;
  v156 = a9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036108, &qword_24B767060);
  v14 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v151 = &v139 - v15;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362E0, &qword_24B7671D8);
  v16 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v155 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v154 = &v139 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v139 - v22;
  v166 = sub_24B75AFE8();
  v164 = *(v166 - 8);
  v23 = *(v164 + 64);
  MEMORY[0x28223BE20](v166);
  v165 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_24B75B768();
  v167 = *(v169 - 8);
  v25 = *(v167 + 64);
  MEMORY[0x28223BE20](v169);
  v163 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24B75BAE8();
  v28 = *(v27 - 8);
  v29 = v28[8];
  MEMORY[0x28223BE20](v27);
  v31 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362E8, &qword_24B7671E0);
  v33 = *(v32 - 8);
  v145 = v32;
  v146 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v144 = &v139 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362F0, &qword_24B7671E8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v171 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v172 = &v139 - v40;
  v198 = a6;
  v199 = a7;
  v200 = a8;
  v201 = a10;
  v41 = type metadata accessor for ProgramDetailView();
  v42 = sub_24B72793C(v41);
  v43 = (v42)(a2);
  v45 = v44;
  v47 = v46;
  v158 = v48;

  sub_24B75BA18();
  sub_24B75BA48();

  v49 = v28[13];
  LODWORD(v161) = *MEMORY[0x277CE0A10];
  v159 = v49;
  v160 = v28 + 13;
  v49(v31);
  sub_24B75BB28();

  v50 = v28[1];
  v147 = v31;
  v148 = v27;
  v162 = v28 + 1;
  v157 = v50;
  v50(v31, v27);
  v51 = sub_24B75BC18();
  v140 = v52;
  v141 = v51;
  v53 = v52;
  v142 = v54;
  v56 = v55;
  v143 = v55;

  sub_24B6E89A0(v43, v45, v47 & 1);

  v158 = v41;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v57 = v202 > 6u;
  if (v202 <= 6u)
  {
    v58 = 3;
  }

  else
  {
    v58 = 0;
  }

  KeyPath = swift_getKeyPath();
  v198 = v51;
  v199 = v53;
  v60 = v142 & 1;
  LOBYTE(v200) = v142 & 1;
  v201 = v56;
  v202 = KeyPath;
  v203 = v58;
  LOBYTE(v204) = v57;
  sub_24B75B968();
  sub_24B75C168();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  v62 = sub_24B6E8D88();
  v63 = 0;
  v64 = v144;
  v65 = v166;
  sub_24B75BDE8();
  v66 = v60;
  v67 = v168;
  sub_24B6E89A0(v141, v140, v66);

  v68 = v163;
  sub_24B75B758();
  v198 = v61;
  v199 = v62;
  swift_getOpaqueTypeConformance2();
  v69 = v145;
  sub_24B75BDD8();
  (*(v167 + 8))(v68, v169);
  (*(v146 + 8))(v64, v69);
  sub_24B6B9D34(v170, v67, &qword_27F034508, &qword_24B761E50);
  v70 = v164;
  if ((*(v164 + 48))(v67, 1, v65) == 1)
  {
    sub_24B6B9CD4(v67, &qword_27F034508, &qword_24B761E50);
    v169 = 0;
    v170 = 0;
    v167 = 0;
    v168 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v75 = v147;
    v74 = v148;
  }

  else
  {
    v76 = v165;
    (*(v70 + 32))(v165, v67, v65);
    v77 = sub_24B72793C(v158);
    v78 = (v77)(v76);
    v80 = v79;
    v82 = v81;

    sub_24B75BA38();
    v75 = v147;
    v83 = v148;
    v159(v147, v161, v148);
    sub_24B75BB28();

    v157(v75, v83);
    v84 = sub_24B75BC18();
    v169 = v85;
    v170 = v84;
    v87 = v86;
    v168 = v88;

    sub_24B6E89A0(v78, v80, v82 & 1);

    v167 = swift_getKeyPath();
    v89 = sub_24B75B9B8();
    sub_24B75B3D8();
    v63 = v90;
    v71 = v91;
    v72 = v92;
    v73 = v93;
    (*(v70 + 8))(v165, v166);
    LOBYTE(v198) = v87 & 1;
    LOBYTE(v176) = 0;
    LOBYTE(v187[0]) = 0;
    v164 = v87 & 1;
    v166 = 0;
    v165 = v89;
    v163 = 2;
    v74 = v83;
  }

  v94 = v158;
  v95 = sub_24B72793C(v158);
  v96 = (v95)(v149);
  v98 = v97;
  v100 = v99;

  sub_24B75BB38();
  v159(v75, v161, v74);
  sub_24B75BB28();

  v157(v75, v74);
  v101 = sub_24B75BC18();
  v161 = v102;
  v162 = v103;
  v105 = v104;

  sub_24B6E89A0(v96, v98, v100 & 1);

  LODWORD(v160) = sub_24B75BA08();
  sub_24B75B3D8();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  LOBYTE(v198) = v105 & 1;
  v114 = v105 & 1;
  LODWORD(v159) = v105 & 1;
  LOBYTE(v176) = 0;
  v115 = v151;
  sub_24B72C2F8(v150, v94, v151);
  sub_24B75B968();
  sub_24B75C168();
  sub_24B734D70();
  v116 = v154;
  sub_24B75BDE8();
  sub_24B6B9CD4(v115, &qword_27F036108, &qword_24B767060);
  v117 = sub_24B75B9B8();
  sub_24B75B3D8();
  v118 = v116 + *(v153 + 36);
  *v118 = v117;
  *(v118 + 8) = v119;
  *(v118 + 16) = v120;
  *(v118 + 24) = v121;
  *(v118 + 32) = v122;
  *(v118 + 40) = 0;
  v123 = v171;
  sub_24B6B9D34(v172, v171, &qword_27F0362F0, &qword_24B7671E8);
  v124 = v155;
  sub_24B6B9D34(v116, v155, &qword_27F0362E0, &qword_24B7671D8);
  v125 = v123;
  v126 = v156;
  sub_24B6B9D34(v125, v156, &qword_27F0362F0, &qword_24B7671E8);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362F8, &unk_24B7671F0);
  v128 = v126 + v127[12];
  *&v176 = v170;
  *(&v176 + 1) = v169;
  *&v177 = v164;
  *(&v177 + 1) = v168;
  *&v178 = v167;
  *(&v178 + 1) = v163;
  *&v179 = v166;
  *(&v179 + 1) = v165;
  *&v180 = v63;
  *(&v180 + 1) = v71;
  *&v181 = v72;
  *(&v181 + 1) = v73;
  v182 = 0;
  *(v128 + 96) = 0;
  v129 = v177;
  *v128 = v176;
  *(v128 + 16) = v129;
  v130 = v179;
  *(v128 + 32) = v178;
  *(v128 + 48) = v130;
  v131 = v181;
  *(v128 + 64) = v180;
  *(v128 + 80) = v131;
  v132 = (v126 + v127[16]);
  v133 = v161;
  *&v183 = v101;
  *(&v183 + 1) = v161;
  LOBYTE(v184) = v114;
  DWORD1(v184) = *&v175[3];
  *(&v184 + 1) = *v175;
  v134 = v162;
  *(&v184 + 1) = v162;
  LOBYTE(v115) = v160;
  LOBYTE(v185) = v160;
  DWORD1(v185) = *&v174[3];
  *(&v185 + 1) = *v174;
  *(&v185 + 1) = v107;
  *&v186[0] = v109;
  *(&v186[0] + 1) = v111;
  *&v186[1] = v113;
  BYTE8(v186[1]) = 0;
  v135 = v183;
  v136 = v184;
  *(v132 + 57) = *(v186 + 9);
  v137 = v186[0];
  v132[2] = v185;
  v132[3] = v137;
  *v132 = v135;
  v132[1] = v136;
  sub_24B6B9D34(v124, v126 + v127[20], &qword_27F0362E0, &qword_24B7671D8);
  sub_24B6B9D34(&v176, &v198, &qword_27F036228, &qword_24B767150);
  sub_24B6B9D34(&v183, &v198, &qword_27F035908, &unk_24B764A40);
  sub_24B6B9CD4(v116, &qword_27F0362E0, &qword_24B7671D8);
  sub_24B6B9CD4(v172, &qword_27F0362F0, &qword_24B7671E8);
  sub_24B6B9CD4(v124, &qword_27F0362E0, &qword_24B7671D8);
  v187[0] = v101;
  v187[1] = v133;
  v188 = v159;
  *v189 = *v175;
  *&v189[3] = *&v175[3];
  v190 = v134;
  v191 = v115;
  *v192 = *v174;
  *&v192[3] = *&v174[3];
  v193 = v107;
  v194 = v109;
  v195 = v111;
  v196 = v113;
  v197 = 0;
  sub_24B6B9CD4(v187, &qword_27F035908, &unk_24B764A40);
  v198 = v170;
  v199 = v169;
  v200 = v164;
  v201 = v168;
  v202 = v167;
  v203 = v163;
  v204 = v166;
  v205 = v165;
  v206 = v63;
  v207 = v71;
  v208 = v72;
  v209 = v73;
  v210 = 0;
  sub_24B6B9CD4(&v198, &qword_27F036228, &qword_24B767150);
  return sub_24B6B9CD4(v171, &qword_27F0362F0, &qword_24B7671E8);
}

uint64_t sub_24B72C2F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = sub_24B75B258();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036128, &qword_24B767078);
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361A0, &qword_24B7670B8);
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - v20;
  v22 = type metadata accessor for WorkoutProgram();
  sub_24B6B9D34(a1 + *(v22 + 32), v21, &qword_27F035018, &qword_24B7670C0);
  v23 = type metadata accessor for WorkoutProgramPreview();
  v24 = 1;
  v25 = (*(*(v23 - 8) + 48))(v21, 1, v23);
  sub_24B6B9CD4(v21, &qword_27F035018, &qword_24B7670C0);
  if (v25 != 1)
  {
    v26 = *(v8 + 16);
    v42 = v17;
    v27 = v43;
    v26(&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v43, a2);
    v28 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v29 = swift_allocObject();
    v30 = a2[2];
    v31 = a2[3];
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    v32 = a2[4];
    v33 = a2[5];
    *(v29 + 4) = v32;
    *(v29 + 5) = v33;
    v34 = (*(v8 + 32))(&v29[v28], &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    MEMORY[0x28223BE20](v34);
    *(&v41 - 6) = v30;
    *(&v41 - 5) = v31;
    *(&v41 - 4) = v32;
    *(&v41 - 3) = v33;
    *(&v41 - 2) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361A8, &qword_24B7670C8);
    sub_24B735764();
    v35 = v44;
    sub_24B75BFE8();
    v36 = v47;
    sub_24B75B7C8();
    sub_24B6C743C(&qword_27F036130, &qword_27F036128, &qword_24B767078);
    sub_24B73593C(&qword_27F036138, MEMORY[0x277D09D38]);
    v37 = v42;
    v38 = v46;
    v39 = v49;
    sub_24B75BCF8();
    (*(v48 + 8))(v36, v39);
    (*(v45 + 8))(v35, v38);
    (*(v50 + 32))(v52, v37, v51);
    v24 = 0;
  }

  return (*(v50 + 56))(v52, v24, 1, v51);
}

uint64_t sub_24B72C824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a1;
  v11 = sub_24B75B768();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B75BAE8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  v48 = *(v19 - 8);
  v49 = v19;
  v20 = *(v48 + 64);
  MEMORY[0x28223BE20](v19);
  v45 = &v42 - v21;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v22 = type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v54 >= 7u)
  {
    v24 = sub_24B72793C(v22);
    v25 = (v24)(v44);
    v27 = v26;
    v44 = a6;
    v29 = v28;

    sub_24B75BA18();
    sub_24B75BA48();

    (*(v15 + 104))(v18, *MEMORY[0x277CE0A10], v14);
    sub_24B75BB28();
    v43 = v11;

    (*(v15 + 8))(v18, v14);
    v30 = sub_24B75BC18();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    sub_24B6E89A0(v25, v27, v29 & 1);

    KeyPath = swift_getKeyPath();
    v50 = v30;
    v51 = v32;
    v38 = v34 & 1;
    LOBYTE(v52) = v34 & 1;
    v53 = v36;
    v54 = KeyPath;
    v55 = 3;
    v56 = 0;
    v39 = v46;
    sub_24B75B758();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
    sub_24B6E8D88();
    v40 = v45;
    sub_24B75BDD8();
    (*(v47 + 8))(v39, v43);
    sub_24B6E89A0(v30, v32, v38);
    a6 = v44;

    sub_24B6B8DE8(v40, a6, &qword_27F0346C0, &qword_24B75FAC0);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v48 + 56))(a6, v23, 1, v49);
}

uint64_t sub_24B72CC40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24B75B788();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036158, &unk_24B767090);
  return sub_24B72CCB0(a1, v3, a2[2], a2[3], a2[4], a2[5], a3 + *(v7 + 44));
}

uint64_t sub_24B72CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[0] = a1;
  v22[1] = a7;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v13 = type metadata accessor for ProgramDetailView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v22 - v17;
  v23 = a1;
  (*(v14 + 16))(v22 - v17, a2, v13, v16);
  v19 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a3;
  *(v20 + 3) = a4;
  *(v20 + 4) = a5;
  *(v20 + 5) = a6;
  (*(v14 + 32))(&v20[v19], v18, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035040, &qword_24B761E60);
  type metadata accessor for WorkoutProgramLinkAnnotation();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036160, &qword_24B7670A0);
  sub_24B6C743C(&qword_27F036168, &qword_27F035040, &qword_24B761E60);
  sub_24B6C743C(&qword_27F036170, &qword_27F036160, &qword_24B7670A0);
  sub_24B73593C(&qword_27F036178, type metadata accessor for WorkoutProgramLinkAnnotation);
  return sub_24B75C0E8();
}

uint64_t sub_24B72CF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v38 = a7;
  v13 = type metadata accessor for WorkoutProgramLinkAnnotation();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v16 = type metadata accessor for ProgramDetailView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  (*(v17 + 16))(&v33 - v20, a2, v16, v19);
  v22 = a1;
  sub_24B735160(a1, v15, type metadata accessor for WorkoutProgramLinkAnnotation);
  v23 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v24 = (v18 + *(v34 + 80) + v23) & ~*(v34 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  v27 = v36;
  *(v25 + 2) = a3;
  *(v25 + 3) = v26;
  v28 = v37;
  *(v25 + 4) = v27;
  *(v25 + 5) = v28;
  (*(v17 + 32))(&v25[v23], v21, v16);
  sub_24B7351C8(v15, &v25[v24], type metadata accessor for WorkoutProgramLinkAnnotation);
  v39 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036180, &qword_24B7670A8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036188, &qword_24B7670B0);
  v30 = sub_24B735340();
  v31 = sub_24B735424();
  v40 = v29;
  v41 = &type metadata for ReversedTitleIconLabelStyle;
  v42 = v30;
  v43 = v31;
  swift_getOpaqueTypeConformance2();
  return sub_24B75BFE8();
}

uint64_t sub_24B72D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ProgramDetailAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  v15 = *(type metadata accessor for WorkoutProgramLinkAnnotation() + 24);
  v16 = sub_24B75B108();
  (*(*(v16 - 8) + 16))(v14, a2 + v15, v16);
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B734BFC(v14, type metadata accessor for ProgramDetailAction);
}

uint64_t sub_24B72D330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036188, &qword_24B7670B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v12[0] = v6;
  v12[1] = v7;
  sub_24B6E89B0();

  sub_24B75BFD8();
  sub_24B75BA38();
  sub_24B75BA98();
  v8 = sub_24B75BAD8();

  KeyPath = swift_getKeyPath();
  v10 = &v5[*(v2 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  v12[0] = 0x4000000000000000;
  sub_24B735340();
  sub_24B735424();
  sub_24B75BCC8();
  return sub_24B6B9CD4(v5, &qword_27F036188, &qword_24B7670B0);
}

uint64_t sub_24B72D498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v80 = a5;
  v81 = a7;
  v89 = a2;
  v90 = a4;
  v82 = a3;
  v79 = sub_24B75B1F8();
  v76 = *(v79 - 8);
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B75C2F8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B75AFE8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v77 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = v66 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v66 - v27;
  v86 = *(v20 + 16);
  v87 = v20 + 16;
  v86(v66 - v27, v8, a6, v26);
  (*(v17 + 16))(v19, a1, v16);
  v29 = *(v20 + 80);
  v30 = (v29 + 48) & ~v29;
  v31 = v29 | 7;
  v32 = *(v17 + 80);
  v85 = v30 + v21;
  v33 = (v30 + v21 + v32) & ~v32;
  v71 = v31;
  v34 = swift_allocObject();
  v35 = a6[3];
  v70 = a6[2];
  *(v34 + 2) = v70;
  *(v34 + 3) = v35;
  v69 = v35;
  v36 = a6[5];
  v68 = a6[4];
  *(v34 + 4) = v68;
  *(v34 + 5) = v36;
  v84 = v36;
  v37 = *(v20 + 32);
  v73 = v30;
  v88 = v20 + 32;
  v67 = v37;
  v37(&v34[v30], v28, a6);
  v38 = *(v17 + 32);
  v75 = v34;
  v38(&v34[v33], v19, v16);
  v83 = a6;
  v91 = v8;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if ((v93 & 1) != 0 || (sub_24B7275FC(), swift_getKeyPath(), sub_24B75C218(), , , v92 >= 7u))
  {
    v39 = 3;
  }

  else
  {
    v39 = 2;
  }

  v66[1] = v39;

  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = objc_opt_self();
  v42 = [v41 bundleForClass_];
  v43 = *(v76 + 16);
  v45 = v78;
  v44 = v79;
  v46 = v80;
  v43(v78, v80, v79);
  v76 = sub_24B75C348();
  v66[0] = v47;
  sub_24B75C2E8();
  v48 = [v41 bundleForClass_];
  v43(v45, v46, v44);
  v49 = sub_24B75C348();
  v79 = v50;
  v80 = v49;
  v51 = v74;
  v52 = v83;
  (v86)(v74, v91, v83);
  v53 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v70;
  v56 = v69;
  *(v54 + 2) = v70;
  *(v54 + 3) = v56;
  v57 = v68;
  v58 = v84;
  *(v54 + 4) = v68;
  *(v54 + 5) = v58;
  v59 = v73;
  v60 = v51;
  v61 = v67;
  v67(&v54[v73], v60, v52);
  *&v54[v53] = v89;
  v62 = v77;
  (v86)(v77, v91, v52);
  v63 = swift_allocObject();
  *(v63 + 2) = v55;
  *(v63 + 3) = v56;
  v64 = v84;
  *(v63 + 4) = v57;
  *(v63 + 5) = v64;
  v61(&v63[v59], v62, v52);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036148, &qword_24B767088);
  sub_24B6C743C(&qword_27F036150, &qword_27F036148, &qword_24B767088);
  return sub_24B75B318();
}